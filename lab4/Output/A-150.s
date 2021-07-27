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
	addi $sp, $sp, -2960
	li $t0, 53992
	sw $t0, -68($fp)
	addi $t0, $fp, -16
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
	li $t0, 41745
	sw $t0, -92($fp)
	addi $t0, $fp, -16
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
	li $t0, 50628
	sw $t0, -116($fp)
	addi $t0, $fp, -16
	sw $t0, -120($fp)
	li $t0, 2
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
	li $t0, 57698
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 33946
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 26981
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 52123
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 37219
	sw $t0, -188($fp)
	addi $t0, $fp, -36
	sw $t0, -192($fp)
	li $t0, 0
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
	li $t0, 32752
	sw $t0, -212($fp)
	addi $t0, $fp, -36
	sw $t0, -216($fp)
	li $t0, 1
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
	li $t0, 20926
	sw $t0, -236($fp)
	addi $t0, $fp, -36
	sw $t0, -240($fp)
	li $t0, 2
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
	li $t0, 13781
	sw $t0, -260($fp)
	addi $t0, $fp, -36
	sw $t0, -264($fp)
	li $t0, 3
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
	li $t0, 61479
	sw $t0, -284($fp)
	addi $t0, $fp, -36
	sw $t0, -288($fp)
	li $t0, 4
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
	li $t0, 64876
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 39289
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 4581
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 12713
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 15990
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 40832
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 19903
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 60796
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 35974
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 4671
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 32132
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 16472
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 17195
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 45440
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 7387
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 1052
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 59280
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 11426
	sw $t0, -512($fp)
	addi $t0, $fp, -64
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
	li $t0, 35696
	sw $t0, -536($fp)
	addi $t0, $fp, -64
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
	li $t0, 47736
	sw $t0, -560($fp)
	addi $t0, $fp, -64
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
	li $t0, 53171
	sw $t0, -584($fp)
	addi $t0, $fp, -64
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
	li $t0, 20788
	sw $t0, -608($fp)
	addi $t0, $fp, -64
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
	li $t0, 39898
	sw $t0, -632($fp)
	addi $t0, $fp, -64
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
	li $t0, 21581
	sw $t0, -656($fp)
	addi $t0, $fp, -64
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
	li $t0, 47769
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 0
	sw $t0, -696($fp)
	lw $t0, -168($fp)
	sw $t0, -700($fp)
	li $t0, 46335
	sw $t0, -704($fp)
	lw $t1, -700($fp)
	lw $t2, -704($fp)
	bne $t1, $t2, label123
	j label125
label125:
	lw $t0, 8($fp)
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -696($fp)
label124:
	lw $t0, -360($fp)
	sw $t0, -712($fp)
	li $t0, 0
	sw $t0, -716($fp)
	lw $t0, -336($fp)
	sw $t0, -720($fp)
	li $t0, 10928
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label128:
	li $t0, 46751
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -716($fp)
label127:
	addi $t0, $fp, -64
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
	li $t0, 0
	sw $t0, -756($fp)
	lw $t0, -348($fp)
	sw $t0, -760($fp)
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label129:
	li $t0, 1
	sw $t0, -756($fp)
