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
	addi $sp, $sp, -268
	li $t0, 21289
	sw $t0, -24($fp)
	addi $t0, $fp, -20
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -28($fp)
	lw $t1, -36($fp)
	add $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -24($fp)
	lw $t1, -40($fp)
	sw $t0, 0($t1)
	lw $t0, -40($fp)
	lw $t1, 0($t0)
	sw $t1, -44($fp)
	li $t0, 1662
	sw $t0, -48($fp)
	addi $t0, $fp, -20
	sw $t0, -52($fp)
	li $t0, 1
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
	li $t0, 31430
	sw $t0, -72($fp)
	addi $t0, $fp, -20
	sw $t0, -76($fp)
	li $t0, 2
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
	li $t0, 29911
	sw $t0, -96($fp)
	addi $t0, $fp, -20
	sw $t0, -100($fp)
	li $t0, 3
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
	li $t0, 55743
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	addi $t0, $fp, -20
	sw $t0, -132($fp)
	li $t0, 0
	sw $t0, -136($fp)
	li $t0, 4
	lw $t1, -136($fp)
	mul $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	lw $t1, 0($t0)
	sw $t1, -148($fp)
	lw $t0, -148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -152($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -172($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -192($fp)
	li $t0, 3
	sw $t0, -196($fp)
	li $t0, 4
	lw $t1, -196($fp)
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, -192($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t1, 0($t0)
	sw $t1, -208($fp)
	lw $t0, -208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -216($fp)
	li $t0, 0
	sw $t0, -220($fp)
	lw $t0, -124($fp)
	sw $t0, -224($fp)
	li $t0, 61398
	sw $t0, -228($fp)
	lw $t1, -224($fp)
	lw $t2, -228($fp)
	bne $t1, $t2, label123
	j label122
label123:
	li $t0, 35641
	sw $t0, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -220($fp)
label122:
	addi $sp, $sp, -4
	lw $t0, -220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -236($fp)
	addi $sp, $sp, 8
	li $t0, 24412
	sw $t0, -240($fp)
	lw $t0, -236($fp)
	lw $t1, -240($fp)
	sub $t0, $t0, $t1
	sw $t0, -244($fp)
	li $t0, 4
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, 0($t0)
	sw $t1, -256($fp)
	li $t0, 2814
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -264($fp)
	addi $sp, $sp, -4
	lw $t0, -264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -268($fp)
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $ra, -4($fp)
	lw $v0, -272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1472
	li $t0, 39812
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 26965
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 57207
	sw $t0, -76($fp)
	addi $t0, $fp, -20
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
	li $t0, 24412
	sw $t0, -100($fp)
	addi $t0, $fp, -20
	sw $t0, -104($fp)
	li $t0, 1
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
	li $t0, 28462
	sw $t0, -124($fp)
	addi $t0, $fp, -20
	sw $t0, -128($fp)
	li $t0, 2
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
	li $t0, 59610
	sw $t0, -148($fp)
	addi $t0, $fp, -20
	sw $t0, -152($fp)
	li $t0, 3
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
	li $t0, 24495
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 11665
	sw $t0, -184($fp)
	addi $t0, $fp, -48
	sw $t0, -188($fp)
	li $t0, 0
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
	li $t0, 36185
	sw $t0, -208($fp)
	addi $t0, $fp, -48
	sw $t0, -212($fp)
	li $t0, 1
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
	li $t0, 43903
	sw $t0, -232($fp)
	addi $t0, $fp, -48
	sw $t0, -236($fp)
	li $t0, 2
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
	li $t0, 31523
	sw $t0, -256($fp)
	addi $t0, $fp, -48
	sw $t0, -260($fp)
	li $t0, 3
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
	li $t0, 54524
	sw $t0, -280($fp)
	addi $t0, $fp, -48
	sw $t0, -284($fp)
	li $t0, 4
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
	li $t0, 50850
	sw $t0, -304($fp)
	addi $t0, $fp, -48
	sw $t0, -308($fp)
	li $t0, 5
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
	li $t0, 61491
	sw $t0, -328($fp)
	addi $t0, $fp, -48
	sw $t0, -332($fp)
	li $t0, 6
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
	li $t0, 51683
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 18685
	sw $t0, -376($fp)
	addi $t0, $fp, -372
	sw $t0, -380($fp)
	li $t0, 0
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
	li $t0, 58343
	sw $t0, -400($fp)
	addi $t0, $fp, -372
	sw $t0, -404($fp)
	li $t0, 1
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
	li $t0, 2846
	sw $t0, -424($fp)
	addi $t0, $fp, -372
	sw $t0, -428($fp)
	li $t0, 2
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
	li $t0, 38555
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 56224
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 0
	sw $t0, -472($fp)
	lw $t0, -464($fp)
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -472($fp)
label125:
	li $t0, 0
	sw $t0, -480($fp)
	addi $t0, $fp, -20
	sw $t0, -484($fp)
	li $t0, 0
	sw $t0, -488($fp)
	lw $t0, 4($fp)
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label128:
	li $t0, 1
	sw $t0, -488($fp)
label129:
	li $t0, 4
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t1, -484($fp)
	add $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, 0($t0)
	sw $t1, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -480($fp)
label127:
	li $t0, 0
	sw $t0, -508($fp)
	li $t0, 45352
	sw $t0, -512($fp)
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label130:
	li $t0, 1
	sw $t0, -508($fp)
label131:
	li $t0, 0
	lw $t1, -508($fp)
	sub $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -480($fp)
	lw $t1, -516($fp)
	mul $t0, $t0, $t1
	sw $t0, -520($fp)
	addi $t0, $fp, -372
	sw $t0, -524($fp)
	li $t0, 0
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
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -544($fp)
	li $t0, 1
	sw $t0, -548($fp)
	li $t0, 4
	lw $t1, -548($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, -544($fp)
	add $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	lw $t1, 0($t0)
	sw $t1, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -564($fp)
	li $t0, 2
	sw $t0, -568($fp)
	li $t0, 4
	lw $t1, -568($fp)
	mul $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, -564($fp)
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	lw $t1, 0($t0)
	sw $t1, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 20134
	sw $t0, -592($fp)
	lw $ra, -4($fp)
	lw $v0, -592($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -372
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
	addi $t0, $fp, -372
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
	addi $t0, $fp, -372
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
	lw $t0, -452($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -664($fp)
	lw $t0, -464($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -672($fp)
	li $t0, 4
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -664($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	li $t0, 0
	sw $t0, -688($fp)
	lw $t0, -464($fp)
	sw $t0, -692($fp)
	li $t0, 0
	lw $t1, -692($fp)
	sub $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -688($fp)
label133:
	lw $t0, -684($fp)
	lw $t1, -688($fp)
	sub $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $ra, -4($fp)
	lw $v0, -700($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -704($fp)
	li $t0, 11977
	sw $t0, -708($fp)
	lw $t0, -452($fp)
	sw $t0, -712($fp)
	lw $t0, -708($fp)
	lw $t1, -712($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -68($fp)
	sw $t0, -720($fp)
	lw $t1, -716($fp)
	lw $t2, -720($fp)
	ble $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -704($fp)
label138:
	addi $sp, $sp, -4
	lw $t0, -704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -724($fp)
	addi $sp, $sp, 8
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 0
	sw $t0, -728($fp)
	li $t0, 47014
	sw $t0, -732($fp)
	addi $t0, $fp, -20
	sw $t0, -736($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -756($fp)
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	lw $t1, -756($fp)
	mul $t0, $t0, $t1
	sw $t0, -760($fp)
	li $t0, 0
	lw $t1, -760($fp)
	sub $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label139:
	li $t0, 1
	sw $t0, -728($fp)
label140:
	j label136
label135:
	li $t0, 0
	sw $t0, -768($fp)
	lw $t0, -464($fp)
	sw $t0, -772($fp)
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label141:
	li $t0, 1
	sw $t0, -768($fp)
label142:
	lw $t0, -464($fp)
	sw $t0, -776($fp)
	lw $t0, -768($fp)
	lw $t1, -776($fp)
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
label136:
label143:
	li $t0, 37221
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -788($fp)
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -792($fp)
	addi $sp, $sp, 8
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 0
	sw $t0, -796($fp)
	li $t0, 0
	sw $t0, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	lw $t0, -176($fp)
	sw $t0, -808($fp)
	lw $t0, 4($fp)
	sw $t0, -812($fp)
	lw $t1, -808($fp)
	lw $t2, -812($fp)
	blt $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -804($fp)
label151:
	lw $t0, -356($fp)
	sw $t0, -816($fp)
	lw $t1, -804($fp)
	lw $t2, -816($fp)
	beq $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -800($fp)
label149:
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -820($fp)
	addi $sp, $sp, 8
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -796($fp)
label147:
	lw $t0, -68($fp)
	sw $t0, -824($fp)
	lw $t0, -796($fp)
	lw $t1, -824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -828($fp)
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 47427
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -832($fp)
label153:
	lw $t0, -828($fp)
	lw $t1, -832($fp)
	sub $t0, $t0, $t1
	sw $t0, -840($fp)
	j label143
label145:
	li $t0, 0
	sw $t0, -844($fp)
	lw $t0, -56($fp)
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -844($fp)
label155:
	addi $t0, $fp, -20
	sw $t0, -852($fp)
	li $t0, 1
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
	lw $t0, -844($fp)
	lw $t1, -868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -872($fp)
	li $t0, 0
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -56($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -888($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -908($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -928($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -948($fp)
	li $t0, 3
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
	lw $t0, -176($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 4
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -992($fp)
	li $t0, 1
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
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1032($fp)
	li $t0, 3
	sw $t0, -1036($fp)
	li $t0, 4
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, 0($t0)
	sw $t1, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1052($fp)
	li $t0, 4
	sw $t0, -1056($fp)
	li $t0, 4
	lw $t1, -1056($fp)
	mul $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t1, 0($t0)
	sw $t1, -1068($fp)
	lw $t0, -1068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1072($fp)
	li $t0, 5
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
	addi $t0, $fp, -48
	sw $t0, -1092($fp)
	li $t0, 6
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
	lw $t0, -356($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1116($fp)
	li $t0, 50241
	sw $t0, -1120($fp)
	lw $t0, 4($fp)
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1128($fp)
	lw $t0, -356($fp)
	sw $t0, -1132($fp)
	lw $t0, -1128($fp)
	lw $t1, -1132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1136($fp)
	lw $t0, -68($fp)
	sw $t0, -1140($fp)
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1144($fp)
	addi $sp, $sp, 8
	lw $t0, -1136($fp)
	lw $t1, -1144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1148($fp)
	lw $t0, -1116($fp)
	lw $t1, -1148($fp)
	sub $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $ra, -4($fp)
	lw $v0, -1152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -48
	sw $t0, -1156($fp)
	li $t0, 0
	sw $t0, -1160($fp)
	li $t0, 51806
	sw $t0, -1164($fp)
	lw $t1, -1164($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -1160($fp)
label157:
	li $t0, 4
	lw $t1, -1160($fp)
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, -1156($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, 0($t0)
	sw $t1, -1176($fp)
	lw $t0, -56($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1188($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -1208($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -1228($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -1248($fp)
	li $t0, 3
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
	lw $t0, -176($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	lw $t0, -356($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1416($fp)
	lw $t0, -176($fp)
	sw $t0, -1420($fp)
	li $t0, 23062
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	li $t0, 41912
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	li $t0, 4
	lw $t1, -1436($fp)
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	lw $t1, 0($t0)
	sw $t1, -1448($fp)
	addi $t0, $fp, -48
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	li $t0, 10682
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label158:
	li $t0, 1
	sw $t0, -1456($fp)
label159:
	li $t0, 4
	lw $t1, -1456($fp)
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, -1452($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, 0($t0)
	sw $t1, -1472($fp)
	lw $t0, -1448($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $ra, -4($fp)
	lw $v0, -1476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -244
	li $t0, 51525
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
	addi $t0, $fp, -8
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 35987
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label162
label162:
	lw $t0, 8($fp)
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -40($fp)
label161:
	li $t0, 4
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	lw $t1, -36($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	lw $t1, 0($t0)
	sw $t1, -60($fp)
	li $t0, 0
	lw $t1, -60($fp)
	sub $t0, $t0, $t1
	sw $t0, -64($fp)
	li $t0, 0
	sw $t0, -68($fp)
	addi $t0, $fp, -8
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	li $t0, 4
	lw $t1, -76($fp)
	mul $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	lw $t1, -72($fp)
	add $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	lw $t1, 0($t0)
	sw $t1, -88($fp)
	lw $t1, -88($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label165:
	li $t0, 0
	sw $t0, -92($fp)
	lw $t0, 12($fp)
	sw $t0, -96($fp)
	lw $t1, -96($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label166
label166:
	li $t0, 1
	sw $t0, -92($fp)
label167:
	li $t0, 0
	sw $t0, -100($fp)
	li $t0, 6636
	sw $t0, -104($fp)
	lw $t1, -104($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label168
label168:
	li $t0, 1
	sw $t0, -100($fp)
label169:
	lw $t1, -92($fp)
	lw $t2, -100($fp)
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -68($fp)
label164:
	lw $t0, 4($fp)
	sw $t0, -108($fp)
	li $t0, 13545
	sw $t0, -112($fp)
	lw $t0, -108($fp)
	lw $t1, -112($fp)
	mul $t0, $t0, $t1
	sw $t0, -116($fp)
	li $t0, 29177
	sw $t0, -120($fp)
	lw $t0, -116($fp)
	lw $t1, -120($fp)
	mul $t0, $t0, $t1
	sw $t0, -124($fp)
	li $t0, 0
	sw $t0, -128($fp)
	li $t0, 61160
	sw $t0, -132($fp)
	li $t0, 1
	sw $t0, -136($fp)
	lw $t0, -132($fp)
	lw $t1, -136($fp)
	mul $t0, $t0, $t1
	sw $t0, -140($fp)
	li $t0, 25133
	sw $t0, -144($fp)
	lw $t0, -140($fp)
	lw $t1, -144($fp)
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	addi $sp, $sp, -4
	lw $t0, -148($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -152($fp)
	addi $sp, $sp, 8
	lw $t1, -152($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -128($fp)
label171:
	addi $t0, $fp, -8
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
	lw $t0, -172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -176($fp)
	li $t0, 47308
	sw $t0, -180($fp)
	li $t0, 0
	lw $t1, -180($fp)
	sub $t0, $t0, $t1
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	li $t0, 17544
	sw $t0, -192($fp)
	lw $t1, -192($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -188($fp)
label176:
	lw $t0, -184($fp)
	lw $t1, -188($fp)
	sub $t0, $t0, $t1
	sw $t0, -196($fp)
	li $t0, 0
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	lw $t0, 4($fp)
	sw $t0, -208($fp)
	lw $t0, 8($fp)
	sw $t0, -212($fp)
	lw $t1, -208($fp)
	lw $t2, -212($fp)
	ble $t1, $t2, label179
	j label181
label181:
	lw $t0, 4($fp)
	sw $t0, -216($fp)
	lw $t1, -216($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -204($fp)
label180:
	addi $sp, $sp, -4
	lw $t0, -204($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -220($fp)
	addi $sp, $sp, 8
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label177:
	li $t0, 1
	sw $t0, -200($fp)
label178:
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	sub $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label174
label174:
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 17940
	sw $t0, -232($fp)
	li $t0, 0
	lw $t1, -232($fp)
	sub $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -228($fp)
label183:
	li $t0, 0
	sw $t0, -240($fp)
	li $t0, 50154
	sw $t0, -244($fp)
	lw $t0, 8($fp)
	sw $t0, -248($fp)
	lw $t1, -244($fp)
	lw $t2, -248($fp)
	blt $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -240($fp)
label185:
	lw $t1, -228($fp)
	lw $t2, -240($fp)
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -176($fp)
label173:
	lw $ra, -4($fp)
	lw $v0, -176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1352
	li $t0, 56100
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 8629
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 29970
	sw $t0, -76($fp)
	addi $t0, $fp, -40
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
	li $t0, 10698
	sw $t0, -100($fp)
	addi $t0, $fp, -40
	sw $t0, -104($fp)
	li $t0, 1
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
	li $t0, 20606
	sw $t0, -124($fp)
	addi $t0, $fp, -40
	sw $t0, -128($fp)
	li $t0, 2
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
	li $t0, 11449
	sw $t0, -148($fp)
	addi $t0, $fp, -40
	sw $t0, -152($fp)
	li $t0, 3
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
	li $t0, 62262
	sw $t0, -172($fp)
	addi $t0, $fp, -40
	sw $t0, -176($fp)
	li $t0, 4
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
	li $t0, 62495
	sw $t0, -196($fp)
	addi $t0, $fp, -40
	sw $t0, -200($fp)
	li $t0, 5
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
	li $t0, 48670
	sw $t0, -220($fp)
	addi $t0, $fp, -40
	sw $t0, -224($fp)
	li $t0, 6
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
	li $t0, 44153
	sw $t0, -244($fp)
	addi $t0, $fp, -40
	sw $t0, -248($fp)
	li $t0, 7
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
	li $t0, 8954
	sw $t0, -268($fp)
	addi $t0, $fp, -40
	sw $t0, -272($fp)
	li $t0, 8
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
	li $t0, 44768
	sw $t0, -292($fp)
	addi $t0, $fp, -48
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
	li $t0, 28859
	sw $t0, -316($fp)
	addi $t0, $fp, -48
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
	li $t0, 60760
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 2294
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 5235
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 5907
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 53819
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 41222
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 41085
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -404($fp)
	sw $t0, -424($fp)
	lw $t0, -380($fp)
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -432($fp)
	addi $sp, $sp, -4
	lw $t0, -432($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -436($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, 4($fp)
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label191:
	li $t0, 1
	sw $t0, -444($fp)
label192:
	li $t0, 0
	sw $t0, -452($fp)
	li $t0, 47858
	sw $t0, -456($fp)
	li $t0, 54630
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label195
label195:
	li $t0, 15115
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -452($fp)
label194:
	li $t0, 0
	sw $t0, -472($fp)
	lw $t0, -356($fp)
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label197
label199:
	lw $t0, 4($fp)
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label198:
	li $t0, 51473
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -472($fp)
label197:
	li $t0, 0
	sw $t0, -488($fp)
	lw $t0, -368($fp)
	sw $t0, -492($fp)
	li $t0, 0
	lw $t1, -492($fp)
	sub $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label202:
	lw $t0, -380($fp)
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -488($fp)
label201:
	li $t0, 0
	sw $t0, -504($fp)
	addi $t0, $fp, -40
	sw $t0, -508($fp)
	lw $t0, -392($fp)
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
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label203:
	li $t0, 1
	sw $t0, -504($fp)
label204:
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -504($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -528($fp)
	addi $sp, $sp, 24
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -440($fp)
label190:
	lw $t1, -436($fp)
	lw $t2, -440($fp)
	blt $t1, $t2, label186
	j label187
label186:
label205:
	li $t0, 0
	sw $t0, -532($fp)
	lw $t0, -404($fp)
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label210:
	lw $t0, 4($fp)
	sw $t0, -540($fp)
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -532($fp)
label209:
	lw $t0, -532($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
label211:
	li $t0, 43483
	sw $t0, -552($fp)
	lw $t0, 4($fp)
	sw $t0, -556($fp)
	li $t0, 0
	lw $t1, -556($fp)
	sub $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -552($fp)
	lw $t1, -560($fp)
	mul $t0, $t0, $t1
	sw $t0, -564($fp)
	addi $t0, $fp, -48
	sw $t0, -568($fp)
	lw $t0, -344($fp)
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
	addi $t0, $fp, -40
	sw $t0, -588($fp)
	lw $t0, 4($fp)
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
	lw $t0, -584($fp)
	lw $t1, -604($fp)
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t1, -564($fp)
	lw $t2, -608($fp)
	beq $t1, $t2, label212
	j label213
label212:
	li $t0, 0
	sw $t0, -612($fp)
	li $t0, 53489
	sw $t0, -616($fp)
	li $t0, 0
	lw $t1, -616($fp)
	sub $t0, $t0, $t1
	sw $t0, -620($fp)
	li $t0, 0
	sw $t0, -624($fp)
	addi $t0, $fp, -48
	sw $t0, -628($fp)
	li $t0, 1
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
	li $t0, 5497
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -652($fp)
	lw $t0, -380($fp)
	sw $t0, -656($fp)
	lw $t1, -652($fp)
	lw $t2, -656($fp)
	bgt $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -624($fp)
label217:
	lw $t1, -620($fp)
	lw $t2, -624($fp)
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -612($fp)
label215:
	j label211
label213:
	j label205
label207:
	j label188
label187:
	addi $t0, $fp, -40
	sw $t0, -660($fp)
	li $t0, 0
	sw $t0, -664($fp)
	lw $t0, -368($fp)
	sw $t0, -668($fp)
	lw $t0, -368($fp)
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	sub $t0, $t0, $t1
	sw $t0, -676($fp)
	li $t0, 58188
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -684($fp)
	addi $sp, $sp, -4
	lw $t0, -684($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -688($fp)
	addi $sp, $sp, 8
	lw $t1, -676($fp)
	lw $t2, -688($fp)
	beq $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -664($fp)
label219:
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, 0($t0)
	sw $t1, -700($fp)
label188:
label220:
	li $t0, 0
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	lw $t0, -392($fp)
	sw $t0, -712($fp)
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -708($fp)
label226:
	li $t0, 0
	lw $t1, -708($fp)
	sub $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -380($fp)
	sw $t0, -720($fp)
	li $t0, 0
	lw $t1, -720($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	li $t0, 9873
	sw $t0, -728($fp)
	lw $t0, -724($fp)
	lw $t1, -728($fp)
	sub $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t1, -716($fp)
	lw $t2, -732($fp)
	bge $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -704($fp)
label224:
	lw $t0, 4($fp)
	sw $t0, -736($fp)
	li $t0, 0
	sw $t0, -740($fp)
	lw $t0, -56($fp)
	sw $t0, -744($fp)
	lw $t0, -344($fp)
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	li $t0, 61597
	sw $t0, -756($fp)
	lw $t1, -752($fp)
	lw $t2, -756($fp)
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -740($fp)
label228:
	addi $sp, $sp, -4
	lw $t0, -740($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -760($fp)
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t1, -704($fp)
	lw $t2, -764($fp)
	beq $t1, $t2, label221
	j label222
label221:
	lw $t0, -68($fp)
	sw $t0, -768($fp)
	lw $t0, -56($fp)
	sw $t0, -772($fp)
	lw $t0, -768($fp)
	lw $t1, -772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -776($fp)
	j label220
label222:
	lw $t0, -56($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -788($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -808($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -828($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -848($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
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
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -888($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -908($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -928($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -948($fp)
	li $t0, 8
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
	addi $t0, $fp, -48
	sw $t0, -968($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -988($fp)
	li $t0, 1
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
	lw $t0, -344($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 1281
	sw $t0, -1036($fp)
	li $t0, 0
	lw $t1, -1036($fp)
	sub $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, 4($fp)
	sw $t0, -1044($fp)
	li $t0, 0
	lw $t1, -1044($fp)
	sub $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1040($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 0
	sw $t0, -1060($fp)
	lw $t0, 4($fp)
	sw $t0, -1064($fp)
	li $t0, 39844
	sw $t0, -1068($fp)
	lw $t1, -1064($fp)
	lw $t2, -1068($fp)
	bge $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -1060($fp)
label232:
	li $t0, 6759
	sw $t0, -1072($fp)
	lw $t1, -1060($fp)
	lw $t2, -1072($fp)
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -1056($fp)
label230:
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1076($fp)
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $ra, -4($fp)
	lw $v0, -1080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -56($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	lw $t0, -1108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1112($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1132($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -1152($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -1172($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -1192($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -1212($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -1232($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -1252($fp)
	li $t0, 8
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	lw $t0, -344($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1340($fp)
	li $t0, 21888
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -1340($fp)
label234:
	li $t0, 0
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $ra, -4($fp)
	lw $v0, -1348($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1352($fp)
	lw $t0, 4($fp)
	sw $t0, -1356($fp)
	lw $t1, -1356($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label235
label235:
	li $t0, 1
	sw $t0, -1352($fp)
label236:
	lw $ra, -4($fp)
	lw $v0, -1352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -40
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	li $t0, 3486
	sw $t0, -16($fp)
	li $t0, 0
	lw $t1, -16($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	li $t0, 18847
	sw $t0, -24($fp)
	lw $t1, -20($fp)
	lw $t2, -24($fp)
	blt $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -12($fp)
label238:
	li $t0, 51293
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -32($fp)
	lw $t0, 4($fp)
	sw $t0, -36($fp)
	addi $sp, $sp, -4
	lw $t0, -12($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -40($fp)
	addi $sp, $sp, 16
	lw $t0, -8($fp)
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $ra, -4($fp)
	lw $v0, -44($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -692
	li $t0, 34427
	sw $t0, -28($fp)
	addi $t0, $fp, -24
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
	li $t0, 47639
	sw $t0, -52($fp)
	addi $t0, $fp, -24
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
	li $t0, 27801
	sw $t0, -76($fp)
	addi $t0, $fp, -24
	sw $t0, -80($fp)
	li $t0, 2
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
	li $t0, 13659
	sw $t0, -100($fp)
	addi $t0, $fp, -24
	sw $t0, -104($fp)
	li $t0, 3
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
	li $t0, 10962
	sw $t0, -124($fp)
	addi $t0, $fp, -24
	sw $t0, -128($fp)
	li $t0, 4
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
	li $t0, 23026
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	addi $t0, $fp, -24
	sw $t0, -160($fp)
	li $t0, 0
	sw $t0, -164($fp)
	lw $t0, 4($fp)
	sw $t0, -168($fp)
	li $t0, 0
	lw $t1, -168($fp)
	sub $t0, $t0, $t1
	sw $t0, -172($fp)
	addi $sp, $sp, -4
	lw $t0, -172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -176($fp)
	addi $sp, $sp, 8
	lw $t1, -176($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label242:
	li $t0, 1
	sw $t0, -164($fp)
label243:
	li $t0, 4
	lw $t1, -164($fp)
	mul $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lw $t1, 0($t0)
	sw $t1, -188($fp)
	li $t0, 0
	sw $t0, -192($fp)
	li $t0, 15954
	sw $t0, -196($fp)
	li $t0, 16198
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	sub $t0, $t0, $t1
	sw $t0, -204($fp)
	addi $t0, $fp, -24
	sw $t0, -208($fp)
	li $t0, 2
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
	lw $t0, -152($fp)
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	add $t0, $t0, $t1
	sw $t0, -232($fp)
	addi $sp, $sp, -4
	lw $t0, -232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -236($fp)
	addi $sp, $sp, 8
	lw $t1, -204($fp)
	lw $t2, -236($fp)
	ble $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -192($fp)
label245:
	lw $t1, -188($fp)
	lw $t2, -192($fp)
	bne $t1, $t2, label239
	j label240
label239:
label246:
	li $t0, 57420
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label247:
	li $t0, 17690
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -248($fp)
	li $t0, 5290
	sw $t0, -252($fp)
	li $t0, 0
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	li $t0, 39743
	sw $t0, -264($fp)
	lw $t1, -264($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label251:
	li $t0, 59112
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -260($fp)
label250:
	lw $t0, 4($fp)
	sw $t0, -272($fp)
	lw $t0, 8($fp)
	sw $t0, -276($fp)
	lw $t0, -272($fp)
	lw $t1, -276($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, 55711
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	li $t0, 4482
	sw $t0, -296($fp)
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label254
label254:
	lw $t0, 4($fp)
	sw $t0, -300($fp)
	lw $t1, -300($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -292($fp)
label253:
	addi $sp, $sp, -4
	lw $t0, -248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -292($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -304($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -304($fp)
	sub $t0, $t0, $t1
	sw $t0, -308($fp)
	j label246
label248:
	j label241
label240:
	lw $t0, -152($fp)
	sw $t0, -312($fp)
	lw $t0, 4($fp)
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -320($fp)
label241:
	addi $t0, $fp, -24
	sw $t0, -324($fp)
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 4
	lw $t1, -328($fp)
	mul $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t1, 0($t0)
	sw $t1, -340($fp)
	lw $t0, -340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -344($fp)
	li $t0, 1
	sw $t0, -348($fp)
	li $t0, 4
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t1, -344($fp)
	add $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	lw $t1, 0($t0)
	sw $t1, -360($fp)
	lw $t0, -360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -364($fp)
	li $t0, 2
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
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -384($fp)
	li $t0, 3
	sw $t0, -388($fp)
	li $t0, 4
	lw $t1, -388($fp)
	mul $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	lw $t1, -384($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	lw $t1, 0($t0)
	sw $t1, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -404($fp)
	li $t0, 4
	sw $t0, -408($fp)
	li $t0, 4
	lw $t1, -408($fp)
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	lw $t1, -404($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	lw $t1, 0($t0)
	sw $t1, -420($fp)
	lw $t0, -420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 47065
	sw $t0, -428($fp)
	lw $ra, -4($fp)
	lw $v0, -428($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 45538
	sw $t0, -444($fp)
	addi $t0, $fp, -440
	sw $t0, -448($fp)
	li $t0, 0
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
	li $t0, 42945
	sw $t0, -468($fp)
	addi $t0, $fp, -440
	sw $t0, -472($fp)
	li $t0, 1
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -472($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -468($fp)
	lw $t1, -484($fp)
	sw $t0, 0($t1)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	li $t0, 52562
	sw $t0, -492($fp)
	addi $t0, $fp, -440
	sw $t0, -496($fp)
	li $t0, 2
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -496($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -492($fp)
	lw $t1, -508($fp)
	sw $t0, 0($t1)
	lw $t0, -508($fp)
	lw $t1, 0($t0)
	sw $t1, -512($fp)
	li $t0, 0
	sw $t0, -516($fp)
	li $t0, 0
	sw $t0, -520($fp)
	lw $t0, 4($fp)
	sw $t0, -524($fp)
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -520($fp)
label258:
	li $t0, 0
	sw $t0, -528($fp)
	addi $t0, $fp, -24
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
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -552($fp)
	addi $sp, $sp, 8
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label259:
	li $t0, 1
	sw $t0, -528($fp)
label260:
	addi $t0, $fp, -440
	sw $t0, -556($fp)
	li $t0, 1
	sw $t0, -560($fp)
	li $t0, 4
	lw $t1, -560($fp)
	mul $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, 0($t0)
	sw $t1, -572($fp)
	lw $t0, -528($fp)
	lw $t1, -572($fp)
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t1, -520($fp)
	lw $t2, -576($fp)
	ble $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -516($fp)
label256:
	lw $t0, 4($fp)
	sw $t0, -580($fp)
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	lw $t0, -152($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -688($fp)
	li $t0, 27126
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label262
label263:
	li $t0, 55383
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -688($fp)
label262:
	lw $ra, -4($fp)
	lw $v0, -688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -428
	li $t0, 61360
	sw $t0, -28($fp)
	addi $t0, $fp, -24
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
	li $t0, 12883
	sw $t0, -52($fp)
	addi $t0, $fp, -24
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
	li $t0, 58869
	sw $t0, -76($fp)
	addi $t0, $fp, -24
	sw $t0, -80($fp)
	li $t0, 2
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
	li $t0, 14671
	sw $t0, -100($fp)
	addi $t0, $fp, -24
	sw $t0, -104($fp)
	li $t0, 3
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
	li $t0, 47311
	sw $t0, -124($fp)
	addi $t0, $fp, -24
	sw $t0, -128($fp)
	li $t0, 4
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
	li $t0, 40973
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -152($fp)
	sw $t0, -160($fp)
	li $t0, 0
	sw $t0, -164($fp)
	addi $t0, $fp, -24
	sw $t0, -168($fp)
	li $t0, 1
	sw $t0, -172($fp)
	li $t0, 4
	lw $t1, -172($fp)
	mul $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, 0($t0)
	sw $t1, -184($fp)
	lw $t1, -184($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label266:
	li $t0, 51935
	sw $t0, -188($fp)
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -164($fp)
label265:
	addi $t0, $fp, -24
	sw $t0, -192($fp)
	li $t0, 0
	sw $t0, -196($fp)
	li $t0, 4
	lw $t1, -196($fp)
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, -192($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t1, 0($t0)
	sw $t1, -208($fp)
	lw $t0, -208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -212($fp)
	li $t0, 1
	sw $t0, -216($fp)
	li $t0, 4
	lw $t1, -216($fp)
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, 0($t0)
	sw $t1, -228($fp)
	lw $t0, -228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -232($fp)
	li $t0, 2
	sw $t0, -236($fp)
	li $t0, 4
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, 0($t0)
	sw $t1, -248($fp)
	lw $t0, -248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	lw $t0, -268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -272($fp)
	li $t0, 4
	sw $t0, -276($fp)
	li $t0, 4
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, 0($t0)
	sw $t1, -288($fp)
	lw $t0, -288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 65499
	sw $t0, -300($fp)
	li $t0, 0
	lw $t1, -300($fp)
	sub $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -296($fp)
label268:
	li $t0, 11388
	sw $t0, -308($fp)
	li $t0, 0
	lw $t1, -308($fp)
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -296($fp)
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, 12($fp)
	sw $t0, -320($fp)
	li $t0, 15626
	sw $t0, -324($fp)
	lw $t0, -320($fp)
	lw $t1, -324($fp)
	mul $t0, $t0, $t1
	sw $t0, -328($fp)
	li $t0, 0
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	li $t0, 0
	sw $t0, -336($fp)
	li $t0, 2597
	sw $t0, -340($fp)
	lw $t0, 12($fp)
	sw $t0, -344($fp)
	lw $t0, -340($fp)
	lw $t1, -344($fp)
	mul $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label271
label271:
	li $t0, 28896
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -336($fp)
label270:
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -356($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -360($fp)
	lw $t0, -152($fp)
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
	li $t0, 0
	lw $t1, -376($fp)
	sub $t0, $t0, $t1
	sw $t0, -380($fp)
	addi $t0, $fp, -24
	sw $t0, -384($fp)
	lw $t0, -152($fp)
	sw $t0, -388($fp)
	li $t0, 4
	lw $t1, -388($fp)
	mul $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	lw $t1, -384($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	lw $t1, 0($t0)
	sw $t1, -400($fp)
	lw $t0, 4($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -408($fp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -412($fp)
	addi $sp, $sp, 24
	lw $t0, 12($fp)
	sw $t0, -416($fp)
	lw $t0, -412($fp)
	lw $t1, -416($fp)
	mul $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -316($fp)
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -152($fp)
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $ra, -4($fp)
	lw $v0, -432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4872
	li $t0, 60018
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 33378
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 5801
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 34225
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 26954
	sw $t0, -136($fp)
	addi $t0, $fp, -40
	sw $t0, -140($fp)
	li $t0, 0
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
	li $t0, 11091
	sw $t0, -160($fp)
	addi $t0, $fp, -40
	sw $t0, -164($fp)
	li $t0, 1
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
	li $t0, 51915
	sw $t0, -184($fp)
	addi $t0, $fp, -40
	sw $t0, -188($fp)
	li $t0, 2
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
	li $t0, 8483
	sw $t0, -208($fp)
	addi $t0, $fp, -40
	sw $t0, -212($fp)
	li $t0, 3
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
	li $t0, 56629
	sw $t0, -232($fp)
	addi $t0, $fp, -40
	sw $t0, -236($fp)
	li $t0, 4
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
	li $t0, 29324
	sw $t0, -256($fp)
	addi $t0, $fp, -40
	sw $t0, -260($fp)
	li $t0, 5
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
	li $t0, 61045
	sw $t0, -280($fp)
	addi $t0, $fp, -40
	sw $t0, -284($fp)
	li $t0, 6
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
	li $t0, 29283
	sw $t0, -304($fp)
	addi $t0, $fp, -40
	sw $t0, -308($fp)
	li $t0, 7
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
	li $t0, 16606
	sw $t0, -328($fp)
	addi $t0, $fp, -40
	sw $t0, -332($fp)
	li $t0, 8
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
	li $t0, 44133
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 3219
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 43733
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 33981
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 64579
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 56616
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 27314
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 13715
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 38391
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 2751
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 56188
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 33826
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 54687
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 56151
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 45214
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 57284
	sw $t0, -532($fp)
	addi $t0, $fp, -52
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
	li $t0, 19511
	sw $t0, -556($fp)
	addi $t0, $fp, -52
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
	li $t0, 60840
	sw $t0, -580($fp)
	addi $t0, $fp, -52
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
	li $t0, 51766
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 52889
	sw $t0, -616($fp)
	addi $t0, $fp, -84
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
	li $t0, 1105
	sw $t0, -640($fp)
	addi $t0, $fp, -84
	sw $t0, -644($fp)
	li $t0, 1
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
	li $t0, 20455
	sw $t0, -664($fp)
	addi $t0, $fp, -84
	sw $t0, -668($fp)
	li $t0, 2
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
	li $t0, 14307
	sw $t0, -688($fp)
	addi $t0, $fp, -84
	sw $t0, -692($fp)
	li $t0, 3
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
	li $t0, 12196
	sw $t0, -712($fp)
	addi $t0, $fp, -84
	sw $t0, -716($fp)
	li $t0, 4
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
	li $t0, 6834
	sw $t0, -736($fp)
	addi $t0, $fp, -84
	sw $t0, -740($fp)
	li $t0, 5
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
	li $t0, 22790
	sw $t0, -760($fp)
	addi $t0, $fp, -84
	sw $t0, -764($fp)
	li $t0, 6
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
	li $t0, 3289
	sw $t0, -784($fp)
	addi $t0, $fp, -84
	sw $t0, -788($fp)
	li $t0, 7
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -788($fp)
	lw $t1, -796($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -784($fp)
	lw $t1, -800($fp)
	sw $t0, 0($t1)
	lw $t0, -800($fp)
	lw $t1, 0($t0)
	sw $t1, -804($fp)
	li $t0, 36158
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 18299
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 32573
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 52765
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 62433
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 35792
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 30962
	sw $t0, -932($fp)
	addi $t0, $fp, -892
	sw $t0, -936($fp)
	li $t0, 0
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -936($fp)
	lw $t1, -944($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -932($fp)
	lw $t1, -948($fp)
	sw $t0, 0($t1)
	lw $t0, -948($fp)
	lw $t1, 0($t0)
	sw $t1, -952($fp)
	li $t0, 30878
	sw $t0, -956($fp)
	addi $t0, $fp, -892
	sw $t0, -960($fp)
	li $t0, 1
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
	li $t0, 34836
	sw $t0, -980($fp)
	addi $t0, $fp, -892
	sw $t0, -984($fp)
	li $t0, 2
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
	li $t0, 22042
	sw $t0, -1004($fp)
	addi $t0, $fp, -892
	sw $t0, -1008($fp)
	li $t0, 3
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
	li $t0, 58192
	sw $t0, -1028($fp)
	addi $t0, $fp, -892
	sw $t0, -1032($fp)
	li $t0, 4
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
	li $t0, 48551
	sw $t0, -1052($fp)
	addi $t0, $fp, -892
	sw $t0, -1056($fp)
	li $t0, 5
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
	li $t0, 60434
	sw $t0, -1076($fp)
	addi $t0, $fp, -892
	sw $t0, -1080($fp)
	li $t0, 6
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
	li $t0, 60944
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 39203
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 28724
	sw $t0, -1124($fp)
	addi $t0, $fp, -904
	sw $t0, -1128($fp)
	li $t0, 0
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
	li $t0, 50095
	sw $t0, -1148($fp)
	addi $t0, $fp, -904
	sw $t0, -1152($fp)
	li $t0, 1
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
	li $t0, 29818
	sw $t0, -1172($fp)
	addi $t0, $fp, -904
	sw $t0, -1176($fp)
	li $t0, 2
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
	li $t0, 8402
	sw $t0, -1196($fp)
	addi $t0, $fp, -916
	sw $t0, -1200($fp)
	li $t0, 0
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1200($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1196($fp)
	lw $t1, -1212($fp)
	sw $t0, 0($t1)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	li $t0, 41843
	sw $t0, -1220($fp)
	addi $t0, $fp, -916
	sw $t0, -1224($fp)
	li $t0, 1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1224($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1220($fp)
	lw $t1, -1236($fp)
	sw $t0, 0($t1)
	lw $t0, -1236($fp)
	lw $t1, 0($t0)
	sw $t1, -1240($fp)
	li $t0, 49329
	sw $t0, -1244($fp)
	addi $t0, $fp, -916
	sw $t0, -1248($fp)
	li $t0, 2
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1248($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1244($fp)
	lw $t1, -1260($fp)
	sw $t0, 0($t1)
	lw $t0, -1260($fp)
	lw $t1, 0($t0)
	sw $t1, -1264($fp)
	li $t0, 3707
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 28074
	sw $t0, -1280($fp)
	lw $t0, -924($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -892
	sw $t0, -1288($fp)
	li $t0, 0
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
	addi $t0, $fp, -892
	sw $t0, -1308($fp)
	li $t0, 1
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
	addi $t0, $fp, -892
	sw $t0, -1328($fp)
	li $t0, 2
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
	addi $t0, $fp, -892
	sw $t0, -1348($fp)
	li $t0, 3
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
	addi $t0, $fp, -892
	sw $t0, -1368($fp)
	li $t0, 4
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
	addi $t0, $fp, -892
	sw $t0, -1388($fp)
	li $t0, 5
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
	addi $t0, $fp, -892
	sw $t0, -1408($fp)
	li $t0, 6
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
	lw $t0, -1104($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -904
	sw $t0, -1436($fp)
	li $t0, 0
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
	addi $t0, $fp, -904
	sw $t0, -1456($fp)
	li $t0, 1
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
	addi $t0, $fp, -904
	sw $t0, -1476($fp)
	li $t0, 2
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
	addi $t0, $fp, -916
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
	addi $t0, $fp, -916
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
	addi $t0, $fp, -916
	sw $t0, -1536($fp)
	li $t0, 2
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
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1560($fp)
	li $t0, 0
	sw $t0, -1564($fp)
	lw $t0, -404($fp)
	sw $t0, -1568($fp)
	lw $t0, -392($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -1576($fp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1580($fp)
	addi $sp, $sp, 8
	lw $t1, -1568($fp)
	lw $t2, -1580($fp)
	bge $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -1564($fp)
label275:
	li $t0, 0
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	lw $t0, -524($fp)
	sw $t0, -1592($fp)
	li $t0, 17009
	sw $t0, -1596($fp)
	lw $t1, -1592($fp)
	lw $t2, -1596($fp)
	beq $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -1588($fp)
label279:
	lw $t0, -380($fp)
	sw $t0, -1600($fp)
	lw $t1, -1588($fp)
	lw $t2, -1600($fp)
	beq $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -1584($fp)
label277:
	li $t0, 0
	sw $t0, -1604($fp)
	li $t0, 50989
	sw $t0, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -1604($fp)
label281:
	li $t0, 0
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	li $t0, 48529
	sw $t0, -1616($fp)
	lw $t0, -500($fp)
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1624($fp)
	lw $t0, -116($fp)
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	sub $t0, $t0, $t1
	sw $t0, -1632($fp)
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	lw $t0, -924($fp)
	sw $t0, -1644($fp)
	li $t0, 36682
	sw $t0, -1648($fp)
	lw $t1, -1644($fp)
	lw $t2, -1648($fp)
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -1640($fp)
label285:
	li $t0, 4812
	sw $t0, -1652($fp)
	lw $t1, -1640($fp)
	lw $t2, -1652($fp)
	beq $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -1636($fp)
label283:
	li $t0, 0
	sw $t0, -1656($fp)
	lw $t0, -848($fp)
	sw $t0, -1660($fp)
	lw $t0, -1116($fp)
	sw $t0, -1664($fp)
	lw $t1, -1660($fp)
	lw $t2, -1664($fp)
	beq $t1, $t2, label288
	j label287
label288:
	lw $t0, -860($fp)
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -1656($fp)
label287:
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1672($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -84
	sw $t0, -1676($fp)
	li $t0, 3
	sw $t0, -1680($fp)
	li $t0, 4
	lw $t1, -1680($fp)
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	lw $t1, -1676($fp)
	add $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, 0($t0)
	sw $t1, -1692($fp)
	lw $t0, -1672($fp)
	lw $t1, -1692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1696($fp)
	lw $t1, -1564($fp)
	lw $t2, -1696($fp)
	bge $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -1560($fp)
label273:
	lw $ra, -4($fp)
	lw $v0, -1560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1700($fp)
	li $t0, 20298
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label290
label291:
	lw $t0, -924($fp)
	sw $t0, -1708($fp)
	lw $t0, -924($fp)
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1716($fp)
	lw $t0, -416($fp)
	sw $t0, -1720($fp)
	lw $t0, -1716($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1272($fp)
	sw $t0, -1728($fp)
	lw $t0, -1724($fp)
	lw $t1, -1728($fp)
	add $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -1700($fp)
label290:
	lw $ra, -4($fp)
	lw $v0, -1700($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label292:
	lw $t0, -428($fp)
	sw $t0, -1736($fp)
	addi $t0, $fp, -84
	sw $t0, -1740($fp)
	li $t0, 6
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
	lw $t0, -1736($fp)
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	addi $t0, $fp, -904
	sw $t0, -1764($fp)
	li $t0, 0
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
	li $t0, 23439
	sw $t0, -1784($fp)
	lw $t0, -1780($fp)
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	li $t0, 23128
	sw $t0, -1792($fp)
	li $t0, 0
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1788($fp)
	lw $t1, -1796($fp)
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1760($fp)
	lw $t1, -1800($fp)
	sub $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	lw $t0, -488($fp)
	sw $t0, -1808($fp)
	li $t0, 0
	sw $t0, -1812($fp)
	li $t0, 0
	sw $t0, -1816($fp)
	lw $t0, -1272($fp)
	sw $t0, -1820($fp)
	lw $t0, -428($fp)
	sw $t0, -1824($fp)
	lw $t1, -1820($fp)
	lw $t2, -1824($fp)
	blt $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -1816($fp)
label301:
	lw $t0, -1104($fp)
	sw $t0, -1828($fp)
	lw $t0, -476($fp)
	sw $t0, -1832($fp)
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1836($fp)
	lw $t1, -1816($fp)
	lw $t2, -1836($fp)
	bgt $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -1812($fp)
label299:
	lw $t1, -1808($fp)
	lw $t2, -1812($fp)
	bne $t1, $t2, label295
	j label296
label295:
label302:
	lw $t0, -860($fp)
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 0
	sw $t0, -1844($fp)
	lw $t0, -464($fp)
	sw $t0, -1848($fp)
	li $t0, 44177
	sw $t0, -1852($fp)
	lw $t1, -1848($fp)
	lw $t2, -1852($fp)
	beq $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -1844($fp)
label306:
	j label302
label304:
	j label297
label296:
label307:
	li $t0, 0
	sw $t0, -1856($fp)
	addi $t0, $fp, -40
	sw $t0, -1860($fp)
	lw $t0, -428($fp)
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
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label312:
	li $t0, 1
	sw $t0, -1856($fp)
label313:
	addi $t0, $fp, -84
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
	lw $t0, -1856($fp)
	lw $t1, -1896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1900($fp)
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label311
label311:
	addi $t0, $fp, -84
	sw $t0, -1904($fp)
	lw $t0, -428($fp)
	sw $t0, -1908($fp)
	li $t0, 4
	lw $t1, -1908($fp)
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	lw $t0, -476($fp)
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label310
label310:
	addi $t0, $fp, -892
	sw $t0, -1932($fp)
	lw $t0, -608($fp)
	sw $t0, -1936($fp)
	li $t0, 4
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, -1932($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	lw $t1, 0($t0)
	sw $t1, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	lw $t0, -116($fp)
	sw $t0, -1952($fp)
	lw $ra, -4($fp)
	lw $v0, -1952($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label307
label309:
label297:
	j label292
label294:
label314:
	li $t0, 684
	sw $t0, -1956($fp)
	lw $t0, -380($fp)
	sw $t0, -1960($fp)
	lw $t0, -1956($fp)
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	addi $t0, $fp, -916
	sw $t0, -1968($fp)
	lw $t0, -1104($fp)
	sw $t0, -1972($fp)
	li $t0, 61118
	sw $t0, -1976($fp)
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1980($fp)
	li $t0, 0
	sw $t0, -1984($fp)
	lw $t0, -128($fp)
	sw $t0, -1988($fp)
	li $t0, 46974
	sw $t0, -1992($fp)
	lw $t0, -1988($fp)
	lw $t1, -1992($fp)
	mul $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label319:
	li $t0, 40979
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -1984($fp)
label318:
	addi $t0, $fp, -52
	sw $t0, -2004($fp)
	lw $t0, -812($fp)
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
	li $t0, 0
	lw $t1, -2020($fp)
	sub $t0, $t0, $t1
	sw $t0, -2024($fp)
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2028($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -2028($fp)
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	lw $ra, -4($fp)
	lw $v0, -2040($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label314
label316:
	lw $t0, -924($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -892
	sw $t0, -2048($fp)
	li $t0, 0
	sw $t0, -2052($fp)
	li $t0, 4
	lw $t1, -2052($fp)
	mul $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, 0($t0)
	sw $t1, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -892
	sw $t0, -2068($fp)
	li $t0, 1
	sw $t0, -2072($fp)
	li $t0, 4
	lw $t1, -2072($fp)
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -892
	sw $t0, -2088($fp)
	li $t0, 2
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
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -892
	sw $t0, -2108($fp)
	li $t0, 3
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
	lw $t0, -2124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -892
	sw $t0, -2128($fp)
	li $t0, 4
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
	addi $t0, $fp, -892
	sw $t0, -2148($fp)
	li $t0, 5
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
	addi $t0, $fp, -892
	sw $t0, -2168($fp)
	li $t0, 6
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
	lw $t0, -1104($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -904
	sw $t0, -2196($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	addi $t0, $fp, -916
	sw $t0, -2256($fp)
	li $t0, 0
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
	addi $t0, $fp, -916
	sw $t0, -2276($fp)
	li $t0, 1
	sw $t0, -2280($fp)
	li $t0, 4
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -916
	sw $t0, -2296($fp)
	li $t0, 2
	sw $t0, -2300($fp)
	li $t0, 4
	lw $t1, -2300($fp)
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, 0($t0)
	sw $t1, -2312($fp)
	lw $t0, -2312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2320($fp)
	addi $t0, $fp, -84
	sw $t0, -2324($fp)
	lw $t0, -824($fp)
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
	li $t0, 0
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	li $t0, 42382
	sw $t0, -2348($fp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2352($fp)
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2344($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	addi $t0, $fp, -40
	sw $t0, -2372($fp)
	lw $t0, -440($fp)
	sw $t0, -2376($fp)
	li $t0, 4
	lw $t1, -2376($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -2368($fp)
label323:
	lw $t1, -2364($fp)
	lw $t2, -2368($fp)
	bgt $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -2320($fp)
label321:
	lw $ra, -4($fp)
	lw $v0, -2320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 14646
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label324:
	lw $t0, -512($fp)
	sw $t0, -2396($fp)
	lw $t0, -416($fp)
	sw $t0, -2400($fp)
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2404($fp)
	li $t0, 24306
	sw $t0, -2408($fp)
	lw $t0, -2404($fp)
	lw $t1, -2408($fp)
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	li $t0, 0
	lw $t1, -2412($fp)
	sub $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 0
	sw $t0, -2420($fp)
	li $t0, 26941
	sw $t0, -2424($fp)
	lw $t0, -452($fp)
	sw $t0, -2428($fp)
	lw $t0, -2424($fp)
	lw $t1, -2428($fp)
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -116($fp)
	sw $t0, -2436($fp)
	lw $t1, -2432($fp)
	lw $t2, -2436($fp)
	beq $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -2420($fp)
label336:
	li $t0, 44464
	sw $t0, -2440($fp)
	li $t0, 0
	lw $t1, -2440($fp)
	sub $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t1, -2420($fp)
	lw $t2, -2444($fp)
	bne $t1, $t2, label334
	j label333
label334:
	lw $t0, -128($fp)
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label333
label333:
	li $t0, 32708
	sw $t0, -2452($fp)
	lw $t1, -2452($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 0
	sw $t0, -2456($fp)
	addi $t0, $fp, -52
	sw $t0, -2460($fp)
	lw $t0, -128($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -2468($fp)
	li $t0, 4
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, 0($t0)
	sw $t1, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label339
label339:
	addi $t0, $fp, -40
	sw $t0, -2484($fp)
	lw $t0, -824($fp)
	sw $t0, -2488($fp)
	li $t0, 4
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	lw $t0, -836($fp)
	sw $t0, -2504($fp)
	li $t0, 0
	lw $t1, -2504($fp)
	sub $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2500($fp)
	lw $t1, -2508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -2456($fp)
label338:
	lw $ra, -4($fp)
	lw $v0, -2456($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label332
label331:
	li $t0, 0
	sw $t0, -2516($fp)
	li $t0, 3248
	sw $t0, -2520($fp)
	lw $t1, -2520($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label342:
	addi $t0, $fp, -84
	sw $t0, -2524($fp)
	lw $t0, -356($fp)
	sw $t0, -2528($fp)
	li $t0, 4
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, 0($t0)
	sw $t1, -2540($fp)
	lw $t0, -92($fp)
	sw $t0, -2544($fp)
	lw $t1, -2540($fp)
	lw $t2, -2544($fp)
	bge $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -2516($fp)
label341:
	lw $ra, -4($fp)
	lw $v0, -2516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label332:
	j label329
label328:
label343:
	li $t0, 0
	sw $t0, -2548($fp)
	lw $t0, -524($fp)
	sw $t0, -2552($fp)
	lw $t0, -104($fp)
	sw $t0, -2556($fp)
	lw $t0, -2552($fp)
	lw $t1, -2556($fp)
	mul $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label348:
	li $t0, 28257
	sw $t0, -2564($fp)
	lw $t0, -116($fp)
	sw $t0, -2568($fp)
	lw $t1, -2564($fp)
	lw $t2, -2568($fp)
	blt $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -2548($fp)
label347:
	lw $t0, -2548($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label345
label344:
	li $t0, 36415
	sw $t0, -2680($fp)
	addi $t0, $fp, -2612
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2684($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2680($fp)
	lw $t1, -2696($fp)
	sw $t0, 0($t1)
	lw $t0, -2696($fp)
	lw $t1, 0($t0)
	sw $t1, -2700($fp)
	li $t0, 31322
	sw $t0, -2704($fp)
	addi $t0, $fp, -2612
	sw $t0, -2708($fp)
	li $t0, 1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2708($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2704($fp)
	lw $t1, -2720($fp)
	sw $t0, 0($t1)
	lw $t0, -2720($fp)
	lw $t1, 0($t0)
	sw $t1, -2724($fp)
	li $t0, 64939
	sw $t0, -2728($fp)
	addi $t0, $fp, -2612
	sw $t0, -2732($fp)
	li $t0, 2
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
	li $t0, 41228
	sw $t0, -2752($fp)
	addi $t0, $fp, -2612
	sw $t0, -2756($fp)
	li $t0, 3
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
	li $t0, 14316
	sw $t0, -2776($fp)
	addi $t0, $fp, -2612
	sw $t0, -2780($fp)
	li $t0, 4
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
	li $t0, 50392
	sw $t0, -2800($fp)
	addi $t0, $fp, -2612
	sw $t0, -2804($fp)
	li $t0, 5
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
	li $t0, 58237
	sw $t0, -2824($fp)
	addi $t0, $fp, -2612
	sw $t0, -2828($fp)
	li $t0, 6
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
	li $t0, 4144
	sw $t0, -2848($fp)
	addi $t0, $fp, -2612
	sw $t0, -2852($fp)
	li $t0, 7
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
	li $t0, 58635
	sw $t0, -2872($fp)
	addi $t0, $fp, -2612
	sw $t0, -2876($fp)
	li $t0, 8
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
	li $t0, 12999
	sw $t0, -2896($fp)
	addi $t0, $fp, -2612
	sw $t0, -2900($fp)
	li $t0, 9
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
	li $t0, 30130
	sw $t0, -2920($fp)
	addi $t0, $fp, -2648
	sw $t0, -2924($fp)
	li $t0, 0
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
	li $t0, 19641
	sw $t0, -2944($fp)
	addi $t0, $fp, -2648
	sw $t0, -2948($fp)
	li $t0, 1
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
	li $t0, 335
	sw $t0, -2968($fp)
	addi $t0, $fp, -2648
	sw $t0, -2972($fp)
	li $t0, 2
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2972($fp)
	lw $t1, -2980($fp)
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2968($fp)
	lw $t1, -2984($fp)
	sw $t0, 0($t1)
	lw $t0, -2984($fp)
	lw $t1, 0($t0)
	sw $t1, -2988($fp)
	li $t0, 43346
	sw $t0, -2992($fp)
	addi $t0, $fp, -2648
	sw $t0, -2996($fp)
	li $t0, 3
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -2996($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -2992($fp)
	lw $t1, -3008($fp)
	sw $t0, 0($t1)
	lw $t0, -3008($fp)
	lw $t1, 0($t0)
	sw $t1, -3012($fp)
	li $t0, 43081
	sw $t0, -3016($fp)
	addi $t0, $fp, -2648
	sw $t0, -3020($fp)
	li $t0, 4
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3020($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3016($fp)
	lw $t1, -3032($fp)
	sw $t0, 0($t1)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	li $t0, 23463
	sw $t0, -3040($fp)
	addi $t0, $fp, -2648
	sw $t0, -3044($fp)
	li $t0, 5
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3044($fp)
	lw $t1, -3052($fp)
	add $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3040($fp)
	lw $t1, -3056($fp)
	sw $t0, 0($t1)
	lw $t0, -3056($fp)
	lw $t1, 0($t0)
	sw $t1, -3060($fp)
	li $t0, 21987
	sw $t0, -3064($fp)
	addi $t0, $fp, -2648
	sw $t0, -3068($fp)
	li $t0, 6
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3068($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3064($fp)
	lw $t1, -3080($fp)
	sw $t0, 0($t1)
	lw $t0, -3080($fp)
	lw $t1, 0($t0)
	sw $t1, -3084($fp)
	li $t0, 31862
	sw $t0, -3088($fp)
	addi $t0, $fp, -2648
	sw $t0, -3092($fp)
	li $t0, 7
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
	li $t0, 15891
	sw $t0, -3112($fp)
	addi $t0, $fp, -2648
	sw $t0, -3116($fp)
	li $t0, 8
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
	li $t0, 22671
	sw $t0, -3136($fp)
	addi $t0, $fp, -2676
	sw $t0, -3140($fp)
	li $t0, 0
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
	li $t0, 13300
	sw $t0, -3160($fp)
	addi $t0, $fp, -2676
	sw $t0, -3164($fp)
	li $t0, 1
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
	li $t0, 56870
	sw $t0, -3184($fp)
	addi $t0, $fp, -2676
	sw $t0, -3188($fp)
	li $t0, 2
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
	li $t0, 18253
	sw $t0, -3208($fp)
	addi $t0, $fp, -2676
	sw $t0, -3212($fp)
	li $t0, 3
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
	li $t0, 55682
	sw $t0, -3232($fp)
	addi $t0, $fp, -2676
	sw $t0, -3236($fp)
	li $t0, 4
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
	li $t0, 5980
	sw $t0, -3256($fp)
	addi $t0, $fp, -2676
	sw $t0, -3260($fp)
	li $t0, 5
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
	li $t0, 42559
	sw $t0, -3280($fp)
	addi $t0, $fp, -2676
	sw $t0, -3284($fp)
	li $t0, 6
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
	li $t0, 17087
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
	li $t0, 50444
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	sw $t0, -3324($fp)
	li $t0, 9732
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label350
label353:
	addi $t0, $fp, -2612
	sw $t0, -3332($fp)
	li $t0, 9
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
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label352
label352:
	li $t0, 46147
	sw $t0, -3352($fp)
	addi $t0, $fp, -40
	sw $t0, -3356($fp)
	lw $t0, -404($fp)
	sw $t0, -3360($fp)
	li $t0, 4
	lw $t1, -3360($fp)
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	lw $t1, 0($t0)
	sw $t1, -3372($fp)
	lw $t0, -3352($fp)
	lw $t1, -3372($fp)
	mul $t0, $t0, $t1
	sw $t0, -3376($fp)
	li $t0, 0
	lw $t1, -3376($fp)
	sub $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
label354:
	lw $t0, -464($fp)
	sw $t0, -3384($fp)
	li $t0, 51658
	sw $t0, -3388($fp)
	li $t0, 0
	lw $t1, -3388($fp)
	sub $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3384($fp)
	lw $t1, -3392($fp)
	add $t0, $t0, $t1
	sw $t0, -3396($fp)
	li $t0, 12568
	sw $t0, -3400($fp)
	lw $t1, -3396($fp)
	lw $t2, -3400($fp)
	ble $t1, $t2, label355
	j label356
label355:
	li $t0, 0
	sw $t0, -3404($fp)
	lw $t0, -524($fp)
	sw $t0, -3408($fp)
	lw $t0, -380($fp)
	sw $t0, -3412($fp)
	lw $t0, -3408($fp)
	lw $t1, -3412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3416($fp)
	addi $sp, $sp, -4
	lw $t0, -3416($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3420($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3424($fp)
	li $t0, 21839
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label359:
	li $t0, 1
	sw $t0, -3424($fp)
label360:
	li $t0, 0
	lw $t1, -3424($fp)
	sub $t0, $t0, $t1
	sw $t0, -3432($fp)
	li $t0, 0
	lw $t1, -3432($fp)
	sub $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t1, -3420($fp)
	lw $t2, -3436($fp)
	bge $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -3404($fp)
label358:
	lw $ra, -4($fp)
	lw $v0, -3404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label354
label356:
	j label351
label350:
	li $t0, 438
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -3448($fp)
	li $t0, 62960
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	sw $t0, -3460($fp)
	addi $t0, $fp, -2676
	sw $t0, -3464($fp)
	li $t0, 0
	sw $t0, -3468($fp)
	li $t0, 34713
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -3476($fp)
	li $t0, 27540
	sw $t0, -3480($fp)
	lw $t0, -512($fp)
	sw $t0, -3484($fp)
	lw $t0, -3480($fp)
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -440($fp)
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3500($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3504($fp)
	li $t0, 4582
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label365
label366:
	li $t0, 56059
	sw $t0, -3512($fp)
	lw $t1, -3512($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -3504($fp)
label365:
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3516($fp)
	addi $sp, $sp, 16
	li $t0, 14540
	sw $t0, -3520($fp)
	addi $sp, $sp, -4
	lw $t0, -3516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3520($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3524($fp)
	addi $sp, $sp, 12
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label363:
	lw $t0, -416($fp)
	sw $t0, -3528($fp)
	lw $t0, -92($fp)
	sw $t0, -3532($fp)
	lw $t1, -3528($fp)
	lw $t2, -3532($fp)
	ble $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -3468($fp)
label362:
	li $t0, 4
	lw $t1, -3468($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, -3464($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, 0($t0)
	sw $t1, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	lw $t0, -512($fp)
	sw $t0, -3552($fp)
	lw $t0, -104($fp)
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	li $t0, 27875
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3568($fp)
	li $t0, 10164
	sw $t0, -3572($fp)
	lw $t0, -500($fp)
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3584($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3588($fp)
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 12523
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label372:
	li $t0, 1
	sw $t0, -3592($fp)
label373:
	lw $t0, -3456($fp)
	sw $t0, -3600($fp)
	lw $t1, -3592($fp)
	lw $t2, -3600($fp)
	bge $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -3588($fp)
label371:
	lw $t1, -3584($fp)
	lw $t2, -3588($fp)
	bne $t1, $t2, label369
	j label368
label369:
	li $t0, 1693
	sw $t0, -3604($fp)
	li $t0, 57182
	sw $t0, -3608($fp)
	lw $t0, -3604($fp)
	lw $t1, -3608($fp)
	add $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -860($fp)
	sw $t0, -3616($fp)
	lw $t0, -3612($fp)
	lw $t1, -3616($fp)
	sub $t0, $t0, $t1
	sw $t0, -3620($fp)
	addi $t0, $fp, -52
	sw $t0, -3624($fp)
	lw $t0, -428($fp)
	sw $t0, -3628($fp)
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
	li $t0, 0
	lw $t1, -3640($fp)
	sub $t0, $t0, $t1
	sw $t0, -3644($fp)
	li $t0, 0
	sw $t0, -3648($fp)
	li $t0, 34510
	sw $t0, -3652($fp)
	lw $t0, -476($fp)
	sw $t0, -3656($fp)
	lw $t0, -3652($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -524($fp)
	sw $t0, -3664($fp)
	lw $t0, -3660($fp)
	lw $t1, -3664($fp)
	sub $t0, $t0, $t1
	sw $t0, -3668($fp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3672($fp)
	addi $sp, $sp, 8
	li $t0, 19572
	sw $t0, -3676($fp)
	lw $t1, -3672($fp)
	lw $t2, -3676($fp)
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -3648($fp)
label375:
	addi $sp, $sp, -4
	lw $t0, -3644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3648($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3680($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3684($fp)
	lw $t0, -404($fp)
	sw $t0, -3688($fp)
	li $t0, 53245
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	add $t0, $t0, $t1
	sw $t0, -3696($fp)
	li $t0, 51338
	sw $t0, -3700($fp)
	lw $t1, -3696($fp)
	lw $t2, -3700($fp)
	bgt $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -3684($fp)
label377:
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3684($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3704($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -2648
	sw $t0, -3708($fp)
	li $t0, 1
	sw $t0, -3712($fp)
	li $t0, 4
	lw $t1, -3712($fp)
	mul $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	lw $t1, -3708($fp)
	add $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	lw $t1, 0($t0)
	sw $t1, -3724($fp)
	lw $t1, -3704($fp)
	lw $t2, -3724($fp)
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -3548($fp)
label368:
	li $t0, 0
	sw $t0, -3728($fp)
	lw $t0, -416($fp)
	sw $t0, -3732($fp)
	lw $t0, -392($fp)
	sw $t0, -3736($fp)
	lw $t0, -3732($fp)
	lw $t1, -3736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3740($fp)
	lw $t0, -824($fp)
	sw $t0, -3744($fp)
	lw $t1, -3740($fp)
	lw $t2, -3744($fp)
	blt $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -3728($fp)
label379:
	addi $sp, $sp, -4
	lw $t0, -3728($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3748($fp)
	addi $sp, $sp, 8
	lw $t0, -3748($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -3752($fp)
label351:
label380:
	addi $t0, $fp, -2648
	sw $t0, -3756($fp)
	li $t0, 0
	sw $t0, -3760($fp)
	lw $t0, -392($fp)
	sw $t0, -3764($fp)
	li $t0, 9899
	sw $t0, -3768($fp)
	lw $t1, -3764($fp)
	lw $t2, -3768($fp)
	bge $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -3760($fp)
label385:
	li $t0, 4
	lw $t1, -3760($fp)
	mul $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	lw $t1, -3756($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, 0($t0)
	sw $t1, -3780($fp)
	lw $t0, -836($fp)
	sw $t0, -3784($fp)
	lw $t1, -3780($fp)
	lw $t2, -3784($fp)
	beq $t1, $t2, label381
	j label383
label383:
	li $t0, 0
	sw $t0, -3788($fp)
	li $t0, 0
	sw $t0, -3792($fp)
	li $t0, 0
	sw $t0, -3796($fp)
	lw $t0, -3308($fp)
	sw $t0, -3800($fp)
	li $t0, 23019
	sw $t0, -3804($fp)
	lw $t1, -3800($fp)
	lw $t2, -3804($fp)
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -3796($fp)
label391:
	li $t0, 64543
	sw $t0, -3808($fp)
	lw $t1, -3796($fp)
	lw $t2, -3808($fp)
	beq $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -3792($fp)
label389:
	addi $sp, $sp, -4
	lw $t0, -3792($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3812($fp)
	addi $sp, $sp, 8
	lw $t0, -3320($fp)
	sw $t0, -3816($fp)
	lw $t1, -3812($fp)
	lw $t2, -3816($fp)
	blt $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -3788($fp)
label387:
	li $t0, 52459
	sw $t0, -3820($fp)
	lw $t0, -848($fp)
	sw $t0, -3824($fp)
	lw $t0, -3820($fp)
	lw $t1, -3824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3828($fp)
	lw $t1, -3788($fp)
	lw $t2, -3828($fp)
	bne $t1, $t2, label381
	j label382
label381:
label392:
	li $t0, 40106
	sw $t0, -3832($fp)
	lw $t0, -452($fp)
	sw $t0, -3836($fp)
	lw $t0, -3832($fp)
	lw $t1, -3836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3840($fp)
	lw $t0, -524($fp)
	sw $t0, -3844($fp)
	lw $t0, -3840($fp)
	lw $t1, -3844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3848($fp)
	lw $t1, -3848($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 49451
	sw $t0, -3852($fp)
	addi $t0, $fp, -40
	sw $t0, -3856($fp)
	li $t0, 0
	sw $t0, -3860($fp)
	li $t0, 4
	lw $t1, -3860($fp)
	mul $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	lw $t1, 0($t0)
	sw $t1, -3872($fp)
	lw $t0, -3852($fp)
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -452($fp)
	sw $t0, -3880($fp)
	jal f13
	sw $v0, -3884($fp)
	addi $sp, $sp, 4
	lw $t0, -3880($fp)
	lw $t1, -3884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3888($fp)
	li $t0, 0
	sw $t0, -3892($fp)
	li $t0, 0
	sw $t0, -3896($fp)
	lw $t0, -428($fp)
	sw $t0, -3900($fp)
	lw $t0, -428($fp)
	sw $t0, -3904($fp)
	lw $t0, -3900($fp)
	lw $t1, -3904($fp)
	sub $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t1, -3908($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label398
label399:
	li $t0, 42802
	sw $t0, -3912($fp)
	lw $t1, -3912($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -3896($fp)
label398:
	addi $sp, $sp, -4
	lw $t0, -3896($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3916($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3916($fp)
	sub $t0, $t0, $t1
	sw $t0, -3920($fp)
	li $t0, 46565
	sw $t0, -3924($fp)
	li $t0, 0
	lw $t1, -3924($fp)
	sub $t0, $t0, $t1
	sw $t0, -3928($fp)
	li $t0, 0
	lw $t1, -3928($fp)
	sub $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t1, -3920($fp)
	lw $t2, -3932($fp)
	bge $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -3892($fp)
label396:
	j label392
label394:
	j label380
label382:
	li $t0, 9648
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	sw $t0, -3944($fp)
	li $t0, 0
	sw $t0, -3948($fp)
	addi $t0, $fp, -84
	sw $t0, -3952($fp)
	li $t0, 0
	sw $t0, -3956($fp)
	lw $t0, -464($fp)
	sw $t0, -3960($fp)
	lw $t1, -3960($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label404:
	lw $t0, -440($fp)
	sw $t0, -3964($fp)
	lw $t1, -3964($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -3956($fp)
label403:
	li $t0, 4
	lw $t1, -3956($fp)
	mul $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, 0($t0)
	sw $t1, -3976($fp)
	li $t0, 47004
	sw $t0, -3980($fp)
	lw $t0, -3976($fp)
	lw $t1, -3980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3984($fp)
	li $t0, 0
	sw $t0, -3988($fp)
	li $t0, 7072
	sw $t0, -3992($fp)
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label405
label405:
	li $t0, 1
	sw $t0, -3988($fp)
label406:
	lw $t0, -500($fp)
	sw $t0, -3996($fp)
	lw $t0, -3988($fp)
	lw $t1, -3996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4000($fp)
	li $t0, 13646
	sw $t0, -4004($fp)
	li $t0, 0
	lw $t1, -4004($fp)
	sub $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -4000($fp)
	lw $t1, -4008($fp)
	add $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t1, -3984($fp)
	lw $t2, -4012($fp)
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -3948($fp)
label401:
	li $t0, 0
	sw $t0, -4016($fp)
	lw $t0, -416($fp)
	sw $t0, -4020($fp)
	li $t0, 0
	sw $t0, -4024($fp)
	li $t0, 51586
	sw $t0, -4028($fp)
	lw $t1, -4028($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label410:
	li $t0, 1
	sw $t0, -4024($fp)
label411:
	lw $t0, -4020($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	li $t0, 0
	sw $t0, -4036($fp)
	lw $t0, -92($fp)
	sw $t0, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label412:
	li $t0, 1
	sw $t0, -4036($fp)
label413:
	li $t0, 0
	lw $t1, -4036($fp)
	sub $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4032($fp)
	lw $t1, -4044($fp)
	sub $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t1, -4048($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label409:
	li $t0, 63131
	sw $t0, -4052($fp)
	li $t0, 41186
	sw $t0, -4056($fp)
	lw $t0, -3940($fp)
	sw $t0, -4060($fp)
	lw $t0, -4056($fp)
	lw $t1, -4060($fp)
	mul $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4052($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t1, -4068($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -4016($fp)
label408:
	li $t0, 0
	sw $t0, -4072($fp)
	lw $t0, -464($fp)
	sw $t0, -4076($fp)
	li $t0, 33286
	sw $t0, -4080($fp)
	lw $t1, -4076($fp)
	lw $t2, -4080($fp)
	beq $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -4072($fp)
label415:
	li $t0, 0
	sw $t0, -4084($fp)
	lw $t0, -812($fp)
	sw $t0, -4088($fp)
	lw $t1, -4088($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -4084($fp)
label417:
	li $t0, 0
	sw $t0, -4092($fp)
	lw $t0, -440($fp)
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -4092($fp)
label419:
	li $t0, 3525
	sw $t0, -4100($fp)
	li $t0, 0
	lw $t1, -4100($fp)
	sub $t0, $t0, $t1
	sw $t0, -4104($fp)
	li $t0, 0
	sw $t0, -4108($fp)
	li $t0, 0
	sw $t0, -4112($fp)
	lw $t0, -440($fp)
	sw $t0, -4116($fp)
	li $t0, 20763
	sw $t0, -4120($fp)
	lw $t1, -4116($fp)
	lw $t2, -4120($fp)
	bgt $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -4112($fp)
label423:
	li $t0, 7759
	sw $t0, -4124($fp)
	lw $t1, -4112($fp)
	lw $t2, -4124($fp)
	ble $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -4108($fp)
label421:
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4108($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4128($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 0
	sw $t0, -4136($fp)
	li $t0, 61005
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label429
label429:
	li $t0, 54863
	sw $t0, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label428
label428:
	li $t0, 2260
	sw $t0, -4148($fp)
	lw $t1, -4148($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -4136($fp)
label427:
	addi $sp, $sp, -4
	lw $t0, -4136($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4152($fp)
	addi $sp, $sp, 8
	lw $t1, -4152($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label424:
	li $t0, 1
	sw $t0, -4132($fp)
label425:
	li $t0, 0
	sw $t0, -4156($fp)
	li $t0, 0
	sw $t0, -4160($fp)
	li $t0, 0
	sw $t0, -4164($fp)
	li $t0, 15041
	sw $t0, -4168($fp)
	li $t0, 0
	lw $t1, -4168($fp)
	sub $t0, $t0, $t1
	sw $t0, -4172($fp)
	li $t0, 56556
	sw $t0, -4176($fp)
	lw $t1, -4172($fp)
	lw $t2, -4176($fp)
	bgt $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -4164($fp)
label436:
	addi $t0, $fp, -84
	sw $t0, -4180($fp)
	li $t0, 1
	sw $t0, -4184($fp)
	li $t0, 4
	lw $t1, -4184($fp)
	mul $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	lw $t1, -4180($fp)
	add $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	lw $t1, 0($t0)
	sw $t1, -4196($fp)
	lw $t1, -4164($fp)
	lw $t2, -4196($fp)
	ble $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -4160($fp)
label434:
	lw $t0, -392($fp)
	sw $t0, -4200($fp)
	lw $t0, -860($fp)
	sw $t0, -4204($fp)
	lw $t0, -4200($fp)
	lw $t1, -4204($fp)
	sub $t0, $t0, $t1
	sw $t0, -4208($fp)
	li $t0, 49583
	sw $t0, -4212($fp)
	lw $t0, -4208($fp)
	lw $t1, -4212($fp)
	sub $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t1, -4160($fp)
	lw $t2, -4216($fp)
	blt $t1, $t2, label430
	j label432
label432:
	addi $t0, $fp, -2676
	sw $t0, -4220($fp)
	li $t0, 0
	sw $t0, -4224($fp)
	li $t0, 3806
	sw $t0, -4228($fp)
	li $t0, 5396
	sw $t0, -4232($fp)
	lw $t1, -4228($fp)
	lw $t2, -4232($fp)
	bne $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -4224($fp)
label438:
	li $t0, 4
	lw $t1, -4224($fp)
	mul $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	lw $t1, 0($t0)
	sw $t1, -4244($fp)
	lw $t1, -4244($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -4156($fp)
label431:
	lw $t0, -104($fp)
	sw $t0, -4248($fp)
	lw $t0, -356($fp)
	sw $t0, -4252($fp)
	lw $t0, -4248($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	li $t0, 52920
	sw $t0, -4260($fp)
	lw $t0, -4256($fp)
	lw $t1, -4260($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	li $t0, 0
	sw $t0, -4268($fp)
	li $t0, 56265
	sw $t0, -4272($fp)
	li $t0, 45503
	sw $t0, -4276($fp)
	lw $t0, -4272($fp)
	lw $t1, -4276($fp)
	sub $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label441:
	li $t0, 32505
	sw $t0, -4284($fp)
	lw $t1, -4284($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -4268($fp)
label440:
	li $t0, 48590
	sw $t0, -4288($fp)
	addi $sp, $sp, -4
	lw $t0, -4264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4288($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4292($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -4292($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4296($fp)
	addi $sp, $sp, 8
label442:
	li $t0, 0
	sw $t0, -4300($fp)
	li $t0, 0
	sw $t0, -4304($fp)
	li $t0, 40409
	sw $t0, -4308($fp)
	lw $t1, -4308($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label448:
	li $t0, 1
	sw $t0, -4304($fp)
label449:
	lw $t0, -512($fp)
	sw $t0, -4312($fp)
	lw $t1, -4304($fp)
	lw $t2, -4312($fp)
	bne $t1, $t2, label447
	j label446
label447:
	li $t0, 29585
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -4320($fp)
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4324($fp)
	addi $sp, $sp, 8
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -4300($fp)
label446:
	lw $t0, -4300($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -4328($fp)
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 0
	sw $t0, -4332($fp)
	li $t0, 30186
	sw $t0, -4336($fp)
	li $t0, 21438
	sw $t0, -4340($fp)
	lw $t0, -4336($fp)
	lw $t1, -4340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4344($fp)
	li $t0, 0
	lw $t1, -4344($fp)
	sub $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -116($fp)
	sw $t0, -4352($fp)
	lw $t0, -392($fp)
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t1, -4348($fp)
	lw $t2, -4360($fp)
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -4332($fp)
label451:
	lw $t0, -4332($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -4364($fp)
	j label442
label444:
	j label343
label345:
label329:
label325:
	lw $t0, -608($fp)
	sw $t0, -4368($fp)
	lw $t0, -92($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4388($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -4408($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -4428($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -4448($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -4468($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -4488($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -4508($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -4528($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -4548($fp)
	li $t0, 8
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
	lw $t0, -356($fp)
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -4628($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -4648($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -4668($fp)
	li $t0, 2
	sw $t0, -4672($fp)
	li $t0, 4
	lw $t1, -4672($fp)
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, -4668($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	lw $t1, 0($t0)
	sw $t1, -4684($fp)
	lw $t0, -4684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 4
	lw $t1, -4696($fp)
	mul $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	lw $t1, -4692($fp)
	add $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	lw $t1, 0($t0)
	sw $t1, -4708($fp)
	lw $t0, -4708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4712($fp)
	li $t0, 1
	sw $t0, -4716($fp)
	li $t0, 4
	lw $t1, -4716($fp)
	mul $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	lw $t1, -4712($fp)
	add $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	lw $t1, 0($t0)
	sw $t1, -4728($fp)
	lw $t0, -4728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4732($fp)
	li $t0, 2
	sw $t0, -4736($fp)
	li $t0, 4
	lw $t1, -4736($fp)
	mul $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	lw $t1, -4732($fp)
	add $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	lw $t1, 0($t0)
	sw $t1, -4748($fp)
	lw $t0, -4748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4752($fp)
	li $t0, 3
	sw $t0, -4756($fp)
	li $t0, 4
	lw $t1, -4756($fp)
	mul $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	lw $t1, -4752($fp)
	add $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	lw $t1, 0($t0)
	sw $t1, -4768($fp)
	lw $t0, -4768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4772($fp)
	li $t0, 4
	sw $t0, -4776($fp)
	li $t0, 4
	lw $t1, -4776($fp)
	mul $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, -4772($fp)
	add $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	lw $t1, 0($t0)
	sw $t1, -4788($fp)
	lw $t0, -4788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4792($fp)
	li $t0, 5
	sw $t0, -4796($fp)
	li $t0, 4
	lw $t1, -4796($fp)
	mul $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	lw $t1, -4792($fp)
	add $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	lw $t1, 0($t0)
	sw $t1, -4808($fp)
	lw $t0, -4808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4812($fp)
	li $t0, 6
	sw $t0, -4816($fp)
	li $t0, 4
	lw $t1, -4816($fp)
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, 0($t0)
	sw $t1, -4828($fp)
	lw $t0, -4828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4832($fp)
	li $t0, 7
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
	lw $t0, -4848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4872($fp)
	li $t0, 39233
	sw $t0, -4876($fp)
	lw $t1, -4876($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label452:
	li $t0, 1
	sw $t0, -4872($fp)
label453:
	lw $ra, -4($fp)
	lw $v0, -4872($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3572
	li $t0, 29292
	sw $t0, -48($fp)
	addi $t0, $fp, -16
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
	li $t0, 2906
	sw $t0, -72($fp)
	addi $t0, $fp, -16
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
	li $t0, 46305
	sw $t0, -96($fp)
	addi $t0, $fp, -16
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
	li $t0, 42939
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 54492
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 43900
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 18589
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 9719
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 51660
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 22115
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 43005
	sw $t0, -204($fp)
	addi $t0, $fp, -20
	sw $t0, -208($fp)
	li $t0, 0
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
	li $t0, 47129
	sw $t0, -228($fp)
	addi $t0, $fp, -44
	sw $t0, -232($fp)
	li $t0, 0
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
	li $t0, 11442
	sw $t0, -252($fp)
	addi $t0, $fp, -44
	sw $t0, -256($fp)
	li $t0, 1
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
	li $t0, 45265
	sw $t0, -276($fp)
	addi $t0, $fp, -44
	sw $t0, -280($fp)
	li $t0, 2
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
	li $t0, 62170
	sw $t0, -300($fp)
	addi $t0, $fp, -44
	sw $t0, -304($fp)
	li $t0, 3
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
	li $t0, 2463
	sw $t0, -324($fp)
	addi $t0, $fp, -44
	sw $t0, -328($fp)
	li $t0, 4
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
	li $t0, 39172
	sw $t0, -348($fp)
	addi $t0, $fp, -44
	sw $t0, -352($fp)
	li $t0, 5
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
	li $t0, 44547
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 52046
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 42978
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
label454:
	li $t0, 29911
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	lw $t0, -184($fp)
	sw $t0, -416($fp)
	li $t0, 0
	lw $t1, -416($fp)
	sub $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label459
label459:
	li $t0, 33707
	sw $t0, -424($fp)
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -412($fp)
label458:
	li $t0, 0
	sw $t0, -428($fp)
	li $t0, 0
	sw $t0, -432($fp)
	li $t0, 49944
	sw $t0, -436($fp)
	li $t0, 35101
	sw $t0, -440($fp)
	lw $t1, -436($fp)
	lw $t2, -440($fp)
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -432($fp)
label463:
	lw $t0, -148($fp)
	sw $t0, -444($fp)
	lw $t1, -432($fp)
	lw $t2, -444($fp)
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -428($fp)
label461:
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -448($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -448($fp)
	sub $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 0
	sw $t0, -456($fp)
	lw $t0, -136($fp)
	sw $t0, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label464
label464:
	li $t0, 1
	sw $t0, -456($fp)
label465:
	li $t0, 0
	lw $t1, -456($fp)
	sub $t0, $t0, $t1
	sw $t0, -464($fp)
	li $t0, 0
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $ra, -4($fp)
	lw $v0, -468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label454
label456:
	li $t0, 2070
	sw $t0, -472($fp)
	lw $t0, -148($fp)
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	li $t0, 0
	sw $t0, -488($fp)
	lw $t0, -160($fp)
	sw $t0, -492($fp)
	li $t0, 31656
	sw $t0, -496($fp)
	lw $t1, -492($fp)
	lw $t2, -496($fp)
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -488($fp)
label469:
	li $t0, 51277
	sw $t0, -500($fp)
	lw $t1, -488($fp)
	lw $t2, -500($fp)
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -484($fp)
label467:
	lw $t0, -376($fp)
	sw $t0, -504($fp)
	li $t0, 21091
	sw $t0, -508($fp)
	li $t0, 4784
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -516($fp)
	addi $sp, $sp, -4
	lw $t0, -484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -516($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -520($fp)
	addi $sp, $sp, 16
	lw $t0, -480($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -524($fp)
	li $t0, 26223
	sw $t0, -616($fp)
	addi $t0, $fp, -552
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
	li $t0, 5353
	sw $t0, -640($fp)
	addi $t0, $fp, -552
	sw $t0, -644($fp)
	li $t0, 1
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
	li $t0, 15034
	sw $t0, -664($fp)
	addi $t0, $fp, -552
	sw $t0, -668($fp)
	li $t0, 2
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
	li $t0, 29129
	sw $t0, -688($fp)
	addi $t0, $fp, -552
	sw $t0, -692($fp)
	li $t0, 3
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
	li $t0, 51659
	sw $t0, -712($fp)
	addi $t0, $fp, -552
	sw $t0, -716($fp)
	li $t0, 4
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
	li $t0, 57973
	sw $t0, -736($fp)
	addi $t0, $fp, -552
	sw $t0, -740($fp)
	li $t0, 5
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
	li $t0, 18085
	sw $t0, -760($fp)
	addi $t0, $fp, -552
	sw $t0, -764($fp)
	li $t0, 6
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
	li $t0, 30023
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 11026
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 27804
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 16147
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 33141
	sw $t0, -832($fp)
	addi $t0, $fp, -584
	sw $t0, -836($fp)
	li $t0, 0
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -836($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -832($fp)
	lw $t1, -848($fp)
	sw $t0, 0($t1)
	lw $t0, -848($fp)
	lw $t1, 0($t0)
	sw $t1, -852($fp)
	li $t0, 5273
	sw $t0, -856($fp)
	addi $t0, $fp, -584
	sw $t0, -860($fp)
	li $t0, 1
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -860($fp)
	lw $t1, -868($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -856($fp)
	lw $t1, -872($fp)
	sw $t0, 0($t1)
	lw $t0, -872($fp)
	lw $t1, 0($t0)
	sw $t1, -876($fp)
	li $t0, 63276
	sw $t0, -880($fp)
	addi $t0, $fp, -584
	sw $t0, -884($fp)
	li $t0, 2
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
	li $t0, 44584
	sw $t0, -904($fp)
	addi $t0, $fp, -584
	sw $t0, -908($fp)
	li $t0, 3
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
	li $t0, 50538
	sw $t0, -928($fp)
	addi $t0, $fp, -584
	sw $t0, -932($fp)
	li $t0, 4
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
	li $t0, 59910
	sw $t0, -952($fp)
	addi $t0, $fp, -584
	sw $t0, -956($fp)
	li $t0, 5
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
	li $t0, 47047
	sw $t0, -976($fp)
	addi $t0, $fp, -584
	sw $t0, -980($fp)
	li $t0, 6
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
	li $t0, 24174
	sw $t0, -1000($fp)
	addi $t0, $fp, -584
	sw $t0, -1004($fp)
	li $t0, 7
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
	li $t0, 38922
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 33557
	sw $t0, -1036($fp)
	addi $t0, $fp, -604
	sw $t0, -1040($fp)
	li $t0, 0
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1040($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1036($fp)
	lw $t1, -1052($fp)
	sw $t0, 0($t1)
	lw $t0, -1052($fp)
	lw $t1, 0($t0)
	sw $t1, -1056($fp)
	li $t0, 1616
	sw $t0, -1060($fp)
	addi $t0, $fp, -604
	sw $t0, -1064($fp)
	li $t0, 1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1064($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1060($fp)
	lw $t1, -1076($fp)
	sw $t0, 0($t1)
	lw $t0, -1076($fp)
	lw $t1, 0($t0)
	sw $t1, -1080($fp)
	li $t0, 23330
	sw $t0, -1084($fp)
	addi $t0, $fp, -604
	sw $t0, -1088($fp)
	li $t0, 2
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1088($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1084($fp)
	lw $t1, -1100($fp)
	sw $t0, 0($t1)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	li $t0, 3122
	sw $t0, -1108($fp)
	addi $t0, $fp, -604
	sw $t0, -1112($fp)
	li $t0, 3
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1112($fp)
	lw $t1, -1120($fp)
	add $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1108($fp)
	lw $t1, -1124($fp)
	sw $t0, 0($t1)
	lw $t0, -1124($fp)
	lw $t1, 0($t0)
	sw $t1, -1128($fp)
	li $t0, 35323
	sw $t0, -1132($fp)
	addi $t0, $fp, -604
	sw $t0, -1136($fp)
	li $t0, 4
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
	li $t0, 53241
	sw $t0, -1156($fp)
	addi $t0, $fp, -612
	sw $t0, -1160($fp)
	li $t0, 0
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
	li $t0, 5193
	sw $t0, -1180($fp)
	addi $t0, $fp, -612
	sw $t0, -1184($fp)
	li $t0, 1
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
	li $t0, 56414
	sw $t0, -1236($fp)
	addi $t0, $fp, -1232
	sw $t0, -1240($fp)
	li $t0, 0
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
	li $t0, 58025
	sw $t0, -1260($fp)
	addi $t0, $fp, -1232
	sw $t0, -1264($fp)
	li $t0, 1
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
	li $t0, 36849
	sw $t0, -1284($fp)
	addi $t0, $fp, -1232
	sw $t0, -1288($fp)
	li $t0, 2
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1288($fp)
	lw $t1, -1296($fp)
	add $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1284($fp)
	lw $t1, -1300($fp)
	sw $t0, 0($t1)
	lw $t0, -1300($fp)
	lw $t1, 0($t0)
	sw $t1, -1304($fp)
	li $t0, 42156
	sw $t0, -1308($fp)
	addi $t0, $fp, -1232
	sw $t0, -1312($fp)
	li $t0, 3
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1312($fp)
	lw $t1, -1320($fp)
	add $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1308($fp)
	lw $t1, -1324($fp)
	sw $t0, 0($t1)
	lw $t0, -1324($fp)
	lw $t1, 0($t0)
	sw $t1, -1328($fp)
	li $t0, 18712
	sw $t0, -1332($fp)
	addi $t0, $fp, -1232
	sw $t0, -1336($fp)
	li $t0, 4
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
	li $t0, 42202
	sw $t0, -1356($fp)
	addi $t0, $fp, -1232
	sw $t0, -1360($fp)
	li $t0, 5
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
	li $t0, 57190
	sw $t0, -1380($fp)
	addi $t0, $fp, -1232
	sw $t0, -1384($fp)
	li $t0, 6
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
	li $t0, 47841
	sw $t0, -1404($fp)
	addi $t0, $fp, -1232
	sw $t0, -1408($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -1428($fp)
	li $t0, 28325
	sw $t0, -1432($fp)
	lw $t0, -160($fp)
	sw $t0, -1436($fp)
	lw $t0, -1432($fp)
	lw $t1, -1436($fp)
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	addi $t0, $fp, -1232
	sw $t0, -1444($fp)
	lw $t0, -124($fp)
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
	lw $t0, -400($fp)
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1468($fp)
	lw $t1, -1440($fp)
	lw $t2, -1468($fp)
	blt $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -1428($fp)
label471:
	li $t0, 0
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	jal f13
	sw $v0, -1480($fp)
	addi $sp, $sp, 4
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label474
label474:
	li $t0, 1
	sw $t0, -1476($fp)
label475:
	addi $t0, $fp, -20
	sw $t0, -1484($fp)
	lw $t0, -160($fp)
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
	lw $t0, -1476($fp)
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 49627
	sw $t0, -1516($fp)
	li $t0, 390
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	sub $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, 8($fp)
	sw $t0, -1528($fp)
	lw $t1, -1524($fp)
	lw $t2, -1528($fp)
	ble $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -1512($fp)
label479:
	lw $t0, -148($fp)
	sw $t0, -1532($fp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1536($fp)
	addi $sp, $sp, 8
	lw $t1, -1512($fp)
	lw $t2, -1536($fp)
	bgt $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -1508($fp)
label477:
	lw $t1, -1504($fp)
	lw $t2, -1508($fp)
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -1472($fp)
label473:
	lw $t0, -124($fp)
	sw $t0, -1540($fp)
	li $t0, 58349
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1548($fp)
	addi $t0, $fp, -552
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
	addi $t0, $fp, -552
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
	addi $t0, $fp, -552
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
	addi $t0, $fp, -552
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
	addi $t0, $fp, -552
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
	addi $t0, $fp, -552
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
	addi $t0, $fp, -552
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
	lw $t0, -788($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -1708($fp)
	li $t0, 0
	sw $t0, -1712($fp)
	li $t0, 4
	lw $t1, -1712($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
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
	lw $t0, -1744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -1748($fp)
	li $t0, 2
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
	addi $t0, $fp, -584
	sw $t0, -1768($fp)
	li $t0, 3
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
	addi $t0, $fp, -584
	sw $t0, -1788($fp)
	li $t0, 4
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
	addi $t0, $fp, -584
	sw $t0, -1808($fp)
	li $t0, 5
	sw $t0, -1812($fp)
	li $t0, 4
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, 0($t0)
	sw $t1, -1824($fp)
	lw $t0, -1824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -1828($fp)
	li $t0, 6
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
	lw $t0, -1844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -1848($fp)
	li $t0, 7
	sw $t0, -1852($fp)
	li $t0, 4
	lw $t1, -1852($fp)
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, 0($t0)
	sw $t1, -1864($fp)
	lw $t0, -1864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -604
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
	lw $t0, -1888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -604
	sw $t0, -1892($fp)
	li $t0, 1
	sw $t0, -1896($fp)
	li $t0, 4
	lw $t1, -1896($fp)
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, -1892($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	lw $t1, 0($t0)
	sw $t1, -1908($fp)
	lw $t0, -1908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -604
	sw $t0, -1912($fp)
	li $t0, 2
	sw $t0, -1916($fp)
	li $t0, 4
	lw $t1, -1916($fp)
	mul $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	lw $t1, 0($t0)
	sw $t1, -1928($fp)
	lw $t0, -1928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -604
	sw $t0, -1932($fp)
	li $t0, 3
	sw $t0, -1936($fp)
	li $t0, 4
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, -1932($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	lw $t1, 0($t0)
	sw $t1, -1948($fp)
	lw $t0, -1948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -604
	sw $t0, -1952($fp)
	li $t0, 4
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
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -612
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
	lw $t0, -1988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -612
	sw $t0, -1992($fp)
	li $t0, 1
	sw $t0, -1996($fp)
	li $t0, 4
	lw $t1, -1996($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	lw $t1, -1992($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	lw $t0, -812($fp)
	sw $t0, -2020($fp)
	li $t0, 0
	lw $t1, -2020($fp)
	sub $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -400($fp)
	sw $t0, -2028($fp)
	lw $t1, -2024($fp)
	lw $t2, -2028($fp)
	beq $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -2016($fp)
label483:
	li $t0, 0
	sw $t0, -2032($fp)
	li $t0, 28194
	sw $t0, -2036($fp)
	lw $t0, -1028($fp)
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label486:
	lw $t0, -376($fp)
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -2032($fp)
label485:
	li $t0, 0
	sw $t0, -2052($fp)
	li $t0, 60653
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label488
label490:
	lw $t0, -136($fp)
	sw $t0, -2060($fp)
	lw $t1, -2060($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label489:
	lw $t0, -124($fp)
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -2052($fp)
label488:
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2068($fp)
	addi $sp, $sp, 16
	li $t0, 8960
	sw $t0, -2072($fp)
	lw $t1, -2068($fp)
	lw $t2, -2072($fp)
	bgt $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -2012($fp)
label481:
	lw $ra, -4($fp)
	lw $v0, -2012($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label491:
	li $t0, 0
	sw $t0, -2076($fp)
	li $t0, 28259
	sw $t0, -2080($fp)
	li $t0, 0
	sw $t0, -2084($fp)
	lw $t0, -400($fp)
	sw $t0, -2088($fp)
	lw $t1, -2088($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label496
label496:
	li $t0, 1
	sw $t0, -2084($fp)
label497:
	li $t0, 33467
	sw $t0, -2092($fp)
	lw $t0, -2084($fp)
	lw $t1, -2092($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t1, -2080($fp)
	lw $t2, -2096($fp)
	bge $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -2076($fp)
label495:
	li $t0, 0
	sw $t0, -2100($fp)
	addi $t0, $fp, -604
	sw $t0, -2104($fp)
	li $t0, 2
	sw $t0, -2108($fp)
	li $t0, 4
	lw $t1, -2108($fp)
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, -2104($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	li $t0, 0
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label498
label498:
	li $t0, 1
	sw $t0, -2100($fp)
label499:
	lw $t1, -2076($fp)
	lw $t2, -2100($fp)
	bge $t1, $t2, label492
	j label493
label492:
	li $t0, 0
	sw $t0, -2128($fp)
	lw $t0, -388($fp)
	sw $t0, -2132($fp)
	li $t0, 18470
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	sub $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label502
label503:
	li $t0, 1075
	sw $t0, -2144($fp)
	li $t0, 0
	lw $t1, -2144($fp)
	sub $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label500
label502:
	li $t0, 0
	sw $t0, -2152($fp)
	li $t0, 42644
	sw $t0, -2156($fp)
	lw $t0, 8($fp)
	sw $t0, -2160($fp)
	lw $t1, -2156($fp)
	lw $t2, -2160($fp)
	beq $t1, $t2, label504
	j label506
label506:
	lw $t0, -124($fp)
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -2152($fp)
label505:
	lw $t0, -788($fp)
	sw $t0, -2168($fp)
	li $t0, 54354
	sw $t0, -2172($fp)
	lw $t0, -2168($fp)
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -1028($fp)
	sw $t0, -2180($fp)
	lw $t0, -2176($fp)
	lw $t1, -2180($fp)
	add $t0, $t0, $t1
	sw $t0, -2184($fp)
	addi $sp, $sp, -4
	lw $t0, -2152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -2188($fp)
	addi $sp, $sp, 12
	li $t0, 39997
	sw $t0, -2192($fp)
	lw $t0, -2188($fp)
	lw $t1, -2192($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -148($fp)
	sw $t0, -2200($fp)
	lw $t1, -2196($fp)
	lw $t2, -2200($fp)
	beq $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -2128($fp)
label501:
	j label491
label493:
	li $t0, 22375
	sw $t0, -2204($fp)
	addi $t0, $fp, -20
	sw $t0, -2208($fp)
	lw $t0, 8($fp)
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
	li $t0, 44261
	sw $t0, -2228($fp)
	li $t0, 0
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2224($fp)
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	li $t0, 0
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2204($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t1, -2244($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 0
	sw $t0, -2248($fp)
	li $t0, 0
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	addi $t0, $fp, -44
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	li $t0, 4
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	lw $t1, 0($t0)
	sw $t1, -2276($fp)
	li $t0, 0
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	li $t0, 51032
	sw $t0, -2284($fp)
	li $t0, 30691
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -148($fp)
	sw $t0, -2296($fp)
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2300($fp)
	li $t0, 25498
	sw $t0, -2304($fp)
	li $t0, 14048
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -788($fp)
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	lw $t0, -172($fp)
	sw $t0, -2328($fp)
	li $t0, 63327
	sw $t0, -2332($fp)
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	sub $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -800($fp)
	sw $t0, -2340($fp)
	lw $t1, -2336($fp)
	lw $t2, -2340($fp)
	blt $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -2324($fp)
label517:
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -2344($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2348($fp)
	addi $sp, $sp, 16
	lw $t1, -2348($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label514:
	li $t0, 1
	sw $t0, -2256($fp)
label515:
	li $t0, 47083
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -2356($fp)
	li $t0, 0
	sw $t0, -2360($fp)
	addi $t0, $fp, -584
	sw $t0, -2364($fp)
	lw $t0, -824($fp)
	sw $t0, -2368($fp)
	li $t0, 4
	lw $t1, -2368($fp)
	mul $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	lw $t1, 0($t0)
	sw $t1, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label518
label518:
	li $t0, 1
	sw $t0, -2360($fp)
label519:
	li $t0, 0
	sw $t0, -2384($fp)
	li $t0, 2004
	sw $t0, -2388($fp)
	lw $t0, -124($fp)
	sw $t0, -2392($fp)
	lw $t1, -2388($fp)
	lw $t2, -2392($fp)
	bge $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -2384($fp)
label521:
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2396($fp)
	addi $sp, $sp, 16
	li $t0, 62234
	sw $t0, -2400($fp)
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2404($fp)
	lw $t1, -2256($fp)
	lw $t2, -2404($fp)
	blt $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -2252($fp)
label513:
	lw $t0, -800($fp)
	sw $t0, -2408($fp)
	lw $t1, -2252($fp)
	lw $t2, -2408($fp)
	beq $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -2248($fp)
label511:
	lw $ra, -4($fp)
	lw $v0, -2248($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label508:
	lw $t0, -172($fp)
	sw $t0, -2412($fp)
	lw $t1, -2412($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label525
label525:
	addi $t0, $fp, -20
	sw $t0, -2416($fp)
	lw $t0, -124($fp)
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
	addi $t0, $fp, -612
	sw $t0, -2436($fp)
	lw $t0, -136($fp)
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
	lw $t1, -2432($fp)
	lw $t2, -2452($fp)
	beq $t1, $t2, label522
	j label523
label522:
	li $t0, 44206
	sw $t0, -2456($fp)
	li $t0, 0
	sw $t0, -2460($fp)
	li $t0, 44540
	sw $t0, -2464($fp)
	addi $t0, $fp, -552
	sw $t0, -2468($fp)
	lw $t0, -376($fp)
	sw $t0, -2472($fp)
	li $t0, 4
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, 0($t0)
	sw $t1, -2484($fp)
	lw $t0, -148($fp)
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	sub $t0, $t0, $t1
	sw $t0, -2492($fp)
	li $t0, 38737
	sw $t0, -2496($fp)
	li $t0, 0
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	li $t0, 0
	lw $t1, -2500($fp)
	sub $t0, $t0, $t1
	sw $t0, -2504($fp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -2508($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -612
	sw $t0, -2512($fp)
	lw $t0, -800($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2532($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label526
label526:
	li $t0, 1
	sw $t0, -2460($fp)
label527:
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	j label524
label523:
	li $t0, 0
	sw $t0, -2544($fp)
	addi $t0, $fp, -612
	sw $t0, -2548($fp)
	lw $t0, -160($fp)
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
	li $t0, 6996
	sw $t0, -2568($fp)
	lw $t0, -2564($fp)
	lw $t1, -2568($fp)
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	li $t0, 0
	sw $t0, -2576($fp)
	li $t0, 22828
	sw $t0, -2580($fp)
	li $t0, 0
	lw $t1, -2580($fp)
	sub $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, 4($fp)
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	addi $sp, $sp, -4
	lw $t0, -2592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2596($fp)
	addi $sp, $sp, 8
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label531
label531:
	li $t0, 1
	sw $t0, -2576($fp)
label532:
	lw $t1, -2572($fp)
	lw $t2, -2576($fp)
	beq $t1, $t2, label530
	j label529
label530:
	li $t0, 0
	sw $t0, -2600($fp)
	lw $t0, -160($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -2608($fp)
	li $t0, 44930
	sw $t0, -2612($fp)
	li $t0, 1
	sw $t0, -2616($fp)
	lw $t0, -2612($fp)
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	li $t0, 0
	lw $t1, -2620($fp)
	sub $t0, $t0, $t1
	sw $t0, -2624($fp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2624($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -2628($fp)
	addi $sp, $sp, 12
	li $t0, 17945
	sw $t0, -2632($fp)
	lw $t1, -2628($fp)
	lw $t2, -2632($fp)
	blt $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -2600($fp)
label534:
	lw $t0, -124($fp)
	sw $t0, -2636($fp)
	lw $t1, -2600($fp)
	lw $t2, -2636($fp)
	bne $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -2544($fp)
label529:
label524:
	addi $t0, $fp, -16
	sw $t0, -2640($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -2660($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -2680($fp)
	li $t0, 2
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
	lw $t0, -124($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2728($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -2748($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -2768($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -2788($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -2808($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -2828($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -2848($fp)
	li $t0, 5
	sw $t0, -2852($fp)
	li $t0, 4
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2880($fp)
	li $t0, 7589
	sw $t0, -2884($fp)
	lw $t1, -2884($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label535
label535:
	li $t0, 1
	sw $t0, -2880($fp)
label536:
	lw $t0, -196($fp)
	sw $t0, -2888($fp)
	lw $t0, -2880($fp)
	lw $t1, -2888($fp)
	sub $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -172($fp)
	sw $t0, -2896($fp)
	lw $t0, -400($fp)
	sw $t0, -2900($fp)
	lw $t0, -2896($fp)
	lw $t1, -2900($fp)
	mul $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2892($fp)
	lw $t1, -2904($fp)
	sub $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -2912($fp)
	lw $ra, -4($fp)
	lw $v0, -2912($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -16
	sw $t0, -2916($fp)
	li $t0, 0
	sw $t0, -2920($fp)
	li $t0, 4
	lw $t1, -2920($fp)
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	lw $t1, -2916($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2936($fp)
	li $t0, 1
	sw $t0, -2940($fp)
	li $t0, 4
	lw $t1, -2940($fp)
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	lw $t1, 0($t0)
	sw $t1, -2952($fp)
	lw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2956($fp)
	li $t0, 2
	sw $t0, -2960($fp)
	li $t0, 4
	lw $t1, -2960($fp)
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	lw $t1, -2956($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	lw $t1, 0($t0)
	sw $t1, -2972($fp)
	lw $t0, -2972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3004($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -3024($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -3044($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -3064($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -3084($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -3104($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -3124($fp)
	li $t0, 5
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
	lw $t0, -376($fp)
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3156($fp)
	lw $t0, -136($fp)
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
	li $t0, 1
	sw $t0, -3156($fp)
label538:
	li $t0, 0
	sw $t0, -3164($fp)
	lw $t0, -124($fp)
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label539:
	li $t0, 1
	sw $t0, -3164($fp)
label540:
	lw $t0, -3156($fp)
	lw $t1, -3164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3172($fp)
	lw $t0, -3172($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -3176($fp)
	lw $ra, -4($fp)
	lw $v0, -3176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -20
	sw $t0, -3180($fp)
	lw $t0, -160($fp)
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
	addi $t0, $fp, -16
	sw $t0, -3200($fp)
	lw $t0, -136($fp)
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
	lw $t0, -3196($fp)
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -136($fp)
	sw $t0, -3224($fp)
	lw $t0, -3220($fp)
	lw $t1, -3224($fp)
	sub $t0, $t0, $t1
	sw $t0, -3228($fp)
	li $t0, 0
	sw $t0, -3232($fp)
	li $t0, 8769
	sw $t0, -3236($fp)
	li $t0, 0
	lw $t1, -3236($fp)
	sub $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 1
	sw $t0, -3232($fp)
label545:
	li $t0, 46204
	sw $t0, -3244($fp)
	lw $t0, -3232($fp)
	lw $t1, -3244($fp)
	sub $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t1, -3228($fp)
	lw $t2, -3248($fp)
	blt $t1, $t2, label541
	j label542
label541:
	li $t0, 0
	sw $t0, -3252($fp)
	lw $t0, -148($fp)
	sw $t0, -3256($fp)
	lw $t1, -3256($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label546
label546:
	li $t0, 1
	sw $t0, -3252($fp)
label547:
	li $t0, 41056
	sw $t0, -3260($fp)
	lw $t0, -3252($fp)
	lw $t1, -3260($fp)
	mul $t0, $t0, $t1
	sw $t0, -3264($fp)
	li $t0, 0
	lw $t1, -3264($fp)
	sub $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -3272($fp)
	lw $ra, -4($fp)
	lw $v0, -3272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label542:
	addi $t0, $fp, -16
	sw $t0, -3276($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -3296($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -3316($fp)
	li $t0, 2
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
	lw $t0, -124($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
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
	addi $t0, $fp, -44
	sw $t0, -3384($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -3404($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -3424($fp)
	li $t0, 2
	sw $t0, -3428($fp)
	li $t0, 4
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	lw $t0, -3440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3444($fp)
	li $t0, 3
	sw $t0, -3448($fp)
	li $t0, 4
	lw $t1, -3448($fp)
	mul $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	lw $t1, -3444($fp)
	add $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	lw $t1, 0($t0)
	sw $t1, -3460($fp)
	lw $t0, -3460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3464($fp)
	li $t0, 4
	sw $t0, -3468($fp)
	li $t0, 4
	lw $t1, -3468($fp)
	mul $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	lw $t1, -3464($fp)
	add $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	lw $t1, 0($t0)
	sw $t1, -3480($fp)
	lw $t0, -3480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3484($fp)
	li $t0, 5
	sw $t0, -3488($fp)
	li $t0, 4
	lw $t1, -3488($fp)
	mul $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	lw $t1, -3484($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	lw $t1, 0($t0)
	sw $t1, -3500($fp)
	lw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3516($fp)
	addi $t0, $fp, -44
	sw $t0, -3520($fp)
	li $t0, 0
	sw $t0, -3524($fp)
	li $t0, 15470
	sw $t0, -3528($fp)
	li $t0, 53511
	sw $t0, -3532($fp)
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	sub $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t1, -3536($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label553:
	li $t0, 59526
	sw $t0, -3540($fp)
	lw $t1, -3540($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -3524($fp)
label552:
	li $t0, 4
	lw $t1, -3524($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, 0($t0)
	sw $t1, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label550:
	addi $t0, $fp, -44
	sw $t0, -3556($fp)
	lw $t0, -388($fp)
	sw $t0, -3560($fp)
	li $t0, 0
	lw $t1, -3560($fp)
	sub $t0, $t0, $t1
	sw $t0, -3564($fp)
	li $t0, 4
	lw $t1, -3564($fp)
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	lw $t1, 0($t0)
	sw $t1, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -3516($fp)
label549:
	lw $ra, -4($fp)
	lw $v0, -3516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5100
	li $t0, 16546
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 42329
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 36635
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 56543
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 64705
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 15360
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 54335
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 24667
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 29408
	sw $t0, -228($fp)
	addi $t0, $fp, -16
	sw $t0, -232($fp)
	li $t0, 0
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
	li $t0, 39831
	sw $t0, -252($fp)
	addi $t0, $fp, -16
	sw $t0, -256($fp)
	li $t0, 1
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
	li $t0, 55358
	sw $t0, -276($fp)
	addi $t0, $fp, -16
	sw $t0, -280($fp)
	li $t0, 2
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
	li $t0, 34335
	sw $t0, -300($fp)
	addi $t0, $fp, -48
	sw $t0, -304($fp)
	li $t0, 0
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
	li $t0, 17817
	sw $t0, -324($fp)
	addi $t0, $fp, -48
	sw $t0, -328($fp)
	li $t0, 1
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
	li $t0, 57362
	sw $t0, -348($fp)
	addi $t0, $fp, -48
	sw $t0, -352($fp)
	li $t0, 2
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
	li $t0, 15882
	sw $t0, -372($fp)
	addi $t0, $fp, -48
	sw $t0, -376($fp)
	li $t0, 3
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
	li $t0, 14516
	sw $t0, -396($fp)
	addi $t0, $fp, -48
	sw $t0, -400($fp)
	li $t0, 4
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
	li $t0, 36032
	sw $t0, -420($fp)
	addi $t0, $fp, -48
	sw $t0, -424($fp)
	li $t0, 5
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
	li $t0, 54619
	sw $t0, -444($fp)
	addi $t0, $fp, -48
	sw $t0, -448($fp)
	li $t0, 6
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
	li $t0, 59056
	sw $t0, -468($fp)
	addi $t0, $fp, -48
	sw $t0, -472($fp)
	li $t0, 7
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -472($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -468($fp)
	lw $t1, -484($fp)
	sw $t0, 0($t1)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	li $t0, 43028
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 11911
	sw $t0, -504($fp)
	addi $t0, $fp, -80
	sw $t0, -508($fp)
	li $t0, 0
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
	li $t0, 38450
	sw $t0, -528($fp)
	addi $t0, $fp, -80
	sw $t0, -532($fp)
	li $t0, 1
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
	li $t0, 42837
	sw $t0, -552($fp)
	addi $t0, $fp, -80
	sw $t0, -556($fp)
	li $t0, 2
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
	li $t0, 29857
	sw $t0, -576($fp)
	addi $t0, $fp, -80
	sw $t0, -580($fp)
	li $t0, 3
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
	li $t0, 46039
	sw $t0, -600($fp)
	addi $t0, $fp, -80
	sw $t0, -604($fp)
	li $t0, 4
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
	li $t0, 51607
	sw $t0, -624($fp)
	addi $t0, $fp, -80
	sw $t0, -628($fp)
	li $t0, 5
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
	li $t0, 10525
	sw $t0, -648($fp)
	addi $t0, $fp, -80
	sw $t0, -652($fp)
	li $t0, 6
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
	li $t0, 21560
	sw $t0, -672($fp)
	addi $t0, $fp, -80
	sw $t0, -676($fp)
	li $t0, 7
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
	li $t0, 1541
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 64037
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 15550
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 18087
	sw $t0, -732($fp)
	addi $t0, $fp, -112
	sw $t0, -736($fp)
	li $t0, 0
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
	li $t0, 40830
	sw $t0, -756($fp)
	addi $t0, $fp, -112
	sw $t0, -760($fp)
	li $t0, 1
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
	li $t0, 52185
	sw $t0, -780($fp)
	addi $t0, $fp, -112
	sw $t0, -784($fp)
	li $t0, 2
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
	li $t0, 9095
	sw $t0, -804($fp)
	addi $t0, $fp, -112
	sw $t0, -808($fp)
	li $t0, 3
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
	li $t0, 39999
	sw $t0, -828($fp)
	addi $t0, $fp, -112
	sw $t0, -832($fp)
	li $t0, 4
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
	li $t0, 2009
	sw $t0, -852($fp)
	addi $t0, $fp, -112
	sw $t0, -856($fp)
	li $t0, 5
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
	li $t0, 63430
	sw $t0, -876($fp)
	addi $t0, $fp, -112
	sw $t0, -880($fp)
	li $t0, 6
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
	li $t0, 64666
	sw $t0, -900($fp)
	addi $t0, $fp, -112
	sw $t0, -904($fp)
	li $t0, 7
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -904($fp)
	lw $t1, -912($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -900($fp)
	lw $t1, -916($fp)
	sw $t0, 0($t1)
	lw $t0, -916($fp)
	lw $t1, 0($t0)
	sw $t1, -920($fp)
	li $t0, 31418
	sw $t0, -924($fp)
	addi $t0, $fp, -128
	sw $t0, -928($fp)
	li $t0, 0
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -928($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -924($fp)
	lw $t1, -940($fp)
	sw $t0, 0($t1)
	lw $t0, -940($fp)
	lw $t1, 0($t0)
	sw $t1, -944($fp)
	li $t0, 37725
	sw $t0, -948($fp)
	addi $t0, $fp, -128
	sw $t0, -952($fp)
	li $t0, 1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -952($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -948($fp)
	lw $t1, -964($fp)
	sw $t0, 0($t1)
	lw $t0, -964($fp)
	lw $t1, 0($t0)
	sw $t1, -968($fp)
	li $t0, 54488
	sw $t0, -972($fp)
	addi $t0, $fp, -128
	sw $t0, -976($fp)
	li $t0, 2
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
	li $t0, 217
	sw $t0, -996($fp)
	addi $t0, $fp, -128
	sw $t0, -1000($fp)
	li $t0, 3
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1000($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -996($fp)
	lw $t1, -1012($fp)
	sw $t0, 0($t1)
	lw $t0, -1012($fp)
	lw $t1, 0($t0)
	sw $t1, -1016($fp)
	li $t0, 55543
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	addi $t0, $fp, -48
	sw $t0, -1032($fp)
	lw $t0, -700($fp)
	sw $t0, -1036($fp)
	li $t0, 4
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, 0($t0)
	sw $t1, -1048($fp)
	li $t0, 46314
	sw $t0, -1052($fp)
	lw $t1, -1048($fp)
	lw $t2, -1052($fp)
	bne $t1, $t2, label554
	j label555
label554:
label557:
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 0
	sw $t0, -1060($fp)
	li $t0, 63579
	sw $t0, -1064($fp)
	li $t0, 1
	sw $t0, -1068($fp)
	lw $t0, -1064($fp)
	lw $t1, -1068($fp)
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	li $t0, 17095
	sw $t0, -1076($fp)
	lw $t1, -1072($fp)
	lw $t2, -1076($fp)
	ble $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -1060($fp)
label563:
	li $t0, 5183
	sw $t0, -1080($fp)
	li $t0, 4523
	sw $t0, -1084($fp)
	lw $t0, -1024($fp)
	sw $t0, -1088($fp)
	lw $t0, -1084($fp)
	lw $t1, -1088($fp)
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	li $t0, 16811
	sw $t0, -1096($fp)
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	li $t0, 0
	sw $t0, -1104($fp)
	addi $t0, $fp, -16
	sw $t0, -1108($fp)
	lw $t0, -220($fp)
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
	lw $t0, -220($fp)
	sw $t0, -1128($fp)
	lw $t1, -1124($fp)
	lw $t2, -1128($fp)
	ble $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -1104($fp)
label565:
	li $t0, 0
	sw $t0, -1132($fp)
	lw $t0, -724($fp)
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label566:
	li $t0, 1
	sw $t0, -1132($fp)
label567:
	li $t0, 16100
	sw $t0, -1140($fp)
	lw $t0, -1132($fp)
	lw $t1, -1140($fp)
	sub $t0, $t0, $t1
	sw $t0, -1144($fp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1148($fp)
	addi $sp, $sp, 24
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label560:
	li $t0, 1
	sw $t0, -1056($fp)
label561:
	li $t0, 0
	sw $t0, -1152($fp)
	addi $t0, $fp, -16
	sw $t0, -1156($fp)
	li $t0, 0
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
	li $t0, 16997
	sw $t0, -1176($fp)
	lw $t0, -1172($fp)
	lw $t1, -1176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	lw $t0, -172($fp)
	sw $t0, -1188($fp)
	li $t0, 0
	lw $t1, -1188($fp)
	sub $t0, $t0, $t1
	sw $t0, -1192($fp)
	li $t0, 36493
	sw $t0, -1196($fp)
	lw $t1, -1192($fp)
	lw $t2, -1196($fp)
	ble $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -1184($fp)
label571:
	addi $sp, $sp, -4
	lw $t0, -1180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1184($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -1200($fp)
	addi $sp, $sp, 12
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label568:
	li $t0, 1
	sw $t0, -1152($fp)
label569:
	lw $t0, -1056($fp)
	lw $t1, -1152($fp)
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	li $t0, 0
	lw $t1, -1204($fp)
	sub $t0, $t0, $t1
	sw $t0, -1208($fp)
	li $t0, 23212
	sw $t0, -1212($fp)
	li $t0, 57477
	sw $t0, -1216($fp)
	lw $t0, -1212($fp)
	lw $t1, -1216($fp)
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1208($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t1, -1224($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label559
label558:
	li $t0, 0
	sw $t0, -1228($fp)
	lw $t0, -220($fp)
	sw $t0, -1232($fp)
	li $t0, 24754
	sw $t0, -1236($fp)
	lw $t0, -1232($fp)
	lw $t1, -1236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1240($fp)
	addi $t0, $fp, -128
	sw $t0, -1244($fp)
	li $t0, 3
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
	lw $t0, -1240($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label573
label574:
	li $t0, 0
	sw $t0, -1268($fp)
	lw $t0, -220($fp)
	sw $t0, -1272($fp)
	li $t0, 0
	lw $t1, -1272($fp)
	sub $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label575:
	li $t0, 1
	sw $t0, -1268($fp)
label576:
	li $t0, 42841
	sw $t0, -1280($fp)
	li $t0, 31273
	sw $t0, -1284($fp)
	lw $t0, -1280($fp)
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1268($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -1228($fp)
label573:
	j label557
label559:
label555:
	li $t0, 40757
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 51936
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 5736
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 42766
	sw $t0, -1480($fp)
	addi $t0, $fp, -1328
	sw $t0, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1484($fp)
	lw $t1, -1492($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1480($fp)
	lw $t1, -1496($fp)
	sw $t0, 0($t1)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	li $t0, 49830
	sw $t0, -1504($fp)
	addi $t0, $fp, -1328
	sw $t0, -1508($fp)
	li $t0, 1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1508($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1504($fp)
	lw $t1, -1520($fp)
	sw $t0, 0($t1)
	lw $t0, -1520($fp)
	lw $t1, 0($t0)
	sw $t1, -1524($fp)
	li $t0, 4867
	sw $t0, -1528($fp)
	addi $t0, $fp, -1328
	sw $t0, -1532($fp)
	li $t0, 2
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1532($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1528($fp)
	lw $t1, -1544($fp)
	sw $t0, 0($t1)
	lw $t0, -1544($fp)
	lw $t1, 0($t0)
	sw $t1, -1548($fp)
	li $t0, 8648
	sw $t0, -1552($fp)
	addi $t0, $fp, -1328
	sw $t0, -1556($fp)
	li $t0, 3
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1556($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1552($fp)
	lw $t1, -1568($fp)
	sw $t0, 0($t1)
	lw $t0, -1568($fp)
	lw $t1, 0($t0)
	sw $t1, -1572($fp)
	li $t0, 22019
	sw $t0, -1576($fp)
	addi $t0, $fp, -1328
	sw $t0, -1580($fp)
	li $t0, 4
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1580($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1576($fp)
	lw $t1, -1592($fp)
	sw $t0, 0($t1)
	lw $t0, -1592($fp)
	lw $t1, 0($t0)
	sw $t1, -1596($fp)
	li $t0, 59355
	sw $t0, -1600($fp)
	addi $t0, $fp, -1328
	sw $t0, -1604($fp)
	li $t0, 5
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1604($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1600($fp)
	lw $t1, -1616($fp)
	sw $t0, 0($t1)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	li $t0, 8866
	sw $t0, -1624($fp)
	addi $t0, $fp, -1328
	sw $t0, -1628($fp)
	li $t0, 6
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1628($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1624($fp)
	lw $t1, -1640($fp)
	sw $t0, 0($t1)
	lw $t0, -1640($fp)
	lw $t1, 0($t0)
	sw $t1, -1644($fp)
	li $t0, 12026
	sw $t0, -1648($fp)
	addi $t0, $fp, -1328
	sw $t0, -1652($fp)
	li $t0, 7
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1652($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1648($fp)
	lw $t1, -1664($fp)
	sw $t0, 0($t1)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	li $t0, 40134
	sw $t0, -1672($fp)
	addi $t0, $fp, -1328
	sw $t0, -1676($fp)
	li $t0, 8
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1676($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1672($fp)
	lw $t1, -1688($fp)
	sw $t0, 0($t1)
	lw $t0, -1688($fp)
	lw $t1, 0($t0)
	sw $t1, -1692($fp)
	li $t0, 24966
	sw $t0, -1696($fp)
	addi $t0, $fp, -1364
	sw $t0, -1700($fp)
	li $t0, 0
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1700($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1696($fp)
	lw $t1, -1712($fp)
	sw $t0, 0($t1)
	lw $t0, -1712($fp)
	lw $t1, 0($t0)
	sw $t1, -1716($fp)
	li $t0, 16549
	sw $t0, -1720($fp)
	addi $t0, $fp, -1364
	sw $t0, -1724($fp)
	li $t0, 1
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1724($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1720($fp)
	lw $t1, -1736($fp)
	sw $t0, 0($t1)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	li $t0, 56945
	sw $t0, -1744($fp)
	addi $t0, $fp, -1364
	sw $t0, -1748($fp)
	li $t0, 2
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
	li $t0, 30149
	sw $t0, -1768($fp)
	addi $t0, $fp, -1364
	sw $t0, -1772($fp)
	li $t0, 3
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
	li $t0, 14592
	sw $t0, -1792($fp)
	addi $t0, $fp, -1364
	sw $t0, -1796($fp)
	li $t0, 4
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
	li $t0, 51248
	sw $t0, -1816($fp)
	addi $t0, $fp, -1364
	sw $t0, -1820($fp)
	li $t0, 5
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
	li $t0, 47244
	sw $t0, -1840($fp)
	addi $t0, $fp, -1364
	sw $t0, -1844($fp)
	li $t0, 6
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
	li $t0, 51086
	sw $t0, -1864($fp)
	addi $t0, $fp, -1364
	sw $t0, -1868($fp)
	li $t0, 7
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
	li $t0, 22853
	sw $t0, -1888($fp)
	addi $t0, $fp, -1364
	sw $t0, -1892($fp)
	li $t0, 8
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
	li $t0, 28660
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	li $t0, 2547
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 46065
	sw $t0, -1936($fp)
	addi $t0, $fp, -1388
	sw $t0, -1940($fp)
	li $t0, 0
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
	li $t0, 20602
	sw $t0, -1960($fp)
	addi $t0, $fp, -1388
	sw $t0, -1964($fp)
	li $t0, 1
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
	li $t0, 41104
	sw $t0, -1984($fp)
	addi $t0, $fp, -1388
	sw $t0, -1988($fp)
	li $t0, 2
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
	li $t0, 5283
	sw $t0, -2008($fp)
	addi $t0, $fp, -1388
	sw $t0, -2012($fp)
	li $t0, 3
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2012($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2008($fp)
	lw $t1, -2024($fp)
	sw $t0, 0($t1)
	lw $t0, -2024($fp)
	lw $t1, 0($t0)
	sw $t1, -2028($fp)
	li $t0, 11044
	sw $t0, -2032($fp)
	addi $t0, $fp, -1388
	sw $t0, -2036($fp)
	li $t0, 4
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2036($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2032($fp)
	lw $t1, -2048($fp)
	sw $t0, 0($t1)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	li $t0, 29675
	sw $t0, -2056($fp)
	addi $t0, $fp, -1388
	sw $t0, -2060($fp)
	li $t0, 5
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2060($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2056($fp)
	lw $t1, -2072($fp)
	sw $t0, 0($t1)
	lw $t0, -2072($fp)
	lw $t1, 0($t0)
	sw $t1, -2076($fp)
	li $t0, 48124
	sw $t0, -2080($fp)
	addi $t0, $fp, -1420
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
	li $t0, 42317
	sw $t0, -2104($fp)
	addi $t0, $fp, -1420
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
	li $t0, 4896
	sw $t0, -2128($fp)
	addi $t0, $fp, -1420
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
	li $t0, 34524
	sw $t0, -2152($fp)
	addi $t0, $fp, -1420
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
	li $t0, 48054
	sw $t0, -2176($fp)
	addi $t0, $fp, -1420
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
	li $t0, 47663
	sw $t0, -2200($fp)
	addi $t0, $fp, -1420
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
	li $t0, 18818
	sw $t0, -2224($fp)
	addi $t0, $fp, -1420
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
	li $t0, 52921
	sw $t0, -2248($fp)
	addi $t0, $fp, -1420
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
	li $t0, 56311
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	sw $t0, -2280($fp)
	li $t0, 40837
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -2292($fp)
	li $t0, 46740
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	sw $t0, -2304($fp)
	li $t0, 65177
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -2316($fp)
	li $t0, 52864
	sw $t0, -2320($fp)
	addi $t0, $fp, -1440
	sw $t0, -2324($fp)
	li $t0, 0
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
	li $t0, 21338
	sw $t0, -2344($fp)
	addi $t0, $fp, -1440
	sw $t0, -2348($fp)
	li $t0, 1
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
	li $t0, 24607
	sw $t0, -2368($fp)
	addi $t0, $fp, -1440
	sw $t0, -2372($fp)
	li $t0, 2
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
	li $t0, 3877
	sw $t0, -2392($fp)
	addi $t0, $fp, -1440
	sw $t0, -2396($fp)
	li $t0, 3
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
	li $t0, 12747
	sw $t0, -2416($fp)
	addi $t0, $fp, -1440
	sw $t0, -2420($fp)
	li $t0, 4
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
	li $t0, 54757
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	lw $t0, -2300($fp)
	sw $t0, -2452($fp)
	lw $t0, -220($fp)
	sw $t0, -2456($fp)
	lw $t0, -2452($fp)
	lw $t1, -2456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2460($fp)
	addi $t0, $fp, -48
	sw $t0, -2464($fp)
	li $t0, 4
	sw $t0, -2468($fp)
	li $t0, 4
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, 0($t0)
	sw $t1, -2480($fp)
	li $t0, 36465
	sw $t0, -2484($fp)
	li $t0, 0
	sw $t0, -2488($fp)
	lw $t0, -1916($fp)
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -2488($fp)
label581:
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t1, -2480($fp)
	lw $t2, -2496($fp)
	ble $t1, $t2, label577
	j label578
label577:
	li $t0, 4020
	sw $t0, -2500($fp)
	li $t0, 0
	lw $t1, -2500($fp)
	sub $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label585
label585:
	addi $t0, $fp, -1388
	sw $t0, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	lw $t0, -184($fp)
	sw $t0, -2516($fp)
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label588
label588:
	li $t0, 21313
	sw $t0, -2520($fp)
	lw $t1, -2520($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -2512($fp)
label587:
	li $t0, 4
	lw $t1, -2512($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
	li $t0, 65126
	sw $t0, -2536($fp)
	j label584
label583:
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 6567
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label591
label591:
	lw $t0, -1448($fp)
	sw $t0, -2548($fp)
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -2540($fp)
label590:
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2552($fp)
	addi $sp, $sp, 8
label584:
	j label579
label578:
	li $t0, 0
	sw $t0, -2556($fp)
	addi $t0, $fp, -48
	sw $t0, -2560($fp)
	lw $t0, -712($fp)
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
	li $t0, 0
	lw $t1, -2576($fp)
	sub $t0, $t0, $t1
	sw $t0, -2580($fp)
	addi $t0, $fp, -1364
	sw $t0, -2584($fp)
	li $t0, 4
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
	lw $t0, -2580($fp)
	lw $t1, -2600($fp)
	sub $t0, $t0, $t1
	sw $t0, -2604($fp)
	addi $t0, $fp, -1420
	sw $t0, -2608($fp)
	lw $t0, -712($fp)
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
	li $t0, 0
	sw $t0, -2628($fp)
	lw $t0, -172($fp)
	sw $t0, -2632($fp)
	li $t0, 0
	lw $t1, -2632($fp)
	sub $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -220($fp)
	sw $t0, -2640($fp)
	lw $t1, -2636($fp)
	lw $t2, -2640($fp)
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -2628($fp)
label595:
	addi $sp, $sp, -4
	lw $t0, -2624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2628($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2644($fp)
	addi $sp, $sp, 12
	lw $t0, -724($fp)
	sw $t0, -2648($fp)
	lw $t0, -2644($fp)
	lw $t1, -2648($fp)
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2604($fp)
	lw $t1, -2652($fp)
	sub $t0, $t0, $t1
	sw $t0, -2656($fp)
	li $t0, 47671
	sw $t0, -2660($fp)
	lw $t0, -1472($fp)
	sw $t0, -2664($fp)
	li $t0, 0
	lw $t1, -2664($fp)
	sub $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2660($fp)
	lw $t1, -2668($fp)
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	li $t0, 0
	lw $t1, -2672($fp)
	sub $t0, $t0, $t1
	sw $t0, -2676($fp)
	li $t0, 0
	lw $t1, -2676($fp)
	sub $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t1, -2656($fp)
	lw $t2, -2680($fp)
	blt $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -2556($fp)
label593:
label579:
	li $t0, 0
	sw $t0, -2684($fp)
	lw $t0, -2444($fp)
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	li $t0, 31236
	sw $t0, -2696($fp)
	li $t0, 11810
	sw $t0, -2700($fp)
	lw $t0, -2696($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label603
label603:
	lw $t0, -1024($fp)
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -2692($fp)
label602:
	lw $t0, -2312($fp)
	sw $t0, -2712($fp)
	li $t0, 7126
	sw $t0, -2716($fp)
	lw $t0, -2712($fp)
	lw $t1, -2716($fp)
	sub $t0, $t0, $t1
	sw $t0, -2720($fp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2724($fp)
	addi $sp, $sp, 16
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label599:
	li $t0, 1
	sw $t0, -2684($fp)
label600:
	addi $t0, $fp, -16
	sw $t0, -2728($fp)
	li $t0, 0
	sw $t0, -2732($fp)
	lw $t0, -700($fp)
	sw $t0, -2736($fp)
	lw $t0, -136($fp)
	sw $t0, -2740($fp)
	lw $t0, -2736($fp)
	lw $t1, -2740($fp)
	sub $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label606
label606:
	li $t0, 55250
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -2732($fp)
label605:
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2752($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -2752($fp)
	mul $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	lw $t1, 0($t0)
	sw $t1, -2764($fp)
	lw $t0, -2684($fp)
	lw $t1, -2764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2768($fp)
	li $t0, 0
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t1, -2772($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label597
label596:
label607:
	lw $t0, -2312($fp)
	sw $t0, -2776($fp)
	li $t0, 0
	lw $t1, -2776($fp)
	sub $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t1, -2780($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label608
label608:
	li $t0, 0
	sw $t0, -2784($fp)
	li $t0, 8018
	sw $t0, -2788($fp)
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label612
label612:
	li $t0, 16707
	sw $t0, -2792($fp)
	lw $t0, -712($fp)
	sw $t0, -2796($fp)
	lw $t1, -2792($fp)
	lw $t2, -2796($fp)
	beq $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -2784($fp)
label611:
	lw $t0, -2784($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -2800($fp)
	j label607
label609:
	j label598
label597:
	li $t0, 0
	sw $t0, -2804($fp)
	li $t0, 24238
	sw $t0, -2808($fp)
	li $t0, 0
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t1, -2812($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label615
label615:
	addi $t0, $fp, -112
	sw $t0, -2816($fp)
	lw $t0, -148($fp)
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
	li $t0, 56072
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -2840($fp)
	addi $sp, $sp, -4
	lw $t0, -2840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2844($fp)
	addi $sp, $sp, 8
	lw $t1, -2832($fp)
	lw $t2, -2844($fp)
	ble $t1, $t2, label613
	j label614
label613:
	li $t0, 1
	sw $t0, -2804($fp)
label614:
label598:
label616:
	li $t0, 0
	sw $t0, -2848($fp)
	li $t0, 0
	sw $t0, -2852($fp)
	li $t0, 64370
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -2852($fp)
label622:
	lw $t0, -2276($fp)
	sw $t0, -2860($fp)
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2852($fp)
	lw $t1, -2864($fp)
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -1024($fp)
	sw $t0, -2876($fp)
	li $t0, 0
	lw $t1, -2876($fp)
	sub $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t1, -2880($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label623
label623:
	li $t0, 1
	sw $t0, -2872($fp)
label624:
	lw $t1, -2868($fp)
	lw $t2, -2872($fp)
	bge $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -2848($fp)
label620:
	li $t0, 0
	sw $t0, -2884($fp)
	addi $t0, $fp, -1440
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
	li $t0, 54787
	sw $t0, -2908($fp)
	lw $t0, -2904($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	addi $sp, $sp, -4
	lw $t0, -2912($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2916($fp)
	addi $sp, $sp, 8
	li $t0, 5685
	sw $t0, -2920($fp)
	lw $t0, -2916($fp)
	lw $t1, -2920($fp)
	sub $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -208($fp)
	sw $t0, -2928($fp)
	li $t0, 0
	lw $t1, -2928($fp)
	sub $t0, $t0, $t1
	sw $t0, -2932($fp)
	li $t0, 0
	sw $t0, -2936($fp)
	li $t0, 55145
	sw $t0, -2940($fp)
	lw $t0, -2444($fp)
	sw $t0, -2944($fp)
	lw $t1, -2940($fp)
	lw $t2, -2944($fp)
	beq $t1, $t2, label627
	j label629
label629:
	lw $t0, -2288($fp)
	sw $t0, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -2936($fp)
label628:
	li $t0, 0
	sw $t0, -2952($fp)
	lw $t0, -712($fp)
	sw $t0, -2956($fp)
	li $t0, 0
	lw $t1, -2956($fp)
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label631
label632:
	li $t0, 43457
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -2952($fp)
label631:
	addi $sp, $sp, -4
	lw $t0, -2932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2952($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2968($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2968($fp)
	sub $t0, $t0, $t1
	sw $t0, -2972($fp)
	li $t0, 43056
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -2980($fp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2984($fp)
	addi $sp, $sp, 16
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label625
label625:
	li $t0, 1
	sw $t0, -2884($fp)
label626:
	lw $t1, -2848($fp)
	lw $t2, -2884($fp)
	blt $t1, $t2, label617
	j label618
label617:
	li $t0, 0
	sw $t0, -2988($fp)
	li $t0, 46000
	sw $t0, -2992($fp)
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label636
label636:
	li $t0, 1
	sw $t0, -2988($fp)
label637:
	lw $t0, -1928($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	sw $t0, -3000($fp)
	li $t0, 0
	sw $t0, -3004($fp)
	lw $t0, -1024($fp)
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label638
label638:
	li $t0, 1
	sw $t0, -3004($fp)
label639:
	li $t0, 0
	lw $t1, -3004($fp)
	sub $t0, $t0, $t1
	sw $t0, -3012($fp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3012($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3016($fp)
	addi $sp, $sp, 16
	lw $t0, -1460($fp)
	sw $t0, -3020($fp)
	lw $t0, -3016($fp)
	lw $t1, -3020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3024($fp)
	lw $t1, -3024($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 0
	sw $t0, -3028($fp)
	li $t0, 0
	sw $t0, -3032($fp)
	li $t0, 13858
	sw $t0, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label642
label642:
	li $t0, 1
	sw $t0, -3032($fp)
label643:
	lw $t0, -712($fp)
	sw $t0, -3040($fp)
	li $t0, 0
	lw $t1, -3040($fp)
	sub $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t1, -3032($fp)
	lw $t2, -3044($fp)
	blt $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -3028($fp)
label641:
	j label635
label634:
	lw $t0, -496($fp)
	sw $t0, -3048($fp)
label635:
	j label616
label618:
	addi $t0, $fp, -80
	sw $t0, -3052($fp)
	li $t0, 0
	sw $t0, -3056($fp)
	addi $t0, $fp, -1328
	sw $t0, -3060($fp)
	li $t0, 5
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
	lw $t1, -3076($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label649
label649:
	lw $t0, -136($fp)
	sw $t0, -3080($fp)
	lw $t1, -3080($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -3056($fp)
label648:
	li $t0, 4
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, -3052($fp)
	add $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	lw $t1, 0($t0)
	sw $t1, -3092($fp)
	li $t0, 3079
	sw $t0, -3096($fp)
	li $t0, 28033
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3104($fp)
	lw $t0, -3092($fp)
	lw $t1, -3104($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 0
	sw $t0, -3112($fp)
	addi $t0, $fp, -48
	sw $t0, -3116($fp)
	lw $t0, -700($fp)
	sw $t0, -3120($fp)
	li $t0, 4
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label653:
	lw $t0, -220($fp)
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label652
label652:
	lw $t0, -1472($fp)
	sw $t0, -3140($fp)
	li $t0, 0
	lw $t1, -3140($fp)
	sub $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label650:
	li $t0, 1
	sw $t0, -3112($fp)
label651:
	j label646
label645:
	li $t0, 57207
	sw $t0, -3148($fp)
label646:
	li $t0, 39545
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	sw $t0, -3192($fp)
	li $t0, 32053
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	sw $t0, -3204($fp)
	li $t0, 12985
	sw $t0, -3208($fp)
	addi $t0, $fp, -3180
	sw $t0, -3212($fp)
	li $t0, 0
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
	li $t0, 39135
	sw $t0, -3232($fp)
	addi $t0, $fp, -3180
	sw $t0, -3236($fp)
	li $t0, 1
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
	li $t0, 38620
	sw $t0, -3256($fp)
	addi $t0, $fp, -3180
	sw $t0, -3260($fp)
	li $t0, 2
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
	li $t0, 14828
	sw $t0, -3280($fp)
	addi $t0, $fp, -3180
	sw $t0, -3284($fp)
	li $t0, 3
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
	li $t0, 59327
	sw $t0, -3304($fp)
	addi $t0, $fp, -3180
	sw $t0, -3308($fp)
	li $t0, 4
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
	li $t0, 20755
	sw $t0, -3328($fp)
	addi $t0, $fp, -3180
	sw $t0, -3332($fp)
	li $t0, 5
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
	li $t0, 21954
	sw $t0, -3352($fp)
	addi $t0, $fp, -3180
	sw $t0, -3356($fp)
	li $t0, 6
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
	li $t0, 25027
	sw $t0, -3376($fp)
	addi $t0, $fp, -3180
	sw $t0, -3380($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -3400($fp)
	li $t0, 11668
	sw $t0, -3404($fp)
	li $t0, 0
	lw $t1, -3404($fp)
	sub $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -208($fp)
	sw $t0, -3412($fp)
	li $t0, 32565
	sw $t0, -3416($fp)
	lw $t0, -3412($fp)
	lw $t1, -3416($fp)
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -196($fp)
	sw $t0, -3424($fp)
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3200($fp)
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -3436($fp)
	addi $sp, $sp, -4
	lw $t0, -3408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3440($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -3180
	sw $t0, -3444($fp)
	li $t0, 0
	sw $t0, -3448($fp)
	li $t0, 4
	lw $t1, -3448($fp)
	mul $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	lw $t1, -3444($fp)
	add $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	lw $t1, 0($t0)
	sw $t1, -3460($fp)
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3464($fp)
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -3468($fp)
	li $t0, 0
	sw $t0, -3472($fp)
	li $t0, 0
	sw $t0, -3476($fp)
	lw $t0, -196($fp)
	sw $t0, -3480($fp)
	lw $t0, -208($fp)
	sw $t0, -3484($fp)
	lw $t1, -3480($fp)
	lw $t2, -3484($fp)
	bge $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -3476($fp)
label659:
	lw $t0, -220($fp)
	sw $t0, -3488($fp)
	lw $t1, -3476($fp)
	lw $t2, -3488($fp)
	beq $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -3472($fp)
label657:
	jal f15
	sw $v0, -3492($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -2288($fp)
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label660
label660:
	li $t0, 1
	sw $t0, -3496($fp)
label661:
	li $t0, 35906
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -3508($fp)
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3508($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3512($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3516($fp)
	addi $sp, $sp, 16
	lw $t0, -3464($fp)
	lw $t1, -3516($fp)
	mul $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t1, -3440($fp)
	lw $t2, -3520($fp)
	bgt $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -3400($fp)
label655:
	li $t0, 0
	sw $t0, -3524($fp)
	li $t0, 0
	sw $t0, -3528($fp)
	li $t0, 23581
	sw $t0, -3532($fp)
	li $t0, 1502
	sw $t0, -3536($fp)
	li $t0, 37716
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	li $t0, 13426
	sw $t0, -3548($fp)
	li $t0, 0
	lw $t1, -3548($fp)
	sub $t0, $t0, $t1
	sw $t0, -3552($fp)
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3556($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -3556($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3560($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -3564($fp)
	lw $t0, -220($fp)
	sw $t0, -3568($fp)
	li $t0, 4
	lw $t1, -3568($fp)
	mul $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	lw $t1, 0($t0)
	sw $t1, -3580($fp)
	lw $t0, -3188($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -3588($fp)
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 48106
	sw $t0, -3596($fp)
	lw $t0, -220($fp)
	sw $t0, -3600($fp)
	lw $t1, -3596($fp)
	lw $t2, -3600($fp)
	bne $t1, $t2, label666
	j label667
label666:
	li $t0, 1
	sw $t0, -3592($fp)
label667:
	addi $sp, $sp, -4
	lw $t0, -3544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3604($fp)
	addi $sp, $sp, 24
	lw $t1, -3532($fp)
	lw $t2, -3604($fp)
	beq $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -3528($fp)
label665:
	lw $t0, -712($fp)
	sw $t0, -3608($fp)
	lw $t1, -3528($fp)
	lw $t2, -3608($fp)
	bne $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -3524($fp)
label663:
	li $t0, 31783
	sw $t0, -3628($fp)
	addi $t0, $fp, -3624
	sw $t0, -3632($fp)
	li $t0, 0
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3632($fp)
	lw $t1, -3640($fp)
	add $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3628($fp)
	lw $t1, -3644($fp)
	sw $t0, 0($t1)
	lw $t0, -3644($fp)
	lw $t1, 0($t0)
	sw $t1, -3648($fp)
	li $t0, 26164
	sw $t0, -3652($fp)
	addi $t0, $fp, -3624
	sw $t0, -3656($fp)
	li $t0, 1
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3656($fp)
	lw $t1, -3664($fp)
	add $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3652($fp)
	lw $t1, -3668($fp)
	sw $t0, 0($t1)
	lw $t0, -3668($fp)
	lw $t1, 0($t0)
	sw $t1, -3672($fp)
	li $t0, 26967
	sw $t0, -3676($fp)
	addi $t0, $fp, -3624
	sw $t0, -3680($fp)
	li $t0, 2
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
	li $t0, 37469
	sw $t0, -3700($fp)
	addi $t0, $fp, -3624
	sw $t0, -3704($fp)
	li $t0, 3
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
	li $t0, 6628
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	sw $t0, -3732($fp)
	li $t0, 0
	sw $t0, -3736($fp)
	li $t0, 0
	sw $t0, -3740($fp)
	li $t0, 65375
	sw $t0, -3744($fp)
	li $t0, 0
	lw $t1, -3744($fp)
	sub $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -172($fp)
	sw $t0, -3752($fp)
	lw $t1, -3748($fp)
	lw $t2, -3752($fp)
	bne $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -3740($fp)
label675:
	addi $t0, $fp, -3624
	sw $t0, -3756($fp)
	li $t0, 0
	sw $t0, -3760($fp)
	li $t0, 4
	lw $t1, -3760($fp)
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	lw $t1, -3756($fp)
	add $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	lw $t1, 0($t0)
	sw $t1, -3772($fp)
	addi $sp, $sp, -4
	lw $t0, -3772($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3776($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -3740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3776($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -3780($fp)
	addi $sp, $sp, 12
	lw $t1, -3780($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label672
label672:
	li $t0, 1
	sw $t0, -3736($fp)
label673:
	li $t0, 43905
	sw $t0, -3784($fp)
	li $t0, 0
	lw $t1, -3784($fp)
	sub $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3736($fp)
	lw $t1, -3788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3792($fp)
	lw $t0, -220($fp)
	sw $t0, -3796($fp)
	lw $t0, -3728($fp)
	sw $t0, -3800($fp)
	lw $t0, -3796($fp)
	lw $t1, -3800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3804($fp)
	lw $t0, -184($fp)
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3792($fp)
	lw $t1, -3812($fp)
	add $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t1, -3816($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label669
label671:
	li $t0, 0
	sw $t0, -3820($fp)
	li $t0, 9529
	sw $t0, -3824($fp)
	li $t0, 57047
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	sub $t0, $t0, $t1
	sw $t0, -3832($fp)
	li $t0, 17914
	sw $t0, -3836($fp)
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	bgt $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -3820($fp)
label677:
	li $t0, 41582
	sw $t0, -3840($fp)
	li $t0, 4496
	sw $t0, -3844($fp)
	lw $t0, -3840($fp)
	lw $t1, -3844($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t1, -3820($fp)
	lw $t2, -3848($fp)
	ble $t1, $t2, label668
	j label669
label668:
	li $t0, 0
	sw $t0, -3852($fp)
	li $t0, 14666
	sw $t0, -3856($fp)
	lw $t0, -196($fp)
	sw $t0, -3860($fp)
	lw $t1, -3856($fp)
	lw $t2, -3860($fp)
	blt $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -3852($fp)
label682:
	li $t0, 57049
	sw $t0, -3864($fp)
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3864($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -3868($fp)
	addi $sp, $sp, 12
	lw $t0, -3868($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -3872($fp)
	lw $t1, -3872($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label679
label678:
	li $t0, 19324
	sw $t0, -3888($fp)
	addi $t0, $fp, -3884
	sw $t0, -3892($fp)
	li $t0, 0
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
	li $t0, 50840
	sw $t0, -3912($fp)
	addi $t0, $fp, -3884
	sw $t0, -3916($fp)
	li $t0, 1
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
	li $t0, 35421
	sw $t0, -3936($fp)
	addi $t0, $fp, -3884
	sw $t0, -3940($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -3960($fp)
	addi $t0, $fp, -3884
	sw $t0, -3964($fp)
	lw $t0, -700($fp)
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
	lw $t0, -136($fp)
	sw $t0, -3988($fp)
	lw $t1, -3988($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label688
label688:
	li $t0, 1
	sw $t0, -3984($fp)
label689:
	lw $t0, -3980($fp)
	lw $t1, -3984($fp)
	mul $t0, $t0, $t1
	sw $t0, -3992($fp)
	li $t0, 41278
	sw $t0, -3996($fp)
	lw $t0, -196($fp)
	sw $t0, -4000($fp)
	lw $t0, -3996($fp)
	lw $t1, -4000($fp)
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t1, -3992($fp)
	lw $t2, -4004($fp)
	bne $t1, $t2, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -3960($fp)
label687:
	li $t0, 10331
	sw $t0, -4008($fp)
	li $t0, 0
	sw $t0, -4012($fp)
	lw $t0, -136($fp)
	sw $t0, -4016($fp)
	li $t0, 43377
	sw $t0, -4020($fp)
	lw $t0, -4016($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -172($fp)
	sw $t0, -4028($fp)
	lw $t1, -4024($fp)
	lw $t2, -4028($fp)
	ble $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -4012($fp)
label691:
	li $t0, 0
	sw $t0, -4032($fp)
	lw $t0, -220($fp)
	sw $t0, -4036($fp)
	li $t0, 2450
	sw $t0, -4040($fp)
	lw $t0, -4036($fp)
	lw $t1, -4040($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t1, -4044($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label694:
	li $t0, 52946
	sw $t0, -4048($fp)
	lw $t1, -4048($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -4032($fp)
label693:
	addi $sp, $sp, -4
	lw $t0, -4012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4032($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4052($fp)
	addi $sp, $sp, 12
	lw $t0, -4008($fp)
	lw $t1, -4052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4056($fp)
	li $t0, 0
	lw $t1, -4056($fp)
	sub $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t1, -3960($fp)
	lw $t2, -4060($fp)
	beq $t1, $t2, label683
	j label684
label683:
	lw $t0, -148($fp)
	sw $t0, -4064($fp)
	j label685
label684:
	li $t0, 0
	sw $t0, -4068($fp)
	jal f13
	sw $v0, -4072($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -4072($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -4068($fp)
label696:
label685:
	j label680
label679:
	addi $t0, $fp, -16
	sw $t0, -4080($fp)
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 51723
	sw $t0, -4088($fp)
	li $t0, 23316
	sw $t0, -4092($fp)
	lw $t1, -4088($fp)
	lw $t2, -4092($fp)
	bge $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -4084($fp)
label698:
	li $t0, 4
	lw $t1, -4084($fp)
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	lw $t1, -4080($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
	li $t0, 0
	lw $t1, -4104($fp)
	sub $t0, $t0, $t1
	sw $t0, -4108($fp)
	li $t0, 0
	sw $t0, -4112($fp)
	lw $t0, -700($fp)
	sw $t0, -4116($fp)
	lw $t1, -4116($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label699
label699:
	li $t0, 1
	sw $t0, -4112($fp)
label700:
	li $t0, 0
	sw $t0, -4120($fp)
	li $t0, 1422
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label701
label701:
	li $t0, 1
	sw $t0, -4120($fp)
label702:
	lw $t0, -4112($fp)
	lw $t1, -4120($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4108($fp)
	lw $t1, -4128($fp)
	sub $t0, $t0, $t1
	sw $t0, -4132($fp)
label680:
	j label670
label669:
label703:
	addi $t0, $fp, -48
	sw $t0, -4136($fp)
	li $t0, 5
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
	lw $t0, -208($fp)
	sw $t0, -4160($fp)
	lw $t0, -220($fp)
	sw $t0, -4164($fp)
	lw $t1, -4160($fp)
	lw $t2, -4164($fp)
	blt $t1, $t2, label709
	j label708
label709:
	lw $t0, -712($fp)
	sw $t0, -4168($fp)
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -4156($fp)
label708:
	addi $sp, $sp, -4
	lw $t0, -4156($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4172($fp)
	addi $sp, $sp, 8
	li $t0, 34293
	sw $t0, -4176($fp)
	lw $t0, -4172($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4180($fp)
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -4184($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4184($fp)
	sub $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t1, -4188($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label706
label706:
	lw $t0, -172($fp)
	sw $t0, -4192($fp)
	lw $t1, -4192($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label705
label704:
	li $t0, 0
	sw $t0, -4196($fp)
	lw $t0, -724($fp)
	sw $t0, -4200($fp)
	li $t0, 6473
	sw $t0, -4204($fp)
	lw $t0, -4200($fp)
	lw $t1, -4204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4208($fp)
	li $t0, 0
	sw $t0, -4212($fp)
	lw $t0, -496($fp)
	sw $t0, -4216($fp)
	lw $t1, -4216($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label713
label713:
	li $t0, 1
	sw $t0, -4212($fp)
label714:
	lw $t0, -4208($fp)
	lw $t1, -4212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label710
	j label712
label712:
	li $t0, 0
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	li $t0, 2989
	sw $t0, -4232($fp)
	lw $t0, -196($fp)
	sw $t0, -4236($fp)
	lw $t1, -4232($fp)
	lw $t2, -4236($fp)
	blt $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -4228($fp)
label718:
	li $t0, 29089
	sw $t0, -4240($fp)
	lw $t1, -4228($fp)
	lw $t2, -4240($fp)
	bgt $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -4224($fp)
label716:
	addi $t0, $fp, -80
	sw $t0, -4244($fp)
	li $t0, 2
	sw $t0, -4248($fp)
	li $t0, 4
	lw $t1, -4248($fp)
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	lw $t1, 0($t0)
	sw $t1, -4260($fp)
	lw $t1, -4224($fp)
	lw $t2, -4260($fp)
	bne $t1, $t2, label710
	j label711
label710:
	li $t0, 1
	sw $t0, -4196($fp)
label711:
	lw $ra, -4($fp)
	lw $v0, -4196($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label703
label705:
label670:
	li $t0, 0
	sw $t0, -4264($fp)
	lw $t0, -136($fp)
	sw $t0, -4268($fp)
	lw $t1, -4268($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label719
label719:
	li $t0, 1
	sw $t0, -4264($fp)
label720:
	li $t0, 0
	lw $t1, -4264($fp)
	sub $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -196($fp)
	sw $t0, -4276($fp)
	lw $t1, -4276($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label721
label721:
label724:
	lw $t0, -712($fp)
	sw $t0, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label726
label725:
	li $t0, 0
	sw $t0, -4284($fp)
	lw $t0, -724($fp)
	sw $t0, -4288($fp)
	li $t0, 0
	lw $t1, -4288($fp)
	sub $t0, $t0, $t1
	sw $t0, -4292($fp)
	li $t0, 0
	lw $t1, -4292($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -160($fp)
	sw $t0, -4300($fp)
	lw $t1, -4296($fp)
	lw $t2, -4300($fp)
	bne $t1, $t2, label727
	j label729
label729:
	jal f15
	sw $v0, -4304($fp)
	addi $sp, $sp, 4
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -4284($fp)
label728:
	j label724
label726:
label722:
label730:
	li $t0, 0
	sw $t0, -4308($fp)
	li $t0, 35717
	sw $t0, -4312($fp)
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label733
label733:
	li $t0, 1
	sw $t0, -4308($fp)
label734:
	li $t0, 0
	lw $t1, -4308($fp)
	sub $t0, $t0, $t1
	sw $t0, -4316($fp)
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4320($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4320($fp)
	sub $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 8730
	sw $t0, -4328($fp)
	li $t0, 21954
	sw $t0, -4332($fp)
	lw $t1, -4328($fp)
	lw $t2, -4332($fp)
	beq $t1, $t2, label735
	j label736
label735:
	addi $t0, $fp, -3624
	sw $t0, -4336($fp)
	li $t0, 0
	sw $t0, -4340($fp)
	addi $t0, $fp, -112
	sw $t0, -4344($fp)
	li $t0, 3
	sw $t0, -4348($fp)
	li $t0, 4
	lw $t1, -4348($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	lw $t1, -4344($fp)
	add $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, 0($t0)
	sw $t1, -4360($fp)
	lw $t1, -4360($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label740
label740:
	li $t0, 31483
	sw $t0, -4364($fp)
	li $t0, 27067
	sw $t0, -4368($fp)
	lw $t0, -4364($fp)
	lw $t1, -4368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4372($fp)
	lw $t1, -4372($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -4340($fp)
label739:
	li $t0, 4
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	lw $t1, 0($t0)
	sw $t1, -4384($fp)
	j label737
label736:
	addi $t0, $fp, -80
	sw $t0, -4388($fp)
	li $t0, 0
	sw $t0, -4392($fp)
	lw $t0, -220($fp)
	sw $t0, -4396($fp)
	li $t0, 5013
	sw $t0, -4400($fp)
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	sub $t0, $t0, $t1
	sw $t0, -4404($fp)
	li $t0, 7529
	sw $t0, -4408($fp)
	lw $t1, -4404($fp)
	lw $t2, -4408($fp)
	bne $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -4392($fp)
label742:
	li $t0, 4
	lw $t1, -4392($fp)
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	li $t0, 0
	lw $t1, -4420($fp)
	sub $t0, $t0, $t1
	sw $t0, -4424($fp)
label737:
	j label730
label732:
	lw $t0, -136($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4460($fp)
	li $t0, 0
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
	lw $t0, -4476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4480($fp)
	li $t0, 1
	sw $t0, -4484($fp)
	li $t0, 4
	lw $t1, -4484($fp)
	mul $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	lw $t1, -4480($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	lw $t1, 0($t0)
	sw $t1, -4496($fp)
	lw $t0, -4496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4500($fp)
	li $t0, 2
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
	lw $t0, -4516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4520($fp)
	li $t0, 0
	sw $t0, -4524($fp)
	li $t0, 4
	lw $t1, -4524($fp)
	mul $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	lw $t1, -4520($fp)
	add $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	lw $t1, 0($t0)
	sw $t1, -4536($fp)
	lw $t0, -4536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4540($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -4560($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -4580($fp)
	li $t0, 3
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
	addi $t0, $fp, -48
	sw $t0, -4600($fp)
	li $t0, 4
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
	addi $t0, $fp, -48
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
	lw $t0, -4636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4640($fp)
	li $t0, 6
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
	addi $t0, $fp, -48
	sw $t0, -4660($fp)
	li $t0, 7
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
	lw $t0, -496($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	lw $t0, -700($fp)
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4856($fp)
	li $t0, 0
	sw $t0, -4860($fp)
	li $t0, 4
	lw $t1, -4860($fp)
	mul $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, -4856($fp)
	add $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	lw $t1, 0($t0)
	sw $t1, -4872($fp)
	lw $t0, -4872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4876($fp)
	li $t0, 1
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
	lw $t0, -4892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4896($fp)
	li $t0, 2
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
	lw $t0, -4912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4916($fp)
	li $t0, 3
	sw $t0, -4920($fp)
	li $t0, 4
	lw $t1, -4920($fp)
	mul $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	lw $t1, -4916($fp)
	add $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	lw $t1, 0($t0)
	sw $t1, -4932($fp)
	lw $t0, -4932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4936($fp)
	li $t0, 4
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
	lw $t0, -4952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4956($fp)
	li $t0, 5
	sw $t0, -4960($fp)
	li $t0, 4
	lw $t1, -4960($fp)
	mul $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	lw $t1, -4956($fp)
	add $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	lw $t1, 0($t0)
	sw $t1, -4972($fp)
	lw $t0, -4972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4976($fp)
	li $t0, 6
	sw $t0, -4980($fp)
	li $t0, 4
	lw $t1, -4980($fp)
	mul $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	lw $t1, -4976($fp)
	add $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	lw $t1, 0($t0)
	sw $t1, -4992($fp)
	lw $t0, -4992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4996($fp)
	li $t0, 7
	sw $t0, -5000($fp)
	li $t0, 4
	lw $t1, -5000($fp)
	mul $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	lw $t1, -4996($fp)
	add $t0, $t0, $t1
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	lw $t1, 0($t0)
	sw $t1, -5012($fp)
	lw $t0, -5012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5016($fp)
	li $t0, 0
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
	lw $t0, -5032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5036($fp)
	li $t0, 1
	sw $t0, -5040($fp)
	li $t0, 4
	lw $t1, -5040($fp)
	mul $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	lw $t1, -5036($fp)
	add $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, 0($t0)
	sw $t1, -5052($fp)
	lw $t0, -5052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5056($fp)
	li $t0, 2
	sw $t0, -5060($fp)
	li $t0, 4
	lw $t1, -5060($fp)
	mul $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	lw $t1, -5056($fp)
	add $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t0, -5068($fp)
	lw $t1, 0($t0)
	sw $t1, -5072($fp)
	lw $t0, -5072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -5076($fp)
	li $t0, 3
	sw $t0, -5080($fp)
	li $t0, 4
	lw $t1, -5080($fp)
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	lw $t1, -5076($fp)
	add $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	lw $t1, 0($t0)
	sw $t1, -5092($fp)
	lw $t0, -5092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5100($fp)
	lw $t0, -220($fp)
	sw $t0, -5104($fp)
	lw $t1, -5104($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label743
label743:
	li $t0, 1
	sw $t0, -5100($fp)
label744:
	lw $ra, -4($fp)
	lw $v0, -5100($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f16:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -136
	li $t0, 31563
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 62062
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 22195
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 50887
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 47366
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 0
	sw $t0, -68($fp)
	lw $t0, -36($fp)
	sw $t0, -72($fp)
	li $t0, 0
	lw $t1, -72($fp)
	sub $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label747
label747:
	lw $t0, -36($fp)
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -68($fp)
label746:
	lw $t0, -36($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -88($fp)
	lw $t0, -36($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -96($fp)
	lw $t0, -36($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -104($fp)
	li $t0, 57616
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -112($fp)
	addi $sp, $sp, -4
	lw $t0, -68($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -88($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -96($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -112($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -116($fp)
	addi $sp, $sp, 24
	lw $t0, -12($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 26629
	sw $t0, -140($fp)
	lw $ra, -4($fp)
	lw $v0, -140($fp)
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
