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
	addi $sp, $sp, -16
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -8($fp)
label122:
	li $t0, 30825
	sw $t0, -20($fp)
	lw $ra, -4($fp)
	lw $v0, -20($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -528
	li $t0, 1116
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 3900
	sw $t0, -48($fp)
	addi $t0, $fp, -28
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
	li $t0, 40689
	sw $t0, -72($fp)
	addi $t0, $fp, -28
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
	li $t0, 12525
	sw $t0, -96($fp)
	addi $t0, $fp, -28
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
	li $t0, 16868
	sw $t0, -120($fp)
	addi $t0, $fp, -28
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
	li $t0, 29067
	sw $t0, -144($fp)
	addi $t0, $fp, -28
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
	li $t0, 14644
	sw $t0, -168($fp)
	addi $t0, $fp, -28
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
	li $t0, 10979
	sw $t0, -192($fp)
	addi $t0, $fp, -32
	sw $t0, -196($fp)
	li $t0, 0
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
	lw $t0, 4($fp)
	sw $t0, -216($fp)
	li $t0, 63208
	sw $t0, -220($fp)
	lw $t0, -216($fp)
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	li $t0, 59710
	sw $t0, -228($fp)
	lw $t0, 4($fp)
	sw $t0, -232($fp)
	lw $t0, -228($fp)
	lw $t1, -232($fp)
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -224($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -244($fp)
	li $t0, 0
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 0
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	lw $t0, 8($fp)
	sw $t0, -264($fp)
	lw $t0, 4($fp)
	sw $t0, -268($fp)
	lw $t1, -264($fp)
	lw $t2, -268($fp)
	bge $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -260($fp)
label132:
	li $t0, 46777
	sw $t0, -272($fp)
	lw $t1, -260($fp)
	lw $t2, -272($fp)
	ble $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -256($fp)
label130:
	lw $t0, 4($fp)
	sw $t0, -276($fp)
	li $t0, 0
	lw $t1, -276($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t1, -256($fp)
	lw $t2, -280($fp)
	blt $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -252($fp)
label128:
	lw $t0, 4($fp)
	sw $t0, -284($fp)
	lw $t0, 4($fp)
	sw $t0, -288($fp)
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t1, -252($fp)
	lw $t2, -292($fp)
	beq $t1, $t2, label126
	j label125
label126:
	addi $t0, $fp, -32
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	li $t0, 4
	lw $t1, -300($fp)
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	lw $t1, 0($t0)
	sw $t1, -312($fp)
	li $t0, 0
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -248($fp)
label125:
	lw $t0, 4($fp)
	sw $t0, -320($fp)
	lw $t0, -40($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
	sw $t0, -368($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -388($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -408($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -428($fp)
	li $t0, 5
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
	li $t0, 0
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
	li $t0, 0
	sw $t0, -468($fp)
	li $t0, 0
	sw $t0, -472($fp)
	addi $t0, $fp, -28
	sw $t0, -476($fp)
	li $t0, 1
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
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label137:
	lw $t0, 8($fp)
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -472($fp)
label136:
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -500($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -500($fp)
	sub $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -40($fp)
	sw $t0, -508($fp)
	addi $t0, $fp, -28
	sw $t0, -512($fp)
	li $t0, 5
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
	lw $t0, -508($fp)
	lw $t1, -528($fp)
	mul $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t1, -504($fp)
	lw $t2, -532($fp)
	bge $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -468($fp)
label134:
	lw $ra, -4($fp)
	lw $v0, -468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -448
	li $t0, 35176
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 26210
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 42368
	sw $t0, -56($fp)
	addi $t0, $fp, -40
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
	li $t0, 51828
	sw $t0, -80($fp)
	addi $t0, $fp, -40
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
	li $t0, 23674
	sw $t0, -104($fp)
	addi $t0, $fp, -40
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
	li $t0, 11823
	sw $t0, -128($fp)
	addi $t0, $fp, -40
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
	li $t0, 49596
	sw $t0, -152($fp)
	addi $t0, $fp, -40
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
	li $t0, 25869
	sw $t0, -176($fp)
	addi $t0, $fp, -40
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
	li $t0, 26725
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 44072
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 11302
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -216($fp)
	sw $t0, -236($fp)
	li $t0, 0
	sw $t0, -240($fp)
	lw $t0, -12($fp)
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -240($fp)
label142:
	lw $t0, -236($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -228($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -256($fp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -260($fp)
	addi $sp, $sp, 8
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
	lw $t0, -260($fp)
	lw $t1, -280($fp)
	mul $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t1, -248($fp)
	lw $t2, -284($fp)
	bgt $t1, $t2, label138
	j label139
label138:
	li $t0, 0
	sw $t0, -288($fp)
	lw $t0, -204($fp)
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label145:
	lw $t0, -48($fp)
	sw $t0, -296($fp)
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -288($fp)
label144:
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -300($fp)
	addi $sp, $sp, 8
	li $t0, 42127
	sw $t0, -304($fp)
	lw $t0, -300($fp)
	lw $t1, -304($fp)
	mul $t0, $t0, $t1
	sw $t0, -308($fp)
	li $t0, 55049
	sw $t0, -312($fp)
	lw $t0, -308($fp)
	lw $t1, -312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	lw $t0, -228($fp)
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -320($fp)
label147:
	addi $t0, $fp, -40
	sw $t0, -328($fp)
	lw $t0, -48($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -336($fp)
	li $t0, 4
	lw $t1, -336($fp)
	mul $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t1, 0($t0)
	sw $t1, -348($fp)
	lw $t0, -320($fp)
	lw $t1, -348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -352($fp)
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -316($fp)
	lw $t1, -356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -360($fp)
label139:
	lw $t0, -228($fp)
	sw $t0, -364($fp)
	addi $t0, $fp, -40
	sw $t0, -368($fp)
	jal f8
	sw $v0, -372($fp)
	addi $sp, $sp, 4
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
	li $t0, 0
	lw $t1, -384($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	li $t0, 16255
	sw $t0, -392($fp)
	li $t0, 0
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -396($fp)
	li $t0, 17280
	sw $t0, -400($fp)
	li $t0, 0
	sw $t0, -404($fp)
	li $t0, 46348
	sw $t0, -408($fp)
	lw $t0, -12($fp)
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	sub $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label150:
	li $t0, 16683
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -404($fp)
label149:
	li $t0, 2039
	sw $t0, -424($fp)
	li $t0, 33123
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -432($fp)
	li $t0, 0
	lw $t1, -432($fp)
	sub $t0, $t0, $t1
	sw $t0, -436($fp)
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -440($fp)
	addi $sp, $sp, 12
	lw $t0, -400($fp)
	lw $t1, -440($fp)
	sub $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -12($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -452($fp)
	lw $ra, -4($fp)
	lw $v0, -452($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3552
	li $t0, 44103
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 44020
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 10858
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
	li $t0, 25344
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
	li $t0, 47555
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
	li $t0, 59396
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
	li $t0, 31892
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
	li $t0, 39066
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 44712
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 50823
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 8706
	sw $t0, -276($fp)
	addi $t0, $fp, -208
	sw $t0, -280($fp)
	li $t0, 0
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
	li $t0, 5386
	sw $t0, -300($fp)
	addi $t0, $fp, -208
	sw $t0, -304($fp)
	li $t0, 1
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
	li $t0, 27656
	sw $t0, -324($fp)
	addi $t0, $fp, -208
	sw $t0, -328($fp)
	li $t0, 2
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
	li $t0, 60535
	sw $t0, -348($fp)
	addi $t0, $fp, -208
	sw $t0, -352($fp)
	li $t0, 3
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -352($fp)
	lw $t1, -360($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -348($fp)
	lw $t1, -364($fp)
	sw $t0, 0($t1)
	lw $t0, -364($fp)
	lw $t1, 0($t0)
	sw $t1, -368($fp)
	li $t0, 29060
	sw $t0, -372($fp)
	addi $t0, $fp, -208
	sw $t0, -376($fp)
	li $t0, 4
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
	li $t0, 39479
	sw $t0, -396($fp)
	addi $t0, $fp, -208
	sw $t0, -400($fp)
	li $t0, 5
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
	li $t0, 44595
	sw $t0, -420($fp)
	addi $t0, $fp, -208
	sw $t0, -424($fp)
	li $t0, 6
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
	li $t0, 54930
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 669
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 23131
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 696
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 54602
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 35486
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 42823
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 44116
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 51741
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 60103
	sw $t0, -552($fp)
	addi $t0, $fp, -224
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
	li $t0, 46155
	sw $t0, -576($fp)
	addi $t0, $fp, -224
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
	li $t0, 19329
	sw $t0, -600($fp)
	addi $t0, $fp, -224
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
	li $t0, 40915
	sw $t0, -624($fp)
	addi $t0, $fp, -224
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
	li $t0, 62838
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 63432
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 19400
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 8160
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 23240
	sw $t0, -696($fp)
	addi $t0, $fp, -248
	sw $t0, -700($fp)
	li $t0, 0
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
	li $t0, 1419
	sw $t0, -720($fp)
	addi $t0, $fp, -248
	sw $t0, -724($fp)
	li $t0, 1
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
	li $t0, 2020
	sw $t0, -744($fp)
	addi $t0, $fp, -248
	sw $t0, -748($fp)
	li $t0, 2
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
	li $t0, 55133
	sw $t0, -768($fp)
	addi $t0, $fp, -248
	sw $t0, -772($fp)
	li $t0, 3
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
	li $t0, 40485
	sw $t0, -792($fp)
	addi $t0, $fp, -248
	sw $t0, -796($fp)
	li $t0, 4
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
	li $t0, 46732
	sw $t0, -816($fp)
	addi $t0, $fp, -248
	sw $t0, -820($fp)
	li $t0, 5
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
	li $t0, 40420
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 49191
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 52119
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 2540
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 44190
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 15643
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 42020
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 23250
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
label151:
	addi $t0, $fp, -24
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
	li $t0, 0
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -960($fp)
	addi $sp, $sp, 8
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	addi $t0, $fp, -248
	sw $t0, -964($fp)
	lw $t0, -928($fp)
	sw $t0, -968($fp)
	li $t0, 46381
	sw $t0, -972($fp)
	lw $t0, -968($fp)
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	li $t0, 4
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	addi $t0, $fp, -24
	sw $t0, -992($fp)
	lw $t0, -256($fp)
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
	lw $t0, -988($fp)
	lw $t1, -1008($fp)
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	li $t0, 5733
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	sub $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
label157:
	lw $t0, -688($fp)
	sw $t0, -1024($fp)
	addi $t0, $fp, -248
	sw $t0, -1028($fp)
	lw $t0, -892($fp)
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
	li $t0, 0
	lw $t1, -1044($fp)
	sub $t0, $t0, $t1
	sw $t0, -1048($fp)
	addi $sp, $sp, -4
	lw $t0, -1024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1052($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 31755
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label160
label160:
	li $t0, 1
	sw $t0, -1056($fp)
label161:
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t1, -1064($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 16332
	sw $t0, -1068($fp)
	lw $ra, -4($fp)
	lw $v0, -1068($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label157
label159:
	j label156
label155:
	lw $t0, -676($fp)
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	li $t0, 48556
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label162:
	li $t0, 1
	sw $t0, -1076($fp)
label163:
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1084($fp)
label156:
	j label151
label153:
label164:
	addi $t0, $fp, -24
	sw $t0, -1088($fp)
	li $t0, 0
	sw $t0, -1092($fp)
	li $t0, 10335
	sw $t0, -1096($fp)
	lw $t0, -472($fp)
	sw $t0, -1100($fp)
	lw $t1, -1096($fp)
	lw $t2, -1100($fp)
	ble $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -1092($fp)
label169:
	li $t0, 4
	lw $t1, -1092($fp)
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, 0($t0)
	sw $t1, -1112($fp)
	li $t0, 2537
	sw $t0, -1116($fp)
	lw $t0, -1112($fp)
	lw $t1, -1116($fp)
	add $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label166
label167:
	li $t0, 43124
	sw $t0, -1124($fp)
	lw $t0, -856($fp)
	sw $t0, -1128($fp)
	lw $t0, -1124($fp)
	lw $t1, -1128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1132($fp)
	lw $t0, -484($fp)
	sw $t0, -1136($fp)
	lw $t0, -1132($fp)
	lw $t1, -1136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1140($fp)
	li $t0, 0
	sw $t0, -1144($fp)
	lw $t0, -652($fp)
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -1144($fp)
label171:
	lw $t1, -1140($fp)
	lw $t2, -1144($fp)
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 56490
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 21866
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1156($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -1184($fp)
	li $t0, 18503
	sw $t0, -1188($fp)
	lw $t0, -1184($fp)
	lw $t1, -1188($fp)
	sub $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $ra, -4($fp)
	lw $v0, -1192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label172:
	li $t0, 0
	sw $t0, -1196($fp)
	lw $t0, -880($fp)
	sw $t0, -1200($fp)
	li $t0, 37903
	sw $t0, -1204($fp)
	lw $t0, -1200($fp)
	lw $t1, -1204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	lw $t0, -856($fp)
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label179:
	lw $t0, -652($fp)
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -1212($fp)
label178:
	li $t0, 0
	sw $t0, -1224($fp)
	li $t0, 0
	sw $t0, -1228($fp)
	lw $t0, -868($fp)
	sw $t0, -1232($fp)
	lw $t0, -1168($fp)
	sw $t0, -1236($fp)
	lw $t1, -1232($fp)
	lw $t2, -1236($fp)
	bgt $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -1228($fp)
label183:
	lw $t0, -844($fp)
	sw $t0, -1240($fp)
	lw $t1, -1228($fp)
	lw $t2, -1240($fp)
	bgt $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1224($fp)
label181:
	lw $t0, -688($fp)
	sw $t0, -1244($fp)
	lw $t0, -544($fp)
	sw $t0, -1248($fp)
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	li $t0, 19762
	sw $t0, -1256($fp)
	lw $t0, -1252($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -652($fp)
	sw $t0, -1264($fp)
	li $t0, 53793
	sw $t0, -1268($fp)
	lw $t0, -1264($fp)
	lw $t1, -1268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1272($fp)
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1272($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1276($fp)
	addi $sp, $sp, 24
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -1196($fp)
label176:
	li $t0, 61953
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -1284($fp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1288($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1288($fp)
	sub $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1196($fp)
	lw $t1, -1292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1296($fp)
	lw $t1, -1296($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 43003
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 39322
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 0
	sw $t0, -1324($fp)
	jal f8
	sw $v0, -1328($fp)
	addi $sp, $sp, 4
	lw $t0, -1304($fp)
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	add $t0, $t0, $t1
	sw $t0, -1336($fp)
	li $t0, 7484
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -1344($fp)
	addi $t0, $fp, -248
	sw $t0, -1348($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -1368($fp)
	lw $t0, -688($fp)
	sw $t0, -1372($fp)
	li $t0, 63974
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	li $t0, 32600
	sw $t0, -1384($fp)
	lw $t1, -1380($fp)
	lw $t2, -1384($fp)
	bge $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1368($fp)
label187:
	lw $t0, -676($fp)
	sw $t0, -1388($fp)
	li $t0, 0
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1396($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1396($fp)
	sub $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, 12($fp)
	sw $t0, -1404($fp)
	lw $t1, -1400($fp)
	lw $t2, -1404($fp)
	beq $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -1324($fp)
label185:
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, -892($fp)
	sw $t0, -1412($fp)
	lw $t0, -892($fp)
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1420($fp)
	li $t0, 0
	lw $t1, -1420($fp)
	sub $t0, $t0, $t1
	sw $t0, -1424($fp)
	li $t0, 0
	sw $t0, -1428($fp)
	li $t0, 63463
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label191:
	li $t0, 1
	sw $t0, -1428($fp)
label192:
	li $t0, 31753
	sw $t0, -1436($fp)
	lw $t0, -1428($fp)
	lw $t1, -1436($fp)
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t1, -1424($fp)
	lw $t2, -1440($fp)
	beq $t1, $t2, label188
	j label190
label190:
	lw $t0, -1316($fp)
	sw $t0, -1444($fp)
	lw $t0, -652($fp)
	sw $t0, -1448($fp)
	li $t0, 0
	lw $t1, -1448($fp)
	sub $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1444($fp)
	lw $t1, -1452($fp)
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	li $t0, 0
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -1408($fp)
label189:
	j label172
label174:
	jal f8
	sw $v0, -1464($fp)
	addi $sp, $sp, 4
	li $t0, 10025
	sw $t0, -1468($fp)
	li $t0, 0
	lw $t1, -1468($fp)
	sub $t0, $t0, $t1
	sw $t0, -1472($fp)
	li $t0, 0
	lw $t1, -1472($fp)
	sub $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1464($fp)
	lw $t1, -1476($fp)
	sub $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -892($fp)
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 0
	sw $t0, -1488($fp)
	li $t0, 42117
	sw $t0, -1492($fp)
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label197
label199:
	lw $t0, -1156($fp)
	sw $t0, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label198:
	lw $t0, -508($fp)
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -1488($fp)
label197:
	lw $t0, -176($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -1508($fp)
	addi $sp, $sp, -4
	lw $t0, -1488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1508($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1512($fp)
	addi $sp, $sp, 12
	lw $t0, -664($fp)
	sw $t0, -1516($fp)
	jal f8
	sw $v0, -1520($fp)
	addi $sp, $sp, 4
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1512($fp)
	lw $t1, -1524($fp)
	sub $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $ra, -4($fp)
	lw $v0, -1528($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label194:
label200:
	lw $t0, -176($fp)
	sw $t0, -1532($fp)
	li $t0, 58168
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1540($fp)
	lw $t0, -448($fp)
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	lw $t0, -880($fp)
	sw $t0, -1556($fp)
	li $t0, 0
	lw $t1, -1556($fp)
	sub $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label205
label205:
	li $t0, 46213
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -1552($fp)
label204:
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, -652($fp)
	sw $t0, -1572($fp)
	li $t0, 29198
	sw $t0, -1576($fp)
	lw $t1, -1572($fp)
	lw $t2, -1576($fp)
	bgt $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1568($fp)
label207:
	li $t0, 0
	sw $t0, -1580($fp)
	lw $t0, -520($fp)
	sw $t0, -1584($fp)
	lw $t0, -916($fp)
	sw $t0, -1588($fp)
	lw $t0, -1584($fp)
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	li $t0, 52434
	sw $t0, -1596($fp)
	lw $t1, -1592($fp)
	lw $t2, -1596($fp)
	bge $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -1580($fp)
label209:
	li $t0, 0
	sw $t0, -1600($fp)
	li $t0, 47397
	sw $t0, -1604($fp)
	li $t0, 52045
	sw $t0, -1608($fp)
	lw $t1, -1604($fp)
	lw $t2, -1608($fp)
	bge $t1, $t2, label210
	j label212
label212:
	li $t0, 65367
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -1600($fp)
label211:
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1616($fp)
	addi $sp, $sp, 24
	lw $t0, -1616($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label202
label201:
	addi $t0, $fp, -24
	sw $t0, -1624($fp)
	lw $t0, -916($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -1632($fp)
	li $t0, 4
	lw $t1, -1632($fp)
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	lw $t1, 0($t0)
	sw $t1, -1644($fp)
	li $t0, 0
	lw $t1, -1644($fp)
	sub $t0, $t0, $t1
	sw $t0, -1648($fp)
	li $t0, 0
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $ra, -4($fp)
	lw $v0, -1652($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label200
label202:
	j label164
label166:
label213:
	li $t0, 0
	sw $t0, -1656($fp)
	addi $t0, $fp, -208
	sw $t0, -1660($fp)
	lw $t0, -268($fp)
	sw $t0, -1664($fp)
	li $t0, 4
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label217
label219:
	li $t0, 60953
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label218:
	li $t0, 62545
	sw $t0, -1684($fp)
	lw $t0, -688($fp)
	sw $t0, -1688($fp)
	lw $t0, -1684($fp)
	lw $t1, -1688($fp)
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -1656($fp)
label217:
	lw $t0, -1656($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 41188
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	li $t0, 5753
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	li $t0, 65082
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	li $t0, 18776
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
label220:
	li $t0, 0
	sw $t0, -1748($fp)
	addi $t0, $fp, -248
	sw $t0, -1752($fp)
	li $t0, 0
	sw $t0, -1756($fp)
	lw $t0, -472($fp)
	sw $t0, -1760($fp)
	lw $t0, -868($fp)
	sw $t0, -1764($fp)
	lw $t1, -1760($fp)
	lw $t2, -1764($fp)
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -1756($fp)
label226:
	li $t0, 4
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -1748($fp)
label224:
	li $t0, 0
	sw $t0, -1780($fp)
	lw $t0, -1740($fp)
	sw $t0, -1784($fp)
	li $t0, 62243
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	sub $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -460($fp)
	sw $t0, -1796($fp)
	lw $t0, -1792($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1800($fp)
	jal f8
	sw $v0, -1804($fp)
	addi $sp, $sp, 4
	lw $t1, -1800($fp)
	lw $t2, -1804($fp)
	ble $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -1780($fp)
label228:
	lw $t1, -1748($fp)
	lw $t2, -1780($fp)
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 21413
	sw $t0, -1808($fp)
	li $t0, 0
	lw $t1, -1808($fp)
	sub $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $ra, -4($fp)
	lw $v0, -1812($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label220
label222:
	lw $t0, -1740($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	addi $t0, $fp, -24
	sw $t0, -1828($fp)
	lw $t0, -32($fp)
	sw $t0, -1832($fp)
	li $t0, 4
	lw $t1, -1832($fp)
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	li $t0, 61168
	sw $t0, -1848($fp)
	lw $t1, -1844($fp)
	lw $t2, -1848($fp)
	beq $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -1824($fp)
label232:
	li $t0, 0
	sw $t0, -1852($fp)
	lw $t0, -1728($fp)
	sw $t0, -1856($fp)
	lw $t0, 8($fp)
	sw $t0, -1860($fp)
	lw $t1, -1856($fp)
	lw $t2, -1860($fp)
	bne $t1, $t2, label233
	j label235
label235:
	li $t0, 58727
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -1852($fp)
label234:
	addi $t0, $fp, -24
	sw $t0, -1868($fp)
	li $t0, 0
	sw $t0, -1872($fp)
	li $t0, 4
	lw $t1, -1872($fp)
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, -1868($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	lw $t1, 0($t0)
	sw $t1, -1884($fp)
	li $t0, 0
	sw $t0, -1888($fp)
	li $t0, 45356
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label238
label238:
	li $t0, 51242
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -1888($fp)
label237:
	addi $t0, $fp, -248
	sw $t0, -1900($fp)
	li $t0, 4
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
	lw $t0, -32($fp)
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label239:
	li $t0, 1
	sw $t0, -1920($fp)
label240:
	li $t0, 46918
	sw $t0, -1928($fp)
	lw $t0, -1920($fp)
	lw $t1, -1928($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 9647
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -1936($fp)
label242:
	li $t0, 0
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1944($fp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1948($fp)
	addi $sp, $sp, 24
	lw $t0, -844($fp)
	sw $t0, -1952($fp)
	lw $t0, -1948($fp)
	lw $t1, -1952($fp)
	sub $t0, $t0, $t1
	sw $t0, -1956($fp)
	li $t0, 50500
	sw $t0, -1960($fp)
	lw $t0, -664($fp)
	sw $t0, -1964($fp)
	lw $t0, -1960($fp)
	lw $t1, -1964($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	li $t0, 41175
	sw $t0, -1972($fp)
	lw $t0, -1968($fp)
	lw $t1, -1972($fp)
	sub $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -520($fp)
	sw $t0, -1980($fp)
	li $t0, 37280
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1992($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1996($fp)
	lw $t0, -268($fp)
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label243:
	li $t0, 1
	sw $t0, -1996($fp)
label244:
	lw $t0, -652($fp)
	sw $t0, -2004($fp)
	lw $t0, -1996($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	li $t0, 0
	sw $t0, -2012($fp)
	lw $t0, -484($fp)
	sw $t0, -2016($fp)
	li $t0, 56744
	sw $t0, -2020($fp)
	lw $t1, -2016($fp)
	lw $t2, -2020($fp)
	beq $t1, $t2, label247
	j label246
label247:
	li $t0, 3216
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -2012($fp)
label246:
	lw $t0, 4($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -2032($fp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2036($fp)
	addi $sp, $sp, 12
	lw $t0, -2008($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t1, -1992($fp)
	lw $t2, -2040($fp)
	bgt $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -1820($fp)
label230:
	lw $ra, -4($fp)
	lw $v0, -1820($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1740($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 37750
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label250
label250:
	lw $t0, -460($fp)
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -2048($fp)
label249:
	lw $t0, -2048($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -2060($fp)
	lw $ra, -4($fp)
	lw $v0, -2060($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label251:
	li $t0, 0
	sw $t0, -2064($fp)
	lw $t0, -856($fp)
	sw $t0, -2068($fp)
	lw $t0, -544($fp)
	sw $t0, -2072($fp)
	lw $t0, -652($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -2080($fp)
	li $t0, 0
	sw $t0, -2084($fp)
	li $t0, 37581
	sw $t0, -2088($fp)
	li $t0, 25503
	sw $t0, -2092($fp)
	lw $t1, -2088($fp)
	lw $t2, -2092($fp)
	bgt $t1, $t2, label258
	j label257
label258:
	li $t0, 18923
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -2084($fp)
label257:
	li $t0, 0
	sw $t0, -2100($fp)
	li $t0, 38605
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label262:
	li $t0, 55261
	sw $t0, -2108($fp)
	lw $t1, -2108($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label261
label261:
	lw $t0, 8($fp)
	sw $t0, -2112($fp)
	lw $t1, -2112($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -2100($fp)
label260:
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2100($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2116($fp)
	addi $sp, $sp, 24
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -2064($fp)
label255:
	li $t0, 0
	lw $t1, -2064($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	addi $t0, $fp, -248
	sw $t0, -2124($fp)
	lw $t0, -1704($fp)
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
	lw $t0, -2140($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
label266:
	addi $t0, $fp, -24
	sw $t0, -2152($fp)
	li $t0, 0
	sw $t0, -2156($fp)
	li $t0, 18258
	sw $t0, -2160($fp)
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label269:
	li $t0, 1
	sw $t0, -2156($fp)
label270:
	lw $t0, -904($fp)
	sw $t0, -2164($fp)
	lw $t0, -2156($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	li $t0, 4
	lw $t1, -2168($fp)
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	lw $t1, 0($t0)
	sw $t1, -2180($fp)
	li $t0, 0
	lw $t1, -2180($fp)
	sub $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t1, -2184($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 18135
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	li $t0, 14340
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	sw $t0, -2208($fp)
	li $t0, 15267
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -2220($fp)
	li $t0, 0
	sw $t0, -2224($fp)
	li $t0, 0
	sw $t0, -2228($fp)
	lw $t0, -44($fp)
	sw $t0, -2232($fp)
	jal f8
	sw $v0, -2236($fp)
	addi $sp, $sp, 4
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2192($fp)
	sw $t0, -2244($fp)
	lw $t1, -2240($fp)
	lw $t2, -2244($fp)
	ble $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -2228($fp)
label274:
	li $t0, 0
	sw $t0, -2248($fp)
	addi $t0, $fp, -24
	sw $t0, -2252($fp)
	lw $t0, -1728($fp)
	sw $t0, -2256($fp)
	li $t0, 4
	lw $t1, -2256($fp)
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	li $t0, 0
	lw $t1, -2268($fp)
	sub $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label275
label275:
	li $t0, 1
	sw $t0, -2248($fp)
label276:
	lw $t1, -2228($fp)
	lw $t2, -2248($fp)
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -2224($fp)
label272:
	addi $t0, $fp, -24
	sw $t0, -2276($fp)
	lw $t0, -484($fp)
	sw $t0, -2280($fp)
	lw $t0, -520($fp)
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	li $t0, 59324
	sw $t0, -2292($fp)
	lw $t0, -2288($fp)
	lw $t1, -2292($fp)
	sub $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -676($fp)
	sw $t0, -2300($fp)
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2304($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -2304($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	li $t0, 20093
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	jal f8
	sw $v0, -2328($fp)
	addi $sp, $sp, 4
	li $t0, 49844
	sw $t0, -2332($fp)
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	li $t0, 0
	sw $t0, -2340($fp)
	li $t0, 36227
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -2340($fp)
label278:
	lw $t0, -2192($fp)
	sw $t0, -2348($fp)
	lw $t0, -2340($fp)
	lw $t1, -2348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2352($fp)
	li $t0, 0
	sw $t0, -2356($fp)
	li $t0, 16801
	sw $t0, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label281:
	lw $t0, -2204($fp)
	sw $t0, -2364($fp)
	lw $t1, -2364($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -2356($fp)
label280:
	li $t0, 12564
	sw $t0, -2368($fp)
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	li $t0, 14814
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -2380($fp)
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2384($fp)
	addi $sp, $sp, 24
	lw $t0, -2324($fp)
	lw $t1, -2384($fp)
	sub $t0, $t0, $t1
	sw $t0, -2388($fp)
	addi $t0, $fp, -248
	sw $t0, -2392($fp)
	li $t0, 0
	sw $t0, -2396($fp)
	addi $t0, $fp, -208
	sw $t0, -2400($fp)
	li $t0, 5
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
	li $t0, 59492
	sw $t0, -2420($fp)
	lw $t1, -2416($fp)
	lw $t2, -2420($fp)
	ble $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -2396($fp)
label283:
	li $t0, 4
	lw $t1, -2396($fp)
	mul $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	lw $t1, 0($t0)
	sw $t1, -2432($fp)
	lw $t0, -2216($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	lw $t0, -496($fp)
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label287
label287:
	li $t0, 48683
	sw $t0, -2452($fp)
	lw $t1, -2452($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label286
label286:
	li $t0, 30509
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -2444($fp)
label285:
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2460($fp)
	addi $sp, $sp, 12
	lw $t0, -2432($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	j label266
label268:
	j label265
label264:
	li $t0, 42926
	sw $t0, -2508($fp)
	addi $t0, $fp, -2504
	sw $t0, -2512($fp)
	li $t0, 0
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2512($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2508($fp)
	lw $t1, -2524($fp)
	sw $t0, 0($t1)
	lw $t0, -2524($fp)
	lw $t1, 0($t0)
	sw $t1, -2528($fp)
	li $t0, 28503
	sw $t0, -2532($fp)
	addi $t0, $fp, -2504
	sw $t0, -2536($fp)
	li $t0, 1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2536($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2532($fp)
	lw $t1, -2548($fp)
	sw $t0, 0($t1)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	li $t0, 16215
	sw $t0, -2556($fp)
	addi $t0, $fp, -2504
	sw $t0, -2560($fp)
	li $t0, 2
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2560($fp)
	lw $t1, -2568($fp)
	add $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2556($fp)
	lw $t1, -2572($fp)
	sw $t0, 0($t1)
	lw $t0, -2572($fp)
	lw $t1, 0($t0)
	sw $t1, -2576($fp)
	li $t0, 40631
	sw $t0, -2580($fp)
	addi $t0, $fp, -2504
	sw $t0, -2584($fp)
	li $t0, 3
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2584($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2580($fp)
	lw $t1, -2596($fp)
	sw $t0, 0($t1)
	lw $t0, -2596($fp)
	lw $t1, 0($t0)
	sw $t1, -2600($fp)
	li $t0, 53494
	sw $t0, -2604($fp)
	addi $t0, $fp, -2504
	sw $t0, -2608($fp)
	li $t0, 4
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2608($fp)
	lw $t1, -2616($fp)
	add $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2604($fp)
	lw $t1, -2620($fp)
	sw $t0, 0($t1)
	lw $t0, -2620($fp)
	lw $t1, 0($t0)
	sw $t1, -2624($fp)
	li $t0, 9406
	sw $t0, -2628($fp)
	addi $t0, $fp, -2504
	sw $t0, -2632($fp)
	li $t0, 5
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2632($fp)
	lw $t1, -2640($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2628($fp)
	lw $t1, -2644($fp)
	sw $t0, 0($t1)
	lw $t0, -2644($fp)
	lw $t1, 0($t0)
	sw $t1, -2648($fp)
	li $t0, 36264
	sw $t0, -2652($fp)
	addi $t0, $fp, -2504
	sw $t0, -2656($fp)
	li $t0, 6
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2656($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2652($fp)
	lw $t1, -2668($fp)
	sw $t0, 0($t1)
	lw $t0, -2668($fp)
	lw $t1, 0($t0)
	sw $t1, -2672($fp)
	li $t0, 44702
	sw $t0, -2676($fp)
	addi $t0, $fp, -2504
	sw $t0, -2680($fp)
	li $t0, 7
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2680($fp)
	lw $t1, -2688($fp)
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2676($fp)
	lw $t1, -2692($fp)
	sw $t0, 0($t1)
	lw $t0, -2692($fp)
	lw $t1, 0($t0)
	sw $t1, -2696($fp)
	li $t0, 12622
	sw $t0, -2700($fp)
	addi $t0, $fp, -2504
	sw $t0, -2704($fp)
	li $t0, 8
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2704($fp)
	lw $t1, -2712($fp)
	add $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2700($fp)
	lw $t1, -2716($fp)
	sw $t0, 0($t1)
	lw $t0, -2716($fp)
	lw $t1, 0($t0)
	sw $t1, -2720($fp)
	li $t0, 8478
	sw $t0, -2724($fp)
	addi $t0, $fp, -2504
	sw $t0, -2728($fp)
	li $t0, 9
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2728($fp)
	lw $t1, -2736($fp)
	add $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2724($fp)
	lw $t1, -2740($fp)
	sw $t0, 0($t1)
	lw $t0, -2740($fp)
	lw $t1, 0($t0)
	sw $t1, -2744($fp)
	li $t0, 0
	sw $t0, -2748($fp)
	lw $t0, -916($fp)
	sw $t0, -2752($fp)
	lw $t0, -508($fp)
	sw $t0, -2756($fp)
	lw $t0, -2752($fp)
	lw $t1, -2756($fp)
	mul $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label289
label290:
	addi $t0, $fp, -248
	sw $t0, -2764($fp)
	addi $t0, $fp, -2504
	sw $t0, -2768($fp)
	lw $t0, -1728($fp)
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
	li $t0, 4
	lw $t1, -2784($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -2748($fp)
label289:
	li $t0, 0
	sw $t0, -2800($fp)
	addi $t0, $fp, -224
	sw $t0, -2804($fp)
	lw $t0, -508($fp)
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
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label293:
	lw $t0, -44($fp)
	sw $t0, -2824($fp)
	lw $t1, -2824($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -2800($fp)
label292:
	addi $sp, $sp, -4
	lw $t0, -2800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2828($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2832($fp)
	li $t0, 17771
	sw $t0, -2836($fp)
	li $t0, 2347
	sw $t0, -2840($fp)
	lw $t0, -448($fp)
	sw $t0, -2844($fp)
	li $t0, 0
	lw $t1, -2844($fp)
	sub $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2840($fp)
	lw $t1, -2848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2852($fp)
	lw $t1, -2836($fp)
	lw $t2, -2852($fp)
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -2832($fp)
label295:
label265:
	j label251
label253:
	j label213
label215:
	lw $t0, -868($fp)
	sw $t0, -2856($fp)
	li $t0, 46059
	sw $t0, -2860($fp)
	lw $t0, -2856($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	li $t0, 0
	sw $t0, -2868($fp)
	addi $t0, $fp, -248
	sw $t0, -2872($fp)
	lw $t0, -460($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -2880($fp)
	li $t0, 4
	lw $t1, -2880($fp)
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, 0($t0)
	sw $t1, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label298:
	lw $t0, 8($fp)
	sw $t0, -2896($fp)
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -2868($fp)
label297:
	li $t0, 43274
	sw $t0, -2904($fp)
	addi $t0, $fp, -2900
	sw $t0, -2908($fp)
	li $t0, 0
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2908($fp)
	lw $t1, -2916($fp)
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2904($fp)
	lw $t1, -2920($fp)
	sw $t0, 0($t1)
	lw $t0, -2920($fp)
	lw $t1, 0($t0)
	sw $t1, -2924($fp)
	li $t0, 21270
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	sw $t0, -2936($fp)
	li $t0, 64318
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	sw $t0, -2948($fp)
	li $t0, 61410
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	sw $t0, -2960($fp)
	li $t0, 35611
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 14049
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -2976($fp)
label300:
	li $t0, 2226
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	lw $t0, -2932($fp)
	sw $t0, -2996($fp)
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label303
label303:
	lw $t0, -2944($fp)
	sw $t0, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -2992($fp)
label302:
	lw $t0, -496($fp)
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -3008($fp)
	li $t0, 0
	sw $t0, -3012($fp)
	li $t0, 55704
	sw $t0, -3016($fp)
	li $t0, 0
	lw $t1, -3016($fp)
	sub $t0, $t0, $t1
	sw $t0, -3020($fp)
	li $t0, 28863
	sw $t0, -3024($fp)
	lw $t1, -3020($fp)
	lw $t2, -3024($fp)
	beq $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -3012($fp)
label305:
	li $t0, 0
	sw $t0, -3028($fp)
	lw $t0, -532($fp)
	sw $t0, -3032($fp)
	lw $t1, -3032($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -3028($fp)
label307:
	li $t0, 55198
	sw $t0, -3036($fp)
	lw $t0, -3028($fp)
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3044($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 6969
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 1
	sw $t0, -3048($fp)
label309:
	li $t0, 0
	lw $t1, -3048($fp)
	sub $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3044($fp)
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
label310:
	lw $t0, -496($fp)
	sw $t0, -3064($fp)
	lw $t0, -32($fp)
	sw $t0, -3068($fp)
	lw $t1, -3064($fp)
	lw $t2, -3068($fp)
	ble $t1, $t2, label313
	j label312
label313:
	li $t0, 8735
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -3076($fp)
	li $t0, 65090
	sw $t0, -3080($fp)
	li $t0, 1
	sw $t0, -3084($fp)
	lw $t0, -3080($fp)
	lw $t1, -3084($fp)
	mul $t0, $t0, $t1
	sw $t0, -3088($fp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3092($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -2900
	sw $t0, -3096($fp)
	li $t0, 0
	sw $t0, -3100($fp)
	li $t0, 4
	lw $t1, -3100($fp)
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, -3096($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, 0($t0)
	sw $t1, -3112($fp)
	lw $t1, -3092($fp)
	lw $t2, -3112($fp)
	blt $t1, $t2, label311
	j label312
label311:
	li $t0, 0
	sw $t0, -3116($fp)
	lw $t0, -652($fp)
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -3116($fp)
label318:
	addi $t0, $fp, -24
	sw $t0, -3124($fp)
	li $t0, 2
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
	lw $t0, -3116($fp)
	lw $t1, -3140($fp)
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -2956($fp)
	sw $t0, -3148($fp)
	lw $t0, -3144($fp)
	lw $t1, -3148($fp)
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	li $t0, 0
	sw $t0, -3156($fp)
	addi $t0, $fp, -24
	sw $t0, -3160($fp)
	lw $t0, 20($fp)
	sw $t0, -3164($fp)
	li $t0, 4
	lw $t1, -3164($fp)
	mul $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, 0($t0)
	sw $t1, -3176($fp)
	lw $t1, -3176($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label319:
	li $t0, 1
	sw $t0, -3156($fp)
label320:
	lw $t1, -3152($fp)
	lw $t2, -3156($fp)
	ble $t1, $t2, label314
	j label315
label314:
	li $t0, 0
	sw $t0, -3180($fp)
	li $t0, 23417
	sw $t0, -3184($fp)
	lw $t0, -472($fp)
	sw $t0, -3188($fp)
	lw $t0, -3184($fp)
	lw $t1, -3188($fp)
	sub $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -176($fp)
	sw $t0, -3196($fp)
	lw $t1, -3192($fp)
	lw $t2, -3196($fp)
	bgt $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -3180($fp)
label326:
	addi $sp, $sp, -4
	lw $t0, -3180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3200($fp)
	addi $sp, $sp, 8
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label322
label324:
	lw $t0, -664($fp)
	sw $t0, -3204($fp)
	li $t0, 0
	lw $t1, -3204($fp)
	sub $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label322
label321:
	lw $t0, -904($fp)
	sw $t0, -3212($fp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3216($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3216($fp)
	sub $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $ra, -4($fp)
	lw $v0, -3220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label323
label322:
	li $t0, 0
	sw $t0, -3224($fp)
	li $t0, 0
	sw $t0, -3228($fp)
	lw $t0, -484($fp)
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label329:
	li $t0, 1
	sw $t0, -3228($fp)
label330:
	li $t0, 0
	sw $t0, -3236($fp)
	lw $t0, -472($fp)
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label331:
	li $t0, 1
	sw $t0, -3236($fp)
label332:
	lw $t0, -3228($fp)
	lw $t1, -3236($fp)
	mul $t0, $t0, $t1
	sw $t0, -3244($fp)
	li $t0, 0
	lw $t1, -3244($fp)
	sub $t0, $t0, $t1
	sw $t0, -3248($fp)
	addi $t0, $fp, -224
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -904($fp)
	sw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label335
label335:
	li $t0, 20386
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -3256($fp)
label334:
	li $t0, 4
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	lw $t1, -3252($fp)
	add $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	lw $t1, 0($t0)
	sw $t1, -3276($fp)
	lw $t1, -3248($fp)
	lw $t2, -3276($fp)
	bge $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -3224($fp)
label328:
	li $t0, 58145
	sw $t0, -3280($fp)
	li $t0, 64048
	sw $t0, -3284($fp)
	lw $t0, -3280($fp)
	lw $t1, -3284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3288($fp)
label323:
	j label316
label315:
label336:
	li $t0, 0
	sw $t0, -3292($fp)
	jal f8
	sw $v0, -3296($fp)
	addi $sp, $sp, 4
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label339
label339:
	li $t0, 1
	sw $t0, -3292($fp)
label340:
	li $t0, 0
	sw $t0, -3300($fp)
	li $t0, 0
	sw $t0, -3304($fp)
	li $t0, 8344
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label343:
	li $t0, 1
	sw $t0, -3304($fp)
label344:
	lw $t0, -484($fp)
	sw $t0, -3312($fp)
	lw $t0, -472($fp)
	sw $t0, -3316($fp)
	lw $t0, -3312($fp)
	lw $t1, -3316($fp)
	mul $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t1, -3304($fp)
	lw $t2, -3320($fp)
	ble $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -3300($fp)
label342:
	lw $t1, -3292($fp)
	lw $t2, -3300($fp)
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 2016
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	addi $t0, $fp, -248
	sw $t0, -3328($fp)
	li $t0, 0
	sw $t0, -3332($fp)
	lw $t0, -892($fp)
	sw $t0, -3336($fp)
	li $t0, 34776
	sw $t0, -3340($fp)
	lw $t0, -3336($fp)
	lw $t1, -3340($fp)
	add $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -868($fp)
	sw $t0, -3348($fp)
	lw $t1, -3344($fp)
	lw $t2, -3348($fp)
	bne $t1, $t2, label350
	j label349
label350:
	lw $t0, 16($fp)
	sw $t0, -3352($fp)
	li $t0, 0
	lw $t1, -3352($fp)
	sub $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -3332($fp)
label349:
	li $t0, 4
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	lw $t1, -3328($fp)
	add $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	lw $t1, 0($t0)
	sw $t1, -3368($fp)
	j label347
label346:
	li $t0, 0
	sw $t0, -3372($fp)
	li $t0, 0
	sw $t0, -3376($fp)
	li $t0, 0
	sw $t0, -3380($fp)
	lw $t0, -472($fp)
	sw $t0, -3384($fp)
	lw $t0, -844($fp)
	sw $t0, -3388($fp)
	lw $t1, -3384($fp)
	lw $t2, -3388($fp)
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -3380($fp)
label357:
	li $t0, 14638
	sw $t0, -3392($fp)
	lw $t1, -3380($fp)
	lw $t2, -3392($fp)
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -3376($fp)
label355:
	li $t0, 0
	sw $t0, -3396($fp)
	li $t0, 53046
	sw $t0, -3400($fp)
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -3396($fp)
label359:
	addi $sp, $sp, -4
	lw $t0, -3376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3396($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3404($fp)
	addi $sp, $sp, 12
	lw $t1, -3404($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label353:
	li $t0, 43254
	sw $t0, -3408($fp)
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -3372($fp)
label352:
label347:
	j label336
label338:
label316:
	j label310
label312:
	lw $t0, -32($fp)
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -3440($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -3460($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -3480($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -3500($fp)
	li $t0, 4
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
	lw $t0, -176($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -3524($fp)
	lw $t0, -44($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -3532($fp)
	li $t0, 4
	lw $t1, -3532($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, -3524($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, 0($t0)
	sw $t1, -3544($fp)
	lw $t0, -32($fp)
	sw $t0, -3548($fp)
	lw $t0, -3544($fp)
	lw $t1, -3548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3552($fp)
	li $t0, 0
	lw $t1, -3552($fp)
	sub $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $ra, -4($fp)
	lw $v0, -3556($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	li $t0, 5281
	sw $t0, -8($fp)
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3720
	li $t0, 16986
	sw $t0, -148($fp)
	addi $t0, $fp, -40
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
	li $t0, 23778
	sw $t0, -172($fp)
	addi $t0, $fp, -40
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
	li $t0, 48555
	sw $t0, -196($fp)
	addi $t0, $fp, -40
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
	li $t0, 38256
	sw $t0, -220($fp)
	addi $t0, $fp, -40
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
	li $t0, 22560
	sw $t0, -244($fp)
	addi $t0, $fp, -40
	sw $t0, -248($fp)
	li $t0, 4
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
	li $t0, 44429
	sw $t0, -268($fp)
	addi $t0, $fp, -40
	sw $t0, -272($fp)
	li $t0, 5
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
	li $t0, 8331
	sw $t0, -292($fp)
	addi $t0, $fp, -40
	sw $t0, -296($fp)
	li $t0, 6
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
	li $t0, 36609
	sw $t0, -316($fp)
	addi $t0, $fp, -40
	sw $t0, -320($fp)
	li $t0, 7
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
	li $t0, 34091
	sw $t0, -340($fp)
	addi $t0, $fp, -40
	sw $t0, -344($fp)
	li $t0, 8
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
	li $t0, 64036
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 65473
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 36318
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 5469
	sw $t0, -400($fp)
	addi $t0, $fp, -68
	sw $t0, -404($fp)
	li $t0, 0
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
	li $t0, 65027
	sw $t0, -424($fp)
	addi $t0, $fp, -68
	sw $t0, -428($fp)
	li $t0, 1
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
	li $t0, 22853
	sw $t0, -448($fp)
	addi $t0, $fp, -68
	sw $t0, -452($fp)
	li $t0, 2
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
	li $t0, 14204
	sw $t0, -472($fp)
	addi $t0, $fp, -68
	sw $t0, -476($fp)
	li $t0, 3
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
	li $t0, 10912
	sw $t0, -496($fp)
	addi $t0, $fp, -68
	sw $t0, -500($fp)
	li $t0, 4
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
	li $t0, 3344
	sw $t0, -520($fp)
	addi $t0, $fp, -68
	sw $t0, -524($fp)
	li $t0, 5
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
	li $t0, 6087
	sw $t0, -544($fp)
	addi $t0, $fp, -68
	sw $t0, -548($fp)
	li $t0, 6
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
	li $t0, 52842
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 26761
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 26473
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 45452
	sw $t0, -604($fp)
	addi $t0, $fp, -92
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
	li $t0, 25273
	sw $t0, -628($fp)
	addi $t0, $fp, -92
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
	li $t0, 34817
	sw $t0, -652($fp)
	addi $t0, $fp, -92
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
	li $t0, 47468
	sw $t0, -676($fp)
	addi $t0, $fp, -92
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
	li $t0, 60050
	sw $t0, -700($fp)
	addi $t0, $fp, -92
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
	li $t0, 22327
	sw $t0, -724($fp)
	addi $t0, $fp, -92
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
	li $t0, 62106
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 37768
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 27608
	sw $t0, -772($fp)
	addi $t0, $fp, -128
	sw $t0, -776($fp)
	li $t0, 0
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
	li $t0, 13556
	sw $t0, -796($fp)
	addi $t0, $fp, -128
	sw $t0, -800($fp)
	li $t0, 1
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
	li $t0, 61546
	sw $t0, -820($fp)
	addi $t0, $fp, -128
	sw $t0, -824($fp)
	li $t0, 2
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
	li $t0, 10627
	sw $t0, -844($fp)
	addi $t0, $fp, -128
	sw $t0, -848($fp)
	li $t0, 3
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
	li $t0, 51813
	sw $t0, -868($fp)
	addi $t0, $fp, -128
	sw $t0, -872($fp)
	li $t0, 4
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
	li $t0, 18570
	sw $t0, -892($fp)
	addi $t0, $fp, -128
	sw $t0, -896($fp)
	li $t0, 5
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
	li $t0, 55057
	sw $t0, -916($fp)
	addi $t0, $fp, -128
	sw $t0, -920($fp)
	li $t0, 6
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
	li $t0, 60144
	sw $t0, -940($fp)
	addi $t0, $fp, -128
	sw $t0, -944($fp)
	li $t0, 7
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -944($fp)
	lw $t1, -952($fp)
	add $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -940($fp)
	lw $t1, -956($fp)
	sw $t0, 0($t1)
	lw $t0, -956($fp)
	lw $t1, 0($t0)
	sw $t1, -960($fp)
	li $t0, 55180
	sw $t0, -964($fp)
	addi $t0, $fp, -128
	sw $t0, -968($fp)
	li $t0, 8
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -968($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -964($fp)
	lw $t1, -980($fp)
	sw $t0, 0($t1)
	lw $t0, -980($fp)
	lw $t1, 0($t0)
	sw $t1, -984($fp)
	li $t0, 23612
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 58644
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 55117
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 59930
	sw $t0, -1024($fp)
	addi $t0, $fp, -144
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
	li $t0, 64114
	sw $t0, -1048($fp)
	addi $t0, $fp, -144
	sw $t0, -1052($fp)
	li $t0, 1
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
	li $t0, 54608
	sw $t0, -1072($fp)
	addi $t0, $fp, -144
	sw $t0, -1076($fp)
	li $t0, 2
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
	li $t0, 17247
	sw $t0, -1096($fp)
	addi $t0, $fp, -144
	sw $t0, -1100($fp)
	li $t0, 3
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
	li $t0, 12782
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	li $t0, 65521
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	li $t0, 20591
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
label360:
	jal f8
	sw $v0, -1156($fp)
	addi $sp, $sp, 4
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
label363:
	li $t0, 18869
	sw $t0, -1160($fp)
	li $t0, 52827
	sw $t0, -1164($fp)
	lw $t1, -1160($fp)
	lw $t2, -1164($fp)
	bge $t1, $t2, label369
	j label367
label369:
	li $t0, 47352
	sw $t0, -1168($fp)
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label368:
	lw $t0, -392($fp)
	sw $t0, -1172($fp)
	li $t0, 0
	lw $t1, -1172($fp)
	sub $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t1, -1176($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label367
label367:
	li $t0, 45342
	sw $t0, -1180($fp)
	lw $t0, -1148($fp)
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1188($fp)
	li $t0, 32743
	sw $t0, -1192($fp)
	lw $t1, -1188($fp)
	lw $t2, -1192($fp)
	ble $t1, $t2, label364
	j label366
label366:
	li $t0, 0
	sw $t0, -1196($fp)
	li $t0, 0
	sw $t0, -1200($fp)
	li $t0, 7090
	sw $t0, -1204($fp)
	lw $t0, -1016($fp)
	sw $t0, -1208($fp)
	lw $t1, -1204($fp)
	lw $t2, -1208($fp)
	beq $t1, $t2, label374
	j label373
label374:
	li $t0, 14623
	sw $t0, -1212($fp)
	lw $t1, -1212($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -1200($fp)
label373:
	addi $sp, $sp, -4
	lw $t0, -1200($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1216($fp)
	addi $sp, $sp, 8
	lw $t0, -1136($fp)
	sw $t0, -1220($fp)
	lw $t1, -1216($fp)
	lw $t2, -1220($fp)
	bgt $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -1196($fp)
label371:
	lw $t0, -584($fp)
	sw $t0, -1224($fp)
	lw $t0, -392($fp)
	sw $t0, -1228($fp)
	lw $t0, -1224($fp)
	lw $t1, -1228($fp)
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t1, -1196($fp)
	lw $t2, -1232($fp)
	beq $t1, $t2, label364
	j label365
label364:
	addi $t0, $fp, -92
	sw $t0, -1236($fp)
	li $t0, 0
	sw $t0, -1240($fp)
	jal f8
	sw $v0, -1244($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1248($fp)
	li $t0, 14675
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label380
label380:
	li $t0, 1
	sw $t0, -1248($fp)
label381:
	lw $t1, -1244($fp)
	lw $t2, -1248($fp)
	beq $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -1240($fp)
label379:
	li $t0, 4
	lw $t1, -1240($fp)
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, 0($t0)
	sw $t1, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 1604
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 36950
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 11246
	sw $t0, -1316($fp)
	addi $t0, $fp, -1288
	sw $t0, -1320($fp)
	li $t0, 0
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1320($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1316($fp)
	lw $t1, -1332($fp)
	sw $t0, 0($t1)
	lw $t0, -1332($fp)
	lw $t1, 0($t0)
	sw $t1, -1336($fp)
	li $t0, 39372
	sw $t0, -1340($fp)
	addi $t0, $fp, -1288
	sw $t0, -1344($fp)
	li $t0, 1
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
	li $t0, 64558
	sw $t0, -1364($fp)
	addi $t0, $fp, -1288
	sw $t0, -1368($fp)
	li $t0, 2
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1368($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1364($fp)
	lw $t1, -1380($fp)
	sw $t0, 0($t1)
	lw $t0, -1380($fp)
	lw $t1, 0($t0)
	sw $t1, -1384($fp)
	li $t0, 24802
	sw $t0, -1388($fp)
	addi $t0, $fp, -1288
	sw $t0, -1392($fp)
	li $t0, 3
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1392($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1388($fp)
	lw $t1, -1404($fp)
	sw $t0, 0($t1)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	li $t0, 35383
	sw $t0, -1412($fp)
	addi $t0, $fp, -1288
	sw $t0, -1416($fp)
	li $t0, 4
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
	li $t0, 9650
	sw $t0, -1436($fp)
	addi $t0, $fp, -1288
	sw $t0, -1440($fp)
	li $t0, 5
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
	li $t0, 11079
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	li $t0, 53953
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	li $t0, 64707
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	li $t0, 5688
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	li $t0, 43597
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	li $t0, 22783
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	li $t0, 64332
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	lw $t0, -596($fp)
	sw $t0, -1544($fp)
	li $t0, 0
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	lw $t0, -584($fp)
	sw $t0, -1556($fp)
	li $t0, 34425
	sw $t0, -1560($fp)
	lw $t1, -1556($fp)
	lw $t2, -1560($fp)
	beq $t1, $t2, label385
	j label387
label387:
	li $t0, 10157
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -1552($fp)
label386:
	li $t0, 0
	sw $t0, -1568($fp)
	li $t0, 62910
	sw $t0, -1572($fp)
	lw $t0, -1308($fp)
	sw $t0, -1576($fp)
	lw $t1, -1572($fp)
	lw $t2, -1576($fp)
	beq $t1, $t2, label390
	j label389
label390:
	li $t0, 22251
	sw $t0, -1580($fp)
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -1568($fp)
label389:
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, -596($fp)
	sw $t0, -1588($fp)
	li $t0, 17178
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1004($fp)
	sw $t0, -1600($fp)
	lw $t1, -1596($fp)
	lw $t2, -1600($fp)
	blt $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -1584($fp)
label392:
	li $t0, 0
	sw $t0, -1604($fp)
	lw $t0, -1464($fp)
	sw $t0, -1608($fp)
	li $t0, 33178
	sw $t0, -1612($fp)
	lw $t0, -1608($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label395:
	lw $t0, -1136($fp)
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -1604($fp)
label394:
	lw $t0, -1296($fp)
	sw $t0, -1624($fp)
	li $t0, 0
	lw $t1, -1624($fp)
	sub $t0, $t0, $t1
	sw $t0, -1628($fp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1632($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1636($fp)
	lw $t0, -1016($fp)
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label396
label398:
	li $t0, 36833
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -1636($fp)
label397:
	li $t0, 0
	sw $t0, -1648($fp)
	li $t0, 9527
	sw $t0, -1652($fp)
	li $t0, 0
	lw $t1, -1652($fp)
	sub $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label399
label399:
	li $t0, 1
	sw $t0, -1648($fp)
label400:
	li $t0, 0
	sw $t0, -1660($fp)
	lw $t0, -1476($fp)
	sw $t0, -1664($fp)
	li $t0, 29026
	sw $t0, -1668($fp)
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label403:
	lw $t0, -392($fp)
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -1660($fp)
label402:
	li $t0, 55017
	sw $t0, -1680($fp)
	lw $t0, -1296($fp)
	sw $t0, -1684($fp)
	lw $t0, -1680($fp)
	lw $t1, -1684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1688($fp)
	lw $t0, -1296($fp)
	sw $t0, -1692($fp)
	lw $t0, -1688($fp)
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	li $t0, 0
	sw $t0, -1700($fp)
	li $t0, 0
	sw $t0, -1704($fp)
	li $t0, 22236
	sw $t0, -1708($fp)
	lw $t0, -752($fp)
	sw $t0, -1712($fp)
	lw $t1, -1708($fp)
	lw $t2, -1712($fp)
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -1704($fp)
label407:
	lw $t0, -1500($fp)
	sw $t0, -1716($fp)
	lw $t1, -1704($fp)
	lw $t2, -1716($fp)
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -1700($fp)
label405:
	addi $t0, $fp, -128
	sw $t0, -1720($fp)
	lw $t0, -392($fp)
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
	li $t0, 0
	lw $t1, -1736($fp)
	sub $t0, $t0, $t1
	sw $t0, -1740($fp)
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1744($fp)
	addi $sp, $sp, 12
	lw $t0, -392($fp)
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	sub $t0, $t0, $t1
	sw $t0, -1752($fp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1756($fp)
	addi $sp, $sp, 24
	lw $t0, -1632($fp)
	lw $t1, -1756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1760($fp)
	lw $t1, -1548($fp)
	lw $t2, -1760($fp)
	beq $t1, $t2, label382
	j label383
label382:
label408:
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 0
	sw $t0, -1768($fp)
	li $t0, 8833
	sw $t0, -1772($fp)
	li $t0, 42271
	sw $t0, -1776($fp)
	lw $t0, -1772($fp)
	lw $t1, -1776($fp)
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	li $t0, 43923
	sw $t0, -1784($fp)
	lw $t0, -380($fp)
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t1, -1780($fp)
	lw $t2, -1792($fp)
	bgt $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -1768($fp)
label414:
	lw $t0, -596($fp)
	sw $t0, -1796($fp)
	lw $t1, -1768($fp)
	lw $t2, -1796($fp)
	beq $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -1764($fp)
label412:
	jal f10
	sw $v0, -1800($fp)
	addi $sp, $sp, 4
	lw $t0, -1016($fp)
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1808($fp)
	lw $t1, -1764($fp)
	lw $t2, -1808($fp)
	bne $t1, $t2, label409
	j label410
label409:
	lw $t0, -1476($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	lw $t0, -1488($fp)
	sw $t0, -1824($fp)
	lw $t0, -584($fp)
	sw $t0, -1828($fp)
	lw $t1, -1824($fp)
	lw $t2, -1828($fp)
	blt $t1, $t2, label415
	j label417
label417:
	lw $t0, -584($fp)
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -1820($fp)
label416:
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1836($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1840($fp)
	lw $t0, -1524($fp)
	sw $t0, -1844($fp)
	li $t0, 23456
	sw $t0, -1848($fp)
	lw $t0, -1844($fp)
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -752($fp)
	sw $t0, -1856($fp)
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1864($fp)
	addi $sp, $sp, 8
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -1840($fp)
label419:
	lw $t0, -1836($fp)
	lw $t1, -1840($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $ra, -4($fp)
	lw $v0, -1868($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label408
label410:
	j label384
label383:
	lw $t0, -1296($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1880($fp)
	lw $ra, -4($fp)
	lw $v0, -1880($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label384:
label420:
	addi $t0, $fp, -128
	sw $t0, -1884($fp)
	li $t0, 0
	sw $t0, -1888($fp)
	lw $t0, -752($fp)
	sw $t0, -1892($fp)
	lw $t0, -1136($fp)
	sw $t0, -1896($fp)
	lw $t1, -1892($fp)
	lw $t2, -1896($fp)
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -1888($fp)
label424:
	li $t0, 4
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	lw $t1, 0($t0)
	sw $t1, -1908($fp)
	addi $t0, $fp, -1288
	sw $t0, -1912($fp)
	li $t0, 0
	sw $t0, -1916($fp)
	lw $t0, -1148($fp)
	sw $t0, -1920($fp)
	li $t0, 56946
	sw $t0, -1924($fp)
	lw $t1, -1920($fp)
	lw $t2, -1924($fp)
	beq $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -1916($fp)
label426:
	li $t0, 4
	lw $t1, -1916($fp)
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	lw $t0, -1908($fp)
	lw $t1, -1936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1940($fp)
	li $t0, 0
	lw $t1, -1940($fp)
	sub $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label422
label421:
	jal f11
	sw $v0, -1948($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -128
	sw $t0, -1952($fp)
	lw $t0, -1464($fp)
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
	lw $t0, -1948($fp)
	lw $t1, -1968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	addi $t0, $fp, -40
	sw $t0, -1980($fp)
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 45527
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label430
label430:
	li $t0, 1
	sw $t0, -1984($fp)
label431:
	lw $t0, -1536($fp)
	sw $t0, -1992($fp)
	lw $t0, -1984($fp)
	lw $t1, -1992($fp)
	sub $t0, $t0, $t1
	sw $t0, -1996($fp)
	li $t0, 4
	lw $t1, -1996($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	li $t0, 0
	lw $t1, -2008($fp)
	sub $t0, $t0, $t1
	sw $t0, -2012($fp)
	j label429
label428:
	li $t0, 60407
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	li $t0, 2656
	sw $t0, -2028($fp)
	li $t0, 0
	lw $t1, -2028($fp)
	sub $t0, $t0, $t1
	sw $t0, -2032($fp)
	li $t0, 0
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2040($fp)
	addi $sp, $sp, 8
	lw $t0, -2020($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 19364
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label432:
	li $t0, 1
	sw $t0, -2048($fp)
label433:
	lw $ra, -4($fp)
	lw $v0, -2048($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	li $t0, 59429
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label439
label439:
	li $t0, 1
	sw $t0, -2060($fp)
label440:
	li $t0, 27459
	sw $t0, -2068($fp)
	lw $t1, -2060($fp)
	lw $t2, -2068($fp)
	blt $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -2056($fp)
label438:
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2072($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2076($fp)
	li $t0, 54747
	sw $t0, -2080($fp)
	lw $t1, -2080($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -2076($fp)
label442:
	li $t0, 0
	lw $t1, -2076($fp)
	sub $t0, $t0, $t1
	sw $t0, -2084($fp)
	li $t0, 0
	lw $t1, -2084($fp)
	sub $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2072($fp)
	lw $t1, -2088($fp)
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t1, -2092($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 0
	sw $t0, -2096($fp)
	li $t0, 0
	sw $t0, -2100($fp)
	li $t0, 3543
	sw $t0, -2104($fp)
	addi $t0, $fp, -128
	sw $t0, -2108($fp)
	li $t0, 1
	sw $t0, -2112($fp)
	li $t0, 4
	lw $t1, -2112($fp)
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	lw $t1, -2108($fp)
	add $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	lw $t1, 0($t0)
	sw $t1, -2124($fp)
	lw $t0, -2104($fp)
	lw $t1, -2124($fp)
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	jal f8
	sw $v0, -2132($fp)
	addi $sp, $sp, 4
	lw $t0, -392($fp)
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t1, -2128($fp)
	lw $t2, -2140($fp)
	bgt $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -2100($fp)
label446:
	li $t0, 0
	sw $t0, -2144($fp)
	lw $t0, -572($fp)
	sw $t0, -2148($fp)
	li $t0, 2714
	sw $t0, -2152($fp)
	lw $t0, -1004($fp)
	sw $t0, -2156($fp)
	lw $t0, -2152($fp)
	lw $t1, -2156($fp)
	mul $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t1, -2148($fp)
	lw $t2, -2160($fp)
	blt $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -2144($fp)
label448:
	lw $t1, -2100($fp)
	lw $t2, -2144($fp)
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -2096($fp)
label444:
	j label436
label435:
	li $t0, 0
	sw $t0, -2164($fp)
	li $t0, 0
	sw $t0, -2168($fp)
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 0
	sw $t0, -2176($fp)
	lw $t0, -1148($fp)
	sw $t0, -2180($fp)
	lw $t0, -380($fp)
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -1296($fp)
	sw $t0, -2192($fp)
	lw $t1, -2188($fp)
	lw $t2, -2192($fp)
	bge $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -2176($fp)
label456:
	li $t0, 0
	sw $t0, -2196($fp)
	lw $t0, -596($fp)
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label457:
	li $t0, 1
	sw $t0, -2196($fp)
label458:
	lw $t1, -2176($fp)
	lw $t2, -2196($fp)
	bge $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -2172($fp)
label454:
	lw $t0, -1296($fp)
	sw $t0, -2204($fp)
	lw $t1, -2172($fp)
	lw $t2, -2204($fp)
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -2168($fp)
label452:
	addi $t0, $fp, -92
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
	li $t0, 25498
	sw $t0, -2228($fp)
	li $t0, 0
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2224($fp)
	lw $t1, -2232($fp)
	sub $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t1, -2168($fp)
	lw $t2, -2236($fp)
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -2164($fp)
label450:
label436:
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	li $t0, 0
	sw $t0, -2248($fp)
	li $t0, 0
	sw $t0, -2252($fp)
	lw $t0, -1308($fp)
	sw $t0, -2256($fp)
	lw $t0, -2020($fp)
	sw $t0, -2260($fp)
	lw $t0, -2256($fp)
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	li $t0, 43023
	sw $t0, -2268($fp)
	lw $t1, -2264($fp)
	lw $t2, -2268($fp)
	bgt $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -2252($fp)
label466:
	li $t0, 0
	sw $t0, -2272($fp)
	lw $t0, -1296($fp)
	sw $t0, -2276($fp)
	li $t0, 54404
	sw $t0, -2280($fp)
	lw $t1, -2276($fp)
	lw $t2, -2280($fp)
	blt $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -2272($fp)
label468:
	lw $t1, -2252($fp)
	lw $t2, -2272($fp)
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -2248($fp)
label464:
	li $t0, 42676
	sw $t0, -2284($fp)
	lw $t1, -2248($fp)
	lw $t2, -2284($fp)
	beq $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -2244($fp)
label462:
	jal f8
	sw $v0, -2288($fp)
	addi $sp, $sp, 4
	lw $t1, -2244($fp)
	lw $t2, -2288($fp)
	beq $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -2240($fp)
label460:
label429:
	j label420
label422:
	li $t0, 0
	sw $t0, -2292($fp)
	jal f8
	sw $v0, -2296($fp)
	addi $sp, $sp, 4
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label471
label471:
	jal f10
	sw $v0, -2300($fp)
	addi $sp, $sp, 4
	lw $t0, -380($fp)
	sw $t0, -2304($fp)
	lw $t0, -2300($fp)
	lw $t1, -2304($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -1512($fp)
	sw $t0, -2312($fp)
	li $t0, 0
	sw $t0, -2316($fp)
	lw $t0, -752($fp)
	sw $t0, -2320($fp)
	li $t0, 0
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -380($fp)
	sw $t0, -2328($fp)
	lw $t1, -2324($fp)
	lw $t2, -2328($fp)
	blt $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -2316($fp)
label473:
	li $t0, 40397
	sw $t0, -2332($fp)
	jal f8
	sw $v0, -2336($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2340($fp)
	addi $sp, $sp, -4
	lw $t0, -2308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2340($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2344($fp)
	addi $sp, $sp, 24
	jal f11
	sw $v0, -2348($fp)
	addi $sp, $sp, 4
	lw $t1, -2344($fp)
	lw $t2, -2348($fp)
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -2292($fp)
label470:
	lw $t0, -1296($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -2360($fp)
	li $t0, 0
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
	addi $t0, $fp, -1288
	sw $t0, -2380($fp)
	li $t0, 1
	sw $t0, -2384($fp)
	li $t0, 4
	lw $t1, -2384($fp)
	mul $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	lw $t1, -2380($fp)
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	lw $t1, 0($t0)
	sw $t1, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -2400($fp)
	li $t0, 2
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
	lw $t0, -2416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -2420($fp)
	li $t0, 3
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
	lw $t0, -2436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1288
	sw $t0, -2440($fp)
	li $t0, 4
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
	addi $t0, $fp, -1288
	sw $t0, -2460($fp)
	li $t0, 5
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
	lw $t0, -1464($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1476($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1488($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1500($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1512($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1524($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1536($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2508($fp)
	lw $t0, -1296($fp)
	sw $t0, -2512($fp)
	li $t0, 11119
	sw $t0, -2516($fp)
	lw $t0, -2512($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	li $t0, 11565
	sw $t0, -2524($fp)
	li $t0, 50554
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	li $t0, 0
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t1, -2520($fp)
	lw $t2, -2536($fp)
	bne $t1, $t2, label476
	j label475
label476:
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 33355
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label477:
	li $t0, 1
	sw $t0, -2540($fp)
label478:
	li $t0, 0
	sw $t0, -2548($fp)
	li $t0, 1046
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label479:
	li $t0, 1
	sw $t0, -2548($fp)
label480:
	lw $t0, -2540($fp)
	lw $t1, -2548($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -2508($fp)
label475:
	lw $ra, -4($fp)
	lw $v0, -2508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label377
label376:
	li $t0, 14045
	sw $t0, -2560($fp)
	lw $ra, -4($fp)
	lw $v0, -2560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label377:
	j label363
label365:
	j label360
label362:
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 22878
	sw $t0, -2568($fp)
	lw $t0, -1148($fp)
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	li $t0, 19618
	sw $t0, -2580($fp)
	lw $t1, -2576($fp)
	lw $t2, -2580($fp)
	bgt $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -2564($fp)
label482:
	addi $t0, $fp, -128
	sw $t0, -2584($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -2600($fp)
	sub $t0, $t0, $t1
	sw $t0, -2604($fp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2604($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2608($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2612($fp)
	li $t0, 0
	sw $t0, -2616($fp)
	lw $t0, -368($fp)
	sw $t0, -2620($fp)
	li $t0, 16267
	sw $t0, -2624($fp)
	lw $t1, -2620($fp)
	lw $t2, -2624($fp)
	bge $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -2616($fp)
label490:
	li $t0, 46334
	sw $t0, -2628($fp)
	lw $t1, -2616($fp)
	lw $t2, -2628($fp)
	bgt $t1, $t2, label488
	j label487
label488:
	li $t0, 11028
	sw $t0, -2632($fp)
	li $t0, 61795
	sw $t0, -2636($fp)
	lw $t1, -2632($fp)
	lw $t2, -2636($fp)
	beq $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -2612($fp)
label487:
	lw $t0, -2612($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -2640($fp)
	lw $t1, -2640($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label484
label483:
label491:
	lw $t0, -380($fp)
	sw $t0, -2644($fp)
	li $t0, 41205
	sw $t0, -2648($fp)
	lw $t0, -2644($fp)
	lw $t1, -2648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label493
label494:
	addi $t0, $fp, -68
	sw $t0, -2656($fp)
	li $t0, 1
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
	lw $t0, -380($fp)
	sw $t0, -2676($fp)
	lw $t0, -2672($fp)
	lw $t1, -2676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	li $t0, 4834
	sw $t0, -2692($fp)
	li $t0, 38642
	sw $t0, -2696($fp)
	lw $t1, -2692($fp)
	lw $t2, -2696($fp)
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -2688($fp)
label501:
	lw $t0, -992($fp)
	sw $t0, -2700($fp)
	lw $t1, -2688($fp)
	lw $t2, -2700($fp)
	beq $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -2684($fp)
label499:
	jal f11
	sw $v0, -2704($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2708($fp)
	lw $t0, -596($fp)
	sw $t0, -2712($fp)
	li $t0, 0
	lw $t1, -2712($fp)
	sub $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t1, -2716($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label502
label502:
	li $t0, 1
	sw $t0, -2708($fp)
label503:
	li $t0, 0
	sw $t0, -2720($fp)
	lw $t0, -380($fp)
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label504:
	li $t0, 1
	sw $t0, -2720($fp)
label505:
	li $t0, 0
	sw $t0, -2728($fp)
	li $t0, 35099
	sw $t0, -2732($fp)
	lw $t0, -1124($fp)
	sw $t0, -2736($fp)
	lw $t1, -2732($fp)
	lw $t2, -2736($fp)
	beq $t1, $t2, label506
	j label508
label508:
	li $t0, 41144
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -2728($fp)
label507:
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2744($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -128
	sw $t0, -2748($fp)
	li $t0, 4
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
	lw $t0, -2744($fp)
	lw $t1, -2764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2768($fp)
	lw $t0, -392($fp)
	sw $t0, -2772($fp)
	li $t0, 41357
	sw $t0, -2776($fp)
	lw $t0, -2772($fp)
	lw $t1, -2776($fp)
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	jal f8
	sw $v0, -2784($fp)
	addi $sp, $sp, 4
	lw $t0, -2780($fp)
	lw $t1, -2784($fp)
	sub $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t1, -2768($fp)
	lw $t2, -2788($fp)
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 0
	sw $t0, -2792($fp)
	li $t0, 58373
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label509
label509:
	li $t0, 1
	sw $t0, -2792($fp)
label510:
	li $t0, 0
	lw $t1, -2792($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	li $t0, 0
	lw $t1, -2800($fp)
	sub $t0, $t0, $t1
	sw $t0, -2804($fp)
	j label497
label496:
	li $t0, 0
	sw $t0, -2808($fp)
	addi $t0, $fp, -92
	sw $t0, -2812($fp)
	li $t0, 0
	sw $t0, -2816($fp)
	li $t0, 3688
	sw $t0, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label515
label515:
	lw $t0, -764($fp)
	sw $t0, -2824($fp)
	lw $t1, -2824($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -2816($fp)
label514:
	li $t0, 4
	lw $t1, -2816($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	lw $t1, 0($t0)
	sw $t1, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label511
label511:
	li $t0, 1
	sw $t0, -2808($fp)
label512:
label497:
	j label491
label493:
	j label485
label484:
label516:
	addi $t0, $fp, -144
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	jal f8
	sw $v0, -2848($fp)
	addi $sp, $sp, 4
	li $t0, 1319
	sw $t0, -2852($fp)
	lw $t1, -2848($fp)
	lw $t2, -2852($fp)
	blt $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -2844($fp)
label520:
	li $t0, 4
	lw $t1, -2844($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	lw $t1, -2864($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 0
	sw $t0, -2868($fp)
	addi $t0, $fp, -128
	sw $t0, -2872($fp)
	li $t0, 2
	sw $t0, -2876($fp)
	li $t0, 4
	lw $t1, -2876($fp)
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	lw $t0, -1124($fp)
	sw $t0, -2892($fp)
	lw $t0, -2888($fp)
	lw $t1, -2892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2896($fp)
	li $t0, 0
	lw $t1, -2896($fp)
	sub $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label523:
	addi $t0, $fp, -40
	sw $t0, -2904($fp)
	lw $t0, -392($fp)
	sw $t0, -2908($fp)
	li $t0, 4
	lw $t1, -2908($fp)
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	li $t0, 43995
	sw $t0, -2924($fp)
	lw $t1, -2920($fp)
	lw $t2, -2924($fp)
	bge $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -2868($fp)
label522:
	lw $ra, -4($fp)
	lw $v0, -2868($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label516
label518:
label485:
	addi $t0, $fp, -40
	sw $t0, -2928($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -2948($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -2968($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -2988($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -3008($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -3028($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -3048($fp)
	li $t0, 6
	sw $t0, -3052($fp)
	li $t0, 4
	lw $t1, -3052($fp)
	mul $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	lw $t1, -3048($fp)
	add $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	lw $t1, 0($t0)
	sw $t1, -3064($fp)
	lw $t0, -3064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3068($fp)
	li $t0, 7
	sw $t0, -3072($fp)
	li $t0, 4
	lw $t1, -3072($fp)
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	lw $t1, -3068($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	lw $t1, 0($t0)
	sw $t1, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3088($fp)
	li $t0, 8
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
	lw $t0, -368($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3120($fp)
	li $t0, 0
	sw $t0, -3124($fp)
	li $t0, 4
	lw $t1, -3124($fp)
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	lw $t0, -3136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3140($fp)
	li $t0, 1
	sw $t0, -3144($fp)
	li $t0, 4
	lw $t1, -3144($fp)
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	lw $t1, 0($t0)
	sw $t1, -3156($fp)
	lw $t0, -3156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3160($fp)
	li $t0, 2
	sw $t0, -3164($fp)
	li $t0, 4
	lw $t1, -3164($fp)
	mul $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, 0($t0)
	sw $t1, -3176($fp)
	lw $t0, -3176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3180($fp)
	li $t0, 3
	sw $t0, -3184($fp)
	li $t0, 4
	lw $t1, -3184($fp)
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, -3180($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3200($fp)
	li $t0, 4
	sw $t0, -3204($fp)
	li $t0, 4
	lw $t1, -3204($fp)
	mul $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, -3200($fp)
	add $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, 0($t0)
	sw $t1, -3216($fp)
	lw $t0, -3216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3220($fp)
	li $t0, 5
	sw $t0, -3224($fp)
	li $t0, 4
	lw $t1, -3224($fp)
	mul $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	lw $t1, -3220($fp)
	add $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	lw $t1, 0($t0)
	sw $t1, -3236($fp)
	lw $t0, -3236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -3240($fp)
	li $t0, 6
	sw $t0, -3244($fp)
	li $t0, 4
	lw $t1, -3244($fp)
	mul $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, -3240($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	lw $t1, 0($t0)
	sw $t1, -3256($fp)
	lw $t0, -3256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
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
	lw $t0, -3288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3292($fp)
	li $t0, 1
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
	addi $t0, $fp, -92
	sw $t0, -3312($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -3332($fp)
	li $t0, 3
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
	addi $t0, $fp, -92
	sw $t0, -3352($fp)
	li $t0, 4
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
	addi $t0, $fp, -92
	sw $t0, -3372($fp)
	li $t0, 5
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
	lw $t0, -752($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	li $t0, 4
	lw $t1, -3404($fp)
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, -3400($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	lw $t0, -3416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -3420($fp)
	li $t0, 1
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
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -3440($fp)
	li $t0, 2
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
	addi $t0, $fp, -128
	sw $t0, -3460($fp)
	li $t0, 3
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
	addi $t0, $fp, -128
	sw $t0, -3480($fp)
	li $t0, 4
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
	addi $t0, $fp, -128
	sw $t0, -3500($fp)
	li $t0, 5
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
	addi $t0, $fp, -128
	sw $t0, -3520($fp)
	li $t0, 6
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
	addi $t0, $fp, -128
	sw $t0, -3540($fp)
	li $t0, 7
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
	addi $t0, $fp, -128
	sw $t0, -3560($fp)
	li $t0, 8
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
	lw $t0, -992($fp)
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3592($fp)
	li $t0, 0
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
	addi $t0, $fp, -144
	sw $t0, -3612($fp)
	li $t0, 1
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
	addi $t0, $fp, -144
	sw $t0, -3632($fp)
	li $t0, 2
	sw $t0, -3636($fp)
	li $t0, 4
	lw $t1, -3636($fp)
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	lw $t1, -3632($fp)
	add $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	lw $t1, 0($t0)
	sw $t1, -3648($fp)
	lw $t0, -3648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3652($fp)
	li $t0, 3
	sw $t0, -3656($fp)
	li $t0, 4
	lw $t1, -3656($fp)
	mul $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	lw $t1, -3652($fp)
	add $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	lw $t1, 0($t0)
	sw $t1, -3668($fp)
	lw $t0, -3668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1124($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1136($fp)
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1148($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3684($fp)
	lw $t0, -572($fp)
	sw $t0, -3688($fp)
	addi $t0, $fp, -128
	sw $t0, -3692($fp)
	li $t0, 0
	sw $t0, -3696($fp)
	li $t0, 10721
	sw $t0, -3700($fp)
	lw $t1, -3700($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label528
label528:
	lw $t0, -752($fp)
	sw $t0, -3704($fp)
	lw $t1, -3704($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -3696($fp)
label527:
	li $t0, 4
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	lw $t1, -3692($fp)
	add $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	lw $t1, 0($t0)
	sw $t1, -3716($fp)
	lw $t0, -3688($fp)
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	li $t0, 0
	lw $t1, -3720($fp)
	sub $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label524:
	li $t0, 1
	sw $t0, -3684($fp)
label525:
	lw $ra, -4($fp)
	lw $v0, -3684($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f10
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 3676
	sw $t0, -12($fp)
	lw $ra, -4($fp)
	lw $v0, -12($fp)
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
