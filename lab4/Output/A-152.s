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
	addi $sp, $sp, -4
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -508
	li $t0, 59815
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 15466
	sw $t0, -52($fp)
	addi $t0, $fp, -36
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
	li $t0, 57120
	sw $t0, -76($fp)
	addi $t0, $fp, -36
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
	li $t0, 56165
	sw $t0, -100($fp)
	addi $t0, $fp, -36
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
	li $t0, 22285
	sw $t0, -124($fp)
	addi $t0, $fp, -36
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
	li $t0, 5395
	sw $t0, -148($fp)
	addi $t0, $fp, -36
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
	li $t0, 29698
	sw $t0, -172($fp)
	addi $t0, $fp, -36
	sw $t0, -176($fp)
	li $t0, 5
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
	li $t0, 41067
	sw $t0, -196($fp)
	addi $t0, $fp, -36
	sw $t0, -200($fp)
	li $t0, 6
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
	li $t0, 26510
	sw $t0, -220($fp)
	addi $t0, $fp, -36
	sw $t0, -224($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -244($fp)
	li $t0, 9516
	sw $t0, -248($fp)
	addi $t0, $fp, -36
	sw $t0, -252($fp)
	li $t0, 3
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
	lw $t0, -248($fp)
	lw $t1, -268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -272($fp)
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	li $t0, 9376
	sw $t0, -276($fp)
	lw $t0, -44($fp)
	sw $t0, -280($fp)
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -244($fp)
label122:
	lw $t0, -44($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -292($fp)
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 4
	lw $t1, -296($fp)
	mul $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, 0($t0)
	sw $t1, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -312($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -332($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -352($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -372($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -392($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -412($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -432($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -452($fp)
	li $t0, 0
	sw $t0, -456($fp)
	li $t0, 0
	sw $t0, -460($fp)
	lw $t0, 4($fp)
	sw $t0, -464($fp)
	lw $t0, 4($fp)
	sw $t0, -468($fp)
	lw $t1, -464($fp)
	lw $t2, -468($fp)
	bge $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -460($fp)
label130:
	li $t0, 36192
	sw $t0, -472($fp)
	li $t0, 17938
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t1, -460($fp)
	lw $t2, -480($fp)
	blt $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -456($fp)
label128:
	li $t0, 5783
	sw $t0, -484($fp)
	lw $t0, 4($fp)
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, 4($fp)
	sw $t0, -496($fp)
	lw $t0, -492($fp)
	lw $t1, -496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -500($fp)
	lw $t1, -456($fp)
	lw $t2, -500($fp)
	ble $t1, $t2, label124
	j label126
label126:
	li $t0, 34939
	sw $t0, -504($fp)
	li $t0, 0
	lw $t1, -504($fp)
	sub $t0, $t0, $t1
	sw $t0, -508($fp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -512($fp)
	addi $sp, $sp, 8
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -452($fp)
label125:
	lw $ra, -4($fp)
	lw $v0, -452($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2108
	li $t0, 50429
	sw $t0, -88($fp)
	addi $t0, $fp, -32
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
	li $t0, 16731
	sw $t0, -112($fp)
	addi $t0, $fp, -32
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
	li $t0, 35868
	sw $t0, -136($fp)
	addi $t0, $fp, -32
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
	li $t0, 7139
	sw $t0, -160($fp)
	addi $t0, $fp, -32
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
	li $t0, 4591
	sw $t0, -184($fp)
	addi $t0, $fp, -32
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
	li $t0, 47222
	sw $t0, -208($fp)
	addi $t0, $fp, -32
	sw $t0, -212($fp)
	li $t0, 5
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
	li $t0, 28971
	sw $t0, -232($fp)
	addi $t0, $fp, -32
	sw $t0, -236($fp)
	li $t0, 6
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
	li $t0, 50709
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 32623
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 53238
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 39527
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 40283
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 15573
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 56991
	sw $t0, -328($fp)
	addi $t0, $fp, -64
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
	li $t0, 34562
	sw $t0, -352($fp)
	addi $t0, $fp, -64
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
	li $t0, 31039
	sw $t0, -376($fp)
	addi $t0, $fp, -64
	sw $t0, -380($fp)
	li $t0, 2
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
	li $t0, 48575
	sw $t0, -400($fp)
	addi $t0, $fp, -64
	sw $t0, -404($fp)
	li $t0, 3
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
	li $t0, 25191
	sw $t0, -424($fp)
	addi $t0, $fp, -64
	sw $t0, -428($fp)
	li $t0, 4
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
	li $t0, 53324
	sw $t0, -448($fp)
	addi $t0, $fp, -64
	sw $t0, -452($fp)
	li $t0, 5
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
	li $t0, 53970
	sw $t0, -472($fp)
	addi $t0, $fp, -64
	sw $t0, -476($fp)
	li $t0, 6
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
	li $t0, 54889
	sw $t0, -496($fp)
	addi $t0, $fp, -64
	sw $t0, -500($fp)
	li $t0, 7
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
	li $t0, 28856
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 14944
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 64406
	sw $t0, -544($fp)
	addi $t0, $fp, -84
	sw $t0, -548($fp)
	li $t0, 0
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -548($fp)
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -544($fp)
	lw $t1, -560($fp)
	sw $t0, 0($t1)
	lw $t0, -560($fp)
	lw $t1, 0($t0)
	sw $t1, -564($fp)
	li $t0, 8395
	sw $t0, -568($fp)
	addi $t0, $fp, -84
	sw $t0, -572($fp)
	li $t0, 1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -572($fp)
	lw $t1, -580($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -568($fp)
	lw $t1, -584($fp)
	sw $t0, 0($t1)
	lw $t0, -584($fp)
	lw $t1, 0($t0)
	sw $t1, -588($fp)
	li $t0, 63708
	sw $t0, -592($fp)
	addi $t0, $fp, -84
	sw $t0, -596($fp)
	li $t0, 2
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -596($fp)
	lw $t1, -604($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -592($fp)
	lw $t1, -608($fp)
	sw $t0, 0($t1)
	lw $t0, -608($fp)
	lw $t1, 0($t0)
	sw $t1, -612($fp)
	li $t0, 8246
	sw $t0, -616($fp)
	addi $t0, $fp, -84
	sw $t0, -620($fp)
	li $t0, 3
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
	li $t0, 44587
	sw $t0, -640($fp)
	addi $t0, $fp, -84
	sw $t0, -644($fp)
	li $t0, 4
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
	li $t0, 16110
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	li $t0, 8142
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label137
label137:
	lw $t0, -296($fp)
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label136
label136:
	li $t0, 35353
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -680($fp)
label135:
	li $t0, 0
	sw $t0, -696($fp)
	addi $t0, $fp, -84
	sw $t0, -700($fp)
	li $t0, 2
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
	lw $t0, -524($fp)
	sw $t0, -720($fp)
	lw $t1, -716($fp)
	lw $t2, -720($fp)
	blt $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -696($fp)
label139:
	li $t0, 0
	sw $t0, -724($fp)
	li $t0, 14030
	sw $t0, -728($fp)
	li $t0, 13991
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label142:
	li $t0, 1003
	sw $t0, -740($fp)
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -724($fp)
label141:
	addi $sp, $sp, -4
	lw $t0, -680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -744($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -748($fp)
	li $t0, 31545
	sw $t0, -752($fp)
	lw $t1, -752($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -748($fp)
label144:
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	li $t0, 0
	sw $t0, -760($fp)
	lw $t0, 12($fp)
	sw $t0, -764($fp)
	li $t0, 37114
	sw $t0, -768($fp)
	lw $t1, -764($fp)
	lw $t2, -768($fp)
	blt $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -760($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -760($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -772($fp)
	addi $sp, $sp, 8
	li $t0, 20526
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t1, -756($fp)
	lw $t2, -780($fp)
	blt $t1, $t2, label133
	j label132
label133:
	lw $t0, -524($fp)
	sw $t0, -784($fp)
	li $t0, 64168
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -676($fp)
label132:
	li $t0, 0
	sw $t0, -796($fp)
	addi $t0, $fp, -32
	sw $t0, -800($fp)
	lw $t0, -260($fp)
	sw $t0, -804($fp)
	li $t0, 4
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, 0($t0)
	sw $t1, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label150:
	li $t0, 1
	sw $t0, -796($fp)
label151:
	li $t0, 0
	lw $t1, -796($fp)
	sub $t0, $t0, $t1
	sw $t0, -820($fp)
	li $t0, 0
	sw $t0, -824($fp)
	lw $t0, -260($fp)
	sw $t0, -828($fp)
	lw $t0, -284($fp)
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	ble $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -824($fp)
label153:
	lw $t1, -820($fp)
	lw $t2, -824($fp)
	beq $t1, $t2, label147
	j label148
label147:
	li $t0, 0
	sw $t0, -836($fp)
	li $t0, 24816
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label154
label154:
	li $t0, 1
	sw $t0, -836($fp)
label155:
	j label149
label148:
	li $t0, 0
	sw $t0, -844($fp)
	addi $t0, $fp, -84
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
	lw $t1, -864($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label156:
	li $t0, 1
	sw $t0, -844($fp)
label157:
	addi $t0, $fp, -84
	sw $t0, -868($fp)
	lw $t0, -272($fp)
	sw $t0, -872($fp)
	li $t0, 40389
	sw $t0, -876($fp)
	lw $t0, -872($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -880($fp)
	li $t0, 4
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, -868($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	lw $t0, -844($fp)
	lw $t1, -892($fp)
	mul $t0, $t0, $t1
	sw $t0, -896($fp)
label149:
	lw $t0, 12($fp)
	sw $t0, -900($fp)
	addi $t0, $fp, -64
	sw $t0, -904($fp)
	lw $t0, -320($fp)
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
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 51508
	sw $t0, -932($fp)
	li $t0, 7942
	sw $t0, -936($fp)
	lw $t1, -932($fp)
	lw $t2, -936($fp)
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -928($fp)
label164:
	lw $t0, 4($fp)
	sw $t0, -940($fp)
	lw $t1, -928($fp)
	lw $t2, -940($fp)
	beq $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -924($fp)
label162:
	li $t0, 0
	sw $t0, -944($fp)
	lw $t0, -272($fp)
	sw $t0, -948($fp)
	lw $t1, -948($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 1
	sw $t0, -944($fp)
label166:
	lw $t0, 8($fp)
	sw $t0, -952($fp)
	lw $t0, -944($fp)
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -960($fp)
	addi $sp, $sp, 16
	lw $t0, -284($fp)
	sw $t0, -964($fp)
	lw $t0, -960($fp)
	lw $t1, -964($fp)
	mul $t0, $t0, $t1
	sw $t0, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	li $t0, 33134
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -972($fp)
label168:
	lw $t0, 8($fp)
	sw $t0, -980($fp)
	lw $t0, -972($fp)
	lw $t1, -980($fp)
	sub $t0, $t0, $t1
	sw $t0, -984($fp)
	li $t0, 0
	sw $t0, -988($fp)
	lw $t0, -524($fp)
	sw $t0, -992($fp)
	li $t0, 5893
	sw $t0, -996($fp)
	li $t0, 34548
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1004($fp)
	lw $t0, -668($fp)
	sw $t0, -1008($fp)
	lw $t0, -1004($fp)
	lw $t1, -1008($fp)
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -524($fp)
	sw $t0, -1016($fp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1020($fp)
	addi $sp, $sp, 16
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label169:
	li $t0, 1
	sw $t0, -988($fp)
label170:
	lw $t0, -320($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -1028($fp)
	addi $sp, $sp, -4
	lw $t0, -984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1032($fp)
	addi $sp, $sp, 16
	lw $t0, -968($fp)
	lw $t1, -1032($fp)
	sub $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t1, -900($fp)
	lw $t2, -1036($fp)
	ble $t1, $t2, label158
	j label159
label158:
label171:
	lw $t0, -308($fp)
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 0
	sw $t0, -1044($fp)
	li $t0, 59217
	sw $t0, -1048($fp)
	lw $t0, -260($fp)
	sw $t0, -1052($fp)
	li $t0, 0
	lw $t1, -1052($fp)
	sub $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t1, -1048($fp)
	lw $t2, -1056($fp)
	ble $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -1044($fp)
label175:
	lw $t0, -1044($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -1060($fp)
	j label171
label173:
	j label160
label159:
	li $t0, 0
	sw $t0, -1064($fp)
	li $t0, 0
	sw $t0, -1068($fp)
	li $t0, 22982
	sw $t0, -1072($fp)
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -1068($fp)
label180:
	lw $t0, -284($fp)
	sw $t0, -1076($fp)
	li $t0, 0
	sw $t0, -1080($fp)
	lw $t0, -524($fp)
	sw $t0, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -1080($fp)
label182:
	lw $t0, -536($fp)
	sw $t0, -1088($fp)
	lw $t0, -1080($fp)
	lw $t1, -1088($fp)
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	li $t0, 22487
	sw $t0, -1096($fp)
	li $t0, 0
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1100($fp)
	addi $sp, $sp, -4
	lw $t0, -1076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1104($fp)
	addi $sp, $sp, 16
	lw $t1, -1068($fp)
	lw $t2, -1104($fp)
	beq $t1, $t2, label178
	j label177
label178:
	lw $t0, 8($fp)
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -1064($fp)
label177:
label160:
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
	sw $t0, -1232($fp)
	li $t0, 6
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
	lw $t0, -260($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1276($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -1296($fp)
	li $t0, 1
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
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1316($fp)
	li $t0, 2
	sw $t0, -1320($fp)
	li $t0, 4
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1336($fp)
	li $t0, 3
	sw $t0, -1340($fp)
	li $t0, 4
	lw $t1, -1340($fp)
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	lw $t1, -1336($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t1, 0($t0)
	sw $t1, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1356($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -1376($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -1396($fp)
	li $t0, 6
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
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1416($fp)
	li $t0, 7
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
	lw $t0, -524($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1444($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -1464($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -1484($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -1504($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -1524($fp)
	li $t0, 4
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
	lw $t0, -668($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	lw $t0, -272($fp)
	sw $t0, -1556($fp)
	li $t0, 0
	lw $t1, -1556($fp)
	sub $t0, $t0, $t1
	sw $t0, -1560($fp)
	li $t0, 22537
	sw $t0, -1564($fp)
	lw $t1, -1560($fp)
	lw $t2, -1564($fp)
	ble $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -1552($fp)
label184:
	li $t0, 4
	lw $t1, -1552($fp)
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $ra, -4($fp)
	lw $v0, -1580($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, -272($fp)
	sw $t0, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -1584($fp)
label186:
	addi $t0, $fp, -32
	sw $t0, -1592($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -1612($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -1632($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -1652($fp)
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	lw $t0, -260($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1756($fp)
	li $t0, 0
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
	lw $t0, -1772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1776($fp)
	li $t0, 1
	sw $t0, -1780($fp)
	li $t0, 4
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	lw $t1, 0($t0)
	sw $t1, -1792($fp)
	lw $t0, -1792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1796($fp)
	li $t0, 2
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
	lw $t0, -1812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1816($fp)
	li $t0, 3
	sw $t0, -1820($fp)
	li $t0, 4
	lw $t1, -1820($fp)
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	lw $t1, 0($t0)
	sw $t1, -1832($fp)
	lw $t0, -1832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1836($fp)
	li $t0, 4
	sw $t0, -1840($fp)
	li $t0, 4
	lw $t1, -1840($fp)
	mul $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	lw $t1, 0($t0)
	sw $t1, -1852($fp)
	lw $t0, -1852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1856($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -1876($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -1896($fp)
	li $t0, 7
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
	lw $t0, -524($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 4
	lw $t1, -1928($fp)
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, 0($t0)
	sw $t1, -1940($fp)
	lw $t0, -1940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1944($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -1964($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -1984($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -2004($fp)
	li $t0, 4
	sw $t0, -2008($fp)
	li $t0, 4
	lw $t1, -2008($fp)
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, 0($t0)
	sw $t1, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	li $t0, 37927
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -2036($fp)
label193:
	lw $t0, 4($fp)
	sw $t0, -2044($fp)
	li $t0, 21357
	sw $t0, -2048($fp)
	lw $t0, -2044($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t1, -2036($fp)
	lw $t2, -2052($fp)
	ble $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -2032($fp)
label191:
	addi $t0, $fp, -64
	sw $t0, -2056($fp)
	li $t0, 3
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
	lw $t0, 4($fp)
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t1, -2032($fp)
	lw $t2, -2080($fp)
	blt $t1, $t2, label189
	j label188
label189:
	li $t0, 0
	sw $t0, -2084($fp)
	addi $t0, $fp, -32
	sw $t0, -2088($fp)
	lw $t0, -524($fp)
	sw $t0, -2092($fp)
	li $t0, 4
	lw $t1, -2092($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label194:
	li $t0, 1
	sw $t0, -2084($fp)
label195:
	lw $t0, -272($fp)
	sw $t0, -2108($fp)
	lw $t0, -2084($fp)
	lw $t1, -2108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2112($fp)
	lw $t1, -2112($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -2028($fp)
label188:
	lw $ra, -4($fp)
	lw $v0, -2028($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1488
	li $t0, 29604
	sw $t0, -88($fp)
	addi $t0, $fp, -32
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
	li $t0, 9984
	sw $t0, -112($fp)
	addi $t0, $fp, -32
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
	li $t0, 52209
	sw $t0, -136($fp)
	addi $t0, $fp, -32
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
	li $t0, 43634
	sw $t0, -160($fp)
	addi $t0, $fp, -32
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
	li $t0, 23975
	sw $t0, -184($fp)
	addi $t0, $fp, -32
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
	li $t0, 53212
	sw $t0, -208($fp)
	addi $t0, $fp, -32
	sw $t0, -212($fp)
	li $t0, 5
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
	li $t0, 8859
	sw $t0, -232($fp)
	addi $t0, $fp, -32
	sw $t0, -236($fp)
	li $t0, 6
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
	li $t0, 8299
	sw $t0, -256($fp)
	addi $t0, $fp, -48
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
	li $t0, 61355
	sw $t0, -280($fp)
	addi $t0, $fp, -48
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
	li $t0, 44212
	sw $t0, -304($fp)
	addi $t0, $fp, -48
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
	li $t0, 39844
	sw $t0, -328($fp)
	addi $t0, $fp, -48
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
	li $t0, 32933
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 64738
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 38477
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 57749
	sw $t0, -388($fp)
	addi $t0, $fp, -84
	sw $t0, -392($fp)
	li $t0, 0
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
	li $t0, 59256
	sw $t0, -412($fp)
	addi $t0, $fp, -84
	sw $t0, -416($fp)
	li $t0, 1
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
	li $t0, 11857
	sw $t0, -436($fp)
	addi $t0, $fp, -84
	sw $t0, -440($fp)
	li $t0, 2
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
	li $t0, 32602
	sw $t0, -460($fp)
	addi $t0, $fp, -84
	sw $t0, -464($fp)
	li $t0, 3
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
	li $t0, 45228
	sw $t0, -484($fp)
	addi $t0, $fp, -84
	sw $t0, -488($fp)
	li $t0, 4
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
	li $t0, 19799
	sw $t0, -508($fp)
	addi $t0, $fp, -84
	sw $t0, -512($fp)
	li $t0, 5
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
	li $t0, 38495
	sw $t0, -532($fp)
	addi $t0, $fp, -84
	sw $t0, -536($fp)
	li $t0, 6
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
	li $t0, 14240
	sw $t0, -556($fp)
	addi $t0, $fp, -84
	sw $t0, -560($fp)
	li $t0, 7
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
	li $t0, 52933
	sw $t0, -580($fp)
	addi $t0, $fp, -84
	sw $t0, -584($fp)
	li $t0, 8
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
	li $t0, 32177
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 37223
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 9885
	sw $t0, -628($fp)
	li $t0, 0
	sw $t0, -632($fp)
	addi $t0, $fp, -84
	sw $t0, -636($fp)
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 0
	sw $t0, -644($fp)
	li $t0, 54714
	sw $t0, -648($fp)
	lw $t1, -648($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label200:
	li $t0, 1
	sw $t0, -644($fp)
label201:
	li $t0, 9614
	sw $t0, -652($fp)
	lw $t1, -644($fp)
	lw $t2, -652($fp)
	ble $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -640($fp)
label199:
	li $t0, 4
	lw $t1, -640($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, -636($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t1, 0($t0)
	sw $t1, -664($fp)
	addi $t0, $fp, -84
	sw $t0, -668($fp)
	li $t0, 2
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
	lw $t0, 8($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -692($fp)
	li $t0, 0
	sw $t0, -696($fp)
	li $t0, 31242
	sw $t0, -700($fp)
	li $t0, 0
	lw $t1, -700($fp)
	sub $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label204:
	li $t0, 20111
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -696($fp)
label203:
	addi $sp, $sp, -4
	lw $t0, -684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -712($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -48
	sw $t0, -716($fp)
	li $t0, 2
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
	lw $t0, -712($fp)
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t1, -664($fp)
	lw $t2, -736($fp)
	bgt $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -632($fp)
label197:
	li $t0, 0
	sw $t0, -740($fp)
	li $t0, 0
	sw $t0, -744($fp)
	lw $t0, -608($fp)
	sw $t0, -748($fp)
	lw $t0, -368($fp)
	sw $t0, -752($fp)
	lw $t0, -748($fp)
	lw $t1, -752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -756($fp)
	lw $t0, 12($fp)
	sw $t0, -760($fp)
	lw $t1, -756($fp)
	lw $t2, -760($fp)
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -744($fp)
label209:
	addi $sp, $sp, -4
	lw $t0, -744($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -764($fp)
	addi $sp, $sp, 8
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label206
label207:
	li $t0, 0
	sw $t0, -768($fp)
	li $t0, 20062
	sw $t0, -772($fp)
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -768($fp)
label211:
	addi $t0, $fp, -84
	sw $t0, -776($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, -608($fp)
	sw $t0, -800($fp)
	lw $t0, -368($fp)
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -620($fp)
	sw $t0, -812($fp)
	lw $t1, -808($fp)
	lw $t2, -812($fp)
	bge $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -796($fp)
label213:
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -816($fp)
	addi $sp, $sp, 16
	lw $t0, -608($fp)
	sw $t0, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	mul $t0, $t0, $t1
	sw $t0, -824($fp)
	addi $t0, $fp, -32
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
	lw $t1, -824($fp)
	lw $t2, -844($fp)
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -740($fp)
label206:
	li $t0, 0
	sw $t0, -848($fp)
	li $t0, 15881
	sw $t0, -852($fp)
	li $t0, 26480
	sw $t0, -856($fp)
	lw $t0, -380($fp)
	sw $t0, -860($fp)
	lw $t0, -856($fp)
	lw $t1, -860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -864($fp)
	lw $t0, -852($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label216
label216:
	addi $t0, $fp, -48
	sw $t0, -872($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -892($fp)
	li $t0, 36679
	sw $t0, -896($fp)
	lw $t0, -380($fp)
	sw $t0, -900($fp)
	lw $t0, -896($fp)
	lw $t1, -900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -904($fp)
	lw $t0, -368($fp)
	sw $t0, -908($fp)
	lw $t1, -904($fp)
	lw $t2, -908($fp)
	blt $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -892($fp)
label218:
	addi $t0, $fp, -84
	sw $t0, -912($fp)
	lw $t0, -620($fp)
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
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -932($fp)
	addi $sp, $sp, 16
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -848($fp)
label215:
	addi $t0, $fp, -32
	sw $t0, -936($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -956($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -976($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -996($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -1016($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -1036($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -1056($fp)
	li $t0, 6
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	lw $t0, -356($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1168($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -1188($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -1208($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -1228($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -1248($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -1268($fp)
	li $t0, 5
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
	addi $t0, $fp, -84
	sw $t0, -1288($fp)
	li $t0, 6
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
	addi $t0, $fp, -84
	sw $t0, -1308($fp)
	li $t0, 7
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
	addi $t0, $fp, -84
	sw $t0, -1328($fp)
	li $t0, 8
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
	lw $t0, -608($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1356($fp)
	li $t0, 19403
	sw $t0, -1360($fp)
	li $t0, 0
	sw $t0, -1364($fp)
	lw $t0, -356($fp)
	sw $t0, -1368($fp)
	lw $t0, -620($fp)
	sw $t0, -1372($fp)
	lw $t0, -368($fp)
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, 4($fp)
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1388($fp)
	addi $t0, $fp, -32
	sw $t0, -1392($fp)
	lw $t0, 4($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1412($fp)
	addi $sp, $sp, 16
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label221:
	li $t0, 1
	sw $t0, -1364($fp)
label222:
	addi $t0, $fp, -84
	sw $t0, -1416($fp)
	li $t0, 8
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
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1436($fp)
	addi $sp, $sp, 16
	lw $t0, -620($fp)
	sw $t0, -1440($fp)
	li $t0, 0
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1444($fp)
	li $t0, 0
	lw $t1, -1444($fp)
	sub $t0, $t0, $t1
	sw $t0, -1448($fp)
	li $t0, 8094
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -368($fp)
	sw $t0, -1460($fp)
	li $t0, 21477
	sw $t0, -1464($fp)
	lw $t1, -1460($fp)
	lw $t2, -1464($fp)
	ble $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -1456($fp)
label224:
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1468($fp)
	addi $sp, $sp, 16
	li $t0, 64631
	sw $t0, -1472($fp)
	lw $t0, -1468($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -620($fp)
	sw $t0, -1480($fp)
	li $t0, 41276
	sw $t0, -1484($fp)
	lw $t0, -1480($fp)
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1476($fp)
	lw $t1, -1488($fp)
	sub $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t1, -1436($fp)
	lw $t2, -1492($fp)
	beq $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -1356($fp)
label220:
	lw $ra, -4($fp)
	lw $v0, -1356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -372
	li $t0, 46589
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 13336
	sw $t0, -28($fp)
	addi $t0, $fp, -12
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -32($fp)
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -28($fp)
	lw $t1, -44($fp)
	sw $t0, 0($t1)
	lw $t0, -44($fp)
	lw $t1, 0($t0)
	sw $t1, -48($fp)
	li $t0, 28674
	sw $t0, -52($fp)
	addi $t0, $fp, -12
	sw $t0, -56($fp)
	li $t0, 1
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
	li $t0, 13230
	sw $t0, -76($fp)
	lw $t0, 12($fp)
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -84($fp)
	li $t0, 0
	lw $t1, -84($fp)
	sub $t0, $t0, $t1
	sw $t0, -88($fp)
	li $t0, 0
	lw $t1, -88($fp)
	sub $t0, $t0, $t1
	sw $t0, -92($fp)
	li $t0, 0
	lw $t1, -92($fp)
	sub $t0, $t0, $t1
	sw $t0, -96($fp)
	li $t0, 50559
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 38559
	sw $t0, -112($fp)
	li $t0, 0
	lw $t1, -112($fp)
	sub $t0, $t0, $t1
	sw $t0, -116($fp)
	addi $t0, $fp, -12
	sw $t0, -120($fp)
	li $t0, 1
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
	lw $t0, -116($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t1, -140($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label227
label227:
	lw $t0, 8($fp)
	sw $t0, -144($fp)
	lw $t1, -144($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -108($fp)
label226:
	addi $t0, $fp, -12
	sw $t0, -148($fp)
	li $t0, 0
	sw $t0, -152($fp)
	lw $t0, -20($fp)
	sw $t0, -156($fp)
	lw $t1, -156($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label229
label230:
	li $t0, 4265
	sw $t0, -160($fp)
	lw $t1, -160($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -152($fp)
label229:
	li $t0, 4
	lw $t1, -152($fp)
	mul $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, 0($t0)
	sw $t1, -172($fp)
	li $t0, 0
	sw $t0, -176($fp)
	li $t0, 0
	sw $t0, -180($fp)
	lw $t0, -20($fp)
	sw $t0, -184($fp)
	lw $t0, 4($fp)
	sw $t0, -188($fp)
	lw $t0, -184($fp)
	lw $t1, -188($fp)
	sub $t0, $t0, $t1
	sw $t0, -192($fp)
	li $t0, 65112
	sw $t0, -196($fp)
	lw $t1, -192($fp)
	lw $t2, -196($fp)
	bne $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -180($fp)
label235:
	li $t0, 0
	sw $t0, -200($fp)
	li $t0, 22520
	sw $t0, -204($fp)
	li $t0, 40350
	sw $t0, -208($fp)
	lw $t0, -204($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -20($fp)
	sw $t0, -216($fp)
	lw $t1, -212($fp)
	lw $t2, -216($fp)
	ble $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -200($fp)
label237:
	lw $t0, 12($fp)
	sw $t0, -220($fp)
	addi $sp, $sp, -4
	lw $t0, -180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -220($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -224($fp)
	addi $sp, $sp, 16
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label233:
	li $t0, 52616
	sw $t0, -228($fp)
	lw $t0, -20($fp)
	sw $t0, -232($fp)
	lw $t0, -228($fp)
	lw $t1, -232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -236($fp)
	lw $t0, 12($fp)
	sw $t0, -240($fp)
	lw $t0, -20($fp)
	sw $t0, -244($fp)
	lw $t0, -240($fp)
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -236($fp)
	lw $t1, -248($fp)
	sub $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -176($fp)
label232:
	li $t0, 0
	sw $t0, -256($fp)
	addi $t0, $fp, -12
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
	li $t0, 41152
	sw $t0, -280($fp)
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 27262
	sw $t0, -292($fp)
	li $t0, 20788
	sw $t0, -296($fp)
	lw $t1, -292($fp)
	lw $t2, -296($fp)
	bgt $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -288($fp)
label243:
	lw $t1, -284($fp)
	lw $t2, -288($fp)
	bne $t1, $t2, label241
	j label239
label241:
	li $t0, 37986
	sw $t0, -300($fp)
	lw $t0, 12($fp)
	sw $t0, -304($fp)
	lw $t0, -300($fp)
	lw $t1, -304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -308($fp)
	li $t0, 43144
	sw $t0, -312($fp)
	lw $t0, -308($fp)
	lw $t1, -312($fp)
	mul $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label240:
	li $t0, 47269
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -256($fp)
label239:
	lw $t0, -20($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -328($fp)
	li $t0, 0
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
	lw $t0, -344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -348($fp)
	li $t0, 1
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
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -368($fp)
	li $t0, 9129
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label244:
	li $t0, 1
	sw $t0, -368($fp)
label245:
	li $t0, 0
	lw $t1, -368($fp)
	sub $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $ra, -4($fp)
	lw $v0, -376($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1356
	li $t0, 26422
	sw $t0, -100($fp)
	addi $t0, $fp, -40
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
	li $t0, 7416
	sw $t0, -124($fp)
	addi $t0, $fp, -40
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
	li $t0, 18749
	sw $t0, -148($fp)
	addi $t0, $fp, -40
	sw $t0, -152($fp)
	li $t0, 2
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
	li $t0, 1914
	sw $t0, -172($fp)
	addi $t0, $fp, -40
	sw $t0, -176($fp)
	li $t0, 3
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
	li $t0, 26819
	sw $t0, -196($fp)
	addi $t0, $fp, -40
	sw $t0, -200($fp)
	li $t0, 4
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
	li $t0, 40226
	sw $t0, -220($fp)
	addi $t0, $fp, -40
	sw $t0, -224($fp)
	li $t0, 5
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
	li $t0, 10008
	sw $t0, -244($fp)
	addi $t0, $fp, -40
	sw $t0, -248($fp)
	li $t0, 6
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
	li $t0, 25914
	sw $t0, -268($fp)
	addi $t0, $fp, -40
	sw $t0, -272($fp)
	li $t0, 7
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
	li $t0, 15967
	sw $t0, -292($fp)
	addi $t0, $fp, -40
	sw $t0, -296($fp)
	li $t0, 8
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
	li $t0, 56597
	sw $t0, -316($fp)
	addi $t0, $fp, -72
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
	li $t0, 39250
	sw $t0, -340($fp)
	addi $t0, $fp, -72
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
	li $t0, 44641
	sw $t0, -364($fp)
	addi $t0, $fp, -72
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
	li $t0, 4292
	sw $t0, -388($fp)
	addi $t0, $fp, -72
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
	li $t0, 24273
	sw $t0, -412($fp)
	addi $t0, $fp, -72
	sw $t0, -416($fp)
	li $t0, 4
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
	li $t0, 17664
	sw $t0, -436($fp)
	addi $t0, $fp, -72
	sw $t0, -440($fp)
	li $t0, 5
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
	li $t0, 6701
	sw $t0, -460($fp)
	addi $t0, $fp, -72
	sw $t0, -464($fp)
	li $t0, 6
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
	li $t0, 18910
	sw $t0, -484($fp)
	addi $t0, $fp, -72
	sw $t0, -488($fp)
	li $t0, 7
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
	li $t0, 21929
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 29221
	sw $t0, -520($fp)
	addi $t0, $fp, -84
	sw $t0, -524($fp)
	li $t0, 0
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
	li $t0, 59260
	sw $t0, -544($fp)
	addi $t0, $fp, -84
	sw $t0, -548($fp)
	li $t0, 1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -548($fp)
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -544($fp)
	lw $t1, -560($fp)
	sw $t0, 0($t1)
	lw $t0, -560($fp)
	lw $t1, 0($t0)
	sw $t1, -564($fp)
	li $t0, 21505
	sw $t0, -568($fp)
	addi $t0, $fp, -84
	sw $t0, -572($fp)
	li $t0, 2
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -572($fp)
	lw $t1, -580($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -568($fp)
	lw $t1, -584($fp)
	sw $t0, 0($t1)
	lw $t0, -584($fp)
	lw $t1, 0($t0)
	sw $t1, -588($fp)
	li $t0, 16302
	sw $t0, -592($fp)
	addi $t0, $fp, -96
	sw $t0, -596($fp)
	li $t0, 0
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -596($fp)
	lw $t1, -604($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -592($fp)
	lw $t1, -608($fp)
	sw $t0, 0($t1)
	lw $t0, -608($fp)
	lw $t1, 0($t0)
	sw $t1, -612($fp)
	li $t0, 924
	sw $t0, -616($fp)
	addi $t0, $fp, -96
	sw $t0, -620($fp)
	li $t0, 1
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
	li $t0, 60026
	sw $t0, -640($fp)
	addi $t0, $fp, -96
	sw $t0, -644($fp)
	li $t0, 2
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
	li $t0, 57454
	sw $t0, -664($fp)
	li $t0, 0
	sw $t0, -668($fp)
	lw $t0, 4($fp)
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -668($fp)
label247:
	li $t0, 28187
	sw $t0, -676($fp)
	li $t0, 0
	lw $t1, -676($fp)
	sub $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -668($fp)
	lw $t1, -680($fp)
	sub $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -688($fp)
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 0
	sw $t0, -696($fp)
	li $t0, 15278
	sw $t0, -700($fp)
	lw $t0, 8($fp)
	sw $t0, -704($fp)
	lw $t0, -700($fp)
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, 4($fp)
	sw $t0, -712($fp)
	lw $t1, -708($fp)
	lw $t2, -712($fp)
	beq $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -696($fp)
label252:
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -716($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -720($fp)
	li $t0, 29904
	sw $t0, -724($fp)
	li $t0, 0
	lw $t1, -724($fp)
	sub $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label253
label253:
	li $t0, 1
	sw $t0, -720($fp)
label254:
	lw $t1, -716($fp)
	lw $t2, -720($fp)
	ble $t1, $t2, label250
	j label249
label250:
	lw $t0, 8($fp)
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label248:
	li $t0, 1
	sw $t0, -692($fp)
label249:
	addi $t0, $fp, -84
	sw $t0, -736($fp)
	li $t0, 0
	sw $t0, -740($fp)
	li $t0, 0
	sw $t0, -744($fp)
	lw $t0, -512($fp)
	sw $t0, -748($fp)
	lw $t1, -748($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label258
label258:
	li $t0, 1
	sw $t0, -744($fp)
label259:
	lw $t0, -512($fp)
	sw $t0, -752($fp)
	lw $t0, -744($fp)
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t1, -756($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label256
label257:
	lw $t0, 8($fp)
	sw $t0, -760($fp)
	li $t0, 5795
	sw $t0, -764($fp)
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -740($fp)
label256:
	li $t0, 4
	lw $t1, -740($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, -736($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	addi $t0, $fp, -72
	sw $t0, -784($fp)
	addi $t0, $fp, -96
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
	li $t0, 4
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, 0($t0)
	sw $t1, -816($fp)
	li $t0, 0
	lw $t1, -816($fp)
	sub $t0, $t0, $t1
	sw $t0, -820($fp)
	addi $t0, $fp, -40
	sw $t0, -824($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -844($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
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
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -884($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -904($fp)
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -1004($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -1024($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1044($fp)
	li $t0, 2
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
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1064($fp)
	li $t0, 3
	sw $t0, -1068($fp)
	li $t0, 4
	lw $t1, -1068($fp)
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, 0($t0)
	sw $t1, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1084($fp)
	li $t0, 4
	sw $t0, -1088($fp)
	li $t0, 4
	lw $t1, -1088($fp)
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	lw $t1, -1084($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, 0($t0)
	sw $t1, -1100($fp)
	lw $t0, -1100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1104($fp)
	li $t0, 5
	sw $t0, -1108($fp)
	li $t0, 4
	lw $t1, -1108($fp)
	mul $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, 0($t0)
	sw $t1, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1124($fp)
	li $t0, 6
	sw $t0, -1128($fp)
	li $t0, 4
	lw $t1, -1128($fp)
	mul $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, 0($t0)
	sw $t1, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1144($fp)
	li $t0, 7
	sw $t0, -1148($fp)
	li $t0, 4
	lw $t1, -1148($fp)
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	lw $t1, -1144($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, 0($t0)
	sw $t1, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1168($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -1188($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -1208($fp)
	li $t0, 2
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
	addi $t0, $fp, -96
	sw $t0, -1228($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -1248($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -1268($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -1288($fp)
	addi $t0, $fp, -72
	sw $t0, -1292($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -1312($fp)
	li $t0, 6
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
	lw $t0, -1308($fp)
	lw $t1, -1328($fp)
	mul $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t1, -1332($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label262
label262:
	li $t0, 0
	sw $t0, -1336($fp)
	lw $t0, -512($fp)
	sw $t0, -1340($fp)
	lw $t0, -512($fp)
	sw $t0, -1344($fp)
	lw $t1, -1340($fp)
	lw $t2, -1344($fp)
	bge $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -1336($fp)
label265:
	lw $t0, 4($fp)
	sw $t0, -1348($fp)
	lw $t1, -1336($fp)
	lw $t2, -1348($fp)
	ble $t1, $t2, label263
	j label261
label263:
	lw $t0, 8($fp)
	sw $t0, -1352($fp)
	lw $t0, 4($fp)
	sw $t0, -1356($fp)
	lw $t0, -1352($fp)
	lw $t1, -1356($fp)
	mul $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -1288($fp)
label261:
	lw $ra, -4($fp)
	lw $v0, -1288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1832
	li $t0, 31246
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 32474
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 44139
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 57161
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 48441
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 35201
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 30875
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 27546
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
	li $t0, 39493
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
	li $t0, 55149
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
	li $t0, 45210
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
	li $t0, 46194
	sw $t0, -248($fp)
	addi $t0, $fp, -28
	sw $t0, -252($fp)
	li $t0, 4
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
	li $t0, 8523
	sw $t0, -272($fp)
	addi $t0, $fp, -28
	sw $t0, -276($fp)
	li $t0, 5
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
	li $t0, 1603
	sw $t0, -296($fp)
	addi $t0, $fp, -64
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
	li $t0, 9879
	sw $t0, -320($fp)
	addi $t0, $fp, -64
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
	li $t0, 2248
	sw $t0, -344($fp)
	addi $t0, $fp, -64
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
	li $t0, 23109
	sw $t0, -368($fp)
	addi $t0, $fp, -64
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
	li $t0, 26181
	sw $t0, -392($fp)
	addi $t0, $fp, -64
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
	li $t0, 3172
	sw $t0, -416($fp)
	addi $t0, $fp, -64
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
	li $t0, 17599
	sw $t0, -440($fp)
	addi $t0, $fp, -64
	sw $t0, -444($fp)
	li $t0, 6
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
	li $t0, 18099
	sw $t0, -464($fp)
	addi $t0, $fp, -64
	sw $t0, -468($fp)
	li $t0, 7
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
	li $t0, 31359
	sw $t0, -488($fp)
	addi $t0, $fp, -64
	sw $t0, -492($fp)
	li $t0, 8
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
	li $t0, 32877
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	addi $t0, $fp, -28
	sw $t0, -524($fp)
	li $t0, 0
	sw $t0, -528($fp)
	li $t0, 48004
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label268:
	li $t0, 37154
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -528($fp)
label267:
	li $t0, 4
	lw $t1, -528($fp)
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	lw $t1, 0($t0)
	sw $t1, -548($fp)
	addi $t0, $fp, -28
	sw $t0, -552($fp)
	li $t0, 0
	sw $t0, -556($fp)
	lw $t0, -96($fp)
	sw $t0, -560($fp)
	lw $t0, -132($fp)
	sw $t0, -564($fp)
	lw $t1, -560($fp)
	lw $t2, -564($fp)
	beq $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -556($fp)
label270:
	li $t0, 4
	lw $t1, -556($fp)
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, 0($t0)
	sw $t1, -576($fp)
	lw $t0, -548($fp)
	lw $t1, -576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -580($fp)
	li $t0, 0
	sw $t0, -584($fp)
	li $t0, 0
	sw $t0, -588($fp)
	li $t0, 34316
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -596($fp)
	li $t0, 3836
	sw $t0, -600($fp)
	li $t0, 0
	sw $t0, -604($fp)
	li $t0, 29889
	sw $t0, -608($fp)
	lw $t0, -84($fp)
	sw $t0, -612($fp)
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -616($fp)
	li $t0, 21502
	sw $t0, -620($fp)
	lw $t1, -616($fp)
	lw $t2, -620($fp)
	bgt $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -604($fp)
label276:
	addi $sp, $sp, -4
	lw $t0, -596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -604($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -624($fp)
	addi $sp, $sp, 16
	lw $t0, -96($fp)
	sw $t0, -628($fp)
	lw $t1, -624($fp)
	lw $t2, -628($fp)
	blt $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -588($fp)
label274:
	lw $t0, -144($fp)
	sw $t0, -632($fp)
	li $t0, 0
	sw $t0, -636($fp)
	lw $t0, -516($fp)
	sw $t0, -640($fp)
	lw $t1, -640($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -636($fp)
label278:
	lw $t0, -632($fp)
	lw $t1, -636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -644($fp)
	lw $t1, -588($fp)
	lw $t2, -644($fp)
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -584($fp)
label272:
	lw $t0, -72($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -696($fp)
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -796($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -816($fp)
	li $t0, 1
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
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -836($fp)
	li $t0, 2
	sw $t0, -840($fp)
	li $t0, 4
	lw $t1, -840($fp)
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, 0($t0)
	sw $t1, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -856($fp)
	li $t0, 3
	sw $t0, -860($fp)
	li $t0, 4
	lw $t1, -860($fp)
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, 0($t0)
	sw $t1, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -876($fp)
	li $t0, 4
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
	lw $t0, -892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -896($fp)
	li $t0, 5
	sw $t0, -900($fp)
	li $t0, 4
	lw $t1, -900($fp)
	mul $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	lw $t1, 0($t0)
	sw $t1, -912($fp)
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -916($fp)
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 8
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
	lw $t0, -516($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -980($fp)
	addi $t0, $fp, -28
	sw $t0, -984($fp)
	lw $t0, -144($fp)
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
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -1004($fp)
	li $t0, 4
	lw $t1, -1004($fp)
	mul $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, 0($t0)
	sw $t1, -1016($fp)
	lw $ra, -4($fp)
	lw $v0, -1016($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -72($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
	sw $t0, -1068($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -1088($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -1108($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -1128($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -1148($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -1168($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -1188($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -1208($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -1228($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -1248($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -1268($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -1288($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -1308($fp)
	li $t0, 7
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
	addi $t0, $fp, -64
	sw $t0, -1328($fp)
	li $t0, 8
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
	lw $t0, -516($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1352($fp)
	li $t0, 0
	lw $t1, -1352($fp)
	sub $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $ra, -4($fp)
	lw $v0, -1356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -72($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -1568($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -1588($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -1608($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -1628($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -1648($fp)
	li $t0, 7
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
	addi $t0, $fp, -64
	sw $t0, -1668($fp)
	li $t0, 8
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
	lw $t0, -516($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -108($fp)
	sw $t0, -1696($fp)
	addi $t0, $fp, -28
	sw $t0, -1700($fp)
	lw $t0, -132($fp)
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
	lw $t0, -72($fp)
	sw $t0, -1720($fp)
	lw $t0, -132($fp)
	sw $t0, -1724($fp)
	lw $t0, -1720($fp)
	lw $t1, -1724($fp)
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	li $t0, 13749
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1736($fp)
	addi $t0, $fp, -64
	sw $t0, -1740($fp)
	lw $t0, -108($fp)
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
	lw $t0, -96($fp)
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1764($fp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1768($fp)
	addi $sp, $sp, 16
	lw $t0, -1696($fp)
	lw $t1, -1768($fp)
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label281:
	lw $t0, -96($fp)
	sw $t0, -1776($fp)
	lw $t0, -108($fp)
	sw $t0, -1780($fp)
	li $t0, 46223
	sw $t0, -1784($fp)
	lw $t0, -1780($fp)
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	lw $t0, -120($fp)
	sw $t0, -1796($fp)
	li $t0, 27
	sw $t0, -1800($fp)
	lw $t0, -1796($fp)
	lw $t1, -1800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1804($fp)
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label284
label284:
	lw $t0, -132($fp)
	sw $t0, -1808($fp)
	lw $t1, -1808($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -1792($fp)
label283:
	li $t0, 0
	sw $t0, -1812($fp)
	li $t0, 0
	sw $t0, -1816($fp)
	lw $t0, -132($fp)
	sw $t0, -1820($fp)
	li $t0, 37967
	sw $t0, -1824($fp)
	lw $t1, -1820($fp)
	lw $t2, -1824($fp)
	blt $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -1816($fp)
label288:
	lw $t0, -132($fp)
	sw $t0, -1828($fp)
	lw $t1, -1816($fp)
	lw $t2, -1828($fp)
	beq $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -1812($fp)
label286:
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1832($fp)
	addi $sp, $sp, 16
	lw $t0, -1776($fp)
	lw $t1, -1832($fp)
	sub $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -1692($fp)
label280:
	lw $ra, -4($fp)
	lw $v0, -1692($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1260
	li $t0, 16571
	sw $t0, -44($fp)
	addi $t0, $fp, -40
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
	li $t0, 57188
	sw $t0, -68($fp)
	addi $t0, $fp, -40
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
	li $t0, 29128
	sw $t0, -92($fp)
	addi $t0, $fp, -40
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
	li $t0, 51772
	sw $t0, -116($fp)
	addi $t0, $fp, -40
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
	li $t0, 22527
	sw $t0, -140($fp)
	addi $t0, $fp, -40
	sw $t0, -144($fp)
	li $t0, 4
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
	li $t0, 56674
	sw $t0, -164($fp)
	addi $t0, $fp, -40
	sw $t0, -168($fp)
	li $t0, 5
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
	li $t0, 25729
	sw $t0, -188($fp)
	addi $t0, $fp, -40
	sw $t0, -192($fp)
	li $t0, 6
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
	li $t0, 12140
	sw $t0, -212($fp)
	addi $t0, $fp, -40
	sw $t0, -216($fp)
	li $t0, 7
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
	li $t0, 36348
	sw $t0, -236($fp)
	addi $t0, $fp, -40
	sw $t0, -240($fp)
	li $t0, 8
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
	li $t0, 6387
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 20664
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 37952
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 16266
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 22912
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 61061
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -312($fp)
	sw $t0, -332($fp)
	li $t0, 0
	sw $t0, -336($fp)
	li $t0, 13124
	sw $t0, -340($fp)
	li $t0, 0
	lw $t1, -340($fp)
	sub $t0, $t0, $t1
	sw $t0, -344($fp)
	li $t0, 0
	sw $t0, -348($fp)
	li $t0, 42448
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label296
label296:
	li $t0, 26084
	sw $t0, -356($fp)
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -348($fp)
label295:
	li $t0, 0
	sw $t0, -360($fp)
	lw $t0, 12($fp)
	sw $t0, -364($fp)
	lw $t0, -324($fp)
	sw $t0, -368($fp)
	lw $t0, -364($fp)
	lw $t1, -368($fp)
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -264($fp)
	sw $t0, -376($fp)
	lw $t1, -372($fp)
	lw $t2, -376($fp)
	bge $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -360($fp)
label298:
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -380($fp)
	addi $sp, $sp, 16
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -336($fp)
label293:
	lw $t0, -332($fp)
	lw $t1, -336($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 60547
	sw $t0, -388($fp)
	li $t0, 0
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	lw $t0, -300($fp)
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -396($fp)
label300:
	lw $t0, -392($fp)
	lw $t1, -396($fp)
	sub $t0, $t0, $t1
	sw $t0, -404($fp)
	addi $t0, $fp, -40
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
	li $t0, 43015
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	li $t0, 0
	lw $t1, -432($fp)
	sub $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -404($fp)
	lw $t1, -436($fp)
	sub $t0, $t0, $t1
	sw $t0, -440($fp)
label290:
	li $t0, 29062
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 10354
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 64517
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 32898
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 44671
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 12731
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 0
	sw $t0, -516($fp)
	li $t0, 5330
	sw $t0, -520($fp)
	addi $t0, $fp, -40
	sw $t0, -524($fp)
	li $t0, 44698
	sw $t0, -528($fp)
	li $t0, 58954
	sw $t0, -532($fp)
	lw $t0, -528($fp)
	lw $t1, -532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -536($fp)
	li $t0, 4
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	lw $t1, 0($t0)
	sw $t1, -548($fp)
	lw $t1, -520($fp)
	lw $t2, -548($fp)
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -516($fp)
label302:
	addi $t0, $fp, -40
	sw $t0, -552($fp)
	li $t0, 0
	sw $t0, -556($fp)
	jal f12
	sw $v0, -560($fp)
	addi $sp, $sp, 4
	lw $t0, -300($fp)
	sw $t0, -564($fp)
	lw $t0, -560($fp)
	lw $t1, -564($fp)
	add $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label305:
	lw $t0, -300($fp)
	sw $t0, -572($fp)
	lw $t1, -572($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -556($fp)
label304:
	li $t0, 4
	lw $t1, -556($fp)
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, 0($t0)
	sw $t1, -584($fp)
	li $t0, 0
	sw $t0, -588($fp)
	li $t0, 21901
	sw $t0, -592($fp)
	li $t0, 36350
	sw $t0, -596($fp)
	li $t0, 0
	lw $t1, -596($fp)
	sub $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t1, -592($fp)
	lw $t2, -600($fp)
	beq $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -588($fp)
label307:
	lw $t0, -588($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -604($fp)
	li $t0, 0
	sw $t0, -608($fp)
	li $t0, 22547
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label313:
	lw $t0, -324($fp)
	sw $t0, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -608($fp)
label312:
	lw $t0, -608($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -624($fp)
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	addi $t0, $fp, -40
	sw $t0, -628($fp)
	li $t0, 0
	sw $t0, -632($fp)
	lw $t0, -300($fp)
	sw $t0, -636($fp)
	lw $t1, -636($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label320:
	li $t0, 33866
	sw $t0, -640($fp)
	lw $t1, -640($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label319
label319:
	li $t0, 5482
	sw $t0, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -632($fp)
label318:
	lw $t0, -324($fp)
	sw $t0, -648($fp)
	lw $t0, -264($fp)
	sw $t0, -652($fp)
	lw $t0, -648($fp)
	lw $t1, -652($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	li $t0, 13685
	sw $t0, -660($fp)
	lw $t0, -656($fp)
	lw $t1, -660($fp)
	mul $t0, $t0, $t1
	sw $t0, -664($fp)
	li $t0, 0
	sw $t0, -668($fp)
	lw $t0, -324($fp)
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label324:
	li $t0, 8137
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label323
label323:
	li $t0, 58877
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -668($fp)
label322:
	addi $sp, $sp, -4
	lw $t0, -632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -684($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, 0($t0)
	sw $t1, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 0
	sw $t0, -700($fp)
	li $t0, 50034
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	lw $t0, -508($fp)
	sw $t0, -712($fp)
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label329
label329:
	li $t0, 40253
	sw $t0, -716($fp)
	lw $t1, -716($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -708($fp)
label328:
	addi $sp, $sp, -4
	lw $t0, -708($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -720($fp)
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	lw $t1, -720($fp)
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	li $t0, 0
	sw $t0, -728($fp)
	lw $t0, -276($fp)
	sw $t0, -732($fp)
	li $t0, 0
	lw $t1, -732($fp)
	sub $t0, $t0, $t1
	sw $t0, -736($fp)
	li $t0, 0
	lw $t1, -736($fp)
	sub $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label330:
	li $t0, 1
	sw $t0, -728($fp)
label331:
	lw $t1, -724($fp)
	lw $t2, -728($fp)
	blt $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -700($fp)
label326:
	j label316
label315:
	li $t0, 0
	sw $t0, -744($fp)
	lw $t0, -448($fp)
	sw $t0, -748($fp)
	lw $t0, -484($fp)
	sw $t0, -752($fp)
	li $t0, 0
	sw $t0, -756($fp)
	lw $t0, 8($fp)
	sw $t0, -760($fp)
	li $t0, 4904
	sw $t0, -764($fp)
	lw $t1, -760($fp)
	lw $t2, -764($fp)
	blt $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -756($fp)
label335:
	li $t0, 0
	sw $t0, -768($fp)
	li $t0, 21919
	sw $t0, -772($fp)
	lw $t0, 4($fp)
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -484($fp)
	sw $t0, -784($fp)
	lw $t1, -780($fp)
	lw $t2, -784($fp)
	blt $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -768($fp)
label337:
	li $t0, 0
	sw $t0, -788($fp)
	li $t0, 30577
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label338
label338:
	li $t0, 1
	sw $t0, -788($fp)
label339:
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, -264($fp)
	sw $t0, -800($fp)
	li $t0, 5922
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label342:
	lw $t0, -300($fp)
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -796($fp)
label341:
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -816($fp)
	addi $sp, $sp, 16
	lw $t0, 8($fp)
	sw $t0, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 1514
	sw $t0, -832($fp)
	li $t0, 0
	lw $t1, -832($fp)
	sub $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label345:
	li $t0, 11564
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -828($fp)
label344:
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -844($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, 4($fp)
	sw $t0, -852($fp)
	li $t0, 0
	lw $t1, -852($fp)
	sub $t0, $t0, $t1
	sw $t0, -856($fp)
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -864($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -864($fp)
	sub $t0, $t0, $t1
	sw $t0, -868($fp)
	li $t0, 0
	sw $t0, -872($fp)
	li $t0, 31099
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -880($fp)
	li $t0, 0
	sw $t0, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	lw $t0, -324($fp)
	sw $t0, -892($fp)
	li $t0, 33431
	sw $t0, -896($fp)
	lw $t0, -892($fp)
	lw $t1, -896($fp)
	sub $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label354:
	li $t0, 9606
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -888($fp)
label353:
	lw $t0, -484($fp)
	sw $t0, -908($fp)
	lw $t0, -472($fp)
	sw $t0, -912($fp)
	lw $t0, -908($fp)
	lw $t1, -912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -916($fp)
	lw $t0, -460($fp)
	sw $t0, -920($fp)
	lw $t0, -916($fp)
	lw $t1, -920($fp)
	add $t0, $t0, $t1
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 17975
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label358
label358:
	lw $t0, -460($fp)
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label357
label357:
	lw $t0, -264($fp)
	sw $t0, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -928($fp)
label356:
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -944($fp)
	addi $sp, $sp, 16
	lw $t1, -944($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label351
label351:
	lw $t0, -312($fp)
	sw $t0, -948($fp)
	lw $t1, -948($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -884($fp)
label350:
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 22450
	sw $t0, -956($fp)
	li $t0, 56519
	sw $t0, -960($fp)
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label360
label361:
	li $t0, 49058
	sw $t0, -968($fp)
	lw $t1, -968($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -952($fp)
label360:
	li $t0, 26146
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -976($fp)
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -980($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -40
	sw $t0, -984($fp)
	lw $t0, -312($fp)
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
	lw $t0, -484($fp)
	sw $t0, -1004($fp)
	lw $t0, -1000($fp)
	lw $t1, -1004($fp)
	mul $t0, $t0, $t1
	sw $t0, -1008($fp)
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1012($fp)
	addi $sp, $sp, 16
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label348
label348:
	li $t0, 28443
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -872($fp)
label347:
	addi $sp, $sp, -4
	lw $t0, -748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1020($fp)
	addi $sp, $sp, 16
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label332:
	li $t0, 1
	sw $t0, -744($fp)
label333:
	li $t0, 0
	lw $t1, -744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -1028($fp)
label316:
label309:
	li $t0, 0
	sw $t0, -1032($fp)
	lw $t0, -460($fp)
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -1032($fp)
label363:
	lw $t0, -472($fp)
	sw $t0, -1040($fp)
	lw $t0, -1032($fp)
	lw $t1, -1040($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
	sw $t0, -1068($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1088($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -1108($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -1128($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -1148($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -1168($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -1188($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -1208($fp)
	li $t0, 8
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
	lw $t0, -264($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1252($fp)
	lw $t0, -288($fp)
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label365
label366:
	jal f12
	sw $v0, -1260($fp)
	addi $sp, $sp, 4
	lw $t1, -1260($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -1252($fp)
label365:
	lw $t0, -1252($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -1264($fp)
	lw $ra, -4($fp)
	lw $v0, -1264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7724
	li $t0, 63475
	sw $t0, -100($fp)
	addi $t0, $fp, -8
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
	li $t0, 1054
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 17635
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 3269
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 45752
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 11053
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 25170
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 16566
	sw $t0, -196($fp)
	addi $t0, $fp, -16
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
	li $t0, 33600
	sw $t0, -220($fp)
	addi $t0, $fp, -16
	sw $t0, -224($fp)
	li $t0, 1
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
	li $t0, 33307
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 9907
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 47286
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 1637
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 15389
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 31784
	sw $t0, -304($fp)
	addi $t0, $fp, -56
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
	li $t0, 41890
	sw $t0, -328($fp)
	addi $t0, $fp, -56
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
	li $t0, 41535
	sw $t0, -352($fp)
	addi $t0, $fp, -56
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
	li $t0, 54234
	sw $t0, -376($fp)
	addi $t0, $fp, -56
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
	li $t0, 32874
	sw $t0, -400($fp)
	addi $t0, $fp, -56
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
	li $t0, 25057
	sw $t0, -424($fp)
	addi $t0, $fp, -56
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
	li $t0, 6673
	sw $t0, -448($fp)
	addi $t0, $fp, -56
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
	li $t0, 769
	sw $t0, -472($fp)
	addi $t0, $fp, -56
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
	li $t0, 34664
	sw $t0, -496($fp)
	addi $t0, $fp, -56
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
	li $t0, 37772
	sw $t0, -520($fp)
	addi $t0, $fp, -56
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
	li $t0, 29212
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 36178
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 49336
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 35135
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 1219
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 5719
	sw $t0, -604($fp)
	addi $t0, $fp, -96
	sw $t0, -608($fp)
	li $t0, 0
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
	li $t0, 40039
	sw $t0, -628($fp)
	addi $t0, $fp, -96
	sw $t0, -632($fp)
	li $t0, 1
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
	li $t0, 64695
	sw $t0, -652($fp)
	addi $t0, $fp, -96
	sw $t0, -656($fp)
	li $t0, 2
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
	li $t0, 6773
	sw $t0, -676($fp)
	addi $t0, $fp, -96
	sw $t0, -680($fp)
	li $t0, 3
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
	li $t0, 57674
	sw $t0, -700($fp)
	addi $t0, $fp, -96
	sw $t0, -704($fp)
	li $t0, 4
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
	li $t0, 2428
	sw $t0, -724($fp)
	addi $t0, $fp, -96
	sw $t0, -728($fp)
	li $t0, 5
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
	li $t0, 52525
	sw $t0, -748($fp)
	addi $t0, $fp, -96
	sw $t0, -752($fp)
	li $t0, 6
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
	li $t0, 3191
	sw $t0, -772($fp)
	addi $t0, $fp, -96
	sw $t0, -776($fp)
	li $t0, 7
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
	li $t0, 27599
	sw $t0, -796($fp)
	addi $t0, $fp, -96
	sw $t0, -800($fp)
	li $t0, 8
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
	li $t0, 3555
	sw $t0, -820($fp)
	addi $t0, $fp, -96
	sw $t0, -824($fp)
	li $t0, 9
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
	li $t0, 36792
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 60906
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 13463
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 18542
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 62544
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 28852
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 50326
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 38898
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 4852
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	addi $t0, $fp, -8
	sw $t0, -952($fp)
	li $t0, 0
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
	lw $t0, -968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -996($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -1016($fp)
	li $t0, 1
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
	lw $t0, -248($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1056($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -1136($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -1156($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -1176($fp)
	li $t0, 6
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
	addi $t0, $fp, -56
	sw $t0, -1196($fp)
	li $t0, 7
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
	addi $t0, $fp, -56
	sw $t0, -1216($fp)
	li $t0, 8
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
	addi $t0, $fp, -56
	sw $t0, -1236($fp)
	li $t0, 9
	sw $t0, -1240($fp)
	li $t0, 4
	lw $t1, -1240($fp)
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, 0($t0)
	sw $t1, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1276($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -1296($fp)
	li $t0, 1
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
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1316($fp)
	li $t0, 2
	sw $t0, -1320($fp)
	li $t0, 4
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1336($fp)
	li $t0, 3
	sw $t0, -1340($fp)
	li $t0, 4
	lw $t1, -1340($fp)
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	lw $t1, -1336($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t1, 0($t0)
	sw $t1, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1356($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -1376($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -1396($fp)
	li $t0, 6
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
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1416($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -1436($fp)
	li $t0, 8
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
	addi $t0, $fp, -96
	sw $t0, -1456($fp)
	li $t0, 9
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
	lw $t0, -848($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	lw $t0, -152($fp)
	sw $t0, -1520($fp)
	li $t0, 0
	lw $t1, -1520($fp)
	sub $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -596($fp)
	sw $t0, -1528($fp)
	lw $t1, -1524($fp)
	lw $t2, -1528($fp)
	bge $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -1516($fp)
label370:
	li $t0, 0
	sw $t0, -1532($fp)
	lw $t0, -896($fp)
	sw $t0, -1536($fp)
	li $t0, 64573
	sw $t0, -1540($fp)
	lw $t0, -1536($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -860($fp)
	sw $t0, -1548($fp)
	lw $t1, -1544($fp)
	lw $t2, -1548($fp)
	bgt $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -1532($fp)
label372:
	jal f12
	sw $v0, -1552($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1552($fp)
	sub $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -152($fp)
	sw $t0, -1560($fp)
	li $t0, 45697
	sw $t0, -1564($fp)
	lw $t0, -1560($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	li $t0, 7006
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 29909
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -1584($fp)
	lw $t0, 8($fp)
	sw $t0, -1588($fp)
	li $t0, 6236
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1600($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1604($fp)
	li $t0, 39024
	sw $t0, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label373
label375:
	lw $t0, -872($fp)
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -1604($fp)
label374:
	addi $sp, $sp, -4
	lw $t0, -1516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -1616($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1620($fp)
	li $t0, 36218
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label376:
	li $t0, 1
	sw $t0, -1620($fp)
label377:
	lw $t0, 8($fp)
	sw $t0, -1628($fp)
	li $t0, 17933
	sw $t0, -1632($fp)
	lw $t0, -1628($fp)
	lw $t1, -1632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1636($fp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1640($fp)
	addi $sp, $sp, 12
	lw $t1, -1616($fp)
	lw $t2, -1640($fp)
	bge $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -1512($fp)
label368:
	lw $ra, -4($fp)
	lw $v0, -1512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 35216
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 1733
	sw $t0, -1748($fp)
	addi $t0, $fp, -1676
	sw $t0, -1752($fp)
	li $t0, 0
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
	li $t0, 5817
	sw $t0, -1772($fp)
	addi $t0, $fp, -1676
	sw $t0, -1776($fp)
	li $t0, 1
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
	li $t0, 36435
	sw $t0, -1796($fp)
	addi $t0, $fp, -1676
	sw $t0, -1800($fp)
	li $t0, 2
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
	li $t0, 7453
	sw $t0, -1820($fp)
	addi $t0, $fp, -1676
	sw $t0, -1824($fp)
	li $t0, 3
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
	li $t0, 45856
	sw $t0, -1844($fp)
	addi $t0, $fp, -1676
	sw $t0, -1848($fp)
	li $t0, 4
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
	li $t0, 35594
	sw $t0, -1868($fp)
	addi $t0, $fp, -1676
	sw $t0, -1872($fp)
	li $t0, 5
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
	li $t0, 14226
	sw $t0, -1892($fp)
	addi $t0, $fp, -1676
	sw $t0, -1896($fp)
	li $t0, 6
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
	li $t0, 37994
	sw $t0, -1916($fp)
	addi $t0, $fp, -1676
	sw $t0, -1920($fp)
	li $t0, 7
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
	li $t0, 38023
	sw $t0, -1940($fp)
	addi $t0, $fp, -1676
	sw $t0, -1944($fp)
	li $t0, 8
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
	li $t0, 1216
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
	li $t0, 41186
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	sw $t0, -1984($fp)
	li $t0, 86
	sw $t0, -1988($fp)
	addi $t0, $fp, -1716
	sw $t0, -1992($fp)
	li $t0, 0
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
	li $t0, 4771
	sw $t0, -2012($fp)
	addi $t0, $fp, -1716
	sw $t0, -2016($fp)
	li $t0, 1
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
	li $t0, 12442
	sw $t0, -2036($fp)
	addi $t0, $fp, -1716
	sw $t0, -2040($fp)
	li $t0, 2
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
	li $t0, 60992
	sw $t0, -2060($fp)
	addi $t0, $fp, -1716
	sw $t0, -2064($fp)
	li $t0, 3
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
	li $t0, 18234
	sw $t0, -2084($fp)
	addi $t0, $fp, -1716
	sw $t0, -2088($fp)
	li $t0, 4
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
	li $t0, 30984
	sw $t0, -2108($fp)
	addi $t0, $fp, -1716
	sw $t0, -2112($fp)
	li $t0, 5
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
	li $t0, 58000
	sw $t0, -2132($fp)
	addi $t0, $fp, -1716
	sw $t0, -2136($fp)
	li $t0, 6
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
	li $t0, 47087
	sw $t0, -2156($fp)
	addi $t0, $fp, -1716
	sw $t0, -2160($fp)
	li $t0, 7
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
	li $t0, 15774
	sw $t0, -2180($fp)
	addi $t0, $fp, -1716
	sw $t0, -2184($fp)
	li $t0, 8
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
	li $t0, 31363
	sw $t0, -2204($fp)
	addi $t0, $fp, -1716
	sw $t0, -2208($fp)
	li $t0, 9
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
	li $t0, 51939
	sw $t0, -2228($fp)
	addi $t0, $fp, -1732
	sw $t0, -2232($fp)
	li $t0, 0
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
	li $t0, 54798
	sw $t0, -2252($fp)
	addi $t0, $fp, -1732
	sw $t0, -2256($fp)
	li $t0, 1
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
	li $t0, 37599
	sw $t0, -2276($fp)
	addi $t0, $fp, -1732
	sw $t0, -2280($fp)
	li $t0, 2
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2280($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2276($fp)
	lw $t1, -2292($fp)
	sw $t0, 0($t1)
	lw $t0, -2292($fp)
	lw $t1, 0($t0)
	sw $t1, -2296($fp)
	li $t0, 16312
	sw $t0, -2300($fp)
	addi $t0, $fp, -1732
	sw $t0, -2304($fp)
	li $t0, 3
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2304($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2300($fp)
	lw $t1, -2316($fp)
	sw $t0, 0($t1)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	li $t0, 34959
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -2380($fp)
	li $t0, 44605
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	li $t0, 15350
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -2404($fp)
	li $t0, 52892
	sw $t0, -2408($fp)
	addi $t0, $fp, -2344
	sw $t0, -2412($fp)
	li $t0, 0
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2412($fp)
	lw $t1, -2420($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2408($fp)
	lw $t1, -2424($fp)
	sw $t0, 0($t1)
	lw $t0, -2424($fp)
	lw $t1, 0($t0)
	sw $t1, -2428($fp)
	li $t0, 15288
	sw $t0, -2432($fp)
	addi $t0, $fp, -2344
	sw $t0, -2436($fp)
	li $t0, 1
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
	li $t0, 50566
	sw $t0, -2456($fp)
	addi $t0, $fp, -2344
	sw $t0, -2460($fp)
	li $t0, 2
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
	li $t0, 54625
	sw $t0, -2480($fp)
	addi $t0, $fp, -2344
	sw $t0, -2484($fp)
	li $t0, 3
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
	li $t0, 21105
	sw $t0, -2504($fp)
	addi $t0, $fp, -2344
	sw $t0, -2508($fp)
	li $t0, 4
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
	li $t0, 21465
	sw $t0, -2528($fp)
	addi $t0, $fp, -2344
	sw $t0, -2532($fp)
	li $t0, 5
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
	li $t0, 62078
	sw $t0, -2552($fp)
	addi $t0, $fp, -2356
	sw $t0, -2556($fp)
	li $t0, 0
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
	li $t0, 1426
	sw $t0, -2576($fp)
	addi $t0, $fp, -2356
	sw $t0, -2580($fp)
	li $t0, 1
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
	li $t0, 57060
	sw $t0, -2600($fp)
	addi $t0, $fp, -2356
	sw $t0, -2604($fp)
	li $t0, 2
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
	li $t0, 10769
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	sw $t0, -2632($fp)
	li $t0, 39420
	sw $t0, -2636($fp)
	addi $t0, $fp, -2368
	sw $t0, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2640($fp)
	lw $t1, -2648($fp)
	add $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2636($fp)
	lw $t1, -2652($fp)
	sw $t0, 0($t1)
	lw $t0, -2652($fp)
	lw $t1, 0($t0)
	sw $t1, -2656($fp)
	li $t0, 29547
	sw $t0, -2660($fp)
	addi $t0, $fp, -2368
	sw $t0, -2664($fp)
	li $t0, 1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2664($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2660($fp)
	lw $t1, -2676($fp)
	sw $t0, 0($t1)
	lw $t0, -2676($fp)
	lw $t1, 0($t0)
	sw $t1, -2680($fp)
	li $t0, 11985
	sw $t0, -2684($fp)
	addi $t0, $fp, -2368
	sw $t0, -2688($fp)
	li $t0, 2
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
	li $t0, 15070
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -2716($fp)
	li $t0, 0
	sw $t0, -2720($fp)
	addi $t0, $fp, -1676
	sw $t0, -2724($fp)
	lw $t0, -2376($fp)
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
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label378:
	li $t0, 1
	sw $t0, -2720($fp)
label379:
	li $t0, 0
	sw $t0, -2744($fp)
	addi $t0, $fp, -1716
	sw $t0, -2748($fp)
	lw $t0, -884($fp)
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
	lw $t1, -2764($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label380
label380:
	li $t0, 1
	sw $t0, -2744($fp)
label381:
	lw $t0, -2720($fp)
	lw $t1, -2744($fp)
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	li $t0, 0
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
label382:
	addi $t0, $fp, -1732
	sw $t0, -2776($fp)
	lw $t0, -548($fp)
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
	li $t0, 29633
	sw $t0, -2796($fp)
	li $t0, 0
	lw $t1, -2796($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2792($fp)
	lw $t1, -2800($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2628($fp)
	sw $t0, -2808($fp)
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	addi $t0, $fp, -56
	sw $t0, -2816($fp)
	li $t0, 8
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
	li $t0, 0
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2840($fp)
	addi $sp, $sp, 8
	lw $t1, -2812($fp)
	lw $t2, -2840($fp)
	bge $t1, $t2, label383
	j label384
label383:
	lw $t0, -188($fp)
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, -920($fp)
	sw $t0, -2852($fp)
	li $t0, 0
	lw $t1, -2852($fp)
	sub $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -884($fp)
	sw $t0, -2860($fp)
	lw $t0, -2856($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	li $t0, 0
	sw $t0, -2868($fp)
	lw $t0, 12($fp)
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label390
label390:
	li $t0, 1
	sw $t0, -2868($fp)
label391:
	lw $t1, -2864($fp)
	lw $t2, -2868($fp)
	bgt $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -2848($fp)
label389:
	j label387
label386:
	li $t0, 0
	sw $t0, -2876($fp)
	addi $t0, $fp, -2368
	sw $t0, -2880($fp)
	li $t0, 0
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
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label392
label392:
	li $t0, 1
	sw $t0, -2876($fp)
label393:
	lw $t0, -140($fp)
	sw $t0, -2900($fp)
	li $t0, 58496
	sw $t0, -2904($fp)
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2908($fp)
	jal f12
	sw $v0, -2912($fp)
	addi $sp, $sp, 4
	lw $t0, -2388($fp)
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2920($fp)
	li $t0, 34991
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -2928($fp)
	li $t0, 25089
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -2936($fp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2936($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -2940($fp)
	addi $sp, $sp, 24
label387:
	j label382
label384:
	lw $t0, -872($fp)
	sw $t0, -2944($fp)
	lw $t1, -2944($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
label397:
	li $t0, 8734
	sw $t0, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label398
label401:
	addi $t0, $fp, -2344
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
	li $t0, 0
	lw $t1, -2968($fp)
	sub $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label400
label400:
	addi $t0, $fp, -96
	sw $t0, -2976($fp)
	li $t0, 6
	sw $t0, -2980($fp)
	li $t0, 4
	lw $t1, -2980($fp)
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	lw $t1, -2976($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	lw $t1, 0($t0)
	sw $t1, -2992($fp)
	li $t0, 19257
	sw $t0, -2996($fp)
	lw $t0, -848($fp)
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t1, -2992($fp)
	lw $t2, -3004($fp)
	ble $t1, $t2, label398
	j label399
label398:
	li $t0, 0
	sw $t0, -3008($fp)
	li $t0, 34607
	sw $t0, -3012($fp)
	lw $t0, -140($fp)
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	li $t0, 20311
	sw $t0, -3024($fp)
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	li $t0, 0
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	lw $t0, -560($fp)
	sw $t0, -3040($fp)
	li $t0, 32955
	sw $t0, -3044($fp)
	lw $t1, -3040($fp)
	lw $t2, -3044($fp)
	ble $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -3036($fp)
label408:
	li $t0, 50
	sw $t0, -3048($fp)
	lw $t1, -3036($fp)
	lw $t2, -3048($fp)
	bgt $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -3032($fp)
label406:
	lw $t0, -848($fp)
	sw $t0, -3052($fp)
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3056($fp)
	addi $sp, $sp, 16
	li $t0, 15338
	sw $t0, -3060($fp)
	lw $t0, -3056($fp)
	lw $t1, -3060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3064($fp)
	li $t0, 19637
	sw $t0, -3068($fp)
	lw $t1, -3064($fp)
	lw $t2, -3068($fp)
	ble $t1, $t2, label404
	j label403
label404:
	lw $t0, -584($fp)
	sw $t0, -3072($fp)
	lw $t0, -188($fp)
	sw $t0, -3076($fp)
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3080($fp)
	lw $t0, -152($fp)
	sw $t0, -3084($fp)
	lw $t0, -3080($fp)
	lw $t1, -3084($fp)
	sub $t0, $t0, $t1
	sw $t0, -3088($fp)
	li $t0, 9401
	sw $t0, -3092($fp)
	lw $t0, -908($fp)
	sw $t0, -3096($fp)
	lw $t0, -3092($fp)
	lw $t1, -3096($fp)
	sub $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t1, -3088($fp)
	lw $t2, -3100($fp)
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -3008($fp)
label403:
	lw $ra, -4($fp)
	lw $v0, -3008($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label397
label399:
label395:
label409:
	li $t0, 36443
	sw $t0, -3104($fp)
	addi $t0, $fp, -2356
	sw $t0, -3108($fp)
	li $t0, 0
	sw $t0, -3112($fp)
	lw $t0, -1968($fp)
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label413
label414:
	lw $t0, -548($fp)
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -3112($fp)
label413:
	li $t0, 4
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	lw $t0, -3104($fp)
	lw $t1, -3132($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	lw $t0, -872($fp)
	sw $t0, -3140($fp)
	lw $ra, -4($fp)
	lw $v0, -3140($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label409
label411:
label415:
	addi $t0, $fp, -2368
	sw $t0, -3144($fp)
	addi $t0, $fp, -96
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
	li $t0, 37869
	sw $t0, -3168($fp)
	lw $t0, -3164($fp)
	lw $t1, -3168($fp)
	sub $t0, $t0, $t1
	sw $t0, -3172($fp)
	li $t0, 4
	lw $t1, -3172($fp)
	mul $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	lw $t1, -3144($fp)
	add $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	lw $t1, 0($t0)
	sw $t1, -3184($fp)
	lw $t1, -3184($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 0
	sw $t0, -3188($fp)
	lw $t0, -884($fp)
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label419
label420:
	li $t0, 0
	sw $t0, -3196($fp)
	li $t0, 32627
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label421:
	li $t0, 1
	sw $t0, -3196($fp)
label422:
	addi $t0, $fp, -96
	sw $t0, -3204($fp)
	li $t0, 6
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
	lw $t0, -3196($fp)
	lw $t1, -3220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3224($fp)
	li $t0, 0
	lw $t1, -3224($fp)
	sub $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -3188($fp)
label419:
	lw $ra, -4($fp)
	lw $v0, -3188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label415
label417:
	lw $t0, -2376($fp)
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2388($fp)
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2400($fp)
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2344
	sw $t0, -3244($fp)
	li $t0, 0
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
	addi $t0, $fp, -2344
	sw $t0, -3264($fp)
	li $t0, 1
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
	addi $t0, $fp, -2344
	sw $t0, -3284($fp)
	li $t0, 2
	sw $t0, -3288($fp)
	li $t0, 4
	lw $t1, -3288($fp)
	mul $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, -3284($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, 0($t0)
	sw $t1, -3300($fp)
	lw $t0, -3300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2344
	sw $t0, -3304($fp)
	li $t0, 3
	sw $t0, -3308($fp)
	li $t0, 4
	lw $t1, -3308($fp)
	mul $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	lw $t1, -3304($fp)
	add $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	lw $t1, 0($t0)
	sw $t1, -3320($fp)
	lw $t0, -3320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2344
	sw $t0, -3324($fp)
	li $t0, 4
	sw $t0, -3328($fp)
	li $t0, 4
	lw $t1, -3328($fp)
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, 0($t0)
	sw $t1, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2344
	sw $t0, -3344($fp)
	li $t0, 5
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
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3364($fp)
	li $t0, 0
	sw $t0, -3368($fp)
	li $t0, 4
	lw $t1, -3368($fp)
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2356
	sw $t0, -3384($fp)
	li $t0, 1
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
	addi $t0, $fp, -2356
	sw $t0, -3404($fp)
	li $t0, 2
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
	lw $t0, -2628($fp)
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -3428($fp)
	li $t0, 0
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
	addi $t0, $fp, -2368
	sw $t0, -3448($fp)
	li $t0, 1
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
	addi $t0, $fp, -2368
	sw $t0, -3468($fp)
	li $t0, 2
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
	lw $t0, -2712($fp)
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 62174
	sw $t0, -3496($fp)
	lw $t0, -1740($fp)
	sw $t0, -3500($fp)
	lw $t0, -3496($fp)
	lw $t1, -3500($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	li $t0, 0
	sw $t0, -3508($fp)
	jal f12
	sw $v0, -3512($fp)
	addi $sp, $sp, 4
	lw $t1, -3512($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label425:
	li $t0, 1
	sw $t0, -3508($fp)
label426:
	li $t0, 26824
	sw $t0, -3516($fp)
	li $t0, 0
	lw $t1, -3516($fp)
	sub $t0, $t0, $t1
	sw $t0, -3520($fp)
	li $t0, 0
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	li $t0, 28697
	sw $t0, -3528($fp)
	lw $t0, -2400($fp)
	sw $t0, -3532($fp)
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -548($fp)
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	addi $sp, $sp, -4
	lw $t0, -3508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3544($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3548($fp)
	addi $sp, $sp, 16
	lw $t0, -128($fp)
	sw $t0, -3552($fp)
	lw $t0, -2712($fp)
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3548($fp)
	lw $t1, -3560($fp)
	sub $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t1, -3504($fp)
	lw $t2, -3564($fp)
	blt $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -3492($fp)
label424:
	lw $ra, -4($fp)
	lw $v0, -3492($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3568($fp)
	li $t0, 26271
	sw $t0, -3572($fp)
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label427:
	li $t0, 1
	sw $t0, -3568($fp)
label428:
	addi $t0, $fp, -1716
	sw $t0, -3576($fp)
	lw $t0, -188($fp)
	sw $t0, -3580($fp)
	li $t0, 45454
	sw $t0, -3584($fp)
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	li $t0, 4
	lw $t1, -3588($fp)
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, -3576($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, 0($t0)
	sw $t1, -3600($fp)
	lw $t0, -3568($fp)
	lw $t1, -3600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3604($fp)
	li $t0, 0
	lw $t1, -3604($fp)
	sub $t0, $t0, $t1
	sw $t0, -3608($fp)
	li $t0, 0
	lw $t1, -3608($fp)
	sub $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -1740($fp)
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1676
	sw $t0, -3620($fp)
	li $t0, 0
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
	addi $t0, $fp, -1676
	sw $t0, -3640($fp)
	li $t0, 1
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
	lw $t0, -3656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1676
	sw $t0, -3660($fp)
	li $t0, 2
	sw $t0, -3664($fp)
	li $t0, 4
	lw $t1, -3664($fp)
	mul $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	lw $t1, -3660($fp)
	add $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	lw $t1, 0($t0)
	sw $t1, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1676
	sw $t0, -3680($fp)
	li $t0, 3
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
	lw $t0, -3696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1676
	sw $t0, -3700($fp)
	li $t0, 4
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
	addi $t0, $fp, -1676
	sw $t0, -3720($fp)
	li $t0, 5
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
	addi $t0, $fp, -1676
	sw $t0, -3740($fp)
	li $t0, 6
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
	addi $t0, $fp, -1676
	sw $t0, -3760($fp)
	li $t0, 7
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
	addi $t0, $fp, -1676
	sw $t0, -3780($fp)
	li $t0, 8
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
	lw $t0, -1968($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1980($fp)
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -3808($fp)
	li $t0, 0
	sw $t0, -3812($fp)
	li $t0, 4
	lw $t1, -3812($fp)
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, 0($t0)
	sw $t1, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -3828($fp)
	li $t0, 1
	sw $t0, -3832($fp)
	li $t0, 4
	lw $t1, -3832($fp)
	mul $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	lw $t1, -3828($fp)
	add $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	lw $t1, 0($t0)
	sw $t1, -3844($fp)
	lw $t0, -3844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -3848($fp)
	li $t0, 2
	sw $t0, -3852($fp)
	li $t0, 4
	lw $t1, -3852($fp)
	mul $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, -3848($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, 0($t0)
	sw $t1, -3864($fp)
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -3868($fp)
	li $t0, 3
	sw $t0, -3872($fp)
	li $t0, 4
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, 0($t0)
	sw $t1, -3884($fp)
	lw $t0, -3884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -3888($fp)
	li $t0, 4
	sw $t0, -3892($fp)
	li $t0, 4
	lw $t1, -3892($fp)
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	lw $t1, 0($t0)
	sw $t1, -3904($fp)
	lw $t0, -3904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -3908($fp)
	li $t0, 5
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
	lw $t0, -3924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -3928($fp)
	li $t0, 6
	sw $t0, -3932($fp)
	li $t0, 4
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	lw $t1, 0($t0)
	sw $t1, -3944($fp)
	lw $t0, -3944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -3948($fp)
	li $t0, 7
	sw $t0, -3952($fp)
	li $t0, 4
	lw $t1, -3952($fp)
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, -3948($fp)
	add $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	lw $t1, 0($t0)
	sw $t1, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1716
	sw $t0, -3968($fp)
	li $t0, 8
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
	addi $t0, $fp, -1716
	sw $t0, -3988($fp)
	li $t0, 9
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
	addi $t0, $fp, -1732
	sw $t0, -4008($fp)
	li $t0, 0
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
	addi $t0, $fp, -1732
	sw $t0, -4028($fp)
	li $t0, 1
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
	addi $t0, $fp, -1732
	sw $t0, -4048($fp)
	li $t0, 2
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
	addi $t0, $fp, -1732
	sw $t0, -4068($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -4088($fp)
	lw $t0, -596($fp)
	sw $t0, -4092($fp)
	lw $t1, -4092($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label429
label431:
	li $t0, 47297
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -4088($fp)
label430:
	li $t0, 0
	sw $t0, -4100($fp)
	lw $t0, -1980($fp)
	sw $t0, -4104($fp)
	li $t0, 51360
	sw $t0, -4108($fp)
	lw $t0, -4104($fp)
	lw $t1, -4108($fp)
	sub $t0, $t0, $t1
	sw $t0, -4112($fp)
	li $t0, 14909
	sw $t0, -4116($fp)
	lw $t1, -4112($fp)
	lw $t2, -4116($fp)
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -4100($fp)
label433:
	li $t0, 0
	sw $t0, -4120($fp)
	li $t0, 54337
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label434
label434:
	li $t0, 1
	sw $t0, -4120($fp)
label435:
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4128($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -4128($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 0
	sw $t0, -4136($fp)
	li $t0, 3378
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label438:
	li $t0, 1
	sw $t0, -4136($fp)
label439:
	li $t0, 0
	lw $t1, -4136($fp)
	sub $t0, $t0, $t1
	sw $t0, -4144($fp)
	addi $t0, $fp, -96
	sw $t0, -4148($fp)
	lw $t0, -1968($fp)
	sw $t0, -4152($fp)
	li $t0, 4
	lw $t1, -4152($fp)
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, -4148($fp)
	add $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	lw $t1, 0($t0)
	sw $t1, -4164($fp)
	lw $t0, -4144($fp)
	lw $t1, -4164($fp)
	sub $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, 16($fp)
	sw $t0, -4172($fp)
	lw $t0, -1740($fp)
	sw $t0, -4176($fp)
	lw $t0, -4172($fp)
	lw $t1, -4176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4180($fp)
	li $t0, 0
	lw $t1, -4180($fp)
	sub $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4168($fp)
	lw $t1, -4184($fp)
	sub $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -944($fp)
	sw $t0, -4192($fp)
	li $t0, 31451
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t1, -4188($fp)
	lw $t2, -4200($fp)
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -4132($fp)
label437:
	lw $ra, -4($fp)
	lw $v0, -4132($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label440:
	lw $t0, -884($fp)
	sw $t0, -4204($fp)
	lw $t1, -4204($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label442
label441:
	li $t0, 56032
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	sw $t0, -4216($fp)
	li $t0, 52295
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	sw $t0, -4228($fp)
	li $t0, 34396
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -4240($fp)
	li $t0, 54028
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	sw $t0, -4252($fp)
	li $t0, 7740
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	sw $t0, -4296($fp)
	li $t0, 53653
	sw $t0, -4300($fp)
	addi $t0, $fp, -4284
	sw $t0, -4304($fp)
	li $t0, 0
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4304($fp)
	lw $t1, -4312($fp)
	add $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4300($fp)
	lw $t1, -4316($fp)
	sw $t0, 0($t1)
	lw $t0, -4316($fp)
	lw $t1, 0($t0)
	sw $t1, -4320($fp)
	li $t0, 21448
	sw $t0, -4324($fp)
	addi $t0, $fp, -4284
	sw $t0, -4328($fp)
	li $t0, 1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4328($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4324($fp)
	lw $t1, -4340($fp)
	sw $t0, 0($t1)
	lw $t0, -4340($fp)
	lw $t1, 0($t0)
	sw $t1, -4344($fp)
	li $t0, 7790
	sw $t0, -4348($fp)
	addi $t0, $fp, -4284
	sw $t0, -4352($fp)
	li $t0, 2
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4352($fp)
	lw $t1, -4360($fp)
	add $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4348($fp)
	lw $t1, -4364($fp)
	sw $t0, 0($t1)
	lw $t0, -4364($fp)
	lw $t1, 0($t0)
	sw $t1, -4368($fp)
	li $t0, 22725
	sw $t0, -4372($fp)
	addi $t0, $fp, -4284
	sw $t0, -4376($fp)
	li $t0, 3
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4376($fp)
	lw $t1, -4384($fp)
	add $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4372($fp)
	lw $t1, -4388($fp)
	sw $t0, 0($t1)
	lw $t0, -4388($fp)
	lw $t1, 0($t0)
	sw $t1, -4392($fp)
	li $t0, 41759
	sw $t0, -4396($fp)
	addi $t0, $fp, -4284
	sw $t0, -4400($fp)
	li $t0, 4
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4400($fp)
	lw $t1, -4408($fp)
	add $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4396($fp)
	lw $t1, -4412($fp)
	sw $t0, 0($t1)
	lw $t0, -4412($fp)
	lw $t1, 0($t0)
	sw $t1, -4416($fp)
	li $t0, 23128
	sw $t0, -4420($fp)
	addi $t0, $fp, -4284
	sw $t0, -4424($fp)
	li $t0, 5
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4424($fp)
	lw $t1, -4432($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4420($fp)
	lw $t1, -4436($fp)
	sw $t0, 0($t1)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	li $t0, 42362
	sw $t0, -4444($fp)
	addi $t0, $fp, -4284
	sw $t0, -4448($fp)
	li $t0, 6
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4448($fp)
	lw $t1, -4456($fp)
	add $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4444($fp)
	lw $t1, -4460($fp)
	sw $t0, 0($t1)
	lw $t0, -4460($fp)
	lw $t1, 0($t0)
	sw $t1, -4464($fp)
	li $t0, 51160
	sw $t0, -4468($fp)
	addi $t0, $fp, -4284
	sw $t0, -4472($fp)
	li $t0, 7
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4472($fp)
	lw $t1, -4480($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4468($fp)
	lw $t1, -4484($fp)
	sw $t0, 0($t1)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	li $t0, 0
	sw $t0, -4492($fp)
	li $t0, 0
	sw $t0, -4496($fp)
	addi $t0, $fp, -4284
	sw $t0, -4500($fp)
	li $t0, 3
	sw $t0, -4504($fp)
	li $t0, 4
	lw $t1, -4504($fp)
	mul $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	lw $t1, -4500($fp)
	add $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, 0($t0)
	sw $t1, -4516($fp)
	li $t0, 0
	sw $t0, -4520($fp)
	lw $t0, -1740($fp)
	sw $t0, -4524($fp)
	li $t0, 0
	lw $t1, -4524($fp)
	sub $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t1, -4528($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label449
label449:
	lw $t0, -548($fp)
	sw $t0, -4532($fp)
	lw $t1, -4532($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -4520($fp)
label448:
	li $t0, 0
	sw $t0, -4536($fp)
	li $t0, 47194
	sw $t0, -4540($fp)
	li $t0, 0
	lw $t1, -4540($fp)
	sub $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -1740($fp)
	sw $t0, -4548($fp)
	lw $t1, -4544($fp)
	lw $t2, -4548($fp)
	beq $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -4536($fp)
label451:
	addi $sp, $sp, -4
	lw $t0, -4516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4536($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4552($fp)
	addi $sp, $sp, 16
	li $t0, 7929
	sw $t0, -4556($fp)
	lw $t1, -4552($fp)
	lw $t2, -4556($fp)
	bgt $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -4496($fp)
label446:
	li $t0, 0
	sw $t0, -4560($fp)
	lw $t0, -296($fp)
	sw $t0, -4564($fp)
	lw $t0, -872($fp)
	sw $t0, -4568($fp)
	lw $t0, -4564($fp)
	lw $t1, -4568($fp)
	sub $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t1, -4572($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label453
label454:
	lw $t0, -260($fp)
	sw $t0, -4576($fp)
	lw $t1, -4576($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -4560($fp)
label453:
	li $t0, 0
	sw $t0, -4580($fp)
	li $t0, 8280
	sw $t0, -4584($fp)
	li $t0, 43659
	sw $t0, -4588($fp)
	lw $t0, -4584($fp)
	lw $t1, -4588($fp)
	sub $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t1, -4592($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label457
label457:
	lw $t0, -4292($fp)
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -4580($fp)
label456:
	li $t0, 0
	sw $t0, -4600($fp)
	li $t0, 50556
	sw $t0, -4604($fp)
	lw $t0, -272($fp)
	sw $t0, -4608($fp)
	lw $t0, -4604($fp)
	lw $t1, -4608($fp)
	sub $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -596($fp)
	sw $t0, -4616($fp)
	lw $t1, -4612($fp)
	lw $t2, -4616($fp)
	beq $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -4600($fp)
label459:
	addi $t0, $fp, -8
	sw $t0, -4620($fp)
	lw $t0, -1740($fp)
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
	lw $t0, -932($fp)
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -4644($fp)
	li $t0, 0
	sw $t0, -4648($fp)
	li $t0, 57104
	sw $t0, -4652($fp)
	li $t0, 31905
	sw $t0, -4656($fp)
	lw $t0, -4652($fp)
	lw $t1, -4656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4660($fp)
	lw $t0, -884($fp)
	sw $t0, -4664($fp)
	lw $t1, -4660($fp)
	lw $t2, -4664($fp)
	beq $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -4648($fp)
label461:
	addi $sp, $sp, -4
	lw $t0, -4580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -4668($fp)
	addi $sp, $sp, 24
	lw $t0, -164($fp)
	sw $t0, -4672($fp)
	addi $t0, $fp, -16
	sw $t0, -4676($fp)
	lw $t0, -260($fp)
	sw $t0, -4680($fp)
	li $t0, 4
	lw $t1, -4680($fp)
	mul $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	lw $t1, 0($t0)
	sw $t1, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	lw $t0, -884($fp)
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -4704($fp)
	addi $sp, $sp, -4
	lw $t0, -4704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4708($fp)
	addi $sp, $sp, 8
	li $t0, 17929
	sw $t0, -4712($fp)
	lw $t1, -4708($fp)
	lw $t2, -4712($fp)
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -4696($fp)
label463:
	addi $t0, $fp, -16
	sw $t0, -4716($fp)
	lw $t0, -272($fp)
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
	li $t0, 59571
	sw $t0, -4736($fp)
	lw $t0, -4732($fp)
	lw $t1, -4736($fp)
	mul $t0, $t0, $t1
	sw $t0, -4740($fp)
	addi $sp, $sp, -4
	lw $t0, -4668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -4744($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4748($fp)
	addi $sp, $sp, 16
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 1
	sw $t0, -4492($fp)
label444:
	li $t0, 16896
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	sw $t0, -4760($fp)
	li $t0, 0
	sw $t0, -4764($fp)
	lw $t0, -272($fp)
	sw $t0, -4768($fp)
	lw $t1, -4768($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label464
label464:
	li $t0, 1
	sw $t0, -4764($fp)
label465:
	li $t0, 0
	lw $t1, -4764($fp)
	sub $t0, $t0, $t1
	sw $t0, -4772($fp)
	li $t0, 0
	sw $t0, -4776($fp)
	li $t0, 31805
	sw $t0, -4780($fp)
	li $t0, 41046
	sw $t0, -4784($fp)
	lw $t0, -4780($fp)
	lw $t1, -4784($fp)
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t1, -4788($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label467
label468:
	li $t0, 62668
	sw $t0, -4792($fp)
	lw $t1, -4792($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -4776($fp)
label467:
	addi $t0, $fp, -1676
	sw $t0, -4796($fp)
	li $t0, 4
	sw $t0, -4800($fp)
	li $t0, 4
	lw $t1, -4800($fp)
	mul $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	lw $t1, -4796($fp)
	add $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, 0($t0)
	sw $t1, -4812($fp)
	lw $t0, -152($fp)
	sw $t0, -4816($fp)
	lw $t0, -4812($fp)
	lw $t1, -4816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4820($fp)
	addi $sp, $sp, -4
	lw $t0, -4772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4824($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -56
	sw $t0, -4828($fp)
	lw $t0, -884($fp)
	sw $t0, -4832($fp)
	lw $t0, -4756($fp)
	sw $t0, -4836($fp)
	lw $t0, -4832($fp)
	lw $t1, -4836($fp)
	add $t0, $t0, $t1
	sw $t0, -4840($fp)
	li $t0, 4
	lw $t1, -4840($fp)
	mul $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	lw $t1, -4828($fp)
	add $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	lw $t1, 0($t0)
	sw $t1, -4852($fp)
	lw $t0, -4824($fp)
	lw $t1, -4852($fp)
	sub $t0, $t0, $t1
	sw $t0, -4856($fp)
label469:
	lw $t0, -560($fp)
	sw $t0, -4860($fp)
	lw $t0, -872($fp)
	sw $t0, -4864($fp)
	li $t0, 63256
	sw $t0, -4868($fp)
	lw $t0, -4864($fp)
	lw $t1, -4868($fp)
	sub $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t1, -4860($fp)
	lw $t2, -4872($fp)
	ble $t1, $t2, label473
	j label471
label473:
	li $t0, 31542
	sw $t0, -4876($fp)
	li $t0, 49428
	sw $t0, -4880($fp)
	lw $t0, -4876($fp)
	lw $t1, -4880($fp)
	sub $t0, $t0, $t1
	sw $t0, -4884($fp)
	li $t0, 32116
	sw $t0, -4888($fp)
	lw $t1, -4884($fp)
	lw $t2, -4888($fp)
	blt $t1, $t2, label472
	j label471
label472:
	li $t0, 0
	sw $t0, -4892($fp)
	lw $t0, -872($fp)
	sw $t0, -4896($fp)
	lw $t0, -272($fp)
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	sub $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t1, -4904($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label476
label476:
	li $t0, 20034
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -4892($fp)
label475:
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4912($fp)
	addi $sp, $sp, 8
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 0
	sw $t0, -4916($fp)
	li $t0, 64958
	sw $t0, -4920($fp)
	li $t0, 0
	lw $t1, -4920($fp)
	sub $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t1, -4924($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label479:
	li $t0, 42958
	sw $t0, -4928($fp)
	lw $t1, -4928($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -4916($fp)
label478:
	li $t0, 0
	sw $t0, -4932($fp)
	lw $t0, -152($fp)
	sw $t0, -4936($fp)
	li $t0, 0
	lw $t1, -4936($fp)
	sub $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t1, -4940($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label480
label480:
	li $t0, 1
	sw $t0, -4932($fp)
label481:
	li $t0, 0
	sw $t0, -4944($fp)
	lw $t0, -884($fp)
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -4952($fp)
	lw $t0, -596($fp)
	sw $t0, -4956($fp)
	li $t0, 20233
	sw $t0, -4960($fp)
	li $t0, 41482
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	sub $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -572($fp)
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	sub $t0, $t0, $t1
	sw $t0, -4976($fp)
	addi $sp, $sp, -4
	lw $t0, -4952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4980($fp)
	addi $sp, $sp, 16
	lw $t1, -4980($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label482
label482:
	li $t0, 1
	sw $t0, -4944($fp)
label483:
	addi $t0, $fp, -1716
	sw $t0, -4984($fp)
	lw $t0, -884($fp)
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
	li $t0, 57168
	sw $t0, -5004($fp)
	lw $t0, -560($fp)
	sw $t0, -5008($fp)
	lw $t0, -5004($fp)
	lw $t1, -5008($fp)
	add $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t0, -1740($fp)
	sw $t0, -5016($fp)
	lw $t0, -5012($fp)
	lw $t1, -5016($fp)
	add $t0, $t0, $t1
	sw $t0, -5020($fp)
	addi $sp, $sp, -4
	lw $t0, -4916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -5024($fp)
	addi $sp, $sp, 24
	li $t0, 17706
	sw $t0, -5028($fp)
	lw $t0, -5024($fp)
	lw $t1, -5028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5032($fp)
	lw $t0, -176($fp)
	sw $t0, -5036($fp)
	lw $t0, -560($fp)
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -5044($fp)
	li $t0, 0
	sw $t0, -5048($fp)
	addi $t0, $fp, -96
	sw $t0, -5052($fp)
	lw $t0, -1740($fp)
	sw $t0, -5056($fp)
	li $t0, 4
	lw $t1, -5056($fp)
	mul $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	lw $t1, -5052($fp)
	add $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	lw $t1, 0($t0)
	sw $t1, -5068($fp)
	li $t0, 22550
	sw $t0, -5072($fp)
	lw $t1, -5068($fp)
	lw $t2, -5072($fp)
	beq $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -5048($fp)
label485:
	lw $t0, -4248($fp)
	sw $t0, -5076($fp)
	li $t0, 0
	lw $t1, -5076($fp)
	sub $t0, $t0, $t1
	sw $t0, -5080($fp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5080($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5084($fp)
	addi $sp, $sp, 16
	lw $t0, -5036($fp)
	lw $t1, -5084($fp)
	mul $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5032($fp)
	lw $t1, -5088($fp)
	add $t0, $t0, $t1
	sw $t0, -5092($fp)
	j label469
label471:
	li $t0, 0
	sw $t0, -5096($fp)
	addi $t0, $fp, -96
	sw $t0, -5100($fp)
	li $t0, 2
	sw $t0, -5104($fp)
	li $t0, 4
	lw $t1, -5104($fp)
	mul $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	lw $t1, -5100($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	lw $t1, 0($t0)
	sw $t1, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label489:
	addi $t0, $fp, -1732
	sw $t0, -5120($fp)
	li $t0, 2
	sw $t0, -5124($fp)
	li $t0, 4
	lw $t1, -5124($fp)
	mul $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	lw $t1, -5120($fp)
	add $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	lw $t1, 0($t0)
	sw $t1, -5136($fp)
	lw $t0, 4($fp)
	sw $t0, -5140($fp)
	lw $t0, -5136($fp)
	lw $t1, -5140($fp)
	sub $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t1, -5144($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label488
label488:
	li $t0, 60434
	sw $t0, -5148($fp)
	li $t0, 1
	sw $t0, -5152($fp)
	lw $t0, -5148($fp)
	lw $t1, -5152($fp)
	mul $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -5096($fp)
label487:
	lw $t0, -4212($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4224($fp)
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4236($fp)
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4248($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 57053
	sw $t0, -5176($fp)
	li $t0, 25309
	sw $t0, -5180($fp)
	lw $t0, -5176($fp)
	lw $t1, -5180($fp)
	mul $t0, $t0, $t1
	sw $t0, -5184($fp)
	li $t0, 6077
	sw $t0, -5188($fp)
	lw $t0, -5184($fp)
	lw $t1, -5188($fp)
	sub $t0, $t0, $t1
	sw $t0, -5192($fp)
	li $t0, 0
	sw $t0, -5196($fp)
	lw $t0, -560($fp)
	sw $t0, -5200($fp)
	lw $t0, -884($fp)
	sw $t0, -5204($fp)
	lw $t1, -5200($fp)
	lw $t2, -5204($fp)
	beq $t1, $t2, label490
	j label492
label492:
	li $t0, 12323
	sw $t0, -5208($fp)
	lw $t1, -5208($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -5196($fp)
label491:
	li $t0, 0
	sw $t0, -5212($fp)
	li $t0, 4393
	sw $t0, -5216($fp)
	lw $t1, -5216($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label494
label496:
	lw $t0, -4224($fp)
	sw $t0, -5220($fp)
	lw $t1, -5220($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label495:
	li $t0, 40157
	sw $t0, -5224($fp)
	lw $t1, -5224($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -5212($fp)
label494:
	li $t0, 0
	sw $t0, -5228($fp)
	li $t0, 26613
	sw $t0, -5232($fp)
	lw $t1, -5232($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label497
label497:
	li $t0, 1
	sw $t0, -5228($fp)
label498:
	lw $t0, -4236($fp)
	sw $t0, -5236($fp)
	lw $t0, -5228($fp)
	lw $t1, -5236($fp)
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	li $t0, 0
	sw $t0, -5244($fp)
	li $t0, 22735
	sw $t0, -5248($fp)
	lw $t0, -4212($fp)
	sw $t0, -5252($fp)
	lw $t1, -5248($fp)
	lw $t2, -5252($fp)
	blt $t1, $t2, label499
	j label501
label501:
	li $t0, 3179
	sw $t0, -5256($fp)
	lw $t1, -5256($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -5244($fp)
label500:
	addi $sp, $sp, -4
	lw $t0, -5244($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5260($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -5212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5260($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5264($fp)
	addi $sp, $sp, 16
	li $t0, 31561
	sw $t0, -5268($fp)
	lw $t0, -5264($fp)
	lw $t1, -5268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5272($fp)
	addi $sp, $sp, -4
	lw $t0, -5192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5272($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5276($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5280($fp)
	li $t0, 23322
	sw $t0, -5284($fp)
	li $t0, 0
	lw $t1, -5284($fp)
	sub $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t1, -5288($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label502
label502:
	li $t0, 1
	sw $t0, -5280($fp)
label503:
	li $t0, 0
	lw $t1, -5280($fp)
	sub $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5276($fp)
	lw $t1, -5292($fp)
	mul $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $ra, -4($fp)
	lw $v0, -5296($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label440
label442:
	li $t0, 819
	sw $t0, -5388($fp)
	addi $t0, $fp, -5324
	sw $t0, -5392($fp)
	li $t0, 0
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5392($fp)
	lw $t1, -5400($fp)
	add $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5388($fp)
	lw $t1, -5404($fp)
	sw $t0, 0($t1)
	lw $t0, -5404($fp)
	lw $t1, 0($t0)
	sw $t1, -5408($fp)
	li $t0, 3209
	sw $t0, -5412($fp)
	addi $t0, $fp, -5324
	sw $t0, -5416($fp)
	li $t0, 1
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -5416($fp)
	lw $t1, -5424($fp)
	add $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5412($fp)
	lw $t1, -5428($fp)
	sw $t0, 0($t1)
	lw $t0, -5428($fp)
	lw $t1, 0($t0)
	sw $t1, -5432($fp)
	li $t0, 21042
	sw $t0, -5436($fp)
	addi $t0, $fp, -5324
	sw $t0, -5440($fp)
	li $t0, 2
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5440($fp)
	lw $t1, -5448($fp)
	add $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -5436($fp)
	lw $t1, -5452($fp)
	sw $t0, 0($t1)
	lw $t0, -5452($fp)
	lw $t1, 0($t0)
	sw $t1, -5456($fp)
	li $t0, 32361
	sw $t0, -5460($fp)
	addi $t0, $fp, -5324
	sw $t0, -5464($fp)
	li $t0, 3
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5464($fp)
	lw $t1, -5472($fp)
	add $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5460($fp)
	lw $t1, -5476($fp)
	sw $t0, 0($t1)
	lw $t0, -5476($fp)
	lw $t1, 0($t0)
	sw $t1, -5480($fp)
	li $t0, 52637
	sw $t0, -5484($fp)
	addi $t0, $fp, -5324
	sw $t0, -5488($fp)
	li $t0, 4
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5488($fp)
	lw $t1, -5496($fp)
	add $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5484($fp)
	lw $t1, -5500($fp)
	sw $t0, 0($t1)
	lw $t0, -5500($fp)
	lw $t1, 0($t0)
	sw $t1, -5504($fp)
	li $t0, 53158
	sw $t0, -5508($fp)
	addi $t0, $fp, -5324
	sw $t0, -5512($fp)
	li $t0, 5
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5512($fp)
	lw $t1, -5520($fp)
	add $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5508($fp)
	lw $t1, -5524($fp)
	sw $t0, 0($t1)
	lw $t0, -5524($fp)
	lw $t1, 0($t0)
	sw $t1, -5528($fp)
	li $t0, 52396
	sw $t0, -5532($fp)
	addi $t0, $fp, -5324
	sw $t0, -5536($fp)
	li $t0, 6
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -5536($fp)
	lw $t1, -5544($fp)
	add $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5532($fp)
	lw $t1, -5548($fp)
	sw $t0, 0($t1)
	lw $t0, -5548($fp)
	lw $t1, 0($t0)
	sw $t1, -5552($fp)
	li $t0, 44269
	sw $t0, -5556($fp)
	addi $t0, $fp, -5360
	sw $t0, -5560($fp)
	li $t0, 0
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5560($fp)
	lw $t1, -5568($fp)
	add $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5556($fp)
	lw $t1, -5572($fp)
	sw $t0, 0($t1)
	lw $t0, -5572($fp)
	lw $t1, 0($t0)
	sw $t1, -5576($fp)
	li $t0, 7855
	sw $t0, -5580($fp)
	addi $t0, $fp, -5360
	sw $t0, -5584($fp)
	li $t0, 1
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -5584($fp)
	lw $t1, -5592($fp)
	add $t0, $t0, $t1
	sw $t0, -5596($fp)
	lw $t0, -5580($fp)
	lw $t1, -5596($fp)
	sw $t0, 0($t1)
	lw $t0, -5596($fp)
	lw $t1, 0($t0)
	sw $t1, -5600($fp)
	li $t0, 28342
	sw $t0, -5604($fp)
	addi $t0, $fp, -5360
	sw $t0, -5608($fp)
	li $t0, 2
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5608($fp)
	lw $t1, -5616($fp)
	add $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $t0, -5604($fp)
	lw $t1, -5620($fp)
	sw $t0, 0($t1)
	lw $t0, -5620($fp)
	lw $t1, 0($t0)
	sw $t1, -5624($fp)
	li $t0, 43691
	sw $t0, -5628($fp)
	addi $t0, $fp, -5360
	sw $t0, -5632($fp)
	li $t0, 3
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5632($fp)
	lw $t1, -5640($fp)
	add $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5628($fp)
	lw $t1, -5644($fp)
	sw $t0, 0($t1)
	lw $t0, -5644($fp)
	lw $t1, 0($t0)
	sw $t1, -5648($fp)
	li $t0, 50814
	sw $t0, -5652($fp)
	addi $t0, $fp, -5360
	sw $t0, -5656($fp)
	li $t0, 4
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5656($fp)
	lw $t1, -5664($fp)
	add $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5652($fp)
	lw $t1, -5668($fp)
	sw $t0, 0($t1)
	lw $t0, -5668($fp)
	lw $t1, 0($t0)
	sw $t1, -5672($fp)
	li $t0, 46048
	sw $t0, -5676($fp)
	addi $t0, $fp, -5360
	sw $t0, -5680($fp)
	li $t0, 5
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5680($fp)
	lw $t1, -5688($fp)
	add $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5676($fp)
	lw $t1, -5692($fp)
	sw $t0, 0($t1)
	lw $t0, -5692($fp)
	lw $t1, 0($t0)
	sw $t1, -5696($fp)
	li $t0, 705
	sw $t0, -5700($fp)
	addi $t0, $fp, -5360
	sw $t0, -5704($fp)
	li $t0, 6
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5704($fp)
	lw $t1, -5712($fp)
	add $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5700($fp)
	lw $t1, -5716($fp)
	sw $t0, 0($t1)
	lw $t0, -5716($fp)
	lw $t1, 0($t0)
	sw $t1, -5720($fp)
	li $t0, 5063
	sw $t0, -5724($fp)
	addi $t0, $fp, -5360
	sw $t0, -5728($fp)
	li $t0, 7
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -5728($fp)
	lw $t1, -5736($fp)
	add $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5724($fp)
	lw $t1, -5740($fp)
	sw $t0, 0($t1)
	lw $t0, -5740($fp)
	lw $t1, 0($t0)
	sw $t1, -5744($fp)
	li $t0, 49379
	sw $t0, -5748($fp)
	addi $t0, $fp, -5360
	sw $t0, -5752($fp)
	li $t0, 8
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5752($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5748($fp)
	lw $t1, -5764($fp)
	sw $t0, 0($t1)
	lw $t0, -5764($fp)
	lw $t1, 0($t0)
	sw $t1, -5768($fp)
	li $t0, 17291
	sw $t0, -5772($fp)
	addi $t0, $fp, -5368
	sw $t0, -5776($fp)
	li $t0, 0
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5776($fp)
	lw $t1, -5784($fp)
	add $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5772($fp)
	lw $t1, -5788($fp)
	sw $t0, 0($t1)
	lw $t0, -5788($fp)
	lw $t1, 0($t0)
	sw $t1, -5792($fp)
	li $t0, 42777
	sw $t0, -5796($fp)
	addi $t0, $fp, -5368
	sw $t0, -5800($fp)
	li $t0, 1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5800($fp)
	lw $t1, -5808($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5796($fp)
	lw $t1, -5812($fp)
	sw $t0, 0($t1)
	lw $t0, -5812($fp)
	lw $t1, 0($t0)
	sw $t1, -5816($fp)
	li $t0, 44277
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	sw $t0, -5828($fp)
	li $t0, 245
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	sw $t0, -5840($fp)
	li $t0, 65512
	sw $t0, -5844($fp)
	addi $t0, $fp, -5384
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5848($fp)
	lw $t1, -5856($fp)
	add $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5844($fp)
	lw $t1, -5860($fp)
	sw $t0, 0($t1)
	lw $t0, -5860($fp)
	lw $t1, 0($t0)
	sw $t1, -5864($fp)
	li $t0, 47456
	sw $t0, -5868($fp)
	addi $t0, $fp, -5384
	sw $t0, -5872($fp)
	li $t0, 1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5872($fp)
	lw $t1, -5880($fp)
	add $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5868($fp)
	lw $t1, -5884($fp)
	sw $t0, 0($t1)
	lw $t0, -5884($fp)
	lw $t1, 0($t0)
	sw $t1, -5888($fp)
	li $t0, 26859
	sw $t0, -5892($fp)
	addi $t0, $fp, -5384
	sw $t0, -5896($fp)
	li $t0, 2
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5896($fp)
	lw $t1, -5904($fp)
	add $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5892($fp)
	lw $t1, -5908($fp)
	sw $t0, 0($t1)
	lw $t0, -5908($fp)
	lw $t1, 0($t0)
	sw $t1, -5912($fp)
	li $t0, 4370
	sw $t0, -5916($fp)
	addi $t0, $fp, -5384
	sw $t0, -5920($fp)
	li $t0, 3
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5920($fp)
	lw $t1, -5928($fp)
	add $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5916($fp)
	lw $t1, -5932($fp)
	sw $t0, 0($t1)
	lw $t0, -5932($fp)
	lw $t1, 0($t0)
	sw $t1, -5936($fp)
	li $t0, 0
	sw $t0, -5940($fp)
	li $t0, 58420
	sw $t0, -5944($fp)
	lw $t1, -5944($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label504:
	li $t0, 1
	sw $t0, -5940($fp)
label505:
	li $t0, 16693
	sw $t0, -5948($fp)
	lw $t0, -5940($fp)
	lw $t1, -5948($fp)
	add $t0, $t0, $t1
	sw $t0, -5952($fp)
	li $t0, 0
	sw $t0, -5956($fp)
	lw $t0, -164($fp)
	sw $t0, -5960($fp)
	lw $t0, -548($fp)
	sw $t0, -5964($fp)
	lw $t1, -5960($fp)
	lw $t2, -5964($fp)
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -5956($fp)
label507:
	li $t0, 0
	sw $t0, -5968($fp)
	lw $t0, -188($fp)
	sw $t0, -5972($fp)
	lw $t0, -152($fp)
	sw $t0, -5976($fp)
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	mul $t0, $t0, $t1
	sw $t0, -5980($fp)
	li $t0, 22077
	sw $t0, -5984($fp)
	lw $t1, -5980($fp)
	lw $t2, -5984($fp)
	blt $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -5968($fp)
label509:
	addi $sp, $sp, -4
	lw $t0, -5952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5968($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -5988($fp)
	addi $sp, $sp, 16
label510:
	lw $t0, -872($fp)
	sw $t0, -5992($fp)
	lw $t0, -884($fp)
	sw $t0, -5996($fp)
	lw $t0, -5992($fp)
	lw $t1, -5996($fp)
	mul $t0, $t0, $t1
	sw $t0, -6000($fp)
	li $t0, 36916
	sw $t0, -6004($fp)
	lw $t0, -6000($fp)
	lw $t1, -6004($fp)
	add $t0, $t0, $t1
	sw $t0, -6008($fp)
	li $t0, 0
	sw $t0, -6012($fp)
	li $t0, 22770
	sw $t0, -6016($fp)
	lw $t0, -920($fp)
	sw $t0, -6020($fp)
	lw $t0, -6016($fp)
	lw $t1, -6020($fp)
	mul $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -872($fp)
	sw $t0, -6028($fp)
	lw $t1, -6024($fp)
	lw $t2, -6028($fp)
	beq $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -6012($fp)
label514:
	li $t0, 0
	sw $t0, -6032($fp)
	li $t0, 13594
	sw $t0, -6036($fp)
	li $t0, 18193
	sw $t0, -6040($fp)
	lw $t1, -6036($fp)
	lw $t2, -6040($fp)
	blt $t1, $t2, label517
	j label516
label517:
	lw $t0, -152($fp)
	sw $t0, -6044($fp)
	lw $t1, -6044($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -6032($fp)
label516:
	addi $sp, $sp, -4
	lw $t0, -6008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6032($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6048($fp)
	addi $sp, $sp, 16
	lw $t0, -152($fp)
	sw $t0, -6052($fp)
	lw $t0, -6048($fp)
	lw $t1, -6052($fp)
	mul $t0, $t0, $t1
	sw $t0, -6056($fp)
	li $t0, 0
	lw $t1, -6056($fp)
	sub $t0, $t0, $t1
	sw $t0, -6060($fp)
	li $t0, 0
	sw $t0, -6064($fp)
	li $t0, 19013
	sw $t0, -6068($fp)
	lw $t1, -6068($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label518
label518:
	li $t0, 1
	sw $t0, -6064($fp)
label519:
	lw $t0, -6060($fp)
	lw $t1, -6064($fp)
	sub $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t1, -6072($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label512
label511:
	addi $t0, $fp, -5384
	sw $t0, -6076($fp)
	lw $t0, -272($fp)
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -6084($fp)
	li $t0, 4
	lw $t1, -6084($fp)
	mul $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	lw $t1, -6076($fp)
	add $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	lw $t1, 0($t0)
	sw $t1, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	sw $t0, -6100($fp)
	j label510
label512:
	addi $t0, $fp, -16
	sw $t0, -6104($fp)
	lw $t0, -920($fp)
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -6112($fp)
	li $t0, 4
	lw $t1, -6112($fp)
	mul $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	lw $t1, -6104($fp)
	add $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	lw $t1, 0($t0)
	sw $t1, -6124($fp)
	lw $t0, -6124($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -6128($fp)
	lw $t1, -6128($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 0
	sw $t0, -6132($fp)
	li $t0, 25979
	sw $t0, -6136($fp)
	lw $t1, -6136($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label526
label526:
	li $t0, 1
	sw $t0, -6132($fp)
label527:
	lw $t0, -932($fp)
	sw $t0, -6140($fp)
	lw $t0, -6132($fp)
	lw $t1, -6140($fp)
	mul $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 0
	sw $t0, -6148($fp)
	lw $t0, -5836($fp)
	sw $t0, -6152($fp)
	li $t0, 57958
	sw $t0, -6156($fp)
	lw $t1, -6152($fp)
	lw $t2, -6156($fp)
	bge $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -6148($fp)
label529:
	j label525
label524:
	li $t0, 0
	sw $t0, -6160($fp)
	li $t0, 0
	sw $t0, -6164($fp)
	addi $t0, $fp, -5360
	sw $t0, -6168($fp)
	li $t0, 6
	sw $t0, -6172($fp)
	li $t0, 4
	lw $t1, -6172($fp)
	mul $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	lw $t1, -6168($fp)
	add $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	lw $t1, 0($t0)
	sw $t1, -6184($fp)
	li $t0, 45580
	sw $t0, -6188($fp)
	li $t0, 0
	sw $t0, -6192($fp)
	li $t0, 51374
	sw $t0, -6196($fp)
	li $t0, 0
	lw $t1, -6196($fp)
	sub $t0, $t0, $t1
	sw $t0, -6200($fp)
	li $t0, 13081
	sw $t0, -6204($fp)
	lw $t1, -6200($fp)
	lw $t2, -6204($fp)
	ble $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -6192($fp)
label535:
	addi $sp, $sp, -4
	lw $t0, -6184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6192($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6208($fp)
	addi $sp, $sp, 16
	li $t0, 53436
	sw $t0, -6212($fp)
	lw $t1, -6208($fp)
	lw $t2, -6212($fp)
	ble $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -6164($fp)
label533:
	li $t0, 1041
	sw $t0, -6216($fp)
	lw $t0, -260($fp)
	sw $t0, -6220($fp)
	lw $t0, -6216($fp)
	lw $t1, -6220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6224($fp)
	lw $t1, -6164($fp)
	lw $t2, -6224($fp)
	bge $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -6160($fp)
label531:
	lw $t0, -6160($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -6228($fp)
label525:
	j label522
label521:
	li $t0, 35506
	sw $t0, -6232($fp)
label522:
	lw $t0, -848($fp)
	sw $t0, -6236($fp)
	li $t0, 0
	sw $t0, -6240($fp)
	li $t0, 38714
	sw $t0, -6244($fp)
	lw $t1, -6244($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label539:
	li $t0, 1
	sw $t0, -6240($fp)
label540:
	lw $t0, -6236($fp)
	lw $t1, -6240($fp)
	add $t0, $t0, $t1
	sw $t0, -6248($fp)
	addi $t0, $fp, -96
	sw $t0, -6252($fp)
	lw $t0, -152($fp)
	sw $t0, -6256($fp)
	li $t0, 4
	lw $t1, -6256($fp)
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	lw $t1, -6252($fp)
	add $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	lw $t1, 0($t0)
	sw $t1, -6268($fp)
	addi $t0, $fp, -96
	sw $t0, -6272($fp)
	li $t0, 5
	sw $t0, -6276($fp)
	li $t0, 4
	lw $t1, -6276($fp)
	mul $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	lw $t1, -6272($fp)
	add $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	lw $t1, 0($t0)
	sw $t1, -6288($fp)
	lw $t0, -6268($fp)
	lw $t1, -6288($fp)
	mul $t0, $t0, $t1
	sw $t0, -6292($fp)
	li $t0, 0
	lw $t1, -6292($fp)
	sub $t0, $t0, $t1
	sw $t0, -6296($fp)
	lw $t0, -6248($fp)
	lw $t1, -6296($fp)
	sub $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label537
label536:
	lw $t0, -260($fp)
	sw $t0, -6304($fp)
	jal f12
	sw $v0, -6308($fp)
	addi $sp, $sp, 4
	lw $t0, -6304($fp)
	lw $t1, -6308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6312($fp)
	li $t0, 0
	lw $t1, -6312($fp)
	sub $t0, $t0, $t1
	sw $t0, -6316($fp)
	li $t0, 43777
	sw $t0, -6356($fp)
	addi $t0, $fp, -6352
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
	li $t0, 30932
	sw $t0, -6380($fp)
	addi $t0, $fp, -6352
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
	li $t0, 53502
	sw $t0, -6404($fp)
	addi $t0, $fp, -6352
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
	li $t0, 21018
	sw $t0, -6428($fp)
	addi $t0, $fp, -6352
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
	li $t0, 9674
	sw $t0, -6452($fp)
	addi $t0, $fp, -6352
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
	li $t0, 53748
	sw $t0, -6476($fp)
	addi $t0, $fp, -6352
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
	li $t0, 20995
	sw $t0, -6500($fp)
	addi $t0, $fp, -6352
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
	li $t0, 57130
	sw $t0, -6524($fp)
	addi $t0, $fp, -6352
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
	li $t0, 15071
	sw $t0, -6548($fp)
	addi $t0, $fp, -6352
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
	li $t0, 0
	sw $t0, -6572($fp)
	li $t0, 0
	sw $t0, -6576($fp)
	lw $t0, -248($fp)
	sw $t0, -6580($fp)
	li $t0, 25365
	sw $t0, -6584($fp)
	lw $t0, -164($fp)
	sw $t0, -6588($fp)
	lw $t0, -6584($fp)
	lw $t1, -6588($fp)
	add $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t1, -6580($fp)
	lw $t2, -6592($fp)
	beq $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -6576($fp)
label545:
	li $t0, 0
	sw $t0, -6596($fp)
	li $t0, 64828
	sw $t0, -6600($fp)
	lw $t0, -584($fp)
	sw $t0, -6604($fp)
	lw $t0, -6600($fp)
	lw $t1, -6604($fp)
	mul $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t1, -6608($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label547
label548:
	li $t0, 64183
	sw $t0, -6612($fp)
	lw $t1, -6612($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -6596($fp)
label547:
	li $t0, 0
	sw $t0, -6616($fp)
	lw $t0, -560($fp)
	sw $t0, -6620($fp)
	lw $t0, -596($fp)
	sw $t0, -6624($fp)
	lw $t0, -6620($fp)
	lw $t1, -6624($fp)
	add $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t1, -6628($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label551
label551:
	li $t0, 26148
	sw $t0, -6632($fp)
	lw $t1, -6632($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -6616($fp)
label550:
	li $t0, 0
	sw $t0, -6636($fp)
	li $t0, 0
	sw $t0, -6640($fp)
	lw $t0, -848($fp)
	sw $t0, -6644($fp)
	li $t0, 42058
	sw $t0, -6648($fp)
	lw $t1, -6644($fp)
	lw $t2, -6648($fp)
	ble $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -6640($fp)
label555:
	li $t0, 27266
	sw $t0, -6652($fp)
	lw $t1, -6640($fp)
	lw $t2, -6652($fp)
	beq $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -6636($fp)
label553:
	li $t0, 0
	sw $t0, -6656($fp)
	li $t0, 13672
	sw $t0, -6660($fp)
	li $t0, 7955
	sw $t0, -6664($fp)
	lw $t1, -6660($fp)
	lw $t2, -6664($fp)
	bgt $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -6656($fp)
label557:
	li $t0, 0
	sw $t0, -6668($fp)
	lw $t0, -164($fp)
	sw $t0, -6672($fp)
	lw $t0, -920($fp)
	sw $t0, -6676($fp)
	lw $t1, -6672($fp)
	lw $t2, -6676($fp)
	bgt $t1, $t2, label558
	j label559
label558:
	li $t0, 1
	sw $t0, -6668($fp)
label559:
	addi $sp, $sp, -4
	lw $t0, -6596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6668($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -6680($fp)
	addi $sp, $sp, 24
	lw $t0, 8($fp)
	sw $t0, -6684($fp)
	lw $t0, -6680($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t1, -6576($fp)
	lw $t2, -6688($fp)
	beq $t1, $t2, label541
	j label543
label543:
	li $t0, 0
	sw $t0, -6692($fp)
	li $t0, 0
	sw $t0, -6696($fp)
	li $t0, 41505
	sw $t0, -6700($fp)
	li $t0, 17225
	sw $t0, -6704($fp)
	lw $t1, -6700($fp)
	lw $t2, -6704($fp)
	bne $t1, $t2, label565
	j label564
label565:
	li $t0, 24315
	sw $t0, -6708($fp)
	lw $t1, -6708($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -6696($fp)
label564:
	li $t0, 0
	sw $t0, -6712($fp)
	li $t0, 0
	sw $t0, -6716($fp)
	li $t0, 51829
	sw $t0, -6720($fp)
	lw $t0, -548($fp)
	sw $t0, -6724($fp)
	lw $t1, -6720($fp)
	lw $t2, -6724($fp)
	beq $t1, $t2, label571
	j label570
label571:
	lw $t0, 20($fp)
	sw $t0, -6728($fp)
	lw $t1, -6728($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -6716($fp)
label570:
	lw $t0, -560($fp)
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -6736($fp)
	li $t0, 0
	sw $t0, -6740($fp)
	lw $t0, -908($fp)
	sw $t0, -6744($fp)
	li $t0, 137
	sw $t0, -6748($fp)
	lw $t0, -6744($fp)
	lw $t1, -6748($fp)
	add $t0, $t0, $t1
	sw $t0, -6752($fp)
	li $t0, 63264
	sw $t0, -6756($fp)
	lw $t1, -6752($fp)
	lw $t2, -6756($fp)
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -6740($fp)
label573:
	addi $sp, $sp, -4
	lw $t0, -6716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6740($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6760($fp)
	addi $sp, $sp, 16
	lw $t1, -6760($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label568:
	li $t0, 36348
	sw $t0, -6764($fp)
	lw $t1, -6764($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -6712($fp)
label567:
	li $t0, 0
	sw $t0, -6768($fp)
	lw $t0, -884($fp)
	sw $t0, -6772($fp)
	li $t0, 4739
	sw $t0, -6776($fp)
	lw $t0, -6772($fp)
	lw $t1, -6776($fp)
	add $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t1, -6780($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label576:
	lw $t0, -272($fp)
	sw $t0, -6784($fp)
	lw $t1, -6784($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -6768($fp)
label575:
	addi $sp, $sp, -4
	lw $t0, -6696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6768($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6788($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6788($fp)
	sub $t0, $t0, $t1
	sw $t0, -6792($fp)
	li $t0, 24550
	sw $t0, -6796($fp)
	li $t0, 0
	sw $t0, -6800($fp)
	li $t0, 30167
	sw $t0, -6804($fp)
	lw $t0, -872($fp)
	sw $t0, -6808($fp)
	lw $t1, -6804($fp)
	lw $t2, -6808($fp)
	bgt $t1, $t2, label579
	j label578
label579:
	lw $t0, -284($fp)
	sw $t0, -6812($fp)
	lw $t1, -6812($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -6800($fp)
label578:
	addi $t0, $fp, -6352
	sw $t0, -6816($fp)
	li $t0, 3
	sw $t0, -6820($fp)
	li $t0, 4
	lw $t1, -6820($fp)
	mul $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	lw $t1, -6816($fp)
	add $t0, $t0, $t1
	sw $t0, -6828($fp)
	lw $t0, -6828($fp)
	lw $t1, 0($t0)
	sw $t1, -6832($fp)
	lw $t0, -284($fp)
	sw $t0, -6836($fp)
	lw $t0, -6832($fp)
	lw $t1, -6836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6840($fp)
	li $t0, 0
	sw $t0, -6844($fp)
	li $t0, 56605
	sw $t0, -6848($fp)
	li $t0, 31000
	sw $t0, -6852($fp)
	lw $t0, -6848($fp)
	lw $t1, -6852($fp)
	mul $t0, $t0, $t1
	sw $t0, -6856($fp)
	li $t0, 38352
	sw $t0, -6860($fp)
	lw $t1, -6856($fp)
	lw $t2, -6860($fp)
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -6844($fp)
label581:
	addi $sp, $sp, -4
	lw $t0, -6792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6844($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -6864($fp)
	addi $sp, $sp, 24
	li $t0, 62523
	sw $t0, -6868($fp)
	lw $t1, -6864($fp)
	lw $t2, -6868($fp)
	ble $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -6692($fp)
label562:
	li $t0, 0
	sw $t0, -6872($fp)
	li $t0, 0
	sw $t0, -6876($fp)
	lw $t0, 4($fp)
	sw $t0, -6880($fp)
	lw $t1, -6880($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -6876($fp)
label585:
	li $t0, 25271
	sw $t0, -6884($fp)
	lw $t1, -6876($fp)
	lw $t2, -6884($fp)
	bge $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -6872($fp)
label583:
	li $t0, 45161
	sw $t0, -6888($fp)
	addi $sp, $sp, -4
	lw $t0, -6692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6888($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6892($fp)
	addi $sp, $sp, 16
	lw $t0, -128($fp)
	sw $t0, -6896($fp)
	lw $t1, -6892($fp)
	lw $t2, -6896($fp)
	bne $t1, $t2, label560
	j label542
label560:
	li $t0, 26899
	sw $t0, -6900($fp)
	lw $t1, -6900($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -6572($fp)
label542:
	addi $t0, $fp, -8
	sw $t0, -6904($fp)
	li $t0, 0
	sw $t0, -6908($fp)
	li $t0, 4
	lw $t1, -6908($fp)
	mul $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	lw $t1, -6904($fp)
	add $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	lw $t1, 0($t0)
	sw $t1, -6920($fp)
	addi $sp, $sp, -4
	lw $t0, -6920($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6924($fp)
	addi $sp, $sp, 8
	li $t0, 18494
	sw $t0, -6928($fp)
	lw $t0, -6924($fp)
	lw $t1, -6928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6932($fp)
	jal f12
	sw $v0, -6936($fp)
	addi $sp, $sp, 4
	j label538
label537:
label586:
	lw $t0, -152($fp)
	sw $t0, -6940($fp)
	lw $t0, 12($fp)
	sw $t0, -6944($fp)
	lw $t0, -6940($fp)
	lw $t1, -6944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6948($fp)
	li $t0, 0
	lw $t1, -6948($fp)
	sub $t0, $t0, $t1
	sw $t0, -6952($fp)
	li $t0, 27598
	sw $t0, -6956($fp)
	li $t0, 0
	lw $t1, -6956($fp)
	sub $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6952($fp)
	lw $t1, -6960($fp)
	sub $t0, $t0, $t1
	sw $t0, -6964($fp)
	lw $t0, -6964($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -6968($fp)
	lw $t1, -6968($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 0
	sw $t0, -6972($fp)
	addi $t0, $fp, -5324
	sw $t0, -6976($fp)
	li $t0, 0
	sw $t0, -6980($fp)
	lw $t0, -140($fp)
	sw $t0, -6984($fp)
	li $t0, 43347
	sw $t0, -6988($fp)
	lw $t1, -6984($fp)
	lw $t2, -6988($fp)
	beq $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -6980($fp)
label593:
	li $t0, 4
	lw $t1, -6980($fp)
	mul $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	lw $t1, -6976($fp)
	add $t0, $t0, $t1
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	lw $t1, 0($t0)
	sw $t1, -7000($fp)
	li $t0, 0
	lw $t1, -7000($fp)
	sub $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t1, -7004($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label590
label591:
	addi $t0, $fp, -8
	sw $t0, -7008($fp)
	lw $t0, 4($fp)
	sw $t0, -7012($fp)
	li $t0, 4
	lw $t1, -7012($fp)
	mul $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	lw $t1, -7008($fp)
	add $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, 0($t0)
	sw $t1, -7024($fp)
	li $t0, 0
	lw $t1, -7024($fp)
	sub $t0, $t0, $t1
	sw $t0, -7028($fp)
	lw $t1, -7028($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -6972($fp)
label590:
	lw $ra, -4($fp)
	lw $v0, -6972($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label586
label588:
label538:
	li $t0, 0
	sw $t0, -7032($fp)
	lw $t0, -248($fp)
	sw $t0, -7036($fp)
	lw $t1, -7036($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label595
label596:
	addi $t0, $fp, -5368
	sw $t0, -7040($fp)
	li $t0, 1
	sw $t0, -7044($fp)
	li $t0, 4
	lw $t1, -7044($fp)
	mul $t0, $t0, $t1
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	lw $t1, -7040($fp)
	add $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	lw $t1, 0($t0)
	sw $t1, -7056($fp)
	lw $t0, -296($fp)
	sw $t0, -7060($fp)
	lw $t0, -7056($fp)
	lw $t1, -7060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7064($fp)
	li $t0, 19869
	sw $t0, -7068($fp)
	li $t0, 0
	lw $t1, -7068($fp)
	sub $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t1, -7064($fp)
	lw $t2, -7072($fp)
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -7032($fp)
label595:
label597:
	li $t0, 0
	sw $t0, -7076($fp)
	li $t0, 61701
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -7084($fp)
	lw $t0, -176($fp)
	sw $t0, -7088($fp)
	lw $t0, -896($fp)
	sw $t0, -7092($fp)
	lw $t0, -7088($fp)
	lw $t1, -7092($fp)
	mul $t0, $t0, $t1
	sw $t0, -7096($fp)
	li $t0, 59432
	sw $t0, -7100($fp)
	addi $sp, $sp, -4
	lw $t0, -7084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7104($fp)
	addi $sp, $sp, 16
	lw $t1, -7104($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label600
label600:
	li $t0, 1
	sw $t0, -7076($fp)
label601:
	lw $t0, -7076($fp)
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	sw $t0, -7108($fp)
	lw $t1, -7108($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
label602:
	lw $t0, -152($fp)
	sw $t0, -7112($fp)
	lw $t1, -7112($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	addi $t0, $fp, -56
	sw $t0, -7116($fp)
	li $t0, 19161
	sw $t0, -7120($fp)
	li $t0, 58079
	sw $t0, -7124($fp)
	lw $t0, -7120($fp)
	lw $t1, -7124($fp)
	mul $t0, $t0, $t1
	sw $t0, -7128($fp)
	li $t0, 1
	sw $t0, -7132($fp)
	lw $t0, -7128($fp)
	lw $t1, -7132($fp)
	mul $t0, $t0, $t1
	sw $t0, -7136($fp)
	li $t0, 0
	sw $t0, -7140($fp)
	lw $t0, -920($fp)
	sw $t0, -7144($fp)
	lw $t1, -7144($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label605
label605:
	li $t0, 1
	sw $t0, -7140($fp)
label606:
	lw $t0, -7136($fp)
	lw $t1, -7140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7148($fp)
	li $t0, 4
	lw $t1, -7148($fp)
	mul $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	lw $t1, -7116($fp)
	add $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	lw $t1, 0($t0)
	sw $t1, -7160($fp)
	lw $ra, -4($fp)
	lw $v0, -7160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label602
label604:
	j label597
label599:
	addi $t0, $fp, -8
	sw $t0, -7164($fp)
	li $t0, 0
	sw $t0, -7168($fp)
	li $t0, 4
	lw $t1, -7168($fp)
	mul $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	lw $t1, -7164($fp)
	add $t0, $t0, $t1
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	lw $t1, 0($t0)
	sw $t1, -7180($fp)
	lw $t0, -7180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -7208($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -7228($fp)
	li $t0, 1
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
	lw $t0, -248($fp)
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7268($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -7288($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -7308($fp)
	li $t0, 2
	sw $t0, -7312($fp)
	li $t0, 4
	lw $t1, -7312($fp)
	mul $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -7316($fp)
	lw $t1, -7308($fp)
	add $t0, $t0, $t1
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	lw $t1, 0($t0)
	sw $t1, -7324($fp)
	lw $t0, -7324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7328($fp)
	li $t0, 3
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
	lw $t0, -7344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7348($fp)
	li $t0, 4
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
	lw $t0, -7364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7368($fp)
	li $t0, 5
	sw $t0, -7372($fp)
	li $t0, 4
	lw $t1, -7372($fp)
	mul $t0, $t0, $t1
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	lw $t1, -7368($fp)
	add $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t0, -7380($fp)
	lw $t1, 0($t0)
	sw $t1, -7384($fp)
	lw $t0, -7384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7388($fp)
	li $t0, 6
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
	addi $t0, $fp, -56
	sw $t0, -7408($fp)
	li $t0, 7
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
	addi $t0, $fp, -56
	sw $t0, -7428($fp)
	li $t0, 8
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
	addi $t0, $fp, -56
	sw $t0, -7448($fp)
	li $t0, 9
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
	lw $t0, -548($fp)
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -7488($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -7508($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -7528($fp)
	li $t0, 2
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
	addi $t0, $fp, -96
	sw $t0, -7548($fp)
	li $t0, 3
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
	addi $t0, $fp, -96
	sw $t0, -7568($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -7588($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -7608($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -7628($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -7648($fp)
	li $t0, 8
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
	addi $t0, $fp, -96
	sw $t0, -7668($fp)
	li $t0, 9
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
	lw $t0, -848($fp)
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -7724($fp)
	li $t0, 0
	lw $t1, -7724($fp)
	sub $t0, $t0, $t1
	sw $t0, -7728($fp)
	lw $ra, -4($fp)
	lw $v0, -7728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -848
	li $t0, 44433
	sw $t0, -40($fp)
	addi $t0, $fp, -36
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
	li $t0, 49149
	sw $t0, -64($fp)
	addi $t0, $fp, -36
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
	li $t0, 6791
	sw $t0, -88($fp)
	addi $t0, $fp, -36
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
	li $t0, 17249
	sw $t0, -112($fp)
	addi $t0, $fp, -36
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
	li $t0, 20263
	sw $t0, -136($fp)
	addi $t0, $fp, -36
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
	li $t0, 10489
	sw $t0, -160($fp)
	addi $t0, $fp, -36
	sw $t0, -164($fp)
	li $t0, 5
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
	li $t0, 47416
	sw $t0, -184($fp)
	addi $t0, $fp, -36
	sw $t0, -188($fp)
	li $t0, 6
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
	li $t0, 44813
	sw $t0, -208($fp)
	addi $t0, $fp, -36
	sw $t0, -212($fp)
	li $t0, 7
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
	li $t0, 15229
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 47553
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 42541
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	addi $t0, $fp, -36
	sw $t0, -268($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -288($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -308($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -328($fp)
	li $t0, 3
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
	lw $t0, -344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -348($fp)
	li $t0, 4
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
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -368($fp)
	li $t0, 5
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
	lw $t0, -384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -388($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -408($fp)
	li $t0, 7
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
	lw $t0, -236($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 1522
	sw $t0, -440($fp)
	lw $ra, -4($fp)
	lw $v0, -440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, 4($fp)
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label610:
	lw $t0, -260($fp)
	sw $t0, -452($fp)
	li $t0, 18366
	sw $t0, -456($fp)
	lw $t0, -452($fp)
	lw $t1, -456($fp)
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	li $t0, 18510
	sw $t0, -464($fp)
	lw $t0, -460($fp)
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label609
label609:
	li $t0, 18747
	sw $t0, -472($fp)
	lw $t0, -260($fp)
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -480($fp)
	li $t0, 0
	lw $t1, -480($fp)
	sub $t0, $t0, $t1
	sw $t0, -484($fp)
	li $t0, 42681
	sw $t0, -488($fp)
	li $t0, 0
	lw $t1, -488($fp)
	sub $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t1, -484($fp)
	lw $t2, -492($fp)
	ble $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -444($fp)
label608:
	li $t0, 0
	sw $t0, -496($fp)
	li $t0, 0
	sw $t0, -500($fp)
	addi $t0, $fp, -36
	sw $t0, -504($fp)
	lw $t0, 12($fp)
	sw $t0, -508($fp)
	li $t0, 4
	lw $t1, -508($fp)
	mul $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	lw $t1, 0($t0)
	sw $t1, -520($fp)
	li $t0, 55208
	sw $t0, -524($fp)
	lw $t1, -520($fp)
	lw $t2, -524($fp)
	ble $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -500($fp)
label617:
	li $t0, 0
	sw $t0, -528($fp)
	li $t0, 45647
	sw $t0, -532($fp)
	lw $t0, -260($fp)
	sw $t0, -536($fp)
	lw $t1, -532($fp)
	lw $t2, -536($fp)
	blt $t1, $t2, label618
	j label620
label620:
	lw $t0, 12($fp)
	sw $t0, -540($fp)
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -528($fp)
label619:
	li $t0, 0
	sw $t0, -544($fp)
	li $t0, 0
	sw $t0, -548($fp)
	lw $t0, -236($fp)
	sw $t0, -552($fp)
	lw $t0, -260($fp)
	sw $t0, -556($fp)
	lw $t1, -552($fp)
	lw $t2, -556($fp)
	bge $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -548($fp)
label624:
	li $t0, 15497
	sw $t0, -560($fp)
	lw $t1, -548($fp)
	lw $t2, -560($fp)
	bge $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -544($fp)
label622:
	addi $sp, $sp, -4
	lw $t0, -500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -564($fp)
	addi $sp, $sp, 16
	lw $t0, -236($fp)
	sw $t0, -568($fp)
	lw $t1, -564($fp)
	lw $t2, -568($fp)
	bne $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -496($fp)
label615:
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -572($fp)
	addi $sp, $sp, 8
	lw $t1, -572($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 0
	sw $t0, -576($fp)
	li $t0, 0
	sw $t0, -580($fp)
	li $t0, 64141
	sw $t0, -584($fp)
	li $t0, 17270
	sw $t0, -588($fp)
	lw $t1, -584($fp)
	lw $t2, -588($fp)
	ble $t1, $t2, label627
	j label629
label629:
	li $t0, 11291
	sw $t0, -592($fp)
	lw $t1, -592($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -580($fp)
label628:
	li $t0, 0
	sw $t0, -596($fp)
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 33480
	sw $t0, -604($fp)
	lw $t0, 12($fp)
	sw $t0, -608($fp)
	lw $t1, -604($fp)
	lw $t2, -608($fp)
	beq $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -600($fp)
label633:
	lw $t0, -236($fp)
	sw $t0, -612($fp)
	lw $t1, -600($fp)
	lw $t2, -612($fp)
	bne $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -596($fp)
label631:
	li $t0, 0
	sw $t0, -616($fp)
	lw $t0, 12($fp)
	sw $t0, -620($fp)
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label634
label634:
	li $t0, 1
	sw $t0, -616($fp)
label635:
	addi $sp, $sp, -4
	lw $t0, -580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -624($fp)
	addi $sp, $sp, 16
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label625
label625:
	li $t0, 1
	sw $t0, -576($fp)
label626:
	lw $t0, -576($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -628($fp)
	lw $t0, -236($fp)
	sw $t0, -632($fp)
	j label613
label612:
	li $t0, 30771
	sw $t0, -636($fp)
	li $t0, 0
	sw $t0, -640($fp)
	lw $t0, -236($fp)
	sw $t0, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label636
label636:
	li $t0, 1
	sw $t0, -640($fp)
label637:
	lw $t0, -636($fp)
	lw $t1, -640($fp)
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, 12($fp)
	sw $t0, -652($fp)
	li $t0, 0
	lw $t1, -652($fp)
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -648($fp)
	lw $t1, -656($fp)
	sub $t0, $t0, $t1
	sw $t0, -660($fp)
label613:
	addi $t0, $fp, -36
	sw $t0, -664($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -684($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -704($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -724($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -744($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -764($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -784($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -804($fp)
	li $t0, 7
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
	lw $t0, -236($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -836($fp)
	li $t0, 52823
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label638
label638:
	li $t0, 1
	sw $t0, -836($fp)
label639:
	lw $t0, 8($fp)
	sw $t0, -844($fp)
	lw $t0, -836($fp)
	lw $t1, -844($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -852($fp)
	lw $ra, -4($fp)
	lw $v0, -852($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f16:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -12
	li $t0, 31161
	sw $t0, -8($fp)
	addi $sp, $sp, -4
	lw $t0, -8($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12($fp)
	addi $sp, $sp, 8
	li $t0, 24667
	sw $t0, -16($fp)
	lw $ra, -4($fp)
	lw $v0, -16($fp)
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
	jal f16
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