label130:
	li $t0, 0
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -480($fp)
	sw $t0, -768($fp)
	li $t0, 0
	sw $t0, -772($fp)
	lw $t0, -336($fp)
	sw $t0, -776($fp)
	lw $t1, -776($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -772($fp)
label132:
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -772($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -780($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -780($fp)
	sub $t0, $t0, $t1
	sw $t0, -784($fp)
	li $t0, 14985
	sw $t0, -788($fp)
	addi $sp, $sp, -4
	lw $t0, -712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -792($fp)
	addi $sp, $sp, 20
	li $t0, 58800
	sw $t0, -796($fp)
	li $t0, 26485
	sw $t0, -800($fp)
	li $t0, 0
	lw $t1, -800($fp)
	sub $t0, $t0, $t1
	sw $t0, -804($fp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -808($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -36
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
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 62326
	sw $t0, -836($fp)
	lw $t0, -684($fp)
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -444($fp)
	sw $t0, -848($fp)
	lw $t1, -844($fp)
	lw $t2, -848($fp)
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -832($fp)
label134:
	lw $t0, -324($fp)
	sw $t0, -852($fp)
	li $t0, 15510
	sw $t0, -856($fp)
	lw $t0, -852($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	li $t0, 59465
	sw $t0, -864($fp)
	lw $t0, -860($fp)
	lw $t1, -864($fp)
	sub $t0, $t0, $t1
	sw $t0, -868($fp)
	li $t0, 0
	sw $t0, -872($fp)
	lw $t0, -456($fp)
	sw $t0, -876($fp)
	li $t0, 0
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -168($fp)
	sw $t0, -884($fp)
	lw $t1, -880($fp)
	lw $t2, -884($fp)
	bgt $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -872($fp)
label136:
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -888($fp)
	addi $sp, $sp, 20
	lw $t0, -456($fp)
	sw $t0, -892($fp)
	lw $t0, -888($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t1, -808($fp)
	lw $t2, -896($fp)
	bgt $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -692($fp)
label122:
	li $t0, 57586
	sw $t0, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label140
label140:
	li $t0, 26781
	sw $t0, -904($fp)
	li $t0, 18503
	sw $t0, -908($fp)
	lw $t0, -904($fp)
	lw $t1, -908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -912($fp)
	li $t0, 24182
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -312($fp)
	sw $t0, -924($fp)
	lw $t1, -920($fp)
	lw $t2, -924($fp)
	beq $t1, $t2, label137
	j label138
label137:
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 0
	sw $t0, -932($fp)
	addi $t0, $fp, -36
	sw $t0, -936($fp)
	lw $t0, -312($fp)
	sw $t0, -940($fp)
	li $t0, 4
	lw $t1, -940($fp)
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t1, 0($t0)
	sw $t1, -952($fp)
	lw $t0, -420($fp)
	sw $t0, -956($fp)
	lw $t0, -952($fp)
	lw $t1, -956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -960($fp)
	lw $t0, -456($fp)
	sw $t0, -964($fp)
	lw $t1, -960($fp)
	lw $t2, -964($fp)
	blt $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -932($fp)
label144:
	li $t0, 43253
	sw $t0, -968($fp)
	lw $t0, -456($fp)
	sw $t0, -972($fp)
	lw $t0, -968($fp)
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	li $t0, 35699
	sw $t0, -980($fp)
	lw $t0, -976($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t1, -932($fp)
	lw $t2, -984($fp)
	blt $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -928($fp)
label142:
	j label139
label138:
	li $t0, 0
	sw $t0, -988($fp)
	addi $t0, $fp, -16
	sw $t0, -992($fp)
	li $t0, 0
	sw $t0, -996($fp)
	li $t0, 4
	lw $t1, -996($fp)
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, 0($t0)
	sw $t1, -1008($fp)
	li $t0, 50641
	sw $t0, -1012($fp)
	lw $t0, -468($fp)
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -156($fp)
	sw $t0, -1024($fp)
	lw $t0, -1020($fp)
	lw $t1, -1024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1028($fp)
	lw $t0, 4($fp)
	sw $t0, -1032($fp)
	lw $t0, -432($fp)
	sw $t0, -1036($fp)
	lw $t0, -1032($fp)
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -408($fp)
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1048($fp)
	li $t0, 0
	sw $t0, -1052($fp)
	lw $t0, -180($fp)
	sw $t0, -1056($fp)
	lw $t1, -1056($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label150:
	li $t0, 4087
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label149
label149:
	lw $t0, -408($fp)
	sw $t0, -1064($fp)
	lw $t1, -1064($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -1052($fp)
label148:
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1068($fp)
	addi $sp, $sp, 20
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label145
label145:
	li $t0, 1
	sw $t0, -988($fp)
label146:
label139:
	li $t0, 62067
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 6911
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 45567
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 49702
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 27700
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 19929
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	li $t0, 5748
	sw $t0, -1160($fp)
	addi $t0, $fp, -1084
	sw $t0, -1164($fp)
	li $t0, 0
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
	li $t0, 9933
	sw $t0, -1184($fp)
	addi $t0, $fp, -1084
	sw $t0, -1188($fp)
	li $t0, 1
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
	li $t0, 46414
	sw $t0, -1208($fp)
	addi $t0, $fp, -1084
	sw $t0, -1212($fp)
	li $t0, 2
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1212($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1208($fp)
	lw $t1, -1224($fp)
	sw $t0, 0($t1)
	lw $t0, -1224($fp)
	lw $t1, 0($t0)
	sw $t1, -1228($fp)
	li $t0, 64548
	sw $t0, -1232($fp)
	addi $t0, $fp, -1084
	sw $t0, -1236($fp)
	li $t0, 3
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1236($fp)
	lw $t1, -1244($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1232($fp)
	lw $t1, -1248($fp)
	sw $t0, 0($t1)
	lw $t0, -1248($fp)
	lw $t1, 0($t0)
	sw $t1, -1252($fp)
label151:
	li $t0, 0
	sw $t0, -1256($fp)
	lw $t0, -480($fp)
	sw $t0, -1260($fp)
	lw $t0, -504($fp)
	sw $t0, -1264($fp)
	lw $t0, -1260($fp)
	lw $t1, -1264($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t1, -1268($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label157
label157:
	lw $t0, -1104($fp)
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -1256($fp)
label156:
	li $t0, 9505
	sw $t0, -1276($fp)
	lw $t0, -312($fp)
	sw $t0, -1280($fp)
	lw $t0, -144($fp)
	sw $t0, -1284($fp)
	lw $t0, -1280($fp)
	lw $t1, -1284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1288($fp)
	li $t0, 35847
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	li $t0, 6058
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -1304($fp)
	lw $t0, -408($fp)
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	li $t0, 24919
	sw $t0, -1316($fp)
	lw $t0, 16($fp)
	sw $t0, -1320($fp)
	lw $t0, -1316($fp)
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	li $t0, 28289
	sw $t0, -1328($fp)
	lw $t1, -1324($fp)
	lw $t2, -1328($fp)
	bgt $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1312($fp)
label159:
	lw $t0, -1116($fp)
	sw $t0, -1332($fp)
	addi $sp, $sp, -4
	lw $t0, -1304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1336($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -1256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1340($fp)
	addi $sp, $sp, 20
	li $t0, 52394
	sw $t0, -1344($fp)
	lw $t0, -1340($fp)
	lw $t1, -1344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1348($fp)
	lw $t0, -324($fp)
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	sub $t0, $t0, $t1
	sw $t0, -1356($fp)
	addi $t0, $fp, -16
	sw $t0, -1360($fp)
	lw $t0, -144($fp)
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
	li $t0, 0
	sw $t0, -1380($fp)
	lw $t0, 12($fp)
	sw $t0, -1384($fp)
	li $t0, 17266
	sw $t0, -1388($fp)
	lw $t1, -1384($fp)
	lw $t2, -1388($fp)
	ble $t1, $t2, label162
	j label161
label162:
	li $t0, 41234
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1380($fp)
label161:
	li $t0, 49184
	sw $t0, -1396($fp)
	li $t0, 42164
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -360($fp)
	sw $t0, -1408($fp)
	lw $t0, -1404($fp)
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	lw $t0, 4($fp)
	sw $t0, -1420($fp)
	li $t0, 51357
	sw $t0, -1424($fp)
	lw $t1, -1420($fp)
	lw $t2, -1424($fp)
	bne $t1, $t2, label163
	j label165
label165:
	li $t0, 3434
	sw $t0, -1428($fp)
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -1416($fp)
label164:
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1432($fp)
	addi $sp, $sp, 20
	lw $t1, -1356($fp)
	lw $t2, -1432($fp)
	bne $t1, $t2, label152
	j label154
label154:
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 3409
	sw $t0, -1440($fp)
	li $t0, 35770
	sw $t0, -1444($fp)
	lw $t1, -1440($fp)
	lw $t2, -1444($fp)
	ble $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1436($fp)
label167:
	lw $t0, 4($fp)
	sw $t0, -1448($fp)
	lw $t1, -1436($fp)
	lw $t2, -1448($fp)
	beq $t1, $t2, label152
	j label153
label152:
	li $t0, 0
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	li $t0, 65416
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -1456($fp)
label172:
	addi $t0, $fp, -1084
	sw $t0, -1464($fp)
	lw $t0, -684($fp)
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
	lw $t0, -1456($fp)
	lw $t1, -1480($fp)
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label170
label170:
	li $t0, 0
	sw $t0, -1488($fp)
	lw $t0, -684($fp)
	sw $t0, -1492($fp)
	lw $t0, -408($fp)
	sw $t0, -1496($fp)
	lw $t1, -1492($fp)
	lw $t2, -1496($fp)
	blt $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -1488($fp)
label174:
	li $t0, 0
	sw $t0, -1500($fp)
	li $t0, 46662
	sw $t0, -1504($fp)
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -1500($fp)
label176:
	lw $t1, -1488($fp)
	lw $t2, -1500($fp)
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -1452($fp)
label169:
	lw $ra, -4($fp)
	lw $v0, -1452($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label151
label153:
	lw $t0, -1092($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1084
	sw $t0, -1532($fp)
	li $t0, 0
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
	addi $t0, $fp, -1084
	sw $t0, -1552($fp)
	li $t0, 1
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
	addi $t0, $fp, -1084
	sw $t0, -1572($fp)
	li $t0, 2
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
	addi $t0, $fp, -1084
	sw $t0, -1592($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -1612($fp)
	li $t0, 0
	sw $t0, -1616($fp)
	li $t0, 5933
	sw $t0, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	lw $t0, -360($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1632($fp)
	li $t0, 42684
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1640($fp)
	li $t0, 0
	sw $t0, -1644($fp)
	lw $t0, -156($fp)
	sw $t0, -1648($fp)
	lw $t0, -144($fp)
	sw $t0, -1652($fp)
	lw $t1, -1648($fp)
	lw $t2, -1652($fp)
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -1644($fp)
label184:
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 3967
	sw $t0, -1660($fp)
	lw $t0, -360($fp)
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	li $t0, 31767
	sw $t0, -1672($fp)
	lw $t1, -1668($fp)
	lw $t2, -1672($fp)
	beq $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -1656($fp)
label186:
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1676($fp)
	addi $sp, $sp, 20
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -1624($fp)
label182:
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1680($fp)
	li $t0, 0
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t1, -1684($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -1616($fp)
label180:
	li $t0, 1798
	sw $t0, -1688($fp)
	lw $t1, -1616($fp)
	lw $t2, -1688($fp)
	bge $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -1612($fp)
label178:
	lw $ra, -4($fp)
	lw $v0, -1612($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label187:
	li $t0, 28298
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label190:
	li $t0, 0
	sw $t0, -1696($fp)
	li $t0, 1758
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label193:
	lw $t0, -480($fp)
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -1696($fp)
label192:
	li $t0, 0
	sw $t0, -1708($fp)
	li $t0, 11759
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label194:
	li $t0, 1
	sw $t0, -1708($fp)
label195:
	li $t0, 12465
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -1720($fp)
	li $t0, 0
	sw $t0, -1724($fp)
	li $t0, 49595
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label199
label199:
	lw $t0, -480($fp)
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label198
label198:
	li $t0, 47365
	sw $t0, -1736($fp)
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -1724($fp)
label197:
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1740($fp)
	addi $sp, $sp, 20
	li $t0, 18213
	sw $t0, -1744($fp)
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 21693
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	li $t0, 48172
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	li $t0, 17225
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	li $t0, 46612
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	li $t0, 10926
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	li $t0, 0
	sw $t0, -1812($fp)
	li $t0, 23284
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label205
label205:
	li $t0, 16923
	sw $t0, -1820($fp)
	lw $t0, -1804($fp)
	sw $t0, -1824($fp)
	lw $t0, -1820($fp)
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -1812($fp)
label204:
	lw $t0, -1812($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	lw $t0, -684($fp)
	sw $t0, -1836($fp)
	li $t0, 17298
	sw $t0, -1840($fp)
	lw $t0, -1128($fp)
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	addi $t0, $fp, -64
	sw $t0, -1852($fp)
	li $t0, 6
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
	li $t0, 48318
	sw $t0, -1872($fp)
	lw $t0, -1116($fp)
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 11365
	sw $t0, -1884($fp)
	lw $t0, -1880($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	addi $t0, $fp, -64
	sw $t0, -1896($fp)
	li $t0, 5
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
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label208
label208:
	lw $t0, -420($fp)
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1892($fp)
label207:
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1920($fp)
	addi $sp, $sp, 20
	lw $t0, -1128($fp)
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	li $t0, 59326
	sw $t0, -1932($fp)
	lw $t0, -504($fp)
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1940($fp)
	li $t0, 44909
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1792($fp)
	sw $t0, -1952($fp)
	lw $t0, -1140($fp)
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	sub $t0, $t0, $t1
	sw $t0, -1960($fp)
	li $t0, 23865
	sw $t0, -1964($fp)
	lw $t0, -144($fp)
	sw $t0, -1968($fp)
	lw $t0, -1964($fp)
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	li $t0, 2745
	sw $t0, -1976($fp)
	li $t0, 0
	sw $t0, -1980($fp)
	li $t0, 10142
	sw $t0, -1984($fp)
	lw $t0, -420($fp)
	sw $t0, -1988($fp)
	lw $t0, -1984($fp)
	lw $t1, -1988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1992($fp)
	lw $t0, -408($fp)
	sw $t0, -1996($fp)
	lw $t1, -1992($fp)
	lw $t2, -1996($fp)
	ble $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -1980($fp)
label210:
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2000($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2004($fp)
	li $t0, 20431
	sw $t0, -2008($fp)
	lw $t0, -1104($fp)
	sw $t0, -2012($fp)
	lw $t0, -2008($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label213:
	lw $t0, -1780($fp)
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -2004($fp)
label212:
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2024($fp)
	addi $sp, $sp, 20
	lw $t0, -1836($fp)
	lw $t1, -2024($fp)
	sub $t0, $t0, $t1
	sw $t0, -2028($fp)
	j label202
label201:
	li $t0, 0
	sw $t0, -2032($fp)
	li $t0, 38872
	sw $t0, -2036($fp)
	lw $t0, -360($fp)
	sw $t0, -2040($fp)
	lw $t1, -2036($fp)
	lw $t2, -2040($fp)
	blt $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -2032($fp)
label215:
label202:
	lw $t0, -1756($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1768($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1780($fp)
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1792($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1804($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2064($fp)
	li $t0, 61212
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 29626
	sw $t0, -2076($fp)
	li $t0, 9958
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	li $t0, 38252
	sw $t0, -2088($fp)
	lw $t1, -2084($fp)
	lw $t2, -2088($fp)
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -2072($fp)
label219:
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	lw $t0, -432($fp)
	sw $t0, -2100($fp)
	li $t0, 58570
	sw $t0, -2104($fp)
	lw $t1, -2100($fp)
	lw $t2, -2104($fp)
	blt $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -2096($fp)
label223:
	li $t0, 17821
	sw $t0, -2108($fp)
	lw $t1, -2096($fp)
	lw $t2, -2108($fp)
	beq $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -2092($fp)
label221:
	li $t0, 6342
	sw $t0, -2112($fp)
	lw $t0, -1104($fp)
	sw $t0, -2116($fp)
	lw $t0, -2112($fp)
	lw $t1, -2116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2120($fp)
	lw $t0, -408($fp)
	sw $t0, -2124($fp)
	lw $t0, -2120($fp)
	lw $t1, -2124($fp)
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -456($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -2136($fp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2136($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2140($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -36
	sw $t0, -2144($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -2164($fp)
	li $t0, 55801
	sw $t0, -2168($fp)
	li $t0, 24258
	sw $t0, -2172($fp)
	lw $t1, -2168($fp)
	lw $t2, -2172($fp)
	beq $t1, $t2, label224
	j label226
label226:
	li $t0, 54652
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -2164($fp)
label225:
	lw $t0, -180($fp)
	sw $t0, -2180($fp)
	lw $t0, -456($fp)
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	li $t0, 0
	sw $t0, -2192($fp)
	li $t0, 0
	sw $t0, -2196($fp)
	lw $t0, -480($fp)
	sw $t0, -2200($fp)
	lw $t0, -324($fp)
	sw $t0, -2204($fp)
	lw $t0, -2200($fp)
	lw $t1, -2204($fp)
	add $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -1756($fp)
	sw $t0, -2212($fp)
	lw $t1, -2208($fp)
	lw $t2, -2212($fp)
	ble $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -2196($fp)
label230:
	lw $t0, -480($fp)
	sw $t0, -2216($fp)
	li $t0, 0
	sw $t0, -2220($fp)
	li $t0, 22500
	sw $t0, -2224($fp)
	lw $t0, -180($fp)
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -468($fp)
	sw $t0, -2236($fp)
	lw $t1, -2232($fp)
	lw $t2, -2236($fp)
	bge $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -2220($fp)
label232:
	li $t0, 44042
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	li $t0, 40670
	sw $t0, -2248($fp)
	li $t0, 23974
	sw $t0, -2252($fp)
	lw $t1, -2248($fp)
	lw $t2, -2252($fp)
	beq $t1, $t2, label233
	j label235
label235:
	lw $t0, -408($fp)
	sw $t0, -2256($fp)
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -2244($fp)
label234:
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -684($fp)
	sw $t0, -2268($fp)
	lw $t0, -432($fp)
	sw $t0, -2272($fp)
	lw $t1, -2268($fp)
	lw $t2, -2272($fp)
	blt $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -2264($fp)
label239:
	lw $t0, -492($fp)
	sw $t0, -2276($fp)
	lw $t1, -2264($fp)
	lw $t2, -2276($fp)
	beq $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -2260($fp)
label237:
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2280($fp)
	addi $sp, $sp, 20
	lw $t0, -456($fp)
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
	li $t0, 0
	sw $t0, -2292($fp)
	lw $t0, -1768($fp)
	sw $t0, -2296($fp)
	li $t0, 59982
	sw $t0, -2300($fp)
	lw $t1, -2296($fp)
	lw $t2, -2300($fp)
	bgt $t1, $t2, label240
	j label242
label242:
	lw $t0, -156($fp)
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -2292($fp)
label241:
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2308($fp)
	addi $sp, $sp, 20
	lw $t0, -324($fp)
	sw $t0, -2312($fp)
	lw $t1, -2308($fp)
	lw $t2, -2312($fp)
	ble $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -2192($fp)
label228:
	li $t0, 0
	sw $t0, -2316($fp)
	lw $t0, -492($fp)
	sw $t0, -2320($fp)
	li $t0, 0
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t1, -2324($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label243:
	li $t0, 1
	sw $t0, -2316($fp)
label244:
	lw $t0, -156($fp)
	sw $t0, -2328($fp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2332($fp)
	addi $sp, $sp, 20
	li $t0, 36439
	sw $t0, -2336($fp)
	lw $t0, -2332($fp)
	lw $t1, -2336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2340($fp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2344($fp)
	addi $sp, $sp, 20
	lw $t0, -2068($fp)
	lw $t1, -2344($fp)
	sub $t0, $t0, $t1
	sw $t0, -2348($fp)
	li $t0, 0
	sw $t0, -2352($fp)
	li $t0, 39768
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label245:
	li $t0, 1
	sw $t0, -2352($fp)
label246:
	lw $t1, -2348($fp)
	lw $t2, -2352($fp)
	bge $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -2064($fp)
label217:
	lw $ra, -4($fp)
	lw $v0, -2064($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -420($fp)
	sw $t0, -2360($fp)
	j label187
label189:
	li $t0, 0
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	lw $t0, -1140($fp)
	sw $t0, -2372($fp)
	lw $t0, -1092($fp)
	sw $t0, -2376($fp)
	lw $t0, -420($fp)
	sw $t0, -2380($fp)
	lw $t0, -2376($fp)
	lw $t1, -2380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2384($fp)
	li $t0, 62117
	sw $t0, -2388($fp)
	li $t0, 0
	sw $t0, -2392($fp)
	addi $t0, $fp, -64
	sw $t0, -2396($fp)
	lw $t0, -324($fp)
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
	lw $t1, -2412($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label253:
	li $t0, 12703
	sw $t0, -2416($fp)
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -2392($fp)
label252:
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2420($fp)
	addi $sp, $sp, 20
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label249:
	li $t0, 1
	sw $t0, -2368($fp)
label250:
	lw $t0, 16($fp)
	sw $t0, -2424($fp)
	li $t0, 33558
	sw $t0, -2428($fp)
	li $t0, 0
	lw $t1, -2428($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2424($fp)
	lw $t1, -2432($fp)
	sub $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t1, -2368($fp)
	lw $t2, -2436($fp)
	bge $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -2364($fp)
label248:
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	lw $t0, -144($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2516($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -2536($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -2556($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -2576($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -2596($fp)
	li $t0, 4
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
	lw $t0, -312($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
	sw $t0, -2784($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -2804($fp)
	li $t0, 6
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
	lw $t0, -684($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -2828($fp)
	lw $t0, -372($fp)
	sw $t0, -2832($fp)
	lw $t0, -384($fp)
	sw $t0, -2836($fp)
	lw $t0, -2832($fp)
	lw $t1, -2836($fp)
	mul $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2828($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2844($fp)
	li $t0, 0
	sw $t0, -2848($fp)
	li $t0, 0
	sw $t0, -2852($fp)
	lw $t0, -492($fp)
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -2852($fp)
label258:
	li $t0, 37950
	sw $t0, -2860($fp)
	lw $t0, -2852($fp)
	lw $t1, -2860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2864($fp)
	lw $t0, -420($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -2872($fp)
	lw $t0, -504($fp)
	sw $t0, -2876($fp)
	li $t0, 49078
	sw $t0, -2880($fp)
	lw $t0, -2876($fp)
	lw $t1, -2880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	lw $t0, -144($fp)
	sw $t0, -2892($fp)
	li $t0, 3046
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label261
label261:
	li $t0, 40394
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -2888($fp)
label260:
	addi $sp, $sp, -4
	lw $t0, -2864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2888($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2908($fp)
	addi $sp, $sp, 20
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label256:
	lw $t0, -456($fp)
	sw $t0, -2912($fp)
	lw $t1, -2912($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -2848($fp)
label255:
	lw $t0, -408($fp)
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -2920($fp)
	li $t0, 0
	sw $t0, -2924($fp)
	li $t0, 37712
	sw $t0, -2928($fp)
	li $t0, 0
	lw $t1, -2928($fp)
	sub $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label264:
	lw $t0, -420($fp)
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -2924($fp)
label263:
	li $t0, 0
	sw $t0, -2940($fp)
	lw $t0, -396($fp)
	sw $t0, -2944($fp)
	li $t0, 57612
	sw $t0, -2948($fp)
	lw $t0, -2944($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -504($fp)
	sw $t0, -2956($fp)
	lw $t1, -2952($fp)
	lw $t2, -2956($fp)
	ble $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -2940($fp)
label266:
	addi $sp, $sp, -4
	lw $t0, -2848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2960($fp)
	addi $sp, $sp, 20
	lw $t0, -2844($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $ra, -4($fp)
	lw $v0, -2964($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44
	li $t0, 4302
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 840
	sw $t0, -20($fp)
	li $t0, 0
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	jal f7
	sw $v0, -28($fp)
	addi $sp, $sp, 4
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -36($fp)
label268:
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -36($fp)
	lw $t1, -44($fp)
	sub $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $ra, -4($fp)
	lw $v0, -48($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -9244
	li $t0, 11286
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 65514
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 60823
	sw $t0, -256($fp)
	addi $t0, $fp, -40
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
	li $t0, 51957
	sw $t0, -280($fp)
	addi $t0, $fp, -40
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
	li $t0, 23953
	sw $t0, -304($fp)
	addi $t0, $fp, -40
	sw $t0, -308($fp)
	li $t0, 2
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
	li $t0, 39329
	sw $t0, -328($fp)
	addi $t0, $fp, -40
	sw $t0, -332($fp)
	li $t0, 3
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
	li $t0, 8921
	sw $t0, -352($fp)
	addi $t0, $fp, -40
	sw $t0, -356($fp)
	li $t0, 4
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
	li $t0, 60392
	sw $t0, -376($fp)
	addi $t0, $fp, -40
	sw $t0, -380($fp)
	li $t0, 5
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
	li $t0, 29594
	sw $t0, -400($fp)
	addi $t0, $fp, -40
	sw $t0, -404($fp)
	li $t0, 6
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
	li $t0, 33179
	sw $t0, -424($fp)
	addi $t0, $fp, -40
	sw $t0, -428($fp)
	li $t0, 7
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
	li $t0, 49509
	sw $t0, -448($fp)
	addi $t0, $fp, -40
	sw $t0, -452($fp)
	li $t0, 8
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
	li $t0, 41553
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 40074
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 55851
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 34587
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 57895
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 19941
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 44545
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 30611
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 59709
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 57248
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 27192
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 27731
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 49324
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 64905
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 30777
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 24182
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
	li $t0, 48447
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
	li $t0, 3191
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
	li $t0, 28485
	sw $t0, -724($fp)
	addi $t0, $fp, -72
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
	li $t0, 49287
	sw $t0, -748($fp)
	addi $t0, $fp, -72
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
	li $t0, 14478
	sw $t0, -772($fp)
	addi $t0, $fp, -72
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
	li $t0, 28463
	sw $t0, -796($fp)
	addi $t0, $fp, -72
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
	li $t0, 44574
	sw $t0, -820($fp)
	addi $t0, $fp, -72
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
	li $t0, 899
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 52416
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 18367
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 9820
	sw $t0, -880($fp)
	addi $t0, $fp, -88
	sw $t0, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -884($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -880($fp)
	lw $t1, -896($fp)
	sw $t0, 0($t1)
	lw $t0, -896($fp)
	lw $t1, 0($t0)
	sw $t1, -900($fp)
	li $t0, 47273
	sw $t0, -904($fp)
	addi $t0, $fp, -88
	sw $t0, -908($fp)
	li $t0, 1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -908($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -904($fp)
	lw $t1, -920($fp)
	sw $t0, 0($t1)
	lw $t0, -920($fp)
	lw $t1, 0($t0)
	sw $t1, -924($fp)
	li $t0, 47962
	sw $t0, -928($fp)
	addi $t0, $fp, -88
	sw $t0, -932($fp)
	li $t0, 2
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
	li $t0, 42999
	sw $t0, -952($fp)
	addi $t0, $fp, -88
	sw $t0, -956($fp)
	li $t0, 3
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
	li $t0, 31246
	sw $t0, -976($fp)
	addi $t0, $fp, -124
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
	li $t0, 23979
	sw $t0, -1000($fp)
	addi $t0, $fp, -124
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
	li $t0, 17538
	sw $t0, -1024($fp)
	addi $t0, $fp, -124
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
	li $t0, 21561
	sw $t0, -1048($fp)
	addi $t0, $fp, -124
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
	li $t0, 58566
	sw $t0, -1072($fp)
	addi $t0, $fp, -124
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
	li $t0, 9897
	sw $t0, -1096($fp)
	addi $t0, $fp, -124
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
	li $t0, 41502
	sw $t0, -1120($fp)
	addi $t0, $fp, -124
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
	li $t0, 37576
	sw $t0, -1144($fp)
	addi $t0, $fp, -124
	sw $t0, -1148($fp)
	li $t0, 7
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1148($fp)
	lw $t1, -1156($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1144($fp)
	lw $t1, -1160($fp)
	sw $t0, 0($t1)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	li $t0, 40509
	sw $t0, -1168($fp)
	addi $t0, $fp, -124
	sw $t0, -1172($fp)
	li $t0, 8
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1172($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1168($fp)
	lw $t1, -1184($fp)
	sw $t0, 0($t1)
	lw $t0, -1184($fp)
	lw $t1, 0($t0)
	sw $t1, -1188($fp)
	li $t0, 35675
	sw $t0, -1192($fp)
	addi $t0, $fp, -148
	sw $t0, -1196($fp)
	li $t0, 0
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1196($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1192($fp)
	lw $t1, -1208($fp)
	sw $t0, 0($t1)
	lw $t0, -1208($fp)
	lw $t1, 0($t0)
	sw $t1, -1212($fp)
	li $t0, 29288
	sw $t0, -1216($fp)
	addi $t0, $fp, -148
	sw $t0, -1220($fp)
	li $t0, 1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1220($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1216($fp)
	lw $t1, -1232($fp)
	sw $t0, 0($t1)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	li $t0, 2165
	sw $t0, -1240($fp)
	addi $t0, $fp, -148
	sw $t0, -1244($fp)
	li $t0, 2
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
	li $t0, 63406
	sw $t0, -1264($fp)
	addi $t0, $fp, -148
	sw $t0, -1268($fp)
	li $t0, 3
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
	li $t0, 13077
	sw $t0, -1288($fp)
	addi $t0, $fp, -148
	sw $t0, -1292($fp)
	li $t0, 4
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
	li $t0, 1534
	sw $t0, -1312($fp)
	addi $t0, $fp, -148
	sw $t0, -1316($fp)
	li $t0, 5
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
	li $t0, 28647
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 37259
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	li $t0, 49981
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	li $t0, 31838
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 208
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 33733
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 46316
	sw $t0, -1408($fp)
	addi $t0, $fp, -156
	sw $t0, -1412($fp)
	li $t0, 0
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
	li $t0, 28672
	sw $t0, -1432($fp)
	addi $t0, $fp, -156
	sw $t0, -1436($fp)
	li $t0, 1
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
	li $t0, 12771
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 47215
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 15552
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	li $t0, 31139
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 57035
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 62825
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 13565
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	li $t0, 34499
	sw $t0, -1540($fp)
	addi $t0, $fp, -180
	sw $t0, -1544($fp)
	li $t0, 0
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
	li $t0, 28535
	sw $t0, -1564($fp)
	addi $t0, $fp, -180
	sw $t0, -1568($fp)
	li $t0, 1
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
	li $t0, 37544
	sw $t0, -1588($fp)
	addi $t0, $fp, -180
	sw $t0, -1592($fp)
	li $t0, 2
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
	li $t0, 52037
	sw $t0, -1612($fp)
	addi $t0, $fp, -180
	sw $t0, -1616($fp)
	li $t0, 3
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
	li $t0, 50096
	sw $t0, -1636($fp)
	addi $t0, $fp, -180
	sw $t0, -1640($fp)
	li $t0, 4
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
	li $t0, 30574
	sw $t0, -1660($fp)
	addi $t0, $fp, -180
	sw $t0, -1664($fp)
	li $t0, 5
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
	li $t0, 61934
	sw $t0, -1684($fp)
	addi $t0, $fp, -184
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
	li $t0, 26062
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	li $t0, 2614
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	li $t0, 36907
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	li $t0, 61737
	sw $t0, -1744($fp)
	addi $t0, $fp, -196
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1748($fp)
	lw $t1, -1756($fp)
	add $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1744($fp)
	lw $t1, -1760($fp)
	sw $t0, 0($t1)
	lw $t0, -1760($fp)
	lw $t1, 0($t0)
	sw $t1, -1764($fp)
	li $t0, 31903
	sw $t0, -1768($fp)
	addi $t0, $fp, -196
	sw $t0, -1772($fp)
	li $t0, 1
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
	li $t0, 39073
	sw $t0, -1792($fp)
	addi $t0, $fp, -196
	sw $t0, -1796($fp)
	li $t0, 2
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
	li $t0, 59607
	sw $t0, -1816($fp)
	addi $t0, $fp, -228
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1820($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1816($fp)
	lw $t1, -1832($fp)
	sw $t0, 0($t1)
	lw $t0, -1832($fp)
	lw $t1, 0($t0)
	sw $t1, -1836($fp)
	li $t0, 44980
	sw $t0, -1840($fp)
	addi $t0, $fp, -228
	sw $t0, -1844($fp)
	li $t0, 1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1844($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1840($fp)
	lw $t1, -1856($fp)
	sw $t0, 0($t1)
	lw $t0, -1856($fp)
	lw $t1, 0($t0)
	sw $t1, -1860($fp)
	li $t0, 40607
	sw $t0, -1864($fp)
	addi $t0, $fp, -228
	sw $t0, -1868($fp)
	li $t0, 2
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1868($fp)
	lw $t1, -1876($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1864($fp)
	lw $t1, -1880($fp)
	sw $t0, 0($t1)
	lw $t0, -1880($fp)
	lw $t1, 0($t0)
	sw $t1, -1884($fp)
	li $t0, 22718
	sw $t0, -1888($fp)
	addi $t0, $fp, -228
	sw $t0, -1892($fp)
	li $t0, 3
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1892($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1888($fp)
	lw $t1, -1904($fp)
	sw $t0, 0($t1)
	lw $t0, -1904($fp)
	lw $t1, 0($t0)
	sw $t1, -1908($fp)
	li $t0, 16703
	sw $t0, -1912($fp)
	addi $t0, $fp, -228
	sw $t0, -1916($fp)
	li $t0, 4
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1916($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1912($fp)
	lw $t1, -1928($fp)
	sw $t0, 0($t1)
	lw $t0, -1928($fp)
	lw $t1, 0($t0)
	sw $t1, -1932($fp)
	li $t0, 25053
	sw $t0, -1936($fp)
	addi $t0, $fp, -228
	sw $t0, -1940($fp)
	li $t0, 5
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1940($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1936($fp)
	lw $t1, -1952($fp)
	sw $t0, 0($t1)
	lw $t0, -1952($fp)
	lw $t1, 0($t0)
	sw $t1, -1956($fp)
	li $t0, 54557
	sw $t0, -1960($fp)
	addi $t0, $fp, -228
	sw $t0, -1964($fp)
	li $t0, 6
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1964($fp)
	lw $t1, -1972($fp)
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1960($fp)
	lw $t1, -1976($fp)
	sw $t0, 0($t1)
	lw $t0, -1976($fp)
	lw $t1, 0($t0)
	sw $t1, -1980($fp)
	li $t0, 16912
	sw $t0, -1984($fp)
	addi $t0, $fp, -228
	sw $t0, -1988($fp)
	li $t0, 7
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1988($fp)
	lw $t1, -1996($fp)
	add $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1984($fp)
	lw $t1, -2000($fp)
	sw $t0, 0($t1)
	lw $t0, -2000($fp)
	lw $t1, 0($t0)
	sw $t1, -2004($fp)
	li $t0, 58786
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	li $t0, 0
	sw $t0, -2020($fp)
	lw $t0, -584($fp)
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label269:
	li $t0, 1
	sw $t0, -2020($fp)
label270:
	li $t0, 35337
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	li $t0, 45584
	sw $t0, -2080($fp)
	addi $t0, $fp, -2064
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2084($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2080($fp)
	lw $t1, -2096($fp)
	sw $t0, 0($t1)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	li $t0, 6021
	sw $t0, -2104($fp)
	addi $t0, $fp, -2064
	sw $t0, -2108($fp)
	li $t0, 1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2108($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2104($fp)
	lw $t1, -2120($fp)
	sw $t0, 0($t1)
	lw $t0, -2120($fp)
	lw $t1, 0($t0)
	sw $t1, -2124($fp)
	li $t0, 17017
	sw $t0, -2128($fp)
	addi $t0, $fp, -2064
	sw $t0, -2132($fp)
	li $t0, 2
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2132($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2128($fp)
	lw $t1, -2144($fp)
	sw $t0, 0($t1)
	lw $t0, -2144($fp)
	lw $t1, 0($t0)
	sw $t1, -2148($fp)
	li $t0, 61136
	sw $t0, -2152($fp)
	addi $t0, $fp, -2064
	sw $t0, -2156($fp)
	li $t0, 3
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2156($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2152($fp)
	lw $t1, -2168($fp)
	sw $t0, 0($t1)
	lw $t0, -2168($fp)
	lw $t1, 0($t0)
	sw $t1, -2172($fp)
	li $t0, 37160
	sw $t0, -2176($fp)
	addi $t0, $fp, -2064
	sw $t0, -2180($fp)
	li $t0, 4
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2180($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2176($fp)
	lw $t1, -2192($fp)
	sw $t0, 0($t1)
	lw $t0, -2192($fp)
	lw $t1, 0($t0)
	sw $t1, -2196($fp)
	li $t0, 8516
	sw $t0, -2200($fp)
	addi $t0, $fp, -2064
	sw $t0, -2204($fp)
	li $t0, 5
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2204($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2200($fp)
	lw $t1, -2216($fp)
	sw $t0, 0($t1)
	lw $t0, -2216($fp)
	lw $t1, 0($t0)
	sw $t1, -2220($fp)
	li $t0, 58426
	sw $t0, -2224($fp)
	addi $t0, $fp, -2064
	sw $t0, -2228($fp)
	li $t0, 6
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2228($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2224($fp)
	lw $t1, -2240($fp)
	sw $t0, 0($t1)
	lw $t0, -2240($fp)
	lw $t1, 0($t0)
	sw $t1, -2244($fp)
	li $t0, 50725
	sw $t0, -2248($fp)
	addi $t0, $fp, -2064
	sw $t0, -2252($fp)
	li $t0, 7
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
	li $t0, 43015
	sw $t0, -2272($fp)
	addi $t0, $fp, -2064
	sw $t0, -2276($fp)
	li $t0, 8
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
	li $t0, 21425
	sw $t0, -2296($fp)
	addi $t0, $fp, -2064
	sw $t0, -2300($fp)
	li $t0, 9
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
	li $t0, 22733
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -2404($fp)
	li $t0, 29516
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -2416($fp)
	li $t0, 5986
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -2428($fp)
	li $t0, 53308
	sw $t0, -2432($fp)
	addi $t0, $fp, -2356
	sw $t0, -2436($fp)
	li $t0, 0
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2436($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2432($fp)
	lw $t1, -2448($fp)
	sw $t0, 0($t1)
	lw $t0, -2448($fp)
	lw $t1, 0($t0)
	sw $t1, -2452($fp)
	li $t0, 25915
	sw $t0, -2456($fp)
	addi $t0, $fp, -2356
	sw $t0, -2460($fp)
	li $t0, 1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2460($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2456($fp)
	lw $t1, -2472($fp)
	sw $t0, 0($t1)
	lw $t0, -2472($fp)
	lw $t1, 0($t0)
	sw $t1, -2476($fp)
	li $t0, 32048
	sw $t0, -2480($fp)
	addi $t0, $fp, -2356
	sw $t0, -2484($fp)
	li $t0, 2
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2484($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2480($fp)
	lw $t1, -2496($fp)
	sw $t0, 0($t1)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	li $t0, 55922
	sw $t0, -2504($fp)
	addi $t0, $fp, -2356
	sw $t0, -2508($fp)
	li $t0, 3
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2508($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2504($fp)
	lw $t1, -2520($fp)
	sw $t0, 0($t1)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	li $t0, 62822
	sw $t0, -2528($fp)
	addi $t0, $fp, -2356
	sw $t0, -2532($fp)
	li $t0, 4
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2532($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2528($fp)
	lw $t1, -2544($fp)
	sw $t0, 0($t1)
	lw $t0, -2544($fp)
	lw $t1, 0($t0)
	sw $t1, -2548($fp)
	li $t0, 28250
	sw $t0, -2552($fp)
	addi $t0, $fp, -2356
	sw $t0, -2556($fp)
	li $t0, 5
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2556($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2552($fp)
	lw $t1, -2568($fp)
	sw $t0, 0($t1)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	li $t0, 22289
	sw $t0, -2576($fp)
	addi $t0, $fp, -2356
	sw $t0, -2580($fp)
	li $t0, 6
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2580($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2576($fp)
	lw $t1, -2592($fp)
	sw $t0, 0($t1)
	lw $t0, -2592($fp)
	lw $t1, 0($t0)
	sw $t1, -2596($fp)
	li $t0, 36359
	sw $t0, -2600($fp)
	addi $t0, $fp, -2356
	sw $t0, -2604($fp)
	li $t0, 7
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2604($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2600($fp)
	lw $t1, -2616($fp)
	sw $t0, 0($t1)
	lw $t0, -2616($fp)
	lw $t1, 0($t0)
	sw $t1, -2620($fp)
	li $t0, 22321
	sw $t0, -2624($fp)
	addi $t0, $fp, -2356
	sw $t0, -2628($fp)
	li $t0, 8
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2628($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2624($fp)
	lw $t1, -2640($fp)
	sw $t0, 0($t1)
	lw $t0, -2640($fp)
	lw $t1, 0($t0)
	sw $t1, -2644($fp)
	li $t0, 1733
	sw $t0, -2648($fp)
	addi $t0, $fp, -2356
	sw $t0, -2652($fp)
	li $t0, 9
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2652($fp)
	lw $t1, -2660($fp)
	add $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2648($fp)
	lw $t1, -2664($fp)
	sw $t0, 0($t1)
	lw $t0, -2664($fp)
	lw $t1, 0($t0)
	sw $t1, -2668($fp)
	li $t0, 11431
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -2680($fp)
	li $t0, 45040
	sw $t0, -2684($fp)
	addi $t0, $fp, -2372
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2688($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2684($fp)
	lw $t1, -2700($fp)
	sw $t0, 0($t1)
	lw $t0, -2700($fp)
	lw $t1, 0($t0)
	sw $t1, -2704($fp)
	li $t0, 18437
	sw $t0, -2708($fp)
	addi $t0, $fp, -2372
	sw $t0, -2712($fp)
	li $t0, 1
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
	li $t0, 36484
	sw $t0, -2732($fp)
	addi $t0, $fp, -2372
	sw $t0, -2736($fp)
	li $t0, 2
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
	li $t0, 34061
	sw $t0, -2756($fp)
	addi $t0, $fp, -2372
	sw $t0, -2760($fp)
	li $t0, 3
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
	li $t0, 35349
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	sw $t0, -2788($fp)
	li $t0, 29734
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	sw $t0, -2800($fp)
	li $t0, 3862
	sw $t0, -2804($fp)
	addi $t0, $fp, -2392
	sw $t0, -2808($fp)
	li $t0, 0
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
	li $t0, 15397
	sw $t0, -2828($fp)
	addi $t0, $fp, -2392
	sw $t0, -2832($fp)
	li $t0, 1
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
	li $t0, 35755
	sw $t0, -2852($fp)
	addi $t0, $fp, -2392
	sw $t0, -2856($fp)
	li $t0, 2
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
	li $t0, 20879
	sw $t0, -2876($fp)
	addi $t0, $fp, -2392
	sw $t0, -2880($fp)
	li $t0, 3
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2880($fp)
	lw $t1, -2888($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2876($fp)
	lw $t1, -2892($fp)
	sw $t0, 0($t1)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	li $t0, 10997
	sw $t0, -2900($fp)
	addi $t0, $fp, -2392
	sw $t0, -2904($fp)
	li $t0, 4
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2904($fp)
	lw $t1, -2912($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2900($fp)
	lw $t1, -2916($fp)
	sw $t0, 0($t1)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	li $t0, 0
	sw $t0, -2924($fp)
	jal f7
	sw $v0, -2928($fp)
	addi $sp, $sp, 4
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label276
label276:
	lw $t0, -1364($fp)
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -2924($fp)
label275:
	lw $t0, -2924($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 0
	sw $t0, -2940($fp)
	li $t0, 7380
	sw $t0, -2944($fp)
	lw $t1, -2944($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -2940($fp)
label283:
	li $t0, 0
	lw $t1, -2940($fp)
	sub $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label281
label281:
	addi $t0, $fp, -2372
	sw $t0, -2952($fp)
	li $t0, 3
	sw $t0, -2956($fp)
	li $t0, 4
	lw $t1, -2956($fp)
	mul $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, -2952($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	lw $t1, 0($t0)
	sw $t1, -2968($fp)
	lw $t0, -1388($fp)
	sw $t0, -2972($fp)
	lw $t0, -2968($fp)
	lw $t1, -2972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label278
label280:
	li $t0, 0
	sw $t0, -2980($fp)
	li $t0, 0
	sw $t0, -2984($fp)
	lw $t0, 12($fp)
	sw $t0, -2988($fp)
	li $t0, 58105
	sw $t0, -2992($fp)
	lw $t1, -2988($fp)
	lw $t2, -2992($fp)
	bge $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -2984($fp)
label287:
	lw $t0, -2424($fp)
	sw $t0, -2996($fp)
	lw $t1, -2984($fp)
	lw $t2, -2996($fp)
	beq $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -2980($fp)
label285:
	li $t0, 0
	sw $t0, -3000($fp)
	lw $t0, -1484($fp)
	sw $t0, -3004($fp)
	lw $t0, -236($fp)
	sw $t0, -3008($fp)
	lw $t1, -3004($fp)
	lw $t2, -3008($fp)
	blt $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -3000($fp)
label289:
	lw $t1, -2980($fp)
	lw $t2, -3000($fp)
	beq $t1, $t2, label277
	j label278
label277:
	addi $t0, $fp, -88
	sw $t0, -3012($fp)
	li $t0, 6875
	sw $t0, -3016($fp)
	lw $t0, -620($fp)
	sw $t0, -3020($fp)
	lw $t0, -3016($fp)
	lw $t1, -3020($fp)
	mul $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -3028($fp)
	li $t0, 4
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, -3012($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	j label279
label278:
	addi $t0, $fp, -40
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 25313
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label290
label290:
	li $t0, 1
	sw $t0, -3048($fp)
label291:
	li $t0, 0
	sw $t0, -3056($fp)
	lw $t0, -2676($fp)
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -3056($fp)
label293:
	lw $t0, -3048($fp)
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	li $t0, 4
	lw $t1, -3064($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, -3044($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
label279:
	j label273
label272:
	lw $t0, -584($fp)
	sw $t0, -3080($fp)
	lw $t0, -596($fp)
	sw $t0, -3084($fp)
	li $t0, 0
	lw $t1, -3084($fp)
	sub $t0, $t0, $t1
	sw $t0, -3088($fp)
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	li $t0, 0
	sw $t0, -3096($fp)
	lw $t0, -1736($fp)
	sw $t0, -3100($fp)
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label294
label294:
	li $t0, 1
	sw $t0, -3096($fp)
label295:
	li $t0, 15303
	sw $t0, -3104($fp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3108($fp)
	addi $sp, $sp, 20
label273:
	li $t0, 0
	sw $t0, -3112($fp)
	li $t0, 36392
	sw $t0, -3116($fp)
	li $t0, 0
	lw $t1, -3116($fp)
	sub $t0, $t0, $t1
	sw $t0, -3120($fp)
	li $t0, 0
	lw $t1, -3120($fp)
	sub $t0, $t0, $t1
	sw $t0, -3124($fp)
	li $t0, 31299
	sw $t0, -3128($fp)
	li $t0, 3075
	sw $t0, -3132($fp)
	lw $t0, -3128($fp)
	lw $t1, -3132($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -1532($fp)
	sw $t0, -3140($fp)
	lw $t0, -3136($fp)
	lw $t1, -3140($fp)
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t1, -3124($fp)
	lw $t2, -3144($fp)
	beq $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -3112($fp)
label300:
	addi $t0, $fp, -72
	sw $t0, -3148($fp)
	lw $t0, -536($fp)
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
	li $t0, 62307
	sw $t0, -3168($fp)
	li $t0, 0
	lw $t1, -3168($fp)
	sub $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3164($fp)
	lw $t1, -3172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3176($fp)
	lw $t1, -3112($fp)
	lw $t2, -3176($fp)
	bne $t1, $t2, label296
	j label297
label296:
	li $t0, 0
	sw $t0, -3180($fp)
	li $t0, 0
	sw $t0, -3184($fp)
	lw $t0, -1472($fp)
	sw $t0, -3188($fp)
	li $t0, 17484
	sw $t0, -3192($fp)
	lw $t0, -3188($fp)
	lw $t1, -3192($fp)
	sub $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t1, -3196($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label308:
	lw $t0, -2072($fp)
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -3184($fp)
label307:
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 30417
	sw $t0, -3208($fp)
	li $t0, 48383
	sw $t0, -3212($fp)
	lw $t1, -3208($fp)
	lw $t2, -3212($fp)
	beq $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -3204($fp)
label310:
	li $t0, 0
	sw $t0, -3216($fp)
	lw $t0, -584($fp)
	sw $t0, -3220($fp)
	lw $t0, -572($fp)
	sw $t0, -3224($fp)
	lw $t0, -3220($fp)
	lw $t1, -3224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label313:
	li $t0, 15751
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -3216($fp)
label312:
	lw $t0, -248($fp)
	sw $t0, -3236($fp)
	lw $t0, -872($fp)
	sw $t0, -3240($fp)
	lw $t0, -3236($fp)
	lw $t1, -3240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3244($fp)
	li $t0, 0
	lw $t1, -3244($fp)
	sub $t0, $t0, $t1
	sw $t0, -3248($fp)
	li $t0, 0
	sw $t0, -3252($fp)
	li $t0, 26061
	sw $t0, -3256($fp)
	li $t0, 0
	lw $t1, -3256($fp)
	sub $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -1340($fp)
	sw $t0, -3264($fp)
	lw $t1, -3260($fp)
	lw $t2, -3264($fp)
	beq $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -3252($fp)
label315:
	li $t0, 0
	sw $t0, -3268($fp)
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 59593
	sw $t0, -3276($fp)
	lw $t1, -3276($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label318:
	li $t0, 1
	sw $t0, -3272($fp)
label319:
	lw $t0, -1712($fp)
	sw $t0, -3280($fp)
	lw $t1, -3272($fp)
	lw $t2, -3280($fp)
	bgt $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -3268($fp)
label317:
	li $t0, 0
	sw $t0, -3284($fp)
	lw $t0, -620($fp)
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label322
label322:
	li $t0, 58997
	sw $t0, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -3284($fp)
label321:
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3296($fp)
	addi $sp, $sp, 20
	lw $t0, -2424($fp)
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -512($fp)
	sw $t0, -3308($fp)
	lw $t0, -860($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -3316($fp)
	li $t0, 63347
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -3324($fp)
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3328($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3328($fp)
	sub $t0, $t0, $t1
	sw $t0, -3332($fp)
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3336($fp)
	addi $sp, $sp, 20
	lw $t0, -248($fp)
	sw $t0, -3340($fp)
	li $t0, 0
	lw $t1, -3340($fp)
	sub $t0, $t0, $t1
	sw $t0, -3344($fp)
	li $t0, 0
	lw $t1, -3344($fp)
	sub $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t1, -3336($fp)
	lw $t2, -3348($fp)
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -3180($fp)
label305:
	lw $t0, -2400($fp)
	sw $t0, -3352($fp)
	lw $t1, -3180($fp)
	lw $t2, -3352($fp)
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 0
	sw $t0, -3356($fp)
	li $t0, 0
	sw $t0, -3360($fp)
	lw $t0, -1352($fp)
	sw $t0, -3364($fp)
	li $t0, 41848
	sw $t0, -3368($fp)
	lw $t0, -3364($fp)
	lw $t1, -3368($fp)
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	li $t0, 0
	sw $t0, -3376($fp)
	lw $t0, -1496($fp)
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -3376($fp)
label328:
	lw $t1, -3372($fp)
	lw $t2, -3376($fp)
	bgt $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -3360($fp)
label326:
	lw $t0, -1712($fp)
	sw $t0, -3384($fp)
	lw $t1, -3360($fp)
	lw $t2, -3384($fp)
	bge $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -3356($fp)
label324:
label302:
	j label298
label297:
	lw $t0, -1400($fp)
	sw $t0, -3388($fp)
	li $t0, 0
	sw $t0, -3392($fp)
	lw $t0, -608($fp)
	sw $t0, -3396($fp)
	lw $t1, -3396($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label332:
	li $t0, 1
	sw $t0, -3392($fp)
label333:
	li $t0, 0
	lw $t1, -3392($fp)
	sub $t0, $t0, $t1
	sw $t0, -3400($fp)
	li $t0, 0
	lw $t1, -3400($fp)
	sub $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3388($fp)
	lw $t1, -3404($fp)
	sub $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	lw $t0, -2784($fp)
	sw $t0, -3412($fp)
	j label331
label330:
	li $t0, 0
	sw $t0, -3416($fp)
	li $t0, 42530
	sw $t0, -3420($fp)
	lw $t0, -500($fp)
	sw $t0, -3424($fp)
	lw $t1, -3420($fp)
	lw $t2, -3424($fp)
	beq $t1, $t2, label334
	j label336
label336:
	lw $t0, -2400($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -3416($fp)
label335:
	li $t0, 0
	sw $t0, -3432($fp)
	li $t0, 12796
	sw $t0, -3436($fp)
	li $t0, 61948
	sw $t0, -3440($fp)
	lw $t0, -3436($fp)
	lw $t1, -3440($fp)
	add $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label339
label339:
	li $t0, 5734
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -3432($fp)
label338:
	jal f7
	sw $v0, -3452($fp)
	addi $sp, $sp, 4
	lw $t0, -872($fp)
	sw $t0, -3456($fp)
	lw $t0, -3452($fp)
	lw $t1, -3456($fp)
	sub $t0, $t0, $t1
	sw $t0, -3460($fp)
	li $t0, 0
	sw $t0, -3464($fp)
	addi $t0, $fp, -2356
	sw $t0, -3468($fp)
	li $t0, 7
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
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label342:
	lw $t0, -2796($fp)
	sw $t0, -3488($fp)
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -3464($fp)
label341:
	addi $sp, $sp, -4
	lw $t0, -3416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3492($fp)
	addi $sp, $sp, 20
	lw $t0, -3492($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -3496($fp)
label331:
label298:
	li $t0, 0
	sw $t0, -3500($fp)
	li $t0, 0
	sw $t0, -3504($fp)
	addi $t0, $fp, -180
	sw $t0, -3508($fp)
	lw $t0, -620($fp)
	sw $t0, -3512($fp)
	li $t0, 4
	lw $t1, -3512($fp)
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	lw $t1, -3508($fp)
	add $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	lw $t1, 0($t0)
	sw $t1, -3524($fp)
	li $t0, 274
	sw $t0, -3528($fp)
	li $t0, 21131
	sw $t0, -3532($fp)
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	sub $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t1, -3524($fp)
	lw $t2, -3536($fp)
	blt $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -3504($fp)
label347:
	addi $t0, $fp, -184
	sw $t0, -3540($fp)
	lw $t0, -596($fp)
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
	lw $t1, -3504($fp)
	lw $t2, -3556($fp)
	ble $t1, $t2, label345
	j label344
label345:
	jal f7
	sw $v0, -3560($fp)
	addi $sp, $sp, 4
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -3500($fp)
label344:
	li $t0, 0
	sw $t0, -3564($fp)
	addi $t0, $fp, -228
	sw $t0, -3568($fp)
	lw $t0, -1340($fp)
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
	li $t0, 0
	lw $t1, -3584($fp)
	sub $t0, $t0, $t1
	sw $t0, -3588($fp)
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 12749
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label351
label351:
	li $t0, 1
	sw $t0, -3592($fp)
label352:
	lw $t0, -3588($fp)
	lw $t1, -3592($fp)
	add $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label350:
	li $t0, 0
	sw $t0, -3604($fp)
	lw $t0, -2072($fp)
	sw $t0, -3608($fp)
	li $t0, 21154
	sw $t0, -3612($fp)
	lw $t1, -3608($fp)
	lw $t2, -3612($fp)
	beq $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -3604($fp)
label354:
	lw $t0, -1508($fp)
	sw $t0, -3616($fp)
	lw $t1, -3604($fp)
	lw $t2, -3616($fp)
	beq $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -3564($fp)
label349:
	lw $t0, -248($fp)
	sw $t0, -3620($fp)
	lw $t0, -1712($fp)
	sw $t0, -3624($fp)
	lw $t0, -3620($fp)
	lw $t1, -3624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3628($fp)
	jal f7
	sw $v0, -3632($fp)
	addi $sp, $sp, 4
	lw $t0, -3628($fp)
	lw $t1, -3632($fp)
	mul $t0, $t0, $t1
	sw $t0, -3636($fp)
	li $t0, 32129
	sw $t0, -3640($fp)
	li $t0, 0
	sw $t0, -3644($fp)
	lw $t0, -476($fp)
	sw $t0, -3648($fp)
	lw $t1, -3648($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label355:
	li $t0, 1
	sw $t0, -3644($fp)
label356:
	lw $t0, -1376($fp)
	sw $t0, -3652($fp)
	lw $t0, -3644($fp)
	lw $t1, -3652($fp)
	mul $t0, $t0, $t1
	sw $t0, -3656($fp)
	li $t0, 0
	sw $t0, -3660($fp)
	lw $t0, -248($fp)
	sw $t0, -3664($fp)
	lw $t0, -2412($fp)
	sw $t0, -3668($fp)
	li $t0, 36016
	sw $t0, -3672($fp)
	lw $t0, -3668($fp)
	lw $t1, -3672($fp)
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	addi $t0, $fp, -148
	sw $t0, -3680($fp)
	lw $t0, -596($fp)
	sw $t0, -3684($fp)
	li $t0, 4
	lw $t1, -3684($fp)
	mul $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	lw $t1, -3680($fp)
	add $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	lw $t1, 0($t0)
	sw $t1, -3696($fp)
	li $t0, 0
	lw $t1, -3696($fp)
	sub $t0, $t0, $t1
	sw $t0, -3700($fp)
	li $t0, 0
	sw $t0, -3704($fp)
	li $t0, 50550
	sw $t0, -3708($fp)
	lw $t0, -2424($fp)
	sw $t0, -3712($fp)
	lw $t0, -3708($fp)
	lw $t1, -3712($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -2412($fp)
	sw $t0, -3720($fp)
	lw $t1, -3716($fp)
	lw $t2, -3720($fp)
	bgt $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -3704($fp)
label360:
	li $t0, 20129
	sw $t0, -3724($fp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3728($fp)
	addi $sp, $sp, 20
	lw $t0, -3664($fp)
	lw $t1, -3728($fp)
	sub $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -1520($fp)
	sw $t0, -3736($fp)
	li $t0, 12699
	sw $t0, -3740($fp)
	li $t0, 0
	lw $t1, -3740($fp)
	sub $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3736($fp)
	lw $t1, -3744($fp)
	add $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t1, -3732($fp)
	lw $t2, -3748($fp)
	ble $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -3660($fp)
label358:
	lw $t0, -2400($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2412($fp)
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2424($fp)
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3764($fp)
	li $t0, 0
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
	addi $t0, $fp, -2356
	sw $t0, -3784($fp)
	li $t0, 1
	sw $t0, -3788($fp)
	li $t0, 4
	lw $t1, -3788($fp)
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, 0($t0)
	sw $t1, -3800($fp)
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3804($fp)
	li $t0, 2
	sw $t0, -3808($fp)
	li $t0, 4
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, 0($t0)
	sw $t1, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3824($fp)
	li $t0, 3
	sw $t0, -3828($fp)
	li $t0, 4
	lw $t1, -3828($fp)
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	lw $t1, -3824($fp)
	add $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	lw $t1, 0($t0)
	sw $t1, -3840($fp)
	lw $t0, -3840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3844($fp)
	li $t0, 4
	sw $t0, -3848($fp)
	li $t0, 4
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	lw $t0, -3860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3864($fp)
	li $t0, 5
	sw $t0, -3868($fp)
	li $t0, 4
	lw $t1, -3868($fp)
	mul $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, -3864($fp)
	add $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, 0($t0)
	sw $t1, -3880($fp)
	lw $t0, -3880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3884($fp)
	li $t0, 6
	sw $t0, -3888($fp)
	li $t0, 4
	lw $t1, -3888($fp)
	mul $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	lw $t1, -3884($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	lw $t1, 0($t0)
	sw $t1, -3900($fp)
	lw $t0, -3900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3904($fp)
	li $t0, 7
	sw $t0, -3908($fp)
	li $t0, 4
	lw $t1, -3908($fp)
	mul $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, 0($t0)
	sw $t1, -3920($fp)
	lw $t0, -3920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3924($fp)
	li $t0, 8
	sw $t0, -3928($fp)
	li $t0, 4
	lw $t1, -3928($fp)
	mul $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, 0($t0)
	sw $t1, -3940($fp)
	lw $t0, -3940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3944($fp)
	li $t0, 9
	sw $t0, -3948($fp)
	li $t0, 4
	lw $t1, -3948($fp)
	mul $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, 0($t0)
	sw $t1, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2676($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2372
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
	addi $t0, $fp, -2372
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
	addi $t0, $fp, -2372
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
	addi $t0, $fp, -2372
	sw $t0, -4028($fp)
	li $t0, 3
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
	lw $t0, -2784($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2796($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2392
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
	addi $t0, $fp, -2392
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
	addi $t0, $fp, -2392
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
	addi $t0, $fp, -2392
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
	addi $t0, $fp, -2392
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
	li $t0, 0
	sw $t0, -4156($fp)
	li $t0, 0
	sw $t0, -4160($fp)
	li $t0, 57425
	sw $t0, -4164($fp)
	lw $t0, -860($fp)
	sw $t0, -4168($fp)
	lw $t0, -4164($fp)
	lw $t1, -4168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4172($fp)
	li $t0, 0
	lw $t1, -4172($fp)
	sub $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t1, -4176($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label363:
	li $t0, 1
	sw $t0, -4160($fp)
label364:
	li $t0, 0
	lw $t1, -4160($fp)
	sub $t0, $t0, $t1
	sw $t0, -4180($fp)
	addi $t0, $fp, -2392
	sw $t0, -4184($fp)
	lw $t0, -1508($fp)
	sw $t0, -4188($fp)
	li $t0, 61329
	sw $t0, -4192($fp)
	lw $t0, -4188($fp)
	lw $t1, -4192($fp)
	sub $t0, $t0, $t1
	sw $t0, -4196($fp)
	li $t0, 4
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, 0($t0)
	sw $t1, -4208($fp)
	lw $t1, -4180($fp)
	lw $t2, -4208($fp)
	bge $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -4156($fp)
label362:
	lw $ra, -4($fp)
	lw $v0, -4156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label365:
	li $t0, 28002
	sw $t0, -4212($fp)
	li $t0, 28281
	sw $t0, -4216($fp)
	lw $t1, -4212($fp)
	lw $t2, -4216($fp)
	beq $t1, $t2, label366
	j label368
label368:
	lw $t0, -548($fp)
	sw $t0, -4220($fp)
	li $t0, 0
	lw $t1, -4220($fp)
	sub $t0, $t0, $t1
	sw $t0, -4224($fp)
	li $t0, 27092
	sw $t0, -4228($fp)
	lw $t0, -4224($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	addi $t0, $fp, -184
	sw $t0, -4236($fp)
	lw $t0, -1724($fp)
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
	lw $t0, -4232($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t1, -4256($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 0
	sw $t0, -4260($fp)
	addi $t0, $fp, -124
	sw $t0, -4264($fp)
	li $t0, 5
	sw $t0, -4268($fp)
	li $t0, 4
	lw $t1, -4268($fp)
	mul $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	lw $t1, 0($t0)
	sw $t1, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label369
label369:
	li $t0, 1
	sw $t0, -4260($fp)
label370:
	li $t0, 0
	sw $t0, -4284($fp)
	lw $t0, -1400($fp)
	sw $t0, -4288($fp)
	lw $t1, -4288($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label371:
	li $t0, 1
	sw $t0, -4284($fp)
label372:
	lw $t0, -2072($fp)
	sw $t0, -4292($fp)
	lw $t0, -4284($fp)
	lw $t1, -4292($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	li $t0, 49527
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -4304($fp)
	lw $t0, -1712($fp)
	sw $t0, -4308($fp)
	addi $sp, $sp, -4
	lw $t0, -4260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4308($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4312($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4316($fp)
	li $t0, 50965
	sw $t0, -4320($fp)
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label373
label375:
	li $t0, 40289
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -4316($fp)
label374:
	addi $t0, $fp, -180
	sw $t0, -4328($fp)
	lw $t0, -1736($fp)
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
	addi $t0, $fp, -40
	sw $t0, -4348($fp)
	li $t0, 8
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
	lw $t0, -1460($fp)
	sw $t0, -4368($fp)
	lw $t0, -4364($fp)
	lw $t1, -4368($fp)
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	li $t0, 25052
	sw $t0, -4380($fp)
	li $t0, 24904
	sw $t0, -4384($fp)
	lw $t0, -4380($fp)
	lw $t1, -4384($fp)
	sub $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t1, -4388($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label378
label378:
	lw $t0, -644($fp)
	sw $t0, -4392($fp)
	lw $t1, -4392($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -4376($fp)
label377:
	li $t0, 0
	sw $t0, -4396($fp)
	lw $t0, -548($fp)
	sw $t0, -4400($fp)
	lw $t0, -860($fp)
	sw $t0, -4404($fp)
	lw $t1, -4400($fp)
	lw $t2, -4404($fp)
	beq $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -4396($fp)
label380:
	li $t0, 0
	sw $t0, -4408($fp)
	li $t0, 31077
	sw $t0, -4412($fp)
	li $t0, 0
	lw $t1, -4412($fp)
	sub $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t1, -4416($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label381:
	li $t0, 1
	sw $t0, -4408($fp)
label382:
	addi $sp, $sp, -4
	lw $t0, -4372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4420($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -4312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4424($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -4424($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label365
label367:
	li $t0, 0
	sw $t0, -4428($fp)
	li $t0, 0
	sw $t0, -4432($fp)
	addi $t0, $fp, -180
	sw $t0, -4436($fp)
	li $t0, 0
	sw $t0, -4440($fp)
	lw $t0, -1724($fp)
	sw $t0, -4444($fp)
	lw $t1, -4444($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label387
label387:
	li $t0, 1
	sw $t0, -4440($fp)
label388:
	li $t0, 4
	lw $t1, -4440($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, -4436($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, 0($t0)
	sw $t1, -4456($fp)
	addi $t0, $fp, -2064
	sw $t0, -4460($fp)
	li $t0, 5
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
	lw $t1, -4456($fp)
	lw $t2, -4476($fp)
	blt $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -4432($fp)
label386:
	li $t0, 0
	sw $t0, -4480($fp)
	lw $t0, -848($fp)
	sw $t0, -4484($fp)
	li $t0, 0
	lw $t1, -4484($fp)
	sub $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t1, -4488($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label389:
	li $t0, 1
	sw $t0, -4480($fp)
label390:
	lw $t0, -2012($fp)
	sw $t0, -4492($fp)
	li $t0, 0
	lw $t1, -4492($fp)
	sub $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4480($fp)
	lw $t1, -4496($fp)
	add $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t1, -4432($fp)
	lw $t2, -4500($fp)
	beq $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -4428($fp)
label384:
	li $t0, 0
	sw $t0, -4504($fp)
	li $t0, 28159
	sw $t0, -4508($fp)
	lw $t1, -4508($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label392
label393:
	li $t0, 38635
	sw $t0, -4512($fp)
	li $t0, 58111
	sw $t0, -4516($fp)
	lw $t1, -4512($fp)
	lw $t2, -4516($fp)
	beq $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -4504($fp)
label392:
	lw $t0, -4504($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -4520($fp)
	li $t0, 33894
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	sw $t0, -4532($fp)
	li $t0, 15629
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	sw $t0, -4544($fp)
	lw $t0, -4528($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4540($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4556($fp)
	lw $t0, 8($fp)
	sw $t0, -4560($fp)
	li $t0, 4
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, 0($t0)
	sw $t1, -4572($fp)
	li $t0, 58386
	sw $t0, -4576($fp)
	lw $t0, -4572($fp)
	lw $t1, -4576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4580($fp)
	li $t0, 39889
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -4588($fp)
	li $t0, 0
	sw $t0, -4592($fp)
	li $t0, 14985
	sw $t0, -4596($fp)
	li $t0, 54750
	sw $t0, -4600($fp)
	lw $t0, -4596($fp)
	lw $t1, -4600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4604($fp)
	lw $t1, -4604($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label396:
	li $t0, 44241
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -4592($fp)
label395:
	lw $t0, -1736($fp)
	sw $t0, -4612($fp)
	li $t0, 0
	sw $t0, -4616($fp)
	addi $t0, $fp, -180
	sw $t0, -4620($fp)
	li $t0, 5
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
	lw $t1, -4636($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label398
label399:
	li $t0, 19189
	sw $t0, -4640($fp)
	lw $t1, -4640($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -4616($fp)
label398:
	addi $sp, $sp, -4
	lw $t0, -4588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4616($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4644($fp)
	addi $sp, $sp, 20
	li $t0, 13752
	sw $t0, -4648($fp)
	lw $t0, -4644($fp)
	lw $t1, -4648($fp)
	sub $t0, $t0, $t1
	sw $t0, -4652($fp)
	li $t0, 0
	sw $t0, -4656($fp)
	addi $t0, $fp, -196
	sw $t0, -4660($fp)
	lw $t0, -524($fp)
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
	lw $t0, -644($fp)
	sw $t0, -4680($fp)
	lw $t1, -4676($fp)
	lw $t2, -4680($fp)
	bge $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -4656($fp)
label401:
	li $t0, 0
	sw $t0, -4684($fp)
	lw $t0, -2012($fp)
	sw $t0, -4688($fp)
	li $t0, 0
	lw $t1, -4688($fp)
	sub $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t1, -4692($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label404
label404:
	li $t0, 56443
	sw $t0, -4696($fp)
	lw $t1, -4696($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -4684($fp)
label403:
	li $t0, 0
	sw $t0, -4700($fp)
	li $t0, 64554
	sw $t0, -4704($fp)
	li $t0, 57635
	sw $t0, -4708($fp)
	lw $t0, -4704($fp)
	lw $t1, -4708($fp)
	sub $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t1, -4712($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label407:
	li $t0, 61207
	sw $t0, -4716($fp)
	lw $t1, -4716($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -4700($fp)
label406:
	li $t0, 0
	sw $t0, -4720($fp)
	lw $t0, -848($fp)
	sw $t0, -4724($fp)
	lw $t0, -236($fp)
	sw $t0, -4728($fp)
	lw $t1, -4724($fp)
	lw $t2, -4728($fp)
	bne $t1, $t2, label410
	j label409
label410:
	li $t0, 48508
	sw $t0, -4732($fp)
	lw $t1, -4732($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -4720($fp)
label409:
	addi $sp, $sp, -4
	lw $t0, -4656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4736($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4740($fp)
	addi $t0, $fp, -156
	sw $t0, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	li $t0, 4
	lw $t1, -4748($fp)
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, 0($t0)
	sw $t1, -4760($fp)
	lw $t0, -1496($fp)
	sw $t0, -4764($fp)
	lw $t1, -4760($fp)
	lw $t2, -4764($fp)
	blt $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -4740($fp)
label412:
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 55025
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label416:
	lw $t0, -500($fp)
	sw $t0, -4776($fp)
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label415
label415:
	li $t0, 28378
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -4768($fp)
label414:
	addi $sp, $sp, -4
	lw $t0, -4652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4784($fp)
	addi $sp, $sp, 20
	lw $t0, -4580($fp)
	lw $t1, -4784($fp)
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -4792($fp)
	lw $ra, -4($fp)
	lw $v0, -4792($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label417:
	lw $t0, -1352($fp)
	sw $t0, -4796($fp)
	lw $t1, -4796($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 0
	sw $t0, -4800($fp)
	li $t0, 0
	sw $t0, -4804($fp)
	li $t0, 0
	sw $t0, -4808($fp)
	li $t0, 0
	sw $t0, -4812($fp)
	li $t0, 63351
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label426:
	li $t0, 1
	sw $t0, -4812($fp)
label427:
	addi $t0, $fp, -40
	sw $t0, -4820($fp)
	li $t0, 6
	sw $t0, -4824($fp)
	li $t0, 4
	lw $t1, -4824($fp)
	mul $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, 0($t0)
	sw $t1, -4836($fp)
	lw $t1, -4812($fp)
	lw $t2, -4836($fp)
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -4808($fp)
label425:
	li $t0, 0
	sw $t0, -4840($fp)
	lw $t0, -4528($fp)
	sw $t0, -4844($fp)
	li $t0, 55294
	sw $t0, -4848($fp)
	lw $t0, -4844($fp)
	lw $t1, -4848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4852($fp)
	lw $t0, -4540($fp)
	sw $t0, -4856($fp)
	lw $t1, -4852($fp)
	lw $t2, -4856($fp)
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -4840($fp)
label429:
	addi $t0, $fp, -156
	sw $t0, -4860($fp)
	li $t0, 1
	sw $t0, -4864($fp)
	li $t0, 4
	lw $t1, -4864($fp)
	mul $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	lw $t1, -4860($fp)
	add $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	lw $t1, 0($t0)
	sw $t1, -4876($fp)
	lw $t0, -1724($fp)
	sw $t0, -4880($fp)
	lw $t0, -248($fp)
	sw $t0, -4884($fp)
	lw $t0, -4880($fp)
	lw $t1, -4884($fp)
	add $t0, $t0, $t1
	sw $t0, -4888($fp)
	li $t0, 0
	sw $t0, -4892($fp)
	li $t0, 47342
	sw $t0, -4896($fp)
	lw $t0, -1388($fp)
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	add $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t1, -4904($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label432
label432:
	li $t0, 59131
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -4892($fp)
label431:
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4912($fp)
	addi $sp, $sp, 20
	lw $t1, -4808($fp)
	lw $t2, -4912($fp)
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -4804($fp)
label423:
	li $t0, 0
	sw $t0, -4916($fp)
	addi $t0, $fp, -184
	sw $t0, -4920($fp)
	lw $t0, -548($fp)
	sw $t0, -4924($fp)
	li $t0, 4
	lw $t1, -4924($fp)
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	lw $t1, -4920($fp)
	add $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	lw $t1, 0($t0)
	sw $t1, -4936($fp)
	jal f7
	sw $v0, -4940($fp)
	addi $sp, $sp, 4
	lw $t1, -4936($fp)
	lw $t2, -4940($fp)
	bge $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -4916($fp)
label434:
	lw $t1, -4804($fp)
	lw $t2, -4916($fp)
	beq $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -4800($fp)
label421:
	j label417
label419:
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 32287
	sw $t0, -4948($fp)
	li $t0, 24752
	sw $t0, -4952($fp)
	lw $t1, -4948($fp)
	lw $t2, -4952($fp)
	beq $t1, $t2, label440
	j label439
label440:
	lw $t0, -596($fp)
	sw $t0, -4956($fp)
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -4944($fp)
label439:
	li $t0, 0
	sw $t0, -4960($fp)
	li $t0, 61909
	sw $t0, -4964($fp)
	li $t0, 0
	lw $t1, -4964($fp)
	sub $t0, $t0, $t1
	sw $t0, -4968($fp)
	li $t0, 40720
	sw $t0, -4972($fp)
	lw $t1, -4968($fp)
	lw $t2, -4972($fp)
	beq $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -4960($fp)
label442:
	li $t0, 0
	sw $t0, -4976($fp)
	lw $t0, -632($fp)
	sw $t0, -4980($fp)
	li $t0, 47870
	sw $t0, -4984($fp)
	lw $t0, -4980($fp)
	lw $t1, -4984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4988($fp)
	lw $t1, -4988($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label444
label445:
	li $t0, 42797
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -4976($fp)
label444:
	li $t0, 8903
	sw $t0, -4996($fp)
	li $t0, 46280
	sw $t0, -5000($fp)
	lw $t0, -4996($fp)
	lw $t1, -5000($fp)
	mul $t0, $t0, $t1
	sw $t0, -5004($fp)
	li $t0, 0
	lw $t1, -5004($fp)
	sub $t0, $t0, $t1
	sw $t0, -5008($fp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5012($fp)
	addi $sp, $sp, 20
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label435:
	li $t0, 54724
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	sw $t0, -5056($fp)
	li $t0, 53905
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	sw $t0, -5068($fp)
	li $t0, 7724
	sw $t0, -5072($fp)
	addi $t0, $fp, -5020
	sw $t0, -5076($fp)
	li $t0, 0
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
	li $t0, 53742
	sw $t0, -5096($fp)
	addi $t0, $fp, -5020
	sw $t0, -5100($fp)
	li $t0, 1
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
	li $t0, 46004
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	li $t0, 3395
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -5140($fp)
	li $t0, 44649
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	sw $t0, -5152($fp)
	li $t0, 33897
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	sw $t0, -5164($fp)
	li $t0, 27068
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	sw $t0, -5176($fp)
	li $t0, 63838
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	sw $t0, -5188($fp)
	li $t0, 48882
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	sw $t0, -5200($fp)
	li $t0, 16282
	sw $t0, -5204($fp)
	addi $t0, $fp, -5044
	sw $t0, -5208($fp)
	li $t0, 0
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5208($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5204($fp)
	lw $t1, -5220($fp)
	sw $t0, 0($t1)
	lw $t0, -5220($fp)
	lw $t1, 0($t0)
	sw $t1, -5224($fp)
	li $t0, 42544
	sw $t0, -5228($fp)
	addi $t0, $fp, -5044
	sw $t0, -5232($fp)
	li $t0, 1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5232($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5228($fp)
	lw $t1, -5244($fp)
	sw $t0, 0($t1)
	lw $t0, -5244($fp)
	lw $t1, 0($t0)
	sw $t1, -5248($fp)
	li $t0, 23235
	sw $t0, -5252($fp)
	addi $t0, $fp, -5044
	sw $t0, -5256($fp)
	li $t0, 2
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
	li $t0, 30034
	sw $t0, -5276($fp)
	addi $t0, $fp, -5044
	sw $t0, -5280($fp)
	li $t0, 3
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
	li $t0, 40359
	sw $t0, -5300($fp)
	addi $t0, $fp, -5044
	sw $t0, -5304($fp)
	li $t0, 4
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
	li $t0, 48553
	sw $t0, -5324($fp)
	addi $t0, $fp, -5044
	sw $t0, -5328($fp)
	li $t0, 5
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
label446:
	li $t0, 18540
	sw $t0, -5348($fp)
	li $t0, 0
	sw $t0, -5352($fp)
	li $t0, 0
	sw $t0, -5356($fp)
	li $t0, 44149
	sw $t0, -5360($fp)
	li $t0, 6106
	sw $t0, -5364($fp)
	lw $t1, -5360($fp)
	lw $t2, -5364($fp)
	bgt $t1, $t2, label451
	j label453
label453:
	lw $t0, -1472($fp)
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -5356($fp)
label452:
	li $t0, 17736
	sw $t0, -5372($fp)
	li $t0, 31681
	sw $t0, -5376($fp)
	lw $t0, -5372($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t0, -5136($fp)
	sw $t0, -5384($fp)
	li $t0, 54961
	sw $t0, -5388($fp)
	lw $t0, -5384($fp)
	lw $t1, -5388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5392($fp)
	li $t0, 0
	sw $t0, -5396($fp)
	li $t0, 0
	sw $t0, -5400($fp)
	li $t0, 6929
	sw $t0, -5404($fp)
	li $t0, 0
	lw $t1, -5404($fp)
	sub $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5196($fp)
	sw $t0, -5412($fp)
	lw $t1, -5408($fp)
	lw $t2, -5412($fp)
	bgt $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -5400($fp)
label458:
	li $t0, 0
	sw $t0, -5416($fp)
	li $t0, 0
	sw $t0, -5420($fp)
	lw $t0, -1364($fp)
	sw $t0, -5424($fp)
	lw $t0, 8($fp)
	sw $t0, -5428($fp)
	lw $t1, -5424($fp)
	lw $t2, -5428($fp)
	beq $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -5420($fp)
label462:
	li $t0, 50985
	sw $t0, -5432($fp)
	lw $t1, -5420($fp)
	lw $t2, -5432($fp)
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -5416($fp)
label460:
	li $t0, 10556
	sw $t0, -5436($fp)
	li $t0, 14241
	sw $t0, -5440($fp)
	lw $t0, -5436($fp)
	lw $t1, -5440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5444($fp)
	li $t0, 31907
	sw $t0, -5448($fp)
	li $t0, 8188
	sw $t0, -5452($fp)
	lw $t0, -5448($fp)
	lw $t1, -5452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5456($fp)
	addi $sp, $sp, -4
	lw $t0, -5400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5460($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -5464($fp)
	li $t0, 64820
	sw $t0, -5468($fp)
	li $t0, 29811
	sw $t0, -5472($fp)
	lw $t0, -5468($fp)
	lw $t1, -5472($fp)
	mul $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t1, -5476($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label464
label465:
	lw $t0, -536($fp)
	sw $t0, -5480($fp)
	lw $t1, -5480($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -5464($fp)
label464:
	lw $t0, -5064($fp)
	sw $t0, -5484($fp)
	li $t0, 0
	sw $t0, -5488($fp)
	lw $t0, -476($fp)
	sw $t0, -5492($fp)
	li $t0, 22166
	sw $t0, -5496($fp)
	lw $t1, -5492($fp)
	lw $t2, -5496($fp)
	beq $t1, $t2, label468
	j label467
label468:
	li $t0, 42148
	sw $t0, -5500($fp)
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -5488($fp)
label467:
	addi $sp, $sp, -4
	lw $t0, -5460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5488($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5504($fp)
	addi $sp, $sp, 20
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label456
label456:
	lw $t0, -548($fp)
	sw $t0, -5508($fp)
	lw $t1, -5508($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -5396($fp)
label455:
	addi $sp, $sp, -4
	lw $t0, -5356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5512($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5512($fp)
	sub $t0, $t0, $t1
	sw $t0, -5516($fp)
	li $t0, 39405
	sw $t0, -5520($fp)
	li $t0, 32355
	sw $t0, -5524($fp)
	lw $t0, -5520($fp)
	lw $t1, -5524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5528($fp)
	lw $t1, -5516($fp)
	lw $t2, -5528($fp)
	ble $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -5352($fp)
label450:
	lw $t1, -5348($fp)
	lw $t2, -5352($fp)
	beq $t1, $t2, label447
	j label448
label447:
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 52110
	sw $t0, -5536($fp)
	lw $t1, -5536($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label473
label473:
	li $t0, 1
	sw $t0, -5532($fp)
label474:
	li $t0, 0
	lw $t1, -5532($fp)
	sub $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t1, -5540($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label470
label472:
	li $t0, 42800
	sw $t0, -5544($fp)
	lw $t0, -236($fp)
	sw $t0, -5548($fp)
	lw $t0, -5544($fp)
	lw $t1, -5548($fp)
	add $t0, $t0, $t1
	sw $t0, -5552($fp)
	li $t0, 11468
	sw $t0, -5556($fp)
	li $t0, 0
	lw $t1, -5556($fp)
	sub $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5552($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t1, -5564($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 20471
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	sw $t0, -5612($fp)
	li $t0, 4332
	sw $t0, -5616($fp)
	addi $t0, $fp, -5600
	sw $t0, -5620($fp)
	li $t0, 0
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5620($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5616($fp)
	lw $t1, -5632($fp)
	sw $t0, 0($t1)
	lw $t0, -5632($fp)
	lw $t1, 0($t0)
	sw $t1, -5636($fp)
	li $t0, 9771
	sw $t0, -5640($fp)
	addi $t0, $fp, -5600
	sw $t0, -5644($fp)
	li $t0, 1
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5644($fp)
	lw $t1, -5652($fp)
	add $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5640($fp)
	lw $t1, -5656($fp)
	sw $t0, 0($t1)
	lw $t0, -5656($fp)
	lw $t1, 0($t0)
	sw $t1, -5660($fp)
	li $t0, 3817
	sw $t0, -5664($fp)
	addi $t0, $fp, -5600
	sw $t0, -5668($fp)
	li $t0, 2
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5668($fp)
	lw $t1, -5676($fp)
	add $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5664($fp)
	lw $t1, -5680($fp)
	sw $t0, 0($t1)
	lw $t0, -5680($fp)
	lw $t1, 0($t0)
	sw $t1, -5684($fp)
	li $t0, 20614
	sw $t0, -5688($fp)
	addi $t0, $fp, -5600
	sw $t0, -5692($fp)
	li $t0, 3
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5692($fp)
	lw $t1, -5700($fp)
	add $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5688($fp)
	lw $t1, -5704($fp)
	sw $t0, 0($t1)
	lw $t0, -5704($fp)
	lw $t1, 0($t0)
	sw $t1, -5708($fp)
	li $t0, 52315
	sw $t0, -5712($fp)
	addi $t0, $fp, -5600
	sw $t0, -5716($fp)
	li $t0, 4
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5716($fp)
	lw $t1, -5724($fp)
	add $t0, $t0, $t1
	sw $t0, -5728($fp)
	lw $t0, -5712($fp)
	lw $t1, -5728($fp)
	sw $t0, 0($t1)
	lw $t0, -5728($fp)
	lw $t1, 0($t0)
	sw $t1, -5732($fp)
	li $t0, 27052
	sw $t0, -5736($fp)
	addi $t0, $fp, -5600
	sw $t0, -5740($fp)
	li $t0, 5
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5740($fp)
	lw $t1, -5748($fp)
	add $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5736($fp)
	lw $t1, -5752($fp)
	sw $t0, 0($t1)
	lw $t0, -5752($fp)
	lw $t1, 0($t0)
	sw $t1, -5756($fp)
	li $t0, 50649
	sw $t0, -5760($fp)
	addi $t0, $fp, -5600
	sw $t0, -5764($fp)
	li $t0, 6
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5764($fp)
	lw $t1, -5772($fp)
	add $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -5760($fp)
	lw $t1, -5776($fp)
	sw $t0, 0($t1)
	lw $t0, -5776($fp)
	lw $t1, 0($t0)
	sw $t1, -5780($fp)
	li $t0, 27138
	sw $t0, -5784($fp)
	addi $t0, $fp, -5600
	sw $t0, -5788($fp)
	li $t0, 7
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5788($fp)
	lw $t1, -5796($fp)
	add $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5784($fp)
	lw $t1, -5800($fp)
	sw $t0, 0($t1)
	lw $t0, -5800($fp)
	lw $t1, 0($t0)
	sw $t1, -5804($fp)
	li $t0, 10070
	sw $t0, -5808($fp)
	addi $t0, $fp, -5600
	sw $t0, -5812($fp)
	li $t0, 8
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5812($fp)
	lw $t1, -5820($fp)
	add $t0, $t0, $t1
	sw $t0, -5824($fp)
	lw $t0, -5808($fp)
	lw $t1, -5824($fp)
	sw $t0, 0($t1)
	lw $t0, -5824($fp)
	lw $t1, 0($t0)
	sw $t1, -5828($fp)
	li $t0, 0
	sw $t0, -5832($fp)
	li $t0, 3653
	sw $t0, -5836($fp)
	lw $t1, -5836($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label475:
	li $t0, 1
	sw $t0, -5832($fp)
label476:
	li $t0, 0
	sw $t0, -5840($fp)
	jal f7
	sw $v0, -5844($fp)
	addi $sp, $sp, 4
	lw $t1, -5844($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label477:
	li $t0, 1
	sw $t0, -5840($fp)
label478:
	lw $t0, -5832($fp)
	lw $t1, -5840($fp)
	mul $t0, $t0, $t1
	sw $t0, -5848($fp)
	li $t0, 49304
	sw $t0, -5852($fp)
	li $t0, 0
	lw $t1, -5852($fp)
	sub $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5848($fp)
	lw $t1, -5856($fp)
	sub $t0, $t0, $t1
	sw $t0, -5860($fp)
label479:
	li $t0, 52218
	sw $t0, -5864($fp)
	lw $t1, -5864($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label482
label482:
	lw $t0, -5608($fp)
	sw $t0, -5868($fp)
	li $t0, 2938
	sw $t0, -5872($fp)
	lw $t0, -5868($fp)
	lw $t1, -5872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5876($fp)
	lw $t0, -1364($fp)
	sw $t0, -5880($fp)
	li $t0, 0
	lw $t1, -5880($fp)
	sub $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5876($fp)
	lw $t1, -5884($fp)
	mul $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t1, -5888($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 0
	sw $t0, -5892($fp)
	jal f7
	sw $v0, -5896($fp)
	addi $sp, $sp, 4
	jal f7
	sw $v0, -5900($fp)
	addi $sp, $sp, 4
	lw $t0, -5896($fp)
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	jal f7
	sw $v0, -5908($fp)
	addi $sp, $sp, 4
	lw $t0, -5904($fp)
	lw $t1, -5908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5912($fp)
	addi $t0, $fp, -5600
	sw $t0, -5916($fp)
	lw $t0, -5124($fp)
	sw $t0, -5920($fp)
	li $t0, 36616
	sw $t0, -5924($fp)
	lw $t0, -5920($fp)
	lw $t1, -5924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5928($fp)
	li $t0, 20418
	sw $t0, -5932($fp)
	li $t0, 0
	lw $t1, -5932($fp)
	sub $t0, $t0, $t1
	sw $t0, -5936($fp)
	li $t0, 0
	sw $t0, -5940($fp)
	li $t0, 14312
	sw $t0, -5944($fp)
	li $t0, 62747
	sw $t0, -5948($fp)
	lw $t0, -5944($fp)
	lw $t1, -5948($fp)
	add $t0, $t0, $t1
	sw $t0, -5952($fp)
	li $t0, 868
	sw $t0, -5956($fp)
	lw $t1, -5952($fp)
	lw $t2, -5956($fp)
	beq $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -5940($fp)
label486:
	li $t0, 0
	sw $t0, -5960($fp)
	li $t0, 62111
	sw $t0, -5964($fp)
	li $t0, 31065
	sw $t0, -5968($fp)
	lw $t1, -5964($fp)
	lw $t2, -5968($fp)
	beq $t1, $t2, label487
	j label489
label489:
	li $t0, 22255
	sw $t0, -5972($fp)
	lw $t1, -5972($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -5960($fp)
label488:
	li $t0, 0
	sw $t0, -5976($fp)
	lw $t0, -488($fp)
	sw $t0, -5980($fp)
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label490:
	li $t0, 1
	sw $t0, -5976($fp)
label491:
	li $t0, 0
	lw $t1, -5976($fp)
	sub $t0, $t0, $t1
	sw $t0, -5984($fp)
	addi $sp, $sp, -4
	lw $t0, -5936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5988($fp)
	addi $sp, $sp, 20
	li $t0, 32830
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -5996($fp)
	li $t0, 0
	sw $t0, -6000($fp)
	li $t0, 24136
	sw $t0, -6004($fp)
	lw $t0, -1712($fp)
	sw $t0, -6008($fp)
	lw $t0, -6004($fp)
	lw $t1, -6008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6012($fp)
	lw $t1, -6012($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label494
label494:
	lw $t0, 4($fp)
	sw $t0, -6016($fp)
	lw $t1, -6016($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -6000($fp)
label493:
	lw $t0, -584($fp)
	sw $t0, -6020($fp)
	li $t0, 0
	lw $t1, -6020($fp)
	sub $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -1736($fp)
	sw $t0, -6028($fp)
	lw $t0, -6024($fp)
	lw $t1, -6028($fp)
	add $t0, $t0, $t1
	sw $t0, -6032($fp)
	li $t0, 0
	sw $t0, -6036($fp)
	lw $t0, -2012($fp)
	sw $t0, -6040($fp)
	li $t0, 0
	lw $t1, -6040($fp)
	sub $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t1, -6044($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label496
label497:
	lw $t0, -1484($fp)
	sw $t0, -6048($fp)
	lw $t1, -6048($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -6036($fp)
label496:
	lw $t0, -5160($fp)
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -6056($fp)
	li $t0, 11126
	sw $t0, -6060($fp)
	addi $sp, $sp, -4
	lw $t0, -6032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6060($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6064($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -72
	sw $t0, -6068($fp)
	li $t0, 5
	sw $t0, -6072($fp)
	li $t0, 4
	lw $t1, -6072($fp)
	mul $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t0, -6076($fp)
	lw $t1, -6068($fp)
	add $t0, $t0, $t1
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	lw $t1, 0($t0)
	sw $t1, -6084($fp)
	addi $sp, $sp, -4
	lw $t0, -5996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6088($fp)
	addi $sp, $sp, 20
	lw $t0, -236($fp)
	sw $t0, -6092($fp)
	lw $t0, -6088($fp)
	lw $t1, -6092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6096($fp)
	lw $t0, 16($fp)
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -6104($fp)
	addi $sp, $sp, -4
	lw $t0, -5928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6104($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6108($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -6108($fp)
	mul $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	lw $t1, -5916($fp)
	add $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	lw $t1, 0($t0)
	sw $t1, -6120($fp)
	lw $t1, -5912($fp)
	lw $t2, -6120($fp)
	bge $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -5892($fp)
label484:
	j label479
label481:
	j label471
label470:
label498:
	li $t0, 33223
	sw $t0, -6124($fp)
	li $t0, 0
	sw $t0, -6128($fp)
	lw $t0, -644($fp)
	sw $t0, -6132($fp)
	lw $t1, -6132($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label501
label501:
	li $t0, 1
	sw $t0, -6128($fp)
label502:
	lw $t0, -6124($fp)
	lw $t1, -6128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6136($fp)
	addi $t0, $fp, -40
	sw $t0, -6140($fp)
	li $t0, 2
	sw $t0, -6144($fp)
	li $t0, 4
	lw $t1, -6144($fp)
	mul $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	lw $t1, -6140($fp)
	add $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	lw $t1, 0($t0)
	sw $t1, -6156($fp)
	lw $t0, -6136($fp)
	lw $t1, -6156($fp)
	mul $t0, $t0, $t1
	sw $t0, -6160($fp)
	li $t0, 0
	lw $t1, -6160($fp)
	sub $t0, $t0, $t1
	sw $t0, -6164($fp)
	li $t0, 0
	sw $t0, -6168($fp)
	li $t0, 0
	sw $t0, -6172($fp)
	li $t0, 0
	sw $t0, -6176($fp)
	lw $t0, -5184($fp)
	sw $t0, -6180($fp)
	li $t0, 41242
	sw $t0, -6184($fp)
	lw $t1, -6180($fp)
	lw $t2, -6184($fp)
	beq $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -6176($fp)
label508:
	lw $t0, -5052($fp)
	sw $t0, -6188($fp)
	lw $t1, -6176($fp)
	lw $t2, -6188($fp)
	beq $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -6172($fp)
label506:
	li $t0, 31281
	sw $t0, -6192($fp)
	li $t0, 38828
	sw $t0, -6196($fp)
	lw $t0, -6192($fp)
	lw $t1, -6196($fp)
	add $t0, $t0, $t1
	sw $t0, -6200($fp)
	lw $t0, -1724($fp)
	sw $t0, -6204($fp)
	lw $t0, -6200($fp)
	lw $t1, -6204($fp)
	add $t0, $t0, $t1
	sw $t0, -6208($fp)
	li $t0, 54463
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -6216($fp)
	li $t0, 18213
	sw $t0, -6220($fp)
	addi $sp, $sp, -4
	lw $t0, -6172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6220($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6224($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6224($fp)
	sub $t0, $t0, $t1
	sw $t0, -6228($fp)
	li $t0, 27464
	sw $t0, -6232($fp)
	li $t0, 0
	lw $t1, -6232($fp)
	sub $t0, $t0, $t1
	sw $t0, -6236($fp)
	li $t0, 0
	lw $t1, -6236($fp)
	sub $t0, $t0, $t1
	sw $t0, -6240($fp)
	li $t0, 0
	sw $t0, -6244($fp)
	addi $t0, $fp, -40
	sw $t0, -6248($fp)
	lw $t0, -848($fp)
	sw $t0, -6252($fp)
	li $t0, 4
	lw $t1, -6252($fp)
	mul $t0, $t0, $t1
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	lw $t1, -6248($fp)
	add $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	lw $t1, 0($t0)
	sw $t1, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label511
label511:
	li $t0, 44692
	sw $t0, -6268($fp)
	lw $t1, -6268($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -6244($fp)
label510:
	li $t0, 0
	sw $t0, -6272($fp)
	lw $t0, -512($fp)
	sw $t0, -6276($fp)
	lw $t1, -6276($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label512
label512:
	li $t0, 1
	sw $t0, -6272($fp)
label513:
	addi $sp, $sp, -4
	lw $t0, -6228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6272($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6280($fp)
	addi $sp, $sp, 20
	li $t0, 58334
	sw $t0, -6284($fp)
	lw $t0, -6280($fp)
	lw $t1, -6284($fp)
	mul $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -1736($fp)
	sw $t0, -6292($fp)
	lw $t0, -1472($fp)
	sw $t0, -6296($fp)
	lw $t0, -6292($fp)
	lw $t1, -6296($fp)
	add $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t1, -6288($fp)
	lw $t2, -6300($fp)
	ble $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -6168($fp)
label504:
	lw $t1, -6164($fp)
	lw $t2, -6168($fp)
	beq $t1, $t2, label499
	j label500
label499:
label514:
	addi $t0, $fp, -88
	sw $t0, -6304($fp)
	li $t0, 2
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
	lw $t0, -1340($fp)
	sw $t0, -6324($fp)
	li $t0, 2844
	sw $t0, -6328($fp)
	lw $t0, -6324($fp)
	lw $t1, -6328($fp)
	mul $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t0, -620($fp)
	sw $t0, -6336($fp)
	lw $t0, -6332($fp)
	lw $t1, -6336($fp)
	add $t0, $t0, $t1
	sw $t0, -6340($fp)
	li $t0, 0
	sw $t0, -6344($fp)
	lw $t0, -1532($fp)
	sw $t0, -6348($fp)
	lw $t1, -6348($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label518
label518:
	li $t0, 1
	sw $t0, -6344($fp)
label519:
	li $t0, 23941
	sw $t0, -6352($fp)
	lw $t0, -6344($fp)
	lw $t1, -6352($fp)
	sub $t0, $t0, $t1
	sw $t0, -6356($fp)
	addi $t0, $fp, -5044
	sw $t0, -6360($fp)
	lw $t0, -1520($fp)
	sw $t0, -6364($fp)
	li $t0, 4
	lw $t1, -6364($fp)
	mul $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	lw $t1, -6360($fp)
	add $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	lw $t1, 0($t0)
	sw $t1, -6376($fp)
	addi $sp, $sp, -4
	lw $t0, -6320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6380($fp)
	addi $sp, $sp, 20
	lw $t1, -6380($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label516
label517:
	lw $t0, -488($fp)
	sw $t0, -6384($fp)
	li $t0, 0
	lw $t1, -6384($fp)
	sub $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t1, -6388($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 0
	sw $t0, -6392($fp)
	addi $t0, $fp, -148
	sw $t0, -6396($fp)
	li $t0, 0
	sw $t0, -6400($fp)
	lw $t0, -872($fp)
	sw $t0, -6404($fp)
	li $t0, 52149
	sw $t0, -6408($fp)
	lw $t0, -6404($fp)
	lw $t1, -6408($fp)
	add $t0, $t0, $t1
	sw $t0, -6412($fp)
	li $t0, 55086
	sw $t0, -6416($fp)
	lw $t1, -6412($fp)
	lw $t2, -6416($fp)
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -6400($fp)
label523:
	li $t0, 4
	lw $t1, -6400($fp)
	mul $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	lw $t1, -6396($fp)
	add $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	lw $t1, 0($t0)
	sw $t1, -6428($fp)
	addi $t0, $fp, -5020
	sw $t0, -6432($fp)
	lw $t0, -5172($fp)
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
	li $t0, 0
	lw $t1, -6448($fp)
	sub $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t1, -6428($fp)
	lw $t2, -6452($fp)
	ble $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -6392($fp)
label521:
	j label514
label516:
	j label498
label500:
label471:
	j label446
label448:
	lw $t0, -584($fp)
	sw $t0, -6456($fp)
	li $t0, 0
	sw $t0, -6460($fp)
	li $t0, 0
	sw $t0, -6464($fp)
	li $t0, 8140
	sw $t0, -6468($fp)
	li $t0, 0
	lw $t1, -6468($fp)
	sub $t0, $t0, $t1
	sw $t0, -6472($fp)
	li $t0, 41658
	sw $t0, -6476($fp)
	lw $t1, -6472($fp)
	lw $t2, -6476($fp)
	beq $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -6464($fp)
label530:
	li $t0, 0
	sw $t0, -6480($fp)
	li $t0, 193
	sw $t0, -6484($fp)
	lw $t0, -512($fp)
	sw $t0, -6488($fp)
	lw $t0, -6484($fp)
	lw $t1, -6488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6492($fp)
	lw $t0, -1388($fp)
	sw $t0, -6496($fp)
	lw $t1, -6492($fp)
	lw $t2, -6496($fp)
	bge $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -6480($fp)
label532:
	li $t0, 0
	sw $t0, -6500($fp)
	li $t0, 30532
	sw $t0, -6504($fp)
	li $t0, 0
	lw $t1, -6504($fp)
	sub $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -596($fp)
	sw $t0, -6512($fp)
	lw $t1, -6508($fp)
	lw $t2, -6512($fp)
	beq $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -6500($fp)
label534:
	li $t0, 0
	sw $t0, -6516($fp)
	lw $t0, -1460($fp)
	sw $t0, -6520($fp)
	lw $t1, -6520($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label537
label537:
	lw $t0, -1496($fp)
	sw $t0, -6524($fp)
	lw $t1, -6524($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -6516($fp)
label536:
	addi $sp, $sp, -4
	lw $t0, -6464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6516($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6528($fp)
	addi $sp, $sp, 20
	lw $t1, -6528($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label527
label527:
	li $t0, 1
	sw $t0, -6460($fp)
label528:
	lw $t1, -6456($fp)
	lw $t2, -6460($fp)
	blt $t1, $t2, label524
	j label525
label524:
	li $t0, 0
	sw $t0, -6532($fp)
	lw $t0, -1376($fp)
	sw $t0, -6536($fp)
	li $t0, 24329
	sw $t0, -6540($fp)
	lw $t0, -6536($fp)
	lw $t1, -6540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6544($fp)
	lw $t0, -524($fp)
	sw $t0, -6548($fp)
	lw $t0, -6544($fp)
	lw $t1, -6548($fp)
	mul $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -872($fp)
	sw $t0, -6556($fp)
	lw $t0, -6552($fp)
	lw $t1, -6556($fp)
	mul $t0, $t0, $t1
	sw $t0, -6560($fp)
	addi $t0, $fp, -156
	sw $t0, -6564($fp)
	li $t0, 0
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
	lw $t0, -6560($fp)
	lw $t1, -6580($fp)
	mul $t0, $t0, $t1
	sw $t0, -6584($fp)
	lw $t1, -6584($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label540
label540:
	li $t0, 55394
	sw $t0, -6588($fp)
	li $t0, 1
	sw $t0, -6592($fp)
	lw $t0, -6588($fp)
	lw $t1, -6592($fp)
	mul $t0, $t0, $t1
	sw $t0, -6596($fp)
	jal f7
	sw $v0, -6600($fp)
	addi $sp, $sp, 4
	lw $t1, -6596($fp)
	lw $t2, -6600($fp)
	bgt $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -6532($fp)
label539:
	li $t0, 0
	sw $t0, -6604($fp)
	li $t0, 0
	sw $t0, -6608($fp)
	li $t0, 52546
	sw $t0, -6612($fp)
	lw $t0, -632($fp)
	sw $t0, -6616($fp)
	lw $t0, -1400($fp)
	sw $t0, -6620($fp)
	lw $t0, -6616($fp)
	lw $t1, -6620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6624($fp)
	lw $t0, 12($fp)
	sw $t0, -6628($fp)
	lw $t0, -6624($fp)
	lw $t1, -6628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6632($fp)
	lw $t0, -644($fp)
	sw $t0, -6636($fp)
	lw $t0, -5172($fp)
	sw $t0, -6640($fp)
	lw $t0, -6636($fp)
	lw $t1, -6640($fp)
	sub $t0, $t0, $t1
	sw $t0, -6644($fp)
	li $t0, 0
	sw $t0, -6648($fp)
	li $t0, 52605
	sw $t0, -6652($fp)
	li $t0, 0
	lw $t1, -6652($fp)
	sub $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t1, -6656($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label547
label547:
	lw $t0, -5148($fp)
	sw $t0, -6660($fp)
	lw $t1, -6660($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -6648($fp)
label546:
	li $t0, 0
	sw $t0, -6664($fp)
	lw $t0, -860($fp)
	sw $t0, -6668($fp)
	lw $t1, -6668($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label550
label550:
	lw $t0, -872($fp)
	sw $t0, -6672($fp)
	lw $t1, -6672($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -6664($fp)
label549:
	addi $sp, $sp, -4
	lw $t0, -6632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6664($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6676($fp)
	addi $sp, $sp, 20
	lw $t1, -6612($fp)
	lw $t2, -6676($fp)
	bgt $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -6608($fp)
label544:
	lw $t0, -488($fp)
	sw $t0, -6680($fp)
	li $t0, 0
	lw $t1, -6680($fp)
	sub $t0, $t0, $t1
	sw $t0, -6684($fp)
	addi $t0, $fp, -88
	sw $t0, -6688($fp)
	li $t0, 0
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
	lw $t0, -6684($fp)
	lw $t1, -6704($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t1, -6608($fp)
	lw $t2, -6708($fp)
	bgt $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -6604($fp)
label542:
	li $t0, 0
	sw $t0, -6712($fp)
	lw $t0, 12($fp)
	sw $t0, -6716($fp)
	li $t0, 0
	lw $t1, -6716($fp)
	sub $t0, $t0, $t1
	sw $t0, -6720($fp)
	li $t0, 0
	lw $t1, -6720($fp)
	sub $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t1, -6724($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -6712($fp)
label552:
	li $t0, 0
	lw $t1, -6712($fp)
	sub $t0, $t0, $t1
	sw $t0, -6728($fp)
	li $t0, 0
	sw $t0, -6732($fp)
	jal f7
	sw $v0, -6736($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -6736($fp)
	sub $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t1, -6740($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label555
label555:
	addi $t0, $fp, -124
	sw $t0, -6744($fp)
	li $t0, 0
	sw $t0, -6748($fp)
	li $t0, 23686
	sw $t0, -6752($fp)
	lw $t1, -6752($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label558:
	lw $t0, -596($fp)
	sw $t0, -6756($fp)
	lw $t1, -6756($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -6748($fp)
label557:
	li $t0, 4
	lw $t1, -6748($fp)
	mul $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	lw $t1, -6744($fp)
	add $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, 0($t0)
	sw $t1, -6768($fp)
	lw $t1, -6768($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -6732($fp)
label554:
label525:
	jal f7
	sw $v0, -6772($fp)
	addi $sp, $sp, 4
	lw $t0, -5124($fp)
	sw $t0, -6776($fp)
	li $t0, 31782
	sw $t0, -6828($fp)
	addi $t0, $fp, -6800
	sw $t0, -6832($fp)
	li $t0, 0
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6832($fp)
	lw $t1, -6840($fp)
	add $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6828($fp)
	lw $t1, -6844($fp)
	sw $t0, 0($t1)
	lw $t0, -6844($fp)
	lw $t1, 0($t0)
	sw $t1, -6848($fp)
	li $t0, 14420
	sw $t0, -6852($fp)
	addi $t0, $fp, -6800
	sw $t0, -6856($fp)
	li $t0, 1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t0, -6856($fp)
	lw $t1, -6864($fp)
	add $t0, $t0, $t1
	sw $t0, -6868($fp)
	lw $t0, -6852($fp)
	lw $t1, -6868($fp)
	sw $t0, 0($t1)
	lw $t0, -6868($fp)
	lw $t1, 0($t0)
	sw $t1, -6872($fp)
	li $t0, 37567
	sw $t0, -6876($fp)
	addi $t0, $fp, -6800
	sw $t0, -6880($fp)
	li $t0, 2
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t0, -6880($fp)
	lw $t1, -6888($fp)
	add $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6876($fp)
	lw $t1, -6892($fp)
	sw $t0, 0($t1)
	lw $t0, -6892($fp)
	lw $t1, 0($t0)
	sw $t1, -6896($fp)
	li $t0, 10938
	sw $t0, -6900($fp)
	addi $t0, $fp, -6800
	sw $t0, -6904($fp)
	li $t0, 3
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t0, -6904($fp)
	lw $t1, -6912($fp)
	add $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t0, -6900($fp)
	lw $t1, -6916($fp)
	sw $t0, 0($t1)
	lw $t0, -6916($fp)
	lw $t1, 0($t0)
	sw $t1, -6920($fp)
	li $t0, 41884
	sw $t0, -6924($fp)
	addi $t0, $fp, -6800
	sw $t0, -6928($fp)
	li $t0, 4
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6928($fp)
	lw $t1, -6936($fp)
	add $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -6924($fp)
	lw $t1, -6940($fp)
	sw $t0, 0($t1)
	lw $t0, -6940($fp)
	lw $t1, 0($t0)
	sw $t1, -6944($fp)
	li $t0, 55780
	sw $t0, -6948($fp)
	addi $t0, $fp, -6800
	sw $t0, -6952($fp)
	li $t0, 5
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6952($fp)
	lw $t1, -6960($fp)
	add $t0, $t0, $t1
	sw $t0, -6964($fp)
	lw $t0, -6948($fp)
	lw $t1, -6964($fp)
	sw $t0, 0($t1)
	lw $t0, -6964($fp)
	lw $t1, 0($t0)
	sw $t1, -6968($fp)
	li $t0, 65401
	sw $t0, -6972($fp)
	addi $t0, $fp, -6824
	sw $t0, -6976($fp)
	li $t0, 0
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6976($fp)
	lw $t1, -6984($fp)
	add $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6972($fp)
	lw $t1, -6988($fp)
	sw $t0, 0($t1)
	lw $t0, -6988($fp)
	lw $t1, 0($t0)
	sw $t1, -6992($fp)
	li $t0, 7630
	sw $t0, -6996($fp)
	addi $t0, $fp, -6824
	sw $t0, -7000($fp)
	li $t0, 1
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -7000($fp)
	lw $t1, -7008($fp)
	add $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $t0, -6996($fp)
	lw $t1, -7012($fp)
	sw $t0, 0($t1)
	lw $t0, -7012($fp)
	lw $t1, 0($t0)
	sw $t1, -7016($fp)
	li $t0, 29072
	sw $t0, -7020($fp)
	addi $t0, $fp, -6824
	sw $t0, -7024($fp)
	li $t0, 2
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7032($fp)
	lw $t0, -7024($fp)
	lw $t1, -7032($fp)
	add $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7020($fp)
	lw $t1, -7036($fp)
	sw $t0, 0($t1)
	lw $t0, -7036($fp)
	lw $t1, 0($t0)
	sw $t1, -7040($fp)
	li $t0, 41107
	sw $t0, -7044($fp)
	addi $t0, $fp, -6824
	sw $t0, -7048($fp)
	li $t0, 3
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -7048($fp)
	lw $t1, -7056($fp)
	add $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7044($fp)
	lw $t1, -7060($fp)
	sw $t0, 0($t1)
	lw $t0, -7060($fp)
	lw $t1, 0($t0)
	sw $t1, -7064($fp)
	li $t0, 428
	sw $t0, -7068($fp)
	addi $t0, $fp, -6824
	sw $t0, -7072($fp)
	li $t0, 4
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -7072($fp)
	lw $t1, -7080($fp)
	add $t0, $t0, $t1
	sw $t0, -7084($fp)
	lw $t0, -7068($fp)
	lw $t1, -7084($fp)
	sw $t0, 0($t1)
	lw $t0, -7084($fp)
	lw $t1, 0($t0)
	sw $t1, -7088($fp)
	li $t0, 53013
	sw $t0, -7092($fp)
	addi $t0, $fp, -6824
	sw $t0, -7096($fp)
	li $t0, 5
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7096($fp)
	lw $t1, -7104($fp)
	add $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -7092($fp)
	lw $t1, -7108($fp)
	sw $t0, 0($t1)
	lw $t0, -7108($fp)
	lw $t1, 0($t0)
	sw $t1, -7112($fp)
label559:
	lw $t0, -1472($fp)
	sw $t0, -7116($fp)
	addi $t0, $fp, -6800
	sw $t0, -7120($fp)
	li $t0, 4
	sw $t0, -7124($fp)
	li $t0, 4
	lw $t1, -7124($fp)
	mul $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	lw $t1, -7120($fp)
	add $t0, $t0, $t1
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	lw $t1, 0($t0)
	sw $t1, -7136($fp)
	li $t0, 21727
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -7144($fp)
	lw $t0, -608($fp)
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -7152($fp)
	li $t0, 986
	sw $t0, -7156($fp)
	lw $t0, -1496($fp)
	sw $t0, -7160($fp)
	lw $t0, -7156($fp)
	lw $t1, -7160($fp)
	mul $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -1520($fp)
	sw $t0, -7168($fp)
	lw $t0, -7164($fp)
	lw $t1, -7168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7172($fp)
	li $t0, 45604
	sw $t0, -7176($fp)
	li $t0, 30757
	sw $t0, -7180($fp)
	lw $t0, -7176($fp)
	lw $t1, -7180($fp)
	add $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t0, -236($fp)
	sw $t0, -7188($fp)
	lw $t0, -7184($fp)
	lw $t1, -7188($fp)
	add $t0, $t0, $t1
	sw $t0, -7192($fp)
	addi $sp, $sp, -4
	lw $t0, -7144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7192($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7196($fp)
	addi $sp, $sp, 20
	jal f7
	sw $v0, -7200($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -7204($fp)
	li $t0, 30564
	sw $t0, -7208($fp)
	lw $t0, -1400($fp)
	sw $t0, -7212($fp)
	lw $t1, -7208($fp)
	lw $t2, -7212($fp)
	bgt $t1, $t2, label562
	j label564
label564:
	li $t0, 58382
	sw $t0, -7216($fp)
	lw $t1, -7216($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -7204($fp)
label563:
	lw $t0, -5160($fp)
	sw $t0, -7220($fp)
	li $t0, 15072
	sw $t0, -7224($fp)
	lw $t0, -7220($fp)
	lw $t1, -7224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7228($fp)
	lw $t0, -1376($fp)
	sw $t0, -7232($fp)
	lw $t0, -7228($fp)
	lw $t1, -7232($fp)
	sub $t0, $t0, $t1
	sw $t0, -7236($fp)
	addi $sp, $sp, -4
	lw $t0, -7196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7236($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7240($fp)
	addi $sp, $sp, 20
	lw $t0, -7136($fp)
	lw $t1, -7240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7244($fp)
	lw $t1, -7116($fp)
	lw $t2, -7244($fp)
	ble $t1, $t2, label560
	j label561
label560:
label565:
	addi $t0, $fp, -6824
	sw $t0, -7248($fp)
	li $t0, 0
	sw $t0, -7252($fp)
	li $t0, 0
	sw $t0, -7256($fp)
	lw $t0, -572($fp)
	sw $t0, -7260($fp)
	lw $t1, -7260($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label570:
	li $t0, 1
	sw $t0, -7256($fp)
label571:
	li $t0, 55086
	sw $t0, -7264($fp)
	lw $t1, -7256($fp)
	lw $t2, -7264($fp)
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -7252($fp)
label569:
	li $t0, 4
	lw $t1, -7252($fp)
	mul $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	lw $t1, -7248($fp)
	add $t0, $t0, $t1
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	lw $t1, 0($t0)
	sw $t1, -7276($fp)
	lw $t1, -7276($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label566:
	li $t0, 41957
	sw $t0, -7288($fp)
	addi $t0, $fp, -7284
	sw $t0, -7292($fp)
	li $t0, 0
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t0, -7292($fp)
	lw $t1, -7300($fp)
	add $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t0, -7288($fp)
	lw $t1, -7304($fp)
	sw $t0, 0($t1)
	lw $t0, -7304($fp)
	lw $t1, 0($t0)
	sw $t1, -7308($fp)
	li $t0, 59961
	sw $t0, -7312($fp)
	addi $t0, $fp, -7284
	sw $t0, -7316($fp)
	li $t0, 1
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7324($fp)
	lw $t0, -7316($fp)
	lw $t1, -7324($fp)
	add $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7312($fp)
	lw $t1, -7328($fp)
	sw $t0, 0($t1)
	lw $t0, -7328($fp)
	lw $t1, 0($t0)
	sw $t1, -7332($fp)
	li $t0, 0
	sw $t0, -7336($fp)
	li $t0, 0
	sw $t0, -7340($fp)
	li $t0, 55700
	sw $t0, -7344($fp)
	li $t0, 0
	lw $t1, -7344($fp)
	sub $t0, $t0, $t1
	sw $t0, -7348($fp)
	li $t0, 4451
	sw $t0, -7352($fp)
	lw $t1, -7348($fp)
	lw $t2, -7352($fp)
	bge $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -7340($fp)
label575:
	addi $t0, $fp, -228
	sw $t0, -7356($fp)
	li $t0, 7
	sw $t0, -7360($fp)
	li $t0, 4
	lw $t1, -7360($fp)
	mul $t0, $t0, $t1
	sw $t0, -7364($fp)
	lw $t0, -7364($fp)
	lw $t1, -7356($fp)
	add $t0, $t0, $t1
	sw $t0, -7368($fp)
	lw $t0, -7368($fp)
	lw $t1, 0($t0)
	sw $t1, -7372($fp)
	li $t0, 0
	sw $t0, -7376($fp)
	li $t0, 32014
	sw $t0, -7380($fp)
	li $t0, 0
	lw $t1, -7380($fp)
	sub $t0, $t0, $t1
	sw $t0, -7384($fp)
	lw $t0, -1376($fp)
	sw $t0, -7388($fp)
	lw $t0, -7384($fp)
	lw $t1, -7388($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	li $t0, 0
	sw $t0, -7396($fp)
	jal f7
	sw $v0, -7400($fp)
	addi $sp, $sp, 4
	lw $t1, -7400($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label578:
	li $t0, 1
	sw $t0, -7396($fp)
label579:
	li $t0, 46971
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -7408($fp)
	jal f7
	sw $v0, -7412($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -7392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7412($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7416($fp)
	addi $sp, $sp, 20
	lw $t1, -7416($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label576:
	li $t0, 1
	sw $t0, -7376($fp)
label577:
	li $t0, 0
	sw $t0, -7420($fp)
	lw $t0, -5148($fp)
	sw $t0, -7424($fp)
	li $t0, 44945
	sw $t0, -7428($fp)
	lw $t1, -7424($fp)
	lw $t2, -7428($fp)
	bge $t1, $t2, label580
	j label582
label582:
	li $t0, 39647
	sw $t0, -7432($fp)
	lw $t1, -7432($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -7420($fp)
label581:
	addi $sp, $sp, -4
	lw $t0, -7340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7420($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7436($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -7284
	sw $t0, -7440($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -7460($fp)
	li $t0, 15389
	sw $t0, -7464($fp)
	lw $t1, -7464($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label583:
	li $t0, 1
	sw $t0, -7460($fp)
label584:
	lw $t0, -7456($fp)
	lw $t1, -7460($fp)
	mul $t0, $t0, $t1
	sw $t0, -7468($fp)
	lw $t1, -7436($fp)
	lw $t2, -7468($fp)
	beq $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -7336($fp)
label573:
	li $t0, 0
	sw $t0, -7472($fp)
	addi $t0, $fp, -148
	sw $t0, -7476($fp)
	li $t0, 0
	sw $t0, -7480($fp)
	lw $t0, -512($fp)
	sw $t0, -7484($fp)
	lw $t1, -7484($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label589
label589:
	li $t0, 45168
	sw $t0, -7488($fp)
	lw $t1, -7488($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -7480($fp)
label588:
	li $t0, 4
	lw $t1, -7480($fp)
	mul $t0, $t0, $t1
	sw $t0, -7492($fp)
	lw $t0, -7492($fp)
	lw $t1, -7476($fp)
	add $t0, $t0, $t1
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	lw $t1, 0($t0)
	sw $t1, -7500($fp)
	addi $t0, $fp, -228
	sw $t0, -7504($fp)
	li $t0, 0
	sw $t0, -7508($fp)
	lw $t0, -1508($fp)
	sw $t0, -7512($fp)
	lw $t1, -7512($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label592
label592:
	lw $t0, -608($fp)
	sw $t0, -7516($fp)
	lw $t1, -7516($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -7508($fp)
label591:
	li $t0, 4
	lw $t1, -7508($fp)
	mul $t0, $t0, $t1
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	lw $t1, -7504($fp)
	add $t0, $t0, $t1
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	lw $t1, 0($t0)
	sw $t1, -7528($fp)
	lw $t1, -7500($fp)
	lw $t2, -7528($fp)
	bne $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -7472($fp)
label586:
	j label565
label567:
	j label559
label561:
	j label437
label436:
label593:
	jal f7
	sw $v0, -7532($fp)
	addi $sp, $sp, 4
	lw $t0, -500($fp)
	sw $t0, -7536($fp)
	li $t0, 0
	lw $t1, -7536($fp)
	sub $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t0, -7532($fp)
	lw $t1, -7540($fp)
	mul $t0, $t0, $t1
	sw $t0, -7544($fp)
	lw $t1, -7544($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 0
	sw $t0, -7548($fp)
	li $t0, 0
	sw $t0, -7552($fp)
	li $t0, 0
	sw $t0, -7556($fp)
	lw $t0, -536($fp)
	sw $t0, -7560($fp)
	li $t0, 0
	lw $t1, -7560($fp)
	sub $t0, $t0, $t1
	sw $t0, -7564($fp)
	li $t0, 17976
	sw $t0, -7568($fp)
	lw $t1, -7564($fp)
	lw $t2, -7568($fp)
	ble $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -7556($fp)
label604:
	li $t0, 15254
	sw $t0, -7572($fp)
	lw $t0, -632($fp)
	sw $t0, -7576($fp)
	lw $t0, -7572($fp)
	lw $t1, -7576($fp)
	mul $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t1, -7556($fp)
	lw $t2, -7580($fp)
	bge $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -7552($fp)
label602:
	li $t0, 0
	sw $t0, -7584($fp)
	li $t0, 52798
	sw $t0, -7588($fp)
	lw $t1, -7588($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label605
label605:
	li $t0, 1
	sw $t0, -7584($fp)
label606:
	li $t0, 47048
	sw $t0, -7592($fp)
	lw $t0, -7584($fp)
	lw $t1, -7592($fp)
	sub $t0, $t0, $t1
	sw $t0, -7596($fp)
	lw $t1, -7552($fp)
	lw $t2, -7596($fp)
	bgt $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -7548($fp)
label600:
	li $t0, 56361
	sw $t0, -7600($fp)
	lw $t1, -7548($fp)
	lw $t2, -7600($fp)
	bge $t1, $t2, label596
	j label597
label596:
	li $t0, 53226
	sw $t0, -7604($fp)
	j label598
label597:
	addi $t0, $fp, -156
	sw $t0, -7608($fp)
	li $t0, 0
	sw $t0, -7612($fp)
	addi $t0, $fp, -196
	sw $t0, -7616($fp)
	li $t0, 1
	sw $t0, -7620($fp)
	li $t0, 4
	lw $t1, -7620($fp)
	mul $t0, $t0, $t1
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	lw $t1, -7616($fp)
	add $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	lw $t1, 0($t0)
	sw $t1, -7632($fp)
	li $t0, 56522
	sw $t0, -7636($fp)
	lw $t1, -7632($fp)
	lw $t2, -7636($fp)
	bgt $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -7612($fp)
label608:
	li $t0, 4
	lw $t1, -7612($fp)
	mul $t0, $t0, $t1
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	lw $t1, -7608($fp)
	add $t0, $t0, $t1
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	lw $t1, 0($t0)
	sw $t1, -7648($fp)
label598:
	j label593
label595:
label437:
label609:
	li $t0, 0
	sw $t0, -7652($fp)
	lw $t0, -620($fp)
	sw $t0, -7656($fp)
	lw $t0, -1364($fp)
	sw $t0, -7660($fp)
	lw $t0, -7656($fp)
	lw $t1, -7660($fp)
	add $t0, $t0, $t1
	sw $t0, -7664($fp)
	lw $t0, -1736($fp)
	sw $t0, -7668($fp)
	lw $t1, -7664($fp)
	lw $t2, -7668($fp)
	bgt $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -7652($fp)
label613:
	li $t0, 0
	sw $t0, -7672($fp)
	jal f7
	sw $v0, -7676($fp)
	addi $sp, $sp, 4
	lw $t1, -7676($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	li $t0, 1
	sw $t0, -7672($fp)
label615:
	li $t0, 0
	sw $t0, -7680($fp)
	li $t0, 49368
	sw $t0, -7684($fp)
	li $t0, 29666
	sw $t0, -7688($fp)
	lw $t0, -7684($fp)
	lw $t1, -7688($fp)
	add $t0, $t0, $t1
	sw $t0, -7692($fp)
	lw $t1, -7692($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label618:
	lw $t0, -560($fp)
	sw $t0, -7696($fp)
	lw $t1, -7696($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -7680($fp)
label617:
	li $t0, 49598
	sw $t0, -7700($fp)
	lw $t0, 8($fp)
	sw $t0, -7704($fp)
	lw $t0, -7700($fp)
	lw $t1, -7704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7708($fp)
	li $t0, 65341
	sw $t0, -7712($fp)
	lw $t0, -7708($fp)
	lw $t1, -7712($fp)
	mul $t0, $t0, $t1
	sw $t0, -7716($fp)
	addi $sp, $sp, -4
	lw $t0, -7652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7716($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7720($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -7720($fp)
	sub $t0, $t0, $t1
	sw $t0, -7724($fp)
	li $t0, 30563
	sw $t0, -7728($fp)
	li $t0, 50355
	sw $t0, -7732($fp)
	lw $t0, -7728($fp)
	lw $t1, -7732($fp)
	mul $t0, $t0, $t1
	sw $t0, -7736($fp)
	li $t0, 1
	sw $t0, -7740($fp)
	lw $t0, -7736($fp)
	lw $t1, -7740($fp)
	mul $t0, $t0, $t1
	sw $t0, -7744($fp)
	li $t0, 0
	lw $t1, -7744($fp)
	sub $t0, $t0, $t1
	sw $t0, -7748($fp)
	lw $t1, -7724($fp)
	lw $t2, -7748($fp)
	bge $t1, $t2, label610
	j label611
label610:
label619:
	li $t0, 20113
	sw $t0, -7752($fp)
	lw $t1, -7752($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label622:
	li $t0, 0
	sw $t0, -7756($fp)
	lw $t0, -596($fp)
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -7764($fp)
	li $t0, 0
	sw $t0, -7768($fp)
	lw $t0, -1460($fp)
	sw $t0, -7772($fp)
	li $t0, 21701
	sw $t0, -7776($fp)
	lw $t0, -7772($fp)
	lw $t1, -7776($fp)
	add $t0, $t0, $t1
	sw $t0, -7780($fp)
	li $t0, 43544
	sw $t0, -7784($fp)
	lw $t1, -7780($fp)
	lw $t2, -7784($fp)
	ble $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -7768($fp)
label627:
	li $t0, 16116
	sw $t0, -7788($fp)
	li $t0, 0
	lw $t1, -7788($fp)
	sub $t0, $t0, $t1
	sw $t0, -7792($fp)
	li $t0, 0
	lw $t1, -7792($fp)
	sub $t0, $t0, $t1
	sw $t0, -7796($fp)
	li $t0, 0
	sw $t0, -7800($fp)
	li $t0, 0
	sw $t0, -7804($fp)
	lw $t0, -1724($fp)
	sw $t0, -7808($fp)
	lw $t0, -1400($fp)
	sw $t0, -7812($fp)
	lw $t0, -7808($fp)
	lw $t1, -7812($fp)
	sub $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t1, -7816($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label633
label633:
	lw $t0, -248($fp)
	sw $t0, -7820($fp)
	lw $t1, -7820($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -7804($fp)
label632:
	addi $t0, $fp, -180
	sw $t0, -7824($fp)
	lw $t0, 8($fp)
	sw $t0, -7828($fp)
	li $t0, 4
	lw $t1, -7828($fp)
	mul $t0, $t0, $t1
	sw $t0, -7832($fp)
	lw $t0, -7832($fp)
	lw $t1, -7824($fp)
	add $t0, $t0, $t1
	sw $t0, -7836($fp)
	lw $t0, -7836($fp)
	lw $t1, 0($t0)
	sw $t1, -7840($fp)
	li $t0, 0
	lw $t1, -7840($fp)
	sub $t0, $t0, $t1
	sw $t0, -7844($fp)
	li $t0, 31537
	sw $t0, -7848($fp)
	li $t0, 0
	sw $t0, -7852($fp)
	li $t0, 27253
	sw $t0, -7856($fp)
	li $t0, 0
	lw $t1, -7856($fp)
	sub $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t1, -7860($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label635
label636:
	lw $t0, -1400($fp)
	sw $t0, -7864($fp)
	lw $t1, -7864($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label635
label634:
	li $t0, 1
	sw $t0, -7852($fp)
label635:
	addi $sp, $sp, -4
	lw $t0, -7804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7852($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7868($fp)
	addi $sp, $sp, 20
	lw $t1, -7868($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label629
label630:
	li $t0, 39092
	sw $t0, -7872($fp)
	lw $t1, -7872($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -7800($fp)
label629:
	addi $sp, $sp, -4
	lw $t0, -7764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7800($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7876($fp)
	addi $sp, $sp, 20
	lw $t1, -7876($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label625:
	li $t0, 19400
	sw $t0, -7880($fp)
	lw $t1, -7880($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -7756($fp)
label624:
	li $t0, 887
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -7888($fp)
	li $t0, 45818
	sw $t0, -7892($fp)
	li $t0, 65058
	sw $t0, -7896($fp)
	lw $t0, -7892($fp)
	lw $t1, -7896($fp)
	sub $t0, $t0, $t1
	sw $t0, -7900($fp)
	li $t0, 26776
	sw $t0, -7904($fp)
	li $t0, 0
	lw $t1, -7904($fp)
	sub $t0, $t0, $t1
	sw $t0, -7908($fp)
	addi $sp, $sp, -4
	lw $t0, -7756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7908($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7912($fp)
	addi $sp, $sp, 20
	li $t0, 49433
	sw $t0, -7916($fp)
	lw $t0, -7912($fp)
	lw $t1, -7916($fp)
	mul $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -860($fp)
	sw $t0, -7924($fp)
	li $t0, 0
	lw $t1, -7924($fp)
	sub $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t0, -7920($fp)
	lw $t1, -7928($fp)
	mul $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t1, -7932($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label621
label620:
	li $t0, 0
	sw $t0, -7936($fp)
	lw $t0, -1472($fp)
	sw $t0, -7940($fp)
	lw $t1, -7940($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label637:
	li $t0, 1
	sw $t0, -7936($fp)
label638:
	li $t0, 0
	lw $t1, -7936($fp)
	sub $t0, $t0, $t1
	sw $t0, -7944($fp)
	j label619
label621:
	j label609
label611:
	lw $t0, -236($fp)
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7956($fp)
	li $t0, 0
	sw $t0, -7960($fp)
	li $t0, 4
	lw $t1, -7960($fp)
	mul $t0, $t0, $t1
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	lw $t1, -7956($fp)
	add $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	lw $t1, 0($t0)
	sw $t1, -7972($fp)
	lw $t0, -7972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7976($fp)
	li $t0, 1
	sw $t0, -7980($fp)
	li $t0, 4
	lw $t1, -7980($fp)
	mul $t0, $t0, $t1
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	lw $t1, -7976($fp)
	add $t0, $t0, $t1
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	lw $t1, 0($t0)
	sw $t1, -7992($fp)
	lw $t0, -7992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7996($fp)
	li $t0, 2
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
	lw $t0, -8012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8016($fp)
	li $t0, 3
	sw $t0, -8020($fp)
	li $t0, 4
	lw $t1, -8020($fp)
	mul $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	lw $t1, -8016($fp)
	add $t0, $t0, $t1
	sw $t0, -8028($fp)
	lw $t0, -8028($fp)
	lw $t1, 0($t0)
	sw $t1, -8032($fp)
	lw $t0, -8032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8036($fp)
	li $t0, 4
	sw $t0, -8040($fp)
	li $t0, 4
	lw $t1, -8040($fp)
	mul $t0, $t0, $t1
	sw $t0, -8044($fp)
	lw $t0, -8044($fp)
	lw $t1, -8036($fp)
	add $t0, $t0, $t1
	sw $t0, -8048($fp)
	lw $t0, -8048($fp)
	lw $t1, 0($t0)
	sw $t1, -8052($fp)
	lw $t0, -8052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8056($fp)
	li $t0, 5
	sw $t0, -8060($fp)
	li $t0, 4
	lw $t1, -8060($fp)
	mul $t0, $t0, $t1
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	lw $t1, -8056($fp)
	add $t0, $t0, $t1
	sw $t0, -8068($fp)
	lw $t0, -8068($fp)
	lw $t1, 0($t0)
	sw $t1, -8072($fp)
	lw $t0, -8072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8076($fp)
	li $t0, 6
	sw $t0, -8080($fp)
	li $t0, 4
	lw $t1, -8080($fp)
	mul $t0, $t0, $t1
	sw $t0, -8084($fp)
	lw $t0, -8084($fp)
	lw $t1, -8076($fp)
	add $t0, $t0, $t1
	sw $t0, -8088($fp)
	lw $t0, -8088($fp)
	lw $t1, 0($t0)
	sw $t1, -8092($fp)
	lw $t0, -8092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8096($fp)
	li $t0, 7
	sw $t0, -8100($fp)
	li $t0, 4
	lw $t1, -8100($fp)
	mul $t0, $t0, $t1
	sw $t0, -8104($fp)
	lw $t0, -8104($fp)
	lw $t1, -8096($fp)
	add $t0, $t0, $t1
	sw $t0, -8108($fp)
	lw $t0, -8108($fp)
	lw $t1, 0($t0)
	sw $t1, -8112($fp)
	lw $t0, -8112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8116($fp)
	li $t0, 8
	sw $t0, -8120($fp)
	li $t0, 4
	lw $t1, -8120($fp)
	mul $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	lw $t1, -8116($fp)
	add $t0, $t0, $t1
	sw $t0, -8128($fp)
	lw $t0, -8128($fp)
	lw $t1, 0($t0)
	sw $t1, -8132($fp)
	lw $t0, -8132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -8152($fp)
	lw $t0, -8152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -8172($fp)
	lw $t0, -8172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -8184($fp)
	lw $t0, -8184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -8188($fp)
	lw $t0, -8188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -8192($fp)
	lw $t0, -8192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8196($fp)
	li $t0, 0
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
	lw $t0, -8212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8216($fp)
	li $t0, 1
	sw $t0, -8220($fp)
	li $t0, 4
	lw $t1, -8220($fp)
	mul $t0, $t0, $t1
	sw $t0, -8224($fp)
	lw $t0, -8224($fp)
	lw $t1, -8216($fp)
	add $t0, $t0, $t1
	sw $t0, -8228($fp)
	lw $t0, -8228($fp)
	lw $t1, 0($t0)
	sw $t1, -8232($fp)
	lw $t0, -8232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8236($fp)
	li $t0, 2
	sw $t0, -8240($fp)
	li $t0, 4
	lw $t1, -8240($fp)
	mul $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t0, -8244($fp)
	lw $t1, -8236($fp)
	add $t0, $t0, $t1
	sw $t0, -8248($fp)
	lw $t0, -8248($fp)
	lw $t1, 0($t0)
	sw $t1, -8252($fp)
	lw $t0, -8252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8256($fp)
	li $t0, 3
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
	lw $t0, -8272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8276($fp)
	li $t0, 4
	sw $t0, -8280($fp)
	li $t0, 4
	lw $t1, -8280($fp)
	mul $t0, $t0, $t1
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	lw $t1, -8276($fp)
	add $t0, $t0, $t1
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	lw $t1, 0($t0)
	sw $t1, -8292($fp)
	lw $t0, -8292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8296($fp)
	li $t0, 5
	sw $t0, -8300($fp)
	li $t0, 4
	lw $t1, -8300($fp)
	mul $t0, $t0, $t1
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	lw $t1, -8296($fp)
	add $t0, $t0, $t1
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	lw $t1, 0($t0)
	sw $t1, -8312($fp)
	lw $t0, -8312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8316($fp)
	li $t0, 6
	sw $t0, -8320($fp)
	li $t0, 4
	lw $t1, -8320($fp)
	mul $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	lw $t1, -8316($fp)
	add $t0, $t0, $t1
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	lw $t1, 0($t0)
	sw $t1, -8332($fp)
	lw $t0, -8332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8336($fp)
	li $t0, 7
	sw $t0, -8340($fp)
	li $t0, 4
	lw $t1, -8340($fp)
	mul $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	lw $t1, -8336($fp)
	add $t0, $t0, $t1
	sw $t0, -8348($fp)
	lw $t0, -8348($fp)
	lw $t1, 0($t0)
	sw $t1, -8352($fp)
	lw $t0, -8352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -8356($fp)
	lw $t0, -8356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8368($fp)
	li $t0, 0
	sw $t0, -8372($fp)
	li $t0, 4
	lw $t1, -8372($fp)
	mul $t0, $t0, $t1
	sw $t0, -8376($fp)
	lw $t0, -8376($fp)
	lw $t1, -8368($fp)
	add $t0, $t0, $t1
	sw $t0, -8380($fp)
	lw $t0, -8380($fp)
	lw $t1, 0($t0)
	sw $t1, -8384($fp)
	lw $t0, -8384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8388($fp)
	li $t0, 1
	sw $t0, -8392($fp)
	li $t0, 4
	lw $t1, -8392($fp)
	mul $t0, $t0, $t1
	sw $t0, -8396($fp)
	lw $t0, -8396($fp)
	lw $t1, -8388($fp)
	add $t0, $t0, $t1
	sw $t0, -8400($fp)
	lw $t0, -8400($fp)
	lw $t1, 0($t0)
	sw $t1, -8404($fp)
	lw $t0, -8404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8408($fp)
	li $t0, 2
	sw $t0, -8412($fp)
	li $t0, 4
	lw $t1, -8412($fp)
	mul $t0, $t0, $t1
	sw $t0, -8416($fp)
	lw $t0, -8416($fp)
	lw $t1, -8408($fp)
	add $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	lw $t1, 0($t0)
	sw $t1, -8424($fp)
	lw $t0, -8424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8428($fp)
	li $t0, 3
	sw $t0, -8432($fp)
	li $t0, 4
	lw $t1, -8432($fp)
	mul $t0, $t0, $t1
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	lw $t1, -8428($fp)
	add $t0, $t0, $t1
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	lw $t1, 0($t0)
	sw $t1, -8444($fp)
	lw $t0, -8444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8448($fp)
	li $t0, 0
	sw $t0, -8452($fp)
	li $t0, 4
	lw $t1, -8452($fp)
	mul $t0, $t0, $t1
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	lw $t1, -8448($fp)
	add $t0, $t0, $t1
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	lw $t1, 0($t0)
	sw $t1, -8464($fp)
	lw $t0, -8464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8468($fp)
	li $t0, 1
	sw $t0, -8472($fp)
	li $t0, 4
	lw $t1, -8472($fp)
	mul $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	lw $t1, -8468($fp)
	add $t0, $t0, $t1
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	lw $t1, 0($t0)
	sw $t1, -8484($fp)
	lw $t0, -8484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8488($fp)
	li $t0, 2
	sw $t0, -8492($fp)
	li $t0, 4
	lw $t1, -8492($fp)
	mul $t0, $t0, $t1
	sw $t0, -8496($fp)
	lw $t0, -8496($fp)
	lw $t1, -8488($fp)
	add $t0, $t0, $t1
	sw $t0, -8500($fp)
	lw $t0, -8500($fp)
	lw $t1, 0($t0)
	sw $t1, -8504($fp)
	lw $t0, -8504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8508($fp)
	li $t0, 3
	sw $t0, -8512($fp)
	li $t0, 4
	lw $t1, -8512($fp)
	mul $t0, $t0, $t1
	sw $t0, -8516($fp)
	lw $t0, -8516($fp)
	lw $t1, -8508($fp)
	add $t0, $t0, $t1
	sw $t0, -8520($fp)
	lw $t0, -8520($fp)
	lw $t1, 0($t0)
	sw $t1, -8524($fp)
	lw $t0, -8524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8528($fp)
	li $t0, 4
	sw $t0, -8532($fp)
	li $t0, 4
	lw $t1, -8532($fp)
	mul $t0, $t0, $t1
	sw $t0, -8536($fp)
	lw $t0, -8536($fp)
	lw $t1, -8528($fp)
	add $t0, $t0, $t1
	sw $t0, -8540($fp)
	lw $t0, -8540($fp)
	lw $t1, 0($t0)
	sw $t1, -8544($fp)
	lw $t0, -8544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8548($fp)
	li $t0, 5
	sw $t0, -8552($fp)
	li $t0, 4
	lw $t1, -8552($fp)
	mul $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	lw $t1, -8548($fp)
	add $t0, $t0, $t1
	sw $t0, -8560($fp)
	lw $t0, -8560($fp)
	lw $t1, 0($t0)
	sw $t1, -8564($fp)
	lw $t0, -8564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8568($fp)
	li $t0, 6
	sw $t0, -8572($fp)
	li $t0, 4
	lw $t1, -8572($fp)
	mul $t0, $t0, $t1
	sw $t0, -8576($fp)
	lw $t0, -8576($fp)
	lw $t1, -8568($fp)
	add $t0, $t0, $t1
	sw $t0, -8580($fp)
	lw $t0, -8580($fp)
	lw $t1, 0($t0)
	sw $t1, -8584($fp)
	lw $t0, -8584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8588($fp)
	li $t0, 7
	sw $t0, -8592($fp)
	li $t0, 4
	lw $t1, -8592($fp)
	mul $t0, $t0, $t1
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	lw $t1, -8588($fp)
	add $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8600($fp)
	lw $t1, 0($t0)
	sw $t1, -8604($fp)
	lw $t0, -8604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8608($fp)
	li $t0, 8
	sw $t0, -8612($fp)
	li $t0, 4
	lw $t1, -8612($fp)
	mul $t0, $t0, $t1
	sw $t0, -8616($fp)
	lw $t0, -8616($fp)
	lw $t1, -8608($fp)
	add $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	lw $t1, 0($t0)
	sw $t1, -8624($fp)
	lw $t0, -8624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8628($fp)
	li $t0, 0
	sw $t0, -8632($fp)
	li $t0, 4
	lw $t1, -8632($fp)
	mul $t0, $t0, $t1
	sw $t0, -8636($fp)
	lw $t0, -8636($fp)
	lw $t1, -8628($fp)
	add $t0, $t0, $t1
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	lw $t1, 0($t0)
	sw $t1, -8644($fp)
	lw $t0, -8644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8648($fp)
	li $t0, 1
	sw $t0, -8652($fp)
	li $t0, 4
	lw $t1, -8652($fp)
	mul $t0, $t0, $t1
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	lw $t1, -8648($fp)
	add $t0, $t0, $t1
	sw $t0, -8660($fp)
	lw $t0, -8660($fp)
	lw $t1, 0($t0)
	sw $t1, -8664($fp)
	lw $t0, -8664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8668($fp)
	li $t0, 2
	sw $t0, -8672($fp)
	li $t0, 4
	lw $t1, -8672($fp)
	mul $t0, $t0, $t1
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	lw $t1, -8668($fp)
	add $t0, $t0, $t1
	sw $t0, -8680($fp)
	lw $t0, -8680($fp)
	lw $t1, 0($t0)
	sw $t1, -8684($fp)
	lw $t0, -8684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8688($fp)
	li $t0, 3
	sw $t0, -8692($fp)
	li $t0, 4
	lw $t1, -8692($fp)
	mul $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8696($fp)
	lw $t1, -8688($fp)
	add $t0, $t0, $t1
	sw $t0, -8700($fp)
	lw $t0, -8700($fp)
	lw $t1, 0($t0)
	sw $t1, -8704($fp)
	lw $t0, -8704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8708($fp)
	li $t0, 4
	sw $t0, -8712($fp)
	li $t0, 4
	lw $t1, -8712($fp)
	mul $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, -8708($fp)
	add $t0, $t0, $t1
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	lw $t1, 0($t0)
	sw $t1, -8724($fp)
	lw $t0, -8724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8728($fp)
	li $t0, 5
	sw $t0, -8732($fp)
	li $t0, 4
	lw $t1, -8732($fp)
	mul $t0, $t0, $t1
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	lw $t1, -8728($fp)
	add $t0, $t0, $t1
	sw $t0, -8740($fp)
	lw $t0, -8740($fp)
	lw $t1, 0($t0)
	sw $t1, -8744($fp)
	lw $t0, -8744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1340($fp)
	sw $t0, -8748($fp)
	lw $t0, -8748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1352($fp)
	sw $t0, -8752($fp)
	lw $t0, -8752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1364($fp)
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1376($fp)
	sw $t0, -8760($fp)
	lw $t0, -8760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1388($fp)
	sw $t0, -8764($fp)
	lw $t0, -8764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1400($fp)
	sw $t0, -8768($fp)
	lw $t0, -8768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -8772($fp)
	li $t0, 0
	sw $t0, -8776($fp)
	li $t0, 4
	lw $t1, -8776($fp)
	mul $t0, $t0, $t1
	sw $t0, -8780($fp)
	lw $t0, -8780($fp)
	lw $t1, -8772($fp)
	add $t0, $t0, $t1
	sw $t0, -8784($fp)
	lw $t0, -8784($fp)
	lw $t1, 0($t0)
	sw $t1, -8788($fp)
	lw $t0, -8788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -8792($fp)
	li $t0, 1
	sw $t0, -8796($fp)
	li $t0, 4
	lw $t1, -8796($fp)
	mul $t0, $t0, $t1
	sw $t0, -8800($fp)
	lw $t0, -8800($fp)
	lw $t1, -8792($fp)
	add $t0, $t0, $t1
	sw $t0, -8804($fp)
	lw $t0, -8804($fp)
	lw $t1, 0($t0)
	sw $t1, -8808($fp)
	lw $t0, -8808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -8812($fp)
	lw $t0, -8812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -8824($fp)
	lw $t0, -8824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -8828($fp)
	lw $t0, -8828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1520($fp)
	sw $t0, -8832($fp)
	lw $t0, -8832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1532($fp)
	sw $t0, -8836($fp)
	lw $t0, -8836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8840($fp)
	li $t0, 0
	sw $t0, -8844($fp)
	li $t0, 4
	lw $t1, -8844($fp)
	mul $t0, $t0, $t1
	sw $t0, -8848($fp)
	lw $t0, -8848($fp)
	lw $t1, -8840($fp)
	add $t0, $t0, $t1
	sw $t0, -8852($fp)
	lw $t0, -8852($fp)
	lw $t1, 0($t0)
	sw $t1, -8856($fp)
	lw $t0, -8856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8860($fp)
	li $t0, 1
	sw $t0, -8864($fp)
	li $t0, 4
	lw $t1, -8864($fp)
	mul $t0, $t0, $t1
	sw $t0, -8868($fp)
	lw $t0, -8868($fp)
	lw $t1, -8860($fp)
	add $t0, $t0, $t1
	sw $t0, -8872($fp)
	lw $t0, -8872($fp)
	lw $t1, 0($t0)
	sw $t1, -8876($fp)
	lw $t0, -8876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8880($fp)
	li $t0, 2
	sw $t0, -8884($fp)
	li $t0, 4
	lw $t1, -8884($fp)
	mul $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t0, -8888($fp)
	lw $t1, -8880($fp)
	add $t0, $t0, $t1
	sw $t0, -8892($fp)
	lw $t0, -8892($fp)
	lw $t1, 0($t0)
	sw $t1, -8896($fp)
	lw $t0, -8896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8900($fp)
	li $t0, 3
	sw $t0, -8904($fp)
	li $t0, 4
	lw $t1, -8904($fp)
	mul $t0, $t0, $t1
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	lw $t1, -8900($fp)
	add $t0, $t0, $t1
	sw $t0, -8912($fp)
	lw $t0, -8912($fp)
	lw $t1, 0($t0)
	sw $t1, -8916($fp)
	lw $t0, -8916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8920($fp)
	li $t0, 4
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
	lw $t0, -8936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8940($fp)
	li $t0, 5
	sw $t0, -8944($fp)
	li $t0, 4
	lw $t1, -8944($fp)
	mul $t0, $t0, $t1
	sw $t0, -8948($fp)
	lw $t0, -8948($fp)
	lw $t1, -8940($fp)
	add $t0, $t0, $t1
	sw $t0, -8952($fp)
	lw $t0, -8952($fp)
	lw $t1, 0($t0)
	sw $t1, -8956($fp)
	lw $t0, -8956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -8960($fp)
	li $t0, 0
	sw $t0, -8964($fp)
	li $t0, 4
	lw $t1, -8964($fp)
	mul $t0, $t0, $t1
	sw $t0, -8968($fp)
	lw $t0, -8968($fp)
	lw $t1, -8960($fp)
	add $t0, $t0, $t1
	sw $t0, -8972($fp)
	lw $t0, -8972($fp)
	lw $t1, 0($t0)
	sw $t1, -8976($fp)
	lw $t0, -8976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1712($fp)
	sw $t0, -8980($fp)
	lw $t0, -8980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1724($fp)
	sw $t0, -8984($fp)
	lw $t0, -8984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1736($fp)
	sw $t0, -8988($fp)
	lw $t0, -8988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -8992($fp)
	li $t0, 0
	sw $t0, -8996($fp)
	li $t0, 4
	lw $t1, -8996($fp)
	mul $t0, $t0, $t1
	sw $t0, -9000($fp)
	lw $t0, -9000($fp)
	lw $t1, -8992($fp)
	add $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t0, -9004($fp)
	lw $t1, 0($t0)
	sw $t1, -9008($fp)
	lw $t0, -9008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -9012($fp)
	li $t0, 1
	sw $t0, -9016($fp)
	li $t0, 4
	lw $t1, -9016($fp)
	mul $t0, $t0, $t1
	sw $t0, -9020($fp)
	lw $t0, -9020($fp)
	lw $t1, -9012($fp)
	add $t0, $t0, $t1
	sw $t0, -9024($fp)
	lw $t0, -9024($fp)
	lw $t1, 0($t0)
	sw $t1, -9028($fp)
	lw $t0, -9028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -9032($fp)
	li $t0, 2
	sw $t0, -9036($fp)
	li $t0, 4
	lw $t1, -9036($fp)
	mul $t0, $t0, $t1
	sw $t0, -9040($fp)
	lw $t0, -9040($fp)
	lw $t1, -9032($fp)
	add $t0, $t0, $t1
	sw $t0, -9044($fp)
	lw $t0, -9044($fp)
	lw $t1, 0($t0)
	sw $t1, -9048($fp)
	lw $t0, -9048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -9052($fp)
	li $t0, 0
	sw $t0, -9056($fp)
	li $t0, 4
	lw $t1, -9056($fp)
	mul $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $t0, -9060($fp)
	lw $t1, -9052($fp)
	add $t0, $t0, $t1
	sw $t0, -9064($fp)
	lw $t0, -9064($fp)
	lw $t1, 0($t0)
	sw $t1, -9068($fp)
	lw $t0, -9068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -9072($fp)
	li $t0, 1
	sw $t0, -9076($fp)
	li $t0, 4
	lw $t1, -9076($fp)
	mul $t0, $t0, $t1
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	lw $t1, -9072($fp)
	add $t0, $t0, $t1
	sw $t0, -9084($fp)
	lw $t0, -9084($fp)
	lw $t1, 0($t0)
	sw $t1, -9088($fp)
	lw $t0, -9088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -9092($fp)
	li $t0, 2
	sw $t0, -9096($fp)
	li $t0, 4
	lw $t1, -9096($fp)
	mul $t0, $t0, $t1
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	lw $t1, -9092($fp)
	add $t0, $t0, $t1
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	lw $t1, 0($t0)
	sw $t1, -9108($fp)
	lw $t0, -9108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -9112($fp)
	li $t0, 3
	sw $t0, -9116($fp)
	li $t0, 4
	lw $t1, -9116($fp)
	mul $t0, $t0, $t1
	sw $t0, -9120($fp)
	lw $t0, -9120($fp)
	lw $t1, -9112($fp)
	add $t0, $t0, $t1
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	lw $t1, 0($t0)
	sw $t1, -9128($fp)
	lw $t0, -9128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -9132($fp)
	li $t0, 4
	sw $t0, -9136($fp)
	li $t0, 4
	lw $t1, -9136($fp)
	mul $t0, $t0, $t1
	sw $t0, -9140($fp)
	lw $t0, -9140($fp)
	lw $t1, -9132($fp)
	add $t0, $t0, $t1
	sw $t0, -9144($fp)
	lw $t0, -9144($fp)
	lw $t1, 0($t0)
	sw $t1, -9148($fp)
	lw $t0, -9148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -9152($fp)
	li $t0, 5
	sw $t0, -9156($fp)
	li $t0, 4
	lw $t1, -9156($fp)
	mul $t0, $t0, $t1
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	lw $t1, -9152($fp)
	add $t0, $t0, $t1
	sw $t0, -9164($fp)
	lw $t0, -9164($fp)
	lw $t1, 0($t0)
	sw $t1, -9168($fp)
	lw $t0, -9168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -9172($fp)
	li $t0, 6
	sw $t0, -9176($fp)
	li $t0, 4
	lw $t1, -9176($fp)
	mul $t0, $t0, $t1
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	lw $t1, -9172($fp)
	add $t0, $t0, $t1
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	lw $t1, 0($t0)
	sw $t1, -9188($fp)
	lw $t0, -9188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -9192($fp)
	li $t0, 7
	sw $t0, -9196($fp)
	li $t0, 4
	lw $t1, -9196($fp)
	mul $t0, $t0, $t1
	sw $t0, -9200($fp)
	lw $t0, -9200($fp)
	lw $t1, -9192($fp)
	add $t0, $t0, $t1
	sw $t0, -9204($fp)
	lw $t0, -9204($fp)
	lw $t1, 0($t0)
	sw $t1, -9208($fp)
	lw $t0, -9208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2012($fp)
	sw $t0, -9212($fp)
	lw $t0, -9212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9216($fp)
	li $t0, 58933
	sw $t0, -9220($fp)
	lw $t1, -9220($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -9216($fp)
label640:
	addi $t0, $fp, -148
	sw $t0, -9224($fp)
	li $t0, 1
	sw $t0, -9228($fp)
	li $t0, 4
	lw $t1, -9228($fp)
	mul $t0, $t0, $t1
	sw $t0, -9232($fp)
	lw $t0, -9232($fp)
	lw $t1, -9224($fp)
	add $t0, $t0, $t1
	sw $t0, -9236($fp)
	lw $t0, -9236($fp)
	lw $t1, 0($t0)
	sw $t1, -9240($fp)
	lw $t0, -9216($fp)
	lw $t1, -9240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9244($fp)
	lw $t0, -9244($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -9248($fp)
	lw $ra, -4($fp)
	lw $v0, -9248($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3456
	li $t0, 8652
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 51830
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 48921
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 65013
	sw $t0, -104($fp)
	addi $t0, $fp, -12
	sw $t0, -108($fp)
	li $t0, 0
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
	li $t0, 39520
	sw $t0, -128($fp)
	addi $t0, $fp, -12
	sw $t0, -132($fp)
	li $t0, 1
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
	li $t0, 17911
	sw $t0, -152($fp)
	addi $t0, $fp, -16
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
	li $t0, 34254
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 30506
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 1973
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 34060
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 14338
	sw $t0, -224($fp)
	addi $t0, $fp, -44
	sw $t0, -228($fp)
	li $t0, 0
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
	li $t0, 31640
	sw $t0, -248($fp)
	addi $t0, $fp, -44
	sw $t0, -252($fp)
	li $t0, 1
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
	li $t0, 64623
	sw $t0, -272($fp)
	addi $t0, $fp, -44
	sw $t0, -276($fp)
	li $t0, 2
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
	li $t0, 64693
	sw $t0, -296($fp)
	addi $t0, $fp, -44
	sw $t0, -300($fp)
	li $t0, 3
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
	li $t0, 17497
	sw $t0, -320($fp)
	addi $t0, $fp, -44
	sw $t0, -324($fp)
	li $t0, 4
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
	li $t0, 19200
	sw $t0, -344($fp)
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 5
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
	li $t0, 25933
	sw $t0, -368($fp)
	addi $t0, $fp, -44
	sw $t0, -372($fp)
	li $t0, 6
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
	li $t0, 63316
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 18723
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 26820
	sw $t0, -416($fp)
	addi $t0, $fp, -64
	sw $t0, -420($fp)
	li $t0, 0
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
	li $t0, 25033
	sw $t0, -440($fp)
	addi $t0, $fp, -64
	sw $t0, -444($fp)
	li $t0, 1
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
	li $t0, 50260
	sw $t0, -464($fp)
	addi $t0, $fp, -64
	sw $t0, -468($fp)
	li $t0, 2
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
	li $t0, 377
	sw $t0, -488($fp)
	addi $t0, $fp, -64
	sw $t0, -492($fp)
	li $t0, 3
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
	li $t0, 41150
	sw $t0, -512($fp)
	addi $t0, $fp, -64
	sw $t0, -516($fp)
	li $t0, 4
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
	li $t0, 6425
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 43921
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 60550
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 55858
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 37318
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 59582
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 57731
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 45970
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 45876
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 41117
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 45448
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 19860
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -72($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -692($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -712($fp)
	li $t0, 1
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
	lw $t0, -728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -732($fp)
	li $t0, 0
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
	lw $t0, -748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -768($fp)
	li $t0, 0
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
	lw $t0, -784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -788($fp)
	li $t0, 1
	sw $t0, -792($fp)
	li $t0, 4
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	lw $t1, 0($t0)
	sw $t1, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -808($fp)
	li $t0, 2
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
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -828($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -848($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -868($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -888($fp)
	li $t0, 6
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
	lw $t0, -396($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -916($fp)
	li $t0, 0
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
	lw $t0, -932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -936($fp)
	li $t0, 1
	sw $t0, -940($fp)
	li $t0, 4
	lw $t1, -940($fp)
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t1, 0($t0)
	sw $t1, -952($fp)
	lw $t0, -952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -956($fp)
	li $t0, 2
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
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
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
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -996($fp)
	li $t0, 4
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
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1064($fp)
	addi $t0, $fp, -44
	sw $t0, -1068($fp)
	lw $t0, 12($fp)
	sw $t0, -1072($fp)
	li $t0, 0
	lw $t1, -1072($fp)
	sub $t0, $t0, $t1
	sw $t0, -1076($fp)
	li $t0, 4
	lw $t1, -1076($fp)
	mul $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	lw $t1, 0($t0)
	sw $t1, -1088($fp)
	addi $t0, $fp, -44
	sw $t0, -1092($fp)
	li $t0, 5
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
	lw $t1, -1108($fp)
	sub $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1088($fp)
	lw $t1, -1112($fp)
	mul $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -216($fp)
	sw $t0, -1120($fp)
	li $t0, 50366
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1128($fp)
	lw $t0, -84($fp)
	sw $t0, -1132($fp)
	lw $t0, -1128($fp)
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	li $t0, 61002
	sw $t0, -1140($fp)
	li $t0, 0
	lw $t1, -1140($fp)
	sub $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1136($fp)
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t1, -1116($fp)
	lw $t2, -1148($fp)
	bge $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -1064($fp)
label642:
	lw $ra, -4($fp)
	lw $v0, -1064($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 48226
	sw $t0, -1168($fp)
	addi $t0, $fp, -1164
	sw $t0, -1172($fp)
	li $t0, 0
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1172($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1168($fp)
	lw $t1, -1184($fp)
	sw $t0, 0($t1)
	lw $t0, -1184($fp)
	lw $t1, 0($t0)
	sw $t1, -1188($fp)
	li $t0, 64704
	sw $t0, -1192($fp)
	addi $t0, $fp, -1164
	sw $t0, -1196($fp)
	li $t0, 1
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1196($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1192($fp)
	lw $t1, -1208($fp)
	sw $t0, 0($t1)
	lw $t0, -1208($fp)
	lw $t1, 0($t0)
	sw $t1, -1212($fp)
	li $t0, 27106
	sw $t0, -1216($fp)
	addi $t0, $fp, -1164
	sw $t0, -1220($fp)
	li $t0, 2
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1220($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1216($fp)
	lw $t1, -1232($fp)
	sw $t0, 0($t1)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	li $t0, 47313
	sw $t0, -1240($fp)
	addi $t0, $fp, -1164
	sw $t0, -1244($fp)
	li $t0, 3
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
	li $t0, 63862
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 44603
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 978
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 24259
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 42383
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 19701
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	li $t0, 0
	sw $t0, -1336($fp)
	li $t0, 51080
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label643
label643:
	li $t0, 1
	sw $t0, -1336($fp)
label644:
	li $t0, 0
	sw $t0, -1344($fp)
	jal f7
	sw $v0, -1348($fp)
	addi $sp, $sp, 4
	lw $t0, -192($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -1356($fp)
	lw $t0, -600($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1364($fp)
	addi $sp, $sp, -4
	lw $t0, -1348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1368($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 43031
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label647:
	li $t0, 1
	sw $t0, -1372($fp)
label648:
	lw $t0, -612($fp)
	sw $t0, -1380($fp)
	li $t0, 51457
	sw $t0, -1384($fp)
	li $t0, 0
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1388($fp)
	li $t0, 0
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	li $t0, 0
	sw $t0, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	li $t0, 1881
	sw $t0, -1404($fp)
	li $t0, 4425
	sw $t0, -1408($fp)
	lw $t1, -1404($fp)
	lw $t2, -1408($fp)
	beq $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -1400($fp)
label652:
	lw $t0, -612($fp)
	sw $t0, -1412($fp)
	lw $t1, -1400($fp)
	lw $t2, -1412($fp)
	bne $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -1396($fp)
label650:
	addi $sp, $sp, -4
	lw $t0, -1372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1416($fp)
	addi $sp, $sp, 20
	lw $t1, -1368($fp)
	lw $t2, -1416($fp)
	ble $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -1344($fp)
label646:
	addi $t0, $fp, -1164
	sw $t0, -1420($fp)
	li $t0, 0
	sw $t0, -1424($fp)
	li $t0, 4
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, -1420($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, 0($t0)
	sw $t1, -1436($fp)
	lw $t0, -1436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1164
	sw $t0, -1440($fp)
	li $t0, 1
	sw $t0, -1444($fp)
	li $t0, 4
	lw $t1, -1444($fp)
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	lw $t1, 0($t0)
	sw $t1, -1456($fp)
	lw $t0, -1456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1164
	sw $t0, -1460($fp)
	li $t0, 2
	sw $t0, -1464($fp)
	li $t0, 4
	lw $t1, -1464($fp)
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, -1460($fp)
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	lw $t1, 0($t0)
	sw $t1, -1476($fp)
	lw $t0, -1476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1164
	sw $t0, -1480($fp)
	li $t0, 3
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
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1520($fp)
	li $t0, 0
	sw $t0, -1524($fp)
	li $t0, 1173
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	lw $t0, -84($fp)
	sw $t0, -1540($fp)
	li $t0, 38045
	sw $t0, -1544($fp)
	lw $t1, -1540($fp)
	lw $t2, -1544($fp)
	blt $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -1536($fp)
label658:
	li $t0, 29842
	sw $t0, -1548($fp)
	lw $t0, -408($fp)
	sw $t0, -1552($fp)
	li $t0, 10850
	sw $t0, -1556($fp)
	lw $t0, -1552($fp)
	lw $t1, -1556($fp)
	mul $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, 8($fp)
	sw $t0, -1564($fp)
	lw $t0, -1560($fp)
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1572($fp)
	addi $sp, $sp, 20
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label655
label655:
	li $t0, 1
	sw $t0, -1524($fp)
label656:
	li $t0, 1624
	sw $t0, -1576($fp)
	li $t0, 32091
	sw $t0, -1580($fp)
	lw $t0, -1576($fp)
	lw $t1, -1580($fp)
	sub $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t1, -1524($fp)
	lw $t2, -1584($fp)
	bge $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -1520($fp)
label654:
	lw $ra, -4($fp)
	lw $v0, -1520($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label659:
	li $t0, 0
	sw $t0, -1588($fp)
	li $t0, 0
	sw $t0, -1592($fp)
	lw $t0, -1316($fp)
	sw $t0, -1596($fp)
	li $t0, 27978
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label667
label667:
	li $t0, 41673
	sw $t0, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -1592($fp)
label666:
	li $t0, 0
	sw $t0, -1612($fp)
	lw $t0, -1292($fp)
	sw $t0, -1616($fp)
	li $t0, 32291
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -216($fp)
	sw $t0, -1628($fp)
	lw $t1, -1624($fp)
	lw $t2, -1628($fp)
	blt $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -1612($fp)
label669:
	li $t0, 0
	sw $t0, -1632($fp)
	li $t0, 0
	sw $t0, -1636($fp)
	lw $t0, -1304($fp)
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label672
label672:
	li $t0, 1
	sw $t0, -1636($fp)
label673:
	lw $t0, 4($fp)
	sw $t0, -1644($fp)
	lw $t1, -1636($fp)
	lw $t2, -1644($fp)
	bne $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -1632($fp)
label671:
	li $t0, 0
	sw $t0, -1648($fp)
	li $t0, 12431
	sw $t0, -1652($fp)
	li $t0, 34485
	sw $t0, -1656($fp)
	lw $t1, -1652($fp)
	lw $t2, -1656($fp)
	bgt $t1, $t2, label676
	j label675
label676:
	li $t0, 27507
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -1648($fp)
label675:
	lw $t0, 8($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -1668($fp)
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1672($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1672($fp)
	sub $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -216($fp)
	sw $t0, -1680($fp)
	li $t0, 0
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	addi $t0, $fp, -1164
	sw $t0, -1692($fp)
	li $t0, 3
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
	lw $t0, -540($fp)
	sw $t0, -1712($fp)
	lw $t1, -1708($fp)
	lw $t2, -1712($fp)
	bne $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -1688($fp)
label678:
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1716($fp)
	addi $sp, $sp, 20
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label663
label663:
	li $t0, 1
	sw $t0, -1588($fp)
label664:
	li $t0, 0
	sw $t0, -1720($fp)
	lw $t0, -1268($fp)
	sw $t0, -1724($fp)
	lw $t1, -1724($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label679
label679:
	li $t0, 1
	sw $t0, -1720($fp)
label680:
	lw $t0, -1588($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	li $t0, 0
	sw $t0, -1732($fp)
	li $t0, 17121
	sw $t0, -1736($fp)
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label681
label681:
	li $t0, 1
	sw $t0, -1732($fp)
label682:
	lw $t0, -1280($fp)
	sw $t0, -1740($fp)
	lw $t0, -1732($fp)
	lw $t1, -1740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1744($fp)
	lw $t0, -1728($fp)
	lw $t1, -1744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label661
label662:
	li $t0, 0
	sw $t0, -1752($fp)
	lw $t0, -612($fp)
	sw $t0, -1756($fp)
	li $t0, 16289
	sw $t0, -1760($fp)
	lw $t1, -1756($fp)
	lw $t2, -1760($fp)
	bgt $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -1752($fp)
label684:
	li $t0, 24364
	sw $t0, -1764($fp)
	lw $t0, -600($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1772($fp)
	li $t0, 0
	sw $t0, -1776($fp)
	li $t0, 23444
	sw $t0, -1780($fp)
	lw $t0, -576($fp)
	sw $t0, -1784($fp)
	lw $t0, -1780($fp)
	lw $t1, -1784($fp)
	sub $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label687
label687:
	lw $t0, -84($fp)
	sw $t0, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -1776($fp)
label686:
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1796($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -44
	sw $t0, -1800($fp)
	lw $t0, -396($fp)
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
	sub $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label661
label660:
	li $t0, 0
	sw $t0, -1824($fp)
	jal f7
	sw $v0, -1828($fp)
	addi $sp, $sp, 4
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label691
label691:
	li $t0, 1
	sw $t0, -1824($fp)
label692:
	lw $t0, -396($fp)
	sw $t0, -1832($fp)
	lw $t0, -1824($fp)
	lw $t1, -1832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1836($fp)
	lw $t0, 4($fp)
	sw $t0, -1840($fp)
	lw $t0, 4($fp)
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1848($fp)
	li $t0, 50550
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -192($fp)
	sw $t0, -1860($fp)
	lw $t0, -216($fp)
	sw $t0, -1864($fp)
	lw $t0, -1860($fp)
	lw $t1, -1864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1868($fp)
	lw $t0, -1856($fp)
	lw $t1, -1868($fp)
	sub $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t1, -1836($fp)
	lw $t2, -1872($fp)
	bgt $t1, $t2, label688
	j label689
label688:
	lw $t0, -84($fp)
	sw $t0, -1876($fp)
	j label690
label689:
	li $t0, 6141
	sw $t0, -1880($fp)
label690:
	j label659
label661:
	li $t0, 14615
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	li $t0, 29617
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	li $t0, 7119
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	li $t0, 38875
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	li $t0, 0
	sw $t0, -1932($fp)
	jal f7
	sw $v0, -1936($fp)
	addi $sp, $sp, 4
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label693:
	li $t0, 1
	sw $t0, -1932($fp)
label694:
	li $t0, 33565
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	li $t0, 51372
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label699
label699:
	li $t0, 35163
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -1952($fp)
label698:
	addi $t0, $fp, -16
	sw $t0, -1964($fp)
	lw $t0, -636($fp)
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
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 2872
	sw $t0, -1988($fp)
	lw $t0, -192($fp)
	sw $t0, -1992($fp)
	lw $t1, -1988($fp)
	lw $t2, -1992($fp)
	ble $t1, $t2, label700
	j label702
label702:
	li $t0, 5587
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label701
label700:
	li $t0, 1
	sw $t0, -1984($fp)
label701:
	lw $t0, -648($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -2004($fp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2008($fp)
	addi $sp, $sp, 20
	lw $t0, -552($fp)
	sw $t0, -2012($fp)
	lw $t1, -2008($fp)
	lw $t2, -2012($fp)
	bgt $t1, $t2, label695
	j label696
label695:
	li $t0, 1
	sw $t0, -1948($fp)
label696:
	lw $t0, -1888($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -2020($fp)
	li $t0, 0
	sw $t0, -2024($fp)
	addi $t0, $fp, -12
	sw $t0, -2028($fp)
	li $t0, 1
	sw $t0, -2032($fp)
	li $t0, 4
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	li $t0, 23865
	sw $t0, -2048($fp)
	lw $t1, -2044($fp)
	lw $t2, -2048($fp)
	bne $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -2024($fp)
label704:
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2052($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2056($fp)
	li $t0, 41806
	sw $t0, -2060($fp)
	lw $t0, -180($fp)
	sw $t0, -2064($fp)
	lw $t0, -2060($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 40182
	sw $t0, -2076($fp)
	li $t0, 23886
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	li $t0, 43269
	sw $t0, -2088($fp)
	lw $t1, -2084($fp)
	lw $t2, -2088($fp)
	beq $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -2072($fp)
label708:
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 51377
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label711
label712:
	lw $t0, -612($fp)
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label711
label711:
	li $t0, 42096
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -2092($fp)
label710:
	li $t0, 0
	sw $t0, -2108($fp)
	li $t0, 0
	sw $t0, -2112($fp)
	li $t0, 10340
	sw $t0, -2116($fp)
	lw $t0, -564($fp)
	sw $t0, -2120($fp)
	lw $t1, -2116($fp)
	lw $t2, -2120($fp)
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -2112($fp)
label716:
	lw $t0, -408($fp)
	sw $t0, -2124($fp)
	lw $t1, -2112($fp)
	lw $t2, -2124($fp)
	bne $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -2108($fp)
label714:
	li $t0, 0
	sw $t0, -2128($fp)
	lw $t0, -576($fp)
	sw $t0, -2132($fp)
	li $t0, 0
	lw $t1, -2132($fp)
	sub $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label718
label719:
	lw $t0, -540($fp)
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -2128($fp)
label718:
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 8346
	sw $t0, -2148($fp)
	li $t0, 0
	lw $t1, -2148($fp)
	sub $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label722
label722:
	li $t0, 31245
	sw $t0, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label721
label720:
	li $t0, 1
	sw $t0, -2144($fp)
label721:
	li $t0, 0
	sw $t0, -2160($fp)
	lw $t0, -672($fp)
	sw $t0, -2164($fp)
	lw $t0, -612($fp)
	sw $t0, -2168($fp)
	lw $t1, -2164($fp)
	lw $t2, -2168($fp)
	bne $t1, $t2, label725
	j label724
label725:
	li $t0, 24419
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label724
label723:
	li $t0, 1
	sw $t0, -2160($fp)
label724:
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2176($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2180($fp)
	addi $sp, $sp, 20
	lw $t0, -672($fp)
	sw $t0, -2184($fp)
	lw $t1, -2180($fp)
	lw $t2, -2184($fp)
	beq $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -2056($fp)
label706:
	li $t0, 0
	sw $t0, -2188($fp)
	li $t0, 6465
	sw $t0, -2192($fp)
	li $t0, 26820
	sw $t0, -2196($fp)
	lw $t0, -2192($fp)
	lw $t1, -2196($fp)
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -552($fp)
	sw $t0, -2204($fp)
	lw $t1, -2200($fp)
	lw $t2, -2204($fp)
	bne $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -2188($fp)
label727:
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2208($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2212($fp)
	lw $t0, -672($fp)
	sw $t0, -2216($fp)
	li $t0, 27510
	sw $t0, -2220($fp)
	lw $t1, -2216($fp)
	lw $t2, -2220($fp)
	beq $t1, $t2, label728
	j label729
label728:
	li $t0, 1
	sw $t0, -2212($fp)
label729:
	lw $t0, -600($fp)
	sw $t0, -2224($fp)
	addi $t0, $fp, -64
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	li $t0, 52284
	sw $t0, -2236($fp)
	lw $t0, 4($fp)
	sw $t0, -2240($fp)
	lw $t1, -2236($fp)
	lw $t2, -2240($fp)
	bne $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -2232($fp)
label731:
	li $t0, 4
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, 0($t0)
	sw $t1, -2252($fp)
	lw $t0, -2224($fp)
	lw $t1, -2252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2256($fp)
	addi $t0, $fp, -44
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	li $t0, 57009
	sw $t0, -2268($fp)
	lw $t0, -636($fp)
	sw $t0, -2272($fp)
	li $t0, 51874
	sw $t0, -2276($fp)
	lw $t0, -2272($fp)
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t1, -2268($fp)
	lw $t2, -2280($fp)
	beq $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -2264($fp)
label733:
	li $t0, 4
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	li $t0, 3037
	sw $t0, -2296($fp)
	li $t0, 58015
	sw $t0, -2300($fp)
	lw $t0, -1900($fp)
	sw $t0, -2304($fp)
	lw $t0, -2300($fp)
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	li $t0, 17653
	sw $t0, -2312($fp)
	lw $t0, -2308($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	li $t0, 0
	sw $t0, -2320($fp)
	li $t0, 42023
	sw $t0, -2324($fp)
	lw $t0, -396($fp)
	sw $t0, -2328($fp)
	lw $t1, -2324($fp)
	lw $t2, -2328($fp)
	bgt $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -2320($fp)
label735:
	lw $t0, -648($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -2336($fp)
	addi $sp, $sp, -4
	lw $t0, -2316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2340($fp)
	addi $sp, $sp, 16
	lw $t0, -2296($fp)
	lw $t1, -2340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	li $t0, 0
	sw $t0, -2352($fp)
	li $t0, 0
	sw $t0, -2356($fp)
	lw $t0, -396($fp)
	sw $t0, -2360($fp)
	li $t0, 34225
	sw $t0, -2364($fp)
	lw $t1, -2360($fp)
	lw $t2, -2364($fp)
	bge $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -2356($fp)
label744:
	li $t0, 397
	sw $t0, -2368($fp)
	lw $t1, -2356($fp)
	lw $t2, -2368($fp)
	blt $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -2352($fp)
label742:
	li $t0, 25751
	sw $t0, -2372($fp)
	li $t0, 6756
	sw $t0, -2376($fp)
	lw $t0, -2372($fp)
	lw $t1, -2376($fp)
	sub $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -552($fp)
	sw $t0, -2384($fp)
	li $t0, 57665
	sw $t0, -2388($fp)
	lw $t0, -2384($fp)
	lw $t1, -2388($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	li $t0, 0
	lw $t1, -2392($fp)
	sub $t0, $t0, $t1
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	lw $t0, -72($fp)
	sw $t0, -2404($fp)
	li $t0, 15411
	sw $t0, -2408($fp)
	lw $t0, -2404($fp)
	lw $t1, -2408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2412($fp)
	li $t0, 20915
	sw $t0, -2416($fp)
	lw $t1, -2412($fp)
	lw $t2, -2416($fp)
	blt $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -2400($fp)
label746:
	addi $t0, $fp, -44
	sw $t0, -2420($fp)
	li $t0, 4
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
	li $t0, 26419
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	sub $t0, $t0, $t1
	sw $t0, -2444($fp)
	li $t0, 65135
	sw $t0, -2448($fp)
	li $t0, 0
	sw $t0, -2452($fp)
	lw $t0, 12($fp)
	sw $t0, -2456($fp)
	li $t0, 6104
	sw $t0, -2460($fp)
	lw $t1, -2456($fp)
	lw $t2, -2460($fp)
	bne $t1, $t2, label749
	j label748
label749:
	lw $t0, 12($fp)
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -2452($fp)
label748:
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2468($fp)
	addi $sp, $sp, 20
	lw $t0, 12($fp)
	sw $t0, -2472($fp)
	lw $t0, -2468($fp)
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	addi $sp, $sp, -4
	lw $t0, -2352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2480($fp)
	addi $sp, $sp, 20
	li $t0, 30642
	sw $t0, -2484($fp)
	lw $t0, -2480($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2488($fp)
	li $t0, 11958
	sw $t0, -2492($fp)
	lw $t1, -2488($fp)
	lw $t2, -2492($fp)
	bgt $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -2348($fp)
label740:
	li $t0, 42203
	sw $t0, -2496($fp)
	li $t0, 21083
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -588($fp)
	sw $t0, -2508($fp)
	lw $t0, -2504($fp)
	lw $t1, -2508($fp)
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	li $t0, 0
	sw $t0, -2516($fp)
	lw $t0, -588($fp)
	sw $t0, -2520($fp)
	li $t0, 23955
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2528($fp)
	lw $t0, -660($fp)
	sw $t0, -2532($fp)
	lw $t1, -2528($fp)
	lw $t2, -2532($fp)
	bgt $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -2516($fp)
label751:
	lw $t0, 12($fp)
	sw $t0, -2536($fp)
	lw $t0, -624($fp)
	sw $t0, -2540($fp)
	lw $t0, -2536($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -192($fp)
	sw $t0, -2548($fp)
	li $t0, 48595
	sw $t0, -2552($fp)
	lw $t0, -2548($fp)
	lw $t1, -2552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2556($fp)
	li $t0, 533
	sw $t0, -2560($fp)
	lw $t0, -2556($fp)
	lw $t1, -2560($fp)
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2568($fp)
	addi $sp, $sp, 16
	lw $t0, -2512($fp)
	lw $t1, -2568($fp)
	sub $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t1, -2348($fp)
	lw $t2, -2572($fp)
	ble $t1, $t2, label736
	j label737
label736:
	li $t0, 0
	sw $t0, -2576($fp)
	li $t0, 0
	sw $t0, -2580($fp)
	li $t0, 0
	sw $t0, -2584($fp)
	li $t0, 0
	sw $t0, -2588($fp)
	lw $t0, -552($fp)
	sw $t0, -2592($fp)
	lw $t1, -2592($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label758
label758:
	li $t0, 1
	sw $t0, -2588($fp)
label759:
	li $t0, 0
	lw $t1, -2588($fp)
	sub $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label756
label756:
	li $t0, 1
	sw $t0, -2584($fp)
label757:
	li $t0, 0
	sw $t0, -2600($fp)
	li $t0, 54182
	sw $t0, -2604($fp)
	li $t0, 0
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label760
label760:
	li $t0, 1
	sw $t0, -2600($fp)
label761:
	lw $t1, -2584($fp)
	lw $t2, -2600($fp)
	beq $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -2580($fp)
label755:
	li $t0, 0
	sw $t0, -2612($fp)
	addi $t0, $fp, -12
	sw $t0, -2616($fp)
	li $t0, 0
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
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label762:
	li $t0, 1
	sw $t0, -2612($fp)
label763:
	lw $t1, -2580($fp)
	lw $t2, -2612($fp)
	beq $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -2576($fp)
label753:
	j label738
label737:
	li $t0, 0
	sw $t0, -2636($fp)
	addi $t0, $fp, -64
	sw $t0, -2640($fp)
	lw $t0, -552($fp)
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
	lw $t1, -2656($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label766
label766:
	li $t0, 45866
	sw $t0, -2660($fp)
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -2636($fp)
label765:
	lw $t0, -588($fp)
	sw $t0, -2664($fp)
	li $t0, 22211
	sw $t0, -2668($fp)
	lw $t0, -2664($fp)
	lw $t1, -2668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2672($fp)
	li $t0, 13879
	sw $t0, -2676($fp)
	lw $t0, -2672($fp)
	lw $t1, -2676($fp)
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -540($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -2688($fp)
	addi $sp, $sp, -4
	lw $t0, -2636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2692($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $ra, -4($fp)
	lw $v0, -2696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label738:
label767:
	jal f7
	sw $v0, -2700($fp)
	addi $sp, $sp, 4
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label769
label768:
	li $t0, 0
	sw $t0, -2704($fp)
	addi $t0, $fp, -16
	sw $t0, -2708($fp)
	li $t0, 217
	sw $t0, -2712($fp)
	li $t0, 0
	sw $t0, -2716($fp)
	li $t0, 13684
	sw $t0, -2720($fp)
	li $t0, 0
	lw $t1, -2720($fp)
	sub $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label773
label773:
	li $t0, 1
	sw $t0, -2716($fp)
label774:
	li $t0, 0
	sw $t0, -2728($fp)
	lw $t0, 12($fp)
	sw $t0, -2732($fp)
	lw $t0, -588($fp)
	sw $t0, -2736($fp)
	lw $t1, -2732($fp)
	lw $t2, -2736($fp)
	bne $t1, $t2, label775
	j label776
label775:
	li $t0, 1
	sw $t0, -2728($fp)
label776:
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2740($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -2740($fp)
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, -2708($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, 0($t0)
	sw $t1, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label770
label772:
	lw $t0, 12($fp)
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -2704($fp)
label771:
	li $t0, 0
	sw $t0, -2760($fp)
	li $t0, 0
	sw $t0, -2764($fp)
	li $t0, 1021
	sw $t0, -2768($fp)
	li $t0, 61812
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	li $t0, 0
	sw $t0, -2780($fp)
	li $t0, 0
	sw $t0, -2784($fp)
	li $t0, 55707
	sw $t0, -2788($fp)
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label784
label784:
	li $t0, 1
	sw $t0, -2784($fp)
label785:
	li $t0, 58233
	sw $t0, -2792($fp)
	lw $t1, -2784($fp)
	lw $t2, -2792($fp)
	bne $t1, $t2, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -2780($fp)
label783:
	lw $t0, -540($fp)
	sw $t0, -2796($fp)
	li $t0, 48904
	sw $t0, -2800($fp)
	lw $t0, -2796($fp)
	lw $t1, -2800($fp)
	sub $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -636($fp)
	sw $t0, -2808($fp)
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	li $t0, 0
	sw $t0, -2816($fp)
	lw $t0, -576($fp)
	sw $t0, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label788
label789:
	lw $t0, -648($fp)
	sw $t0, -2824($fp)
	lw $t1, -2824($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label788
label788:
	lw $t0, -588($fp)
	sw $t0, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -2816($fp)
label787:
	addi $sp, $sp, -4
	lw $t0, -2776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2832($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label780
label780:
	li $t0, 1
	sw $t0, -2764($fp)
label781:
	li $t0, 0
	sw $t0, -2840($fp)
	lw $t0, 8($fp)
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label790
label790:
	li $t0, 1
	sw $t0, -2840($fp)
label791:
	lw $t1, -2764($fp)
	lw $t2, -2840($fp)
	beq $t1, $t2, label777
	j label779
label779:
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, -540($fp)
	sw $t0, -2852($fp)
	lw $t0, -552($fp)
	sw $t0, -2856($fp)
	lw $t1, -2852($fp)
	lw $t2, -2856($fp)
	beq $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -2848($fp)
label793:
	li $t0, 57832
	sw $t0, -2860($fp)
	lw $t0, -600($fp)
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	sub $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t1, -2848($fp)
	lw $t2, -2868($fp)
	bne $t1, $t2, label777
	j label778
label777:
	li $t0, 1
	sw $t0, -2760($fp)
label778:
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -84($fp)
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	lw $t0, -600($fp)
	sw $t0, -2884($fp)
	lw $t1, -2884($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label798
label798:
	li $t0, 36517
	sw $t0, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -2880($fp)
label797:
	li $t0, 10844
	sw $t0, -2892($fp)
	li $t0, 33175
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	sub $t0, $t0, $t1
	sw $t0, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	li $t0, 7424
	sw $t0, -2908($fp)
	li $t0, 29761
	sw $t0, -2912($fp)
	lw $t0, -2908($fp)
	lw $t1, -2912($fp)
	sub $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -564($fp)
	sw $t0, -2920($fp)
	lw $t1, -2916($fp)
	lw $t2, -2920($fp)
	ble $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -2904($fp)
label800:
	li $t0, 0
	sw $t0, -2924($fp)
	li $t0, 8845
	sw $t0, -2928($fp)
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label803
label803:
	li $t0, 18715
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -2924($fp)
label802:
	li $t0, 0
	sw $t0, -2936($fp)
	li $t0, 57549
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label804
label804:
	li $t0, 1
	sw $t0, -2936($fp)
label805:
	lw $t0, -672($fp)
	sw $t0, -2944($fp)
	lw $t0, -2936($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2952($fp)
	addi $sp, $sp, 20
	jal f7
	sw $v0, -2956($fp)
	addi $sp, $sp, 4
	lw $t0, -192($fp)
	sw $t0, -2960($fp)
	lw $t0, -2956($fp)
	lw $t1, -2960($fp)
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2968($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2972($fp)
	li $t0, 45069
	sw $t0, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label806
label806:
	li $t0, 1
	sw $t0, -2972($fp)
label807:
	lw $t0, -2968($fp)
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	li $t0, 33572
	sw $t0, -2984($fp)
	li $t0, 1624
	sw $t0, -2988($fp)
	lw $t0, -2984($fp)
	lw $t1, -2988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2992($fp)
	lw $t0, -2980($fp)
	lw $t1, -2992($fp)
	sub $t0, $t0, $t1
	sw $t0, -2996($fp)
	li $t0, 57027
	sw $t0, -3000($fp)
	li $t0, 0
	lw $t1, -3000($fp)
	sub $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t1, -2996($fp)
	lw $t2, -3004($fp)
	bgt $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -2872($fp)
label795:
	li $t0, 10239
	sw $t0, -3008($fp)
	lw $t0, -540($fp)
	sw $t0, -3012($fp)
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3016($fp)
	j label767
label769:
	lw $t0, -72($fp)
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	li $t0, 4
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, 0($t0)
	sw $t1, -3048($fp)
	lw $t0, -3048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -3052($fp)
	li $t0, 1
	sw $t0, -3056($fp)
	li $t0, 4
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	lw $t1, -3052($fp)
	add $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, 0($t0)
	sw $t1, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
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
	lw $t0, -180($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3108($fp)
	li $t0, 0
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
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3128($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -3148($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -3168($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -3188($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -3208($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -3228($fp)
	li $t0, 6
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
	lw $t0, -396($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3256($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -3276($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -3296($fp)
	li $t0, 2
	sw $t0, -3300($fp)
	li $t0, 4
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	lw $t1, -3296($fp)
	add $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	lw $t1, 0($t0)
	sw $t1, -3312($fp)
	lw $t0, -3312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3316($fp)
	li $t0, 3
	sw $t0, -3320($fp)
	li $t0, 4
	lw $t1, -3320($fp)
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	lw $t0, -3332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3336($fp)
	li $t0, 4
	sw $t0, -3340($fp)
	li $t0, 4
	lw $t1, -3340($fp)
	mul $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, -3336($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	lw $t1, 0($t0)
	sw $t1, -3352($fp)
	lw $t0, -3352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3404($fp)
	lw $t0, -576($fp)
	sw $t0, -3408($fp)
	addi $t0, $fp, -44
	sw $t0, -3412($fp)
	lw $t0, -396($fp)
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
	li $t0, 40087
	sw $t0, -3432($fp)
	lw $t0, -3428($fp)
	lw $t1, -3432($fp)
	sub $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -204($fp)
	sw $t0, -3440($fp)
	li $t0, 22707
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -3448($fp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3448($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3452($fp)
	addi $sp, $sp, 16
	lw $t1, -3408($fp)
	lw $t2, -3452($fp)
	bge $t1, $t2, label808
	j label810
label810:
	lw $t0, -672($fp)
	sw $t0, -3456($fp)
	li $t0, 0
	lw $t1, -3456($fp)
	sub $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label809
label808:
	li $t0, 1
	sw $t0, -3404($fp)
label809:
	lw $ra, -4($fp)
	lw $v0, -3404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5124
	li $t0, 10772
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 46663
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 28733
	sw $t0, -140($fp)
	addi $t0, $fp, -24
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
	li $t0, 62678
	sw $t0, -164($fp)
	addi $t0, $fp, -24
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
	li $t0, 40245
	sw $t0, -188($fp)
	addi $t0, $fp, -24
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
	li $t0, 50945
	sw $t0, -212($fp)
	addi $t0, $fp, -24
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
	li $t0, 11021
	sw $t0, -236($fp)
	addi $t0, $fp, -24
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
	li $t0, 20576
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 64629
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 11239
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 3944
	sw $t0, -296($fp)
	addi $t0, $fp, -48
	sw $t0, -300($fp)
	li $t0, 0
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
	li $t0, 54801
	sw $t0, -320($fp)
	addi $t0, $fp, -48
	sw $t0, -324($fp)
	li $t0, 1
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
	li $t0, 3936
	sw $t0, -344($fp)
	addi $t0, $fp, -48
	sw $t0, -348($fp)
	li $t0, 2
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
	li $t0, 4965
	sw $t0, -368($fp)
	addi $t0, $fp, -48
	sw $t0, -372($fp)
	li $t0, 3
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
	li $t0, 51077
	sw $t0, -392($fp)
	addi $t0, $fp, -48
	sw $t0, -396($fp)
	li $t0, 4
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
	li $t0, 61768
	sw $t0, -416($fp)
	addi $t0, $fp, -48
	sw $t0, -420($fp)
	li $t0, 5
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
	li $t0, 62514
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 59922
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 14947
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 4402
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 24147
	sw $t0, -488($fp)
	addi $t0, $fp, -88
	sw $t0, -492($fp)
	li $t0, 0
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
	li $t0, 25792
	sw $t0, -512($fp)
	addi $t0, $fp, -88
	sw $t0, -516($fp)
	li $t0, 1
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
	li $t0, 37577
	sw $t0, -536($fp)
	addi $t0, $fp, -88
	sw $t0, -540($fp)
	li $t0, 2
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
	li $t0, 60665
	sw $t0, -560($fp)
	addi $t0, $fp, -88
	sw $t0, -564($fp)
	li $t0, 3
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
	li $t0, 5325
	sw $t0, -584($fp)
	addi $t0, $fp, -88
	sw $t0, -588($fp)
	li $t0, 4
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
	li $t0, 5613
	sw $t0, -608($fp)
	addi $t0, $fp, -88
	sw $t0, -612($fp)
	li $t0, 5
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
	li $t0, 62289
	sw $t0, -632($fp)
	addi $t0, $fp, -88
	sw $t0, -636($fp)
	li $t0, 6
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
	li $t0, 62353
	sw $t0, -656($fp)
	addi $t0, $fp, -88
	sw $t0, -660($fp)
	li $t0, 7
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
	li $t0, 15852
	sw $t0, -680($fp)
	addi $t0, $fp, -88
	sw $t0, -684($fp)
	li $t0, 8
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
	li $t0, 19460
	sw $t0, -704($fp)
	addi $t0, $fp, -88
	sw $t0, -708($fp)
	li $t0, 9
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
	li $t0, 36904
	sw $t0, -728($fp)
	addi $t0, $fp, -112
	sw $t0, -732($fp)
	li $t0, 0
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
	li $t0, 26625
	sw $t0, -752($fp)
	addi $t0, $fp, -112
	sw $t0, -756($fp)
	li $t0, 1
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
	li $t0, 587
	sw $t0, -776($fp)
	addi $t0, $fp, -112
	sw $t0, -780($fp)
	li $t0, 2
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
	li $t0, 101
	sw $t0, -800($fp)
	addi $t0, $fp, -112
	sw $t0, -804($fp)
	li $t0, 3
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
	li $t0, 23767
	sw $t0, -824($fp)
	addi $t0, $fp, -112
	sw $t0, -828($fp)
	li $t0, 4
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
	li $t0, 40833
	sw $t0, -848($fp)
	addi $t0, $fp, -112
	sw $t0, -852($fp)
	li $t0, 5
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
	li $t0, 51046
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	li $t0, 34788
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 61409
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 50140
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	li $t0, 46027
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 65353
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
label811:
	addi $t0, $fp, -112
	sw $t0, -944($fp)
	li $t0, 5
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
	li $t0, 4782
	sw $t0, -968($fp)
	li $t0, 0
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -964($fp)
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label814
label814:
	li $t0, 24946
	sw $t0, -980($fp)
	lw $t0, -120($fp)
	sw $t0, -984($fp)
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -276($fp)
	sw $t0, -992($fp)
	lw $t1, -988($fp)
	lw $t2, -992($fp)
	blt $t1, $t2, label815
	j label813
label815:
	li $t0, 46195
	sw $t0, -996($fp)
	lw $t0, -132($fp)
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	sub $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label813
label812:
label816:
	li $t0, 0
	sw $t0, -1008($fp)
	addi $t0, $fp, -48
	sw $t0, -1012($fp)
	li $t0, 2
	sw $t0, -1016($fp)
	li $t0, 4
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, 0($t0)
	sw $t1, -1028($fp)
	li $t0, 61143
	sw $t0, -1032($fp)
	lw $t0, -1028($fp)
	lw $t1, -1032($fp)
	sub $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label820
label821:
	lw $t0, -912($fp)
	sw $t0, -1040($fp)
	li $t0, 0
	lw $t1, -1040($fp)
	sub $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label820
label819:
	li $t0, 1
	sw $t0, -1008($fp)
label820:
	lw $t0, -1008($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label818
label817:
label822:
	lw $t0, -900($fp)
	sw $t0, -1052($fp)
	lw $t0, -264($fp)
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label824
label823:
	li $t0, 6162
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 43480
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	li $t0, 21399
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	li $t0, 43739
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	li $t0, 38609
	sw $t0, -1132($fp)
	addi $t0, $fp, -1072
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
	li $t0, 26724
	sw $t0, -1156($fp)
	addi $t0, $fp, -1072
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
	li $t0, 49352
	sw $t0, -1180($fp)
	addi $t0, $fp, -1072
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
	li $t0, 35362
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 23541
	sw $t0, -1216($fp)
	addi $t0, $fp, -1080
	sw $t0, -1220($fp)
	li $t0, 0
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1220($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1216($fp)
	lw $t1, -1232($fp)
	sw $t0, 0($t1)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	li $t0, 65204
	sw $t0, -1240($fp)
	addi $t0, $fp, -1080
	sw $t0, -1244($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -1264($fp)
	jal f7
	sw $v0, -1268($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label825
label825:
	li $t0, 1
	sw $t0, -1264($fp)
label826:
	lw $t0, -1088($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1100($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1112($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1124($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1072
	sw $t0, -1292($fp)
	li $t0, 0
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
	addi $t0, $fp, -1072
	sw $t0, -1312($fp)
	li $t0, 1
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
	addi $t0, $fp, -1072
	sw $t0, -1332($fp)
	li $t0, 2
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
	lw $t0, -1208($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1080
	sw $t0, -1356($fp)
	li $t0, 0
	sw $t0, -1360($fp)
	li $t0, 4
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1080
	sw $t0, -1376($fp)
	li $t0, 1
	sw $t0, -1380($fp)
	li $t0, 4
	lw $t1, -1380($fp)
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, 0($t0)
	sw $t1, -1392($fp)
	lw $t0, -1392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	li $t0, 54822
	sw $t0, -1404($fp)
	lw $t1, -1404($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label830
label832:
	li $t0, 60445
	sw $t0, -1408($fp)
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -1400($fp)
label831:
	lw $t0, -900($fp)
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	addi $t0, $fp, -1080
	sw $t0, -1420($fp)
	lw $t0, -1124($fp)
	sw $t0, -1424($fp)
	li $t0, 4
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, -1420($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, 0($t0)
	sw $t1, -1436($fp)
	lw $t0, -936($fp)
	sw $t0, -1440($fp)
	lw $t1, -1436($fp)
	lw $t2, -1440($fp)
	bne $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -1416($fp)
label834:
	addi $sp, $sp, -4
	lw $t0, -1400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1444($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1448($fp)
	lw $t0, -1112($fp)
	sw $t0, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label835
label835:
	li $t0, 1
	sw $t0, -1448($fp)
label836:
	lw $t0, -1444($fp)
	lw $t1, -1448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1456($fp)
	lw $t0, -1124($fp)
	sw $t0, -1460($fp)
	li $t0, 0
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	li $t0, 0
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1456($fp)
	lw $t1, -1468($fp)
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label829
label829:
	lw $t0, -1100($fp)
	sw $t0, -1476($fp)
	lw $t0, -1088($fp)
	sw $t0, -1480($fp)
	lw $t0, -1476($fp)
	lw $t1, -1480($fp)
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	li $t0, 26293
	sw $t0, -1488($fp)
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1492($fp)
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -1396($fp)
label828:
	lw $ra, -4($fp)
	lw $v0, -1396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 55410
	sw $t0, -1568($fp)
	addi $t0, $fp, -1520
	sw $t0, -1572($fp)
	li $t0, 0
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1572($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1568($fp)
	lw $t1, -1584($fp)
	sw $t0, 0($t1)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	li $t0, 60547
	sw $t0, -1592($fp)
	addi $t0, $fp, -1520
	sw $t0, -1596($fp)
	li $t0, 1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1596($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1592($fp)
	lw $t1, -1608($fp)
	sw $t0, 0($t1)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	li $t0, 50060
	sw $t0, -1616($fp)
	addi $t0, $fp, -1520
	sw $t0, -1620($fp)
	li $t0, 2
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
	li $t0, 30707
	sw $t0, -1640($fp)
	addi $t0, $fp, -1520
	sw $t0, -1644($fp)
	li $t0, 3
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
	li $t0, 46057
	sw $t0, -1664($fp)
	addi $t0, $fp, -1520
	sw $t0, -1668($fp)
	li $t0, 4
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
	li $t0, 19313
	sw $t0, -1688($fp)
	addi $t0, $fp, -1520
	sw $t0, -1692($fp)
	li $t0, 5
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
	li $t0, 26580
	sw $t0, -1712($fp)
	addi $t0, $fp, -1520
	sw $t0, -1716($fp)
	li $t0, 6
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
	li $t0, 30661
	sw $t0, -1736($fp)
	addi $t0, $fp, -1552
	sw $t0, -1740($fp)
	li $t0, 0
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1740($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1736($fp)
	lw $t1, -1752($fp)
	sw $t0, 0($t1)
	lw $t0, -1752($fp)
	lw $t1, 0($t0)
	sw $t1, -1756($fp)
	li $t0, 65340
	sw $t0, -1760($fp)
	addi $t0, $fp, -1552
	sw $t0, -1764($fp)
	li $t0, 1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1764($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1760($fp)
	lw $t1, -1776($fp)
	sw $t0, 0($t1)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	li $t0, 26397
	sw $t0, -1784($fp)
	addi $t0, $fp, -1552
	sw $t0, -1788($fp)
	li $t0, 2
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1788($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1784($fp)
	lw $t1, -1800($fp)
	sw $t0, 0($t1)
	lw $t0, -1800($fp)
	lw $t1, 0($t0)
	sw $t1, -1804($fp)
	li $t0, 4530
	sw $t0, -1808($fp)
	addi $t0, $fp, -1552
	sw $t0, -1812($fp)
	li $t0, 3
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1812($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1808($fp)
	lw $t1, -1824($fp)
	sw $t0, 0($t1)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	li $t0, 49768
	sw $t0, -1832($fp)
	addi $t0, $fp, -1552
	sw $t0, -1836($fp)
	li $t0, 4
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1836($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1832($fp)
	lw $t1, -1848($fp)
	sw $t0, 0($t1)
	lw $t0, -1848($fp)
	lw $t1, 0($t0)
	sw $t1, -1852($fp)
	li $t0, 31179
	sw $t0, -1856($fp)
	addi $t0, $fp, -1552
	sw $t0, -1860($fp)
	li $t0, 5
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1860($fp)
	lw $t1, -1868($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1856($fp)
	lw $t1, -1872($fp)
	sw $t0, 0($t1)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	li $t0, 29476
	sw $t0, -1880($fp)
	addi $t0, $fp, -1552
	sw $t0, -1884($fp)
	li $t0, 6
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1884($fp)
	lw $t1, -1892($fp)
	add $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1880($fp)
	lw $t1, -1896($fp)
	sw $t0, 0($t1)
	lw $t0, -1896($fp)
	lw $t1, 0($t0)
	sw $t1, -1900($fp)
	li $t0, 30427
	sw $t0, -1904($fp)
	addi $t0, $fp, -1552
	sw $t0, -1908($fp)
	li $t0, 7
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1908($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1904($fp)
	lw $t1, -1920($fp)
	sw $t0, 0($t1)
	lw $t0, -1920($fp)
	lw $t1, 0($t0)
	sw $t1, -1924($fp)
	li $t0, 32939
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	li $t0, 48809
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -1948($fp)
	li $t0, 26034
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1960($fp)
	li $t0, 39101
	sw $t0, -1964($fp)
	addi $t0, $fp, -1564
	sw $t0, -1968($fp)
	li $t0, 0
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1968($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1964($fp)
	lw $t1, -1980($fp)
	sw $t0, 0($t1)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	li $t0, 26753
	sw $t0, -1988($fp)
	addi $t0, $fp, -1564
	sw $t0, -1992($fp)
	li $t0, 1
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1992($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1988($fp)
	lw $t1, -2004($fp)
	sw $t0, 0($t1)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	li $t0, 47433
	sw $t0, -2012($fp)
	addi $t0, $fp, -1564
	sw $t0, -2016($fp)
	li $t0, 2
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2016($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2012($fp)
	lw $t1, -2028($fp)
	sw $t0, 0($t1)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	li $t0, 17304
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	sw $t0, -2044($fp)
	li $t0, 65362
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	sw $t0, -2056($fp)
	li $t0, 8622
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -2068($fp)
	li $t0, 1120
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	li $t0, 35188
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	li $t0, 32163
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	sw $t0, -2104($fp)
label837:
	lw $t0, -1100($fp)
	sw $t0, -2108($fp)
	li $t0, 0
	sw $t0, -2112($fp)
	lw $t0, -456($fp)
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label841
	j label840
label840:
	li $t0, 1
	sw $t0, -2112($fp)
label841:
	li $t0, 0
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2108($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -924($fp)
	sw $t0, -2128($fp)
	addi $t0, $fp, -1564
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
	lw $t0, -2128($fp)
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2124($fp)
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label839
label838:
	addi $t0, $fp, -1080
	sw $t0, -2160($fp)
	li $t0, 0
	sw $t0, -2164($fp)
	li $t0, 27073
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label844
label844:
	li $t0, 27082
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -2164($fp)
label843:
	li $t0, 4
	lw $t1, -2164($fp)
	mul $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	lw $t1, 0($t0)
	sw $t1, -2184($fp)
	addi $t0, $fp, -1080
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
	li $t0, 11606
	sw $t0, -2208($fp)
	lw $t0, -2204($fp)
	lw $t1, -2208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2212($fp)
	lw $t0, -2184($fp)
	lw $t1, -2212($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $ra, -4($fp)
	lw $v0, -2216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label837
label839:
	li $t0, 45055
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	li $t0, 2605
	sw $t0, -2236($fp)
	li $t0, 0
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2240($fp)
	li $t0, 0
	lw $t1, -2240($fp)
	sub $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t1, -2244($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label845
label845:
	li $t0, 1
	sw $t0, -2232($fp)
label846:
	lw $t0, -2232($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2248($fp)
	lw $t0, -1088($fp)
	sw $t0, -2252($fp)
	li $t0, 30919
	sw $t0, -2256($fp)
	lw $t0, -2252($fp)
	lw $t1, -2256($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	addi $t0, $fp, -88
	sw $t0, -2268($fp)
	lw $t0, -2224($fp)
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
	lw $t1, -2284($fp)
	li $t2, 0
	bne $t1, $t2, label848
	j label847
label847:
	li $t0, 1
	sw $t0, -2264($fp)
label848:
	lw $t0, -2260($fp)
	lw $t1, -2264($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
label849:
	li $t0, 0
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	li $t0, 30724
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label855
label855:
	li $t0, 1
	sw $t0, -2296($fp)
label856:
	li $t0, 33267
	sw $t0, -2304($fp)
	li $t0, 0
	sw $t0, -2308($fp)
	lw $t0, -900($fp)
	sw $t0, -2312($fp)
	li $t0, 0
	lw $t1, -2312($fp)
	sub $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label859
label859:
	lw $t0, -264($fp)
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -2308($fp)
label858:
	li $t0, 6099
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -2328($fp)
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2332($fp)
	addi $sp, $sp, 20
	lw $t0, -2064($fp)
	sw $t0, -2336($fp)
	lw $t0, -2332($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label854
label854:
	li $t0, 63675
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	lw $t0, -924($fp)
	sw $t0, -2352($fp)
	li $t0, 14956
	sw $t0, -2356($fp)
	lw $t1, -2352($fp)
	lw $t2, -2356($fp)
	blt $t1, $t2, label860
	j label861
label860:
	li $t0, 1
	sw $t0, -2348($fp)
label861:
	li $t0, 32496
	sw $t0, -2360($fp)
	li $t0, 0
	lw $t1, -2360($fp)
	sub $t0, $t0, $t1
	sw $t0, -2364($fp)
	li $t0, 37797
	sw $t0, -2368($fp)
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	li $t0, 0
	sw $t0, -2376($fp)
	jal f7
	sw $v0, -2380($fp)
	addi $sp, $sp, 4
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label862
label862:
	li $t0, 1
	sw $t0, -2376($fp)
label863:
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2384($fp)
	addi $sp, $sp, 20
	lw $t1, -2384($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label853
label852:
	li $t0, 1
	sw $t0, -2292($fp)
label853:
	lw $t0, -2292($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label851
label850:
label864:
	li $t0, 0
	sw $t0, -2392($fp)
	lw $t0, -2064($fp)
	sw $t0, -2396($fp)
	li $t0, 45383
	sw $t0, -2400($fp)
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	add $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label870
label870:
	lw $t0, -264($fp)
	sw $t0, -2408($fp)
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label869
label868:
	li $t0, 1
	sw $t0, -2392($fp)
label869:
	lw $t0, -2052($fp)
	sw $t0, -2412($fp)
	li $t0, 0
	sw $t0, -2416($fp)
	li $t0, 0
	sw $t0, -2420($fp)
	li $t0, 1738
	sw $t0, -2424($fp)
	lw $t0, -2100($fp)
	sw $t0, -2428($fp)
	lw $t1, -2424($fp)
	lw $t2, -2428($fp)
	bge $t1, $t2, label873
	j label874
label873:
	li $t0, 1
	sw $t0, -2420($fp)
label874:
	lw $t0, -1944($fp)
	sw $t0, -2432($fp)
	lw $t1, -2420($fp)
	lw $t2, -2432($fp)
	blt $t1, $t2, label871
	j label872
label871:
	li $t0, 1
	sw $t0, -2416($fp)
label872:
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2436($fp)
	addi $sp, $sp, 16
	lw $t1, -2436($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label866
label867:
	li $t0, 31078
	sw $t0, -2440($fp)
	li $t0, 50547
	sw $t0, -2444($fp)
	lw $t0, -2440($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2448($fp)
	li $t0, 5882
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	li $t0, 0
	sw $t0, -2460($fp)
	li $t0, 53315
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label875
label875:
	li $t0, 1
	sw $t0, -2460($fp)
label876:
	li $t0, 21947
	sw $t0, -2468($fp)
	lw $t0, -2460($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	addi $t0, $fp, -1520
	sw $t0, -2476($fp)
	lw $t0, -120($fp)
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
	li $t0, 0
	sw $t0, -2496($fp)
	li $t0, 0
	sw $t0, -2500($fp)
	lw $t0, -456($fp)
	sw $t0, -2504($fp)
	li $t0, 4643
	sw $t0, -2508($fp)
	lw $t1, -2504($fp)
	lw $t2, -2508($fp)
	bgt $t1, $t2, label879
	j label880
label879:
	li $t0, 1
	sw $t0, -2500($fp)
label880:
	li $t0, 11764
	sw $t0, -2512($fp)
	lw $t1, -2500($fp)
	lw $t2, -2512($fp)
	bgt $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -2496($fp)
label878:
	lw $t0, -1944($fp)
	sw $t0, -2516($fp)
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2520($fp)
	addi $sp, $sp, 20
	lw $t1, -2456($fp)
	lw $t2, -2520($fp)
	bge $t1, $t2, label865
	j label866
label865:
	lw $t0, -288($fp)
	sw $t0, -2524($fp)
	lw $t0, -1208($fp)
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2532($fp)
	lw $t0, -876($fp)
	sw $t0, -2536($fp)
	lw $t0, -2532($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -2544($fp)
	j label864
label866:
	j label849
label851:
	addi $t0, $fp, -1520
	sw $t0, -2548($fp)
	li $t0, 0
	sw $t0, -2552($fp)
	li $t0, 4
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, 0($t0)
	sw $t1, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1520
	sw $t0, -2568($fp)
	li $t0, 1
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
	addi $t0, $fp, -1520
	sw $t0, -2588($fp)
	li $t0, 2
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
	addi $t0, $fp, -1520
	sw $t0, -2608($fp)
	li $t0, 3
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
	addi $t0, $fp, -1520
	sw $t0, -2628($fp)
	li $t0, 4
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
	addi $t0, $fp, -1520
	sw $t0, -2648($fp)
	li $t0, 5
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
	addi $t0, $fp, -1520
	sw $t0, -2668($fp)
	li $t0, 6
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
	addi $t0, $fp, -1552
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
	addi $t0, $fp, -1552
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
	addi $t0, $fp, -1552
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
	addi $t0, $fp, -1552
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
	addi $t0, $fp, -1552
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
	addi $t0, $fp, -1552
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
	addi $t0, $fp, -1552
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
	addi $t0, $fp, -1552
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
	lw $t0, -1932($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1944($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1956($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1564
	sw $t0, -2860($fp)
	li $t0, 0
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
	addi $t0, $fp, -1564
	sw $t0, -2880($fp)
	li $t0, 1
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
	addi $t0, $fp, -1564
	sw $t0, -2900($fp)
	li $t0, 2
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
	lw $t0, -2040($fp)
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2052($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2064($fp)
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2076($fp)
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2088($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2100($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2944($fp)
	li $t0, 11590
	sw $t0, -2948($fp)
	li $t0, 0
	lw $t1, -2948($fp)
	sub $t0, $t0, $t1
	sw $t0, -2952($fp)
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	addi $t0, $fp, -88
	sw $t0, -2960($fp)
	lw $t0, -276($fp)
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
	li $t0, 0
	lw $t1, -2976($fp)
	sub $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t1, -2956($fp)
	lw $t2, -2980($fp)
	ble $t1, $t2, label881
	j label882
label881:
	li $t0, 1
	sw $t0, -2944($fp)
label882:
	lw $ra, -4($fp)
	lw $v0, -2944($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -1520
	sw $t0, -2984($fp)
	li $t0, 0
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
	addi $t0, $fp, -1520
	sw $t0, -3004($fp)
	li $t0, 1
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
	addi $t0, $fp, -1520
	sw $t0, -3024($fp)
	li $t0, 2
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
	addi $t0, $fp, -1520
	sw $t0, -3044($fp)
	li $t0, 3
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
	addi $t0, $fp, -1520
	sw $t0, -3064($fp)
	li $t0, 4
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
	addi $t0, $fp, -1520
	sw $t0, -3084($fp)
	li $t0, 5
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
	addi $t0, $fp, -1520
	sw $t0, -3104($fp)
	li $t0, 6
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
	lw $t0, -3120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1552
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	li $t0, 4
	lw $t1, -3128($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
	lw $t0, -3140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1552
	sw $t0, -3144($fp)
	li $t0, 1
	sw $t0, -3148($fp)
	li $t0, 4
	lw $t1, -3148($fp)
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	lw $t1, -3144($fp)
	add $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	lw $t1, 0($t0)
	sw $t1, -3160($fp)
	lw $t0, -3160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1552
	sw $t0, -3164($fp)
	li $t0, 2
	sw $t0, -3168($fp)
	li $t0, 4
	lw $t1, -3168($fp)
	mul $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, -3164($fp)
	add $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	lw $t1, 0($t0)
	sw $t1, -3180($fp)
	lw $t0, -3180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1552
	sw $t0, -3184($fp)
	li $t0, 3
	sw $t0, -3188($fp)
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
	lw $t0, -3200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1552
	sw $t0, -3204($fp)
	li $t0, 4
	sw $t0, -3208($fp)
	li $t0, 4
	lw $t1, -3208($fp)
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, 0($t0)
	sw $t1, -3220($fp)
	lw $t0, -3220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1552
	sw $t0, -3224($fp)
	li $t0, 5
	sw $t0, -3228($fp)
	li $t0, 4
	lw $t1, -3228($fp)
	mul $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	lw $t1, -3224($fp)
	add $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	lw $t1, 0($t0)
	sw $t1, -3240($fp)
	lw $t0, -3240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1552
	sw $t0, -3244($fp)
	li $t0, 6
	sw $t0, -3248($fp)
	li $t0, 4
	lw $t1, -3248($fp)
	mul $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	lw $t1, -3244($fp)
	add $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	lw $t1, 0($t0)
	sw $t1, -3260($fp)
	lw $t0, -3260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1552
	sw $t0, -3264($fp)
	li $t0, 7
	sw $t0, -3268($fp)
	li $t0, 4
	lw $t1, -3268($fp)
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	lw $t1, 0($t0)
	sw $t1, -3280($fp)
	lw $t0, -3280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1932($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1944($fp)
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1956($fp)
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1564
	sw $t0, -3296($fp)
	li $t0, 0
	sw $t0, -3300($fp)
	li $t0, 4
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	lw $t1, -3296($fp)
	add $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	lw $t1, 0($t0)
	sw $t1, -3312($fp)
	lw $t0, -3312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1564
	sw $t0, -3316($fp)
	li $t0, 1
	sw $t0, -3320($fp)
	li $t0, 4
	lw $t1, -3320($fp)
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	lw $t0, -3332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1564
	sw $t0, -3336($fp)
	li $t0, 2
	sw $t0, -3340($fp)
	li $t0, 4
	lw $t1, -3340($fp)
	mul $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, -3336($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	lw $t1, 0($t0)
	sw $t1, -3352($fp)
	lw $t0, -3352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2040($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2052($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2064($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2076($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2088($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2100($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3380($fp)
	lw $t0, -2040($fp)
	sw $t0, -3384($fp)
	lw $t1, -3384($fp)
	li $t2, 0
	bne $t1, $t2, label886
	j label884
label886:
	lw $t0, -888($fp)
	sw $t0, -3388($fp)
	lw $t1, -3388($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label884
label885:
	li $t0, 12186
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label884
label883:
	li $t0, 1
	sw $t0, -3380($fp)
label884:
	li $t0, 20065
	sw $t0, -3396($fp)
	li $t0, 5716
	sw $t0, -3400($fp)
	li $t0, 55638
	sw $t0, -3404($fp)
	lw $t0, -3400($fp)
	lw $t1, -3404($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	li $t0, 50938
	sw $t0, -3412($fp)
	lw $t0, -3408($fp)
	lw $t1, -3412($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	addi $t0, $fp, -1080
	sw $t0, -3420($fp)
	li $t0, 0
	sw $t0, -3424($fp)
	li $t0, 4
	lw $t1, -3424($fp)
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, 0($t0)
	sw $t1, -3436($fp)
	addi $sp, $sp, -4
	lw $t0, -3396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3440($fp)
	addi $sp, $sp, 16
	lw $t0, -264($fp)
	sw $t0, -3444($fp)
	lw $t0, -3440($fp)
	lw $t1, -3444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3448($fp)
	addi $t0, $fp, -88
	sw $t0, -3452($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -3468($fp)
	sub $t0, $t0, $t1
	sw $t0, -3472($fp)
	li $t0, 61937
	sw $t0, -3476($fp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3480($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -3480($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label887:
	li $t0, 0
	sw $t0, -3484($fp)
	lw $t0, -2064($fp)
	sw $t0, -3488($fp)
	li $t0, 62544
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	li $t0, 65120
	sw $t0, -3500($fp)
	lw $t0, -3496($fp)
	lw $t1, -3500($fp)
	mul $t0, $t0, $t1
	sw $t0, -3504($fp)
	li $t0, 14791
	sw $t0, -3508($fp)
	lw $t1, -3504($fp)
	lw $t2, -3508($fp)
	blt $t1, $t2, label891
	j label892
label891:
	li $t0, 1
	sw $t0, -3484($fp)
label892:
	lw $t0, -264($fp)
	sw $t0, -3512($fp)
	li $t0, 0
	lw $t1, -3512($fp)
	sub $t0, $t0, $t1
	sw $t0, -3516($fp)
	li $t0, 48058
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -888($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -3532($fp)
	jal f7
	sw $v0, -3536($fp)
	addi $sp, $sp, 4
	li $t0, 5684
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	add $t0, $t0, $t1
	sw $t0, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	lw $t0, -480($fp)
	sw $t0, -3552($fp)
	li $t0, 27928
	sw $t0, -3556($fp)
	lw $t1, -3552($fp)
	lw $t2, -3556($fp)
	bne $t1, $t2, label893
	j label895
label895:
	lw $t0, -456($fp)
	sw $t0, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label894
label893:
	li $t0, 1
	sw $t0, -3548($fp)
label894:
	li $t0, 0
	sw $t0, -3564($fp)
	lw $t0, -912($fp)
	sw $t0, -3568($fp)
	lw $t1, -3568($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label896
label896:
	li $t0, 1
	sw $t0, -3564($fp)
label897:
	lw $t0, -924($fp)
	sw $t0, -3572($fp)
	lw $t0, -3564($fp)
	lw $t1, -3572($fp)
	sub $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -876($fp)
	sw $t0, -3580($fp)
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3584($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3588($fp)
	addi $sp, $sp, 20
	lw $t1, -3484($fp)
	lw $t2, -3588($fp)
	beq $t1, $t2, label890
	j label889
label890:
	li $t0, 58652
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label888
label888:
label898:
	lw $t0, -1956($fp)
	sw $t0, -3596($fp)
	li $t0, 0
	sw $t0, -3600($fp)
	lw $t0, -1944($fp)
	sw $t0, -3604($fp)
	li $t0, 0
	lw $t1, -3604($fp)
	sub $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t1, -3608($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label901
label901:
	li $t0, 1
	sw $t0, -3600($fp)
label902:
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3612($fp)
	li $t0, 0
	lw $t1, -3612($fp)
	sub $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -276($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -3624($fp)
	li $t0, 0
	sw $t0, -3628($fp)
	li $t0, 0
	sw $t0, -3632($fp)
	lw $t0, -912($fp)
	sw $t0, -3636($fp)
	lw $t1, -3636($fp)
	li $t2, 0
	bne $t1, $t2, label906
	j label905
label905:
	li $t0, 1
	sw $t0, -3632($fp)
label906:
	li $t0, 7069
	sw $t0, -3640($fp)
	lw $t0, -3632($fp)
	lw $t1, -3640($fp)
	sub $t0, $t0, $t1
	sw $t0, -3644($fp)
	addi $t0, $fp, -1520
	sw $t0, -3648($fp)
	lw $t0, -1100($fp)
	sw $t0, -3652($fp)
	li $t0, 4
	lw $t1, -3652($fp)
	mul $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	lw $t1, -3648($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	lw $t1, 0($t0)
	sw $t1, -3664($fp)
	li $t0, 0
	sw $t0, -3668($fp)
	li $t0, 0
	sw $t0, -3672($fp)
	lw $t0, -900($fp)
	sw $t0, -3676($fp)
	lw $t0, -456($fp)
	sw $t0, -3680($fp)
	lw $t1, -3676($fp)
	lw $t2, -3680($fp)
	bge $t1, $t2, label910
	j label911
label910:
	li $t0, 1
	sw $t0, -3672($fp)
label911:
	li $t0, 0
	sw $t0, -3684($fp)
	addi $t0, $fp, -88
	sw $t0, -3688($fp)
	li $t0, 3
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
	li $t0, 1862
	sw $t0, -3708($fp)
	lw $t1, -3704($fp)
	lw $t2, -3708($fp)
	blt $t1, $t2, label912
	j label913
label912:
	li $t0, 1
	sw $t0, -3684($fp)
label913:
	li $t0, 36320
	sw $t0, -3712($fp)
	li $t0, 0
	lw $t1, -3712($fp)
	sub $t0, $t0, $t1
	sw $t0, -3716($fp)
	li $t0, 0
	sw $t0, -3720($fp)
	li $t0, 0
	sw $t0, -3724($fp)
	li $t0, 8072
	sw $t0, -3728($fp)
	lw $t1, -3728($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label916
label916:
	li $t0, 1
	sw $t0, -3724($fp)
label917:
	lw $t0, -264($fp)
	sw $t0, -3732($fp)
	lw $t1, -3724($fp)
	lw $t2, -3732($fp)
	beq $t1, $t2, label914
	j label915
label914:
	li $t0, 1
	sw $t0, -3720($fp)
label915:
	addi $sp, $sp, -4
	lw $t0, -3672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3736($fp)
	addi $sp, $sp, 20
	lw $t1, -3736($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label908
label909:
	lw $t0, 8($fp)
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label908
label907:
	li $t0, 1
	sw $t0, -3668($fp)
label908:
	lw $t0, -2088($fp)
	sw $t0, -3744($fp)
	addi $sp, $sp, -4
	lw $t0, -3644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3748($fp)
	addi $sp, $sp, 20
	li $t0, 59337
	sw $t0, -3752($fp)
	lw $t1, -3748($fp)
	lw $t2, -3752($fp)
	blt $t1, $t2, label903
	j label904
label903:
	li $t0, 1
	sw $t0, -3628($fp)
label904:
	li $t0, 38180
	sw $t0, -3756($fp)
	li $t0, 20320
	sw $t0, -3760($fp)
	lw $t0, -3756($fp)
	lw $t1, -3760($fp)
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	addi $sp, $sp, -4
	lw $t0, -3624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3764($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3768($fp)
	addi $sp, $sp, 16
	lw $t1, -3616($fp)
	lw $t2, -3768($fp)
	bgt $t1, $t2, label899
	j label900
label899:
	li $t0, 0
	sw $t0, -3772($fp)
	li $t0, 0
	sw $t0, -3776($fp)
	li $t0, 60779
	sw $t0, -3780($fp)
	lw $t0, -120($fp)
	sw $t0, -3784($fp)
	lw $t0, -3780($fp)
	lw $t1, -3784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3788($fp)
	lw $t0, 4($fp)
	sw $t0, -3792($fp)
	lw $t0, -3788($fp)
	lw $t1, -3792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3796($fp)
	li $t0, 0
	sw $t0, -3800($fp)
	li $t0, 62185
	sw $t0, -3804($fp)
	li $t0, 0
	lw $t1, -3804($fp)
	sub $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t1, -3808($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label922
label922:
	li $t0, 1
	sw $t0, -3800($fp)
label923:
	addi $t0, $fp, -1520
	sw $t0, -3812($fp)
	li $t0, 3
	sw $t0, -3816($fp)
	li $t0, 4
	lw $t1, -3816($fp)
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, -3812($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, 0($t0)
	sw $t1, -3828($fp)
	lw $t0, -912($fp)
	sw $t0, -3832($fp)
	li $t0, 0
	lw $t1, -3832($fp)
	sub $t0, $t0, $t1
	sw $t0, -3836($fp)
	li $t0, 6547
	sw $t0, -3840($fp)
	lw $t0, -3836($fp)
	lw $t1, -3840($fp)
	sub $t0, $t0, $t1
	sw $t0, -3844($fp)
	addi $sp, $sp, -4
	lw $t0, -3796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3844($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3848($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	lw $t0, -912($fp)
	sw $t0, -3860($fp)
	li $t0, 11665
	sw $t0, -3864($fp)
	lw $t1, -3860($fp)
	lw $t2, -3864($fp)
	bgt $t1, $t2, label926
	j label927
label926:
	li $t0, 1
	sw $t0, -3856($fp)
label927:
	lw $t0, -936($fp)
	sw $t0, -3868($fp)
	lw $t1, -3856($fp)
	lw $t2, -3868($fp)
	ble $t1, $t2, label924
	j label925
label924:
	li $t0, 1
	sw $t0, -3852($fp)
label925:
	li $t0, 0
	sw $t0, -3872($fp)
	addi $t0, $fp, -1520
	sw $t0, -3876($fp)
	lw $t0, -1932($fp)
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
	li $t0, 51521
	sw $t0, -3896($fp)
	li $t0, 0
	lw $t1, -3896($fp)
	sub $t0, $t0, $t1
	sw $t0, -3900($fp)
	li $t0, 0
	lw $t1, -3900($fp)
	sub $t0, $t0, $t1
	sw $t0, -3904($fp)
	li $t0, 43518
	sw $t0, -3908($fp)
	addi $sp, $sp, -4
	lw $t0, -3892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3912($fp)
	addi $sp, $sp, 16
	lw $t0, -900($fp)
	sw $t0, -3916($fp)
	lw $t1, -3912($fp)
	lw $t2, -3916($fp)
	ble $t1, $t2, label928
	j label929
label928:
	li $t0, 1
	sw $t0, -3872($fp)
label929:
	li $t0, 0
	sw $t0, -3920($fp)
	li $t0, 47117
	sw $t0, -3924($fp)
	lw $t0, -456($fp)
	sw $t0, -3928($fp)
	lw $t0, -3924($fp)
	lw $t1, -3928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3932($fp)
	li $t0, 28453
	sw $t0, -3936($fp)
	lw $t0, -3932($fp)
	lw $t1, -3936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3940($fp)
	li $t0, 0
	sw $t0, -3944($fp)
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 6506
	sw $t0, -3952($fp)
	li $t0, 18833
	sw $t0, -3956($fp)
	lw $t1, -3952($fp)
	lw $t2, -3956($fp)
	bgt $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -3948($fp)
label936:
	lw $t0, -2076($fp)
	sw $t0, -3960($fp)
	lw $t1, -3948($fp)
	lw $t2, -3960($fp)
	bge $t1, $t2, label933
	j label934
label933:
	li $t0, 1
	sw $t0, -3944($fp)
label934:
	addi $t0, $fp, -88
	sw $t0, -3964($fp)
	lw $t0, -936($fp)
	sw $t0, -3968($fp)
	li $t0, 4
	lw $t1, -3968($fp)
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, -3964($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, 0($t0)
	sw $t1, -3980($fp)
	li $t0, 0
	sw $t0, -3984($fp)
	addi $t0, $fp, -88
	sw $t0, -3988($fp)
	lw $t0, -288($fp)
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
	lw $t0, 4($fp)
	sw $t0, -4008($fp)
	lw $t1, -4004($fp)
	lw $t2, -4008($fp)
	ble $t1, $t2, label937
	j label938
label937:
	li $t0, 1
	sw $t0, -3984($fp)
label938:
	addi $sp, $sp, -4
	lw $t0, -3940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4012($fp)
	addi $sp, $sp, 20
	lw $t1, -4012($fp)
	li $t2, 0
	bne $t1, $t2, label932
	j label931
label932:
	li $t0, 30423
	sw $t0, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label931
label930:
	li $t0, 1
	sw $t0, -3920($fp)
label931:
	addi $sp, $sp, -4
	lw $t0, -3848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4020($fp)
	addi $sp, $sp, 20
	lw $t1, -4020($fp)
	li $t2, 0
	bne $t1, $t2, label921
	j label920
label920:
	li $t0, 1
	sw $t0, -3776($fp)
label921:
	li $t0, 0
	lw $t1, -3776($fp)
	sub $t0, $t0, $t1
	sw $t0, -4024($fp)
	addi $t0, $fp, -1552
	sw $t0, -4028($fp)
	lw $t0, 12($fp)
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
	li $t0, 37446
	sw $t0, -4048($fp)
	li $t0, 8835
	sw $t0, -4052($fp)
	lw $t0, -4048($fp)
	lw $t1, -4052($fp)
	mul $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4044($fp)
	lw $t1, -4056($fp)
	add $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t1, -4024($fp)
	lw $t2, -4060($fp)
	bne $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -3772($fp)
label919:
	j label898
label900:
	j label887
label889:
label939:
	li $t0, 57787
	sw $t0, -4064($fp)
	li $t0, 37031
	sw $t0, -4068($fp)
	lw $t0, -480($fp)
	sw $t0, -4072($fp)
	li $t0, 0
	lw $t1, -4072($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4068($fp)
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	li $t0, 0
	lw $t1, -4080($fp)
	sub $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4064($fp)
	lw $t1, -4084($fp)
	mul $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t1, -4088($fp)
	li $t2, 0
	bne $t1, $t2, label940
	j label941
label940:
	li $t0, 0
	sw $t0, -4092($fp)
	li $t0, 23627
	sw $t0, -4096($fp)
	lw $t0, -912($fp)
	sw $t0, -4100($fp)
	lw $t0, -4096($fp)
	lw $t1, -4100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4104($fp)
	lw $t0, -900($fp)
	sw $t0, -4108($fp)
	lw $t1, -4104($fp)
	lw $t2, -4108($fp)
	beq $t1, $t2, label942
	j label944
label944:
	li $t0, 20179
	sw $t0, -4112($fp)
	lw $t1, -4112($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label943
label945:
	lw $t0, -264($fp)
	sw $t0, -4116($fp)
	lw $t1, -4116($fp)
	li $t2, 0
	bne $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -4092($fp)
label943:
	lw $t0, -4092($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -4120($fp)
	j label939
label941:
label946:
	jal f7
	sw $v0, -4124($fp)
	addi $sp, $sp, 4
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label947
label947:
label949:
	li $t0, 42715
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label951
label950:
label952:
	li $t0, 6149
	sw $t0, -4132($fp)
	li $t0, 13295
	sw $t0, -4136($fp)
	li $t0, 0
	sw $t0, -4140($fp)
	li $t0, 21367
	sw $t0, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label956
	j label957
label957:
	lw $t0, -1208($fp)
	sw $t0, -4148($fp)
	lw $t1, -4148($fp)
	li $t2, 0
	bne $t1, $t2, label955
	j label956
label955:
	li $t0, 1
	sw $t0, -4140($fp)
label956:
	li $t0, 0
	sw $t0, -4152($fp)
	lw $t0, -912($fp)
	sw $t0, -4156($fp)
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label961
	j label960
label961:
	lw $t0, -1088($fp)
	sw $t0, -4160($fp)
	lw $t1, -4160($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label960
label960:
	li $t0, 26469
	sw $t0, -4164($fp)
	lw $t1, -4164($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -4152($fp)
label959:
	li $t0, 0
	sw $t0, -4168($fp)
	jal f7
	sw $v0, -4172($fp)
	addi $sp, $sp, 4
	lw $t1, -4172($fp)
	li $t2, 0
	bne $t1, $t2, label964
	j label963
label964:
	lw $t0, 8($fp)
	sw $t0, -4176($fp)
	lw $t1, -4176($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label963
label962:
	li $t0, 1
	sw $t0, -4168($fp)
label963:
	li $t0, 0
	sw $t0, -4180($fp)
	li $t0, 15359
	sw $t0, -4184($fp)
	lw $t1, -4184($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label965
label965:
	li $t0, 1
	sw $t0, -4180($fp)
label966:
	addi $sp, $sp, -4
	lw $t0, -4140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4188($fp)
	addi $sp, $sp, 20
	lw $t0, -4136($fp)
	lw $t1, -4188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4192($fp)
	li $t0, 0
	lw $t1, -4192($fp)
	sub $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4132($fp)
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t1, -4200($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label954
label953:
	li $t0, 0
	sw $t0, -4204($fp)
	addi $t0, $fp, -48
	sw $t0, -4208($fp)
	li $t0, 3
	sw $t0, -4212($fp)
	li $t0, 4
	lw $t1, -4212($fp)
	mul $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	lw $t1, 0($t0)
	sw $t1, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	addi $t0, $fp, -1072
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
	lw $t1, -4248($fp)
	li $t2, 0
	bne $t1, $t2, label970
	j label969
label969:
	li $t0, 1
	sw $t0, -4228($fp)
label970:
	lw $t1, -4224($fp)
	lw $t2, -4228($fp)
	beq $t1, $t2, label967
	j label968
label967:
	li $t0, 1
	sw $t0, -4204($fp)
label968:
	j label952
label954:
	j label949
label951:
	j label946
label948:
	j label822
label824:
	j label816
label818:
	j label811
label813:
	li $t0, 55596
	sw $t0, -4252($fp)
	lw $t1, -4252($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label972
label974:
	lw $t0, -444($fp)
	sw $t0, -4256($fp)
	addi $t0, $fp, -88
	sw $t0, -4260($fp)
	li $t0, 4
	sw $t0, -4264($fp)
	li $t0, 4
	lw $t1, -4264($fp)
	mul $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, -4260($fp)
	add $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, 0($t0)
	sw $t1, -4276($fp)
	lw $t0, -4256($fp)
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label972
label971:
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 8950
	sw $t0, -4288($fp)
	lw $t1, -4288($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label975
label975:
	li $t0, 1
	sw $t0, -4284($fp)
label976:
	li $t0, 50981
	sw $t0, -4292($fp)
	lw $t0, -4284($fp)
	lw $t1, -4292($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	li $t0, 0
	sw $t0, -4300($fp)
	li $t0, 39316
	sw $t0, -4304($fp)
	li $t0, 28188
	sw $t0, -4308($fp)
	lw $t0, -4304($fp)
	lw $t1, -4308($fp)
	add $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label977
	j label979
label979:
	lw $t0, -900($fp)
	sw $t0, -4316($fp)
	lw $t1, -4316($fp)
	li $t2, 0
	bne $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -4300($fp)
label978:
	li $t0, 8893
	sw $t0, -4320($fp)
	li $t0, 50205
	sw $t0, -4324($fp)
	lw $t0, -4320($fp)
	lw $t1, -4324($fp)
	mul $t0, $t0, $t1
	sw $t0, -4328($fp)
	li $t0, 22965
	sw $t0, -4332($fp)
	lw $t0, -4328($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4336($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4340($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -48
	sw $t0, -4344($fp)
	lw $t0, -888($fp)
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -4352($fp)
	li $t0, 4
	lw $t1, -4352($fp)
	mul $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, -4344($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	lw $t1, 0($t0)
	sw $t1, -4364($fp)
	lw $t0, -4340($fp)
	lw $t1, -4364($fp)
	mul $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $ra, -4($fp)
	lw $v0, -4368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label973
label972:
	addi $t0, $fp, -48
	sw $t0, -4372($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -4392($fp)
	lw $t0, -480($fp)
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
	lw $t0, -4388($fp)
	lw $t1, -4408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4412($fp)
	li $t0, 0
	sw $t0, -4416($fp)
	jal f7
	sw $v0, -4420($fp)
	addi $sp, $sp, 4
	lw $t1, -4420($fp)
	li $t2, 0
	bne $t1, $t2, label981
	j label980
label980:
	li $t0, 1
	sw $t0, -4416($fp)
label981:
	lw $t0, -4412($fp)
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4424($fp)
label973:
	lw $t0, -120($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4436($fp)
	li $t0, 0
	sw $t0, -4440($fp)
	li $t0, 4
	lw $t1, -4440($fp)
	mul $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	lw $t1, -4436($fp)
	add $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, 0($t0)
	sw $t1, -4452($fp)
	lw $t0, -4452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4456($fp)
	li $t0, 1
	sw $t0, -4460($fp)
	li $t0, 4
	lw $t1, -4460($fp)
	mul $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, -4456($fp)
	add $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	lw $t1, 0($t0)
	sw $t1, -4472($fp)
	lw $t0, -4472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4476($fp)
	li $t0, 2
	sw $t0, -4480($fp)
	li $t0, 4
	lw $t1, -4480($fp)
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	lw $t1, 0($t0)
	sw $t1, -4492($fp)
	lw $t0, -4492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4496($fp)
	li $t0, 3
	sw $t0, -4500($fp)
	li $t0, 4
	lw $t1, -4500($fp)
	mul $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, -4496($fp)
	add $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	lw $t1, 0($t0)
	sw $t1, -4512($fp)
	lw $t0, -4512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4516($fp)
	li $t0, 4
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
	lw $t0, -4532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4548($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
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
	lw $t0, -4584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4588($fp)
	li $t0, 2
	sw $t0, -4592($fp)
	li $t0, 4
	lw $t1, -4592($fp)
	mul $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	lw $t1, -4588($fp)
	add $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	lw $t1, 0($t0)
	sw $t1, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4608($fp)
	li $t0, 3
	sw $t0, -4612($fp)
	li $t0, 4
	lw $t1, -4612($fp)
	mul $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	lw $t1, -4608($fp)
	add $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	lw $t1, 0($t0)
	sw $t1, -4624($fp)
	lw $t0, -4624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4628($fp)
	li $t0, 4
	sw $t0, -4632($fp)
	li $t0, 4
	lw $t1, -4632($fp)
	mul $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	lw $t1, 0($t0)
	sw $t1, -4644($fp)
	lw $t0, -4644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4648($fp)
	li $t0, 5
	sw $t0, -4652($fp)
	li $t0, 4
	lw $t1, -4652($fp)
	mul $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	lw $t1, -4648($fp)
	add $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	lw $t1, 0($t0)
	sw $t1, -4664($fp)
	lw $t0, -4664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4684($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -4704($fp)
	li $t0, 1
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
	lw $t0, -4720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4724($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -4744($fp)
	li $t0, 3
	sw $t0, -4748($fp)
	li $t0, 4
	lw $t1, -4748($fp)
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, 0($t0)
	sw $t1, -4760($fp)
	lw $t0, -4760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4764($fp)
	li $t0, 4
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
	lw $t0, -4780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4784($fp)
	li $t0, 5
	sw $t0, -4788($fp)
	li $t0, 4
	lw $t1, -4788($fp)
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, -4784($fp)
	add $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	lw $t1, 0($t0)
	sw $t1, -4800($fp)
	lw $t0, -4800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4804($fp)
	li $t0, 6
	sw $t0, -4808($fp)
	li $t0, 4
	lw $t1, -4808($fp)
	mul $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	lw $t1, -4804($fp)
	add $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	lw $t1, 0($t0)
	sw $t1, -4820($fp)
	lw $t0, -4820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4824($fp)
	li $t0, 7
	sw $t0, -4828($fp)
	li $t0, 4
	lw $t1, -4828($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, -4824($fp)
	add $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	lw $t1, 0($t0)
	sw $t1, -4840($fp)
	lw $t0, -4840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4844($fp)
	li $t0, 8
	sw $t0, -4848($fp)
	li $t0, 4
	lw $t1, -4848($fp)
	mul $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, -4844($fp)
	add $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	lw $t1, 0($t0)
	sw $t1, -4860($fp)
	lw $t0, -4860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4864($fp)
	li $t0, 9
	sw $t0, -4868($fp)
	li $t0, 4
	lw $t1, -4868($fp)
	mul $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	lw $t1, -4864($fp)
	add $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	lw $t1, 0($t0)
	sw $t1, -4880($fp)
	lw $t0, -4880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4884($fp)
	li $t0, 0
	sw $t0, -4888($fp)
	li $t0, 4
	lw $t1, -4888($fp)
	mul $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, -4884($fp)
	add $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	lw $t1, 0($t0)
	sw $t1, -4900($fp)
	lw $t0, -4900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4904($fp)
	li $t0, 1
	sw $t0, -4908($fp)
	li $t0, 4
	lw $t1, -4908($fp)
	mul $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	lw $t1, -4904($fp)
	add $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	lw $t1, 0($t0)
	sw $t1, -4920($fp)
	lw $t0, -4920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4924($fp)
	li $t0, 2
	sw $t0, -4928($fp)
	li $t0, 4
	lw $t1, -4928($fp)
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	lw $t1, -4924($fp)
	add $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	lw $t1, 0($t0)
	sw $t1, -4940($fp)
	lw $t0, -4940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4944($fp)
	li $t0, 3
	sw $t0, -4948($fp)
	li $t0, 4
	lw $t1, -4948($fp)
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, -4944($fp)
	add $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, 0($t0)
	sw $t1, -4960($fp)
	lw $t0, -4960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4964($fp)
	li $t0, 4
	sw $t0, -4968($fp)
	li $t0, 4
	lw $t1, -4968($fp)
	mul $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	lw $t1, 0($t0)
	sw $t1, -4980($fp)
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4984($fp)
	li $t0, 5
	sw $t0, -4988($fp)
	li $t0, 4
	lw $t1, -4988($fp)
	mul $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, -4984($fp)
	add $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, 0($t0)
	sw $t1, -5000($fp)
	lw $t0, -5000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -912($fp)
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5028($fp)
	li $t0, 6286
	sw $t0, -5032($fp)
	lw $t0, -876($fp)
	sw $t0, -5036($fp)
	lw $t0, -5032($fp)
	lw $t1, -5036($fp)
	sub $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t1, -5040($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label983
label984:
	lw $t0, -936($fp)
	sw $t0, -5044($fp)
	lw $t1, -5044($fp)
	li $t2, 0
	bne $t1, $t2, label982
	j label983
label982:
	li $t0, 1
	sw $t0, -5028($fp)
label983:
	li $t0, 40220
	sw $t0, -5048($fp)
	lw $t0, -900($fp)
	sw $t0, -5052($fp)
	lw $t0, -5048($fp)
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, 8($fp)
	sw $t0, -5060($fp)
	lw $t0, -5056($fp)
	lw $t1, -5060($fp)
	add $t0, $t0, $t1
	sw $t0, -5064($fp)
	li $t0, 0
	sw $t0, -5068($fp)
	lw $t0, -900($fp)
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -5076($fp)
	li $t0, 14034
	sw $t0, -5080($fp)
	lw $t0, -120($fp)
	sw $t0, -5084($fp)
	lw $t0, -5080($fp)
	lw $t1, -5084($fp)
	sub $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -264($fp)
	sw $t0, -5092($fp)
	lw $t0, -5088($fp)
	lw $t1, -5092($fp)
	sub $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -288($fp)
	sw $t0, -5100($fp)
	lw $t0, -456($fp)
	sw $t0, -5104($fp)
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	mul $t0, $t0, $t1
	sw $t0, -5108($fp)
	li $t0, 31385
	sw $t0, -5112($fp)
	lw $t0, -5108($fp)
	lw $t1, -5112($fp)
	mul $t0, $t0, $t1
	sw $t0, -5116($fp)
	addi $sp, $sp, -4
	lw $t0, -5076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5116($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5120($fp)
	addi $sp, $sp, 16
	lw $t1, -5120($fp)
	li $t2, 0
	bne $t1, $t2, label987
	j label986
label987:
	li $t0, 40273
	sw $t0, -5124($fp)
	lw $t1, -5124($fp)
	li $t2, 0
	bne $t1, $t2, label985
	j label986
label985:
	li $t0, 1
	sw $t0, -5068($fp)
label986:
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5068($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5128($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -5128($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3524
	li $t0, 11768
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 63847
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 26465
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 54483
	sw $t0, -104($fp)
	addi $t0, $fp, -24
	sw $t0, -108($fp)
	li $t0, 0
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
	li $t0, 4461
	sw $t0, -128($fp)
	addi $t0, $fp, -24
	sw $t0, -132($fp)
	li $t0, 1
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
	li $t0, 39761
	sw $t0, -152($fp)
	addi $t0, $fp, -24
	sw $t0, -156($fp)
	li $t0, 2
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
	li $t0, 4307
	sw $t0, -176($fp)
	addi $t0, $fp, -24
	sw $t0, -180($fp)
	li $t0, 3
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
	li $t0, 30930
	sw $t0, -200($fp)
	addi $t0, $fp, -24
	sw $t0, -204($fp)
	li $t0, 4
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
	li $t0, 61128
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 55986
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 13922
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 4879
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 43992
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 3982
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 7968
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 38504
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 12876
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 58173
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 61470
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
	li $t0, 52192
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
	li $t0, 20825
	sw $t0, -392($fp)
	addi $t0, $fp, -36
	sw $t0, -396($fp)
	li $t0, 2
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
	li $t0, 4884
	sw $t0, -416($fp)
	addi $t0, $fp, -56
	sw $t0, -420($fp)
	li $t0, 0
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
	li $t0, 37638
	sw $t0, -440($fp)
	addi $t0, $fp, -56
	sw $t0, -444($fp)
	li $t0, 1
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
	li $t0, 55561
	sw $t0, -464($fp)
	addi $t0, $fp, -56
	sw $t0, -468($fp)
	li $t0, 2
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
	li $t0, 23676
	sw $t0, -488($fp)
	addi $t0, $fp, -56
	sw $t0, -492($fp)
	li $t0, 3
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
	li $t0, 40465
	sw $t0, -512($fp)
	addi $t0, $fp, -56
	sw $t0, -516($fp)
	li $t0, 4
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
	li $t0, 21410
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 37710
	sw $t0, -548($fp)
	addi $t0, $fp, -64
	sw $t0, -552($fp)
	li $t0, 0
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
	li $t0, 15202
	sw $t0, -572($fp)
	addi $t0, $fp, -64
	sw $t0, -576($fp)
	li $t0, 1
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
	li $t0, 61630
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 43996
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	addi $t0, $fp, -56
	sw $t0, -620($fp)
	li $t0, 26971
	sw $t0, -624($fp)
	lw $t0, -336($fp)
	sw $t0, -628($fp)
	lw $t0, -624($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	li $t0, 4
	lw $t1, -632($fp)
	mul $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	lw $t1, 0($t0)
	sw $t1, -644($fp)
	addi $t0, $fp, -56
	sw $t0, -648($fp)
	addi $t0, $fp, -36
	sw $t0, -652($fp)
	lw $t0, -276($fp)
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
	li $t0, 4
	lw $t1, -668($fp)
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, 0($t0)
	sw $t1, -680($fp)
	lw $t0, -644($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	li $t0, 0
	sw $t0, -688($fp)
	addi $t0, $fp, -36
	sw $t0, -692($fp)
	li $t0, 0
	sw $t0, -696($fp)
	jal f11
	sw $v0, -700($fp)
	addi $sp, $sp, 4
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label991
label992:
	li $t0, 59942
	sw $t0, -704($fp)
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label990
	j label991
label990:
	li $t0, 1
	sw $t0, -696($fp)
label991:
	li $t0, 4
	lw $t1, -696($fp)
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	lw $t1, -692($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	lw $t1, 0($t0)
	sw $t1, -716($fp)
	addi $t0, $fp, -64
	sw $t0, -720($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -736($fp)
	sub $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t1, -716($fp)
	lw $t2, -740($fp)
	beq $t1, $t2, label988
	j label989
label988:
	li $t0, 1
	sw $t0, -688($fp)
label989:
	lw $t0, -612($fp)
	sw $t0, -744($fp)
	lw $t0, -336($fp)
	sw $t0, -748($fp)
	lw $t0, -300($fp)
	sw $t0, -752($fp)
	lw $t0, -748($fp)
	lw $t1, -752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -756($fp)
	li $t0, 0
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	li $t0, 44687
	sw $t0, -764($fp)
	lw $t0, -72($fp)
	sw $t0, -768($fp)
	lw $t0, -764($fp)
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	li $t0, 20225
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	lw $t0, -540($fp)
	sw $t0, -788($fp)
	lw $t0, -336($fp)
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label995
	j label994
label995:
	li $t0, 64403
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label993
	j label994
label993:
	li $t0, 1
	sw $t0, -784($fp)
label994:
	addi $sp, $sp, -4
	lw $t0, -744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -804($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -36
	sw $t0, -808($fp)
	li $t0, 0
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
	lw $t0, -804($fp)
	lw $t1, -824($fp)
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -228($fp)
	sw $t0, -832($fp)
	lw $t0, -828($fp)
	lw $t1, -832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -836($fp)
	addi $t0, $fp, -24
	sw $t0, -840($fp)
	lw $t0, -600($fp)
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
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -836($fp)
	lw $t1, -860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -864($fp)
	li $t0, 10676
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	li $t0, 43719
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 45159
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	li $t0, 54668
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 47702
	sw $t0, -956($fp)
	addi $t0, $fp, -904
	sw $t0, -960($fp)
	li $t0, 0
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
	li $t0, 53127
	sw $t0, -980($fp)
	addi $t0, $fp, -904
	sw $t0, -984($fp)
	li $t0, 1
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
	li $t0, 27637
	sw $t0, -1004($fp)
	addi $t0, $fp, -904
	sw $t0, -1008($fp)
	li $t0, 2
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
	li $t0, 60578
	sw $t0, -1028($fp)
	addi $t0, $fp, -904
	sw $t0, -1032($fp)
	li $t0, 3
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
	li $t0, 45764
	sw $t0, -1052($fp)
	addi $t0, $fp, -904
	sw $t0, -1056($fp)
	li $t0, 4
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
	li $t0, 23571
	sw $t0, -1076($fp)
	addi $t0, $fp, -904
	sw $t0, -1080($fp)
	li $t0, 5
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
	li $t0, 47234
	sw $t0, -1100($fp)
	addi $t0, $fp, -904
	sw $t0, -1104($fp)
	li $t0, 6
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1104($fp)
	lw $t1, -1112($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1100($fp)
	lw $t1, -1116($fp)
	sw $t0, 0($t1)
	lw $t0, -1116($fp)
	lw $t1, 0($t0)
	sw $t1, -1120($fp)
	li $t0, 1054
	sw $t0, -1124($fp)
	addi $t0, $fp, -904
	sw $t0, -1128($fp)
	li $t0, 7
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
	li $t0, 28455
	sw $t0, -1148($fp)
	addi $t0, $fp, -904
	sw $t0, -1152($fp)
	li $t0, 8
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
	li $t0, 19336
	sw $t0, -1172($fp)
	addi $t0, $fp, -904
	sw $t0, -1176($fp)
	li $t0, 9
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
	li $t0, 56615
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	jal f7
	sw $v0, -1208($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -904
	sw $t0, -1212($fp)
	lw $t0, -240($fp)
	sw $t0, -1216($fp)
	li $t0, 52131
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	li $t0, 59801
	sw $t0, -1228($fp)
	lw $t0, -1224($fp)
	lw $t1, -1228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1232($fp)
	lw $t0, -912($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -1240($fp)
	lw $t0, -1200($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -1248($fp)
	li $t0, 0
	sw $t0, -1252($fp)
	addi $t0, $fp, -36
	sw $t0, -1256($fp)
	lw $t0, -276($fp)
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
	lw $t0, -240($fp)
	sw $t0, -1276($fp)
	lw $t1, -1272($fp)
	lw $t2, -1276($fp)
	ble $t1, $t2, label996
	j label997
label996:
	li $t0, 1
	sw $t0, -1252($fp)
label997:
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1252($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1280($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -1280($fp)
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, 0($t0)
	sw $t1, -1292($fp)
	lw $t0, -1208($fp)
	lw $t1, -1292($fp)
	sub $t0, $t0, $t1
	sw $t0, -1296($fp)
	li $t0, 12489
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 24306
	sw $t0, -1348($fp)
	addi $t0, $fp, -1332
	sw $t0, -1352($fp)
	li $t0, 0
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
	li $t0, 9468
	sw $t0, -1372($fp)
	addi $t0, $fp, -1332
	sw $t0, -1376($fp)
	li $t0, 1
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
	li $t0, 8583
	sw $t0, -1396($fp)
	addi $t0, $fp, -1332
	sw $t0, -1400($fp)
	li $t0, 2
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
	li $t0, 2766
	sw $t0, -1420($fp)
	addi $t0, $fp, -1332
	sw $t0, -1424($fp)
	li $t0, 3
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
	li $t0, 36439
	sw $t0, -1444($fp)
	addi $t0, $fp, -1332
	sw $t0, -1448($fp)
	li $t0, 4
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
	li $t0, 2989
	sw $t0, -1468($fp)
	addi $t0, $fp, -1332
	sw $t0, -1472($fp)
	li $t0, 5
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
	li $t0, 7692
	sw $t0, -1492($fp)
	addi $t0, $fp, -1332
	sw $t0, -1496($fp)
	li $t0, 6
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
	li $t0, 52357
	sw $t0, -1516($fp)
	addi $t0, $fp, -1332
	sw $t0, -1520($fp)
	li $t0, 7
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
	li $t0, 1856
	sw $t0, -1540($fp)
	addi $t0, $fp, -1332
	sw $t0, -1544($fp)
	li $t0, 8
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
label998:
	li $t0, 0
	sw $t0, -1564($fp)
	addi $t0, $fp, -1332
	sw $t0, -1568($fp)
	lw $t0, -252($fp)
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
	lw $t1, -1584($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1001
label1001:
	li $t0, 1
	sw $t0, -1564($fp)
label1002:
	li $t0, 0
	sw $t0, -1588($fp)
	lw $t0, -240($fp)
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label1004
	j label1003
label1003:
	li $t0, 1
	sw $t0, -1588($fp)
label1004:
	lw $t0, -1564($fp)
	lw $t1, -1588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1596($fp)
	li $t0, 52379
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label1000
label999:
	addi $t0, $fp, -56
	sw $t0, -1608($fp)
	li $t0, 0
	sw $t0, -1612($fp)
	lw $t0, -336($fp)
	sw $t0, -1616($fp)
	lw $t0, -264($fp)
	sw $t0, -1620($fp)
	lw $t1, -1616($fp)
	lw $t2, -1620($fp)
	beq $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -1612($fp)
label1006:
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
	addi $t0, $fp, -36
	sw $t0, -1636($fp)
	lw $t0, -336($fp)
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
	lw $t0, -1632($fp)
	lw $t1, -1652($fp)
	sub $t0, $t0, $t1
	sw $t0, -1656($fp)
	j label998
label1000:
	lw $t0, -1340($fp)
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1332
	sw $t0, -1664($fp)
	li $t0, 0
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
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1332
	sw $t0, -1684($fp)
	li $t0, 1
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
	addi $t0, $fp, -1332
	sw $t0, -1704($fp)
	li $t0, 2
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
	addi $t0, $fp, -1332
	sw $t0, -1724($fp)
	li $t0, 3
	sw $t0, -1728($fp)
	li $t0, 4
	lw $t1, -1728($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1332
	sw $t0, -1744($fp)
	li $t0, 4
	sw $t0, -1748($fp)
	li $t0, 4
	lw $t1, -1748($fp)
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	lw $t1, 0($t0)
	sw $t1, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1332
	sw $t0, -1764($fp)
	li $t0, 5
	sw $t0, -1768($fp)
	li $t0, 4
	lw $t1, -1768($fp)
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1332
	sw $t0, -1784($fp)
	li $t0, 6
	sw $t0, -1788($fp)
	li $t0, 4
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	lw $t1, -1784($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	lw $t1, 0($t0)
	sw $t1, -1800($fp)
	lw $t0, -1800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1332
	sw $t0, -1804($fp)
	li $t0, 7
	sw $t0, -1808($fp)
	li $t0, 4
	lw $t1, -1808($fp)
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	lw $t1, 0($t0)
	sw $t1, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1332
	sw $t0, -1824($fp)
	li $t0, 8
	sw $t0, -1828($fp)
	li $t0, 4
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, 0($t0)
	sw $t1, -1840($fp)
	lw $t0, -1840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1340($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -1852($fp)
	lw $ra, -4($fp)
	lw $v0, -1852($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 7047
	sw $t0, -1860($fp)
	lw $t1, -1860($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1009
label1009:
	lw $t0, -336($fp)
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -1856($fp)
label1008:
	lw $t0, -1856($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -1872($fp)
	li $t0, 31654
	sw $t0, -1876($fp)
	li $t0, 0
	sw $t0, -1880($fp)
	li $t0, 9837
	sw $t0, -1884($fp)
	li $t0, 6746
	sw $t0, -1888($fp)
	lw $t0, -1884($fp)
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	li $t0, 6855
	sw $t0, -1896($fp)
	lw $t1, -1892($fp)
	lw $t2, -1896($fp)
	beq $t1, $t2, label1013
	j label1014
label1013:
	li $t0, 1
	sw $t0, -1880($fp)
label1014:
	li $t0, 0
	sw $t0, -1900($fp)
	lw $t0, -936($fp)
	sw $t0, -1904($fp)
	li $t0, 17723
	sw $t0, -1908($fp)
	lw $t1, -1904($fp)
	lw $t2, -1908($fp)
	blt $t1, $t2, label1015
	j label1016
label1015:
	li $t0, 1
	sw $t0, -1900($fp)
label1016:
	li $t0, 0
	sw $t0, -1912($fp)
	lw $t0, -600($fp)
	sw $t0, -1916($fp)
	li $t0, 27123
	sw $t0, -1920($fp)
	lw $t1, -1916($fp)
	lw $t2, -1920($fp)
	ble $t1, $t2, label1017
	j label1019
label1019:
	lw $t0, -336($fp)
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1018
label1017:
	li $t0, 1
	sw $t0, -1912($fp)
label1018:
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1928($fp)
	addi $sp, $sp, 16
	lw $t0, -1876($fp)
	lw $t1, -1928($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	addi $t0, $fp, -36
	sw $t0, -1936($fp)
	li $t0, 57539
	sw $t0, -1940($fp)
	li $t0, 59873
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1948($fp)
	li $t0, 4
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	lw $t0, -1932($fp)
	lw $t1, -1960($fp)
	sub $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1011
label1010:
	li $t0, 0
	sw $t0, -1968($fp)
	lw $t0, -912($fp)
	sw $t0, -1972($fp)
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label1021
	j label1020
label1020:
	li $t0, 1
	sw $t0, -1968($fp)
label1021:
	lw $t0, -540($fp)
	sw $t0, -1976($fp)
	lw $t0, -1968($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	j label1012
label1011:
label1022:
	jal f11
	sw $v0, -1984($fp)
	addi $sp, $sp, 4
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1025
label1025:
	lw $t0, -948($fp)
	sw $t0, -1988($fp)
	lw $t0, -240($fp)
	sw $t0, -1992($fp)
	lw $t0, -1988($fp)
	lw $t1, -1992($fp)
	sub $t0, $t0, $t1
	sw $t0, -1996($fp)
	li $t0, 34492
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1024
label1026:
	li $t0, 52581
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	jal f7
	sw $v0, -2020($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -56
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
	lw $t0, -2020($fp)
	lw $t1, -2040($fp)
	sub $t0, $t0, $t1
	sw $t0, -2044($fp)
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 34280
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label1032
	j label1031
label1031:
	li $t0, 1
	sw $t0, -2048($fp)
label1032:
	lw $t1, -2044($fp)
	lw $t2, -2048($fp)
	bge $t1, $t2, label1029
	j label1030
label1029:
	li $t0, 1
	sw $t0, -2016($fp)
label1030:
	li $t0, 41155
	sw $t0, -2056($fp)
	lw $t1, -2016($fp)
	lw $t2, -2056($fp)
	beq $t1, $t2, label1027
	j label1028
label1027:
	li $t0, 1
	sw $t0, -2012($fp)
label1028:
	j label1022
label1024:
label1012:
	lw $t0, -912($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -904
	sw $t0, -2076($fp)
	li $t0, 0
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
	addi $t0, $fp, -904
	sw $t0, -2096($fp)
	li $t0, 1
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
	addi $t0, $fp, -904
	sw $t0, -2116($fp)
	li $t0, 2
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
	addi $t0, $fp, -904
	sw $t0, -2136($fp)
	li $t0, 3
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
	addi $t0, $fp, -904
	sw $t0, -2156($fp)
	li $t0, 4
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
	addi $t0, $fp, -904
	sw $t0, -2176($fp)
	li $t0, 5
	sw $t0, -2180($fp)
	li $t0, 4
	lw $t1, -2180($fp)
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	lw $t0, -2192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -904
	sw $t0, -2196($fp)
	li $t0, 6
	sw $t0, -2200($fp)
	li $t0, 4
	lw $t1, -2200($fp)
	mul $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	lw $t1, -2196($fp)
	add $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	lw $t1, 0($t0)
	sw $t1, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -904
	sw $t0, -2216($fp)
	li $t0, 7
	sw $t0, -2220($fp)
	li $t0, 4
	lw $t1, -2220($fp)
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	lw $t1, 0($t0)
	sw $t1, -2232($fp)
	lw $t0, -2232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -904
	sw $t0, -2236($fp)
	li $t0, 8
	sw $t0, -2240($fp)
	li $t0, 4
	lw $t1, -2240($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, 0($t0)
	sw $t1, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -904
	sw $t0, -2256($fp)
	li $t0, 9
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
	lw $t0, -2272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 20983
	sw $t0, -2276($fp)
	li $t0, 0
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $ra, -4($fp)
	lw $v0, -2280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 53616
	sw $t0, -2284($fp)
	lw $t1, -2284($fp)
	li $t2, 0
	bne $t1, $t2, label1038
	j label1036
label1038:
	addi $t0, $fp, -64
	sw $t0, -2288($fp)
	li $t0, 0
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
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1036
label1037:
	li $t0, 47882
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1036
label1036:
	lw $t0, -264($fp)
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1034
label1033:
	li $t0, 0
	sw $t0, -2316($fp)
	jal f11
	sw $v0, -2320($fp)
	addi $sp, $sp, 4
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label1040
	j label1039
label1039:
	li $t0, 1
	sw $t0, -2316($fp)
label1040:
	li $t0, 0
	sw $t0, -2324($fp)
	lw $t0, -240($fp)
	sw $t0, -2328($fp)
	li $t0, 0
	lw $t1, -2328($fp)
	sub $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label1041
	j label1042
label1041:
	li $t0, 1
	sw $t0, -2324($fp)
label1042:
	lw $t0, -2316($fp)
	lw $t1, -2324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2336($fp)
	j label1035
label1034:
	lw $t0, -228($fp)
	sw $t0, -2340($fp)
	li $t0, 0
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
label1035:
label1043:
	li $t0, 0
	sw $t0, -2348($fp)
	lw $t0, -228($fp)
	sw $t0, -2352($fp)
	lw $t0, -912($fp)
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	li $t0, 28253
	sw $t0, -2364($fp)
	lw $t1, -2360($fp)
	lw $t2, -2364($fp)
	beq $t1, $t2, label1048
	j label1049
label1048:
	li $t0, 1
	sw $t0, -2348($fp)
label1049:
	li $t0, 0
	sw $t0, -2368($fp)
	li $t0, 53307
	sw $t0, -2372($fp)
	lw $t0, -600($fp)
	sw $t0, -2376($fp)
	lw $t1, -2372($fp)
	lw $t2, -2376($fp)
	bgt $t1, $t2, label1052
	j label1051
label1052:
	lw $t0, -912($fp)
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label1050
	j label1051
label1050:
	li $t0, 1
	sw $t0, -2368($fp)
label1051:
	li $t0, 0
	sw $t0, -2384($fp)
	li $t0, 0
	sw $t0, -2388($fp)
	lw $t0, -924($fp)
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label1056
	j label1055
label1055:
	li $t0, 1
	sw $t0, -2388($fp)
label1056:
	lw $t0, -240($fp)
	sw $t0, -2396($fp)
	lw $t1, -2388($fp)
	lw $t2, -2396($fp)
	bne $t1, $t2, label1053
	j label1054
label1053:
	li $t0, 1
	sw $t0, -2384($fp)
label1054:
	addi $t0, $fp, -56
	sw $t0, -2400($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -2420($fp)
	lw $t0, -96($fp)
	sw $t0, -2424($fp)
	li $t0, 0
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label1058
	j label1057
label1057:
	li $t0, 1
	sw $t0, -2420($fp)
label1058:
	addi $sp, $sp, -4
	lw $t0, -2368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2432($fp)
	addi $sp, $sp, 20
	li $t0, 34651
	sw $t0, -2436($fp)
	lw $t0, -2432($fp)
	lw $t1, -2436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2440($fp)
	lw $t0, -276($fp)
	sw $t0, -2444($fp)
	li $t0, 44723
	sw $t0, -2448($fp)
	lw $t0, -2444($fp)
	lw $t1, -2448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2452($fp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2456($fp)
	addi $sp, $sp, 16
	lw $t0, -228($fp)
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	li $t0, 56296
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1045
label1047:
	addi $t0, $fp, -64
	sw $t0, -2476($fp)
	li $t0, 0
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
	li $t0, 58153
	sw $t0, -2496($fp)
	lw $t0, -2492($fp)
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label1046
	j label1045
label1046:
	lw $t0, -912($fp)
	sw $t0, -2504($fp)
	li $t0, 29187
	sw $t0, -2508($fp)
	lw $t0, -2504($fp)
	lw $t1, -2508($fp)
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1045
label1044:
	li $t0, 0
	sw $t0, -2516($fp)
	li $t0, 0
	sw $t0, -2520($fp)
	li $t0, 22121
	sw $t0, -2524($fp)
	li $t0, 24271
	sw $t0, -2528($fp)
	lw $t0, -276($fp)
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t1, -2524($fp)
	lw $t2, -2536($fp)
	ble $t1, $t2, label1062
	j label1063
label1062:
	li $t0, 1
	sw $t0, -2520($fp)
label1063:
	addi $t0, $fp, -36
	sw $t0, -2540($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -2556($fp)
	sub $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t1, -2520($fp)
	lw $t2, -2560($fp)
	bne $t1, $t2, label1061
	j label1060
label1061:
	addi $t0, $fp, -904
	sw $t0, -2564($fp)
	lw $t0, -336($fp)
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
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label1059
	j label1060
label1059:
	li $t0, 1
	sw $t0, -2516($fp)
label1060:
	j label1043
label1045:
	lw $t0, -72($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2596($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -2616($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -2636($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -2656($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -2676($fp)
	li $t0, 4
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
	lw $t0, -228($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2736($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -2756($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -2776($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -2796($fp)
	li $t0, 0
	sw $t0, -2800($fp)
	li $t0, 4
	lw $t1, -2800($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	lw $t1, -2796($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, 0($t0)
	sw $t1, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2816($fp)
	li $t0, 1
	sw $t0, -2820($fp)
	li $t0, 4
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, -2816($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, 0($t0)
	sw $t1, -2832($fp)
	lw $t0, -2832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2836($fp)
	li $t0, 2
	sw $t0, -2840($fp)
	li $t0, 4
	lw $t1, -2840($fp)
	mul $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	lw $t1, 0($t0)
	sw $t1, -2852($fp)
	lw $t0, -2852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2856($fp)
	li $t0, 3
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
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2876($fp)
	li $t0, 4
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
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	lw $t0, -600($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2948($fp)
	lw $t0, -312($fp)
	sw $t0, -2952($fp)
	lw $t0, -324($fp)
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	li $t0, 46700
	sw $t0, -2968($fp)
	li $t0, 0
	lw $t1, -2968($fp)
	sub $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label1068
	j label1067
label1067:
	li $t0, 1
	sw $t0, -2964($fp)
label1068:
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 34108
	sw $t0, -2980($fp)
	li $t0, 63056
	sw $t0, -2984($fp)
	lw $t1, -2980($fp)
	lw $t2, -2984($fp)
	blt $t1, $t2, label1069
	j label1071
label1071:
	lw $t0, -264($fp)
	sw $t0, -2988($fp)
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label1069
	j label1070
label1069:
	li $t0, 1
	sw $t0, -2976($fp)
label1070:
	addi $sp, $sp, -4
	lw $t0, -2960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2992($fp)
	addi $sp, $sp, 16
	lw $t0, -2952($fp)
	lw $t1, -2992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2996($fp)
	lw $t0, -336($fp)
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label1064
	j label1066
label1066:
	lw $t0, -288($fp)
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label1064
	j label1065
label1064:
	li $t0, 1
	sw $t0, -2948($fp)
label1065:
	lw $ra, -4($fp)
	lw $v0, -2948($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -96($fp)
	sw $t0, -3012($fp)
	li $t0, 0
	lw $t1, -3012($fp)
	sub $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label1072
	j label1073
label1072:
	lw $t0, -252($fp)
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	lw $t0, -264($fp)
	sw $t0, -3028($fp)
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label1076
	j label1075
label1075:
	li $t0, 1
	sw $t0, -3024($fp)
label1076:
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	addi $t0, $fp, -36
	sw $t0, -3036($fp)
	addi $t0, $fp, -24
	sw $t0, -3040($fp)
	li $t0, 4
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
	li $t0, 4
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, 0($t0)
	sw $t1, -3068($fp)
	lw $t0, -3032($fp)
	lw $t1, -3068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3072($fp)
label1073:
	lw $t0, -72($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -3088($fp)
	li $t0, 0
	sw $t0, -3092($fp)
	li $t0, 4
	lw $t1, -3092($fp)
	mul $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, -3088($fp)
	add $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, 0($t0)
	sw $t1, -3104($fp)
	lw $t0, -3104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -3108($fp)
	li $t0, 1
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
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -3128($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -3148($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -3168($fp)
	li $t0, 4
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
	lw $t0, -228($fp)
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3228($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -3248($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -3268($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -3288($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -3308($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -3328($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -3348($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -3368($fp)
	li $t0, 4
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
	lw $t0, -540($fp)
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3392($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -3412($fp)
	li $t0, 1
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
	lw $t0, -600($fp)
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3440($fp)
	li $t0, 0
	sw $t0, -3444($fp)
	li $t0, 15656
	sw $t0, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	lw $t0, -336($fp)
	sw $t0, -3456($fp)
	lw $t0, -324($fp)
	sw $t0, -3460($fp)
	lw $t0, -3456($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t1, -3464($fp)
	li $t2, 0
	bne $t1, $t2, label1084
	j label1083
label1084:
	li $t0, 29167
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label1082
	j label1083
label1082:
	li $t0, 1
	sw $t0, -3452($fp)
label1083:
	li $t0, 7578
	sw $t0, -3472($fp)
	li $t0, 0
	lw $t1, -3472($fp)
	sub $t0, $t0, $t1
	sw $t0, -3476($fp)
	li $t0, 0
	lw $t1, -3476($fp)
	sub $t0, $t0, $t1
	sw $t0, -3480($fp)
	li $t0, 47437
	sw $t0, -3484($fp)
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 13157
	sw $t0, -3492($fp)
	li $t0, 31958
	sw $t0, -3496($fp)
	lw $t0, -3492($fp)
	lw $t1, -3496($fp)
	add $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	li $t2, 0
	bne $t1, $t2, label1087
	j label1086
label1087:
	li $t0, 8184
	sw $t0, -3504($fp)
	lw $t1, -3504($fp)
	li $t2, 0
	bne $t1, $t2, label1085
	j label1086
label1085:
	li $t0, 1
	sw $t0, -3488($fp)
label1086:
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3488($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3508($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3508($fp)
	sub $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3448($fp)
	lw $t1, -3512($fp)
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	li $t0, 0
	lw $t1, -3516($fp)
	sub $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t1, -3520($fp)
	li $t2, 0
	bne $t1, $t2, label1081
	j label1080
label1080:
	li $t0, 1
	sw $t0, -3444($fp)
label1081:
	li $t0, 0
	lw $t1, -3444($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1079
label1079:
	lw $t0, -84($fp)
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label1078
	j label1077
label1077:
	li $t0, 1
	sw $t0, -3440($fp)
label1078:
	lw $ra, -4($fp)
	lw $v0, -3440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -180
	li $t0, 35518
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 39812
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 36745
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
	li $t0, 0
	sw $t0, -64($fp)
	lw $t0, -16($fp)
	sw $t0, -68($fp)
	li $t0, 63067
	sw $t0, -72($fp)
	lw $t1, -68($fp)
	lw $t2, -72($fp)
	blt $t1, $t2, label1091
	j label1092
label1091:
	li $t0, 1
	sw $t0, -64($fp)
label1092:
	li $t0, 0
	sw $t0, -76($fp)
	addi $t0, $fp, -8
	sw $t0, -80($fp)
	li $t0, 0
	sw $t0, -84($fp)
	li $t0, 4
	lw $t1, -84($fp)
	mul $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	lw $t1, -80($fp)
	add $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t1, 0($t0)
	sw $t1, -96($fp)
	li $t0, 37931
	sw $t0, -100($fp)
	lw $t1, -96($fp)
	lw $t2, -100($fp)
	beq $t1, $t2, label1093
	j label1094
label1093:
	li $t0, 1
	sw $t0, -76($fp)
label1094:
	li $t0, 9678
	sw $t0, -104($fp)
	lw $t0, -16($fp)
	sw $t0, -108($fp)
	lw $t0, -104($fp)
	lw $t1, -108($fp)
	add $t0, $t0, $t1
	sw $t0, -112($fp)
	addi $sp, $sp, -4
	lw $t0, -64($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -112($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -116($fp)
	addi $sp, $sp, 16
	lw $t1, -116($fp)
	li $t2, 0
	bne $t1, $t2, label1090
	j label1089
label1090:
	li $t0, 14552
	sw $t0, -120($fp)
	lw $t1, -120($fp)
	li $t2, 0
	bne $t1, $t2, label1088
	j label1089
label1088:
	li $t0, 1
	sw $t0, -60($fp)
label1089:
	li $t0, 19000
	sw $t0, -124($fp)
	lw $t0, -16($fp)
	sw $t0, -128($fp)
	lw $t0, -124($fp)
	lw $t1, -128($fp)
	sub $t0, $t0, $t1
	sw $t0, -132($fp)
	li $t0, 3094
	sw $t0, -136($fp)
	lw $t0, -132($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	li $t0, 17864
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -148($fp)
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -148($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -152($fp)
	addi $sp, $sp, 16
	lw $t0, -16($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	lw $t0, -180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 53005
	sw $t0, -184($fp)
	lw $ra, -4($fp)
	lw $v0, -184($fp)
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
	jal f12
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
