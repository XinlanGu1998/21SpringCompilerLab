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
	addi $sp, $sp, -2440
	li $t0, 46037
	sw $t0, -128($fp)
	addi $t0, $fp, -24
	sw $t0, -132($fp)
	li $t0, 0
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
	li $t0, 22139
	sw $t0, -152($fp)
	addi $t0, $fp, -24
	sw $t0, -156($fp)
	li $t0, 1
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
	li $t0, 32508
	sw $t0, -176($fp)
	addi $t0, $fp, -24
	sw $t0, -180($fp)
	li $t0, 2
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
	li $t0, 5896
	sw $t0, -200($fp)
	addi $t0, $fp, -24
	sw $t0, -204($fp)
	li $t0, 3
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
	li $t0, 11868
	sw $t0, -224($fp)
	addi $t0, $fp, -24
	sw $t0, -228($fp)
	li $t0, 4
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
	li $t0, 33123
	sw $t0, -248($fp)
	addi $t0, $fp, -44
	sw $t0, -252($fp)
	li $t0, 0
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
	li $t0, 7011
	sw $t0, -272($fp)
	addi $t0, $fp, -44
	sw $t0, -276($fp)
	li $t0, 1
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
	li $t0, 28808
	sw $t0, -296($fp)
	addi $t0, $fp, -44
	sw $t0, -300($fp)
	li $t0, 2
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
	li $t0, 27328
	sw $t0, -320($fp)
	addi $t0, $fp, -44
	sw $t0, -324($fp)
	li $t0, 3
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
	li $t0, 26862
	sw $t0, -344($fp)
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 4
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
	li $t0, 41150
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 48444
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 25071
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 43894
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 35338
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 36261
	sw $t0, -428($fp)
	addi $t0, $fp, -84
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
	li $t0, 50685
	sw $t0, -452($fp)
	addi $t0, $fp, -84
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
	li $t0, 32048
	sw $t0, -476($fp)
	addi $t0, $fp, -84
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
	li $t0, 41909
	sw $t0, -500($fp)
	addi $t0, $fp, -84
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
	li $t0, 11153
	sw $t0, -524($fp)
	addi $t0, $fp, -84
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
	li $t0, 28432
	sw $t0, -548($fp)
	addi $t0, $fp, -84
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
	li $t0, 6283
	sw $t0, -572($fp)
	addi $t0, $fp, -84
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
	li $t0, 4350
	sw $t0, -596($fp)
	addi $t0, $fp, -84
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
	li $t0, 55530
	sw $t0, -620($fp)
	addi $t0, $fp, -84
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
	li $t0, 10281
	sw $t0, -644($fp)
	addi $t0, $fp, -84
	sw $t0, -648($fp)
	li $t0, 9
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
	li $t0, 37657
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 65174
	sw $t0, -680($fp)
	addi $t0, $fp, -120
	sw $t0, -684($fp)
	li $t0, 0
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
	li $t0, 48744
	sw $t0, -704($fp)
	addi $t0, $fp, -120
	sw $t0, -708($fp)
	li $t0, 1
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
	li $t0, 54003
	sw $t0, -728($fp)
	addi $t0, $fp, -120
	sw $t0, -732($fp)
	li $t0, 2
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
	li $t0, 9169
	sw $t0, -752($fp)
	addi $t0, $fp, -120
	sw $t0, -756($fp)
	li $t0, 3
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
	li $t0, 59354
	sw $t0, -776($fp)
	addi $t0, $fp, -120
	sw $t0, -780($fp)
	li $t0, 4
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
	li $t0, 34504
	sw $t0, -800($fp)
	addi $t0, $fp, -120
	sw $t0, -804($fp)
	li $t0, 5
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
	li $t0, 31309
	sw $t0, -824($fp)
	addi $t0, $fp, -120
	sw $t0, -828($fp)
	li $t0, 6
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
	li $t0, 26326
	sw $t0, -848($fp)
	addi $t0, $fp, -120
	sw $t0, -852($fp)
	li $t0, 7
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
	li $t0, 40400
	sw $t0, -872($fp)
	addi $t0, $fp, -120
	sw $t0, -876($fp)
	li $t0, 8
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
	li $t0, 43177
	sw $t0, -896($fp)
	addi $t0, $fp, -124
	sw $t0, -900($fp)
	li $t0, 0
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
	li $t0, 59450
	sw $t0, -920($fp)
	li $t0, 47411
	sw $t0, -924($fp)
	li $t0, 6450
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -920($fp)
	lw $t1, -932($fp)
	sub $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -940($fp)
	lw $ra, -4($fp)
	lw $v0, -940($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 21242
	sw $t0, -944($fp)
	jal f6
	sw $v0, -948($fp)
	addi $sp, $sp, 4
	lw $t0, -944($fp)
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -956($fp)
	addi $t0, $fp, -124
	sw $t0, -960($fp)
	li $t0, 0
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
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 4151
	sw $t0, -988($fp)
	li $t0, 0
	sw $t0, -992($fp)
	li $t0, 33809
	sw $t0, -996($fp)
	li $t0, 0
	lw $t1, -996($fp)
	sub $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label123
label123:
	li $t0, 1
	sw $t0, -992($fp)
label124:
	lw $t1, -988($fp)
	lw $t2, -992($fp)
	ble $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -984($fp)
label122:
	lw $t0, -384($fp)
	sw $t0, -1004($fp)
	lw $t0, -672($fp)
	sw $t0, -1008($fp)
	li $t0, 0
	sw $t0, -1012($fp)
	li $t0, 0
	sw $t0, -1016($fp)
	li $t0, 25958
	sw $t0, -1020($fp)
	lw $t0, -408($fp)
	sw $t0, -1024($fp)
	li $t0, 0
	lw $t1, -1024($fp)
	sub $t0, $t0, $t1
	sw $t0, -1028($fp)
	li $t0, 0
	lw $t1, -1028($fp)
	sub $t0, $t0, $t1
	sw $t0, -1032($fp)
	li $t0, 0
	lw $t1, -1032($fp)
	sub $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1020($fp)
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	li $t0, 0
	lw $t1, -1040($fp)
	sub $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label127:
	li $t0, 1
	sw $t0, -1016($fp)
label128:
	li $t0, 0
	lw $t1, -1016($fp)
	sub $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label125:
	li $t0, 1
	sw $t0, -1012($fp)
label126:
	li $t0, 0
	sw $t0, -1052($fp)
	addi $t0, $fp, -84
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
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label130
label132:
	jal f6
	sw $v0, -1076($fp)
	addi $sp, $sp, 4
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label131:
	jal f6
	sw $v0, -1080($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -44
	sw $t0, -1084($fp)
	li $t0, 0
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
	lw $t0, -1080($fp)
	lw $t1, -1100($fp)
	sub $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t1, -1104($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -1052($fp)
label130:
	li $t0, 46443
	sw $t0, -1128($fp)
	addi $t0, $fp, -1124
	sw $t0, -1132($fp)
	li $t0, 0
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
	li $t0, 22261
	sw $t0, -1152($fp)
	addi $t0, $fp, -1124
	sw $t0, -1156($fp)
	li $t0, 1
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
	li $t0, 34434
	sw $t0, -1176($fp)
	addi $t0, $fp, -1124
	sw $t0, -1180($fp)
	li $t0, 2
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1180($fp)
	lw $t1, -1188($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1176($fp)
	lw $t1, -1192($fp)
	sw $t0, 0($t1)
	lw $t0, -1192($fp)
	lw $t1, 0($t0)
	sw $t1, -1196($fp)
	li $t0, 52726
	sw $t0, -1200($fp)
	addi $t0, $fp, -1124
	sw $t0, -1204($fp)
	li $t0, 3
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1204($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1200($fp)
	lw $t1, -1216($fp)
	sw $t0, 0($t1)
	lw $t0, -1216($fp)
	lw $t1, 0($t0)
	sw $t1, -1220($fp)
	li $t0, 26611
	sw $t0, -1224($fp)
	addi $t0, $fp, -1124
	sw $t0, -1228($fp)
	li $t0, 4
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1228($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1224($fp)
	lw $t1, -1240($fp)
	sw $t0, 0($t1)
	lw $t0, -1240($fp)
	lw $t1, 0($t0)
	sw $t1, -1244($fp)
	jal f6
	sw $v0, -1248($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -1256($fp)
	li $t0, 0
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	jal f6
	sw $v0, -1268($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	addi $t0, $fp, -1124
	sw $t0, -1276($fp)
	lw $t0, -408($fp)
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
	li $t0, 0
	lw $t1, -1292($fp)
	sub $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t1, -1272($fp)
	lw $t2, -1296($fp)
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -1264($fp)
label136:
	li $t0, 24428
	sw $t0, -1300($fp)
	jal f6
	sw $v0, -1304($fp)
	addi $sp, $sp, 4
	lw $t0, -1300($fp)
	lw $t1, -1304($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t1, -1264($fp)
	lw $t2, -1308($fp)
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -1260($fp)
label134:
	li $t0, 0
	sw $t0, -1312($fp)
	li $t0, 63008
	sw $t0, -1316($fp)
	lw $t0, -396($fp)
	sw $t0, -1320($fp)
	lw $t0, -1316($fp)
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -408($fp)
	sw $t0, -1328($fp)
	li $t0, 64268
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	li $t0, 24066
	sw $t0, -1340($fp)
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1344($fp)
	lw $t1, -1324($fp)
	lw $t2, -1344($fp)
	blt $t1, $t2, label137
	j label139
label139:
	addi $t0, $fp, -24
	sw $t0, -1348($fp)
	lw $t0, -384($fp)
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
	li $t0, 46216
	sw $t0, -1368($fp)
	lw $t0, -1364($fp)
	lw $t1, -1368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1372($fp)
	jal f6
	sw $v0, -1376($fp)
	addi $sp, $sp, 4
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -1312($fp)
label138:
label140:
	li $t0, 52735
	sw $t0, -1384($fp)
	addi $t0, $fp, -44
	sw $t0, -1388($fp)
	lw $t0, -384($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -1396($fp)
	li $t0, 4
	lw $t1, -1396($fp)
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	lw $t1, -1388($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	lw $t1, -1384($fp)
	lw $t2, -1408($fp)
	blt $t1, $t2, label141
	j label142
label141:
	jal f6
	sw $v0, -1412($fp)
	addi $sp, $sp, 4
	jal f6
	sw $v0, -1416($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1416($fp)
	sub $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1412($fp)
	lw $t1, -1420($fp)
	sub $t0, $t0, $t1
	sw $t0, -1424($fp)
	li $t0, 33236
	sw $t0, -1428($fp)
	li $t0, 0
	lw $t1, -1428($fp)
	sub $t0, $t0, $t1
	sw $t0, -1432($fp)
	li $t0, 0
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	addi $t0, $fp, -124
	sw $t0, -1440($fp)
	lw $t0, -372($fp)
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
	lw $t0, -1436($fp)
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -672($fp)
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	lw $t0, -408($fp)
	sw $t0, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -1472($fp)
label144:
	addi $t0, $fp, -24
	sw $t0, -1480($fp)
	li $t0, 1
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
	lw $t0, -1472($fp)
	lw $t1, -1496($fp)
	mul $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1468($fp)
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 64545
	sw $t0, -1516($fp)
	li $t0, 0
	lw $t1, -1516($fp)
	sub $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label147:
	li $t0, 1
	sw $t0, -1512($fp)
label148:
	li $t0, 825
	sw $t0, -1524($fp)
	li $t0, 62104
	sw $t0, -1528($fp)
	lw $t0, -1524($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t1, -1512($fp)
	lw $t2, -1532($fp)
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -1508($fp)
label146:
	lw $t0, -1508($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -1536($fp)
	jal f6
	sw $v0, -1540($fp)
	addi $sp, $sp, 4
	li $t0, 42186
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 60275
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	jal f6
	sw $v0, -1568($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1568($fp)
	sub $t0, $t0, $t1
	sw $t0, -1572($fp)
	li $t0, 0
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	addi $t0, $fp, -124
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	lw $t0, -1560($fp)
	sw $t0, -1592($fp)
	lw $t0, -1548($fp)
	sw $t0, -1596($fp)
	lw $t1, -1592($fp)
	lw $t2, -1596($fp)
	bge $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -1588($fp)
label150:
	li $t0, 4
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, 0($t0)
	sw $t1, -1608($fp)
	li $t0, 0
	lw $t1, -1608($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	addi $t0, $fp, -120
	sw $t0, -1616($fp)
	li $t0, 8
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
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1612($fp)
	lw $t1, -1636($fp)
	sub $t0, $t0, $t1
	sw $t0, -1640($fp)
	j label140
label142:
	li $t0, 0
	sw $t0, -1644($fp)
	jal f6
	sw $v0, -1648($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -24
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	lw $t0, -396($fp)
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label154
label155:
	li $t0, 15981
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -1656($fp)
label154:
	li $t0, 4
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	lw $t1, -1648($fp)
	lw $t2, -1676($fp)
	bgt $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -1644($fp)
label152:
	jal f6
	sw $v0, -1680($fp)
	addi $sp, $sp, 4
	jal f6
	sw $v0, -1684($fp)
	addi $sp, $sp, 4
	lw $t0, -1680($fp)
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	li $t0, 52718
	sw $t0, -1696($fp)
	addi $t0, $fp, -120
	sw $t0, -1700($fp)
	lw $t0, -384($fp)
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
	lw $t0, -1696($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	li $t0, 30700
	sw $t0, -1724($fp)
	lw $t1, -1720($fp)
	lw $t2, -1724($fp)
	bgt $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -1692($fp)
label157:
label158:
	lw $t0, -420($fp)
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label161
label161:
	lw $t0, -372($fp)
	sw $t0, -1732($fp)
	li $t0, 0
	lw $t1, -1732($fp)
	sub $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	li $t0, 20132
	sw $t0, -1744($fp)
	lw $t1, -1744($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label162:
	li $t0, 1
	sw $t0, -1740($fp)
label163:
	lw $t1, -1736($fp)
	lw $t2, -1740($fp)
	bne $t1, $t2, label159
	j label160
label159:
	addi $t0, $fp, -124
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	li $t0, 20991
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label165
label167:
	lw $t0, -408($fp)
	sw $t0, -1760($fp)
	lw $t1, -1760($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label166:
	lw $t0, -672($fp)
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -1752($fp)
label165:
	li $t0, 4
	lw $t1, -1752($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	jal f6
	sw $v0, -1780($fp)
	addi $sp, $sp, 4
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $ra, -4($fp)
	lw $v0, -1784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label158
label160:
	addi $t0, $fp, -24
	sw $t0, -1788($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -1808($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -1828($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -1848($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1868($fp)
	li $t0, 4
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
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	li $t0, 4
	lw $t1, -1892($fp)
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, 0($t0)
	sw $t1, -1904($fp)
	lw $t0, -1904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1908($fp)
	li $t0, 1
	sw $t0, -1912($fp)
	li $t0, 4
	lw $t1, -1912($fp)
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	lw $t1, 0($t0)
	sw $t1, -1924($fp)
	lw $t0, -1924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1928($fp)
	li $t0, 2
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
	lw $t0, -1944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1948($fp)
	li $t0, 3
	sw $t0, -1952($fp)
	li $t0, 4
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, 0($t0)
	sw $t1, -1964($fp)
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1968($fp)
	li $t0, 4
	sw $t0, -1972($fp)
	li $t0, 4
	lw $t1, -1972($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2008($fp)
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 4
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
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
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2048($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -2068($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -2088($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -2108($fp)
	li $t0, 5
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
	addi $t0, $fp, -84
	sw $t0, -2128($fp)
	li $t0, 6
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
	addi $t0, $fp, -84
	sw $t0, -2148($fp)
	li $t0, 7
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
	addi $t0, $fp, -84
	sw $t0, -2168($fp)
	li $t0, 8
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
	addi $t0, $fp, -84
	sw $t0, -2188($fp)
	li $t0, 9
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
	lw $t0, -672($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2212($fp)
	li $t0, 0
	sw $t0, -2216($fp)
	li $t0, 4
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	lw $t1, 0($t0)
	sw $t1, -2228($fp)
	lw $t0, -2228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2232($fp)
	li $t0, 1
	sw $t0, -2236($fp)
	li $t0, 4
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2252($fp)
	li $t0, 2
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
	lw $t0, -2268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2272($fp)
	li $t0, 3
	sw $t0, -2276($fp)
	li $t0, 4
	lw $t1, -2276($fp)
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, 0($t0)
	sw $t1, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2292($fp)
	li $t0, 4
	sw $t0, -2296($fp)
	li $t0, 4
	lw $t1, -2296($fp)
	mul $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	lw $t1, 0($t0)
	sw $t1, -2308($fp)
	lw $t0, -2308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2312($fp)
	li $t0, 5
	sw $t0, -2316($fp)
	li $t0, 4
	lw $t1, -2316($fp)
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	lw $t1, 0($t0)
	sw $t1, -2328($fp)
	lw $t0, -2328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2332($fp)
	li $t0, 6
	sw $t0, -2336($fp)
	li $t0, 4
	lw $t1, -2336($fp)
	mul $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	lw $t1, 0($t0)
	sw $t1, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2352($fp)
	li $t0, 7
	sw $t0, -2356($fp)
	li $t0, 4
	lw $t1, -2356($fp)
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	lw $t1, -2352($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	lw $t1, 0($t0)
	sw $t1, -2368($fp)
	lw $t0, -2368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2372($fp)
	li $t0, 8
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
	lw $t0, -2388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
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
	li $t0, 0
	sw $t0, -2412($fp)
	addi $t0, $fp, -84
	sw $t0, -2416($fp)
	jal f6
	sw $v0, -2420($fp)
	addi $sp, $sp, 4
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
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label170
label170:
	li $t0, 56659
	sw $t0, -2436($fp)
	lw $t0, -408($fp)
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2444($fp)
	lw $t1, -2444($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -2412($fp)
label169:
	lw $ra, -4($fp)
	lw $v0, -2412($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1392
	li $t0, 59622
	sw $t0, -48($fp)
	addi $t0, $fp, -8
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
	li $t0, 25525
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 2231
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 88
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 6432
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 24492
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 34522
	sw $t0, -132($fp)
	addi $t0, $fp, -44
	sw $t0, -136($fp)
	li $t0, 0
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
	li $t0, 59159
	sw $t0, -156($fp)
	addi $t0, $fp, -44
	sw $t0, -160($fp)
	li $t0, 1
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
	li $t0, 51104
	sw $t0, -180($fp)
	addi $t0, $fp, -44
	sw $t0, -184($fp)
	li $t0, 2
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
	li $t0, 58951
	sw $t0, -204($fp)
	addi $t0, $fp, -44
	sw $t0, -208($fp)
	li $t0, 3
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
	li $t0, 56631
	sw $t0, -228($fp)
	addi $t0, $fp, -44
	sw $t0, -232($fp)
	li $t0, 4
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
	li $t0, 49836
	sw $t0, -252($fp)
	addi $t0, $fp, -44
	sw $t0, -256($fp)
	li $t0, 5
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
	li $t0, 17481
	sw $t0, -276($fp)
	addi $t0, $fp, -44
	sw $t0, -280($fp)
	li $t0, 6
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
	li $t0, 37311
	sw $t0, -300($fp)
	addi $t0, $fp, -44
	sw $t0, -304($fp)
	li $t0, 7
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
	li $t0, 37036
	sw $t0, -324($fp)
	addi $t0, $fp, -44
	sw $t0, -328($fp)
	li $t0, 8
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
	li $t0, 50717
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 11809
	sw $t0, -384($fp)
	addi $t0, $fp, -372
	sw $t0, -388($fp)
	li $t0, 0
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
	li $t0, 58740
	sw $t0, -408($fp)
	addi $t0, $fp, -372
	sw $t0, -412($fp)
	li $t0, 1
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
	li $t0, 49726
	sw $t0, -432($fp)
	addi $t0, $fp, -372
	sw $t0, -436($fp)
	li $t0, 2
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
	li $t0, 12634
	sw $t0, -456($fp)
	addi $t0, $fp, -372
	sw $t0, -460($fp)
	li $t0, 3
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
	li $t0, 55308
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 26377
	sw $t0, -492($fp)
	addi $t0, $fp, -380
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
	li $t0, 7373
	sw $t0, -516($fp)
	addi $t0, $fp, -380
	sw $t0, -520($fp)
	li $t0, 1
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
label171:
	lw $t0, -88($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -544($fp)
	lw $t1, -544($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
label174:
	li $t0, 0
	sw $t0, -548($fp)
	li $t0, 20934
	sw $t0, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label177:
	li $t0, 1
	sw $t0, -548($fp)
label178:
	li $t0, 0
	sw $t0, -556($fp)
	li $t0, 23355
	sw $t0, -560($fp)
	lw $t1, -560($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -556($fp)
label180:
	li $t0, 0
	sw $t0, -564($fp)
	li $t0, 33752
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label182
label184:
	li $t0, 9477
	sw $t0, -572($fp)
	lw $t1, -572($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label183:
	lw $t0, 4($fp)
	sw $t0, -576($fp)
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -564($fp)
label182:
	lw $t0, -76($fp)
	sw $t0, -580($fp)
	li $t0, 0
	lw $t1, -580($fp)
	sub $t0, $t0, $t1
	sw $t0, -584($fp)
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -584($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -588($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -372
	sw $t0, -592($fp)
	lw $t0, -112($fp)
	sw $t0, -596($fp)
	li $t0, 4
	lw $t1, -596($fp)
	mul $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, 0($t0)
	sw $t1, -608($fp)
	lw $t0, -588($fp)
	lw $t1, -608($fp)
	add $t0, $t0, $t1
	sw $t0, -612($fp)
	li $t0, 0
	sw $t0, -616($fp)
	lw $t0, -484($fp)
	sw $t0, -620($fp)
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -616($fp)
label186:
	li $t0, 0
	lw $t1, -616($fp)
	sub $t0, $t0, $t1
	sw $t0, -624($fp)
	li $t0, 0
	lw $t1, -624($fp)
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -612($fp)
	lw $t1, -628($fp)
	sub $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	lw $t0, 8($fp)
	sw $t0, -636($fp)
	lw $t1, -636($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 0
	sw $t0, -644($fp)
	li $t0, 0
	sw $t0, -648($fp)
	addi $t0, $fp, -8
	sw $t0, -652($fp)
	li $t0, 0
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
	lw $t1, -668($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -648($fp)
label195:
	li $t0, 63
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	li $t0, 58024
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label199
label199:
	li $t0, 6648
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label198
label198:
	li $t0, 1970
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -680($fp)
label197:
	li $t0, 0
	sw $t0, -696($fp)
	lw $t0, -88($fp)
	sw $t0, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label202
label202:
	li $t0, 8347
	sw $t0, -704($fp)
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -696($fp)
label201:
	addi $t0, $fp, -380
	sw $t0, -708($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -728($fp)
	li $t0, 37573
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label204
label206:
	li $t0, 1914
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label205:
	lw $t0, -88($fp)
	sw $t0, -740($fp)
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -728($fp)
label204:
	addi $sp, $sp, -4
	lw $t0, -680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -744($fp)
	addi $sp, $sp, 20
	li $t0, 43592
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	mul $t0, $t0, $t1
	sw $t0, -752($fp)
	li $t0, 0
	sw $t0, -756($fp)
	lw $t0, -88($fp)
	sw $t0, -760($fp)
	lw $t0, 16($fp)
	sw $t0, -764($fp)
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	mul $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label209
label209:
	li $t0, 31301
	sw $t0, -772($fp)
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -756($fp)
label208:
	li $t0, 0
	sw $t0, -776($fp)
	li $t0, 41925
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 1
	sw $t0, -776($fp)
label211:
	li $t0, 0
	lw $t1, -776($fp)
	sub $t0, $t0, $t1
	sw $t0, -784($fp)
	addi $sp, $sp, -4
	lw $t0, -676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -788($fp)
	addi $sp, $sp, 20
	lw $t1, -648($fp)
	lw $t2, -788($fp)
	bgt $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -644($fp)
label193:
	jal f6
	sw $v0, -792($fp)
	addi $sp, $sp, 4
	lw $t1, -644($fp)
	lw $t2, -792($fp)
	blt $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -640($fp)
label191:
	j label189
label188:
	li $t0, 0
	sw $t0, -796($fp)
	addi $t0, $fp, -380
	sw $t0, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	lw $t0, -88($fp)
	sw $t0, -808($fp)
	lw $t0, -76($fp)
	sw $t0, -812($fp)
	lw $t1, -808($fp)
	lw $t2, -812($fp)
	beq $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -804($fp)
label215:
	li $t0, 4
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	li $t0, 0
	lw $t1, -824($fp)
	sub $t0, $t0, $t1
	sw $t0, -828($fp)
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 0
	sw $t0, -836($fp)
	lw $t0, -88($fp)
	sw $t0, -840($fp)
	lw $t0, -124($fp)
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label220
label220:
	li $t0, 2726
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -836($fp)
label219:
	jal f6
	sw $v0, -856($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	addi $t0, $fp, -380
	sw $t0, -864($fp)
	lw $t0, -88($fp)
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
	li $t0, 0
	sw $t0, -884($fp)
	addi $t0, $fp, -372
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
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label223
label223:
	li $t0, 64929
	sw $t0, -908($fp)
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -884($fp)
label222:
	li $t0, 0
	sw $t0, -912($fp)
	li $t0, 27893
	sw $t0, -916($fp)
	lw $t1, -916($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label224:
	li $t0, 1
	sw $t0, -912($fp)
label225:
	lw $t0, 16($fp)
	sw $t0, -920($fp)
	lw $t0, -912($fp)
	lw $t1, -920($fp)
	sub $t0, $t0, $t1
	sw $t0, -924($fp)
	li $t0, 58601
	sw $t0, -928($fp)
	lw $t0, -352($fp)
	sw $t0, -932($fp)
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -936($fp)
	lw $t0, -76($fp)
	sw $t0, -940($fp)
	lw $t0, -936($fp)
	lw $t1, -940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	lw $t0, -88($fp)
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label226:
	li $t0, 1
	sw $t0, -948($fp)
label227:
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -956($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -960($fp)
	addi $sp, $sp, 20
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -832($fp)
label217:
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	ble $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -796($fp)
label213:
	lw $ra, -4($fp)
	lw $v0, -796($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label189:
	j label174
label176:
	j label171
label173:
	addi $t0, $fp, -8
	sw $t0, -964($fp)
	li $t0, 0
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
	lw $t0, -76($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -1164($fp)
	li $t0, 8
	sw $t0, -1168($fp)
	li $t0, 4
	lw $t1, -1168($fp)
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, -1164($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	lw $t1, 0($t0)
	sw $t1, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1188($fp)
	li $t0, 0
	sw $t0, -1192($fp)
	lw $t0, -352($fp)
	sw $t0, -1196($fp)
	lw $t0, -88($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -1204($fp)
	li $t0, 0
	sw $t0, -1208($fp)
	addi $t0, $fp, -44
	sw $t0, -1212($fp)
	lw $t0, -100($fp)
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
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label235
label235:
	lw $t0, -88($fp)
	sw $t0, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -1208($fp)
label234:
	li $t0, 0
	sw $t0, -1236($fp)
	li $t0, 13293
	sw $t0, -1240($fp)
	lw $t0, -88($fp)
	sw $t0, -1244($fp)
	lw $t0, -1240($fp)
	lw $t1, -1244($fp)
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	li $t0, 62193
	sw $t0, -1252($fp)
	lw $t1, -1248($fp)
	lw $t2, -1252($fp)
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -1236($fp)
label237:
	addi $sp, $sp, -4
	lw $t0, -1196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1236($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1256($fp)
	addi $sp, $sp, 20
	li $t0, 16122
	sw $t0, -1260($fp)
	lw $t1, -1256($fp)
	lw $t2, -1260($fp)
	blt $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -1192($fp)
label232:
	li $t0, 0
	sw $t0, -1264($fp)
	lw $t0, -76($fp)
	sw $t0, -1268($fp)
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label240
label240:
	lw $t0, -100($fp)
	sw $t0, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -1264($fp)
label239:
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 54820
	sw $t0, -1284($fp)
	lw $t0, -88($fp)
	sw $t0, -1288($fp)
	lw $t0, -1284($fp)
	lw $t1, -1288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1292($fp)
	li $t0, 47905
	sw $t0, -1296($fp)
	lw $t1, -1292($fp)
	lw $t2, -1296($fp)
	bgt $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -1280($fp)
label242:
	li $t0, 0
	sw $t0, -1300($fp)
	addi $t0, $fp, -44
	sw $t0, -1304($fp)
	lw $t0, -112($fp)
	sw $t0, -1308($fp)
	li $t0, 4
	lw $t1, -1308($fp)
	mul $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, -1304($fp)
	add $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	lw $t1, 0($t0)
	sw $t1, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label245:
	lw $t0, 4($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -1300($fp)
label244:
	jal f6
	sw $v0, -1328($fp)
	addi $sp, $sp, 4
	jal f6
	sw $v0, -1332($fp)
	addi $sp, $sp, 4
	lw $t0, -76($fp)
	sw $t0, -1336($fp)
	lw $t0, -1332($fp)
	lw $t1, -1336($fp)
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	addi $t0, $fp, -8
	sw $t0, -1344($fp)
	li $t0, 0
	sw $t0, -1348($fp)
	li $t0, 4
	lw $t1, -1348($fp)
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, 0($t0)
	sw $t1, -1360($fp)
	li $t0, 52452
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1372($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -1192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1372($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1376($fp)
	addi $sp, $sp, 20
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label229
label230:
	li $t0, 0
	sw $t0, -1380($fp)
	li $t0, 22771
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -1380($fp)
label247:
	lw $t0, 12($fp)
	sw $t0, -1388($fp)
	lw $t0, -100($fp)
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1396($fp)
	lw $t1, -1380($fp)
	lw $t2, -1396($fp)
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -1188($fp)
label229:
	lw $ra, -4($fp)
	lw $v0, -1188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3712
	li $t0, 20012
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 37056
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 62949
	sw $t0, -72($fp)
	addi $t0, $fp, -8
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
	li $t0, 63500
	sw $t0, -96($fp)
	addi $t0, $fp, -32
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
	li $t0, 13446
	sw $t0, -120($fp)
	addi $t0, $fp, -32
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
	li $t0, 28714
	sw $t0, -144($fp)
	addi $t0, $fp, -32
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
	li $t0, 35537
	sw $t0, -168($fp)
	addi $t0, $fp, -32
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
	li $t0, 15360
	sw $t0, -192($fp)
	addi $t0, $fp, -32
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
	li $t0, 62246
	sw $t0, -216($fp)
	addi $t0, $fp, -32
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
	li $t0, 7663
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 23707
	sw $t0, -252($fp)
	addi $t0, $fp, -44
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
	li $t0, 54734
	sw $t0, -276($fp)
	addi $t0, $fp, -44
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
	li $t0, 14311
	sw $t0, -300($fp)
	addi $t0, $fp, -44
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
	li $t0, 25677
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 32791
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -52($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -356($fp)
	li $t0, 0
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
	lw $t0, -372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	li $t0, 4
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	lw $t1, 0($t0)
	sw $t1, -392($fp)
	lw $t0, -392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -396($fp)
	li $t0, 1
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
	lw $t0, -412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -416($fp)
	li $t0, 2
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
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -436($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -456($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -476($fp)
	li $t0, 5
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
	lw $t0, -244($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -500($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	lw $t0, -328($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -568($fp)
	addi $t0, $fp, -32
	sw $t0, -572($fp)
	lw $t0, -328($fp)
	sw $t0, -576($fp)
	li $t0, 4
	lw $t1, -576($fp)
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, 0($t0)
	sw $t1, -588($fp)
	lw $t0, -244($fp)
	sw $t0, -592($fp)
	lw $t0, -588($fp)
	lw $t1, -592($fp)
	mul $t0, $t0, $t1
	sw $t0, -596($fp)
	addi $sp, $sp, -4
	lw $t0, -596($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -600($fp)
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -604($fp)
	lw $t1, -600($fp)
	lw $t2, -604($fp)
	blt $t1, $t2, label250
	j label249
label250:
	addi $t0, $fp, -44
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
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -568($fp)
label249:
	lw $t0, -568($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -628($fp)
	lw $ra, -4($fp)
	lw $v0, -628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -8
	sw $t0, -632($fp)
	li $t0, 0
	sw $t0, -636($fp)
	lw $t0, 4($fp)
	sw $t0, -640($fp)
	lw $t0, -52($fp)
	sw $t0, -644($fp)
	lw $t1, -640($fp)
	lw $t2, -644($fp)
	bge $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -636($fp)
label255:
	lw $t0, -636($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -648($fp)
	li $t0, 4
	lw $t1, -648($fp)
	mul $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, 0($t0)
	sw $t1, -660($fp)
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 60684
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 31918
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 49118
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 60077
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 34644
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 25768
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 52674
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 21561
	sw $t0, -804($fp)
	addi $t0, $fp, -680
	sw $t0, -808($fp)
	li $t0, 0
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
	li $t0, 15052
	sw $t0, -828($fp)
	addi $t0, $fp, -680
	sw $t0, -832($fp)
	li $t0, 1
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
	li $t0, 35043
	sw $t0, -852($fp)
	addi $t0, $fp, -680
	sw $t0, -856($fp)
	li $t0, 2
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
	li $t0, 34854
	sw $t0, -876($fp)
	addi $t0, $fp, -680
	sw $t0, -880($fp)
	li $t0, 3
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
	li $t0, 11709
	sw $t0, -900($fp)
	addi $t0, $fp, -680
	sw $t0, -904($fp)
	li $t0, 4
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
	li $t0, 51165
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 57625
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 31722
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	li $t0, 22686
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	li $t0, 55038
	sw $t0, -972($fp)
	addi $t0, $fp, -688
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
	li $t0, 29686
	sw $t0, -996($fp)
	addi $t0, $fp, -688
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
	li $t0, 36132
	sw $t0, -1020($fp)
	addi $t0, $fp, -716
	sw $t0, -1024($fp)
	li $t0, 0
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
	li $t0, 18216
	sw $t0, -1044($fp)
	addi $t0, $fp, -716
	sw $t0, -1048($fp)
	li $t0, 1
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
	li $t0, 65223
	sw $t0, -1068($fp)
	addi $t0, $fp, -716
	sw $t0, -1072($fp)
	li $t0, 2
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
	li $t0, 51492
	sw $t0, -1092($fp)
	addi $t0, $fp, -716
	sw $t0, -1096($fp)
	li $t0, 3
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
	li $t0, 14926
	sw $t0, -1116($fp)
	addi $t0, $fp, -716
	sw $t0, -1120($fp)
	li $t0, 4
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
	li $t0, 7350
	sw $t0, -1140($fp)
	addi $t0, $fp, -716
	sw $t0, -1144($fp)
	li $t0, 5
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
	li $t0, 9664
	sw $t0, -1164($fp)
	addi $t0, $fp, -716
	sw $t0, -1168($fp)
	li $t0, 6
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1168($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1164($fp)
	lw $t1, -1180($fp)
	sw $t0, 0($t1)
	lw $t0, -1180($fp)
	lw $t1, 0($t0)
	sw $t1, -1184($fp)
	li $t0, 4125
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 21661
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	li $t0, 35341
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	li $t0, 36916
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	li $t0, 36035
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	li $t0, 54084
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 32064
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 2418
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 37666
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 26605
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -724($fp)
	sw $t0, -1308($fp)
	li $t0, 0
	lw $t1, -1308($fp)
	sub $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -796($fp)
	sw $t0, -1316($fp)
	lw $t0, -724($fp)
	sw $t0, -1320($fp)
	lw $t0, -1316($fp)
	lw $t1, -1320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1324($fp)
	lw $t0, -1312($fp)
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	li $t0, 0
	sw $t0, -1332($fp)
	lw $t0, -64($fp)
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label259:
	li $t0, 1
	sw $t0, -1332($fp)
label260:
	li $t0, 37062
	sw $t0, -1340($fp)
	lw $t0, -1332($fp)
	lw $t1, -1340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1344($fp)
	lw $t0, -1328($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	lw $t0, -952($fp)
	sw $t0, -1356($fp)
	lw $t1, -1356($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label261:
	li $t0, 1
	sw $t0, -1352($fp)
label262:
	lw $t0, -1216($fp)
	sw $t0, -1360($fp)
	lw $t0, -1352($fp)
	lw $t1, -1360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1364($fp)
	lw $t0, -1228($fp)
	sw $t0, -1368($fp)
	li $t0, 0
	lw $t1, -1368($fp)
	sub $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1364($fp)
	lw $t1, -1372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1376($fp)
	lw $t1, -1348($fp)
	lw $t2, -1376($fp)
	bge $t1, $t2, label256
	j label257
label256:
	li $t0, 0
	sw $t0, -1380($fp)
	li $t0, 63434
	sw $t0, -1384($fp)
	lw $t0, -52($fp)
	sw $t0, -1388($fp)
	lw $t0, -1384($fp)
	lw $t1, -1388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label264
label265:
	addi $t0, $fp, -716
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
	li $t0, 0
	lw $t1, -1412($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -1380($fp)
label264:
	lw $ra, -4($fp)
	lw $v0, -1380($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label258
label257:
	li $t0, 12950
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 48786
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 27942
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 24660
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 0
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	addi $t0, $fp, -716
	sw $t0, -1476($fp)
	li $t0, 4
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
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -1472($fp)
label270:
	lw $t0, -724($fp)
	sw $t0, -1496($fp)
	lw $t0, -736($fp)
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1436($fp)
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1512($fp)
	lw $t0, -1472($fp)
	lw $t1, -1512($fp)
	sub $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label268
label268:
	lw $t0, -724($fp)
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -1468($fp)
label267:
	lw $t0, -724($fp)
	sw $t0, -1524($fp)
	li $t0, 0
	lw $t1, -1524($fp)
	sub $t0, $t0, $t1
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	addi $t0, $fp, -32
	sw $t0, -1536($fp)
	lw $t0, -1460($fp)
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
	lw $t0, -1204($fp)
	sw $t0, -1556($fp)
	lw $t1, -1552($fp)
	lw $t2, -1556($fp)
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -1532($fp)
label272:
	li $t0, 0
	sw $t0, -1560($fp)
	lw $t0, -736($fp)
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label273:
	li $t0, 1
	sw $t0, -1560($fp)
label274:
	li $t0, 0
	lw $t1, -1560($fp)
	sub $t0, $t0, $t1
	sw $t0, -1568($fp)
	li $t0, 0
	sw $t0, -1572($fp)
	li $t0, 20532
	sw $t0, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	li $t0, 27698
	sw $t0, -1584($fp)
	lw $t1, -1580($fp)
	lw $t2, -1584($fp)
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -1572($fp)
label276:
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1588($fp)
	addi $sp, $sp, 20
	lw $t0, -748($fp)
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	li $t0, 0
	sw $t0, -1600($fp)
	li $t0, 0
	sw $t0, -1604($fp)
	li $t0, 57102
	sw $t0, -1608($fp)
	li $t0, 9534
	sw $t0, -1612($fp)
	lw $t1, -1608($fp)
	lw $t2, -1612($fp)
	bgt $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -1604($fp)
label280:
	lw $t0, -928($fp)
	sw $t0, -1616($fp)
	lw $t1, -1604($fp)
	lw $t2, -1616($fp)
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -1600($fp)
label278:
	li $t0, 56382
	sw $t0, -1620($fp)
	lw $t0, -1448($fp)
	sw $t0, -1624($fp)
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1628($fp)
	li $t0, 0
	sw $t0, -1632($fp)
	lw $t0, -1192($fp)
	sw $t0, -1636($fp)
	lw $t0, -1424($fp)
	sw $t0, -1640($fp)
	lw $t1, -1636($fp)
	lw $t2, -1640($fp)
	beq $t1, $t2, label283
	j label282
label283:
	lw $t0, -760($fp)
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -1632($fp)
label282:
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1648($fp)
	addi $sp, $sp, 20
label258:
label284:
	li $t0, 0
	sw $t0, -1652($fp)
	lw $t0, -748($fp)
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label288
label290:
	li $t0, 49231
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label289:
	lw $t0, -1300($fp)
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -1652($fp)
label288:
	addi $t0, $fp, -44
	sw $t0, -1668($fp)
	li $t0, 1
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
	lw $t0, -244($fp)
	sw $t0, -1688($fp)
	lw $t0, -1684($fp)
	lw $t1, -1688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1692($fp)
	li $t0, 13654
	sw $t0, -1696($fp)
	li $t0, 42677
	sw $t0, -1700($fp)
	lw $t0, -1696($fp)
	lw $t1, -1700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1704($fp)
	li $t0, 27570
	sw $t0, -1708($fp)
	lw $t0, -1704($fp)
	lw $t1, -1708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1712($fp)
	li $t0, 0
	sw $t0, -1716($fp)
	li $t0, 27750
	sw $t0, -1720($fp)
	lw $t1, -1720($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label291:
	li $t0, 1
	sw $t0, -1716($fp)
label292:
	li $t0, 20219
	sw $t0, -1724($fp)
	lw $t0, -1716($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1732($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1732($fp)
	sub $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label285:
label293:
	lw $t0, -724($fp)
	sw $t0, -1740($fp)
	addi $t0, $fp, -8
	sw $t0, -1744($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -1764($fp)
	lw $t0, -724($fp)
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label299:
	lw $t0, -340($fp)
	sw $t0, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -1764($fp)
label298:
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1776($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1780($fp)
	lw $t0, -64($fp)
	sw $t0, -1784($fp)
	lw $t0, -760($fp)
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label302:
	lw $t0, -52($fp)
	sw $t0, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -1780($fp)
label301:
	lw $t0, -760($fp)
	sw $t0, -1800($fp)
	li $t0, 58660
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	mul $t0, $t0, $t1
	sw $t0, -1808($fp)
	li $t0, 0
	lw $t1, -1808($fp)
	sub $t0, $t0, $t1
	sw $t0, -1812($fp)
	addi $sp, $sp, -4
	lw $t0, -1760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1816($fp)
	addi $sp, $sp, 20
	lw $t0, -1740($fp)
	lw $t1, -1816($fp)
	sub $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label296
label296:
	li $t0, 47208
	sw $t0, -1824($fp)
	li $t0, 1
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -724($fp)
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1840($fp)
	li $t0, 22149
	sw $t0, -1844($fp)
	li $t0, 0
	lw $t1, -1844($fp)
	sub $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1840($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 19338
	sw $t0, -1860($fp)
	lw $t0, -748($fp)
	sw $t0, -1864($fp)
	lw $t0, -1860($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	li $t0, 11315
	sw $t0, -1872($fp)
	li $t0, 59211
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1880($fp)
	lw $t1, -1868($fp)
	lw $t2, -1880($fp)
	bge $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -1856($fp)
label308:
	lw $t0, -724($fp)
	sw $t0, -1884($fp)
	li $t0, 17237
	sw $t0, -1888($fp)
	lw $t0, -1884($fp)
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t1, -1856($fp)
	lw $t2, -1892($fp)
	bge $t1, $t2, label306
	j label304
label306:
	lw $t0, -1300($fp)
	sw $t0, -1896($fp)
	li $t0, 25058
	sw $t0, -1900($fp)
	lw $t0, -1896($fp)
	lw $t1, -1900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 0
	sw $t0, -1908($fp)
	addi $t0, $fp, -688
	sw $t0, -1912($fp)
	li $t0, 1
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
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label312:
	li $t0, 1
	sw $t0, -1908($fp)
label313:
	li $t0, 0
	lw $t1, -1908($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 8308
	sw $t0, -1940($fp)
	li $t0, 14705
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label316
label316:
	li $t0, 54847
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -1936($fp)
label315:
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1956($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1956($fp)
	sub $t0, $t0, $t1
	sw $t0, -1960($fp)
	li $t0, 42724
	sw $t0, -1964($fp)
	lw $t0, -1960($fp)
	lw $t1, -1964($fp)
	sub $t0, $t0, $t1
	sw $t0, -1968($fp)
	j label311
label310:
	li $t0, 0
	sw $t0, -1972($fp)
	addi $t0, $fp, -680
	sw $t0, -1976($fp)
	lw $t0, -736($fp)
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
	lw $t0, -1252($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -2000($fp)
	li $t0, 0
	sw $t0, -2004($fp)
	li $t0, 45693
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label319:
	li $t0, 1
	sw $t0, -2004($fp)
label320:
	li $t0, 34290
	sw $t0, -2012($fp)
	lw $t0, -2004($fp)
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	li $t0, 0
	sw $t0, -2020($fp)
	li $t0, 0
	sw $t0, -2024($fp)
	lw $t0, -1300($fp)
	sw $t0, -2028($fp)
	lw $t0, -940($fp)
	sw $t0, -2032($fp)
	lw $t1, -2028($fp)
	lw $t2, -2032($fp)
	bgt $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -2024($fp)
label324:
	li $t0, 34736
	sw $t0, -2036($fp)
	lw $t1, -2024($fp)
	lw $t2, -2036($fp)
	bgt $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -2020($fp)
label322:
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2040($fp)
	addi $sp, $sp, 20
	lw $t0, -1264($fp)
	sw $t0, -2044($fp)
	li $t0, 0
	lw $t1, -2044($fp)
	sub $t0, $t0, $t1
	sw $t0, -2048($fp)
	li $t0, 0
	lw $t1, -2048($fp)
	sub $t0, $t0, $t1
	sw $t0, -2052($fp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2056($fp)
	addi $sp, $sp, 8
	li $t0, 44270
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	sub $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t1, -2040($fp)
	lw $t2, -2064($fp)
	beq $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -1972($fp)
label318:
label311:
	j label305
label304:
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 689
	sw $t0, -2072($fp)
	li $t0, 61988
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -2080($fp)
	addi $sp, $sp, -4
	lw $t0, -2080($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2084($fp)
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -2088($fp)
	lw $t0, -2084($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	li $t0, 6485
	sw $t0, -2096($fp)
	lw $t0, -2092($fp)
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t1, -2072($fp)
	lw $t2, -2100($fp)
	bgt $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -2068($fp)
label326:
label305:
	j label293
label295:
	j label284
label286:
	li $t0, 0
	sw $t0, -2104($fp)
	li $t0, 0
	sw $t0, -2108($fp)
	li $t0, 20909
	sw $t0, -2112($fp)
	li $t0, 0
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label330:
	li $t0, 1
	sw $t0, -2108($fp)
label331:
	li $t0, 0
	lw $t1, -2108($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label329
label329:
	li $t0, 0
	sw $t0, -2124($fp)
	li $t0, 10107
	sw $t0, -2128($fp)
	lw $t0, -1288($fp)
	sw $t0, -2132($fp)
	lw $t1, -2128($fp)
	lw $t2, -2132($fp)
	bge $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -2124($fp)
label333:
	li $t0, 49162
	sw $t0, -2136($fp)
	lw $t0, -964($fp)
	sw $t0, -2140($fp)
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2144($fp)
	lw $t1, -2124($fp)
	lw $t2, -2144($fp)
	ble $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -2104($fp)
label328:
label334:
	li $t0, 0
	sw $t0, -2148($fp)
	li $t0, 0
	sw $t0, -2152($fp)
	jal f6
	sw $v0, -2156($fp)
	addi $sp, $sp, 4
	li $t0, 48479
	sw $t0, -2160($fp)
	lw $t0, -1300($fp)
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t1, -2156($fp)
	lw $t2, -2168($fp)
	bgt $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -2152($fp)
label340:
	li $t0, 33425
	sw $t0, -2172($fp)
	lw $t1, -2152($fp)
	lw $t2, -2172($fp)
	bge $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -2148($fp)
label338:
	li $t0, 30428
	sw $t0, -2176($fp)
	lw $t1, -2148($fp)
	lw $t2, -2176($fp)
	bge $t1, $t2, label335
	j label336
label335:
	lw $t0, -772($fp)
	sw $t0, -2180($fp)
	jal f6
	sw $v0, -2184($fp)
	addi $sp, $sp, 4
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2192($fp)
	lw $ra, -4($fp)
	lw $v0, -2192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label334
label336:
	li $t0, 32174
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	li $t0, 26549
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	li $t0, 48610
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	lw $t0, -724($fp)
	sw $t0, -2244($fp)
	li $t0, 0
	lw $t1, -2244($fp)
	sub $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t1, -2248($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label346:
	li $t0, 1
	sw $t0, -2240($fp)
label347:
	li $t0, 51905
	sw $t0, -2252($fp)
	lw $t1, -2240($fp)
	lw $t2, -2252($fp)
	blt $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -2236($fp)
label345:
	li $t0, 0
	sw $t0, -2256($fp)
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 8221
	sw $t0, -2264($fp)
	lw $t0, -2200($fp)
	sw $t0, -2268($fp)
	lw $t1, -2264($fp)
	lw $t2, -2268($fp)
	bgt $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -2260($fp)
label351:
	li $t0, 33320
	sw $t0, -2272($fp)
	lw $t1, -2260($fp)
	lw $t2, -2272($fp)
	bge $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -2256($fp)
label349:
	lw $t1, -2236($fp)
	lw $t2, -2256($fp)
	bne $t1, $t2, label343
	j label342
label343:
	addi $t0, $fp, -44
	sw $t0, -2276($fp)
	li $t0, 0
	sw $t0, -2280($fp)
	li $t0, 8518
	sw $t0, -2284($fp)
	lw $t0, -2212($fp)
	sw $t0, -2288($fp)
	lw $t1, -2284($fp)
	lw $t2, -2288($fp)
	blt $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -2280($fp)
label353:
	li $t0, 4
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -2232($fp)
label342:
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 44797
	sw $t0, -2308($fp)
	li $t0, 0
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label356
label356:
	li $t0, 4157
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -2304($fp)
label355:
	li $t0, 2194
	sw $t0, -2320($fp)
	li $t0, 0
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	li $t0, 0
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2328($fp)
	li $t0, 0
	sw $t0, -2332($fp)
	li $t0, 44635
	sw $t0, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label357
label357:
	li $t0, 1
	sw $t0, -2332($fp)
label358:
	lw $t0, -748($fp)
	sw $t0, -2340($fp)
	lw $t0, -2332($fp)
	lw $t1, -2340($fp)
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -928($fp)
	sw $t0, -2348($fp)
	li $t0, 27560
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	addi $sp, $sp, -4
	lw $t0, -2304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2360($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -44
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	lw $t0, -244($fp)
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label361
label361:
	li $t0, 54493
	sw $t0, -2376($fp)
	lw $t1, -2376($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -2368($fp)
label360:
	li $t0, 4
	lw $t1, -2368($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	lw $t0, -2360($fp)
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	li $t0, 64296
	sw $t0, -2396($fp)
	li $t0, 0
	lw $t1, -2396($fp)
	sub $t0, $t0, $t1
	sw $t0, -2400($fp)
	li $t0, 0
	sw $t0, -2404($fp)
	lw $t0, -796($fp)
	sw $t0, -2408($fp)
	li $t0, 12465
	sw $t0, -2412($fp)
	lw $t0, -2408($fp)
	lw $t1, -2412($fp)
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	li $t0, 3662
	sw $t0, -2420($fp)
	lw $t1, -2416($fp)
	lw $t2, -2420($fp)
	blt $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -2404($fp)
label363:
	lw $t0, -748($fp)
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -2428($fp)
	li $t0, 9448
	sw $t0, -2432($fp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2436($fp)
	addi $sp, $sp, 20
	li $t0, 55190
	sw $t0, -2440($fp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2444($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -716
	sw $t0, -2448($fp)
	addi $t0, $fp, -680
	sw $t0, -2452($fp)
	lw $t0, -2200($fp)
	sw $t0, -2456($fp)
	li $t0, 4
	lw $t1, -2456($fp)
	mul $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	lw $t1, 0($t0)
	sw $t1, -2468($fp)
	li $t0, 4
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, 0($t0)
	sw $t1, -2480($fp)
	lw $t0, -2444($fp)
	lw $t1, -2480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2484($fp)
label364:
	li $t0, 0
	sw $t0, -2488($fp)
	li $t0, 0
	sw $t0, -2492($fp)
	addi $t0, $fp, -44
	sw $t0, -2496($fp)
	lw $t0, -328($fp)
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
	li $t0, 38398
	sw $t0, -2516($fp)
	lw $t0, -2512($fp)
	lw $t1, -2516($fp)
	mul $t0, $t0, $t1
	sw $t0, -2520($fp)
	li $t0, 0
	sw $t0, -2524($fp)
	lw $t0, -928($fp)
	sw $t0, -2528($fp)
	lw $t0, -244($fp)
	sw $t0, -2532($fp)
	lw $t1, -2528($fp)
	lw $t2, -2532($fp)
	bge $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -2524($fp)
label372:
	lw $t1, -2520($fp)
	lw $t2, -2524($fp)
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -2492($fp)
label370:
	lw $t0, -244($fp)
	sw $t0, -2536($fp)
	jal f6
	sw $v0, -2540($fp)
	addi $sp, $sp, 4
	li $t0, 23944
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -2548($fp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2552($fp)
	addi $sp, $sp, 8
	li $t0, 17133
	sw $t0, -2556($fp)
	lw $t0, -2552($fp)
	lw $t1, -2556($fp)
	sub $t0, $t0, $t1
	sw $t0, -2560($fp)
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 44453
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label373
label373:
	li $t0, 1
	sw $t0, -2564($fp)
label374:
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2572($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2572($fp)
	sub $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t1, -2492($fp)
	lw $t2, -2576($fp)
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -2488($fp)
label368:
	li $t0, 45143
	sw $t0, -2580($fp)
	lw $t1, -2488($fp)
	lw $t2, -2580($fp)
	beq $t1, $t2, label365
	j label366
label365:
	li $t0, 20397
	sw $t0, -2584($fp)
	lw $t0, -2224($fp)
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	li $t0, 23618
	sw $t0, -2596($fp)
	li $t0, 516
	sw $t0, -2600($fp)
	lw $t0, -2596($fp)
	lw $t1, -2600($fp)
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	li $t0, 0
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2592($fp)
	lw $t1, -2608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2612($fp)
	lw $t0, -760($fp)
	sw $t0, -2616($fp)
	lw $t0, -2612($fp)
	lw $t1, -2616($fp)
	sub $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $ra, -4($fp)
	lw $v0, -2620($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label364
label366:
	lw $t0, -724($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -680
	sw $t0, -2652($fp)
	li $t0, 0
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
	addi $t0, $fp, -680
	sw $t0, -2672($fp)
	li $t0, 1
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
	addi $t0, $fp, -680
	sw $t0, -2692($fp)
	li $t0, 2
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
	addi $t0, $fp, -680
	sw $t0, -2712($fp)
	li $t0, 3
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
	addi $t0, $fp, -680
	sw $t0, -2732($fp)
	li $t0, 4
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
	lw $t0, -928($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -952($fp)
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -688
	sw $t0, -2768($fp)
	li $t0, 0
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
	addi $t0, $fp, -688
	sw $t0, -2788($fp)
	li $t0, 1
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
	addi $t0, $fp, -716
	sw $t0, -2808($fp)
	li $t0, 0
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
	addi $t0, $fp, -716
	sw $t0, -2828($fp)
	li $t0, 1
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
	addi $t0, $fp, -716
	sw $t0, -2848($fp)
	li $t0, 2
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
	addi $t0, $fp, -716
	sw $t0, -2868($fp)
	li $t0, 3
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
	addi $t0, $fp, -716
	sw $t0, -2888($fp)
	li $t0, 4
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
	addi $t0, $fp, -716
	sw $t0, -2908($fp)
	li $t0, 5
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
	addi $t0, $fp, -716
	sw $t0, -2928($fp)
	li $t0, 6
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
	lw $t0, -1192($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1204($fp)
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 30504
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -2960($fp)
	lw $ra, -4($fp)
	lw $v0, -2960($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label375:
	lw $t0, -784($fp)
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 0
	sw $t0, -2968($fp)
	li $t0, 7244
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label379
label380:
	li $t0, 48995
	sw $t0, -2976($fp)
	lw $t0, -244($fp)
	sw $t0, -2980($fp)
	lw $t0, -2976($fp)
	lw $t1, -2980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2984($fp)
	li $t0, 0
	lw $t1, -2984($fp)
	sub $t0, $t0, $t1
	sw $t0, -2988($fp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2992($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2992($fp)
	sub $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -928($fp)
	sw $t0, -3000($fp)
	lw $t0, -940($fp)
	sw $t0, -3004($fp)
	lw $t0, -3000($fp)
	lw $t1, -3004($fp)
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t1, -2996($fp)
	lw $t2, -3008($fp)
	bgt $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -2968($fp)
label379:
	lw $ra, -4($fp)
	lw $v0, -2968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label375
label377:
label381:
	lw $t0, -964($fp)
	sw $t0, -3012($fp)
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label384:
	li $t0, 0
	sw $t0, -3016($fp)
	addi $t0, $fp, -44
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	li $t0, 4
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label387
label387:
	lw $t0, -928($fp)
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -3016($fp)
label386:
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3044($fp)
	addi $sp, $sp, 8
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 0
	sw $t0, -3048($fp)
	addi $t0, $fp, -688
	sw $t0, -3052($fp)
	li $t0, 0
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
	lw $t1, -3068($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label388
label388:
	li $t0, 1
	sw $t0, -3048($fp)
label389:
	li $t0, 2003
	sw $t0, -3072($fp)
	li $t0, 0
	lw $t1, -3072($fp)
	sub $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3048($fp)
	lw $t1, -3076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3080($fp)
	j label381
label383:
	li $t0, 33164
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	sw $t0, -3092($fp)
	li $t0, 54066
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	sw $t0, -3104($fp)
	jal f6
	sw $v0, -3108($fp)
	addi $sp, $sp, 4
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label394
label394:
	li $t0, 10521
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label393
label393:
	addi $t0, $fp, -716
	sw $t0, -3116($fp)
	li $t0, 0
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
	li $t0, 12715
	sw $t0, -3136($fp)
	li $t0, 39985
	sw $t0, -3140($fp)
	lw $t0, -3136($fp)
	lw $t1, -3140($fp)
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t1, -3132($fp)
	lw $t2, -3144($fp)
	ble $t1, $t2, label390
	j label391
label390:
	li $t0, 37322
	sw $t0, -3148($fp)
	addi $t0, $fp, -716
	sw $t0, -3152($fp)
	li $t0, 0
	sw $t0, -3156($fp)
	lw $t0, -340($fp)
	sw $t0, -3160($fp)
	lw $t0, -3088($fp)
	sw $t0, -3164($fp)
	lw $t1, -3160($fp)
	lw $t2, -3164($fp)
	blt $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -3156($fp)
label396:
	li $t0, 4
	lw $t1, -3156($fp)
	mul $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, 0($t0)
	sw $t1, -3176($fp)
	lw $t0, -3148($fp)
	lw $t1, -3176($fp)
	mul $t0, $t0, $t1
	sw $t0, -3180($fp)
	li $t0, 0
	lw $t1, -3180($fp)
	sub $t0, $t0, $t1
	sw $t0, -3184($fp)
	j label392
label391:
	li $t0, 1672
	sw $t0, -3188($fp)
	li $t0, 0
	sw $t0, -3192($fp)
	li $t0, 49434
	sw $t0, -3196($fp)
	lw $t1, -3196($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label397
label397:
	li $t0, 1
	sw $t0, -3192($fp)
label398:
	lw $t0, -3188($fp)
	lw $t1, -3192($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
label392:
	lw $t0, -3088($fp)
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3100($fp)
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 49787
	sw $t0, -3212($fp)
	li $t0, 0
	lw $t1, -3212($fp)
	sub $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -3224($fp)
	lw $ra, -4($fp)
	lw $v0, -3224($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3088($fp)
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3100($fp)
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -3236($fp)
	li $t0, 5334
	sw $t0, -3240($fp)
	lw $t0, -3236($fp)
	lw $t1, -3240($fp)
	sub $t0, $t0, $t1
	sw $t0, -3244($fp)
	li $t0, 48194
	sw $t0, -3248($fp)
	lw $t0, -3244($fp)
	lw $t1, -3248($fp)
	sub $t0, $t0, $t1
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -1204($fp)
	sw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label399
label399:
	li $t0, 1
	sw $t0, -3256($fp)
label400:
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	sub $t0, $t0, $t1
	sw $t0, -3264($fp)
	li $t0, 0
	sw $t0, -3268($fp)
	lw $t0, -244($fp)
	sw $t0, -3272($fp)
	lw $t1, -3272($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label401:
	li $t0, 1
	sw $t0, -3268($fp)
label402:
	lw $t0, -3088($fp)
	sw $t0, -3276($fp)
	lw $t0, -3268($fp)
	lw $t1, -3276($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3264($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	li $t0, 0
	sw $t0, -3288($fp)
	lw $t0, -784($fp)
	sw $t0, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label403:
	li $t0, 1
	sw $t0, -3288($fp)
label404:
	li $t0, 0
	sw $t0, -3296($fp)
	lw $t0, -928($fp)
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label407:
	li $t0, 39441
	sw $t0, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -3296($fp)
label406:
	addi $sp, $sp, -4
	lw $t0, -3296($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3308($fp)
	addi $sp, $sp, 8
	lw $t0, -3288($fp)
	lw $t1, -3308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3312($fp)
	li $t0, 0
	lw $t1, -3312($fp)
	sub $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -3284($fp)
	lw $t1, -3316($fp)
	sub $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $ra, -4($fp)
	lw $v0, -3320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3088($fp)
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3100($fp)
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3332($fp)
	jal f6
	sw $v0, -3336($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -3340($fp)
	lw $t0, -748($fp)
	sw $t0, -3344($fp)
	lw $t1, -3344($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -3340($fp)
label412:
	lw $t0, -3336($fp)
	lw $t1, -3340($fp)
	mul $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -784($fp)
	sw $t0, -3352($fp)
	lw $t1, -3348($fp)
	lw $t2, -3352($fp)
	ble $t1, $t2, label408
	j label410
label410:
	lw $t0, -736($fp)
	sw $t0, -3356($fp)
	lw $t0, -784($fp)
	sw $t0, -3360($fp)
	li $t0, 0
	lw $t1, -3360($fp)
	sub $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t1, -3356($fp)
	lw $t2, -3364($fp)
	bge $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -3332($fp)
label409:
	lw $ra, -4($fp)
	lw $v0, -3332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label413:
	li $t0, 0
	sw $t0, -3368($fp)
	lw $t0, -748($fp)
	sw $t0, -3372($fp)
	lw $t1, -3372($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -3368($fp)
label417:
	addi $t0, $fp, -44
	sw $t0, -3376($fp)
	li $t0, 2
	sw $t0, -3380($fp)
	li $t0, 4
	lw $t1, -3380($fp)
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	lw $t1, -3376($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, 0($t0)
	sw $t1, -3392($fp)
	li $t0, 0
	lw $t1, -3392($fp)
	sub $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3368($fp)
	lw $t1, -3396($fp)
	mul $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 0
	sw $t0, -3404($fp)
	lw $t0, -3100($fp)
	sw $t0, -3408($fp)
	li $t0, 0
	lw $t1, -3408($fp)
	sub $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label420:
	li $t0, 63386
	sw $t0, -3416($fp)
	lw $t0, -964($fp)
	sw $t0, -3420($fp)
	lw $t1, -3416($fp)
	lw $t2, -3420($fp)
	beq $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -3404($fp)
label419:
	lw $t0, -3404($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -3424($fp)
	j label413
label415:
label421:
	lw $t0, -772($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
label424:
	li $t0, 60866
	sw $t0, -3432($fp)
	addi $t0, $fp, -44
	sw $t0, -3436($fp)
	jal f6
	sw $v0, -3440($fp)
	addi $sp, $sp, 4
	li $t0, 4
	lw $t1, -3440($fp)
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, 0($t0)
	sw $t1, -3452($fp)
	lw $t1, -3432($fp)
	lw $t2, -3452($fp)
	blt $t1, $t2, label425
	j label426
label425:
	li $t0, 0
	sw $t0, -3456($fp)
	li $t0, 6718
	sw $t0, -3460($fp)
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label428
label429:
	lw $t0, -784($fp)
	sw $t0, -3464($fp)
	lw $t0, -724($fp)
	sw $t0, -3468($fp)
	lw $t0, -3464($fp)
	lw $t1, -3468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3472($fp)
	li $t0, 0
	sw $t0, -3476($fp)
	lw $t0, -724($fp)
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label430
label430:
	li $t0, 1
	sw $t0, -3476($fp)
label431:
	lw $t1, -3472($fp)
	lw $t2, -3476($fp)
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -3456($fp)
label428:
	j label424
label426:
	j label421
label423:
	j label253
label252:
	li $t0, 18247
	sw $t0, -3484($fp)
	li $t0, 0
	lw $t1, -3484($fp)
	sub $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $ra, -4($fp)
	lw $v0, -3488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label253:
	lw $t0, -52($fp)
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -3500($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -3520($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -3540($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -3560($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -3580($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -3600($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -3620($fp)
	li $t0, 5
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
	lw $t0, -244($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -3684($fp)
	li $t0, 2
	sw $t0, -3688($fp)
	li $t0, 4
	lw $t1, -3688($fp)
	mul $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	lw $t1, -3684($fp)
	add $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	lw $t1, 0($t0)
	sw $t1, -3700($fp)
	lw $t0, -3700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f6
	sw $v0, -3712($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -3712($fp)
	sub $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $ra, -4($fp)
	lw $v0, -3716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f6
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 18948
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
	jal f9
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
