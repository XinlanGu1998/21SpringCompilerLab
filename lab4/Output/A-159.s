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
	addi $sp, $sp, -3512
	li $t0, 38796
	sw $t0, -124($fp)
	addi $t0, $fp, -28
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
	li $t0, 24080
	sw $t0, -148($fp)
	addi $t0, $fp, -28
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
	li $t0, 19403
	sw $t0, -172($fp)
	addi $t0, $fp, -28
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
	li $t0, 10888
	sw $t0, -196($fp)
	addi $t0, $fp, -28
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
	li $t0, 40842
	sw $t0, -220($fp)
	addi $t0, $fp, -28
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
	li $t0, 38138
	sw $t0, -244($fp)
	addi $t0, $fp, -28
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
	li $t0, 19028
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 51439
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 41175
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 3609
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 28137
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 44228
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 44554
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 31063
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 8003
	sw $t0, -364($fp)
	addi $t0, $fp, -56
	sw $t0, -368($fp)
	li $t0, 0
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
	li $t0, 31907
	sw $t0, -388($fp)
	addi $t0, $fp, -56
	sw $t0, -392($fp)
	li $t0, 1
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
	li $t0, 3267
	sw $t0, -412($fp)
	addi $t0, $fp, -56
	sw $t0, -416($fp)
	li $t0, 2
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
	li $t0, 46131
	sw $t0, -436($fp)
	addi $t0, $fp, -56
	sw $t0, -440($fp)
	li $t0, 3
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
	li $t0, 3172
	sw $t0, -460($fp)
	addi $t0, $fp, -56
	sw $t0, -464($fp)
	li $t0, 4
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
	li $t0, 29541
	sw $t0, -484($fp)
	addi $t0, $fp, -56
	sw $t0, -488($fp)
	li $t0, 5
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
	li $t0, 47017
	sw $t0, -508($fp)
	addi $t0, $fp, -56
	sw $t0, -512($fp)
	li $t0, 6
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
	li $t0, 14773
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 28839
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 57655
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 45857
	sw $t0, -568($fp)
	addi $t0, $fp, -88
	sw $t0, -572($fp)
	li $t0, 0
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
	li $t0, 47343
	sw $t0, -592($fp)
	addi $t0, $fp, -88
	sw $t0, -596($fp)
	li $t0, 1
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
	li $t0, 24065
	sw $t0, -616($fp)
	addi $t0, $fp, -88
	sw $t0, -620($fp)
	li $t0, 2
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
	li $t0, 20434
	sw $t0, -640($fp)
	addi $t0, $fp, -88
	sw $t0, -644($fp)
	li $t0, 3
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
	li $t0, 51690
	sw $t0, -664($fp)
	addi $t0, $fp, -88
	sw $t0, -668($fp)
	li $t0, 4
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
	li $t0, 60432
	sw $t0, -688($fp)
	addi $t0, $fp, -88
	sw $t0, -692($fp)
	li $t0, 5
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
	li $t0, 27170
	sw $t0, -712($fp)
	addi $t0, $fp, -88
	sw $t0, -716($fp)
	li $t0, 6
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
	li $t0, 24950
	sw $t0, -736($fp)
	addi $t0, $fp, -88
	sw $t0, -740($fp)
	li $t0, 7
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
	li $t0, 18977
	sw $t0, -760($fp)
	addi $t0, $fp, -120
	sw $t0, -764($fp)
	li $t0, 0
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
	li $t0, 46573
	sw $t0, -784($fp)
	addi $t0, $fp, -120
	sw $t0, -788($fp)
	li $t0, 1
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
	li $t0, 35839
	sw $t0, -808($fp)
	addi $t0, $fp, -120
	sw $t0, -812($fp)
	li $t0, 2
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
	li $t0, 59819
	sw $t0, -832($fp)
	addi $t0, $fp, -120
	sw $t0, -836($fp)
	li $t0, 3
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
	li $t0, 19175
	sw $t0, -856($fp)
	addi $t0, $fp, -120
	sw $t0, -860($fp)
	li $t0, 4
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
	li $t0, 54867
	sw $t0, -880($fp)
	addi $t0, $fp, -120
	sw $t0, -884($fp)
	li $t0, 5
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
	li $t0, 45722
	sw $t0, -904($fp)
	addi $t0, $fp, -120
	sw $t0, -908($fp)
	li $t0, 6
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
	li $t0, 60350
	sw $t0, -928($fp)
	addi $t0, $fp, -120
	sw $t0, -932($fp)
	li $t0, 7
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
	li $t0, 58477
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 8323
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 39042
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 37495
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 39386
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 47045
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 3866
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	lw $t0, -992($fp)
	sw $t0, -1036($fp)
	lw $t0, -968($fp)
	sw $t0, -1040($fp)
	lw $t0, -1036($fp)
	lw $t1, -1040($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -956($fp)
	sw $t0, -1048($fp)
	lw $t0, -1044($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 27640
	sw $t0, -1060($fp)
	li $t0, 7038
	sw $t0, -1064($fp)
	lw $t1, -1060($fp)
	lw $t2, -1064($fp)
	blt $t1, $t2, label124
	j label126
label126:
	lw $t0, -536($fp)
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -1056($fp)
label125:
	lw $t0, -332($fp)
	sw $t0, -1072($fp)
	lw $t0, 8($fp)
	sw $t0, -1076($fp)
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	li $t0, 42653
	sw $t0, -1084($fp)
	lw $t0, -1080($fp)
	lw $t1, -1084($fp)
	sub $t0, $t0, $t1
	sw $t0, -1088($fp)
	addi $t0, $fp, -120
	sw $t0, -1092($fp)
	lw $t0, -956($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1112($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1112($fp)
	sub $t0, $t0, $t1
	sw $t0, -1116($fp)
	li $t0, 0
	sw $t0, -1120($fp)
	li $t0, 49736
	sw $t0, -1124($fp)
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label130
label130:
	lw $t0, -1004($fp)
	sw $t0, -1128($fp)
	lw $t1, -1128($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label129
label129:
	lw $t0, -536($fp)
	sw $t0, -1132($fp)
	lw $t1, -1132($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -1120($fp)
label128:
	addi $t0, $fp, -28
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
	lw $t0, -296($fp)
	sw $t0, -1156($fp)
	lw $t0, -1152($fp)
	lw $t1, -1156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1160($fp)
	li $t0, 0
	sw $t0, -1164($fp)
	lw $t0, -344($fp)
	sw $t0, -1168($fp)
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label131
label131:
	li $t0, 1
	sw $t0, -1164($fp)
label132:
	li $t0, 22566
	sw $t0, -1172($fp)
	lw $t0, -1164($fp)
	lw $t1, -1172($fp)
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	li $t0, 25306
	sw $t0, -1180($fp)
	lw $t0, -1028($fp)
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	li $t0, 0
	sw $t0, -1192($fp)
	lw $t0, -1004($fp)
	sw $t0, -1196($fp)
	lw $t0, -548($fp)
	sw $t0, -1200($fp)
	lw $t1, -1196($fp)
	lw $t2, -1200($fp)
	bne $t1, $t2, label135
	j label134
label135:
	lw $t0, -272($fp)
	sw $t0, -1204($fp)
	lw $t1, -1204($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -1192($fp)
label134:
	addi $sp, $sp, -4
	lw $t0, -1160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1192($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1208($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 2132
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -1212($fp)
label137:
	li $t0, 17304
	sw $t0, -1220($fp)
	lw $t0, -1212($fp)
	lw $t1, -1220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1224($fp)
	li $t0, 1241
	sw $t0, -1228($fp)
	addi $t0, $fp, -56
	sw $t0, -1232($fp)
	lw $t0, -560($fp)
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
	lw $t0, -320($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -1256($fp)
	addi $t0, $fp, -120
	sw $t0, -1260($fp)
	li $t0, 1
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
	lw $t0, -992($fp)
	sw $t0, -1280($fp)
	addi $sp, $sp, -4
	lw $t0, -1248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1284($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1288($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1292($fp)
	lw $t0, -980($fp)
	sw $t0, -1296($fp)
	lw $t0, -992($fp)
	sw $t0, -1300($fp)
	lw $t0, -1296($fp)
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label140:
	lw $t0, -1004($fp)
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -1292($fp)
label139:
	li $t0, 0
	sw $t0, -1312($fp)
	li $t0, 6658
	sw $t0, -1316($fp)
	li $t0, 9121
	sw $t0, -1320($fp)
	lw $t1, -1316($fp)
	lw $t2, -1320($fp)
	bge $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -1312($fp)
label142:
	addi $sp, $sp, -4
	lw $t0, -1120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1324($fp)
	addi $sp, $sp, 20
	lw $t0, -1116($fp)
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	li $t0, 28409
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	sub $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 0
	sw $t0, -1340($fp)
	addi $t0, $fp, -88
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
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -1340($fp)
label144:
	lw $t0, -308($fp)
	sw $t0, -1364($fp)
	lw $t0, -1340($fp)
	lw $t1, -1364($fp)
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $ra, -4($fp)
	lw $v0, -1368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label123
label122:
	li $t0, 33462
	sw $t0, -1372($fp)
label123:
	addi $t0, $fp, -28
	sw $t0, -1376($fp)
	lw $t0, -992($fp)
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
	li $t0, 0
	sw $t0, -1396($fp)
	lw $t0, -956($fp)
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -1396($fp)
label149:
	lw $t0, -1392($fp)
	lw $t1, -1396($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	addi $t0, $fp, -88
	sw $t0, -1408($fp)
	lw $t0, -536($fp)
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
	li $t0, 0
	lw $t1, -1424($fp)
	sub $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1404($fp)
	lw $t1, -1428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1432($fp)
	li $t0, 49948
	sw $t0, -1436($fp)
	li $t0, 1
	sw $t0, -1440($fp)
	lw $t0, -1436($fp)
	lw $t1, -1440($fp)
	mul $t0, $t0, $t1
	sw $t0, -1444($fp)
	li $t0, 13648
	sw $t0, -1448($fp)
	lw $t0, -1444($fp)
	lw $t1, -1448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1452($fp)
	li $t0, 44762
	sw $t0, -1456($fp)
	li $t0, 0
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1452($fp)
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t1, -1432($fp)
	lw $t2, -1464($fp)
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 0
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	li $t0, 46520
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label155
label155:
	li $t0, 1
	sw $t0, -1476($fp)
label156:
	li $t0, 0
	lw $t1, -1476($fp)
	sub $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label153:
	li $t0, 1
	sw $t0, -1472($fp)
label154:
	li $t0, 0
	lw $t1, -1472($fp)
	sub $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label152
label152:
	lw $t0, -956($fp)
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	li $t0, 29384
	sw $t0, -1500($fp)
	li $t0, 45132
	sw $t0, -1504($fp)
	lw $t0, -1500($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	li $t0, 36539
	sw $t0, -1512($fp)
	lw $t1, -1508($fp)
	lw $t2, -1512($fp)
	bgt $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1496($fp)
label159:
	li $t0, 38474
	sw $t0, -1516($fp)
	lw $t0, -284($fp)
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	li $t0, 27417
	sw $t0, -1528($fp)
	lw $t0, -1524($fp)
	lw $t1, -1528($fp)
	sub $t0, $t0, $t1
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	lw $t0, -956($fp)
	sw $t0, -1540($fp)
	li $t0, 65313
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	li $t0, 22346
	sw $t0, -1552($fp)
	lw $t1, -1548($fp)
	lw $t2, -1552($fp)
	bge $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1536($fp)
label161:
	li $t0, 61357
	sw $t0, -1556($fp)
	addi $sp, $sp, -4
	lw $t0, -1496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1560($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1560($fp)
	sub $t0, $t0, $t1
	sw $t0, -1564($fp)
	li $t0, 0
	sw $t0, -1568($fp)
	li $t0, 18479
	sw $t0, -1572($fp)
	li $t0, 0
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t1, -1576($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label162:
	li $t0, 1
	sw $t0, -1568($fp)
label163:
	li $t0, 0
	sw $t0, -1580($fp)
	li $t0, 0
	sw $t0, -1584($fp)
	li $t0, 21971
	sw $t0, -1588($fp)
	lw $t0, -1028($fp)
	sw $t0, -1592($fp)
	lw $t1, -1588($fp)
	lw $t2, -1592($fp)
	beq $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1584($fp)
label167:
	li $t0, 18268
	sw $t0, -1596($fp)
	lw $t1, -1584($fp)
	lw $t2, -1596($fp)
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -1580($fp)
label165:
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1600($fp)
	addi $sp, $sp, 20
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label151
label157:
	lw $t0, -992($fp)
	sw $t0, -1604($fp)
	lw $t0, -992($fp)
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -1468($fp)
label151:
	lw $ra, -4($fp)
	lw $v0, -1468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label147
label146:
	li $t0, 51196
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1620($fp)
label147:
	li $t0, 15093
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	li $t0, 37780
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	lw $t0, -1628($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 63086
	sw $t0, -1660($fp)
	addi $t0, $fp, -88
	sw $t0, -1664($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -1684($fp)
	lw $t0, -1016($fp)
	sw $t0, -1688($fp)
	lw $t0, -956($fp)
	sw $t0, -1692($fp)
	lw $t1, -1688($fp)
	lw $t2, -1692($fp)
	beq $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -1684($fp)
label172:
	lw $t0, -956($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1700($fp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1704($fp)
	addi $sp, $sp, 20
	li $t0, 10359
	sw $t0, -1708($fp)
	li $t0, 0
	lw $t1, -1708($fp)
	sub $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1704($fp)
	lw $t1, -1712($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	li $t0, 0
	lw $t1, -1716($fp)
	sub $t0, $t0, $t1
	sw $t0, -1720($fp)
	li $t0, 35856
	sw $t0, -1724($fp)
	lw $t0, -1720($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label170:
	lw $t0, -1628($fp)
	sw $t0, -1732($fp)
	li $t0, 0
	sw $t0, -1736($fp)
	lw $t0, -356($fp)
	sw $t0, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -1736($fp)
label174:
	lw $t0, -1732($fp)
	lw $t1, -1736($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t1, -1744($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -1656($fp)
label169:
	lw $ra, -4($fp)
	lw $v0, -1656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label175:
	li $t0, 17752
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 60095
	sw $t0, -1752($fp)
	li $t0, 0
	lw $t1, -1752($fp)
	sub $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
	lw $t0, -956($fp)
	sw $t0, -1760($fp)
	lw $t0, -1028($fp)
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1768($fp)
	j label180
label179:
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 64265
	sw $t0, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	li $t0, 56932
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label183
label183:
	li $t0, 1
	sw $t0, -1780($fp)
label184:
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -536($fp)
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 25333
	sw $t0, -1800($fp)
	addi $t0, $fp, -56
	sw $t0, -1804($fp)
	li $t0, 4
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
	lw $t0, -1800($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t1, -1796($fp)
	lw $t2, -1824($fp)
	ble $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -1772($fp)
label182:
label180:
	j label175
label177:
	li $t0, 9745
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 51021
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 38507
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	li $t0, 54508
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -956($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -1880($fp)
	lw $t0, -272($fp)
	sw $t0, -1884($fp)
	li $t0, 7240
	sw $t0, -1888($fp)
	lw $t0, -1884($fp)
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -536($fp)
	sw $t0, -1896($fp)
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	sub $t0, $t0, $t1
	sw $t0, -1900($fp)
	li $t0, 60478
	sw $t0, -1904($fp)
	li $t0, 0
	sw $t0, -1908($fp)
	li $t0, 32005
	sw $t0, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label188
label190:
	lw $t0, -956($fp)
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -1908($fp)
label189:
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1920($fp)
	addi $sp, $sp, 20
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 50485
	sw $t0, -1948($fp)
	addi $t0, $fp, -1944
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1952($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1948($fp)
	lw $t1, -1964($fp)
	sw $t0, 0($t1)
	lw $t0, -1964($fp)
	lw $t1, 0($t0)
	sw $t1, -1968($fp)
	li $t0, 56300
	sw $t0, -1972($fp)
	addi $t0, $fp, -1944
	sw $t0, -1976($fp)
	li $t0, 1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1976($fp)
	lw $t1, -1984($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1972($fp)
	lw $t1, -1988($fp)
	sw $t0, 0($t1)
	lw $t0, -1988($fp)
	lw $t1, 0($t0)
	sw $t1, -1992($fp)
	li $t0, 7018
	sw $t0, -1996($fp)
	addi $t0, $fp, -1944
	sw $t0, -2000($fp)
	li $t0, 2
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2000($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -1996($fp)
	lw $t1, -2012($fp)
	sw $t0, 0($t1)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	li $t0, 7295
	sw $t0, -2020($fp)
	addi $t0, $fp, -1944
	sw $t0, -2024($fp)
	li $t0, 3
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2024($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2020($fp)
	lw $t1, -2036($fp)
	sw $t0, 0($t1)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	li $t0, 29238
	sw $t0, -2044($fp)
	addi $t0, $fp, -1944
	sw $t0, -2048($fp)
	li $t0, 4
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2048($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2044($fp)
	lw $t1, -2060($fp)
	sw $t0, 0($t1)
	lw $t0, -2060($fp)
	lw $t1, 0($t0)
	sw $t1, -2064($fp)
	li $t0, 34435
	sw $t0, -2068($fp)
	addi $t0, $fp, -1944
	sw $t0, -2072($fp)
	li $t0, 5
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2072($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2068($fp)
	lw $t1, -2084($fp)
	sw $t0, 0($t1)
	lw $t0, -2084($fp)
	lw $t1, 0($t0)
	sw $t1, -2088($fp)
	li $t0, 0
	sw $t0, -2092($fp)
	lw $t0, -956($fp)
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label194
label194:
	lw $t0, -1004($fp)
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label193
label193:
	li $t0, 5438
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -2092($fp)
label192:
	lw $t0, -344($fp)
	sw $t0, -2108($fp)
	li $t0, 0
	sw $t0, -2112($fp)
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
	lw $t0, -344($fp)
	sw $t0, -2136($fp)
	lw $t1, -2132($fp)
	lw $t2, -2136($fp)
	bgt $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -2112($fp)
label196:
	addi $t0, $fp, -1944
	sw $t0, -2140($fp)
	lw $t0, -560($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2160($fp)
	addi $sp, $sp, 20
	lw $t0, 8($fp)
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2168($fp)
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 22339
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -2172($fp)
label198:
	lw $t0, -2168($fp)
	lw $t1, -2172($fp)
	mul $t0, $t0, $t1
	sw $t0, -2180($fp)
	li $t0, 0
	sw $t0, -2184($fp)
	addi $t0, $fp, -28
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
	lw $t1, -2204($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label199:
	li $t0, 1
	sw $t0, -2184($fp)
label200:
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2208($fp)
	addi $t0, $fp, -120
	sw $t0, -2212($fp)
	lw $t0, -956($fp)
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
	li $t0, 0
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2208($fp)
	lw $t1, -2232($fp)
	sub $t0, $t0, $t1
	sw $t0, -2236($fp)
	j label187
label186:
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	li $t0, 0
	sw $t0, -2248($fp)
	lw $t0, -1028($fp)
	sw $t0, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label207
label208:
	li $t0, 50129
	sw $t0, -2256($fp)
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label207
label207:
	lw $t0, 8($fp)
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -2248($fp)
label206:
	li $t0, 0
	sw $t0, -2264($fp)
	addi $t0, $fp, -88
	sw $t0, -2268($fp)
	li $t0, 7
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
	bne $t1, $t2, label211
	j label210
label211:
	lw $t0, -344($fp)
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -2264($fp)
label210:
	li $t0, 0
	sw $t0, -2292($fp)
	li $t0, 49917
	sw $t0, -2296($fp)
	lw $t0, -356($fp)
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	sub $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label214
label214:
	li $t0, 40383
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -2292($fp)
label213:
	li $t0, 0
	sw $t0, -2312($fp)
	lw $t0, -560($fp)
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label215:
	li $t0, 1
	sw $t0, -2312($fp)
label216:
	li $t0, 0
	lw $t1, -2312($fp)
	sub $t0, $t0, $t1
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 0
	sw $t0, -2328($fp)
	lw $t0, -308($fp)
	sw $t0, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label219:
	li $t0, 1
	sw $t0, -2328($fp)
label220:
	li $t0, 25376
	sw $t0, -2336($fp)
	lw $t1, -2328($fp)
	lw $t2, -2336($fp)
	bgt $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -2324($fp)
label218:
	li $t0, 0
	sw $t0, -2340($fp)
	lw $t0, -1832($fp)
	sw $t0, -2344($fp)
	li $t0, 15050
	sw $t0, -2348($fp)
	lw $t0, -2344($fp)
	lw $t1, -2348($fp)
	sub $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label223:
	lw $t0, -956($fp)
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -2340($fp)
label222:
	li $t0, 0
	sw $t0, -2360($fp)
	li $t0, 26647
	sw $t0, -2364($fp)
	lw $t0, -548($fp)
	sw $t0, -2368($fp)
	lw $t1, -2364($fp)
	lw $t2, -2368($fp)
	ble $t1, $t2, label226
	j label225
label226:
	li $t0, 58521
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -2360($fp)
label225:
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2376($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2380($fp)
	addi $sp, $sp, 20
	lw $t0, -992($fp)
	sw $t0, -2384($fp)
	lw $t1, -2380($fp)
	lw $t2, -2384($fp)
	blt $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -2244($fp)
label204:
	li $t0, 0
	sw $t0, -2388($fp)
	lw $t0, -1016($fp)
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label229
label229:
	li $t0, 20491
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -2388($fp)
label228:
	lw $t0, -1028($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	li $t0, 40768
	sw $t0, -2412($fp)
	lw $t0, -308($fp)
	sw $t0, -2416($fp)
	lw $t0, -2412($fp)
	lw $t1, -2416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2420($fp)
	lw $t0, -344($fp)
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -2428($fp)
	li $t0, 0
	sw $t0, -2432($fp)
	addi $t0, $fp, -56
	sw $t0, -2436($fp)
	lw $t0, -1844($fp)
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
	lw $t1, -2452($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -2432($fp)
label234:
	addi $t0, $fp, -120
	sw $t0, -2456($fp)
	li $t0, 6
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
	lw $t0, -1028($fp)
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	lw $t1, -2476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2480($fp)
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2484($fp)
	addi $sp, $sp, 20
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label232:
	lw $t0, -1004($fp)
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -2408($fp)
label231:
	addi $sp, $sp, -4
	lw $t0, -2244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2492($fp)
	addi $sp, $sp, 20
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -2240($fp)
label202:
label187:
	li $t0, 8303
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	sw $t0, -2508($fp)
	li $t0, 47746
	sw $t0, -2512($fp)
	addi $t0, $fp, -2496
	sw $t0, -2516($fp)
	li $t0, 0
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2516($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2512($fp)
	lw $t1, -2528($fp)
	sw $t0, 0($t1)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	addi $t0, $fp, -2496
	sw $t0, -2540($fp)
	li $t0, 0
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
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label235
label235:
	li $t0, 1
	sw $t0, -2536($fp)
label236:
	li $t0, 0
	lw $t1, -2536($fp)
	sub $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -1028($fp)
	sw $t0, -2564($fp)
	li $t0, 25257
	sw $t0, -2568($fp)
	lw $t0, -2564($fp)
	lw $t1, -2568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2572($fp)
	lw $t0, -1028($fp)
	sw $t0, -2576($fp)
	lw $t0, -2572($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	li $t0, 46341
	sw $t0, -2584($fp)
	lw $t0, -1016($fp)
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2592($fp)
	lw $t0, -956($fp)
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2504($fp)
	sw $t0, -2604($fp)
	lw $t0, -956($fp)
	sw $t0, -2608($fp)
	lw $t0, -2604($fp)
	lw $t1, -2608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2612($fp)
	li $t0, 0
	lw $t1, -2612($fp)
	sub $t0, $t0, $t1
	sw $t0, -2616($fp)
	li $t0, 42689
	sw $t0, -2620($fp)
	lw $t0, -956($fp)
	sw $t0, -2624($fp)
	lw $t0, -2620($fp)
	lw $t1, -2624($fp)
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -560($fp)
	sw $t0, -2632($fp)
	lw $t0, -2628($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2636($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2640($fp)
	addi $sp, $sp, 20
	lw $t0, 4($fp)
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	li $t0, 33453
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	sw $t0, -2660($fp)
	li $t0, 53359
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
	li $t0, 32552
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	lw $t0, -2656($fp)
	sw $t0, -2696($fp)
	lw $t0, -284($fp)
	sw $t0, -2700($fp)
	lw $t1, -2696($fp)
	lw $t2, -2700($fp)
	beq $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -2692($fp)
label240:
	li $t0, 5990
	sw $t0, -2704($fp)
	lw $t1, -2692($fp)
	lw $t2, -2704($fp)
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -2688($fp)
label238:
	li $t0, 0
	sw $t0, -2708($fp)
	lw $t0, -992($fp)
	sw $t0, -2712($fp)
	li $t0, 0
	lw $t1, -2712($fp)
	sub $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -1028($fp)
	sw $t0, -2720($fp)
	lw $t1, -2716($fp)
	lw $t2, -2720($fp)
	ble $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -2708($fp)
label242:
	li $t0, 0
	sw $t0, -2724($fp)
	li $t0, 62691
	sw $t0, -2728($fp)
	li $t0, 22259
	sw $t0, -2732($fp)
	lw $t1, -2728($fp)
	lw $t2, -2732($fp)
	beq $t1, $t2, label245
	j label244
label245:
	li $t0, 3696
	sw $t0, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -2724($fp)
label244:
	lw $t0, -980($fp)
	sw $t0, -2740($fp)
	li $t0, 0
	lw $t1, -2740($fp)
	sub $t0, $t0, $t1
	sw $t0, -2744($fp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2748($fp)
	addi $sp, $sp, 20
	lw $t0, -956($fp)
	sw $t0, -2752($fp)
	lw $t0, -2748($fp)
	lw $t1, -2752($fp)
	mul $t0, $t0, $t1
	sw $t0, -2756($fp)
	addi $t0, $fp, -28
	sw $t0, -2760($fp)
	lw $t0, -308($fp)
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
	lw $t0, -2756($fp)
	lw $t1, -2776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -2784($fp)
	li $t0, 0
	sw $t0, -2788($fp)
	li $t0, 27697
	sw $t0, -2792($fp)
	lw $t0, -284($fp)
	sw $t0, -2796($fp)
	li $t0, 0
	lw $t1, -2796($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t1, -2792($fp)
	lw $t2, -2800($fp)
	bge $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -2788($fp)
label247:
	lw $t0, -2680($fp)
	sw $t0, -2804($fp)
	li $t0, 0
	sw $t0, -2808($fp)
	lw $t0, -560($fp)
	sw $t0, -2812($fp)
	li $t0, 0
	lw $t1, -2812($fp)
	sub $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t1, -2816($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -2808($fp)
label249:
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2820($fp)
	li $t0, 0
	sw $t0, -2824($fp)
	li $t0, 26035
	sw $t0, -2828($fp)
	lw $t0, 12($fp)
	sw $t0, -2832($fp)
	lw $t0, -2668($fp)
	sw $t0, -2836($fp)
	lw $t0, -2832($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	li $t0, 29919
	sw $t0, -2844($fp)
	li $t0, 5380
	sw $t0, -2848($fp)
	lw $t0, -2844($fp)
	lw $t1, -2848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2852($fp)
	lw $t0, -2840($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t1, -2828($fp)
	lw $t2, -2856($fp)
	beq $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -2824($fp)
label251:
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
	sw $t0, -2920($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -2940($fp)
	li $t0, 4
	sw $t0, -2944($fp)
	li $t0, 4
	lw $t1, -2944($fp)
	mul $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, 0($t0)
	sw $t1, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2960($fp)
	li $t0, 5
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
	lw $t0, -2976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3012($fp)
	li $t0, 0
	sw $t0, -3016($fp)
	li $t0, 4
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, -3012($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, 0($t0)
	sw $t1, -3028($fp)
	lw $t0, -3028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3032($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -3052($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -3072($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -3092($fp)
	li $t0, 4
	sw $t0, -3096($fp)
	li $t0, 4
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, 0($t0)
	sw $t1, -3108($fp)
	lw $t0, -3108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3112($fp)
	li $t0, 5
	sw $t0, -3116($fp)
	li $t0, 4
	lw $t1, -3116($fp)
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, 0($t0)
	sw $t1, -3128($fp)
	lw $t0, -3128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3132($fp)
	li $t0, 6
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
	lw $t0, -536($fp)
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -3164($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -3184($fp)
	li $t0, 1
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
	addi $t0, $fp, -88
	sw $t0, -3204($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -3224($fp)
	li $t0, 3
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
	addi $t0, $fp, -88
	sw $t0, -3244($fp)
	li $t0, 4
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
	addi $t0, $fp, -88
	sw $t0, -3264($fp)
	li $t0, 5
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
	addi $t0, $fp, -88
	sw $t0, -3284($fp)
	li $t0, 6
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
	addi $t0, $fp, -88
	sw $t0, -3304($fp)
	li $t0, 7
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
	addi $t0, $fp, -120
	sw $t0, -3324($fp)
	li $t0, 0
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
	addi $t0, $fp, -120
	sw $t0, -3344($fp)
	li $t0, 1
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
	addi $t0, $fp, -120
	sw $t0, -3364($fp)
	li $t0, 2
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
	addi $t0, $fp, -120
	sw $t0, -3384($fp)
	li $t0, 3
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
	addi $t0, $fp, -120
	sw $t0, -3404($fp)
	li $t0, 4
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
	addi $t0, $fp, -120
	sw $t0, -3424($fp)
	li $t0, 5
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
	addi $t0, $fp, -120
	sw $t0, -3444($fp)
	li $t0, 6
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
	addi $t0, $fp, -120
	sw $t0, -3464($fp)
	li $t0, 7
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
	lw $t0, -956($fp)
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3512($fp)
	li $t0, 36167
	sw $t0, -3516($fp)
	lw $t1, -3516($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label252:
	li $t0, 1
	sw $t0, -3512($fp)
label253:
	lw $ra, -4($fp)
	lw $v0, -3512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2376
	li $t0, 20709
	sw $t0, -52($fp)
	addi $t0, $fp, -8
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
	li $t0, 46148
	sw $t0, -76($fp)
	addi $t0, $fp, -24
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
	li $t0, 56658
	sw $t0, -100($fp)
	addi $t0, $fp, -24
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
	li $t0, 47356
	sw $t0, -124($fp)
	addi $t0, $fp, -24
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
	li $t0, 39133
	sw $t0, -148($fp)
	addi $t0, $fp, -24
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
	li $t0, 6173
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 7197
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 23514
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 46556
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 30015
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 32754
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 31149
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 38318
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
	li $t0, 14964
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
	li $t0, 4714
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
	li $t0, 13090
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
	li $t0, 57653
	sw $t0, -352($fp)
	addi $t0, $fp, -48
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
	li $t0, 51056
	sw $t0, -376($fp)
	addi $t0, $fp, -48
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
	li $t0, 38348
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 25570
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 38879
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 5364
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 22726
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 0
	sw $t0, -452($fp)
	lw $t0, -188($fp)
	sw $t0, -456($fp)
	li $t0, 61138
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -464($fp)
	lw $t0, -200($fp)
	sw $t0, -468($fp)
	lw $t0, -464($fp)
	lw $t1, -468($fp)
	add $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -212($fp)
	sw $t0, -476($fp)
	li $t0, 9060
	sw $t0, -480($fp)
	lw $t0, -476($fp)
	lw $t1, -480($fp)
	sub $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t1, -472($fp)
	lw $t2, -484($fp)
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -452($fp)
label258:
	lw $t0, -452($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -488($fp)
	lw $ra, -4($fp)
	lw $v0, -488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label255:
	addi $t0, $fp, -48
	sw $t0, -492($fp)
	lw $t0, -176($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -500($fp)
	li $t0, 4
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	lw $t1, 0($t0)
	sw $t1, -512($fp)
	lw $t0, -248($fp)
	sw $t0, -516($fp)
	lw $t0, -512($fp)
	lw $t1, -516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -520($fp)
label259:
	lw $t0, 16($fp)
	sw $t0, -524($fp)
	li $t0, 0
	lw $t1, -524($fp)
	sub $t0, $t0, $t1
	sw $t0, -528($fp)
	li $t0, 0
	lw $t1, -528($fp)
	sub $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 28716
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 23300
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 35096
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 58635
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 28680
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 5727
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 13809
	sw $t0, -644($fp)
	addi $t0, $fp, -568
	sw $t0, -648($fp)
	li $t0, 0
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
	li $t0, 9292
	sw $t0, -668($fp)
	addi $t0, $fp, -568
	sw $t0, -672($fp)
	li $t0, 1
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
	li $t0, 62386
	sw $t0, -692($fp)
	addi $t0, $fp, -568
	sw $t0, -696($fp)
	li $t0, 2
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
	li $t0, 61165
	sw $t0, -716($fp)
	addi $t0, $fp, -568
	sw $t0, -720($fp)
	li $t0, 3
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
	li $t0, 48426
	sw $t0, -740($fp)
	addi $t0, $fp, -568
	sw $t0, -744($fp)
	li $t0, 4
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
	li $t0, 3023
	sw $t0, -764($fp)
	addi $t0, $fp, -568
	sw $t0, -768($fp)
	li $t0, 5
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
	li $t0, 2826
	sw $t0, -788($fp)
	addi $t0, $fp, -568
	sw $t0, -792($fp)
	li $t0, 6
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
	li $t0, 6404
	sw $t0, -812($fp)
	addi $t0, $fp, -568
	sw $t0, -816($fp)
	li $t0, 7
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
	li $t0, 49579
	sw $t0, -836($fp)
	addi $t0, $fp, -568
	sw $t0, -840($fp)
	li $t0, 8
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -840($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -836($fp)
	lw $t1, -852($fp)
	sw $t0, 0($t1)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	li $t0, 32841
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 39158
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	li $t0, 15193
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 5623
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 0
	sw $t0, -908($fp)
	lw $t0, 16($fp)
	sw $t0, -912($fp)
	lw $t0, -636($fp)
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -576($fp)
	sw $t0, -924($fp)
	lw $t1, -920($fp)
	lw $t2, -924($fp)
	beq $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -908($fp)
label263:
	li $t0, 0
	sw $t0, -928($fp)
	lw $t0, -440($fp)
	sw $t0, -932($fp)
	li $t0, 57062
	sw $t0, -936($fp)
	lw $t1, -932($fp)
	lw $t2, -936($fp)
	bge $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -928($fp)
label265:
	addi $t0, $fp, -48
	sw $t0, -940($fp)
	li $t0, 5
	sw $t0, -944($fp)
	li $t0, 4
	lw $t1, -944($fp)
	mul $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t1, -940($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	lw $t1, 0($t0)
	sw $t1, -956($fp)
	li $t0, 0
	sw $t0, -960($fp)
	li $t0, 0
	sw $t0, -964($fp)
	li $t0, 54123
	sw $t0, -968($fp)
	li $t0, 19907
	sw $t0, -972($fp)
	lw $t1, -968($fp)
	lw $t2, -972($fp)
	ble $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -964($fp)
label269:
	li $t0, 18714
	sw $t0, -976($fp)
	lw $t1, -964($fp)
	lw $t2, -976($fp)
	beq $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -960($fp)
label267:
	addi $sp, $sp, -4
	lw $t0, -908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -960($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -980($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 57717
	sw $t0, -988($fp)
	li $t0, 63209
	sw $t0, -992($fp)
	lw $t0, -988($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t1, -996($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label272:
	li $t0, 41047
	sw $t0, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -984($fp)
label271:
	lw $t0, -864($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -1008($fp)
	li $t0, 5951
	sw $t0, -1012($fp)
	lw $t0, -212($fp)
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1020($fp)
	li $t0, 0
	sw $t0, -1024($fp)
	li $t0, 0
	sw $t0, -1028($fp)
	lw $t0, 4($fp)
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label277
label277:
	li $t0, 29001
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -1028($fp)
label276:
	li $t0, 62426
	sw $t0, -1040($fp)
	li $t0, 0
	sw $t0, -1044($fp)
	lw $t0, -224($fp)
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label279
label281:
	lw $t0, -428($fp)
	sw $t0, -1052($fp)
	lw $t1, -1052($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label280:
	lw $t0, -188($fp)
	sw $t0, -1056($fp)
	lw $t1, -1056($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -1044($fp)
label279:
	li $t0, 44307
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1064($fp)
	lw $t0, -212($fp)
	sw $t0, -1068($fp)
	lw $t0, -900($fp)
	sw $t0, -1072($fp)
	lw $t0, -1068($fp)
	lw $t1, -1072($fp)
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	li $t0, 6275
	sw $t0, -1080($fp)
	lw $t0, -1076($fp)
	lw $t1, -1080($fp)
	sub $t0, $t0, $t1
	sw $t0, -1084($fp)
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1084($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1088($fp)
	addi $sp, $sp, 24
	li $t0, 39909
	sw $t0, -1092($fp)
	lw $t1, -1088($fp)
	lw $t2, -1092($fp)
	bgt $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -1024($fp)
label274:
	addi $sp, $sp, -4
	lw $t0, -984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1096($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -980($fp)
	lw $t1, -1100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1104($fp)
	li $t0, 0
	sw $t0, -1108($fp)
	addi $t0, $fp, -568
	sw $t0, -1112($fp)
	lw $t0, -624($fp)
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
	lw $t1, -1128($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -1108($fp)
label283:
	li $t0, 50817
	sw $t0, -1132($fp)
	li $t0, 0
	lw $t1, -1132($fp)
	sub $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1108($fp)
	lw $t1, -1136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1140($fp)
	lw $t0, -1104($fp)
	lw $t1, -1140($fp)
	sub $t0, $t0, $t1
	sw $t0, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	li $t0, 0
	sw $t0, -1152($fp)
	lw $t0, -588($fp)
	sw $t0, -1156($fp)
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label286
label286:
	li $t0, 1
	sw $t0, -1152($fp)
label287:
	li $t0, 0
	lw $t1, -1152($fp)
	sub $t0, $t0, $t1
	sw $t0, -1160($fp)
	li $t0, 0
	lw $t1, -1160($fp)
	sub $t0, $t0, $t1
	sw $t0, -1164($fp)
	li $t0, 0
	lw $t1, -1164($fp)
	sub $t0, $t0, $t1
	sw $t0, -1168($fp)
	li $t0, 0
	sw $t0, -1172($fp)
	addi $t0, $fp, -8
	sw $t0, -1176($fp)
	lw $t0, -224($fp)
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
	lw $t1, -1192($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -1172($fp)
label289:
	lw $t1, -1168($fp)
	lw $t2, -1172($fp)
	blt $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -1148($fp)
label285:
	li $t0, 26353
	sw $t0, -1196($fp)
	li $t0, 24940
	sw $t0, -1200($fp)
	lw $t0, -188($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	lw $t0, -864($fp)
	sw $t0, -1216($fp)
	li $t0, 46647
	sw $t0, -1220($fp)
	lw $t1, -1216($fp)
	lw $t2, -1220($fp)
	bge $t1, $t2, label290
	j label292
label292:
	li $t0, 63082
	sw $t0, -1224($fp)
	lw $t1, -1224($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -1212($fp)
label291:
	li $t0, 0
	sw $t0, -1228($fp)
	li $t0, 60255
	sw $t0, -1232($fp)
	li $t0, 18536
	sw $t0, -1236($fp)
	lw $t0, -1232($fp)
	lw $t1, -1236($fp)
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t1, -1240($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label294
label295:
	lw $t0, -236($fp)
	sw $t0, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -1228($fp)
label294:
	li $t0, 0
	sw $t0, -1248($fp)
	lw $t0, -176($fp)
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label298:
	li $t0, 43624
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -1248($fp)
label297:
	li $t0, 0
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	lw $t0, -188($fp)
	sw $t0, -1268($fp)
	lw $t0, -416($fp)
	sw $t0, -1272($fp)
	lw $t1, -1268($fp)
	lw $t2, -1272($fp)
	blt $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -1264($fp)
label302:
	li $t0, 35646
	sw $t0, -1276($fp)
	lw $t1, -1264($fp)
	lw $t2, -1276($fp)
	beq $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -1260($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1280($fp)
	addi $sp, $sp, 24
	lw $t0, -212($fp)
	sw $t0, -1284($fp)
	lw $t0, -1280($fp)
	lw $t1, -1284($fp)
	add $t0, $t0, $t1
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 46774
	sw $t0, -1296($fp)
	li $t0, 64626
	sw $t0, -1300($fp)
	lw $t0, -1296($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label305:
	lw $t0, 20($fp)
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -1292($fp)
label304:
	li $t0, 0
	sw $t0, -1312($fp)
	lw $t0, -440($fp)
	sw $t0, -1316($fp)
	li $t0, 0
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label308:
	lw $t0, 12($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -1312($fp)
label307:
	addi $sp, $sp, -4
	lw $t0, -1200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1328($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1328($fp)
	sub $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1196($fp)
	lw $t1, -1332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	li $t0, 255
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1348($fp)
	li $t0, 52686
	sw $t0, -1352($fp)
	li $t0, 0
	sw $t0, -1356($fp)
	lw $t0, -176($fp)
	sw $t0, -1360($fp)
	li $t0, 36011
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t1, -1368($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label313
label313:
	lw $t0, -224($fp)
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -1356($fp)
label312:
	lw $t0, -176($fp)
	sw $t0, -1376($fp)
	li $t0, 0
	lw $t1, -1376($fp)
	sub $t0, $t0, $t1
	sw $t0, -1380($fp)
	li $t0, 0
	lw $t1, -1380($fp)
	sub $t0, $t0, $t1
	sw $t0, -1384($fp)
	li $t0, 45884
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -1392($fp)
	addi $sp, $sp, -4
	lw $t0, -1348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1396($fp)
	addi $sp, $sp, 24
	li $t0, 54725
	sw $t0, -1400($fp)
	lw $t1, -1396($fp)
	lw $t2, -1400($fp)
	blt $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -1340($fp)
label310:
	li $t0, 64099
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	lw $t0, -416($fp)
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label316:
	li $t0, 1
	sw $t0, -1412($fp)
label317:
	lw $t0, -404($fp)
	sw $t0, -1420($fp)
	lw $t1, -1412($fp)
	lw $t2, -1420($fp)
	bge $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -1408($fp)
label315:
	li $t0, 0
	sw $t0, -1424($fp)
	li $t0, 30387
	sw $t0, -1428($fp)
	lw $t0, -212($fp)
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1436($fp)
	lw $t0, -428($fp)
	sw $t0, -1440($fp)
	lw $t1, -1436($fp)
	lw $t2, -1440($fp)
	blt $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -1424($fp)
label319:
	li $t0, 0
	sw $t0, -1444($fp)
	li $t0, 30691
	sw $t0, -1448($fp)
	lw $t0, -236($fp)
	sw $t0, -1452($fp)
	lw $t0, -1448($fp)
	lw $t1, -1452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1456($fp)
	lw $t1, -1456($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label322
label322:
	lw $t0, -900($fp)
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -1444($fp)
label321:
	addi $sp, $sp, -4
	lw $t0, -1340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1464($fp)
	addi $sp, $sp, 24
	li $t0, 33390
	sw $t0, -1468($fp)
	lw $t0, -1464($fp)
	lw $t1, -1468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1472($fp)
	li $t0, 5683
	sw $t0, -1476($fp)
	lw $t0, -176($fp)
	sw $t0, -1480($fp)
	li $t0, 0
	lw $t1, -1480($fp)
	sub $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1476($fp)
	lw $t1, -1484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1488($fp)
	lw $t0, -1472($fp)
	lw $t1, -1488($fp)
	sub $t0, $t0, $t1
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	li $t0, 46251
	sw $t0, -1500($fp)
	li $t0, 39665
	sw $t0, -1504($fp)
	lw $t0, -1500($fp)
	lw $t1, -1504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1508($fp)
	li $t0, 49990
	sw $t0, -1512($fp)
	lw $t0, -1508($fp)
	lw $t1, -1512($fp)
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	li $t0, 43141
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label326:
	lw $t0, -900($fp)
	sw $t0, -1528($fp)
	li $t0, 3130
	sw $t0, -1532($fp)
	lw $t0, -1528($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -588($fp)
	sw $t0, -1540($fp)
	lw $t1, -1536($fp)
	lw $t2, -1540($fp)
	beq $t1, $t2, label323
	j label325
label325:
	lw $t0, -416($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	lw $t0, -416($fp)
	sw $t0, -1556($fp)
	lw $t0, -624($fp)
	sw $t0, -1560($fp)
	lw $t1, -1556($fp)
	lw $t2, -1560($fp)
	ble $t1, $t2, label327
	j label329
label329:
	li $t0, 48390
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -1552($fp)
label328:
	li $t0, 0
	sw $t0, -1568($fp)
	li $t0, 22037
	sw $t0, -1572($fp)
	li $t0, 24603
	sw $t0, -1576($fp)
	lw $t1, -1572($fp)
	lw $t2, -1576($fp)
	blt $t1, $t2, label332
	j label331
label332:
	li $t0, 46129
	sw $t0, -1580($fp)
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -1568($fp)
label331:
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, -612($fp)
	sw $t0, -1588($fp)
	li $t0, 49092
	sw $t0, -1592($fp)
	lw $t1, -1588($fp)
	lw $t2, -1592($fp)
	beq $t1, $t2, label335
	j label334
label335:
	li $t0, 60848
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -1584($fp)
label334:
	li $t0, 0
	sw $t0, -1600($fp)
	li $t0, 24363
	sw $t0, -1604($fp)
	lw $t0, -612($fp)
	sw $t0, -1608($fp)
	lw $t1, -1604($fp)
	lw $t2, -1608($fp)
	ble $t1, $t2, label336
	j label338
label338:
	lw $t0, -248($fp)
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -1600($fp)
label337:
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
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1616($fp)
	addi $sp, $sp, 24
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -1496($fp)
label324:
	j label259
label261:
	li $t0, 0
	sw $t0, -1620($fp)
	li $t0, 30578
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label343:
	li $t0, 1
	sw $t0, -1620($fp)
label344:
	li $t0, 39938
	sw $t0, -1628($fp)
	li $t0, 37036
	sw $t0, -1632($fp)
	lw $t0, -1628($fp)
	lw $t1, -1632($fp)
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	li $t0, 45219
	sw $t0, -1644($fp)
	li $t0, 18500
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1652($fp)
	li $t0, 49466
	sw $t0, -1656($fp)
	lw $t1, -1652($fp)
	lw $t2, -1656($fp)
	beq $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -1640($fp)
label346:
	li $t0, 5842
	sw $t0, -1660($fp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1664($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -8
	sw $t0, -1668($fp)
	li $t0, 0
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
	lw $t0, -1664($fp)
	lw $t1, -1684($fp)
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	li $t0, 0
	sw $t0, -1696($fp)
	lw $t0, -188($fp)
	sw $t0, -1700($fp)
	li $t0, 0
	lw $t1, -1700($fp)
	sub $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label352
label352:
	lw $t0, -176($fp)
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -1696($fp)
label351:
	lw $t0, 20($fp)
	sw $t0, -1712($fp)
	lw $t0, -224($fp)
	sw $t0, -1716($fp)
	lw $t0, -1712($fp)
	lw $t1, -1716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1720($fp)
	li $t0, 0
	sw $t0, -1724($fp)
	addi $t0, $fp, -24
	sw $t0, -1728($fp)
	lw $t0, -428($fp)
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
	lw $t1, -1744($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -1724($fp)
label354:
	li $t0, 0
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	li $t0, 41617
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label357
label357:
	li $t0, 1
	sw $t0, -1752($fp)
label358:
	li $t0, 38347
	sw $t0, -1760($fp)
	lw $t1, -1752($fp)
	lw $t2, -1760($fp)
	beq $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -1748($fp)
label356:
	li $t0, 0
	sw $t0, -1764($fp)
	lw $t0, -236($fp)
	sw $t0, -1768($fp)
	lw $t0, -404($fp)
	sw $t0, -1772($fp)
	lw $t1, -1768($fp)
	lw $t2, -1772($fp)
	bgt $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -1764($fp)
label360:
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1776($fp)
	addi $sp, $sp, 24
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label349:
	li $t0, 47690
	sw $t0, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -1692($fp)
label348:
	addi $t0, $fp, -48
	sw $t0, -1784($fp)
	li $t0, 2
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
	li $t0, 61269
	sw $t0, -1804($fp)
	lw $t0, -236($fp)
	sw $t0, -1808($fp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1812($fp)
	addi $sp, $sp, 20
	lw $t0, -1688($fp)
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label340
label342:
	addi $t0, $fp, -48
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 41872
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label363
label363:
	li $t0, 27536
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -1824($fp)
label362:
	li $t0, 4
	lw $t1, -1824($fp)
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	lw $t0, -440($fp)
	sw $t0, -1848($fp)
	li $t0, 15544
	sw $t0, -1852($fp)
	lw $t0, -188($fp)
	sw $t0, -1856($fp)
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1848($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -1868($fp)
label340:
label364:
	lw $t0, -236($fp)
	sw $t0, -1872($fp)
	li $t0, 0
	sw $t0, -1876($fp)
	lw $t0, -212($fp)
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -1876($fp)
label368:
	li $t0, 55210
	sw $t0, -1884($fp)
	lw $t0, -1876($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -416($fp)
	sw $t0, -1892($fp)
	li $t0, 0
	lw $t1, -1892($fp)
	sub $t0, $t0, $t1
	sw $t0, -1896($fp)
	li $t0, 0
	lw $t1, -1896($fp)
	sub $t0, $t0, $t1
	sw $t0, -1900($fp)
	li $t0, 8251
	sw $t0, -1904($fp)
	li $t0, 0
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 0
	sw $t0, -1916($fp)
	lw $t0, 4($fp)
	sw $t0, -1920($fp)
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label371:
	li $t0, 1
	sw $t0, -1916($fp)
label372:
	li $t0, 47555
	sw $t0, -1924($fp)
	lw $t1, -1916($fp)
	lw $t2, -1924($fp)
	bgt $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -1912($fp)
label370:
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1928($fp)
	addi $sp, $sp, 20
	lw $t0, -1872($fp)
	lw $t1, -1928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1932($fp)
	addi $t0, $fp, -48
	sw $t0, -1936($fp)
	lw $t0, 12($fp)
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
	lw $t0, -1932($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 32009
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label373
label373:
	li $t0, 1
	sw $t0, -1960($fp)
label374:
	li $t0, 51392
	sw $t0, -1968($fp)
	lw $t0, -1960($fp)
	lw $t1, -1968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1972($fp)
	lw $t0, -1956($fp)
	lw $t1, -1972($fp)
	sub $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	li $t0, 58340
	sw $t0, -1980($fp)
	lw $t0, -416($fp)
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -1992($fp)
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 0
	sw $t0, -1996($fp)
	addi $t0, $fp, -48
	sw $t0, -2000($fp)
	lw $t0, 16($fp)
	sw $t0, -2004($fp)
	li $t0, 56373
	sw $t0, -2008($fp)
	lw $t0, -2004($fp)
	lw $t1, -2008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2012($fp)
	li $t0, 4
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label380
label380:
	li $t0, 34949
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -1996($fp)
label379:
label376:
	j label364
label366:
	addi $t0, $fp, -8
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
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2052($fp)
	li $t0, 0
	sw $t0, -2056($fp)
	li $t0, 4
	lw $t1, -2056($fp)
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2072($fp)
	li $t0, 1
	sw $t0, -2076($fp)
	li $t0, 4
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	lw $t1, 0($t0)
	sw $t1, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2092($fp)
	li $t0, 2
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
	li $t0, 3
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
	lw $t0, -176($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2160($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -2180($fp)
	li $t0, 1
	sw $t0, -2184($fp)
	li $t0, 4
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, -2180($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	lw $t1, 0($t0)
	sw $t1, -2196($fp)
	lw $t0, -2196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2200($fp)
	li $t0, 2
	sw $t0, -2204($fp)
	li $t0, 4
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	lw $t1, 0($t0)
	sw $t1, -2216($fp)
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	lw $t0, -2236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2240($fp)
	li $t0, 4
	sw $t0, -2244($fp)
	li $t0, 4
	lw $t1, -2244($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	lw $t0, -2256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2260($fp)
	li $t0, 5
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
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2296($fp)
	li $t0, 0
	sw $t0, -2300($fp)
	li $t0, 53652
	sw $t0, -2304($fp)
	li $t0, 0
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -2300($fp)
label385:
	li $t0, 0
	sw $t0, -2312($fp)
	li $t0, 13928
	sw $t0, -2316($fp)
	li $t0, 14229
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	li $t0, 49325
	sw $t0, -2328($fp)
	lw $t1, -2324($fp)
	lw $t2, -2328($fp)
	bgt $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -2312($fp)
label387:
	li $t0, 0
	sw $t0, -2332($fp)
	li $t0, 34245
	sw $t0, -2336($fp)
	li $t0, 61264
	sw $t0, -2340($fp)
	lw $t0, -2336($fp)
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label390
label390:
	li $t0, 65394
	sw $t0, -2348($fp)
	lw $t1, -2348($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -2332($fp)
label389:
	li $t0, 12874
	sw $t0, -2352($fp)
	li $t0, 59552
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -176($fp)
	sw $t0, -2364($fp)
	li $t0, 0
	lw $t1, -2364($fp)
	sub $t0, $t0, $t1
	sw $t0, -2368($fp)
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2376($fp)
	addi $sp, $sp, 20
	lw $t1, -2300($fp)
	lw $t2, -2376($fp)
	ble $t1, $t2, label381
	j label383
label383:
	li $t0, 53867
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -2296($fp)
label382:
	lw $ra, -4($fp)
	lw $v0, -2296($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1616
	li $t0, 51265
	sw $t0, -72($fp)
	addi $t0, $fp, -36
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
	li $t0, 14367
	sw $t0, -96($fp)
	addi $t0, $fp, -36
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
	li $t0, 25815
	sw $t0, -120($fp)
	addi $t0, $fp, -36
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
	li $t0, 47706
	sw $t0, -144($fp)
	addi $t0, $fp, -36
	sw $t0, -148($fp)
	li $t0, 3
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
	li $t0, 10100
	sw $t0, -168($fp)
	addi $t0, $fp, -36
	sw $t0, -172($fp)
	li $t0, 4
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
	li $t0, 28151
	sw $t0, -192($fp)
	addi $t0, $fp, -36
	sw $t0, -196($fp)
	li $t0, 5
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
	li $t0, 42710
	sw $t0, -216($fp)
	addi $t0, $fp, -36
	sw $t0, -220($fp)
	li $t0, 6
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
	li $t0, 51717
	sw $t0, -240($fp)
	addi $t0, $fp, -36
	sw $t0, -244($fp)
	li $t0, 7
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
	li $t0, 962
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 24864
	sw $t0, -276($fp)
	addi $t0, $fp, -48
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
	li $t0, 28053
	sw $t0, -300($fp)
	addi $t0, $fp, -48
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
	li $t0, 28498
	sw $t0, -324($fp)
	addi $t0, $fp, -48
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
	li $t0, 40409
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 10073
	sw $t0, -360($fp)
	addi $t0, $fp, -68
	sw $t0, -364($fp)
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -364($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -360($fp)
	lw $t1, -376($fp)
	sw $t0, 0($t1)
	lw $t0, -376($fp)
	lw $t1, 0($t0)
	sw $t1, -380($fp)
	li $t0, 36749
	sw $t0, -384($fp)
	addi $t0, $fp, -68
	sw $t0, -388($fp)
	li $t0, 1
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
	li $t0, 30083
	sw $t0, -408($fp)
	addi $t0, $fp, -68
	sw $t0, -412($fp)
	li $t0, 2
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
	li $t0, 42082
	sw $t0, -432($fp)
	addi $t0, $fp, -68
	sw $t0, -436($fp)
	li $t0, 3
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
	li $t0, 22606
	sw $t0, -456($fp)
	addi $t0, $fp, -68
	sw $t0, -460($fp)
	li $t0, 4
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
	li $t0, 22887
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 32919
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	addi $t0, $fp, -36
	sw $t0, -504($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -524($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -544($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -564($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -584($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -604($fp)
	li $t0, 5
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
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -644($fp)
	li $t0, 7
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
	lw $t0, -268($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -668($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -688($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -708($fp)
	li $t0, 2
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
	lw $t0, -352($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -772($fp)
	li $t0, 2
	sw $t0, -776($fp)
	li $t0, 4
	lw $t1, -776($fp)
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, -772($fp)
	add $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, 0($t0)
	sw $t1, -788($fp)
	lw $t0, -788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -792($fp)
	li $t0, 3
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
	lw $t0, -808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -812($fp)
	li $t0, 4
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
	lw $t0, -484($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -840($fp)
	lw $t0, -352($fp)
	sw $t0, -844($fp)
	li $t0, 0
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -840($fp)
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	li $t0, 0
	lw $t1, -852($fp)
	sub $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $ra, -4($fp)
	lw $v0, -856($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 57555
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, 8($fp)
	sw $t0, -872($fp)
	lw $t0, 16($fp)
	sw $t0, -876($fp)
	lw $t0, -872($fp)
	lw $t1, -876($fp)
	mul $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -864($fp)
	sw $t0, -884($fp)
	lw $t0, -880($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, 4($fp)
	sw $t0, -892($fp)
	lw $t0, -888($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	li $t0, 11004
	sw $t0, -900($fp)
	li $t0, 0
	lw $t1, -900($fp)
	sub $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -896($fp)
	lw $t1, -904($fp)
	add $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label394
label394:
	li $t0, 45793
	sw $t0, -912($fp)
	li $t0, 0
	lw $t1, -912($fp)
	sub $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t1, -916($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	lw $t0, 4($fp)
	sw $t0, -920($fp)
	li $t0, 0
	lw $t1, -920($fp)
	sub $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -352($fp)
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	sub $t0, $t0, $t1
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	li $t0, 51571
	sw $t0, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label395:
	li $t0, 1
	sw $t0, -936($fp)
label396:
	lw $t0, -932($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
label392:
	li $t0, 0
	sw $t0, -948($fp)
	li $t0, 45249
	sw $t0, -952($fp)
	li $t0, 41522
	sw $t0, -956($fp)
	lw $t0, -268($fp)
	sw $t0, -960($fp)
	lw $t0, -496($fp)
	sw $t0, -964($fp)
	lw $t0, -960($fp)
	lw $t1, -964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -968($fp)
	lw $t0, -956($fp)
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t1, -952($fp)
	lw $t2, -972($fp)
	blt $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -948($fp)
label398:
	lw $t0, -484($fp)
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label399
label399:
	li $t0, 0
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 0
	sw $t0, -988($fp)
	li $t0, 55751
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label408
label408:
	lw $t0, 4($fp)
	sw $t0, -996($fp)
	lw $t1, -996($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -988($fp)
label407:
	li $t0, 0
	sw $t0, -1000($fp)
	li $t0, 59178
	sw $t0, -1004($fp)
	lw $t0, -496($fp)
	sw $t0, -1008($fp)
	lw $t1, -1004($fp)
	lw $t2, -1008($fp)
	bgt $t1, $t2, label409
	j label411
label411:
	lw $t0, -496($fp)
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -1000($fp)
label410:
	li $t0, 0
	sw $t0, -1016($fp)
	li $t0, 0
	sw $t0, -1020($fp)
	lw $t0, -268($fp)
	sw $t0, -1024($fp)
	lw $t0, 4($fp)
	sw $t0, -1028($fp)
	lw $t1, -1024($fp)
	lw $t2, -1028($fp)
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -1020($fp)
label415:
	lw $t0, 16($fp)
	sw $t0, -1032($fp)
	lw $t1, -1020($fp)
	lw $t2, -1032($fp)
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -1016($fp)
label413:
	addi $t0, $fp, -36
	sw $t0, -1036($fp)
	lw $t0, 4($fp)
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
	lw $t0, 4($fp)
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	mul $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -496($fp)
	sw $t0, -1064($fp)
	li $t0, 0
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	li $t0, 51430
	sw $t0, -1072($fp)
	lw $t0, -1068($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1076($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1080($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1080($fp)
	sub $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label404:
	li $t0, 1
	sw $t0, -984($fp)
label405:
	li $t0, 0
	lw $t1, -984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1088($fp)
	li $t0, 0
	sw $t0, -1092($fp)
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
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -1092($fp)
label417:
	li $t0, 0
	sw $t0, -1116($fp)
	li $t0, 25690
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -1116($fp)
label419:
	li $t0, 0
	sw $t0, -1124($fp)
	li $t0, 0
	sw $t0, -1128($fp)
	li $t0, 825
	sw $t0, -1132($fp)
	li $t0, 45867
	sw $t0, -1136($fp)
	lw $t1, -1132($fp)
	lw $t2, -1136($fp)
	blt $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -1128($fp)
label423:
	li $t0, 36902
	sw $t0, -1140($fp)
	lw $t1, -1128($fp)
	lw $t2, -1140($fp)
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -1124($fp)
label421:
	li $t0, 0
	sw $t0, -1144($fp)
	li $t0, 59686
	sw $t0, -1148($fp)
	lw $t0, -484($fp)
	sw $t0, -1152($fp)
	li $t0, 23651
	sw $t0, -1156($fp)
	lw $t0, -1152($fp)
	lw $t1, -1156($fp)
	mul $t0, $t0, $t1
	sw $t0, -1160($fp)
	li $t0, 0
	lw $t1, -1160($fp)
	sub $t0, $t0, $t1
	sw $t0, -1164($fp)
	li $t0, 0
	sw $t0, -1168($fp)
	li $t0, 49586
	sw $t0, -1172($fp)
	lw $t0, -484($fp)
	sw $t0, -1176($fp)
	lw $t1, -1172($fp)
	lw $t2, -1176($fp)
	bne $t1, $t2, label429
	j label428
label429:
	li $t0, 7788
	sw $t0, -1180($fp)
	lw $t1, -1180($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -1168($fp)
label428:
	lw $t0, 4($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1188($fp)
	lw $t0, 16($fp)
	sw $t0, -1192($fp)
	li $t0, 0
	lw $t1, -1192($fp)
	sub $t0, $t0, $t1
	sw $t0, -1196($fp)
	li $t0, 0
	lw $t1, -1196($fp)
	sub $t0, $t0, $t1
	sw $t0, -1200($fp)
	addi $sp, $sp, -4
	lw $t0, -1148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1200($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1204($fp)
	addi $sp, $sp, 24
	lw $t1, -1204($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label426
label426:
	li $t0, 35940
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -1144($fp)
label425:
	li $t0, 41480
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -1216($fp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1220($fp)
	addi $sp, $sp, 20
	lw $t0, -1092($fp)
	lw $t1, -1220($fp)
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t1, -1088($fp)
	lw $t2, -1224($fp)
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -980($fp)
label403:
	lw $ra, -4($fp)
	lw $v0, -980($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label401
label400:
	addi $t0, $fp, -36
	sw $t0, -1228($fp)
	addi $t0, $fp, -68
	sw $t0, -1232($fp)
	li $t0, 0
	sw $t0, -1236($fp)
	li $t0, 8384
	sw $t0, -1240($fp)
	lw $t0, 12($fp)
	sw $t0, -1244($fp)
	lw $t1, -1240($fp)
	lw $t2, -1244($fp)
	blt $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -1236($fp)
label431:
	li $t0, 4
	lw $t1, -1236($fp)
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	lw $t1, 0($t0)
	sw $t1, -1256($fp)
	li $t0, 4
	lw $t1, -1256($fp)
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, 0($t0)
	sw $t1, -1268($fp)
	lw $ra, -4($fp)
	lw $v0, -1268($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label401:
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
	sw $t0, -1412($fp)
	li $t0, 7
	sw $t0, -1416($fp)
	li $t0, 4
	lw $t1, -1416($fp)
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	lw $t1, 0($t0)
	sw $t1, -1428($fp)
	lw $t0, -1428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	lw $t0, -352($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	li $t0, 4
	lw $t1, -1504($fp)
	mul $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, 0($t0)
	sw $t1, -1516($fp)
	lw $t0, -1516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1520($fp)
	li $t0, 1
	sw $t0, -1524($fp)
	li $t0, 4
	lw $t1, -1524($fp)
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	lw $t1, 0($t0)
	sw $t1, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1540($fp)
	li $t0, 2
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
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1560($fp)
	li $t0, 3
	sw $t0, -1564($fp)
	li $t0, 4
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	lw $t0, -1576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1580($fp)
	li $t0, 4
	sw $t0, -1584($fp)
	li $t0, 4
	lw $t1, -1584($fp)
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	lw $t1, 0($t0)
	sw $t1, -1596($fp)
	lw $t0, -1596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1608($fp)
	li $t0, 65401
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label434:
	lw $t0, -496($fp)
	sw $t0, -1616($fp)
	lw $t0, 4($fp)
	sw $t0, -1620($fp)
	lw $t1, -1616($fp)
	lw $t2, -1620($fp)
	bgt $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -1608($fp)
label433:
	lw $ra, -4($fp)
	lw $v0, -1608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6920
	li $t0, 563
	sw $t0, -188($fp)
	addi $t0, $fp, -32
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
	li $t0, 18457
	sw $t0, -212($fp)
	addi $t0, $fp, -32
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
	li $t0, 36614
	sw $t0, -236($fp)
	addi $t0, $fp, -32
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
	li $t0, 30646
	sw $t0, -260($fp)
	addi $t0, $fp, -32
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
	li $t0, 60540
	sw $t0, -284($fp)
	addi $t0, $fp, -32
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
	li $t0, 59220
	sw $t0, -308($fp)
	addi $t0, $fp, -32
	sw $t0, -312($fp)
	li $t0, 5
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
	li $t0, 53533
	sw $t0, -332($fp)
	addi $t0, $fp, -32
	sw $t0, -336($fp)
	li $t0, 6
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -336($fp)
	lw $t1, -344($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -332($fp)
	lw $t1, -348($fp)
	sw $t0, 0($t1)
	lw $t0, -348($fp)
	lw $t1, 0($t0)
	sw $t1, -352($fp)
	li $t0, 27923
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 51239
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 64537
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 8181
	sw $t0, -392($fp)
	addi $t0, $fp, -36
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
	li $t0, 37275
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 44251
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 49703
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 23169
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 37893
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 39918
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 58388
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 19866
	sw $t0, -500($fp)
	addi $t0, $fp, -40
	sw $t0, -504($fp)
	li $t0, 0
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
	li $t0, 15862
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 42438
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 27654
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 39513
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 36588
	sw $t0, -572($fp)
	addi $t0, $fp, -52
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
	li $t0, 63594
	sw $t0, -596($fp)
	addi $t0, $fp, -52
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
	li $t0, 40339
	sw $t0, -620($fp)
	addi $t0, $fp, -52
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
	li $t0, 16919
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 34961
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 493
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 25303
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 34826
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 1056
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 43761
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 5904
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 31702
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 38765
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 65125
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 19699
	sw $t0, -776($fp)
	addi $t0, $fp, -72
	sw $t0, -780($fp)
	li $t0, 0
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
	li $t0, 1152
	sw $t0, -800($fp)
	addi $t0, $fp, -72
	sw $t0, -804($fp)
	li $t0, 1
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
	li $t0, 50828
	sw $t0, -824($fp)
	addi $t0, $fp, -72
	sw $t0, -828($fp)
	li $t0, 2
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
	li $t0, 18701
	sw $t0, -848($fp)
	addi $t0, $fp, -72
	sw $t0, -852($fp)
	li $t0, 3
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
	li $t0, 9333
	sw $t0, -872($fp)
	addi $t0, $fp, -72
	sw $t0, -876($fp)
	li $t0, 4
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
	li $t0, 22567
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 62952
	sw $t0, -908($fp)
	addi $t0, $fp, -108
	sw $t0, -912($fp)
	li $t0, 0
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -912($fp)
	lw $t1, -920($fp)
	add $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -908($fp)
	lw $t1, -924($fp)
	sw $t0, 0($t1)
	lw $t0, -924($fp)
	lw $t1, 0($t0)
	sw $t1, -928($fp)
	li $t0, 59036
	sw $t0, -932($fp)
	addi $t0, $fp, -108
	sw $t0, -936($fp)
	li $t0, 1
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
	li $t0, 45736
	sw $t0, -956($fp)
	addi $t0, $fp, -108
	sw $t0, -960($fp)
	li $t0, 2
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
	li $t0, 35309
	sw $t0, -980($fp)
	addi $t0, $fp, -108
	sw $t0, -984($fp)
	li $t0, 3
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
	li $t0, 33418
	sw $t0, -1004($fp)
	addi $t0, $fp, -108
	sw $t0, -1008($fp)
	li $t0, 4
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
	li $t0, 38588
	sw $t0, -1028($fp)
	addi $t0, $fp, -108
	sw $t0, -1032($fp)
	li $t0, 5
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
	li $t0, 55175
	sw $t0, -1052($fp)
	addi $t0, $fp, -108
	sw $t0, -1056($fp)
	li $t0, 6
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
	li $t0, 49281
	sw $t0, -1076($fp)
	addi $t0, $fp, -108
	sw $t0, -1080($fp)
	li $t0, 7
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
	li $t0, 15490
	sw $t0, -1100($fp)
	addi $t0, $fp, -108
	sw $t0, -1104($fp)
	li $t0, 8
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
	li $t0, 17293
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 23258
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 52078
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	li $t0, 15352
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	li $t0, 63597
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 3461
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	li $t0, 50313
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	li $t0, 64090
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 28765
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	li $t0, 19603
	sw $t0, -1232($fp)
	addi $t0, $fp, -136
	sw $t0, -1236($fp)
	li $t0, 0
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
	li $t0, 65146
	sw $t0, -1256($fp)
	addi $t0, $fp, -136
	sw $t0, -1260($fp)
	li $t0, 1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1260($fp)
	lw $t1, -1268($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1256($fp)
	lw $t1, -1272($fp)
	sw $t0, 0($t1)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	li $t0, 6990
	sw $t0, -1280($fp)
	addi $t0, $fp, -136
	sw $t0, -1284($fp)
	li $t0, 2
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1284($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1280($fp)
	lw $t1, -1296($fp)
	sw $t0, 0($t1)
	lw $t0, -1296($fp)
	lw $t1, 0($t0)
	sw $t1, -1300($fp)
	li $t0, 25507
	sw $t0, -1304($fp)
	addi $t0, $fp, -136
	sw $t0, -1308($fp)
	li $t0, 3
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1308($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1304($fp)
	lw $t1, -1320($fp)
	sw $t0, 0($t1)
	lw $t0, -1320($fp)
	lw $t1, 0($t0)
	sw $t1, -1324($fp)
	li $t0, 31312
	sw $t0, -1328($fp)
	addi $t0, $fp, -136
	sw $t0, -1332($fp)
	li $t0, 4
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1332($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1328($fp)
	lw $t1, -1344($fp)
	sw $t0, 0($t1)
	lw $t0, -1344($fp)
	lw $t1, 0($t0)
	sw $t1, -1348($fp)
	li $t0, 45755
	sw $t0, -1352($fp)
	addi $t0, $fp, -136
	sw $t0, -1356($fp)
	li $t0, 5
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1356($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1352($fp)
	lw $t1, -1368($fp)
	sw $t0, 0($t1)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	li $t0, 25096
	sw $t0, -1376($fp)
	addi $t0, $fp, -136
	sw $t0, -1380($fp)
	li $t0, 6
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1380($fp)
	lw $t1, -1388($fp)
	add $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1376($fp)
	lw $t1, -1392($fp)
	sw $t0, 0($t1)
	lw $t0, -1392($fp)
	lw $t1, 0($t0)
	sw $t1, -1396($fp)
	li $t0, 51012
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	li $t0, 46907
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	li $t0, 10389
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 4177
	sw $t0, -1436($fp)
	addi $t0, $fp, -176
	sw $t0, -1440($fp)
	li $t0, 0
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
	li $t0, 56241
	sw $t0, -1460($fp)
	addi $t0, $fp, -176
	sw $t0, -1464($fp)
	li $t0, 1
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
	li $t0, 32956
	sw $t0, -1484($fp)
	addi $t0, $fp, -176
	sw $t0, -1488($fp)
	li $t0, 2
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
	li $t0, 1593
	sw $t0, -1508($fp)
	addi $t0, $fp, -176
	sw $t0, -1512($fp)
	li $t0, 3
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
	li $t0, 49741
	sw $t0, -1532($fp)
	addi $t0, $fp, -176
	sw $t0, -1536($fp)
	li $t0, 4
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
	li $t0, 13157
	sw $t0, -1556($fp)
	addi $t0, $fp, -176
	sw $t0, -1560($fp)
	li $t0, 5
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
	li $t0, 36902
	sw $t0, -1580($fp)
	addi $t0, $fp, -176
	sw $t0, -1584($fp)
	li $t0, 6
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
	li $t0, 17624
	sw $t0, -1604($fp)
	addi $t0, $fp, -176
	sw $t0, -1608($fp)
	li $t0, 7
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1608($fp)
	lw $t1, -1616($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1604($fp)
	lw $t1, -1620($fp)
	sw $t0, 0($t1)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	li $t0, 51745
	sw $t0, -1628($fp)
	addi $t0, $fp, -176
	sw $t0, -1632($fp)
	li $t0, 8
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1632($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1628($fp)
	lw $t1, -1644($fp)
	sw $t0, 0($t1)
	lw $t0, -1644($fp)
	lw $t1, 0($t0)
	sw $t1, -1648($fp)
	li $t0, 26541
	sw $t0, -1652($fp)
	addi $t0, $fp, -176
	sw $t0, -1656($fp)
	li $t0, 9
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1656($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1652($fp)
	lw $t1, -1668($fp)
	sw $t0, 0($t1)
	lw $t0, -1668($fp)
	lw $t1, 0($t0)
	sw $t1, -1672($fp)
	li $t0, 1369
	sw $t0, -1676($fp)
	addi $t0, $fp, -184
	sw $t0, -1680($fp)
	li $t0, 0
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1680($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1676($fp)
	lw $t1, -1692($fp)
	sw $t0, 0($t1)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	li $t0, 1700
	sw $t0, -1700($fp)
	addi $t0, $fp, -184
	sw $t0, -1704($fp)
	li $t0, 1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1704($fp)
	lw $t1, -1712($fp)
	add $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1700($fp)
	lw $t1, -1716($fp)
	sw $t0, 0($t1)
	lw $t0, -1716($fp)
	lw $t1, 0($t0)
	sw $t1, -1720($fp)
	li $t0, 43834
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	li $t0, 24627
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 53778
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	addi $t0, $fp, -72
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 59186
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label439
label439:
	li $t0, 1
	sw $t0, -1764($fp)
label440:
	li $t0, 4
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label438
label438:
	li $t0, 22689
	sw $t0, -1784($fp)
	li $t0, 57240
	sw $t0, -1788($fp)
	li $t0, 0
	lw $t1, -1788($fp)
	sub $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1784($fp)
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
label441:
	li $t0, 43963
	sw $t0, -1800($fp)
	li $t0, 21243
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	li $t0, 20469
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	li $t0, 63566
	sw $t0, -1820($fp)
	lw $t1, -1816($fp)
	lw $t2, -1820($fp)
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 20854
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	li $t0, 27459
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	li $t0, 23538
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	li $t0, 52166
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	li $t0, 7678
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	li $t0, 48634
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	li $t0, 37642
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	addi $t0, $fp, -52
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
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 0
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 0
	sw $t0, -1940($fp)
	li $t0, 29496
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label452:
	li $t0, 1
	sw $t0, -1940($fp)
label453:
	li $t0, 43412
	sw $t0, -1948($fp)
	lw $t0, -648($fp)
	sw $t0, -1952($fp)
	lw $t0, -1948($fp)
	lw $t1, -1952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1956($fp)
	lw $t0, -684($fp)
	sw $t0, -1960($fp)
	lw $t0, -1956($fp)
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -696($fp)
	sw $t0, -1968($fp)
	lw $t0, -756($fp)
	sw $t0, -1972($fp)
	lw $t0, -1968($fp)
	lw $t1, -1972($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	li $t0, 26444
	sw $t0, -1980($fp)
	lw $t0, -1976($fp)
	lw $t1, -1980($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	li $t0, 0
	sw $t0, -1988($fp)
	lw $t0, -1852($fp)
	sw $t0, -1992($fp)
	li $t0, 45290
	sw $t0, -1996($fp)
	lw $t1, -1992($fp)
	lw $t2, -1996($fp)
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -1988($fp)
label455:
	addi $sp, $sp, -4
	lw $t0, -1940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2000($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2004($fp)
	li $t0, 41319
	sw $t0, -2008($fp)
	li $t0, 48489
	sw $t0, -2012($fp)
	lw $t0, -2008($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label458
label458:
	li $t0, 27510
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -2004($fp)
label457:
	li $t0, 0
	sw $t0, -2024($fp)
	lw $t0, -360($fp)
	sw $t0, -2028($fp)
	li $t0, 47120
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label461:
	li $t0, 25810
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -2024($fp)
label460:
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2044($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 39601
	sw $t0, -2052($fp)
	li $t0, 14778
	sw $t0, -2056($fp)
	lw $t1, -2052($fp)
	lw $t2, -2056($fp)
	beq $t1, $t2, label464
	j label463
label464:
	lw $t0, -372($fp)
	sw $t0, -2060($fp)
	lw $t1, -2060($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -2048($fp)
label463:
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2064($fp)
	addi $sp, $sp, 12
	lw $t1, -2000($fp)
	lw $t2, -2064($fp)
	bgt $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -1936($fp)
label451:
	addi $t0, $fp, -40
	sw $t0, -2068($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 7580
	sw $t0, -2092($fp)
	li $t0, 15753
	sw $t0, -2096($fp)
	lw $t1, -2092($fp)
	lw $t2, -2096($fp)
	beq $t1, $t2, label465
	j label467
label467:
	li $t0, 13268
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -2088($fp)
label466:
	li $t0, 0
	sw $t0, -2104($fp)
	lw $t0, -1888($fp)
	sw $t0, -2108($fp)
	li $t0, 19618
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label469
label470:
	lw $t0, -660($fp)
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -2104($fp)
label469:
	lw $t0, -768($fp)
	sw $t0, -2124($fp)
	lw $t0, -1864($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -444($fp)
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2144($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2144($fp)
	sub $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t1, -1936($fp)
	lw $t2, -2148($fp)
	beq $t1, $t2, label447
	j label449
label449:
	lw $t0, -1212($fp)
	sw $t0, -2152($fp)
	li $t0, 57232
	sw $t0, -2156($fp)
	lw $t0, -696($fp)
	sw $t0, -2160($fp)
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2152($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -1932($fp)
label448:
	j label446
label445:
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 0
	sw $t0, -2176($fp)
	li $t0, 51513
	sw $t0, -2180($fp)
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -2176($fp)
label475:
	li $t0, 0
	lw $t1, -2176($fp)
	sub $t0, $t0, $t1
	sw $t0, -2184($fp)
	li $t0, 27926
	sw $t0, -2188($fp)
	lw $t0, -2184($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label473:
	li $t0, 55262
	sw $t0, -2196($fp)
	lw $t0, -528($fp)
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	mul $t0, $t0, $t1
	sw $t0, -2204($fp)
	li $t0, 6831
	sw $t0, -2208($fp)
	lw $t0, -540($fp)
	sw $t0, -2212($fp)
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t1, -2204($fp)
	lw $t2, -2216($fp)
	beq $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -2172($fp)
label472:
label446:
	lw $t0, -1828($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1840($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1852($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1864($fp)
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1876($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1888($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1900($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2248($fp)
	addi $t0, $fp, -72
	sw $t0, -2252($fp)
	addi $t0, $fp, -52
	sw $t0, -2256($fp)
	lw $t0, 8($fp)
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
	li $t0, 4
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	lw $t1, 0($t0)
	sw $t1, -2284($fp)
	li $t0, 0
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label478:
	li $t0, 55385
	sw $t0, -2292($fp)
	li $t0, 13264
	sw $t0, -2296($fp)
	lw $t0, -1828($fp)
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2304($fp)
	lw $t1, -2292($fp)
	lw $t2, -2304($fp)
	ble $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -2248($fp)
label477:
	lw $ra, -4($fp)
	lw $v0, -2248($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -900($fp)
	sw $t0, -2308($fp)
	addi $t0, $fp, -72
	sw $t0, -2312($fp)
	li $t0, 0
	sw $t0, -2316($fp)
	lw $t0, -756($fp)
	sw $t0, -2320($fp)
	lw $t0, -1840($fp)
	sw $t0, -2324($fp)
	lw $t1, -2320($fp)
	lw $t2, -2324($fp)
	ble $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -2316($fp)
label483:
	li $t0, 4
	lw $t1, -2316($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	lw $t0, -2308($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label480
label479:
	li $t0, 0
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	li $t0, 7387
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label487
label489:
	lw $t0, -900($fp)
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label487
label488:
	lw $t0, -900($fp)
	sw $t0, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -2348($fp)
label487:
	lw $t0, -372($fp)
	sw $t0, -2364($fp)
	li $t0, 52112
	sw $t0, -2368($fp)
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	li $t0, 55386
	sw $t0, -2376($fp)
	lw $t0, -2372($fp)
	lw $t1, -2376($fp)
	sub $t0, $t0, $t1
	sw $t0, -2380($fp)
	li $t0, 0
	sw $t0, -2384($fp)
	li $t0, 31104
	sw $t0, -2388($fp)
	lw $t0, -1224($fp)
	sw $t0, -2392($fp)
	lw $t0, -2388($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -1900($fp)
	sw $t0, -2400($fp)
	lw $t1, -2396($fp)
	lw $t2, -2400($fp)
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -2384($fp)
label491:
	li $t0, 0
	sw $t0, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	li $t0, 58997
	sw $t0, -2412($fp)
	li $t0, 63063
	sw $t0, -2416($fp)
	lw $t1, -2412($fp)
	lw $t2, -2416($fp)
	bge $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -2408($fp)
label495:
	li $t0, 61899
	sw $t0, -2420($fp)
	lw $t1, -2408($fp)
	lw $t2, -2420($fp)
	beq $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -2404($fp)
label493:
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2424($fp)
	addi $sp, $sp, 20
	li $t0, 31867
	sw $t0, -2428($fp)
	lw $t1, -2424($fp)
	lw $t2, -2428($fp)
	bgt $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -2344($fp)
label485:
	j label481
label480:
	li $t0, 16294
	sw $t0, -2432($fp)
	li $t0, 0
	lw $t1, -2432($fp)
	sub $t0, $t0, $t1
	sw $t0, -2436($fp)
label481:
	li $t0, 50800
	sw $t0, -2440($fp)
	lw $t1, -2440($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label499
label499:
	addi $t0, $fp, -184
	sw $t0, -2444($fp)
	li $t0, 0
	sw $t0, -2448($fp)
	li $t0, 61363
	sw $t0, -2452($fp)
	lw $t0, -1200($fp)
	sw $t0, -2456($fp)
	lw $t1, -2452($fp)
	lw $t2, -2456($fp)
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -2448($fp)
label501:
	li $t0, 4
	lw $t1, -2448($fp)
	mul $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	lw $t1, 0($t0)
	sw $t1, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 0
	sw $t0, -2472($fp)
	li $t0, 25900
	sw $t0, -2476($fp)
	li $t0, 0
	lw $t1, -2476($fp)
	sub $t0, $t0, $t1
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 16170
	sw $t0, -2488($fp)
	lw $t0, -1828($fp)
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	li $t0, 41362
	sw $t0, -2500($fp)
	lw $t1, -2496($fp)
	lw $t2, -2500($fp)
	bgt $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -2484($fp)
label506:
	li $t0, 0
	sw $t0, -2504($fp)
	li $t0, 42
	sw $t0, -2508($fp)
	lw $t1, -2508($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label507:
	li $t0, 1
	sw $t0, -2504($fp)
label508:
	li $t0, 42947
	sw $t0, -2512($fp)
	lw $t0, -2504($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	li $t0, 0
	sw $t0, -2520($fp)
	li $t0, 55895
	sw $t0, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -2520($fp)
label510:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2528($fp)
	addi $sp, $sp, 20
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label504
label504:
	lw $t0, -1876($fp)
	sw $t0, -2532($fp)
	li $t0, 43680
	sw $t0, -2536($fp)
	lw $t0, -2532($fp)
	lw $t1, -2536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2540($fp)
	li $t0, 60980
	sw $t0, -2544($fp)
	lw $t0, -2540($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	li $t0, 0
	sw $t0, -2552($fp)
	lw $t0, -1188($fp)
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label511
label511:
	li $t0, 1
	sw $t0, -2552($fp)
label512:
	lw $t0, -2548($fp)
	lw $t1, -2552($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -2472($fp)
label503:
	j label498
label497:
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 33480
	sw $t0, -2568($fp)
	lw $t0, -1224($fp)
	sw $t0, -2572($fp)
	li $t0, 0
	lw $t1, -2572($fp)
	sub $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2568($fp)
	lw $t1, -2576($fp)
	mul $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -432($fp)
	sw $t0, -2584($fp)
	lw $t0, -2580($fp)
	lw $t1, -2584($fp)
	sub $t0, $t0, $t1
	sw $t0, -2588($fp)
	li $t0, 0
	sw $t0, -2592($fp)
	li $t0, 8712
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -2600($fp)
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, -672($fp)
	sw $t0, -2608($fp)
	li $t0, 59433
	sw $t0, -2612($fp)
	lw $t1, -2608($fp)
	lw $t2, -2612($fp)
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -2604($fp)
label518:
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2604($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2616($fp)
	addi $sp, $sp, 12
	li $t0, 63750
	sw $t0, -2620($fp)
	li $t0, 1354
	sw $t0, -2624($fp)
	lw $t0, -2620($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t1, -2616($fp)
	lw $t2, -2628($fp)
	ble $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -2592($fp)
label516:
	lw $t1, -2588($fp)
	lw $t2, -2592($fp)
	beq $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -2564($fp)
label514:
label498:
	li $t0, 0
	sw $t0, -2632($fp)
	addi $t0, $fp, -136
	sw $t0, -2636($fp)
	li $t0, 408
	sw $t0, -2640($fp)
	lw $t0, -492($fp)
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	li $t0, 4
	lw $t1, -2648($fp)
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	lw $t1, 0($t0)
	sw $t1, -2660($fp)
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label520
label521:
	li $t0, 0
	sw $t0, -2664($fp)
	li $t0, 49727
	sw $t0, -2668($fp)
	lw $t1, -2668($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label522:
	li $t0, 1
	sw $t0, -2664($fp)
label523:
	li $t0, 29280
	sw $t0, -2672($fp)
	lw $t0, -2664($fp)
	lw $t1, -2672($fp)
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -468($fp)
	sw $t0, -2680($fp)
	lw $t0, -2676($fp)
	lw $t1, -2680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2684($fp)
	lw $t1, -2684($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -2632($fp)
label520:
	j label441
label443:
label436:
	addi $t0, $fp, -108
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	li $t0, 55671
	sw $t0, -2696($fp)
	li $t0, 56558
	sw $t0, -2700($fp)
	lw $t0, -2696($fp)
	lw $t1, -2700($fp)
	sub $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -480($fp)
	sw $t0, -2708($fp)
	lw $t1, -2704($fp)
	lw $t2, -2708($fp)
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -2692($fp)
label528:
	li $t0, 4
	lw $t1, -2692($fp)
	mul $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	lw $t1, -2688($fp)
	add $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	lw $t1, 0($t0)
	sw $t1, -2720($fp)
	addi $t0, $fp, -36
	sw $t0, -2724($fp)
	li $t0, 0
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
	lw $t0, -1200($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -2748($fp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2752($fp)
	addi $sp, $sp, 12
	lw $t0, -2720($fp)
	lw $t1, -2752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 0
	sw $t0, -2760($fp)
	li $t0, 0
	sw $t0, -2764($fp)
	lw $t0, -552($fp)
	sw $t0, -2768($fp)
	lw $t0, -744($fp)
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	li $t0, 0
	lw $t1, -2776($fp)
	sub $t0, $t0, $t1
	sw $t0, -2780($fp)
	li $t0, 50019
	sw $t0, -2784($fp)
	lw $t1, -2780($fp)
	lw $t2, -2784($fp)
	blt $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -2764($fp)
label533:
	lw $t0, 4($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -2792($fp)
	li $t0, 0
	sw $t0, -2796($fp)
	li $t0, 16656
	sw $t0, -2800($fp)
	li $t0, 65298
	sw $t0, -2804($fp)
	lw $t1, -2800($fp)
	lw $t2, -2804($fp)
	beq $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -2796($fp)
label535:
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2796($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2808($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t1, -2764($fp)
	lw $t2, -2812($fp)
	ble $t1, $t2, label529
	j label531
label531:
	li $t0, 15587
	sw $t0, -2816($fp)
	lw $t1, -2816($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -2760($fp)
label530:
label525:
	li $t0, 3233
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -2828($fp)
	li $t0, 55149
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -2840($fp)
	li $t0, 22975
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	sw $t0, -2852($fp)
	lw $t0, -2824($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2836($fp)
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2848($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2868($fp)
	li $t0, 35100
	sw $t0, -2872($fp)
	addi $t0, $fp, -72
	sw $t0, -2876($fp)
	lw $t0, -2824($fp)
	sw $t0, -2880($fp)
	lw $t0, -492($fp)
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	li $t0, 4
	lw $t1, -2888($fp)
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	lw $t1, 0($t0)
	sw $t1, -2900($fp)
	lw $t1, -2872($fp)
	lw $t2, -2900($fp)
	bne $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -2868($fp)
label537:
	lw $ra, -4($fp)
	lw $v0, -2868($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label538:
	li $t0, 0
	sw $t0, -2904($fp)
	lw $t0, -1740($fp)
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label541:
	li $t0, 1
	sw $t0, -2904($fp)
label542:
	li $t0, 0
	sw $t0, -2912($fp)
	addi $t0, $fp, -72
	sw $t0, -2916($fp)
	lw $t0, -1164($fp)
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
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -2912($fp)
label544:
	lw $t0, -2904($fp)
	lw $t1, -2912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label540
label539:
	li $t0, 5907
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	sw $t0, -2948($fp)
	li $t0, 8239
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	li $t0, 0
	sw $t0, -2968($fp)
	lw $t0, -1428($fp)
	sw $t0, -2972($fp)
	li $t0, 8338
	sw $t0, -2976($fp)
	lw $t1, -2972($fp)
	lw $t2, -2976($fp)
	beq $t1, $t2, label550
	j label552
label552:
	lw $t0, -456($fp)
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -2968($fp)
label551:
	li $t0, 0
	sw $t0, -2984($fp)
	lw $t0, -2944($fp)
	sw $t0, -2988($fp)
	li $t0, 61803
	sw $t0, -2992($fp)
	lw $t1, -2988($fp)
	lw $t2, -2992($fp)
	beq $t1, $t2, label553
	j label555
label555:
	li $t0, 8281
	sw $t0, -2996($fp)
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -2984($fp)
label554:
	li $t0, 0
	sw $t0, -3000($fp)
	lw $t0, 8($fp)
	sw $t0, -3004($fp)
	li $t0, 30927
	sw $t0, -3008($fp)
	lw $t0, -3004($fp)
	lw $t1, -3008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3012($fp)
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label558
label558:
	lw $t0, 8($fp)
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -3000($fp)
label557:
	lw $t0, -384($fp)
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -3024($fp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3028($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3028($fp)
	sub $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -1224($fp)
	sw $t0, -3036($fp)
	li $t0, 0
	lw $t1, -3036($fp)
	sub $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3032($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 12437
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label559
label559:
	li $t0, 1
	sw $t0, -3048($fp)
label560:
	lw $t1, -3044($fp)
	lw $t2, -3048($fp)
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -2964($fp)
label549:
	lw $t0, -900($fp)
	sw $t0, -3056($fp)
	lw $t0, -744($fp)
	sw $t0, -3060($fp)
	lw $t0, -3056($fp)
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	li $t0, 0
	lw $t1, -3064($fp)
	sub $t0, $t0, $t1
	sw $t0, -3068($fp)
	li $t0, 49643
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	sub $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t1, -2964($fp)
	lw $t2, -3076($fp)
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 0
	sw $t0, -3080($fp)
	li $t0, 0
	sw $t0, -3084($fp)
	addi $t0, $fp, -108
	sw $t0, -3088($fp)
	li $t0, 0
	sw $t0, -3092($fp)
	li $t0, 34238
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label567:
	li $t0, 56117
	sw $t0, -3100($fp)
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -3092($fp)
label566:
	li $t0, 4
	lw $t1, -3092($fp)
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, -3088($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, 0($t0)
	sw $t1, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label563
label563:
	li $t0, 1
	sw $t0, -3084($fp)
label564:
	li $t0, 0
	sw $t0, -3116($fp)
	lw $t0, -1416($fp)
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label568:
	li $t0, 1
	sw $t0, -3116($fp)
label569:
	lw $t1, -3084($fp)
	lw $t2, -3116($fp)
	bge $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -3080($fp)
label562:
	j label547
label546:
	li $t0, 0
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	lw $t0, -684($fp)
	sw $t0, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label573
label573:
	li $t0, 1
	sw $t0, -3128($fp)
label574:
	li $t0, 0
	lw $t1, -3128($fp)
	sub $t0, $t0, $t1
	sw $t0, -3136($fp)
	li $t0, 54208
	sw $t0, -3140($fp)
	lw $t0, -540($fp)
	sw $t0, -3144($fp)
	lw $t0, -3140($fp)
	lw $t1, -3144($fp)
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -1152($fp)
	sw $t0, -3152($fp)
	lw $t0, -3148($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3156($fp)
	li $t0, 0
	sw $t0, -3160($fp)
	lw $t0, -900($fp)
	sw $t0, -3164($fp)
	li $t0, 51369
	sw $t0, -3168($fp)
	lw $t0, -3164($fp)
	lw $t1, -3168($fp)
	mul $t0, $t0, $t1
	sw $t0, -3172($fp)
	li $t0, 0
	sw $t0, -3176($fp)
	addi $t0, $fp, -32
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
	li $t0, 396
	sw $t0, -3200($fp)
	lw $t1, -3196($fp)
	lw $t2, -3200($fp)
	bgt $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -3176($fp)
label578:
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 45087
	sw $t0, -3208($fp)
	li $t0, 2182
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -768($fp)
	sw $t0, -3220($fp)
	lw $t1, -3216($fp)
	lw $t2, -3220($fp)
	blt $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -3204($fp)
label580:
	addi $t0, $fp, -72
	sw $t0, -3224($fp)
	lw $t0, -744($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3244($fp)
	addi $sp, $sp, 20
	lw $t0, -1416($fp)
	sw $t0, -3248($fp)
	lw $t1, -3244($fp)
	lw $t2, -3248($fp)
	beq $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -3160($fp)
label576:
	li $t0, 0
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -1188($fp)
	sw $t0, -3260($fp)
	lw $t0, -2956($fp)
	sw $t0, -3264($fp)
	lw $t1, -3260($fp)
	lw $t2, -3264($fp)
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -3256($fp)
label584:
	lw $t0, -1728($fp)
	sw $t0, -3268($fp)
	lw $t1, -3256($fp)
	lw $t2, -3268($fp)
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -3252($fp)
label582:
	li $t0, 0
	sw $t0, -3272($fp)
	addi $t0, $fp, -36
	sw $t0, -3276($fp)
	lw $t0, -1128($fp)
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
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label585:
	li $t0, 1
	sw $t0, -3272($fp)
label586:
	addi $sp, $sp, -4
	lw $t0, -3136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3296($fp)
	addi $sp, $sp, 24
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label572:
	lw $t0, -1164($fp)
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -3124($fp)
label571:
label547:
	lw $t0, -2944($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2956($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -3312($fp)
	li $t0, 0
	lw $t1, -3312($fp)
	sub $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $ra, -4($fp)
	lw $v0, -3316($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 50123
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -3344($fp)
	li $t0, 15114
	sw $t0, -3348($fp)
	addi $t0, $fp, -3332
	sw $t0, -3352($fp)
	li $t0, 0
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3352($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3348($fp)
	lw $t1, -3364($fp)
	sw $t0, 0($t1)
	lw $t0, -3364($fp)
	lw $t1, 0($t0)
	sw $t1, -3368($fp)
	li $t0, 44343
	sw $t0, -3372($fp)
	addi $t0, $fp, -3332
	sw $t0, -3376($fp)
	li $t0, 1
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3376($fp)
	lw $t1, -3384($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3372($fp)
	lw $t1, -3388($fp)
	sw $t0, 0($t1)
	lw $t0, -3388($fp)
	lw $t1, 0($t0)
	sw $t1, -3392($fp)
	li $t0, 41145
	sw $t0, -3396($fp)
	addi $t0, $fp, -3332
	sw $t0, -3400($fp)
	li $t0, 2
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
	li $t0, 34243
	sw $t0, -3420($fp)
	addi $t0, $fp, -3332
	sw $t0, -3424($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -3444($fp)
	li $t0, 47505
	sw $t0, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	lw $t0, -3340($fp)
	sw $t0, -3456($fp)
	li $t0, 25629
	sw $t0, -3460($fp)
	lw $t0, -3456($fp)
	lw $t1, -3460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3464($fp)
	lw $t1, -3464($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label591
label592:
	li $t0, 50900
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -3452($fp)
label591:
	li $t0, 47743
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -3476($fp)
	lw $t0, -360($fp)
	sw $t0, -3480($fp)
	lw $t0, -1752($fp)
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -3488($fp)
	addi $sp, $sp, -4
	lw $t0, -3448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3488($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3492($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3492($fp)
	sub $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label588
label589:
	addi $t0, $fp, -3332
	sw $t0, -3500($fp)
	li $t0, 1
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
	li $t0, 37118
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -3444($fp)
label588:
	j label538
label540:
label593:
	lw $t0, -1128($fp)
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 0
	sw $t0, -3532($fp)
	li $t0, 44371
	sw $t0, -3536($fp)
	lw $t0, -1224($fp)
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3544($fp)
	li $t0, 0
	lw $t1, -3544($fp)
	sub $t0, $t0, $t1
	sw $t0, -3548($fp)
	li $t0, 42311
	sw $t0, -3552($fp)
	addi $t0, $fp, -40
	sw $t0, -3556($fp)
	lw $t0, -720($fp)
	sw $t0, -3560($fp)
	li $t0, 4
	lw $t1, -3560($fp)
	mul $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	lw $t1, 0($t0)
	sw $t1, -3572($fp)
	li $t0, 0
	lw $t1, -3572($fp)
	sub $t0, $t0, $t1
	sw $t0, -3576($fp)
	li $t0, 0
	sw $t0, -3580($fp)
	lw $t0, -648($fp)
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label600
label601:
	li $t0, 31664
	sw $t0, -3588($fp)
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label600
label600:
	lw $t0, -900($fp)
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -3580($fp)
label599:
	li $t0, 64819
	sw $t0, -3596($fp)
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3600($fp)
	addi $sp, $sp, 24
	lw $t0, -420($fp)
	sw $t0, -3604($fp)
	lw $t0, -3600($fp)
	lw $t1, -3604($fp)
	mul $t0, $t0, $t1
	sw $t0, -3608($fp)
	addi $t0, $fp, -40
	sw $t0, -3612($fp)
	li $t0, 0
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
	li $t0, 15176
	sw $t0, -3632($fp)
	lw $t0, -1164($fp)
	sw $t0, -3636($fp)
	lw $t0, -3632($fp)
	lw $t1, -3636($fp)
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	addi $t0, $fp, -40
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
	lw $t0, -564($fp)
	sw $t0, -3664($fp)
	lw $t0, -2836($fp)
	sw $t0, -3668($fp)
	lw $t0, -3664($fp)
	lw $t1, -3668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3672($fp)
	li $t0, 6894
	sw $t0, -3676($fp)
	lw $t0, -3672($fp)
	lw $t1, -3676($fp)
	sub $t0, $t0, $t1
	sw $t0, -3680($fp)
	li $t0, 0
	sw $t0, -3684($fp)
	lw $t0, -2848($fp)
	sw $t0, -3688($fp)
	lw $t0, -1164($fp)
	sw $t0, -3692($fp)
	lw $t1, -3688($fp)
	lw $t2, -3692($fp)
	beq $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -3684($fp)
label603:
	li $t0, 0
	sw $t0, -3696($fp)
	lw $t0, -1200($fp)
	sw $t0, -3700($fp)
	lw $t1, -3700($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label606
label606:
	li $t0, 43026
	sw $t0, -3704($fp)
	lw $t1, -3704($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -3696($fp)
label605:
	addi $sp, $sp, -4
	lw $t0, -3640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3696($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3708($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3712($fp)
	li $t0, 64191
	sw $t0, -3716($fp)
	lw $t0, -744($fp)
	sw $t0, -3720($fp)
	lw $t1, -3716($fp)
	lw $t2, -3720($fp)
	bne $t1, $t2, label609
	j label608
label609:
	li $t0, 23697
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -3712($fp)
label608:
	addi $sp, $sp, -4
	lw $t0, -3608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3712($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3728($fp)
	addi $sp, $sp, 20
	lw $t1, -3728($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label596:
	li $t0, 1
	sw $t0, -3532($fp)
label597:
	j label593
label595:
	li $t0, 33846
	sw $t0, -3732($fp)
	lw $t0, -1404($fp)
	sw $t0, -3736($fp)
	li $t0, 0
	lw $t1, -3736($fp)
	sub $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3732($fp)
	lw $t1, -3740($fp)
	add $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t1, -3744($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 26790
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	sw $t0, -3756($fp)
	li $t0, 32635
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	sw $t0, -3768($fp)
	li $t0, 34243
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -3780($fp)
	li $t0, 12624
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	sw $t0, -3792($fp)
	li $t0, 21307
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -3804($fp)
	li $t0, 18830
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3816($fp)
	li $t0, 27738
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	sw $t0, -3828($fp)
	li $t0, 115
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	sw $t0, -3840($fp)
	li $t0, 59976
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	sw $t0, -3852($fp)
	li $t0, 61981
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	sw $t0, -3864($fp)
	li $t0, 47858
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	sw $t0, -3876($fp)
	li $t0, 20069
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	sw $t0, -3888($fp)
	li $t0, 47345
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	sw $t0, -3900($fp)
	li $t0, 29827
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	sw $t0, -3912($fp)
	li $t0, 61285
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	sw $t0, -3924($fp)
	li $t0, 35942
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -3936($fp)
	li $t0, 1410
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	sw $t0, -3948($fp)
	li $t0, 59941
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	sw $t0, -3960($fp)
label613:
	addi $t0, $fp, -136
	sw $t0, -3964($fp)
	lw $t0, -1404($fp)
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
	lw $t0, -3932($fp)
	sw $t0, -3988($fp)
	lw $t1, -3988($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -3984($fp)
label618:
	li $t0, 0
	lw $t1, -3984($fp)
	sub $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3980($fp)
	lw $t1, -3992($fp)
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	li $t0, 0
	lw $t1, -3996($fp)
	sub $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t1, -4000($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label615
label616:
	li $t0, 0
	sw $t0, -4004($fp)
	li $t0, 0
	sw $t0, -4008($fp)
	li $t0, 59639
	sw $t0, -4012($fp)
	lw $t0, -1416($fp)
	sw $t0, -4016($fp)
	lw $t1, -4012($fp)
	lw $t2, -4016($fp)
	blt $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -4008($fp)
label622:
	lw $t0, -3800($fp)
	sw $t0, -4020($fp)
	lw $t1, -4008($fp)
	lw $t2, -4020($fp)
	beq $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -4004($fp)
label620:
	li $t0, 0
	sw $t0, -4024($fp)
	lw $t0, -1164($fp)
	sw $t0, -4028($fp)
	li $t0, 44436
	sw $t0, -4032($fp)
	lw $t1, -4028($fp)
	lw $t2, -4032($fp)
	bge $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -4024($fp)
label624:
	lw $t1, -4004($fp)
	lw $t2, -4024($fp)
	beq $t1, $t2, label614
	j label615
label614:
	li $t0, 0
	sw $t0, -4036($fp)
	li $t0, 1299
	sw $t0, -4040($fp)
	lw $t0, -1152($fp)
	sw $t0, -4044($fp)
	li $t0, 0
	lw $t1, -4044($fp)
	sub $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4040($fp)
	lw $t1, -4048($fp)
	add $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label626
label628:
	lw $t0, -1176($fp)
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label626
label627:
	li $t0, 48727
	sw $t0, -4060($fp)
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -4036($fp)
label626:
	j label613
label615:
	addi $t0, $fp, -40
	sw $t0, -4064($fp)
	lw $t0, -3872($fp)
	sw $t0, -4068($fp)
	li $t0, 4
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	lw $t1, 0($t0)
	sw $t1, -4080($fp)
	lw $t0, -1140($fp)
	sw $t0, -4084($fp)
	lw $t0, -4080($fp)
	lw $t1, -4084($fp)
	mul $t0, $t0, $t1
	sw $t0, -4088($fp)
	li $t0, 0
	sw $t0, -4092($fp)
	lw $t0, -3860($fp)
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label634
label634:
	lw $t0, -648($fp)
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -4092($fp)
label633:
	addi $t0, $fp, -36
	sw $t0, -4104($fp)
	lw $t0, -660($fp)
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
	li $t0, 18193
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -4128($fp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4128($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4132($fp)
	addi $sp, $sp, 20
	lw $t0, -4132($fp)
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	lw $t0, -564($fp)
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label635
label635:
	addi $t0, $fp, -72
	sw $t0, -4144($fp)
	li $t0, 0
	sw $t0, -4148($fp)
	lw $t0, -1728($fp)
	sw $t0, -4152($fp)
	li $t0, 0
	sw $t0, -4156($fp)
	addi $t0, $fp, -72
	sw $t0, -4160($fp)
	lw $t0, -720($fp)
	sw $t0, -4164($fp)
	li $t0, 4
	lw $t1, -4164($fp)
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	lw $t1, 0($t0)
	sw $t1, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	li $t0, 28105
	sw $t0, -4184($fp)
	lw $t0, -1164($fp)
	sw $t0, -4188($fp)
	lw $t1, -4184($fp)
	lw $t2, -4188($fp)
	beq $t1, $t2, label642
	j label644
label644:
	li $t0, 44760
	sw $t0, -4192($fp)
	lw $t1, -4192($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -4180($fp)
label643:
	li $t0, 0
	sw $t0, -4196($fp)
	li $t0, 48651
	sw $t0, -4200($fp)
	lw $t1, -4200($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label645
label645:
	li $t0, 1
	sw $t0, -4196($fp)
label646:
	lw $t0, 8($fp)
	sw $t0, -4204($fp)
	lw $t0, -4196($fp)
	lw $t1, -4204($fp)
	mul $t0, $t0, $t1
	sw $t0, -4208($fp)
	li $t0, 33665
	sw $t0, -4212($fp)
	li $t0, 48315
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	mul $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -3836($fp)
	sw $t0, -4224($fp)
	lw $t0, -4220($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	addi $sp, $sp, -4
	lw $t0, -4176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4228($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4232($fp)
	addi $sp, $sp, 20
	li $t0, 48536
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	sw $t0, -4240($fp)
	li $t0, 0
	sw $t0, -4244($fp)
	li $t0, 27229
	sw $t0, -4248($fp)
	li $t0, 14835
	sw $t0, -4252($fp)
	lw $t1, -4248($fp)
	lw $t2, -4252($fp)
	blt $t1, $t2, label647
	j label649
label649:
	li $t0, 20577
	sw $t0, -4256($fp)
	lw $t1, -4256($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -4244($fp)
label648:
	li $t0, 0
	sw $t0, -4260($fp)
	li $t0, 7953
	sw $t0, -4264($fp)
	lw $t0, -720($fp)
	sw $t0, -4268($fp)
	lw $t1, -4264($fp)
	lw $t2, -4268($fp)
	bne $t1, $t2, label650
	j label651
label650:
	li $t0, 1
	sw $t0, -4260($fp)
label651:
	lw $t0, 8($fp)
	sw $t0, -4272($fp)
	lw $t0, -3764($fp)
	sw $t0, -4276($fp)
	lw $t0, -4272($fp)
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	li $t0, 0
	lw $t1, -4280($fp)
	sub $t0, $t0, $t1
	sw $t0, -4284($fp)
	li $t0, 0
	sw $t0, -4288($fp)
	lw $t0, -708($fp)
	sw $t0, -4292($fp)
	lw $t1, -4292($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label653
label655:
	lw $t0, -3836($fp)
	sw $t0, -4296($fp)
	lw $t1, -4296($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label654:
	li $t0, 46128
	sw $t0, -4300($fp)
	lw $t1, -4300($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label653
label652:
	li $t0, 1
	sw $t0, -4288($fp)
label653:
	li $t0, 0
	sw $t0, -4304($fp)
	li $t0, 60130
	sw $t0, -4308($fp)
	lw $t1, -4308($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label656
label656:
	li $t0, 1
	sw $t0, -4304($fp)
label657:
	li $t0, 0
	sw $t0, -4312($fp)
	li $t0, 46698
	sw $t0, -4316($fp)
	lw $t0, -1128($fp)
	sw $t0, -4320($fp)
	lw $t0, -4316($fp)
	lw $t1, -4320($fp)
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label660
label660:
	lw $t0, -3896($fp)
	sw $t0, -4328($fp)
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -4312($fp)
label659:
	li $t0, 0
	sw $t0, -4332($fp)
	li $t0, 0
	sw $t0, -4336($fp)
	lw $t0, -768($fp)
	sw $t0, -4340($fp)
	lw $t0, -3884($fp)
	sw $t0, -4344($fp)
	lw $t1, -4340($fp)
	lw $t2, -4344($fp)
	bgt $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -4336($fp)
label664:
	li $t0, 12281
	sw $t0, -4348($fp)
	lw $t1, -4336($fp)
	lw $t2, -4348($fp)
	bgt $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -4332($fp)
label662:
	addi $sp, $sp, -4
	lw $t0, -4284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4332($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4352($fp)
	addi $sp, $sp, 24
	lw $t0, -768($fp)
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -708($fp)
	sw $t0, -4364($fp)
	addi $sp, $sp, -4
	lw $t0, -4244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4368($fp)
	addi $sp, $sp, 20
	li $t0, 15759
	sw $t0, -4372($fp)
	addi $sp, $sp, -4
	lw $t0, -4232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4376($fp)
	addi $sp, $sp, 20
	li $t0, 30973
	sw $t0, -4380($fp)
	lw $t1, -4376($fp)
	lw $t2, -4380($fp)
	bne $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -4156($fp)
label641:
	li $t0, 4387
	sw $t0, -4384($fp)
	li $t0, 0
	sw $t0, -4388($fp)
	li $t0, 16475
	sw $t0, -4392($fp)
	li $t0, 46153
	sw $t0, -4396($fp)
	lw $t0, -4392($fp)
	lw $t1, -4396($fp)
	sub $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t1, -4400($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label667
label667:
	lw $t0, -3836($fp)
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -4388($fp)
label666:
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4388($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4408($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4408($fp)
	sub $t0, $t0, $t1
	sw $t0, -4412($fp)
	li $t0, 48174
	sw $t0, -4416($fp)
	lw $t1, -4412($fp)
	lw $t2, -4416($fp)
	beq $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -4148($fp)
label639:
	li $t0, 4
	lw $t1, -4148($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	j label637
label636:
	li $t0, 0
	sw $t0, -4432($fp)
	lw $t0, -456($fp)
	sw $t0, -4436($fp)
	li $t0, 41111
	sw $t0, -4440($fp)
	lw $t0, -4436($fp)
	lw $t1, -4440($fp)
	mul $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -1200($fp)
	sw $t0, -4448($fp)
	lw $t0, -4444($fp)
	lw $t1, -4448($fp)
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	li $t0, 0
	sw $t0, -4456($fp)
	lw $t0, -756($fp)
	sw $t0, -4460($fp)
	li $t0, 0
	sw $t0, -4464($fp)
	li $t0, 0
	sw $t0, -4468($fp)
	li $t0, 62211
	sw $t0, -4472($fp)
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label675
label675:
	li $t0, 1
	sw $t0, -4468($fp)
label676:
	li $t0, 38329
	sw $t0, -4476($fp)
	lw $t1, -4468($fp)
	lw $t2, -4476($fp)
	bge $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -4464($fp)
label674:
	li $t0, 62512
	sw $t0, -4480($fp)
	li $t0, 0
	sw $t0, -4484($fp)
	lw $t0, -900($fp)
	sw $t0, -4488($fp)
	lw $t1, -4488($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label677:
	li $t0, 1
	sw $t0, -4484($fp)
label678:
	li $t0, 0
	lw $t1, -4484($fp)
	sub $t0, $t0, $t1
	sw $t0, -4492($fp)
	addi $sp, $sp, -4
	lw $t0, -4460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4496($fp)
	addi $sp, $sp, 20
	lw $t1, -4496($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label672:
	li $t0, 56616
	sw $t0, -4500($fp)
	lw $t1, -4500($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -4456($fp)
label671:
	li $t0, 43924
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -4508($fp)
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 60801
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -4520($fp)
	li $t0, 26570
	sw $t0, -4524($fp)
	lw $t0, -720($fp)
	sw $t0, -4528($fp)
	lw $t0, -4524($fp)
	lw $t1, -4528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4532($fp)
	lw $t0, 8($fp)
	sw $t0, -4536($fp)
	lw $t0, -4532($fp)
	lw $t1, -4536($fp)
	sub $t0, $t0, $t1
	sw $t0, -4540($fp)
	addi $sp, $sp, -4
	lw $t0, -4520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4544($fp)
	addi $sp, $sp, 12
	lw $t0, -1740($fp)
	sw $t0, -4548($fp)
	lw $t1, -4544($fp)
	lw $t2, -4548($fp)
	beq $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -4512($fp)
label680:
	addi $sp, $sp, -4
	lw $t0, -4452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4552($fp)
	addi $sp, $sp, 20
	lw $t1, -4552($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label668
label668:
	li $t0, 1
	sw $t0, -4432($fp)
label669:
	li $t0, 0
	sw $t0, -4556($fp)
	li $t0, 39628
	sw $t0, -4560($fp)
	lw $t1, -4560($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -4556($fp)
label682:
	lw $t0, -4432($fp)
	lw $t1, -4556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4564($fp)
	li $t0, 0
	sw $t0, -4568($fp)
	li $t0, 39807
	sw $t0, -4572($fp)
	lw $t1, -4572($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label683
label683:
	li $t0, 1
	sw $t0, -4568($fp)
label684:
	lw $t0, -4564($fp)
	lw $t1, -4568($fp)
	mul $t0, $t0, $t1
	sw $t0, -4576($fp)
label637:
label630:
	lw $t0, -3752($fp)
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3764($fp)
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3776($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3788($fp)
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3800($fp)
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3812($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3824($fp)
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3836($fp)
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3848($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3860($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3872($fp)
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3884($fp)
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3896($fp)
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3908($fp)
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3920($fp)
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3932($fp)
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3944($fp)
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3956($fp)
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4652($fp)
	addi $t0, $fp, -72
	sw $t0, -4656($fp)
	lw $t0, -672($fp)
	sw $t0, -4660($fp)
	li $t0, 4
	lw $t1, -4660($fp)
	mul $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	lw $t1, -4656($fp)
	add $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	lw $t1, 0($t0)
	sw $t1, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label687
label687:
	lw $t0, -648($fp)
	sw $t0, -4676($fp)
	lw $t1, -4676($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -4652($fp)
label686:
	addi $t0, $fp, -32
	sw $t0, -4680($fp)
	lw $t0, -756($fp)
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
	li $t0, 0
	sw $t0, -4700($fp)
	li $t0, 0
	sw $t0, -4704($fp)
	lw $t0, -3896($fp)
	sw $t0, -4708($fp)
	lw $t1, -4708($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label690
label690:
	li $t0, 1
	sw $t0, -4704($fp)
label691:
	lw $t0, -528($fp)
	sw $t0, -4712($fp)
	lw $t0, -4704($fp)
	lw $t1, -4712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4716($fp)
	lw $t0, -480($fp)
	sw $t0, -4720($fp)
	addi $sp, $sp, -4
	lw $t0, -4716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4724($fp)
	addi $sp, $sp, 12
	li $t0, 20425
	sw $t0, -4728($fp)
	lw $t1, -4724($fp)
	lw $t2, -4728($fp)
	ble $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -4700($fp)
label689:
	lw $t0, -1164($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -4736($fp)
	addi $sp, $sp, -4
	lw $t0, -4652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4740($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4744($fp)
	lw $t0, -732($fp)
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label694
label694:
	lw $t0, -744($fp)
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -4744($fp)
label693:
	li $t0, 56104
	sw $t0, -4756($fp)
	lw $t0, -696($fp)
	sw $t0, -4760($fp)
	lw $t0, -4756($fp)
	lw $t1, -4760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4764($fp)
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 0
	sw $t0, -4772($fp)
	lw $t0, -1728($fp)
	sw $t0, -4776($fp)
	li $t0, 59304
	sw $t0, -4780($fp)
	lw $t1, -4776($fp)
	lw $t2, -4780($fp)
	ble $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -4772($fp)
label698:
	lw $t0, -1752($fp)
	sw $t0, -4784($fp)
	lw $t1, -4772($fp)
	lw $t2, -4784($fp)
	beq $t1, $t2, label695
	j label696
label695:
	li $t0, 1
	sw $t0, -4768($fp)
label696:
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4788($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -4788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4792($fp)
	li $t0, 63691
	sw $t0, -4796($fp)
	lw $t1, -4796($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label702
label702:
	li $t0, 1
	sw $t0, -4792($fp)
label703:
	lw $t0, -1728($fp)
	sw $t0, -4800($fp)
	lw $t0, -1416($fp)
	sw $t0, -4804($fp)
	lw $t0, -4800($fp)
	lw $t1, -4804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4808($fp)
	lw $t0, -360($fp)
	sw $t0, -4812($fp)
	lw $t0, -4808($fp)
	lw $t1, -4812($fp)
	mul $t0, $t0, $t1
	sw $t0, -4816($fp)
	li $t0, 32707
	sw $t0, -4820($fp)
	lw $t0, -4816($fp)
	lw $t1, -4820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4824($fp)
	lw $t0, -4792($fp)
	lw $t1, -4824($fp)
	sub $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label700
label699:
	lw $t0, -456($fp)
	sw $t0, -4832($fp)
	li $t0, 60247
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -4840($fp)
	li $t0, 0
	sw $t0, -4844($fp)
	li $t0, 0
	sw $t0, -4848($fp)
	li $t0, 50213
	sw $t0, -4852($fp)
	lw $t1, -4852($fp)
	li $t2, 0
	bne $t1, $t2, label710
	j label709
label709:
	li $t0, 1
	sw $t0, -4848($fp)
label710:
	li $t0, 0
	sw $t0, -4856($fp)
	lw $t0, -444($fp)
	sw $t0, -4860($fp)
	lw $t0, -1200($fp)
	sw $t0, -4864($fp)
	lw $t0, -4860($fp)
	lw $t1, -4864($fp)
	add $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label713
label713:
	li $t0, 44710
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -4856($fp)
label712:
	li $t0, 0
	sw $t0, -4876($fp)
	lw $t0, -1428($fp)
	sw $t0, -4880($fp)
	lw $t0, -3764($fp)
	sw $t0, -4884($fp)
	lw $t1, -4880($fp)
	lw $t2, -4884($fp)
	blt $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -4876($fp)
label715:
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4888($fp)
	addi $sp, $sp, 12
	li $t0, 52058
	sw $t0, -4892($fp)
	li $t0, 53920
	sw $t0, -4896($fp)
	lw $t0, -4892($fp)
	lw $t1, -4896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4900($fp)
	lw $t0, -552($fp)
	sw $t0, -4904($fp)
	lw $t0, -4900($fp)
	lw $t1, -4904($fp)
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	li $t0, 0
	sw $t0, -4912($fp)
	lw $t0, -1164($fp)
	sw $t0, -4916($fp)
	lw $t0, -432($fp)
	sw $t0, -4920($fp)
	lw $t1, -4916($fp)
	lw $t2, -4920($fp)
	bne $t1, $t2, label716
	j label718
label718:
	li $t0, 24285
	sw $t0, -4924($fp)
	lw $t1, -4924($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -4912($fp)
label717:
	li $t0, 0
	sw $t0, -4928($fp)
	lw $t0, -1416($fp)
	sw $t0, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label721
label721:
	lw $t0, -1224($fp)
	sw $t0, -4936($fp)
	lw $t1, -4936($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -4928($fp)
label720:
	li $t0, 0
	sw $t0, -4940($fp)
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 50013
	sw $t0, -4948($fp)
	li $t0, 58290
	sw $t0, -4952($fp)
	lw $t0, -4948($fp)
	lw $t1, -4952($fp)
	add $t0, $t0, $t1
	sw $t0, -4956($fp)
	li $t0, 63352
	sw $t0, -4960($fp)
	lw $t1, -4956($fp)
	lw $t2, -4960($fp)
	bne $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -4944($fp)
label726:
	lw $t0, -672($fp)
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	sw $t0, -4968($fp)
	li $t0, 0
	sw $t0, -4972($fp)
	li $t0, 23724
	sw $t0, -4976($fp)
	lw $t0, -456($fp)
	sw $t0, -4980($fp)
	lw $t0, -4976($fp)
	lw $t1, -4980($fp)
	add $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t1, -4984($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label729
label729:
	lw $t0, -1740($fp)
	sw $t0, -4988($fp)
	lw $t1, -4988($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -4972($fp)
label728:
	li $t0, 0
	sw $t0, -4992($fp)
	li $t0, 0
	sw $t0, -4996($fp)
	li $t0, 58933
	sw $t0, -5000($fp)
	lw $t1, -5000($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label732
label732:
	li $t0, 1
	sw $t0, -4996($fp)
label733:
	li $t0, 17179
	sw $t0, -5004($fp)
	lw $t1, -4996($fp)
	lw $t2, -5004($fp)
	bge $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -4992($fp)
label731:
	li $t0, 0
	sw $t0, -5008($fp)
	lw $t0, -1188($fp)
	sw $t0, -5012($fp)
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label736
label737:
	li $t0, 20504
	sw $t0, -5016($fp)
	lw $t1, -5016($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label736
label736:
	li $t0, 50931
	sw $t0, -5020($fp)
	lw $t1, -5020($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -5008($fp)
label735:
	li $t0, 61957
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -5028($fp)
	li $t0, 7007
	sw $t0, -5032($fp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5036($fp)
	addi $sp, $sp, 12
	lw $t0, -1416($fp)
	sw $t0, -5040($fp)
	lw $t0, -5036($fp)
	lw $t1, -5040($fp)
	sub $t0, $t0, $t1
	sw $t0, -5044($fp)
	li $t0, 35387
	sw $t0, -5048($fp)
	li $t0, 25239
	sw $t0, -5052($fp)
	lw $t0, -5048($fp)
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, 8($fp)
	sw $t0, -5060($fp)
	lw $t0, -5056($fp)
	lw $t1, -5060($fp)
	mul $t0, $t0, $t1
	sw $t0, -5064($fp)
	li $t0, 0
	sw $t0, -5068($fp)
	lw $t0, -660($fp)
	sw $t0, -5072($fp)
	lw $t0, -3836($fp)
	sw $t0, -5076($fp)
	lw $t0, -5072($fp)
	lw $t1, -5076($fp)
	sub $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t1, -5080($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label740
label740:
	li $t0, 24368
	sw $t0, -5084($fp)
	lw $t1, -5084($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -5068($fp)
label739:
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5088($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5092($fp)
	addi $sp, $sp, 20
	lw $t1, -5092($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label724
label724:
	lw $t0, -900($fp)
	sw $t0, -5096($fp)
	lw $t1, -5096($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -4940($fp)
label723:
	lw $t0, -492($fp)
	sw $t0, -5100($fp)
	lw $t0, -1200($fp)
	sw $t0, -5104($fp)
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	sub $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -648($fp)
	sw $t0, -5112($fp)
	lw $t0, -5108($fp)
	lw $t1, -5112($fp)
	sub $t0, $t0, $t1
	sw $t0, -5116($fp)
	li $t0, 0
	sw $t0, -5120($fp)
	lw $t0, -648($fp)
	sw $t0, -5124($fp)
	li $t0, 59802
	sw $t0, -5128($fp)
	lw $t1, -5124($fp)
	lw $t2, -5128($fp)
	bge $t1, $t2, label743
	j label742
label743:
	lw $t0, -1224($fp)
	sw $t0, -5132($fp)
	lw $t1, -5132($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -5120($fp)
label742:
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5136($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5136($fp)
	sub $t0, $t0, $t1
	sw $t0, -5140($fp)
	addi $sp, $sp, -4
	lw $t0, -4888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5140($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5144($fp)
	addi $sp, $sp, 20
	lw $t0, -1728($fp)
	sw $t0, -5148($fp)
	li $t0, 56162
	sw $t0, -5152($fp)
	lw $t0, -5148($fp)
	lw $t1, -5152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5156($fp)
	lw $t0, -372($fp)
	sw $t0, -5160($fp)
	lw $t0, -5156($fp)
	lw $t1, -5160($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	li $t0, 61799
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -5172($fp)
	lw $t0, -468($fp)
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -5180($fp)
	addi $sp, $sp, -4
	lw $t0, -5144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5184($fp)
	addi $sp, $sp, 20
	lw $t0, -3776($fp)
	sw $t0, -5188($fp)
	lw $t0, -5184($fp)
	lw $t1, -5188($fp)
	mul $t0, $t0, $t1
	sw $t0, -5192($fp)
	li $t0, 0
	sw $t0, -5196($fp)
	li $t0, 0
	sw $t0, -5200($fp)
	lw $t0, -360($fp)
	sw $t0, -5204($fp)
	lw $t1, -5204($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label746
label746:
	li $t0, 1
	sw $t0, -5200($fp)
label747:
	li $t0, 11150
	sw $t0, -5208($fp)
	lw $t1, -5200($fp)
	lw $t2, -5208($fp)
	beq $t1, $t2, label744
	j label745
label744:
	li $t0, 1
	sw $t0, -5196($fp)
label745:
	li $t0, 0
	sw $t0, -5212($fp)
	li $t0, 0
	sw $t0, -5216($fp)
	li $t0, 28133
	sw $t0, -5220($fp)
	li $t0, 7847
	sw $t0, -5224($fp)
	lw $t1, -5220($fp)
	lw $t2, -5224($fp)
	bne $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -5216($fp)
label751:
	lw $t0, -3752($fp)
	sw $t0, -5228($fp)
	lw $t1, -5216($fp)
	lw $t2, -5228($fp)
	beq $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -5212($fp)
label749:
	li $t0, 0
	sw $t0, -5232($fp)
	li $t0, 52806
	sw $t0, -5236($fp)
	li $t0, 28150
	sw $t0, -5240($fp)
	lw $t1, -5236($fp)
	lw $t2, -5240($fp)
	bgt $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -5232($fp)
label753:
	addi $sp, $sp, -4
	lw $t0, -5212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5232($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5244($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5248($fp)
	lw $t0, 8($fp)
	sw $t0, -5252($fp)
	li $t0, 921
	sw $t0, -5256($fp)
	lw $t1, -5252($fp)
	lw $t2, -5256($fp)
	beq $t1, $t2, label756
	j label755
label756:
	li $t0, 13298
	sw $t0, -5260($fp)
	lw $t1, -5260($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -5248($fp)
label755:
	addi $sp, $sp, -4
	lw $t0, -4848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5264($fp)
	addi $sp, $sp, 24
	lw $t0, -1188($fp)
	sw $t0, -5268($fp)
	lw $t1, -5264($fp)
	lw $t2, -5268($fp)
	bgt $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -4844($fp)
label708:
	li $t0, 44853
	sw $t0, -5272($fp)
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5272($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5276($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -5280($fp)
	lw $t0, -3788($fp)
	sw $t0, -5284($fp)
	lw $t1, -5284($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label757
label757:
	li $t0, 1
	sw $t0, -5280($fp)
label758:
	lw $t0, -5276($fp)
	lw $t1, -5280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5288($fp)
	lw $t1, -5288($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label705
label704:
	addi $t0, $fp, -184
	sw $t0, -5292($fp)
	li $t0, 1
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
	li $t0, 29531
	sw $t0, -5312($fp)
	li $t0, 11880
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	sw $t0, -5320($fp)
	li $t0, 0
	sw $t0, -5324($fp)
	li $t0, 0
	sw $t0, -5328($fp)
	lw $t0, -3812($fp)
	sw $t0, -5332($fp)
	lw $t1, -5332($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label761
label761:
	li $t0, 1
	sw $t0, -5328($fp)
label762:
	lw $t0, -492($fp)
	sw $t0, -5336($fp)
	lw $t1, -5328($fp)
	lw $t2, -5336($fp)
	bgt $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -5324($fp)
label760:
	addi $sp, $sp, -4
	lw $t0, -5308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5324($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5340($fp)
	addi $sp, $sp, 20
	j label706
label705:
	lw $t0, -3956($fp)
	sw $t0, -5344($fp)
	li $t0, 50662
	sw $t0, -5348($fp)
	lw $t0, -5344($fp)
	lw $t1, -5348($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -3932($fp)
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	add $t0, $t0, $t1
	sw $t0, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	li $t0, 0
	sw $t0, -5368($fp)
	lw $t0, -384($fp)
	sw $t0, -5372($fp)
	lw $t0, -3944($fp)
	sw $t0, -5376($fp)
	lw $t0, -5372($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5380($fp)
	li $t0, 29199
	sw $t0, -5384($fp)
	lw $t1, -5380($fp)
	lw $t2, -5384($fp)
	ble $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -5368($fp)
label766:
	li $t0, 0
	sw $t0, -5388($fp)
	addi $t0, $fp, -72
	sw $t0, -5392($fp)
	li $t0, 2
	sw $t0, -5396($fp)
	li $t0, 4
	lw $t1, -5396($fp)
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, -5392($fp)
	add $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	lw $t1, 0($t0)
	sw $t1, -5408($fp)
	lw $t0, 8($fp)
	sw $t0, -5412($fp)
	lw $t1, -5408($fp)
	lw $t2, -5412($fp)
	bgt $t1, $t2, label767
	j label768
label767:
	li $t0, 1
	sw $t0, -5388($fp)
label768:
	li $t0, 0
	sw $t0, -5416($fp)
	lw $t0, -1188($fp)
	sw $t0, -5420($fp)
	lw $t1, -5420($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -5416($fp)
label770:
	lw $t0, -360($fp)
	sw $t0, -5424($fp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5424($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5428($fp)
	addi $sp, $sp, 12
	li $t0, 34933
	sw $t0, -5432($fp)
	lw $t0, -5428($fp)
	lw $t1, -5432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5436($fp)
	li $t0, 0
	sw $t0, -5440($fp)
	li $t0, 0
	sw $t0, -5444($fp)
	lw $t0, -3788($fp)
	sw $t0, -5448($fp)
	li $t0, 24649
	sw $t0, -5452($fp)
	lw $t1, -5448($fp)
	lw $t2, -5452($fp)
	bge $t1, $t2, label773
	j label774
label773:
	li $t0, 1
	sw $t0, -5444($fp)
label774:
	lw $t0, -1152($fp)
	sw $t0, -5456($fp)
	lw $t1, -5444($fp)
	lw $t2, -5456($fp)
	beq $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -5440($fp)
label772:
	addi $sp, $sp, -4
	lw $t0, -5368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5460($fp)
	addi $sp, $sp, 20
	li $t0, 8408
	sw $t0, -5464($fp)
	lw $t1, -5460($fp)
	lw $t2, -5464($fp)
	beq $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -5364($fp)
label764:
	li $t0, 0
	sw $t0, -5468($fp)
	addi $t0, $fp, -52
	sw $t0, -5472($fp)
	li $t0, 1
	sw $t0, -5476($fp)
	li $t0, 4
	lw $t1, -5476($fp)
	mul $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	lw $t1, -5472($fp)
	add $t0, $t0, $t1
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	lw $t1, 0($t0)
	sw $t1, -5488($fp)
	lw $t1, -5488($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label776
label777:
	li $t0, 53312
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label776
label775:
	li $t0, 1
	sw $t0, -5468($fp)
label776:
	li $t0, 0
	sw $t0, -5496($fp)
	lw $t0, -768($fp)
	sw $t0, -5500($fp)
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label780
label781:
	lw $t0, -564($fp)
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label780
label780:
	lw $t0, -768($fp)
	sw $t0, -5508($fp)
	lw $t1, -5508($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -5496($fp)
label779:
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5496($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5512($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5512($fp)
	sub $t0, $t0, $t1
	sw $t0, -5516($fp)
	addi $t0, $fp, -36
	sw $t0, -5520($fp)
	li $t0, 0
	sw $t0, -5524($fp)
	li $t0, 4
	lw $t1, -5524($fp)
	mul $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	lw $t1, -5520($fp)
	add $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	lw $t1, 0($t0)
	sw $t1, -5536($fp)
	lw $t0, -5516($fp)
	lw $t1, -5536($fp)
	add $t0, $t0, $t1
	sw $t0, -5540($fp)
label706:
	j label701
label700:
	lw $t0, 8($fp)
	sw $t0, -5544($fp)
label701:
	lw $t0, -3752($fp)
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3764($fp)
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3776($fp)
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3788($fp)
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3800($fp)
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3812($fp)
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3824($fp)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3836($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3848($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3860($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3872($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3884($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3896($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3908($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3920($fp)
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3932($fp)
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3944($fp)
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3956($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5620($fp)
	li $t0, 0
	sw $t0, -5624($fp)
	li $t0, 0
	sw $t0, -5628($fp)
	li $t0, 0
	sw $t0, -5632($fp)
	addi $t0, $fp, -184
	sw $t0, -5636($fp)
	li $t0, 1
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
	lw $t0, -1428($fp)
	sw $t0, -5656($fp)
	lw $t1, -5652($fp)
	lw $t2, -5656($fp)
	bge $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -5632($fp)
label789:
	lw $t0, -1200($fp)
	sw $t0, -5660($fp)
	lw $t0, -540($fp)
	sw $t0, -5664($fp)
	lw $t0, -5660($fp)
	lw $t1, -5664($fp)
	add $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t1, -5632($fp)
	lw $t2, -5668($fp)
	bge $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -5628($fp)
label787:
	li $t0, 810
	sw $t0, -5672($fp)
	lw $t0, -3848($fp)
	sw $t0, -5676($fp)
	lw $t0, -5672($fp)
	lw $t1, -5676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5680($fp)
	lw $t0, -3896($fp)
	sw $t0, -5684($fp)
	lw $t0, -5680($fp)
	lw $t1, -5684($fp)
	add $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t1, -5628($fp)
	lw $t2, -5688($fp)
	bge $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -5624($fp)
label785:
	li $t0, 40481
	sw $t0, -5692($fp)
	lw $t0, -756($fp)
	sw $t0, -5696($fp)
	lw $t0, -5692($fp)
	lw $t1, -5696($fp)
	sub $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t1, -5624($fp)
	lw $t2, -5700($fp)
	bgt $t1, $t2, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -5620($fp)
label783:
	lw $ra, -4($fp)
	lw $v0, -5620($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label612
label611:
	li $t0, 26586
	sw $t0, -5704($fp)
	lw $t1, -5704($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label791
label793:
	li $t0, 24534
	sw $t0, -5708($fp)
	addi $t0, $fp, -176
	sw $t0, -5712($fp)
	lw $t0, -732($fp)
	sw $t0, -5716($fp)
	li $t0, 4
	lw $t1, -5716($fp)
	mul $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, -5712($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	lw $t1, 0($t0)
	sw $t1, -5728($fp)
	lw $t1, -5708($fp)
	lw $t2, -5728($fp)
	ble $t1, $t2, label790
	j label791
label790:
	addi $t0, $fp, -36
	sw $t0, -5732($fp)
	li $t0, 0
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
	li $t0, 22350
	sw $t0, -5752($fp)
	li $t0, 0
	lw $t1, -5752($fp)
	sub $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5748($fp)
	lw $t1, -5756($fp)
	sub $t0, $t0, $t1
	sw $t0, -5760($fp)
label791:
label612:
	addi $t0, $fp, -32
	sw $t0, -5764($fp)
	li $t0, 0
	sw $t0, -5768($fp)
	li $t0, 4
	lw $t1, -5768($fp)
	mul $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, -5764($fp)
	add $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	lw $t1, 0($t0)
	sw $t1, -5780($fp)
	lw $t0, -5780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5784($fp)
	li $t0, 1
	sw $t0, -5788($fp)
	li $t0, 4
	lw $t1, -5788($fp)
	mul $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	lw $t1, -5784($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	lw $t1, 0($t0)
	sw $t1, -5800($fp)
	lw $t0, -5800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5804($fp)
	li $t0, 2
	sw $t0, -5808($fp)
	li $t0, 4
	lw $t1, -5808($fp)
	mul $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, -5804($fp)
	add $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, 0($t0)
	sw $t1, -5820($fp)
	lw $t0, -5820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5824($fp)
	li $t0, 3
	sw $t0, -5828($fp)
	li $t0, 4
	lw $t1, -5828($fp)
	mul $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	lw $t1, -5824($fp)
	add $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	lw $t1, 0($t0)
	sw $t1, -5840($fp)
	lw $t0, -5840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5844($fp)
	li $t0, 4
	sw $t0, -5848($fp)
	li $t0, 4
	lw $t1, -5848($fp)
	mul $t0, $t0, $t1
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	lw $t1, -5844($fp)
	add $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	lw $t1, 0($t0)
	sw $t1, -5860($fp)
	lw $t0, -5860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5864($fp)
	li $t0, 5
	sw $t0, -5868($fp)
	li $t0, 4
	lw $t1, -5868($fp)
	mul $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, -5864($fp)
	add $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	lw $t1, 0($t0)
	sw $t1, -5880($fp)
	lw $t0, -5880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5884($fp)
	li $t0, 6
	sw $t0, -5888($fp)
	li $t0, 4
	lw $t1, -5888($fp)
	mul $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, -5884($fp)
	add $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	lw $t1, 0($t0)
	sw $t1, -5900($fp)
	lw $t0, -5900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -5908($fp)
	lw $t0, -5908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5916($fp)
	li $t0, 0
	sw $t0, -5920($fp)
	li $t0, 4
	lw $t1, -5920($fp)
	mul $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	lw $t1, -5916($fp)
	add $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5928($fp)
	lw $t1, 0($t0)
	sw $t1, -5932($fp)
	lw $t0, -5932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5964($fp)
	li $t0, 0
	sw $t0, -5968($fp)
	li $t0, 4
	lw $t1, -5968($fp)
	mul $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, -5964($fp)
	add $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	lw $t1, 0($t0)
	sw $t1, -5980($fp)
	lw $t0, -5980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6000($fp)
	li $t0, 0
	sw $t0, -6004($fp)
	li $t0, 4
	lw $t1, -6004($fp)
	mul $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	lw $t1, -6000($fp)
	add $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	lw $t1, 0($t0)
	sw $t1, -6016($fp)
	lw $t0, -6016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6020($fp)
	li $t0, 1
	sw $t0, -6024($fp)
	li $t0, 4
	lw $t1, -6024($fp)
	mul $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t0, -6028($fp)
	lw $t1, -6020($fp)
	add $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	lw $t1, 0($t0)
	sw $t1, -6036($fp)
	lw $t0, -6036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6040($fp)
	li $t0, 2
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
	lw $t0, -648($fp)
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -6076($fp)
	lw $t0, -6076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -6104($fp)
	li $t0, 0
	sw $t0, -6108($fp)
	li $t0, 4
	lw $t1, -6108($fp)
	mul $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	lw $t1, -6104($fp)
	add $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	lw $t1, 0($t0)
	sw $t1, -6120($fp)
	lw $t0, -6120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -6124($fp)
	li $t0, 1
	sw $t0, -6128($fp)
	li $t0, 4
	lw $t1, -6128($fp)
	mul $t0, $t0, $t1
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	lw $t1, -6124($fp)
	add $t0, $t0, $t1
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	lw $t1, 0($t0)
	sw $t1, -6140($fp)
	lw $t0, -6140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -6144($fp)
	li $t0, 2
	sw $t0, -6148($fp)
	li $t0, 4
	lw $t1, -6148($fp)
	mul $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	lw $t1, -6144($fp)
	add $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	lw $t1, 0($t0)
	sw $t1, -6160($fp)
	lw $t0, -6160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -6164($fp)
	li $t0, 3
	sw $t0, -6168($fp)
	li $t0, 4
	lw $t1, -6168($fp)
	mul $t0, $t0, $t1
	sw $t0, -6172($fp)
	lw $t0, -6172($fp)
	lw $t1, -6164($fp)
	add $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	lw $t1, 0($t0)
	sw $t1, -6180($fp)
	lw $t0, -6180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -6184($fp)
	li $t0, 4
	sw $t0, -6188($fp)
	li $t0, 4
	lw $t1, -6188($fp)
	mul $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	lw $t1, -6184($fp)
	add $t0, $t0, $t1
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	lw $t1, 0($t0)
	sw $t1, -6200($fp)
	lw $t0, -6200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6208($fp)
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 4
	lw $t1, -6212($fp)
	mul $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	lw $t1, -6208($fp)
	add $t0, $t0, $t1
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	lw $t1, 0($t0)
	sw $t1, -6224($fp)
	lw $t0, -6224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6228($fp)
	li $t0, 1
	sw $t0, -6232($fp)
	li $t0, 4
	lw $t1, -6232($fp)
	mul $t0, $t0, $t1
	sw $t0, -6236($fp)
	lw $t0, -6236($fp)
	lw $t1, -6228($fp)
	add $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6240($fp)
	lw $t1, 0($t0)
	sw $t1, -6244($fp)
	lw $t0, -6244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6248($fp)
	li $t0, 2
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
	lw $t0, -6264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6268($fp)
	li $t0, 3
	sw $t0, -6272($fp)
	li $t0, 4
	lw $t1, -6272($fp)
	mul $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t0, -6276($fp)
	lw $t1, -6268($fp)
	add $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	lw $t1, 0($t0)
	sw $t1, -6284($fp)
	lw $t0, -6284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6288($fp)
	li $t0, 4
	sw $t0, -6292($fp)
	li $t0, 4
	lw $t1, -6292($fp)
	mul $t0, $t0, $t1
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	lw $t1, 0($t0)
	sw $t1, -6304($fp)
	lw $t0, -6304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6308($fp)
	li $t0, 5
	sw $t0, -6312($fp)
	li $t0, 4
	lw $t1, -6312($fp)
	mul $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	lw $t1, -6308($fp)
	add $t0, $t0, $t1
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	lw $t1, 0($t0)
	sw $t1, -6324($fp)
	lw $t0, -6324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6328($fp)
	li $t0, 6
	sw $t0, -6332($fp)
	li $t0, 4
	lw $t1, -6332($fp)
	mul $t0, $t0, $t1
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	lw $t1, -6328($fp)
	add $t0, $t0, $t1
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	lw $t1, 0($t0)
	sw $t1, -6344($fp)
	lw $t0, -6344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6348($fp)
	li $t0, 7
	sw $t0, -6352($fp)
	li $t0, 4
	lw $t1, -6352($fp)
	mul $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	lw $t1, -6348($fp)
	add $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	lw $t1, 0($t0)
	sw $t1, -6364($fp)
	lw $t0, -6364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6368($fp)
	li $t0, 8
	sw $t0, -6372($fp)
	li $t0, 4
	lw $t1, -6372($fp)
	mul $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	lw $t1, -6368($fp)
	add $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	lw $t1, 0($t0)
	sw $t1, -6384($fp)
	lw $t0, -6384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6424($fp)
	li $t0, 0
	sw $t0, -6428($fp)
	li $t0, 4
	lw $t1, -6428($fp)
	mul $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	lw $t1, -6424($fp)
	add $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	lw $t1, 0($t0)
	sw $t1, -6440($fp)
	lw $t0, -6440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6444($fp)
	li $t0, 1
	sw $t0, -6448($fp)
	li $t0, 4
	lw $t1, -6448($fp)
	mul $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	lw $t1, -6444($fp)
	add $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	lw $t1, 0($t0)
	sw $t1, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6464($fp)
	li $t0, 2
	sw $t0, -6468($fp)
	li $t0, 4
	lw $t1, -6468($fp)
	mul $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	lw $t1, -6464($fp)
	add $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	lw $t1, 0($t0)
	sw $t1, -6480($fp)
	lw $t0, -6480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6484($fp)
	li $t0, 3
	sw $t0, -6488($fp)
	li $t0, 4
	lw $t1, -6488($fp)
	mul $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	lw $t1, -6484($fp)
	add $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	lw $t1, 0($t0)
	sw $t1, -6500($fp)
	lw $t0, -6500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6504($fp)
	li $t0, 4
	sw $t0, -6508($fp)
	li $t0, 4
	lw $t1, -6508($fp)
	mul $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	lw $t1, -6504($fp)
	add $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	lw $t1, 0($t0)
	sw $t1, -6520($fp)
	lw $t0, -6520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6524($fp)
	li $t0, 5
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
	addi $t0, $fp, -136
	sw $t0, -6544($fp)
	li $t0, 6
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
	lw $t0, -1404($fp)
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1416($fp)
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1428($fp)
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6576($fp)
	li $t0, 0
	sw $t0, -6580($fp)
	li $t0, 4
	lw $t1, -6580($fp)
	mul $t0, $t0, $t1
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	lw $t1, -6576($fp)
	add $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	lw $t1, 0($t0)
	sw $t1, -6592($fp)
	lw $t0, -6592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6596($fp)
	li $t0, 1
	sw $t0, -6600($fp)
	li $t0, 4
	lw $t1, -6600($fp)
	mul $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, -6596($fp)
	add $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	lw $t1, 0($t0)
	sw $t1, -6612($fp)
	lw $t0, -6612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6616($fp)
	li $t0, 2
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
	lw $t0, -6632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6636($fp)
	li $t0, 3
	sw $t0, -6640($fp)
	li $t0, 4
	lw $t1, -6640($fp)
	mul $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	lw $t1, -6636($fp)
	add $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	lw $t1, 0($t0)
	sw $t1, -6652($fp)
	lw $t0, -6652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6656($fp)
	li $t0, 4
	sw $t0, -6660($fp)
	li $t0, 4
	lw $t1, -6660($fp)
	mul $t0, $t0, $t1
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	lw $t1, -6656($fp)
	add $t0, $t0, $t1
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	lw $t1, 0($t0)
	sw $t1, -6672($fp)
	lw $t0, -6672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6676($fp)
	li $t0, 5
	sw $t0, -6680($fp)
	li $t0, 4
	lw $t1, -6680($fp)
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	lw $t1, -6676($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, 0($t0)
	sw $t1, -6692($fp)
	lw $t0, -6692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6696($fp)
	li $t0, 6
	sw $t0, -6700($fp)
	li $t0, 4
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, 0($t0)
	sw $t1, -6712($fp)
	lw $t0, -6712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6716($fp)
	li $t0, 7
	sw $t0, -6720($fp)
	li $t0, 4
	lw $t1, -6720($fp)
	mul $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	lw $t1, -6716($fp)
	add $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	lw $t1, 0($t0)
	sw $t1, -6732($fp)
	lw $t0, -6732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6736($fp)
	li $t0, 8
	sw $t0, -6740($fp)
	li $t0, 4
	lw $t1, -6740($fp)
	mul $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, -6736($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, 0($t0)
	sw $t1, -6752($fp)
	lw $t0, -6752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6756($fp)
	li $t0, 9
	sw $t0, -6760($fp)
	li $t0, 4
	lw $t1, -6760($fp)
	mul $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, -6756($fp)
	add $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, 0($t0)
	sw $t1, -6772($fp)
	lw $t0, -6772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -6776($fp)
	li $t0, 0
	sw $t0, -6780($fp)
	li $t0, 4
	lw $t1, -6780($fp)
	mul $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	lw $t1, -6776($fp)
	add $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	lw $t1, 0($t0)
	sw $t1, -6792($fp)
	lw $t0, -6792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -6796($fp)
	li $t0, 1
	sw $t0, -6800($fp)
	li $t0, 4
	lw $t1, -6800($fp)
	mul $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	lw $t1, -6796($fp)
	add $t0, $t0, $t1
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	lw $t1, 0($t0)
	sw $t1, -6812($fp)
	lw $t0, -6812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1728($fp)
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1740($fp)
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6828($fp)
	li $t0, 0
	sw $t0, -6832($fp)
	lw $t0, -708($fp)
	sw $t0, -6836($fp)
	li $t0, 56077
	sw $t0, -6840($fp)
	lw $t0, -6836($fp)
	lw $t1, -6840($fp)
	sub $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -420($fp)
	sw $t0, -6848($fp)
	lw $t1, -6844($fp)
	lw $t2, -6848($fp)
	bne $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -6832($fp)
label797:
	li $t0, 28417
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -6856($fp)
	li $t0, 10735
	sw $t0, -6860($fp)
	addi $t0, $fp, -52
	sw $t0, -6864($fp)
	li $t0, 2
	sw $t0, -6868($fp)
	li $t0, 4
	lw $t1, -6868($fp)
	mul $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	lw $t1, -6864($fp)
	add $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	lw $t1, 0($t0)
	sw $t1, -6880($fp)
	addi $sp, $sp, -4
	lw $t0, -6832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6884($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6884($fp)
	sub $t0, $t0, $t1
	sw $t0, -6888($fp)
	li $t0, 5446
	sw $t0, -6892($fp)
	addi $t0, $fp, -72
	sw $t0, -6896($fp)
	lw $t0, -720($fp)
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
	lw $t0, -6892($fp)
	lw $t1, -6912($fp)
	mul $t0, $t0, $t1
	sw $t0, -6916($fp)
	li $t0, 0
	lw $t1, -6916($fp)
	sub $t0, $t0, $t1
	sw $t0, -6920($fp)
	li $t0, 0
	lw $t1, -6920($fp)
	sub $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t1, -6888($fp)
	lw $t2, -6924($fp)
	ble $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -6828($fp)
label795:
	lw $ra, -4($fp)
	lw $v0, -6828($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -300
	li $t0, 40298
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 20072
	sw $t0, -32($fp)
	addi $t0, $fp, -16
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
	li $t0, 1079
	sw $t0, -56($fp)
	addi $t0, $fp, -16
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
	li $t0, 65477
	sw $t0, -80($fp)
	addi $t0, $fp, -16
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
	li $t0, 36873
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 0
	sw $t0, -116($fp)
	li $t0, 24861
	sw $t0, -120($fp)
	addi $t0, $fp, -16
	sw $t0, -124($fp)
	lw $t0, -24($fp)
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
	lw $t1, -120($fp)
	lw $t2, -140($fp)
	blt $t1, $t2, label798
	j label799
label798:
	li $t0, 1
	sw $t0, -116($fp)
label799:
	lw $t0, -24($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -148($fp)
	li $t0, 0
	sw $t0, -152($fp)
	li $t0, 4
	lw $t1, -152($fp)
	mul $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t1, 0($t0)
	sw $t1, -164($fp)
	lw $t0, -164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
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
	lw $t0, -184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -188($fp)
	li $t0, 2
	sw $t0, -192($fp)
	li $t0, 4
	lw $t1, -192($fp)
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	lw $t1, -188($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, 0($t0)
	sw $t1, -204($fp)
	lw $t0, -204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -212($fp)
	li $t0, 0
	sw $t0, -216($fp)
	lw $t0, -108($fp)
	sw $t0, -220($fp)
	li $t0, 11262
	sw $t0, -224($fp)
	lw $t0, -220($fp)
	lw $t1, -224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -228($fp)
	lw $t0, -108($fp)
	sw $t0, -232($fp)
	lw $t1, -228($fp)
	lw $t2, -232($fp)
	ble $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -216($fp)
label804:
	jal f10
	sw $v0, -236($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -240($fp)
	li $t0, 59794
	sw $t0, -244($fp)
	li $t0, 0
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	li $t0, 37293
	sw $t0, -252($fp)
	lw $t1, -248($fp)
	lw $t2, -252($fp)
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -240($fp)
label806:
	li $t0, 0
	sw $t0, -256($fp)
	addi $t0, $fp, -16
	sw $t0, -260($fp)
	li $t0, 1
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
	lw $t1, -276($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label809
label809:
	lw $t0, -24($fp)
	sw $t0, -280($fp)
	lw $t1, -280($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label808
label807:
	li $t0, 1
	sw $t0, -256($fp)
label808:
	addi $sp, $sp, -4
	lw $t0, -216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -284($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 23457
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label810
label810:
	li $t0, 1
	sw $t0, -288($fp)
label811:
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	li $t0, 0
	lw $t1, -296($fp)
	sub $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t1, -300($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label801
label802:
	li $t0, 45701
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label801
label800:
	li $t0, 1
	sw $t0, -212($fp)
label801:
	lw $ra, -4($fp)
	lw $v0, -212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1004
	li $t0, 61924
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 12360
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 61116
	sw $t0, -48($fp)
	addi $t0, $fp, -20
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
	li $t0, 43472
	sw $t0, -72($fp)
	addi $t0, $fp, -20
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
	li $t0, 21767
	sw $t0, -96($fp)
	addi $t0, $fp, -20
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
	li $t0, 61926
	sw $t0, -120($fp)
	addi $t0, $fp, -20
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
	li $t0, 18417
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 48353
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 20924
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 43375
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 2158
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 43274
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 27083
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 8022
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 54009
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 55500
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
label812:
	li $t0, 0
	sw $t0, -264($fp)
	lw $t0, -256($fp)
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label816
	j label815
label815:
	li $t0, 1
	sw $t0, -264($fp)
label816:
	lw $t0, -160($fp)
	sw $t0, -272($fp)
	li $t0, 64099
	sw $t0, -276($fp)
	lw $t0, -272($fp)
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, 0
	sw $t0, -284($fp)
	lw $t0, -244($fp)
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label818
	j label817
label817:
	li $t0, 1
	sw $t0, -284($fp)
label818:
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -264($fp)
	lw $t1, -292($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label813
	j label814
label813:
	li $t0, 0
	sw $t0, -300($fp)
	lw $t0, -28($fp)
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label822
label822:
	li $t0, 1
	sw $t0, -300($fp)
label823:
	lw $t0, -244($fp)
	sw $t0, -308($fp)
	lw $t0, -300($fp)
	lw $t1, -308($fp)
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t1, -312($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label820
label819:
	lw $t0, 16($fp)
	sw $t0, -316($fp)
	j label821
label820:
label824:
	lw $t0, -256($fp)
	sw $t0, -320($fp)
	li $t0, 0
	lw $t1, -320($fp)
	sub $t0, $t0, $t1
	sw $t0, -324($fp)
	li $t0, 0
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -328($fp)
	li $t0, 0
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	li $t0, 0
	lw $t1, -332($fp)
	sub $t0, $t0, $t1
	sw $t0, -336($fp)
	addi $t0, $fp, -20
	sw $t0, -340($fp)
	li $t0, 2
	sw $t0, -344($fp)
	li $t0, 4
	lw $t1, -344($fp)
	mul $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t1, 0($t0)
	sw $t1, -356($fp)
	addi $t0, $fp, -20
	sw $t0, -360($fp)
	lw $t0, -28($fp)
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
	sw $t0, -380($fp)
	lw $t0, -244($fp)
	sw $t0, -384($fp)
	lw $t0, 12($fp)
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label828
label829:
	lw $t0, -184($fp)
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -380($fp)
label828:
	li $t0, 14119
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -404($fp)
	li $t0, 51495
	sw $t0, -408($fp)
	lw $t0, -196($fp)
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -416($fp)
	li $t0, 0
	sw $t0, -420($fp)
	lw $t0, -232($fp)
	sw $t0, -424($fp)
	li $t0, 19860
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	li $t0, 17921
	sw $t0, -436($fp)
	lw $t1, -432($fp)
	lw $t2, -436($fp)
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -420($fp)
label831:
	li $t0, 55508
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, -160($fp)
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label835
label835:
	li $t0, 30203
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label834
label834:
	lw $t0, -40($fp)
	sw $t0, -456($fp)
	lw $t1, -456($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -444($fp)
label833:
	li $t0, 0
	sw $t0, -460($fp)
	lw $t0, 8($fp)
	sw $t0, -464($fp)
	li $t0, 18635
	sw $t0, -468($fp)
	lw $t0, -464($fp)
	lw $t1, -468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -472($fp)
	lw $t1, -472($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label838
label838:
	li $t0, 60535
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label837
label836:
	li $t0, 1
	sw $t0, -460($fp)
label837:
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -480($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -484($fp)
	addi $sp, $sp, 20
	lw $t0, -356($fp)
	lw $t1, -484($fp)
	mul $t0, $t0, $t1
	sw $t0, -488($fp)
	li $t0, 0
	lw $t1, -488($fp)
	sub $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -336($fp)
	lw $t1, -492($fp)
	sub $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label826
label825:
label839:
	li $t0, 0
	sw $t0, -500($fp)
	lw $t0, 8($fp)
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label842
label842:
	li $t0, 1
	sw $t0, -500($fp)
label843:
	li $t0, 55214
	sw $t0, -508($fp)
	lw $t0, 4($fp)
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	li $t0, 62757
	sw $t0, -520($fp)
	lw $t0, -516($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -524($fp)
	li $t0, 0
	sw $t0, -528($fp)
	lw $t0, 8($fp)
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label846
label847:
	lw $t0, -184($fp)
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label844
	j label846
label846:
	lw $t0, 20($fp)
	sw $t0, -540($fp)
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -528($fp)
label845:
	lw $t0, 8($fp)
	sw $t0, -544($fp)
	li $t0, 0
	sw $t0, -548($fp)
	lw $t0, -28($fp)
	sw $t0, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label849
label850:
	lw $t0, -28($fp)
	sw $t0, -556($fp)
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label848
	j label849
label848:
	li $t0, 1
	sw $t0, -548($fp)
label849:
	li $t0, 0
	sw $t0, -560($fp)
	lw $t0, -172($fp)
	sw $t0, -564($fp)
	li $t0, 0
	lw $t1, -564($fp)
	sub $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label851
label851:
	li $t0, 1
	sw $t0, -560($fp)
label852:
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -560($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -572($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -576($fp)
	li $t0, 6167
	sw $t0, -580($fp)
	lw $t0, 8($fp)
	sw $t0, -584($fp)
	lw $t0, -580($fp)
	lw $t1, -584($fp)
	sub $t0, $t0, $t1
	sw $t0, -588($fp)
	li $t0, 27349
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	bgt $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -576($fp)
label854:
	li $t0, 0
	sw $t0, -596($fp)
	li $t0, 30959
	sw $t0, -600($fp)
	lw $t1, -600($fp)
	li $t2, 0
	bne $t1, $t2, label855
	j label858
label858:
	li $t0, 37081
	sw $t0, -604($fp)
	lw $t1, -604($fp)
	li $t2, 0
	bne $t1, $t2, label855
	j label857
label857:
	lw $t0, 20($fp)
	sw $t0, -608($fp)
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -596($fp)
label856:
	li $t0, 49936
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -616($fp)
	li $t0, 0
	sw $t0, -620($fp)
	lw $t0, 16($fp)
	sw $t0, -624($fp)
	li $t0, 0
	lw $t1, -624($fp)
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	li $t2, 0
	bne $t1, $t2, label861
	j label860
label861:
	li $t0, 59145
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label859
	j label860
label859:
	li $t0, 1
	sw $t0, -620($fp)
label860:
	lw $t0, 8($fp)
	sw $t0, -636($fp)
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 0
	sw $t0, -644($fp)
	lw $t0, 20($fp)
	sw $t0, -648($fp)
	lw $t0, -184($fp)
	sw $t0, -652($fp)
	lw $t1, -648($fp)
	lw $t2, -652($fp)
	ble $t1, $t2, label864
	j label865
label864:
	li $t0, 1
	sw $t0, -644($fp)
label865:
	li $t0, 35379
	sw $t0, -656($fp)
	lw $t1, -644($fp)
	lw $t2, -656($fp)
	blt $t1, $t2, label862
	j label863
label862:
	li $t0, 1
	sw $t0, -640($fp)
label863:
	addi $sp, $sp, -4
	lw $t0, -596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -640($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -660($fp)
	addi $sp, $sp, 24
	li $t0, 37576
	sw $t0, -664($fp)
	addi $sp, $sp, -4
	lw $t0, -572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -664($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -668($fp)
	addi $sp, $sp, 20
	lw $t0, -524($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t1, -500($fp)
	lw $t2, -672($fp)
	bgt $t1, $t2, label840
	j label841
label840:
	lw $t0, 16($fp)
	sw $t0, -676($fp)
	j label839
label841:
	j label824
label826:
label821:
	j label812
label814:
	lw $t0, -28($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -40($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -688($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
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
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -728($fp)
	li $t0, 2
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
	lw $t0, -744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -748($fp)
	li $t0, 3
	sw $t0, -752($fp)
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, 0($t0)
	sw $t1, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -808($fp)
	li $t0, 48273
	sw $t0, -812($fp)
	lw $t0, -232($fp)
	sw $t0, -816($fp)
	lw $t0, -812($fp)
	lw $t1, -816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -820($fp)
	lw $t0, -172($fp)
	sw $t0, -824($fp)
	lw $t0, -820($fp)
	lw $t1, -824($fp)
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -184($fp)
	sw $t0, -832($fp)
	lw $t0, -28($fp)
	sw $t0, -836($fp)
	lw $t0, -832($fp)
	lw $t1, -836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -840($fp)
	lw $t0, 4($fp)
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	li $t0, 0
	sw $t0, -852($fp)
	lw $t0, -244($fp)
	sw $t0, -856($fp)
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t1, -860($fp)
	li $t2, 0
	bne $t1, $t2, label871
	j label870
label871:
	li $t0, 54521
	sw $t0, -864($fp)
	lw $t1, -864($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -852($fp)
label870:
	li $t0, 55498
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -872($fp)
	lw $t0, -256($fp)
	sw $t0, -876($fp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -880($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -880($fp)
	sub $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label868
label868:
	li $t0, 0
	sw $t0, -888($fp)
	li $t0, 63264
	sw $t0, -892($fp)
	lw $t0, -208($fp)
	sw $t0, -896($fp)
	lw $t1, -892($fp)
	lw $t2, -896($fp)
	blt $t1, $t2, label872
	j label874
label874:
	li $t0, 8405
	sw $t0, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label872
	j label873
label872:
	li $t0, 1
	sw $t0, -888($fp)
label873:
	addi $t0, $fp, -20
	sw $t0, -904($fp)
	li $t0, 1
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
	li $t0, 60421
	sw $t0, -924($fp)
	li $t0, 64701
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -932($fp)
	lw $t0, -244($fp)
	sw $t0, -936($fp)
	lw $t0, -932($fp)
	lw $t1, -936($fp)
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	li $t0, 0
	sw $t0, -944($fp)
	li $t0, 26011
	sw $t0, -948($fp)
	li $t0, 0
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label875
label875:
	li $t0, 1
	sw $t0, -944($fp)
label876:
	li $t0, 0
	sw $t0, -956($fp)
	li $t0, 0
	sw $t0, -960($fp)
	lw $t0, -244($fp)
	sw $t0, -964($fp)
	li $t0, 56679
	sw $t0, -968($fp)
	lw $t1, -964($fp)
	lw $t2, -968($fp)
	bne $t1, $t2, label879
	j label880
label879:
	li $t0, 1
	sw $t0, -960($fp)
label880:
	lw $t0, -220($fp)
	sw $t0, -972($fp)
	lw $t1, -960($fp)
	lw $t2, -972($fp)
	beq $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -956($fp)
label878:
	li $t0, 0
	sw $t0, -976($fp)
	lw $t0, 4($fp)
	sw $t0, -980($fp)
	lw $t0, 20($fp)
	sw $t0, -984($fp)
	lw $t1, -980($fp)
	lw $t2, -984($fp)
	bgt $t1, $t2, label881
	j label882
label881:
	li $t0, 1
	sw $t0, -976($fp)
label882:
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -988($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -988($fp)
	sub $t0, $t0, $t1
	sw $t0, -992($fp)
	li $t0, 0
	sw $t0, -996($fp)
	li $t0, 33338
	sw $t0, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label884
label885:
	lw $t0, -184($fp)
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label884
label883:
	li $t0, 1
	sw $t0, -996($fp)
label884:
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1008($fp)
	addi $sp, $sp, 20
	lw $t1, -1008($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label867
label866:
	li $t0, 1
	sw $t0, -808($fp)
label867:
	lw $ra, -4($fp)
	lw $v0, -808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -496
	li $t0, 15112
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
	li $t0, 16363
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
	li $t0, 3404
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
	li $t0, 45315
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
	li $t0, 6336
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
	li $t0, 23264
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
	li $t0, 63236
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
	li $t0, 57831
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 37383
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -208($fp)
	sw $t0, -228($fp)
	addi $t0, $fp, -32
	sw $t0, -232($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -252($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -272($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -292($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -312($fp)
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	lw $t0, -208($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -380($fp)
	lw $t0, -208($fp)
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
	lw $t0, 4($fp)
	sw $t0, -400($fp)
	lw $t0, 4($fp)
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -408($fp)
	lw $t0, -396($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	li $t0, 59360
	sw $t0, -420($fp)
	li $t0, 53716
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -428($fp)
	lw $t1, -428($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label887
label888:
	lw $t0, -220($fp)
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label886
	j label887
label886:
	li $t0, 1
	sw $t0, -416($fp)
label887:
	li $t0, 48661
	sw $t0, -436($fp)
	lw $t0, 4($fp)
	sw $t0, -440($fp)
	lw $t0, -436($fp)
	lw $t1, -440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	lw $t0, -208($fp)
	sw $t0, -452($fp)
	li $t0, 22757
	sw $t0, -456($fp)
	lw $t1, -452($fp)
	lw $t2, -456($fp)
	bne $t1, $t2, label889
	j label890
label889:
	li $t0, 1
	sw $t0, -448($fp)
label890:
	addi $t0, $fp, -32
	sw $t0, -460($fp)
	li $t0, 2
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
	li $t0, 9424
	sw $t0, -480($fp)
	lw $t0, -476($fp)
	lw $t1, -480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -484($fp)
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -484($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -488($fp)
	addi $sp, $sp, 20
	lw $t0, -412($fp)
	lw $t1, -488($fp)
	sub $t0, $t0, $t1
	sw $t0, -492($fp)
	li $t0, 20207
	sw $t0, -496($fp)
	lw $t0, -492($fp)
	lw $t1, -496($fp)
	sub $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $ra, -4($fp)
	lw $v0, -500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -104
	li $t0, 65528
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 15529
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -24($fp)
	sw $t0, -40($fp)
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label894
	j label893
label893:
	li $t0, 1
	sw $t0, -36($fp)
label894:
	li $t0, 43507
	sw $t0, -44($fp)
	lw $t1, -36($fp)
	lw $t2, -44($fp)
	bge $t1, $t2, label891
	j label892
label891:
	li $t0, 1
	sw $t0, -32($fp)
label892:
	li $t0, 0
	sw $t0, -48($fp)
	li $t0, 63802
	sw $t0, -52($fp)
	lw $t0, -24($fp)
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -60($fp)
	lw $t0, -24($fp)
	sw $t0, -64($fp)
	lw $t1, -60($fp)
	lw $t2, -64($fp)
	bgt $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -48($fp)
label896:
	li $t0, 10169
	sw $t0, -68($fp)
	li $t0, 54513
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	add $t0, $t0, $t1
	sw $t0, -76($fp)
	li $t0, 0
	sw $t0, -80($fp)
	lw $t0, -12($fp)
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label898
	j label897
label897:
	li $t0, 1
	sw $t0, -80($fp)
label898:
	lw $t0, -24($fp)
	sw $t0, -88($fp)
	lw $t0, -80($fp)
	lw $t1, -88($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -92($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -92($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -96($fp)
	addi $sp, $sp, 20
	lw $t0, -12($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 45656
	sw $t0, -108($fp)
	lw $ra, -4($fp)
	lw $v0, -108($fp)
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
