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
	addi $sp, $sp, -1016
	li $t0, 14781
	sw $t0, -24($fp)
	addi $t0, $fp, -8
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
	li $t0, 52113
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 40476
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 24049
	sw $t0, -72($fp)
	addi $t0, $fp, -20
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
	li $t0, 64038
	sw $t0, -96($fp)
	addi $t0, $fp, -20
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
	li $t0, 37891
	sw $t0, -120($fp)
	addi $t0, $fp, -20
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
	li $t0, 37099
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 57074
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
label121:
	li $t0, 46705
	sw $t0, -168($fp)
	lw $t1, -168($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label123
label122:
	li $t0, 0
	sw $t0, -172($fp)
	lw $t0, -64($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -180($fp)
	addi $sp, $sp, -4
	lw $t0, -180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -184($fp)
	addi $sp, $sp, 8
	li $t0, 33065
	sw $t0, -188($fp)
	lw $t1, -184($fp)
	lw $t2, -188($fp)
	ble $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -172($fp)
label125:
	addi $sp, $sp, -4
	lw $t0, -172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -192($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label121
label123:
	lw $t0, -160($fp)
	sw $t0, -196($fp)
	li $t0, 19750
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -204($fp)
	addi $t0, $fp, -20
	sw $t0, -208($fp)
	lw $t0, -52($fp)
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
	lw $t0, -52($fp)
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -204($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -52($fp)
	sw $t0, -240($fp)
	li $t0, 55200
	sw $t0, -244($fp)
	lw $t0, -240($fp)
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -160($fp)
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	li $t0, 0
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -236($fp)
	lw $t1, -260($fp)
	sub $t0, $t0, $t1
	sw $t0, -264($fp)
label126:
	lw $t0, -160($fp)
	sw $t0, -268($fp)
	lw $t0, 4($fp)
	sw $t0, -272($fp)
	lw $t1, -268($fp)
	lw $t2, -272($fp)
	bne $t1, $t2, label127
	j label128
label127:
	li $t0, 0
	sw $t0, -276($fp)
	lw $t0, -52($fp)
	sw $t0, -280($fp)
	li $t0, 11045
	sw $t0, -284($fp)
	lw $t1, -280($fp)
	lw $t2, -284($fp)
	blt $t1, $t2, label129
	j label131
label131:
	li $t0, 20815
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -276($fp)
label130:
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -292($fp)
	addi $sp, $sp, 8
	j label126
label128:
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	li $t0, 42374
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label137:
	li $t0, 1
	sw $t0, -300($fp)
label138:
	addi $sp, $sp, -4
	lw $t0, -300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -308($fp)
	addi $sp, $sp, 8
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label135:
	li $t0, 1
	sw $t0, -296($fp)
label136:
	li $t0, 3068
	sw $t0, -312($fp)
	lw $t0, -296($fp)
	lw $t1, -312($fp)
	mul $t0, $t0, $t1
	sw $t0, -316($fp)
	li $t0, 0
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	li $t0, 25571
	sw $t0, -328($fp)
	lw $t1, -328($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label139:
	li $t0, 1
	sw $t0, -324($fp)
label140:
	li $t0, 0
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -320($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 59159
	sw $t0, -340($fp)
	li $t0, 0
	lw $t1, -340($fp)
	sub $t0, $t0, $t1
	sw $t0, -344($fp)
	j label134
label133:
	li $t0, 45201
	sw $t0, -348($fp)
label134:
	addi $t0, $fp, -8
	sw $t0, -352($fp)
	li $t0, 0
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
	lw $t0, -52($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -380($fp)
	li $t0, 0
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
	lw $t0, -396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -400($fp)
	li $t0, 1
	sw $t0, -404($fp)
	li $t0, 4
	lw $t1, -404($fp)
	mul $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	lw $t1, 0($t0)
	sw $t1, -416($fp)
	lw $t0, -416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -420($fp)
	li $t0, 2
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
	lw $t0, -148($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -448($fp)
	addi $t0, $fp, -8
	sw $t0, -452($fp)
	lw $t0, -52($fp)
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
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -472($fp)
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -480($fp)
	li $t0, 29363
	sw $t0, -484($fp)
	li $t0, 21069
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -480($fp)
	lw $t1, -492($fp)
	sub $t0, $t0, $t1
	sw $t0, -496($fp)
	li $t0, 4
	lw $t1, -496($fp)
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, -448($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	lw $t1, 0($t0)
	sw $t1, -508($fp)
	lw $ra, -4($fp)
	lw $v0, -508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -512($fp)
	lw $t0, -52($fp)
	sw $t0, -516($fp)
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label141:
	li $t0, 1
	sw $t0, -512($fp)
label142:
	li $t0, 44560
	sw $t0, -520($fp)
	lw $t0, -512($fp)
	lw $t1, -520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -524($fp)
	addi $sp, $sp, -4
	lw $t0, -524($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -528($fp)
	addi $sp, $sp, 8
	li $t0, 59948
	sw $t0, -572($fp)
	addi $t0, $fp, -568
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
	li $t0, 46553
	sw $t0, -596($fp)
	addi $t0, $fp, -568
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
	li $t0, 29550
	sw $t0, -620($fp)
	addi $t0, $fp, -568
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
	li $t0, 54795
	sw $t0, -644($fp)
	addi $t0, $fp, -568
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
	li $t0, 62222
	sw $t0, -668($fp)
	addi $t0, $fp, -568
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
	li $t0, 3445
	sw $t0, -692($fp)
	addi $t0, $fp, -568
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
	li $t0, 22748
	sw $t0, -716($fp)
	addi $t0, $fp, -568
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
	li $t0, 41149
	sw $t0, -740($fp)
	addi $t0, $fp, -568
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
	li $t0, 13970
	sw $t0, -764($fp)
	addi $t0, $fp, -568
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
	li $t0, 37529
	sw $t0, -788($fp)
	addi $t0, $fp, -568
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
	li $t0, 0
	sw $t0, -812($fp)
	lw $t0, -52($fp)
	sw $t0, -816($fp)
	lw $t0, -64($fp)
	sw $t0, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label145
label145:
	li $t0, 27726
	sw $t0, -828($fp)
	li $t0, 0
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -812($fp)
label144:
	lw $t0, -812($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -836($fp)
	addi $t0, $fp, -568
	sw $t0, -840($fp)
	li $t0, 0
	sw $t0, -844($fp)
	li $t0, 54446
	sw $t0, -848($fp)
	li $t0, 61578
	sw $t0, -852($fp)
	lw $t1, -848($fp)
	lw $t2, -852($fp)
	blt $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -844($fp)
label147:
	li $t0, 4
	lw $t1, -844($fp)
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	lw $t1, 0($t0)
	sw $t1, -864($fp)
	li $t0, 26228
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	li $t0, 26801
	sw $t0, -876($fp)
	li $t0, 33141
	sw $t0, -880($fp)
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -884($fp)
	lw $t0, -872($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	li $t0, 0
	sw $t0, -892($fp)
	li $t0, 0
	sw $t0, -896($fp)
	lw $t0, 4($fp)
	sw $t0, -900($fp)
	lw $t0, -148($fp)
	sw $t0, -904($fp)
	lw $t1, -900($fp)
	lw $t2, -904($fp)
	bgt $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -896($fp)
label151:
	li $t0, 17766
	sw $t0, -908($fp)
	lw $t1, -896($fp)
	lw $t2, -908($fp)
	beq $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -892($fp)
label149:
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -912($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -912($fp)
	sub $t0, $t0, $t1
	sw $t0, -916($fp)
	addi $t0, $fp, -8
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 4
	lw $t1, -924($fp)
	mul $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	lw $t1, -920($fp)
	add $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	lw $t1, 0($t0)
	sw $t1, -936($fp)
	lw $t0, -936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
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
	lw $t0, -964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -968($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -988($fp)
	li $t0, 2
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
	lw $t0, -148($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1016($fp)
	lw $t0, -148($fp)
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -1016($fp)
label153:
	lw $ra, -4($fp)
	lw $v0, -1016($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6228
	li $t0, 7970
	sw $t0, -184($fp)
	addi $t0, $fp, -28
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
	li $t0, 670
	sw $t0, -208($fp)
	addi $t0, $fp, -28
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
	li $t0, 37517
	sw $t0, -232($fp)
	addi $t0, $fp, -28
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
	li $t0, 63170
	sw $t0, -256($fp)
	addi $t0, $fp, -28
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
	li $t0, 11715
	sw $t0, -280($fp)
	addi $t0, $fp, -28
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
	li $t0, 58332
	sw $t0, -304($fp)
	addi $t0, $fp, -28
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
	li $t0, 40009
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 14784
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 18367
	sw $t0, -352($fp)
	addi $t0, $fp, -48
	sw $t0, -356($fp)
	li $t0, 0
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
	li $t0, 33632
	sw $t0, -376($fp)
	addi $t0, $fp, -48
	sw $t0, -380($fp)
	li $t0, 1
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
	li $t0, 59985
	sw $t0, -400($fp)
	addi $t0, $fp, -48
	sw $t0, -404($fp)
	li $t0, 2
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
	li $t0, 47730
	sw $t0, -424($fp)
	addi $t0, $fp, -48
	sw $t0, -428($fp)
	li $t0, 3
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
	li $t0, 54701
	sw $t0, -448($fp)
	addi $t0, $fp, -48
	sw $t0, -452($fp)
	li $t0, 4
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
	li $t0, 39009
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 42142
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 35718
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 3023
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 31401
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 32404
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 6468
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 54149
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 8017
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 20438
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 26143
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 35744
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 9348
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 22185
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 61972
	sw $t0, -640($fp)
	addi $t0, $fp, -80
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
	li $t0, 36149
	sw $t0, -664($fp)
	addi $t0, $fp, -80
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
	li $t0, 55327
	sw $t0, -688($fp)
	addi $t0, $fp, -80
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
	li $t0, 14203
	sw $t0, -712($fp)
	addi $t0, $fp, -80
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
	li $t0, 44120
	sw $t0, -736($fp)
	addi $t0, $fp, -80
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
	li $t0, 55997
	sw $t0, -760($fp)
	addi $t0, $fp, -80
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
	li $t0, 51720
	sw $t0, -784($fp)
	addi $t0, $fp, -80
	sw $t0, -788($fp)
	li $t0, 6
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
	li $t0, 41754
	sw $t0, -808($fp)
	addi $t0, $fp, -80
	sw $t0, -812($fp)
	li $t0, 7
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -812($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -808($fp)
	lw $t1, -824($fp)
	sw $t0, 0($t1)
	lw $t0, -824($fp)
	lw $t1, 0($t0)
	sw $t1, -828($fp)
	li $t0, 2177
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 44516
	sw $t0, -844($fp)
	addi $t0, $fp, -92
	sw $t0, -848($fp)
	li $t0, 0
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
	li $t0, 16227
	sw $t0, -868($fp)
	addi $t0, $fp, -92
	sw $t0, -872($fp)
	li $t0, 1
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
	li $t0, 16961
	sw $t0, -892($fp)
	addi $t0, $fp, -92
	sw $t0, -896($fp)
	li $t0, 2
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
	li $t0, 62884
	sw $t0, -916($fp)
	addi $t0, $fp, -96
	sw $t0, -920($fp)
	li $t0, 0
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
	li $t0, 49859
	sw $t0, -940($fp)
	addi $t0, $fp, -124
	sw $t0, -944($fp)
	li $t0, 0
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
	li $t0, 11410
	sw $t0, -964($fp)
	addi $t0, $fp, -124
	sw $t0, -968($fp)
	li $t0, 1
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
	li $t0, 45078
	sw $t0, -988($fp)
	addi $t0, $fp, -124
	sw $t0, -992($fp)
	li $t0, 2
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -992($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -988($fp)
	lw $t1, -1004($fp)
	sw $t0, 0($t1)
	lw $t0, -1004($fp)
	lw $t1, 0($t0)
	sw $t1, -1008($fp)
	li $t0, 39024
	sw $t0, -1012($fp)
	addi $t0, $fp, -124
	sw $t0, -1016($fp)
	li $t0, 3
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1016($fp)
	lw $t1, -1024($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1012($fp)
	lw $t1, -1028($fp)
	sw $t0, 0($t1)
	lw $t0, -1028($fp)
	lw $t1, 0($t0)
	sw $t1, -1032($fp)
	li $t0, 50420
	sw $t0, -1036($fp)
	addi $t0, $fp, -124
	sw $t0, -1040($fp)
	li $t0, 4
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
	li $t0, 21685
	sw $t0, -1060($fp)
	addi $t0, $fp, -124
	sw $t0, -1064($fp)
	li $t0, 5
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
	li $t0, 9206
	sw $t0, -1084($fp)
	addi $t0, $fp, -124
	sw $t0, -1088($fp)
	li $t0, 6
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
	li $t0, 53443
	sw $t0, -1108($fp)
	addi $t0, $fp, -148
	sw $t0, -1112($fp)
	li $t0, 0
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
	li $t0, 53086
	sw $t0, -1132($fp)
	addi $t0, $fp, -148
	sw $t0, -1136($fp)
	li $t0, 1
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
	li $t0, 41611
	sw $t0, -1156($fp)
	addi $t0, $fp, -148
	sw $t0, -1160($fp)
	li $t0, 2
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
	li $t0, 59912
	sw $t0, -1180($fp)
	addi $t0, $fp, -148
	sw $t0, -1184($fp)
	li $t0, 3
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
	li $t0, 41700
	sw $t0, -1204($fp)
	addi $t0, $fp, -148
	sw $t0, -1208($fp)
	li $t0, 4
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
	li $t0, 49628
	sw $t0, -1228($fp)
	addi $t0, $fp, -148
	sw $t0, -1232($fp)
	li $t0, 5
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
	li $t0, 14814
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 2307
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 19836
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 24163
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 24492
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 16273
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 60312
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	li $t0, 14283
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 30476
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	li $t0, 38896
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	li $t0, 4745
	sw $t0, -1372($fp)
	addi $t0, $fp, -180
	sw $t0, -1376($fp)
	li $t0, 0
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
	li $t0, 16660
	sw $t0, -1396($fp)
	addi $t0, $fp, -180
	sw $t0, -1400($fp)
	li $t0, 1
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
	li $t0, 15115
	sw $t0, -1420($fp)
	addi $t0, $fp, -180
	sw $t0, -1424($fp)
	li $t0, 2
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
	li $t0, 6922
	sw $t0, -1444($fp)
	addi $t0, $fp, -180
	sw $t0, -1448($fp)
	li $t0, 3
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
	li $t0, 61176
	sw $t0, -1468($fp)
	addi $t0, $fp, -180
	sw $t0, -1472($fp)
	li $t0, 4
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
	li $t0, 31342
	sw $t0, -1492($fp)
	addi $t0, $fp, -180
	sw $t0, -1496($fp)
	li $t0, 5
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
	li $t0, 23883
	sw $t0, -1516($fp)
	addi $t0, $fp, -180
	sw $t0, -1520($fp)
	li $t0, 6
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
	li $t0, 58524
	sw $t0, -1540($fp)
	addi $t0, $fp, -180
	sw $t0, -1544($fp)
	li $t0, 7
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
	li $t0, 15666
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 35293
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 38067
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 54690
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	li $t0, 0
	sw $t0, -1612($fp)
	li $t0, 20177
	sw $t0, -1616($fp)
	li $t0, 59752
	sw $t0, -1620($fp)
	lw $t1, -1616($fp)
	lw $t2, -1620($fp)
	bge $t1, $t2, label156
	j label155
label156:
	li $t0, 63897
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -1612($fp)
label155:
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1628($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1628($fp)
	sub $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -632($fp)
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1568($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1660($fp)
	addi $t0, $fp, -96
	sw $t0, -1664($fp)
	li $t0, 0
	sw $t0, -1668($fp)
	lw $t0, -1316($fp)
	sw $t0, -1672($fp)
	li $t0, 0
	lw $t1, -1672($fp)
	sub $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -572($fp)
	sw $t0, -1680($fp)
	lw $t1, -1676($fp)
	lw $t2, -1680($fp)
	ble $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -1668($fp)
label160:
	li $t0, 4
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, 0($t0)
	sw $t1, -1692($fp)
	lw $t0, -1268($fp)
	sw $t0, -1696($fp)
	li $t0, 0
	lw $t1, -1696($fp)
	sub $t0, $t0, $t1
	sw $t0, -1700($fp)
	li $t0, 8085
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	sub $t0, $t0, $t1
	sw $t0, -1708($fp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1712($fp)
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -1716($fp)
	lw $t0, -1712($fp)
	lw $t1, -1716($fp)
	mul $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t1, -1692($fp)
	lw $t2, -1720($fp)
	beq $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -1660($fp)
label158:
	lw $ra, -4($fp)
	lw $v0, -1660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1568($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -1740($fp)
	li $t0, 47302
	sw $t0, -1744($fp)
	lw $t0, -524($fp)
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1752($fp)
	lw $t0, -1740($fp)
	lw $t1, -1752($fp)
	sub $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $ra, -4($fp)
	lw $v0, -1756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -80
	sw $t0, -1760($fp)
	li $t0, 5
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
	li $t0, 23466
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1604($fp)
	sw $t0, -1788($fp)
	li $t0, 24064
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1796($fp)
	lw $t1, -1784($fp)
	lw $t2, -1796($fp)
	blt $t1, $t2, label161
	j label164
label164:
	li $t0, 0
	sw $t0, -1800($fp)
	li $t0, 17275
	sw $t0, -1804($fp)
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 1
	sw $t0, -1800($fp)
label166:
	li $t0, 0
	lw $t1, -1800($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t1, -1808($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	addi $t0, $fp, -28
	sw $t0, -1812($fp)
	lw $t0, -524($fp)
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
	li $t0, 25773
	sw $t0, -1832($fp)
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	li $t0, 0
	sw $t0, -1840($fp)
	li $t0, 43901
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -1840($fp)
label171:
	lw $t0, -512($fp)
	sw $t0, -1848($fp)
	lw $t0, -1840($fp)
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1856($fp)
	addi $sp, $sp, 8
	lw $t0, -1836($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	li $t0, 41438
	sw $t0, -1864($fp)
	lw $t0, -1860($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	addi $t0, $fp, -180
	sw $t0, -1872($fp)
	li $t0, 50266
	sw $t0, -1876($fp)
	lw $t0, -1256($fp)
	sw $t0, -1880($fp)
	lw $t0, -1876($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1884($fp)
	li $t0, 4
	lw $t1, -1884($fp)
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, -1872($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	lw $t1, -1868($fp)
	lw $t2, -1896($fp)
	blt $t1, $t2, label167
	j label168
label167:
	lw $t0, -524($fp)
	sw $t0, -1900($fp)
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 60174
	sw $t0, -1908($fp)
	addi $t0, $fp, -124
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
	lw $t0, -488($fp)
	sw $t0, -1932($fp)
	li $t0, 0
	lw $t1, -1932($fp)
	sub $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1928($fp)
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t1, -1908($fp)
	lw $t2, -1940($fp)
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1904($fp)
label173:
	addi $t0, $fp, -180
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	lw $t0, -584($fp)
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -1948($fp)
label175:
	li $t0, 4
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, 0($t0)
	sw $t1, -1964($fp)
	li $t0, 0
	lw $t1, -1964($fp)
	sub $t0, $t0, $t1
	sw $t0, -1968($fp)
	j label169
label168:
	addi $t0, $fp, -180
	sw $t0, -1972($fp)
	li $t0, 7
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
	li $t0, 0
	lw $t1, -1988($fp)
	sub $t0, $t0, $t1
	sw $t0, -1992($fp)
	li $t0, 0
	lw $t1, -1992($fp)
	sub $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1580($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -2004($fp)
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2008($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2012($fp)
	addi $sp, $sp, 8
	lw $t1, -1996($fp)
	lw $t2, -2012($fp)
	bge $t1, $t2, label176
	j label177
label176:
	li $t0, 0
	sw $t0, -2016($fp)
	li $t0, 0
	sw $t0, -2020($fp)
	li $t0, 3758
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -2020($fp)
label182:
	lw $t0, -1340($fp)
	sw $t0, -2028($fp)
	lw $t1, -2020($fp)
	lw $t2, -2028($fp)
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -2016($fp)
label180:
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2032($fp)
	addi $sp, $sp, 8
	j label178
label177:
	li $t0, 0
	sw $t0, -2036($fp)
	li $t0, 41774
	sw $t0, -2040($fp)
	addi $t0, $fp, -148
	sw $t0, -2044($fp)
	lw $t0, -1568($fp)
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
	lw $t0, -2040($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label185:
	li $t0, 0
	sw $t0, -2068($fp)
	lw $t0, -476($fp)
	sw $t0, -2072($fp)
	lw $t1, -2072($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -2068($fp)
label187:
	lw $t0, -1304($fp)
	sw $t0, -2076($fp)
	lw $t0, -2068($fp)
	lw $t1, -2076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2080($fp)
	li $t0, 0
	sw $t0, -2084($fp)
	lw $t0, -560($fp)
	sw $t0, -2088($fp)
	lw $t1, -2088($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label188
label188:
	li $t0, 1
	sw $t0, -2084($fp)
label189:
	lw $t1, -2080($fp)
	lw $t2, -2084($fp)
	bgt $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -2036($fp)
label184:
label178:
label169:
	j label163
label162:
	li $t0, 24690
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	lw $t0, -2096($fp)
	sw $t0, -2104($fp)
	li $t0, 0
	sw $t0, -2108($fp)
	li $t0, 0
	sw $t0, -2112($fp)
	li $t0, 10680
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -2112($fp)
label193:
	li $t0, 37414
	sw $t0, -2120($fp)
	lw $t0, -548($fp)
	sw $t0, -2124($fp)
	lw $t0, -2120($fp)
	lw $t1, -2124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2128($fp)
	lw $t1, -2112($fp)
	lw $t2, -2128($fp)
	ble $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -2108($fp)
label191:
label163:
label194:
	li $t0, 56033
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	addi $t0, $fp, -80
	sw $t0, -2136($fp)
	li $t0, 0
	sw $t0, -2140($fp)
	lw $t0, -584($fp)
	sw $t0, -2144($fp)
	li $t0, 34563
	sw $t0, -2148($fp)
	lw $t0, -2144($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label199
label199:
	addi $t0, $fp, -180
	sw $t0, -2156($fp)
	li $t0, 3
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
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -2140($fp)
label198:
	li $t0, 4
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	lw $t1, 0($t0)
	sw $t1, -2184($fp)
	lw $ra, -4($fp)
	lw $v0, -2184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label194
label196:
	li $t0, 4321
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -2192($fp)
	addi $sp, $sp, -4
	lw $t0, -2192($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2196($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2200($fp)
	li $t0, 2934
	sw $t0, -2204($fp)
	lw $t1, -2204($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label203:
	li $t0, 1
	sw $t0, -2200($fp)
label204:
	lw $t0, -584($fp)
	sw $t0, -2208($fp)
	lw $t0, -2200($fp)
	lw $t1, -2208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2212($fp)
	lw $t0, -2196($fp)
	lw $t1, -2212($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	addi $t0, $fp, -124
	sw $t0, -2220($fp)
	li $t0, 3
	sw $t0, -2224($fp)
	li $t0, 4
	lw $t1, -2224($fp)
	mul $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	lw $t1, -2220($fp)
	add $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	lw $t1, 0($t0)
	sw $t1, -2236($fp)
	li $t0, 0
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2240($fp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2244($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -2244($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label202
label201:
	li $t0, 62686
	sw $t0, -2248($fp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2252($fp)
	addi $sp, $sp, 8
	li $t0, 59214
	sw $t0, -2256($fp)
	li $t0, 0
	lw $t1, -2256($fp)
	sub $t0, $t0, $t1
	sw $t0, -2260($fp)
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2264($fp)
	addi $sp, $sp, 8
	lw $t0, -2252($fp)
	lw $t1, -2264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label206
label205:
	lw $t0, -344($fp)
	sw $t0, -2272($fp)
	addi $t0, $fp, -28
	sw $t0, -2276($fp)
	li $t0, 4
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
	lw $t0, -536($fp)
	sw $t0, -2296($fp)
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	sub $t0, $t0, $t1
	sw $t0, -2300($fp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2304($fp)
	addi $sp, $sp, 8
	lw $t0, -2272($fp)
	lw $t1, -2304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2308($fp)
	lw $ra, -4($fp)
	lw $v0, -2308($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label207
label206:
	lw $t0, -1256($fp)
	sw $t0, -2312($fp)
	li $t0, 0
	sw $t0, -2316($fp)
	li $t0, 33650
	sw $t0, -2320($fp)
	li $t0, 0
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	li $t0, 35044
	sw $t0, -2328($fp)
	lw $t1, -2324($fp)
	lw $t2, -2328($fp)
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -2316($fp)
label209:
	addi $sp, $sp, -4
	lw $t0, -2316($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2332($fp)
	addi $sp, $sp, 8
	lw $t0, -2312($fp)
	lw $t1, -2332($fp)
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	li $t0, 0
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2340($fp)
	li $t0, 0
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
label207:
label202:
	addi $t0, $fp, -28
	sw $t0, -2348($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -2368($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -2388($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -2408($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -2428($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -2448($fp)
	li $t0, 5
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
	lw $t0, -332($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2496($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -2516($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -2536($fp)
	li $t0, 3
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
	addi $t0, $fp, -48
	sw $t0, -2556($fp)
	li $t0, 4
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
	lw $t0, -476($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2632($fp)
	li $t0, 0
	sw $t0, -2636($fp)
	li $t0, 4
	lw $t1, -2636($fp)
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, 0($t0)
	sw $t1, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2652($fp)
	li $t0, 1
	sw $t0, -2656($fp)
	li $t0, 4
	lw $t1, -2656($fp)
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	lw $t1, 0($t0)
	sw $t1, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2672($fp)
	li $t0, 2
	sw $t0, -2676($fp)
	li $t0, 4
	lw $t1, -2676($fp)
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	lw $t0, -2688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2692($fp)
	li $t0, 3
	sw $t0, -2696($fp)
	li $t0, 4
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, 0($t0)
	sw $t1, -2708($fp)
	lw $t0, -2708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2712($fp)
	li $t0, 4
	sw $t0, -2716($fp)
	li $t0, 4
	lw $t1, -2716($fp)
	mul $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	lw $t1, -2712($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, 0($t0)
	sw $t1, -2728($fp)
	lw $t0, -2728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2732($fp)
	li $t0, 5
	sw $t0, -2736($fp)
	li $t0, 4
	lw $t1, -2736($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, 0($t0)
	sw $t1, -2748($fp)
	lw $t0, -2748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2752($fp)
	li $t0, 6
	sw $t0, -2756($fp)
	li $t0, 4
	lw $t1, -2756($fp)
	mul $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	lw $t1, 0($t0)
	sw $t1, -2768($fp)
	lw $t0, -2768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2772($fp)
	li $t0, 7
	sw $t0, -2776($fp)
	li $t0, 4
	lw $t1, -2776($fp)
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, -2772($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	lw $t1, 0($t0)
	sw $t1, -2788($fp)
	lw $t0, -2788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -96
	sw $t0, -2856($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -2876($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -2896($fp)
	li $t0, 1
	sw $t0, -2900($fp)
	li $t0, 4
	lw $t1, -2900($fp)
	mul $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, 0($t0)
	sw $t1, -2912($fp)
	lw $t0, -2912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2916($fp)
	li $t0, 2
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
	addi $t0, $fp, -124
	sw $t0, -2936($fp)
	li $t0, 3
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
	addi $t0, $fp, -124
	sw $t0, -2956($fp)
	li $t0, 4
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
	addi $t0, $fp, -124
	sw $t0, -2976($fp)
	li $t0, 5
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
	lw $t0, -2992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2996($fp)
	li $t0, 6
	sw $t0, -3000($fp)
	li $t0, 4
	lw $t1, -3000($fp)
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	lw $t1, -2996($fp)
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	lw $t1, 0($t0)
	sw $t1, -3012($fp)
	lw $t0, -3012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3016($fp)
	li $t0, 0
	sw $t0, -3020($fp)
	li $t0, 4
	lw $t1, -3020($fp)
	mul $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, 0($t0)
	sw $t1, -3032($fp)
	lw $t0, -3032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3036($fp)
	li $t0, 1
	sw $t0, -3040($fp)
	li $t0, 4
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, 0($t0)
	sw $t1, -3052($fp)
	lw $t0, -3052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3056($fp)
	li $t0, 2
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
	addi $t0, $fp, -148
	sw $t0, -3076($fp)
	li $t0, 3
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
	addi $t0, $fp, -148
	sw $t0, -3096($fp)
	li $t0, 4
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
	lw $t0, -3112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3116($fp)
	li $t0, 5
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
	lw $t0, -3132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1328($fp)
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1340($fp)
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1352($fp)
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1364($fp)
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -3176($fp)
	li $t0, 0
	sw $t0, -3180($fp)
	li $t0, 4
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, 0($t0)
	sw $t1, -3192($fp)
	lw $t0, -3192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -3196($fp)
	li $t0, 1
	sw $t0, -3200($fp)
	li $t0, 4
	lw $t1, -3200($fp)
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, -3196($fp)
	add $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, 0($t0)
	sw $t1, -3212($fp)
	lw $t0, -3212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -3216($fp)
	li $t0, 2
	sw $t0, -3220($fp)
	li $t0, 4
	lw $t1, -3220($fp)
	mul $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, -3216($fp)
	add $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	lw $t1, 0($t0)
	sw $t1, -3232($fp)
	lw $t0, -3232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -3236($fp)
	li $t0, 3
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
	lw $t0, -3252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -3256($fp)
	li $t0, 4
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
	addi $t0, $fp, -180
	sw $t0, -3276($fp)
	li $t0, 5
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
	addi $t0, $fp, -180
	sw $t0, -3296($fp)
	li $t0, 6
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
	addi $t0, $fp, -180
	sw $t0, -3316($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -3336($fp)
	addi $t0, $fp, -48
	sw $t0, -3340($fp)
	lw $t0, -488($fp)
	sw $t0, -3344($fp)
	li $t0, 4
	lw $t1, -3344($fp)
	mul $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	lw $t1, -3340($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, 0($t0)
	sw $t1, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 1
	sw $t0, -3336($fp)
label211:
	li $t0, 2383
	sw $t0, -3360($fp)
	lw $t0, -3336($fp)
	lw $t1, -3360($fp)
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -3368($fp)
	lw $ra, -4($fp)
	lw $v0, -3368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 57715
	sw $t0, -3396($fp)
	addi $t0, $fp, -3392
	sw $t0, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3400($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3396($fp)
	lw $t1, -3412($fp)
	sw $t0, 0($t1)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	li $t0, 52320
	sw $t0, -3420($fp)
	addi $t0, $fp, -3392
	sw $t0, -3424($fp)
	li $t0, 1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3424($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3420($fp)
	lw $t1, -3436($fp)
	sw $t0, 0($t1)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	li $t0, 28156
	sw $t0, -3444($fp)
	addi $t0, $fp, -3392
	sw $t0, -3448($fp)
	li $t0, 2
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3448($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3444($fp)
	lw $t1, -3460($fp)
	sw $t0, 0($t1)
	lw $t0, -3460($fp)
	lw $t1, 0($t0)
	sw $t1, -3464($fp)
	li $t0, 36080
	sw $t0, -3468($fp)
	addi $t0, $fp, -3392
	sw $t0, -3472($fp)
	li $t0, 3
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3472($fp)
	lw $t1, -3480($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3468($fp)
	lw $t1, -3484($fp)
	sw $t0, 0($t1)
	lw $t0, -3484($fp)
	lw $t1, 0($t0)
	sw $t1, -3488($fp)
	li $t0, 28222
	sw $t0, -3492($fp)
	addi $t0, $fp, -3392
	sw $t0, -3496($fp)
	li $t0, 4
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3496($fp)
	lw $t1, -3504($fp)
	add $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3492($fp)
	lw $t1, -3508($fp)
	sw $t0, 0($t1)
	lw $t0, -3508($fp)
	lw $t1, 0($t0)
	sw $t1, -3512($fp)
	li $t0, 12886
	sw $t0, -3516($fp)
	addi $t0, $fp, -3392
	sw $t0, -3520($fp)
	li $t0, 5
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3520($fp)
	lw $t1, -3528($fp)
	add $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3516($fp)
	lw $t1, -3532($fp)
	sw $t0, 0($t1)
	lw $t0, -3532($fp)
	lw $t1, 0($t0)
	sw $t1, -3536($fp)
	addi $t0, $fp, -96
	sw $t0, -3540($fp)
	lw $t0, -524($fp)
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
	lw $t0, -584($fp)
	sw $t0, -3560($fp)
	lw $t0, -3556($fp)
	lw $t1, -3560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3564($fp)
	addi $t0, $fp, -124
	sw $t0, -3568($fp)
	li $t0, 0
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
	lw $t0, -3564($fp)
	lw $t1, -3584($fp)
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	addi $t0, $fp, -180
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
	lw $t0, -3588($fp)
	lw $t1, -3608($fp)
	sub $t0, $t0, $t1
	sw $t0, -3612($fp)
	li $t0, 0
	sw $t0, -3616($fp)
	addi $t0, $fp, -28
	sw $t0, -3620($fp)
	lw $t0, -524($fp)
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
	li $t0, 8477
	sw $t0, -3640($fp)
	lw $t1, -3636($fp)
	lw $t2, -3640($fp)
	bgt $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -3616($fp)
label213:
	addi $sp, $sp, -4
	lw $t0, -3616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3644($fp)
	addi $sp, $sp, 8
	li $t0, 15658
	sw $t0, -3648($fp)
	lw $t0, -3644($fp)
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	li $t0, 0
	lw $t1, -3652($fp)
	sub $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3612($fp)
	lw $t1, -3656($fp)
	sub $t0, $t0, $t1
	sw $t0, -3660($fp)
	addi $t0, $fp, -3392
	sw $t0, -3664($fp)
	lw $t0, -620($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -3672($fp)
	li $t0, 4
	lw $t1, -3672($fp)
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	lw $t1, -3664($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	lw $t1, 0($t0)
	sw $t1, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -3688($fp)
	lw $t1, -3688($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	addi $t0, $fp, -124
	sw $t0, -3692($fp)
	li $t0, 2
	sw $t0, -3696($fp)
	li $t0, 4
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	lw $t1, -3692($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, 0($t0)
	sw $t1, -3708($fp)
	li $t0, 0
	sw $t0, -3712($fp)
	li $t0, 26339
	sw $t0, -3716($fp)
	lw $t1, -3716($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label220
label220:
	li $t0, 1
	sw $t0, -3712($fp)
label221:
	li $t0, 0
	lw $t1, -3712($fp)
	sub $t0, $t0, $t1
	sw $t0, -3720($fp)
	li $t0, 0
	lw $t1, -3720($fp)
	sub $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3708($fp)
	lw $t1, -3724($fp)
	mul $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t1, -3728($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 0
	sw $t0, -3732($fp)
	addi $t0, $fp, -48
	sw $t0, -3736($fp)
	lw $t0, -836($fp)
	sw $t0, -3740($fp)
	li $t0, 3948
	sw $t0, -3744($fp)
	lw $t0, -3740($fp)
	lw $t1, -3744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3748($fp)
	lw $t0, -512($fp)
	sw $t0, -3752($fp)
	lw $t0, -3748($fp)
	lw $t1, -3752($fp)
	sub $t0, $t0, $t1
	sw $t0, -3756($fp)
	li $t0, 4
	lw $t1, -3756($fp)
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	lw $t1, -3736($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	lw $t1, 0($t0)
	sw $t1, -3768($fp)
	addi $t0, $fp, -80
	sw $t0, -3772($fp)
	lw $t0, -536($fp)
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
	lw $t0, -1340($fp)
	sw $t0, -3792($fp)
	addi $sp, $sp, -4
	lw $t0, -3792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3796($fp)
	addi $sp, $sp, 8
	lw $t0, -3788($fp)
	lw $t1, -3796($fp)
	sub $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t1, -3768($fp)
	lw $t2, -3800($fp)
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -3732($fp)
label223:
	lw $ra, -4($fp)
	lw $v0, -3732($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label219
label218:
label224:
	lw $t0, 4($fp)
	sw $t0, -3804($fp)
	li $t0, 0
	lw $t1, -3804($fp)
	sub $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 23664
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
label227:
	li $t0, 0
	sw $t0, -3828($fp)
	li $t0, 60902
	sw $t0, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	li $t0, 34351
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label232:
	li $t0, 1
	sw $t0, -3836($fp)
label233:
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	bge $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -3828($fp)
label231:
	lw $t0, -3828($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -3844($fp)
	lw $t1, -3844($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	addi $t0, $fp, -80
	sw $t0, -3848($fp)
	li $t0, 0
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	lw $t0, -548($fp)
	sw $t0, -3860($fp)
	lw $t0, -488($fp)
	sw $t0, -3864($fp)
	lw $t0, -3860($fp)
	lw $t1, -3864($fp)
	sub $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -608($fp)
	sw $t0, -3872($fp)
	lw $t1, -3868($fp)
	lw $t2, -3872($fp)
	bge $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -3856($fp)
label237:
	li $t0, 0
	sw $t0, -3876($fp)
	li $t0, 29827
	sw $t0, -3880($fp)
	lw $t1, -3880($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label238:
	li $t0, 1
	sw $t0, -3876($fp)
label239:
	lw $t1, -3856($fp)
	lw $t2, -3876($fp)
	beq $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -3852($fp)
label235:
	li $t0, 4
	lw $t1, -3852($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, -3848($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, 0($t0)
	sw $t1, -3892($fp)
	li $t0, 65223
	sw $t0, -3896($fp)
	li $t0, 0
	lw $t1, -3896($fp)
	sub $t0, $t0, $t1
	sw $t0, -3900($fp)
	j label227
label229:
label240:
	addi $t0, $fp, -80
	sw $t0, -3904($fp)
	lw $t0, -1352($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -3912($fp)
	li $t0, 4
	lw $t1, -3912($fp)
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	lw $t0, -3820($fp)
	sw $t0, -3928($fp)
	li $t0, 37285
	sw $t0, -3932($fp)
	lw $t0, -3928($fp)
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	addi $sp, $sp, -4
	lw $t0, -3936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3940($fp)
	addi $sp, $sp, 8
	lw $t1, -3924($fp)
	lw $t2, -3940($fp)
	bge $t1, $t2, label241
	j label242
label241:
label243:
	li $t0, 0
	sw $t0, -3944($fp)
	li $t0, 25145
	sw $t0, -3948($fp)
	lw $t1, -3948($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -3944($fp)
label247:
	addi $t0, $fp, -148
	sw $t0, -3952($fp)
	li $t0, 1
	sw $t0, -3956($fp)
	li $t0, 4
	lw $t1, -3956($fp)
	mul $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	lw $t1, 0($t0)
	sw $t1, -3968($fp)
	lw $t0, -1292($fp)
	sw $t0, -3972($fp)
	lw $t0, -3968($fp)
	lw $t1, -3972($fp)
	sub $t0, $t0, $t1
	sw $t0, -3976($fp)
	li $t0, 18823
	sw $t0, -3980($fp)
	lw $t0, -548($fp)
	sw $t0, -3984($fp)
	lw $t0, -3980($fp)
	lw $t1, -3984($fp)
	mul $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3976($fp)
	lw $t1, -3988($fp)
	add $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t1, -3944($fp)
	lw $t2, -3992($fp)
	bge $t1, $t2, label244
	j label245
label244:
	li $t0, 0
	sw $t0, -3996($fp)
	li $t0, 56769
	sw $t0, -4000($fp)
	lw $t0, -1304($fp)
	sw $t0, -4004($fp)
	lw $t1, -4000($fp)
	lw $t2, -4004($fp)
	beq $t1, $t2, label248
	j label250
label250:
	lw $t0, -1256($fp)
	sw $t0, -4008($fp)
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -3996($fp)
label249:
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4012($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -4012($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label243
label245:
	j label240
label242:
	j label224
label226:
label219:
	j label216
label215:
label251:
	lw $t0, -488($fp)
	sw $t0, -4016($fp)
	addi $t0, $fp, -48
	sw $t0, -4020($fp)
	li $t0, 0
	sw $t0, -4024($fp)
	lw $t0, -836($fp)
	sw $t0, -4028($fp)
	lw $t1, -4028($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label256
label256:
	lw $t0, -836($fp)
	sw $t0, -4032($fp)
	lw $t1, -4032($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -4024($fp)
label255:
	li $t0, 4
	lw $t1, -4024($fp)
	mul $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, 0($t0)
	sw $t1, -4044($fp)
	lw $t0, -4016($fp)
	lw $t1, -4044($fp)
	mul $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t1, -4048($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	lw $t0, -1352($fp)
	sw $t0, -4052($fp)
	addi $t0, $fp, -124
	sw $t0, -4056($fp)
	lw $t0, -548($fp)
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
	lw $t0, -4052($fp)
	lw $t1, -4072($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 0
	sw $t0, -4080($fp)
	li $t0, 0
	sw $t0, -4084($fp)
	lw $t0, -596($fp)
	sw $t0, -4088($fp)
	lw $t1, -4088($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label262
label262:
	li $t0, 1
	sw $t0, -4084($fp)
label263:
	addi $t0, $fp, -28
	sw $t0, -4092($fp)
	li $t0, 2
	sw $t0, -4096($fp)
	li $t0, 4
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, 0($t0)
	sw $t1, -4108($fp)
	lw $t0, -4084($fp)
	lw $t1, -4108($fp)
	add $t0, $t0, $t1
	sw $t0, -4112($fp)
	li $t0, 26278
	sw $t0, -4116($fp)
	lw $t1, -4112($fp)
	lw $t2, -4116($fp)
	ble $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -4080($fp)
label261:
	lw $ra, -4($fp)
	lw $v0, -4080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label259
label258:
label264:
	li $t0, 15735
	sw $t0, -4120($fp)
	lw $t0, -1316($fp)
	sw $t0, -4124($fp)
	li $t0, 44653
	sw $t0, -4128($fp)
	lw $t0, -4124($fp)
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4120($fp)
	lw $t1, -4132($fp)
	add $t0, $t0, $t1
	sw $t0, -4136($fp)
	li $t0, 13062
	sw $t0, -4140($fp)
	li $t0, 43891
	sw $t0, -4144($fp)
	lw $t0, -4140($fp)
	lw $t1, -4144($fp)
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4136($fp)
	lw $t1, -4148($fp)
	sub $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t1, -4152($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label267:
	li $t0, 15197
	sw $t0, -4156($fp)
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 0
	sw $t0, -4160($fp)
	lw $t0, -536($fp)
	sw $t0, -4164($fp)
	li $t0, 41284
	sw $t0, -4168($fp)
	lw $t0, -4164($fp)
	lw $t1, -4168($fp)
	sub $t0, $t0, $t1
	sw $t0, -4172($fp)
	li $t0, 0
	sw $t0, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	lw $t0, -620($fp)
	sw $t0, -4184($fp)
	lw $t1, -4184($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label274:
	li $t0, 56778
	sw $t0, -4188($fp)
	lw $t1, -4188($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -4180($fp)
label273:
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4192($fp)
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -1292($fp)
	sw $t0, -4204($fp)
	li $t0, 45915
	sw $t0, -4208($fp)
	lw $t0, -4204($fp)
	lw $t1, -4208($fp)
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	addi $sp, $sp, -4
	lw $t0, -4212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4216($fp)
	addi $sp, $sp, 8
	lw $t1, -4200($fp)
	lw $t2, -4216($fp)
	bgt $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -4176($fp)
label271:
	lw $t1, -4172($fp)
	lw $t2, -4176($fp)
	beq $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -4160($fp)
label269:
	j label264
label266:
label259:
	j label251
label253:
label275:
	addi $t0, $fp, -48
	sw $t0, -4220($fp)
	lw $t0, -1352($fp)
	sw $t0, -4224($fp)
	li $t0, 40186
	sw $t0, -4228($fp)
	lw $t0, -4224($fp)
	lw $t1, -4228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4232($fp)
	li $t0, 4
	lw $t1, -4232($fp)
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
	bne $t1, $t2, label278
	j label276
label278:
	addi $t0, $fp, -180
	sw $t0, -4248($fp)
	li $t0, 3
	sw $t0, -4252($fp)
	li $t0, 4
	lw $t1, -4252($fp)
	mul $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	lw $t1, -4248($fp)
	add $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, 0($t0)
	sw $t1, -4264($fp)
	li $t0, 0
	lw $t1, -4264($fp)
	sub $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t1, -4268($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 48663
	sw $t0, -4280($fp)
	addi $t0, $fp, -4276
	sw $t0, -4284($fp)
	li $t0, 0
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4284($fp)
	lw $t1, -4292($fp)
	add $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4280($fp)
	lw $t1, -4296($fp)
	sw $t0, 0($t1)
	lw $t0, -4296($fp)
	lw $t1, 0($t0)
	sw $t1, -4300($fp)
	li $t0, 18800
	sw $t0, -4304($fp)
	addi $t0, $fp, -4276
	sw $t0, -4308($fp)
	li $t0, 1
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4308($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4304($fp)
	lw $t1, -4320($fp)
	sw $t0, 0($t1)
	lw $t0, -4320($fp)
	lw $t1, 0($t0)
	sw $t1, -4324($fp)
	addi $t0, $fp, -4276
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
	addi $t0, $fp, -4276
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
	lw $t0, -836($fp)
	sw $t0, -4368($fp)
	lw $t0, -1292($fp)
	sw $t0, -4372($fp)
	lw $t0, -4368($fp)
	lw $t1, -4372($fp)
	mul $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $ra, -4($fp)
	lw $v0, -4376($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, 4($fp)
	sw $t0, -4380($fp)
	lw $t1, -4380($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 0
	sw $t0, -4384($fp)
	addi $t0, $fp, -4276
	sw $t0, -4388($fp)
	lw $t0, -1364($fp)
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
	li $t0, 2745
	sw $t0, -4408($fp)
	lw $t0, -1268($fp)
	sw $t0, -4412($fp)
	lw $t0, -4408($fp)
	lw $t1, -4412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4416($fp)
	lw $t1, -4404($fp)
	lw $t2, -4416($fp)
	blt $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -4384($fp)
label283:
	lw $t0, -4384($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -4420($fp)
	j label281
label280:
	li $t0, 0
	sw $t0, -4424($fp)
	li $t0, 16294
	sw $t0, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label287
label287:
	lw $t0, -332($fp)
	sw $t0, -4432($fp)
	lw $t1, -4432($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label286
label286:
	lw $t0, -584($fp)
	sw $t0, -4436($fp)
	lw $t1, -4436($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -4424($fp)
label285:
	addi $sp, $sp, -4
	lw $t0, -4424($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4440($fp)
	addi $sp, $sp, 8
	li $t0, 6694
	sw $t0, -4444($fp)
	lw $t0, -4440($fp)
	lw $t1, -4444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4448($fp)
label281:
	li $t0, 0
	sw $t0, -4452($fp)
	li $t0, 0
	sw $t0, -4456($fp)
	lw $t0, -608($fp)
	sw $t0, -4460($fp)
	li $t0, 39959
	sw $t0, -4464($fp)
	lw $t1, -4460($fp)
	lw $t2, -4464($fp)
	blt $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -4456($fp)
label295:
	li $t0, 40506
	sw $t0, -4468($fp)
	lw $t1, -4456($fp)
	lw $t2, -4468($fp)
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -4452($fp)
label293:
	addi $sp, $sp, -4
	lw $t0, -4452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4472($fp)
	addi $sp, $sp, 8
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label291
label291:
	lw $t0, -584($fp)
	sw $t0, -4476($fp)
	lw $t1, -4476($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 0
	sw $t0, -4480($fp)
	li $t0, 41045
	sw $t0, -4484($fp)
	li $t0, 0
	sw $t0, -4488($fp)
	addi $t0, $fp, -48
	sw $t0, -4492($fp)
	li $t0, 0
	sw $t0, -4496($fp)
	li $t0, 4
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, -4492($fp)
	add $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, 0($t0)
	sw $t1, -4508($fp)
	lw $t1, -4508($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -4488($fp)
label300:
	lw $t1, -4484($fp)
	lw $t2, -4488($fp)
	bgt $t1, $t2, label296
	j label298
label298:
	li $t0, 0
	sw $t0, -4512($fp)
	addi $t0, $fp, -92
	sw $t0, -4516($fp)
	li $t0, 1
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
	lw $t1, -4532($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -4512($fp)
label302:
	lw $t0, -524($fp)
	sw $t0, -4536($fp)
	li $t0, 0
	lw $t1, -4536($fp)
	sub $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4512($fp)
	lw $t1, -4540($fp)
	sub $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t1, -4544($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -4480($fp)
label297:
	j label290
label289:
	li $t0, 0
	sw $t0, -4548($fp)
	lw $t0, -632($fp)
	sw $t0, -4552($fp)
	li $t0, 0
	lw $t1, -4552($fp)
	sub $t0, $t0, $t1
	sw $t0, -4556($fp)
	addi $sp, $sp, -4
	lw $t0, -4556($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4560($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4564($fp)
	li $t0, 0
	sw $t0, -4568($fp)
	lw $t0, -1304($fp)
	sw $t0, -4572($fp)
	li $t0, 64379
	sw $t0, -4576($fp)
	lw $t1, -4572($fp)
	lw $t2, -4576($fp)
	bne $t1, $t2, label307
	j label309
label309:
	li $t0, 47230
	sw $t0, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -4568($fp)
label308:
	addi $sp, $sp, -4
	lw $t0, -4568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4584($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4584($fp)
	sub $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t1, -4588($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label305:
	li $t0, 1
	sw $t0, -4564($fp)
label306:
	lw $t1, -4560($fp)
	lw $t2, -4564($fp)
	beq $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -4548($fp)
label304:
label290:
	j label275
label277:
label216:
label310:
	li $t0, 0
	sw $t0, -4592($fp)
	li $t0, 48219
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -4592($fp)
label314:
	lw $t0, -500($fp)
	sw $t0, -4600($fp)
	lw $t0, -4592($fp)
	lw $t1, -4600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4604($fp)
	addi $sp, $sp, -4
	lw $t0, -4604($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4608($fp)
	addi $sp, $sp, 8
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
label315:
	li $t0, 0
	sw $t0, -4612($fp)
	lw $t0, -1328($fp)
	sw $t0, -4616($fp)
	li $t0, 0
	lw $t1, -4616($fp)
	sub $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label318:
	li $t0, 1
	sw $t0, -4612($fp)
label319:
	li $t0, 55613
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -4628($fp)
	addi $sp, $sp, -4
	lw $t0, -4628($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4632($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4636($fp)
	lw $t0, 4($fp)
	sw $t0, -4640($fp)
	lw $t1, -4640($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label320:
	li $t0, 1
	sw $t0, -4636($fp)
label321:
	lw $t0, -4632($fp)
	lw $t1, -4636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4644($fp)
	li $t0, 0
	lw $t1, -4644($fp)
	sub $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4612($fp)
	lw $t1, -4648($fp)
	sub $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t1, -4652($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 60582
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -4672($fp)
	li $t0, 35157
	sw $t0, -4676($fp)
	addi $t0, $fp, -4660
	sw $t0, -4680($fp)
	li $t0, 0
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4680($fp)
	lw $t1, -4688($fp)
	add $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4676($fp)
	lw $t1, -4692($fp)
	sw $t0, 0($t1)
	lw $t0, -4692($fp)
	lw $t1, 0($t0)
	sw $t1, -4696($fp)
	li $t0, 16355
	sw $t0, -4700($fp)
	addi $t0, $fp, -4660
	sw $t0, -4704($fp)
	li $t0, 1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4704($fp)
	lw $t1, -4712($fp)
	add $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4700($fp)
	lw $t1, -4716($fp)
	sw $t0, 0($t1)
	lw $t0, -4716($fp)
	lw $t1, 0($t0)
	sw $t1, -4720($fp)
	li $t0, 10781
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -4732($fp)
label322:
	li $t0, 0
	sw $t0, -4736($fp)
	li $t0, 14274
	sw $t0, -4740($fp)
	li $t0, 0
	sw $t0, -4744($fp)
	lw $t0, -4728($fp)
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label328:
	li $t0, 1
	sw $t0, -4744($fp)
label329:
	lw $t0, -4740($fp)
	lw $t1, -4744($fp)
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	li $t0, 0
	lw $t1, -4752($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label326:
	li $t0, 1
	sw $t0, -4736($fp)
label327:
	lw $t0, -524($fp)
	sw $t0, -4760($fp)
	lw $t1, -4736($fp)
	lw $t2, -4760($fp)
	bge $t1, $t2, label323
	j label325
label325:
	lw $t0, -344($fp)
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -4768($fp)
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4772($fp)
	addi $sp, $sp, 8
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
label330:
	addi $t0, $fp, -48
	sw $t0, -4776($fp)
	li $t0, 3
	sw $t0, -4780($fp)
	li $t0, 4
	lw $t1, -4780($fp)
	mul $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, 0($t0)
	sw $t1, -4792($fp)
	lw $t1, -4792($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label333:
	li $t0, 29471
	sw $t0, -4796($fp)
	li $t0, 0
	lw $t1, -4796($fp)
	sub $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t1, -4800($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
label334:
	addi $t0, $fp, -80
	sw $t0, -4804($fp)
	li $t0, 0
	sw $t0, -4808($fp)
	lw $t0, -548($fp)
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label339
label339:
	addi $t0, $fp, -48
	sw $t0, -4816($fp)
	lw $t0, -4668($fp)
	sw $t0, -4820($fp)
	li $t0, 4
	lw $t1, -4820($fp)
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, 0($t0)
	sw $t1, -4832($fp)
	lw $t1, -4832($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -4808($fp)
label338:
	li $t0, 4
	lw $t1, -4808($fp)
	mul $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	lw $t1, -4804($fp)
	add $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	lw $t1, 0($t0)
	sw $t1, -4844($fp)
	lw $t1, -4844($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 5165
	sw $t0, -4848($fp)
	li $t0, 45914
	sw $t0, -4852($fp)
	li $t0, 9850
	sw $t0, -4856($fp)
	lw $t0, -4852($fp)
	lw $t1, -4856($fp)
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4848($fp)
	lw $t1, -4860($fp)
	sub $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $ra, -4($fp)
	lw $v0, -4864($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label334
label336:
	j label330
label332:
	j label322
label324:
	li $t0, 45351
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	sw $t0, -4876($fp)
label340:
	li $t0, 0
	sw $t0, -4880($fp)
	li $t0, 49056
	sw $t0, -4884($fp)
	lw $t0, -596($fp)
	sw $t0, -4888($fp)
	lw $t0, -4884($fp)
	lw $t1, -4888($fp)
	sub $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t1, -4892($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label345
label345:
	lw $t0, -4872($fp)
	sw $t0, -4896($fp)
	lw $t1, -4896($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -4880($fp)
label344:
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4900($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4904($fp)
	lw $t0, -476($fp)
	sw $t0, -4908($fp)
	li $t0, 0
	lw $t1, -4908($fp)
	sub $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -4904($fp)
label347:
	lw $t0, -4900($fp)
	lw $t1, -4904($fp)
	sub $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t1, -4916($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 0
	sw $t0, -4920($fp)
	li $t0, 0
	sw $t0, -4924($fp)
	lw $t0, -560($fp)
	sw $t0, -4928($fp)
	lw $t1, -4928($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -4924($fp)
label354:
	lw $t0, -836($fp)
	sw $t0, -4932($fp)
	lw $t0, -4924($fp)
	lw $t1, -4932($fp)
	add $t0, $t0, $t1
	sw $t0, -4936($fp)
	li $t0, 46061
	sw $t0, -4940($fp)
	lw $t0, -836($fp)
	sw $t0, -4944($fp)
	lw $t0, -4940($fp)
	lw $t1, -4944($fp)
	mul $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t1, -4936($fp)
	lw $t2, -4948($fp)
	beq $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -4920($fp)
label352:
	lw $t0, -4920($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -4952($fp)
	lw $t1, -4952($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 0
	sw $t0, -4956($fp)
	lw $t0, -1352($fp)
	sw $t0, -4960($fp)
	li $t0, 28478
	sw $t0, -4964($fp)
	li $t0, 2321
	sw $t0, -4968($fp)
	lw $t0, -4964($fp)
	lw $t1, -4968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4972($fp)
	lw $t0, -4960($fp)
	lw $t1, -4972($fp)
	sub $t0, $t0, $t1
	sw $t0, -4976($fp)
	li $t0, 48806
	sw $t0, -4980($fp)
	lw $t1, -4976($fp)
	lw $t2, -4980($fp)
	ble $t1, $t2, label357
	j label356
label357:
	lw $t0, -596($fp)
	sw $t0, -4984($fp)
	li $t0, 0
	lw $t1, -4984($fp)
	sub $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t1, -4988($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -4956($fp)
label356:
	li $t0, 44773
	sw $t0, -4992($fp)
	lw $t0, -1352($fp)
	sw $t0, -4996($fp)
	lw $t0, -4992($fp)
	lw $t1, -4996($fp)
	add $t0, $t0, $t1
	sw $t0, -5000($fp)
	li $t0, 47460
	sw $t0, -5004($fp)
	lw $t0, -5000($fp)
	lw $t1, -5004($fp)
	sub $t0, $t0, $t1
	sw $t0, -5008($fp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5012($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5016($fp)
	li $t0, 55499
	sw $t0, -5020($fp)
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5024($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -5024($fp)
	mul $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	lw $t1, -5016($fp)
	add $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	lw $t1, 0($t0)
	sw $t1, -5036($fp)
	lw $t0, -5012($fp)
	lw $t1, -5036($fp)
	mul $t0, $t0, $t1
	sw $t0, -5040($fp)
	j label350
label349:
	li $t0, 0
	sw $t0, -5044($fp)
	li $t0, 0
	sw $t0, -5048($fp)
	li $t0, 0
	sw $t0, -5052($fp)
	lw $t0, -608($fp)
	sw $t0, -5056($fp)
	li $t0, 19196
	sw $t0, -5060($fp)
	lw $t1, -5056($fp)
	lw $t2, -5060($fp)
	bgt $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -5052($fp)
label363:
	li $t0, 22430
	sw $t0, -5064($fp)
	lw $t1, -5052($fp)
	lw $t2, -5064($fp)
	ble $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -5048($fp)
label361:
	addi $sp, $sp, -4
	lw $t0, -5048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5068($fp)
	addi $sp, $sp, 8
	lw $t1, -5068($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -5044($fp)
label359:
label350:
	j label340
label342:
	li $t0, 31008
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	sw $t0, -5080($fp)
	lw $t0, -536($fp)
	sw $t0, -5084($fp)
	li $t0, 0
	sw $t0, -5088($fp)
	li $t0, 23446
	sw $t0, -5092($fp)
	lw $t0, -536($fp)
	sw $t0, -5096($fp)
	lw $t0, -5092($fp)
	lw $t1, -5096($fp)
	add $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -1328($fp)
	sw $t0, -5104($fp)
	lw $t1, -5100($fp)
	lw $t2, -5104($fp)
	beq $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -5088($fp)
label365:
	addi $sp, $sp, -4
	lw $t0, -5088($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5108($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -5108($fp)
	sub $t0, $t0, $t1
	sw $t0, -5112($fp)
	li $t0, 0
	sw $t0, -5116($fp)
	lw $t0, -620($fp)
	sw $t0, -5120($fp)
	li $t0, 62624
	sw $t0, -5124($fp)
	li $t0, 0
	lw $t1, -5124($fp)
	sub $t0, $t0, $t1
	sw $t0, -5128($fp)
	addi $sp, $sp, -4
	lw $t0, -5128($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5132($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -5132($fp)
	sub $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t1, -5120($fp)
	lw $t2, -5136($fp)
	blt $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -5116($fp)
label367:
	lw $t0, -5076($fp)
	sw $t0, -5140($fp)
	li $t0, 0
	sw $t0, -5144($fp)
	li $t0, 43803
	sw $t0, -5148($fp)
	lw $t1, -5148($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label368
label368:
	li $t0, 1
	sw $t0, -5144($fp)
label369:
	li $t0, 52842
	sw $t0, -5152($fp)
	li $t0, 0
	lw $t1, -5152($fp)
	sub $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5144($fp)
	lw $t1, -5156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5160($fp)
	lw $t0, -5140($fp)
	lw $t1, -5160($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	addi $t0, $fp, -4660
	sw $t0, -5168($fp)
	addi $t0, $fp, -92
	sw $t0, -5172($fp)
	lw $t0, -608($fp)
	sw $t0, -5176($fp)
	li $t0, 4
	lw $t1, -5176($fp)
	mul $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	lw $t1, -5172($fp)
	add $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	lw $t1, 0($t0)
	sw $t1, -5188($fp)
	li $t0, 0
	lw $t1, -5188($fp)
	sub $t0, $t0, $t1
	sw $t0, -5192($fp)
	li $t0, 4
	lw $t1, -5192($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, -5168($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	li $t0, 0
	lw $t1, -5204($fp)
	sub $t0, $t0, $t1
	sw $t0, -5208($fp)
	j label315
label317:
	j label310
label312:
	addi $t0, $fp, -28
	sw $t0, -5212($fp)
	li $t0, 0
	sw $t0, -5216($fp)
	li $t0, 4
	lw $t1, -5216($fp)
	mul $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	lw $t1, -5212($fp)
	add $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, 0($t0)
	sw $t1, -5228($fp)
	lw $t0, -5228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -5232($fp)
	li $t0, 1
	sw $t0, -5236($fp)
	li $t0, 4
	lw $t1, -5236($fp)
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, -5232($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	lw $t1, 0($t0)
	sw $t1, -5248($fp)
	lw $t0, -5248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -5252($fp)
	li $t0, 2
	sw $t0, -5256($fp)
	li $t0, 4
	lw $t1, -5256($fp)
	mul $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	lw $t1, -5252($fp)
	add $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	lw $t1, 0($t0)
	sw $t1, -5268($fp)
	lw $t0, -5268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -5272($fp)
	li $t0, 3
	sw $t0, -5276($fp)
	li $t0, 4
	lw $t1, -5276($fp)
	mul $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	lw $t1, -5272($fp)
	add $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	lw $t1, 0($t0)
	sw $t1, -5288($fp)
	lw $t0, -5288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -5292($fp)
	li $t0, 4
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
	lw $t0, -5308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -5312($fp)
	li $t0, 5
	sw $t0, -5316($fp)
	li $t0, 4
	lw $t1, -5316($fp)
	mul $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	lw $t1, -5312($fp)
	add $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, 0($t0)
	sw $t1, -5328($fp)
	lw $t0, -5328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -5340($fp)
	li $t0, 0
	sw $t0, -5344($fp)
	li $t0, 4
	lw $t1, -5344($fp)
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	lw $t1, -5340($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, 0($t0)
	sw $t1, -5356($fp)
	lw $t0, -5356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -5360($fp)
	li $t0, 1
	sw $t0, -5364($fp)
	li $t0, 4
	lw $t1, -5364($fp)
	mul $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	lw $t1, 0($t0)
	sw $t1, -5376($fp)
	lw $t0, -5376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -5380($fp)
	li $t0, 2
	sw $t0, -5384($fp)
	li $t0, 4
	lw $t1, -5384($fp)
	mul $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, -5380($fp)
	add $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, 0($t0)
	sw $t1, -5396($fp)
	lw $t0, -5396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -5400($fp)
	li $t0, 3
	sw $t0, -5404($fp)
	li $t0, 4
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	lw $t1, -5400($fp)
	add $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, 0($t0)
	sw $t1, -5416($fp)
	lw $t0, -5416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -5420($fp)
	li $t0, 4
	sw $t0, -5424($fp)
	li $t0, 4
	lw $t1, -5424($fp)
	mul $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	lw $t1, -5420($fp)
	add $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, 0($t0)
	sw $t1, -5436($fp)
	lw $t0, -5436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5496($fp)
	li $t0, 0
	sw $t0, -5500($fp)
	li $t0, 4
	lw $t1, -5500($fp)
	mul $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	lw $t1, -5496($fp)
	add $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	lw $t1, 0($t0)
	sw $t1, -5512($fp)
	lw $t0, -5512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5516($fp)
	li $t0, 1
	sw $t0, -5520($fp)
	li $t0, 4
	lw $t1, -5520($fp)
	mul $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	lw $t1, -5516($fp)
	add $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	lw $t1, 0($t0)
	sw $t1, -5532($fp)
	lw $t0, -5532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5536($fp)
	li $t0, 2
	sw $t0, -5540($fp)
	li $t0, 4
	lw $t1, -5540($fp)
	mul $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	lw $t1, -5536($fp)
	add $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	lw $t1, 0($t0)
	sw $t1, -5552($fp)
	lw $t0, -5552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5556($fp)
	li $t0, 3
	sw $t0, -5560($fp)
	li $t0, 4
	lw $t1, -5560($fp)
	mul $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	lw $t1, -5556($fp)
	add $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	lw $t1, 0($t0)
	sw $t1, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5576($fp)
	li $t0, 4
	sw $t0, -5580($fp)
	li $t0, 4
	lw $t1, -5580($fp)
	mul $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	lw $t1, -5576($fp)
	add $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	lw $t1, 0($t0)
	sw $t1, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5596($fp)
	li $t0, 5
	sw $t0, -5600($fp)
	li $t0, 4
	lw $t1, -5600($fp)
	mul $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, -5596($fp)
	add $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	lw $t1, 0($t0)
	sw $t1, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5616($fp)
	li $t0, 6
	sw $t0, -5620($fp)
	li $t0, 4
	lw $t1, -5620($fp)
	mul $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	lw $t1, -5616($fp)
	add $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	lw $t1, 0($t0)
	sw $t1, -5632($fp)
	lw $t0, -5632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5636($fp)
	li $t0, 7
	sw $t0, -5640($fp)
	li $t0, 4
	lw $t1, -5640($fp)
	mul $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	lw $t1, -5636($fp)
	add $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	lw $t1, 0($t0)
	sw $t1, -5652($fp)
	lw $t0, -5652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5660($fp)
	li $t0, 0
	sw $t0, -5664($fp)
	li $t0, 4
	lw $t1, -5664($fp)
	mul $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, -5660($fp)
	add $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, 0($t0)
	sw $t1, -5676($fp)
	lw $t0, -5676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5680($fp)
	li $t0, 1
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
	lw $t0, -5696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5700($fp)
	li $t0, 2
	sw $t0, -5704($fp)
	li $t0, 4
	lw $t1, -5704($fp)
	mul $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	lw $t1, -5700($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	lw $t1, 0($t0)
	sw $t1, -5716($fp)
	lw $t0, -5716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5720($fp)
	li $t0, 0
	sw $t0, -5724($fp)
	li $t0, 4
	lw $t1, -5724($fp)
	mul $t0, $t0, $t1
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	lw $t1, -5720($fp)
	add $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	lw $t1, 0($t0)
	sw $t1, -5736($fp)
	lw $t0, -5736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5740($fp)
	li $t0, 0
	sw $t0, -5744($fp)
	li $t0, 4
	lw $t1, -5744($fp)
	mul $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	lw $t1, -5740($fp)
	add $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	lw $t1, 0($t0)
	sw $t1, -5756($fp)
	lw $t0, -5756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5760($fp)
	li $t0, 1
	sw $t0, -5764($fp)
	li $t0, 4
	lw $t1, -5764($fp)
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	lw $t0, -5776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5780($fp)
	li $t0, 2
	sw $t0, -5784($fp)
	li $t0, 4
	lw $t1, -5784($fp)
	mul $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	lw $t1, -5780($fp)
	add $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	lw $t1, 0($t0)
	sw $t1, -5796($fp)
	lw $t0, -5796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5800($fp)
	li $t0, 3
	sw $t0, -5804($fp)
	li $t0, 4
	lw $t1, -5804($fp)
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	lw $t1, -5800($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, 0($t0)
	sw $t1, -5816($fp)
	lw $t0, -5816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5820($fp)
	li $t0, 4
	sw $t0, -5824($fp)
	li $t0, 4
	lw $t1, -5824($fp)
	mul $t0, $t0, $t1
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	lw $t1, -5820($fp)
	add $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	lw $t1, 0($t0)
	sw $t1, -5836($fp)
	lw $t0, -5836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5840($fp)
	li $t0, 5
	sw $t0, -5844($fp)
	li $t0, 4
	lw $t1, -5844($fp)
	mul $t0, $t0, $t1
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	lw $t1, -5840($fp)
	add $t0, $t0, $t1
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	lw $t1, 0($t0)
	sw $t1, -5856($fp)
	lw $t0, -5856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5860($fp)
	li $t0, 6
	sw $t0, -5864($fp)
	li $t0, 4
	lw $t1, -5864($fp)
	mul $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	lw $t1, -5860($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, 0($t0)
	sw $t1, -5876($fp)
	lw $t0, -5876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5880($fp)
	li $t0, 0
	sw $t0, -5884($fp)
	li $t0, 4
	lw $t1, -5884($fp)
	mul $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	lw $t1, -5880($fp)
	add $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, 0($t0)
	sw $t1, -5896($fp)
	lw $t0, -5896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5900($fp)
	li $t0, 1
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
	lw $t0, -5916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5920($fp)
	li $t0, 2
	sw $t0, -5924($fp)
	li $t0, 4
	lw $t1, -5924($fp)
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5928($fp)
	lw $t1, -5920($fp)
	add $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	lw $t1, 0($t0)
	sw $t1, -5936($fp)
	lw $t0, -5936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5940($fp)
	li $t0, 3
	sw $t0, -5944($fp)
	li $t0, 4
	lw $t1, -5944($fp)
	mul $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	lw $t1, -5940($fp)
	add $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	lw $t1, 0($t0)
	sw $t1, -5956($fp)
	lw $t0, -5956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5960($fp)
	li $t0, 4
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
	lw $t0, -5976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5980($fp)
	li $t0, 5
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
	lw $t0, -5996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -6020($fp)
	lw $t0, -6020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1328($fp)
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1340($fp)
	sw $t0, -6028($fp)
	lw $t0, -6028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1352($fp)
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1364($fp)
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -6040($fp)
	li $t0, 0
	sw $t0, -6044($fp)
	li $t0, 4
	lw $t1, -6044($fp)
	mul $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	lw $t1, -6040($fp)
	add $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	lw $t1, 0($t0)
	sw $t1, -6056($fp)
	lw $t0, -6056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -6060($fp)
	li $t0, 1
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
	lw $t0, -6076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -6080($fp)
	li $t0, 2
	sw $t0, -6084($fp)
	li $t0, 4
	lw $t1, -6084($fp)
	mul $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	lw $t1, -6080($fp)
	add $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	lw $t1, 0($t0)
	sw $t1, -6096($fp)
	lw $t0, -6096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -6100($fp)
	li $t0, 3
	sw $t0, -6104($fp)
	li $t0, 4
	lw $t1, -6104($fp)
	mul $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	lw $t1, -6100($fp)
	add $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	lw $t1, 0($t0)
	sw $t1, -6116($fp)
	lw $t0, -6116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -6120($fp)
	li $t0, 4
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
	lw $t0, -6136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -6140($fp)
	li $t0, 5
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
	lw $t0, -6156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -6160($fp)
	li $t0, 6
	sw $t0, -6164($fp)
	li $t0, 4
	lw $t1, -6164($fp)
	mul $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	lw $t1, -6160($fp)
	add $t0, $t0, $t1
	sw $t0, -6172($fp)
	lw $t0, -6172($fp)
	lw $t1, 0($t0)
	sw $t1, -6176($fp)
	lw $t0, -6176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -6180($fp)
	li $t0, 7
	sw $t0, -6184($fp)
	li $t0, 4
	lw $t1, -6184($fp)
	mul $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	lw $t1, -6180($fp)
	add $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	lw $t1, 0($t0)
	sw $t1, -6196($fp)
	lw $t0, -6196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 61467
	sw $t0, -6200($fp)
	li $t0, 25497
	sw $t0, -6204($fp)
	lw $t0, -6200($fp)
	lw $t1, -6204($fp)
	mul $t0, $t0, $t1
	sw $t0, -6208($fp)
	li $t0, 0
	sw $t0, -6212($fp)
	lw $t0, -1280($fp)
	sw $t0, -6216($fp)
	lw $t1, -6216($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label372:
	lw $t0, -1328($fp)
	sw $t0, -6220($fp)
	lw $t1, -6220($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -6212($fp)
label371:
	addi $sp, $sp, -4
	lw $t0, -6212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6224($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -6224($fp)
	sub $t0, $t0, $t1
	sw $t0, -6228($fp)
	lw $t0, -6208($fp)
	lw $t1, -6228($fp)
	mul $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $ra, -4($fp)
	lw $v0, -6232($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -536
	li $t0, 35525
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
	li $t0, 51544
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
	li $t0, 20543
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
	li $t0, 5146
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
	li $t0, 2363
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
	li $t0, 31324
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
	li $t0, 19420
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
	li $t0, 31780
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
	li $t0, 20460
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
	lw $t0, 8($fp)
	sw $t0, -260($fp)
	li $t0, 48891
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -268($fp)
	lw $t0, 8($fp)
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -276($fp)
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -280($fp)
	addi $sp, $sp, 8
	li $t0, 36946
	sw $t0, -284($fp)
	li $t0, 839
	sw $t0, -288($fp)
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -280($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -300($fp)
	addi $t0, $fp, -40
	sw $t0, -304($fp)
	li $t0, 0
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
	lw $t0, -320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -324($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -344($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -364($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -384($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -404($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -424($fp)
	li $t0, 6
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
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -444($fp)
	li $t0, 7
	sw $t0, -448($fp)
	li $t0, 4
	lw $t1, -448($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	lw $t0, -460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -464($fp)
	li $t0, 8
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
	lw $t0, -480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -484($fp)
	li $t0, 58741
	sw $t0, -488($fp)
	lw $t0, 8($fp)
	sw $t0, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -496($fp)
	lw $t0, 8($fp)
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, 8($fp)
	sw $t0, -508($fp)
	li $t0, 16761
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	mul $t0, $t0, $t1
	sw $t0, -516($fp)
	li $t0, 0
	lw $t1, -516($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	addi $sp, $sp, -4
	lw $t0, -520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -524($fp)
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	lw $t1, -524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -528($fp)
	li $t0, 4
	lw $t1, -528($fp)
	mul $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	lw $t1, -484($fp)
	add $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	lw $t1, 0($t0)
	sw $t1, -540($fp)
	lw $ra, -4($fp)
	lw $v0, -540($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1436
	li $t0, 49895
	sw $t0, -76($fp)
	addi $t0, $fp, -32
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
	li $t0, 39266
	sw $t0, -100($fp)
	addi $t0, $fp, -32
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
	li $t0, 45240
	sw $t0, -124($fp)
	addi $t0, $fp, -32
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
	li $t0, 52216
	sw $t0, -148($fp)
	addi $t0, $fp, -32
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
	li $t0, 22536
	sw $t0, -172($fp)
	addi $t0, $fp, -32
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
	li $t0, 24477
	sw $t0, -196($fp)
	addi $t0, $fp, -32
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
	li $t0, 34141
	sw $t0, -220($fp)
	addi $t0, $fp, -32
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
	li $t0, 12499
	sw $t0, -244($fp)
	addi $t0, $fp, -72
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
	li $t0, 43673
	sw $t0, -268($fp)
	addi $t0, $fp, -72
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
	li $t0, 56571
	sw $t0, -292($fp)
	addi $t0, $fp, -72
	sw $t0, -296($fp)
	li $t0, 2
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
	li $t0, 43508
	sw $t0, -316($fp)
	addi $t0, $fp, -72
	sw $t0, -320($fp)
	li $t0, 3
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
	li $t0, 1583
	sw $t0, -340($fp)
	addi $t0, $fp, -72
	sw $t0, -344($fp)
	li $t0, 4
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
	li $t0, 53659
	sw $t0, -364($fp)
	addi $t0, $fp, -72
	sw $t0, -368($fp)
	li $t0, 5
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
	li $t0, 21775
	sw $t0, -388($fp)
	addi $t0, $fp, -72
	sw $t0, -392($fp)
	li $t0, 6
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
	li $t0, 54425
	sw $t0, -412($fp)
	addi $t0, $fp, -72
	sw $t0, -416($fp)
	li $t0, 7
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
	li $t0, 49591
	sw $t0, -436($fp)
	addi $t0, $fp, -72
	sw $t0, -440($fp)
	li $t0, 8
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
	li $t0, 47272
	sw $t0, -460($fp)
	addi $t0, $fp, -72
	sw $t0, -464($fp)
	li $t0, 9
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
	addi $t0, $fp, -32
	sw $t0, -484($fp)
	li $t0, 0
	sw $t0, -488($fp)
	li $t0, 4
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	lw $t1, -484($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t1, 0($t0)
	sw $t1, -500($fp)
	lw $t0, -500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -504($fp)
	li $t0, 1
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
	lw $t0, -520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -524($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -544($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -564($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -584($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -604($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -624($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -644($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -664($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -684($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -704($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -724($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -744($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -764($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -784($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -804($fp)
	li $t0, 9
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
	li $t0, 24414
	sw $t0, -824($fp)
	li $t0, 0
	lw $t1, -824($fp)
	sub $t0, $t0, $t1
	sw $t0, -828($fp)
	addi $t0, $fp, -32
	sw $t0, -832($fp)
	li $t0, 0
	sw $t0, -836($fp)
	lw $t0, 4($fp)
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label375:
	lw $t0, 8($fp)
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -836($fp)
label374:
	li $t0, 4
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	lw $t0, -828($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $ra, -4($fp)
	lw $v0, -860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 35599
	sw $t0, -872($fp)
	addi $t0, $fp, -868
	sw $t0, -876($fp)
	li $t0, 0
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
	li $t0, 2279
	sw $t0, -896($fp)
	addi $t0, $fp, -868
	sw $t0, -900($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -920($fp)
	addi $t0, $fp, -868
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
	lw $t0, 4($fp)
	sw $t0, -944($fp)
	lw $t1, -940($fp)
	lw $t2, -944($fp)
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -920($fp)
label377:
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -948($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -952($fp)
	li $t0, 0
	sw $t0, -956($fp)
	li $t0, 0
	sw $t0, -960($fp)
	addi $t0, $fp, -868
	sw $t0, -964($fp)
	li $t0, 1
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
	lw $t1, -980($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label382
label383:
	li $t0, 33603
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -960($fp)
label382:
	addi $sp, $sp, -4
	lw $t0, -960($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -988($fp)
	addi $sp, $sp, 8
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label379
label380:
	li $t0, 48980
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -956($fp)
label379:
	addi $t0, $fp, -72
	sw $t0, -996($fp)
	lw $t0, 4($fp)
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
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1016($fp)
	addi $sp, $sp, 20
	lw $t0, 4($fp)
	sw $t0, -1020($fp)
	lw $t0, 4($fp)
	sw $t0, -1024($fp)
	lw $t0, -1020($fp)
	lw $t1, -1024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1028($fp)
	li $t0, 0
	sw $t0, -1032($fp)
	li $t0, 32335
	sw $t0, -1036($fp)
	li $t0, 41153
	sw $t0, -1040($fp)
	lw $t1, -1036($fp)
	lw $t2, -1040($fp)
	bge $t1, $t2, label386
	j label385
label386:
	lw $t0, 8($fp)
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -1032($fp)
label385:
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1048($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1052($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -1072($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -1092($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -1112($fp)
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -1192($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -1212($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1232($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -1252($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -1272($fp)
	li $t0, 4
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
	li $t0, 5
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
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1332($fp)
	li $t0, 7
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
	li $t0, 8
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
	li $t0, 9
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
	li $t0, 0
	sw $t0, -1392($fp)
	li $t0, 0
	sw $t0, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	lw $t0, 8($fp)
	sw $t0, -1404($fp)
	li $t0, 0
	lw $t1, -1404($fp)
	sub $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label391
label391:
	li $t0, 1
	sw $t0, -1400($fp)
label392:
	li $t0, 0
	lw $t1, -1400($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label389:
	li $t0, 1
	sw $t0, -1396($fp)
label390:
	addi $t0, $fp, -72
	sw $t0, -1416($fp)
	li $t0, 0
	sw $t0, -1420($fp)
	li $t0, 54902
	sw $t0, -1424($fp)
	li $t0, 25540
	sw $t0, -1428($fp)
	lw $t1, -1424($fp)
	lw $t2, -1428($fp)
	ble $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -1420($fp)
label394:
	li $t0, 4
	lw $t1, -1420($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	lw $t1, -1396($fp)
	lw $t2, -1440($fp)
	bge $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -1392($fp)
label388:
	lw $ra, -4($fp)
	lw $v0, -1392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -148
	lw $t0, 12($fp)
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	lw $t0, 16($fp)
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label398
label398:
	li $t0, 1
	sw $t0, -12($fp)
label399:
	li $t0, 0
	lw $t1, -12($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	li $t0, 0
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t1, -8($fp)
	lw $t2, -24($fp)
	blt $t1, $t2, label395
	j label396
label395:
label400:
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, 20($fp)
	sw $t0, -32($fp)
	lw $t0, 8($fp)
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	bge $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -28($fp)
label404:
	lw $t0, -28($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	lw $t0, 12($fp)
	sw $t0, -48($fp)
	li $t0, 25942
	sw $t0, -52($fp)
	lw $t0, 4($fp)
	sw $t0, -56($fp)
	li $t0, 64806
	sw $t0, -60($fp)
	li $t0, 0
	lw $t1, -60($fp)
	sub $t0, $t0, $t1
	sw $t0, -64($fp)
	li $t0, 37619
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	lw $t0, 16($fp)
	sw $t0, -80($fp)
	li $t0, 57915
	sw $t0, -84($fp)
	lw $t1, -80($fp)
	lw $t2, -84($fp)
	beq $t1, $t2, label407
	j label406
label407:
	li $t0, 39262
	sw $t0, -88($fp)
	lw $t1, -88($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -76($fp)
label406:
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -92($fp)
	addi $sp, $sp, 20
	lw $t0, -48($fp)
	lw $t1, -92($fp)
	add $t0, $t0, $t1
	sw $t0, -96($fp)
	li $t0, 21806
	sw $t0, -100($fp)
	lw $t0, 16($fp)
	sw $t0, -104($fp)
	lw $t0, -100($fp)
	lw $t1, -104($fp)
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	li $t0, 62096
	sw $t0, -112($fp)
	lw $t0, -108($fp)
	lw $t1, -112($fp)
	mul $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -96($fp)
	lw $t1, -116($fp)
	sub $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, 16($fp)
	sw $t0, -124($fp)
	lw $t0, -120($fp)
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $ra, -4($fp)
	lw $v0, -128($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label400
label402:
label396:
	li $t0, 0
	sw $t0, -132($fp)
	lw $t0, 20($fp)
	sw $t0, -136($fp)
	lw $t1, -136($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label410
label410:
	lw $t0, 4($fp)
	sw $t0, -140($fp)
	li $t0, 60083
	sw $t0, -144($fp)
	li $t0, 34306
	sw $t0, -148($fp)
	lw $t0, -144($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t1, -140($fp)
	lw $t2, -152($fp)
	bge $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -132($fp)
label409:
	lw $ra, -4($fp)
	lw $v0, -132($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -13904
	li $t0, 40233
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 51119
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 12278
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 41816
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 39242
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 34053
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 30706
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 23297
	sw $t0, -492($fp)
	addi $t0, $fp, -8
	sw $t0, -496($fp)
	li $t0, 0
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
	li $t0, 15789
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 55120
	sw $t0, -528($fp)
	addi $t0, $fp, -36
	sw $t0, -532($fp)
	li $t0, 0
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
	li $t0, 58897
	sw $t0, -552($fp)
	addi $t0, $fp, -36
	sw $t0, -556($fp)
	li $t0, 1
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
	li $t0, 18068
	sw $t0, -576($fp)
	addi $t0, $fp, -36
	sw $t0, -580($fp)
	li $t0, 2
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
	li $t0, 19145
	sw $t0, -600($fp)
	addi $t0, $fp, -36
	sw $t0, -604($fp)
	li $t0, 3
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
	li $t0, 31324
	sw $t0, -624($fp)
	addi $t0, $fp, -36
	sw $t0, -628($fp)
	li $t0, 4
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
	li $t0, 51671
	sw $t0, -648($fp)
	addi $t0, $fp, -36
	sw $t0, -652($fp)
	li $t0, 5
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
	li $t0, 2589
	sw $t0, -672($fp)
	addi $t0, $fp, -36
	sw $t0, -676($fp)
	li $t0, 6
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
	li $t0, 35531
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 40198
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 34925
	sw $t0, -720($fp)
	addi $t0, $fp, -68
	sw $t0, -724($fp)
	li $t0, 0
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
	li $t0, 11149
	sw $t0, -744($fp)
	addi $t0, $fp, -68
	sw $t0, -748($fp)
	li $t0, 1
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
	li $t0, 29565
	sw $t0, -768($fp)
	addi $t0, $fp, -68
	sw $t0, -772($fp)
	li $t0, 2
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
	li $t0, 60465
	sw $t0, -792($fp)
	addi $t0, $fp, -68
	sw $t0, -796($fp)
	li $t0, 3
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
	li $t0, 3528
	sw $t0, -816($fp)
	addi $t0, $fp, -68
	sw $t0, -820($fp)
	li $t0, 4
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
	li $t0, 3291
	sw $t0, -840($fp)
	addi $t0, $fp, -68
	sw $t0, -844($fp)
	li $t0, 5
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
	li $t0, 59736
	sw $t0, -864($fp)
	addi $t0, $fp, -68
	sw $t0, -868($fp)
	li $t0, 6
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
	li $t0, 41147
	sw $t0, -888($fp)
	addi $t0, $fp, -68
	sw $t0, -892($fp)
	li $t0, 7
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
	li $t0, 29233
	sw $t0, -912($fp)
	addi $t0, $fp, -72
	sw $t0, -916($fp)
	li $t0, 0
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
	li $t0, 16006
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 37707
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	li $t0, 23781
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	li $t0, 50312
	sw $t0, -972($fp)
	addi $t0, $fp, -96
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
	li $t0, 12404
	sw $t0, -996($fp)
	addi $t0, $fp, -96
	sw $t0, -1000($fp)
	li $t0, 1
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
	li $t0, 9364
	sw $t0, -1020($fp)
	addi $t0, $fp, -96
	sw $t0, -1024($fp)
	li $t0, 2
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1024($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1020($fp)
	lw $t1, -1036($fp)
	sw $t0, 0($t1)
	lw $t0, -1036($fp)
	lw $t1, 0($t0)
	sw $t1, -1040($fp)
	li $t0, 62590
	sw $t0, -1044($fp)
	addi $t0, $fp, -96
	sw $t0, -1048($fp)
	li $t0, 3
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1048($fp)
	lw $t1, -1056($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1044($fp)
	lw $t1, -1060($fp)
	sw $t0, 0($t1)
	lw $t0, -1060($fp)
	lw $t1, 0($t0)
	sw $t1, -1064($fp)
	li $t0, 54220
	sw $t0, -1068($fp)
	addi $t0, $fp, -96
	sw $t0, -1072($fp)
	li $t0, 4
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1072($fp)
	lw $t1, -1080($fp)
	add $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1068($fp)
	lw $t1, -1084($fp)
	sw $t0, 0($t1)
	lw $t0, -1084($fp)
	lw $t1, 0($t0)
	sw $t1, -1088($fp)
	li $t0, 48606
	sw $t0, -1092($fp)
	addi $t0, $fp, -96
	sw $t0, -1096($fp)
	li $t0, 5
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
	li $t0, 31107
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 19390
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 6368
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 46896
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 8975
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 65265
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 64964
	sw $t0, -1188($fp)
	addi $t0, $fp, -124
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
	li $t0, 28120
	sw $t0, -1212($fp)
	addi $t0, $fp, -124
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
	li $t0, 31053
	sw $t0, -1236($fp)
	addi $t0, $fp, -124
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
	li $t0, 51099
	sw $t0, -1260($fp)
	addi $t0, $fp, -124
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
	li $t0, 30709
	sw $t0, -1284($fp)
	addi $t0, $fp, -124
	sw $t0, -1288($fp)
	li $t0, 4
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
	li $t0, 1048
	sw $t0, -1308($fp)
	addi $t0, $fp, -124
	sw $t0, -1312($fp)
	li $t0, 5
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
	li $t0, 25762
	sw $t0, -1332($fp)
	addi $t0, $fp, -124
	sw $t0, -1336($fp)
	li $t0, 6
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
	li $t0, 98
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 12197
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 55327
	sw $t0, -1380($fp)
	addi $t0, $fp, -152
	sw $t0, -1384($fp)
	li $t0, 0
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
	li $t0, 60564
	sw $t0, -1404($fp)
	addi $t0, $fp, -152
	sw $t0, -1408($fp)
	li $t0, 1
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
	li $t0, 15725
	sw $t0, -1428($fp)
	addi $t0, $fp, -152
	sw $t0, -1432($fp)
	li $t0, 2
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
	li $t0, 58618
	sw $t0, -1452($fp)
	addi $t0, $fp, -152
	sw $t0, -1456($fp)
	li $t0, 3
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
	li $t0, 54764
	sw $t0, -1476($fp)
	addi $t0, $fp, -152
	sw $t0, -1480($fp)
	li $t0, 4
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
	li $t0, 56872
	sw $t0, -1500($fp)
	addi $t0, $fp, -152
	sw $t0, -1504($fp)
	li $t0, 5
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1504($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1500($fp)
	lw $t1, -1516($fp)
	sw $t0, 0($t1)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	li $t0, 22315
	sw $t0, -1524($fp)
	addi $t0, $fp, -152
	sw $t0, -1528($fp)
	li $t0, 6
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1528($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1524($fp)
	lw $t1, -1540($fp)
	sw $t0, 0($t1)
	lw $t0, -1540($fp)
	lw $t1, 0($t0)
	sw $t1, -1544($fp)
	li $t0, 5234
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	li $t0, 29043
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	li $t0, 46096
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	li $t0, 55547
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	li $t0, 41447
	sw $t0, -1596($fp)
	addi $t0, $fp, -168
	sw $t0, -1600($fp)
	li $t0, 0
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1600($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1596($fp)
	lw $t1, -1612($fp)
	sw $t0, 0($t1)
	lw $t0, -1612($fp)
	lw $t1, 0($t0)
	sw $t1, -1616($fp)
	li $t0, 55460
	sw $t0, -1620($fp)
	addi $t0, $fp, -168
	sw $t0, -1624($fp)
	li $t0, 1
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1624($fp)
	lw $t1, -1632($fp)
	add $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1620($fp)
	lw $t1, -1636($fp)
	sw $t0, 0($t1)
	lw $t0, -1636($fp)
	lw $t1, 0($t0)
	sw $t1, -1640($fp)
	li $t0, 52601
	sw $t0, -1644($fp)
	addi $t0, $fp, -168
	sw $t0, -1648($fp)
	li $t0, 2
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1648($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1644($fp)
	lw $t1, -1660($fp)
	sw $t0, 0($t1)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	li $t0, 30132
	sw $t0, -1668($fp)
	addi $t0, $fp, -168
	sw $t0, -1672($fp)
	li $t0, 3
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1672($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1668($fp)
	lw $t1, -1684($fp)
	sw $t0, 0($t1)
	lw $t0, -1684($fp)
	lw $t1, 0($t0)
	sw $t1, -1688($fp)
	li $t0, 38531
	sw $t0, -1692($fp)
	addi $t0, $fp, -184
	sw $t0, -1696($fp)
	li $t0, 0
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1696($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1692($fp)
	lw $t1, -1708($fp)
	sw $t0, 0($t1)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	li $t0, 18173
	sw $t0, -1716($fp)
	addi $t0, $fp, -184
	sw $t0, -1720($fp)
	li $t0, 1
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1720($fp)
	lw $t1, -1728($fp)
	add $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1716($fp)
	lw $t1, -1732($fp)
	sw $t0, 0($t1)
	lw $t0, -1732($fp)
	lw $t1, 0($t0)
	sw $t1, -1736($fp)
	li $t0, 49522
	sw $t0, -1740($fp)
	addi $t0, $fp, -184
	sw $t0, -1744($fp)
	li $t0, 2
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1744($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1740($fp)
	lw $t1, -1756($fp)
	sw $t0, 0($t1)
	lw $t0, -1756($fp)
	lw $t1, 0($t0)
	sw $t1, -1760($fp)
	li $t0, 44899
	sw $t0, -1764($fp)
	addi $t0, $fp, -184
	sw $t0, -1768($fp)
	li $t0, 3
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1768($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1764($fp)
	lw $t1, -1780($fp)
	sw $t0, 0($t1)
	lw $t0, -1780($fp)
	lw $t1, 0($t0)
	sw $t1, -1784($fp)
	li $t0, 65069
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	li $t0, 58497
	sw $t0, -1800($fp)
	addi $t0, $fp, -212
	sw $t0, -1804($fp)
	li $t0, 0
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
	li $t0, 44628
	sw $t0, -1824($fp)
	addi $t0, $fp, -212
	sw $t0, -1828($fp)
	li $t0, 1
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
	li $t0, 64498
	sw $t0, -1848($fp)
	addi $t0, $fp, -212
	sw $t0, -1852($fp)
	li $t0, 2
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
	li $t0, 21081
	sw $t0, -1872($fp)
	addi $t0, $fp, -212
	sw $t0, -1876($fp)
	li $t0, 3
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
	li $t0, 10145
	sw $t0, -1896($fp)
	addi $t0, $fp, -212
	sw $t0, -1900($fp)
	li $t0, 4
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
	li $t0, 50061
	sw $t0, -1920($fp)
	addi $t0, $fp, -212
	sw $t0, -1924($fp)
	li $t0, 5
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
	li $t0, 51791
	sw $t0, -1944($fp)
	addi $t0, $fp, -212
	sw $t0, -1948($fp)
	li $t0, 6
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1948($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1944($fp)
	lw $t1, -1960($fp)
	sw $t0, 0($t1)
	lw $t0, -1960($fp)
	lw $t1, 0($t0)
	sw $t1, -1964($fp)
	li $t0, 11193
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	li $t0, 10287
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	li $t0, 51889
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	li $t0, 23391
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	li $t0, 78
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	li $t0, 46917
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	li $t0, 39116
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	li $t0, 58696
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	li $t0, 36145
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	li $t0, 30453
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	li $t0, 15476
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	li $t0, 41380
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	li $t0, 59496
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	li $t0, 61572
	sw $t0, -2124($fp)
	addi $t0, $fp, -236
	sw $t0, -2128($fp)
	li $t0, 0
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2128($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2124($fp)
	lw $t1, -2140($fp)
	sw $t0, 0($t1)
	lw $t0, -2140($fp)
	lw $t1, 0($t0)
	sw $t1, -2144($fp)
	li $t0, 31391
	sw $t0, -2148($fp)
	addi $t0, $fp, -236
	sw $t0, -2152($fp)
	li $t0, 1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2152($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2148($fp)
	lw $t1, -2164($fp)
	sw $t0, 0($t1)
	lw $t0, -2164($fp)
	lw $t1, 0($t0)
	sw $t1, -2168($fp)
	li $t0, 35408
	sw $t0, -2172($fp)
	addi $t0, $fp, -236
	sw $t0, -2176($fp)
	li $t0, 2
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2176($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2172($fp)
	lw $t1, -2188($fp)
	sw $t0, 0($t1)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	li $t0, 51497
	sw $t0, -2196($fp)
	addi $t0, $fp, -236
	sw $t0, -2200($fp)
	li $t0, 3
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2200($fp)
	lw $t1, -2208($fp)
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2196($fp)
	lw $t1, -2212($fp)
	sw $t0, 0($t1)
	lw $t0, -2212($fp)
	lw $t1, 0($t0)
	sw $t1, -2216($fp)
	li $t0, 18456
	sw $t0, -2220($fp)
	addi $t0, $fp, -236
	sw $t0, -2224($fp)
	li $t0, 4
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
	li $t0, 4
	sw $t0, -2244($fp)
	addi $t0, $fp, -236
	sw $t0, -2248($fp)
	li $t0, 5
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
	li $t0, 24492
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	li $t0, 36629
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	li $t0, 49526
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	li $t0, 3855
	sw $t0, -2304($fp)
	addi $t0, $fp, -260
	sw $t0, -2308($fp)
	li $t0, 0
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2308($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2304($fp)
	lw $t1, -2320($fp)
	sw $t0, 0($t1)
	lw $t0, -2320($fp)
	lw $t1, 0($t0)
	sw $t1, -2324($fp)
	li $t0, 36163
	sw $t0, -2328($fp)
	addi $t0, $fp, -260
	sw $t0, -2332($fp)
	li $t0, 1
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2332($fp)
	lw $t1, -2340($fp)
	add $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2328($fp)
	lw $t1, -2344($fp)
	sw $t0, 0($t1)
	lw $t0, -2344($fp)
	lw $t1, 0($t0)
	sw $t1, -2348($fp)
	li $t0, 42488
	sw $t0, -2352($fp)
	addi $t0, $fp, -260
	sw $t0, -2356($fp)
	li $t0, 2
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2356($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2352($fp)
	lw $t1, -2368($fp)
	sw $t0, 0($t1)
	lw $t0, -2368($fp)
	lw $t1, 0($t0)
	sw $t1, -2372($fp)
	li $t0, 48483
	sw $t0, -2376($fp)
	addi $t0, $fp, -260
	sw $t0, -2380($fp)
	li $t0, 3
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2380($fp)
	lw $t1, -2388($fp)
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2376($fp)
	lw $t1, -2392($fp)
	sw $t0, 0($t1)
	lw $t0, -2392($fp)
	lw $t1, 0($t0)
	sw $t1, -2396($fp)
	li $t0, 35125
	sw $t0, -2400($fp)
	addi $t0, $fp, -260
	sw $t0, -2404($fp)
	li $t0, 4
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2404($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2400($fp)
	lw $t1, -2416($fp)
	sw $t0, 0($t1)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	li $t0, 63569
	sw $t0, -2424($fp)
	addi $t0, $fp, -260
	sw $t0, -2428($fp)
	li $t0, 5
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2428($fp)
	lw $t1, -2436($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2424($fp)
	lw $t1, -2440($fp)
	sw $t0, 0($t1)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	li $t0, 58628
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	li $t0, 19650
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	li $t0, 49824
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	li $t0, 4285
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	li $t0, 29938
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	li $t0, 36178
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	li $t0, 27676
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	li $t0, 30016
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	li $t0, 17559
	sw $t0, -2544($fp)
	addi $t0, $fp, -300
	sw $t0, -2548($fp)
	li $t0, 0
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2548($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2544($fp)
	lw $t1, -2560($fp)
	sw $t0, 0($t1)
	lw $t0, -2560($fp)
	lw $t1, 0($t0)
	sw $t1, -2564($fp)
	li $t0, 1257
	sw $t0, -2568($fp)
	addi $t0, $fp, -300
	sw $t0, -2572($fp)
	li $t0, 1
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2572($fp)
	lw $t1, -2580($fp)
	add $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2568($fp)
	lw $t1, -2584($fp)
	sw $t0, 0($t1)
	lw $t0, -2584($fp)
	lw $t1, 0($t0)
	sw $t1, -2588($fp)
	li $t0, 23177
	sw $t0, -2592($fp)
	addi $t0, $fp, -300
	sw $t0, -2596($fp)
	li $t0, 2
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2596($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2592($fp)
	lw $t1, -2608($fp)
	sw $t0, 0($t1)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	li $t0, 53705
	sw $t0, -2616($fp)
	addi $t0, $fp, -300
	sw $t0, -2620($fp)
	li $t0, 3
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2620($fp)
	lw $t1, -2628($fp)
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2616($fp)
	lw $t1, -2632($fp)
	sw $t0, 0($t1)
	lw $t0, -2632($fp)
	lw $t1, 0($t0)
	sw $t1, -2636($fp)
	li $t0, 31710
	sw $t0, -2640($fp)
	addi $t0, $fp, -300
	sw $t0, -2644($fp)
	li $t0, 4
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2644($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2640($fp)
	lw $t1, -2656($fp)
	sw $t0, 0($t1)
	lw $t0, -2656($fp)
	lw $t1, 0($t0)
	sw $t1, -2660($fp)
	li $t0, 38653
	sw $t0, -2664($fp)
	addi $t0, $fp, -300
	sw $t0, -2668($fp)
	li $t0, 5
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2668($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2664($fp)
	lw $t1, -2680($fp)
	sw $t0, 0($t1)
	lw $t0, -2680($fp)
	lw $t1, 0($t0)
	sw $t1, -2684($fp)
	li $t0, 29549
	sw $t0, -2688($fp)
	addi $t0, $fp, -300
	sw $t0, -2692($fp)
	li $t0, 6
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2692($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2688($fp)
	lw $t1, -2704($fp)
	sw $t0, 0($t1)
	lw $t0, -2704($fp)
	lw $t1, 0($t0)
	sw $t1, -2708($fp)
	li $t0, 25670
	sw $t0, -2712($fp)
	addi $t0, $fp, -300
	sw $t0, -2716($fp)
	li $t0, 7
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2716($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2712($fp)
	lw $t1, -2728($fp)
	sw $t0, 0($t1)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	li $t0, 34689
	sw $t0, -2736($fp)
	addi $t0, $fp, -300
	sw $t0, -2740($fp)
	li $t0, 8
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2740($fp)
	lw $t1, -2748($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2736($fp)
	lw $t1, -2752($fp)
	sw $t0, 0($t1)
	lw $t0, -2752($fp)
	lw $t1, 0($t0)
	sw $t1, -2756($fp)
	li $t0, 60940
	sw $t0, -2760($fp)
	addi $t0, $fp, -300
	sw $t0, -2764($fp)
	li $t0, 9
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2764($fp)
	lw $t1, -2772($fp)
	add $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2760($fp)
	lw $t1, -2776($fp)
	sw $t0, 0($t1)
	lw $t0, -2776($fp)
	lw $t1, 0($t0)
	sw $t1, -2780($fp)
	li $t0, 61078
	sw $t0, -2784($fp)
	addi $t0, $fp, -304
	sw $t0, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2788($fp)
	lw $t1, -2796($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2784($fp)
	lw $t1, -2800($fp)
	sw $t0, 0($t1)
	lw $t0, -2800($fp)
	lw $t1, 0($t0)
	sw $t1, -2804($fp)
	li $t0, 20650
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -2816($fp)
	li $t0, 13860
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -2828($fp)
	li $t0, 61082
	sw $t0, -2832($fp)
	addi $t0, $fp, -344
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2836($fp)
	lw $t1, -2844($fp)
	add $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2832($fp)
	lw $t1, -2848($fp)
	sw $t0, 0($t1)
	lw $t0, -2848($fp)
	lw $t1, 0($t0)
	sw $t1, -2852($fp)
	li $t0, 45142
	sw $t0, -2856($fp)
	addi $t0, $fp, -344
	sw $t0, -2860($fp)
	li $t0, 1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2860($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2856($fp)
	lw $t1, -2872($fp)
	sw $t0, 0($t1)
	lw $t0, -2872($fp)
	lw $t1, 0($t0)
	sw $t1, -2876($fp)
	li $t0, 50490
	sw $t0, -2880($fp)
	addi $t0, $fp, -344
	sw $t0, -2884($fp)
	li $t0, 2
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2884($fp)
	lw $t1, -2892($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2880($fp)
	lw $t1, -2896($fp)
	sw $t0, 0($t1)
	lw $t0, -2896($fp)
	lw $t1, 0($t0)
	sw $t1, -2900($fp)
	li $t0, 45073
	sw $t0, -2904($fp)
	addi $t0, $fp, -344
	sw $t0, -2908($fp)
	li $t0, 3
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
	li $t0, 48997
	sw $t0, -2928($fp)
	addi $t0, $fp, -344
	sw $t0, -2932($fp)
	li $t0, 4
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2932($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2928($fp)
	lw $t1, -2944($fp)
	sw $t0, 0($t1)
	lw $t0, -2944($fp)
	lw $t1, 0($t0)
	sw $t1, -2948($fp)
	li $t0, 21117
	sw $t0, -2952($fp)
	addi $t0, $fp, -344
	sw $t0, -2956($fp)
	li $t0, 5
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2956($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2952($fp)
	lw $t1, -2968($fp)
	sw $t0, 0($t1)
	lw $t0, -2968($fp)
	lw $t1, 0($t0)
	sw $t1, -2972($fp)
	li $t0, 22025
	sw $t0, -2976($fp)
	addi $t0, $fp, -344
	sw $t0, -2980($fp)
	li $t0, 6
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2980($fp)
	lw $t1, -2988($fp)
	add $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2976($fp)
	lw $t1, -2992($fp)
	sw $t0, 0($t1)
	lw $t0, -2992($fp)
	lw $t1, 0($t0)
	sw $t1, -2996($fp)
	li $t0, 31944
	sw $t0, -3000($fp)
	addi $t0, $fp, -344
	sw $t0, -3004($fp)
	li $t0, 7
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3004($fp)
	lw $t1, -3012($fp)
	add $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3000($fp)
	lw $t1, -3016($fp)
	sw $t0, 0($t1)
	lw $t0, -3016($fp)
	lw $t1, 0($t0)
	sw $t1, -3020($fp)
	li $t0, 56242
	sw $t0, -3024($fp)
	addi $t0, $fp, -344
	sw $t0, -3028($fp)
	li $t0, 8
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3028($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3024($fp)
	lw $t1, -3040($fp)
	sw $t0, 0($t1)
	lw $t0, -3040($fp)
	lw $t1, 0($t0)
	sw $t1, -3044($fp)
	li $t0, 20058
	sw $t0, -3048($fp)
	addi $t0, $fp, -344
	sw $t0, -3052($fp)
	li $t0, 9
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3052($fp)
	lw $t1, -3060($fp)
	add $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3048($fp)
	lw $t1, -3064($fp)
	sw $t0, 0($t1)
	lw $t0, -3064($fp)
	lw $t1, 0($t0)
	sw $t1, -3068($fp)
	li $t0, 25036
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3080($fp)
	li $t0, 10356
	sw $t0, -3084($fp)
	addi $t0, $fp, -356
	sw $t0, -3088($fp)
	li $t0, 0
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3088($fp)
	lw $t1, -3096($fp)
	add $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3084($fp)
	lw $t1, -3100($fp)
	sw $t0, 0($t1)
	lw $t0, -3100($fp)
	lw $t1, 0($t0)
	sw $t1, -3104($fp)
	li $t0, 4347
	sw $t0, -3108($fp)
	addi $t0, $fp, -356
	sw $t0, -3112($fp)
	li $t0, 1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3112($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3108($fp)
	lw $t1, -3124($fp)
	sw $t0, 0($t1)
	lw $t0, -3124($fp)
	lw $t1, 0($t0)
	sw $t1, -3128($fp)
	li $t0, 29322
	sw $t0, -3132($fp)
	addi $t0, $fp, -356
	sw $t0, -3136($fp)
	li $t0, 2
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3136($fp)
	lw $t1, -3144($fp)
	add $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3132($fp)
	lw $t1, -3148($fp)
	sw $t0, 0($t1)
	lw $t0, -3148($fp)
	lw $t1, 0($t0)
	sw $t1, -3152($fp)
	li $t0, 40294
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	sw $t0, -3164($fp)
	li $t0, 40525
	sw $t0, -3168($fp)
	addi $t0, $fp, -384
	sw $t0, -3172($fp)
	li $t0, 0
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3172($fp)
	lw $t1, -3180($fp)
	add $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3168($fp)
	lw $t1, -3184($fp)
	sw $t0, 0($t1)
	lw $t0, -3184($fp)
	lw $t1, 0($t0)
	sw $t1, -3188($fp)
	li $t0, 56998
	sw $t0, -3192($fp)
	addi $t0, $fp, -384
	sw $t0, -3196($fp)
	li $t0, 1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3196($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3192($fp)
	lw $t1, -3208($fp)
	sw $t0, 0($t1)
	lw $t0, -3208($fp)
	lw $t1, 0($t0)
	sw $t1, -3212($fp)
	li $t0, 4775
	sw $t0, -3216($fp)
	addi $t0, $fp, -384
	sw $t0, -3220($fp)
	li $t0, 2
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3220($fp)
	lw $t1, -3228($fp)
	add $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3216($fp)
	lw $t1, -3232($fp)
	sw $t0, 0($t1)
	lw $t0, -3232($fp)
	lw $t1, 0($t0)
	sw $t1, -3236($fp)
	li $t0, 58084
	sw $t0, -3240($fp)
	addi $t0, $fp, -384
	sw $t0, -3244($fp)
	li $t0, 3
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3244($fp)
	lw $t1, -3252($fp)
	add $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3240($fp)
	lw $t1, -3256($fp)
	sw $t0, 0($t1)
	lw $t0, -3256($fp)
	lw $t1, 0($t0)
	sw $t1, -3260($fp)
	li $t0, 58255
	sw $t0, -3264($fp)
	addi $t0, $fp, -384
	sw $t0, -3268($fp)
	li $t0, 4
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3268($fp)
	lw $t1, -3276($fp)
	add $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3264($fp)
	lw $t1, -3280($fp)
	sw $t0, 0($t1)
	lw $t0, -3280($fp)
	lw $t1, 0($t0)
	sw $t1, -3284($fp)
	li $t0, 27952
	sw $t0, -3288($fp)
	addi $t0, $fp, -384
	sw $t0, -3292($fp)
	li $t0, 5
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3292($fp)
	lw $t1, -3300($fp)
	add $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3288($fp)
	lw $t1, -3304($fp)
	sw $t0, 0($t1)
	lw $t0, -3304($fp)
	lw $t1, 0($t0)
	sw $t1, -3308($fp)
	li $t0, 46253
	sw $t0, -3312($fp)
	addi $t0, $fp, -384
	sw $t0, -3316($fp)
	li $t0, 6
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3316($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3312($fp)
	lw $t1, -3328($fp)
	sw $t0, 0($t1)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	li $t0, 24429
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -3344($fp)
	li $t0, 1069
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	sw $t0, -3356($fp)
	li $t0, 10266
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	sw $t0, -3368($fp)
	li $t0, 50100
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	sw $t0, -3380($fp)
	li $t0, 35758
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	sw $t0, -3392($fp)
	li $t0, 5670
	sw $t0, -3396($fp)
	addi $t0, $fp, -404
	sw $t0, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3400($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3396($fp)
	lw $t1, -3412($fp)
	sw $t0, 0($t1)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	li $t0, 45642
	sw $t0, -3420($fp)
	addi $t0, $fp, -404
	sw $t0, -3424($fp)
	li $t0, 1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3424($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3420($fp)
	lw $t1, -3436($fp)
	sw $t0, 0($t1)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	li $t0, 56409
	sw $t0, -3444($fp)
	addi $t0, $fp, -404
	sw $t0, -3448($fp)
	li $t0, 2
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3448($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3444($fp)
	lw $t1, -3460($fp)
	sw $t0, 0($t1)
	lw $t0, -3460($fp)
	lw $t1, 0($t0)
	sw $t1, -3464($fp)
	li $t0, 19531
	sw $t0, -3468($fp)
	addi $t0, $fp, -404
	sw $t0, -3472($fp)
	li $t0, 3
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3472($fp)
	lw $t1, -3480($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3468($fp)
	lw $t1, -3484($fp)
	sw $t0, 0($t1)
	lw $t0, -3484($fp)
	lw $t1, 0($t0)
	sw $t1, -3488($fp)
	li $t0, 41189
	sw $t0, -3492($fp)
	addi $t0, $fp, -404
	sw $t0, -3496($fp)
	li $t0, 4
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3496($fp)
	lw $t1, -3504($fp)
	add $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3492($fp)
	lw $t1, -3508($fp)
	sw $t0, 0($t1)
	lw $t0, -3508($fp)
	lw $t1, 0($t0)
	sw $t1, -3512($fp)
	li $t0, 36015
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	li $t0, 4485
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	li $t0, 20726
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	lw $t0, -1588($fp)
	sw $t0, -3556($fp)
	lw $t1, -3556($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label415
label417:
	li $t0, 40244
	sw $t0, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label416:
	lw $t0, 8($fp)
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -3552($fp)
label415:
	li $t0, 0
	sw $t0, -3568($fp)
	li $t0, 0
	sw $t0, -3572($fp)
	li $t0, 62809
	sw $t0, -3576($fp)
	li $t0, 10922
	sw $t0, -3580($fp)
	lw $t0, -3576($fp)
	lw $t1, -3580($fp)
	mul $t0, $t0, $t1
	sw $t0, -3584($fp)
	li $t0, 26664
	sw $t0, -3588($fp)
	lw $t1, -3584($fp)
	lw $t2, -3588($fp)
	blt $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -3572($fp)
label421:
	li $t0, 16308
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	sw $t0, -3596($fp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3600($fp)
	addi $sp, $sp, 12
	li $t0, 1620
	sw $t0, -3604($fp)
	lw $t1, -3600($fp)
	lw $t2, -3604($fp)
	beq $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -3568($fp)
label419:
	addi $t0, $fp, -344
	sw $t0, -3608($fp)
	lw $t0, -412($fp)
	sw $t0, -3612($fp)
	li $t0, 4
	lw $t1, -3612($fp)
	mul $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	lw $t1, -3608($fp)
	add $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	lw $t1, 0($t0)
	sw $t1, -3624($fp)
	lw $t0, -3520($fp)
	sw $t0, -3628($fp)
	lw $t0, -3624($fp)
	lw $t1, -3628($fp)
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -2452($fp)
	sw $t0, -3636($fp)
	li $t0, 51421
	sw $t0, -3640($fp)
	lw $t0, -3636($fp)
	lw $t1, -3640($fp)
	mul $t0, $t0, $t1
	sw $t0, -3644($fp)
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3644($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3648($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3652($fp)
	li $t0, 0
	sw $t0, -3656($fp)
	lw $t0, -1996($fp)
	sw $t0, -3660($fp)
	li $t0, 42751
	sw $t0, -3664($fp)
	lw $t1, -3660($fp)
	lw $t2, -3664($fp)
	bge $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -3656($fp)
label425:
	lw $t0, -1120($fp)
	sw $t0, -3668($fp)
	lw $t1, -3656($fp)
	lw $t2, -3668($fp)
	beq $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -3652($fp)
label423:
	li $t0, 19477
	sw $t0, -3672($fp)
	li $t0, 25602
	sw $t0, -3676($fp)
	lw $t0, -3672($fp)
	lw $t1, -3676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3680($fp)
	addi $sp, $sp, -4
	lw $t0, -3648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3680($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3684($fp)
	addi $sp, $sp, 16
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
label426:
	li $t0, 1423
	sw $t0, -3688($fp)
	lw $t1, -3688($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 42145
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	sw $t0, -3700($fp)
	li $t0, 0
	sw $t0, -3704($fp)
	addi $t0, $fp, -36
	sw $t0, -3708($fp)
	lw $t0, -3352($fp)
	sw $t0, -3712($fp)
	li $t0, 31706
	sw $t0, -3716($fp)
	lw $t0, -3712($fp)
	lw $t1, -3716($fp)
	sub $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3376($fp)
	sw $t0, -3724($fp)
	lw $t0, -3720($fp)
	lw $t1, -3724($fp)
	sub $t0, $t0, $t1
	sw $t0, -3728($fp)
	li $t0, 4
	lw $t1, -3728($fp)
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	lw $t1, -3708($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	lw $t1, 0($t0)
	sw $t1, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label430
label431:
	lw $t0, -3696($fp)
	sw $t0, -3744($fp)
	li $t0, 6198
	sw $t0, -3748($fp)
	lw $t0, -3340($fp)
	sw $t0, -3752($fp)
	lw $t0, -3748($fp)
	lw $t1, -3752($fp)
	sub $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t1, -3744($fp)
	lw $t2, -3756($fp)
	bgt $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -3704($fp)
label430:
	li $t0, 34694
	sw $t0, -3760($fp)
	lw $t0, -1180($fp)
	sw $t0, -3764($fp)
	lw $t0, -3760($fp)
	lw $t1, -3764($fp)
	sub $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -3776($fp)
	lw $t0, -3696($fp)
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2488($fp)
	sw $t0, -3784($fp)
	lw $ra, -4($fp)
	lw $v0, -3784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label426
label428:
	j label413
label412:
	li $t0, 0
	sw $t0, -3788($fp)
	addi $t0, $fp, -168
	sw $t0, -3792($fp)
	li $t0, 24426
	sw $t0, -3796($fp)
	lw $t0, -448($fp)
	sw $t0, -3800($fp)
	lw $t0, -3796($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	li $t0, 4
	lw $t1, -3804($fp)
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, -3792($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
	li $t0, 48855
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -3824($fp)
	li $t0, 0
	sw $t0, -3828($fp)
	lw $t0, -1180($fp)
	sw $t0, -3832($fp)
	li $t0, 34150
	sw $t0, -3836($fp)
	lw $t0, -3832($fp)
	lw $t1, -3836($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	li $t0, 15411
	sw $t0, -3844($fp)
	lw $t1, -3840($fp)
	lw $t2, -3844($fp)
	beq $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -3828($fp)
label436:
	addi $sp, $sp, -4
	lw $t0, -3824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3828($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3848($fp)
	addi $sp, $sp, 12
	li $t0, 35219
	sw $t0, -3852($fp)
	lw $t0, -3848($fp)
	lw $t1, -3852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3856($fp)
	lw $t1, -3816($fp)
	lw $t2, -3856($fp)
	bne $t1, $t2, label432
	j label434
label434:
	li $t0, 0
	sw $t0, -3860($fp)
	lw $t0, -1156($fp)
	sw $t0, -3864($fp)
	li $t0, 0
	lw $t1, -3864($fp)
	sub $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -2284($fp)
	sw $t0, -3872($fp)
	lw $t1, -3868($fp)
	lw $t2, -3872($fp)
	beq $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -3860($fp)
label438:
	addi $t0, $fp, -304
	sw $t0, -3876($fp)
	li $t0, 0
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
	lw $t1, -3860($fp)
	lw $t2, -3892($fp)
	beq $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -3788($fp)
label433:
label413:
	li $t0, 5441
	sw $t0, -3964($fp)
	addi $t0, $fp, -3920
	sw $t0, -3968($fp)
	li $t0, 0
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3968($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3964($fp)
	lw $t1, -3980($fp)
	sw $t0, 0($t1)
	lw $t0, -3980($fp)
	lw $t1, 0($t0)
	sw $t1, -3984($fp)
	li $t0, 31348
	sw $t0, -3988($fp)
	addi $t0, $fp, -3920
	sw $t0, -3992($fp)
	li $t0, 1
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -3992($fp)
	lw $t1, -4000($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -3988($fp)
	lw $t1, -4004($fp)
	sw $t0, 0($t1)
	lw $t0, -4004($fp)
	lw $t1, 0($t0)
	sw $t1, -4008($fp)
	li $t0, 13526
	sw $t0, -4012($fp)
	addi $t0, $fp, -3920
	sw $t0, -4016($fp)
	li $t0, 2
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4016($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4012($fp)
	lw $t1, -4028($fp)
	sw $t0, 0($t1)
	lw $t0, -4028($fp)
	lw $t1, 0($t0)
	sw $t1, -4032($fp)
	li $t0, 61850
	sw $t0, -4036($fp)
	addi $t0, $fp, -3920
	sw $t0, -4040($fp)
	li $t0, 3
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4040($fp)
	lw $t1, -4048($fp)
	add $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4036($fp)
	lw $t1, -4052($fp)
	sw $t0, 0($t1)
	lw $t0, -4052($fp)
	lw $t1, 0($t0)
	sw $t1, -4056($fp)
	li $t0, 50879
	sw $t0, -4060($fp)
	addi $t0, $fp, -3920
	sw $t0, -4064($fp)
	li $t0, 4
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4064($fp)
	lw $t1, -4072($fp)
	add $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4060($fp)
	lw $t1, -4076($fp)
	sw $t0, 0($t1)
	lw $t0, -4076($fp)
	lw $t1, 0($t0)
	sw $t1, -4080($fp)
	li $t0, 54715
	sw $t0, -4084($fp)
	addi $t0, $fp, -3920
	sw $t0, -4088($fp)
	li $t0, 5
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4088($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4084($fp)
	lw $t1, -4100($fp)
	sw $t0, 0($t1)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
	li $t0, 32330
	sw $t0, -4108($fp)
	addi $t0, $fp, -3920
	sw $t0, -4112($fp)
	li $t0, 6
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4112($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4108($fp)
	lw $t1, -4124($fp)
	sw $t0, 0($t1)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	li $t0, 55364
	sw $t0, -4132($fp)
	addi $t0, $fp, -3948
	sw $t0, -4136($fp)
	li $t0, 0
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4136($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4132($fp)
	lw $t1, -4148($fp)
	sw $t0, 0($t1)
	lw $t0, -4148($fp)
	lw $t1, 0($t0)
	sw $t1, -4152($fp)
	li $t0, 9905
	sw $t0, -4156($fp)
	addi $t0, $fp, -3948
	sw $t0, -4160($fp)
	li $t0, 1
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4160($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4156($fp)
	lw $t1, -4172($fp)
	sw $t0, 0($t1)
	lw $t0, -4172($fp)
	lw $t1, 0($t0)
	sw $t1, -4176($fp)
	li $t0, 51807
	sw $t0, -4180($fp)
	addi $t0, $fp, -3948
	sw $t0, -4184($fp)
	li $t0, 2
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4184($fp)
	lw $t1, -4192($fp)
	add $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4180($fp)
	lw $t1, -4196($fp)
	sw $t0, 0($t1)
	lw $t0, -4196($fp)
	lw $t1, 0($t0)
	sw $t1, -4200($fp)
	li $t0, 15430
	sw $t0, -4204($fp)
	addi $t0, $fp, -3948
	sw $t0, -4208($fp)
	li $t0, 3
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4208($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4204($fp)
	lw $t1, -4220($fp)
	sw $t0, 0($t1)
	lw $t0, -4220($fp)
	lw $t1, 0($t0)
	sw $t1, -4224($fp)
	li $t0, 52656
	sw $t0, -4228($fp)
	addi $t0, $fp, -3948
	sw $t0, -4232($fp)
	li $t0, 4
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4232($fp)
	lw $t1, -4240($fp)
	add $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4228($fp)
	lw $t1, -4244($fp)
	sw $t0, 0($t1)
	lw $t0, -4244($fp)
	lw $t1, 0($t0)
	sw $t1, -4248($fp)
	li $t0, 37692
	sw $t0, -4252($fp)
	addi $t0, $fp, -3948
	sw $t0, -4256($fp)
	li $t0, 5
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4256($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4252($fp)
	lw $t1, -4268($fp)
	sw $t0, 0($t1)
	lw $t0, -4268($fp)
	lw $t1, 0($t0)
	sw $t1, -4272($fp)
	li $t0, 31738
	sw $t0, -4276($fp)
	addi $t0, $fp, -3948
	sw $t0, -4280($fp)
	li $t0, 6
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4280($fp)
	lw $t1, -4288($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4276($fp)
	lw $t1, -4292($fp)
	sw $t0, 0($t1)
	lw $t0, -4292($fp)
	lw $t1, 0($t0)
	sw $t1, -4296($fp)
	li $t0, 49929
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -4308($fp)
	li $t0, 48614
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	sw $t0, -4320($fp)
	li $t0, 58403
	sw $t0, -4324($fp)
	addi $t0, $fp, -3960
	sw $t0, -4328($fp)
	li $t0, 0
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
	li $t0, 51550
	sw $t0, -4348($fp)
	addi $t0, $fp, -3960
	sw $t0, -4352($fp)
	li $t0, 1
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
	li $t0, 23322
	sw $t0, -4372($fp)
	addi $t0, $fp, -3960
	sw $t0, -4376($fp)
	li $t0, 2
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
	addi $t0, $fp, -404
	sw $t0, -4396($fp)
	lw $t0, -424($fp)
	sw $t0, -4400($fp)
	li $t0, 4
	lw $t1, -4400($fp)
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	lw $t1, -4396($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	lw $t1, 0($t0)
	sw $t1, -4412($fp)
	addi $t0, $fp, -344
	sw $t0, -4416($fp)
	li $t0, 7
	sw $t0, -4420($fp)
	li $t0, 4
	lw $t1, -4420($fp)
	mul $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, -4416($fp)
	add $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, 0($t0)
	sw $t1, -4432($fp)
	li $t0, 0
	lw $t1, -4432($fp)
	sub $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4412($fp)
	lw $t1, -4436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4440($fp)
	lw $t1, -4440($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	addi $t0, $fp, -344
	sw $t0, -4444($fp)
	lw $t0, -940($fp)
	sw $t0, -4448($fp)
	li $t0, 55029
	sw $t0, -4452($fp)
	lw $t0, -4448($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -4460($fp)
	li $t0, 4
	lw $t1, -4460($fp)
	mul $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, -4444($fp)
	add $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	lw $t1, 0($t0)
	sw $t1, -4472($fp)
	lw $ra, -4($fp)
	lw $v0, -4472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label441
label440:
label442:
	li $t0, 0
	sw $t0, -4476($fp)
	lw $t0, -3160($fp)
	sw $t0, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label446:
	li $t0, 1
	sw $t0, -4476($fp)
label447:
	li $t0, 488
	sw $t0, -4484($fp)
	lw $t0, -4476($fp)
	lw $t1, -4484($fp)
	sub $t0, $t0, $t1
	sw $t0, -4488($fp)
	addi $t0, $fp, -3960
	sw $t0, -4492($fp)
	lw $t0, -1984($fp)
	sw $t0, -4496($fp)
	li $t0, 4
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, -4492($fp)
	add $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, 0($t0)
	sw $t1, -4508($fp)
	lw $t0, -4488($fp)
	lw $t1, -4508($fp)
	sub $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -1792($fp)
	sw $t0, -4516($fp)
	lw $t1, -4512($fp)
	lw $t2, -4516($fp)
	ble $t1, $t2, label445
	j label444
label445:
	li $t0, 0
	sw $t0, -4520($fp)
	li $t0, 62853
	sw $t0, -4524($fp)
	li $t0, 0
	lw $t1, -4524($fp)
	sub $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t1, -4528($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label448:
	li $t0, 1
	sw $t0, -4520($fp)
label449:
	li $t0, 0
	lw $t1, -4520($fp)
	sub $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t1, -4532($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 13919
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	sw $t0, -4544($fp)
	li $t0, 34638
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	sw $t0, -4556($fp)
	li $t0, 0
	sw $t0, -4560($fp)
	li $t0, 0
	sw $t0, -4564($fp)
	li $t0, 12729
	sw $t0, -4568($fp)
	li $t0, 62774
	sw $t0, -4572($fp)
	li $t0, 0
	lw $t1, -4572($fp)
	sub $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4568($fp)
	lw $t1, -4576($fp)
	add $t0, $t0, $t1
	sw $t0, -4580($fp)
	addi $t0, $fp, -356
	sw $t0, -4584($fp)
	lw $t0, -472($fp)
	sw $t0, -4588($fp)
	li $t0, 4
	lw $t1, -4588($fp)
	mul $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	lw $t1, -4584($fp)
	add $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	lw $t1, 0($t0)
	sw $t1, -4600($fp)
	li $t0, 0
	lw $t1, -4600($fp)
	sub $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t1, -4580($fp)
	lw $t2, -4604($fp)
	beq $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -4564($fp)
label453:
	li $t0, 4321
	sw $t0, -4608($fp)
	lw $t1, -4564($fp)
	lw $t2, -4608($fp)
	beq $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -4560($fp)
label451:
	lw $t0, -472($fp)
	sw $t0, -4612($fp)
	lw $t0, -3352($fp)
	sw $t0, -4616($fp)
	li $t0, 38407
	sw $t0, -4620($fp)
	lw $t0, -4616($fp)
	lw $t1, -4620($fp)
	sub $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t1, -4612($fp)
	lw $t2, -4624($fp)
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 0
	sw $t0, -4628($fp)
	addi $t0, $fp, -72
	sw $t0, -4632($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -4648($fp)
	sub $t0, $t0, $t1
	sw $t0, -4652($fp)
	li $t0, 33363
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -4660($fp)
	li $t0, 0
	sw $t0, -4664($fp)
	lw $t0, -4540($fp)
	sw $t0, -4668($fp)
	lw $t1, -4668($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label461:
	lw $t0, -2044($fp)
	sw $t0, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -4664($fp)
label460:
	lw $t0, -964($fp)
	sw $t0, -4676($fp)
	li $t0, 6077
	sw $t0, -4680($fp)
	lw $t0, -4676($fp)
	lw $t1, -4680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4684($fp)
	li $t0, 55099
	sw $t0, -4688($fp)
	lw $t0, -4684($fp)
	lw $t1, -4688($fp)
	add $t0, $t0, $t1
	sw $t0, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 4219
	sw $t0, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -4696($fp)
label463:
	li $t0, 44184
	sw $t0, -4704($fp)
	lw $t0, -4696($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -520($fp)
	sw $t0, -4712($fp)
	lw $t0, -2488($fp)
	sw $t0, -4716($fp)
	lw $t0, -4712($fp)
	lw $t1, -4716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4720($fp)
	lw $t0, -4552($fp)
	sw $t0, -4724($fp)
	lw $t0, -4720($fp)
	lw $t1, -4724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4728($fp)
	addi $sp, $sp, -4
	lw $t0, -4660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4732($fp)
	addi $sp, $sp, 24
	lw $t0, -4652($fp)
	lw $t1, -4732($fp)
	sub $t0, $t0, $t1
	sw $t0, -4736($fp)
	li $t0, 0
	sw $t0, -4740($fp)
	li $t0, 0
	sw $t0, -4744($fp)
	li $t0, 38407
	sw $t0, -4748($fp)
	lw $t0, -4540($fp)
	sw $t0, -4752($fp)
	lw $t1, -4748($fp)
	lw $t2, -4752($fp)
	blt $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -4744($fp)
label467:
	lw $t0, -1984($fp)
	sw $t0, -4756($fp)
	lw $t1, -4744($fp)
	lw $t2, -4756($fp)
	ble $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -4740($fp)
label465:
	lw $t1, -4736($fp)
	lw $t2, -4740($fp)
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -4628($fp)
label458:
	lw $ra, -4($fp)
	lw $v0, -4628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label455:
	j label442
label444:
label441:
label468:
	li $t0, 44927
	sw $t0, -4760($fp)
	addi $t0, $fp, -124
	sw $t0, -4764($fp)
	lw $t0, -4316($fp)
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
	li $t0, 0
	sw $t0, -4784($fp)
	lw $t0, -2284($fp)
	sw $t0, -4788($fp)
	li $t0, 0
	lw $t1, -4788($fp)
	sub $t0, $t0, $t1
	sw $t0, -4792($fp)
	li $t0, 43268
	sw $t0, -4796($fp)
	lw $t1, -4792($fp)
	lw $t2, -4796($fp)
	beq $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -4784($fp)
label472:
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4800($fp)
	addi $sp, $sp, 8
	lw $t0, -4780($fp)
	lw $t1, -4800($fp)
	mul $t0, $t0, $t1
	sw $t0, -4804($fp)
	li $t0, 0
	lw $t1, -4804($fp)
	sub $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t1, -4760($fp)
	lw $t2, -4808($fp)
	bge $t1, $t2, label469
	j label470
label469:
label473:
	addi $t0, $fp, -404
	sw $t0, -4812($fp)
	li $t0, 0
	sw $t0, -4816($fp)
	lw $t0, -2488($fp)
	sw $t0, -4820($fp)
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label478
label480:
	li $t0, 24678
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label479:
	lw $t0, -952($fp)
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -4816($fp)
label478:
	li $t0, 4
	lw $t1, -4816($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	lw $t1, 0($t0)
	sw $t1, -4840($fp)
	lw $t1, -4840($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label476
label476:
	li $t0, 0
	sw $t0, -4844($fp)
	li $t0, 60358
	sw $t0, -4848($fp)
	lw $t1, -4848($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label481
label481:
	li $t0, 1
	sw $t0, -4844($fp)
label482:
	lw $t0, -2080($fp)
	sw $t0, -4852($fp)
	lw $t0, -4844($fp)
	lw $t1, -4852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4856($fp)
	addi $t0, $fp, -404
	sw $t0, -4860($fp)
	li $t0, 0
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
	lw $t0, -4856($fp)
	lw $t1, -4876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4880($fp)
	lw $t1, -4880($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
label483:
	li $t0, 0
	sw $t0, -4884($fp)
	addi $t0, $fp, -304
	sw $t0, -4888($fp)
	lw $t0, -2008($fp)
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
	lw $t0, -3376($fp)
	sw $t0, -4908($fp)
	li $t0, 45449
	sw $t0, -4912($fp)
	lw $t0, -4908($fp)
	lw $t1, -4912($fp)
	mul $t0, $t0, $t1
	sw $t0, -4916($fp)
	li $t0, 19427
	sw $t0, -4920($fp)
	lw $t0, -4916($fp)
	lw $t1, -4920($fp)
	mul $t0, $t0, $t1
	sw $t0, -4924($fp)
	li $t0, 0
	sw $t0, -4928($fp)
	lw $t0, 12($fp)
	sw $t0, -4932($fp)
	lw $t0, 4($fp)
	sw $t0, -4936($fp)
	lw $t0, -4932($fp)
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	li $t0, 14781
	sw $t0, -4944($fp)
	lw $t1, -4940($fp)
	lw $t2, -4944($fp)
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -4928($fp)
label489:
	li $t0, 0
	sw $t0, -4948($fp)
	lw $t0, -4316($fp)
	sw $t0, -4952($fp)
	lw $t0, -2116($fp)
	sw $t0, -4956($fp)
	lw $t0, -4952($fp)
	lw $t1, -4956($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label492:
	li $t0, 26560
	sw $t0, -4964($fp)
	lw $t1, -4964($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -4948($fp)
label491:
	addi $sp, $sp, -4
	lw $t0, -4924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4948($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4968($fp)
	addi $sp, $sp, 16
	lw $t0, -4904($fp)
	lw $t1, -4968($fp)
	sub $t0, $t0, $t1
	sw $t0, -4972($fp)
	li $t0, 0
	sw $t0, -4976($fp)
	li $t0, 0
	sw $t0, -4980($fp)
	li $t0, 13717
	sw $t0, -4984($fp)
	lw $t1, -4984($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label495:
	li $t0, 1
	sw $t0, -4980($fp)
label496:
	li $t0, 28955
	sw $t0, -4988($fp)
	lw $t1, -4980($fp)
	lw $t2, -4988($fp)
	bgt $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -4976($fp)
label494:
	li $t0, 0
	sw $t0, -4992($fp)
	lw $t0, -436($fp)
	sw $t0, -4996($fp)
	lw $t0, -1168($fp)
	sw $t0, -5000($fp)
	lw $t0, -4996($fp)
	lw $t1, -5000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5004($fp)
	lw $t0, -2536($fp)
	sw $t0, -5008($fp)
	lw $t1, -5004($fp)
	lw $t2, -5008($fp)
	bgt $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -4992($fp)
label498:
	addi $t0, $fp, -3948
	sw $t0, -5012($fp)
	li $t0, 2
	sw $t0, -5016($fp)
	li $t0, 4
	lw $t1, -5016($fp)
	mul $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	lw $t1, -5012($fp)
	add $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	lw $t1, 0($t0)
	sw $t1, -5028($fp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5032($fp)
	addi $sp, $sp, 16
	li $t0, 58264
	sw $t0, -5036($fp)
	lw $t0, -5032($fp)
	lw $t1, -5036($fp)
	add $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t1, -4972($fp)
	lw $t2, -5040($fp)
	blt $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -4884($fp)
label487:
	li $t0, 0
	sw $t0, -5044($fp)
	lw $t0, -1144($fp)
	sw $t0, -5048($fp)
	li $t0, 39001
	sw $t0, -5052($fp)
	lw $t0, -5048($fp)
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	li $t0, 3886
	sw $t0, -5060($fp)
	lw $t1, -5056($fp)
	lw $t2, -5060($fp)
	blt $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -5044($fp)
label500:
	li $t0, 48843
	sw $t0, -5064($fp)
	addi $t0, $fp, -184
	sw $t0, -5068($fp)
	li $t0, 3
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
	lw $t0, -2524($fp)
	sw $t0, -5088($fp)
	li $t0, 14205
	sw $t0, -5092($fp)
	lw $t0, -5088($fp)
	lw $t1, -5092($fp)
	add $t0, $t0, $t1
	sw $t0, -5096($fp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5096($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5100($fp)
	addi $sp, $sp, 20
	lw $t1, -4884($fp)
	lw $t2, -5100($fp)
	ble $t1, $t2, label484
	j label485
label484:
	addi $t0, $fp, -3920
	sw $t0, -5104($fp)
	li $t0, 4
	sw $t0, -5108($fp)
	li $t0, 4
	lw $t1, -5108($fp)
	mul $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	lw $t1, -5104($fp)
	add $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	lw $t1, 0($t0)
	sw $t1, -5120($fp)
	li $t0, 0
	lw $t1, -5120($fp)
	sub $t0, $t0, $t1
	sw $t0, -5124($fp)
	li $t0, 0
	lw $t1, -5124($fp)
	sub $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $ra, -4($fp)
	lw $v0, -5128($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label483
label485:
	j label473
label475:
	j label468
label470:
	li $t0, 34544
	sw $t0, -5132($fp)
	lw $t1, -5132($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
label504:
	li $t0, 0
	sw $t0, -5136($fp)
	li $t0, 62927
	sw $t0, -5140($fp)
	lw $t1, -5140($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -5136($fp)
label508:
	li $t0, 13193
	sw $t0, -5144($fp)
	lw $t0, -5136($fp)
	lw $t1, -5144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5148($fp)
	lw $t0, 4($fp)
	sw $t0, -5152($fp)
	lw $t0, -5148($fp)
	lw $t1, -5152($fp)
	sub $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -3160($fp)
	sw $t0, -5160($fp)
	lw $t1, -5156($fp)
	lw $t2, -5160($fp)
	bge $t1, $t2, label505
	j label506
label505:
	li $t0, 3468
	sw $t0, -5164($fp)
	lw $t0, -1984($fp)
	sw $t0, -5168($fp)
	lw $t0, -5164($fp)
	lw $t1, -5168($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t1, -5172($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 0
	sw $t0, -5176($fp)
	addi $t0, $fp, -236
	sw $t0, -5180($fp)
	li $t0, 0
	sw $t0, -5184($fp)
	lw $t0, -964($fp)
	sw $t0, -5188($fp)
	li $t0, 5655
	sw $t0, -5192($fp)
	lw $t1, -5188($fp)
	lw $t2, -5192($fp)
	bne $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -5184($fp)
label515:
	li $t0, 4
	lw $t1, -5184($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, -5180($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	lw $t1, -5204($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -5176($fp)
label513:
	lw $ra, -4($fp)
	lw $v0, -5176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label511
label510:
	li $t0, 0
	sw $t0, -5208($fp)
	li $t0, 0
	sw $t0, -5212($fp)
	addi $t0, $fp, -96
	sw $t0, -5216($fp)
	li $t0, 0
	sw $t0, -5220($fp)
	li $t0, 4
	lw $t1, -5220($fp)
	mul $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	lw $t1, 0($t0)
	sw $t1, -5232($fp)
	lw $t1, -5232($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label518
label518:
	li $t0, 1
	sw $t0, -5212($fp)
label519:
	li $t0, 24287
	sw $t0, -5236($fp)
	lw $t1, -5212($fp)
	lw $t2, -5236($fp)
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -5208($fp)
label517:
label511:
	j label504
label506:
	j label503
label502:
	li $t0, 1017
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	sw $t0, -5284($fp)
	li $t0, 45404
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	sw $t0, -5296($fp)
	li $t0, 54675
	sw $t0, -5300($fp)
	addi $t0, $fp, -5272
	sw $t0, -5304($fp)
	li $t0, 0
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
	li $t0, 63387
	sw $t0, -5324($fp)
	addi $t0, $fp, -5272
	sw $t0, -5328($fp)
	li $t0, 1
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
	li $t0, 6429
	sw $t0, -5348($fp)
	addi $t0, $fp, -5272
	sw $t0, -5352($fp)
	li $t0, 2
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
	li $t0, 3920
	sw $t0, -5372($fp)
	addi $t0, $fp, -5272
	sw $t0, -5376($fp)
	li $t0, 3
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
	li $t0, 43300
	sw $t0, -5396($fp)
	addi $t0, $fp, -5272
	sw $t0, -5400($fp)
	li $t0, 4
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
	li $t0, 25856
	sw $t0, -5420($fp)
	addi $t0, $fp, -5272
	sw $t0, -5424($fp)
	li $t0, 5
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
	li $t0, 4716
	sw $t0, -5444($fp)
	addi $t0, $fp, -5272
	sw $t0, -5448($fp)
	li $t0, 6
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5448($fp)
	lw $t1, -5456($fp)
	add $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5444($fp)
	lw $t1, -5460($fp)
	sw $t0, 0($t1)
	lw $t0, -5460($fp)
	lw $t1, 0($t0)
	sw $t1, -5464($fp)
	li $t0, 46536
	sw $t0, -5468($fp)
	addi $t0, $fp, -5272
	sw $t0, -5472($fp)
	li $t0, 7
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5472($fp)
	lw $t1, -5480($fp)
	add $t0, $t0, $t1
	sw $t0, -5484($fp)
	lw $t0, -5468($fp)
	lw $t1, -5484($fp)
	sw $t0, 0($t1)
	lw $t0, -5484($fp)
	lw $t1, 0($t0)
	sw $t1, -5488($fp)
	li $t0, 39574
	sw $t0, -5492($fp)
	addi $t0, $fp, -5272
	sw $t0, -5496($fp)
	li $t0, 8
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -5496($fp)
	lw $t1, -5504($fp)
	add $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -5492($fp)
	lw $t1, -5508($fp)
	sw $t0, 0($t1)
	lw $t0, -5508($fp)
	lw $t1, 0($t0)
	sw $t1, -5512($fp)
	lw $t0, -5280($fp)
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5292($fp)
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5272
	sw $t0, -5524($fp)
	li $t0, 0
	sw $t0, -5528($fp)
	li $t0, 4
	lw $t1, -5528($fp)
	mul $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	lw $t1, -5524($fp)
	add $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	lw $t1, 0($t0)
	sw $t1, -5540($fp)
	lw $t0, -5540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5272
	sw $t0, -5544($fp)
	li $t0, 1
	sw $t0, -5548($fp)
	li $t0, 4
	lw $t1, -5548($fp)
	mul $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	lw $t1, -5544($fp)
	add $t0, $t0, $t1
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	lw $t1, 0($t0)
	sw $t1, -5560($fp)
	lw $t0, -5560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5272
	sw $t0, -5564($fp)
	li $t0, 2
	sw $t0, -5568($fp)
	li $t0, 4
	lw $t1, -5568($fp)
	mul $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	lw $t1, -5564($fp)
	add $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	lw $t1, 0($t0)
	sw $t1, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5272
	sw $t0, -5584($fp)
	li $t0, 3
	sw $t0, -5588($fp)
	li $t0, 4
	lw $t1, -5588($fp)
	mul $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	lw $t1, -5584($fp)
	add $t0, $t0, $t1
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	lw $t1, 0($t0)
	sw $t1, -5600($fp)
	lw $t0, -5600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5272
	sw $t0, -5604($fp)
	li $t0, 4
	sw $t0, -5608($fp)
	li $t0, 4
	lw $t1, -5608($fp)
	mul $t0, $t0, $t1
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	lw $t1, -5604($fp)
	add $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	lw $t1, 0($t0)
	sw $t1, -5620($fp)
	lw $t0, -5620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5272
	sw $t0, -5624($fp)
	li $t0, 5
	sw $t0, -5628($fp)
	li $t0, 4
	lw $t1, -5628($fp)
	mul $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	lw $t1, -5624($fp)
	add $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, 0($t0)
	sw $t1, -5640($fp)
	lw $t0, -5640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5272
	sw $t0, -5644($fp)
	li $t0, 6
	sw $t0, -5648($fp)
	li $t0, 4
	lw $t1, -5648($fp)
	mul $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	lw $t1, -5644($fp)
	add $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	lw $t1, 0($t0)
	sw $t1, -5660($fp)
	lw $t0, -5660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5272
	sw $t0, -5664($fp)
	li $t0, 7
	sw $t0, -5668($fp)
	li $t0, 4
	lw $t1, -5668($fp)
	mul $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, -5664($fp)
	add $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	lw $t1, 0($t0)
	sw $t1, -5680($fp)
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5272
	sw $t0, -5684($fp)
	li $t0, 8
	sw $t0, -5688($fp)
	li $t0, 4
	lw $t1, -5688($fp)
	mul $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	lw $t1, -5684($fp)
	add $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, 0($t0)
	sw $t1, -5700($fp)
	lw $t0, -5700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5704($fp)
	li $t0, 0
	sw $t0, -5708($fp)
	li $t0, 22106
	sw $t0, -5712($fp)
	li $t0, 61373
	sw $t0, -5716($fp)
	lw $t0, -5712($fp)
	lw $t1, -5716($fp)
	add $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label525:
	li $t0, 31998
	sw $t0, -5724($fp)
	lw $t1, -5724($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -5708($fp)
label524:
	addi $t0, $fp, -260
	sw $t0, -5728($fp)
	li $t0, 3
	sw $t0, -5732($fp)
	li $t0, 4
	lw $t1, -5732($fp)
	mul $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	lw $t1, -5728($fp)
	add $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, 0($t0)
	sw $t1, -5744($fp)
	li $t0, 18806
	sw $t0, -5748($fp)
	lw $t0, -5744($fp)
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	li $t0, 0
	sw $t0, -5756($fp)
	lw $t0, -2068($fp)
	sw $t0, -5760($fp)
	li $t0, 33409
	sw $t0, -5764($fp)
	lw $t0, -5760($fp)
	lw $t1, -5764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5768($fp)
	lw $t1, -5768($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label528
label528:
	li $t0, 49798
	sw $t0, -5772($fp)
	lw $t1, -5772($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -5756($fp)
label527:
	li $t0, 0
	sw $t0, -5776($fp)
	li $t0, 45912
	sw $t0, -5780($fp)
	li $t0, 37087
	sw $t0, -5784($fp)
	lw $t0, -5780($fp)
	lw $t1, -5784($fp)
	sub $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -1552($fp)
	sw $t0, -5792($fp)
	lw $t1, -5788($fp)
	lw $t2, -5792($fp)
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -5776($fp)
label530:
	li $t0, 0
	sw $t0, -5796($fp)
	li $t0, 53779
	sw $t0, -5800($fp)
	lw $t1, -5800($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label531
label531:
	li $t0, 1
	sw $t0, -5796($fp)
label532:
	li $t0, 59943
	sw $t0, -5804($fp)
	lw $t0, -5796($fp)
	lw $t1, -5804($fp)
	add $t0, $t0, $t1
	sw $t0, -5808($fp)
	addi $t0, $fp, -152
	sw $t0, -5812($fp)
	lw $t0, -700($fp)
	sw $t0, -5816($fp)
	li $t0, 4
	lw $t1, -5816($fp)
	mul $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	lw $t1, -5812($fp)
	add $t0, $t0, $t1
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	lw $t1, 0($t0)
	sw $t1, -5828($fp)
	li $t0, 0
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	li $t0, 39264
	sw $t0, -5840($fp)
	lw $t0, -5280($fp)
	sw $t0, -5844($fp)
	lw $t1, -5840($fp)
	lw $t2, -5844($fp)
	beq $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -5836($fp)
label536:
	lw $t0, -2488($fp)
	sw $t0, -5848($fp)
	lw $t1, -5836($fp)
	lw $t2, -5848($fp)
	beq $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -5832($fp)
label534:
	li $t0, 0
	sw $t0, -5852($fp)
	li $t0, 33671
	sw $t0, -5856($fp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5860($fp)
	addi $sp, $sp, 8
	lw $t1, -5860($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -5852($fp)
label538:
	addi $sp, $sp, -4
	lw $t0, -5776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5864($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -5708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5864($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5868($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5868($fp)
	sub $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t1, -5872($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label522
label522:
	addi $t0, $fp, -184
	sw $t0, -5876($fp)
	li $t0, 1
	sw $t0, -5880($fp)
	li $t0, 4
	lw $t1, -5880($fp)
	mul $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	lw $t1, -5876($fp)
	add $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	lw $t1, 0($t0)
	sw $t1, -5892($fp)
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -5704($fp)
label521:
	lw $ra, -4($fp)
	lw $v0, -5704($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label539:
	li $t0, 1913
	sw $t0, -5896($fp)
	li $t0, 0
	lw $t1, -5896($fp)
	sub $t0, $t0, $t1
	sw $t0, -5900($fp)
	li $t0, 0
	sw $t0, -5904($fp)
	addi $t0, $fp, -5272
	sw $t0, -5908($fp)
	lw $t0, -2104($fp)
	sw $t0, -5912($fp)
	li $t0, 4
	lw $t1, -5912($fp)
	mul $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	lw $t1, -5908($fp)
	add $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t0, -5920($fp)
	lw $t1, 0($t0)
	sw $t1, -5924($fp)
	lw $t1, -5924($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label542:
	li $t0, 1
	sw $t0, -5904($fp)
label543:
	lw $t1, -5900($fp)
	lw $t2, -5904($fp)
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 52075
	sw $t0, -5928($fp)
	lw $t1, -5928($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 37304
	sw $t0, -5932($fp)
	li $t0, 0
	sw $t0, -5936($fp)
	lw $t0, -2068($fp)
	sw $t0, -5940($fp)
	lw $t1, -5940($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label547
label547:
	li $t0, 1
	sw $t0, -5936($fp)
label548:
	lw $t0, -5932($fp)
	lw $t1, -5936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5944($fp)
	lw $ra, -4($fp)
	lw $v0, -5944($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label546
label545:
	li $t0, 0
	sw $t0, -5948($fp)
	li $t0, 2930
	sw $t0, -5952($fp)
	li $t0, 31943
	sw $t0, -5956($fp)
	lw $t1, -5952($fp)
	lw $t2, -5956($fp)
	blt $t1, $t2, label554
	j label552
label554:
	li $t0, 26443
	sw $t0, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label553:
	lw $t0, -5292($fp)
	sw $t0, -5964($fp)
	li $t0, 0
	lw $t1, -5964($fp)
	sub $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t1, -5968($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label552
label552:
	lw $t0, -3352($fp)
	sw $t0, -5972($fp)
	lw $t1, -5972($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label551
label551:
	li $t0, 0
	sw $t0, -5976($fp)
	li $t0, 782
	sw $t0, -5980($fp)
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -5976($fp)
label556:
	li $t0, 0
	lw $t1, -5976($fp)
	sub $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -5948($fp)
label550:
label546:
	j label539
label541:
	li $t0, 38372
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	sw $t0, -5996($fp)
	li $t0, 30363
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	sw $t0, -6008($fp)
	lw $t0, 4($fp)
	sw $t0, -6012($fp)
	li $t0, 0
	sw $t0, -6016($fp)
	li $t0, 0
	sw $t0, -6020($fp)
	li $t0, 44082
	sw $t0, -6024($fp)
	li $t0, 0
	sw $t0, -6028($fp)
	lw $t0, -1120($fp)
	sw $t0, -6032($fp)
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label561:
	li $t0, 1
	sw $t0, -6028($fp)
label562:
	lw $t0, -6024($fp)
	lw $t1, -6028($fp)
	mul $t0, $t0, $t1
	sw $t0, -6036($fp)
	lw $t0, -1132($fp)
	sw $t0, -6040($fp)
	lw $t1, -6036($fp)
	lw $t2, -6040($fp)
	bge $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -6020($fp)
label560:
	li $t0, 0
	sw $t0, -6044($fp)
	li $t0, 0
	sw $t0, -6048($fp)
	lw $t0, -712($fp)
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	sw $t0, -6056($fp)
	addi $t0, $fp, -344
	sw $t0, -6060($fp)
	lw $t0, -5992($fp)
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
	addi $sp, $sp, -4
	lw $t0, -6056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6076($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6080($fp)
	addi $sp, $sp, 12
	li $t0, 64229
	sw $t0, -6084($fp)
	lw $t1, -6080($fp)
	lw $t2, -6084($fp)
	bge $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -6048($fp)
label566:
	li $t0, 35079
	sw $t0, -6088($fp)
	lw $t1, -6048($fp)
	lw $t2, -6088($fp)
	bgt $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -6044($fp)
label564:
	lw $t1, -6020($fp)
	lw $t2, -6044($fp)
	beq $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -6016($fp)
label558:
	li $t0, 0
	sw $t0, -6092($fp)
	lw $t0, -436($fp)
	sw $t0, -6096($fp)
	li $t0, 25082
	sw $t0, -6100($fp)
	lw $t0, -6096($fp)
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -3364($fp)
	sw $t0, -6108($fp)
	lw $t0, -6104($fp)
	lw $t1, -6108($fp)
	add $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t1, -6112($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label569
label571:
	li $t0, 38267
	sw $t0, -6116($fp)
	li $t0, 3214
	sw $t0, -6120($fp)
	lw $t1, -6116($fp)
	lw $t2, -6120($fp)
	bne $t1, $t2, label570
	j label569
label570:
	li $t0, 64347
	sw $t0, -6124($fp)
	lw $t1, -6124($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label569
label569:
	addi $t0, $fp, -212
	sw $t0, -6128($fp)
	lw $t0, -1792($fp)
	sw $t0, -6132($fp)
	li $t0, 4
	lw $t1, -6132($fp)
	mul $t0, $t0, $t1
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	lw $t1, -6128($fp)
	add $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	lw $t1, 0($t0)
	sw $t1, -6144($fp)
	addi $t0, $fp, -404
	sw $t0, -6148($fp)
	lw $t0, -2020($fp)
	sw $t0, -6152($fp)
	li $t0, 4
	lw $t1, -6152($fp)
	mul $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	lw $t1, -6148($fp)
	add $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	lw $t1, 0($t0)
	sw $t1, -6164($fp)
	lw $t0, -6144($fp)
	lw $t1, -6164($fp)
	sub $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t1, -6168($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -6092($fp)
label568:
label503:
	addi $t0, $fp, -3920
	sw $t0, -6172($fp)
	li $t0, 0
	sw $t0, -6176($fp)
	li $t0, 4
	lw $t1, -6176($fp)
	mul $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	lw $t1, -6172($fp)
	add $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	lw $t1, 0($t0)
	sw $t1, -6188($fp)
	lw $t0, -6188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3920
	sw $t0, -6192($fp)
	li $t0, 1
	sw $t0, -6196($fp)
	li $t0, 4
	lw $t1, -6196($fp)
	mul $t0, $t0, $t1
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	lw $t1, -6192($fp)
	add $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	lw $t1, 0($t0)
	sw $t1, -6208($fp)
	lw $t0, -6208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3920
	sw $t0, -6212($fp)
	li $t0, 2
	sw $t0, -6216($fp)
	li $t0, 4
	lw $t1, -6216($fp)
	mul $t0, $t0, $t1
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	lw $t1, -6212($fp)
	add $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	lw $t1, 0($t0)
	sw $t1, -6228($fp)
	lw $t0, -6228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3920
	sw $t0, -6232($fp)
	li $t0, 3
	sw $t0, -6236($fp)
	li $t0, 4
	lw $t1, -6236($fp)
	mul $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6240($fp)
	lw $t1, -6232($fp)
	add $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	lw $t1, 0($t0)
	sw $t1, -6248($fp)
	lw $t0, -6248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3920
	sw $t0, -6252($fp)
	li $t0, 4
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
	lw $t0, -6268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3920
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
	lw $t0, -6288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3920
	sw $t0, -6292($fp)
	li $t0, 6
	sw $t0, -6296($fp)
	li $t0, 4
	lw $t1, -6296($fp)
	mul $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	lw $t1, -6292($fp)
	add $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	lw $t1, 0($t0)
	sw $t1, -6308($fp)
	lw $t0, -6308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3948
	sw $t0, -6312($fp)
	li $t0, 0
	sw $t0, -6316($fp)
	li $t0, 4
	lw $t1, -6316($fp)
	mul $t0, $t0, $t1
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	lw $t1, -6312($fp)
	add $t0, $t0, $t1
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	lw $t1, 0($t0)
	sw $t1, -6328($fp)
	lw $t0, -6328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3948
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
	lw $t0, -6348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3948
	sw $t0, -6352($fp)
	li $t0, 2
	sw $t0, -6356($fp)
	li $t0, 4
	lw $t1, -6356($fp)
	mul $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	lw $t1, -6352($fp)
	add $t0, $t0, $t1
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	lw $t1, 0($t0)
	sw $t1, -6368($fp)
	lw $t0, -6368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3948
	sw $t0, -6372($fp)
	li $t0, 3
	sw $t0, -6376($fp)
	li $t0, 4
	lw $t1, -6376($fp)
	mul $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	lw $t1, -6372($fp)
	add $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	lw $t1, 0($t0)
	sw $t1, -6388($fp)
	lw $t0, -6388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3948
	sw $t0, -6392($fp)
	li $t0, 4
	sw $t0, -6396($fp)
	li $t0, 4
	lw $t1, -6396($fp)
	mul $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	lw $t1, -6392($fp)
	add $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	lw $t1, 0($t0)
	sw $t1, -6408($fp)
	lw $t0, -6408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3948
	sw $t0, -6412($fp)
	li $t0, 5
	sw $t0, -6416($fp)
	li $t0, 4
	lw $t1, -6416($fp)
	mul $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	lw $t1, -6412($fp)
	add $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	lw $t1, 0($t0)
	sw $t1, -6428($fp)
	lw $t0, -6428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3948
	sw $t0, -6432($fp)
	li $t0, 6
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
	lw $t0, -6448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4304($fp)
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4316($fp)
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3960
	sw $t0, -6460($fp)
	li $t0, 0
	sw $t0, -6464($fp)
	li $t0, 4
	lw $t1, -6464($fp)
	mul $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	lw $t1, -6460($fp)
	add $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	lw $t1, 0($t0)
	sw $t1, -6476($fp)
	lw $t0, -6476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3960
	sw $t0, -6480($fp)
	li $t0, 1
	sw $t0, -6484($fp)
	li $t0, 4
	lw $t1, -6484($fp)
	mul $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	lw $t1, -6480($fp)
	add $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	lw $t1, 0($t0)
	sw $t1, -6496($fp)
	lw $t0, -6496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3960
	sw $t0, -6500($fp)
	li $t0, 2
	sw $t0, -6504($fp)
	li $t0, 4
	lw $t1, -6504($fp)
	mul $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	lw $t1, -6500($fp)
	add $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	lw $t1, 0($t0)
	sw $t1, -6516($fp)
	lw $t0, -6516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6520($fp)
	lw $t0, -1144($fp)
	sw $t0, -6524($fp)
	li $t0, 10776
	sw $t0, -6528($fp)
	lw $t1, -6524($fp)
	lw $t2, -6528($fp)
	beq $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -6520($fp)
label573:
	li $t0, 22777
	sw $t0, -6532($fp)
	li $t0, 0
	sw $t0, -6536($fp)
	addi $t0, $fp, -124
	sw $t0, -6540($fp)
	lw $t0, -412($fp)
	sw $t0, -6544($fp)
	li $t0, 4
	lw $t1, -6544($fp)
	mul $t0, $t0, $t1
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	lw $t1, -6540($fp)
	add $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	lw $t1, 0($t0)
	sw $t1, -6556($fp)
	li $t0, 28985
	sw $t0, -6560($fp)
	lw $t0, -6556($fp)
	lw $t1, -6560($fp)
	add $t0, $t0, $t1
	sw $t0, -6564($fp)
	li $t0, 0
	sw $t0, -6568($fp)
	addi $t0, $fp, -8
	sw $t0, -6572($fp)
	li $t0, 0
	sw $t0, -6576($fp)
	li $t0, 4
	lw $t1, -6576($fp)
	mul $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	lw $t1, -6572($fp)
	add $t0, $t0, $t1
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	lw $t1, 0($t0)
	sw $t1, -6588($fp)
	lw $t1, -6588($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label578:
	li $t0, 31031
	sw $t0, -6592($fp)
	lw $t1, -6592($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -6568($fp)
label577:
	addi $sp, $sp, -4
	lw $t0, -6564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6568($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6596($fp)
	addi $sp, $sp, 12
	lw $t0, -2488($fp)
	sw $t0, -6600($fp)
	lw $t1, -6596($fp)
	lw $t2, -6600($fp)
	ble $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -6536($fp)
label575:
	lw $t0, -2032($fp)
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -6608($fp)
	li $t0, 0
	sw $t0, -6612($fp)
	addi $t0, $fp, -36
	sw $t0, -6616($fp)
	li $t0, 6
	sw $t0, -6620($fp)
	li $t0, 4
	lw $t1, -6620($fp)
	mul $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	lw $t1, -6616($fp)
	add $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	lw $t1, 0($t0)
	sw $t1, -6632($fp)
	lw $t0, -2020($fp)
	sw $t0, -6636($fp)
	lw $t1, -6632($fp)
	lw $t2, -6636($fp)
	bgt $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -6612($fp)
label580:
	addi $sp, $sp, -4
	lw $t0, -6520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6612($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6640($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -6640($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 47791
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	sw $t0, -6672($fp)
	li $t0, 44883
	sw $t0, -6676($fp)
	addi $t0, $fp, -6652
	sw $t0, -6680($fp)
	li $t0, 0
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6680($fp)
	lw $t1, -6688($fp)
	add $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6676($fp)
	lw $t1, -6692($fp)
	sw $t0, 0($t1)
	lw $t0, -6692($fp)
	lw $t1, 0($t0)
	sw $t1, -6696($fp)
	li $t0, 6614
	sw $t0, -6700($fp)
	addi $t0, $fp, -6652
	sw $t0, -6704($fp)
	li $t0, 1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6704($fp)
	lw $t1, -6712($fp)
	add $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6700($fp)
	lw $t1, -6716($fp)
	sw $t0, 0($t1)
	lw $t0, -6716($fp)
	lw $t1, 0($t0)
	sw $t1, -6720($fp)
	li $t0, 14253
	sw $t0, -6724($fp)
	addi $t0, $fp, -6652
	sw $t0, -6728($fp)
	li $t0, 2
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6728($fp)
	lw $t1, -6736($fp)
	add $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6724($fp)
	lw $t1, -6740($fp)
	sw $t0, 0($t1)
	lw $t0, -6740($fp)
	lw $t1, 0($t0)
	sw $t1, -6744($fp)
	li $t0, 4922
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	sw $t0, -6756($fp)
	li $t0, 8106
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	sw $t0, -6768($fp)
	li $t0, 27270
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	sw $t0, -6780($fp)
	li $t0, 6835
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	sw $t0, -6792($fp)
	li $t0, 60181
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	sw $t0, -6804($fp)
	li $t0, 64574
	sw $t0, -6808($fp)
	addi $t0, $fp, -6660
	sw $t0, -6812($fp)
	li $t0, 0
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6812($fp)
	lw $t1, -6820($fp)
	add $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6808($fp)
	lw $t1, -6824($fp)
	sw $t0, 0($t1)
	lw $t0, -6824($fp)
	lw $t1, 0($t0)
	sw $t1, -6828($fp)
	li $t0, 9766
	sw $t0, -6832($fp)
	addi $t0, $fp, -6660
	sw $t0, -6836($fp)
	li $t0, 1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6836($fp)
	lw $t1, -6844($fp)
	add $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t0, -6832($fp)
	lw $t1, -6848($fp)
	sw $t0, 0($t1)
	lw $t0, -6848($fp)
	lw $t1, 0($t0)
	sw $t1, -6852($fp)
	li $t0, 26589
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	sw $t0, -6864($fp)
	li $t0, 0
	sw $t0, -6868($fp)
	lw $t0, -6668($fp)
	sw $t0, -6872($fp)
	lw $t0, -2056($fp)
	sw $t0, -6876($fp)
	lw $t0, -6872($fp)
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6880($fp)
	li $t0, 25481
	sw $t0, -6884($fp)
	lw $t0, -6880($fp)
	lw $t1, -6884($fp)
	sub $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t0, -3520($fp)
	sw $t0, -6892($fp)
	lw $t1, -6888($fp)
	lw $t2, -6892($fp)
	ble $t1, $t2, label584
	j label583
label584:
	addi $t0, $fp, -184
	sw $t0, -6896($fp)
	li $t0, 1
	sw $t0, -6900($fp)
	li $t0, 4
	lw $t1, -6900($fp)
	mul $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	lw $t1, -6896($fp)
	add $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	lw $t1, 0($t0)
	sw $t1, -6912($fp)
	lw $t1, -6912($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label583
label583:
	li $t0, 0
	sw $t0, -6916($fp)
	li $t0, 55844
	sw $t0, -6920($fp)
	li $t0, 0
	lw $t1, -6920($fp)
	sub $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t1, -6924($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label585:
	li $t0, 1
	sw $t0, -6916($fp)
label586:
	li $t0, 0
	lw $t1, -6916($fp)
	sub $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t1, -6928($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -6868($fp)
label582:
label587:
	addi $t0, $fp, -356
	sw $t0, -6932($fp)
	lw $t0, -2092($fp)
	sw $t0, -6936($fp)
	li $t0, 0
	lw $t1, -6936($fp)
	sub $t0, $t0, $t1
	sw $t0, -6940($fp)
	li $t0, 0
	lw $t1, -6940($fp)
	sub $t0, $t0, $t1
	sw $t0, -6944($fp)
	li $t0, 4
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, -6932($fp)
	add $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	lw $t1, 0($t0)
	sw $t1, -6956($fp)
	li $t0, 0
	sw $t0, -6960($fp)
	li $t0, 0
	sw $t0, -6964($fp)
	li $t0, 54630
	sw $t0, -6968($fp)
	lw $t1, -6968($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label592
label592:
	li $t0, 1
	sw $t0, -6964($fp)
label593:
	lw $t0, -2068($fp)
	sw $t0, -6972($fp)
	lw $t1, -6964($fp)
	lw $t2, -6972($fp)
	blt $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -6960($fp)
label591:
	addi $sp, $sp, -4
	lw $t0, -6960($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6976($fp)
	addi $sp, $sp, 8
	lw $t0, -6956($fp)
	lw $t1, -6976($fp)
	mul $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t1, -6980($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label589
label588:
	li $t0, 63654
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	sw $t0, -6992($fp)
	li $t0, 25388
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	sw $t0, -7004($fp)
	li $t0, 0
	sw $t0, -7008($fp)
	li $t0, 0
	sw $t0, -7012($fp)
	li $t0, 14177
	sw $t0, -7016($fp)
	lw $t0, -7000($fp)
	sw $t0, -7020($fp)
	lw $t0, -7016($fp)
	lw $t1, -7020($fp)
	sub $t0, $t0, $t1
	sw $t0, -7024($fp)
	li $t0, 0
	sw $t0, -7028($fp)
	lw $t0, -3520($fp)
	sw $t0, -7032($fp)
	lw $t0, -1996($fp)
	sw $t0, -7036($fp)
	lw $t1, -7032($fp)
	lw $t2, -7036($fp)
	beq $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -7028($fp)
label599:
	li $t0, 0
	sw $t0, -7040($fp)
	addi $t0, $fp, -96
	sw $t0, -7044($fp)
	li $t0, 4
	sw $t0, -7048($fp)
	li $t0, 4
	lw $t1, -7048($fp)
	mul $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	lw $t1, -7044($fp)
	add $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	lw $t1, 0($t0)
	sw $t1, -7060($fp)
	lw $t1, -7060($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label602:
	lw $t0, -6988($fp)
	sw $t0, -7064($fp)
	lw $t1, -7064($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -7040($fp)
label601:
	addi $sp, $sp, -4
	lw $t0, -7028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7040($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7068($fp)
	addi $sp, $sp, 12
	lw $t0, -7024($fp)
	lw $t1, -7068($fp)
	sub $t0, $t0, $t1
	sw $t0, -7072($fp)
	li $t0, 0
	sw $t0, -7076($fp)
	li $t0, 12988
	sw $t0, -7080($fp)
	lw $t1, -7080($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label603
label603:
	li $t0, 1
	sw $t0, -7076($fp)
label604:
	lw $t0, -3076($fp)
	sw $t0, -7084($fp)
	lw $t0, -7076($fp)
	lw $t1, -7084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7088($fp)
	lw $t1, -7072($fp)
	lw $t2, -7088($fp)
	bgt $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -7012($fp)
label597:
	li $t0, 62896
	sw $t0, -7092($fp)
	lw $t0, -472($fp)
	sw $t0, -7096($fp)
	lw $t0, -7092($fp)
	lw $t1, -7096($fp)
	sub $t0, $t0, $t1
	sw $t0, -7100($fp)
	li $t0, 26224
	sw $t0, -7104($fp)
	lw $t0, -2008($fp)
	sw $t0, -7108($fp)
	lw $t0, -7104($fp)
	lw $t1, -7108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7112($fp)
	li $t0, 0
	lw $t1, -7112($fp)
	sub $t0, $t0, $t1
	sw $t0, -7116($fp)
	addi $sp, $sp, -4
	lw $t0, -7116($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7120($fp)
	addi $sp, $sp, 8
	lw $t0, -7100($fp)
	lw $t1, -7120($fp)
	sub $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t1, -7012($fp)
	lw $t2, -7124($fp)
	ble $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -7008($fp)
label595:
	li $t0, 0
	sw $t0, -7128($fp)
	li $t0, 0
	sw $t0, -7132($fp)
	li $t0, 57711
	sw $t0, -7136($fp)
	li $t0, 0
	lw $t1, -7136($fp)
	sub $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t1, -7140($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label608
label608:
	li $t0, 1
	sw $t0, -7132($fp)
label609:
	li $t0, 60957
	sw $t0, -7144($fp)
	lw $t1, -7132($fp)
	lw $t2, -7144($fp)
	bgt $t1, $t2, label607
	j label606
label607:
	li $t0, 57255
	sw $t0, -7148($fp)
	li $t0, 21160
	sw $t0, -7152($fp)
	li $t0, 0
	lw $t1, -7152($fp)
	sub $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t0, -7148($fp)
	lw $t1, -7156($fp)
	add $t0, $t0, $t1
	sw $t0, -7160($fp)
	lw $t1, -7160($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -7128($fp)
label606:
	li $t0, 0
	sw $t0, -7164($fp)
	lw $t0, -460($fp)
	sw $t0, -7168($fp)
	li $t0, 0
	lw $t1, -7168($fp)
	sub $t0, $t0, $t1
	sw $t0, -7172($fp)
	li $t0, 3415
	sw $t0, -7176($fp)
	lw $t1, -7172($fp)
	lw $t2, -7176($fp)
	blt $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -7164($fp)
label611:
	li $t0, 0
	sw $t0, -7180($fp)
	li $t0, 2496
	sw $t0, -7184($fp)
	lw $t0, -2104($fp)
	sw $t0, -7188($fp)
	lw $t0, -7184($fp)
	lw $t1, -7188($fp)
	sub $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -2032($fp)
	sw $t0, -7196($fp)
	lw $t1, -7192($fp)
	lw $t2, -7196($fp)
	beq $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -7180($fp)
label613:
	li $t0, 0
	sw $t0, -7200($fp)
	lw $t0, -2044($fp)
	sw $t0, -7204($fp)
	lw $t0, -2020($fp)
	sw $t0, -7208($fp)
	lw $t1, -7204($fp)
	lw $t2, -7208($fp)
	ble $t1, $t2, label614
	j label616
label616:
	li $t0, 18198
	sw $t0, -7212($fp)
	lw $t1, -7212($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -7200($fp)
label615:
	addi $sp, $sp, -4
	lw $t0, -7164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7200($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -7216($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -7220($fp)
	li $t0, 63082
	sw $t0, -7224($fp)
	li $t0, 9110
	sw $t0, -7228($fp)
	lw $t0, -7224($fp)
	lw $t1, -7228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7232($fp)
	li $t0, 17668
	sw $t0, -7236($fp)
	lw $t1, -7232($fp)
	lw $t2, -7236($fp)
	blt $t1, $t2, label617
	j label619
label619:
	li $t0, 2468
	sw $t0, -7240($fp)
	lw $t1, -7240($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -7220($fp)
label618:
	lw $t0, -7220($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -7244($fp)
	li $t0, 0
	sw $t0, -7248($fp)
	li $t0, 0
	sw $t0, -7252($fp)
	lw $t0, -1576($fp)
	sw $t0, -7256($fp)
	lw $t0, -1564($fp)
	sw $t0, -7260($fp)
	lw $t1, -7256($fp)
	lw $t2, -7260($fp)
	bge $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -7252($fp)
label623:
	li $t0, 43976
	sw $t0, -7264($fp)
	lw $t1, -7252($fp)
	lw $t2, -7264($fp)
	beq $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -7248($fp)
label621:
	li $t0, 0
	sw $t0, -7268($fp)
	li $t0, 17216
	sw $t0, -7272($fp)
	li $t0, 44938
	sw $t0, -7276($fp)
	lw $t0, -7272($fp)
	lw $t1, -7276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7280($fp)
	lw $t1, -7280($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label626
label626:
	li $t0, 9303
	sw $t0, -7284($fp)
	lw $t1, -7284($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -7268($fp)
label625:
	addi $sp, $sp, -4
	lw $t0, -7268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7288($fp)
	addi $sp, $sp, 8
	li $t0, 11862
	sw $t0, -7292($fp)
	lw $t0, -7288($fp)
	lw $t1, -7292($fp)
	mul $t0, $t0, $t1
	sw $t0, -7296($fp)
	addi $sp, $sp, -4
	lw $t0, -7248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7296($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7300($fp)
	addi $sp, $sp, 12
	j label587
label589:
label627:
	li $t0, 0
	sw $t0, -7304($fp)
	lw $t0, -964($fp)
	sw $t0, -7308($fp)
	lw $t1, -7308($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label630
label630:
	li $t0, 1
	sw $t0, -7304($fp)
label631:
	addi $t0, $fp, -404
	sw $t0, -7312($fp)
	li $t0, 3
	sw $t0, -7316($fp)
	li $t0, 4
	lw $t1, -7316($fp)
	mul $t0, $t0, $t1
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	lw $t1, -7312($fp)
	add $t0, $t0, $t1
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	lw $t1, 0($t0)
	sw $t1, -7328($fp)
	lw $t0, -7304($fp)
	lw $t1, -7328($fp)
	add $t0, $t0, $t1
	sw $t0, -7332($fp)
	lw $t1, -7332($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 29617
	sw $t0, -7336($fp)
	lw $t1, -7336($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
	lw $t0, -6776($fp)
	sw $t0, -7340($fp)
	addi $t0, $fp, -8
	sw $t0, -7344($fp)
	li $t0, 0
	sw $t0, -7348($fp)
	li $t0, 37876
	sw $t0, -7352($fp)
	lw $t1, -7352($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label640
label640:
	lw $t0, -2296($fp)
	sw $t0, -7356($fp)
	lw $t1, -7356($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -7348($fp)
label639:
	li $t0, 4
	lw $t1, -7348($fp)
	mul $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	lw $t1, -7344($fp)
	add $t0, $t0, $t1
	sw $t0, -7364($fp)
	lw $t0, -7364($fp)
	lw $t1, 0($t0)
	sw $t1, -7368($fp)
	lw $t0, -7340($fp)
	lw $t1, -7368($fp)
	mul $t0, $t0, $t1
	sw $t0, -7372($fp)
	lw $t1, -7372($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	lw $t0, -6764($fp)
	sw $t0, -7376($fp)
	li $t0, 0
	lw $t1, -7376($fp)
	sub $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t1, -7380($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	addi $t0, $fp, -68
	sw $t0, -7384($fp)
	li $t0, 0
	sw $t0, -7388($fp)
	li $t0, 0
	sw $t0, -7392($fp)
	lw $t0, -2812($fp)
	sw $t0, -7396($fp)
	li $t0, 59765
	sw $t0, -7400($fp)
	lw $t0, -7396($fp)
	lw $t1, -7400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7404($fp)
	lw $t0, -1552($fp)
	sw $t0, -7408($fp)
	lw $t1, -7404($fp)
	lw $t2, -7408($fp)
	blt $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -7392($fp)
label647:
	li $t0, 18712
	sw $t0, -7412($fp)
	li $t0, 35995
	sw $t0, -7416($fp)
	lw $t0, -7412($fp)
	lw $t1, -7416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7420($fp)
	lw $t1, -7392($fp)
	lw $t2, -7420($fp)
	bge $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -7388($fp)
label645:
	li $t0, 4
	lw $t1, -7388($fp)
	mul $t0, $t0, $t1
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	lw $t1, -7384($fp)
	add $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, 0($t0)
	sw $t1, -7432($fp)
	j label643
label642:
	li $t0, 19617
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	sw $t0, -7444($fp)
	li $t0, 0
	sw $t0, -7448($fp)
	lw $t0, -7440($fp)
	sw $t0, -7452($fp)
	li $t0, 0
	lw $t1, -7452($fp)
	sub $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t1, -7456($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label648
label648:
	li $t0, 1
	sw $t0, -7448($fp)
label649:
label643:
	j label637
label636:
	li $t0, 0
	sw $t0, -7460($fp)
	li $t0, 32889
	sw $t0, -7464($fp)
	lw $t0, -1984($fp)
	sw $t0, -7468($fp)
	lw $t0, -7464($fp)
	lw $t1, -7468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7472($fp)
	li $t0, 0
	sw $t0, -7476($fp)
	li $t0, 6844
	sw $t0, -7480($fp)
	lw $t1, -7480($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label652:
	li $t0, 1
	sw $t0, -7476($fp)
label653:
	lw $t0, -7472($fp)
	lw $t1, -7476($fp)
	sub $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -712($fp)
	sw $t0, -7488($fp)
	lw $t0, -1984($fp)
	sw $t0, -7492($fp)
	lw $t0, -7488($fp)
	lw $t1, -7492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7496($fp)
	li $t0, 4204
	sw $t0, -7500($fp)
	lw $t0, -7496($fp)
	lw $t1, -7500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7504($fp)
	addi $t0, $fp, -304
	sw $t0, -7508($fp)
	li $t0, 0
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
	lw $t0, -6668($fp)
	sw $t0, -7528($fp)
	li $t0, 0
	lw $t1, -7528($fp)
	sub $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t0, -412($fp)
	sw $t0, -7536($fp)
	lw $t0, -1372($fp)
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -7544($fp)
	addi $sp, $sp, -4
	lw $t0, -7504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7544($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7548($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -7548($fp)
	sub $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t0, -7484($fp)
	lw $t1, -7552($fp)
	add $t0, $t0, $t1
	sw $t0, -7556($fp)
	addi $t0, $fp, -124
	sw $t0, -7560($fp)
	addi $t0, $fp, -124
	sw $t0, -7564($fp)
	lw $t0, -6776($fp)
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
	li $t0, 4
	lw $t1, -7580($fp)
	mul $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	lw $t1, -7560($fp)
	add $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	lw $t1, 0($t0)
	sw $t1, -7592($fp)
	lw $t1, -7556($fp)
	lw $t2, -7592($fp)
	beq $t1, $t2, label650
	j label651
label650:
	li $t0, 1
	sw $t0, -7460($fp)
label651:
label637:
	j label634
label633:
	li $t0, 8908
	sw $t0, -7596($fp)
	lw $t0, -712($fp)
	sw $t0, -7600($fp)
	lw $t0, -7596($fp)
	lw $t1, -7600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7604($fp)
label634:
	j label627
label629:
label654:
	addi $t0, $fp, -212
	sw $t0, -7608($fp)
	li $t0, 0
	sw $t0, -7612($fp)
	li $t0, 38052
	sw $t0, -7616($fp)
	lw $t1, -7616($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label657
label657:
	li $t0, 1
	sw $t0, -7612($fp)
label658:
	lw $t0, -7612($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -7620($fp)
	li $t0, 4
	lw $t1, -7620($fp)
	mul $t0, $t0, $t1
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	lw $t1, -7608($fp)
	add $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	lw $t1, 0($t0)
	sw $t1, -7632($fp)
	lw $t1, -7632($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label656
label655:
	lw $t0, -6752($fp)
	sw $t0, -7636($fp)
	li $t0, 65162
	sw $t0, -7640($fp)
	lw $t0, -7636($fp)
	lw $t1, -7640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7644($fp)
	lw $t1, -7644($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label660
label662:
	li $t0, 0
	sw $t0, -7648($fp)
	lw $t0, -3388($fp)
	sw $t0, -7652($fp)
	lw $t1, -7652($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label663
label663:
	li $t0, 1
	sw $t0, -7648($fp)
label664:
	li $t0, 0
	lw $t1, -7648($fp)
	sub $t0, $t0, $t1
	sw $t0, -7656($fp)
	li $t0, 0
	sw $t0, -7660($fp)
	li $t0, 628
	sw $t0, -7664($fp)
	lw $t1, -7664($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label665
label665:
	li $t0, 1
	sw $t0, -7660($fp)
label666:
	lw $t1, -7656($fp)
	lw $t2, -7660($fp)
	bne $t1, $t2, label659
	j label660
label659:
	li $t0, 0
	sw $t0, -7668($fp)
	lw $t0, -6860($fp)
	sw $t0, -7672($fp)
	lw $t0, -3352($fp)
	sw $t0, -7676($fp)
	lw $t0, -7672($fp)
	lw $t1, -7676($fp)
	sub $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t1, -7680($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label669
label669:
	li $t0, 59212
	sw $t0, -7684($fp)
	lw $t1, -7684($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -7668($fp)
label668:
	lw $t0, -7668($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -7688($fp)
	lw $ra, -4($fp)
	lw $v0, -7688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label661
label660:
label670:
	li $t0, 17824
	sw $t0, -7692($fp)
	addi $t0, $fp, -356
	sw $t0, -7696($fp)
	li $t0, 2
	sw $t0, -7700($fp)
	li $t0, 4
	lw $t1, -7700($fp)
	mul $t0, $t0, $t1
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	lw $t1, -7696($fp)
	add $t0, $t0, $t1
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	lw $t1, 0($t0)
	sw $t1, -7712($fp)
	lw $t0, -7692($fp)
	lw $t1, -7712($fp)
	sub $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t1, -7716($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label672
label673:
	li $t0, 15370
	sw $t0, -7720($fp)
	lw $t1, -7720($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label672
label671:
	li $t0, 0
	sw $t0, -7724($fp)
	li $t0, 0
	sw $t0, -7728($fp)
	lw $t0, -2068($fp)
	sw $t0, -7732($fp)
	li $t0, 12234
	sw $t0, -7736($fp)
	lw $t1, -7732($fp)
	lw $t2, -7736($fp)
	blt $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -7728($fp)
label680:
	li $t0, 14759
	sw $t0, -7740($fp)
	lw $t1, -7728($fp)
	lw $t2, -7740($fp)
	ble $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -7724($fp)
label678:
	lw $t0, -1132($fp)
	sw $t0, -7744($fp)
	lw $t0, -7744($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -7748($fp)
	addi $sp, $sp, -4
	lw $t0, -7724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7748($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7752($fp)
	addi $sp, $sp, 12
	lw $t1, -7752($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label675
label674:
	li $t0, 0
	sw $t0, -7756($fp)
	li $t0, 0
	sw $t0, -7760($fp)
	lw $t0, -2080($fp)
	sw $t0, -7764($fp)
	lw $t0, -3532($fp)
	sw $t0, -7768($fp)
	lw $t0, -7764($fp)
	lw $t1, -7768($fp)
	add $t0, $t0, $t1
	sw $t0, -7772($fp)
	li $t0, 17838
	sw $t0, -7776($fp)
	lw $t1, -7772($fp)
	lw $t2, -7776($fp)
	ble $t1, $t2, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -7760($fp)
label687:
	addi $t0, $fp, -6652
	sw $t0, -7780($fp)
	lw $t0, -700($fp)
	sw $t0, -7784($fp)
	li $t0, 4
	lw $t1, -7784($fp)
	mul $t0, $t0, $t1
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	lw $t1, -7780($fp)
	add $t0, $t0, $t1
	sw $t0, -7792($fp)
	lw $t0, -7792($fp)
	lw $t1, 0($t0)
	sw $t1, -7796($fp)
	lw $t1, -7760($fp)
	lw $t2, -7796($fp)
	ble $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -7756($fp)
label685:
	lw $t0, -7756($fp)
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	sw $t0, -7800($fp)
	lw $t1, -7800($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
	lw $t0, -3544($fp)
	sw $t0, -7804($fp)
	lw $t0, -1180($fp)
	sw $t0, -7808($fp)
	lw $t0, -7804($fp)
	lw $t1, -7808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7812($fp)
	li $t0, 29450
	sw $t0, -7816($fp)
	lw $t0, -7812($fp)
	lw $t1, -7816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7820($fp)
	addi $sp, $sp, -4
	lw $t0, -7820($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7824($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -7824($fp)
	sub $t0, $t0, $t1
	sw $t0, -7828($fp)
	addi $t0, $fp, -384
	sw $t0, -7832($fp)
	lw $t0, -2536($fp)
	sw $t0, -7836($fp)
	li $t0, 4
	lw $t1, -7836($fp)
	mul $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	lw $t1, -7832($fp)
	add $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	lw $t1, 0($t0)
	sw $t1, -7848($fp)
	lw $t0, -3520($fp)
	sw $t0, -7852($fp)
	addi $sp, $sp, -4
	lw $t0, -7848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7852($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7856($fp)
	addi $sp, $sp, 12
	lw $t0, -7828($fp)
	lw $t1, -7856($fp)
	add $t0, $t0, $t1
	sw $t0, -7860($fp)
	j label683
label682:
	li $t0, 0
	sw $t0, -7864($fp)
	li $t0, 59697
	sw $t0, -7868($fp)
	li $t0, 27142
	sw $t0, -7872($fp)
	lw $t0, -7868($fp)
	lw $t1, -7872($fp)
	mul $t0, $t0, $t1
	sw $t0, -7876($fp)
	li $t0, 0
	lw $t1, -7876($fp)
	sub $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -2536($fp)
	sw $t0, -7884($fp)
	lw $t0, -7880($fp)
	lw $t1, -7884($fp)
	sub $t0, $t0, $t1
	sw $t0, -7888($fp)
	lw $t0, -6800($fp)
	sw $t0, -7892($fp)
	lw $t0, -7888($fp)
	lw $t1, -7892($fp)
	sub $t0, $t0, $t1
	sw $t0, -7896($fp)
	li $t0, 0
	sw $t0, -7900($fp)
	lw $t0, -1372($fp)
	sw $t0, -7904($fp)
	lw $t0, -2068($fp)
	sw $t0, -7908($fp)
	lw $t0, -7904($fp)
	lw $t1, -7908($fp)
	add $t0, $t0, $t1
	sw $t0, -7912($fp)
	lw $t0, -2488($fp)
	sw $t0, -7916($fp)
	lw $t0, -6800($fp)
	sw $t0, -7920($fp)
	lw $t0, -7916($fp)
	lw $t1, -7920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7924($fp)
	lw $t1, -7912($fp)
	lw $t2, -7924($fp)
	ble $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -7900($fp)
label691:
	lw $t1, -7896($fp)
	lw $t2, -7900($fp)
	beq $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -7864($fp)
label689:
label683:
	j label676
label675:
	addi $t0, $fp, -6660
	sw $t0, -7928($fp)
	li $t0, 0
	sw $t0, -7932($fp)
	li $t0, 0
	sw $t0, -7936($fp)
	li $t0, 41312
	sw $t0, -7940($fp)
	li $t0, 38137
	sw $t0, -7944($fp)
	lw $t0, -7940($fp)
	lw $t1, -7944($fp)
	sub $t0, $t0, $t1
	sw $t0, -7948($fp)
	li $t0, 46211
	sw $t0, -7952($fp)
	lw $t1, -7948($fp)
	lw $t2, -7952($fp)
	beq $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -7936($fp)
label695:
	addi $t0, $fp, -184
	sw $t0, -7956($fp)
	lw $t0, -3076($fp)
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
	lw $t1, -7936($fp)
	lw $t2, -7972($fp)
	beq $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -7932($fp)
label693:
	li $t0, 4
	lw $t1, -7932($fp)
	mul $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	lw $t1, -7928($fp)
	add $t0, $t0, $t1
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	lw $t1, 0($t0)
	sw $t1, -7984($fp)
label676:
	j label670
label672:
label661:
	j label654
label656:
	li $t0, 14227
	sw $t0, -8020($fp)
	lw $t0, -8020($fp)
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	sw $t0, -8028($fp)
	li $t0, 42058
	sw $t0, -8032($fp)
	addi $t0, $fp, -8016
	sw $t0, -8036($fp)
	li $t0, 0
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8044($fp)
	lw $t0, -8036($fp)
	lw $t1, -8044($fp)
	add $t0, $t0, $t1
	sw $t0, -8048($fp)
	lw $t0, -8032($fp)
	lw $t1, -8048($fp)
	sw $t0, 0($t1)
	lw $t0, -8048($fp)
	lw $t1, 0($t0)
	sw $t1, -8052($fp)
	li $t0, 10293
	sw $t0, -8056($fp)
	addi $t0, $fp, -8016
	sw $t0, -8060($fp)
	li $t0, 1
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8068($fp)
	lw $t0, -8060($fp)
	lw $t1, -8068($fp)
	add $t0, $t0, $t1
	sw $t0, -8072($fp)
	lw $t0, -8056($fp)
	lw $t1, -8072($fp)
	sw $t0, 0($t1)
	lw $t0, -8072($fp)
	lw $t1, 0($t0)
	sw $t1, -8076($fp)
	li $t0, 52104
	sw $t0, -8080($fp)
	addi $t0, $fp, -8016
	sw $t0, -8084($fp)
	li $t0, 2
	sw $t0, -8088($fp)
	lw $t0, -8088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8092($fp)
	lw $t0, -8084($fp)
	lw $t1, -8092($fp)
	add $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8080($fp)
	lw $t1, -8096($fp)
	sw $t0, 0($t1)
	lw $t0, -8096($fp)
	lw $t1, 0($t0)
	sw $t1, -8100($fp)
	li $t0, 36287
	sw $t0, -8104($fp)
	addi $t0, $fp, -8016
	sw $t0, -8108($fp)
	li $t0, 3
	sw $t0, -8112($fp)
	lw $t0, -8112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8116($fp)
	lw $t0, -8108($fp)
	lw $t1, -8116($fp)
	add $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t0, -8104($fp)
	lw $t1, -8120($fp)
	sw $t0, 0($t1)
	lw $t0, -8120($fp)
	lw $t1, 0($t0)
	sw $t1, -8124($fp)
	li $t0, 29005
	sw $t0, -8128($fp)
	addi $t0, $fp, -8016
	sw $t0, -8132($fp)
	li $t0, 4
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8132($fp)
	lw $t1, -8140($fp)
	add $t0, $t0, $t1
	sw $t0, -8144($fp)
	lw $t0, -8128($fp)
	lw $t1, -8144($fp)
	sw $t0, 0($t1)
	lw $t0, -8144($fp)
	lw $t1, 0($t0)
	sw $t1, -8148($fp)
	li $t0, 22563
	sw $t0, -8152($fp)
	addi $t0, $fp, -8016
	sw $t0, -8156($fp)
	li $t0, 5
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8156($fp)
	lw $t1, -8164($fp)
	add $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8152($fp)
	lw $t1, -8168($fp)
	sw $t0, 0($t1)
	lw $t0, -8168($fp)
	lw $t1, 0($t0)
	sw $t1, -8172($fp)
	li $t0, 55905
	sw $t0, -8176($fp)
	addi $t0, $fp, -8016
	sw $t0, -8180($fp)
	li $t0, 6
	sw $t0, -8184($fp)
	lw $t0, -8184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8188($fp)
	lw $t0, -8180($fp)
	lw $t1, -8188($fp)
	add $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t0, -8176($fp)
	lw $t1, -8192($fp)
	sw $t0, 0($t1)
	lw $t0, -8192($fp)
	lw $t1, 0($t0)
	sw $t1, -8196($fp)
	li $t0, 61894
	sw $t0, -8200($fp)
	addi $t0, $fp, -8016
	sw $t0, -8204($fp)
	li $t0, 7
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8212($fp)
	lw $t0, -8204($fp)
	lw $t1, -8212($fp)
	add $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t0, -8200($fp)
	lw $t1, -8216($fp)
	sw $t0, 0($t1)
	lw $t0, -8216($fp)
	lw $t1, 0($t0)
	sw $t1, -8220($fp)
	li $t0, 29407
	sw $t0, -8224($fp)
	lw $t0, -8224($fp)
	sw $t0, -8228($fp)
	lw $t0, -8228($fp)
	sw $t0, -8232($fp)
	li $t0, 38589
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	sw $t0, -8240($fp)
	lw $t0, -8240($fp)
	sw $t0, -8244($fp)
	li $t0, 0
	sw $t0, -8248($fp)
	li $t0, 20277
	sw $t0, -8252($fp)
	li $t0, 0
	lw $t1, -8252($fp)
	sub $t0, $t0, $t1
	sw $t0, -8256($fp)
	lw $t0, -1552($fp)
	sw $t0, -8260($fp)
	lw $t1, -8256($fp)
	lw $t2, -8260($fp)
	bne $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -8248($fp)
label700:
	li $t0, 897
	sw $t0, -8264($fp)
	lw $t0, -2296($fp)
	sw $t0, -8268($fp)
	lw $t0, -8264($fp)
	lw $t1, -8268($fp)
	mul $t0, $t0, $t1
	sw $t0, -8272($fp)
	li $t0, 63483
	sw $t0, -8276($fp)
	lw $t0, -8272($fp)
	lw $t1, -8276($fp)
	add $t0, $t0, $t1
	sw $t0, -8280($fp)
	lw $t0, -412($fp)
	sw $t0, -8284($fp)
	lw $t0, -8024($fp)
	sw $t0, -8288($fp)
	lw $t0, -6776($fp)
	sw $t0, -8292($fp)
	lw $t0, -8288($fp)
	lw $t1, -8292($fp)
	mul $t0, $t0, $t1
	sw $t0, -8296($fp)
	li $t0, 5518
	sw $t0, -8300($fp)
	lw $t0, -8296($fp)
	lw $t1, -8300($fp)
	sub $t0, $t0, $t1
	sw $t0, -8304($fp)
	li $t0, 51062
	sw $t0, -8308($fp)
	li $t0, 51249
	sw $t0, -8312($fp)
	lw $t0, -8308($fp)
	lw $t1, -8312($fp)
	add $t0, $t0, $t1
	sw $t0, -8316($fp)
	li $t0, 33238
	sw $t0, -8320($fp)
	li $t0, 48125
	sw $t0, -8324($fp)
	lw $t0, -8320($fp)
	lw $t1, -8324($fp)
	mul $t0, $t0, $t1
	sw $t0, -8328($fp)
	li $t0, 1
	sw $t0, -8332($fp)
	lw $t0, -8328($fp)
	lw $t1, -8332($fp)
	mul $t0, $t0, $t1
	sw $t0, -8336($fp)
	lw $t0, -520($fp)
	sw $t0, -8340($fp)
	lw $t0, -700($fp)
	sw $t0, -8344($fp)
	lw $t0, -8340($fp)
	lw $t1, -8344($fp)
	mul $t0, $t0, $t1
	sw $t0, -8348($fp)
	li $t0, 14751
	sw $t0, -8352($fp)
	lw $t0, -8348($fp)
	lw $t1, -8352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8356($fp)
	addi $sp, $sp, -4
	lw $t0, -8284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8356($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -8360($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8364($fp)
	li $t0, 33612
	sw $t0, -8368($fp)
	li $t0, 47497
	sw $t0, -8372($fp)
	lw $t0, -8368($fp)
	lw $t1, -8372($fp)
	add $t0, $t0, $t1
	sw $t0, -8376($fp)
	lw $t1, -8376($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label703
label703:
	lw $t0, -940($fp)
	sw $t0, -8380($fp)
	lw $t1, -8380($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -8364($fp)
label702:
	li $t0, 42235
	sw $t0, -8384($fp)
	addi $sp, $sp, -4
	lw $t0, -8248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8384($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -8388($fp)
	addi $sp, $sp, 24
	lw $t1, -8388($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label697
label696:
	li $t0, 18735
	sw $t0, -8392($fp)
	lw $t0, -8392($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -8396($fp)
	addi $sp, $sp, -4
	lw $t0, -8396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8400($fp)
	addi $sp, $sp, 8
	lw $t0, -1552($fp)
	sw $t0, -8404($fp)
	lw $t0, -8400($fp)
	lw $t1, -8404($fp)
	mul $t0, $t0, $t1
	sw $t0, -8408($fp)
	lw $t0, -700($fp)
	sw $t0, -8412($fp)
	li $t0, 0
	lw $t1, -8412($fp)
	sub $t0, $t0, $t1
	sw $t0, -8416($fp)
	li $t0, 0
	lw $t1, -8416($fp)
	sub $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t0, -8408($fp)
	lw $t1, -8420($fp)
	mul $t0, $t0, $t1
	sw $t0, -8424($fp)
	li $t0, 27398
	sw $t0, -8428($fp)
	li $t0, 0
	lw $t1, -8428($fp)
	sub $t0, $t0, $t1
	sw $t0, -8432($fp)
	lw $t0, -8424($fp)
	lw $t1, -8432($fp)
	add $t0, $t0, $t1
	sw $t0, -8436($fp)
label697:
	li $t0, 0
	sw $t0, -8440($fp)
	lw $t0, -2056($fp)
	sw $t0, -8444($fp)
	li $t0, 52575
	sw $t0, -8448($fp)
	lw $t0, -8444($fp)
	lw $t1, -8448($fp)
	add $t0, $t0, $t1
	sw $t0, -8452($fp)
	lw $t0, -2512($fp)
	sw $t0, -8456($fp)
	lw $t0, -8452($fp)
	lw $t1, -8456($fp)
	sub $t0, $t0, $t1
	sw $t0, -8460($fp)
	lw $t0, -6752($fp)
	sw $t0, -8464($fp)
	lw $t0, -2080($fp)
	sw $t0, -8468($fp)
	li $t0, 45877
	sw $t0, -8472($fp)
	lw $t0, -8468($fp)
	lw $t1, -8472($fp)
	mul $t0, $t0, $t1
	sw $t0, -8476($fp)
	li $t0, 3174
	sw $t0, -8480($fp)
	lw $t0, -8476($fp)
	lw $t1, -8480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8484($fp)
	li $t0, 0
	sw $t0, -8488($fp)
	lw $t0, -2512($fp)
	sw $t0, -8492($fp)
	lw $t0, -520($fp)
	sw $t0, -8496($fp)
	lw $t1, -8492($fp)
	lw $t2, -8496($fp)
	bgt $t1, $t2, label711
	j label710
label711:
	li $t0, 14438
	sw $t0, -8500($fp)
	lw $t1, -8500($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -8488($fp)
label710:
	addi $sp, $sp, -4
	lw $t0, -8460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8488($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8504($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -8504($fp)
	sub $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t1, -8508($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label707
label707:
	li $t0, 1
	sw $t0, -8440($fp)
label708:
	li $t0, 0
	lw $t1, -8440($fp)
	sub $t0, $t0, $t1
	sw $t0, -8512($fp)
	lw $t1, -8512($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label705
label704:
	li $t0, 0
	sw $t0, -8516($fp)
	li $t0, 62209
	sw $t0, -8520($fp)
	lw $t0, -8240($fp)
	sw $t0, -8524($fp)
	lw $t1, -8520($fp)
	lw $t2, -8524($fp)
	beq $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -8516($fp)
label716:
	li $t0, 0
	sw $t0, -8528($fp)
	li $t0, 0
	sw $t0, -8532($fp)
	li $t0, 55753
	sw $t0, -8536($fp)
	lw $t0, -2116($fp)
	sw $t0, -8540($fp)
	lw $t1, -8536($fp)
	lw $t2, -8540($fp)
	bgt $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -8532($fp)
label720:
	lw $t0, -1984($fp)
	sw $t0, -8544($fp)
	lw $t1, -8532($fp)
	lw $t2, -8544($fp)
	blt $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -8528($fp)
label718:
	li $t0, 315
	sw $t0, -8548($fp)
	li $t0, 26533
	sw $t0, -8552($fp)
	lw $t0, -8548($fp)
	lw $t1, -8552($fp)
	mul $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -1984($fp)
	sw $t0, -8560($fp)
	lw $t0, -8556($fp)
	lw $t1, -8560($fp)
	sub $t0, $t0, $t1
	sw $t0, -8564($fp)
	lw $t0, -8228($fp)
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -8572($fp)
	lw $t0, -2092($fp)
	sw $t0, -8576($fp)
	lw $t0, -3388($fp)
	sw $t0, -8580($fp)
	lw $t0, -8576($fp)
	lw $t1, -8580($fp)
	sub $t0, $t0, $t1
	sw $t0, -8584($fp)
	li $t0, 0
	sw $t0, -8588($fp)
	li $t0, 0
	sw $t0, -8592($fp)
	li $t0, 3970
	sw $t0, -8596($fp)
	lw $t0, -2284($fp)
	sw $t0, -8600($fp)
	lw $t1, -8596($fp)
	lw $t2, -8600($fp)
	bge $t1, $t2, label723
	j label724
label723:
	li $t0, 1
	sw $t0, -8592($fp)
label724:
	li $t0, 65384
	sw $t0, -8604($fp)
	lw $t1, -8592($fp)
	lw $t2, -8604($fp)
	bge $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -8588($fp)
label722:
	lw $t0, -2272($fp)
	sw $t0, -8608($fp)
	addi $sp, $sp, -4
	lw $t0, -8564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8608($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -8612($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -236
	sw $t0, -8616($fp)
	li $t0, 1
	sw $t0, -8620($fp)
	li $t0, 4
	lw $t1, -8620($fp)
	mul $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t0, -8624($fp)
	lw $t1, -8616($fp)
	add $t0, $t0, $t1
	sw $t0, -8628($fp)
	lw $t0, -8628($fp)
	lw $t1, 0($t0)
	sw $t1, -8632($fp)
	li $t0, 36846
	sw $t0, -8636($fp)
	lw $t0, -8632($fp)
	lw $t1, -8636($fp)
	add $t0, $t0, $t1
	sw $t0, -8640($fp)
	li $t0, 0
	sw $t0, -8644($fp)
	lw $t0, -2824($fp)
	sw $t0, -8648($fp)
	li $t0, 26553
	sw $t0, -8652($fp)
	lw $t0, -8648($fp)
	lw $t1, -8652($fp)
	mul $t0, $t0, $t1
	sw $t0, -8656($fp)
	lw $t0, -484($fp)
	sw $t0, -8660($fp)
	lw $t1, -8656($fp)
	lw $t2, -8660($fp)
	blt $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -8644($fp)
label726:
	addi $sp, $sp, -4
	lw $t0, -8516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8644($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -8664($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8668($fp)
	li $t0, 55940
	sw $t0, -8672($fp)
	lw $t0, -520($fp)
	sw $t0, -8676($fp)
	lw $t0, -8672($fp)
	lw $t1, -8676($fp)
	sub $t0, $t0, $t1
	sw $t0, -8680($fp)
	lw $t0, -2020($fp)
	sw $t0, -8684($fp)
	lw $t1, -8680($fp)
	lw $t2, -8684($fp)
	blt $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -8668($fp)
label728:
	lw $t1, -8664($fp)
	lw $t2, -8668($fp)
	bne $t1, $t2, label712
	j label713
label712:
label729:
	lw $t0, -3544($fp)
	sw $t0, -8688($fp)
	lw $t1, -8688($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label731
label730:
	li $t0, 0
	sw $t0, -8692($fp)
	addi $t0, $fp, -8016
	sw $t0, -8696($fp)
	li $t0, 4
	sw $t0, -8700($fp)
	li $t0, 4
	lw $t1, -8700($fp)
	mul $t0, $t0, $t1
	sw $t0, -8704($fp)
	lw $t0, -8704($fp)
	lw $t1, -8696($fp)
	add $t0, $t0, $t1
	sw $t0, -8708($fp)
	lw $t0, -8708($fp)
	lw $t1, 0($t0)
	sw $t1, -8712($fp)
	addi $t0, $fp, -236
	sw $t0, -8716($fp)
	lw $t0, -472($fp)
	sw $t0, -8720($fp)
	li $t0, 4
	lw $t1, -8720($fp)
	mul $t0, $t0, $t1
	sw $t0, -8724($fp)
	lw $t0, -8724($fp)
	lw $t1, -8716($fp)
	add $t0, $t0, $t1
	sw $t0, -8728($fp)
	lw $t0, -8728($fp)
	lw $t1, 0($t0)
	sw $t1, -8732($fp)
	addi $sp, $sp, -4
	lw $t0, -8732($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8736($fp)
	addi $sp, $sp, 8
	lw $t0, -8712($fp)
	lw $t1, -8736($fp)
	mul $t0, $t0, $t1
	sw $t0, -8740($fp)
	lw $t1, -8740($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label735
label735:
	li $t0, 0
	sw $t0, -8744($fp)
	lw $t0, -520($fp)
	sw $t0, -8748($fp)
	lw $t1, -8748($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label736
label736:
	li $t0, 1
	sw $t0, -8744($fp)
label737:
	lw $t0, -6668($fp)
	sw $t0, -8752($fp)
	lw $t0, -8744($fp)
	lw $t1, -8752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8756($fp)
	lw $t1, -8756($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label734
label734:
	li $t0, 24016
	sw $t0, -8760($fp)
	li $t0, 10768
	sw $t0, -8764($fp)
	lw $t0, -8760($fp)
	lw $t1, -8764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8768($fp)
	li $t0, 53659
	sw $t0, -8772($fp)
	lw $t0, -8768($fp)
	lw $t1, -8772($fp)
	mul $t0, $t0, $t1
	sw $t0, -8776($fp)
	addi $t0, $fp, -8
	sw $t0, -8780($fp)
	li $t0, 0
	sw $t0, -8784($fp)
	li $t0, 4
	lw $t1, -8784($fp)
	mul $t0, $t0, $t1
	sw $t0, -8788($fp)
	lw $t0, -8788($fp)
	lw $t1, -8780($fp)
	add $t0, $t0, $t1
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	lw $t1, 0($t0)
	sw $t1, -8796($fp)
	lw $t1, -8776($fp)
	lw $t2, -8796($fp)
	beq $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -8692($fp)
label733:
	j label729
label731:
	j label714
label713:
	li $t0, 62086
	sw $t0, -8800($fp)
label714:
	j label706
label705:
label738:
	addi $t0, $fp, -124
	sw $t0, -8804($fp)
	lw $t0, -520($fp)
	sw $t0, -8808($fp)
	li $t0, 0
	lw $t1, -8808($fp)
	sub $t0, $t0, $t1
	sw $t0, -8812($fp)
	li $t0, 4
	lw $t1, -8812($fp)
	mul $t0, $t0, $t1
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	lw $t1, -8804($fp)
	add $t0, $t0, $t1
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	lw $t1, 0($t0)
	sw $t1, -8824($fp)
	addi $t0, $fp, -72
	sw $t0, -8828($fp)
	lw $t0, -2524($fp)
	sw $t0, -8832($fp)
	li $t0, 4
	lw $t1, -8832($fp)
	mul $t0, $t0, $t1
	sw $t0, -8836($fp)
	lw $t0, -8836($fp)
	lw $t1, -8828($fp)
	add $t0, $t0, $t1
	sw $t0, -8840($fp)
	lw $t0, -8840($fp)
	lw $t1, 0($t0)
	sw $t1, -8844($fp)
	lw $t0, -8824($fp)
	lw $t1, -8844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8848($fp)
	li $t0, 0
	sw $t0, -8852($fp)
	li $t0, 42781
	sw $t0, -8856($fp)
	lw $t1, -8856($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label741
label741:
	li $t0, 1
	sw $t0, -8852($fp)
label742:
	lw $t0, -8848($fp)
	lw $t1, -8852($fp)
	mul $t0, $t0, $t1
	sw $t0, -8860($fp)
	lw $t1, -8860($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label740
label739:
	lw $t0, -1972($fp)
	sw $t0, -8864($fp)
	j label738
label740:
label706:
	lw $t0, -1984($fp)
	sw $t0, -8868($fp)
	li $t0, 0
	lw $t1, -8868($fp)
	sub $t0, $t0, $t1
	sw $t0, -8872($fp)
	li $t0, 44607
	sw $t0, -8876($fp)
	lw $t0, -8872($fp)
	lw $t1, -8876($fp)
	add $t0, $t0, $t1
	sw $t0, -8880($fp)
	li $t0, 2068
	sw $t0, -8884($fp)
	lw $t0, -1996($fp)
	sw $t0, -8888($fp)
	lw $t0, -8884($fp)
	lw $t1, -8888($fp)
	mul $t0, $t0, $t1
	sw $t0, -8892($fp)
	lw $t0, -8880($fp)
	lw $t1, -8892($fp)
	add $t0, $t0, $t1
	sw $t0, -8896($fp)
	lw $t0, -8896($fp)
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	sw $t0, -8900($fp)
	li $t0, 43678
	sw $t0, -8904($fp)
	addi $t0, $fp, -356
	sw $t0, -8908($fp)
	lw $t0, -1372($fp)
	sw $t0, -8912($fp)
	li $t0, 4
	lw $t1, -8912($fp)
	mul $t0, $t0, $t1
	sw $t0, -8916($fp)
	lw $t0, -8916($fp)
	lw $t1, -8908($fp)
	add $t0, $t0, $t1
	sw $t0, -8920($fp)
	lw $t0, -8920($fp)
	lw $t1, 0($t0)
	sw $t1, -8924($fp)
	lw $t0, -8904($fp)
	lw $t1, -8924($fp)
	add $t0, $t0, $t1
	sw $t0, -8928($fp)
	lw $t1, -8928($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 42554
	sw $t0, -8932($fp)
	lw $t0, -8932($fp)
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	sw $t0, -8940($fp)
	li $t0, 22345
	sw $t0, -8944($fp)
	lw $t0, -8944($fp)
	sw $t0, -8948($fp)
	lw $t0, -8948($fp)
	sw $t0, -8952($fp)
	li $t0, 62413
	sw $t0, -8956($fp)
	lw $t0, -8956($fp)
	sw $t0, -8960($fp)
	lw $t0, -8960($fp)
	sw $t0, -8964($fp)
	li $t0, 4416
	sw $t0, -8968($fp)
	lw $t0, -8968($fp)
	sw $t0, -8972($fp)
	lw $t0, -8972($fp)
	sw $t0, -8976($fp)
	lw $t0, -3076($fp)
	sw $t0, -8980($fp)
	lw $t0, -8980($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -8984($fp)
	li $t0, 0
	sw $t0, -8988($fp)
	li $t0, 36783
	sw $t0, -8992($fp)
	li $t0, 42755
	sw $t0, -8996($fp)
	lw $t0, -8992($fp)
	lw $t1, -8996($fp)
	add $t0, $t0, $t1
	sw $t0, -9000($fp)
	lw $t0, -3376($fp)
	sw $t0, -9004($fp)
	lw $t1, -9000($fp)
	lw $t2, -9004($fp)
	blt $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -8988($fp)
label747:
	addi $sp, $sp, -4
	lw $t0, -8984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8988($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9008($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -9012($fp)
	addi $t0, $fp, -8
	sw $t0, -9016($fp)
	li $t0, 0
	sw $t0, -9020($fp)
	li $t0, 0
	sw $t0, -9024($fp)
	addi $t0, $fp, -300
	sw $t0, -9028($fp)
	lw $t0, -520($fp)
	sw $t0, -9032($fp)
	li $t0, 4
	lw $t1, -9032($fp)
	mul $t0, $t0, $t1
	sw $t0, -9036($fp)
	lw $t0, -9036($fp)
	lw $t1, -9028($fp)
	add $t0, $t0, $t1
	sw $t0, -9040($fp)
	lw $t0, -9040($fp)
	lw $t1, 0($t0)
	sw $t1, -9044($fp)
	li $t0, 24993
	sw $t0, -9048($fp)
	lw $t1, -9044($fp)
	lw $t2, -9048($fp)
	blt $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -9024($fp)
label755:
	li $t0, 0
	sw $t0, -9052($fp)
	lw $t0, -1132($fp)
	sw $t0, -9056($fp)
	li $t0, 23822
	sw $t0, -9060($fp)
	lw $t0, -9056($fp)
	lw $t1, -9060($fp)
	add $t0, $t0, $t1
	sw $t0, -9064($fp)
	li $t0, 3772
	sw $t0, -9068($fp)
	lw $t1, -9064($fp)
	lw $t2, -9068($fp)
	bgt $t1, $t2, label756
	j label757
label756:
	li $t0, 1
	sw $t0, -9052($fp)
label757:
	li $t0, 0
	sw $t0, -9072($fp)
	lw $t0, -2020($fp)
	sw $t0, -9076($fp)
	lw $t1, -9076($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label759
label760:
	lw $t0, -472($fp)
	sw $t0, -9080($fp)
	lw $t1, -9080($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -9072($fp)
label759:
	li $t0, 7591
	sw $t0, -9084($fp)
	lw $t0, -9084($fp)
	sw $t0, -8948($fp)
	lw $t0, -8948($fp)
	sw $t0, -9088($fp)
	addi $sp, $sp, -4
	lw $t0, -9024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9088($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9092($fp)
	addi $sp, $sp, 20
	lw $t1, -9092($fp)
	li $t2, 0
	bne $t1, $t2, label753
	j label752
label753:
	lw $t0, -1792($fp)
	sw $t0, -9096($fp)
	lw $t1, -9096($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -9020($fp)
label752:
	li $t0, 4
	lw $t1, -9020($fp)
	mul $t0, $t0, $t1
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	lw $t1, -9016($fp)
	add $t0, $t0, $t1
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	lw $t1, 0($t0)
	sw $t1, -9108($fp)
	lw $t1, -9108($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label749
label750:
	addi $t0, $fp, -236
	sw $t0, -9112($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -9132($fp)
	li $t0, 40933
	sw $t0, -9136($fp)
	lw $t1, -9136($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label763:
	li $t0, 55496
	sw $t0, -9140($fp)
	lw $t1, -9140($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -9132($fp)
label762:
	li $t0, 52767
	sw $t0, -9144($fp)
	lw $t0, -9144($fp)
	sw $t0, -8960($fp)
	lw $t0, -8960($fp)
	sw $t0, -9148($fp)
	li $t0, 28963
	sw $t0, -9152($fp)
	lw $t0, -9152($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -9156($fp)
	li $t0, 0
	sw $t0, -9160($fp)
	li $t0, 0
	sw $t0, -9164($fp)
	li $t0, 52919
	sw $t0, -9168($fp)
	lw $t1, -9168($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label766
label766:
	li $t0, 1
	sw $t0, -9164($fp)
label767:
	li $t0, 40618
	sw $t0, -9172($fp)
	lw $t1, -9164($fp)
	lw $t2, -9172($fp)
	beq $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -9160($fp)
label765:
	addi $sp, $sp, -4
	lw $t0, -9128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9160($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -9176($fp)
	addi $sp, $sp, 24
	lw $t1, -9176($fp)
	li $t2, 0
	bne $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -9012($fp)
label749:
	li $t0, 0
	sw $t0, -9180($fp)
	lw $t0, -700($fp)
	sw $t0, -9184($fp)
	lw $t1, -9184($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label768
label768:
	li $t0, 1
	sw $t0, -9180($fp)
label769:
	lw $t0, -8972($fp)
	sw $t0, -9188($fp)
	li $t0, 0
	sw $t0, -9192($fp)
	li $t0, 45900
	sw $t0, -9196($fp)
	lw $t1, -9196($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label772
label772:
	lw $t0, -520($fp)
	sw $t0, -9200($fp)
	lw $t1, -9200($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label771
label773:
	lw $t0, -1564($fp)
	sw $t0, -9204($fp)
	lw $t1, -9204($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -9192($fp)
label771:
	lw $t0, -9192($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -9208($fp)
	lw $t0, -1156($fp)
	sw $t0, -9212($fp)
	li $t0, 0
	sw $t0, -9216($fp)
	li $t0, 10978
	sw $t0, -9220($fp)
	lw $t0, -2536($fp)
	sw $t0, -9224($fp)
	lw $t1, -9220($fp)
	lw $t2, -9224($fp)
	ble $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -9216($fp)
label775:
	li $t0, 0
	sw $t0, -9228($fp)
	li $t0, 6255
	sw $t0, -9232($fp)
	li $t0, 0
	lw $t1, -9232($fp)
	sub $t0, $t0, $t1
	sw $t0, -9236($fp)
	lw $t1, -9236($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label777
label778:
	lw $t0, 12($fp)
	sw $t0, -9240($fp)
	lw $t1, -9240($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -9228($fp)
label777:
	lw $t0, -2536($fp)
	sw $t0, -9244($fp)
	addi $sp, $sp, -4
	lw $t0, -9212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9244($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9248($fp)
	addi $sp, $sp, 20
	li $t0, 4381
	sw $t0, -9252($fp)
	lw $t0, -9248($fp)
	lw $t1, -9252($fp)
	mul $t0, $t0, $t1
	sw $t0, -9256($fp)
	lw $t0, -9256($fp)
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	sw $t0, -9260($fp)
	li $t0, 17023
	sw $t0, -9264($fp)
	li $t0, 0
	lw $t1, -9264($fp)
	sub $t0, $t0, $t1
	sw $t0, -9268($fp)
	li $t0, 0
	lw $t1, -9268($fp)
	sub $t0, $t0, $t1
	sw $t0, -9272($fp)
	lw $t1, -9272($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label780
label784:
	li $t0, 64637
	sw $t0, -9276($fp)
	lw $t0, -1168($fp)
	sw $t0, -9280($fp)
	lw $t0, -9276($fp)
	lw $t1, -9280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9284($fp)
	lw $t1, -9284($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label780
label783:
	li $t0, 0
	sw $t0, -9288($fp)
	lw $t0, -472($fp)
	sw $t0, -9292($fp)
	lw $t1, -9292($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label785
label785:
	li $t0, 1
	sw $t0, -9288($fp)
label786:
	lw $t0, -1180($fp)
	sw $t0, -9296($fp)
	lw $t1, -9288($fp)
	lw $t2, -9296($fp)
	bge $t1, $t2, label782
	j label780
label782:
	lw $t0, -2020($fp)
	sw $t0, -9300($fp)
	li $t0, 61635
	sw $t0, -9304($fp)
	lw $t0, -9300($fp)
	lw $t1, -9304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9308($fp)
	li $t0, 10381
	sw $t0, -9312($fp)
	lw $t0, -9308($fp)
	lw $t1, -9312($fp)
	mul $t0, $t0, $t1
	sw $t0, -9316($fp)
	lw $t0, -1144($fp)
	sw $t0, -9320($fp)
	lw $t0, -2020($fp)
	sw $t0, -9324($fp)
	lw $t0, -9320($fp)
	lw $t1, -9324($fp)
	mul $t0, $t0, $t1
	sw $t0, -9328($fp)
	lw $t1, -9316($fp)
	lw $t2, -9328($fp)
	bgt $t1, $t2, label779
	j label780
label779:
	li $t0, 0
	sw $t0, -9332($fp)
	addi $t0, $fp, -8
	sw $t0, -9336($fp)
	lw $t0, -3532($fp)
	sw $t0, -9340($fp)
	li $t0, 4
	lw $t1, -9340($fp)
	mul $t0, $t0, $t1
	sw $t0, -9344($fp)
	lw $t0, -9344($fp)
	lw $t1, -9336($fp)
	add $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t0, -9348($fp)
	lw $t1, 0($t0)
	sw $t1, -9352($fp)
	li $t0, 0
	lw $t1, -9352($fp)
	sub $t0, $t0, $t1
	sw $t0, -9356($fp)
	li $t0, 0
	lw $t1, -9356($fp)
	sub $t0, $t0, $t1
	sw $t0, -9360($fp)
	lw $t1, -9360($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label787
label787:
	li $t0, 1
	sw $t0, -9332($fp)
label788:
label780:
	li $t0, 61187
	sw $t0, -9364($fp)
	lw $t1, -9364($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label790
label789:
	li $t0, 38880
	sw $t0, -9368($fp)
	lw $t0, -9368($fp)
	sw $t0, -9372($fp)
	lw $t0, -9372($fp)
	sw $t0, -9376($fp)
	li $t0, 54988
	sw $t0, -9380($fp)
	li $t0, 0
	sw $t0, -9384($fp)
	li $t0, 63255
	sw $t0, -9388($fp)
	lw $t0, -9388($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -9392($fp)
	lw $t0, -2476($fp)
	sw $t0, -9396($fp)
	li $t0, 0
	lw $t1, -9396($fp)
	sub $t0, $t0, $t1
	sw $t0, -9400($fp)
	addi $sp, $sp, -4
	lw $t0, -9392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9400($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9404($fp)
	addi $sp, $sp, 12
	lw $t1, -9404($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label795
label795:
	li $t0, 1
	sw $t0, -9384($fp)
label796:
	li $t0, 0
	lw $t1, -9384($fp)
	sub $t0, $t0, $t1
	sw $t0, -9408($fp)
	lw $t0, -9380($fp)
	lw $t1, -9408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9412($fp)
	lw $t1, -9412($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label793
label792:
	li $t0, 17022
	sw $t0, -9416($fp)
	li $t0, 0
	lw $t1, -9416($fp)
	sub $t0, $t0, $t1
	sw $t0, -9420($fp)
	li $t0, 0
	lw $t1, -9420($fp)
	sub $t0, $t0, $t1
	sw $t0, -9424($fp)
	j label794
label793:
	lw $t0, -484($fp)
	sw $t0, -9428($fp)
	li $t0, 13900
	sw $t0, -9432($fp)
	lw $t0, -9428($fp)
	lw $t1, -9432($fp)
	mul $t0, $t0, $t1
	sw $t0, -9436($fp)
	li $t0, 0
	lw $t1, -9436($fp)
	sub $t0, $t0, $t1
	sw $t0, -9440($fp)
	lw $t0, -2488($fp)
	sw $t0, -9444($fp)
	li $t0, 20064
	sw $t0, -9448($fp)
	lw $t0, -9444($fp)
	lw $t1, -9448($fp)
	sub $t0, $t0, $t1
	sw $t0, -9452($fp)
	lw $t0, -3388($fp)
	sw $t0, -9456($fp)
	lw $t0, -9452($fp)
	lw $t1, -9456($fp)
	add $t0, $t0, $t1
	sw $t0, -9460($fp)
	addi $t0, $fp, -36
	sw $t0, -9464($fp)
	lw $t0, -460($fp)
	sw $t0, -9468($fp)
	li $t0, 4
	lw $t1, -9468($fp)
	mul $t0, $t0, $t1
	sw $t0, -9472($fp)
	lw $t0, -9472($fp)
	lw $t1, -9464($fp)
	add $t0, $t0, $t1
	sw $t0, -9476($fp)
	lw $t0, -9476($fp)
	lw $t1, 0($t0)
	sw $t1, -9480($fp)
	addi $sp, $sp, -4
	lw $t0, -9460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9480($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9484($fp)
	addi $sp, $sp, 12
	lw $t0, -9372($fp)
	sw $t0, -9488($fp)
	li $t0, 32006
	sw $t0, -9492($fp)
	lw $t0, -9488($fp)
	lw $t1, -9492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9496($fp)
	addi $sp, $sp, -4
	lw $t0, -9440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9496($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -9500($fp)
	addi $sp, $sp, 16
	lw $t1, -9500($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label798
label797:
	li $t0, 0
	sw $t0, -9504($fp)
	li $t0, 36423
	sw $t0, -9508($fp)
	li $t0, 56847
	sw $t0, -9512($fp)
	lw $t0, -9508($fp)
	lw $t1, -9512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9516($fp)
	li $t0, 0
	lw $t1, -9516($fp)
	sub $t0, $t0, $t1
	sw $t0, -9520($fp)
	lw $t1, -9520($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label800
label800:
	li $t0, 1
	sw $t0, -9504($fp)
label801:
	li $t0, 0
	sw $t0, -9524($fp)
	li $t0, 0
	sw $t0, -9528($fp)
	li $t0, 56655
	sw $t0, -9532($fp)
	lw $t1, -9532($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label804
label804:
	li $t0, 1
	sw $t0, -9528($fp)
label805:
	li $t0, 0
	lw $t1, -9528($fp)
	sub $t0, $t0, $t1
	sw $t0, -9536($fp)
	lw $t1, -9536($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label802
label802:
	li $t0, 1
	sw $t0, -9524($fp)
label803:
	lw $t0, -9504($fp)
	lw $t1, -9524($fp)
	sub $t0, $t0, $t1
	sw $t0, -9540($fp)
	j label799
label798:
	li $t0, 44014
	sw $t0, -9544($fp)
	li $t0, 15133
	sw $t0, -9548($fp)
	lw $t0, -9544($fp)
	lw $t1, -9548($fp)
	mul $t0, $t0, $t1
	sw $t0, -9552($fp)
label799:
label794:
	j label791
label790:
label806:
	addi $t0, $fp, -8
	sw $t0, -9556($fp)
	li $t0, 60427
	sw $t0, -9560($fp)
	li $t0, 0
	lw $t1, -9560($fp)
	sub $t0, $t0, $t1
	sw $t0, -9564($fp)
	li $t0, 0
	lw $t1, -9564($fp)
	sub $t0, $t0, $t1
	sw $t0, -9568($fp)
	lw $t0, -2512($fp)
	sw $t0, -9572($fp)
	lw $t0, -3352($fp)
	sw $t0, -9576($fp)
	lw $t0, -9572($fp)
	lw $t1, -9576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9580($fp)
	lw $t0, -9568($fp)
	lw $t1, -9580($fp)
	sub $t0, $t0, $t1
	sw $t0, -9584($fp)
	li $t0, 4
	lw $t1, -9584($fp)
	mul $t0, $t0, $t1
	sw $t0, -9588($fp)
	lw $t0, -9588($fp)
	lw $t1, -9556($fp)
	add $t0, $t0, $t1
	sw $t0, -9592($fp)
	lw $t0, -9592($fp)
	lw $t1, 0($t0)
	sw $t1, -9596($fp)
	lw $t1, -9596($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label808
label807:
	li $t0, 0
	sw $t0, -9600($fp)
	lw $t0, -1552($fp)
	sw $t0, -9604($fp)
	lw $t1, -9604($fp)
	li $t2, 0
	bne $t1, $t2, label810
	j label809
label809:
	li $t0, 1
	sw $t0, -9600($fp)
label810:
	lw $t0, -9600($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -9608($fp)
	lw $ra, -4($fp)
	lw $v0, -9608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label806
label808:
	li $t0, 3471
	sw $t0, -9612($fp)
	lw $t0, -9612($fp)
	sw $t0, -9616($fp)
	lw $t0, -9616($fp)
	sw $t0, -9620($fp)
	li $t0, 0
	sw $t0, -9624($fp)
	lw $t0, -9616($fp)
	sw $t0, -9628($fp)
	li $t0, 0
	lw $t1, -9628($fp)
	sub $t0, $t0, $t1
	sw $t0, -9632($fp)
	lw $t0, -1972($fp)
	sw $t0, -9636($fp)
	lw $t1, -9632($fp)
	lw $t2, -9636($fp)
	blt $t1, $t2, label811
	j label812
label811:
	li $t0, 1
	sw $t0, -9624($fp)
label812:
	li $t0, 0
	sw $t0, -9640($fp)
	addi $t0, $fp, -356
	sw $t0, -9644($fp)
	li $t0, 1
	sw $t0, -9648($fp)
	li $t0, 4
	lw $t1, -9648($fp)
	mul $t0, $t0, $t1
	sw $t0, -9652($fp)
	lw $t0, -9652($fp)
	lw $t1, -9644($fp)
	add $t0, $t0, $t1
	sw $t0, -9656($fp)
	lw $t0, -9656($fp)
	lw $t1, 0($t0)
	sw $t1, -9660($fp)
	lw $t1, -9660($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label813
label813:
	li $t0, 1
	sw $t0, -9640($fp)
label814:
	li $t0, 32434
	sw $t0, -9664($fp)
	lw $t0, -9640($fp)
	lw $t1, -9664($fp)
	add $t0, $t0, $t1
	sw $t0, -9668($fp)
	lw $t0, -9668($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -9672($fp)
label791:
	lw $t0, -1360($fp)
	sw $t0, -9676($fp)
	lw $t1, -9676($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label816
label815:
	li $t0, 0
	sw $t0, -9680($fp)
	addi $t0, $fp, -260
	sw $t0, -9684($fp)
	li $t0, 0
	sw $t0, -9688($fp)
	li $t0, 55283
	sw $t0, -9692($fp)
	li $t0, 10906
	sw $t0, -9696($fp)
	lw $t0, -9692($fp)
	lw $t1, -9696($fp)
	add $t0, $t0, $t1
	sw $t0, -9700($fp)
	li $t0, 22394
	sw $t0, -9704($fp)
	lw $t1, -9700($fp)
	lw $t2, -9704($fp)
	blt $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -9688($fp)
label821:
	li $t0, 4
	lw $t1, -9688($fp)
	mul $t0, $t0, $t1
	sw $t0, -9708($fp)
	lw $t0, -9708($fp)
	lw $t1, -9684($fp)
	add $t0, $t0, $t1
	sw $t0, -9712($fp)
	lw $t0, -9712($fp)
	lw $t1, 0($t0)
	sw $t1, -9716($fp)
	addi $t0, $fp, -152
	sw $t0, -9720($fp)
	li $t0, 5
	sw $t0, -9724($fp)
	li $t0, 4
	lw $t1, -9724($fp)
	mul $t0, $t0, $t1
	sw $t0, -9728($fp)
	lw $t0, -9728($fp)
	lw $t1, -9720($fp)
	add $t0, $t0, $t1
	sw $t0, -9732($fp)
	lw $t0, -9732($fp)
	lw $t1, 0($t0)
	sw $t1, -9736($fp)
	li $t0, 0
	lw $t1, -9736($fp)
	sub $t0, $t0, $t1
	sw $t0, -9740($fp)
	lw $t1, -9716($fp)
	lw $t2, -9740($fp)
	bgt $t1, $t2, label818
	j label819
label818:
	li $t0, 1
	sw $t0, -9680($fp)
label819:
	j label817
label816:
	li $t0, 0
	sw $t0, -9744($fp)
	lw $t0, -436($fp)
	sw $t0, -9748($fp)
	lw $t0, -8936($fp)
	sw $t0, -9752($fp)
	lw $t0, -9748($fp)
	lw $t1, -9752($fp)
	mul $t0, $t0, $t1
	sw $t0, -9756($fp)
	addi $t0, $fp, -68
	sw $t0, -9760($fp)
	lw $t0, -3352($fp)
	sw $t0, -9764($fp)
	li $t0, 4
	lw $t1, -9764($fp)
	mul $t0, $t0, $t1
	sw $t0, -9768($fp)
	lw $t0, -9768($fp)
	lw $t1, -9760($fp)
	add $t0, $t0, $t1
	sw $t0, -9772($fp)
	lw $t0, -9772($fp)
	lw $t1, 0($t0)
	sw $t1, -9776($fp)
	lw $t1, -9756($fp)
	lw $t2, -9776($fp)
	beq $t1, $t2, label825
	j label826
label825:
	li $t0, 1
	sw $t0, -9744($fp)
label826:
	lw $t0, -9744($fp)
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	sw $t0, -9780($fp)
	lw $t1, -9780($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label823
label822:
	li $t0, 2758
	sw $t0, -9784($fp)
	lw $ra, -4($fp)
	lw $v0, -9784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label824
label823:
label827:
	addi $t0, $fp, -184
	sw $t0, -9788($fp)
	li $t0, 0
	sw $t0, -9792($fp)
	li $t0, 38988
	sw $t0, -9796($fp)
	li $t0, 59490
	sw $t0, -9800($fp)
	lw $t1, -9796($fp)
	lw $t2, -9800($fp)
	blt $t1, $t2, label832
	j label831
label832:
	li $t0, 7139
	sw $t0, -9804($fp)
	lw $t1, -9804($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -9792($fp)
label831:
	li $t0, 4
	lw $t1, -9792($fp)
	mul $t0, $t0, $t1
	sw $t0, -9808($fp)
	lw $t0, -9808($fp)
	lw $t1, -9788($fp)
	add $t0, $t0, $t1
	sw $t0, -9812($fp)
	lw $t0, -9812($fp)
	lw $t1, 0($t0)
	sw $t1, -9816($fp)
	lw $t0, -2056($fp)
	sw $t0, -9820($fp)
	lw $t0, -3364($fp)
	sw $t0, -9824($fp)
	lw $t0, -9820($fp)
	lw $t1, -9824($fp)
	sub $t0, $t0, $t1
	sw $t0, -9828($fp)
	lw $t0, -2464($fp)
	sw $t0, -9832($fp)
	lw $t0, -9828($fp)
	lw $t1, -9832($fp)
	sub $t0, $t0, $t1
	sw $t0, -9836($fp)
	li $t0, 56011
	sw $t0, -9840($fp)
	lw $t0, -2092($fp)
	sw $t0, -9844($fp)
	lw $t0, -9840($fp)
	lw $t1, -9844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9848($fp)
	lw $t0, -9836($fp)
	lw $t1, -9848($fp)
	add $t0, $t0, $t1
	sw $t0, -9852($fp)
	lw $t1, -9816($fp)
	lw $t2, -9852($fp)
	bgt $t1, $t2, label828
	j label829
label828:
	li $t0, 0
	sw $t0, -9856($fp)
	lw $t0, -412($fp)
	sw $t0, -9860($fp)
	li $t0, 58591
	sw $t0, -9864($fp)
	lw $t1, -9860($fp)
	lw $t2, -9864($fp)
	bgt $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -9856($fp)
label834:
	addi $sp, $sp, -4
	lw $t0, -9856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9868($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9872($fp)
	li $t0, 0
	sw $t0, -9876($fp)
	li $t0, 3239
	sw $t0, -9880($fp)
	lw $t0, -424($fp)
	sw $t0, -9884($fp)
	lw $t1, -9880($fp)
	lw $t2, -9884($fp)
	blt $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -9876($fp)
label838:
	li $t0, 856
	sw $t0, -9888($fp)
	lw $t1, -9876($fp)
	lw $t2, -9888($fp)
	bgt $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -9872($fp)
label836:
	addi $sp, $sp, -4
	lw $t0, -9872($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9892($fp)
	addi $sp, $sp, 8
	lw $t0, -9868($fp)
	lw $t1, -9892($fp)
	mul $t0, $t0, $t1
	sw $t0, -9896($fp)
	lw $ra, -4($fp)
	lw $v0, -9896($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label827
label829:
label824:
label817:
	li $t0, 54242
	sw $t0, -9900($fp)
	li $t0, 42119
	sw $t0, -9904($fp)
	lw $t1, -9904($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label839
label839:
	addi $t0, $fp, -8
	sw $t0, -9908($fp)
	li $t0, 0
	sw $t0, -9912($fp)
	lw $t0, -436($fp)
	sw $t0, -9916($fp)
	lw $t0, -2488($fp)
	sw $t0, -9920($fp)
	lw $t1, -9916($fp)
	lw $t2, -9920($fp)
	ble $t1, $t2, label844
	j label843
label844:
	li $t0, 55844
	sw $t0, -9924($fp)
	lw $t1, -9924($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -9912($fp)
label843:
	li $t0, 4
	lw $t1, -9912($fp)
	mul $t0, $t0, $t1
	sw $t0, -9928($fp)
	lw $t0, -9928($fp)
	lw $t1, -9908($fp)
	add $t0, $t0, $t1
	sw $t0, -9932($fp)
	lw $t0, -9932($fp)
	lw $t1, 0($t0)
	sw $t1, -9936($fp)
	li $t0, 0
	lw $t1, -9936($fp)
	sub $t0, $t0, $t1
	sw $t0, -9940($fp)
	j label841
label840:
	lw $t0, -3352($fp)
	sw $t0, -9944($fp)
	lw $t0, -9944($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -9948($fp)
	addi $sp, $sp, -4
	lw $t0, -9948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9952($fp)
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -9956($fp)
	li $t0, 51961
	sw $t0, -9960($fp)
	lw $t0, -9956($fp)
	lw $t1, -9960($fp)
	mul $t0, $t0, $t1
	sw $t0, -9964($fp)
	lw $t0, -3352($fp)
	sw $t0, -9968($fp)
	lw $t0, -9968($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -9972($fp)
	li $t0, 0
	sw $t0, -9976($fp)
	li $t0, 22315
	sw $t0, -9980($fp)
	lw $t0, -2284($fp)
	sw $t0, -9984($fp)
	lw $t1, -9980($fp)
	lw $t2, -9984($fp)
	beq $t1, $t2, label847
	j label846
label847:
	lw $t0, -2536($fp)
	sw $t0, -9988($fp)
	lw $t1, -9988($fp)
	li $t2, 0
	bne $t1, $t2, label845
	j label846
label845:
	li $t0, 1
	sw $t0, -9976($fp)
label846:
	li $t0, 0
	sw $t0, -9992($fp)
	li $t0, 59142
	sw $t0, -9996($fp)
	lw $t0, -2812($fp)
	sw $t0, -10000($fp)
	lw $t0, -9996($fp)
	lw $t1, -10000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10004($fp)
	lw $t0, -1576($fp)
	sw $t0, -10008($fp)
	lw $t1, -10004($fp)
	lw $t2, -10008($fp)
	beq $t1, $t2, label848
	j label849
label848:
	li $t0, 1
	sw $t0, -9992($fp)
label849:
	li $t0, 0
	sw $t0, -10012($fp)
	lw $t0, -1144($fp)
	sw $t0, -10016($fp)
	lw $t0, -952($fp)
	sw $t0, -10020($fp)
	lw $t0, -10016($fp)
	lw $t1, -10020($fp)
	mul $t0, $t0, $t1
	sw $t0, -10024($fp)
	lw $t1, -10024($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label852
label852:
	lw $t0, -436($fp)
	sw $t0, -10028($fp)
	lw $t1, -10028($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label851
label850:
	li $t0, 1
	sw $t0, -10012($fp)
label851:
	addi $sp, $sp, -4
	lw $t0, -9972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10012($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10032($fp)
	addi $sp, $sp, 20
	lw $t0, -9964($fp)
	lw $t1, -10032($fp)
	mul $t0, $t0, $t1
	sw $t0, -10036($fp)
	li $t0, 0
	lw $t1, -10036($fp)
	sub $t0, $t0, $t1
	sw $t0, -10040($fp)
	lw $t0, -9952($fp)
	lw $t1, -10040($fp)
	sub $t0, $t0, $t1
	sw $t0, -10044($fp)
label841:
	j label745
label744:
	li $t0, 6489
	sw $t0, -10048($fp)
	lw $t0, -10048($fp)
	sw $t0, -10052($fp)
	lw $t0, -10052($fp)
	sw $t0, -10056($fp)
	li $t0, 7506
	sw $t0, -10060($fp)
	lw $t0, -10060($fp)
	sw $t0, -10064($fp)
	lw $t0, -10064($fp)
	sw $t0, -10068($fp)
	li $t0, 58738
	sw $t0, -10072($fp)
	lw $t0, -10072($fp)
	sw $t0, -10076($fp)
	lw $t0, -10076($fp)
	sw $t0, -10080($fp)
	li $t0, 63336
	sw $t0, -10084($fp)
	lw $t0, -10084($fp)
	sw $t0, -10088($fp)
	lw $t0, -10088($fp)
	sw $t0, -10092($fp)
	li $t0, 64161
	sw $t0, -10096($fp)
	lw $t0, -10096($fp)
	sw $t0, -10100($fp)
	lw $t0, -10100($fp)
	sw $t0, -10104($fp)
	li $t0, 37216
	sw $t0, -10108($fp)
	lw $t0, -10108($fp)
	sw $t0, -10112($fp)
	lw $t0, -10112($fp)
	sw $t0, -10116($fp)
	li $t0, 12933
	sw $t0, -10120($fp)
	lw $t0, -10120($fp)
	sw $t0, -10124($fp)
	lw $t0, -10124($fp)
	sw $t0, -10128($fp)
	li $t0, 59052
	sw $t0, -10132($fp)
	lw $t0, -10132($fp)
	sw $t0, -10136($fp)
	lw $t0, -10136($fp)
	sw $t0, -10140($fp)
	lw $t0, -10136($fp)
	sw $t0, -10144($fp)
	lw $t0, -10144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -10148($fp)
	addi $t0, $fp, -300
	sw $t0, -10152($fp)
	li $t0, 1
	sw $t0, -10156($fp)
	li $t0, 4
	lw $t1, -10156($fp)
	mul $t0, $t0, $t1
	sw $t0, -10160($fp)
	lw $t0, -10160($fp)
	lw $t1, -10152($fp)
	add $t0, $t0, $t1
	sw $t0, -10164($fp)
	lw $t0, -10164($fp)
	lw $t1, 0($t0)
	sw $t1, -10168($fp)
	lw $t1, -10168($fp)
	li $t2, 0
	bne $t1, $t2, label855
	j label854
label855:
	li $t0, 0
	sw $t0, -10172($fp)
	li $t0, 0
	sw $t0, -10176($fp)
	lw $t0, -3352($fp)
	sw $t0, -10180($fp)
	li $t0, 29025
	sw $t0, -10184($fp)
	lw $t1, -10180($fp)
	lw $t2, -10184($fp)
	bne $t1, $t2, label858
	j label859
label858:
	li $t0, 1
	sw $t0, -10176($fp)
label859:
	li $t0, 7585
	sw $t0, -10188($fp)
	lw $t1, -10176($fp)
	lw $t2, -10188($fp)
	bne $t1, $t2, label856
	j label857
label856:
	li $t0, 1
	sw $t0, -10172($fp)
label857:
	lw $t0, -10136($fp)
	sw $t0, -10192($fp)
	li $t0, 5196
	sw $t0, -10196($fp)
	lw $t0, -10192($fp)
	lw $t1, -10196($fp)
	mul $t0, $t0, $t1
	sw $t0, -10200($fp)
	lw $t1, -10172($fp)
	lw $t2, -10200($fp)
	bne $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -10148($fp)
label854:
	lw $ra, -4($fp)
	lw $v0, -10148($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 39931
	sw $t0, -10204($fp)
	li $t0, 29979
	sw $t0, -10208($fp)
	lw $t0, -10204($fp)
	lw $t1, -10208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10212($fp)
	li $t0, 0
	sw $t0, -10216($fp)
	li $t0, 16861
	sw $t0, -10220($fp)
	li $t0, 39877
	sw $t0, -10224($fp)
	lw $t1, -10220($fp)
	lw $t2, -10224($fp)
	bne $t1, $t2, label860
	j label861
label860:
	li $t0, 1
	sw $t0, -10216($fp)
label861:
	li $t0, 32737
	sw $t0, -10228($fp)
	li $t0, 11381
	sw $t0, -10232($fp)
	lw $t0, -10228($fp)
	lw $t1, -10232($fp)
	mul $t0, $t0, $t1
	sw $t0, -10236($fp)
	li $t0, 0
	lw $t1, -10236($fp)
	sub $t0, $t0, $t1
	sw $t0, -10240($fp)
	addi $t0, $fp, -36
	sw $t0, -10244($fp)
	lw $t0, -2476($fp)
	sw $t0, -10248($fp)
	li $t0, 4
	lw $t1, -10248($fp)
	mul $t0, $t0, $t1
	sw $t0, -10252($fp)
	lw $t0, -10252($fp)
	lw $t1, -10244($fp)
	add $t0, $t0, $t1
	sw $t0, -10256($fp)
	lw $t0, -10256($fp)
	lw $t1, 0($t0)
	sw $t1, -10260($fp)
	lw $t0, -2500($fp)
	sw $t0, -10264($fp)
	lw $t0, -10260($fp)
	lw $t1, -10264($fp)
	add $t0, $t0, $t1
	sw $t0, -10268($fp)
	lw $t0, -472($fp)
	sw $t0, -10272($fp)
	li $t0, 22907
	sw $t0, -10276($fp)
	lw $t0, -10272($fp)
	lw $t1, -10276($fp)
	add $t0, $t0, $t1
	sw $t0, -10280($fp)
	lw $t0, -10052($fp)
	sw $t0, -10284($fp)
	lw $t0, -10280($fp)
	lw $t1, -10284($fp)
	add $t0, $t0, $t1
	sw $t0, -10288($fp)
	lw $t0, -10124($fp)
	sw $t0, -10292($fp)
	lw $t0, -712($fp)
	sw $t0, -10296($fp)
	lw $t0, -10292($fp)
	lw $t1, -10296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10300($fp)
	li $t0, 37929
	sw $t0, -10304($fp)
	lw $t0, -10300($fp)
	lw $t1, -10304($fp)
	add $t0, $t0, $t1
	sw $t0, -10308($fp)
	addi $sp, $sp, -4
	lw $t0, -10216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10308($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -10312($fp)
	addi $sp, $sp, 24
	lw $t0, -10212($fp)
	lw $t1, -10312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10316($fp)
	li $t0, 0
	lw $t1, -10316($fp)
	sub $t0, $t0, $t1
	sw $t0, -10320($fp)
label862:
	lw $t0, -520($fp)
	sw $t0, -10324($fp)
	li $t0, 1856
	sw $t0, -10328($fp)
	lw $t0, -10324($fp)
	lw $t1, -10328($fp)
	mul $t0, $t0, $t1
	sw $t0, -10332($fp)
	lw $t1, -10332($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label866
label867:
	li $t0, 9916
	sw $t0, -10336($fp)
	li $t0, 0
	lw $t1, -10336($fp)
	sub $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t1, -10340($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label866
label866:
	lw $t0, -2812($fp)
	sw $t0, -10344($fp)
	li $t0, 43116
	sw $t0, -10348($fp)
	lw $t0, -10344($fp)
	lw $t1, -10348($fp)
	add $t0, $t0, $t1
	sw $t0, -10352($fp)
	li $t0, 2713
	sw $t0, -10356($fp)
	lw $t1, -10352($fp)
	lw $t2, -10356($fp)
	bgt $t1, $t2, label863
	j label865
label865:
	li $t0, 64158
	sw $t0, -10360($fp)
	li $t0, 0
	sw $t0, -10364($fp)
	li $t0, 19699
	sw $t0, -10368($fp)
	lw $t1, -10368($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label868
label868:
	li $t0, 1
	sw $t0, -10364($fp)
label869:
	lw $t0, -10360($fp)
	lw $t1, -10364($fp)
	mul $t0, $t0, $t1
	sw $t0, -10372($fp)
	lw $t1, -10372($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label864
label863:
	li $t0, 0
	sw $t0, -10376($fp)
	li $t0, 58557
	sw $t0, -10380($fp)
	lw $t0, -436($fp)
	sw $t0, -10384($fp)
	lw $t1, -10380($fp)
	lw $t2, -10384($fp)
	bgt $t1, $t2, label870
	j label871
label870:
	li $t0, 1
	sw $t0, -10376($fp)
label871:
	addi $sp, $sp, -4
	lw $t0, -10376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10388($fp)
	addi $sp, $sp, 8
	lw $t0, -10388($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -10392($fp)
	j label862
label864:
	lw $t0, -10136($fp)
	sw $t0, -10396($fp)
	lw $t0, -10396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -10400($fp)
	li $t0, 0
	sw $t0, -10404($fp)
	li $t0, 15336
	sw $t0, -10408($fp)
	li $t0, 57072
	sw $t0, -10412($fp)
	lw $t0, -10408($fp)
	lw $t1, -10412($fp)
	mul $t0, $t0, $t1
	sw $t0, -10416($fp)
	lw $t1, -10416($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label876
label877:
	li $t0, 20811
	sw $t0, -10420($fp)
	lw $t1, -10420($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label876
label875:
	li $t0, 1
	sw $t0, -10404($fp)
label876:
	li $t0, 0
	sw $t0, -10424($fp)
	lw $t0, -3160($fp)
	sw $t0, -10428($fp)
	li $t0, 50583
	sw $t0, -10432($fp)
	lw $t0, -10428($fp)
	lw $t1, -10432($fp)
	sub $t0, $t0, $t1
	sw $t0, -10436($fp)
	lw $t1, -10436($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label880
label880:
	li $t0, 13305
	sw $t0, -10440($fp)
	lw $t1, -10440($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -10424($fp)
label879:
	addi $sp, $sp, -4
	lw $t0, -10404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10424($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -10444($fp)
	addi $sp, $sp, 12
	lw $t1, -10444($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label873
label874:
	addi $t0, $fp, -260
	sw $t0, -10448($fp)
	li $t0, 2
	sw $t0, -10452($fp)
	li $t0, 4
	lw $t1, -10452($fp)
	mul $t0, $t0, $t1
	sw $t0, -10456($fp)
	lw $t0, -10456($fp)
	lw $t1, -10448($fp)
	add $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	lw $t1, 0($t0)
	sw $t1, -10464($fp)
	lw $t1, -10464($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label872
label872:
	li $t0, 1
	sw $t0, -10400($fp)
label873:
	lw $ra, -4($fp)
	lw $v0, -10400($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1996($fp)
	sw $t0, -10468($fp)
	lw $t0, -10052($fp)
	sw $t0, -10472($fp)
	lw $t0, -10472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10064($fp)
	sw $t0, -10476($fp)
	lw $t0, -10476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10076($fp)
	sw $t0, -10480($fp)
	lw $t0, -10480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10088($fp)
	sw $t0, -10484($fp)
	lw $t0, -10484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10100($fp)
	sw $t0, -10488($fp)
	lw $t0, -10488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10112($fp)
	sw $t0, -10492($fp)
	lw $t0, -10492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10124($fp)
	sw $t0, -10496($fp)
	lw $t0, -10496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 19436
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	sw $t0, -10064($fp)
	lw $t0, -10064($fp)
	sw $t0, -10504($fp)
	addi $sp, $sp, -4
	lw $t0, -10504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10508($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -10508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -404
	sw $t0, -10512($fp)
	li $t0, 0
	sw $t0, -10516($fp)
	lw $t0, -1372($fp)
	sw $t0, -10520($fp)
	li $t0, 45754
	sw $t0, -10524($fp)
	lw $t1, -10520($fp)
	lw $t2, -10524($fp)
	bge $t1, $t2, label884
	j label885
label884:
	li $t0, 1
	sw $t0, -10516($fp)
label885:
	li $t0, 4
	lw $t1, -10516($fp)
	mul $t0, $t0, $t1
	sw $t0, -10528($fp)
	lw $t0, -10528($fp)
	lw $t1, -10512($fp)
	add $t0, $t0, $t1
	sw $t0, -10532($fp)
	lw $t0, -10532($fp)
	lw $t1, 0($t0)
	sw $t1, -10536($fp)
	lw $t0, -484($fp)
	sw $t0, -10540($fp)
	li $t0, 2269
	sw $t0, -10544($fp)
	lw $t0, -10540($fp)
	lw $t1, -10544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10548($fp)
	li $t0, 0
	lw $t1, -10548($fp)
	sub $t0, $t0, $t1
	sw $t0, -10552($fp)
	lw $t0, -10536($fp)
	lw $t1, -10552($fp)
	sub $t0, $t0, $t1
	sw $t0, -10556($fp)
	lw $t0, -964($fp)
	sw $t0, -10560($fp)
	lw $t1, -10556($fp)
	lw $t2, -10560($fp)
	bge $t1, $t2, label881
	j label882
label881:
label886:
	lw $t0, -940($fp)
	sw $t0, -10564($fp)
	lw $t1, -10564($fp)
	li $t2, 0
	bne $t1, $t2, label890
	j label889
label890:
	lw $t0, -1120($fp)
	sw $t0, -10568($fp)
	lw $t1, -10568($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label887
label889:
	li $t0, 12952
	sw $t0, -10572($fp)
	li $t0, 0
	sw $t0, -10576($fp)
	li $t0, 20905
	sw $t0, -10580($fp)
	lw $t1, -10580($fp)
	li $t2, 0
	bne $t1, $t2, label892
	j label891
label891:
	li $t0, 1
	sw $t0, -10576($fp)
label892:
	lw $t0, -10572($fp)
	lw $t1, -10576($fp)
	mul $t0, $t0, $t1
	sw $t0, -10584($fp)
	li $t0, 0
	lw $t1, -10584($fp)
	sub $t0, $t0, $t1
	sw $t0, -10588($fp)
	lw $t1, -10588($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label887
label887:
	li $t0, 17718
	sw $t0, -10644($fp)
	addi $t0, $fp, -10620
	sw $t0, -10648($fp)
	li $t0, 0
	sw $t0, -10652($fp)
	lw $t0, -10652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10656($fp)
	lw $t0, -10648($fp)
	lw $t1, -10656($fp)
	add $t0, $t0, $t1
	sw $t0, -10660($fp)
	lw $t0, -10644($fp)
	lw $t1, -10660($fp)
	sw $t0, 0($t1)
	lw $t0, -10660($fp)
	lw $t1, 0($t0)
	sw $t1, -10664($fp)
	li $t0, 41977
	sw $t0, -10668($fp)
	addi $t0, $fp, -10620
	sw $t0, -10672($fp)
	li $t0, 1
	sw $t0, -10676($fp)
	lw $t0, -10676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10680($fp)
	lw $t0, -10672($fp)
	lw $t1, -10680($fp)
	add $t0, $t0, $t1
	sw $t0, -10684($fp)
	lw $t0, -10668($fp)
	lw $t1, -10684($fp)
	sw $t0, 0($t1)
	lw $t0, -10684($fp)
	lw $t1, 0($t0)
	sw $t1, -10688($fp)
	li $t0, 28490
	sw $t0, -10692($fp)
	addi $t0, $fp, -10620
	sw $t0, -10696($fp)
	li $t0, 2
	sw $t0, -10700($fp)
	lw $t0, -10700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10704($fp)
	lw $t0, -10696($fp)
	lw $t1, -10704($fp)
	add $t0, $t0, $t1
	sw $t0, -10708($fp)
	lw $t0, -10692($fp)
	lw $t1, -10708($fp)
	sw $t0, 0($t1)
	lw $t0, -10708($fp)
	lw $t1, 0($t0)
	sw $t1, -10712($fp)
	li $t0, 22914
	sw $t0, -10716($fp)
	addi $t0, $fp, -10620
	sw $t0, -10720($fp)
	li $t0, 3
	sw $t0, -10724($fp)
	lw $t0, -10724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10728($fp)
	lw $t0, -10720($fp)
	lw $t1, -10728($fp)
	add $t0, $t0, $t1
	sw $t0, -10732($fp)
	lw $t0, -10716($fp)
	lw $t1, -10732($fp)
	sw $t0, 0($t1)
	lw $t0, -10732($fp)
	lw $t1, 0($t0)
	sw $t1, -10736($fp)
	li $t0, 16372
	sw $t0, -10740($fp)
	addi $t0, $fp, -10620
	sw $t0, -10744($fp)
	li $t0, 4
	sw $t0, -10748($fp)
	lw $t0, -10748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10752($fp)
	lw $t0, -10744($fp)
	lw $t1, -10752($fp)
	add $t0, $t0, $t1
	sw $t0, -10756($fp)
	lw $t0, -10740($fp)
	lw $t1, -10756($fp)
	sw $t0, 0($t1)
	lw $t0, -10756($fp)
	lw $t1, 0($t0)
	sw $t1, -10760($fp)
	li $t0, 58469
	sw $t0, -10764($fp)
	addi $t0, $fp, -10620
	sw $t0, -10768($fp)
	li $t0, 5
	sw $t0, -10772($fp)
	lw $t0, -10772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10776($fp)
	lw $t0, -10768($fp)
	lw $t1, -10776($fp)
	add $t0, $t0, $t1
	sw $t0, -10780($fp)
	lw $t0, -10764($fp)
	lw $t1, -10780($fp)
	sw $t0, 0($t1)
	lw $t0, -10780($fp)
	lw $t1, 0($t0)
	sw $t1, -10784($fp)
	li $t0, 60843
	sw $t0, -10788($fp)
	addi $t0, $fp, -10620
	sw $t0, -10792($fp)
	li $t0, 6
	sw $t0, -10796($fp)
	lw $t0, -10796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10800($fp)
	lw $t0, -10792($fp)
	lw $t1, -10800($fp)
	add $t0, $t0, $t1
	sw $t0, -10804($fp)
	lw $t0, -10788($fp)
	lw $t1, -10804($fp)
	sw $t0, 0($t1)
	lw $t0, -10804($fp)
	lw $t1, 0($t0)
	sw $t1, -10808($fp)
	li $t0, 39279
	sw $t0, -10812($fp)
	addi $t0, $fp, -10620
	sw $t0, -10816($fp)
	li $t0, 7
	sw $t0, -10820($fp)
	lw $t0, -10820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10824($fp)
	lw $t0, -10816($fp)
	lw $t1, -10824($fp)
	add $t0, $t0, $t1
	sw $t0, -10828($fp)
	lw $t0, -10812($fp)
	lw $t1, -10828($fp)
	sw $t0, 0($t1)
	lw $t0, -10828($fp)
	lw $t1, 0($t0)
	sw $t1, -10832($fp)
	li $t0, 25671
	sw $t0, -10836($fp)
	lw $t0, -10836($fp)
	sw $t0, -10840($fp)
	lw $t0, -10840($fp)
	sw $t0, -10844($fp)
	li $t0, 6688
	sw $t0, -10848($fp)
	addi $t0, $fp, -10636
	sw $t0, -10852($fp)
	li $t0, 0
	sw $t0, -10856($fp)
	lw $t0, -10856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10860($fp)
	lw $t0, -10852($fp)
	lw $t1, -10860($fp)
	add $t0, $t0, $t1
	sw $t0, -10864($fp)
	lw $t0, -10848($fp)
	lw $t1, -10864($fp)
	sw $t0, 0($t1)
	lw $t0, -10864($fp)
	lw $t1, 0($t0)
	sw $t1, -10868($fp)
	li $t0, 56140
	sw $t0, -10872($fp)
	addi $t0, $fp, -10636
	sw $t0, -10876($fp)
	li $t0, 1
	sw $t0, -10880($fp)
	lw $t0, -10880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10884($fp)
	lw $t0, -10876($fp)
	lw $t1, -10884($fp)
	add $t0, $t0, $t1
	sw $t0, -10888($fp)
	lw $t0, -10872($fp)
	lw $t1, -10888($fp)
	sw $t0, 0($t1)
	lw $t0, -10888($fp)
	lw $t1, 0($t0)
	sw $t1, -10892($fp)
	li $t0, 12
	sw $t0, -10896($fp)
	addi $t0, $fp, -10636
	sw $t0, -10900($fp)
	li $t0, 2
	sw $t0, -10904($fp)
	lw $t0, -10904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10908($fp)
	lw $t0, -10900($fp)
	lw $t1, -10908($fp)
	add $t0, $t0, $t1
	sw $t0, -10912($fp)
	lw $t0, -10896($fp)
	lw $t1, -10912($fp)
	sw $t0, 0($t1)
	lw $t0, -10912($fp)
	lw $t1, 0($t0)
	sw $t1, -10916($fp)
	li $t0, 8545
	sw $t0, -10920($fp)
	addi $t0, $fp, -10636
	sw $t0, -10924($fp)
	li $t0, 3
	sw $t0, -10928($fp)
	lw $t0, -10928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10932($fp)
	lw $t0, -10924($fp)
	lw $t1, -10932($fp)
	add $t0, $t0, $t1
	sw $t0, -10936($fp)
	lw $t0, -10920($fp)
	lw $t1, -10936($fp)
	sw $t0, 0($t1)
	lw $t0, -10936($fp)
	lw $t1, 0($t0)
	sw $t1, -10940($fp)
	li $t0, 520
	sw $t0, -10944($fp)
	addi $t0, $fp, -10640
	sw $t0, -10948($fp)
	li $t0, 0
	sw $t0, -10952($fp)
	lw $t0, -10952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10956($fp)
	lw $t0, -10948($fp)
	lw $t1, -10956($fp)
	add $t0, $t0, $t1
	sw $t0, -10960($fp)
	lw $t0, -10944($fp)
	lw $t1, -10960($fp)
	sw $t0, 0($t1)
	lw $t0, -10960($fp)
	lw $t1, 0($t0)
	sw $t1, -10964($fp)
	li $t0, 0
	sw $t0, -10968($fp)
	addi $t0, $fp, -184
	sw $t0, -10972($fp)
	li $t0, 0
	sw $t0, -10976($fp)
	li $t0, 43128
	sw $t0, -10980($fp)
	lw $t1, -10980($fp)
	li $t2, 0
	bne $t1, $t2, label898
	j label897
label898:
	lw $t0, -2092($fp)
	sw $t0, -10984($fp)
	lw $t1, -10984($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label897
label896:
	li $t0, 1
	sw $t0, -10976($fp)
label897:
	li $t0, 4
	lw $t1, -10976($fp)
	mul $t0, $t0, $t1
	sw $t0, -10988($fp)
	lw $t0, -10988($fp)
	lw $t1, -10972($fp)
	add $t0, $t0, $t1
	sw $t0, -10992($fp)
	lw $t0, -10992($fp)
	lw $t1, 0($t0)
	sw $t1, -10996($fp)
	addi $t0, $fp, -184
	sw $t0, -11000($fp)
	li $t0, 2
	sw $t0, -11004($fp)
	li $t0, 4
	lw $t1, -11004($fp)
	mul $t0, $t0, $t1
	sw $t0, -11008($fp)
	lw $t0, -11008($fp)
	lw $t1, -11000($fp)
	add $t0, $t0, $t1
	sw $t0, -11012($fp)
	lw $t0, -11012($fp)
	lw $t1, 0($t0)
	sw $t1, -11016($fp)
	lw $t0, -10996($fp)
	lw $t1, -11016($fp)
	mul $t0, $t0, $t1
	sw $t0, -11020($fp)
	lw $t1, -11020($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label894
label895:
	li $t0, 62827
	sw $t0, -11024($fp)
	li $t0, 4279
	sw $t0, -11028($fp)
	lw $t0, -11024($fp)
	lw $t1, -11028($fp)
	sub $t0, $t0, $t1
	sw $t0, -11032($fp)
	lw $t0, -1132($fp)
	sw $t0, -11036($fp)
	li $t0, 0
	lw $t1, -11036($fp)
	sub $t0, $t0, $t1
	sw $t0, -11040($fp)
	lw $t0, -11032($fp)
	lw $t1, -11040($fp)
	sub $t0, $t0, $t1
	sw $t0, -11044($fp)
	lw $t1, -11044($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label894
label893:
	li $t0, 1
	sw $t0, -10968($fp)
label894:
	addi $t0, $fp, -10636
	sw $t0, -11048($fp)
	li $t0, 0
	sw $t0, -11052($fp)
	addi $t0, $fp, -10640
	sw $t0, -11056($fp)
	lw $t0, -1132($fp)
	sw $t0, -11060($fp)
	li $t0, 4
	lw $t1, -11060($fp)
	mul $t0, $t0, $t1
	sw $t0, -11064($fp)
	lw $t0, -11064($fp)
	lw $t1, -11056($fp)
	add $t0, $t0, $t1
	sw $t0, -11068($fp)
	lw $t0, -11068($fp)
	lw $t1, 0($t0)
	sw $t1, -11072($fp)
	lw $t1, -11072($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label900
label901:
	li $t0, 49725
	sw $t0, -11076($fp)
	lw $t1, -11076($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -11052($fp)
label900:
	li $t0, 4
	lw $t1, -11052($fp)
	mul $t0, $t0, $t1
	sw $t0, -11080($fp)
	lw $t0, -11080($fp)
	lw $t1, -11048($fp)
	add $t0, $t0, $t1
	sw $t0, -11084($fp)
	lw $t0, -11084($fp)
	lw $t1, 0($t0)
	sw $t1, -11088($fp)
	li $t0, 10597
	sw $t0, -11092($fp)
	lw $t0, -11088($fp)
	lw $t1, -11092($fp)
	mul $t0, $t0, $t1
	sw $t0, -11096($fp)
	li $t0, 0
	sw $t0, -11100($fp)
	li $t0, 0
	sw $t0, -11104($fp)
	li $t0, 0
	sw $t0, -11108($fp)
	li $t0, 19616
	sw $t0, -11112($fp)
	lw $t1, -11112($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label907
label907:
	li $t0, 1
	sw $t0, -11108($fp)
label908:
	lw $t0, -2272($fp)
	sw $t0, -11116($fp)
	lw $t1, -11108($fp)
	lw $t2, -11116($fp)
	blt $t1, $t2, label905
	j label906
label905:
	li $t0, 1
	sw $t0, -11104($fp)
label906:
	addi $sp, $sp, -4
	lw $t0, -11104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11120($fp)
	addi $sp, $sp, 8
	li $t0, 41261
	sw $t0, -11124($fp)
	lw $t0, -11120($fp)
	lw $t1, -11124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11128($fp)
	lw $t1, -11128($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label903
label904:
	li $t0, 0
	sw $t0, -11132($fp)
	lw $t0, -2296($fp)
	sw $t0, -11136($fp)
	lw $t1, -11136($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label909
label909:
	li $t0, 1
	sw $t0, -11132($fp)
label910:
	addi $sp, $sp, -4
	lw $t0, -11132($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11140($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -11144($fp)
	lw $t0, -11140($fp)
	lw $t1, -11144($fp)
	add $t0, $t0, $t1
	sw $t0, -11148($fp)
	lw $t1, -11148($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -11100($fp)
label903:
	li $t0, 0
	sw $t0, -11152($fp)
	addi $t0, $fp, -10620
	sw $t0, -11156($fp)
	lw $t0, -2020($fp)
	sw $t0, -11160($fp)
	li $t0, 31408
	sw $t0, -11164($fp)
	lw $t0, -11160($fp)
	lw $t1, -11164($fp)
	add $t0, $t0, $t1
	sw $t0, -11168($fp)
	li $t0, 4
	lw $t1, -11168($fp)
	mul $t0, $t0, $t1
	sw $t0, -11172($fp)
	lw $t0, -11172($fp)
	lw $t1, -11156($fp)
	add $t0, $t0, $t1
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	lw $t1, 0($t0)
	sw $t1, -11180($fp)
	lw $t0, -1372($fp)
	sw $t0, -11184($fp)
	lw $t0, -2032($fp)
	sw $t0, -11188($fp)
	lw $t0, -11184($fp)
	lw $t1, -11188($fp)
	mul $t0, $t0, $t1
	sw $t0, -11192($fp)
	li $t0, 0
	lw $t1, -11192($fp)
	sub $t0, $t0, $t1
	sw $t0, -11196($fp)
	lw $t0, -11180($fp)
	lw $t1, -11196($fp)
	add $t0, $t0, $t1
	sw $t0, -11200($fp)
	addi $t0, $fp, -8
	sw $t0, -11204($fp)
	lw $t0, -2044($fp)
	sw $t0, -11208($fp)
	li $t0, 4
	lw $t1, -11208($fp)
	mul $t0, $t0, $t1
	sw $t0, -11212($fp)
	lw $t0, -11212($fp)
	lw $t1, -11204($fp)
	add $t0, $t0, $t1
	sw $t0, -11216($fp)
	lw $t0, -11216($fp)
	lw $t1, 0($t0)
	sw $t1, -11220($fp)
	li $t0, 0
	sw $t0, -11224($fp)
	lw $t0, -10840($fp)
	sw $t0, -11228($fp)
	lw $t1, -11228($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label913
label913:
	li $t0, 1
	sw $t0, -11224($fp)
label914:
	lw $t0, -11220($fp)
	lw $t1, -11224($fp)
	mul $t0, $t0, $t1
	sw $t0, -11232($fp)
	lw $t1, -11200($fp)
	lw $t2, -11232($fp)
	ble $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -11152($fp)
label912:
	j label886
label888:
	j label883
label882:
	li $t0, 28154
	sw $t0, -11236($fp)
	lw $t0, -2296($fp)
	sw $t0, -11240($fp)
	lw $t0, -11236($fp)
	lw $t1, -11240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11244($fp)
label883:
label915:
	li $t0, 0
	sw $t0, -11248($fp)
	addi $t0, $fp, -356
	sw $t0, -11252($fp)
	lw $t0, -436($fp)
	sw $t0, -11256($fp)
	li $t0, 4
	lw $t1, -11256($fp)
	mul $t0, $t0, $t1
	sw $t0, -11260($fp)
	lw $t0, -11260($fp)
	lw $t1, -11252($fp)
	add $t0, $t0, $t1
	sw $t0, -11264($fp)
	lw $t0, -11264($fp)
	lw $t1, 0($t0)
	sw $t1, -11268($fp)
	li $t0, 50845
	sw $t0, -11272($fp)
	lw $t0, -11268($fp)
	lw $t1, -11272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11276($fp)
	li $t0, 0
	sw $t0, -11280($fp)
	addi $t0, $fp, -260
	sw $t0, -11284($fp)
	lw $t0, -2068($fp)
	sw $t0, -11288($fp)
	li $t0, 4
	lw $t1, -11288($fp)
	mul $t0, $t0, $t1
	sw $t0, -11292($fp)
	lw $t0, -11292($fp)
	lw $t1, -11284($fp)
	add $t0, $t0, $t1
	sw $t0, -11296($fp)
	lw $t0, -11296($fp)
	lw $t1, 0($t0)
	sw $t1, -11300($fp)
	lw $t1, -11300($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label922
label923:
	li $t0, 30597
	sw $t0, -11304($fp)
	lw $t1, -11304($fp)
	li $t2, 0
	bne $t1, $t2, label921
	j label922
label921:
	li $t0, 1
	sw $t0, -11280($fp)
label922:
	addi $sp, $sp, -4
	lw $t0, -11276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11280($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -11308($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -11308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11312($fp)
	addi $sp, $sp, 8
	lw $t1, -11312($fp)
	li $t2, 0
	bne $t1, $t2, label919
	j label920
label920:
	lw $t0, -3364($fp)
	sw $t0, -11316($fp)
	lw $t1, -11316($fp)
	li $t2, 0
	bne $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -11248($fp)
label919:
	lw $t0, -11248($fp)
	sw $t0, -10088($fp)
	lw $t0, -10088($fp)
	sw $t0, -11320($fp)
	lw $t1, -11320($fp)
	li $t2, 0
	bne $t1, $t2, label916
	j label917
label916:
	li $t0, 0
	sw $t0, -11324($fp)
	li $t0, 0
	sw $t0, -11328($fp)
	lw $t0, -2476($fp)
	sw $t0, -11332($fp)
	lw $t0, -436($fp)
	sw $t0, -11336($fp)
	lw $t1, -11332($fp)
	lw $t2, -11336($fp)
	blt $t1, $t2, label929
	j label930
label929:
	li $t0, 1
	sw $t0, -11328($fp)
label930:
	li $t0, 63797
	sw $t0, -11340($fp)
	lw $t1, -11328($fp)
	lw $t2, -11340($fp)
	ble $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -11324($fp)
label928:
	lw $t0, -3364($fp)
	sw $t0, -11344($fp)
	lw $t0, -3532($fp)
	sw $t0, -11348($fp)
	lw $t0, -11348($fp)
	sw $t0, -10076($fp)
	lw $t0, -10076($fp)
	sw $t0, -11352($fp)
	li $t0, 8373
	sw $t0, -11356($fp)
	li $t0, 0
	lw $t1, -11356($fp)
	sub $t0, $t0, $t1
	sw $t0, -11360($fp)
	li $t0, 32866
	sw $t0, -11364($fp)
	lw $t0, -11360($fp)
	lw $t1, -11364($fp)
	add $t0, $t0, $t1
	sw $t0, -11368($fp)
	addi $sp, $sp, -4
	lw $t0, -11324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11368($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11372($fp)
	addi $sp, $sp, 20
	lw $t0, -10052($fp)
	sw $t0, -11376($fp)
	lw $t0, -11372($fp)
	lw $t1, -11376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11380($fp)
	lw $t1, -11380($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label925
label924:
	lw $t0, -1144($fp)
	sw $t0, -11384($fp)
	li $t0, 0
	sw $t0, -11388($fp)
	addi $t0, $fp, -304
	sw $t0, -11392($fp)
	li $t0, 0
	sw $t0, -11396($fp)
	li $t0, 4
	lw $t1, -11396($fp)
	mul $t0, $t0, $t1
	sw $t0, -11400($fp)
	lw $t0, -11400($fp)
	lw $t1, -11392($fp)
	add $t0, $t0, $t1
	sw $t0, -11404($fp)
	lw $t0, -11404($fp)
	lw $t1, 0($t0)
	sw $t1, -11408($fp)
	lw $t1, -11408($fp)
	li $t2, 0
	bne $t1, $t2, label932
	j label931
label931:
	li $t0, 1
	sw $t0, -11388($fp)
label932:
	li $t0, 0
	sw $t0, -11412($fp)
	li $t0, 0
	sw $t0, -11416($fp)
	lw $t0, -3376($fp)
	sw $t0, -11420($fp)
	li $t0, 30355
	sw $t0, -11424($fp)
	lw $t1, -11420($fp)
	lw $t2, -11424($fp)
	ble $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -11416($fp)
label936:
	li $t0, 10837
	sw $t0, -11428($fp)
	lw $t1, -11416($fp)
	lw $t2, -11428($fp)
	ble $t1, $t2, label933
	j label934
label933:
	li $t0, 1
	sw $t0, -11412($fp)
label934:
	li $t0, 3270
	sw $t0, -11432($fp)
	lw $t0, -11432($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -11436($fp)
	li $t0, 0
	sw $t0, -11440($fp)
	li $t0, 7963
	sw $t0, -11444($fp)
	li $t0, 56611
	sw $t0, -11448($fp)
	lw $t0, -11444($fp)
	lw $t1, -11448($fp)
	mul $t0, $t0, $t1
	sw $t0, -11452($fp)
	lw $t1, -11452($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label939
label939:
	li $t0, 50702
	sw $t0, -11456($fp)
	lw $t1, -11456($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label938
label937:
	li $t0, 1
	sw $t0, -11440($fp)
label938:
	li $t0, 40239
	sw $t0, -11460($fp)
	li $t0, 1
	sw $t0, -11464($fp)
	lw $t0, -11460($fp)
	lw $t1, -11464($fp)
	mul $t0, $t0, $t1
	sw $t0, -11468($fp)
	li $t0, 0
	lw $t1, -11468($fp)
	sub $t0, $t0, $t1
	sw $t0, -11472($fp)
	addi $sp, $sp, -4
	lw $t0, -11412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11472($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11476($fp)
	addi $sp, $sp, 20
	lw $t0, -11388($fp)
	lw $t1, -11476($fp)
	mul $t0, $t0, $t1
	sw $t0, -11480($fp)
	lw $t0, -11384($fp)
	lw $t1, -11480($fp)
	sub $t0, $t0, $t1
	sw $t0, -11484($fp)
	j label926
label925:
label940:
	li $t0, 18504
	sw $t0, -11488($fp)
	li $t0, 21480
	sw $t0, -11492($fp)
	lw $t0, -11488($fp)
	lw $t1, -11492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11496($fp)
	lw $t0, -2080($fp)
	sw $t0, -11500($fp)
	lw $t0, -11496($fp)
	lw $t1, -11500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11504($fp)
	li $t0, 0
	sw $t0, -11508($fp)
	li $t0, 20959
	sw $t0, -11512($fp)
	lw $t1, -11512($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label944
label945:
	li $t0, 10849
	sw $t0, -11516($fp)
	lw $t1, -11516($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label944
label943:
	li $t0, 1
	sw $t0, -11508($fp)
label944:
	li $t0, 0
	sw $t0, -11520($fp)
	li $t0, 9959
	sw $t0, -11524($fp)
	lw $t0, -10124($fp)
	sw $t0, -11528($fp)
	lw $t1, -11524($fp)
	lw $t2, -11528($fp)
	bgt $t1, $t2, label948
	j label947
label948:
	lw $t0, -3160($fp)
	sw $t0, -11532($fp)
	lw $t1, -11532($fp)
	li $t2, 0
	bne $t1, $t2, label946
	j label947
label946:
	li $t0, 1
	sw $t0, -11520($fp)
label947:
	addi $sp, $sp, -4
	lw $t0, -11504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11520($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -11536($fp)
	addi $sp, $sp, 16
	li $t0, 53977
	sw $t0, -11540($fp)
	lw $t1, -11536($fp)
	lw $t2, -11540($fp)
	bge $t1, $t2, label941
	j label942
label941:
label949:
	li $t0, 0
	sw $t0, -11544($fp)
	li $t0, 0
	sw $t0, -11548($fp)
	lw $t0, -2104($fp)
	sw $t0, -11552($fp)
	addi $t0, $fp, -384
	sw $t0, -11556($fp)
	lw $t0, -10100($fp)
	sw $t0, -11560($fp)
	li $t0, 4
	lw $t1, -11560($fp)
	mul $t0, $t0, $t1
	sw $t0, -11564($fp)
	lw $t0, -11564($fp)
	lw $t1, -11556($fp)
	add $t0, $t0, $t1
	sw $t0, -11568($fp)
	lw $t0, -11568($fp)
	lw $t1, 0($t0)
	sw $t1, -11572($fp)
	lw $t1, -11552($fp)
	lw $t2, -11572($fp)
	bge $t1, $t2, label954
	j label955
label954:
	li $t0, 1
	sw $t0, -11548($fp)
label955:
	li $t0, 29762
	sw $t0, -11576($fp)
	lw $t0, -10112($fp)
	sw $t0, -11580($fp)
	lw $t0, -11576($fp)
	lw $t1, -11580($fp)
	mul $t0, $t0, $t1
	sw $t0, -11584($fp)
	li $t0, 20622
	sw $t0, -11588($fp)
	lw $t0, -11584($fp)
	lw $t1, -11588($fp)
	sub $t0, $t0, $t1
	sw $t0, -11592($fp)
	lw $t1, -11548($fp)
	lw $t2, -11592($fp)
	ble $t1, $t2, label952
	j label953
label952:
	li $t0, 1
	sw $t0, -11544($fp)
label953:
	li $t0, 51269
	sw $t0, -11596($fp)
	lw $t1, -11544($fp)
	lw $t2, -11596($fp)
	beq $t1, $t2, label950
	j label951
label950:
	lw $t0, -3340($fp)
	sw $t0, -11600($fp)
	li $t0, 0
	sw $t0, -11604($fp)
	li $t0, 0
	sw $t0, -11608($fp)
	lw $t0, -1792($fp)
	sw $t0, -11612($fp)
	li $t0, 34041
	sw $t0, -11616($fp)
	lw $t1, -11612($fp)
	lw $t2, -11616($fp)
	blt $t1, $t2, label958
	j label960
label960:
	li $t0, 4812
	sw $t0, -11620($fp)
	lw $t1, -11620($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -11608($fp)
label959:
	li $t0, 0
	sw $t0, -11624($fp)
	lw $t0, -700($fp)
	sw $t0, -11628($fp)
	lw $t0, -2452($fp)
	sw $t0, -11632($fp)
	lw $t1, -11628($fp)
	lw $t2, -11632($fp)
	bge $t1, $t2, label961
	j label962
label961:
	li $t0, 1
	sw $t0, -11624($fp)
label962:
	addi $sp, $sp, -4
	lw $t0, -11608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11624($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -11636($fp)
	addi $sp, $sp, 12
	lw $t1, -11636($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label956
label956:
	li $t0, 1
	sw $t0, -11604($fp)
label957:
	lw $t0, -11600($fp)
	lw $t1, -11604($fp)
	mul $t0, $t0, $t1
	sw $t0, -11640($fp)
	j label949
label951:
	j label940
label942:
label926:
	j label915
label917:
label745:
	lw $t0, -412($fp)
	sw $t0, -11644($fp)
	lw $t0, -11644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -11648($fp)
	lw $t0, -11648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -11652($fp)
	lw $t0, -11652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -11656($fp)
	lw $t0, -11656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -11660($fp)
	lw $t0, -11660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -11664($fp)
	lw $t0, -11664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -11668($fp)
	lw $t0, -11668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -11672($fp)
	li $t0, 0
	sw $t0, -11676($fp)
	li $t0, 4
	lw $t1, -11676($fp)
	mul $t0, $t0, $t1
	sw $t0, -11680($fp)
	lw $t0, -11680($fp)
	lw $t1, -11672($fp)
	add $t0, $t0, $t1
	sw $t0, -11684($fp)
	lw $t0, -11684($fp)
	lw $t1, 0($t0)
	sw $t1, -11688($fp)
	lw $t0, -11688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -11692($fp)
	lw $t0, -11692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11696($fp)
	li $t0, 0
	sw $t0, -11700($fp)
	li $t0, 4
	lw $t1, -11700($fp)
	mul $t0, $t0, $t1
	sw $t0, -11704($fp)
	lw $t0, -11704($fp)
	lw $t1, -11696($fp)
	add $t0, $t0, $t1
	sw $t0, -11708($fp)
	lw $t0, -11708($fp)
	lw $t1, 0($t0)
	sw $t1, -11712($fp)
	lw $t0, -11712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11716($fp)
	li $t0, 1
	sw $t0, -11720($fp)
	li $t0, 4
	lw $t1, -11720($fp)
	mul $t0, $t0, $t1
	sw $t0, -11724($fp)
	lw $t0, -11724($fp)
	lw $t1, -11716($fp)
	add $t0, $t0, $t1
	sw $t0, -11728($fp)
	lw $t0, -11728($fp)
	lw $t1, 0($t0)
	sw $t1, -11732($fp)
	lw $t0, -11732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11736($fp)
	li $t0, 2
	sw $t0, -11740($fp)
	li $t0, 4
	lw $t1, -11740($fp)
	mul $t0, $t0, $t1
	sw $t0, -11744($fp)
	lw $t0, -11744($fp)
	lw $t1, -11736($fp)
	add $t0, $t0, $t1
	sw $t0, -11748($fp)
	lw $t0, -11748($fp)
	lw $t1, 0($t0)
	sw $t1, -11752($fp)
	lw $t0, -11752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11756($fp)
	li $t0, 3
	sw $t0, -11760($fp)
	li $t0, 4
	lw $t1, -11760($fp)
	mul $t0, $t0, $t1
	sw $t0, -11764($fp)
	lw $t0, -11764($fp)
	lw $t1, -11756($fp)
	add $t0, $t0, $t1
	sw $t0, -11768($fp)
	lw $t0, -11768($fp)
	lw $t1, 0($t0)
	sw $t1, -11772($fp)
	lw $t0, -11772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11776($fp)
	li $t0, 4
	sw $t0, -11780($fp)
	li $t0, 4
	lw $t1, -11780($fp)
	mul $t0, $t0, $t1
	sw $t0, -11784($fp)
	lw $t0, -11784($fp)
	lw $t1, -11776($fp)
	add $t0, $t0, $t1
	sw $t0, -11788($fp)
	lw $t0, -11788($fp)
	lw $t1, 0($t0)
	sw $t1, -11792($fp)
	lw $t0, -11792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11796($fp)
	li $t0, 5
	sw $t0, -11800($fp)
	li $t0, 4
	lw $t1, -11800($fp)
	mul $t0, $t0, $t1
	sw $t0, -11804($fp)
	lw $t0, -11804($fp)
	lw $t1, -11796($fp)
	add $t0, $t0, $t1
	sw $t0, -11808($fp)
	lw $t0, -11808($fp)
	lw $t1, 0($t0)
	sw $t1, -11812($fp)
	lw $t0, -11812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11816($fp)
	li $t0, 6
	sw $t0, -11820($fp)
	li $t0, 4
	lw $t1, -11820($fp)
	mul $t0, $t0, $t1
	sw $t0, -11824($fp)
	lw $t0, -11824($fp)
	lw $t1, -11816($fp)
	add $t0, $t0, $t1
	sw $t0, -11828($fp)
	lw $t0, -11828($fp)
	lw $t1, 0($t0)
	sw $t1, -11832($fp)
	lw $t0, -11832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -11836($fp)
	lw $t0, -11836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -11840($fp)
	lw $t0, -11840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -11844($fp)
	li $t0, 0
	sw $t0, -11848($fp)
	li $t0, 4
	lw $t1, -11848($fp)
	mul $t0, $t0, $t1
	sw $t0, -11852($fp)
	lw $t0, -11852($fp)
	lw $t1, -11844($fp)
	add $t0, $t0, $t1
	sw $t0, -11856($fp)
	lw $t0, -11856($fp)
	lw $t1, 0($t0)
	sw $t1, -11860($fp)
	lw $t0, -11860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -11864($fp)
	li $t0, 1
	sw $t0, -11868($fp)
	li $t0, 4
	lw $t1, -11868($fp)
	mul $t0, $t0, $t1
	sw $t0, -11872($fp)
	lw $t0, -11872($fp)
	lw $t1, -11864($fp)
	add $t0, $t0, $t1
	sw $t0, -11876($fp)
	lw $t0, -11876($fp)
	lw $t1, 0($t0)
	sw $t1, -11880($fp)
	lw $t0, -11880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -11884($fp)
	li $t0, 2
	sw $t0, -11888($fp)
	li $t0, 4
	lw $t1, -11888($fp)
	mul $t0, $t0, $t1
	sw $t0, -11892($fp)
	lw $t0, -11892($fp)
	lw $t1, -11884($fp)
	add $t0, $t0, $t1
	sw $t0, -11896($fp)
	lw $t0, -11896($fp)
	lw $t1, 0($t0)
	sw $t1, -11900($fp)
	lw $t0, -11900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -11904($fp)
	li $t0, 3
	sw $t0, -11908($fp)
	li $t0, 4
	lw $t1, -11908($fp)
	mul $t0, $t0, $t1
	sw $t0, -11912($fp)
	lw $t0, -11912($fp)
	lw $t1, -11904($fp)
	add $t0, $t0, $t1
	sw $t0, -11916($fp)
	lw $t0, -11916($fp)
	lw $t1, 0($t0)
	sw $t1, -11920($fp)
	lw $t0, -11920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -11924($fp)
	li $t0, 4
	sw $t0, -11928($fp)
	li $t0, 4
	lw $t1, -11928($fp)
	mul $t0, $t0, $t1
	sw $t0, -11932($fp)
	lw $t0, -11932($fp)
	lw $t1, -11924($fp)
	add $t0, $t0, $t1
	sw $t0, -11936($fp)
	lw $t0, -11936($fp)
	lw $t1, 0($t0)
	sw $t1, -11940($fp)
	lw $t0, -11940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -11944($fp)
	li $t0, 5
	sw $t0, -11948($fp)
	li $t0, 4
	lw $t1, -11948($fp)
	mul $t0, $t0, $t1
	sw $t0, -11952($fp)
	lw $t0, -11952($fp)
	lw $t1, -11944($fp)
	add $t0, $t0, $t1
	sw $t0, -11956($fp)
	lw $t0, -11956($fp)
	lw $t1, 0($t0)
	sw $t1, -11960($fp)
	lw $t0, -11960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -11964($fp)
	li $t0, 6
	sw $t0, -11968($fp)
	li $t0, 4
	lw $t1, -11968($fp)
	mul $t0, $t0, $t1
	sw $t0, -11972($fp)
	lw $t0, -11972($fp)
	lw $t1, -11964($fp)
	add $t0, $t0, $t1
	sw $t0, -11976($fp)
	lw $t0, -11976($fp)
	lw $t1, 0($t0)
	sw $t1, -11980($fp)
	lw $t0, -11980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -11984($fp)
	li $t0, 7
	sw $t0, -11988($fp)
	li $t0, 4
	lw $t1, -11988($fp)
	mul $t0, $t0, $t1
	sw $t0, -11992($fp)
	lw $t0, -11992($fp)
	lw $t1, -11984($fp)
	add $t0, $t0, $t1
	sw $t0, -11996($fp)
	lw $t0, -11996($fp)
	lw $t1, 0($t0)
	sw $t1, -12000($fp)
	lw $t0, -12000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -12004($fp)
	li $t0, 0
	sw $t0, -12008($fp)
	li $t0, 4
	lw $t1, -12008($fp)
	mul $t0, $t0, $t1
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	lw $t1, -12004($fp)
	add $t0, $t0, $t1
	sw $t0, -12016($fp)
	lw $t0, -12016($fp)
	lw $t1, 0($t0)
	sw $t1, -12020($fp)
	lw $t0, -12020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -12024($fp)
	lw $t0, -12024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -12028($fp)
	lw $t0, -12028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -12032($fp)
	lw $t0, -12032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -12036($fp)
	li $t0, 0
	sw $t0, -12040($fp)
	li $t0, 4
	lw $t1, -12040($fp)
	mul $t0, $t0, $t1
	sw $t0, -12044($fp)
	lw $t0, -12044($fp)
	lw $t1, -12036($fp)
	add $t0, $t0, $t1
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	lw $t1, 0($t0)
	sw $t1, -12052($fp)
	lw $t0, -12052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -12056($fp)
	li $t0, 1
	sw $t0, -12060($fp)
	li $t0, 4
	lw $t1, -12060($fp)
	mul $t0, $t0, $t1
	sw $t0, -12064($fp)
	lw $t0, -12064($fp)
	lw $t1, -12056($fp)
	add $t0, $t0, $t1
	sw $t0, -12068($fp)
	lw $t0, -12068($fp)
	lw $t1, 0($t0)
	sw $t1, -12072($fp)
	lw $t0, -12072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -12076($fp)
	li $t0, 2
	sw $t0, -12080($fp)
	li $t0, 4
	lw $t1, -12080($fp)
	mul $t0, $t0, $t1
	sw $t0, -12084($fp)
	lw $t0, -12084($fp)
	lw $t1, -12076($fp)
	add $t0, $t0, $t1
	sw $t0, -12088($fp)
	lw $t0, -12088($fp)
	lw $t1, 0($t0)
	sw $t1, -12092($fp)
	lw $t0, -12092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -12096($fp)
	li $t0, 3
	sw $t0, -12100($fp)
	li $t0, 4
	lw $t1, -12100($fp)
	mul $t0, $t0, $t1
	sw $t0, -12104($fp)
	lw $t0, -12104($fp)
	lw $t1, -12096($fp)
	add $t0, $t0, $t1
	sw $t0, -12108($fp)
	lw $t0, -12108($fp)
	lw $t1, 0($t0)
	sw $t1, -12112($fp)
	lw $t0, -12112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -12116($fp)
	li $t0, 4
	sw $t0, -12120($fp)
	li $t0, 4
	lw $t1, -12120($fp)
	mul $t0, $t0, $t1
	sw $t0, -12124($fp)
	lw $t0, -12124($fp)
	lw $t1, -12116($fp)
	add $t0, $t0, $t1
	sw $t0, -12128($fp)
	lw $t0, -12128($fp)
	lw $t1, 0($t0)
	sw $t1, -12132($fp)
	lw $t0, -12132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -12136($fp)
	li $t0, 5
	sw $t0, -12140($fp)
	li $t0, 4
	lw $t1, -12140($fp)
	mul $t0, $t0, $t1
	sw $t0, -12144($fp)
	lw $t0, -12144($fp)
	lw $t1, -12136($fp)
	add $t0, $t0, $t1
	sw $t0, -12148($fp)
	lw $t0, -12148($fp)
	lw $t1, 0($t0)
	sw $t1, -12152($fp)
	lw $t0, -12152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -12156($fp)
	lw $t0, -12156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -12160($fp)
	lw $t0, -12160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -12164($fp)
	lw $t0, -12164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -12168($fp)
	lw $t0, -12168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -12172($fp)
	lw $t0, -12172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -12176($fp)
	lw $t0, -12176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -12180($fp)
	li $t0, 0
	sw $t0, -12184($fp)
	li $t0, 4
	lw $t1, -12184($fp)
	mul $t0, $t0, $t1
	sw $t0, -12188($fp)
	lw $t0, -12188($fp)
	lw $t1, -12180($fp)
	add $t0, $t0, $t1
	sw $t0, -12192($fp)
	lw $t0, -12192($fp)
	lw $t1, 0($t0)
	sw $t1, -12196($fp)
	lw $t0, -12196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -12200($fp)
	li $t0, 1
	sw $t0, -12204($fp)
	li $t0, 4
	lw $t1, -12204($fp)
	mul $t0, $t0, $t1
	sw $t0, -12208($fp)
	lw $t0, -12208($fp)
	lw $t1, -12200($fp)
	add $t0, $t0, $t1
	sw $t0, -12212($fp)
	lw $t0, -12212($fp)
	lw $t1, 0($t0)
	sw $t1, -12216($fp)
	lw $t0, -12216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -12220($fp)
	li $t0, 2
	sw $t0, -12224($fp)
	li $t0, 4
	lw $t1, -12224($fp)
	mul $t0, $t0, $t1
	sw $t0, -12228($fp)
	lw $t0, -12228($fp)
	lw $t1, -12220($fp)
	add $t0, $t0, $t1
	sw $t0, -12232($fp)
	lw $t0, -12232($fp)
	lw $t1, 0($t0)
	sw $t1, -12236($fp)
	lw $t0, -12236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -12240($fp)
	li $t0, 3
	sw $t0, -12244($fp)
	li $t0, 4
	lw $t1, -12244($fp)
	mul $t0, $t0, $t1
	sw $t0, -12248($fp)
	lw $t0, -12248($fp)
	lw $t1, -12240($fp)
	add $t0, $t0, $t1
	sw $t0, -12252($fp)
	lw $t0, -12252($fp)
	lw $t1, 0($t0)
	sw $t1, -12256($fp)
	lw $t0, -12256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -12260($fp)
	li $t0, 4
	sw $t0, -12264($fp)
	li $t0, 4
	lw $t1, -12264($fp)
	mul $t0, $t0, $t1
	sw $t0, -12268($fp)
	lw $t0, -12268($fp)
	lw $t1, -12260($fp)
	add $t0, $t0, $t1
	sw $t0, -12272($fp)
	lw $t0, -12272($fp)
	lw $t1, 0($t0)
	sw $t1, -12276($fp)
	lw $t0, -12276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -12280($fp)
	li $t0, 5
	sw $t0, -12284($fp)
	li $t0, 4
	lw $t1, -12284($fp)
	mul $t0, $t0, $t1
	sw $t0, -12288($fp)
	lw $t0, -12288($fp)
	lw $t1, -12280($fp)
	add $t0, $t0, $t1
	sw $t0, -12292($fp)
	lw $t0, -12292($fp)
	lw $t1, 0($t0)
	sw $t1, -12296($fp)
	lw $t0, -12296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -12300($fp)
	li $t0, 6
	sw $t0, -12304($fp)
	li $t0, 4
	lw $t1, -12304($fp)
	mul $t0, $t0, $t1
	sw $t0, -12308($fp)
	lw $t0, -12308($fp)
	lw $t1, -12300($fp)
	add $t0, $t0, $t1
	sw $t0, -12312($fp)
	lw $t0, -12312($fp)
	lw $t1, 0($t0)
	sw $t1, -12316($fp)
	lw $t0, -12316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -12320($fp)
	lw $t0, -12320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -12324($fp)
	lw $t0, -12324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12328($fp)
	li $t0, 0
	sw $t0, -12332($fp)
	li $t0, 4
	lw $t1, -12332($fp)
	mul $t0, $t0, $t1
	sw $t0, -12336($fp)
	lw $t0, -12336($fp)
	lw $t1, -12328($fp)
	add $t0, $t0, $t1
	sw $t0, -12340($fp)
	lw $t0, -12340($fp)
	lw $t1, 0($t0)
	sw $t1, -12344($fp)
	lw $t0, -12344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12348($fp)
	li $t0, 1
	sw $t0, -12352($fp)
	li $t0, 4
	lw $t1, -12352($fp)
	mul $t0, $t0, $t1
	sw $t0, -12356($fp)
	lw $t0, -12356($fp)
	lw $t1, -12348($fp)
	add $t0, $t0, $t1
	sw $t0, -12360($fp)
	lw $t0, -12360($fp)
	lw $t1, 0($t0)
	sw $t1, -12364($fp)
	lw $t0, -12364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12368($fp)
	li $t0, 2
	sw $t0, -12372($fp)
	li $t0, 4
	lw $t1, -12372($fp)
	mul $t0, $t0, $t1
	sw $t0, -12376($fp)
	lw $t0, -12376($fp)
	lw $t1, -12368($fp)
	add $t0, $t0, $t1
	sw $t0, -12380($fp)
	lw $t0, -12380($fp)
	lw $t1, 0($t0)
	sw $t1, -12384($fp)
	lw $t0, -12384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12388($fp)
	li $t0, 3
	sw $t0, -12392($fp)
	li $t0, 4
	lw $t1, -12392($fp)
	mul $t0, $t0, $t1
	sw $t0, -12396($fp)
	lw $t0, -12396($fp)
	lw $t1, -12388($fp)
	add $t0, $t0, $t1
	sw $t0, -12400($fp)
	lw $t0, -12400($fp)
	lw $t1, 0($t0)
	sw $t1, -12404($fp)
	lw $t0, -12404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12408($fp)
	li $t0, 4
	sw $t0, -12412($fp)
	li $t0, 4
	lw $t1, -12412($fp)
	mul $t0, $t0, $t1
	sw $t0, -12416($fp)
	lw $t0, -12416($fp)
	lw $t1, -12408($fp)
	add $t0, $t0, $t1
	sw $t0, -12420($fp)
	lw $t0, -12420($fp)
	lw $t1, 0($t0)
	sw $t1, -12424($fp)
	lw $t0, -12424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12428($fp)
	li $t0, 5
	sw $t0, -12432($fp)
	li $t0, 4
	lw $t1, -12432($fp)
	mul $t0, $t0, $t1
	sw $t0, -12436($fp)
	lw $t0, -12436($fp)
	lw $t1, -12428($fp)
	add $t0, $t0, $t1
	sw $t0, -12440($fp)
	lw $t0, -12440($fp)
	lw $t1, 0($t0)
	sw $t1, -12444($fp)
	lw $t0, -12444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12448($fp)
	li $t0, 6
	sw $t0, -12452($fp)
	li $t0, 4
	lw $t1, -12452($fp)
	mul $t0, $t0, $t1
	sw $t0, -12456($fp)
	lw $t0, -12456($fp)
	lw $t1, -12448($fp)
	add $t0, $t0, $t1
	sw $t0, -12460($fp)
	lw $t0, -12460($fp)
	lw $t1, 0($t0)
	sw $t1, -12464($fp)
	lw $t0, -12464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1552($fp)
	sw $t0, -12468($fp)
	lw $t0, -12468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1564($fp)
	sw $t0, -12472($fp)
	lw $t0, -12472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1576($fp)
	sw $t0, -12476($fp)
	lw $t0, -12476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1588($fp)
	sw $t0, -12480($fp)
	lw $t0, -12480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -12484($fp)
	li $t0, 0
	sw $t0, -12488($fp)
	li $t0, 4
	lw $t1, -12488($fp)
	mul $t0, $t0, $t1
	sw $t0, -12492($fp)
	lw $t0, -12492($fp)
	lw $t1, -12484($fp)
	add $t0, $t0, $t1
	sw $t0, -12496($fp)
	lw $t0, -12496($fp)
	lw $t1, 0($t0)
	sw $t1, -12500($fp)
	lw $t0, -12500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -12504($fp)
	li $t0, 1
	sw $t0, -12508($fp)
	li $t0, 4
	lw $t1, -12508($fp)
	mul $t0, $t0, $t1
	sw $t0, -12512($fp)
	lw $t0, -12512($fp)
	lw $t1, -12504($fp)
	add $t0, $t0, $t1
	sw $t0, -12516($fp)
	lw $t0, -12516($fp)
	lw $t1, 0($t0)
	sw $t1, -12520($fp)
	lw $t0, -12520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -12524($fp)
	li $t0, 2
	sw $t0, -12528($fp)
	li $t0, 4
	lw $t1, -12528($fp)
	mul $t0, $t0, $t1
	sw $t0, -12532($fp)
	lw $t0, -12532($fp)
	lw $t1, -12524($fp)
	add $t0, $t0, $t1
	sw $t0, -12536($fp)
	lw $t0, -12536($fp)
	lw $t1, 0($t0)
	sw $t1, -12540($fp)
	lw $t0, -12540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -12544($fp)
	li $t0, 3
	sw $t0, -12548($fp)
	li $t0, 4
	lw $t1, -12548($fp)
	mul $t0, $t0, $t1
	sw $t0, -12552($fp)
	lw $t0, -12552($fp)
	lw $t1, -12544($fp)
	add $t0, $t0, $t1
	sw $t0, -12556($fp)
	lw $t0, -12556($fp)
	lw $t1, 0($t0)
	sw $t1, -12560($fp)
	lw $t0, -12560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -12564($fp)
	li $t0, 0
	sw $t0, -12568($fp)
	li $t0, 4
	lw $t1, -12568($fp)
	mul $t0, $t0, $t1
	sw $t0, -12572($fp)
	lw $t0, -12572($fp)
	lw $t1, -12564($fp)
	add $t0, $t0, $t1
	sw $t0, -12576($fp)
	lw $t0, -12576($fp)
	lw $t1, 0($t0)
	sw $t1, -12580($fp)
	lw $t0, -12580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -12584($fp)
	li $t0, 1
	sw $t0, -12588($fp)
	li $t0, 4
	lw $t1, -12588($fp)
	mul $t0, $t0, $t1
	sw $t0, -12592($fp)
	lw $t0, -12592($fp)
	lw $t1, -12584($fp)
	add $t0, $t0, $t1
	sw $t0, -12596($fp)
	lw $t0, -12596($fp)
	lw $t1, 0($t0)
	sw $t1, -12600($fp)
	lw $t0, -12600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -12604($fp)
	li $t0, 2
	sw $t0, -12608($fp)
	li $t0, 4
	lw $t1, -12608($fp)
	mul $t0, $t0, $t1
	sw $t0, -12612($fp)
	lw $t0, -12612($fp)
	lw $t1, -12604($fp)
	add $t0, $t0, $t1
	sw $t0, -12616($fp)
	lw $t0, -12616($fp)
	lw $t1, 0($t0)
	sw $t1, -12620($fp)
	lw $t0, -12620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -12624($fp)
	li $t0, 3
	sw $t0, -12628($fp)
	li $t0, 4
	lw $t1, -12628($fp)
	mul $t0, $t0, $t1
	sw $t0, -12632($fp)
	lw $t0, -12632($fp)
	lw $t1, -12624($fp)
	add $t0, $t0, $t1
	sw $t0, -12636($fp)
	lw $t0, -12636($fp)
	lw $t1, 0($t0)
	sw $t1, -12640($fp)
	lw $t0, -12640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1792($fp)
	sw $t0, -12644($fp)
	lw $t0, -12644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -12648($fp)
	li $t0, 0
	sw $t0, -12652($fp)
	li $t0, 4
	lw $t1, -12652($fp)
	mul $t0, $t0, $t1
	sw $t0, -12656($fp)
	lw $t0, -12656($fp)
	lw $t1, -12648($fp)
	add $t0, $t0, $t1
	sw $t0, -12660($fp)
	lw $t0, -12660($fp)
	lw $t1, 0($t0)
	sw $t1, -12664($fp)
	lw $t0, -12664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -12668($fp)
	li $t0, 1
	sw $t0, -12672($fp)
	li $t0, 4
	lw $t1, -12672($fp)
	mul $t0, $t0, $t1
	sw $t0, -12676($fp)
	lw $t0, -12676($fp)
	lw $t1, -12668($fp)
	add $t0, $t0, $t1
	sw $t0, -12680($fp)
	lw $t0, -12680($fp)
	lw $t1, 0($t0)
	sw $t1, -12684($fp)
	lw $t0, -12684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -12688($fp)
	li $t0, 2
	sw $t0, -12692($fp)
	li $t0, 4
	lw $t1, -12692($fp)
	mul $t0, $t0, $t1
	sw $t0, -12696($fp)
	lw $t0, -12696($fp)
	lw $t1, -12688($fp)
	add $t0, $t0, $t1
	sw $t0, -12700($fp)
	lw $t0, -12700($fp)
	lw $t1, 0($t0)
	sw $t1, -12704($fp)
	lw $t0, -12704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -12708($fp)
	li $t0, 3
	sw $t0, -12712($fp)
	li $t0, 4
	lw $t1, -12712($fp)
	mul $t0, $t0, $t1
	sw $t0, -12716($fp)
	lw $t0, -12716($fp)
	lw $t1, -12708($fp)
	add $t0, $t0, $t1
	sw $t0, -12720($fp)
	lw $t0, -12720($fp)
	lw $t1, 0($t0)
	sw $t1, -12724($fp)
	lw $t0, -12724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -12728($fp)
	li $t0, 4
	sw $t0, -12732($fp)
	li $t0, 4
	lw $t1, -12732($fp)
	mul $t0, $t0, $t1
	sw $t0, -12736($fp)
	lw $t0, -12736($fp)
	lw $t1, -12728($fp)
	add $t0, $t0, $t1
	sw $t0, -12740($fp)
	lw $t0, -12740($fp)
	lw $t1, 0($t0)
	sw $t1, -12744($fp)
	lw $t0, -12744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -12748($fp)
	li $t0, 5
	sw $t0, -12752($fp)
	li $t0, 4
	lw $t1, -12752($fp)
	mul $t0, $t0, $t1
	sw $t0, -12756($fp)
	lw $t0, -12756($fp)
	lw $t1, -12748($fp)
	add $t0, $t0, $t1
	sw $t0, -12760($fp)
	lw $t0, -12760($fp)
	lw $t1, 0($t0)
	sw $t1, -12764($fp)
	lw $t0, -12764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -12768($fp)
	li $t0, 6
	sw $t0, -12772($fp)
	li $t0, 4
	lw $t1, -12772($fp)
	mul $t0, $t0, $t1
	sw $t0, -12776($fp)
	lw $t0, -12776($fp)
	lw $t1, -12768($fp)
	add $t0, $t0, $t1
	sw $t0, -12780($fp)
	lw $t0, -12780($fp)
	lw $t1, 0($t0)
	sw $t1, -12784($fp)
	lw $t0, -12784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1972($fp)
	sw $t0, -12788($fp)
	lw $t0, -12788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1984($fp)
	sw $t0, -12792($fp)
	lw $t0, -12792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1996($fp)
	sw $t0, -12796($fp)
	lw $t0, -12796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2008($fp)
	sw $t0, -12800($fp)
	lw $t0, -12800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2020($fp)
	sw $t0, -12804($fp)
	lw $t0, -12804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2032($fp)
	sw $t0, -12808($fp)
	lw $t0, -12808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2044($fp)
	sw $t0, -12812($fp)
	lw $t0, -12812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2056($fp)
	sw $t0, -12816($fp)
	lw $t0, -12816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2068($fp)
	sw $t0, -12820($fp)
	lw $t0, -12820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2080($fp)
	sw $t0, -12824($fp)
	lw $t0, -12824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2092($fp)
	sw $t0, -12828($fp)
	lw $t0, -12828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2104($fp)
	sw $t0, -12832($fp)
	lw $t0, -12832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2116($fp)
	sw $t0, -12836($fp)
	lw $t0, -12836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -12840($fp)
	li $t0, 0
	sw $t0, -12844($fp)
	li $t0, 4
	lw $t1, -12844($fp)
	mul $t0, $t0, $t1
	sw $t0, -12848($fp)
	lw $t0, -12848($fp)
	lw $t1, -12840($fp)
	add $t0, $t0, $t1
	sw $t0, -12852($fp)
	lw $t0, -12852($fp)
	lw $t1, 0($t0)
	sw $t1, -12856($fp)
	lw $t0, -12856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -12860($fp)
	li $t0, 1
	sw $t0, -12864($fp)
	li $t0, 4
	lw $t1, -12864($fp)
	mul $t0, $t0, $t1
	sw $t0, -12868($fp)
	lw $t0, -12868($fp)
	lw $t1, -12860($fp)
	add $t0, $t0, $t1
	sw $t0, -12872($fp)
	lw $t0, -12872($fp)
	lw $t1, 0($t0)
	sw $t1, -12876($fp)
	lw $t0, -12876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -12880($fp)
	li $t0, 2
	sw $t0, -12884($fp)
	li $t0, 4
	lw $t1, -12884($fp)
	mul $t0, $t0, $t1
	sw $t0, -12888($fp)
	lw $t0, -12888($fp)
	lw $t1, -12880($fp)
	add $t0, $t0, $t1
	sw $t0, -12892($fp)
	lw $t0, -12892($fp)
	lw $t1, 0($t0)
	sw $t1, -12896($fp)
	lw $t0, -12896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -12900($fp)
	li $t0, 3
	sw $t0, -12904($fp)
	li $t0, 4
	lw $t1, -12904($fp)
	mul $t0, $t0, $t1
	sw $t0, -12908($fp)
	lw $t0, -12908($fp)
	lw $t1, -12900($fp)
	add $t0, $t0, $t1
	sw $t0, -12912($fp)
	lw $t0, -12912($fp)
	lw $t1, 0($t0)
	sw $t1, -12916($fp)
	lw $t0, -12916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -12920($fp)
	li $t0, 4
	sw $t0, -12924($fp)
	li $t0, 4
	lw $t1, -12924($fp)
	mul $t0, $t0, $t1
	sw $t0, -12928($fp)
	lw $t0, -12928($fp)
	lw $t1, -12920($fp)
	add $t0, $t0, $t1
	sw $t0, -12932($fp)
	lw $t0, -12932($fp)
	lw $t1, 0($t0)
	sw $t1, -12936($fp)
	lw $t0, -12936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -12940($fp)
	li $t0, 5
	sw $t0, -12944($fp)
	li $t0, 4
	lw $t1, -12944($fp)
	mul $t0, $t0, $t1
	sw $t0, -12948($fp)
	lw $t0, -12948($fp)
	lw $t1, -12940($fp)
	add $t0, $t0, $t1
	sw $t0, -12952($fp)
	lw $t0, -12952($fp)
	lw $t1, 0($t0)
	sw $t1, -12956($fp)
	lw $t0, -12956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2272($fp)
	sw $t0, -12960($fp)
	lw $t0, -12960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2284($fp)
	sw $t0, -12964($fp)
	lw $t0, -12964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2296($fp)
	sw $t0, -12968($fp)
	lw $t0, -12968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -12972($fp)
	li $t0, 0
	sw $t0, -12976($fp)
	li $t0, 4
	lw $t1, -12976($fp)
	mul $t0, $t0, $t1
	sw $t0, -12980($fp)
	lw $t0, -12980($fp)
	lw $t1, -12972($fp)
	add $t0, $t0, $t1
	sw $t0, -12984($fp)
	lw $t0, -12984($fp)
	lw $t1, 0($t0)
	sw $t1, -12988($fp)
	lw $t0, -12988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -12992($fp)
	li $t0, 1
	sw $t0, -12996($fp)
	li $t0, 4
	lw $t1, -12996($fp)
	mul $t0, $t0, $t1
	sw $t0, -13000($fp)
	lw $t0, -13000($fp)
	lw $t1, -12992($fp)
	add $t0, $t0, $t1
	sw $t0, -13004($fp)
	lw $t0, -13004($fp)
	lw $t1, 0($t0)
	sw $t1, -13008($fp)
	lw $t0, -13008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -13012($fp)
	li $t0, 2
	sw $t0, -13016($fp)
	li $t0, 4
	lw $t1, -13016($fp)
	mul $t0, $t0, $t1
	sw $t0, -13020($fp)
	lw $t0, -13020($fp)
	lw $t1, -13012($fp)
	add $t0, $t0, $t1
	sw $t0, -13024($fp)
	lw $t0, -13024($fp)
	lw $t1, 0($t0)
	sw $t1, -13028($fp)
	lw $t0, -13028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -13032($fp)
	li $t0, 3
	sw $t0, -13036($fp)
	li $t0, 4
	lw $t1, -13036($fp)
	mul $t0, $t0, $t1
	sw $t0, -13040($fp)
	lw $t0, -13040($fp)
	lw $t1, -13032($fp)
	add $t0, $t0, $t1
	sw $t0, -13044($fp)
	lw $t0, -13044($fp)
	lw $t1, 0($t0)
	sw $t1, -13048($fp)
	lw $t0, -13048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -13052($fp)
	li $t0, 4
	sw $t0, -13056($fp)
	li $t0, 4
	lw $t1, -13056($fp)
	mul $t0, $t0, $t1
	sw $t0, -13060($fp)
	lw $t0, -13060($fp)
	lw $t1, -13052($fp)
	add $t0, $t0, $t1
	sw $t0, -13064($fp)
	lw $t0, -13064($fp)
	lw $t1, 0($t0)
	sw $t1, -13068($fp)
	lw $t0, -13068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -13072($fp)
	li $t0, 5
	sw $t0, -13076($fp)
	li $t0, 4
	lw $t1, -13076($fp)
	mul $t0, $t0, $t1
	sw $t0, -13080($fp)
	lw $t0, -13080($fp)
	lw $t1, -13072($fp)
	add $t0, $t0, $t1
	sw $t0, -13084($fp)
	lw $t0, -13084($fp)
	lw $t1, 0($t0)
	sw $t1, -13088($fp)
	lw $t0, -13088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2452($fp)
	sw $t0, -13092($fp)
	lw $t0, -13092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2464($fp)
	sw $t0, -13096($fp)
	lw $t0, -13096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2476($fp)
	sw $t0, -13100($fp)
	lw $t0, -13100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2488($fp)
	sw $t0, -13104($fp)
	lw $t0, -13104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2500($fp)
	sw $t0, -13108($fp)
	lw $t0, -13108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2512($fp)
	sw $t0, -13112($fp)
	lw $t0, -13112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2524($fp)
	sw $t0, -13116($fp)
	lw $t0, -13116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2536($fp)
	sw $t0, -13120($fp)
	lw $t0, -13120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13124($fp)
	li $t0, 0
	sw $t0, -13128($fp)
	li $t0, 4
	lw $t1, -13128($fp)
	mul $t0, $t0, $t1
	sw $t0, -13132($fp)
	lw $t0, -13132($fp)
	lw $t1, -13124($fp)
	add $t0, $t0, $t1
	sw $t0, -13136($fp)
	lw $t0, -13136($fp)
	lw $t1, 0($t0)
	sw $t1, -13140($fp)
	lw $t0, -13140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13144($fp)
	li $t0, 1
	sw $t0, -13148($fp)
	li $t0, 4
	lw $t1, -13148($fp)
	mul $t0, $t0, $t1
	sw $t0, -13152($fp)
	lw $t0, -13152($fp)
	lw $t1, -13144($fp)
	add $t0, $t0, $t1
	sw $t0, -13156($fp)
	lw $t0, -13156($fp)
	lw $t1, 0($t0)
	sw $t1, -13160($fp)
	lw $t0, -13160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13164($fp)
	li $t0, 2
	sw $t0, -13168($fp)
	li $t0, 4
	lw $t1, -13168($fp)
	mul $t0, $t0, $t1
	sw $t0, -13172($fp)
	lw $t0, -13172($fp)
	lw $t1, -13164($fp)
	add $t0, $t0, $t1
	sw $t0, -13176($fp)
	lw $t0, -13176($fp)
	lw $t1, 0($t0)
	sw $t1, -13180($fp)
	lw $t0, -13180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13184($fp)
	li $t0, 3
	sw $t0, -13188($fp)
	li $t0, 4
	lw $t1, -13188($fp)
	mul $t0, $t0, $t1
	sw $t0, -13192($fp)
	lw $t0, -13192($fp)
	lw $t1, -13184($fp)
	add $t0, $t0, $t1
	sw $t0, -13196($fp)
	lw $t0, -13196($fp)
	lw $t1, 0($t0)
	sw $t1, -13200($fp)
	lw $t0, -13200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13204($fp)
	li $t0, 4
	sw $t0, -13208($fp)
	li $t0, 4
	lw $t1, -13208($fp)
	mul $t0, $t0, $t1
	sw $t0, -13212($fp)
	lw $t0, -13212($fp)
	lw $t1, -13204($fp)
	add $t0, $t0, $t1
	sw $t0, -13216($fp)
	lw $t0, -13216($fp)
	lw $t1, 0($t0)
	sw $t1, -13220($fp)
	lw $t0, -13220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13224($fp)
	li $t0, 5
	sw $t0, -13228($fp)
	li $t0, 4
	lw $t1, -13228($fp)
	mul $t0, $t0, $t1
	sw $t0, -13232($fp)
	lw $t0, -13232($fp)
	lw $t1, -13224($fp)
	add $t0, $t0, $t1
	sw $t0, -13236($fp)
	lw $t0, -13236($fp)
	lw $t1, 0($t0)
	sw $t1, -13240($fp)
	lw $t0, -13240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13244($fp)
	li $t0, 6
	sw $t0, -13248($fp)
	li $t0, 4
	lw $t1, -13248($fp)
	mul $t0, $t0, $t1
	sw $t0, -13252($fp)
	lw $t0, -13252($fp)
	lw $t1, -13244($fp)
	add $t0, $t0, $t1
	sw $t0, -13256($fp)
	lw $t0, -13256($fp)
	lw $t1, 0($t0)
	sw $t1, -13260($fp)
	lw $t0, -13260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13264($fp)
	li $t0, 7
	sw $t0, -13268($fp)
	li $t0, 4
	lw $t1, -13268($fp)
	mul $t0, $t0, $t1
	sw $t0, -13272($fp)
	lw $t0, -13272($fp)
	lw $t1, -13264($fp)
	add $t0, $t0, $t1
	sw $t0, -13276($fp)
	lw $t0, -13276($fp)
	lw $t1, 0($t0)
	sw $t1, -13280($fp)
	lw $t0, -13280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13284($fp)
	li $t0, 8
	sw $t0, -13288($fp)
	li $t0, 4
	lw $t1, -13288($fp)
	mul $t0, $t0, $t1
	sw $t0, -13292($fp)
	lw $t0, -13292($fp)
	lw $t1, -13284($fp)
	add $t0, $t0, $t1
	sw $t0, -13296($fp)
	lw $t0, -13296($fp)
	lw $t1, 0($t0)
	sw $t1, -13300($fp)
	lw $t0, -13300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -13304($fp)
	li $t0, 9
	sw $t0, -13308($fp)
	li $t0, 4
	lw $t1, -13308($fp)
	mul $t0, $t0, $t1
	sw $t0, -13312($fp)
	lw $t0, -13312($fp)
	lw $t1, -13304($fp)
	add $t0, $t0, $t1
	sw $t0, -13316($fp)
	lw $t0, -13316($fp)
	lw $t1, 0($t0)
	sw $t1, -13320($fp)
	lw $t0, -13320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -304
	sw $t0, -13324($fp)
	li $t0, 0
	sw $t0, -13328($fp)
	li $t0, 4
	lw $t1, -13328($fp)
	mul $t0, $t0, $t1
	sw $t0, -13332($fp)
	lw $t0, -13332($fp)
	lw $t1, -13324($fp)
	add $t0, $t0, $t1
	sw $t0, -13336($fp)
	lw $t0, -13336($fp)
	lw $t1, 0($t0)
	sw $t1, -13340($fp)
	lw $t0, -13340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2812($fp)
	sw $t0, -13344($fp)
	lw $t0, -13344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2824($fp)
	sw $t0, -13348($fp)
	lw $t0, -13348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
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
	lw $t0, -13368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -13372($fp)
	li $t0, 1
	sw $t0, -13376($fp)
	li $t0, 4
	lw $t1, -13376($fp)
	mul $t0, $t0, $t1
	sw $t0, -13380($fp)
	lw $t0, -13380($fp)
	lw $t1, -13372($fp)
	add $t0, $t0, $t1
	sw $t0, -13384($fp)
	lw $t0, -13384($fp)
	lw $t1, 0($t0)
	sw $t1, -13388($fp)
	lw $t0, -13388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -13392($fp)
	li $t0, 2
	sw $t0, -13396($fp)
	li $t0, 4
	lw $t1, -13396($fp)
	mul $t0, $t0, $t1
	sw $t0, -13400($fp)
	lw $t0, -13400($fp)
	lw $t1, -13392($fp)
	add $t0, $t0, $t1
	sw $t0, -13404($fp)
	lw $t0, -13404($fp)
	lw $t1, 0($t0)
	sw $t1, -13408($fp)
	lw $t0, -13408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -13412($fp)
	li $t0, 3
	sw $t0, -13416($fp)
	li $t0, 4
	lw $t1, -13416($fp)
	mul $t0, $t0, $t1
	sw $t0, -13420($fp)
	lw $t0, -13420($fp)
	lw $t1, -13412($fp)
	add $t0, $t0, $t1
	sw $t0, -13424($fp)
	lw $t0, -13424($fp)
	lw $t1, 0($t0)
	sw $t1, -13428($fp)
	lw $t0, -13428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -13432($fp)
	li $t0, 4
	sw $t0, -13436($fp)
	li $t0, 4
	lw $t1, -13436($fp)
	mul $t0, $t0, $t1
	sw $t0, -13440($fp)
	lw $t0, -13440($fp)
	lw $t1, -13432($fp)
	add $t0, $t0, $t1
	sw $t0, -13444($fp)
	lw $t0, -13444($fp)
	lw $t1, 0($t0)
	sw $t1, -13448($fp)
	lw $t0, -13448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -13452($fp)
	li $t0, 5
	sw $t0, -13456($fp)
	li $t0, 4
	lw $t1, -13456($fp)
	mul $t0, $t0, $t1
	sw $t0, -13460($fp)
	lw $t0, -13460($fp)
	lw $t1, -13452($fp)
	add $t0, $t0, $t1
	sw $t0, -13464($fp)
	lw $t0, -13464($fp)
	lw $t1, 0($t0)
	sw $t1, -13468($fp)
	lw $t0, -13468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -13472($fp)
	li $t0, 6
	sw $t0, -13476($fp)
	li $t0, 4
	lw $t1, -13476($fp)
	mul $t0, $t0, $t1
	sw $t0, -13480($fp)
	lw $t0, -13480($fp)
	lw $t1, -13472($fp)
	add $t0, $t0, $t1
	sw $t0, -13484($fp)
	lw $t0, -13484($fp)
	lw $t1, 0($t0)
	sw $t1, -13488($fp)
	lw $t0, -13488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -13492($fp)
	li $t0, 7
	sw $t0, -13496($fp)
	li $t0, 4
	lw $t1, -13496($fp)
	mul $t0, $t0, $t1
	sw $t0, -13500($fp)
	lw $t0, -13500($fp)
	lw $t1, -13492($fp)
	add $t0, $t0, $t1
	sw $t0, -13504($fp)
	lw $t0, -13504($fp)
	lw $t1, 0($t0)
	sw $t1, -13508($fp)
	lw $t0, -13508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -13512($fp)
	li $t0, 8
	sw $t0, -13516($fp)
	li $t0, 4
	lw $t1, -13516($fp)
	mul $t0, $t0, $t1
	sw $t0, -13520($fp)
	lw $t0, -13520($fp)
	lw $t1, -13512($fp)
	add $t0, $t0, $t1
	sw $t0, -13524($fp)
	lw $t0, -13524($fp)
	lw $t1, 0($t0)
	sw $t1, -13528($fp)
	lw $t0, -13528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -13532($fp)
	li $t0, 9
	sw $t0, -13536($fp)
	li $t0, 4
	lw $t1, -13536($fp)
	mul $t0, $t0, $t1
	sw $t0, -13540($fp)
	lw $t0, -13540($fp)
	lw $t1, -13532($fp)
	add $t0, $t0, $t1
	sw $t0, -13544($fp)
	lw $t0, -13544($fp)
	lw $t1, 0($t0)
	sw $t1, -13548($fp)
	lw $t0, -13548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3076($fp)
	sw $t0, -13552($fp)
	lw $t0, -13552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -13556($fp)
	li $t0, 0
	sw $t0, -13560($fp)
	li $t0, 4
	lw $t1, -13560($fp)
	mul $t0, $t0, $t1
	sw $t0, -13564($fp)
	lw $t0, -13564($fp)
	lw $t1, -13556($fp)
	add $t0, $t0, $t1
	sw $t0, -13568($fp)
	lw $t0, -13568($fp)
	lw $t1, 0($t0)
	sw $t1, -13572($fp)
	lw $t0, -13572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -13576($fp)
	li $t0, 1
	sw $t0, -13580($fp)
	li $t0, 4
	lw $t1, -13580($fp)
	mul $t0, $t0, $t1
	sw $t0, -13584($fp)
	lw $t0, -13584($fp)
	lw $t1, -13576($fp)
	add $t0, $t0, $t1
	sw $t0, -13588($fp)
	lw $t0, -13588($fp)
	lw $t1, 0($t0)
	sw $t1, -13592($fp)
	lw $t0, -13592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -13596($fp)
	li $t0, 2
	sw $t0, -13600($fp)
	li $t0, 4
	lw $t1, -13600($fp)
	mul $t0, $t0, $t1
	sw $t0, -13604($fp)
	lw $t0, -13604($fp)
	lw $t1, -13596($fp)
	add $t0, $t0, $t1
	sw $t0, -13608($fp)
	lw $t0, -13608($fp)
	lw $t1, 0($t0)
	sw $t1, -13612($fp)
	lw $t0, -13612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3160($fp)
	sw $t0, -13616($fp)
	lw $t0, -13616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -13620($fp)
	li $t0, 0
	sw $t0, -13624($fp)
	li $t0, 4
	lw $t1, -13624($fp)
	mul $t0, $t0, $t1
	sw $t0, -13628($fp)
	lw $t0, -13628($fp)
	lw $t1, -13620($fp)
	add $t0, $t0, $t1
	sw $t0, -13632($fp)
	lw $t0, -13632($fp)
	lw $t1, 0($t0)
	sw $t1, -13636($fp)
	lw $t0, -13636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -13640($fp)
	li $t0, 1
	sw $t0, -13644($fp)
	li $t0, 4
	lw $t1, -13644($fp)
	mul $t0, $t0, $t1
	sw $t0, -13648($fp)
	lw $t0, -13648($fp)
	lw $t1, -13640($fp)
	add $t0, $t0, $t1
	sw $t0, -13652($fp)
	lw $t0, -13652($fp)
	lw $t1, 0($t0)
	sw $t1, -13656($fp)
	lw $t0, -13656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -13660($fp)
	li $t0, 2
	sw $t0, -13664($fp)
	li $t0, 4
	lw $t1, -13664($fp)
	mul $t0, $t0, $t1
	sw $t0, -13668($fp)
	lw $t0, -13668($fp)
	lw $t1, -13660($fp)
	add $t0, $t0, $t1
	sw $t0, -13672($fp)
	lw $t0, -13672($fp)
	lw $t1, 0($t0)
	sw $t1, -13676($fp)
	lw $t0, -13676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -13680($fp)
	li $t0, 3
	sw $t0, -13684($fp)
	li $t0, 4
	lw $t1, -13684($fp)
	mul $t0, $t0, $t1
	sw $t0, -13688($fp)
	lw $t0, -13688($fp)
	lw $t1, -13680($fp)
	add $t0, $t0, $t1
	sw $t0, -13692($fp)
	lw $t0, -13692($fp)
	lw $t1, 0($t0)
	sw $t1, -13696($fp)
	lw $t0, -13696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -13700($fp)
	li $t0, 4
	sw $t0, -13704($fp)
	li $t0, 4
	lw $t1, -13704($fp)
	mul $t0, $t0, $t1
	sw $t0, -13708($fp)
	lw $t0, -13708($fp)
	lw $t1, -13700($fp)
	add $t0, $t0, $t1
	sw $t0, -13712($fp)
	lw $t0, -13712($fp)
	lw $t1, 0($t0)
	sw $t1, -13716($fp)
	lw $t0, -13716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -13720($fp)
	li $t0, 5
	sw $t0, -13724($fp)
	li $t0, 4
	lw $t1, -13724($fp)
	mul $t0, $t0, $t1
	sw $t0, -13728($fp)
	lw $t0, -13728($fp)
	lw $t1, -13720($fp)
	add $t0, $t0, $t1
	sw $t0, -13732($fp)
	lw $t0, -13732($fp)
	lw $t1, 0($t0)
	sw $t1, -13736($fp)
	lw $t0, -13736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -13740($fp)
	li $t0, 6
	sw $t0, -13744($fp)
	li $t0, 4
	lw $t1, -13744($fp)
	mul $t0, $t0, $t1
	sw $t0, -13748($fp)
	lw $t0, -13748($fp)
	lw $t1, -13740($fp)
	add $t0, $t0, $t1
	sw $t0, -13752($fp)
	lw $t0, -13752($fp)
	lw $t1, 0($t0)
	sw $t1, -13756($fp)
	lw $t0, -13756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3340($fp)
	sw $t0, -13760($fp)
	lw $t0, -13760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3352($fp)
	sw $t0, -13764($fp)
	lw $t0, -13764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3364($fp)
	sw $t0, -13768($fp)
	lw $t0, -13768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3376($fp)
	sw $t0, -13772($fp)
	lw $t0, -13772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3388($fp)
	sw $t0, -13776($fp)
	lw $t0, -13776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -404
	sw $t0, -13780($fp)
	li $t0, 0
	sw $t0, -13784($fp)
	li $t0, 4
	lw $t1, -13784($fp)
	mul $t0, $t0, $t1
	sw $t0, -13788($fp)
	lw $t0, -13788($fp)
	lw $t1, -13780($fp)
	add $t0, $t0, $t1
	sw $t0, -13792($fp)
	lw $t0, -13792($fp)
	lw $t1, 0($t0)
	sw $t1, -13796($fp)
	lw $t0, -13796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -404
	sw $t0, -13800($fp)
	li $t0, 1
	sw $t0, -13804($fp)
	li $t0, 4
	lw $t1, -13804($fp)
	mul $t0, $t0, $t1
	sw $t0, -13808($fp)
	lw $t0, -13808($fp)
	lw $t1, -13800($fp)
	add $t0, $t0, $t1
	sw $t0, -13812($fp)
	lw $t0, -13812($fp)
	lw $t1, 0($t0)
	sw $t1, -13816($fp)
	lw $t0, -13816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -404
	sw $t0, -13820($fp)
	li $t0, 2
	sw $t0, -13824($fp)
	li $t0, 4
	lw $t1, -13824($fp)
	mul $t0, $t0, $t1
	sw $t0, -13828($fp)
	lw $t0, -13828($fp)
	lw $t1, -13820($fp)
	add $t0, $t0, $t1
	sw $t0, -13832($fp)
	lw $t0, -13832($fp)
	lw $t1, 0($t0)
	sw $t1, -13836($fp)
	lw $t0, -13836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -404
	sw $t0, -13840($fp)
	li $t0, 3
	sw $t0, -13844($fp)
	li $t0, 4
	lw $t1, -13844($fp)
	mul $t0, $t0, $t1
	sw $t0, -13848($fp)
	lw $t0, -13848($fp)
	lw $t1, -13840($fp)
	add $t0, $t0, $t1
	sw $t0, -13852($fp)
	lw $t0, -13852($fp)
	lw $t1, 0($t0)
	sw $t1, -13856($fp)
	lw $t0, -13856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -404
	sw $t0, -13860($fp)
	li $t0, 4
	sw $t0, -13864($fp)
	li $t0, 4
	lw $t1, -13864($fp)
	mul $t0, $t0, $t1
	sw $t0, -13868($fp)
	lw $t0, -13868($fp)
	lw $t1, -13860($fp)
	add $t0, $t0, $t1
	sw $t0, -13872($fp)
	lw $t0, -13872($fp)
	lw $t1, 0($t0)
	sw $t1, -13876($fp)
	lw $t0, -13876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3520($fp)
	sw $t0, -13880($fp)
	lw $t0, -13880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3532($fp)
	sw $t0, -13884($fp)
	lw $t0, -13884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3544($fp)
	sw $t0, -13888($fp)
	lw $t0, -13888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -13892($fp)
	lw $t0, -2476($fp)
	sw $t0, -13896($fp)
	lw $t1, -13896($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label965
label965:
	lw $t0, -1792($fp)
	sw $t0, -13900($fp)
	lw $t0, -3544($fp)
	sw $t0, -13904($fp)
	lw $t1, -13900($fp)
	lw $t2, -13904($fp)
	beq $t1, $t2, label963
	j label964
label963:
	li $t0, 1
	sw $t0, -13892($fp)
label964:
	lw $t0, -13892($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -13908($fp)
	lw $ra, -4($fp)
	lw $v0, -13908($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -52
	li $t0, 61866
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 27738
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label969
label969:
	li $t0, 16276
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label968
label968:
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t1, -32($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -20($fp)
label967:
	li $t0, 53657
	sw $t0, -36($fp)
	li $t0, 1
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -48($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 11135
	sw $t0, -56($fp)
	lw $ra, -4($fp)
	lw $v0, -56($fp)
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
