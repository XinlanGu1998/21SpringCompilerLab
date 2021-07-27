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
	addi $sp, $sp, -528
	li $t0, 21815
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
	li $t0, 57753
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
	li $t0, 11430
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
	li $t0, 25697
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
	li $t0, 19498
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
	li $t0, 62136
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
	li $t0, 61180
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
	li $t0, 58592
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
	li $t0, 61565
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
	addi $t0, $fp, -40
	sw $t0, -260($fp)
	lw $t0, 8($fp)
	sw $t0, -264($fp)
	lw $t0, 4($fp)
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	li $t0, 15991
	sw $t0, -276($fp)
	lw $t0, -272($fp)
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, 0
	sw $t0, -284($fp)
	lw $t0, 4($fp)
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -284($fp)
label122:
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	li $t0, 4
	lw $t1, -292($fp)
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, 0($t0)
	sw $t1, -304($fp)
	addi $t0, $fp, -40
	sw $t0, -308($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -328($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -348($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -368($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -388($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -408($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -428($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -448($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -468($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -488($fp)
	addi $t0, $fp, -40
	sw $t0, -492($fp)
	lw $t0, 8($fp)
	sw $t0, -496($fp)
	li $t0, 4
	lw $t1, -496($fp)
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	lw $t1, 0($t0)
	sw $t1, -508($fp)
	lw $t1, -508($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label123
label123:
	li $t0, 1
	sw $t0, -488($fp)
label124:
	li $t0, 0
	sw $t0, -512($fp)
	lw $t0, 8($fp)
	sw $t0, -516($fp)
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label125:
	li $t0, 1
	sw $t0, -512($fp)
label126:
	li $t0, 0
	lw $t1, -512($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -488($fp)
	lw $t1, -520($fp)
	sub $t0, $t0, $t1
	sw $t0, -524($fp)
	li $t0, 9555
	sw $t0, -528($fp)
	lw $t0, -524($fp)
	lw $t1, -528($fp)
	sub $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $ra, -4($fp)
	lw $v0, -532($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -240
	li $t0, 35363
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
	li $t0, 24334
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
	li $t0, 20084
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
	li $t0, 16091
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
	addi $t0, $fp, -20
	sw $t0, -120($fp)
	li $t0, 0
	sw $t0, -124($fp)
	lw $t0, 4($fp)
	sw $t0, -128($fp)
	lw $t1, -128($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label127:
	li $t0, 1
	sw $t0, -124($fp)
label128:
	li $t0, 16039
	sw $t0, -132($fp)
	lw $t0, -124($fp)
	lw $t1, -132($fp)
	sub $t0, $t0, $t1
	sw $t0, -136($fp)
	li $t0, 4
	lw $t1, -136($fp)
	mul $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	lw $t1, 0($t0)
	sw $t1, -148($fp)
	li $t0, 0
	lw $t1, -148($fp)
	sub $t0, $t0, $t1
	sw $t0, -152($fp)
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
	sw $t0, -176($fp)
	li $t0, 1
	sw $t0, -180($fp)
	li $t0, 4
	lw $t1, -180($fp)
	mul $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, 0($t0)
	sw $t1, -192($fp)
	lw $t0, -192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -196($fp)
	li $t0, 2
	sw $t0, -200($fp)
	li $t0, 4
	lw $t1, -200($fp)
	mul $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	lw $t1, 0($t0)
	sw $t1, -212($fp)
	lw $t0, -212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -216($fp)
	li $t0, 3
	sw $t0, -220($fp)
	li $t0, 4
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, 0($t0)
	sw $t1, -232($fp)
	lw $t0, -232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 42192
	sw $t0, -236($fp)
	lw $t0, 4($fp)
	sw $t0, -240($fp)
	lw $t0, -236($fp)
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $ra, -4($fp)
	lw $v0, -244($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -380
	li $t0, 23030
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
	li $t0, 6948
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
label129:
	addi $t0, $fp, -12
	sw $t0, -64($fp)
	lw $t0, 4($fp)
	sw $t0, -68($fp)
	li $t0, 4
	lw $t1, -68($fp)
	mul $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	lw $t1, 0($t0)
	sw $t1, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 43800
	sw $t0, -104($fp)
	addi $t0, $fp, -100
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
	li $t0, 35063
	sw $t0, -128($fp)
	addi $t0, $fp, -100
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
	li $t0, 23975
	sw $t0, -152($fp)
	addi $t0, $fp, -100
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
	li $t0, 1516
	sw $t0, -176($fp)
	addi $t0, $fp, -100
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
	li $t0, 20596
	sw $t0, -200($fp)
	addi $t0, $fp, -100
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
	lw $t0, 4($fp)
	sw $t0, -224($fp)
	li $t0, 61500
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	add $t0, $t0, $t1
	sw $t0, -232($fp)
	li $t0, 2156
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	sub $t0, $t0, $t1
	sw $t0, -240($fp)
	li $t0, 0
	sw $t0, -244($fp)
	lw $t0, 4($fp)
	sw $t0, -248($fp)
	lw $t0, 4($fp)
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t1, -256($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label134:
	li $t0, 32378
	sw $t0, -260($fp)
	lw $t1, -260($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -244($fp)
label133:
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -244($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -264($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -100
	sw $t0, -268($fp)
	addi $t0, $fp, -100
	sw $t0, -272($fp)
	li $t0, 1
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
	li $t0, 4
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, 0($t0)
	sw $t1, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 36660
	sw $t0, -308($fp)
	li $t0, 41266
	sw $t0, -312($fp)
	lw $t0, -308($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label137
label137:
	li $t0, 1668
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -304($fp)
label136:
	lw $t0, 4($fp)
	sw $t0, -324($fp)
	li $t0, 0
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -328($fp)
	li $t0, 0
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -336($fp)
	addi $sp, $sp, 12
	lw $t0, -300($fp)
	lw $t1, -336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -340($fp)
	j label129
label131:
	addi $t0, $fp, -12
	sw $t0, -344($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -364($fp)
	li $t0, 1
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
	li $t0, 28877
	sw $t0, -384($fp)
	lw $ra, -4($fp)
	lw $v0, -384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7008
	li $t0, 52696
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 27365
	sw $t0, -228($fp)
	addi $t0, $fp, -36
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
	li $t0, 48375
	sw $t0, -252($fp)
	addi $t0, $fp, -36
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
	li $t0, 49296
	sw $t0, -276($fp)
	addi $t0, $fp, -36
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
	li $t0, 23009
	sw $t0, -300($fp)
	addi $t0, $fp, -36
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
	li $t0, 41432
	sw $t0, -324($fp)
	addi $t0, $fp, -36
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
	li $t0, 45325
	sw $t0, -348($fp)
	addi $t0, $fp, -36
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
	li $t0, 39001
	sw $t0, -372($fp)
	addi $t0, $fp, -36
	sw $t0, -376($fp)
	li $t0, 6
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
	li $t0, 50987
	sw $t0, -396($fp)
	addi $t0, $fp, -36
	sw $t0, -400($fp)
	li $t0, 7
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
	li $t0, 15153
	sw $t0, -420($fp)
	addi $t0, $fp, -72
	sw $t0, -424($fp)
	li $t0, 0
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
	li $t0, 63335
	sw $t0, -444($fp)
	addi $t0, $fp, -72
	sw $t0, -448($fp)
	li $t0, 1
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
	li $t0, 5535
	sw $t0, -468($fp)
	addi $t0, $fp, -72
	sw $t0, -472($fp)
	li $t0, 2
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
	li $t0, 31244
	sw $t0, -492($fp)
	addi $t0, $fp, -72
	sw $t0, -496($fp)
	li $t0, 3
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
	li $t0, 13838
	sw $t0, -516($fp)
	addi $t0, $fp, -72
	sw $t0, -520($fp)
	li $t0, 4
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
	li $t0, 47727
	sw $t0, -540($fp)
	addi $t0, $fp, -72
	sw $t0, -544($fp)
	li $t0, 5
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -544($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -540($fp)
	lw $t1, -556($fp)
	sw $t0, 0($t1)
	lw $t0, -556($fp)
	lw $t1, 0($t0)
	sw $t1, -560($fp)
	li $t0, 54274
	sw $t0, -564($fp)
	addi $t0, $fp, -72
	sw $t0, -568($fp)
	li $t0, 6
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -568($fp)
	lw $t1, -576($fp)
	add $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -564($fp)
	lw $t1, -580($fp)
	sw $t0, 0($t1)
	lw $t0, -580($fp)
	lw $t1, 0($t0)
	sw $t1, -584($fp)
	li $t0, 20786
	sw $t0, -588($fp)
	addi $t0, $fp, -72
	sw $t0, -592($fp)
	li $t0, 7
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -592($fp)
	lw $t1, -600($fp)
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -588($fp)
	lw $t1, -604($fp)
	sw $t0, 0($t1)
	lw $t0, -604($fp)
	lw $t1, 0($t0)
	sw $t1, -608($fp)
	li $t0, 25991
	sw $t0, -612($fp)
	addi $t0, $fp, -72
	sw $t0, -616($fp)
	li $t0, 8
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -616($fp)
	lw $t1, -624($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -612($fp)
	lw $t1, -628($fp)
	sw $t0, 0($t1)
	lw $t0, -628($fp)
	lw $t1, 0($t0)
	sw $t1, -632($fp)
	li $t0, 23802
	sw $t0, -636($fp)
	addi $t0, $fp, -84
	sw $t0, -640($fp)
	li $t0, 0
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -640($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -636($fp)
	lw $t1, -652($fp)
	sw $t0, 0($t1)
	lw $t0, -652($fp)
	lw $t1, 0($t0)
	sw $t1, -656($fp)
	li $t0, 44761
	sw $t0, -660($fp)
	addi $t0, $fp, -84
	sw $t0, -664($fp)
	li $t0, 1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -664($fp)
	lw $t1, -672($fp)
	add $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -660($fp)
	lw $t1, -676($fp)
	sw $t0, 0($t1)
	lw $t0, -676($fp)
	lw $t1, 0($t0)
	sw $t1, -680($fp)
	li $t0, 27508
	sw $t0, -684($fp)
	addi $t0, $fp, -84
	sw $t0, -688($fp)
	li $t0, 2
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -688($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -684($fp)
	lw $t1, -700($fp)
	sw $t0, 0($t1)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	li $t0, 44398
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 11604
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 23472
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 46554
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 8495
	sw $t0, -756($fp)
	addi $t0, $fp, -96
	sw $t0, -760($fp)
	li $t0, 0
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
	li $t0, 3325
	sw $t0, -780($fp)
	addi $t0, $fp, -96
	sw $t0, -784($fp)
	li $t0, 1
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
	li $t0, 17678
	sw $t0, -804($fp)
	addi $t0, $fp, -96
	sw $t0, -808($fp)
	li $t0, 2
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
	li $t0, 49761
	sw $t0, -828($fp)
	addi $t0, $fp, -136
	sw $t0, -832($fp)
	li $t0, 0
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
	li $t0, 4994
	sw $t0, -852($fp)
	addi $t0, $fp, -136
	sw $t0, -856($fp)
	li $t0, 1
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
	li $t0, 46555
	sw $t0, -876($fp)
	addi $t0, $fp, -136
	sw $t0, -880($fp)
	li $t0, 2
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
	li $t0, 36921
	sw $t0, -900($fp)
	addi $t0, $fp, -136
	sw $t0, -904($fp)
	li $t0, 3
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
	li $t0, 32359
	sw $t0, -924($fp)
	addi $t0, $fp, -136
	sw $t0, -928($fp)
	li $t0, 4
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
	li $t0, 29395
	sw $t0, -948($fp)
	addi $t0, $fp, -136
	sw $t0, -952($fp)
	li $t0, 5
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
	li $t0, 20682
	sw $t0, -972($fp)
	addi $t0, $fp, -136
	sw $t0, -976($fp)
	li $t0, 6
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
	li $t0, 55369
	sw $t0, -996($fp)
	addi $t0, $fp, -136
	sw $t0, -1000($fp)
	li $t0, 7
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
	li $t0, 5291
	sw $t0, -1020($fp)
	addi $t0, $fp, -136
	sw $t0, -1024($fp)
	li $t0, 8
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
	li $t0, 471
	sw $t0, -1044($fp)
	addi $t0, $fp, -136
	sw $t0, -1048($fp)
	li $t0, 9
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
	li $t0, 28834
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 56278
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 15624
	sw $t0, -1092($fp)
	addi $t0, $fp, -172
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
	li $t0, 26633
	sw $t0, -1116($fp)
	addi $t0, $fp, -172
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
	li $t0, 61813
	sw $t0, -1140($fp)
	addi $t0, $fp, -172
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
	li $t0, 46869
	sw $t0, -1164($fp)
	addi $t0, $fp, -172
	sw $t0, -1168($fp)
	li $t0, 3
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
	li $t0, 40471
	sw $t0, -1188($fp)
	addi $t0, $fp, -172
	sw $t0, -1192($fp)
	li $t0, 4
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
	li $t0, 44004
	sw $t0, -1212($fp)
	addi $t0, $fp, -172
	sw $t0, -1216($fp)
	li $t0, 5
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
	li $t0, 35607
	sw $t0, -1236($fp)
	addi $t0, $fp, -172
	sw $t0, -1240($fp)
	li $t0, 6
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
	li $t0, 61258
	sw $t0, -1260($fp)
	addi $t0, $fp, -172
	sw $t0, -1264($fp)
	li $t0, 7
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
	li $t0, 4459
	sw $t0, -1284($fp)
	addi $t0, $fp, -172
	sw $t0, -1288($fp)
	li $t0, 8
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
	li $t0, 59409
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 40483
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 31967
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 38271
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 52087
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 55439
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 19290
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 60582
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	li $t0, 58765
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	li $t0, 36968
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	li $t0, 44807
	sw $t0, -1428($fp)
	addi $t0, $fp, -212
	sw $t0, -1432($fp)
	li $t0, 0
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
	li $t0, 63759
	sw $t0, -1452($fp)
	addi $t0, $fp, -212
	sw $t0, -1456($fp)
	li $t0, 1
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
	li $t0, 17988
	sw $t0, -1476($fp)
	addi $t0, $fp, -212
	sw $t0, -1480($fp)
	li $t0, 2
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
	li $t0, 16193
	sw $t0, -1500($fp)
	addi $t0, $fp, -212
	sw $t0, -1504($fp)
	li $t0, 3
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
	li $t0, 30582
	sw $t0, -1524($fp)
	addi $t0, $fp, -212
	sw $t0, -1528($fp)
	li $t0, 4
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
	li $t0, 47383
	sw $t0, -1548($fp)
	addi $t0, $fp, -212
	sw $t0, -1552($fp)
	li $t0, 5
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1552($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1548($fp)
	lw $t1, -1564($fp)
	sw $t0, 0($t1)
	lw $t0, -1564($fp)
	lw $t1, 0($t0)
	sw $t1, -1568($fp)
	li $t0, 36875
	sw $t0, -1572($fp)
	addi $t0, $fp, -212
	sw $t0, -1576($fp)
	li $t0, 6
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1576($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1572($fp)
	lw $t1, -1588($fp)
	sw $t0, 0($t1)
	lw $t0, -1588($fp)
	lw $t1, 0($t0)
	sw $t1, -1592($fp)
	li $t0, 20415
	sw $t0, -1596($fp)
	addi $t0, $fp, -212
	sw $t0, -1600($fp)
	li $t0, 7
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
	li $t0, 52674
	sw $t0, -1620($fp)
	addi $t0, $fp, -212
	sw $t0, -1624($fp)
	li $t0, 8
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
	li $t0, 37346
	sw $t0, -1644($fp)
	addi $t0, $fp, -212
	sw $t0, -1648($fp)
	li $t0, 9
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
	li $t0, 49249
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 43416
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	li $t0, 52971
	sw $t0, -1700($fp)
	addi $t0, $fp, -1672
	sw $t0, -1704($fp)
	li $t0, 0
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
	li $t0, 10346
	sw $t0, -1724($fp)
	addi $t0, $fp, -1672
	sw $t0, -1728($fp)
	li $t0, 1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1728($fp)
	lw $t1, -1736($fp)
	add $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1724($fp)
	lw $t1, -1740($fp)
	sw $t0, 0($t1)
	lw $t0, -1740($fp)
	lw $t1, 0($t0)
	sw $t1, -1744($fp)
	li $t0, 39693
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 34304
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	li $t0, 50818
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
label138:
	addi $t0, $fp, -212
	sw $t0, -1784($fp)
	addi $t0, $fp, -36
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	li $t0, 18161
	sw $t0, -1796($fp)
	li $t0, 4375
	sw $t0, -1800($fp)
	lw $t1, -1796($fp)
	lw $t2, -1800($fp)
	blt $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -1792($fp)
label142:
	li $t0, 4
	lw $t1, -1792($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	lw $t1, 0($t0)
	sw $t1, -1812($fp)
	li $t0, 4
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	lw $t1, -1784($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, 0($t0)
	sw $t1, -1824($fp)
	lw $t1, -1824($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
label143:
	li $t0, 46540
	sw $t0, -1828($fp)
	addi $t0, $fp, -1672
	sw $t0, -1832($fp)
	lw $t0, -1348($fp)
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
	lw $t0, -1828($fp)
	lw $t1, -1848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1852($fp)
	li $t0, 0
	sw $t0, -1856($fp)
	lw $t0, -724($fp)
	sw $t0, -1860($fp)
	lw $t1, -1860($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -1856($fp)
label147:
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1776($fp)
	sw $t0, -1868($fp)
	li $t0, 22620
	sw $t0, -1872($fp)
	lw $t0, -1868($fp)
	lw $t1, -1872($fp)
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	jal f9
	sw $v0, -1880($fp)
	addi $sp, $sp, 4
	lw $t0, -1876($fp)
	lw $t1, -1880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1884($fp)
	lw $t0, -1864($fp)
	lw $t1, -1884($fp)
	sub $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	lw $t0, -1692($fp)
	sw $t0, -1892($fp)
	lw $t0, -1680($fp)
	sw $t0, -1896($fp)
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1900($fp)
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 0
	sw $t0, -1904($fp)
	lw $t0, -1420($fp)
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label153:
	addi $t0, $fp, -84
	sw $t0, -1912($fp)
	li $t0, 0
	sw $t0, -1916($fp)
	li $t0, 63785
	sw $t0, -1920($fp)
	lw $t0, -1752($fp)
	sw $t0, -1924($fp)
	lw $t1, -1920($fp)
	lw $t2, -1924($fp)
	bge $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -1916($fp)
label155:
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
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -1904($fp)
label152:
	lw $ra, -4($fp)
	lw $v0, -1904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label150
label149:
	li $t0, 21487
	sw $t0, -1940($fp)
	lw $t0, -220($fp)
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1948($fp)
	li $t0, 54588
	sw $t0, -1952($fp)
	lw $t0, -1948($fp)
	lw $t1, -1952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1956($fp)
	li $t0, 0
	sw $t0, -1960($fp)
	lw $t0, -1348($fp)
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label158
label158:
	lw $t0, -1764($fp)
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -1960($fp)
label157:
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1972($fp)
	addi $sp, $sp, 12
	li $t0, 36520
	sw $t0, -1976($fp)
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1776($fp)
	sw $t0, -1984($fp)
	li $t0, 0
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1980($fp)
	lw $t1, -1988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1992($fp)
	lw $ra, -4($fp)
	lw $v0, -1992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label150:
	j label143
label145:
	j label138
label140:
	li $t0, 8039
	sw $t0, -2012($fp)
	addi $t0, $fp, -2008
	sw $t0, -2016($fp)
	li $t0, 0
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
	li $t0, 44491
	sw $t0, -2036($fp)
	addi $t0, $fp, -2008
	sw $t0, -2040($fp)
	li $t0, 1
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
	li $t0, 55810
	sw $t0, -2060($fp)
	addi $t0, $fp, -2008
	sw $t0, -2064($fp)
	li $t0, 2
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
	li $t0, 3085
	sw $t0, -2084($fp)
	addi $t0, $fp, -2008
	sw $t0, -2088($fp)
	li $t0, 3
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
	li $t0, 37720
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	sw $t0, -2116($fp)
	lw $t0, -1372($fp)
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label159
label162:
	lw $t0, -1776($fp)
	sw $t0, -2124($fp)
	lw $t0, -1372($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 27243
	sw $t0, -2144($fp)
	addi $t0, $fp, -2140
	sw $t0, -2148($fp)
	li $t0, 0
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2148($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2144($fp)
	lw $t1, -2160($fp)
	sw $t0, 0($t1)
	lw $t0, -2160($fp)
	lw $t1, 0($t0)
	sw $t1, -2164($fp)
	li $t0, 47893
	sw $t0, -2168($fp)
	addi $t0, $fp, -2140
	sw $t0, -2172($fp)
	li $t0, 1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2172($fp)
	lw $t1, -2180($fp)
	add $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2168($fp)
	lw $t1, -2184($fp)
	sw $t0, 0($t1)
	lw $t0, -2184($fp)
	lw $t1, 0($t0)
	sw $t1, -2188($fp)
	lw $t0, -1348($fp)
	sw $t0, -2192($fp)
	li $t0, 0
	sw $t0, -2196($fp)
	li $t0, 35943
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label166
label166:
	li $t0, 1
	sw $t0, -2196($fp)
label167:
	li $t0, 45231
	sw $t0, -2204($fp)
	lw $t0, -2196($fp)
	lw $t1, -2204($fp)
	sub $t0, $t0, $t1
	sw $t0, -2208($fp)
	jal f9
	sw $v0, -2212($fp)
	addi $sp, $sp, 4
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
label168:
	addi $t0, $fp, -2140
	sw $t0, -2224($fp)
	addi $t0, $fp, -72
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	lw $t0, -1312($fp)
	sw $t0, -2236($fp)
	lw $t0, -1348($fp)
	sw $t0, -2240($fp)
	lw $t1, -2236($fp)
	lw $t2, -2240($fp)
	beq $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -2232($fp)
label172:
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
	li $t0, 4
	lw $t1, -2252($fp)
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	addi $t0, $fp, -2008
	sw $t0, -2268($fp)
	lw $t0, -1372($fp)
	sw $t0, -2272($fp)
	li $t0, 0
	lw $t1, -2272($fp)
	sub $t0, $t0, $t1
	sw $t0, -2276($fp)
	li $t0, 4
	lw $t1, -2276($fp)
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, 0($t0)
	sw $t1, -2288($fp)
	j label168
label170:
	j label165
label164:
	li $t0, 64086
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 0
	sw $t0, -2308($fp)
	lw $t0, -2296($fp)
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -2308($fp)
label176:
	li $t0, 0
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -724($fp)
	sw $t0, -2320($fp)
	li $t0, 990
	sw $t0, -2324($fp)
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -1360($fp)
	sw $t0, -2332($fp)
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2316($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	li $t0, 0
	sw $t0, -2344($fp)
	lw $t0, -2296($fp)
	sw $t0, -2348($fp)
	lw $t0, -1360($fp)
	sw $t0, -2352($fp)
	li $t0, 27078
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2360($fp)
	lw $t1, -2348($fp)
	lw $t2, -2360($fp)
	ble $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2344($fp)
label178:
	lw $t1, -2340($fp)
	lw $t2, -2344($fp)
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -2304($fp)
label174:
label165:
	addi $t0, $fp, -2140
	sw $t0, -2364($fp)
	li $t0, 0
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
	lw $t0, -2380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2140
	sw $t0, -2384($fp)
	li $t0, 1
	sw $t0, -2388($fp)
	li $t0, 4
	lw $t1, -2388($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	lw $t1, 0($t0)
	sw $t1, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2404($fp)
	lw $t0, -1420($fp)
	sw $t0, -2408($fp)
	li $t0, 0
	lw $t1, -2408($fp)
	sub $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t1, -2412($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -2404($fp)
label180:
	lw $ra, -4($fp)
	lw $v0, -2404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label161
label160:
	li $t0, 0
	sw $t0, -2416($fp)
	li $t0, 14216
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -2424($fp)
	li $t0, 0
	sw $t0, -2428($fp)
	lw $t0, -1420($fp)
	sw $t0, -2432($fp)
	li $t0, 21405
	sw $t0, -2436($fp)
	lw $t0, -2432($fp)
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t1, -2440($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label186:
	lw $t0, -1680($fp)
	sw $t0, -2444($fp)
	lw $t1, -2444($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -2428($fp)
label185:
	lw $t0, -1408($fp)
	sw $t0, -2448($fp)
	lw $t0, -2112($fp)
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	li $t0, 35425
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	mul $t0, $t0, $t1
	sw $t0, -2464($fp)
	addi $sp, $sp, -4
	lw $t0, -2424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2468($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label183
label183:
	lw $t0, -1420($fp)
	sw $t0, -2476($fp)
	li $t0, 7235
	sw $t0, -2480($fp)
	li $t0, 5119
	sw $t0, -2484($fp)
	lw $t0, -2480($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t1, -2476($fp)
	lw $t2, -2488($fp)
	ble $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -2416($fp)
label182:
	lw $ra, -4($fp)
	lw $v0, -2416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label161:
	li $t0, 57632
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	li $t0, 60206
	sw $t0, -2556($fp)
	addi $t0, $fp, -2508
	sw $t0, -2560($fp)
	li $t0, 0
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
	li $t0, 15465
	sw $t0, -2580($fp)
	addi $t0, $fp, -2508
	sw $t0, -2584($fp)
	li $t0, 1
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
	li $t0, 31789
	sw $t0, -2604($fp)
	addi $t0, $fp, -2508
	sw $t0, -2608($fp)
	li $t0, 2
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
	li $t0, 28974
	sw $t0, -2628($fp)
	addi $t0, $fp, -2508
	sw $t0, -2632($fp)
	li $t0, 3
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
	li $t0, 747
	sw $t0, -2652($fp)
	addi $t0, $fp, -2508
	sw $t0, -2656($fp)
	li $t0, 4
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
	li $t0, 49950
	sw $t0, -2676($fp)
	addi $t0, $fp, -2540
	sw $t0, -2680($fp)
	li $t0, 0
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
	li $t0, 33350
	sw $t0, -2700($fp)
	addi $t0, $fp, -2540
	sw $t0, -2704($fp)
	li $t0, 1
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
	li $t0, 47287
	sw $t0, -2724($fp)
	addi $t0, $fp, -2540
	sw $t0, -2728($fp)
	li $t0, 2
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
	li $t0, 7034
	sw $t0, -2748($fp)
	addi $t0, $fp, -2540
	sw $t0, -2752($fp)
	li $t0, 3
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2752($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2748($fp)
	lw $t1, -2764($fp)
	sw $t0, 0($t1)
	lw $t0, -2764($fp)
	lw $t1, 0($t0)
	sw $t1, -2768($fp)
	li $t0, 31599
	sw $t0, -2772($fp)
	addi $t0, $fp, -2540
	sw $t0, -2776($fp)
	li $t0, 4
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2776($fp)
	lw $t1, -2784($fp)
	add $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2772($fp)
	lw $t1, -2788($fp)
	sw $t0, 0($t1)
	lw $t0, -2788($fp)
	lw $t1, 0($t0)
	sw $t1, -2792($fp)
	li $t0, 3239
	sw $t0, -2796($fp)
	addi $t0, $fp, -2540
	sw $t0, -2800($fp)
	li $t0, 5
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2800($fp)
	lw $t1, -2808($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2796($fp)
	lw $t1, -2812($fp)
	sw $t0, 0($t1)
	lw $t0, -2812($fp)
	lw $t1, 0($t0)
	sw $t1, -2816($fp)
	li $t0, 61622
	sw $t0, -2820($fp)
	addi $t0, $fp, -2540
	sw $t0, -2824($fp)
	li $t0, 6
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2824($fp)
	lw $t1, -2832($fp)
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2820($fp)
	lw $t1, -2836($fp)
	sw $t0, 0($t1)
	lw $t0, -2836($fp)
	lw $t1, 0($t0)
	sw $t1, -2840($fp)
	li $t0, 2583
	sw $t0, -2844($fp)
	addi $t0, $fp, -2540
	sw $t0, -2848($fp)
	li $t0, 7
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2848($fp)
	lw $t1, -2856($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2844($fp)
	lw $t1, -2860($fp)
	sw $t0, 0($t1)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	li $t0, 11278
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -2876($fp)
label187:
	li $t0, 0
	sw $t0, -2880($fp)
	addi $t0, $fp, -2508
	sw $t0, -2884($fp)
	lw $t0, -1420($fp)
	sw $t0, -2888($fp)
	li $t0, 4
	lw $t1, -2888($fp)
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	lw $t1, 0($t0)
	sw $t1, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label191:
	li $t0, 1
	sw $t0, -2880($fp)
label192:
	li $t0, 0
	sw $t0, -2904($fp)
	li $t0, 40578
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label193
label193:
	li $t0, 1
	sw $t0, -2904($fp)
label194:
	lw $t0, -2880($fp)
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	addi $t0, $fp, -2508
	sw $t0, -2916($fp)
	li $t0, 4
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
	lw $t1, -2912($fp)
	lw $t2, -2932($fp)
	blt $t1, $t2, label190
	j label189
label190:
	addi $t0, $fp, -2008
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
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 62256
	sw $t0, -2956($fp)
	j label187
label189:
	li $t0, 48706
	sw $t0, -2984($fp)
	addi $t0, $fp, -2980
	sw $t0, -2988($fp)
	li $t0, 0
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
	li $t0, 65332
	sw $t0, -3008($fp)
	addi $t0, $fp, -2980
	sw $t0, -3012($fp)
	li $t0, 1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3012($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3008($fp)
	lw $t1, -3024($fp)
	sw $t0, 0($t1)
	lw $t0, -3024($fp)
	lw $t1, 0($t0)
	sw $t1, -3028($fp)
	li $t0, 60806
	sw $t0, -3032($fp)
	addi $t0, $fp, -2980
	sw $t0, -3036($fp)
	li $t0, 2
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3036($fp)
	lw $t1, -3044($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3032($fp)
	lw $t1, -3048($fp)
	sw $t0, 0($t1)
	lw $t0, -3048($fp)
	lw $t1, 0($t0)
	sw $t1, -3052($fp)
	li $t0, 49696
	sw $t0, -3056($fp)
	addi $t0, $fp, -2980
	sw $t0, -3060($fp)
	li $t0, 3
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
	li $t0, 26874
	sw $t0, -3080($fp)
	addi $t0, $fp, -2980
	sw $t0, -3084($fp)
	li $t0, 4
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
	li $t0, 30695
	sw $t0, -3104($fp)
	addi $t0, $fp, -2980
	sw $t0, -3108($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -3128($fp)
	addi $t0, $fp, -2980
	sw $t0, -3132($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -3152($fp)
	lw $t0, -1312($fp)
	sw $t0, -3156($fp)
	li $t0, 0
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -3152($fp)
label198:
	lw $t1, -3148($fp)
	lw $t2, -3152($fp)
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -3128($fp)
label196:
label199:
	li $t0, 37931
	sw $t0, -3164($fp)
	li $t0, 0
	lw $t1, -3164($fp)
	sub $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 0
	sw $t0, -3172($fp)
	li $t0, 10684
	sw $t0, -3176($fp)
	li $t0, 0
	lw $t1, -3176($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	li $t0, 0
	sw $t0, -3184($fp)
	li $t0, 0
	sw $t0, -3188($fp)
	li $t0, 33186
	sw $t0, -3192($fp)
	li $t0, 0
	lw $t1, -3192($fp)
	sub $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t1, -3196($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label206
label206:
	li $t0, 1
	sw $t0, -3188($fp)
label207:
	lw $t0, -1384($fp)
	sw $t0, -3200($fp)
	li $t0, 32601
	sw $t0, -3204($fp)
	lw $t0, -3200($fp)
	lw $t1, -3204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3208($fp)
	lw $t1, -3188($fp)
	lw $t2, -3208($fp)
	ble $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -3184($fp)
label205:
	lw $t1, -3180($fp)
	lw $t2, -3184($fp)
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -3172($fp)
label203:
	j label199
label201:
label208:
	li $t0, 26150
	sw $t0, -3212($fp)
	li $t0, 0
	sw $t0, -3216($fp)
	addi $t0, $fp, -2540
	sw $t0, -3220($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -3236($fp)
	sub $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
	li $t0, 1
	sw $t0, -3216($fp)
label212:
	lw $t1, -3212($fp)
	lw $t2, -3216($fp)
	bne $t1, $t2, label209
	j label210
label209:
	lw $t0, -1348($fp)
	sw $t0, -3244($fp)
	j label208
label210:
	lw $t0, -2548($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2508
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	li $t0, 4
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	lw $t1, -3252($fp)
	add $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	lw $t1, 0($t0)
	sw $t1, -3268($fp)
	lw $t0, -3268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2508
	sw $t0, -3272($fp)
	li $t0, 1
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
	addi $t0, $fp, -2508
	sw $t0, -3292($fp)
	li $t0, 2
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
	addi $t0, $fp, -2508
	sw $t0, -3312($fp)
	li $t0, 3
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
	addi $t0, $fp, -2508
	sw $t0, -3332($fp)
	li $t0, 4
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
	addi $t0, $fp, -2540
	sw $t0, -3352($fp)
	li $t0, 0
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
	addi $t0, $fp, -2540
	sw $t0, -3372($fp)
	li $t0, 1
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
	addi $t0, $fp, -2540
	sw $t0, -3392($fp)
	li $t0, 2
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
	addi $t0, $fp, -2540
	sw $t0, -3412($fp)
	li $t0, 3
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
	addi $t0, $fp, -2540
	sw $t0, -3432($fp)
	li $t0, 4
	sw $t0, -3436($fp)
	li $t0, 4
	lw $t1, -3436($fp)
	mul $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, 0($t0)
	sw $t1, -3448($fp)
	lw $t0, -3448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2540
	sw $t0, -3452($fp)
	li $t0, 5
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
	lw $t0, -3468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2540
	sw $t0, -3472($fp)
	li $t0, 6
	sw $t0, -3476($fp)
	li $t0, 4
	lw $t1, -3476($fp)
	mul $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	lw $t1, -3472($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	lw $t1, 0($t0)
	sw $t1, -3488($fp)
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2540
	sw $t0, -3492($fp)
	li $t0, 7
	sw $t0, -3496($fp)
	li $t0, 4
	lw $t1, -3496($fp)
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, 0($t0)
	sw $t1, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2872($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2872($fp)
	sw $t0, -3516($fp)
	lw $ra, -4($fp)
	lw $v0, -3516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1360($fp)
	sw $t0, -3520($fp)
	lw $t1, -3520($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label213
label213:
	li $t0, 0
	sw $t0, -3524($fp)
	lw $t0, -1752($fp)
	sw $t0, -3528($fp)
	li $t0, 26897
	sw $t0, -3532($fp)
	li $t0, 0
	lw $t1, -3532($fp)
	sub $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t1, -3528($fp)
	lw $t2, -3536($fp)
	bgt $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -3524($fp)
label217:
	j label215
label214:
	li $t0, 0
	sw $t0, -3540($fp)
	li $t0, 8649
	sw $t0, -3544($fp)
	lw $t0, -1420($fp)
	sw $t0, -3548($fp)
	lw $t0, -3544($fp)
	lw $t1, -3548($fp)
	mul $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label220
label220:
	li $t0, 56423
	sw $t0, -3556($fp)
	lw $t1, -3556($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -3540($fp)
label219:
	li $t0, 0
	sw $t0, -3560($fp)
	li $t0, 49389
	sw $t0, -3564($fp)
	lw $t0, -1084($fp)
	sw $t0, -3568($fp)
	lw $t0, -3564($fp)
	lw $t1, -3568($fp)
	sub $t0, $t0, $t1
	sw $t0, -3572($fp)
	li $t0, 29390
	sw $t0, -3576($fp)
	lw $t1, -3572($fp)
	lw $t2, -3576($fp)
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -3560($fp)
label222:
	addi $sp, $sp, -4
	lw $t0, -3540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3560($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3580($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -96
	sw $t0, -3584($fp)
	li $t0, 0
	sw $t0, -3588($fp)
	li $t0, 60989
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label225:
	lw $t0, -1336($fp)
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -3588($fp)
label224:
	li $t0, 4
	lw $t1, -3588($fp)
	mul $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, 0($t0)
	sw $t1, -3608($fp)
	lw $t0, -3580($fp)
	lw $t1, -3608($fp)
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
label215:
label226:
	li $t0, 0
	sw $t0, -3616($fp)
	li $t0, 11888
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -3616($fp)
label231:
	lw $t0, -1072($fp)
	sw $t0, -3624($fp)
	li $t0, 0
	lw $t1, -3624($fp)
	sub $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3616($fp)
	lw $t1, -3628($fp)
	sub $t0, $t0, $t1
	sw $t0, -3632($fp)
	li $t0, 0
	sw $t0, -3636($fp)
	lw $t0, -1324($fp)
	sw $t0, -3640($fp)
	lw $t1, -3640($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label232:
	li $t0, 1
	sw $t0, -3636($fp)
label233:
	lw $t0, -3632($fp)
	lw $t1, -3636($fp)
	sub $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label229
label229:
	li $t0, 52510
	sw $t0, -3648($fp)
	lw $t0, -1336($fp)
	sw $t0, -3652($fp)
	lw $t0, -3648($fp)
	lw $t1, -3652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3656($fp)
	addi $t0, $fp, -72
	sw $t0, -3660($fp)
	lw $t0, -1396($fp)
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
	lw $t0, -3656($fp)
	lw $t1, -3676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3680($fp)
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 63572
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	sw $t0, -3724($fp)
	li $t0, 23166
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	sw $t0, -3736($fp)
	li $t0, 27552
	sw $t0, -3740($fp)
	addi $t0, $fp, -3712
	sw $t0, -3744($fp)
	li $t0, 0
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
	li $t0, 56430
	sw $t0, -3764($fp)
	addi $t0, $fp, -3712
	sw $t0, -3768($fp)
	li $t0, 1
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
	li $t0, 37529
	sw $t0, -3788($fp)
	addi $t0, $fp, -3712
	sw $t0, -3792($fp)
	li $t0, 2
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
	li $t0, 40314
	sw $t0, -3812($fp)
	addi $t0, $fp, -3712
	sw $t0, -3816($fp)
	li $t0, 3
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
	li $t0, 10995
	sw $t0, -3836($fp)
	addi $t0, $fp, -3712
	sw $t0, -3840($fp)
	li $t0, 4
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
	li $t0, 34250
	sw $t0, -3860($fp)
	addi $t0, $fp, -3712
	sw $t0, -3864($fp)
	li $t0, 5
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
	li $t0, 23484
	sw $t0, -3884($fp)
	addi $t0, $fp, -3712
	sw $t0, -3888($fp)
	li $t0, 6
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3888($fp)
	lw $t1, -3896($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3884($fp)
	lw $t1, -3900($fp)
	sw $t0, 0($t1)
	lw $t0, -3900($fp)
	lw $t1, 0($t0)
	sw $t1, -3904($fp)
	li $t0, 10791
	sw $t0, -3908($fp)
	addi $t0, $fp, -3712
	sw $t0, -3912($fp)
	li $t0, 7
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3912($fp)
	lw $t1, -3920($fp)
	add $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3908($fp)
	lw $t1, -3924($fp)
	sw $t0, 0($t1)
	lw $t0, -3924($fp)
	lw $t1, 0($t0)
	sw $t1, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	li $t0, 0
	sw $t0, -3936($fp)
	li $t0, 29520
	sw $t0, -3940($fp)
	lw $t0, -1072($fp)
	sw $t0, -3944($fp)
	li $t0, 7644
	sw $t0, -3948($fp)
	lw $t0, -3944($fp)
	lw $t1, -3948($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t1, -3940($fp)
	lw $t2, -3952($fp)
	ble $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -3936($fp)
label237:
	addi $t0, $fp, -72
	sw $t0, -3956($fp)
	li $t0, 8
	sw $t0, -3960($fp)
	li $t0, 4
	lw $t1, -3960($fp)
	mul $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	lw $t1, -3956($fp)
	add $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	lw $t1, 0($t0)
	sw $t1, -3972($fp)
	li $t0, 13219
	sw $t0, -3976($fp)
	lw $t0, -3972($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -1360($fp)
	sw $t0, -3984($fp)
	li $t0, 37665
	sw $t0, -3988($fp)
	lw $t0, -3984($fp)
	lw $t1, -3988($fp)
	add $t0, $t0, $t1
	sw $t0, -3992($fp)
	addi $sp, $sp, -4
	lw $t0, -3980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3996($fp)
	addi $sp, $sp, 12
	lw $t1, -3936($fp)
	lw $t2, -3996($fp)
	beq $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -3932($fp)
label235:
	li $t0, 0
	sw $t0, -4000($fp)
	lw $t0, -1072($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -4008($fp)
	li $t0, 0
	sw $t0, -4012($fp)
	li $t0, 32611
	sw $t0, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label240
label240:
	li $t0, 1
	sw $t0, -4012($fp)
label241:
	li $t0, 23894
	sw $t0, -4020($fp)
	lw $t0, -4012($fp)
	lw $t1, -4020($fp)
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	addi $sp, $sp, -4
	lw $t0, -4008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4024($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4028($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -36
	sw $t0, -4032($fp)
	lw $t0, -3732($fp)
	sw $t0, -4036($fp)
	li $t0, 4
	lw $t1, -4036($fp)
	mul $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, -4032($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, 0($t0)
	sw $t1, -4048($fp)
	li $t0, 0
	lw $t1, -4048($fp)
	sub $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t1, -4028($fp)
	lw $t2, -4052($fp)
	beq $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -4000($fp)
label239:
	li $t0, 0
	sw $t0, -4056($fp)
	addi $t0, $fp, -3712
	sw $t0, -4060($fp)
	lw $t0, -1348($fp)
	sw $t0, -4064($fp)
	li $t0, 4
	lw $t1, -4064($fp)
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	lw $t1, -4060($fp)
	add $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	lw $t1, 0($t0)
	sw $t1, -4076($fp)
	lw $t0, -3720($fp)
	sw $t0, -4080($fp)
	lw $t0, -4076($fp)
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	li $t0, 46405
	sw $t0, -4088($fp)
	lw $t0, -4084($fp)
	lw $t1, -4088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4092($fp)
	li $t0, 65212
	sw $t0, -4096($fp)
	lw $t1, -4092($fp)
	lw $t2, -4096($fp)
	ble $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -4056($fp)
label243:
	li $t0, 0
	sw $t0, -4100($fp)
	lw $t0, -1312($fp)
	sw $t0, -4104($fp)
	li $t0, 50044
	sw $t0, -4108($fp)
	lw $t0, -4104($fp)
	lw $t1, -4108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4112($fp)
	lw $t0, -1372($fp)
	sw $t0, -4116($fp)
	lw $t0, -1372($fp)
	sw $t0, -4120($fp)
	lw $t0, -4116($fp)
	lw $t1, -4120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4124($fp)
	lw $t0, -1420($fp)
	sw $t0, -4128($fp)
	lw $t0, -4124($fp)
	lw $t1, -4128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4132($fp)
	lw $t0, -4112($fp)
	lw $t1, -4132($fp)
	add $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label246
label246:
	li $t0, 45844
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -4144($fp)
	lw $t0, -1384($fp)
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -4152($fp)
	addi $sp, $sp, -4
	lw $t0, -4144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4156($fp)
	addi $sp, $sp, 12
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label244:
	li $t0, 1
	sw $t0, -4100($fp)
label245:
	li $t0, 61252
	sw $t0, -4160($fp)
	lw $t0, -1348($fp)
	sw $t0, -4164($fp)
	lw $t0, -4160($fp)
	lw $t1, -4164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4168($fp)
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, -1396($fp)
	sw $t0, -4176($fp)
	lw $t1, -4176($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label247:
	li $t0, 1
	sw $t0, -4172($fp)
label248:
	li $t0, 29697
	sw $t0, -4180($fp)
	lw $t0, -1360($fp)
	sw $t0, -4184($fp)
	lw $t0, -4180($fp)
	lw $t1, -4184($fp)
	sub $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -1312($fp)
	sw $t0, -4192($fp)
	li $t0, 11406
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4200($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4204($fp)
	addi $sp, $sp, 12
	lw $t0, -4172($fp)
	lw $t1, -4204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4208($fp)
	li $t0, 0
	lw $t1, -4208($fp)
	sub $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4168($fp)
	lw $t1, -4212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4216($fp)
	li $t0, 0
	sw $t0, -4220($fp)
	li $t0, 0
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	lw $t0, -1360($fp)
	sw $t0, -4232($fp)
	li $t0, 25106
	sw $t0, -4236($fp)
	lw $t0, -4232($fp)
	lw $t1, -4236($fp)
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	li $t0, 20055
	sw $t0, -4244($fp)
	lw $t0, -4240($fp)
	lw $t1, -4244($fp)
	sub $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -1408($fp)
	sw $t0, -4252($fp)
	lw $t1, -4248($fp)
	lw $t2, -4252($fp)
	bge $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -4228($fp)
label254:
	li $t0, 20585
	sw $t0, -4256($fp)
	lw $t0, -1360($fp)
	sw $t0, -4260($fp)
	lw $t0, -4256($fp)
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t1, -4228($fp)
	lw $t2, -4264($fp)
	ble $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -4224($fp)
label252:
	li $t0, 20559
	sw $t0, -4268($fp)
	lw $t1, -4224($fp)
	lw $t2, -4268($fp)
	bge $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -4220($fp)
label250:
	j label226
label228:
	li $t0, 0
	sw $t0, -4272($fp)
	addi $t0, $fp, -96
	sw $t0, -4276($fp)
	li $t0, 0
	sw $t0, -4280($fp)
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 31943
	sw $t0, -4288($fp)
	lw $t0, -1396($fp)
	sw $t0, -4292($fp)
	lw $t1, -4288($fp)
	lw $t2, -4292($fp)
	bge $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -4284($fp)
label260:
	lw $t0, -1348($fp)
	sw $t0, -4296($fp)
	lw $t1, -4284($fp)
	lw $t2, -4296($fp)
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -4280($fp)
label258:
	li $t0, 4
	lw $t1, -4280($fp)
	mul $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	lw $t1, 0($t0)
	sw $t1, -4308($fp)
	addi $t0, $fp, -172
	sw $t0, -4312($fp)
	li $t0, 0
	sw $t0, -4316($fp)
	li $t0, 7559
	sw $t0, -4320($fp)
	lw $t0, -1360($fp)
	sw $t0, -4324($fp)
	lw $t1, -4320($fp)
	lw $t2, -4324($fp)
	ble $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -4316($fp)
label262:
	li $t0, 4
	lw $t1, -4316($fp)
	mul $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	lw $t1, -4312($fp)
	add $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	lw $t1, 0($t0)
	sw $t1, -4336($fp)
	lw $t1, -4308($fp)
	lw $t2, -4336($fp)
	bge $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -4272($fp)
label256:
	lw $t0, -220($fp)
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4344($fp)
	li $t0, 0
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
	lw $t0, -4360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4364($fp)
	li $t0, 1
	sw $t0, -4368($fp)
	li $t0, 4
	lw $t1, -4368($fp)
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	lw $t1, 0($t0)
	sw $t1, -4380($fp)
	lw $t0, -4380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4384($fp)
	li $t0, 2
	sw $t0, -4388($fp)
	li $t0, 4
	lw $t1, -4388($fp)
	mul $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	lw $t1, -4384($fp)
	add $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	lw $t1, 0($t0)
	sw $t1, -4400($fp)
	lw $t0, -4400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4404($fp)
	li $t0, 3
	sw $t0, -4408($fp)
	li $t0, 4
	lw $t1, -4408($fp)
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	lw $t0, -4420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4424($fp)
	li $t0, 4
	sw $t0, -4428($fp)
	li $t0, 4
	lw $t1, -4428($fp)
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, -4424($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4444($fp)
	li $t0, 5
	sw $t0, -4448($fp)
	li $t0, 4
	lw $t1, -4448($fp)
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, -4444($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	lw $t1, 0($t0)
	sw $t1, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4464($fp)
	li $t0, 6
	sw $t0, -4468($fp)
	li $t0, 4
	lw $t1, -4468($fp)
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, 0($t0)
	sw $t1, -4480($fp)
	lw $t0, -4480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4484($fp)
	li $t0, 7
	sw $t0, -4488($fp)
	li $t0, 4
	lw $t1, -4488($fp)
	mul $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, 0($t0)
	sw $t1, -4500($fp)
	lw $t0, -4500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4504($fp)
	li $t0, 0
	sw $t0, -4508($fp)
	li $t0, 4
	lw $t1, -4508($fp)
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, 0($t0)
	sw $t1, -4520($fp)
	lw $t0, -4520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4524($fp)
	li $t0, 1
	sw $t0, -4528($fp)
	li $t0, 4
	lw $t1, -4528($fp)
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	lw $t1, -4524($fp)
	add $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	lw $t1, 0($t0)
	sw $t1, -4540($fp)
	lw $t0, -4540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4544($fp)
	li $t0, 2
	sw $t0, -4548($fp)
	li $t0, 4
	lw $t1, -4548($fp)
	mul $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	lw $t1, -4544($fp)
	add $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	lw $t1, 0($t0)
	sw $t1, -4560($fp)
	lw $t0, -4560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4564($fp)
	li $t0, 3
	sw $t0, -4568($fp)
	li $t0, 4
	lw $t1, -4568($fp)
	mul $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, -4564($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, 0($t0)
	sw $t1, -4580($fp)
	lw $t0, -4580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4584($fp)
	li $t0, 4
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
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4604($fp)
	li $t0, 5
	sw $t0, -4608($fp)
	li $t0, 4
	lw $t1, -4608($fp)
	mul $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	lw $t1, 0($t0)
	sw $t1, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4624($fp)
	li $t0, 6
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
	lw $t0, -4640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4644($fp)
	li $t0, 7
	sw $t0, -4648($fp)
	li $t0, 4
	lw $t1, -4648($fp)
	mul $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	lw $t1, -4644($fp)
	add $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	lw $t1, 0($t0)
	sw $t1, -4660($fp)
	lw $t0, -4660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4664($fp)
	li $t0, 8
	sw $t0, -4668($fp)
	li $t0, 4
	lw $t1, -4668($fp)
	mul $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	lw $t1, -4664($fp)
	add $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, 0($t0)
	sw $t1, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
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
	addi $t0, $fp, -84
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
	addi $t0, $fp, -84
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
	lw $t0, -712($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -4760($fp)
	li $t0, 0
	sw $t0, -4764($fp)
	li $t0, 4
	lw $t1, -4764($fp)
	mul $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	lw $t1, -4760($fp)
	add $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, 0($t0)
	sw $t1, -4776($fp)
	lw $t0, -4776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -4780($fp)
	li $t0, 1
	sw $t0, -4784($fp)
	li $t0, 4
	lw $t1, -4784($fp)
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, -4780($fp)
	add $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, 0($t0)
	sw $t1, -4796($fp)
	lw $t0, -4796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -4800($fp)
	li $t0, 2
	sw $t0, -4804($fp)
	li $t0, 4
	lw $t1, -4804($fp)
	mul $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	lw $t1, 0($t0)
	sw $t1, -4816($fp)
	lw $t0, -4816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4820($fp)
	li $t0, 0
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
	lw $t0, -4836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4840($fp)
	li $t0, 1
	sw $t0, -4844($fp)
	li $t0, 4
	lw $t1, -4844($fp)
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, 0($t0)
	sw $t1, -4856($fp)
	lw $t0, -4856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4860($fp)
	li $t0, 2
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
	lw $t0, -4876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4880($fp)
	li $t0, 3
	sw $t0, -4884($fp)
	li $t0, 4
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, 0($t0)
	sw $t1, -4896($fp)
	lw $t0, -4896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4900($fp)
	li $t0, 4
	sw $t0, -4904($fp)
	li $t0, 4
	lw $t1, -4904($fp)
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	lw $t1, -4900($fp)
	add $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	lw $t1, 0($t0)
	sw $t1, -4916($fp)
	lw $t0, -4916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4920($fp)
	li $t0, 5
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
	lw $t0, -4936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4940($fp)
	li $t0, 6
	sw $t0, -4944($fp)
	li $t0, 4
	lw $t1, -4944($fp)
	mul $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, 0($t0)
	sw $t1, -4956($fp)
	lw $t0, -4956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4960($fp)
	li $t0, 7
	sw $t0, -4964($fp)
	li $t0, 4
	lw $t1, -4964($fp)
	mul $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	lw $t1, -4960($fp)
	add $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	lw $t1, 0($t0)
	sw $t1, -4976($fp)
	lw $t0, -4976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4980($fp)
	li $t0, 8
	sw $t0, -4984($fp)
	li $t0, 4
	lw $t1, -4984($fp)
	mul $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	lw $t1, -4980($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, 0($t0)
	sw $t1, -4996($fp)
	lw $t0, -4996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -5000($fp)
	li $t0, 9
	sw $t0, -5004($fp)
	li $t0, 4
	lw $t1, -5004($fp)
	mul $t0, $t0, $t1
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	lw $t1, -5000($fp)
	add $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	lw $t1, 0($t0)
	sw $t1, -5016($fp)
	lw $t0, -5016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5028($fp)
	li $t0, 0
	sw $t0, -5032($fp)
	li $t0, 4
	lw $t1, -5032($fp)
	mul $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	lw $t1, -5028($fp)
	add $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	lw $t1, 0($t0)
	sw $t1, -5044($fp)
	lw $t0, -5044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5048($fp)
	li $t0, 1
	sw $t0, -5052($fp)
	li $t0, 4
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, -5048($fp)
	add $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	lw $t1, 0($t0)
	sw $t1, -5064($fp)
	lw $t0, -5064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5068($fp)
	li $t0, 2
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
	lw $t0, -5084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5088($fp)
	li $t0, 3
	sw $t0, -5092($fp)
	li $t0, 4
	lw $t1, -5092($fp)
	mul $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	lw $t1, -5088($fp)
	add $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	lw $t1, 0($t0)
	sw $t1, -5104($fp)
	lw $t0, -5104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5108($fp)
	li $t0, 4
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
	lw $t0, -5124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5128($fp)
	li $t0, 5
	sw $t0, -5132($fp)
	li $t0, 4
	lw $t1, -5132($fp)
	mul $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	lw $t1, -5128($fp)
	add $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	lw $t1, 0($t0)
	sw $t1, -5144($fp)
	lw $t0, -5144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5148($fp)
	li $t0, 6
	sw $t0, -5152($fp)
	li $t0, 4
	lw $t1, -5152($fp)
	mul $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	lw $t1, -5148($fp)
	add $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	lw $t1, 0($t0)
	sw $t1, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5168($fp)
	li $t0, 7
	sw $t0, -5172($fp)
	li $t0, 4
	lw $t1, -5172($fp)
	mul $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, -5168($fp)
	add $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	lw $t1, 0($t0)
	sw $t1, -5184($fp)
	lw $t0, -5184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -5188($fp)
	li $t0, 8
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
	lw $t0, -5204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1408($fp)
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1420($fp)
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5248($fp)
	li $t0, 0
	sw $t0, -5252($fp)
	li $t0, 4
	lw $t1, -5252($fp)
	mul $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	lw $t1, -5248($fp)
	add $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	lw $t1, 0($t0)
	sw $t1, -5264($fp)
	lw $t0, -5264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5268($fp)
	li $t0, 1
	sw $t0, -5272($fp)
	li $t0, 4
	lw $t1, -5272($fp)
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, -5268($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	lw $t1, 0($t0)
	sw $t1, -5284($fp)
	lw $t0, -5284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5288($fp)
	li $t0, 2
	sw $t0, -5292($fp)
	li $t0, 4
	lw $t1, -5292($fp)
	mul $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	lw $t1, -5288($fp)
	add $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	lw $t1, 0($t0)
	sw $t1, -5304($fp)
	lw $t0, -5304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5308($fp)
	li $t0, 3
	sw $t0, -5312($fp)
	li $t0, 4
	lw $t1, -5312($fp)
	mul $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	lw $t1, -5308($fp)
	add $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	lw $t1, 0($t0)
	sw $t1, -5324($fp)
	lw $t0, -5324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5328($fp)
	li $t0, 4
	sw $t0, -5332($fp)
	li $t0, 4
	lw $t1, -5332($fp)
	mul $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	lw $t1, -5328($fp)
	add $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, 0($t0)
	sw $t1, -5344($fp)
	lw $t0, -5344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5348($fp)
	li $t0, 5
	sw $t0, -5352($fp)
	li $t0, 4
	lw $t1, -5352($fp)
	mul $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	lw $t1, -5348($fp)
	add $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	lw $t1, 0($t0)
	sw $t1, -5364($fp)
	lw $t0, -5364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5368($fp)
	li $t0, 6
	sw $t0, -5372($fp)
	li $t0, 4
	lw $t1, -5372($fp)
	mul $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	lw $t1, -5368($fp)
	add $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	lw $t1, 0($t0)
	sw $t1, -5384($fp)
	lw $t0, -5384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5388($fp)
	li $t0, 7
	sw $t0, -5392($fp)
	li $t0, 4
	lw $t1, -5392($fp)
	mul $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, -5388($fp)
	add $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, 0($t0)
	sw $t1, -5404($fp)
	lw $t0, -5404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5408($fp)
	li $t0, 8
	sw $t0, -5412($fp)
	li $t0, 4
	lw $t1, -5412($fp)
	mul $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, -5408($fp)
	add $t0, $t0, $t1
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	lw $t1, 0($t0)
	sw $t1, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -5428($fp)
	li $t0, 9
	sw $t0, -5432($fp)
	li $t0, 4
	lw $t1, -5432($fp)
	mul $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, -5428($fp)
	add $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	lw $t1, 0($t0)
	sw $t1, -5444($fp)
	lw $t0, -5444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 18596
	sw $t0, -5448($fp)
	lw $ra, -4($fp)
	lw $v0, -5448($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label263:
	addi $t0, $fp, -212
	sw $t0, -5452($fp)
	lw $t0, -220($fp)
	sw $t0, -5456($fp)
	li $t0, 4
	lw $t1, -5456($fp)
	mul $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	lw $t1, -5452($fp)
	add $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, 0($t0)
	sw $t1, -5468($fp)
	lw $t1, -5468($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 55109
	sw $t0, -5472($fp)
	li $t0, 0
	lw $t1, -5472($fp)
	sub $t0, $t0, $t1
	sw $t0, -5476($fp)
	li $t0, 35111
	sw $t0, -5480($fp)
	li $t0, 9490
	sw $t0, -5484($fp)
	lw $t0, -5480($fp)
	lw $t1, -5484($fp)
	add $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t1, -5476($fp)
	lw $t2, -5488($fp)
	bge $t1, $t2, label266
	j label267
label266:
label269:
	li $t0, 0
	sw $t0, -5492($fp)
	lw $t0, -1324($fp)
	sw $t0, -5496($fp)
	li $t0, 27102
	sw $t0, -5500($fp)
	lw $t0, -5496($fp)
	lw $t1, -5500($fp)
	mul $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -1336($fp)
	sw $t0, -5508($fp)
	li $t0, 9889
	sw $t0, -5512($fp)
	lw $t0, -5508($fp)
	lw $t1, -5512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5516($fp)
	lw $t1, -5504($fp)
	lw $t2, -5516($fp)
	beq $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -5492($fp)
label273:
	lw $t0, -5492($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -5520($fp)
	lw $t1, -5520($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
label274:
	lw $t0, -1084($fp)
	sw $t0, -5524($fp)
	lw $t1, -5524($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 0
	sw $t0, -5528($fp)
	addi $t0, $fp, -72
	sw $t0, -5532($fp)
	li $t0, 1
	sw $t0, -5536($fp)
	li $t0, 4
	lw $t1, -5536($fp)
	mul $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	lw $t1, -5532($fp)
	add $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	lw $t1, 0($t0)
	sw $t1, -5548($fp)
	lw $t1, -5548($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label279:
	li $t0, 0
	sw $t0, -5552($fp)
	li $t0, 0
	sw $t0, -5556($fp)
	li $t0, 41018
	sw $t0, -5560($fp)
	lw $t1, -5560($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -5556($fp)
label283:
	lw $t0, -1084($fp)
	sw $t0, -5564($fp)
	lw $t1, -5556($fp)
	lw $t2, -5564($fp)
	ble $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -5552($fp)
label281:
	li $t0, 0
	sw $t0, -5568($fp)
	li $t0, 0
	sw $t0, -5572($fp)
	li $t0, 33374
	sw $t0, -5576($fp)
	li $t0, 31277
	sw $t0, -5580($fp)
	lw $t1, -5576($fp)
	lw $t2, -5580($fp)
	bge $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -5572($fp)
label287:
	li $t0, 25337
	sw $t0, -5584($fp)
	lw $t1, -5572($fp)
	lw $t2, -5584($fp)
	bge $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -5568($fp)
label285:
	lw $t0, -1084($fp)
	sw $t0, -5588($fp)
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5592($fp)
	addi $sp, $sp, 16
	li $t0, 3407
	sw $t0, -5596($fp)
	li $t0, 20017
	sw $t0, -5600($fp)
	lw $t0, -5596($fp)
	lw $t1, -5600($fp)
	add $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t1, -5592($fp)
	lw $t2, -5604($fp)
	bge $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -5528($fp)
label278:
	j label274
label276:
	j label269
label271:
	j label268
label267:
label288:
	lw $t0, -1396($fp)
	sw $t0, -5608($fp)
	lw $t0, -1336($fp)
	sw $t0, -5612($fp)
	lw $t0, -5608($fp)
	lw $t1, -5612($fp)
	mul $t0, $t0, $t1
	sw $t0, -5616($fp)
	li $t0, 0
	sw $t0, -5620($fp)
	lw $t0, -1384($fp)
	sw $t0, -5624($fp)
	li $t0, 0
	lw $t1, -5624($fp)
	sub $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t1, -5628($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -5620($fp)
label293:
	lw $t0, -5616($fp)
	lw $t1, -5620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5632($fp)
	lw $t1, -5632($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label291
label291:
	li $t0, 54228
	sw $t0, -5636($fp)
	lw $t0, -1408($fp)
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -5644($fp)
	addi $sp, $sp, -4
	lw $t0, -5636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5644($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5648($fp)
	addi $sp, $sp, 12
	lw $t1, -5648($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label290
label294:
	jal f9
	sw $v0, -5652($fp)
	addi $sp, $sp, 4
	lw $t1, -5652($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 0
	sw $t0, -5656($fp)
	addi $t0, $fp, -136
	sw $t0, -5660($fp)
	li $t0, 6
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
	lw $t1, -5676($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label298:
	li $t0, 1
	sw $t0, -5656($fp)
label299:
	lw $t0, -5656($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -5680($fp)
	lw $t1, -5680($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 52304
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -5688($fp)
	lw $t0, -1372($fp)
	sw $t0, -5692($fp)
	li $t0, 63032
	sw $t0, -5696($fp)
	lw $t0, -5692($fp)
	lw $t1, -5696($fp)
	mul $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -1360($fp)
	sw $t0, -5704($fp)
	lw $t0, -5700($fp)
	lw $t1, -5704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5708($fp)
	li $t0, 0
	sw $t0, -5712($fp)
	lw $t0, -724($fp)
	sw $t0, -5716($fp)
	li $t0, 12587
	sw $t0, -5720($fp)
	lw $t1, -5716($fp)
	lw $t2, -5720($fp)
	bne $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -5712($fp)
label301:
	addi $sp, $sp, -4
	lw $t0, -5688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5724($fp)
	addi $sp, $sp, 16
	j label297
label296:
	li $t0, 0
	sw $t0, -5728($fp)
	addi $t0, $fp, -84
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
	lw $t1, -5748($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label302:
	li $t0, 1
	sw $t0, -5728($fp)
label303:
	lw $t0, -1420($fp)
	sw $t0, -5752($fp)
	li $t0, 0
	lw $t1, -5752($fp)
	sub $t0, $t0, $t1
	sw $t0, -5756($fp)
	li $t0, 62631
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -5764($fp)
	addi $sp, $sp, -4
	lw $t0, -5728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5768($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5768($fp)
	sub $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $ra, -4($fp)
	lw $v0, -5772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label297:
	j label288
label290:
label268:
	j label263
label265:
	lw $t0, -220($fp)
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5780($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -5800($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -5820($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -5840($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -5860($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -5880($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -5900($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -5920($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -5940($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -5960($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -5980($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -6000($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -6020($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -6040($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -6060($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -6080($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -6100($fp)
	li $t0, 8
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
	addi $t0, $fp, -84
	sw $t0, -6120($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -6140($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -6160($fp)
	li $t0, 2
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
	lw $t0, -712($fp)
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6196($fp)
	li $t0, 0
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
	lw $t0, -6212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6216($fp)
	li $t0, 1
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
	lw $t0, -6232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6236($fp)
	li $t0, 2
	sw $t0, -6240($fp)
	li $t0, 4
	lw $t1, -6240($fp)
	mul $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	lw $t1, -6236($fp)
	add $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	lw $t1, 0($t0)
	sw $t1, -6252($fp)
	lw $t0, -6252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6256($fp)
	li $t0, 0
	sw $t0, -6260($fp)
	li $t0, 4
	lw $t1, -6260($fp)
	mul $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	lw $t1, -6256($fp)
	add $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	lw $t1, 0($t0)
	sw $t1, -6272($fp)
	lw $t0, -6272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6276($fp)
	li $t0, 1
	sw $t0, -6280($fp)
	li $t0, 4
	lw $t1, -6280($fp)
	mul $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	lw $t1, -6276($fp)
	add $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -6288($fp)
	lw $t1, 0($t0)
	sw $t1, -6292($fp)
	lw $t0, -6292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6296($fp)
	li $t0, 2
	sw $t0, -6300($fp)
	li $t0, 4
	lw $t1, -6300($fp)
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	lw $t1, -6296($fp)
	add $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	lw $t1, 0($t0)
	sw $t1, -6312($fp)
	lw $t0, -6312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6316($fp)
	li $t0, 3
	sw $t0, -6320($fp)
	li $t0, 4
	lw $t1, -6320($fp)
	mul $t0, $t0, $t1
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	lw $t1, -6316($fp)
	add $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -6328($fp)
	lw $t1, 0($t0)
	sw $t1, -6332($fp)
	lw $t0, -6332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6336($fp)
	li $t0, 4
	sw $t0, -6340($fp)
	li $t0, 4
	lw $t1, -6340($fp)
	mul $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	lw $t1, -6336($fp)
	add $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	lw $t1, 0($t0)
	sw $t1, -6352($fp)
	lw $t0, -6352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6356($fp)
	li $t0, 5
	sw $t0, -6360($fp)
	li $t0, 4
	lw $t1, -6360($fp)
	mul $t0, $t0, $t1
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	lw $t1, -6356($fp)
	add $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	lw $t1, 0($t0)
	sw $t1, -6372($fp)
	lw $t0, -6372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6376($fp)
	li $t0, 6
	sw $t0, -6380($fp)
	li $t0, 4
	lw $t1, -6380($fp)
	mul $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	lw $t1, -6376($fp)
	add $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	lw $t1, 0($t0)
	sw $t1, -6392($fp)
	lw $t0, -6392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6396($fp)
	li $t0, 7
	sw $t0, -6400($fp)
	li $t0, 4
	lw $t1, -6400($fp)
	mul $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	lw $t1, -6396($fp)
	add $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	lw $t1, 0($t0)
	sw $t1, -6412($fp)
	lw $t0, -6412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6416($fp)
	li $t0, 8
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
	lw $t0, -6432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6436($fp)
	li $t0, 9
	sw $t0, -6440($fp)
	li $t0, 4
	lw $t1, -6440($fp)
	mul $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	lw $t1, -6436($fp)
	add $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	lw $t1, 0($t0)
	sw $t1, -6452($fp)
	lw $t0, -6452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -6464($fp)
	li $t0, 0
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
	addi $t0, $fp, -172
	sw $t0, -6484($fp)
	li $t0, 1
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
	addi $t0, $fp, -172
	sw $t0, -6504($fp)
	li $t0, 2
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
	addi $t0, $fp, -172
	sw $t0, -6524($fp)
	li $t0, 3
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
	addi $t0, $fp, -172
	sw $t0, -6544($fp)
	li $t0, 4
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
	addi $t0, $fp, -172
	sw $t0, -6564($fp)
	li $t0, 5
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
	lw $t0, -6580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -6584($fp)
	li $t0, 6
	sw $t0, -6588($fp)
	li $t0, 4
	lw $t1, -6588($fp)
	mul $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	lw $t1, -6584($fp)
	add $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	lw $t1, 0($t0)
	sw $t1, -6600($fp)
	lw $t0, -6600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -6604($fp)
	li $t0, 7
	sw $t0, -6608($fp)
	li $t0, 4
	lw $t1, -6608($fp)
	mul $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	lw $t1, -6604($fp)
	add $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	lw $t1, 0($t0)
	sw $t1, -6620($fp)
	lw $t0, -6620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -6624($fp)
	li $t0, 8
	sw $t0, -6628($fp)
	li $t0, 4
	lw $t1, -6628($fp)
	mul $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, -6624($fp)
	add $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	lw $t1, 0($t0)
	sw $t1, -6640($fp)
	lw $t0, -6640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1408($fp)
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1420($fp)
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6684($fp)
	li $t0, 0
	sw $t0, -6688($fp)
	li $t0, 4
	lw $t1, -6688($fp)
	mul $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, 0($t0)
	sw $t1, -6700($fp)
	lw $t0, -6700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6704($fp)
	li $t0, 1
	sw $t0, -6708($fp)
	li $t0, 4
	lw $t1, -6708($fp)
	mul $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	lw $t1, -6704($fp)
	add $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	lw $t1, 0($t0)
	sw $t1, -6720($fp)
	lw $t0, -6720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6724($fp)
	li $t0, 2
	sw $t0, -6728($fp)
	li $t0, 4
	lw $t1, -6728($fp)
	mul $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	lw $t1, -6724($fp)
	add $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	lw $t1, 0($t0)
	sw $t1, -6740($fp)
	lw $t0, -6740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6744($fp)
	li $t0, 3
	sw $t0, -6748($fp)
	li $t0, 4
	lw $t1, -6748($fp)
	mul $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	lw $t1, -6744($fp)
	add $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6756($fp)
	lw $t1, 0($t0)
	sw $t1, -6760($fp)
	lw $t0, -6760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6764($fp)
	li $t0, 4
	sw $t0, -6768($fp)
	li $t0, 4
	lw $t1, -6768($fp)
	mul $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, -6764($fp)
	add $t0, $t0, $t1
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	lw $t1, 0($t0)
	sw $t1, -6780($fp)
	lw $t0, -6780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6784($fp)
	li $t0, 5
	sw $t0, -6788($fp)
	li $t0, 4
	lw $t1, -6788($fp)
	mul $t0, $t0, $t1
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	lw $t1, -6784($fp)
	add $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	lw $t1, 0($t0)
	sw $t1, -6800($fp)
	lw $t0, -6800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6804($fp)
	li $t0, 6
	sw $t0, -6808($fp)
	li $t0, 4
	lw $t1, -6808($fp)
	mul $t0, $t0, $t1
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	lw $t1, -6804($fp)
	add $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	lw $t1, 0($t0)
	sw $t1, -6820($fp)
	lw $t0, -6820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6824($fp)
	li $t0, 7
	sw $t0, -6828($fp)
	li $t0, 4
	lw $t1, -6828($fp)
	mul $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t0, -6832($fp)
	lw $t1, -6824($fp)
	add $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	lw $t1, 0($t0)
	sw $t1, -6840($fp)
	lw $t0, -6840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6844($fp)
	li $t0, 8
	sw $t0, -6848($fp)
	li $t0, 4
	lw $t1, -6848($fp)
	mul $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	lw $t1, -6844($fp)
	add $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	lw $t1, 0($t0)
	sw $t1, -6860($fp)
	lw $t0, -6860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6864($fp)
	li $t0, 9
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
	lw $t0, -6880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -6884($fp)
	addi $t0, $fp, -36
	sw $t0, -6888($fp)
	addi $t0, $fp, -96
	sw $t0, -6892($fp)
	li $t0, 2
	sw $t0, -6896($fp)
	li $t0, 4
	lw $t1, -6896($fp)
	mul $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, -6892($fp)
	add $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	lw $t1, 0($t0)
	sw $t1, -6908($fp)
	li $t0, 28087
	sw $t0, -6912($fp)
	lw $t0, -6908($fp)
	lw $t1, -6912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6916($fp)
	li $t0, 0
	sw $t0, -6920($fp)
	lw $t0, -1312($fp)
	sw $t0, -6924($fp)
	lw $t0, -1348($fp)
	sw $t0, -6928($fp)
	lw $t0, -6924($fp)
	lw $t1, -6928($fp)
	sub $t0, $t0, $t1
	sw $t0, -6932($fp)
	lw $t1, -6932($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label306
label306:
	li $t0, 7502
	sw $t0, -6936($fp)
	lw $t1, -6936($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -6920($fp)
label305:
	li $t0, 0
	sw $t0, -6940($fp)
	li $t0, 0
	sw $t0, -6944($fp)
	lw $t0, -736($fp)
	sw $t0, -6948($fp)
	lw $t1, -6948($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label310
label312:
	li $t0, 8501
	sw $t0, -6952($fp)
	lw $t1, -6952($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label311:
	lw $t0, -724($fp)
	sw $t0, -6956($fp)
	lw $t1, -6956($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -6944($fp)
label310:
	lw $t0, -1336($fp)
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -6964($fp)
	addi $sp, $sp, -4
	lw $t0, -6944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6964($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6968($fp)
	addi $sp, $sp, 12
	lw $t1, -6968($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label307:
	li $t0, 1
	sw $t0, -6940($fp)
label308:
	addi $t0, $fp, -136
	sw $t0, -6972($fp)
	lw $t0, -220($fp)
	sw $t0, -6976($fp)
	li $t0, 4
	lw $t1, -6976($fp)
	mul $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	lw $t1, -6972($fp)
	add $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	lw $t1, 0($t0)
	sw $t1, -6988($fp)
	addi $sp, $sp, -4
	lw $t0, -6940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6988($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6992($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -6916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6996($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -6996($fp)
	mul $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	lw $t1, -6888($fp)
	add $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	lw $t1, 0($t0)
	sw $t1, -7008($fp)
	lw $t0, -6884($fp)
	lw $t1, -7008($fp)
	sub $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $ra, -4($fp)
	lw $v0, -7012($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7728
	li $t0, 28151
	sw $t0, -196($fp)
	addi $t0, $fp, -44
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
	li $t0, 60499
	sw $t0, -220($fp)
	addi $t0, $fp, -44
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
	li $t0, 35646
	sw $t0, -244($fp)
	addi $t0, $fp, -44
	sw $t0, -248($fp)
	li $t0, 2
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
	li $t0, 46747
	sw $t0, -268($fp)
	addi $t0, $fp, -44
	sw $t0, -272($fp)
	li $t0, 3
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
	li $t0, 50072
	sw $t0, -292($fp)
	addi $t0, $fp, -44
	sw $t0, -296($fp)
	li $t0, 4
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
	li $t0, 5221
	sw $t0, -316($fp)
	addi $t0, $fp, -44
	sw $t0, -320($fp)
	li $t0, 5
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
	li $t0, 56237
	sw $t0, -340($fp)
	addi $t0, $fp, -44
	sw $t0, -344($fp)
	li $t0, 6
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
	li $t0, 11639
	sw $t0, -364($fp)
	addi $t0, $fp, -44
	sw $t0, -368($fp)
	li $t0, 7
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
	li $t0, 15110
	sw $t0, -388($fp)
	addi $t0, $fp, -44
	sw $t0, -392($fp)
	li $t0, 8
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
	li $t0, 11187
	sw $t0, -412($fp)
	addi $t0, $fp, -44
	sw $t0, -416($fp)
	li $t0, 9
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
	li $t0, 7455
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 48484
	sw $t0, -448($fp)
	addi $t0, $fp, -80
	sw $t0, -452($fp)
	li $t0, 0
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
	li $t0, 42465
	sw $t0, -472($fp)
	addi $t0, $fp, -80
	sw $t0, -476($fp)
	li $t0, 1
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
	li $t0, 32792
	sw $t0, -496($fp)
	addi $t0, $fp, -80
	sw $t0, -500($fp)
	li $t0, 2
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
	li $t0, 23967
	sw $t0, -520($fp)
	addi $t0, $fp, -80
	sw $t0, -524($fp)
	li $t0, 3
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
	li $t0, 45872
	sw $t0, -544($fp)
	addi $t0, $fp, -80
	sw $t0, -548($fp)
	li $t0, 4
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
	li $t0, 52809
	sw $t0, -568($fp)
	addi $t0, $fp, -80
	sw $t0, -572($fp)
	li $t0, 5
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
	li $t0, 12659
	sw $t0, -592($fp)
	addi $t0, $fp, -80
	sw $t0, -596($fp)
	li $t0, 6
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
	li $t0, 62498
	sw $t0, -616($fp)
	addi $t0, $fp, -80
	sw $t0, -620($fp)
	li $t0, 7
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
	li $t0, 39901
	sw $t0, -640($fp)
	addi $t0, $fp, -80
	sw $t0, -644($fp)
	li $t0, 8
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
	li $t0, 25246
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 59994
	sw $t0, -676($fp)
	addi $t0, $fp, -84
	sw $t0, -680($fp)
	li $t0, 0
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
	li $t0, 26670
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 22342
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 37799
	sw $t0, -724($fp)
	addi $t0, $fp, -116
	sw $t0, -728($fp)
	li $t0, 0
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
	li $t0, 9155
	sw $t0, -748($fp)
	addi $t0, $fp, -116
	sw $t0, -752($fp)
	li $t0, 1
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
	li $t0, 30843
	sw $t0, -772($fp)
	addi $t0, $fp, -116
	sw $t0, -776($fp)
	li $t0, 2
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
	li $t0, 45301
	sw $t0, -796($fp)
	addi $t0, $fp, -116
	sw $t0, -800($fp)
	li $t0, 3
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
	li $t0, 16746
	sw $t0, -820($fp)
	addi $t0, $fp, -116
	sw $t0, -824($fp)
	li $t0, 4
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
	li $t0, 59400
	sw $t0, -844($fp)
	addi $t0, $fp, -116
	sw $t0, -848($fp)
	li $t0, 5
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
	li $t0, 7852
	sw $t0, -868($fp)
	addi $t0, $fp, -116
	sw $t0, -872($fp)
	li $t0, 6
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
	li $t0, 44897
	sw $t0, -892($fp)
	addi $t0, $fp, -116
	sw $t0, -896($fp)
	li $t0, 7
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
	li $t0, 54363
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 43498
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 26108
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 38900
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 48719
	sw $t0, -964($fp)
	addi $t0, $fp, -152
	sw $t0, -968($fp)
	li $t0, 0
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
	li $t0, 16810
	sw $t0, -988($fp)
	addi $t0, $fp, -152
	sw $t0, -992($fp)
	li $t0, 1
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
	li $t0, 50539
	sw $t0, -1012($fp)
	addi $t0, $fp, -152
	sw $t0, -1016($fp)
	li $t0, 2
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
	li $t0, 63829
	sw $t0, -1036($fp)
	addi $t0, $fp, -152
	sw $t0, -1040($fp)
	li $t0, 3
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
	li $t0, 27997
	sw $t0, -1060($fp)
	addi $t0, $fp, -152
	sw $t0, -1064($fp)
	li $t0, 4
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
	li $t0, 57994
	sw $t0, -1084($fp)
	addi $t0, $fp, -152
	sw $t0, -1088($fp)
	li $t0, 5
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
	li $t0, 46778
	sw $t0, -1108($fp)
	addi $t0, $fp, -152
	sw $t0, -1112($fp)
	li $t0, 6
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
	li $t0, 4926
	sw $t0, -1132($fp)
	addi $t0, $fp, -152
	sw $t0, -1136($fp)
	li $t0, 7
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
	li $t0, 25251
	sw $t0, -1156($fp)
	addi $t0, $fp, -152
	sw $t0, -1160($fp)
	li $t0, 8
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
	li $t0, 5209
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 50798
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 12524
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 17868
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 47761
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 52426
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 43115
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 42219
	sw $t0, -1264($fp)
	addi $t0, $fp, -176
	sw $t0, -1268($fp)
	li $t0, 0
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
	li $t0, 13560
	sw $t0, -1288($fp)
	addi $t0, $fp, -176
	sw $t0, -1292($fp)
	li $t0, 1
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
	li $t0, 65457
	sw $t0, -1312($fp)
	addi $t0, $fp, -176
	sw $t0, -1316($fp)
	li $t0, 2
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
	li $t0, 14482
	sw $t0, -1336($fp)
	addi $t0, $fp, -176
	sw $t0, -1340($fp)
	li $t0, 3
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
	li $t0, 22715
	sw $t0, -1360($fp)
	addi $t0, $fp, -176
	sw $t0, -1364($fp)
	li $t0, 4
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
	li $t0, 30764
	sw $t0, -1384($fp)
	addi $t0, $fp, -176
	sw $t0, -1388($fp)
	li $t0, 5
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
	li $t0, 59783
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 39461
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 24628
	sw $t0, -1432($fp)
	addi $t0, $fp, -184
	sw $t0, -1436($fp)
	li $t0, 0
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
	li $t0, 2099
	sw $t0, -1456($fp)
	addi $t0, $fp, -184
	sw $t0, -1460($fp)
	li $t0, 1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1460($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1456($fp)
	lw $t1, -1472($fp)
	sw $t0, 0($t1)
	lw $t0, -1472($fp)
	lw $t1, 0($t0)
	sw $t1, -1476($fp)
	li $t0, 18823
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	li $t0, 13456
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 45597
	sw $t0, -1504($fp)
	addi $t0, $fp, -192
	sw $t0, -1508($fp)
	li $t0, 0
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
	li $t0, 44931
	sw $t0, -1528($fp)
	addi $t0, $fp, -192
	sw $t0, -1532($fp)
	li $t0, 1
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
	li $t0, 52356
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 28780
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 61741
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 37359
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 27074
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	lw $t0, -704($fp)
	sw $t0, -1612($fp)
label313:
	lw $t0, -1232($fp)
	sw $t0, -1616($fp)
	lw $t0, -1244($fp)
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1624($fp)
	li $t0, 29817
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1632($fp)
	li $t0, 0
	sw $t0, -1636($fp)
	lw $t0, -716($fp)
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label316:
	li $t0, 1
	sw $t0, -1636($fp)
label317:
	li $t0, 24203
	sw $t0, -1644($fp)
	lw $t0, -1636($fp)
	lw $t1, -1644($fp)
	add $t0, $t0, $t1
	sw $t0, -1648($fp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1652($fp)
	addi $sp, $sp, 12
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 8316
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	li $t0, 29129
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 55068
	sw $t0, -1688($fp)
	addi $t0, $fp, -1660
	sw $t0, -1692($fp)
	li $t0, 0
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
	li $t0, 13525
	sw $t0, -1712($fp)
	addi $t0, $fp, -1660
	sw $t0, -1716($fp)
	li $t0, 1
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
	li $t0, 14392
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 2057
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 0
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 31393
	sw $t0, -1768($fp)
	li $t0, 62153
	sw $t0, -1772($fp)
	lw $t1, -1768($fp)
	lw $t2, -1772($fp)
	bge $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -1764($fp)
label322:
	lw $t0, -1752($fp)
	sw $t0, -1776($fp)
	lw $t1, -1764($fp)
	lw $t2, -1776($fp)
	ble $t1, $t2, label320
	j label319
label320:
	lw $t0, -1592($fp)
	sw $t0, -1780($fp)
	li $t0, 0
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -1760($fp)
label319:
	lw $t0, -1760($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -1788($fp)
label323:
	li $t0, 0
	sw $t0, -1792($fp)
	jal f9
	sw $v0, -1796($fp)
	addi $sp, $sp, 4
	li $t0, 2507
	sw $t0, -1800($fp)
	lw $t1, -1796($fp)
	lw $t2, -1800($fp)
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -1792($fp)
label328:
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 54483
	sw $t0, -1808($fp)
	li $t0, 8972
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	li $t0, 38836
	sw $t0, -1820($fp)
	lw $t1, -1816($fp)
	lw $t2, -1820($fp)
	bge $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -1804($fp)
label330:
	lw $t0, -1256($fp)
	sw $t0, -1824($fp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1828($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -152
	sw $t0, -1832($fp)
	lw $t0, -668($fp)
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
	lw $t0, -1828($fp)
	lw $t1, -1848($fp)
	sub $t0, $t0, $t1
	sw $t0, -1852($fp)
	addi $t0, $fp, -184
	sw $t0, -1856($fp)
	lw $t0, -1580($fp)
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
	lw $t1, -1852($fp)
	lw $t2, -1872($fp)
	bne $t1, $t2, label326
	j label325
label326:
	li $t0, 8893
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label324:
	li $t0, 0
	sw $t0, -1880($fp)
	lw $t0, -956($fp)
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label331:
	li $t0, 1
	sw $t0, -1880($fp)
label332:
	li $t0, 0
	sw $t0, -1888($fp)
	addi $t0, $fp, -80
	sw $t0, -1892($fp)
	li $t0, 3
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
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -1888($fp)
label334:
	lw $t0, -1880($fp)
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	j label323
label325:
	li $t0, 0
	sw $t0, -1916($fp)
	addi $t0, $fp, -116
	sw $t0, -1920($fp)
	li $t0, 0
	sw $t0, -1924($fp)
	li $t0, 39658
	sw $t0, -1928($fp)
	li $t0, 47566
	sw $t0, -1932($fp)
	lw $t1, -1928($fp)
	lw $t2, -1932($fp)
	beq $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -1924($fp)
label338:
	li $t0, 4
	lw $t1, -1924($fp)
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label335
label335:
	li $t0, 1
	sw $t0, -1916($fp)
label336:
label339:
	li $t0, 64683
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	lw $t0, -1604($fp)
	sw $t0, -1960($fp)
	li $t0, 0
	lw $t1, -1960($fp)
	sub $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label346:
	lw $t0, -440($fp)
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -1956($fp)
label345:
	li $t0, 0
	sw $t0, -1972($fp)
	lw $t0, -1424($fp)
	sw $t0, -1976($fp)
	li $t0, 12206
	sw $t0, -1980($fp)
	lw $t1, -1976($fp)
	lw $t2, -1980($fp)
	blt $t1, $t2, label349
	j label348
label349:
	lw $t0, -1256($fp)
	sw $t0, -1984($fp)
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -1972($fp)
label348:
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1988($fp)
	addi $sp, $sp, 12
	li $t0, 29727
	sw $t0, -1992($fp)
	lw $t1, -1988($fp)
	lw $t2, -1992($fp)
	ble $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -1952($fp)
label343:
	li $t0, 0
	sw $t0, -1996($fp)
	lw $t0, -1220($fp)
	sw $t0, -2000($fp)
	li $t0, 49666
	sw $t0, -2004($fp)
	lw $t0, -2000($fp)
	lw $t1, -2004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2008($fp)
	li $t0, 17970
	sw $t0, -2012($fp)
	lw $t1, -2008($fp)
	lw $t2, -2012($fp)
	blt $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -1996($fp)
label351:
	lw $t0, -1580($fp)
	sw $t0, -2016($fp)
	li $t0, 64286
	sw $t0, -2020($fp)
	lw $t0, -2016($fp)
	lw $t1, -2020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2024($fp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2028($fp)
	addi $sp, $sp, 16
	lw $t0, -1948($fp)
	lw $t1, -2028($fp)
	sub $t0, $t0, $t1
	sw $t0, -2032($fp)
	addi $t0, $fp, -44
	sw $t0, -2036($fp)
	li $t0, 2
	sw $t0, -2040($fp)
	li $t0, 4
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	li $t0, 0
	lw $t1, -2052($fp)
	sub $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2032($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t1, -2060($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 0
	sw $t0, -2064($fp)
	li $t0, 58508
	sw $t0, -2068($fp)
	li $t0, 0
	lw $t1, -2068($fp)
	sub $t0, $t0, $t1
	sw $t0, -2072($fp)
	li $t0, 0
	lw $t1, -2072($fp)
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -1580($fp)
	sw $t0, -2080($fp)
	li $t0, 0
	lw $t1, -2080($fp)
	sub $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t1, -2076($fp)
	lw $t2, -2084($fp)
	ble $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -2064($fp)
label353:
	j label339
label341:
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 59107
	sw $t0, -2092($fp)
	lw $t0, -1196($fp)
	sw $t0, -2096($fp)
	lw $t0, -2092($fp)
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2100($fp)
	li $t0, 36385
	sw $t0, -2104($fp)
	lw $t1, -2100($fp)
	lw $t2, -2104($fp)
	beq $t1, $t2, label354
	j label356
label356:
	li $t0, 20046
	sw $t0, -2108($fp)
	li $t0, 17774
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -2088($fp)
label355:
	lw $t0, -2088($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -2120($fp)
	lw $ra, -4($fp)
	lw $v0, -2120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label357:
	li $t0, 667
	sw $t0, -2124($fp)
	li $t0, 0
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -1668($fp)
	sw $t0, -2132($fp)
	li $t0, 28362
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	li $t0, 46904
	sw $t0, -2144($fp)
	lw $t0, -2140($fp)
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	addi $t0, $fp, -44
	sw $t0, -2152($fp)
	lw $t0, -1412($fp)
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
	lw $t0, -2148($fp)
	lw $t1, -2168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2172($fp)
	lw $t1, -2128($fp)
	lw $t2, -2172($fp)
	beq $t1, $t2, label358
	j label359
label358:
	lw $t0, -1412($fp)
	sw $t0, -2176($fp)
	lw $t0, -668($fp)
	sw $t0, -2180($fp)
	li $t0, 0
	lw $t1, -2180($fp)
	sub $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2176($fp)
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	li $t0, 0
	sw $t0, -2192($fp)
	li $t0, 0
	sw $t0, -2196($fp)
	lw $t0, -920($fp)
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -2196($fp)
label363:
	lw $t0, -1592($fp)
	sw $t0, -2204($fp)
	lw $t0, -2196($fp)
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	li $t0, 0
	sw $t0, -2212($fp)
	lw $t0, -1752($fp)
	sw $t0, -2216($fp)
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label365
label367:
	lw $t0, -1752($fp)
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label365
label366:
	lw $t0, -668($fp)
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -2212($fp)
label365:
	lw $t0, -1752($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -2232($fp)
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2236($fp)
	addi $sp, $sp, 16
	li $t0, 46739
	sw $t0, -2240($fp)
	lw $t1, -2236($fp)
	lw $t2, -2240($fp)
	beq $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -2192($fp)
label361:
	jal f9
	sw $v0, -2244($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2248($fp)
	li $t0, 7744
	sw $t0, -2252($fp)
	lw $t0, -1244($fp)
	sw $t0, -2256($fp)
	lw $t0, -2252($fp)
	lw $t1, -2256($fp)
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label369
label370:
	li $t0, 57913
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -2248($fp)
label369:
	li $t0, 0
	sw $t0, -2268($fp)
	li $t0, 57792
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label373:
	lw $t0, -1424($fp)
	sw $t0, -2276($fp)
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -2268($fp)
label372:
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2268($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2280($fp)
	addi $sp, $sp, 12
	li $t0, 55735
	sw $t0, -2284($fp)
	li $t0, 1
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	li $t0, 61296
	sw $t0, -2296($fp)
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2300($fp)
	addi $sp, $sp, -4
	lw $t0, -2192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2304($fp)
	addi $sp, $sp, 20
	lw $t0, -2188($fp)
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	j label357
label359:
	li $t0, 0
	sw $t0, -2312($fp)
	lw $t0, 4($fp)
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label376
label376:
	lw $t0, -1424($fp)
	sw $t0, -2320($fp)
	li $t0, 16717
	sw $t0, -2324($fp)
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -2312($fp)
label375:
	lw $ra, -4($fp)
	lw $v0, -2312($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1668($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1680($fp)
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1660
	sw $t0, -2340($fp)
	li $t0, 0
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
	addi $t0, $fp, -1660
	sw $t0, -2360($fp)
	li $t0, 1
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
	lw $t0, -1740($fp)
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1680($fp)
	sw $t0, -2388($fp)
	lw $ra, -4($fp)
	lw $v0, -2388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label377:
	addi $t0, $fp, -1660
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
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 25610
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	li $t0, 18996
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	li $t0, 8932
	sw $t0, -2436($fp)
	jal f9
	sw $v0, -2440($fp)
	addi $sp, $sp, 4
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2444($fp)
	li $t0, 0
	lw $t1, -2444($fp)
	sub $t0, $t0, $t1
	sw $t0, -2448($fp)
	li $t0, 0
	sw $t0, -2452($fp)
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 65268
	sw $t0, -2460($fp)
	li $t0, 0
	sw $t0, -2464($fp)
	li $t0, 1027
	sw $t0, -2468($fp)
	li $t0, 0
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label384:
	li $t0, 1
	sw $t0, -2464($fp)
label385:
	lw $t1, -2460($fp)
	lw $t2, -2464($fp)
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -2456($fp)
label383:
	li $t0, 0
	sw $t0, -2476($fp)
	addi $t0, $fp, -44
	sw $t0, -2480($fp)
	li $t0, 1
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
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label386:
	li $t0, 1
	sw $t0, -2476($fp)
label387:
	lw $t1, -2456($fp)
	lw $t2, -2476($fp)
	beq $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -2452($fp)
label381:
	li $t0, 50693
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	sw $t0, -2508($fp)
	li $t0, 26050
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	li $t0, 10689
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 16988
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -2544($fp)
	li $t0, 0
	sw $t0, -2548($fp)
	li $t0, 23416
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label393
label394:
	li $t0, 9716
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label393
label393:
	li $t0, 7856
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -2548($fp)
label392:
	li $t0, 14884
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -2568($fp)
	addi $sp, $sp, -4
	lw $t0, -2544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2572($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2572($fp)
	sub $t0, $t0, $t1
	sw $t0, -2576($fp)
	li $t0, 0
	sw $t0, -2580($fp)
	lw $t0, -956($fp)
	sw $t0, -2584($fp)
	li $t0, 46768
	sw $t0, -2588($fp)
	lw $t1, -2584($fp)
	lw $t2, -2588($fp)
	bge $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -2580($fp)
label396:
	li $t0, 0
	sw $t0, -2592($fp)
	li $t0, 27902
	sw $t0, -2596($fp)
	lw $t0, -1424($fp)
	sw $t0, -2600($fp)
	lw $t0, -2596($fp)
	lw $t1, -2600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2604($fp)
	li $t0, 34762
	sw $t0, -2608($fp)
	lw $t1, -2604($fp)
	lw $t2, -2608($fp)
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -2592($fp)
label398:
	li $t0, 46101
	sw $t0, -2612($fp)
	lw $t0, -944($fp)
	sw $t0, -2616($fp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2620($fp)
	addi $sp, $sp, 20
	li $t0, 56264
	sw $t0, -2624($fp)
	lw $t0, -2620($fp)
	lw $t1, -2624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2628($fp)
	lw $t0, -2576($fp)
	lw $t1, -2628($fp)
	sub $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label390:
	li $t0, 0
	sw $t0, -2636($fp)
	lw $t0, -932($fp)
	sw $t0, -2640($fp)
	li $t0, 40360
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	mul $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t1, -2648($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label401
label401:
	li $t0, 4267
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -2636($fp)
label400:
	li $t0, 0
	sw $t0, -2656($fp)
	li $t0, 11890
	sw $t0, -2660($fp)
	li $t0, 0
	lw $t1, -2660($fp)
	sub $t0, $t0, $t1
	sw $t0, -2664($fp)
	li $t0, 29224
	sw $t0, -2668($fp)
	lw $t1, -2664($fp)
	lw $t2, -2668($fp)
	beq $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -2656($fp)
label403:
	li $t0, 0
	sw $t0, -2672($fp)
	lw $t0, -2504($fp)
	sw $t0, -2676($fp)
	li $t0, 36968
	sw $t0, -2680($fp)
	lw $t1, -2676($fp)
	lw $t2, -2680($fp)
	bgt $t1, $t2, label406
	j label405
label406:
	li $t0, 32615
	sw $t0, -2684($fp)
	lw $t1, -2684($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -2672($fp)
label405:
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -1208($fp)
	sw $t0, -2692($fp)
	lw $t1, -2692($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label410
label410:
	li $t0, 16130
	sw $t0, -2696($fp)
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label409
label409:
	lw $t0, -1668($fp)
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -2688($fp)
label408:
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2704($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2704($fp)
	sub $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -668($fp)
	sw $t0, -2712($fp)
	addi $sp, $sp, -4
	lw $t0, -2708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2716($fp)
	addi $sp, $sp, 12
	lw $t0, -1412($fp)
	sw $t0, -2720($fp)
	lw $t0, -2716($fp)
	lw $t1, -2720($fp)
	sub $t0, $t0, $t1
	sw $t0, -2724($fp)
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2728($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2728($fp)
	sub $t0, $t0, $t1
	sw $t0, -2732($fp)
	addi $sp, $sp, -4
	lw $t0, -2636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2736($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2740($fp)
	lw $t0, -944($fp)
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -2740($fp)
label412:
	lw $t1, -2736($fp)
	lw $t2, -2740($fp)
	blt $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -2536($fp)
label389:
	li $t0, 0
	sw $t0, -2748($fp)
	addi $t0, $fp, -84
	sw $t0, -2752($fp)
	li $t0, 0
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
	lw $t0, -716($fp)
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t1, -2776($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label414
label417:
	li $t0, 0
	sw $t0, -2780($fp)
	li $t0, 54477
	sw $t0, -2784($fp)
	li $t0, 3071
	sw $t0, -2788($fp)
	lw $t0, -2784($fp)
	lw $t1, -2788($fp)
	sub $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -1424($fp)
	sw $t0, -2796($fp)
	lw $t1, -2792($fp)
	lw $t2, -2796($fp)
	ble $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -2780($fp)
label419:
	li $t0, 17151
	sw $t0, -2800($fp)
	li $t0, 0
	sw $t0, -2804($fp)
	lw $t0, -956($fp)
	sw $t0, -2808($fp)
	lw $t0, -932($fp)
	sw $t0, -2812($fp)
	lw $t1, -2808($fp)
	lw $t2, -2812($fp)
	ble $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -2804($fp)
label421:
	lw $t0, -1752($fp)
	sw $t0, -2816($fp)
	li $t0, 35481
	sw $t0, -2820($fp)
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	li $t0, 59674
	sw $t0, -2828($fp)
	lw $t0, -2824($fp)
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	addi $sp, $sp, -4
	lw $t0, -2804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2836($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2840($fp)
	addi $sp, $sp, 16
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label414
label416:
	li $t0, 0
	sw $t0, -2844($fp)
	lw $t0, -1740($fp)
	sw $t0, -2848($fp)
	li $t0, 16884
	sw $t0, -2852($fp)
	lw $t1, -2848($fp)
	lw $t2, -2852($fp)
	blt $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -2844($fp)
label423:
	lw $t0, -920($fp)
	sw $t0, -2856($fp)
	lw $t1, -2844($fp)
	lw $t2, -2856($fp)
	ble $t1, $t2, label415
	j label414
label415:
	li $t0, 0
	sw $t0, -2860($fp)
	li $t0, 40661
	sw $t0, -2864($fp)
	lw $t0, -1256($fp)
	sw $t0, -2868($fp)
	lw $t1, -2864($fp)
	lw $t2, -2868($fp)
	bne $t1, $t2, label424
	j label426
label426:
	li $t0, 37201
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -2860($fp)
label425:
	addi $t0, $fp, -176
	sw $t0, -2876($fp)
	lw $t0, -2528($fp)
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
	li $t0, 0
	sw $t0, -2896($fp)
	li $t0, 0
	sw $t0, -2900($fp)
	li $t0, 11151
	sw $t0, -2904($fp)
	li $t0, 15367
	sw $t0, -2908($fp)
	lw $t1, -2904($fp)
	lw $t2, -2908($fp)
	bge $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -2900($fp)
label430:
	lw $t0, 12($fp)
	sw $t0, -2912($fp)
	lw $t1, -2900($fp)
	lw $t2, -2912($fp)
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -2896($fp)
label428:
	li $t0, 0
	sw $t0, -2916($fp)
	li $t0, 0
	sw $t0, -2920($fp)
	li $t0, 55504
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -2920($fp)
label434:
	lw $t0, -1424($fp)
	sw $t0, -2928($fp)
	lw $t1, -2920($fp)
	lw $t2, -2928($fp)
	beq $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -2916($fp)
label432:
	li $t0, 0
	sw $t0, -2932($fp)
	lw $t0, -2516($fp)
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label435:
	li $t0, 1
	sw $t0, -2932($fp)
label436:
	lw $t0, -704($fp)
	sw $t0, -2940($fp)
	lw $t0, -2932($fp)
	lw $t1, -2940($fp)
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	addi $sp, $sp, -4
	lw $t0, -2892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2944($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2948($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -2860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2952($fp)
	addi $sp, $sp, 12
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -2748($fp)
label414:
	li $t0, 0
	sw $t0, -2956($fp)
	li $t0, 60618
	sw $t0, -2960($fp)
	li $t0, 1
	sw $t0, -2964($fp)
	lw $t0, -2960($fp)
	lw $t1, -2964($fp)
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label442:
	li $t0, 63402
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -2956($fp)
label441:
	addi $t0, $fp, -84
	sw $t0, -2976($fp)
	lw $t0, -944($fp)
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
	lw $t0, -2416($fp)
	sw $t0, -2996($fp)
	lw $t0, -2992($fp)
	lw $t1, -2996($fp)
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
	li $t0, 0
	sw $t0, -3004($fp)
	li $t0, 26056
	sw $t0, -3008($fp)
	lw $t0, 4($fp)
	sw $t0, -3012($fp)
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	li $t0, 55546
	sw $t0, -3020($fp)
	lw $t1, -3016($fp)
	lw $t2, -3020($fp)
	blt $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -3004($fp)
label444:
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3024($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -2956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3028($fp)
	addi $sp, $sp, 12
	lw $t0, -716($fp)
	sw $t0, -3032($fp)
	lw $t0, 4($fp)
	sw $t0, -3036($fp)
	lw $t0, -3032($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3040($fp)
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3044($fp)
	addi $sp, $sp, 12
	li $t0, 12070
	sw $t0, -3048($fp)
	lw $t0, -3044($fp)
	lw $t1, -3048($fp)
	mul $t0, $t0, $t1
	sw $t0, -3052($fp)
	li $t0, 0
	lw $t1, -3052($fp)
	sub $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t1, -3056($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label438
label437:
	li $t0, 0
	sw $t0, -3060($fp)
	jal f9
	sw $v0, -3064($fp)
	addi $sp, $sp, 4
	lw $t1, -3064($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -3060($fp)
label446:
	lw $ra, -4($fp)
	lw $v0, -3060($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label439
label438:
	li $t0, 0
	sw $t0, -3068($fp)
	li $t0, 16338
	sw $t0, -3072($fp)
	li $t0, 0
	lw $t1, -3072($fp)
	sub $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t1, -3076($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label449:
	lw $t0, -2428($fp)
	sw $t0, -3080($fp)
	lw $t0, -1208($fp)
	sw $t0, -3084($fp)
	lw $t1, -3080($fp)
	lw $t2, -3084($fp)
	beq $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -3068($fp)
label448:
	lw $t0, -3068($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -3088($fp)
label439:
	j label377
label379:
	j label313
label315:
label450:
	addi $t0, $fp, -84
	sw $t0, -3092($fp)
	li $t0, 0
	sw $t0, -3096($fp)
	addi $t0, $fp, -192
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 4
	lw $t1, -3104($fp)
	mul $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, 0($t0)
	sw $t1, -3116($fp)
	li $t0, 0
	lw $t1, -3116($fp)
	sub $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -1208($fp)
	sw $t0, -3124($fp)
	lw $t1, -3120($fp)
	lw $t2, -3124($fp)
	blt $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -3096($fp)
label454:
	li $t0, 4
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 0
	sw $t0, -3140($fp)
	li $t0, 63106
	sw $t0, -3144($fp)
	li $t0, 0
	lw $t1, -3144($fp)
	sub $t0, $t0, $t1
	sw $t0, -3148($fp)
	li $t0, 8655
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -3156($fp)
	li $t0, 0
	sw $t0, -3160($fp)
	li $t0, 13585
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label457:
	li $t0, 1
	sw $t0, -3160($fp)
label458:
	li $t0, 0
	sw $t0, -3168($fp)
	li $t0, 0
	sw $t0, -3172($fp)
	li $t0, 9317
	sw $t0, -3176($fp)
	li $t0, 63763
	sw $t0, -3180($fp)
	lw $t1, -3176($fp)
	lw $t2, -3180($fp)
	ble $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -3172($fp)
label462:
	li $t0, 23937
	sw $t0, -3184($fp)
	lw $t1, -3172($fp)
	lw $t2, -3184($fp)
	beq $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -3168($fp)
label460:
	lw $t0, -1424($fp)
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -3192($fp)
	li $t0, 34538
	sw $t0, -3196($fp)
	li $t0, 49113
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3204($fp)
	lw $t0, 16($fp)
	sw $t0, -3208($fp)
	lw $t0, -3204($fp)
	lw $t1, -3208($fp)
	add $t0, $t0, $t1
	sw $t0, -3212($fp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3216($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3220($fp)
	li $t0, 16497
	sw $t0, -3224($fp)
	lw $t0, -1568($fp)
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3232($fp)
	li $t0, 62963
	sw $t0, -3236($fp)
	lw $t1, -3232($fp)
	lw $t2, -3236($fp)
	bge $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -3220($fp)
label464:
	lw $t0, -1556($fp)
	sw $t0, -3240($fp)
	addi $sp, $sp, -4
	lw $t0, -3156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3240($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3244($fp)
	addi $sp, $sp, 20
	lw $t0, -3148($fp)
	lw $t1, -3244($fp)
	add $t0, $t0, $t1
	sw $t0, -3248($fp)
	addi $t0, $fp, -184
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -1256($fp)
	sw $t0, -3260($fp)
	li $t0, 15478
	sw $t0, -3264($fp)
	lw $t1, -3260($fp)
	lw $t2, -3264($fp)
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -3256($fp)
label466:
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
	blt $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -3140($fp)
label456:
	j label450
label452:
	addi $t0, $fp, -44
	sw $t0, -3280($fp)
	li $t0, 0
	sw $t0, -3284($fp)
	li $t0, 4
	lw $t1, -3284($fp)
	mul $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, 0($t0)
	sw $t1, -3296($fp)
	lw $t0, -3296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3300($fp)
	li $t0, 1
	sw $t0, -3304($fp)
	li $t0, 4
	lw $t1, -3304($fp)
	mul $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	lw $t1, -3300($fp)
	add $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	lw $t1, 0($t0)
	sw $t1, -3316($fp)
	lw $t0, -3316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3320($fp)
	li $t0, 2
	sw $t0, -3324($fp)
	li $t0, 4
	lw $t1, -3324($fp)
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	lw $t1, 0($t0)
	sw $t1, -3336($fp)
	lw $t0, -3336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3340($fp)
	li $t0, 3
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
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3360($fp)
	li $t0, 4
	sw $t0, -3364($fp)
	li $t0, 4
	lw $t1, -3364($fp)
	mul $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, 0($t0)
	sw $t1, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3380($fp)
	li $t0, 5
	sw $t0, -3384($fp)
	li $t0, 4
	lw $t1, -3384($fp)
	mul $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, -3380($fp)
	add $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	lw $t1, 0($t0)
	sw $t1, -3396($fp)
	lw $t0, -3396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3400($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -3420($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -3440($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -3460($fp)
	li $t0, 9
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
	lw $t0, -440($fp)
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3484($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -3504($fp)
	li $t0, 1
	sw $t0, -3508($fp)
	li $t0, 4
	lw $t1, -3508($fp)
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	lw $t1, -3504($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	lw $t1, 0($t0)
	sw $t1, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3524($fp)
	li $t0, 2
	sw $t0, -3528($fp)
	li $t0, 4
	lw $t1, -3528($fp)
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, -3524($fp)
	add $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, 0($t0)
	sw $t1, -3540($fp)
	lw $t0, -3540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3544($fp)
	li $t0, 3
	sw $t0, -3548($fp)
	li $t0, 4
	lw $t1, -3548($fp)
	mul $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	lw $t1, -3544($fp)
	add $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	lw $t1, 0($t0)
	sw $t1, -3560($fp)
	lw $t0, -3560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3564($fp)
	li $t0, 4
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
	lw $t0, -3580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3584($fp)
	li $t0, 5
	sw $t0, -3588($fp)
	li $t0, 4
	lw $t1, -3588($fp)
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, 0($t0)
	sw $t1, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3604($fp)
	li $t0, 6
	sw $t0, -3608($fp)
	li $t0, 4
	lw $t1, -3608($fp)
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	lw $t1, -3604($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	lw $t1, 0($t0)
	sw $t1, -3620($fp)
	lw $t0, -3620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3624($fp)
	li $t0, 7
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
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3644($fp)
	li $t0, 8
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
	lw $t0, -668($fp)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -3668($fp)
	li $t0, 0
	sw $t0, -3672($fp)
	li $t0, 4
	lw $t1, -3672($fp)
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	lw $t1, -3668($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	lw $t1, 0($t0)
	sw $t1, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3696($fp)
	li $t0, 0
	sw $t0, -3700($fp)
	li $t0, 4
	lw $t1, -3700($fp)
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, -3696($fp)
	add $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	lw $t1, 0($t0)
	sw $t1, -3712($fp)
	lw $t0, -3712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3716($fp)
	li $t0, 1
	sw $t0, -3720($fp)
	li $t0, 4
	lw $t1, -3720($fp)
	mul $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	lw $t1, -3716($fp)
	add $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	lw $t1, 0($t0)
	sw $t1, -3732($fp)
	lw $t0, -3732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3736($fp)
	li $t0, 2
	sw $t0, -3740($fp)
	li $t0, 4
	lw $t1, -3740($fp)
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	lw $t1, -3736($fp)
	add $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	lw $t1, 0($t0)
	sw $t1, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3756($fp)
	li $t0, 3
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
	lw $t0, -3772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3776($fp)
	li $t0, 4
	sw $t0, -3780($fp)
	li $t0, 4
	lw $t1, -3780($fp)
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, -3776($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	lw $t0, -3792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3796($fp)
	li $t0, 5
	sw $t0, -3800($fp)
	li $t0, 4
	lw $t1, -3800($fp)
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, 0($t0)
	sw $t1, -3812($fp)
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3816($fp)
	li $t0, 6
	sw $t0, -3820($fp)
	li $t0, 4
	lw $t1, -3820($fp)
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, -3816($fp)
	add $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	lw $t1, 0($t0)
	sw $t1, -3832($fp)
	lw $t0, -3832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3836($fp)
	li $t0, 7
	sw $t0, -3840($fp)
	li $t0, 4
	lw $t1, -3840($fp)
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	lw $t1, -3836($fp)
	add $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, 0($t0)
	sw $t1, -3852($fp)
	lw $t0, -3852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -3872($fp)
	li $t0, 0
	sw $t0, -3876($fp)
	li $t0, 4
	lw $t1, -3876($fp)
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, -3872($fp)
	add $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, 0($t0)
	sw $t1, -3888($fp)
	lw $t0, -3888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -3892($fp)
	li $t0, 1
	sw $t0, -3896($fp)
	li $t0, 4
	lw $t1, -3896($fp)
	mul $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	lw $t1, 0($t0)
	sw $t1, -3908($fp)
	lw $t0, -3908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -3912($fp)
	li $t0, 2
	sw $t0, -3916($fp)
	li $t0, 4
	lw $t1, -3916($fp)
	mul $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, -3912($fp)
	add $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, 0($t0)
	sw $t1, -3928($fp)
	lw $t0, -3928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -3932($fp)
	li $t0, 3
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
	addi $t0, $fp, -152
	sw $t0, -3952($fp)
	li $t0, 4
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
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -3972($fp)
	li $t0, 5
	sw $t0, -3976($fp)
	li $t0, 4
	lw $t1, -3976($fp)
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	lw $t1, -3972($fp)
	add $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, 0($t0)
	sw $t1, -3988($fp)
	lw $t0, -3988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -3992($fp)
	li $t0, 6
	sw $t0, -3996($fp)
	li $t0, 4
	lw $t1, -3996($fp)
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	lw $t1, -3992($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	lw $t1, 0($t0)
	sw $t1, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -4012($fp)
	li $t0, 7
	sw $t0, -4016($fp)
	li $t0, 4
	lw $t1, -4016($fp)
	mul $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	lw $t1, -4012($fp)
	add $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, 0($t0)
	sw $t1, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -4032($fp)
	li $t0, 8
	sw $t0, -4036($fp)
	li $t0, 4
	lw $t1, -4036($fp)
	mul $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, -4032($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, 0($t0)
	sw $t1, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4080($fp)
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 4
	lw $t1, -4084($fp)
	mul $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	lw $t1, -4080($fp)
	add $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	lw $t1, 0($t0)
	sw $t1, -4096($fp)
	lw $t0, -4096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4100($fp)
	li $t0, 1
	sw $t0, -4104($fp)
	li $t0, 4
	lw $t1, -4104($fp)
	mul $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	lw $t1, -4100($fp)
	add $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	lw $t1, 0($t0)
	sw $t1, -4116($fp)
	lw $t0, -4116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4120($fp)
	li $t0, 2
	sw $t0, -4124($fp)
	li $t0, 4
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	lw $t1, 0($t0)
	sw $t1, -4136($fp)
	lw $t0, -4136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4140($fp)
	li $t0, 3
	sw $t0, -4144($fp)
	li $t0, 4
	lw $t1, -4144($fp)
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, 0($t0)
	sw $t1, -4156($fp)
	lw $t0, -4156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4160($fp)
	li $t0, 4
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
	lw $t0, -4176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -4180($fp)
	li $t0, 5
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
	lw $t0, -4196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1412($fp)
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -4208($fp)
	li $t0, 0
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
	lw $t0, -4224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -4228($fp)
	li $t0, 1
	sw $t0, -4232($fp)
	li $t0, 4
	lw $t1, -4232($fp)
	mul $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	lw $t1, 0($t0)
	sw $t1, -4244($fp)
	lw $t0, -4244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -4256($fp)
	li $t0, 0
	sw $t0, -4260($fp)
	li $t0, 4
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, -4256($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, 0($t0)
	sw $t1, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -4276($fp)
	li $t0, 1
	sw $t0, -4280($fp)
	li $t0, 4
	lw $t1, -4280($fp)
	mul $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, 0($t0)
	sw $t1, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4316($fp)
	li $t0, 32629
	sw $t0, -4320($fp)
	li $t0, 38007
	sw $t0, -4324($fp)
	lw $t1, -4320($fp)
	lw $t2, -4324($fp)
	bne $t1, $t2, label467
	j label469
label469:
	lw $t0, -1556($fp)
	sw $t0, -4328($fp)
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -4316($fp)
label468:
	li $t0, 0
	sw $t0, -4332($fp)
	lw $t0, -956($fp)
	sw $t0, -4336($fp)
	li $t0, 2793
	sw $t0, -4340($fp)
	lw $t1, -4336($fp)
	lw $t2, -4340($fp)
	bge $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -4332($fp)
label471:
	lw $t0, -1184($fp)
	sw $t0, -4344($fp)
	li $t0, 0
	lw $t1, -4344($fp)
	sub $t0, $t0, $t1
	sw $t0, -4348($fp)
	li $t0, 0
	lw $t1, -4348($fp)
	sub $t0, $t0, $t1
	sw $t0, -4352($fp)
	addi $sp, $sp, -4
	lw $t0, -4332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4352($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4356($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4360($fp)
	lw $t0, -1220($fp)
	sw $t0, -4364($fp)
	lw $t1, -4364($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -4360($fp)
label473:
	li $t0, 49066
	sw $t0, -4368($fp)
	lw $t0, -4360($fp)
	lw $t1, -4368($fp)
	add $t0, $t0, $t1
	sw $t0, -4372($fp)
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4376($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4380($fp)
	li $t0, 5864
	sw $t0, -4384($fp)
	lw $t1, -4384($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label474
label474:
	li $t0, 1
	sw $t0, -4380($fp)
label475:
	lw $t0, -4376($fp)
	lw $t1, -4380($fp)
	mul $t0, $t0, $t1
	sw $t0, -4388($fp)
	li $t0, 0
	sw $t0, -4392($fp)
	li $t0, 49513
	sw $t0, -4396($fp)
	lw $t1, -4396($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label476
label476:
	li $t0, 1
	sw $t0, -4392($fp)
label477:
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	add $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $ra, -4($fp)
	lw $v0, -4400($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -44
	sw $t0, -4404($fp)
	li $t0, 0
	sw $t0, -4408($fp)
	li $t0, 4
	lw $t1, -4408($fp)
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	lw $t0, -4420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4424($fp)
	li $t0, 1
	sw $t0, -4428($fp)
	li $t0, 4
	lw $t1, -4428($fp)
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, -4424($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4444($fp)
	li $t0, 2
	sw $t0, -4448($fp)
	li $t0, 4
	lw $t1, -4448($fp)
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, -4444($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	lw $t1, 0($t0)
	sw $t1, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4464($fp)
	li $t0, 3
	sw $t0, -4468($fp)
	li $t0, 4
	lw $t1, -4468($fp)
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, 0($t0)
	sw $t1, -4480($fp)
	lw $t0, -4480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4484($fp)
	li $t0, 4
	sw $t0, -4488($fp)
	li $t0, 4
	lw $t1, -4488($fp)
	mul $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, 0($t0)
	sw $t1, -4500($fp)
	lw $t0, -4500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4504($fp)
	li $t0, 5
	sw $t0, -4508($fp)
	li $t0, 4
	lw $t1, -4508($fp)
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, 0($t0)
	sw $t1, -4520($fp)
	lw $t0, -4520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4524($fp)
	li $t0, 6
	sw $t0, -4528($fp)
	li $t0, 4
	lw $t1, -4528($fp)
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	lw $t1, -4524($fp)
	add $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	lw $t1, 0($t0)
	sw $t1, -4540($fp)
	lw $t0, -4540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4544($fp)
	li $t0, 7
	sw $t0, -4548($fp)
	li $t0, 4
	lw $t1, -4548($fp)
	mul $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	lw $t1, -4544($fp)
	add $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	lw $t1, 0($t0)
	sw $t1, -4560($fp)
	lw $t0, -4560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4564($fp)
	li $t0, 8
	sw $t0, -4568($fp)
	li $t0, 4
	lw $t1, -4568($fp)
	mul $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, -4564($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, 0($t0)
	sw $t1, -4580($fp)
	lw $t0, -4580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4584($fp)
	li $t0, 9
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
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4608($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -4628($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -4648($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -4668($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -4688($fp)
	li $t0, 4
	sw $t0, -4692($fp)
	li $t0, 4
	lw $t1, -4692($fp)
	mul $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	lw $t1, -4688($fp)
	add $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	lw $t1, 0($t0)
	sw $t1, -4704($fp)
	lw $t0, -4704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4708($fp)
	li $t0, 5
	sw $t0, -4712($fp)
	li $t0, 4
	lw $t1, -4712($fp)
	mul $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	lw $t1, -4708($fp)
	add $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	lw $t1, 0($t0)
	sw $t1, -4724($fp)
	lw $t0, -4724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4728($fp)
	li $t0, 6
	sw $t0, -4732($fp)
	li $t0, 4
	lw $t1, -4732($fp)
	mul $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	lw $t1, -4728($fp)
	add $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	lw $t1, 0($t0)
	sw $t1, -4744($fp)
	lw $t0, -4744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4748($fp)
	li $t0, 7
	sw $t0, -4752($fp)
	li $t0, 4
	lw $t1, -4752($fp)
	mul $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, -4748($fp)
	add $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	lw $t1, 0($t0)
	sw $t1, -4764($fp)
	lw $t0, -4764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4768($fp)
	li $t0, 8
	sw $t0, -4772($fp)
	li $t0, 4
	lw $t1, -4772($fp)
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, -4768($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, 0($t0)
	sw $t1, -4784($fp)
	lw $t0, -4784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4792($fp)
	li $t0, 0
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
	lw $t0, -704($fp)
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4820($fp)
	li $t0, 0
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
	lw $t0, -4836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4840($fp)
	li $t0, 1
	sw $t0, -4844($fp)
	li $t0, 4
	lw $t1, -4844($fp)
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, 0($t0)
	sw $t1, -4856($fp)
	lw $t0, -4856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4860($fp)
	li $t0, 2
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
	lw $t0, -4876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4880($fp)
	li $t0, 3
	sw $t0, -4884($fp)
	li $t0, 4
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, 0($t0)
	sw $t1, -4896($fp)
	lw $t0, -4896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4900($fp)
	li $t0, 4
	sw $t0, -4904($fp)
	li $t0, 4
	lw $t1, -4904($fp)
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	lw $t1, -4900($fp)
	add $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	lw $t1, 0($t0)
	sw $t1, -4916($fp)
	lw $t0, -4916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4920($fp)
	li $t0, 5
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
	lw $t0, -4936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4940($fp)
	li $t0, 6
	sw $t0, -4944($fp)
	li $t0, 4
	lw $t1, -4944($fp)
	mul $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, 0($t0)
	sw $t1, -4956($fp)
	lw $t0, -4956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4960($fp)
	li $t0, 7
	sw $t0, -4964($fp)
	li $t0, 4
	lw $t1, -4964($fp)
	mul $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	lw $t1, -4960($fp)
	add $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	lw $t1, 0($t0)
	sw $t1, -4976($fp)
	lw $t0, -4976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -4996($fp)
	li $t0, 0
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
	addi $t0, $fp, -152
	sw $t0, -5016($fp)
	li $t0, 1
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
	addi $t0, $fp, -152
	sw $t0, -5036($fp)
	li $t0, 2
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
	addi $t0, $fp, -152
	sw $t0, -5056($fp)
	li $t0, 3
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
	addi $t0, $fp, -152
	sw $t0, -5076($fp)
	li $t0, 4
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
	addi $t0, $fp, -152
	sw $t0, -5096($fp)
	li $t0, 5
	sw $t0, -5100($fp)
	li $t0, 4
	lw $t1, -5100($fp)
	mul $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	lw $t1, -5096($fp)
	add $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	lw $t1, 0($t0)
	sw $t1, -5112($fp)
	lw $t0, -5112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -5116($fp)
	li $t0, 6
	sw $t0, -5120($fp)
	li $t0, 4
	lw $t1, -5120($fp)
	mul $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	lw $t1, -5116($fp)
	add $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	lw $t1, 0($t0)
	sw $t1, -5132($fp)
	lw $t0, -5132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -5136($fp)
	li $t0, 7
	sw $t0, -5140($fp)
	li $t0, 4
	lw $t1, -5140($fp)
	mul $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	lw $t1, -5136($fp)
	add $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	lw $t1, 0($t0)
	sw $t1, -5152($fp)
	lw $t0, -5152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -5156($fp)
	li $t0, 8
	sw $t0, -5160($fp)
	li $t0, 4
	lw $t1, -5160($fp)
	mul $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	lw $t1, -5156($fp)
	add $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, 0($t0)
	sw $t1, -5172($fp)
	lw $t0, -5172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5204($fp)
	li $t0, 0
	sw $t0, -5208($fp)
	li $t0, 4
	lw $t1, -5208($fp)
	mul $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	lw $t1, -5204($fp)
	add $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	lw $t1, 0($t0)
	sw $t1, -5220($fp)
	lw $t0, -5220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5224($fp)
	li $t0, 1
	sw $t0, -5228($fp)
	li $t0, 4
	lw $t1, -5228($fp)
	mul $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	lw $t1, -5224($fp)
	add $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	lw $t1, 0($t0)
	sw $t1, -5240($fp)
	lw $t0, -5240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5244($fp)
	li $t0, 2
	sw $t0, -5248($fp)
	li $t0, 4
	lw $t1, -5248($fp)
	mul $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	lw $t1, -5244($fp)
	add $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	lw $t1, 0($t0)
	sw $t1, -5260($fp)
	lw $t0, -5260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5264($fp)
	li $t0, 3
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
	lw $t0, -5280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5284($fp)
	li $t0, 4
	sw $t0, -5288($fp)
	li $t0, 4
	lw $t1, -5288($fp)
	mul $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	lw $t1, -5284($fp)
	add $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	lw $t1, 0($t0)
	sw $t1, -5300($fp)
	lw $t0, -5300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5304($fp)
	li $t0, 5
	sw $t0, -5308($fp)
	li $t0, 4
	lw $t1, -5308($fp)
	mul $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	lw $t1, -5304($fp)
	add $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	lw $t1, 0($t0)
	sw $t1, -5320($fp)
	lw $t0, -5320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1412($fp)
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -5332($fp)
	li $t0, 0
	sw $t0, -5336($fp)
	li $t0, 4
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	lw $t1, 0($t0)
	sw $t1, -5348($fp)
	lw $t0, -5348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -5352($fp)
	li $t0, 1
	sw $t0, -5356($fp)
	li $t0, 4
	lw $t1, -5356($fp)
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	lw $t1, -5352($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	lw $t1, 0($t0)
	sw $t1, -5368($fp)
	lw $t0, -5368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -5380($fp)
	li $t0, 0
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
	addi $t0, $fp, -192
	sw $t0, -5400($fp)
	li $t0, 1
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
	lw $t0, -1556($fp)
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5440($fp)
	li $t0, 0
	sw $t0, -5444($fp)
	lw $t0, -920($fp)
	sw $t0, -5448($fp)
	lw $t0, -668($fp)
	sw $t0, -5452($fp)
	lw $t0, -5448($fp)
	lw $t1, -5452($fp)
	mul $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -932($fp)
	sw $t0, -5460($fp)
	li $t0, 0
	lw $t1, -5460($fp)
	sub $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5456($fp)
	lw $t1, -5464($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	addi $t0, $fp, -152
	sw $t0, -5472($fp)
	li $t0, 6
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
	lw $t1, -5468($fp)
	lw $t2, -5488($fp)
	ble $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -5444($fp)
label481:
	li $t0, 0
	sw $t0, -5492($fp)
	li $t0, 64880
	sw $t0, -5496($fp)
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label482
label482:
	li $t0, 1
	sw $t0, -5492($fp)
label483:
	li $t0, 3101
	sw $t0, -5500($fp)
	li $t0, 54217
	sw $t0, -5504($fp)
	lw $t0, -5500($fp)
	lw $t1, -5504($fp)
	mul $t0, $t0, $t1
	sw $t0, -5508($fp)
	li $t0, 1
	sw $t0, -5512($fp)
	lw $t0, -5508($fp)
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -1496($fp)
	sw $t0, -5520($fp)
	lw $t0, 12($fp)
	sw $t0, -5524($fp)
	lw $t0, -5520($fp)
	lw $t1, -5524($fp)
	sub $t0, $t0, $t1
	sw $t0, -5528($fp)
	addi $sp, $sp, -4
	lw $t0, -5516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5532($fp)
	addi $sp, $sp, 12
	lw $t0, -5492($fp)
	lw $t1, -5532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5536($fp)
	lw $t1, -5444($fp)
	lw $t2, -5536($fp)
	bne $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -5440($fp)
label479:
	lw $ra, -4($fp)
	lw $v0, -5440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 58647
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	sw $t0, -5548($fp)
	li $t0, 49299
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	sw $t0, -5560($fp)
label484:
	addi $t0, $fp, -44
	sw $t0, -5564($fp)
	li $t0, 8
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
	lw $t1, -5580($fp)
	li $t2, 0
	bne $t1, $t2, label485
	j label486
label485:
	li $t0, 61369
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	sw $t0, -5608($fp)
	li $t0, 11975
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	sw $t0, -5620($fp)
	li $t0, 16747
	sw $t0, -5624($fp)
	addi $t0, $fp, -5596
	sw $t0, -5628($fp)
	li $t0, 0
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5628($fp)
	lw $t1, -5636($fp)
	add $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5624($fp)
	lw $t1, -5640($fp)
	sw $t0, 0($t1)
	lw $t0, -5640($fp)
	lw $t1, 0($t0)
	sw $t1, -5644($fp)
	li $t0, 42665
	sw $t0, -5648($fp)
	addi $t0, $fp, -5596
	sw $t0, -5652($fp)
	li $t0, 1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5652($fp)
	lw $t1, -5660($fp)
	add $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5648($fp)
	lw $t1, -5664($fp)
	sw $t0, 0($t1)
	lw $t0, -5664($fp)
	lw $t1, 0($t0)
	sw $t1, -5668($fp)
	li $t0, 9546
	sw $t0, -5672($fp)
	addi $t0, $fp, -5596
	sw $t0, -5676($fp)
	li $t0, 2
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -5676($fp)
	lw $t1, -5684($fp)
	add $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5672($fp)
	lw $t1, -5688($fp)
	sw $t0, 0($t1)
	lw $t0, -5688($fp)
	lw $t1, 0($t0)
	sw $t1, -5692($fp)
	li $t0, 33244
	sw $t0, -5696($fp)
	addi $t0, $fp, -5596
	sw $t0, -5700($fp)
	li $t0, 3
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -5700($fp)
	lw $t1, -5708($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5696($fp)
	lw $t1, -5712($fp)
	sw $t0, 0($t1)
	lw $t0, -5712($fp)
	lw $t1, 0($t0)
	sw $t1, -5716($fp)
	li $t0, 40092
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	sw $t0, -5728($fp)
	li $t0, 44084
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	sw $t0, -5740($fp)
label487:
	li $t0, 0
	sw $t0, -5744($fp)
	lw $t0, -1580($fp)
	sw $t0, -5748($fp)
	lw $t0, -1592($fp)
	sw $t0, -5752($fp)
	lw $t1, -5748($fp)
	lw $t2, -5752($fp)
	beq $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -5744($fp)
label491:
	lw $t0, -1604($fp)
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -5760($fp)
	li $t0, 0
	sw $t0, -5764($fp)
	addi $t0, $fp, -80
	sw $t0, -5768($fp)
	li $t0, 8
	sw $t0, -5772($fp)
	li $t0, 4
	lw $t1, -5772($fp)
	mul $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	lw $t1, -5768($fp)
	add $t0, $t0, $t1
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	lw $t1, 0($t0)
	sw $t1, -5784($fp)
	lw $t1, -5784($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label493
label494:
	li $t0, 42311
	sw $t0, -5788($fp)
	lw $t1, -5788($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -5764($fp)
label493:
	li $t0, 0
	sw $t0, -5792($fp)
	li $t0, 0
	sw $t0, -5796($fp)
	lw $t0, -1424($fp)
	sw $t0, -5800($fp)
	lw $t0, -704($fp)
	sw $t0, -5804($fp)
	lw $t1, -5800($fp)
	lw $t2, -5804($fp)
	ble $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -5796($fp)
label498:
	lw $t0, -1184($fp)
	sw $t0, -5808($fp)
	lw $t1, -5796($fp)
	lw $t2, -5808($fp)
	beq $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -5792($fp)
label496:
	addi $sp, $sp, -4
	lw $t0, -5764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5792($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5812($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5812($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5816($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5816($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5820($fp)
	addi $sp, $sp, 12
	lw $t0, -1424($fp)
	sw $t0, -5824($fp)
	lw $t0, -5820($fp)
	lw $t1, -5824($fp)
	mul $t0, $t0, $t1
	sw $t0, -5828($fp)
	li $t0, 40758
	sw $t0, -5832($fp)
	lw $t0, -5828($fp)
	lw $t1, -5832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5836($fp)
	lw $t0, -1424($fp)
	sw $t0, -5840($fp)
	li $t0, 0
	lw $t1, -5840($fp)
	sub $t0, $t0, $t1
	sw $t0, -5844($fp)
	li $t0, 0
	lw $t1, -5844($fp)
	sub $t0, $t0, $t1
	sw $t0, -5848($fp)
	lw $t0, -5836($fp)
	lw $t1, -5848($fp)
	mul $t0, $t0, $t1
	sw $t0, -5852($fp)
	li $t0, 62995
	sw $t0, -5856($fp)
	lw $t0, -5852($fp)
	lw $t1, -5856($fp)
	add $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t1, -5860($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	addi $t0, $fp, -44
	sw $t0, -5864($fp)
	addi $t0, $fp, -80
	sw $t0, -5868($fp)
	lw $t0, -5604($fp)
	sw $t0, -5872($fp)
	li $t0, 4
	lw $t1, -5872($fp)
	mul $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	lw $t1, -5868($fp)
	add $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	lw $t1, 0($t0)
	sw $t1, -5884($fp)
	li $t0, 4
	lw $t1, -5884($fp)
	mul $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	lw $t1, -5864($fp)
	add $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, 0($t0)
	sw $t1, -5896($fp)
	li $t0, 0
	sw $t0, -5900($fp)
	lw $t0, -1424($fp)
	sw $t0, -5904($fp)
	lw $t1, -5904($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label499:
	li $t0, 1
	sw $t0, -5900($fp)
label500:
	lw $t0, -5896($fp)
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5908($fp)
	j label487
label489:
	lw $t0, -5604($fp)
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5616($fp)
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5596
	sw $t0, -5920($fp)
	li $t0, 0
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
	addi $t0, $fp, -5596
	sw $t0, -5940($fp)
	li $t0, 1
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
	addi $t0, $fp, -5596
	sw $t0, -5960($fp)
	li $t0, 2
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
	addi $t0, $fp, -5596
	sw $t0, -5980($fp)
	li $t0, 3
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
	lw $t0, -5724($fp)
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5736($fp)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6008($fp)
	addi $t0, $fp, -5596
	sw $t0, -6012($fp)
	lw $t0, -5736($fp)
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	sw $t0, -6020($fp)
	li $t0, 4
	lw $t1, -6020($fp)
	mul $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	lw $t1, -6012($fp)
	add $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t0, -6028($fp)
	lw $t1, 0($t0)
	sw $t1, -6032($fp)
	li $t0, 0
	sw $t0, -6036($fp)
	lw $t0, -5616($fp)
	sw $t0, -6040($fp)
	li $t0, 50966
	sw $t0, -6044($fp)
	lw $t1, -6040($fp)
	lw $t2, -6044($fp)
	bne $t1, $t2, label504
	j label506
label506:
	li $t0, 56236
	sw $t0, -6048($fp)
	lw $t1, -6048($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -6036($fp)
label505:
	li $t0, 0
	sw $t0, -6052($fp)
	lw $t0, -5544($fp)
	sw $t0, -6056($fp)
	lw $t0, -1196($fp)
	sw $t0, -6060($fp)
	lw $t1, -6056($fp)
	lw $t2, -6060($fp)
	ble $t1, $t2, label507
	j label509
label509:
	lw $t0, -1412($fp)
	sw $t0, -6064($fp)
	lw $t1, -6064($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -6052($fp)
label508:
	addi $sp, $sp, -4
	lw $t0, -6036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6068($fp)
	addi $sp, $sp, 12
	lw $t1, -6032($fp)
	lw $t2, -6068($fp)
	ble $t1, $t2, label501
	j label503
label503:
	addi $t0, $fp, -116
	sw $t0, -6072($fp)
	li $t0, 3
	sw $t0, -6076($fp)
	li $t0, 4
	lw $t1, -6076($fp)
	mul $t0, $t0, $t1
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	lw $t1, -6072($fp)
	add $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	lw $t1, 0($t0)
	sw $t1, -6088($fp)
	li $t0, 0
	sw $t0, -6092($fp)
	li $t0, 53760
	sw $t0, -6096($fp)
	li $t0, 23330
	sw $t0, -6100($fp)
	lw $t0, -6096($fp)
	lw $t1, -6100($fp)
	add $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t1, -6104($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label512
label512:
	li $t0, 18996
	sw $t0, -6108($fp)
	lw $t1, -6108($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -6092($fp)
label511:
	lw $t0, -716($fp)
	sw $t0, -6112($fp)
	li $t0, 46525
	sw $t0, -6116($fp)
	addi $sp, $sp, -4
	lw $t0, -6092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6120($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -6088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6124($fp)
	addi $sp, $sp, 12
	lw $t1, -6124($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -6008($fp)
label502:
	lw $ra, -4($fp)
	lw $v0, -6008($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6128($fp)
	li $t0, 0
	sw $t0, -6132($fp)
	li $t0, 46972
	sw $t0, -6136($fp)
	lw $t1, -6136($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label515
label515:
	li $t0, 1
	sw $t0, -6132($fp)
label516:
	li $t0, 0
	lw $t1, -6132($fp)
	sub $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t1, -6140($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -6128($fp)
label514:
	j label484
label486:
	lw $t0, -5544($fp)
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5556($fp)
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6152($fp)
	addi $t0, $fp, -176
	sw $t0, -6156($fp)
	li $t0, 0
	sw $t0, -6160($fp)
	lw $t0, 8($fp)
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label519
label519:
	li $t0, 1
	sw $t0, -6160($fp)
label520:
	li $t0, 0
	lw $t1, -6160($fp)
	sub $t0, $t0, $t1
	sw $t0, -6168($fp)
	li $t0, 4
	lw $t1, -6168($fp)
	mul $t0, $t0, $t1
	sw $t0, -6172($fp)
	lw $t0, -6172($fp)
	lw $t1, -6156($fp)
	add $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	lw $t1, 0($t0)
	sw $t1, -6180($fp)
	li $t0, 0
	sw $t0, -6184($fp)
	li $t0, 11104
	sw $t0, -6188($fp)
	lw $t1, -6188($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -6184($fp)
label522:
	lw $t1, -6180($fp)
	lw $t2, -6184($fp)
	blt $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -6152($fp)
label518:
	lw $ra, -4($fp)
	lw $v0, -6152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -5544($fp)
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5556($fp)
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6200($fp)
	lw $t0, -956($fp)
	sw $t0, -6204($fp)
	lw $t1, -6204($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label525:
	li $t0, 6652
	sw $t0, -6208($fp)
	lw $t1, -6208($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -6200($fp)
label524:
	lw $ra, -4($fp)
	lw $v0, -6200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 50074
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	sw $t0, -6220($fp)
	li $t0, 65321
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	sw $t0, -6232($fp)
label526:
	jal f9
	sw $v0, -6236($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -152
	sw $t0, -6240($fp)
	lw $t0, -6216($fp)
	sw $t0, -6244($fp)
	li $t0, 4
	lw $t1, -6244($fp)
	mul $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	lw $t1, -6240($fp)
	add $t0, $t0, $t1
	sw $t0, -6252($fp)
	lw $t0, -6252($fp)
	lw $t1, 0($t0)
	sw $t1, -6256($fp)
	li $t0, 0
	lw $t1, -6256($fp)
	sub $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6236($fp)
	lw $t1, -6260($fp)
	sub $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label529
label529:
	li $t0, 0
	sw $t0, -6268($fp)
	li $t0, 0
	sw $t0, -6272($fp)
	li $t0, 43185
	sw $t0, -6276($fp)
	li $t0, 49084
	sw $t0, -6280($fp)
	lw $t1, -6276($fp)
	lw $t2, -6280($fp)
	bne $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -6272($fp)
label533:
	lw $t0, -704($fp)
	sw $t0, -6284($fp)
	lw $t1, -6272($fp)
	lw $t2, -6284($fp)
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -6268($fp)
label531:
	li $t0, 0
	sw $t0, -6288($fp)
	lw $t0, -704($fp)
	sw $t0, -6292($fp)
	li $t0, 0
	lw $t1, -6292($fp)
	sub $t0, $t0, $t1
	sw $t0, -6296($fp)
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label536
label536:
	lw $t0, -944($fp)
	sw $t0, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -6288($fp)
label535:
	li $t0, 32053
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -6308($fp)
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6312($fp)
	addi $sp, $sp, 16
	lw $t0, -5544($fp)
	sw $t0, -6316($fp)
	lw $t0, -6312($fp)
	lw $t1, -6316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6320($fp)
	lw $t0, -956($fp)
	sw $t0, -6324($fp)
	li $t0, 27690
	sw $t0, -6328($fp)
	lw $t0, -6324($fp)
	lw $t1, -6328($fp)
	sub $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t1, -6320($fp)
	lw $t2, -6332($fp)
	bge $t1, $t2, label527
	j label528
label527:
label537:
	lw $t0, -1208($fp)
	sw $t0, -6336($fp)
	li $t0, 34163
	sw $t0, -6340($fp)
	li $t0, 0
	lw $t1, -6340($fp)
	sub $t0, $t0, $t1
	sw $t0, -6344($fp)
	li $t0, 44917
	sw $t0, -6348($fp)
	lw $t0, -6344($fp)
	lw $t1, -6348($fp)
	sub $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t1, -6336($fp)
	lw $t2, -6352($fp)
	blt $t1, $t2, label538
	j label540
label540:
	jal f9
	sw $v0, -6356($fp)
	addi $sp, $sp, 4
	li $t0, 39666
	sw $t0, -6360($fp)
	lw $t0, -6356($fp)
	lw $t1, -6360($fp)
	mul $t0, $t0, $t1
	sw $t0, -6364($fp)
	lw $t1, -6364($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label539
label541:
	li $t0, 50910
	sw $t0, -6368($fp)
	lw $t1, -6368($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label538
label538:
	addi $t0, $fp, -152
	sw $t0, -6372($fp)
	li $t0, 0
	sw $t0, -6376($fp)
	li $t0, 22046
	sw $t0, -6380($fp)
	lw $t0, -1604($fp)
	sw $t0, -6384($fp)
	lw $t0, -6380($fp)
	lw $t1, -6384($fp)
	sub $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -956($fp)
	sw $t0, -6392($fp)
	lw $t1, -6388($fp)
	lw $t2, -6392($fp)
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -6376($fp)
label546:
	li $t0, 4
	lw $t1, -6376($fp)
	mul $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	lw $t1, -6372($fp)
	add $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	lw $t1, 0($t0)
	sw $t1, -6404($fp)
	lw $t1, -6404($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label542:
	li $t0, 0
	sw $t0, -6408($fp)
	lw $t0, -1208($fp)
	sw $t0, -6412($fp)
	lw $t0, -920($fp)
	sw $t0, -6416($fp)
	lw $t0, -6412($fp)
	lw $t1, -6416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6420($fp)
	li $t0, 49212
	sw $t0, -6424($fp)
	li $t0, 0
	lw $t1, -6424($fp)
	sub $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t0, -6420($fp)
	lw $t1, -6428($fp)
	sub $t0, $t0, $t1
	sw $t0, -6432($fp)
	li $t0, 18619
	sw $t0, -6436($fp)
	lw $t0, -6432($fp)
	lw $t1, -6436($fp)
	add $t0, $t0, $t1
	sw $t0, -6440($fp)
	lw $t0, -1424($fp)
	sw $t0, -6444($fp)
	li $t0, 62139
	sw $t0, -6448($fp)
	lw $t0, -6444($fp)
	lw $t1, -6448($fp)
	mul $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -716($fp)
	sw $t0, -6456($fp)
	lw $t0, -6452($fp)
	lw $t1, -6456($fp)
	add $t0, $t0, $t1
	sw $t0, -6460($fp)
	li $t0, 27760
	sw $t0, -6464($fp)
	lw $t0, -6460($fp)
	lw $t1, -6464($fp)
	add $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t1, -6440($fp)
	lw $t2, -6468($fp)
	ble $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -6408($fp)
label548:
	lw $ra, -4($fp)
	lw $v0, -6408($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label544
label543:
	li $t0, 0
	sw $t0, -6472($fp)
	lw $t0, -6228($fp)
	sw $t0, -6476($fp)
	lw $t1, -6476($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label554
label554:
	lw $t0, -1496($fp)
	sw $t0, -6480($fp)
	lw $t1, -6480($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -6472($fp)
label553:
	lw $t0, -6472($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -6488($fp)
	lw $t1, -6488($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 0
	sw $t0, -6492($fp)
	li $t0, 0
	sw $t0, -6496($fp)
	addi $t0, $fp, -84
	sw $t0, -6500($fp)
	lw $t0, -1208($fp)
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
	lw $t1, -6516($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label557:
	li $t0, 1
	sw $t0, -6496($fp)
label558:
	li $t0, 0
	sw $t0, -6520($fp)
	jal f9
	sw $v0, -6524($fp)
	addi $sp, $sp, 4
	lw $t1, -6524($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label559
label559:
	li $t0, 1
	sw $t0, -6520($fp)
label560:
	lw $t0, -6496($fp)
	lw $t1, -6520($fp)
	sub $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -1424($fp)
	sw $t0, -6532($fp)
	lw $t1, -6528($fp)
	lw $t2, -6532($fp)
	bgt $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -6492($fp)
label556:
	j label551
label550:
	li $t0, 0
	sw $t0, -6536($fp)
	li $t0, 10663
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -6544($fp)
	li $t0, 0
	sw $t0, -6548($fp)
	li $t0, 35440
	sw $t0, -6552($fp)
	li $t0, 46013
	sw $t0, -6556($fp)
	lw $t0, -6552($fp)
	lw $t1, -6556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6560($fp)
	lw $t1, -6560($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label565
label565:
	li $t0, 4536
	sw $t0, -6564($fp)
	lw $t1, -6564($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -6548($fp)
label564:
	addi $sp, $sp, -4
	lw $t0, -6544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6548($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6568($fp)
	addi $sp, $sp, 12
	li $t0, 43472
	sw $t0, -6572($fp)
	li $t0, 0
	lw $t1, -6572($fp)
	sub $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t1, -6568($fp)
	lw $t2, -6576($fp)
	ble $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -6536($fp)
label562:
label551:
label544:
	j label537
label539:
	j label526
label528:
	lw $t0, -5544($fp)
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5556($fp)
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -6588($fp)
	li $t0, 0
	sw $t0, -6592($fp)
	li $t0, 55502
	sw $t0, -6596($fp)
	li $t0, 1363
	sw $t0, -6600($fp)
	lw $t1, -6596($fp)
	lw $t2, -6600($fp)
	bne $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -6592($fp)
label567:
	li $t0, 4
	lw $t1, -6592($fp)
	mul $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, -6588($fp)
	add $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	lw $t1, 0($t0)
	sw $t1, -6612($fp)
	li $t0, 24461
	sw $t0, -6616($fp)
	lw $t0, -6612($fp)
	lw $t1, -6616($fp)
	mul $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $ra, -4($fp)
	lw $v0, -6620($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -5544($fp)
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5556($fp)
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5556($fp)
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -6636($fp)
	li $t0, 0
	sw $t0, -6640($fp)
	lw $t0, -1232($fp)
	sw $t0, -6644($fp)
	lw $t1, -6644($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label568
label570:
	li $t0, 43726
	sw $t0, -6648($fp)
	lw $t1, -6648($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -6640($fp)
label569:
	li $t0, 0
	sw $t0, -6652($fp)
	addi $t0, $fp, -44
	sw $t0, -6656($fp)
	lw $t0, -716($fp)
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
	lw $t1, -6672($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label571:
	li $t0, 1
	sw $t0, -6652($fp)
label572:
	addi $sp, $sp, -4
	lw $t0, -6636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6652($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6676($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -6676($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -44
	sw $t0, -6680($fp)
	li $t0, 0
	sw $t0, -6684($fp)
	li $t0, 4
	lw $t1, -6684($fp)
	mul $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, -6680($fp)
	add $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, 0($t0)
	sw $t1, -6696($fp)
	lw $t0, -6696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6700($fp)
	li $t0, 1
	sw $t0, -6704($fp)
	li $t0, 4
	lw $t1, -6704($fp)
	mul $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, -6700($fp)
	add $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	lw $t1, 0($t0)
	sw $t1, -6716($fp)
	lw $t0, -6716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6720($fp)
	li $t0, 2
	sw $t0, -6724($fp)
	li $t0, 4
	lw $t1, -6724($fp)
	mul $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	lw $t1, -6720($fp)
	add $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	lw $t1, 0($t0)
	sw $t1, -6736($fp)
	lw $t0, -6736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6740($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -6760($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -6780($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -6800($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -6820($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -6840($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -6860($fp)
	li $t0, 9
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
	lw $t0, -440($fp)
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6884($fp)
	li $t0, 0
	sw $t0, -6888($fp)
	li $t0, 4
	lw $t1, -6888($fp)
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, -6884($fp)
	add $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, 0($t0)
	sw $t1, -6900($fp)
	lw $t0, -6900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6904($fp)
	li $t0, 1
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
	lw $t0, -6920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6924($fp)
	li $t0, 2
	sw $t0, -6928($fp)
	li $t0, 4
	lw $t1, -6928($fp)
	mul $t0, $t0, $t1
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	lw $t1, -6924($fp)
	add $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	lw $t1, 0($t0)
	sw $t1, -6940($fp)
	lw $t0, -6940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6944($fp)
	li $t0, 3
	sw $t0, -6948($fp)
	li $t0, 4
	lw $t1, -6948($fp)
	mul $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	lw $t1, -6944($fp)
	add $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	lw $t1, 0($t0)
	sw $t1, -6960($fp)
	lw $t0, -6960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6964($fp)
	li $t0, 4
	sw $t0, -6968($fp)
	li $t0, 4
	lw $t1, -6968($fp)
	mul $t0, $t0, $t1
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	lw $t1, -6964($fp)
	add $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	lw $t1, 0($t0)
	sw $t1, -6980($fp)
	lw $t0, -6980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -6984($fp)
	li $t0, 5
	sw $t0, -6988($fp)
	li $t0, 4
	lw $t1, -6988($fp)
	mul $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	lw $t1, -6984($fp)
	add $t0, $t0, $t1
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	lw $t1, 0($t0)
	sw $t1, -7000($fp)
	lw $t0, -7000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7004($fp)
	li $t0, 6
	sw $t0, -7008($fp)
	li $t0, 4
	lw $t1, -7008($fp)
	mul $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $t0, -7012($fp)
	lw $t1, -7004($fp)
	add $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	lw $t1, 0($t0)
	sw $t1, -7020($fp)
	lw $t0, -7020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7024($fp)
	li $t0, 7
	sw $t0, -7028($fp)
	li $t0, 4
	lw $t1, -7028($fp)
	mul $t0, $t0, $t1
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	lw $t1, -7024($fp)
	add $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	lw $t1, 0($t0)
	sw $t1, -7040($fp)
	lw $t0, -7040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7044($fp)
	li $t0, 8
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
	lw $t0, -7060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -7068($fp)
	li $t0, 0
	sw $t0, -7072($fp)
	li $t0, 4
	lw $t1, -7072($fp)
	mul $t0, $t0, $t1
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	lw $t1, -7068($fp)
	add $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	lw $t1, 0($t0)
	sw $t1, -7084($fp)
	lw $t0, -7084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7096($fp)
	li $t0, 0
	sw $t0, -7100($fp)
	li $t0, 4
	lw $t1, -7100($fp)
	mul $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	lw $t1, -7096($fp)
	add $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	lw $t1, 0($t0)
	sw $t1, -7112($fp)
	lw $t0, -7112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7116($fp)
	li $t0, 1
	sw $t0, -7120($fp)
	li $t0, 4
	lw $t1, -7120($fp)
	mul $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	lw $t1, -7116($fp)
	add $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	lw $t1, 0($t0)
	sw $t1, -7132($fp)
	lw $t0, -7132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7136($fp)
	li $t0, 2
	sw $t0, -7140($fp)
	li $t0, 4
	lw $t1, -7140($fp)
	mul $t0, $t0, $t1
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	lw $t1, -7136($fp)
	add $t0, $t0, $t1
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	lw $t1, 0($t0)
	sw $t1, -7152($fp)
	lw $t0, -7152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7156($fp)
	li $t0, 3
	sw $t0, -7160($fp)
	li $t0, 4
	lw $t1, -7160($fp)
	mul $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	lw $t1, -7156($fp)
	add $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	lw $t1, 0($t0)
	sw $t1, -7172($fp)
	lw $t0, -7172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7176($fp)
	li $t0, 4
	sw $t0, -7180($fp)
	li $t0, 4
	lw $t1, -7180($fp)
	mul $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	lw $t1, -7176($fp)
	add $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	lw $t1, 0($t0)
	sw $t1, -7192($fp)
	lw $t0, -7192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7196($fp)
	li $t0, 5
	sw $t0, -7200($fp)
	li $t0, 4
	lw $t1, -7200($fp)
	mul $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	lw $t1, -7196($fp)
	add $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	lw $t1, 0($t0)
	sw $t1, -7212($fp)
	lw $t0, -7212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7216($fp)
	li $t0, 6
	sw $t0, -7220($fp)
	li $t0, 4
	lw $t1, -7220($fp)
	mul $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	lw $t1, -7216($fp)
	add $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	lw $t1, 0($t0)
	sw $t1, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -7236($fp)
	li $t0, 7
	sw $t0, -7240($fp)
	li $t0, 4
	lw $t1, -7240($fp)
	mul $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	lw $t1, -7236($fp)
	add $t0, $t0, $t1
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	lw $t1, 0($t0)
	sw $t1, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7272($fp)
	li $t0, 0
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
	addi $t0, $fp, -152
	sw $t0, -7292($fp)
	li $t0, 1
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
	addi $t0, $fp, -152
	sw $t0, -7312($fp)
	li $t0, 2
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
	lw $t0, -7328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7332($fp)
	li $t0, 3
	sw $t0, -7336($fp)
	li $t0, 4
	lw $t1, -7336($fp)
	mul $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	lw $t1, -7332($fp)
	add $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	lw $t1, 0($t0)
	sw $t1, -7348($fp)
	lw $t0, -7348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7352($fp)
	li $t0, 4
	sw $t0, -7356($fp)
	li $t0, 4
	lw $t1, -7356($fp)
	mul $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	lw $t1, -7352($fp)
	add $t0, $t0, $t1
	sw $t0, -7364($fp)
	lw $t0, -7364($fp)
	lw $t1, 0($t0)
	sw $t1, -7368($fp)
	lw $t0, -7368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7372($fp)
	li $t0, 5
	sw $t0, -7376($fp)
	li $t0, 4
	lw $t1, -7376($fp)
	mul $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t0, -7380($fp)
	lw $t1, -7372($fp)
	add $t0, $t0, $t1
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	lw $t1, 0($t0)
	sw $t1, -7388($fp)
	lw $t0, -7388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7392($fp)
	li $t0, 6
	sw $t0, -7396($fp)
	li $t0, 4
	lw $t1, -7396($fp)
	mul $t0, $t0, $t1
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	lw $t1, -7392($fp)
	add $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	lw $t1, 0($t0)
	sw $t1, -7408($fp)
	lw $t0, -7408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7412($fp)
	li $t0, 7
	sw $t0, -7416($fp)
	li $t0, 4
	lw $t1, -7416($fp)
	mul $t0, $t0, $t1
	sw $t0, -7420($fp)
	lw $t0, -7420($fp)
	lw $t1, -7412($fp)
	add $t0, $t0, $t1
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	lw $t1, 0($t0)
	sw $t1, -7428($fp)
	lw $t0, -7428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7432($fp)
	li $t0, 8
	sw $t0, -7436($fp)
	li $t0, 4
	lw $t1, -7436($fp)
	mul $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	lw $t1, -7432($fp)
	add $t0, $t0, $t1
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	lw $t1, 0($t0)
	sw $t1, -7448($fp)
	lw $t0, -7448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -7480($fp)
	li $t0, 0
	sw $t0, -7484($fp)
	li $t0, 4
	lw $t1, -7484($fp)
	mul $t0, $t0, $t1
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	lw $t1, -7480($fp)
	add $t0, $t0, $t1
	sw $t0, -7492($fp)
	lw $t0, -7492($fp)
	lw $t1, 0($t0)
	sw $t1, -7496($fp)
	lw $t0, -7496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -7500($fp)
	li $t0, 1
	sw $t0, -7504($fp)
	li $t0, 4
	lw $t1, -7504($fp)
	mul $t0, $t0, $t1
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	lw $t1, -7500($fp)
	add $t0, $t0, $t1
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	lw $t1, 0($t0)
	sw $t1, -7516($fp)
	lw $t0, -7516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -7520($fp)
	li $t0, 2
	sw $t0, -7524($fp)
	li $t0, 4
	lw $t1, -7524($fp)
	mul $t0, $t0, $t1
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	lw $t1, -7520($fp)
	add $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	lw $t1, 0($t0)
	sw $t1, -7536($fp)
	lw $t0, -7536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -7540($fp)
	li $t0, 3
	sw $t0, -7544($fp)
	li $t0, 4
	lw $t1, -7544($fp)
	mul $t0, $t0, $t1
	sw $t0, -7548($fp)
	lw $t0, -7548($fp)
	lw $t1, -7540($fp)
	add $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t0, -7552($fp)
	lw $t1, 0($t0)
	sw $t1, -7556($fp)
	lw $t0, -7556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -7560($fp)
	li $t0, 4
	sw $t0, -7564($fp)
	li $t0, 4
	lw $t1, -7564($fp)
	mul $t0, $t0, $t1
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	lw $t1, -7560($fp)
	add $t0, $t0, $t1
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	lw $t1, 0($t0)
	sw $t1, -7576($fp)
	lw $t0, -7576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -7580($fp)
	li $t0, 5
	sw $t0, -7584($fp)
	li $t0, 4
	lw $t1, -7584($fp)
	mul $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	lw $t1, -7580($fp)
	add $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	lw $t1, 0($t0)
	sw $t1, -7596($fp)
	lw $t0, -7596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1412($fp)
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -7604($fp)
	lw $t0, -7604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -7608($fp)
	li $t0, 0
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
	addi $t0, $fp, -184
	sw $t0, -7628($fp)
	li $t0, 1
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
	lw $t0, -1484($fp)
	sw $t0, -7648($fp)
	lw $t0, -7648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7656($fp)
	li $t0, 0
	sw $t0, -7660($fp)
	li $t0, 4
	lw $t1, -7660($fp)
	mul $t0, $t0, $t1
	sw $t0, -7664($fp)
	lw $t0, -7664($fp)
	lw $t1, -7656($fp)
	add $t0, $t0, $t1
	sw $t0, -7668($fp)
	lw $t0, -7668($fp)
	lw $t1, 0($t0)
	sw $t1, -7672($fp)
	lw $t0, -7672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7676($fp)
	li $t0, 1
	sw $t0, -7680($fp)
	li $t0, 4
	lw $t1, -7680($fp)
	mul $t0, $t0, $t1
	sw $t0, -7684($fp)
	lw $t0, -7684($fp)
	lw $t1, -7676($fp)
	add $t0, $t0, $t1
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	lw $t1, 0($t0)
	sw $t1, -7692($fp)
	lw $t0, -7692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -7716($fp)
	lw $t0, -1220($fp)
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -7724($fp)
	addi $sp, $sp, -4
	lw $t0, -7716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7724($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7728($fp)
	addi $sp, $sp, 12
	lw $t0, -7728($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -7732($fp)
	lw $ra, -4($fp)
	lw $v0, -7732($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -472
	li $t0, 24693
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 43457
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
	li $t0, 37815
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
	li $t0, 32001
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 24894
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 48919
	sw $t0, -100($fp)
	lw $t0, -80($fp)
	sw $t0, -104($fp)
	lw $t0, -100($fp)
	lw $t1, -104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -108($fp)
	lw $t0, -20($fp)
	sw $t0, -112($fp)
	lw $t0, -108($fp)
	lw $t1, -112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -116($fp)
	li $t0, 0
	lw $t1, -116($fp)
	sub $t0, $t0, $t1
	sw $t0, -120($fp)
	li $t0, 38653
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 9432
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 48704
	sw $t0, -160($fp)
	addi $t0, $fp, -132
	sw $t0, -164($fp)
	li $t0, 0
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
	li $t0, 5170
	sw $t0, -184($fp)
	addi $t0, $fp, -132
	sw $t0, -188($fp)
	li $t0, 1
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
	li $t0, 52617
	sw $t0, -208($fp)
	addi $t0, $fp, -132
	sw $t0, -212($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -232($fp)
	addi $t0, $fp, -132
	sw $t0, -236($fp)
	li $t0, 0
	sw $t0, -240($fp)
	lw $t0, -140($fp)
	sw $t0, -244($fp)
	li $t0, 32252
	sw $t0, -248($fp)
	lw $t1, -244($fp)
	lw $t2, -248($fp)
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -240($fp)
label576:
	li $t0, 4
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t1, 0($t0)
	sw $t1, -260($fp)
	lw $t1, -260($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label573
label573:
	li $t0, 1
	sw $t0, -232($fp)
label574:
	li $t0, 0
	sw $t0, -264($fp)
	li $t0, 0
	sw $t0, -268($fp)
	lw $t0, -20($fp)
	sw $t0, -272($fp)
	li $t0, 32860
	sw $t0, -276($fp)
	lw $t1, -272($fp)
	lw $t2, -276($fp)
	beq $t1, $t2, label581
	j label580
label581:
	li $t0, 21245
	sw $t0, -280($fp)
	lw $t1, -280($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -268($fp)
label580:
	lw $t0, -20($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -288($fp)
	addi $sp, $sp, -4
	lw $t0, -268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -292($fp)
	addi $sp, $sp, 12
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label577:
	li $t0, 1
	sw $t0, -264($fp)
label578:
	lw $t0, -232($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	addi $t0, $fp, -12
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 4
	lw $t1, -304($fp)
	mul $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, 0($t0)
	sw $t1, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label583
label585:
	lw $t0, -80($fp)
	sw $t0, -320($fp)
	li $t0, 0
	lw $t1, -320($fp)
	sub $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
	lw $t0, -20($fp)
	sw $t0, -328($fp)
	j label584
label583:
	li $t0, 6619
	sw $t0, -332($fp)
label584:
label586:
	addi $t0, $fp, -12
	sw $t0, -336($fp)
	li $t0, 0
	sw $t0, -340($fp)
	li $t0, 33679
	sw $t0, -344($fp)
	lw $t0, -92($fp)
	sw $t0, -348($fp)
	lw $t1, -344($fp)
	lw $t2, -348($fp)
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -340($fp)
label590:
	lw $t0, -340($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -352($fp)
	li $t0, 4
	lw $t1, -352($fp)
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	lw $t1, 0($t0)
	sw $t1, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -92($fp)
	sw $t0, -372($fp)
	li $t0, 0
	sw $t0, -376($fp)
	lw $t0, -80($fp)
	sw $t0, -380($fp)
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label593
label593:
	li $t0, 1
	sw $t0, -376($fp)
label594:
	lw $t0, -20($fp)
	sw $t0, -384($fp)
	lw $t0, -376($fp)
	lw $t1, -384($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -392($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -396($fp)
	li $t0, 0
	sw $t0, -400($fp)
	li $t0, 56202
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label595
label595:
	li $t0, 1
	sw $t0, -400($fp)
label596:
	li $t0, 30283
	sw $t0, -408($fp)
	lw $t0, -400($fp)
	lw $t1, -408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -412($fp)
	lw $t1, -396($fp)
	lw $t2, -412($fp)
	blt $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -368($fp)
label592:
	j label586
label588:
	lw $t0, -20($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	lw $t0, -80($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -468($fp)
	lw $t0, -20($fp)
	sw $t0, -472($fp)
	lw $t1, -472($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label597
label597:
	li $t0, 1
	sw $t0, -468($fp)
label598:
	lw $t0, -468($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -476($fp)
	lw $ra, -4($fp)
	lw $v0, -476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2352
	li $t0, 18427
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
	li $t0, 60679
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
	li $t0, 10759
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
	li $t0, 22963
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
	li $t0, 5806
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
	li $t0, 54231
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
	li $t0, 12929
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
	li $t0, 7169
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
	li $t0, 13156
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 56656
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 31863
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 56614
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 28935
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 63864
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 15972
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 12318
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 36981
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 25404
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 61022
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 42151
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 12485
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 27738
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 9475
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 33730
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 39371
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 16466
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 40350
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 7514
	sw $t0, -472($fp)
	addi $t0, $fp, -48
	sw $t0, -476($fp)
	li $t0, 0
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
	li $t0, 7132
	sw $t0, -496($fp)
	addi $t0, $fp, -48
	sw $t0, -500($fp)
	li $t0, 1
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
	li $t0, 52
	sw $t0, -520($fp)
	addi $t0, $fp, -48
	sw $t0, -524($fp)
	li $t0, 2
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
	li $t0, 37797
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 25559
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 60731
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 48556
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
label599:
	li $t0, 0
	sw $t0, -592($fp)
	li $t0, 0
	sw $t0, -596($fp)
	lw $t0, -272($fp)
	sw $t0, -600($fp)
	li $t0, 48522
	sw $t0, -604($fp)
	lw $t0, -600($fp)
	lw $t1, -604($fp)
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	li $t0, 1001
	sw $t0, -612($fp)
	lw $t1, -608($fp)
	lw $t2, -612($fp)
	blt $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -596($fp)
label606:
	lw $t0, -356($fp)
	sw $t0, -616($fp)
	lw $t0, -452($fp)
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	sub $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t1, -596($fp)
	lw $t2, -624($fp)
	bgt $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -592($fp)
label604:
	lw $t0, -260($fp)
	sw $t0, -628($fp)
	lw $t1, -592($fp)
	lw $t2, -628($fp)
	bne $t1, $t2, label602
	j label601
label602:
	li $t0, 0
	sw $t0, -632($fp)
	lw $t0, -248($fp)
	sw $t0, -636($fp)
	lw $t1, -636($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label607:
	li $t0, 1
	sw $t0, -632($fp)
label608:
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 37252
	sw $t0, -644($fp)
	li $t0, 61452
	sw $t0, -648($fp)
	lw $t1, -644($fp)
	lw $t2, -648($fp)
	blt $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -640($fp)
label610:
	lw $t1, -632($fp)
	lw $t2, -640($fp)
	beq $t1, $t2, label600
	j label601
label600:
	lw $t0, -344($fp)
	sw $t0, -652($fp)
	li $t0, 0
	sw $t0, -656($fp)
	addi $t0, $fp, -36
	sw $t0, -660($fp)
	li $t0, 0
	sw $t0, -664($fp)
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	li $t0, 1
	sw $t0, -656($fp)
label615:
	lw $t0, -652($fp)
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 0
	sw $t0, -684($fp)
	li $t0, 0
	sw $t0, -688($fp)
	lw $t0, -344($fp)
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label619
label619:
	li $t0, 1
	sw $t0, -688($fp)
label620:
	li $t0, 0
	lw $t1, -688($fp)
	sub $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label618
label618:
	li $t0, 0
	sw $t0, -700($fp)
	li $t0, 52572
	sw $t0, -704($fp)
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label621:
	li $t0, 1
	sw $t0, -700($fp)
label622:
	lw $t0, 8($fp)
	sw $t0, -708($fp)
	lw $t0, -700($fp)
	lw $t1, -708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -712($fp)
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -684($fp)
label617:
	lw $ra, -4($fp)
	lw $v0, -684($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label613
label612:
	li $t0, 40034
	sw $t0, -716($fp)
	li $t0, 41486
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label624
label623:
	li $t0, 0
	sw $t0, -728($fp)
	lw $t0, -380($fp)
	sw $t0, -732($fp)
	lw $t0, -356($fp)
	sw $t0, -736($fp)
	lw $t0, -732($fp)
	lw $t1, -736($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	li $t0, 57458
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	li $t0, 0
	sw $t0, -752($fp)
	li $t0, 15971
	sw $t0, -756($fp)
	lw $t0, 20($fp)
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label629
label630:
	li $t0, 38362
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -752($fp)
label629:
	addi $sp, $sp, -4
	lw $t0, -748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -772($fp)
	addi $sp, $sp, 12
	li $t0, 28289
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	li $t0, 0
	lw $t1, -780($fp)
	sub $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -572($fp)
	sw $t0, -788($fp)
	lw $t1, -784($fp)
	lw $t2, -788($fp)
	bge $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -728($fp)
label627:
	j label625
label624:
	addi $t0, $fp, -48
	sw $t0, -792($fp)
	li $t0, 0
	sw $t0, -796($fp)
	li $t0, 9807
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label636
label637:
	li $t0, 17326
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -796($fp)
label636:
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
	addi $t0, $fp, -48
	sw $t0, -820($fp)
	lw $t0, -248($fp)
	sw $t0, -824($fp)
	li $t0, 4
	lw $t1, -824($fp)
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, 0($t0)
	sw $t1, -836($fp)
	lw $t1, -816($fp)
	lw $t2, -836($fp)
	beq $t1, $t2, label634
	j label632
label634:
	lw $t0, -404($fp)
	sw $t0, -840($fp)
	li $t0, 51958
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -356($fp)
	sw $t0, -852($fp)
	lw $t0, -848($fp)
	lw $t1, -852($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	lw $t0, -452($fp)
	sw $t0, -864($fp)
	li $t0, 23775
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -872($fp)
	lw $t0, -260($fp)
	sw $t0, -876($fp)
	lw $t1, -872($fp)
	lw $t2, -876($fp)
	beq $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -860($fp)
label639:
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -880($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -884($fp)
	lw $t0, 12($fp)
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label640
label640:
	li $t0, 1
	sw $t0, -884($fp)
label641:
	li $t0, 12363
	sw $t0, -892($fp)
	lw $t0, -884($fp)
	lw $t1, -892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -896($fp)
	li $t0, 0
	sw $t0, -900($fp)
	lw $t0, -344($fp)
	sw $t0, -904($fp)
	lw $t0, -572($fp)
	sw $t0, -908($fp)
	lw $t1, -904($fp)
	lw $t2, -908($fp)
	blt $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -900($fp)
label643:
	li $t0, 0
	sw $t0, -912($fp)
	li $t0, 61433
	sw $t0, -916($fp)
	li $t0, 63542
	sw $t0, -920($fp)
	lw $t0, -916($fp)
	lw $t1, -920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -924($fp)
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label645
label646:
	li $t0, 25348
	sw $t0, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -912($fp)
label645:
	li $t0, 0
	sw $t0, -932($fp)
	lw $t0, -368($fp)
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label647:
	li $t0, 1
	sw $t0, -932($fp)
label648:
	li $t0, 0
	lw $t1, -932($fp)
	sub $t0, $t0, $t1
	sw $t0, -940($fp)
	li $t0, 0
	sw $t0, -944($fp)
	li $t0, 29812
	sw $t0, -948($fp)
	li $t0, 51513
	sw $t0, -952($fp)
	lw $t0, -948($fp)
	lw $t1, -952($fp)
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label651:
	lw $t0, -392($fp)
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -944($fp)
label650:
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -964($fp)
	addi $sp, $sp, 24
	lw $t0, -880($fp)
	lw $t1, -964($fp)
	mul $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t1, -968($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label632
label631:
	li $t0, 0
	sw $t0, -972($fp)
	lw $t0, -308($fp)
	sw $t0, -976($fp)
	li $t0, 25396
	sw $t0, -980($fp)
	lw $t1, -976($fp)
	lw $t2, -980($fp)
	ble $t1, $t2, label654
	j label653
label654:
	li $t0, 23958
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label653
label652:
	li $t0, 1
	sw $t0, -972($fp)
label653:
	li $t0, 0
	sw $t0, -988($fp)
	lw $t0, -296($fp)
	sw $t0, -992($fp)
	li $t0, 28042
	sw $t0, -996($fp)
	lw $t0, -992($fp)
	lw $t1, -996($fp)
	sub $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label656
label657:
	li $t0, 34606
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -988($fp)
label656:
	li $t0, 53680
	sw $t0, -1008($fp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1012($fp)
	addi $sp, $sp, 16
	li $t0, 42777
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	sub $t0, $t0, $t1
	sw $t0, -1020($fp)
	li $t0, 0
	sw $t0, -1024($fp)
	li $t0, 5123
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label659
label661:
	li $t0, 45055
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label659
label660:
	li $t0, 33604
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -1024($fp)
label659:
	li $t0, 0
	sw $t0, -1040($fp)
	jal f11
	sw $v0, -1044($fp)
	addi $sp, $sp, 4
	li $t0, 38409
	sw $t0, -1048($fp)
	lw $t1, -1044($fp)
	lw $t2, -1048($fp)
	blt $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -1040($fp)
label663:
	li $t0, 0
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	lw $t0, -392($fp)
	sw $t0, -1060($fp)
	li $t0, 32862
	sw $t0, -1064($fp)
	lw $t1, -1060($fp)
	lw $t2, -1064($fp)
	bne $t1, $t2, label666
	j label667
label666:
	li $t0, 1
	sw $t0, -1056($fp)
label667:
	li $t0, 19496
	sw $t0, -1068($fp)
	lw $t1, -1056($fp)
	lw $t2, -1068($fp)
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -1052($fp)
label665:
	li $t0, 38356
	sw $t0, -1072($fp)
	addi $sp, $sp, -4
	lw $t0, -1020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1076($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -48
	sw $t0, -1080($fp)
	li $t0, 0
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
	lw $t0, -1076($fp)
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1100($fp)
	j label633
label632:
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 17275
	sw $t0, -1108($fp)
	li $t0, 51755
	sw $t0, -1112($fp)
	lw $t1, -1108($fp)
	lw $t2, -1112($fp)
	bne $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -1104($fp)
label669:
	lw $t0, -572($fp)
	sw $t0, -1116($fp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1120($fp)
	addi $sp, $sp, 12
label633:
label625:
label613:
	j label599
label601:
	addi $t0, $fp, -48
	sw $t0, -1124($fp)
	li $t0, 0
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
	jal f11
	sw $v0, -1144($fp)
	addi $sp, $sp, 4
	lw $t0, -1140($fp)
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label671
label670:
	addi $t0, $fp, -36
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
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label673:
	li $t0, 51866
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 25280
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	li $t0, 0
	sw $t0, -1196($fp)
	li $t0, 23286
	sw $t0, -1200($fp)
	li $t0, 24818
	sw $t0, -1204($fp)
	lw $t0, -1200($fp)
	lw $t1, -1204($fp)
	sub $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -392($fp)
	sw $t0, -1212($fp)
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1216($fp)
	addi $sp, $sp, 12
	li $t0, 60127
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	sub $t0, $t0, $t1
	sw $t0, -1224($fp)
	li $t0, 65006
	sw $t0, -1228($fp)
	lw $t0, -392($fp)
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	li $t0, 47763
	sw $t0, -1240($fp)
	lw $t0, -1236($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1248($fp)
	addi $sp, $sp, 12
	lw $t0, -1176($fp)
	sw $t0, -1252($fp)
	lw $t0, -1248($fp)
	lw $t1, -1252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label678:
	li $t0, 0
	sw $t0, -1260($fp)
	li $t0, 34516
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label682
label682:
	li $t0, 62804
	sw $t0, -1268($fp)
	lw $t1, -1268($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label681
label681:
	li $t0, 59142
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -1260($fp)
label680:
	li $t0, 0
	sw $t0, -1276($fp)
	lw $t0, -260($fp)
	sw $t0, -1280($fp)
	li $t0, 14087
	sw $t0, -1284($fp)
	lw $t1, -1280($fp)
	lw $t2, -1284($fp)
	bge $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -1276($fp)
label684:
	li $t0, 61643
	sw $t0, -1288($fp)
	li $t0, 57680
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -380($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -1304($fp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1304($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1308($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1312($fp)
	lw $t0, 4($fp)
	sw $t0, -1316($fp)
	lw $t1, -1316($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label685
label685:
	li $t0, 1
	sw $t0, -1312($fp)
label686:
	li $t0, 50948
	sw $t0, -1320($fp)
	lw $t0, -1312($fp)
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	lw $t0, -1188($fp)
	sw $t0, -1332($fp)
	li $t0, 2584
	sw $t0, -1336($fp)
	lw $t0, -1332($fp)
	lw $t1, -1336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1340($fp)
	lw $t0, -344($fp)
	sw $t0, -1344($fp)
	lw $t1, -1340($fp)
	lw $t2, -1344($fp)
	blt $t1, $t2, label687
	j label688
label687:
	li $t0, 1
	sw $t0, -1328($fp)
label688:
	lw $t0, -380($fp)
	sw $t0, -1348($fp)
	lw $t0, 16($fp)
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -272($fp)
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	lw $t0, -1176($fp)
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label689
label689:
	li $t0, 1
	sw $t0, -1368($fp)
label690:
	li $t0, 0
	lw $t1, -1368($fp)
	sub $t0, $t0, $t1
	sw $t0, -1376($fp)
	jal f11
	sw $v0, -1380($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -1324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1384($fp)
	addi $sp, $sp, 24
	lw $t0, -1308($fp)
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -1196($fp)
label677:
	j label675
label674:
	li $t0, 0
	sw $t0, -1392($fp)
	li $t0, 0
	sw $t0, -1396($fp)
	li $t0, 21648
	sw $t0, -1400($fp)
	li $t0, 0
	lw $t1, -1400($fp)
	sub $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t1, -1404($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label693:
	li $t0, 1
	sw $t0, -1396($fp)
label694:
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, -584($fp)
	sw $t0, -1412($fp)
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -1408($fp)
label696:
	lw $t1, -1396($fp)
	lw $t2, -1408($fp)
	ble $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -1392($fp)
label692:
	lw $ra, -4($fp)
	lw $v0, -1392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label675:
	j label672
label671:
	lw $t0, -368($fp)
	sw $t0, -1416($fp)
	li $t0, 37190
	sw $t0, -1420($fp)
	lw $t0, -1416($fp)
	lw $t1, -1420($fp)
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -260($fp)
	sw $t0, -1428($fp)
	li $t0, 0
	lw $t1, -1428($fp)
	sub $t0, $t0, $t1
	sw $t0, -1432($fp)
	li $t0, 0
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1424($fp)
	lw $t1, -1436($fp)
	sub $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label698
label700:
	li $t0, 10808
	sw $t0, -1444($fp)
	addi $t0, $fp, -48
	sw $t0, -1448($fp)
	lw $t0, -344($fp)
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
	lw $t0, -1444($fp)
	lw $t1, -1464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1468($fp)
	li $t0, 0
	lw $t1, -1468($fp)
	sub $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label697
label697:
	jal f11
	sw $v0, -1476($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1480($fp)
	lw $t0, -560($fp)
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label706
label708:
	li $t0, 21715
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label706
label707:
	lw $t0, 4($fp)
	sw $t0, -1492($fp)
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -1480($fp)
label706:
	li $t0, 0
	sw $t0, -1496($fp)
	lw $t0, -356($fp)
	sw $t0, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	lw $t0, -368($fp)
	sw $t0, -1508($fp)
	li $t0, 50973
	sw $t0, -1512($fp)
	lw $t1, -1508($fp)
	lw $t2, -1512($fp)
	blt $t1, $t2, label714
	j label713
label714:
	li $t0, 7747
	sw $t0, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -1504($fp)
label713:
	li $t0, 7295
	sw $t0, -1520($fp)
	li $t0, 18029
	sw $t0, -1524($fp)
	lw $t0, -1520($fp)
	lw $t1, -1524($fp)
	sub $t0, $t0, $t1
	sw $t0, -1528($fp)
	li $t0, 21807
	sw $t0, -1532($fp)
	lw $t0, -1528($fp)
	lw $t1, -1532($fp)
	sub $t0, $t0, $t1
	sw $t0, -1536($fp)
	li $t0, 0
	sw $t0, -1540($fp)
	lw $t0, -272($fp)
	sw $t0, -1544($fp)
	lw $t0, -308($fp)
	sw $t0, -1548($fp)
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	sub $t0, $t0, $t1
	sw $t0, -1552($fp)
	li $t0, 31706
	sw $t0, -1556($fp)
	lw $t1, -1552($fp)
	lw $t2, -1556($fp)
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -1540($fp)
label716:
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1560($fp)
	addi $sp, $sp, 20
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label710
label711:
	lw $t0, -584($fp)
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -1496($fp)
label710:
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, 4($fp)
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label720
label720:
	li $t0, 21076
	sw $t0, -1576($fp)
	lw $t1, -1576($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label719
label719:
	li $t0, 56600
	sw $t0, -1580($fp)
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -1568($fp)
label718:
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, 12($fp)
	sw $t0, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -1584($fp)
label722:
	li $t0, 0
	sw $t0, -1592($fp)
	lw $t0, -548($fp)
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label723
label723:
	li $t0, 1
	sw $t0, -1592($fp)
label724:
	lw $t0, -392($fp)
	sw $t0, -1600($fp)
	lw $t0, -1592($fp)
	lw $t1, -1600($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -284($fp)
	sw $t0, -1608($fp)
	li $t0, 45606
	sw $t0, -1612($fp)
	lw $t0, -1608($fp)
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	li $t0, 0
	lw $t1, -1616($fp)
	sub $t0, $t0, $t1
	sw $t0, -1620($fp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1624($fp)
	addi $sp, $sp, 16
	li $t0, 14431
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	addi $sp, $sp, -4
	lw $t0, -1480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1636($fp)
	addi $sp, $sp, 20
	lw $t0, -1476($fp)
	lw $t1, -1636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label702
label704:
	lw $t0, -404($fp)
	sw $t0, -1644($fp)
	lw $t0, -320($fp)
	sw $t0, -1648($fp)
	lw $t0, -332($fp)
	sw $t0, -1652($fp)
	lw $t0, -1648($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t1, -1644($fp)
	lw $t2, -1656($fp)
	blt $t1, $t2, label701
	j label702
label701:
	li $t0, 0
	sw $t0, -1660($fp)
	li $t0, 0
	sw $t0, -1664($fp)
	li $t0, 46441
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label729
label729:
	li $t0, 1
	sw $t0, -1664($fp)
label730:
	li $t0, 0
	lw $t1, -1664($fp)
	sub $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label725
label728:
	li $t0, 25578
	sw $t0, -1676($fp)
	li $t0, 0
	sw $t0, -1680($fp)
	li $t0, 0
	sw $t0, -1684($fp)
	li $t0, 50400
	sw $t0, -1688($fp)
	lw $t0, -356($fp)
	sw $t0, -1692($fp)
	lw $t1, -1688($fp)
	lw $t2, -1692($fp)
	beq $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -1684($fp)
label734:
	lw $t0, -392($fp)
	sw $t0, -1696($fp)
	lw $t1, -1684($fp)
	lw $t2, -1696($fp)
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -1680($fp)
label732:
	li $t0, 0
	sw $t0, -1700($fp)
	li $t0, 0
	sw $t0, -1704($fp)
	lw $t0, -428($fp)
	sw $t0, -1708($fp)
	li $t0, 45528
	sw $t0, -1712($fp)
	lw $t1, -1708($fp)
	lw $t2, -1712($fp)
	bgt $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -1704($fp)
label738:
	lw $t0, -260($fp)
	sw $t0, -1716($fp)
	lw $t1, -1704($fp)
	lw $t2, -1716($fp)
	bgt $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -1700($fp)
label736:
	lw $t0, -560($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	lw $t0, -572($fp)
	sw $t0, -1732($fp)
	li $t0, 29471
	sw $t0, -1736($fp)
	lw $t1, -1732($fp)
	lw $t2, -1736($fp)
	ble $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -1728($fp)
label740:
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1740($fp)
	addi $sp, $sp, 16
	lw $t0, 12($fp)
	sw $t0, -1744($fp)
	li $t0, 0
	sw $t0, -1748($fp)
	lw $t0, 4($fp)
	sw $t0, -1752($fp)
	li $t0, 55809
	sw $t0, -1756($fp)
	lw $t0, -1752($fp)
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t1, -1760($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label743
label743:
	lw $t0, -344($fp)
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -1748($fp)
label742:
	lw $t0, 4($fp)
	sw $t0, -1768($fp)
	li $t0, 0
	lw $t1, -1768($fp)
	sub $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -416($fp)
	sw $t0, -1776($fp)
	li $t0, 20710
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1784($fp)
	lw $t0, -392($fp)
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	sub $t0, $t0, $t1
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	lw $t0, -392($fp)
	sw $t0, -1800($fp)
	lw $t0, -392($fp)
	sw $t0, -1804($fp)
	lw $t1, -1800($fp)
	lw $t2, -1804($fp)
	blt $t1, $t2, label744
	j label746
label746:
	li $t0, 6185
	sw $t0, -1808($fp)
	lw $t1, -1808($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label745
label744:
	li $t0, 1
	sw $t0, -1796($fp)
label745:
	addi $t0, $fp, -36
	sw $t0, -1812($fp)
	li $t0, 5
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
	addi $sp, $sp, -4
	lw $t0, -1748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1828($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1832($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1832($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1836($fp)
	addi $sp, $sp, 24
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label727
label727:
	li $t0, 37673
	sw $t0, -1840($fp)
	li $t0, 1
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	li $t0, 60094
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label726
label747:
	lw $t0, -320($fp)
	sw $t0, -1860($fp)
	li $t0, 0
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -1660($fp)
label726:
	j label703
label702:
	addi $t0, $fp, -48
	sw $t0, -1868($fp)
	li $t0, 0
	sw $t0, -1872($fp)
	li $t0, 34941
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label750
label750:
	li $t0, 58093
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -1872($fp)
label749:
	li $t0, 4
	lw $t1, -1872($fp)
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	lw $t1, -1868($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, 0($t0)
	sw $t1, -1892($fp)
	li $t0, 0
	lw $t1, -1892($fp)
	sub $t0, $t0, $t1
	sw $t0, -1896($fp)
label703:
label698:
label672:
	addi $t0, $fp, -36
	sw $t0, -1900($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -1920($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -1940($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -1960($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -1980($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -2000($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -2020($fp)
	li $t0, 6
	sw $t0, -2024($fp)
	li $t0, 4
	lw $t1, -2024($fp)
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, 0($t0)
	sw $t1, -2036($fp)
	lw $t0, -2036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2040($fp)
	li $t0, 7
	sw $t0, -2044($fp)
	li $t0, 4
	lw $t1, -2044($fp)
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, -2040($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	lw $t1, 0($t0)
	sw $t1, -2056($fp)
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2136($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -2156($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -2176($fp)
	li $t0, 2
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
	lw $t0, -548($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2212($fp)
	addi $t0, $fp, -48
	sw $t0, -2216($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -2236($fp)
	lw $t0, -464($fp)
	sw $t0, -2240($fp)
	lw $t0, -248($fp)
	sw $t0, -2244($fp)
	lw $t0, -2240($fp)
	lw $t1, -2244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2248($fp)
	li $t0, 59812
	sw $t0, -2252($fp)
	lw $t1, -2248($fp)
	lw $t2, -2252($fp)
	beq $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -2236($fp)
label756:
	li $t0, 31161
	sw $t0, -2256($fp)
	lw $t0, -272($fp)
	sw $t0, -2260($fp)
	lw $t0, -2256($fp)
	lw $t1, -2260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2264($fp)
	lw $t0, -392($fp)
	sw $t0, -2268($fp)
	lw $t0, -2264($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -380($fp)
	sw $t0, -2276($fp)
	li $t0, 14206
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	sub $t0, $t0, $t1
	sw $t0, -2284($fp)
	li $t0, 34333
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -440($fp)
	sw $t0, -2296($fp)
	lw $t0, -392($fp)
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, 4($fp)
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2316($fp)
	addi $sp, $sp, 20
	lw $t1, -2232($fp)
	lw $t2, -2316($fp)
	bne $t1, $t2, label751
	j label754
label754:
	li $t0, 0
	sw $t0, -2320($fp)
	li $t0, 48765
	sw $t0, -2324($fp)
	lw $t1, -2324($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label757
label757:
	li $t0, 1
	sw $t0, -2320($fp)
label758:
	lw $t0, -356($fp)
	sw $t0, -2328($fp)
	lw $t0, -2320($fp)
	lw $t1, -2328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label753
label753:
	li $t0, 0
	sw $t0, -2336($fp)
	lw $t0, -272($fp)
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label759
label759:
	li $t0, 1
	sw $t0, -2336($fp)
label760:
	li $t0, 52237
	sw $t0, -2344($fp)
	li $t0, 0
	lw $t1, -2344($fp)
	sub $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2336($fp)
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	li $t0, 0
	lw $t1, -2352($fp)
	sub $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -2212($fp)
label752:
	lw $ra, -4($fp)
	lw $v0, -2212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -10556
	li $t0, 50877
	sw $t0, -364($fp)
	addi $t0, $fp, -40
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
	li $t0, 14935
	sw $t0, -388($fp)
	addi $t0, $fp, -40
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
	li $t0, 59533
	sw $t0, -412($fp)
	addi $t0, $fp, -40
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
	li $t0, 3370
	sw $t0, -436($fp)
	addi $t0, $fp, -40
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
	li $t0, 36743
	sw $t0, -460($fp)
	addi $t0, $fp, -40
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
	li $t0, 44970
	sw $t0, -484($fp)
	addi $t0, $fp, -40
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
	li $t0, 11118
	sw $t0, -508($fp)
	addi $t0, $fp, -40
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
	li $t0, 58458
	sw $t0, -532($fp)
	addi $t0, $fp, -40
	sw $t0, -536($fp)
	li $t0, 7
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
	li $t0, 25875
	sw $t0, -556($fp)
	addi $t0, $fp, -40
	sw $t0, -560($fp)
	li $t0, 8
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
	li $t0, 32358
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 968
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 32060
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 53069
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 56777
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 61531
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 33061
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 41641
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 21574
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 5198
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 40592
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 16132
	sw $t0, -712($fp)
	addi $t0, $fp, -72
	sw $t0, -716($fp)
	li $t0, 0
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
	li $t0, 40139
	sw $t0, -736($fp)
	addi $t0, $fp, -72
	sw $t0, -740($fp)
	li $t0, 1
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
	li $t0, 33149
	sw $t0, -760($fp)
	addi $t0, $fp, -72
	sw $t0, -764($fp)
	li $t0, 2
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
	li $t0, 13275
	sw $t0, -784($fp)
	addi $t0, $fp, -72
	sw $t0, -788($fp)
	li $t0, 3
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
	li $t0, 60492
	sw $t0, -808($fp)
	addi $t0, $fp, -72
	sw $t0, -812($fp)
	li $t0, 4
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
	li $t0, 47355
	sw $t0, -832($fp)
	addi $t0, $fp, -72
	sw $t0, -836($fp)
	li $t0, 5
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
	li $t0, 47609
	sw $t0, -856($fp)
	addi $t0, $fp, -72
	sw $t0, -860($fp)
	li $t0, 6
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
	li $t0, 26117
	sw $t0, -880($fp)
	addi $t0, $fp, -72
	sw $t0, -884($fp)
	li $t0, 7
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
	li $t0, 41632
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 30838
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 12819
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 26973
	sw $t0, -940($fp)
	addi $t0, $fp, -100
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
	li $t0, 45773
	sw $t0, -964($fp)
	addi $t0, $fp, -100
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
	li $t0, 6816
	sw $t0, -988($fp)
	addi $t0, $fp, -100
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
	li $t0, 30343
	sw $t0, -1012($fp)
	addi $t0, $fp, -100
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
	li $t0, 16980
	sw $t0, -1036($fp)
	addi $t0, $fp, -100
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
	li $t0, 51786
	sw $t0, -1060($fp)
	addi $t0, $fp, -100
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
	li $t0, 41461
	sw $t0, -1084($fp)
	addi $t0, $fp, -100
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
	li $t0, 9903
	sw $t0, -1108($fp)
	addi $t0, $fp, -104
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
	li $t0, 12125
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	li $t0, 8284
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	li $t0, 10871
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	li $t0, 44185
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 61353
	sw $t0, -1180($fp)
	addi $t0, $fp, -140
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
	li $t0, 2112
	sw $t0, -1204($fp)
	addi $t0, $fp, -140
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
	li $t0, 40180
	sw $t0, -1228($fp)
	addi $t0, $fp, -140
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
	li $t0, 28878
	sw $t0, -1252($fp)
	addi $t0, $fp, -140
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
	li $t0, 43753
	sw $t0, -1276($fp)
	addi $t0, $fp, -140
	sw $t0, -1280($fp)
	li $t0, 4
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
	li $t0, 61754
	sw $t0, -1300($fp)
	addi $t0, $fp, -140
	sw $t0, -1304($fp)
	li $t0, 5
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
	li $t0, 34077
	sw $t0, -1324($fp)
	addi $t0, $fp, -140
	sw $t0, -1328($fp)
	li $t0, 6
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
	li $t0, 18809
	sw $t0, -1348($fp)
	addi $t0, $fp, -140
	sw $t0, -1352($fp)
	li $t0, 7
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
	li $t0, 12351
	sw $t0, -1372($fp)
	addi $t0, $fp, -140
	sw $t0, -1376($fp)
	li $t0, 8
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
	li $t0, 8680
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 51958
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 25626
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 3637
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 33778
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 7699
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 29754
	sw $t0, -1468($fp)
	addi $t0, $fp, -172
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
	li $t0, 9874
	sw $t0, -1492($fp)
	addi $t0, $fp, -172
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
	li $t0, 38537
	sw $t0, -1516($fp)
	addi $t0, $fp, -172
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
	li $t0, 42573
	sw $t0, -1540($fp)
	addi $t0, $fp, -172
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
	li $t0, 36847
	sw $t0, -1564($fp)
	addi $t0, $fp, -172
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
	li $t0, 18775
	sw $t0, -1588($fp)
	addi $t0, $fp, -172
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
	li $t0, 49389
	sw $t0, -1612($fp)
	addi $t0, $fp, -172
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
	li $t0, 1654
	sw $t0, -1636($fp)
	addi $t0, $fp, -172
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
	li $t0, 35755
	sw $t0, -1660($fp)
	addi $t0, $fp, -196
	sw $t0, -1664($fp)
	li $t0, 0
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
	li $t0, 35639
	sw $t0, -1684($fp)
	addi $t0, $fp, -196
	sw $t0, -1688($fp)
	li $t0, 1
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
	li $t0, 43116
	sw $t0, -1708($fp)
	addi $t0, $fp, -196
	sw $t0, -1712($fp)
	li $t0, 2
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
	li $t0, 45658
	sw $t0, -1732($fp)
	addi $t0, $fp, -196
	sw $t0, -1736($fp)
	li $t0, 3
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
	li $t0, 47764
	sw $t0, -1756($fp)
	addi $t0, $fp, -196
	sw $t0, -1760($fp)
	li $t0, 4
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
	li $t0, 51400
	sw $t0, -1780($fp)
	addi $t0, $fp, -196
	sw $t0, -1784($fp)
	li $t0, 5
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
	li $t0, 56529
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 26413
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 47217
	sw $t0, -1828($fp)
	addi $t0, $fp, -200
	sw $t0, -1832($fp)
	li $t0, 0
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
	li $t0, 58641
	sw $t0, -1852($fp)
	addi $t0, $fp, -240
	sw $t0, -1856($fp)
	li $t0, 0
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
	li $t0, 1058
	sw $t0, -1876($fp)
	addi $t0, $fp, -240
	sw $t0, -1880($fp)
	li $t0, 1
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
	li $t0, 10559
	sw $t0, -1900($fp)
	addi $t0, $fp, -240
	sw $t0, -1904($fp)
	li $t0, 2
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1904($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1900($fp)
	lw $t1, -1916($fp)
	sw $t0, 0($t1)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	li $t0, 36858
	sw $t0, -1924($fp)
	addi $t0, $fp, -240
	sw $t0, -1928($fp)
	li $t0, 3
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1928($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1924($fp)
	lw $t1, -1940($fp)
	sw $t0, 0($t1)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	li $t0, 62812
	sw $t0, -1948($fp)
	addi $t0, $fp, -240
	sw $t0, -1952($fp)
	li $t0, 4
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
	li $t0, 44636
	sw $t0, -1972($fp)
	addi $t0, $fp, -240
	sw $t0, -1976($fp)
	li $t0, 5
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
	li $t0, 55667
	sw $t0, -1996($fp)
	addi $t0, $fp, -240
	sw $t0, -2000($fp)
	li $t0, 6
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
	li $t0, 9627
	sw $t0, -2020($fp)
	addi $t0, $fp, -240
	sw $t0, -2024($fp)
	li $t0, 7
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
	li $t0, 53317
	sw $t0, -2044($fp)
	addi $t0, $fp, -240
	sw $t0, -2048($fp)
	li $t0, 8
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
	li $t0, 42090
	sw $t0, -2068($fp)
	addi $t0, $fp, -240
	sw $t0, -2072($fp)
	li $t0, 9
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
	li $t0, 35254
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	li $t0, 56954
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 10332
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 42953
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	li $t0, 21172
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -2148($fp)
	li $t0, 20206
	sw $t0, -2152($fp)
	addi $t0, $fp, -244
	sw $t0, -2156($fp)
	li $t0, 0
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
	li $t0, 15955
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	li $t0, 63746
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	li $t0, 57053
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	sw $t0, -2208($fp)
	li $t0, 34730
	sw $t0, -2212($fp)
	addi $t0, $fp, -260
	sw $t0, -2216($fp)
	li $t0, 0
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2216($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2212($fp)
	lw $t1, -2228($fp)
	sw $t0, 0($t1)
	lw $t0, -2228($fp)
	lw $t1, 0($t0)
	sw $t1, -2232($fp)
	li $t0, 47599
	sw $t0, -2236($fp)
	addi $t0, $fp, -260
	sw $t0, -2240($fp)
	li $t0, 1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2240($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2236($fp)
	lw $t1, -2252($fp)
	sw $t0, 0($t1)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	li $t0, 58707
	sw $t0, -2260($fp)
	addi $t0, $fp, -260
	sw $t0, -2264($fp)
	li $t0, 2
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2264($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2260($fp)
	lw $t1, -2276($fp)
	sw $t0, 0($t1)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	li $t0, 4949
	sw $t0, -2284($fp)
	addi $t0, $fp, -260
	sw $t0, -2288($fp)
	li $t0, 3
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2288($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2284($fp)
	lw $t1, -2300($fp)
	sw $t0, 0($t1)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	li $t0, 17703
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -2316($fp)
	li $t0, 36287
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -2328($fp)
	li $t0, 50608
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	sw $t0, -2340($fp)
	li $t0, 65467
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	li $t0, 22151
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	li $t0, 41601
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	li $t0, 26345
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	li $t0, 3832
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 34707
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	li $t0, 27403
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	li $t0, 14392
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	li $t0, 6029
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	li $t0, 24679
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	li $t0, 59028
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	li $t0, 61697
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	li $t0, 34307
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	sw $t0, -2496($fp)
	li $t0, 46809
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	sw $t0, -2508($fp)
	li $t0, 38251
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	li $t0, 4025
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	li $t0, 38227
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	li $t0, 48583
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -2556($fp)
	li $t0, 46978
	sw $t0, -2560($fp)
	addi $t0, $fp, -296
	sw $t0, -2564($fp)
	li $t0, 0
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2564($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2560($fp)
	lw $t1, -2576($fp)
	sw $t0, 0($t1)
	lw $t0, -2576($fp)
	lw $t1, 0($t0)
	sw $t1, -2580($fp)
	li $t0, 59400
	sw $t0, -2584($fp)
	addi $t0, $fp, -296
	sw $t0, -2588($fp)
	li $t0, 1
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2588($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2584($fp)
	lw $t1, -2600($fp)
	sw $t0, 0($t1)
	lw $t0, -2600($fp)
	lw $t1, 0($t0)
	sw $t1, -2604($fp)
	li $t0, 3253
	sw $t0, -2608($fp)
	addi $t0, $fp, -296
	sw $t0, -2612($fp)
	li $t0, 2
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2612($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2608($fp)
	lw $t1, -2624($fp)
	sw $t0, 0($t1)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	li $t0, 62933
	sw $t0, -2632($fp)
	addi $t0, $fp, -296
	sw $t0, -2636($fp)
	li $t0, 3
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2636($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2632($fp)
	lw $t1, -2648($fp)
	sw $t0, 0($t1)
	lw $t0, -2648($fp)
	lw $t1, 0($t0)
	sw $t1, -2652($fp)
	li $t0, 57610
	sw $t0, -2656($fp)
	addi $t0, $fp, -296
	sw $t0, -2660($fp)
	li $t0, 4
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2660($fp)
	lw $t1, -2668($fp)
	add $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2656($fp)
	lw $t1, -2672($fp)
	sw $t0, 0($t1)
	lw $t0, -2672($fp)
	lw $t1, 0($t0)
	sw $t1, -2676($fp)
	li $t0, 60306
	sw $t0, -2680($fp)
	addi $t0, $fp, -296
	sw $t0, -2684($fp)
	li $t0, 5
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
	li $t0, 32127
	sw $t0, -2704($fp)
	addi $t0, $fp, -296
	sw $t0, -2708($fp)
	li $t0, 6
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
	li $t0, 39673
	sw $t0, -2728($fp)
	addi $t0, $fp, -296
	sw $t0, -2732($fp)
	li $t0, 7
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
	li $t0, 53477
	sw $t0, -2752($fp)
	addi $t0, $fp, -296
	sw $t0, -2756($fp)
	li $t0, 8
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
	li $t0, 37077
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -2784($fp)
	li $t0, 57376
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -2796($fp)
	li $t0, 24229
	sw $t0, -2800($fp)
	addi $t0, $fp, -308
	sw $t0, -2804($fp)
	li $t0, 0
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
	li $t0, 22149
	sw $t0, -2824($fp)
	addi $t0, $fp, -308
	sw $t0, -2828($fp)
	li $t0, 1
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
	li $t0, 57308
	sw $t0, -2848($fp)
	addi $t0, $fp, -308
	sw $t0, -2852($fp)
	li $t0, 2
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
	li $t0, 46380
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	li $t0, 63750
	sw $t0, -2884($fp)
	addi $t0, $fp, -328
	sw $t0, -2888($fp)
	li $t0, 0
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2888($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2884($fp)
	lw $t1, -2900($fp)
	sw $t0, 0($t1)
	lw $t0, -2900($fp)
	lw $t1, 0($t0)
	sw $t1, -2904($fp)
	li $t0, 18117
	sw $t0, -2908($fp)
	addi $t0, $fp, -328
	sw $t0, -2912($fp)
	li $t0, 1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2912($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2908($fp)
	lw $t1, -2924($fp)
	sw $t0, 0($t1)
	lw $t0, -2924($fp)
	lw $t1, 0($t0)
	sw $t1, -2928($fp)
	li $t0, 50213
	sw $t0, -2932($fp)
	addi $t0, $fp, -328
	sw $t0, -2936($fp)
	li $t0, 2
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2936($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2932($fp)
	lw $t1, -2948($fp)
	sw $t0, 0($t1)
	lw $t0, -2948($fp)
	lw $t1, 0($t0)
	sw $t1, -2952($fp)
	li $t0, 32921
	sw $t0, -2956($fp)
	addi $t0, $fp, -328
	sw $t0, -2960($fp)
	li $t0, 3
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2960($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2956($fp)
	lw $t1, -2972($fp)
	sw $t0, 0($t1)
	lw $t0, -2972($fp)
	lw $t1, 0($t0)
	sw $t1, -2976($fp)
	li $t0, 45520
	sw $t0, -2980($fp)
	addi $t0, $fp, -328
	sw $t0, -2984($fp)
	li $t0, 4
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2984($fp)
	lw $t1, -2992($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2980($fp)
	lw $t1, -2996($fp)
	sw $t0, 0($t1)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	li $t0, 64605
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	sw $t0, -3012($fp)
	li $t0, 38951
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	sw $t0, -3024($fp)
	li $t0, 4663
	sw $t0, -3028($fp)
	addi $t0, $fp, -332
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3032($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3028($fp)
	lw $t1, -3044($fp)
	sw $t0, 0($t1)
	lw $t0, -3044($fp)
	lw $t1, 0($t0)
	sw $t1, -3048($fp)
	li $t0, 58097
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	sw $t0, -3060($fp)
	li $t0, 35112
	sw $t0, -3064($fp)
	addi $t0, $fp, -336
	sw $t0, -3068($fp)
	li $t0, 0
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
	li $t0, 38970
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	sw $t0, -3096($fp)
	li $t0, 39371
	sw $t0, -3100($fp)
	addi $t0, $fp, -360
	sw $t0, -3104($fp)
	li $t0, 0
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3104($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3100($fp)
	lw $t1, -3116($fp)
	sw $t0, 0($t1)
	lw $t0, -3116($fp)
	lw $t1, 0($t0)
	sw $t1, -3120($fp)
	li $t0, 7827
	sw $t0, -3124($fp)
	addi $t0, $fp, -360
	sw $t0, -3128($fp)
	li $t0, 1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3128($fp)
	lw $t1, -3136($fp)
	add $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3124($fp)
	lw $t1, -3140($fp)
	sw $t0, 0($t1)
	lw $t0, -3140($fp)
	lw $t1, 0($t0)
	sw $t1, -3144($fp)
	li $t0, 42995
	sw $t0, -3148($fp)
	addi $t0, $fp, -360
	sw $t0, -3152($fp)
	li $t0, 2
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3152($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3148($fp)
	lw $t1, -3164($fp)
	sw $t0, 0($t1)
	lw $t0, -3164($fp)
	lw $t1, 0($t0)
	sw $t1, -3168($fp)
	li $t0, 12062
	sw $t0, -3172($fp)
	addi $t0, $fp, -360
	sw $t0, -3176($fp)
	li $t0, 3
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3176($fp)
	lw $t1, -3184($fp)
	add $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3172($fp)
	lw $t1, -3188($fp)
	sw $t0, 0($t1)
	lw $t0, -3188($fp)
	lw $t1, 0($t0)
	sw $t1, -3192($fp)
	li $t0, 56410
	sw $t0, -3196($fp)
	addi $t0, $fp, -360
	sw $t0, -3200($fp)
	li $t0, 4
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3200($fp)
	lw $t1, -3208($fp)
	add $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3196($fp)
	lw $t1, -3212($fp)
	sw $t0, 0($t1)
	lw $t0, -3212($fp)
	lw $t1, 0($t0)
	sw $t1, -3216($fp)
	li $t0, 24438
	sw $t0, -3220($fp)
	addi $t0, $fp, -360
	sw $t0, -3224($fp)
	li $t0, 5
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3224($fp)
	lw $t1, -3232($fp)
	add $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3220($fp)
	lw $t1, -3236($fp)
	sw $t0, 0($t1)
	lw $t0, -3236($fp)
	lw $t1, 0($t0)
	sw $t1, -3240($fp)
	addi $t0, $fp, -244
	sw $t0, -3244($fp)
	lw $t0, -2444($fp)
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
	addi $t0, $fp, -100
	sw $t0, -3264($fp)
	li $t0, 4
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
	li $t0, 53963
	sw $t0, -3284($fp)
	lw $t0, -3280($fp)
	lw $t1, -3284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3288($fp)
	li $t0, 0
	sw $t0, -3292($fp)
	lw $t0, -704($fp)
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label761
label761:
	li $t0, 1
	sw $t0, -3292($fp)
label762:
	li $t0, 21835
	sw $t0, -3300($fp)
	lw $t0, -1448($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -3308($fp)
	li $t0, 0
	sw $t0, -3312($fp)
	li $t0, 0
	sw $t0, -3316($fp)
	lw $t0, -3056($fp)
	sw $t0, -3320($fp)
	li $t0, 59663
	sw $t0, -3324($fp)
	lw $t1, -3320($fp)
	lw $t2, -3324($fp)
	bne $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -3316($fp)
label766:
	lw $t0, -608($fp)
	sw $t0, -3328($fp)
	lw $t1, -3316($fp)
	lw $t2, -3328($fp)
	beq $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -3312($fp)
label764:
	li $t0, 5926
	sw $t0, -3332($fp)
	lw $t0, -3008($fp)
	sw $t0, -3336($fp)
	lw $t0, -3332($fp)
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, 4($fp)
	sw $t0, -3344($fp)
	lw $t0, -3340($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3348($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3352($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3352($fp)
	sub $t0, $t0, $t1
	sw $t0, -3356($fp)
	addi $sp, $sp, -4
	lw $t0, -3288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3356($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3360($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -3364($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3368($fp)
	lw $t0, -2540($fp)
	sw $t0, -3372($fp)
	lw $t1, -3372($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label771
label771:
	li $t0, 1
	sw $t0, -3368($fp)
label772:
	lw $t0, -2456($fp)
	sw $t0, -3376($fp)
	lw $t0, -3368($fp)
	lw $t1, -3376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3380($fp)
	jal f9
	sw $v0, -3384($fp)
	addi $sp, $sp, 4
	lw $t0, -3380($fp)
	lw $t1, -3384($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	addi $t0, $fp, -172
	sw $t0, -3392($fp)
	lw $t0, -2108($fp)
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
	lw $t1, -3388($fp)
	lw $t2, -3408($fp)
	ble $t1, $t2, label767
	j label770
label770:
	lw $t0, -2552($fp)
	sw $t0, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label768
label767:
label773:
	addi $t0, $fp, -40
	sw $t0, -3416($fp)
	li $t0, 8
	sw $t0, -3420($fp)
	li $t0, 4
	lw $t1, -3420($fp)
	mul $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	lw $t1, -3416($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	lw $t1, 0($t0)
	sw $t1, -3432($fp)
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, 4($fp)
	sw $t0, -3440($fp)
	lw $t0, -584($fp)
	sw $t0, -3444($fp)
	lw $t0, -3440($fp)
	lw $t1, -3444($fp)
	sub $t0, $t0, $t1
	sw $t0, -3448($fp)
	li $t0, 37674
	sw $t0, -3452($fp)
	lw $t1, -3448($fp)
	lw $t2, -3452($fp)
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -3436($fp)
label777:
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3456($fp)
	addi $sp, $sp, 12
	lw $t0, -1808($fp)
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -3464($fp)
	li $t0, 0
	sw $t0, -3468($fp)
	addi $t0, $fp, -72
	sw $t0, -3472($fp)
	lw $t0, -2780($fp)
	sw $t0, -3476($fp)
	li $t0, 4
	lw $t1, -3476($fp)
	mul $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	lw $t1, -3472($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	lw $t1, 0($t0)
	sw $t1, -3488($fp)
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label778
label778:
	li $t0, 1
	sw $t0, -3468($fp)
label779:
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3492($fp)
	addi $sp, $sp, 12
	lw $t0, -3456($fp)
	lw $t1, -3492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3496($fp)
	lw $t0, 4($fp)
	sw $t0, -3500($fp)
	lw $t0, -3496($fp)
	lw $t1, -3500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3504($fp)
	li $t0, 0
	sw $t0, -3508($fp)
	lw $t0, -2396($fp)
	sw $t0, -3512($fp)
	li $t0, 0
	lw $t1, -3512($fp)
	sub $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t1, -3516($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label780
label780:
	li $t0, 1
	sw $t0, -3508($fp)
label781:
	li $t0, 0
	lw $t1, -3508($fp)
	sub $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3504($fp)
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label775
label774:
	li $t0, 0
	sw $t0, -3528($fp)
	jal f9
	sw $v0, -3532($fp)
	addi $sp, $sp, 4
	lw $t1, -3532($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label784
label785:
	jal f11
	sw $v0, -3536($fp)
	addi $sp, $sp, 4
	li $t0, 29514
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t1, -3544($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label784
label784:
	li $t0, 47448
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -3552($fp)
	li $t0, 0
	sw $t0, -3556($fp)
	li $t0, 21286
	sw $t0, -3560($fp)
	lw $t0, -2096($fp)
	sw $t0, -3564($fp)
	lw $t1, -3560($fp)
	lw $t2, -3564($fp)
	beq $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -3556($fp)
label787:
	li $t0, 0
	sw $t0, -3568($fp)
	li $t0, 1067
	sw $t0, -3572($fp)
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label789
label791:
	lw $t0, -2468($fp)
	sw $t0, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label789
label790:
	li $t0, 47653
	sw $t0, -3580($fp)
	lw $t1, -3580($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -3568($fp)
label789:
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3584($fp)
	addi $sp, $sp, 16
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -3528($fp)
label783:
	lw $ra, -4($fp)
	lw $v0, -3528($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label773
label775:
	j label769
label768:
	li $t0, 0
	sw $t0, -3588($fp)
	addi $t0, $fp, -200
	sw $t0, -3592($fp)
	lw $t0, -2552($fp)
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
	li $t0, 19387
	sw $t0, -3612($fp)
	lw $t0, -596($fp)
	sw $t0, -3616($fp)
	lw $t0, -3612($fp)
	lw $t1, -3616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3620($fp)
	li $t0, 0
	sw $t0, -3624($fp)
	li $t0, 13253
	sw $t0, -3628($fp)
	lw $t1, -3628($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label794
label794:
	li $t0, 1
	sw $t0, -3624($fp)
label795:
	li $t0, 0
	lw $t1, -3624($fp)
	sub $t0, $t0, $t1
	sw $t0, -3632($fp)
	li $t0, 0
	sw $t0, -3636($fp)
	lw $t0, -2348($fp)
	sw $t0, -3640($fp)
	li $t0, 32125
	sw $t0, -3644($fp)
	lw $t1, -3640($fp)
	lw $t2, -3644($fp)
	ble $t1, $t2, label798
	j label797
label798:
	lw $t0, -1808($fp)
	sw $t0, -3648($fp)
	lw $t1, -3648($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -3636($fp)
label797:
	li $t0, 45867
	sw $t0, -3652($fp)
	li $t0, 39403
	sw $t0, -3656($fp)
	lw $t0, -3652($fp)
	lw $t1, -3656($fp)
	mul $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -2456($fp)
	sw $t0, -3664($fp)
	lw $t0, -3660($fp)
	lw $t1, -3664($fp)
	mul $t0, $t0, $t1
	sw $t0, -3668($fp)
	addi $sp, $sp, -4
	lw $t0, -3608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3672($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3672($fp)
	sub $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -2180($fp)
	sw $t0, -3680($fp)
	addi $t0, $fp, -336
	sw $t0, -3684($fp)
	li $t0, 0
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
	lw $t0, -3680($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t1, -3676($fp)
	lw $t2, -3704($fp)
	bgt $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -3588($fp)
label793:
	lw $ra, -4($fp)
	lw $v0, -3588($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label769:
	addi $t0, $fp, -296
	sw $t0, -3708($fp)
	lw $t0, -584($fp)
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -3716($fp)
	li $t0, 4
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	lw $t1, -3708($fp)
	add $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	lw $t1, 0($t0)
	sw $t1, -3728($fp)
	lw $t1, -3728($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label800
label802:
	li $t0, 0
	sw $t0, -3732($fp)
	li $t0, 0
	sw $t0, -3736($fp)
	lw $t0, -2324($fp)
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label805
label805:
	li $t0, 1
	sw $t0, -3736($fp)
label806:
	li $t0, 24051
	sw $t0, -3744($fp)
	lw $t1, -3736($fp)
	lw $t2, -3744($fp)
	ble $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -3732($fp)
label804:
	lw $t0, 8($fp)
	sw $t0, -3748($fp)
	li $t0, 23755
	sw $t0, -3752($fp)
	lw $t0, -3748($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t1, -3732($fp)
	lw $t2, -3756($fp)
	bne $t1, $t2, label799
	j label800
label799:
label807:
	jal f11
	sw $v0, -3760($fp)
	addi $sp, $sp, 4
	lw $t1, -3760($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label808
label808:
label810:
	lw $t0, -2192($fp)
	sw $t0, -3764($fp)
	li $t0, 63022
	sw $t0, -3768($fp)
	lw $t0, -3764($fp)
	lw $t1, -3768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3772($fp)
	lw $t0, -584($fp)
	sw $t0, -3776($fp)
	lw $t1, -3772($fp)
	lw $t2, -3776($fp)
	beq $t1, $t2, label811
	j label812
label811:
	addi $t0, $fp, -140
	sw $t0, -3780($fp)
	li $t0, 0
	sw $t0, -3784($fp)
	li $t0, 0
	sw $t0, -3788($fp)
	lw $t0, -656($fp)
	sw $t0, -3792($fp)
	lw $t0, -2420($fp)
	sw $t0, -3796($fp)
	lw $t0, -3792($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, 4($fp)
	sw $t0, -3804($fp)
	lw $t1, -3800($fp)
	lw $t2, -3804($fp)
	bne $t1, $t2, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -3788($fp)
label816:
	li $t0, 0
	sw $t0, -3808($fp)
	li $t0, 63126
	sw $t0, -3812($fp)
	li $t0, 29607
	sw $t0, -3816($fp)
	lw $t1, -3812($fp)
	lw $t2, -3816($fp)
	blt $t1, $t2, label817
	j label818
label817:
	li $t0, 1
	sw $t0, -3808($fp)
label818:
	lw $t1, -3788($fp)
	lw $t2, -3808($fp)
	beq $t1, $t2, label813
	j label814
label813:
	li $t0, 1
	sw $t0, -3784($fp)
label814:
	li $t0, 4
	lw $t1, -3784($fp)
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, 0($t0)
	sw $t1, -3828($fp)
	j label810
label812:
	j label807
label809:
	j label801
label800:
label819:
	li $t0, 0
	sw $t0, -3832($fp)
	li $t0, 40481
	sw $t0, -3836($fp)
	li $t0, 0
	lw $t1, -3836($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label822
label822:
	li $t0, 1
	sw $t0, -3832($fp)
label823:
	li $t0, 0
	sw $t0, -3844($fp)
	lw $t0, -2120($fp)
	sw $t0, -3848($fp)
	lw $t1, -3848($fp)
	li $t2, 0
	bne $t1, $t2, label824
	j label825
label824:
	li $t0, 1
	sw $t0, -3844($fp)
label825:
	lw $t1, -3832($fp)
	lw $t2, -3844($fp)
	bgt $t1, $t2, label820
	j label821
label820:
	li $t0, 0
	sw $t0, -3852($fp)
	addi $t0, $fp, -72
	sw $t0, -3856($fp)
	li $t0, 0
	sw $t0, -3860($fp)
	lw $t0, -1448($fp)
	sw $t0, -3864($fp)
	lw $t1, -3864($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label830
label830:
	lw $t0, -2204($fp)
	sw $t0, -3868($fp)
	lw $t1, -3868($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label829
label828:
	li $t0, 1
	sw $t0, -3860($fp)
label829:
	li $t0, 4
	lw $t1, -3860($fp)
	mul $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, 0($t0)
	sw $t1, -3880($fp)
	li $t0, 0
	lw $t1, -3880($fp)
	sub $t0, $t0, $t1
	sw $t0, -3884($fp)
	li $t0, 9653
	sw $t0, -3888($fp)
	lw $t1, -3884($fp)
	lw $t2, -3888($fp)
	bge $t1, $t2, label826
	j label827
label826:
	li $t0, 1
	sw $t0, -3852($fp)
label827:
	j label819
label821:
label801:
	li $t0, 20481
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	sw $t0, -3900($fp)
	li $t0, 64919
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	sw $t0, -3912($fp)
	lw $t0, -3896($fp)
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3908($fp)
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3924($fp)
	li $t0, 0
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	lw $t0, -2336($fp)
	sw $t0, -3936($fp)
	li $t0, 21218
	sw $t0, -3940($fp)
	lw $t1, -3936($fp)
	lw $t2, -3940($fp)
	ble $t1, $t2, label836
	j label837
label836:
	li $t0, 1
	sw $t0, -3932($fp)
label837:
	li $t0, 13580
	sw $t0, -3944($fp)
	lw $t1, -3932($fp)
	lw $t2, -3944($fp)
	bgt $t1, $t2, label834
	j label835
label834:
	li $t0, 1
	sw $t0, -3928($fp)
label835:
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 15579
	sw $t0, -3952($fp)
	lw $t0, -3896($fp)
	sw $t0, -3956($fp)
	lw $t0, -3952($fp)
	lw $t1, -3956($fp)
	add $t0, $t0, $t1
	sw $t0, -3960($fp)
	li $t0, 14608
	sw $t0, -3964($fp)
	lw $t1, -3960($fp)
	lw $t2, -3964($fp)
	bge $t1, $t2, label838
	j label839
label838:
	li $t0, 1
	sw $t0, -3948($fp)
label839:
	addi $sp, $sp, -4
	lw $t0, -3928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3948($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3968($fp)
	addi $sp, $sp, 12
	li $t0, 45879
	sw $t0, -3972($fp)
	li $t0, 0
	sw $t0, -3976($fp)
	li $t0, 0
	sw $t0, -3980($fp)
	lw $t0, -584($fp)
	sw $t0, -3984($fp)
	li $t0, 0
	lw $t1, -3984($fp)
	sub $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t1, -3988($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label844
label844:
	li $t0, 9645
	sw $t0, -3992($fp)
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -3980($fp)
label843:
	li $t0, 0
	sw $t0, -3996($fp)
	li $t0, 0
	sw $t0, -4000($fp)
	lw $t0, -1400($fp)
	sw $t0, -4004($fp)
	lw $t0, -2504($fp)
	sw $t0, -4008($fp)
	lw $t1, -4004($fp)
	lw $t2, -4008($fp)
	ble $t1, $t2, label847
	j label848
label847:
	li $t0, 1
	sw $t0, -4000($fp)
label848:
	lw $t0, -2360($fp)
	sw $t0, -4012($fp)
	lw $t1, -4000($fp)
	lw $t2, -4012($fp)
	blt $t1, $t2, label845
	j label846
label845:
	li $t0, 1
	sw $t0, -3996($fp)
label846:
	li $t0, 0
	sw $t0, -4016($fp)
	lw $t0, -2456($fp)
	sw $t0, -4020($fp)
	lw $t1, -4020($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label851
label851:
	lw $t0, -2108($fp)
	sw $t0, -4024($fp)
	lw $t1, -4024($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label850
label849:
	li $t0, 1
	sw $t0, -4016($fp)
label850:
	li $t0, 0
	sw $t0, -4028($fp)
	lw $t0, -2336($fp)
	sw $t0, -4032($fp)
	lw $t0, -2456($fp)
	sw $t0, -4036($fp)
	lw $t0, -4032($fp)
	lw $t1, -4036($fp)
	add $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -1820($fp)
	sw $t0, -4044($fp)
	lw $t1, -4040($fp)
	lw $t2, -4044($fp)
	ble $t1, $t2, label852
	j label853
label852:
	li $t0, 1
	sw $t0, -4028($fp)
label853:
	li $t0, 0
	sw $t0, -4048($fp)
	lw $t0, -2420($fp)
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label855
label856:
	lw $t0, -1400($fp)
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label855
label854:
	li $t0, 1
	sw $t0, -4048($fp)
label855:
	addi $sp, $sp, -4
	lw $t0, -3980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4048($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4060($fp)
	addi $sp, $sp, 24
	li $t0, 51254
	sw $t0, -4064($fp)
	lw $t1, -4060($fp)
	lw $t2, -4064($fp)
	blt $t1, $t2, label840
	j label841
label840:
	li $t0, 1
	sw $t0, -3976($fp)
label841:
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 3505
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label859
label859:
	lw $t0, -3908($fp)
	sw $t0, -4076($fp)
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -4068($fp)
label858:
	lw $t0, -2792($fp)
	sw $t0, -4080($fp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4080($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4084($fp)
	addi $sp, $sp, 20
	lw $t0, -1172($fp)
	sw $t0, -4088($fp)
	lw $t0, -4084($fp)
	lw $t1, -4088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4092($fp)
	lw $t1, -3968($fp)
	lw $t2, -4092($fp)
	bge $t1, $t2, label831
	j label833
label833:
	addi $t0, $fp, -40
	sw $t0, -4096($fp)
	lw $t0, -2132($fp)
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
	addi $t0, $fp, -196
	sw $t0, -4116($fp)
	li $t0, 0
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
	lw $t0, -4112($fp)
	lw $t1, -4132($fp)
	sub $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label831
	j label832
label831:
	li $t0, 1
	sw $t0, -3924($fp)
label832:
	lw $ra, -4($fp)
	lw $v0, -3924($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -360
	sw $t0, -4140($fp)
	li $t0, 0
	sw $t0, -4144($fp)
	li $t0, 4
	lw $t1, -4144($fp)
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, 0($t0)
	sw $t1, -4156($fp)
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label864
label864:
	lw $t0, -608($fp)
	sw $t0, -4160($fp)
	lw $t1, -4160($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label863
label863:
	lw $t0, -1160($fp)
	sw $t0, -4164($fp)
	li $t0, 36519
	sw $t0, -4168($fp)
	lw $t0, -4164($fp)
	lw $t1, -4168($fp)
	mul $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -1424($fp)
	sw $t0, -4176($fp)
	lw $t0, -1820($fp)
	sw $t0, -4180($fp)
	lw $t0, -4176($fp)
	lw $t1, -4180($fp)
	sub $t0, $t0, $t1
	sw $t0, -4184($fp)
	li $t0, 10851
	sw $t0, -4188($fp)
	lw $t0, -4184($fp)
	lw $t1, -4188($fp)
	sub $t0, $t0, $t1
	sw $t0, -4192($fp)
	jal f11
	sw $v0, -4196($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -4192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4196($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4200($fp)
	addi $sp, $sp, 12
	lw $t0, -2552($fp)
	sw $t0, -4204($fp)
	lw $t0, -4200($fp)
	lw $t1, -4204($fp)
	mul $t0, $t0, $t1
	sw $t0, -4208($fp)
	li $t0, 60984
	sw $t0, -4212($fp)
	lw $t0, -2444($fp)
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	li $t0, 0
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	lw $t0, -692($fp)
	sw $t0, -4232($fp)
	li $t0, 63134
	sw $t0, -4236($fp)
	lw $t1, -4232($fp)
	lw $t2, -4236($fp)
	ble $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -4228($fp)
label868:
	li $t0, 10386
	sw $t0, -4240($fp)
	lw $t1, -4228($fp)
	lw $t2, -4240($fp)
	beq $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -4224($fp)
label866:
	li $t0, 0
	sw $t0, -4244($fp)
	lw $t0, -2360($fp)
	sw $t0, -4248($fp)
	lw $t0, -2528($fp)
	sw $t0, -4252($fp)
	lw $t0, -4248($fp)
	lw $t1, -4252($fp)
	mul $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, 4($fp)
	sw $t0, -4260($fp)
	lw $t1, -4256($fp)
	lw $t2, -4260($fp)
	ble $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -4244($fp)
label870:
	li $t0, 28859
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -4268($fp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4268($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4272($fp)
	addi $sp, $sp, 24
	lw $t0, -4172($fp)
	lw $t1, -4272($fp)
	add $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t1, -4276($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label861
label860:
	li $t0, 50397
	sw $t0, -4280($fp)
	lw $t0, -2108($fp)
	sw $t0, -4284($fp)
	lw $t0, -4280($fp)
	lw $t1, -4284($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -2312($fp)
	sw $t0, -4292($fp)
	lw $t0, -4288($fp)
	lw $t1, -4292($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -2348($fp)
	sw $t0, -4300($fp)
	lw $t0, -644($fp)
	sw $t0, -4304($fp)
	lw $t0, -4300($fp)
	lw $t1, -4304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4308($fp)
	li $t0, 53825
	sw $t0, -4312($fp)
	lw $t0, -4308($fp)
	lw $t1, -4312($fp)
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	li $t0, 0
	sw $t0, -4320($fp)
	li $t0, 0
	sw $t0, -4324($fp)
	lw $t0, -2372($fp)
	sw $t0, -4328($fp)
	lw $t0, -2384($fp)
	sw $t0, -4332($fp)
	lw $t1, -4328($fp)
	lw $t2, -4332($fp)
	ble $t1, $t2, label876
	j label877
label876:
	li $t0, 1
	sw $t0, -4324($fp)
label877:
	lw $t0, -2456($fp)
	sw $t0, -4336($fp)
	lw $t1, -4324($fp)
	lw $t2, -4336($fp)
	bne $t1, $t2, label874
	j label875
label874:
	li $t0, 1
	sw $t0, -4320($fp)
label875:
	li $t0, 0
	sw $t0, -4340($fp)
	lw $t0, -2468($fp)
	sw $t0, -4344($fp)
	lw $t0, -2096($fp)
	sw $t0, -4348($fp)
	lw $t0, -4344($fp)
	lw $t1, -4348($fp)
	sub $t0, $t0, $t1
	sw $t0, -4352($fp)
	li $t0, 63055
	sw $t0, -4356($fp)
	lw $t1, -4352($fp)
	lw $t2, -4356($fp)
	bge $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -4340($fp)
label879:
	li $t0, 29774
	sw $t0, -4360($fp)
	lw $t0, -1400($fp)
	sw $t0, -4364($fp)
	lw $t0, -4360($fp)
	lw $t1, -4364($fp)
	sub $t0, $t0, $t1
	sw $t0, -4368($fp)
	li $t0, 26642
	sw $t0, -4372($fp)
	lw $t0, -4368($fp)
	lw $t1, -4372($fp)
	sub $t0, $t0, $t1
	sw $t0, -4376($fp)
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4376($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4380($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -4384($fp)
	lw $t0, -1172($fp)
	sw $t0, -4388($fp)
	lw $t1, -4388($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label880
label880:
	li $t0, 1
	sw $t0, -4384($fp)
label881:
	li $t0, 0
	lw $t1, -4384($fp)
	sub $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t1, -4380($fp)
	lw $t2, -4392($fp)
	bge $t1, $t2, label871
	j label872
label871:
label882:
	li $t0, 19299
	sw $t0, -4396($fp)
	addi $t0, $fp, -328
	sw $t0, -4400($fp)
	lw $t0, -920($fp)
	sw $t0, -4404($fp)
	lw $t0, -2780($fp)
	sw $t0, -4408($fp)
	lw $t0, -4404($fp)
	lw $t1, -4408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4412($fp)
	li $t0, 4
	lw $t1, -4412($fp)
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, -4400($fp)
	add $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, 0($t0)
	sw $t1, -4424($fp)
	lw $t0, -4396($fp)
	lw $t1, -4424($fp)
	add $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label884
label883:
	li $t0, 0
	sw $t0, -4432($fp)
	lw $t0, -1400($fp)
	sw $t0, -4436($fp)
	li $t0, 26255
	sw $t0, -4440($fp)
	lw $t0, -4436($fp)
	lw $t1, -4440($fp)
	sub $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t1, -4444($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label890
label890:
	li $t0, 57641
	sw $t0, -4448($fp)
	lw $t1, -4448($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label889
label888:
	li $t0, 1
	sw $t0, -4432($fp)
label889:
	li $t0, 0
	sw $t0, -4452($fp)
	li $t0, 48906
	sw $t0, -4456($fp)
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label894
	j label892
label894:
	lw $t0, -2108($fp)
	sw $t0, -4460($fp)
	lw $t1, -4460($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label892
label893:
	lw $t0, -584($fp)
	sw $t0, -4464($fp)
	lw $t1, -4464($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label892
label891:
	li $t0, 1
	sw $t0, -4452($fp)
label892:
	li $t0, 47988
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -4472($fp)
	lw $t0, -932($fp)
	sw $t0, -4476($fp)
	lw $t0, -2312($fp)
	sw $t0, -4480($fp)
	lw $t0, -4476($fp)
	lw $t1, -4480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4484($fp)
	li $t0, 51310
	sw $t0, -4488($fp)
	lw $t0, -4484($fp)
	lw $t1, -4488($fp)
	mul $t0, $t0, $t1
	sw $t0, -4492($fp)
	addi $sp, $sp, -4
	lw $t0, -4432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4496($fp)
	addi $sp, $sp, 20
	lw $t1, -4496($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
	li $t0, 0
	sw $t0, -4500($fp)
	jal f11
	sw $v0, -4504($fp)
	addi $sp, $sp, 4
	lw $t1, -4504($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label895
label895:
	li $t0, 1
	sw $t0, -4500($fp)
label896:
	li $t0, 0
	sw $t0, -4508($fp)
	lw $t0, -2360($fp)
	sw $t0, -4512($fp)
	lw $t1, -4512($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label898
label899:
	li $t0, 46857
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label898
label897:
	li $t0, 1
	sw $t0, -4508($fp)
label898:
	lw $t0, -596($fp)
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	sw $t0, -4524($fp)
	li $t0, 0
	sw $t0, -4528($fp)
	li $t0, 0
	sw $t0, -4532($fp)
	lw $t0, -1448($fp)
	sw $t0, -4536($fp)
	li $t0, 18459
	sw $t0, -4540($fp)
	lw $t1, -4536($fp)
	lw $t2, -4540($fp)
	ble $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -4532($fp)
label903:
	lw $t0, -704($fp)
	sw $t0, -4544($fp)
	lw $t1, -4532($fp)
	lw $t2, -4544($fp)
	beq $t1, $t2, label900
	j label901
label900:
	li $t0, 1
	sw $t0, -4528($fp)
label901:
	li $t0, 0
	sw $t0, -4548($fp)
	lw $t0, -2492($fp)
	sw $t0, -4552($fp)
	li $t0, 0
	lw $t1, -4552($fp)
	sub $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t1, -4556($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label906
label906:
	lw $t0, -3092($fp)
	sw $t0, -4560($fp)
	lw $t1, -4560($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label905
label904:
	li $t0, 1
	sw $t0, -4548($fp)
label905:
	addi $sp, $sp, -4
	lw $t0, -4508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4548($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4564($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -40
	sw $t0, -4568($fp)
	lw $t0, -3020($fp)
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
	li $t0, 0
	sw $t0, -4588($fp)
	li $t0, 25638
	sw $t0, -4592($fp)
	li $t0, 7684
	sw $t0, -4596($fp)
	lw $t0, -4592($fp)
	lw $t1, -4596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4600($fp)
	lw $t1, -4600($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label908
label909:
	lw $t0, -2360($fp)
	sw $t0, -4604($fp)
	lw $t1, -4604($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label908
label907:
	li $t0, 1
	sw $t0, -4588($fp)
label908:
	li $t0, 3851
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -4612($fp)
	addi $sp, $sp, -4
	lw $t0, -4564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4616($fp)
	addi $sp, $sp, 20
	lw $t0, -4500($fp)
	lw $t1, -4616($fp)
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $ra, -4($fp)
	lw $v0, -4620($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label887
label886:
	li $t0, 21264
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	sw $t0, -4632($fp)
	jal f9
	sw $v0, -4636($fp)
	addi $sp, $sp, 4
	lw $t1, -4636($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label911
label910:
label913:
	jal f11
	sw $v0, -4640($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -308
	sw $t0, -4644($fp)
	li $t0, 0
	sw $t0, -4648($fp)
	li $t0, 21964
	sw $t0, -4652($fp)
	lw $t0, -2336($fp)
	sw $t0, -4656($fp)
	lw $t1, -4652($fp)
	lw $t2, -4656($fp)
	blt $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -4648($fp)
label917:
	li $t0, 4
	lw $t1, -4648($fp)
	mul $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	lw $t1, -4644($fp)
	add $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	lw $t1, 0($t0)
	sw $t1, -4668($fp)
	lw $t1, -4640($fp)
	lw $t2, -4668($fp)
	blt $t1, $t2, label914
	j label915
label914:
label918:
	addi $t0, $fp, -40
	sw $t0, -4672($fp)
	li $t0, 7
	sw $t0, -4676($fp)
	li $t0, 4
	lw $t1, -4676($fp)
	mul $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	lw $t1, -4672($fp)
	add $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	lw $t1, 0($t0)
	sw $t1, -4688($fp)
	li $t0, 26116
	sw $t0, -4692($fp)
	lw $t0, -4688($fp)
	lw $t1, -4692($fp)
	add $t0, $t0, $t1
	sw $t0, -4696($fp)
	li $t0, 22215
	sw $t0, -4700($fp)
	li $t0, 49254
	sw $t0, -4704($fp)
	lw $t0, -4700($fp)
	lw $t1, -4704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4708($fp)
	lw $t1, -4696($fp)
	lw $t2, -4708($fp)
	bgt $t1, $t2, label919
	j label920
label919:
	li $t0, 0
	sw $t0, -4712($fp)
	addi $t0, $fp, -200
	sw $t0, -4716($fp)
	li $t0, 0
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
	lw $t1, -4732($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label921
label921:
	li $t0, 1
	sw $t0, -4712($fp)
label922:
	lw $t0, -4712($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -4736($fp)
	j label918
label920:
	j label913
label915:
label911:
	li $t0, 0
	sw $t0, -4740($fp)
	li $t0, 0
	sw $t0, -4744($fp)
	li $t0, 12577
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label927
	j label926
label926:
	li $t0, 1
	sw $t0, -4744($fp)
label927:
	addi $t0, $fp, -328
	sw $t0, -4752($fp)
	lw $t0, -4628($fp)
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
	lw $t0, -4744($fp)
	lw $t1, -4768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label925
label925:
	addi $t0, $fp, -240
	sw $t0, -4776($fp)
	li $t0, 0
	sw $t0, -4780($fp)
	lw $t0, -1424($fp)
	sw $t0, -4784($fp)
	li $t0, 40980
	sw $t0, -4788($fp)
	lw $t1, -4784($fp)
	lw $t2, -4788($fp)
	bgt $t1, $t2, label928
	j label929
label928:
	li $t0, 1
	sw $t0, -4780($fp)
label929:
	li $t0, 4
	lw $t1, -4780($fp)
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	lw $t1, 0($t0)
	sw $t1, -4800($fp)
	lw $t1, -4800($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label924
label923:
	li $t0, 1
	sw $t0, -4740($fp)
label924:
	lw $t0, -4628($fp)
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4808($fp)
	li $t0, 3584
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label931
	j label930
label930:
	li $t0, 1
	sw $t0, -4808($fp)
label931:
	addi $t0, $fp, -40
	sw $t0, -4816($fp)
	lw $t0, -1460($fp)
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
	lw $t0, -4808($fp)
	lw $t1, -4832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4836($fp)
	li $t0, 8025
	sw $t0, -4840($fp)
	lw $t0, -4836($fp)
	lw $t1, -4840($fp)
	sub $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $ra, -4($fp)
	lw $v0, -4844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -4628($fp)
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 51831
	sw $t0, -4852($fp)
	lw $ra, -4($fp)
	lw $v0, -4852($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4856($fp)
	lw $t0, -2876($fp)
	sw $t0, -4860($fp)
	li $t0, 0
	sw $t0, -4864($fp)
	li $t0, 3113
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label934
label934:
	li $t0, 1
	sw $t0, -4864($fp)
label935:
	li $t0, 0
	sw $t0, -4872($fp)
	li $t0, 21647
	sw $t0, -4876($fp)
	li $t0, 19529
	sw $t0, -4880($fp)
	lw $t1, -4876($fp)
	lw $t2, -4880($fp)
	ble $t1, $t2, label936
	j label937
label936:
	li $t0, 1
	sw $t0, -4872($fp)
label937:
	addi $t0, $fp, -200
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
	li $t0, 49350
	sw $t0, -4904($fp)
	lw $t0, -4900($fp)
	lw $t1, -4904($fp)
	sub $t0, $t0, $t1
	sw $t0, -4908($fp)
	addi $sp, $sp, -4
	lw $t0, -4864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4912($fp)
	addi $sp, $sp, 16
	lw $t0, -4860($fp)
	lw $t1, -4912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4916($fp)
	li $t0, 0
	lw $t1, -4916($fp)
	sub $t0, $t0, $t1
	sw $t0, -4920($fp)
	li $t0, 0
	lw $t1, -4920($fp)
	sub $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t1, -4924($fp)
	li $t2, 0
	bne $t1, $t2, label933
	j label932
label932:
	li $t0, 1
	sw $t0, -4856($fp)
label933:
	li $t0, 0
	lw $t1, -4856($fp)
	sub $t0, $t0, $t1
	sw $t0, -4928($fp)
label887:
	j label882
label884:
	j label873
label872:
	addi $t0, $fp, -40
	sw $t0, -4932($fp)
	li $t0, 0
	sw $t0, -4936($fp)
	addi $t0, $fp, -40
	sw $t0, -4940($fp)
	li $t0, 5
	sw $t0, -4944($fp)
	li $t0, 4
	lw $t1, -4944($fp)
	mul $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, 0($t0)
	sw $t1, -4956($fp)
	li $t0, 0
	sw $t0, -4960($fp)
	li $t0, 52019
	sw $t0, -4964($fp)
	li $t0, 33677
	sw $t0, -4968($fp)
	lw $t0, -4964($fp)
	lw $t1, -4968($fp)
	mul $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label946
	j label945
label946:
	li $t0, 59622
	sw $t0, -4976($fp)
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label945
label944:
	li $t0, 1
	sw $t0, -4960($fp)
label945:
	li $t0, 0
	sw $t0, -4980($fp)
	lw $t0, -2372($fp)
	sw $t0, -4984($fp)
	lw $t0, -2312($fp)
	sw $t0, -4988($fp)
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -2324($fp)
	sw $t0, -4996($fp)
	lw $t1, -4992($fp)
	lw $t2, -4996($fp)
	bgt $t1, $t2, label947
	j label948
label947:
	li $t0, 1
	sw $t0, -4980($fp)
label948:
	li $t0, 0
	sw $t0, -5000($fp)
	addi $t0, $fp, -260
	sw $t0, -5004($fp)
	li $t0, 1
	sw $t0, -5008($fp)
	li $t0, 4
	lw $t1, -5008($fp)
	mul $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	lw $t1, -5004($fp)
	add $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	lw $t1, 0($t0)
	sw $t1, -5020($fp)
	lw $t1, -5020($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label949
label949:
	li $t0, 1
	sw $t0, -5000($fp)
label950:
	addi $sp, $sp, -4
	lw $t0, -4956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5000($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5024($fp)
	addi $sp, $sp, 20
	lw $t1, -5024($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label942
label943:
	li $t0, 1770
	sw $t0, -5028($fp)
	lw $t1, -5028($fp)
	li $t2, 0
	bne $t1, $t2, label941
	j label942
label941:
	li $t0, 1
	sw $t0, -4936($fp)
label942:
	li $t0, 4
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	lw $t1, -4932($fp)
	add $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	lw $t1, 0($t0)
	sw $t1, -5040($fp)
	li $t0, 40637
	sw $t0, -5044($fp)
	li $t0, 8793
	sw $t0, -5048($fp)
	lw $t0, -2144($fp)
	sw $t0, -5052($fp)
	lw $t0, -5048($fp)
	lw $t1, -5052($fp)
	sub $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -2132($fp)
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -5064($fp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5068($fp)
	addi $sp, $sp, 16
	lw $t1, -5040($fp)
	lw $t2, -5068($fp)
	ble $t1, $t2, label938
	j label939
label938:
	addi $t0, $fp, -244
	sw $t0, -5072($fp)
	jal f9
	sw $v0, -5076($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -360
	sw $t0, -5080($fp)
	li $t0, 3
	sw $t0, -5084($fp)
	li $t0, 4
	lw $t1, -5084($fp)
	mul $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	lw $t1, -5080($fp)
	add $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	lw $t1, 0($t0)
	sw $t1, -5096($fp)
	lw $t0, -5076($fp)
	lw $t1, -5096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5100($fp)
	li $t0, 4
	lw $t1, -5100($fp)
	mul $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	lw $t1, -5072($fp)
	add $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	lw $t1, 0($t0)
	sw $t1, -5112($fp)
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label951
	j label952
label951:
	li $t0, 0
	sw $t0, -5116($fp)
	li $t0, 57719
	sw $t0, -5120($fp)
	li $t0, 0
	lw $t1, -5120($fp)
	sub $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -1160($fp)
	sw $t0, -5128($fp)
	li $t0, 30017
	sw $t0, -5132($fp)
	lw $t0, -680($fp)
	sw $t0, -5136($fp)
	lw $t0, -5132($fp)
	lw $t1, -5136($fp)
	sub $t0, $t0, $t1
	sw $t0, -5140($fp)
	li $t0, 33065
	sw $t0, -5144($fp)
	lw $t0, -5140($fp)
	lw $t1, -5144($fp)
	add $t0, $t0, $t1
	sw $t0, -5148($fp)
	li $t0, 0
	sw $t0, -5152($fp)
	lw $t0, -620($fp)
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label962
label962:
	lw $t0, -632($fp)
	sw $t0, -5160($fp)
	lw $t1, -5160($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label961
label961:
	li $t0, 31603
	sw $t0, -5164($fp)
	lw $t1, -5164($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label960
label959:
	li $t0, 1
	sw $t0, -5152($fp)
label960:
	addi $sp, $sp, -4
	lw $t0, -5128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5152($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5168($fp)
	addi $sp, $sp, 16
	lw $t0, -1148($fp)
	sw $t0, -5172($fp)
	lw $t0, -5168($fp)
	lw $t1, -5172($fp)
	sub $t0, $t0, $t1
	sw $t0, -5176($fp)
	addi $sp, $sp, -4
	lw $t0, -5124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5176($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5180($fp)
	addi $sp, $sp, 12
	lw $t0, -644($fp)
	sw $t0, -5184($fp)
	lw $t0, -2456($fp)
	sw $t0, -5188($fp)
	lw $t0, -5184($fp)
	lw $t1, -5188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5192($fp)
	li $t0, 52232
	sw $t0, -5196($fp)
	lw $t0, -5192($fp)
	lw $t1, -5196($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t1, -5180($fp)
	lw $t2, -5200($fp)
	bge $t1, $t2, label957
	j label958
label957:
	li $t0, 1
	sw $t0, -5116($fp)
label958:
	li $t0, 0
	sw $t0, -5204($fp)
	lw $t0, -1160($fp)
	sw $t0, -5208($fp)
	lw $t0, -1172($fp)
	sw $t0, -5212($fp)
	lw $t0, -5208($fp)
	lw $t1, -5212($fp)
	sub $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t1, -5216($fp)
	li $t2, 0
	bne $t1, $t2, label965
	j label964
label965:
	li $t0, 37386
	sw $t0, -5220($fp)
	lw $t1, -5220($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label964
label963:
	li $t0, 1
	sw $t0, -5204($fp)
label964:
	lw $t0, -1148($fp)
	sw $t0, -5224($fp)
	li $t0, 0
	sw $t0, -5228($fp)
	lw $t0, -3020($fp)
	sw $t0, -5232($fp)
	li $t0, 11010
	sw $t0, -5236($fp)
	lw $t0, -5232($fp)
	lw $t1, -5236($fp)
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	li $t0, 49015
	sw $t0, -5244($fp)
	lw $t1, -5240($fp)
	lw $t2, -5244($fp)
	blt $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -5228($fp)
label967:
	li $t0, 0
	sw $t0, -5248($fp)
	li $t0, 29361
	sw $t0, -5252($fp)
	lw $t0, 4($fp)
	sw $t0, -5256($fp)
	lw $t1, -5252($fp)
	lw $t2, -5256($fp)
	bne $t1, $t2, label968
	j label970
label970:
	lw $t0, -1160($fp)
	sw $t0, -5260($fp)
	lw $t1, -5260($fp)
	li $t2, 0
	bne $t1, $t2, label968
	j label969
label968:
	li $t0, 1
	sw $t0, -5248($fp)
label969:
	li $t0, 35566
	sw $t0, -5264($fp)
	li $t0, 45430
	sw $t0, -5268($fp)
	lw $t0, -5264($fp)
	lw $t1, -5268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5272($fp)
	li $t0, 0
	lw $t1, -5272($fp)
	sub $t0, $t0, $t1
	sw $t0, -5276($fp)
	li $t0, 0
	sw $t0, -5280($fp)
	lw $t0, -2456($fp)
	sw $t0, -5284($fp)
	lw $t1, -5284($fp)
	li $t2, 0
	bne $t1, $t2, label972
	j label971
label971:
	li $t0, 1
	sw $t0, -5280($fp)
label972:
	li $t0, 16783
	sw $t0, -5288($fp)
	lw $t0, -5280($fp)
	lw $t1, -5288($fp)
	mul $t0, $t0, $t1
	sw $t0, -5292($fp)
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5296($fp)
	addi $sp, $sp, 16
	lw $t0, -3056($fp)
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -5304($fp)
	addi $sp, $sp, -4
	lw $t0, -5224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5304($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5308($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -5204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5308($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -5312($fp)
	addi $sp, $sp, 12
	lw $t1, -5116($fp)
	lw $t2, -5312($fp)
	ble $t1, $t2, label954
	j label955
label954:
label973:
	li $t0, 0
	sw $t0, -5316($fp)
	li $t0, 62842
	sw $t0, -5320($fp)
	lw $t1, -5320($fp)
	li $t2, 0
	bne $t1, $t2, label977
	j label976
label976:
	li $t0, 1
	sw $t0, -5316($fp)
label977:
	li $t0, 0
	lw $t1, -5316($fp)
	sub $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t1, -5324($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label975
label974:
	li $t0, 0
	sw $t0, -5328($fp)
	addi $t0, $fp, -328
	sw $t0, -5332($fp)
	li $t0, 2
	sw $t0, -5336($fp)
	li $t0, 4
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	lw $t1, 0($t0)
	sw $t1, -5348($fp)
	lw $t1, -5348($fp)
	li $t2, 0
	bne $t1, $t2, label983
	j label982
label982:
	li $t0, 1
	sw $t0, -5328($fp)
label983:
	li $t0, 0
	lw $t1, -5328($fp)
	sub $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -3008($fp)
	sw $t0, -5356($fp)
	lw $t1, -5352($fp)
	lw $t2, -5356($fp)
	beq $t1, $t2, label981
	j label979
label981:
	li $t0, 0
	sw $t0, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	li $t0, 46656
	sw $t0, -5368($fp)
	li $t0, 38485
	sw $t0, -5372($fp)
	lw $t1, -5368($fp)
	lw $t2, -5372($fp)
	blt $t1, $t2, label986
	j label987
label986:
	li $t0, 1
	sw $t0, -5364($fp)
label987:
	lw $t0, -3020($fp)
	sw $t0, -5376($fp)
	lw $t1, -5364($fp)
	lw $t2, -5376($fp)
	bge $t1, $t2, label984
	j label985
label984:
	li $t0, 1
	sw $t0, -5360($fp)
label985:
	li $t0, 0
	sw $t0, -5380($fp)
	li $t0, 26047
	sw $t0, -5384($fp)
	li $t0, 49770
	sw $t0, -5388($fp)
	lw $t1, -5384($fp)
	lw $t2, -5388($fp)
	bge $t1, $t2, label988
	j label989
label988:
	li $t0, 1
	sw $t0, -5380($fp)
label989:
	lw $t1, -5360($fp)
	lw $t2, -5380($fp)
	beq $t1, $t2, label978
	j label979
label978:
	li $t0, 45907
	sw $t0, -5392($fp)
	addi $t0, $fp, -332
	sw $t0, -5396($fp)
	li $t0, 28028
	sw $t0, -5400($fp)
	lw $t0, -1436($fp)
	sw $t0, -5404($fp)
	lw $t0, -5400($fp)
	lw $t1, -5404($fp)
	add $t0, $t0, $t1
	sw $t0, -5408($fp)
	li $t0, 4
	lw $t1, -5408($fp)
	mul $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, -5396($fp)
	add $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, 0($t0)
	sw $t1, -5420($fp)
	lw $t0, -5392($fp)
	lw $t1, -5420($fp)
	mul $t0, $t0, $t1
	sw $t0, -5424($fp)
	j label980
label979:
	li $t0, 0
	sw $t0, -5428($fp)
	li $t0, 22114
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -5436($fp)
	li $t0, 0
	sw $t0, -5440($fp)
	li $t0, 36253
	sw $t0, -5444($fp)
	li $t0, 14048
	sw $t0, -5448($fp)
	lw $t0, -5444($fp)
	lw $t1, -5448($fp)
	mul $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -3056($fp)
	sw $t0, -5456($fp)
	lw $t1, -5452($fp)
	lw $t2, -5456($fp)
	beq $t1, $t2, label992
	j label993
label992:
	li $t0, 1
	sw $t0, -5440($fp)
label993:
	addi $sp, $sp, -4
	lw $t0, -5436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5460($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5464($fp)
	li $t0, 26588
	sw $t0, -5468($fp)
	lw $t0, -608($fp)
	sw $t0, -5472($fp)
	lw $t0, -5468($fp)
	lw $t1, -5472($fp)
	mul $t0, $t0, $t1
	sw $t0, -5476($fp)
	li $t0, 7828
	sw $t0, -5480($fp)
	lw $t0, -5476($fp)
	lw $t1, -5480($fp)
	mul $t0, $t0, $t1
	sw $t0, -5484($fp)
	li $t0, 0
	sw $t0, -5488($fp)
	lw $t0, -2324($fp)
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label997
	j label996
label996:
	li $t0, 1
	sw $t0, -5488($fp)
label997:
	lw $t1, -5484($fp)
	lw $t2, -5488($fp)
	bgt $t1, $t2, label994
	j label995
label994:
	li $t0, 1
	sw $t0, -5464($fp)
label995:
	lw $t1, -5460($fp)
	lw $t2, -5464($fp)
	beq $t1, $t2, label990
	j label991
label990:
	li $t0, 1
	sw $t0, -5428($fp)
label991:
	li $t0, 0
	sw $t0, -5496($fp)
	li $t0, 0
	sw $t0, -5500($fp)
	lw $t0, -2180($fp)
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1001
label1001:
	li $t0, 1
	sw $t0, -5500($fp)
label1002:
	li $t0, 0
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t1, -5508($fp)
	li $t2, 0
	bne $t1, $t2, label1000
	j label999
label1000:
	li $t0, 23884
	sw $t0, -5512($fp)
	lw $t1, -5512($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label999
label998:
	li $t0, 1
	sw $t0, -5496($fp)
label999:
label980:
	li $t0, 35381
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	sw $t0, -5524($fp)
	li $t0, 48465
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	sw $t0, -5536($fp)
	li $t0, 46919
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	sw $t0, -5548($fp)
	li $t0, 0
	sw $t0, -5552($fp)
	lw $t0, -3020($fp)
	sw $t0, -5556($fp)
	lw $t0, -2492($fp)
	sw $t0, -5560($fp)
	lw $t0, -5556($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5564($fp)
	li $t0, 33668
	sw $t0, -5568($fp)
	lw $t1, -5564($fp)
	lw $t2, -5568($fp)
	bgt $t1, $t2, label1003
	j label1004
label1003:
	li $t0, 1
	sw $t0, -5552($fp)
label1004:
	li $t0, 0
	sw $t0, -5572($fp)
	lw $t0, -5544($fp)
	sw $t0, -5576($fp)
	li $t0, 14533
	sw $t0, -5580($fp)
	lw $t0, -5576($fp)
	lw $t1, -5580($fp)
	mul $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $t1, -5584($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1006
label1007:
	li $t0, 11401
	sw $t0, -5588($fp)
	lw $t1, -5588($fp)
	li $t2, 0
	bne $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -5572($fp)
label1006:
	lw $t0, -2180($fp)
	sw $t0, -5592($fp)
	lw $t0, -5532($fp)
	sw $t0, -5596($fp)
	lw $t0, -5592($fp)
	lw $t1, -5596($fp)
	mul $t0, $t0, $t1
	sw $t0, -5600($fp)
	li $t0, 0
	sw $t0, -5604($fp)
	addi $t0, $fp, -40
	sw $t0, -5608($fp)
	lw $t0, -3008($fp)
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
	li $t0, 603
	sw $t0, -5628($fp)
	lw $t1, -5624($fp)
	lw $t2, -5628($fp)
	bgt $t1, $t2, label1008
	j label1009
label1008:
	li $t0, 1
	sw $t0, -5604($fp)
label1009:
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5604($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5632($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5632($fp)
	sub $t0, $t0, $t1
	sw $t0, -5636($fp)
	li $t0, 0
	sw $t0, -5640($fp)
	li $t0, 0
	sw $t0, -5644($fp)
	li $t0, 0
	sw $t0, -5648($fp)
	li $t0, 6716
	sw $t0, -5652($fp)
	lw $t0, -1160($fp)
	sw $t0, -5656($fp)
	lw $t1, -5652($fp)
	lw $t2, -5656($fp)
	blt $t1, $t2, label1015
	j label1016
label1015:
	li $t0, 1
	sw $t0, -5648($fp)
label1016:
	li $t0, 63633
	sw $t0, -5660($fp)
	lw $t1, -5648($fp)
	lw $t2, -5660($fp)
	blt $t1, $t2, label1013
	j label1014
label1013:
	li $t0, 1
	sw $t0, -5644($fp)
label1014:
	li $t0, 0
	sw $t0, -5664($fp)
	lw $t0, -2504($fp)
	sw $t0, -5668($fp)
	lw $t1, -5668($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1017
label1019:
	lw $t0, -1460($fp)
	sw $t0, -5672($fp)
	lw $t1, -5672($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1018
label1017:
	li $t0, 1
	sw $t0, -5664($fp)
label1018:
	addi $sp, $sp, -4
	lw $t0, -5644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5664($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5676($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -104
	sw $t0, -5680($fp)
	li $t0, 0
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
	lw $t0, -5676($fp)
	lw $t1, -5696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5700($fp)
	lw $t1, -5700($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1012
label1012:
	lw $t0, -1448($fp)
	sw $t0, -5704($fp)
	addi $t0, $fp, -40
	sw $t0, -5708($fp)
	lw $t0, -5520($fp)
	sw $t0, -5712($fp)
	li $t0, 4
	lw $t1, -5712($fp)
	mul $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, -5708($fp)
	add $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, 0($t0)
	sw $t1, -5724($fp)
	lw $t1, -5704($fp)
	lw $t2, -5724($fp)
	ble $t1, $t2, label1010
	j label1011
label1010:
	li $t0, 1
	sw $t0, -5640($fp)
label1011:
	li $t0, 43528
	sw $t0, -5728($fp)
	li $t0, 0
	sw $t0, -5732($fp)
	li $t0, 43844
	sw $t0, -5736($fp)
	li $t0, 51663
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -5744($fp)
	li $t0, 0
	sw $t0, -5748($fp)
	li $t0, 27007
	sw $t0, -5752($fp)
	lw $t1, -5752($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1025
label1025:
	lw $t0, -2120($fp)
	sw $t0, -5756($fp)
	lw $t1, -5756($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 1
	sw $t0, -5748($fp)
label1024:
	li $t0, 0
	sw $t0, -5760($fp)
	li $t0, 0
	sw $t0, -5764($fp)
	lw $t0, -668($fp)
	sw $t0, -5768($fp)
	li $t0, 53293
	sw $t0, -5772($fp)
	lw $t0, -5768($fp)
	lw $t1, -5772($fp)
	add $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -2108($fp)
	sw $t0, -5780($fp)
	lw $t1, -5776($fp)
	lw $t2, -5780($fp)
	beq $t1, $t2, label1028
	j label1029
label1028:
	li $t0, 1
	sw $t0, -5764($fp)
label1029:
	lw $t0, -1148($fp)
	sw $t0, -5784($fp)
	li $t0, 14276
	sw $t0, -5788($fp)
	lw $t0, -5784($fp)
	lw $t1, -5788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5792($fp)
	li $t0, 0
	lw $t1, -5792($fp)
	sub $t0, $t0, $t1
	sw $t0, -5796($fp)
	addi $sp, $sp, -4
	lw $t0, -5764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5796($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -5800($fp)
	addi $sp, $sp, 12
	lw $t0, -704($fp)
	sw $t0, -5804($fp)
	lw $t1, -5800($fp)
	lw $t2, -5804($fp)
	bne $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 1
	sw $t0, -5760($fp)
label1027:
	addi $sp, $sp, -4
	lw $t0, -5748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5760($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5808($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5812($fp)
	addi $sp, $sp, 12
	li $t0, 50599
	sw $t0, -5816($fp)
	lw $t0, -5812($fp)
	lw $t1, -5816($fp)
	sub $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -1136($fp)
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	sw $t0, -5828($fp)
	addi $sp, $sp, -4
	lw $t0, -5736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5832($fp)
	addi $sp, $sp, 16
	lw $t1, -5832($fp)
	li $t2, 0
	bne $t1, $t2, label1020
	j label1022
label1022:
	lw $t0, -3092($fp)
	sw $t0, -5836($fp)
	lw $t1, -5836($fp)
	li $t2, 0
	bne $t1, $t2, label1021
	j label1020
label1020:
	li $t0, 1
	sw $t0, -5732($fp)
label1021:
	j label973
label975:
	j label956
label955:
	addi $t0, $fp, -308
	sw $t0, -5840($fp)
	li $t0, 58181
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	lw $t0, -692($fp)
	sw $t0, -5856($fp)
	lw $t1, -5856($fp)
	li $t2, 0
	bne $t1, $t2, label1030
	j label1032
label1032:
	lw $t0, -704($fp)
	sw $t0, -5860($fp)
	lw $t1, -5860($fp)
	li $t2, 0
	bne $t1, $t2, label1030
	j label1031
label1030:
	li $t0, 1
	sw $t0, -5852($fp)
label1031:
	addi $sp, $sp, -4
	lw $t0, -5848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -5864($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -5864($fp)
	mul $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	lw $t1, -5840($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, 0($t0)
	sw $t1, -5876($fp)
label956:
	j label953
label952:
label1033:
	jal f11
	sw $v0, -5880($fp)
	addi $sp, $sp, 4
	lw $t1, -5880($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1035
label1034:
	li $t0, 0
	sw $t0, -5884($fp)
	lw $t0, -1448($fp)
	sw $t0, -5888($fp)
	lw $t1, -5888($fp)
	li $t2, 0
	bne $t1, $t2, label1036
	j label1038
label1038:
	lw $t0, -1460($fp)
	sw $t0, -5892($fp)
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label1039
	j label1037
label1039:
	li $t0, 31719
	sw $t0, -5896($fp)
	lw $t1, -5896($fp)
	li $t2, 0
	bne $t1, $t2, label1036
	j label1037
label1036:
	li $t0, 1
	sw $t0, -5884($fp)
label1037:
	lw $t0, -5884($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -5900($fp)
	lw $ra, -4($fp)
	lw $v0, -5900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1033
label1035:
label953:
	j label940
label939:
	li $t0, 0
	sw $t0, -5904($fp)
	lw $t0, -2108($fp)
	sw $t0, -5908($fp)
	lw $t0, -908($fp)
	sw $t0, -5912($fp)
	li $t0, 0
	lw $t1, -5912($fp)
	sub $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5908($fp)
	lw $t1, -5916($fp)
	add $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t0, -3020($fp)
	sw $t0, -5924($fp)
	addi $t0, $fp, -196
	sw $t0, -5928($fp)
	lw $t0, -2492($fp)
	sw $t0, -5932($fp)
	li $t0, 4
	lw $t1, -5932($fp)
	mul $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	lw $t1, -5928($fp)
	add $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	lw $t1, 0($t0)
	sw $t1, -5944($fp)
	lw $t0, -5924($fp)
	lw $t1, -5944($fp)
	mul $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t1, -5920($fp)
	lw $t2, -5948($fp)
	bne $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -5904($fp)
label1041:
label940:
label873:
	j label862
label861:
label1042:
	li $t0, 0
	sw $t0, -5952($fp)
	addi $t0, $fp, -72
	sw $t0, -5956($fp)
	li $t0, 0
	sw $t0, -5960($fp)
	li $t0, 4
	lw $t1, -5960($fp)
	mul $t0, $t0, $t1
	sw $t0, -5964($fp)
	lw $t0, -5964($fp)
	lw $t1, -5956($fp)
	add $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, 0($t0)
	sw $t1, -5972($fp)
	lw $t0, -2456($fp)
	sw $t0, -5976($fp)
	lw $t1, -5972($fp)
	lw $t2, -5976($fp)
	bne $t1, $t2, label1045
	j label1046
label1045:
	li $t0, 1
	sw $t0, -5952($fp)
label1046:
	li $t0, 0
	sw $t0, -5980($fp)
	li $t0, 0
	sw $t0, -5984($fp)
	li $t0, 18692
	sw $t0, -5988($fp)
	li $t0, 15953
	sw $t0, -5992($fp)
	lw $t1, -5988($fp)
	lw $t2, -5992($fp)
	blt $t1, $t2, label1049
	j label1050
label1049:
	li $t0, 1
	sw $t0, -5984($fp)
label1050:
	lw $t0, -2456($fp)
	sw $t0, -5996($fp)
	lw $t1, -5984($fp)
	lw $t2, -5996($fp)
	beq $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -5980($fp)
label1048:
	li $t0, 0
	sw $t0, -6000($fp)
	jal f11
	sw $v0, -6004($fp)
	addi $sp, $sp, 4
	lw $t1, -6004($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1052
label1053:
	li $t0, 16793
	sw $t0, -6008($fp)
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label1051
	j label1052
label1051:
	li $t0, 1
	sw $t0, -6000($fp)
label1052:
	addi $sp, $sp, -4
	lw $t0, -5952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6012($fp)
	addi $sp, $sp, 16
	lw $t0, -6012($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	sw $t0, -6016($fp)
	lw $t1, -6016($fp)
	li $t2, 0
	bne $t1, $t2, label1043
	j label1044
label1043:
	lw $t0, -2552($fp)
	sw $t0, -6020($fp)
	lw $t0, -908($fp)
	sw $t0, -6024($fp)
	lw $t0, -6020($fp)
	lw $t1, -6024($fp)
	mul $t0, $t0, $t1
	sw $t0, -6028($fp)
	li $t0, 0
	lw $t1, -6028($fp)
	sub $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -6036($fp)
	j label1042
label1044:
label862:
	addi $t0, $fp, -40
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
	li $t0, 19041
	sw $t0, -6060($fp)
	lw $t0, -6056($fp)
	lw $t1, -6060($fp)
	mul $t0, $t0, $t1
	sw $t0, -6064($fp)
	lw $t0, -2408($fp)
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -6072($fp)
	li $t0, 0
	sw $t0, -6076($fp)
	li $t0, 52207
	sw $t0, -6080($fp)
	li $t0, 11213
	sw $t0, -6084($fp)
	lw $t0, -6080($fp)
	lw $t1, -6084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6088($fp)
	lw $t1, -6088($fp)
	li $t2, 0
	bne $t1, $t2, label1059
	j label1058
label1059:
	lw $t0, -704($fp)
	sw $t0, -6092($fp)
	lw $t1, -6092($fp)
	li $t2, 0
	bne $t1, $t2, label1057
	j label1058
label1057:
	li $t0, 1
	sw $t0, -6076($fp)
label1058:
	addi $sp, $sp, -4
	lw $t0, -6064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6096($fp)
	addi $sp, $sp, 16
	lw $t1, -6096($fp)
	li $t2, 0
	bne $t1, $t2, label1054
	j label1055
label1054:
label1060:
	addi $t0, $fp, -336
	sw $t0, -6100($fp)
	li $t0, 0
	sw $t0, -6104($fp)
	lw $t0, -2420($fp)
	sw $t0, -6108($fp)
	lw $t0, -2432($fp)
	sw $t0, -6112($fp)
	lw $t1, -6108($fp)
	lw $t2, -6112($fp)
	bgt $t1, $t2, label1063
	j label1065
label1065:
	lw $t0, -2420($fp)
	sw $t0, -6116($fp)
	lw $t1, -6116($fp)
	li $t2, 0
	bne $t1, $t2, label1063
	j label1064
label1063:
	li $t0, 1
	sw $t0, -6104($fp)
label1064:
	li $t0, 4
	lw $t1, -6104($fp)
	mul $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	lw $t1, -6100($fp)
	add $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	lw $t1, 0($t0)
	sw $t1, -6128($fp)
	lw $t0, 4($fp)
	sw $t0, -6132($fp)
	li $t0, 0
	lw $t1, -6132($fp)
	sub $t0, $t0, $t1
	sw $t0, -6136($fp)
	li $t0, 48640
	sw $t0, -6140($fp)
	lw $t0, -6136($fp)
	lw $t1, -6140($fp)
	sub $t0, $t0, $t1
	sw $t0, -6144($fp)
	li $t0, 27182
	sw $t0, -6148($fp)
	li $t0, 0
	lw $t1, -6148($fp)
	sub $t0, $t0, $t1
	sw $t0, -6152($fp)
	li $t0, 0
	lw $t1, -6152($fp)
	sub $t0, $t0, $t1
	sw $t0, -6156($fp)
	addi $sp, $sp, -4
	lw $t0, -6144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6156($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6160($fp)
	addi $sp, $sp, 12
	lw $t0, -6128($fp)
	lw $t1, -6160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label1061
	j label1062
label1061:
	lw $t0, -644($fp)
	sw $t0, -6168($fp)
	j label1060
label1062:
	j label1056
label1055:
	li $t0, 1971
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	sw $t0, -6252($fp)
	li $t0, 8566
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	sw $t0, -6264($fp)
	li $t0, 49243
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	sw $t0, -6272($fp)
	lw $t0, -6272($fp)
	sw $t0, -6276($fp)
	li $t0, 16504
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	sw $t0, -6288($fp)
	li $t0, 19967
	sw $t0, -6292($fp)
	addi $t0, $fp, -6184
	sw $t0, -6296($fp)
	li $t0, 0
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6296($fp)
	lw $t1, -6304($fp)
	add $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t0, -6292($fp)
	lw $t1, -6308($fp)
	sw $t0, 0($t1)
	lw $t0, -6308($fp)
	lw $t1, 0($t0)
	sw $t1, -6312($fp)
	li $t0, 17375
	sw $t0, -6316($fp)
	addi $t0, $fp, -6184
	sw $t0, -6320($fp)
	li $t0, 1
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -6320($fp)
	lw $t1, -6328($fp)
	add $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t0, -6316($fp)
	lw $t1, -6332($fp)
	sw $t0, 0($t1)
	lw $t0, -6332($fp)
	lw $t1, 0($t0)
	sw $t1, -6336($fp)
	li $t0, 23220
	sw $t0, -6340($fp)
	addi $t0, $fp, -6184
	sw $t0, -6344($fp)
	li $t0, 2
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6344($fp)
	lw $t1, -6352($fp)
	add $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6340($fp)
	lw $t1, -6356($fp)
	sw $t0, 0($t1)
	lw $t0, -6356($fp)
	lw $t1, 0($t0)
	sw $t1, -6360($fp)
	li $t0, 18064
	sw $t0, -6364($fp)
	addi $t0, $fp, -6184
	sw $t0, -6368($fp)
	li $t0, 3
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6368($fp)
	lw $t1, -6376($fp)
	add $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6364($fp)
	lw $t1, -6380($fp)
	sw $t0, 0($t1)
	lw $t0, -6380($fp)
	lw $t1, 0($t0)
	sw $t1, -6384($fp)
	li $t0, 2291
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	sw $t0, -6396($fp)
	li $t0, 65503
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	sw $t0, -6408($fp)
	li $t0, 61592
	sw $t0, -6412($fp)
	addi $t0, $fp, -6224
	sw $t0, -6416($fp)
	li $t0, 0
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6416($fp)
	lw $t1, -6424($fp)
	add $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t0, -6412($fp)
	lw $t1, -6428($fp)
	sw $t0, 0($t1)
	lw $t0, -6428($fp)
	lw $t1, 0($t0)
	sw $t1, -6432($fp)
	li $t0, 16567
	sw $t0, -6436($fp)
	addi $t0, $fp, -6224
	sw $t0, -6440($fp)
	li $t0, 1
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -6440($fp)
	lw $t1, -6448($fp)
	add $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6436($fp)
	lw $t1, -6452($fp)
	sw $t0, 0($t1)
	lw $t0, -6452($fp)
	lw $t1, 0($t0)
	sw $t1, -6456($fp)
	li $t0, 53260
	sw $t0, -6460($fp)
	addi $t0, $fp, -6224
	sw $t0, -6464($fp)
	li $t0, 2
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $t0, -6464($fp)
	lw $t1, -6472($fp)
	add $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6460($fp)
	lw $t1, -6476($fp)
	sw $t0, 0($t1)
	lw $t0, -6476($fp)
	lw $t1, 0($t0)
	sw $t1, -6480($fp)
	li $t0, 23063
	sw $t0, -6484($fp)
	addi $t0, $fp, -6224
	sw $t0, -6488($fp)
	li $t0, 3
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -6488($fp)
	lw $t1, -6496($fp)
	add $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6484($fp)
	lw $t1, -6500($fp)
	sw $t0, 0($t1)
	lw $t0, -6500($fp)
	lw $t1, 0($t0)
	sw $t1, -6504($fp)
	li $t0, 2694
	sw $t0, -6508($fp)
	addi $t0, $fp, -6224
	sw $t0, -6512($fp)
	li $t0, 4
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6512($fp)
	lw $t1, -6520($fp)
	add $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t0, -6508($fp)
	lw $t1, -6524($fp)
	sw $t0, 0($t1)
	lw $t0, -6524($fp)
	lw $t1, 0($t0)
	sw $t1, -6528($fp)
	li $t0, 38323
	sw $t0, -6532($fp)
	addi $t0, $fp, -6224
	sw $t0, -6536($fp)
	li $t0, 5
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6536($fp)
	lw $t1, -6544($fp)
	add $t0, $t0, $t1
	sw $t0, -6548($fp)
	lw $t0, -6532($fp)
	lw $t1, -6548($fp)
	sw $t0, 0($t1)
	lw $t0, -6548($fp)
	lw $t1, 0($t0)
	sw $t1, -6552($fp)
	li $t0, 1372
	sw $t0, -6556($fp)
	addi $t0, $fp, -6224
	sw $t0, -6560($fp)
	li $t0, 6
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t0, -6560($fp)
	lw $t1, -6568($fp)
	add $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t0, -6556($fp)
	lw $t1, -6572($fp)
	sw $t0, 0($t1)
	lw $t0, -6572($fp)
	lw $t1, 0($t0)
	sw $t1, -6576($fp)
	li $t0, 60875
	sw $t0, -6580($fp)
	addi $t0, $fp, -6224
	sw $t0, -6584($fp)
	li $t0, 7
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t0, -6584($fp)
	lw $t1, -6592($fp)
	add $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -6580($fp)
	lw $t1, -6596($fp)
	sw $t0, 0($t1)
	lw $t0, -6596($fp)
	lw $t1, 0($t0)
	sw $t1, -6600($fp)
	li $t0, 4506
	sw $t0, -6604($fp)
	addi $t0, $fp, -6224
	sw $t0, -6608($fp)
	li $t0, 8
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t0, -6608($fp)
	lw $t1, -6616($fp)
	add $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6604($fp)
	lw $t1, -6620($fp)
	sw $t0, 0($t1)
	lw $t0, -6620($fp)
	lw $t1, 0($t0)
	sw $t1, -6624($fp)
	li $t0, 18165
	sw $t0, -6628($fp)
	addi $t0, $fp, -6224
	sw $t0, -6632($fp)
	li $t0, 9
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6632($fp)
	lw $t1, -6640($fp)
	add $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t0, -6628($fp)
	lw $t1, -6644($fp)
	sw $t0, 0($t1)
	lw $t0, -6644($fp)
	lw $t1, 0($t0)
	sw $t1, -6648($fp)
	li $t0, 14031
	sw $t0, -6652($fp)
	addi $t0, $fp, -6240
	sw $t0, -6656($fp)
	li $t0, 0
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6664($fp)
	lw $t0, -6656($fp)
	lw $t1, -6664($fp)
	add $t0, $t0, $t1
	sw $t0, -6668($fp)
	lw $t0, -6652($fp)
	lw $t1, -6668($fp)
	sw $t0, 0($t1)
	lw $t0, -6668($fp)
	lw $t1, 0($t0)
	sw $t1, -6672($fp)
	li $t0, 20460
	sw $t0, -6676($fp)
	addi $t0, $fp, -6240
	sw $t0, -6680($fp)
	li $t0, 1
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
	li $t0, 15330
	sw $t0, -6700($fp)
	addi $t0, $fp, -6240
	sw $t0, -6704($fp)
	li $t0, 2
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
	li $t0, 60751
	sw $t0, -6724($fp)
	addi $t0, $fp, -6240
	sw $t0, -6728($fp)
	li $t0, 3
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
	li $t0, 7131
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	sw $t0, -6756($fp)
	li $t0, 26543
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	sw $t0, -6768($fp)
	li $t0, 64049
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	sw $t0, -6780($fp)
	li $t0, 20390
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	sw $t0, -6792($fp)
	li $t0, 45584
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	sw $t0, -6804($fp)
	li $t0, 25696
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	sw $t0, -6816($fp)
	li $t0, 3494
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	sw $t0, -6828($fp)
label1066:
	jal f9
	sw $v0, -6832($fp)
	addi $sp, $sp, 4
	lw $t0, -6404($fp)
	sw $t0, -6836($fp)
	li $t0, 4577
	sw $t0, -6840($fp)
	lw $t0, -6836($fp)
	lw $t1, -6840($fp)
	mul $t0, $t0, $t1
	sw $t0, -6844($fp)
	li $t0, 0
	lw $t1, -6844($fp)
	sub $t0, $t0, $t1
	sw $t0, -6848($fp)
	li $t0, 0
	sw $t0, -6852($fp)
	li $t0, 0
	sw $t0, -6856($fp)
	lw $t0, 8($fp)
	sw $t0, -6860($fp)
	li $t0, 64059
	sw $t0, -6864($fp)
	lw $t1, -6860($fp)
	lw $t2, -6864($fp)
	blt $t1, $t2, label1071
	j label1072
label1071:
	li $t0, 1
	sw $t0, -6856($fp)
label1072:
	li $t0, 54229
	sw $t0, -6868($fp)
	lw $t1, -6856($fp)
	lw $t2, -6868($fp)
	ble $t1, $t2, label1069
	j label1070
label1069:
	li $t0, 1
	sw $t0, -6852($fp)
label1070:
	li $t0, 0
	sw $t0, -6872($fp)
	li $t0, 34262
	sw $t0, -6876($fp)
	lw $t1, -6876($fp)
	li $t2, 0
	bne $t1, $t2, label1074
	j label1075
label1075:
	li $t0, 52738
	sw $t0, -6880($fp)
	lw $t1, -6880($fp)
	li $t2, 0
	bne $t1, $t2, label1073
	j label1074
label1073:
	li $t0, 1
	sw $t0, -6872($fp)
label1074:
	lw $t0, -2432($fp)
	sw $t0, -6884($fp)
	li $t0, 47555
	sw $t0, -6888($fp)
	lw $t0, -6884($fp)
	lw $t1, -6888($fp)
	sub $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -1136($fp)
	sw $t0, -6896($fp)
	lw $t0, -6892($fp)
	lw $t1, -6896($fp)
	add $t0, $t0, $t1
	sw $t0, -6900($fp)
	addi $sp, $sp, -4
	lw $t0, -6872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6900($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6904($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -6848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6904($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6908($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6908($fp)
	sub $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t0, -6832($fp)
	lw $t1, -6912($fp)
	add $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t1, -6916($fp)
	li $t2, 0
	bne $t1, $t2, label1067
	j label1068
label1067:
	addi $t0, $fp, -244
	sw $t0, -6920($fp)
	li $t0, 0
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
	lw $t0, -6764($fp)
	sw $t0, -6940($fp)
	li $t0, 0
	lw $t1, -6940($fp)
	sub $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6936($fp)
	lw $t1, -6944($fp)
	add $t0, $t0, $t1
	sw $t0, -6948($fp)
	jal f11
	sw $v0, -6952($fp)
	addi $sp, $sp, 4
	lw $t0, -2492($fp)
	sw $t0, -6956($fp)
	lw $t0, -6952($fp)
	lw $t1, -6956($fp)
	mul $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6948($fp)
	lw $t1, -6960($fp)
	add $t0, $t0, $t1
	sw $t0, -6964($fp)
	lw $t1, -6964($fp)
	li $t2, 0
	bne $t1, $t2, label1076
	j label1079
label1079:
	li $t0, 6868
	sw $t0, -6968($fp)
	lw $t1, -6968($fp)
	li $t2, 0
	bne $t1, $t2, label1076
	j label1077
label1076:
	lw $t0, -6776($fp)
	sw $t0, -6972($fp)
	li $t0, 0
	lw $t1, -6972($fp)
	sub $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t1, -6976($fp)
	li $t2, 0
	bne $t1, $t2, label1080
	j label1081
label1080:
	li $t0, 0
	sw $t0, -6980($fp)
	li $t0, 21711
	sw $t0, -6984($fp)
	jal f11
	sw $v0, -6988($fp)
	addi $sp, $sp, 4
	lw $t0, -6788($fp)
	sw $t0, -6992($fp)
	lw $t0, -6988($fp)
	lw $t1, -6992($fp)
	mul $t0, $t0, $t1
	sw $t0, -6996($fp)
	lw $t1, -6984($fp)
	lw $t2, -6996($fp)
	ble $t1, $t2, label1083
	j label1085
label1085:
	li $t0, 0
	sw $t0, -7000($fp)
	lw $t0, -1160($fp)
	sw $t0, -7004($fp)
	lw $t1, -7004($fp)
	li $t2, 0
	bne $t1, $t2, label1087
	j label1086
label1086:
	li $t0, 1
	sw $t0, -7000($fp)
label1087:
	li $t0, 2814
	sw $t0, -7008($fp)
	li $t0, 0
	lw $t1, -7008($fp)
	sub $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $t0, -7000($fp)
	lw $t1, -7012($fp)
	mul $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t1, -7016($fp)
	li $t2, 0
	bne $t1, $t2, label1083
	j label1084
label1083:
	li $t0, 1
	sw $t0, -6980($fp)
label1084:
	lw $ra, -4($fp)
	lw $v0, -6980($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1082
label1081:
	addi $t0, $fp, -6240
	sw $t0, -7020($fp)
	lw $t0, -2192($fp)
	sw $t0, -7024($fp)
	li $t0, 0
	sw $t0, -7028($fp)
	li $t0, 9435
	sw $t0, -7032($fp)
	li $t0, 25877
	sw $t0, -7036($fp)
	lw $t0, -7032($fp)
	lw $t1, -7036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7040($fp)
	lw $t1, -7040($fp)
	li $t2, 0
	bne $t1, $t2, label1088
	j label1090
label1090:
	li $t0, 26130
	sw $t0, -7044($fp)
	lw $t1, -7044($fp)
	li $t2, 0
	bne $t1, $t2, label1088
	j label1089
label1088:
	li $t0, 1
	sw $t0, -7028($fp)
label1089:
	li $t0, 0
	sw $t0, -7048($fp)
	lw $t0, -6812($fp)
	sw $t0, -7052($fp)
	li $t0, 23436
	sw $t0, -7056($fp)
	lw $t0, -7052($fp)
	lw $t1, -7056($fp)
	mul $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -2444($fp)
	sw $t0, -7064($fp)
	lw $t1, -7060($fp)
	lw $t2, -7064($fp)
	bgt $t1, $t2, label1091
	j label1092
label1091:
	li $t0, 1
	sw $t0, -7048($fp)
label1092:
	addi $sp, $sp, -4
	lw $t0, -7024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7068($fp)
	addi $sp, $sp, 16
	li $t0, 47758
	sw $t0, -7072($fp)
	lw $t0, -7068($fp)
	lw $t1, -7072($fp)
	sub $t0, $t0, $t1
	sw $t0, -7076($fp)
	li $t0, 4
	lw $t1, -7076($fp)
	mul $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	lw $t1, -7020($fp)
	add $t0, $t0, $t1
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	lw $t1, 0($t0)
	sw $t1, -7088($fp)
	lw $ra, -4($fp)
	lw $v0, -7088($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1082:
	j label1078
label1077:
	li $t0, 0
	sw $t0, -7092($fp)
	li $t0, 45415
	sw $t0, -7096($fp)
	li $t0, 35501
	sw $t0, -7100($fp)
	lw $t0, -7096($fp)
	lw $t1, -7100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7104($fp)
	li $t0, 0
	lw $t1, -7104($fp)
	sub $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -1160($fp)
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	sw $t0, -7116($fp)
	lw $t0, -2552($fp)
	sw $t0, -7120($fp)
	li $t0, 52264
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	sw $t0, -7128($fp)
	li $t0, 0
	sw $t0, -7132($fp)
	li $t0, 27249
	sw $t0, -7136($fp)
	li $t0, 21470
	sw $t0, -7140($fp)
	lw $t0, -7136($fp)
	lw $t1, -7140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7144($fp)
	lw $t0, -2108($fp)
	sw $t0, -7148($fp)
	lw $t1, -7144($fp)
	lw $t2, -7148($fp)
	bgt $t1, $t2, label1099
	j label1100
label1099:
	li $t0, 1
	sw $t0, -7132($fp)
label1100:
	addi $sp, $sp, -4
	lw $t0, -7108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7132($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -7152($fp)
	addi $sp, $sp, 24
	lw $t1, -7152($fp)
	li $t2, 0
	bne $t1, $t2, label1098
	j label1097
label1098:
	li $t0, 7188
	sw $t0, -7156($fp)
	lw $t1, -7156($fp)
	li $t2, 0
	bne $t1, $t2, label1096
	j label1097
label1096:
	li $t0, 1
	sw $t0, -7092($fp)
label1097:
	lw $t0, -7092($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -7160($fp)
	lw $t1, -7160($fp)
	li $t2, 0
	bne $t1, $t2, label1093
	j label1094
label1093:
label1101:
	li $t0, 0
	sw $t0, -7164($fp)
	li $t0, 14319
	sw $t0, -7168($fp)
	lw $t1, -7168($fp)
	li $t2, 0
	bne $t1, $t2, label1105
	j label1104
label1104:
	li $t0, 1
	sw $t0, -7164($fp)
label1105:
	li $t0, 0
	sw $t0, -7172($fp)
	li $t0, 60745
	sw $t0, -7176($fp)
	lw $t0, -1424($fp)
	sw $t0, -7180($fp)
	lw $t0, -7176($fp)
	lw $t1, -7180($fp)
	add $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t1, -7184($fp)
	li $t2, 0
	bne $t1, $t2, label1108
	j label1107
label1108:
	li $t0, 30717
	sw $t0, -7188($fp)
	lw $t1, -7188($fp)
	li $t2, 0
	bne $t1, $t2, label1106
	j label1107
label1106:
	li $t0, 1
	sw $t0, -7172($fp)
label1107:
	addi $sp, $sp, -4
	lw $t0, -7164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7172($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -7192($fp)
	addi $sp, $sp, 12
	lw $t1, -7192($fp)
	li $t2, 0
	bne $t1, $t2, label1102
	j label1103
label1102:
	li $t0, 0
	sw $t0, -7196($fp)
	li $t0, 0
	sw $t0, -7200($fp)
	li $t0, 21752
	sw $t0, -7204($fp)
	li $t0, 29230
	sw $t0, -7208($fp)
	lw $t0, -7204($fp)
	lw $t1, -7208($fp)
	mul $t0, $t0, $t1
	sw $t0, -7212($fp)
	li $t0, 0
	lw $t1, -7212($fp)
	sub $t0, $t0, $t1
	sw $t0, -7216($fp)
	addi $t0, $fp, -6184
	sw $t0, -7220($fp)
	lw $t0, -704($fp)
	sw $t0, -7224($fp)
	li $t0, 4
	lw $t1, -7224($fp)
	mul $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	lw $t1, -7220($fp)
	add $t0, $t0, $t1
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	lw $t1, 0($t0)
	sw $t1, -7236($fp)
	lw $t1, -7216($fp)
	lw $t2, -7236($fp)
	bne $t1, $t2, label1112
	j label1113
label1112:
	li $t0, 1
	sw $t0, -7200($fp)
label1113:
	li $t0, 0
	sw $t0, -7240($fp)
	li $t0, 0
	sw $t0, -7244($fp)
	lw $t0, -6392($fp)
	sw $t0, -7248($fp)
	li $t0, 34709
	sw $t0, -7252($fp)
	lw $t1, -7248($fp)
	lw $t2, -7252($fp)
	ble $t1, $t2, label1116
	j label1117
label1116:
	li $t0, 1
	sw $t0, -7244($fp)
label1117:
	li $t0, 1800
	sw $t0, -7256($fp)
	lw $t1, -7244($fp)
	lw $t2, -7256($fp)
	ble $t1, $t2, label1114
	j label1115
label1114:
	li $t0, 1
	sw $t0, -7240($fp)
label1115:
	lw $t1, -7200($fp)
	lw $t2, -7240($fp)
	bne $t1, $t2, label1111
	j label1110
label1111:
	li $t0, 54926
	sw $t0, -7260($fp)
	lw $t1, -7260($fp)
	li $t2, 0
	bne $t1, $t2, label1110
	j label1109
label1109:
	li $t0, 1
	sw $t0, -7196($fp)
label1110:
	lw $ra, -4($fp)
	lw $v0, -7196($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1101
label1103:
	j label1095
label1094:
label1118:
	li $t0, 0
	sw $t0, -7264($fp)
	addi $t0, $fp, -240
	sw $t0, -7268($fp)
	li $t0, 0
	sw $t0, -7272($fp)
	li $t0, 38204
	sw $t0, -7276($fp)
	lw $t1, -7276($fp)
	li $t2, 0
	bne $t1, $t2, label1125
	j label1124
label1125:
	li $t0, 49356
	sw $t0, -7280($fp)
	lw $t1, -7280($fp)
	li $t2, 0
	bne $t1, $t2, label1123
	j label1124
label1123:
	li $t0, 1
	sw $t0, -7272($fp)
label1124:
	li $t0, 4
	lw $t1, -7272($fp)
	mul $t0, $t0, $t1
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	lw $t1, -7268($fp)
	add $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	lw $t1, 0($t0)
	sw $t1, -7292($fp)
	lw $t1, -7292($fp)
	li $t2, 0
	bne $t1, $t2, label1122
	j label1121
label1121:
	li $t0, 1
	sw $t0, -7264($fp)
label1122:
	addi $t0, $fp, -244
	sw $t0, -7296($fp)
	li $t0, 0
	sw $t0, -7300($fp)
	li $t0, 4
	lw $t1, -7300($fp)
	mul $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	lw $t1, -7296($fp)
	add $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	lw $t1, 0($t0)
	sw $t1, -7312($fp)
	li $t0, 47879
	sw $t0, -7316($fp)
	lw $t0, -7312($fp)
	lw $t1, -7316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7320($fp)
	lw $t1, -7264($fp)
	lw $t2, -7320($fp)
	bgt $t1, $t2, label1119
	j label1120
label1119:
	li $t0, 0
	sw $t0, -7324($fp)
	lw $t0, -620($fp)
	sw $t0, -7328($fp)
	lw $t1, -7328($fp)
	li $t2, 0
	bne $t1, $t2, label1126
	j label1127
label1126:
	li $t0, 1
	sw $t0, -7324($fp)
label1127:
	j label1118
label1120:
label1095:
label1078:
	j label1066
label1068:
label1128:
	lw $t0, -6404($fp)
	sw $t0, -7332($fp)
	lw $t1, -7332($fp)
	li $t2, 0
	bne $t1, $t2, label1129
	j label1131
label1131:
	lw $t0, -1148($fp)
	sw $t0, -7336($fp)
	lw $t1, -7336($fp)
	li $t2, 0
	bne $t1, $t2, label1129
	j label1130
label1129:
	li $t0, 12345
	sw $t0, -7340($fp)
	addi $t0, $fp, -200
	sw $t0, -7344($fp)
	lw $t0, -608($fp)
	sw $t0, -7348($fp)
	li $t0, 29983
	sw $t0, -7352($fp)
	lw $t0, -7348($fp)
	lw $t1, -7352($fp)
	mul $t0, $t0, $t1
	sw $t0, -7356($fp)
	li $t0, 4
	lw $t1, -7356($fp)
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
	sub $t0, $t0, $t1
	sw $t0, -7372($fp)
	lw $t1, -7372($fp)
	li $t2, 0
	bne $t1, $t2, label1132
	j label1133
label1132:
label1135:
	addi $t0, $fp, -240
	sw $t0, -7376($fp)
	li $t0, 0
	sw $t0, -7380($fp)
	li $t0, 4087
	sw $t0, -7384($fp)
	lw $t1, -7384($fp)
	li $t2, 0
	bne $t1, $t2, label1139
	j label1138
label1138:
	li $t0, 1
	sw $t0, -7380($fp)
label1139:
	li $t0, 4
	lw $t1, -7380($fp)
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	lw $t1, -7376($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	lw $t1, 0($t0)
	sw $t1, -7396($fp)
	lw $t1, -7396($fp)
	li $t2, 0
	bne $t1, $t2, label1136
	j label1137
label1136:
label1140:
	li $t0, 0
	sw $t0, -7400($fp)
	addi $t0, $fp, -240
	sw $t0, -7404($fp)
	li $t0, 4
	sw $t0, -7408($fp)
	li $t0, 4
	lw $t1, -7408($fp)
	mul $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, -7404($fp)
	add $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7416($fp)
	lw $t1, 0($t0)
	sw $t1, -7420($fp)
	lw $t1, -7420($fp)
	li $t2, 0
	bne $t1, $t2, label1143
	j label1144
label1143:
	li $t0, 1
	sw $t0, -7400($fp)
label1144:
	lw $t0, -2468($fp)
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -7428($fp)
	li $t0, 0
	sw $t0, -7432($fp)
	lw $t0, -1412($fp)
	sw $t0, -7436($fp)
	lw $t1, -7436($fp)
	li $t2, 0
	bne $t1, $t2, label1145
	j label1148
label1148:
	li $t0, 11372
	sw $t0, -7440($fp)
	lw $t1, -7440($fp)
	li $t2, 0
	bne $t1, $t2, label1145
	j label1147
label1147:
	lw $t0, -3092($fp)
	sw $t0, -7444($fp)
	lw $t1, -7444($fp)
	li $t2, 0
	bne $t1, $t2, label1145
	j label1146
label1145:
	li $t0, 1
	sw $t0, -7432($fp)
label1146:
	li $t0, 0
	sw $t0, -7448($fp)
	jal f11
	sw $v0, -7452($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -7456($fp)
	li $t0, 54923
	sw $t0, -7460($fp)
	lw $t0, -2552($fp)
	sw $t0, -7464($fp)
	lw $t1, -7460($fp)
	lw $t2, -7464($fp)
	beq $t1, $t2, label1154
	j label1153
label1154:
	lw $t0, -2384($fp)
	sw $t0, -7468($fp)
	lw $t1, -7468($fp)
	li $t2, 0
	bne $t1, $t2, label1152
	j label1153
label1152:
	li $t0, 1
	sw $t0, -7456($fp)
label1153:
	addi $t0, $fp, -336
	sw $t0, -7472($fp)
	li $t0, 0
	sw $t0, -7476($fp)
	li $t0, 4
	lw $t1, -7476($fp)
	mul $t0, $t0, $t1
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	lw $t1, -7472($fp)
	add $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	lw $t1, 0($t0)
	sw $t1, -7488($fp)
	li $t0, 0
	lw $t1, -7488($fp)
	sub $t0, $t0, $t1
	sw $t0, -7492($fp)
	li $t0, 0
	sw $t0, -7496($fp)
	lw $t0, -2492($fp)
	sw $t0, -7500($fp)
	lw $t1, -7500($fp)
	li $t2, 0
	bne $t1, $t2, label1157
	j label1156
label1157:
	lw $t0, -6800($fp)
	sw $t0, -7504($fp)
	lw $t1, -7504($fp)
	li $t2, 0
	bne $t1, $t2, label1155
	j label1156
label1155:
	li $t0, 1
	sw $t0, -7496($fp)
label1156:
	lw $t0, 8($fp)
	sw $t0, -7508($fp)
	li $t0, 9508
	sw $t0, -7512($fp)
	lw $t0, -7508($fp)
	lw $t1, -7512($fp)
	mul $t0, $t0, $t1
	sw $t0, -7516($fp)
	lw $t0, -2132($fp)
	sw $t0, -7520($fp)
	lw $t0, -7516($fp)
	lw $t1, -7520($fp)
	mul $t0, $t0, $t1
	sw $t0, -7524($fp)
	li $t0, 17455
	sw $t0, -7528($fp)
	li $t0, 0
	sw $t0, -7532($fp)
	jal f11
	sw $v0, -7536($fp)
	addi $sp, $sp, 4
	li $t0, 20882
	sw $t0, -7540($fp)
	lw $t1, -7536($fp)
	lw $t2, -7540($fp)
	beq $t1, $t2, label1158
	j label1159
label1158:
	li $t0, 1
	sw $t0, -7532($fp)
label1159:
	addi $sp, $sp, -4
	lw $t0, -7492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7532($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -7544($fp)
	addi $sp, $sp, 24
	li $t0, 47794
	sw $t0, -7548($fp)
	lw $t0, -7548($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -7552($fp)
	li $t0, 0
	sw $t0, -7556($fp)
	li $t0, 0
	sw $t0, -7560($fp)
	li $t0, 60288
	sw $t0, -7564($fp)
	lw $t1, -7564($fp)
	li $t2, 0
	bne $t1, $t2, label1163
	j label1162
label1162:
	li $t0, 1
	sw $t0, -7560($fp)
label1163:
	li $t0, 35233
	sw $t0, -7568($fp)
	lw $t1, -7560($fp)
	lw $t2, -7568($fp)
	beq $t1, $t2, label1160
	j label1161
label1160:
	li $t0, 1
	sw $t0, -7556($fp)
label1161:
	addi $sp, $sp, -4
	lw $t0, -7452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7556($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -7572($fp)
	addi $sp, $sp, 24
	lw $t1, -7572($fp)
	li $t2, 0
	bne $t1, $t2, label1151
	j label1150
label1151:
	li $t0, 12318
	sw $t0, -7576($fp)
	lw $t1, -7576($fp)
	li $t2, 0
	bne $t1, $t2, label1149
	j label1150
label1149:
	li $t0, 1
	sw $t0, -7448($fp)
label1150:
	addi $sp, $sp, -4
	lw $t0, -7432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7448($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -7580($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -7584($fp)
	addi $t0, $fp, -200
	sw $t0, -7588($fp)
	lw $t0, -620($fp)
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
	li $t0, 21917
	sw $t0, -7608($fp)
	lw $t1, -7604($fp)
	lw $t2, -7608($fp)
	ble $t1, $t2, label1164
	j label1165
label1164:
	li $t0, 1
	sw $t0, -7584($fp)
label1165:
	lw $t0, -620($fp)
	sw $t0, -7612($fp)
	lw $t0, -632($fp)
	sw $t0, -7616($fp)
	lw $t0, -7612($fp)
	lw $t1, -7616($fp)
	mul $t0, $t0, $t1
	sw $t0, -7620($fp)
	li $t0, 25798
	sw $t0, -7624($fp)
	lw $t0, -7620($fp)
	lw $t1, -7624($fp)
	add $t0, $t0, $t1
	sw $t0, -7628($fp)
	addi $sp, $sp, -4
	lw $t0, -7428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7628($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7632($fp)
	addi $sp, $sp, 20
	lw $t0, -7400($fp)
	lw $t1, -7632($fp)
	mul $t0, $t0, $t1
	sw $t0, -7636($fp)
	li $t0, 0
	sw $t0, -7640($fp)
	jal f9
	sw $v0, -7644($fp)
	addi $sp, $sp, 4
	lw $t1, -7644($fp)
	li $t2, 0
	bne $t1, $t2, label1167
	j label1166
label1166:
	li $t0, 1
	sw $t0, -7640($fp)
label1167:
	li $t0, 0
	lw $t1, -7640($fp)
	sub $t0, $t0, $t1
	sw $t0, -7648($fp)
	lw $t1, -7636($fp)
	lw $t2, -7648($fp)
	ble $t1, $t2, label1141
	j label1142
label1141:
	li $t0, 0
	sw $t0, -7652($fp)
	li $t0, 0
	sw $t0, -7656($fp)
	li $t0, 25692
	sw $t0, -7660($fp)
	li $t0, 6348
	sw $t0, -7664($fp)
	lw $t0, -7660($fp)
	lw $t1, -7664($fp)
	add $t0, $t0, $t1
	sw $t0, -7668($fp)
	li $t0, 6729
	sw $t0, -7672($fp)
	lw $t1, -7668($fp)
	lw $t2, -7672($fp)
	bgt $t1, $t2, label1171
	j label1172
label1171:
	li $t0, 1
	sw $t0, -7656($fp)
label1172:
	lw $t0, -596($fp)
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	sw $t0, -7680($fp)
	addi $sp, $sp, -4
	lw $t0, -7656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7680($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7684($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -7688($fp)
	li $t0, 0
	sw $t0, -7692($fp)
	li $t0, 0
	sw $t0, -7696($fp)
	addi $t0, $fp, -360
	sw $t0, -7700($fp)
	lw $t0, -2792($fp)
	sw $t0, -7704($fp)
	li $t0, 4
	lw $t1, -7704($fp)
	mul $t0, $t0, $t1
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	lw $t1, -7700($fp)
	add $t0, $t0, $t1
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	lw $t1, 0($t0)
	sw $t1, -7716($fp)
	lw $t1, -7716($fp)
	li $t2, 0
	bne $t1, $t2, label1178
	j label1177
label1177:
	li $t0, 1
	sw $t0, -7696($fp)
label1178:
	lw $t0, -908($fp)
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -7724($fp)
	addi $sp, $sp, -4
	lw $t0, -7696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7724($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -7728($fp)
	addi $sp, $sp, 12
	lw $t0, -2348($fp)
	sw $t0, -7732($fp)
	lw $t1, -7728($fp)
	lw $t2, -7732($fp)
	bge $t1, $t2, label1175
	j label1176
label1175:
	li $t0, 1
	sw $t0, -7692($fp)
label1176:
	li $t0, 0
	sw $t0, -7736($fp)
	lw $t0, -2324($fp)
	sw $t0, -7740($fp)
	lw $t1, -7740($fp)
	li $t2, 0
	bne $t1, $t2, label1179
	j label1182
label1182:
	li $t0, 50132
	sw $t0, -7744($fp)
	lw $t1, -7744($fp)
	li $t2, 0
	bne $t1, $t2, label1179
	j label1181
label1181:
	li $t0, 43035
	sw $t0, -7748($fp)
	lw $t1, -7748($fp)
	li $t2, 0
	bne $t1, $t2, label1179
	j label1180
label1179:
	li $t0, 1
	sw $t0, -7736($fp)
label1180:
	addi $sp, $sp, -4
	lw $t0, -7692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7736($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -7752($fp)
	addi $sp, $sp, 12
	lw $t1, -7752($fp)
	li $t2, 0
	bne $t1, $t2, label1174
	j label1173
label1173:
	li $t0, 1
	sw $t0, -7688($fp)
label1174:
	jal f9
	sw $v0, -7756($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -7684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7756($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7760($fp)
	addi $sp, $sp, 16
	li $t0, 60401
	sw $t0, -7764($fp)
	lw $t0, -7760($fp)
	lw $t1, -7764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7768($fp)
	li $t0, 8148
	sw $t0, -7772($fp)
	lw $t0, -7768($fp)
	lw $t1, -7772($fp)
	mul $t0, $t0, $t1
	sw $t0, -7776($fp)
	lw $t1, -7776($fp)
	li $t2, 0
	bne $t1, $t2, label1170
	j label1169
label1170:
	addi $t0, $fp, -308
	sw $t0, -7780($fp)
	li $t0, 1
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
	li $t0, 57504
	sw $t0, -7800($fp)
	li $t0, 0
	lw $t1, -7800($fp)
	sub $t0, $t0, $t1
	sw $t0, -7804($fp)
	lw $t0, -7796($fp)
	lw $t1, -7804($fp)
	add $t0, $t0, $t1
	sw $t0, -7808($fp)
	lw $t1, -7808($fp)
	li $t2, 0
	bne $t1, $t2, label1168
	j label1169
label1168:
	li $t0, 1
	sw $t0, -7652($fp)
label1169:
	j label1140
label1142:
	j label1135
label1137:
	j label1134
label1133:
	li $t0, 0
	sw $t0, -7812($fp)
	li $t0, 32118
	sw $t0, -7816($fp)
	lw $t1, -7816($fp)
	li $t2, 0
	bne $t1, $t2, label1186
	j label1185
label1186:
	li $t0, 22923
	sw $t0, -7820($fp)
	lw $t1, -7820($fp)
	li $t2, 0
	bne $t1, $t2, label1183
	j label1185
label1185:
	li $t0, 43935
	sw $t0, -7824($fp)
	lw $t1, -7824($fp)
	li $t2, 0
	bne $t1, $t2, label1183
	j label1184
label1183:
	li $t0, 1
	sw $t0, -7812($fp)
label1184:
	lw $t0, -6272($fp)
	sw $t0, -7828($fp)
	li $t0, 39848
	sw $t0, -7832($fp)
	lw $t0, -7828($fp)
	lw $t1, -7832($fp)
	sub $t0, $t0, $t1
	sw $t0, -7836($fp)
	li $t0, 0
	sw $t0, -7840($fp)
	li $t0, 58475
	sw $t0, -7844($fp)
	lw $t0, -2540($fp)
	sw $t0, -7848($fp)
	lw $t1, -7844($fp)
	lw $t2, -7848($fp)
	bne $t1, $t2, label1187
	j label1188
label1187:
	li $t0, 1
	sw $t0, -7840($fp)
label1188:
	li $t0, 0
	sw $t0, -7852($fp)
	li $t0, 19772
	sw $t0, -7856($fp)
	lw $t1, -7856($fp)
	li $t2, 0
	bne $t1, $t2, label1192
	j label1191
label1192:
	lw $t0, -2108($fp)
	sw $t0, -7860($fp)
	lw $t1, -7860($fp)
	li $t2, 0
	bne $t1, $t2, label1189
	j label1191
label1191:
	lw $t0, -1424($fp)
	sw $t0, -7864($fp)
	lw $t1, -7864($fp)
	li $t2, 0
	bne $t1, $t2, label1189
	j label1190
label1189:
	li $t0, 1
	sw $t0, -7852($fp)
label1190:
	addi $sp, $sp, -4
	lw $t0, -7812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7852($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7868($fp)
	addi $sp, $sp, 20
	li $t0, 51221
	sw $t0, -7872($fp)
	li $t0, 0
	sw $t0, -7876($fp)
	jal f9
	sw $v0, -7880($fp)
	addi $sp, $sp, 4
	lw $t1, -7880($fp)
	li $t2, 0
	bne $t1, $t2, label1194
	j label1193
label1193:
	li $t0, 1
	sw $t0, -7876($fp)
label1194:
	lw $t0, -7872($fp)
	lw $t1, -7876($fp)
	mul $t0, $t0, $t1
	sw $t0, -7884($fp)
	li $t0, 0
	lw $t1, -7884($fp)
	sub $t0, $t0, $t1
	sw $t0, -7888($fp)
	lw $t0, -7868($fp)
	lw $t1, -7888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7892($fp)
	lw $ra, -4($fp)
	lw $v0, -7892($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1134:
	j label1128
label1130:
	li $t0, 59775
	sw $t0, -7896($fp)
	jal f11
	sw $v0, -7900($fp)
	addi $sp, $sp, 4
	li $t0, 4198
	sw $t0, -7904($fp)
	lw $t0, -7900($fp)
	lw $t1, -7904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7908($fp)
	lw $t0, -6260($fp)
	sw $t0, -7912($fp)
	lw $t0, -1148($fp)
	sw $t0, -7916($fp)
	lw $t0, -7912($fp)
	lw $t1, -7916($fp)
	mul $t0, $t0, $t1
	sw $t0, -7920($fp)
	li $t0, 0
	sw $t0, -7924($fp)
	lw $t0, -2456($fp)
	sw $t0, -7928($fp)
	li $t0, 0
	lw $t1, -7928($fp)
	sub $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t1, -7932($fp)
	li $t2, 0
	bne $t1, $t2, label1195
	j label1197
label1197:
	lw $t0, -6248($fp)
	sw $t0, -7936($fp)
	lw $t1, -7936($fp)
	li $t2, 0
	bne $t1, $t2, label1195
	j label1196
label1195:
	li $t0, 1
	sw $t0, -7924($fp)
label1196:
	lw $t0, -1148($fp)
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -7944($fp)
	addi $sp, $sp, -4
	lw $t0, -7908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7944($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7948($fp)
	addi $sp, $sp, 20
	lw $t0, -7896($fp)
	lw $t1, -7948($fp)
	add $t0, $t0, $t1
	sw $t0, -7952($fp)
	li $t0, 7602
	sw $t0, -7956($fp)
	lw $t0, -7956($fp)
	sw $t0, -7960($fp)
	lw $t0, -7960($fp)
	sw $t0, -7964($fp)
	li $t0, 54527
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	sw $t0, -7976($fp)
	li $t0, 39431
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	sw $t0, -7988($fp)
	li $t0, 55396
	sw $t0, -7992($fp)
	lw $t1, -7992($fp)
	li $t2, 0
	bne $t1, $t2, label1201
	j label1199
label1201:
	addi $t0, $fp, -308
	sw $t0, -7996($fp)
	li $t0, 1
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
	lw $t1, -8012($fp)
	li $t2, 0
	bne $t1, $t2, label1199
	j label1198
label1198:
	li $t0, 0
	sw $t0, -8016($fp)
	li $t0, 38887
	sw $t0, -8020($fp)
	lw $t1, -8020($fp)
	li $t2, 0
	bne $t1, $t2, label1206
	j label1207
label1207:
	li $t0, 42043
	sw $t0, -8024($fp)
	lw $t1, -8024($fp)
	li $t2, 0
	bne $t1, $t2, label1205
	j label1206
label1205:
	li $t0, 1
	sw $t0, -8016($fp)
label1206:
	li $t0, 0
	sw $t0, -8028($fp)
	li $t0, 6907
	sw $t0, -8032($fp)
	lw $t1, -8032($fp)
	li $t2, 0
	bne $t1, $t2, label1209
	j label1208
label1208:
	li $t0, 1
	sw $t0, -8028($fp)
label1209:
	li $t0, 0
	sw $t0, -8036($fp)
	li $t0, 61071
	sw $t0, -8040($fp)
	li $t0, 54291
	sw $t0, -8044($fp)
	lw $t1, -8040($fp)
	lw $t2, -8044($fp)
	bne $t1, $t2, label1210
	j label1212
label1212:
	li $t0, 64544
	sw $t0, -8048($fp)
	lw $t1, -8048($fp)
	li $t2, 0
	bne $t1, $t2, label1210
	j label1211
label1210:
	li $t0, 1
	sw $t0, -8036($fp)
label1211:
	li $t0, 0
	sw $t0, -8052($fp)
	li $t0, 0
	sw $t0, -8056($fp)
	lw $t0, -2096($fp)
	sw $t0, -8060($fp)
	li $t0, 64904
	sw $t0, -8064($fp)
	lw $t1, -8060($fp)
	lw $t2, -8064($fp)
	bgt $t1, $t2, label1215
	j label1216
label1215:
	li $t0, 1
	sw $t0, -8056($fp)
label1216:
	li $t0, 52226
	sw $t0, -8068($fp)
	lw $t1, -8056($fp)
	lw $t2, -8068($fp)
	bne $t1, $t2, label1213
	j label1214
label1213:
	li $t0, 1
	sw $t0, -8052($fp)
label1214:
	addi $sp, $sp, -4
	lw $t0, -8016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8052($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -8072($fp)
	addi $sp, $sp, 20
	lw $t1, -8072($fp)
	li $t2, 0
	bne $t1, $t2, label1202
	j label1203
label1202:
	addi $t0, $fp, -332
	sw $t0, -8076($fp)
	li $t0, 0
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
	li $t0, 48772
	sw $t0, -8096($fp)
	li $t0, 0
	sw $t0, -8100($fp)
	lw $t0, -692($fp)
	sw $t0, -8104($fp)
	li $t0, 0
	lw $t1, -8104($fp)
	sub $t0, $t0, $t1
	sw $t0, -8108($fp)
	lw $t0, 8($fp)
	sw $t0, -8112($fp)
	lw $t1, -8108($fp)
	lw $t2, -8112($fp)
	beq $t1, $t2, label1217
	j label1218
label1217:
	li $t0, 1
	sw $t0, -8100($fp)
label1218:
	addi $sp, $sp, -4
	lw $t0, -8096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8116($fp)
	addi $sp, $sp, 12
	li $t0, 27465
	sw $t0, -8120($fp)
	lw $t0, -8116($fp)
	lw $t1, -8120($fp)
	mul $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -2456($fp)
	sw $t0, -8128($fp)
	li $t0, 0
	lw $t1, -8128($fp)
	sub $t0, $t0, $t1
	sw $t0, -8132($fp)
	lw $t0, -8124($fp)
	lw $t1, -8132($fp)
	mul $t0, $t0, $t1
	sw $t0, -8136($fp)
	lw $t0, -8092($fp)
	lw $t1, -8136($fp)
	add $t0, $t0, $t1
	sw $t0, -8140($fp)
	j label1204
label1203:
label1219:
	li $t0, 0
	sw $t0, -8144($fp)
	lw $t0, -668($fp)
	sw $t0, -8148($fp)
	li $t0, 0
	lw $t1, -8148($fp)
	sub $t0, $t0, $t1
	sw $t0, -8152($fp)
	lw $t1, -8152($fp)
	li $t2, 0
	bne $t1, $t2, label1223
	j label1224
label1223:
	li $t0, 1
	sw $t0, -8144($fp)
label1224:
	li $t0, 53384
	sw $t0, -8156($fp)
	li $t0, 44892
	sw $t0, -8160($fp)
	lw $t0, -8156($fp)
	lw $t1, -8160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8164($fp)
	lw $t0, -920($fp)
	sw $t0, -8168($fp)
	lw $t0, -8164($fp)
	lw $t1, -8168($fp)
	sub $t0, $t0, $t1
	sw $t0, -8172($fp)
	lw $t1, -8144($fp)
	lw $t2, -8172($fp)
	bge $t1, $t2, label1220
	j label1222
label1222:
	lw $t0, -6272($fp)
	sw $t0, -8176($fp)
	lw $t0, -680($fp)
	sw $t0, -8180($fp)
	lw $t0, -8176($fp)
	lw $t1, -8180($fp)
	sub $t0, $t0, $t1
	sw $t0, -8184($fp)
	lw $t1, -8184($fp)
	li $t2, 0
	bne $t1, $t2, label1225
	j label1221
label1225:
	li $t0, 60534
	sw $t0, -8188($fp)
	li $t0, 0
	lw $t1, -8188($fp)
	sub $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t1, -8192($fp)
	li $t2, 0
	bne $t1, $t2, label1220
	j label1221
label1220:
	addi $t0, $fp, -104
	sw $t0, -8196($fp)
	li $t0, 0
	sw $t0, -8200($fp)
	lw $t0, -2552($fp)
	sw $t0, -8204($fp)
	li $t0, 0
	lw $t1, -8204($fp)
	sub $t0, $t0, $t1
	sw $t0, -8208($fp)
	li $t0, 45352
	sw $t0, -8212($fp)
	lw $t1, -8208($fp)
	lw $t2, -8212($fp)
	bge $t1, $t2, label1226
	j label1227
label1226:
	li $t0, 1
	sw $t0, -8200($fp)
label1227:
	li $t0, 4
	lw $t1, -8200($fp)
	mul $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t0, -8216($fp)
	lw $t1, -8196($fp)
	add $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	lw $t1, 0($t0)
	sw $t1, -8224($fp)
	li $t0, 0
	lw $t1, -8224($fp)
	sub $t0, $t0, $t1
	sw $t0, -8228($fp)
	j label1219
label1221:
label1204:
	j label1200
label1199:
	addi $t0, $fp, -6240
	sw $t0, -8232($fp)
	lw $t0, -7960($fp)
	sw $t0, -8236($fp)
	li $t0, 4
	lw $t1, -8236($fp)
	mul $t0, $t0, $t1
	sw $t0, -8240($fp)
	lw $t0, -8240($fp)
	lw $t1, -8232($fp)
	add $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t0, -8244($fp)
	lw $t1, 0($t0)
	sw $t1, -8248($fp)
	lw $t1, -8248($fp)
	li $t2, 0
	bne $t1, $t2, label1229
	j label1228
label1228:
	lw $t0, -7972($fp)
	sw $t0, -8252($fp)
	lw $ra, -4($fp)
	lw $v0, -8252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1229:
label1200:
	li $t0, 0
	sw $t0, -8256($fp)
	li $t0, 0
	sw $t0, -8260($fp)
	li $t0, 0
	sw $t0, -8264($fp)
	li $t0, 24534
	sw $t0, -8268($fp)
	li $t0, 59627
	sw $t0, -8272($fp)
	lw $t1, -8268($fp)
	lw $t2, -8272($fp)
	bne $t1, $t2, label1236
	j label1237
label1236:
	li $t0, 1
	sw $t0, -8264($fp)
label1237:
	li $t0, 41693
	sw $t0, -8276($fp)
	lw $t1, -8264($fp)
	lw $t2, -8276($fp)
	bne $t1, $t2, label1234
	j label1235
label1234:
	li $t0, 1
	sw $t0, -8260($fp)
label1235:
	lw $t0, -2360($fp)
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -8284($fp)
	li $t0, 2262
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -8292($fp)
	li $t0, 0
	sw $t0, -8296($fp)
	li $t0, 63600
	sw $t0, -8300($fp)
	li $t0, 16932
	sw $t0, -8304($fp)
	lw $t0, -8300($fp)
	lw $t1, -8304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8308($fp)
	li $t0, 5100
	sw $t0, -8312($fp)
	lw $t1, -8308($fp)
	lw $t2, -8312($fp)
	bge $t1, $t2, label1238
	j label1239
label1238:
	li $t0, 1
	sw $t0, -8296($fp)
label1239:
	li $t0, 0
	sw $t0, -8316($fp)
	li $t0, 19664
	sw $t0, -8320($fp)
	li $t0, 31247
	sw $t0, -8324($fp)
	lw $t0, -8320($fp)
	lw $t1, -8324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8328($fp)
	li $t0, 10861
	sw $t0, -8332($fp)
	lw $t1, -8328($fp)
	lw $t2, -8332($fp)
	bne $t1, $t2, label1240
	j label1241
label1240:
	li $t0, 1
	sw $t0, -8316($fp)
label1241:
	addi $sp, $sp, -4
	lw $t0, -8260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8316($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -8336($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -8336($fp)
	sub $t0, $t0, $t1
	sw $t0, -8340($fp)
	li $t0, 0
	sw $t0, -8344($fp)
	li $t0, 64665
	sw $t0, -8348($fp)
	lw $t0, -584($fp)
	sw $t0, -8352($fp)
	lw $t1, -8348($fp)
	lw $t2, -8352($fp)
	beq $t1, $t2, label1242
	j label1244
label1244:
	li $t0, 53474
	sw $t0, -8356($fp)
	lw $t1, -8356($fp)
	li $t2, 0
	bne $t1, $t2, label1242
	j label1243
label1242:
	li $t0, 1
	sw $t0, -8344($fp)
label1243:
	addi $sp, $sp, -4
	lw $t0, -8340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8344($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -8360($fp)
	addi $sp, $sp, 12
	lw $t1, -8360($fp)
	li $t2, 0
	bne $t1, $t2, label1233
	j label1232
label1233:
	li $t0, 0
	sw $t0, -8364($fp)
	addi $t0, $fp, -6184
	sw $t0, -8368($fp)
	lw $t0, -2120($fp)
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
	lw $t1, -8384($fp)
	li $t2, 0
	bne $t1, $t2, label1246
	j label1245
label1245:
	li $t0, 1
	sw $t0, -8364($fp)
label1246:
	lw $t0, -7984($fp)
	sw $t0, -8388($fp)
	li $t0, 0
	lw $t1, -8388($fp)
	sub $t0, $t0, $t1
	sw $t0, -8392($fp)
	lw $t0, -8364($fp)
	lw $t1, -8392($fp)
	mul $t0, $t0, $t1
	sw $t0, -8396($fp)
	lw $t1, -8396($fp)
	li $t2, 0
	bne $t1, $t2, label1231
	j label1232
label1231:
	li $t0, 1
	sw $t0, -8256($fp)
label1232:
	addi $t0, $fp, -40
	sw $t0, -8400($fp)
	li $t0, 3
	sw $t0, -8404($fp)
	li $t0, 4
	lw $t1, -8404($fp)
	mul $t0, $t0, $t1
	sw $t0, -8408($fp)
	lw $t0, -8408($fp)
	lw $t1, -8400($fp)
	add $t0, $t0, $t1
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	lw $t1, 0($t0)
	sw $t1, -8416($fp)
	lw $t1, -8416($fp)
	li $t2, 0
	bne $t1, $t2, label1250
	j label1248
label1250:
	li $t0, 33044
	sw $t0, -8420($fp)
	lw $t0, -2432($fp)
	sw $t0, -8424($fp)
	li $t0, 0
	lw $t1, -8424($fp)
	sub $t0, $t0, $t1
	sw $t0, -8428($fp)
	lw $t0, -8420($fp)
	lw $t1, -8428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8432($fp)
	li $t0, 0
	lw $t1, -8432($fp)
	sub $t0, $t0, $t1
	sw $t0, -8436($fp)
	lw $t1, -8436($fp)
	li $t2, 0
	bne $t1, $t2, label1248
	j label1247
label1247:
	li $t0, 0
	sw $t0, -8440($fp)
	lw $t0, -2552($fp)
	sw $t0, -8444($fp)
	li $t0, 13763
	sw $t0, -8448($fp)
	lw $t1, -8444($fp)
	lw $t2, -8448($fp)
	bgt $t1, $t2, label1251
	j label1253
label1253:
	lw $t0, -2456($fp)
	sw $t0, -8452($fp)
	lw $t1, -8452($fp)
	li $t2, 0
	bne $t1, $t2, label1251
	j label1252
label1251:
	li $t0, 1
	sw $t0, -8440($fp)
label1252:
	lw $t0, -6752($fp)
	sw $t0, -8456($fp)
	addi $sp, $sp, -4
	lw $t0, -8440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8456($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8460($fp)
	addi $sp, $sp, 12
	j label1249
label1248:
	li $t0, 0
	sw $t0, -8464($fp)
	li $t0, 56190
	sw $t0, -8468($fp)
	lw $t0, -2468($fp)
	sw $t0, -8472($fp)
	lw $t0, -8468($fp)
	lw $t1, -8472($fp)
	mul $t0, $t0, $t1
	sw $t0, -8476($fp)
	li $t0, 0
	sw $t0, -8480($fp)
	addi $t0, $fp, -6224
	sw $t0, -8484($fp)
	lw $t0, -584($fp)
	sw $t0, -8488($fp)
	li $t0, 4
	lw $t1, -8488($fp)
	mul $t0, $t0, $t1
	sw $t0, -8492($fp)
	lw $t0, -8492($fp)
	lw $t1, -8484($fp)
	add $t0, $t0, $t1
	sw $t0, -8496($fp)
	lw $t0, -8496($fp)
	lw $t1, 0($t0)
	sw $t1, -8500($fp)
	addi $t0, $fp, -6224
	sw $t0, -8504($fp)
	lw $t0, -3020($fp)
	sw $t0, -8508($fp)
	li $t0, 4
	lw $t1, -8508($fp)
	mul $t0, $t0, $t1
	sw $t0, -8512($fp)
	lw $t0, -8512($fp)
	lw $t1, -8504($fp)
	add $t0, $t0, $t1
	sw $t0, -8516($fp)
	lw $t0, -8516($fp)
	lw $t1, 0($t0)
	sw $t1, -8520($fp)
	lw $t1, -8500($fp)
	lw $t2, -8520($fp)
	bge $t1, $t2, label1256
	j label1257
label1256:
	li $t0, 1
	sw $t0, -8480($fp)
label1257:
	lw $t1, -8476($fp)
	lw $t2, -8480($fp)
	bne $t1, $t2, label1254
	j label1255
label1254:
	li $t0, 1
	sw $t0, -8464($fp)
label1255:
	lw $ra, -4($fp)
	lw $v0, -8464($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1249:
label1056:
	addi $t0, $fp, -40
	sw $t0, -8524($fp)
	li $t0, 0
	sw $t0, -8528($fp)
	li $t0, 4
	lw $t1, -8528($fp)
	mul $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8532($fp)
	lw $t1, -8524($fp)
	add $t0, $t0, $t1
	sw $t0, -8536($fp)
	lw $t0, -8536($fp)
	lw $t1, 0($t0)
	sw $t1, -8540($fp)
	lw $t0, -8540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8544($fp)
	li $t0, 1
	sw $t0, -8548($fp)
	li $t0, 4
	lw $t1, -8548($fp)
	mul $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8552($fp)
	lw $t1, -8544($fp)
	add $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	lw $t1, 0($t0)
	sw $t1, -8560($fp)
	lw $t0, -8560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8564($fp)
	li $t0, 2
	sw $t0, -8568($fp)
	li $t0, 4
	lw $t1, -8568($fp)
	mul $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	lw $t1, -8564($fp)
	add $t0, $t0, $t1
	sw $t0, -8576($fp)
	lw $t0, -8576($fp)
	lw $t1, 0($t0)
	sw $t1, -8580($fp)
	lw $t0, -8580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8584($fp)
	li $t0, 3
	sw $t0, -8588($fp)
	li $t0, 4
	lw $t1, -8588($fp)
	mul $t0, $t0, $t1
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	lw $t1, -8584($fp)
	add $t0, $t0, $t1
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	lw $t1, 0($t0)
	sw $t1, -8600($fp)
	lw $t0, -8600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8604($fp)
	li $t0, 4
	sw $t0, -8608($fp)
	li $t0, 4
	lw $t1, -8608($fp)
	mul $t0, $t0, $t1
	sw $t0, -8612($fp)
	lw $t0, -8612($fp)
	lw $t1, -8604($fp)
	add $t0, $t0, $t1
	sw $t0, -8616($fp)
	lw $t0, -8616($fp)
	lw $t1, 0($t0)
	sw $t1, -8620($fp)
	lw $t0, -8620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8624($fp)
	li $t0, 5
	sw $t0, -8628($fp)
	li $t0, 4
	lw $t1, -8628($fp)
	mul $t0, $t0, $t1
	sw $t0, -8632($fp)
	lw $t0, -8632($fp)
	lw $t1, -8624($fp)
	add $t0, $t0, $t1
	sw $t0, -8636($fp)
	lw $t0, -8636($fp)
	lw $t1, 0($t0)
	sw $t1, -8640($fp)
	lw $t0, -8640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8644($fp)
	li $t0, 6
	sw $t0, -8648($fp)
	li $t0, 4
	lw $t1, -8648($fp)
	mul $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t0, -8652($fp)
	lw $t1, -8644($fp)
	add $t0, $t0, $t1
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	lw $t1, 0($t0)
	sw $t1, -8660($fp)
	lw $t0, -8660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8664($fp)
	li $t0, 7
	sw $t0, -8668($fp)
	li $t0, 4
	lw $t1, -8668($fp)
	mul $t0, $t0, $t1
	sw $t0, -8672($fp)
	lw $t0, -8672($fp)
	lw $t1, -8664($fp)
	add $t0, $t0, $t1
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	lw $t1, 0($t0)
	sw $t1, -8680($fp)
	lw $t0, -8680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8684($fp)
	li $t0, 8
	sw $t0, -8688($fp)
	li $t0, 4
	lw $t1, -8688($fp)
	mul $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t0, -8692($fp)
	lw $t1, -8684($fp)
	add $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8696($fp)
	lw $t1, 0($t0)
	sw $t1, -8700($fp)
	lw $t0, -8700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -8704($fp)
	lw $t0, -8704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -8708($fp)
	lw $t0, -8708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -8724($fp)
	lw $t0, -8724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -8728($fp)
	lw $t0, -8728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -8740($fp)
	lw $t0, -8740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -8744($fp)
	lw $t0, -8744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8748($fp)
	li $t0, 0
	sw $t0, -8752($fp)
	li $t0, 4
	lw $t1, -8752($fp)
	mul $t0, $t0, $t1
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	lw $t1, -8748($fp)
	add $t0, $t0, $t1
	sw $t0, -8760($fp)
	lw $t0, -8760($fp)
	lw $t1, 0($t0)
	sw $t1, -8764($fp)
	lw $t0, -8764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8768($fp)
	li $t0, 1
	sw $t0, -8772($fp)
	li $t0, 4
	lw $t1, -8772($fp)
	mul $t0, $t0, $t1
	sw $t0, -8776($fp)
	lw $t0, -8776($fp)
	lw $t1, -8768($fp)
	add $t0, $t0, $t1
	sw $t0, -8780($fp)
	lw $t0, -8780($fp)
	lw $t1, 0($t0)
	sw $t1, -8784($fp)
	lw $t0, -8784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8788($fp)
	li $t0, 2
	sw $t0, -8792($fp)
	li $t0, 4
	lw $t1, -8792($fp)
	mul $t0, $t0, $t1
	sw $t0, -8796($fp)
	lw $t0, -8796($fp)
	lw $t1, -8788($fp)
	add $t0, $t0, $t1
	sw $t0, -8800($fp)
	lw $t0, -8800($fp)
	lw $t1, 0($t0)
	sw $t1, -8804($fp)
	lw $t0, -8804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8808($fp)
	li $t0, 3
	sw $t0, -8812($fp)
	li $t0, 4
	lw $t1, -8812($fp)
	mul $t0, $t0, $t1
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	lw $t1, -8808($fp)
	add $t0, $t0, $t1
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	lw $t1, 0($t0)
	sw $t1, -8824($fp)
	lw $t0, -8824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8828($fp)
	li $t0, 4
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
	lw $t0, -8844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8848($fp)
	li $t0, 5
	sw $t0, -8852($fp)
	li $t0, 4
	lw $t1, -8852($fp)
	mul $t0, $t0, $t1
	sw $t0, -8856($fp)
	lw $t0, -8856($fp)
	lw $t1, -8848($fp)
	add $t0, $t0, $t1
	sw $t0, -8860($fp)
	lw $t0, -8860($fp)
	lw $t1, 0($t0)
	sw $t1, -8864($fp)
	lw $t0, -8864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8868($fp)
	li $t0, 6
	sw $t0, -8872($fp)
	li $t0, 4
	lw $t1, -8872($fp)
	mul $t0, $t0, $t1
	sw $t0, -8876($fp)
	lw $t0, -8876($fp)
	lw $t1, -8868($fp)
	add $t0, $t0, $t1
	sw $t0, -8880($fp)
	lw $t0, -8880($fp)
	lw $t1, 0($t0)
	sw $t1, -8884($fp)
	lw $t0, -8884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -8888($fp)
	li $t0, 7
	sw $t0, -8892($fp)
	li $t0, 4
	lw $t1, -8892($fp)
	mul $t0, $t0, $t1
	sw $t0, -8896($fp)
	lw $t0, -8896($fp)
	lw $t1, -8888($fp)
	add $t0, $t0, $t1
	sw $t0, -8900($fp)
	lw $t0, -8900($fp)
	lw $t1, 0($t0)
	sw $t1, -8904($fp)
	lw $t0, -8904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -8912($fp)
	lw $t0, -8912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -8916($fp)
	lw $t0, -8916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -8920($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -8940($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -8960($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -8980($fp)
	li $t0, 3
	sw $t0, -8984($fp)
	li $t0, 4
	lw $t1, -8984($fp)
	mul $t0, $t0, $t1
	sw $t0, -8988($fp)
	lw $t0, -8988($fp)
	lw $t1, -8980($fp)
	add $t0, $t0, $t1
	sw $t0, -8992($fp)
	lw $t0, -8992($fp)
	lw $t1, 0($t0)
	sw $t1, -8996($fp)
	lw $t0, -8996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -9000($fp)
	li $t0, 4
	sw $t0, -9004($fp)
	li $t0, 4
	lw $t1, -9004($fp)
	mul $t0, $t0, $t1
	sw $t0, -9008($fp)
	lw $t0, -9008($fp)
	lw $t1, -9000($fp)
	add $t0, $t0, $t1
	sw $t0, -9012($fp)
	lw $t0, -9012($fp)
	lw $t1, 0($t0)
	sw $t1, -9016($fp)
	lw $t0, -9016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -9020($fp)
	li $t0, 5
	sw $t0, -9024($fp)
	li $t0, 4
	lw $t1, -9024($fp)
	mul $t0, $t0, $t1
	sw $t0, -9028($fp)
	lw $t0, -9028($fp)
	lw $t1, -9020($fp)
	add $t0, $t0, $t1
	sw $t0, -9032($fp)
	lw $t0, -9032($fp)
	lw $t1, 0($t0)
	sw $t1, -9036($fp)
	lw $t0, -9036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -9040($fp)
	li $t0, 6
	sw $t0, -9044($fp)
	li $t0, 4
	lw $t1, -9044($fp)
	mul $t0, $t0, $t1
	sw $t0, -9048($fp)
	lw $t0, -9048($fp)
	lw $t1, -9040($fp)
	add $t0, $t0, $t1
	sw $t0, -9052($fp)
	lw $t0, -9052($fp)
	lw $t1, 0($t0)
	sw $t1, -9056($fp)
	lw $t0, -9056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -9060($fp)
	li $t0, 0
	sw $t0, -9064($fp)
	li $t0, 4
	lw $t1, -9064($fp)
	mul $t0, $t0, $t1
	sw $t0, -9068($fp)
	lw $t0, -9068($fp)
	lw $t1, -9060($fp)
	add $t0, $t0, $t1
	sw $t0, -9072($fp)
	lw $t0, -9072($fp)
	lw $t1, 0($t0)
	sw $t1, -9076($fp)
	lw $t0, -9076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1136($fp)
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1148($fp)
	sw $t0, -9084($fp)
	lw $t0, -9084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1160($fp)
	sw $t0, -9088($fp)
	lw $t0, -9088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1172($fp)
	sw $t0, -9092($fp)
	lw $t0, -9092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -9096($fp)
	li $t0, 0
	sw $t0, -9100($fp)
	li $t0, 4
	lw $t1, -9100($fp)
	mul $t0, $t0, $t1
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	lw $t1, -9096($fp)
	add $t0, $t0, $t1
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	lw $t1, 0($t0)
	sw $t1, -9112($fp)
	lw $t0, -9112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -9116($fp)
	li $t0, 1
	sw $t0, -9120($fp)
	li $t0, 4
	lw $t1, -9120($fp)
	mul $t0, $t0, $t1
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	lw $t1, -9116($fp)
	add $t0, $t0, $t1
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	lw $t1, 0($t0)
	sw $t1, -9132($fp)
	lw $t0, -9132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -9136($fp)
	li $t0, 2
	sw $t0, -9140($fp)
	li $t0, 4
	lw $t1, -9140($fp)
	mul $t0, $t0, $t1
	sw $t0, -9144($fp)
	lw $t0, -9144($fp)
	lw $t1, -9136($fp)
	add $t0, $t0, $t1
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	lw $t1, 0($t0)
	sw $t1, -9152($fp)
	lw $t0, -9152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -9156($fp)
	li $t0, 3
	sw $t0, -9160($fp)
	li $t0, 4
	lw $t1, -9160($fp)
	mul $t0, $t0, $t1
	sw $t0, -9164($fp)
	lw $t0, -9164($fp)
	lw $t1, -9156($fp)
	add $t0, $t0, $t1
	sw $t0, -9168($fp)
	lw $t0, -9168($fp)
	lw $t1, 0($t0)
	sw $t1, -9172($fp)
	lw $t0, -9172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -9176($fp)
	li $t0, 4
	sw $t0, -9180($fp)
	li $t0, 4
	lw $t1, -9180($fp)
	mul $t0, $t0, $t1
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	lw $t1, -9176($fp)
	add $t0, $t0, $t1
	sw $t0, -9188($fp)
	lw $t0, -9188($fp)
	lw $t1, 0($t0)
	sw $t1, -9192($fp)
	lw $t0, -9192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -9196($fp)
	li $t0, 5
	sw $t0, -9200($fp)
	li $t0, 4
	lw $t1, -9200($fp)
	mul $t0, $t0, $t1
	sw $t0, -9204($fp)
	lw $t0, -9204($fp)
	lw $t1, -9196($fp)
	add $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $t0, -9208($fp)
	lw $t1, 0($t0)
	sw $t1, -9212($fp)
	lw $t0, -9212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -9216($fp)
	li $t0, 6
	sw $t0, -9220($fp)
	li $t0, 4
	lw $t1, -9220($fp)
	mul $t0, $t0, $t1
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	lw $t1, -9216($fp)
	add $t0, $t0, $t1
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	lw $t1, 0($t0)
	sw $t1, -9232($fp)
	lw $t0, -9232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -9236($fp)
	li $t0, 7
	sw $t0, -9240($fp)
	li $t0, 4
	lw $t1, -9240($fp)
	mul $t0, $t0, $t1
	sw $t0, -9244($fp)
	lw $t0, -9244($fp)
	lw $t1, -9236($fp)
	add $t0, $t0, $t1
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	lw $t1, 0($t0)
	sw $t1, -9252($fp)
	lw $t0, -9252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -9256($fp)
	li $t0, 8
	sw $t0, -9260($fp)
	li $t0, 4
	lw $t1, -9260($fp)
	mul $t0, $t0, $t1
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	lw $t1, -9256($fp)
	add $t0, $t0, $t1
	sw $t0, -9268($fp)
	lw $t0, -9268($fp)
	lw $t1, 0($t0)
	sw $t1, -9272($fp)
	lw $t0, -9272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1400($fp)
	sw $t0, -9276($fp)
	lw $t0, -9276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1412($fp)
	sw $t0, -9280($fp)
	lw $t0, -9280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -9284($fp)
	lw $t0, -9284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -9288($fp)
	lw $t0, -9288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -9292($fp)
	lw $t0, -9292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -9296($fp)
	lw $t0, -9296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9300($fp)
	li $t0, 0
	sw $t0, -9304($fp)
	li $t0, 4
	lw $t1, -9304($fp)
	mul $t0, $t0, $t1
	sw $t0, -9308($fp)
	lw $t0, -9308($fp)
	lw $t1, -9300($fp)
	add $t0, $t0, $t1
	sw $t0, -9312($fp)
	lw $t0, -9312($fp)
	lw $t1, 0($t0)
	sw $t1, -9316($fp)
	lw $t0, -9316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9320($fp)
	li $t0, 1
	sw $t0, -9324($fp)
	li $t0, 4
	lw $t1, -9324($fp)
	mul $t0, $t0, $t1
	sw $t0, -9328($fp)
	lw $t0, -9328($fp)
	lw $t1, -9320($fp)
	add $t0, $t0, $t1
	sw $t0, -9332($fp)
	lw $t0, -9332($fp)
	lw $t1, 0($t0)
	sw $t1, -9336($fp)
	lw $t0, -9336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9340($fp)
	li $t0, 2
	sw $t0, -9344($fp)
	li $t0, 4
	lw $t1, -9344($fp)
	mul $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t0, -9348($fp)
	lw $t1, -9340($fp)
	add $t0, $t0, $t1
	sw $t0, -9352($fp)
	lw $t0, -9352($fp)
	lw $t1, 0($t0)
	sw $t1, -9356($fp)
	lw $t0, -9356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9360($fp)
	li $t0, 3
	sw $t0, -9364($fp)
	li $t0, 4
	lw $t1, -9364($fp)
	mul $t0, $t0, $t1
	sw $t0, -9368($fp)
	lw $t0, -9368($fp)
	lw $t1, -9360($fp)
	add $t0, $t0, $t1
	sw $t0, -9372($fp)
	lw $t0, -9372($fp)
	lw $t1, 0($t0)
	sw $t1, -9376($fp)
	lw $t0, -9376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9380($fp)
	li $t0, 4
	sw $t0, -9384($fp)
	li $t0, 4
	lw $t1, -9384($fp)
	mul $t0, $t0, $t1
	sw $t0, -9388($fp)
	lw $t0, -9388($fp)
	lw $t1, -9380($fp)
	add $t0, $t0, $t1
	sw $t0, -9392($fp)
	lw $t0, -9392($fp)
	lw $t1, 0($t0)
	sw $t1, -9396($fp)
	lw $t0, -9396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9400($fp)
	li $t0, 5
	sw $t0, -9404($fp)
	li $t0, 4
	lw $t1, -9404($fp)
	mul $t0, $t0, $t1
	sw $t0, -9408($fp)
	lw $t0, -9408($fp)
	lw $t1, -9400($fp)
	add $t0, $t0, $t1
	sw $t0, -9412($fp)
	lw $t0, -9412($fp)
	lw $t1, 0($t0)
	sw $t1, -9416($fp)
	lw $t0, -9416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9420($fp)
	li $t0, 6
	sw $t0, -9424($fp)
	li $t0, 4
	lw $t1, -9424($fp)
	mul $t0, $t0, $t1
	sw $t0, -9428($fp)
	lw $t0, -9428($fp)
	lw $t1, -9420($fp)
	add $t0, $t0, $t1
	sw $t0, -9432($fp)
	lw $t0, -9432($fp)
	lw $t1, 0($t0)
	sw $t1, -9436($fp)
	lw $t0, -9436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9440($fp)
	li $t0, 7
	sw $t0, -9444($fp)
	li $t0, 4
	lw $t1, -9444($fp)
	mul $t0, $t0, $t1
	sw $t0, -9448($fp)
	lw $t0, -9448($fp)
	lw $t1, -9440($fp)
	add $t0, $t0, $t1
	sw $t0, -9452($fp)
	lw $t0, -9452($fp)
	lw $t1, 0($t0)
	sw $t1, -9456($fp)
	lw $t0, -9456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -9460($fp)
	li $t0, 0
	sw $t0, -9464($fp)
	li $t0, 4
	lw $t1, -9464($fp)
	mul $t0, $t0, $t1
	sw $t0, -9468($fp)
	lw $t0, -9468($fp)
	lw $t1, -9460($fp)
	add $t0, $t0, $t1
	sw $t0, -9472($fp)
	lw $t0, -9472($fp)
	lw $t1, 0($t0)
	sw $t1, -9476($fp)
	lw $t0, -9476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -9480($fp)
	li $t0, 1
	sw $t0, -9484($fp)
	li $t0, 4
	lw $t1, -9484($fp)
	mul $t0, $t0, $t1
	sw $t0, -9488($fp)
	lw $t0, -9488($fp)
	lw $t1, -9480($fp)
	add $t0, $t0, $t1
	sw $t0, -9492($fp)
	lw $t0, -9492($fp)
	lw $t1, 0($t0)
	sw $t1, -9496($fp)
	lw $t0, -9496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -9500($fp)
	li $t0, 2
	sw $t0, -9504($fp)
	li $t0, 4
	lw $t1, -9504($fp)
	mul $t0, $t0, $t1
	sw $t0, -9508($fp)
	lw $t0, -9508($fp)
	lw $t1, -9500($fp)
	add $t0, $t0, $t1
	sw $t0, -9512($fp)
	lw $t0, -9512($fp)
	lw $t1, 0($t0)
	sw $t1, -9516($fp)
	lw $t0, -9516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -9520($fp)
	li $t0, 3
	sw $t0, -9524($fp)
	li $t0, 4
	lw $t1, -9524($fp)
	mul $t0, $t0, $t1
	sw $t0, -9528($fp)
	lw $t0, -9528($fp)
	lw $t1, -9520($fp)
	add $t0, $t0, $t1
	sw $t0, -9532($fp)
	lw $t0, -9532($fp)
	lw $t1, 0($t0)
	sw $t1, -9536($fp)
	lw $t0, -9536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -9540($fp)
	li $t0, 4
	sw $t0, -9544($fp)
	li $t0, 4
	lw $t1, -9544($fp)
	mul $t0, $t0, $t1
	sw $t0, -9548($fp)
	lw $t0, -9548($fp)
	lw $t1, -9540($fp)
	add $t0, $t0, $t1
	sw $t0, -9552($fp)
	lw $t0, -9552($fp)
	lw $t1, 0($t0)
	sw $t1, -9556($fp)
	lw $t0, -9556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -9560($fp)
	li $t0, 5
	sw $t0, -9564($fp)
	li $t0, 4
	lw $t1, -9564($fp)
	mul $t0, $t0, $t1
	sw $t0, -9568($fp)
	lw $t0, -9568($fp)
	lw $t1, -9560($fp)
	add $t0, $t0, $t1
	sw $t0, -9572($fp)
	lw $t0, -9572($fp)
	lw $t1, 0($t0)
	sw $t1, -9576($fp)
	lw $t0, -9576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -9580($fp)
	lw $t0, -9580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -9584($fp)
	lw $t0, -9584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -9588($fp)
	li $t0, 0
	sw $t0, -9592($fp)
	li $t0, 4
	lw $t1, -9592($fp)
	mul $t0, $t0, $t1
	sw $t0, -9596($fp)
	lw $t0, -9596($fp)
	lw $t1, -9588($fp)
	add $t0, $t0, $t1
	sw $t0, -9600($fp)
	lw $t0, -9600($fp)
	lw $t1, 0($t0)
	sw $t1, -9604($fp)
	lw $t0, -9604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9608($fp)
	li $t0, 0
	sw $t0, -9612($fp)
	li $t0, 4
	lw $t1, -9612($fp)
	mul $t0, $t0, $t1
	sw $t0, -9616($fp)
	lw $t0, -9616($fp)
	lw $t1, -9608($fp)
	add $t0, $t0, $t1
	sw $t0, -9620($fp)
	lw $t0, -9620($fp)
	lw $t1, 0($t0)
	sw $t1, -9624($fp)
	lw $t0, -9624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9628($fp)
	li $t0, 1
	sw $t0, -9632($fp)
	li $t0, 4
	lw $t1, -9632($fp)
	mul $t0, $t0, $t1
	sw $t0, -9636($fp)
	lw $t0, -9636($fp)
	lw $t1, -9628($fp)
	add $t0, $t0, $t1
	sw $t0, -9640($fp)
	lw $t0, -9640($fp)
	lw $t1, 0($t0)
	sw $t1, -9644($fp)
	lw $t0, -9644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9648($fp)
	li $t0, 2
	sw $t0, -9652($fp)
	li $t0, 4
	lw $t1, -9652($fp)
	mul $t0, $t0, $t1
	sw $t0, -9656($fp)
	lw $t0, -9656($fp)
	lw $t1, -9648($fp)
	add $t0, $t0, $t1
	sw $t0, -9660($fp)
	lw $t0, -9660($fp)
	lw $t1, 0($t0)
	sw $t1, -9664($fp)
	lw $t0, -9664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9668($fp)
	li $t0, 3
	sw $t0, -9672($fp)
	li $t0, 4
	lw $t1, -9672($fp)
	mul $t0, $t0, $t1
	sw $t0, -9676($fp)
	lw $t0, -9676($fp)
	lw $t1, -9668($fp)
	add $t0, $t0, $t1
	sw $t0, -9680($fp)
	lw $t0, -9680($fp)
	lw $t1, 0($t0)
	sw $t1, -9684($fp)
	lw $t0, -9684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9688($fp)
	li $t0, 4
	sw $t0, -9692($fp)
	li $t0, 4
	lw $t1, -9692($fp)
	mul $t0, $t0, $t1
	sw $t0, -9696($fp)
	lw $t0, -9696($fp)
	lw $t1, -9688($fp)
	add $t0, $t0, $t1
	sw $t0, -9700($fp)
	lw $t0, -9700($fp)
	lw $t1, 0($t0)
	sw $t1, -9704($fp)
	lw $t0, -9704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9708($fp)
	li $t0, 5
	sw $t0, -9712($fp)
	li $t0, 4
	lw $t1, -9712($fp)
	mul $t0, $t0, $t1
	sw $t0, -9716($fp)
	lw $t0, -9716($fp)
	lw $t1, -9708($fp)
	add $t0, $t0, $t1
	sw $t0, -9720($fp)
	lw $t0, -9720($fp)
	lw $t1, 0($t0)
	sw $t1, -9724($fp)
	lw $t0, -9724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9728($fp)
	li $t0, 6
	sw $t0, -9732($fp)
	li $t0, 4
	lw $t1, -9732($fp)
	mul $t0, $t0, $t1
	sw $t0, -9736($fp)
	lw $t0, -9736($fp)
	lw $t1, -9728($fp)
	add $t0, $t0, $t1
	sw $t0, -9740($fp)
	lw $t0, -9740($fp)
	lw $t1, 0($t0)
	sw $t1, -9744($fp)
	lw $t0, -9744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9748($fp)
	li $t0, 7
	sw $t0, -9752($fp)
	li $t0, 4
	lw $t1, -9752($fp)
	mul $t0, $t0, $t1
	sw $t0, -9756($fp)
	lw $t0, -9756($fp)
	lw $t1, -9748($fp)
	add $t0, $t0, $t1
	sw $t0, -9760($fp)
	lw $t0, -9760($fp)
	lw $t1, 0($t0)
	sw $t1, -9764($fp)
	lw $t0, -9764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9768($fp)
	li $t0, 8
	sw $t0, -9772($fp)
	li $t0, 4
	lw $t1, -9772($fp)
	mul $t0, $t0, $t1
	sw $t0, -9776($fp)
	lw $t0, -9776($fp)
	lw $t1, -9768($fp)
	add $t0, $t0, $t1
	sw $t0, -9780($fp)
	lw $t0, -9780($fp)
	lw $t1, 0($t0)
	sw $t1, -9784($fp)
	lw $t0, -9784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9788($fp)
	li $t0, 9
	sw $t0, -9792($fp)
	li $t0, 4
	lw $t1, -9792($fp)
	mul $t0, $t0, $t1
	sw $t0, -9796($fp)
	lw $t0, -9796($fp)
	lw $t1, -9788($fp)
	add $t0, $t0, $t1
	sw $t0, -9800($fp)
	lw $t0, -9800($fp)
	lw $t1, 0($t0)
	sw $t1, -9804($fp)
	lw $t0, -9804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2096($fp)
	sw $t0, -9808($fp)
	lw $t0, -9808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2108($fp)
	sw $t0, -9812($fp)
	lw $t0, -9812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2120($fp)
	sw $t0, -9816($fp)
	lw $t0, -9816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2132($fp)
	sw $t0, -9820($fp)
	lw $t0, -9820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2144($fp)
	sw $t0, -9824($fp)
	lw $t0, -9824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -9828($fp)
	li $t0, 0
	sw $t0, -9832($fp)
	li $t0, 4
	lw $t1, -9832($fp)
	mul $t0, $t0, $t1
	sw $t0, -9836($fp)
	lw $t0, -9836($fp)
	lw $t1, -9828($fp)
	add $t0, $t0, $t1
	sw $t0, -9840($fp)
	lw $t0, -9840($fp)
	lw $t1, 0($t0)
	sw $t1, -9844($fp)
	lw $t0, -9844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2180($fp)
	sw $t0, -9848($fp)
	lw $t0, -9848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2192($fp)
	sw $t0, -9852($fp)
	lw $t0, -9852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2204($fp)
	sw $t0, -9856($fp)
	lw $t0, -9856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -9860($fp)
	li $t0, 0
	sw $t0, -9864($fp)
	li $t0, 4
	lw $t1, -9864($fp)
	mul $t0, $t0, $t1
	sw $t0, -9868($fp)
	lw $t0, -9868($fp)
	lw $t1, -9860($fp)
	add $t0, $t0, $t1
	sw $t0, -9872($fp)
	lw $t0, -9872($fp)
	lw $t1, 0($t0)
	sw $t1, -9876($fp)
	lw $t0, -9876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -9880($fp)
	li $t0, 1
	sw $t0, -9884($fp)
	li $t0, 4
	lw $t1, -9884($fp)
	mul $t0, $t0, $t1
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	lw $t1, -9880($fp)
	add $t0, $t0, $t1
	sw $t0, -9892($fp)
	lw $t0, -9892($fp)
	lw $t1, 0($t0)
	sw $t1, -9896($fp)
	lw $t0, -9896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -9900($fp)
	li $t0, 2
	sw $t0, -9904($fp)
	li $t0, 4
	lw $t1, -9904($fp)
	mul $t0, $t0, $t1
	sw $t0, -9908($fp)
	lw $t0, -9908($fp)
	lw $t1, -9900($fp)
	add $t0, $t0, $t1
	sw $t0, -9912($fp)
	lw $t0, -9912($fp)
	lw $t1, 0($t0)
	sw $t1, -9916($fp)
	lw $t0, -9916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -9920($fp)
	li $t0, 3
	sw $t0, -9924($fp)
	li $t0, 4
	lw $t1, -9924($fp)
	mul $t0, $t0, $t1
	sw $t0, -9928($fp)
	lw $t0, -9928($fp)
	lw $t1, -9920($fp)
	add $t0, $t0, $t1
	sw $t0, -9932($fp)
	lw $t0, -9932($fp)
	lw $t1, 0($t0)
	sw $t1, -9936($fp)
	lw $t0, -9936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2312($fp)
	sw $t0, -9940($fp)
	lw $t0, -9940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2324($fp)
	sw $t0, -9944($fp)
	lw $t0, -9944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2336($fp)
	sw $t0, -9948($fp)
	lw $t0, -9948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2348($fp)
	sw $t0, -9952($fp)
	lw $t0, -9952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2360($fp)
	sw $t0, -9956($fp)
	lw $t0, -9956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2372($fp)
	sw $t0, -9960($fp)
	lw $t0, -9960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2384($fp)
	sw $t0, -9964($fp)
	lw $t0, -9964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -9968($fp)
	lw $t0, -9968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -9972($fp)
	lw $t0, -9972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2420($fp)
	sw $t0, -9976($fp)
	lw $t0, -9976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2432($fp)
	sw $t0, -9980($fp)
	lw $t0, -9980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2444($fp)
	sw $t0, -9984($fp)
	lw $t0, -9984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2456($fp)
	sw $t0, -9988($fp)
	lw $t0, -9988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2468($fp)
	sw $t0, -9992($fp)
	lw $t0, -9992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2480($fp)
	sw $t0, -9996($fp)
	lw $t0, -9996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2492($fp)
	sw $t0, -10000($fp)
	lw $t0, -10000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2504($fp)
	sw $t0, -10004($fp)
	lw $t0, -10004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2516($fp)
	sw $t0, -10008($fp)
	lw $t0, -10008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2528($fp)
	sw $t0, -10012($fp)
	lw $t0, -10012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2540($fp)
	sw $t0, -10016($fp)
	lw $t0, -10016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2552($fp)
	sw $t0, -10020($fp)
	lw $t0, -10020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -10024($fp)
	li $t0, 0
	sw $t0, -10028($fp)
	li $t0, 4
	lw $t1, -10028($fp)
	mul $t0, $t0, $t1
	sw $t0, -10032($fp)
	lw $t0, -10032($fp)
	lw $t1, -10024($fp)
	add $t0, $t0, $t1
	sw $t0, -10036($fp)
	lw $t0, -10036($fp)
	lw $t1, 0($t0)
	sw $t1, -10040($fp)
	lw $t0, -10040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -10044($fp)
	li $t0, 1
	sw $t0, -10048($fp)
	li $t0, 4
	lw $t1, -10048($fp)
	mul $t0, $t0, $t1
	sw $t0, -10052($fp)
	lw $t0, -10052($fp)
	lw $t1, -10044($fp)
	add $t0, $t0, $t1
	sw $t0, -10056($fp)
	lw $t0, -10056($fp)
	lw $t1, 0($t0)
	sw $t1, -10060($fp)
	lw $t0, -10060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -10064($fp)
	li $t0, 2
	sw $t0, -10068($fp)
	li $t0, 4
	lw $t1, -10068($fp)
	mul $t0, $t0, $t1
	sw $t0, -10072($fp)
	lw $t0, -10072($fp)
	lw $t1, -10064($fp)
	add $t0, $t0, $t1
	sw $t0, -10076($fp)
	lw $t0, -10076($fp)
	lw $t1, 0($t0)
	sw $t1, -10080($fp)
	lw $t0, -10080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -10084($fp)
	li $t0, 3
	sw $t0, -10088($fp)
	li $t0, 4
	lw $t1, -10088($fp)
	mul $t0, $t0, $t1
	sw $t0, -10092($fp)
	lw $t0, -10092($fp)
	lw $t1, -10084($fp)
	add $t0, $t0, $t1
	sw $t0, -10096($fp)
	lw $t0, -10096($fp)
	lw $t1, 0($t0)
	sw $t1, -10100($fp)
	lw $t0, -10100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -10104($fp)
	li $t0, 4
	sw $t0, -10108($fp)
	li $t0, 4
	lw $t1, -10108($fp)
	mul $t0, $t0, $t1
	sw $t0, -10112($fp)
	lw $t0, -10112($fp)
	lw $t1, -10104($fp)
	add $t0, $t0, $t1
	sw $t0, -10116($fp)
	lw $t0, -10116($fp)
	lw $t1, 0($t0)
	sw $t1, -10120($fp)
	lw $t0, -10120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -10124($fp)
	li $t0, 5
	sw $t0, -10128($fp)
	li $t0, 4
	lw $t1, -10128($fp)
	mul $t0, $t0, $t1
	sw $t0, -10132($fp)
	lw $t0, -10132($fp)
	lw $t1, -10124($fp)
	add $t0, $t0, $t1
	sw $t0, -10136($fp)
	lw $t0, -10136($fp)
	lw $t1, 0($t0)
	sw $t1, -10140($fp)
	lw $t0, -10140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -10144($fp)
	li $t0, 6
	sw $t0, -10148($fp)
	li $t0, 4
	lw $t1, -10148($fp)
	mul $t0, $t0, $t1
	sw $t0, -10152($fp)
	lw $t0, -10152($fp)
	lw $t1, -10144($fp)
	add $t0, $t0, $t1
	sw $t0, -10156($fp)
	lw $t0, -10156($fp)
	lw $t1, 0($t0)
	sw $t1, -10160($fp)
	lw $t0, -10160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -10164($fp)
	li $t0, 7
	sw $t0, -10168($fp)
	li $t0, 4
	lw $t1, -10168($fp)
	mul $t0, $t0, $t1
	sw $t0, -10172($fp)
	lw $t0, -10172($fp)
	lw $t1, -10164($fp)
	add $t0, $t0, $t1
	sw $t0, -10176($fp)
	lw $t0, -10176($fp)
	lw $t1, 0($t0)
	sw $t1, -10180($fp)
	lw $t0, -10180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -10184($fp)
	li $t0, 8
	sw $t0, -10188($fp)
	li $t0, 4
	lw $t1, -10188($fp)
	mul $t0, $t0, $t1
	sw $t0, -10192($fp)
	lw $t0, -10192($fp)
	lw $t1, -10184($fp)
	add $t0, $t0, $t1
	sw $t0, -10196($fp)
	lw $t0, -10196($fp)
	lw $t1, 0($t0)
	sw $t1, -10200($fp)
	lw $t0, -10200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2780($fp)
	sw $t0, -10204($fp)
	lw $t0, -10204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2792($fp)
	sw $t0, -10208($fp)
	lw $t0, -10208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -10212($fp)
	li $t0, 0
	sw $t0, -10216($fp)
	li $t0, 4
	lw $t1, -10216($fp)
	mul $t0, $t0, $t1
	sw $t0, -10220($fp)
	lw $t0, -10220($fp)
	lw $t1, -10212($fp)
	add $t0, $t0, $t1
	sw $t0, -10224($fp)
	lw $t0, -10224($fp)
	lw $t1, 0($t0)
	sw $t1, -10228($fp)
	lw $t0, -10228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -10232($fp)
	li $t0, 1
	sw $t0, -10236($fp)
	li $t0, 4
	lw $t1, -10236($fp)
	mul $t0, $t0, $t1
	sw $t0, -10240($fp)
	lw $t0, -10240($fp)
	lw $t1, -10232($fp)
	add $t0, $t0, $t1
	sw $t0, -10244($fp)
	lw $t0, -10244($fp)
	lw $t1, 0($t0)
	sw $t1, -10248($fp)
	lw $t0, -10248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -10252($fp)
	li $t0, 2
	sw $t0, -10256($fp)
	li $t0, 4
	lw $t1, -10256($fp)
	mul $t0, $t0, $t1
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	lw $t1, -10252($fp)
	add $t0, $t0, $t1
	sw $t0, -10264($fp)
	lw $t0, -10264($fp)
	lw $t1, 0($t0)
	sw $t1, -10268($fp)
	lw $t0, -10268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2876($fp)
	sw $t0, -10272($fp)
	lw $t0, -10272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -10276($fp)
	li $t0, 0
	sw $t0, -10280($fp)
	li $t0, 4
	lw $t1, -10280($fp)
	mul $t0, $t0, $t1
	sw $t0, -10284($fp)
	lw $t0, -10284($fp)
	lw $t1, -10276($fp)
	add $t0, $t0, $t1
	sw $t0, -10288($fp)
	lw $t0, -10288($fp)
	lw $t1, 0($t0)
	sw $t1, -10292($fp)
	lw $t0, -10292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -10296($fp)
	li $t0, 1
	sw $t0, -10300($fp)
	li $t0, 4
	lw $t1, -10300($fp)
	mul $t0, $t0, $t1
	sw $t0, -10304($fp)
	lw $t0, -10304($fp)
	lw $t1, -10296($fp)
	add $t0, $t0, $t1
	sw $t0, -10308($fp)
	lw $t0, -10308($fp)
	lw $t1, 0($t0)
	sw $t1, -10312($fp)
	lw $t0, -10312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -10316($fp)
	li $t0, 2
	sw $t0, -10320($fp)
	li $t0, 4
	lw $t1, -10320($fp)
	mul $t0, $t0, $t1
	sw $t0, -10324($fp)
	lw $t0, -10324($fp)
	lw $t1, -10316($fp)
	add $t0, $t0, $t1
	sw $t0, -10328($fp)
	lw $t0, -10328($fp)
	lw $t1, 0($t0)
	sw $t1, -10332($fp)
	lw $t0, -10332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -10336($fp)
	li $t0, 3
	sw $t0, -10340($fp)
	li $t0, 4
	lw $t1, -10340($fp)
	mul $t0, $t0, $t1
	sw $t0, -10344($fp)
	lw $t0, -10344($fp)
	lw $t1, -10336($fp)
	add $t0, $t0, $t1
	sw $t0, -10348($fp)
	lw $t0, -10348($fp)
	lw $t1, 0($t0)
	sw $t1, -10352($fp)
	lw $t0, -10352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -10356($fp)
	li $t0, 4
	sw $t0, -10360($fp)
	li $t0, 4
	lw $t1, -10360($fp)
	mul $t0, $t0, $t1
	sw $t0, -10364($fp)
	lw $t0, -10364($fp)
	lw $t1, -10356($fp)
	add $t0, $t0, $t1
	sw $t0, -10368($fp)
	lw $t0, -10368($fp)
	lw $t1, 0($t0)
	sw $t1, -10372($fp)
	lw $t0, -10372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3008($fp)
	sw $t0, -10376($fp)
	lw $t0, -10376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3020($fp)
	sw $t0, -10380($fp)
	lw $t0, -10380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -332
	sw $t0, -10384($fp)
	li $t0, 0
	sw $t0, -10388($fp)
	li $t0, 4
	lw $t1, -10388($fp)
	mul $t0, $t0, $t1
	sw $t0, -10392($fp)
	lw $t0, -10392($fp)
	lw $t1, -10384($fp)
	add $t0, $t0, $t1
	sw $t0, -10396($fp)
	lw $t0, -10396($fp)
	lw $t1, 0($t0)
	sw $t1, -10400($fp)
	lw $t0, -10400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3056($fp)
	sw $t0, -10404($fp)
	lw $t0, -10404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -10408($fp)
	li $t0, 0
	sw $t0, -10412($fp)
	li $t0, 4
	lw $t1, -10412($fp)
	mul $t0, $t0, $t1
	sw $t0, -10416($fp)
	lw $t0, -10416($fp)
	lw $t1, -10408($fp)
	add $t0, $t0, $t1
	sw $t0, -10420($fp)
	lw $t0, -10420($fp)
	lw $t1, 0($t0)
	sw $t1, -10424($fp)
	lw $t0, -10424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3092($fp)
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -10432($fp)
	li $t0, 0
	sw $t0, -10436($fp)
	li $t0, 4
	lw $t1, -10436($fp)
	mul $t0, $t0, $t1
	sw $t0, -10440($fp)
	lw $t0, -10440($fp)
	lw $t1, -10432($fp)
	add $t0, $t0, $t1
	sw $t0, -10444($fp)
	lw $t0, -10444($fp)
	lw $t1, 0($t0)
	sw $t1, -10448($fp)
	lw $t0, -10448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -10452($fp)
	li $t0, 1
	sw $t0, -10456($fp)
	li $t0, 4
	lw $t1, -10456($fp)
	mul $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	lw $t1, -10452($fp)
	add $t0, $t0, $t1
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	lw $t1, 0($t0)
	sw $t1, -10468($fp)
	lw $t0, -10468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -10472($fp)
	li $t0, 2
	sw $t0, -10476($fp)
	li $t0, 4
	lw $t1, -10476($fp)
	mul $t0, $t0, $t1
	sw $t0, -10480($fp)
	lw $t0, -10480($fp)
	lw $t1, -10472($fp)
	add $t0, $t0, $t1
	sw $t0, -10484($fp)
	lw $t0, -10484($fp)
	lw $t1, 0($t0)
	sw $t1, -10488($fp)
	lw $t0, -10488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -10492($fp)
	li $t0, 3
	sw $t0, -10496($fp)
	li $t0, 4
	lw $t1, -10496($fp)
	mul $t0, $t0, $t1
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	lw $t1, -10492($fp)
	add $t0, $t0, $t1
	sw $t0, -10504($fp)
	lw $t0, -10504($fp)
	lw $t1, 0($t0)
	sw $t1, -10508($fp)
	lw $t0, -10508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -10512($fp)
	li $t0, 4
	sw $t0, -10516($fp)
	li $t0, 4
	lw $t1, -10516($fp)
	mul $t0, $t0, $t1
	sw $t0, -10520($fp)
	lw $t0, -10520($fp)
	lw $t1, -10512($fp)
	add $t0, $t0, $t1
	sw $t0, -10524($fp)
	lw $t0, -10524($fp)
	lw $t1, 0($t0)
	sw $t1, -10528($fp)
	lw $t0, -10528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -10532($fp)
	li $t0, 5
	sw $t0, -10536($fp)
	li $t0, 4
	lw $t1, -10536($fp)
	mul $t0, $t0, $t1
	sw $t0, -10540($fp)
	lw $t0, -10540($fp)
	lw $t1, -10532($fp)
	add $t0, $t0, $t1
	sw $t0, -10544($fp)
	lw $t0, -10544($fp)
	lw $t1, 0($t0)
	sw $t1, -10548($fp)
	lw $t0, -10548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 28579
	sw $t0, -10552($fp)
	jal f9
	sw $v0, -10556($fp)
	addi $sp, $sp, 4
	lw $t0, -10552($fp)
	lw $t1, -10556($fp)
	add $t0, $t0, $t1
	sw $t0, -10560($fp)
	lw $ra, -4($fp)
	lw $v0, -10560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -64
	li $t0, 2518
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 35487
	sw $t0, -28($fp)
	li $t0, 41406
	sw $t0, -32($fp)
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	bgt $t1, $t2, label1260
	j label1261
label1260:
	li $t0, 1
	sw $t0, -24($fp)
label1261:
	li $t0, 31705
	sw $t0, -36($fp)
	lw $t1, -24($fp)
	lw $t2, -36($fp)
	beq $t1, $t2, label1258
	j label1259
label1258:
	li $t0, 1
	sw $t0, -20($fp)
label1259:
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	li $t0, 55198
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	sub $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t1, -52($fp)
	lw $t2, -56($fp)
	beq $t1, $t2, label1262
	j label1263
label1262:
	li $t0, 1
	sw $t0, -40($fp)
label1263:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -60($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 2550
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
	jal f14
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
