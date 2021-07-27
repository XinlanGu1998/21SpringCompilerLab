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
	addi $sp, $sp, -1504
	li $t0, 64806
	sw $t0, -44($fp)
	addi $t0, $fp, -36
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
	li $t0, 56778
	sw $t0, -68($fp)
	addi $t0, $fp, -36
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
	li $t0, 35313
	sw $t0, -92($fp)
	addi $t0, $fp, -36
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
	li $t0, 12182
	sw $t0, -116($fp)
	addi $t0, $fp, -36
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
	li $t0, 9750
	sw $t0, -140($fp)
	addi $t0, $fp, -36
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
	li $t0, 20559
	sw $t0, -164($fp)
	addi $t0, $fp, -36
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
	li $t0, 34812
	sw $t0, -188($fp)
	addi $t0, $fp, -36
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
	li $t0, 10179
	sw $t0, -212($fp)
	addi $t0, $fp, -36
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
	li $t0, 38188
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 26546
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 22386
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 15039
	sw $t0, -272($fp)
	addi $t0, $fp, -40
	sw $t0, -276($fp)
	li $t0, 0
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
	li $t0, 44375
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	lw $t0, -240($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -480($fp)
	li $t0, 0
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
	lw $t0, -300($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -504($fp)
	addi $t0, $fp, -40
	sw $t0, -508($fp)
	li $t0, 0
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
	li $t0, 4
	lw $t1, -524($fp)
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	lw $t1, 0($t0)
	sw $t1, -536($fp)
	lw $ra, -4($fp)
	lw $v0, -536($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label121:
	lw $t0, -300($fp)
	sw $t0, -540($fp)
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label123
label122:
	lw $t0, -252($fp)
	sw $t0, -544($fp)
	li $t0, 0
	lw $t1, -544($fp)
	sub $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 0
	sw $t0, -552($fp)
	li $t0, 0
	sw $t0, -556($fp)
	li $t0, 0
	sw $t0, -560($fp)
	lw $t0, -300($fp)
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label131
label131:
	li $t0, 1
	sw $t0, -560($fp)
label132:
	li $t0, 0
	lw $t1, -560($fp)
	sub $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -556($fp)
label130:
	addi $t0, $fp, -36
	sw $t0, -572($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -592($fp)
	li $t0, 9485
	sw $t0, -596($fp)
	lw $t1, -596($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -592($fp)
label134:
	lw $t0, -588($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t1, -556($fp)
	lw $t2, -600($fp)
	bne $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -552($fp)
label128:
	j label126
label125:
	li $t0, 0
	sw $t0, -604($fp)
	lw $t0, -300($fp)
	sw $t0, -608($fp)
	li $t0, 0
	sw $t0, -612($fp)
	lw $t0, -240($fp)
	sw $t0, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label137:
	li $t0, 1
	sw $t0, -612($fp)
label138:
	li $t0, 19570
	sw $t0, -620($fp)
	lw $t0, -612($fp)
	lw $t1, -620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -624($fp)
	lw $t0, -300($fp)
	sw $t0, -628($fp)
	lw $t0, -624($fp)
	lw $t1, -628($fp)
	mul $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t1, -608($fp)
	lw $t2, -632($fp)
	blt $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -604($fp)
label136:
label126:
	j label121
label123:
	li $t0, 0
	sw $t0, -636($fp)
	lw $t0, -240($fp)
	sw $t0, -640($fp)
	lw $t1, -640($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label142:
	li $t0, 1
	sw $t0, -636($fp)
label143:
	li $t0, 8919
	sw $t0, -644($fp)
	lw $t0, -636($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t1, -648($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 50616
	sw $t0, -692($fp)
	addi $t0, $fp, -688
	sw $t0, -696($fp)
	li $t0, 0
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
	li $t0, 64885
	sw $t0, -716($fp)
	addi $t0, $fp, -688
	sw $t0, -720($fp)
	li $t0, 1
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
	li $t0, 10027
	sw $t0, -740($fp)
	addi $t0, $fp, -688
	sw $t0, -744($fp)
	li $t0, 2
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
	li $t0, 10129
	sw $t0, -764($fp)
	addi $t0, $fp, -688
	sw $t0, -768($fp)
	li $t0, 3
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
	li $t0, 39909
	sw $t0, -788($fp)
	addi $t0, $fp, -688
	sw $t0, -792($fp)
	li $t0, 4
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
	li $t0, 61790
	sw $t0, -812($fp)
	addi $t0, $fp, -688
	sw $t0, -816($fp)
	li $t0, 5
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
	li $t0, 30794
	sw $t0, -836($fp)
	addi $t0, $fp, -688
	sw $t0, -840($fp)
	li $t0, 6
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
	li $t0, 20717
	sw $t0, -860($fp)
	addi $t0, $fp, -688
	sw $t0, -864($fp)
	li $t0, 7
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -864($fp)
	lw $t1, -872($fp)
	add $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -860($fp)
	lw $t1, -876($fp)
	sw $t0, 0($t1)
	lw $t0, -876($fp)
	lw $t1, 0($t0)
	sw $t1, -880($fp)
	li $t0, 26630
	sw $t0, -884($fp)
	addi $t0, $fp, -688
	sw $t0, -888($fp)
	li $t0, 8
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -888($fp)
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -884($fp)
	lw $t1, -900($fp)
	sw $t0, 0($t1)
	lw $t0, -900($fp)
	lw $t1, 0($t0)
	sw $t1, -904($fp)
	li $t0, 35977
	sw $t0, -908($fp)
	addi $t0, $fp, -688
	sw $t0, -912($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -932($fp)
	li $t0, 18165
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label146:
	addi $t0, $fp, -688
	sw $t0, -940($fp)
	lw $t0, -252($fp)
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
	li $t0, 25900
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label147:
	li $t0, 1
	sw $t0, -960($fp)
label148:
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	mul $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t1, -968($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -932($fp)
label145:
	j label141
label140:
	li $t0, 0
	sw $t0, -972($fp)
	jal f6
	sw $v0, -976($fp)
	addi $sp, $sp, 4
	jal f6
	sw $v0, -980($fp)
	addi $sp, $sp, 4
	li $t0, 27219
	sw $t0, -984($fp)
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -988($fp)
	li $t0, 53478
	sw $t0, -992($fp)
	lw $t0, -988($fp)
	lw $t1, -992($fp)
	mul $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t1, -976($fp)
	lw $t2, -996($fp)
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -972($fp)
label150:
label141:
	addi $t0, $fp, -36
	sw $t0, -1000($fp)
	li $t0, 0
	sw $t0, -1004($fp)
	li $t0, 4
	lw $t1, -1004($fp)
	mul $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, 0($t0)
	sw $t1, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
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
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1040($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -1060($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -1080($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -1100($fp)
	li $t0, 5
	sw $t0, -1104($fp)
	li $t0, 4
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, 0($t0)
	sw $t1, -1116($fp)
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1120($fp)
	li $t0, 6
	sw $t0, -1124($fp)
	li $t0, 4
	lw $t1, -1124($fp)
	mul $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	lw $t1, -1120($fp)
	add $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	lw $t1, 0($t0)
	sw $t1, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1140($fp)
	li $t0, 7
	sw $t0, -1144($fp)
	li $t0, 4
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	lw $t1, 0($t0)
	sw $t1, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1172($fp)
	li $t0, 0
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
	lw $t0, -300($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1196($fp)
	li $t0, 0
	sw $t0, -1200($fp)
	addi $t0, $fp, -40
	sw $t0, -1204($fp)
	li $t0, 38082
	sw $t0, -1208($fp)
	lw $t0, -264($fp)
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	li $t0, 4
	lw $t1, -1216($fp)
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	lw $t1, 0($t0)
	sw $t1, -1228($fp)
	addi $t0, $fp, -40
	sw $t0, -1232($fp)
	li $t0, 0
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
	lw $t1, -1228($fp)
	lw $t2, -1248($fp)
	beq $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -1200($fp)
label154:
	addi $t0, $fp, -40
	sw $t0, -1252($fp)
	li $t0, 7359
	sw $t0, -1256($fp)
	li $t0, 47149
	sw $t0, -1260($fp)
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1264($fp)
	li $t0, 4
	lw $t1, -1264($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	lw $t1, -1200($fp)
	lw $t2, -1276($fp)
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -1196($fp)
label152:
	lw $ra, -4($fp)
	lw $v0, -1196($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 46690
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -1280($fp)
label156:
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
	sw $t0, -1428($fp)
	li $t0, 7
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
	lw $t0, -240($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1460($fp)
	li $t0, 0
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
	lw $t0, -300($fp)
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1484($fp)
	addi $t0, $fp, -40
	sw $t0, -1488($fp)
	lw $t0, -300($fp)
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
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label157
label157:
	li $t0, 1
	sw $t0, -1484($fp)
label158:
	lw $t0, -1484($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -1508($fp)
	lw $ra, -4($fp)
	lw $v0, -1508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -748
	li $t0, 33905
	sw $t0, -48($fp)
	addi $t0, $fp, -44
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
	li $t0, 3999
	sw $t0, -72($fp)
	addi $t0, $fp, -44
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
	li $t0, 61729
	sw $t0, -96($fp)
	addi $t0, $fp, -44
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
	li $t0, 12745
	sw $t0, -120($fp)
	addi $t0, $fp, -44
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
	li $t0, 13758
	sw $t0, -144($fp)
	addi $t0, $fp, -44
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
	li $t0, 59303
	sw $t0, -168($fp)
	addi $t0, $fp, -44
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
	li $t0, 6128
	sw $t0, -192($fp)
	addi $t0, $fp, -44
	sw $t0, -196($fp)
	li $t0, 6
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
	li $t0, 9136
	sw $t0, -216($fp)
	addi $t0, $fp, -44
	sw $t0, -220($fp)
	li $t0, 7
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
	li $t0, 3253
	sw $t0, -240($fp)
	addi $t0, $fp, -44
	sw $t0, -244($fp)
	li $t0, 8
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
	li $t0, 25698
	sw $t0, -264($fp)
	addi $t0, $fp, -44
	sw $t0, -268($fp)
	li $t0, 9
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
	li $t0, 18055
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 53869
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 0
	sw $t0, -312($fp)
	addi $t0, $fp, -44
	sw $t0, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	li $t0, 25047
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label163:
	lw $t0, 8($fp)
	sw $t0, -328($fp)
	lw $t1, -328($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -320($fp)
label162:
	li $t0, 4
	lw $t1, -320($fp)
	mul $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t1, 0($t0)
	sw $t1, -340($fp)
	li $t0, 0
	sw $t0, -344($fp)
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	lw $t0, -292($fp)
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
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label166:
	li $t0, 64956
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -344($fp)
label165:
	li $t0, 0
	sw $t0, -372($fp)
	lw $t0, -292($fp)
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -372($fp)
label168:
	li $t0, 63998
	sw $t0, -380($fp)
	lw $t0, -372($fp)
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 28083
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -392($fp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -396($fp)
	addi $sp, $sp, 16
	lw $t0, -340($fp)
	lw $t1, -396($fp)
	mul $t0, $t0, $t1
	sw $t0, -400($fp)
	li $t0, 0
	sw $t0, -404($fp)
	li $t0, 0
	sw $t0, -408($fp)
	lw $t0, 4($fp)
	sw $t0, -412($fp)
	li $t0, 50967
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	beq $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -408($fp)
label172:
	lw $t0, 8($fp)
	sw $t0, -420($fp)
	lw $t1, -408($fp)
	lw $t2, -420($fp)
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -404($fp)
label170:
	li $t0, 0
	sw $t0, -424($fp)
	lw $t0, 8($fp)
	sw $t0, -428($fp)
	lw $t1, -428($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -424($fp)
label174:
	li $t0, 0
	lw $t1, -424($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	li $t0, 20138
	sw $t0, -436($fp)
	li $t0, 0
	lw $t1, -436($fp)
	sub $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, 12($fp)
	sw $t0, -444($fp)
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	sub $t0, $t0, $t1
	sw $t0, -448($fp)
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -452($fp)
	addi $sp, $sp, 16
	li $t0, 65234
	sw $t0, -456($fp)
	lw $t0, -452($fp)
	lw $t1, -456($fp)
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, 8($fp)
	sw $t0, -464($fp)
	li $t0, 29256
	sw $t0, -468($fp)
	lw $t0, -464($fp)
	lw $t1, -468($fp)
	add $t0, $t0, $t1
	sw $t0, -472($fp)
	li $t0, 0
	sw $t0, -476($fp)
	lw $t0, -292($fp)
	sw $t0, -480($fp)
	lw $t0, 8($fp)
	sw $t0, -484($fp)
	lw $t0, -480($fp)
	lw $t1, -484($fp)
	mul $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t1, -488($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label177
label177:
	li $t0, 24337
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -476($fp)
label176:
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -496($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -496($fp)
	sub $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t1, -400($fp)
	lw $t2, -500($fp)
	bgt $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -312($fp)
label160:
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -664($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -684($fp)
	li $t0, 9
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
	lw $t0, -292($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -712($fp)
	li $t0, 38303
	sw $t0, -716($fp)
	lw $t0, 8($fp)
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -724($fp)
	jal f6
	sw $v0, -728($fp)
	addi $sp, $sp, 4
	lw $t0, -724($fp)
	lw $t1, -728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -732($fp)
	lw $t0, 4($fp)
	sw $t0, -736($fp)
	lw $t1, -732($fp)
	lw $t2, -736($fp)
	blt $t1, $t2, label180
	j label179
label180:
	jal f6
	sw $v0, -740($fp)
	addi $sp, $sp, 4
	lw $t0, 12($fp)
	sw $t0, -744($fp)
	li $t0, 11331
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t1, -740($fp)
	lw $t2, -752($fp)
	bge $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -712($fp)
label179:
	lw $ra, -4($fp)
	lw $v0, -712($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4624
	li $t0, 26917
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 26246
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 49414
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 63887
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 34747
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 56773
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 45500
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 15901
	sw $t0, -200($fp)
	addi $t0, $fp, -40
	sw $t0, -204($fp)
	li $t0, 0
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
	li $t0, 25142
	sw $t0, -224($fp)
	addi $t0, $fp, -40
	sw $t0, -228($fp)
	li $t0, 1
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
	li $t0, 49499
	sw $t0, -248($fp)
	addi $t0, $fp, -40
	sw $t0, -252($fp)
	li $t0, 2
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
	li $t0, 12095
	sw $t0, -272($fp)
	addi $t0, $fp, -40
	sw $t0, -276($fp)
	li $t0, 3
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
	li $t0, 37887
	sw $t0, -296($fp)
	addi $t0, $fp, -40
	sw $t0, -300($fp)
	li $t0, 4
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
	li $t0, 63258
	sw $t0, -320($fp)
	addi $t0, $fp, -40
	sw $t0, -324($fp)
	li $t0, 5
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
	li $t0, 5862
	sw $t0, -344($fp)
	addi $t0, $fp, -40
	sw $t0, -348($fp)
	li $t0, 6
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
	li $t0, 44015
	sw $t0, -368($fp)
	addi $t0, $fp, -40
	sw $t0, -372($fp)
	li $t0, 7
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
	li $t0, 6858
	sw $t0, -392($fp)
	addi $t0, $fp, -40
	sw $t0, -396($fp)
	li $t0, 8
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
	li $t0, 9115
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 4177
	sw $t0, -428($fp)
	addi $t0, $fp, -48
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
	li $t0, 24914
	sw $t0, -452($fp)
	addi $t0, $fp, -48
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
	li $t0, 62984
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 29225
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 52997
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 61447
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 28645
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 11798
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 25167
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 48783
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 62766
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 24865
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 21551
	sw $t0, -596($fp)
	addi $t0, $fp, -56
	sw $t0, -600($fp)
	li $t0, 0
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
	li $t0, 8561
	sw $t0, -620($fp)
	addi $t0, $fp, -56
	sw $t0, -624($fp)
	li $t0, 1
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
	li $t0, 51783
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 47797
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 57975
	sw $t0, -668($fp)
	addi $t0, $fp, -80
	sw $t0, -672($fp)
	li $t0, 0
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
	li $t0, 50134
	sw $t0, -692($fp)
	addi $t0, $fp, -80
	sw $t0, -696($fp)
	li $t0, 1
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
	li $t0, 17008
	sw $t0, -716($fp)
	addi $t0, $fp, -80
	sw $t0, -720($fp)
	li $t0, 2
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
	li $t0, 49212
	sw $t0, -740($fp)
	addi $t0, $fp, -80
	sw $t0, -744($fp)
	li $t0, 3
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
	li $t0, 30099
	sw $t0, -764($fp)
	addi $t0, $fp, -80
	sw $t0, -768($fp)
	li $t0, 4
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
	li $t0, 32910
	sw $t0, -788($fp)
	addi $t0, $fp, -80
	sw $t0, -792($fp)
	li $t0, 5
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
	li $t0, 8819
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 14062
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 45005
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 46706
	sw $t0, -848($fp)
	addi $t0, $fp, -112
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
	li $t0, 11784
	sw $t0, -872($fp)
	addi $t0, $fp, -112
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
	li $t0, 50867
	sw $t0, -896($fp)
	addi $t0, $fp, -112
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
	li $t0, 25186
	sw $t0, -920($fp)
	addi $t0, $fp, -112
	sw $t0, -924($fp)
	li $t0, 3
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -924($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -920($fp)
	lw $t1, -936($fp)
	sw $t0, 0($t1)
	lw $t0, -936($fp)
	lw $t1, 0($t0)
	sw $t1, -940($fp)
	li $t0, 18643
	sw $t0, -944($fp)
	addi $t0, $fp, -112
	sw $t0, -948($fp)
	li $t0, 4
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -948($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -944($fp)
	lw $t1, -960($fp)
	sw $t0, 0($t1)
	lw $t0, -960($fp)
	lw $t1, 0($t0)
	sw $t1, -964($fp)
	li $t0, 59983
	sw $t0, -968($fp)
	addi $t0, $fp, -112
	sw $t0, -972($fp)
	li $t0, 5
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -972($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -968($fp)
	lw $t1, -984($fp)
	sw $t0, 0($t1)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	li $t0, 29363
	sw $t0, -992($fp)
	addi $t0, $fp, -112
	sw $t0, -996($fp)
	li $t0, 6
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -996($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -992($fp)
	lw $t1, -1008($fp)
	sw $t0, 0($t1)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	li $t0, 43557
	sw $t0, -1016($fp)
	addi $t0, $fp, -112
	sw $t0, -1020($fp)
	li $t0, 7
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1020($fp)
	lw $t1, -1028($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1016($fp)
	lw $t1, -1032($fp)
	sw $t0, 0($t1)
	lw $t0, -1032($fp)
	lw $t1, 0($t0)
	sw $t1, -1036($fp)
label181:
	li $t0, 57431
	sw $t0, -1040($fp)
	lw $t0, -816($fp)
	sw $t0, -1044($fp)
	lw $t0, -648($fp)
	sw $t0, -1048($fp)
	lw $t0, -1044($fp)
	lw $t1, -1048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1052($fp)
	li $t0, 58588
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	li $t0, 31018
	sw $t0, -1064($fp)
	li $t0, 53342
	sw $t0, -1068($fp)
	lw $t0, -1064($fp)
	lw $t1, -1068($fp)
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1060($fp)
	lw $t1, -1072($fp)
	sub $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t1, -1040($fp)
	lw $t2, -1076($fp)
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 21698
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 42816
	sw $t0, -1104($fp)
	addi $t0, $fp, -1088
	sw $t0, -1108($fp)
	li $t0, 0
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1108($fp)
	lw $t1, -1116($fp)
	add $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1104($fp)
	lw $t1, -1120($fp)
	sw $t0, 0($t1)
	lw $t0, -1120($fp)
	lw $t1, 0($t0)
	sw $t1, -1124($fp)
	li $t0, 12974
	sw $t0, -1128($fp)
	addi $t0, $fp, -1088
	sw $t0, -1132($fp)
	li $t0, 1
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
	li $t0, 4945
	sw $t0, -1152($fp)
	addi $t0, $fp, -1088
	sw $t0, -1156($fp)
	li $t0, 2
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
	li $t0, 40046
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 37839
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 26496
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	li $t0, 48608
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1180($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1204($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1216($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1240($fp)
	lw $t0, -1204($fp)
	sw $t0, -1244($fp)
	li $t0, 0
	sw $t0, -1248($fp)
	li $t0, 0
	sw $t0, -1252($fp)
	lw $t0, -540($fp)
	sw $t0, -1256($fp)
	lw $t0, -552($fp)
	sw $t0, -1260($fp)
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	sub $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -168($fp)
	sw $t0, -1268($fp)
	lw $t1, -1264($fp)
	lw $t2, -1268($fp)
	bgt $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -1252($fp)
label189:
	li $t0, 24086
	sw $t0, -1272($fp)
	lw $t1, -1252($fp)
	lw $t2, -1272($fp)
	blt $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1248($fp)
label187:
	lw $t1, -1244($fp)
	lw $t2, -1248($fp)
	beq $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -1240($fp)
label185:
	lw $ra, -4($fp)
	lw $v0, -1240($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 8757
	sw $t0, -1280($fp)
	li $t0, 0
	lw $t1, -1280($fp)
	sub $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 1
	sw $t0, -1276($fp)
label191:
	li $t0, 0
	lw $t1, -1276($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
label192:
	lw $t0, -564($fp)
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 41047
	sw $t0, -1296($fp)
	j label192
label194:
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 8685
	sw $t0, -1304($fp)
	lw $t0, -180($fp)
	sw $t0, -1308($fp)
	lw $t0, -1304($fp)
	lw $t1, -1308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1312($fp)
	lw $t0, -648($fp)
	sw $t0, -1316($fp)
	lw $t0, -1312($fp)
	lw $t1, -1316($fp)
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	li $t0, 0
	sw $t0, -1324($fp)
	li $t0, 58676
	sw $t0, -1328($fp)
	li $t0, 33543
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1336($fp)
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1340($fp)
	addi $sp, $sp, 8
	li $t0, 52846
	sw $t0, -1344($fp)
	lw $t1, -1340($fp)
	lw $t2, -1344($fp)
	ble $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -1324($fp)
label201:
	li $t0, 0
	sw $t0, -1348($fp)
	li $t0, 38784
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label202
label202:
	li $t0, 1
	sw $t0, -1348($fp)
label203:
	li $t0, 0
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1356($fp)
	li $t0, 0
	sw $t0, -1360($fp)
	lw $t0, -576($fp)
	sw $t0, -1364($fp)
	lw $t1, -1364($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label205
label207:
	li $t0, 25766
	sw $t0, -1368($fp)
	lw $t1, -1368($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label206:
	li $t0, 24724
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -1360($fp)
label205:
	addi $sp, $sp, -4
	lw $t0, -1324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1376($fp)
	addi $sp, $sp, 16
	lw $t1, -1320($fp)
	lw $t2, -1376($fp)
	ble $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -1300($fp)
label199:
	li $t0, 38145
	sw $t0, -1380($fp)
	li $t0, 14713
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -120($fp)
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1396($fp)
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1400($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -1400($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1404($fp)
	addi $sp, $sp, 8
	lw $t1, -1300($fp)
	lw $t2, -1404($fp)
	ble $t1, $t2, label195
	j label196
label195:
	li $t0, 0
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	li $t0, 64631
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label213
label214:
	li $t0, 23476
	sw $t0, -1420($fp)
	lw $t1, -1420($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label213
label213:
	li $t0, 39899
	sw $t0, -1424($fp)
	lw $t1, -1424($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -1412($fp)
label212:
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1428($fp)
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -1432($fp)
	lw $t1, -1428($fp)
	lw $t2, -1432($fp)
	ble $t1, $t2, label210
	j label209
label210:
	li $t0, 17738
	sw $t0, -1436($fp)
	li $t0, 17923
	sw $t0, -1440($fp)
	lw $t1, -1436($fp)
	lw $t2, -1440($fp)
	beq $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -1408($fp)
label209:
	lw $t0, -1408($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -1444($fp)
	lw $ra, -4($fp)
	lw $v0, -1444($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label197
label196:
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 3727
	sw $t0, -1452($fp)
	li $t0, 61295
	sw $t0, -1456($fp)
	lw $t0, -1452($fp)
	lw $t1, -1456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1460($fp)
	li $t0, 0
	sw $t0, -1464($fp)
	li $t0, 9819
	sw $t0, -1468($fp)
	li $t0, 62315
	sw $t0, -1472($fp)
	lw $t1, -1468($fp)
	lw $t2, -1472($fp)
	bgt $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -1464($fp)
label221:
	lw $t1, -1460($fp)
	lw $t2, -1464($fp)
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -1448($fp)
label219:
	lw $t0, -1448($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
label222:
	lw $t0, -1096($fp)
	sw $t0, -1480($fp)
	lw $t0, -1192($fp)
	sw $t0, -1484($fp)
	lw $t0, -1480($fp)
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	lw $t0, -648($fp)
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	addi $t0, $fp, -112
	sw $t0, -1500($fp)
	lw $t0, -1216($fp)
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
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -1496($fp)
label226:
	lw $t0, -1492($fp)
	lw $t1, -1496($fp)
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $ra, -4($fp)
	lw $v0, -1520($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label222
label224:
	j label217
label216:
label227:
	lw $t0, -420($fp)
	sw $t0, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	addi $t0, $fp, -1088
	sw $t0, -1536($fp)
	li $t0, 0
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
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -1532($fp)
label234:
	li $t0, 0
	lw $t1, -1532($fp)
	sub $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label232:
	li $t0, 18477
	sw $t0, -1560($fp)
	li $t0, 0
	lw $t1, -1560($fp)
	sub $t0, $t0, $t1
	sw $t0, -1564($fp)
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1568($fp)
	addi $sp, $sp, 8
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -1528($fp)
label231:
	j label227
label229:
label217:
label197:
	li $t0, 0
	sw $t0, -1572($fp)
	lw $t0, -576($fp)
	sw $t0, -1576($fp)
	lw $t1, -1576($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label238:
	li $t0, 1
	sw $t0, -1572($fp)
label239:
	li $t0, 4057
	sw $t0, -1580($fp)
	lw $t0, -1572($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	addi $t0, $fp, -1088
	sw $t0, -1592($fp)
	li $t0, 1
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
	lw $t0, -132($fp)
	sw $t0, -1612($fp)
	lw $t1, -1608($fp)
	lw $t2, -1612($fp)
	blt $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -1588($fp)
label241:
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1616($fp)
	addi $sp, $sp, 8
	lw $t0, -1584($fp)
	lw $t1, -1616($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 44104
	sw $t0, -1628($fp)
	lw $t0, -480($fp)
	sw $t0, -1632($fp)
	li $t0, 0
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t1, -1628($fp)
	lw $t2, -1636($fp)
	bne $t1, $t2, label242
	j label245
label245:
	lw $t0, 4($fp)
	sw $t0, -1640($fp)
	li $t0, 0
	lw $t1, -1640($fp)
	sub $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
label246:
	jal f6
	sw $v0, -1648($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
label249:
	addi $t0, $fp, -48
	sw $t0, -1656($fp)
	lw $t0, -648($fp)
	sw $t0, -1660($fp)
	li $t0, 48439
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1672($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	lw $t1, 0($t0)
	sw $t1, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -420($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label256
label258:
	lw $t0, -564($fp)
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label256
label257:
	li $t0, 49919
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -1692($fp)
label256:
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1708($fp)
	addi $sp, $sp, 8
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
label259:
	li $t0, 0
	sw $t0, -1712($fp)
	lw $t0, -132($fp)
	sw $t0, -1716($fp)
	li $t0, 0
	lw $t1, -1716($fp)
	sub $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -144($fp)
	sw $t0, -1724($fp)
	lw $t0, -1720($fp)
	lw $t1, -1724($fp)
	sub $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label264
label264:
	addi $t0, $fp, -48
	sw $t0, -1732($fp)
	lw $t0, -648($fp)
	sw $t0, -1736($fp)
	li $t0, 4
	lw $t1, -1736($fp)
	mul $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	lw $t1, 0($t0)
	sw $t1, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -1712($fp)
label263:
	lw $t0, -1712($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -1752($fp)
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 0
	sw $t0, -1756($fp)
	lw $t0, -180($fp)
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	addi $t0, $fp, -1088
	sw $t0, -1768($fp)
	lw $t0, -648($fp)
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
	li $t0, 0
	lw $t1, -1784($fp)
	sub $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -1764($fp)
label268:
	lw $t1, -1760($fp)
	lw $t2, -1764($fp)
	bge $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -1756($fp)
label266:
	lw $ra, -4($fp)
	lw $v0, -1756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label259
label261:
	j label254
label253:
	lw $t0, -120($fp)
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	lw $t0, -828($fp)
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label269:
	li $t0, 1
	sw $t0, -1796($fp)
label270:
	lw $t0, -480($fp)
	sw $t0, -1804($fp)
	lw $t0, -1796($fp)
	lw $t1, -1804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1808($fp)
	li $t0, 27176
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1792($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
label254:
	j label249
label251:
	j label246
label248:
	j label244
label243:
	lw $t0, -648($fp)
	sw $t0, -1824($fp)
	lw $t0, -192($fp)
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label272
label271:
	lw $t0, -840($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -1840($fp)
	li $t0, 58677
	sw $t0, -1844($fp)
	li $t0, 6989
	sw $t0, -1848($fp)
	lw $t0, -552($fp)
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1860($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -1860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label273
label272:
	lw $t0, -420($fp)
	sw $t0, -1864($fp)
label273:
	li $t0, 2687
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	li $t0, 15674
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	li $t0, 18907
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	lw $t0, -1872($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1884($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1896($fp)
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1916($fp)
	lw $t0, -144($fp)
	sw $t0, -1920($fp)
	lw $t0, -648($fp)
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1928($fp)
	li $t0, 0
	lw $t1, -1928($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	lw $t0, -576($fp)
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -1936($fp)
label278:
	lw $t1, -1932($fp)
	lw $t2, -1936($fp)
	ble $t1, $t2, label274
	j label276
label276:
	lw $t0, -648($fp)
	sw $t0, -1944($fp)
	lw $t0, -492($fp)
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -1952($fp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1956($fp)
	addi $sp, $sp, 8
	lw $t1, -1944($fp)
	lw $t2, -1956($fp)
	beq $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -1916($fp)
label275:
	lw $ra, -4($fp)
	lw $v0, -1916($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 27411
	sw $t0, -1964($fp)
	lw $t0, -480($fp)
	sw $t0, -1968($fp)
	li $t0, 0
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1964($fp)
	lw $t1, -1972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1976($fp)
	addi $t0, $fp, -112
	sw $t0, -1980($fp)
	li $t0, 7
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
	li $t0, 60954
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2004($fp)
	lw $t1, -1976($fp)
	lw $t2, -2004($fp)
	blt $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -1960($fp)
label283:
	li $t0, 0
	sw $t0, -2008($fp)
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 50192
	sw $t0, -2016($fp)
	lw $t0, -420($fp)
	sw $t0, -2020($fp)
	lw $t1, -2016($fp)
	lw $t2, -2020($fp)
	bge $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -2012($fp)
label287:
	li $t0, 10132
	sw $t0, -2024($fp)
	lw $t1, -2012($fp)
	lw $t2, -2024($fp)
	bgt $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -2008($fp)
label285:
	li $t0, 0
	sw $t0, -2028($fp)
	addi $t0, $fp, -40
	sw $t0, -2032($fp)
	lw $t0, -144($fp)
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
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label290
label290:
	lw $t0, -564($fp)
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -2028($fp)
label289:
	li $t0, 0
	sw $t0, -2056($fp)
	lw $t0, -492($fp)
	sw $t0, -2060($fp)
	lw $t0, -648($fp)
	sw $t0, -2064($fp)
	lw $t0, -2060($fp)
	lw $t1, -2064($fp)
	sub $t0, $t0, $t1
	sw $t0, -2068($fp)
	li $t0, 41769
	sw $t0, -2072($fp)
	lw $t1, -2068($fp)
	lw $t2, -2072($fp)
	bgt $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -2056($fp)
label292:
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2076($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2080($fp)
	addi $sp, $sp, 8
	lw $t1, -1960($fp)
	lw $t2, -2080($fp)
	blt $t1, $t2, label279
	j label280
label279:
label293:
	li $t0, 0
	sw $t0, -2084($fp)
	addi $t0, $fp, -48
	sw $t0, -2088($fp)
	lw $t0, -1872($fp)
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
	li $t0, 40864
	sw $t0, -2108($fp)
	lw $t1, -2104($fp)
	lw $t2, -2108($fp)
	bgt $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -2084($fp)
label297:
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2112($fp)
	addi $sp, $sp, 8
	jal f6
	sw $v0, -2116($fp)
	addi $sp, $sp, 4
	lw $t0, -2112($fp)
	lw $t1, -2116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	addi $t0, $fp, -112
	sw $t0, -2124($fp)
	lw $t0, -516($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -2132($fp)
	li $t0, 4
	lw $t1, -2132($fp)
	mul $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	lw $t1, -2124($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	lw $t1, 0($t0)
	sw $t1, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t0, -528($fp)
	sw $t0, -2152($fp)
	li $t0, 0
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	li $t0, 8132
	sw $t0, -2160($fp)
	lw $t1, -2156($fp)
	lw $t2, -2160($fp)
	beq $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -2148($fp)
label299:
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2164($fp)
	addi $sp, $sp, 8
	lw $t0, -2144($fp)
	lw $t1, -2164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2168($fp)
	j label293
label295:
	j label281
label280:
	lw $t0, -1896($fp)
	sw $t0, -2172($fp)
	li $t0, 0
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	li $t0, 0
	lw $t1, -2176($fp)
	sub $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -2184($fp)
label281:
label244:
	j label237
label236:
	li $t0, 50031
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	li $t0, 58602
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	li $t0, 26056
	sw $t0, -2228($fp)
	addi $t0, $fp, -2212
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
	li $t0, 53758
	sw $t0, -2252($fp)
	addi $t0, $fp, -2212
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
	li $t0, 54361
	sw $t0, -2276($fp)
	addi $t0, $fp, -2212
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
	li $t0, 35875
	sw $t0, -2300($fp)
	addi $t0, $fp, -2212
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
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 0
	sw $t0, -2328($fp)
	li $t0, 50538
	sw $t0, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label302:
	li $t0, 1
	sw $t0, -2328($fp)
label303:
	li $t0, 0
	sw $t0, -2336($fp)
	addi $t0, $fp, -112
	sw $t0, -2340($fp)
	li $t0, 4
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
	li $t0, 0
	lw $t1, -2356($fp)
	sub $t0, $t0, $t1
	sw $t0, -2360($fp)
	li $t0, 3479
	sw $t0, -2364($fp)
	lw $t0, -2220($fp)
	sw $t0, -2368($fp)
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t1, -2360($fp)
	lw $t2, -2372($fp)
	ble $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -2336($fp)
label305:
	lw $t1, -2328($fp)
	lw $t2, -2336($fp)
	beq $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -2324($fp)
label301:
	li $t0, 0
	sw $t0, -2376($fp)
	addi $t0, $fp, -2212
	sw $t0, -2380($fp)
	li $t0, 0
	sw $t0, -2384($fp)
	lw $t0, -480($fp)
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label310
label310:
	lw $t0, -840($fp)
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -2384($fp)
label309:
	li $t0, 4
	lw $t1, -2384($fp)
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	lw $t1, -2380($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	lw $t1, 0($t0)
	sw $t1, -2404($fp)
	addi $t0, $fp, -48
	sw $t0, -2408($fp)
	lw $t0, -504($fp)
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
	lw $t0, -2404($fp)
	lw $t1, -2424($fp)
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	li $t0, 0
	sw $t0, -2432($fp)
	lw $t0, -492($fp)
	sw $t0, -2436($fp)
	lw $t0, -480($fp)
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -1096($fp)
	sw $t0, -2448($fp)
	lw $t1, -2444($fp)
	lw $t2, -2448($fp)
	ble $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -2432($fp)
label312:
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2452($fp)
	addi $sp, $sp, 8
	lw $t1, -2428($fp)
	lw $t2, -2452($fp)
	blt $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -2376($fp)
label307:
	li $t0, 19659
	sw $t0, -2456($fp)
	li $t0, 0
	lw $t1, -2456($fp)
	sub $t0, $t0, $t1
	sw $t0, -2460($fp)
	li $t0, 0
	lw $t1, -2460($fp)
	sub $t0, $t0, $t1
	sw $t0, -2464($fp)
	li $t0, 44100
	sw $t0, -2468($fp)
	li $t0, 0
	sw $t0, -2472($fp)
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -552($fp)
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -2480($fp)
label318:
	li $t0, 27003
	sw $t0, -2488($fp)
	lw $t1, -2480($fp)
	lw $t2, -2488($fp)
	bgt $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -2476($fp)
label316:
	li $t0, 0
	sw $t0, -2492($fp)
	li $t0, 63763
	sw $t0, -2496($fp)
	lw $t0, -192($fp)
	sw $t0, -2500($fp)
	lw $t1, -2496($fp)
	lw $t2, -2500($fp)
	blt $t1, $t2, label319
	j label321
label321:
	lw $t0, -420($fp)
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -2492($fp)
label320:
	li $t0, 26902
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -2512($fp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2516($fp)
	addi $sp, $sp, 16
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -2472($fp)
label314:
	lw $t0, -2468($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	addi $t0, $fp, -80
	sw $t0, -2524($fp)
	li $t0, 0
	sw $t0, -2528($fp)
	jal f6
	sw $v0, -2532($fp)
	addi $sp, $sp, 4
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label322:
	li $t0, 1
	sw $t0, -2528($fp)
label323:
	li $t0, 4
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	lw $t1, 0($t0)
	sw $t1, -2544($fp)
label324:
	li $t0, 11286
	sw $t0, -2548($fp)
	li $t0, 0
	lw $t1, -2548($fp)
	sub $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	lw $t0, -2192($fp)
	sw $t0, -2556($fp)
	j label324
label326:
label237:
	j label181
label183:
	lw $t0, -120($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2588($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -2608($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -2628($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -2648($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -2668($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -2688($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -2708($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -2728($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -2748($fp)
	li $t0, 8
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
	lw $t0, -420($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2772($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -2792($fp)
	li $t0, 1
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
	lw $t0, -480($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2852($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -2872($fp)
	li $t0, 1
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
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
	sw $t0, -2940($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -2960($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -2980($fp)
	li $t0, 4
	sw $t0, -2984($fp)
	li $t0, 4
	lw $t1, -2984($fp)
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	lw $t1, -2980($fp)
	add $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, 0($t0)
	sw $t1, -2996($fp)
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3000($fp)
	li $t0, 5
	sw $t0, -3004($fp)
	li $t0, 4
	lw $t1, -3004($fp)
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, 0($t0)
	sw $t1, -3016($fp)
	lw $t0, -3016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
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
	addi $t0, $fp, -112
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
	addi $t0, $fp, -112
	sw $t0, -3072($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -3092($fp)
	li $t0, 3
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
	addi $t0, $fp, -112
	sw $t0, -3112($fp)
	li $t0, 4
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
	addi $t0, $fp, -112
	sw $t0, -3132($fp)
	li $t0, 5
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
	addi $t0, $fp, -112
	sw $t0, -3152($fp)
	li $t0, 6
	sw $t0, -3156($fp)
	li $t0, 4
	lw $t1, -3156($fp)
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, 0($t0)
	sw $t1, -3168($fp)
	lw $t0, -3168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -3172($fp)
	li $t0, 7
	sw $t0, -3176($fp)
	li $t0, 4
	lw $t1, -3176($fp)
	mul $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	lw $t1, 0($t0)
	sw $t1, -3188($fp)
	lw $t0, -3188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -3192($fp)
	lw $ra, -4($fp)
	lw $v0, -3192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 4427
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -3200($fp)
	addi $t0, $fp, -80
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
	lw $t0, -660($fp)
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -3228($fp)
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3228($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3232($fp)
	addi $sp, $sp, 16
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 28091
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 49667
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -3252($fp)
	li $t0, 23334
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	sw $t0, -3264($fp)
	li $t0, 55502
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -3276($fp)
	li $t0, 38589
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -3288($fp)
	li $t0, 35381
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	sw $t0, -3300($fp)
	li $t0, 50921
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
label333:
	lw $t0, -3296($fp)
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	lw $t0, -168($fp)
	sw $t0, -3320($fp)
	lw $t1, -3320($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 0
	sw $t0, -3324($fp)
	lw $t0, -3248($fp)
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label342:
	li $t0, 0
	sw $t0, -3332($fp)
	lw $t0, -648($fp)
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label343:
	li $t0, 1
	sw $t0, -3332($fp)
label344:
	li $t0, 14822
	sw $t0, -3340($fp)
	lw $t0, -3332($fp)
	lw $t1, -3340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3344($fp)
	lw $t1, -3344($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label341
label341:
	addi $t0, $fp, -40
	sw $t0, -3348($fp)
	lw $t0, -3260($fp)
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
	lw $t0, -120($fp)
	sw $t0, -3368($fp)
	lw $t0, -3364($fp)
	lw $t1, -3368($fp)
	add $t0, $t0, $t1
	sw $t0, -3372($fp)
	li $t0, 0
	sw $t0, -3376($fp)
	lw $t0, -648($fp)
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label345:
	li $t0, 1
	sw $t0, -3376($fp)
label346:
	lw $t1, -3372($fp)
	lw $t2, -3376($fp)
	bge $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -3324($fp)
label340:
	j label338
label337:
	jal f6
	sw $v0, -3384($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -56
	sw $t0, -3388($fp)
	li $t0, 0
	sw $t0, -3392($fp)
	li $t0, 20037
	sw $t0, -3396($fp)
	li $t0, 61053
	sw $t0, -3400($fp)
	lw $t1, -3396($fp)
	lw $t2, -3400($fp)
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -3392($fp)
label348:
	li $t0, 4
	lw $t1, -3392($fp)
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	lw $t1, -3388($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, 0($t0)
	sw $t1, -3412($fp)
	lw $t0, -3384($fp)
	lw $t1, -3412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3416($fp)
	lw $ra, -4($fp)
	lw $v0, -3416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label338:
	j label333
label335:
	lw $t0, -492($fp)
	sw $t0, -3420($fp)
	li $t0, 0
	lw $t1, -3420($fp)
	sub $t0, $t0, $t1
	sw $t0, -3424($fp)
	li $t0, 55686
	sw $t0, -3428($fp)
	lw $t0, -3424($fp)
	lw $t1, -3428($fp)
	sub $t0, $t0, $t1
	sw $t0, -3432($fp)
label349:
	addi $t0, $fp, -48
	sw $t0, -3436($fp)
	li $t0, 0
	sw $t0, -3440($fp)
	lw $t0, -168($fp)
	sw $t0, -3444($fp)
	li $t0, 28169
	sw $t0, -3448($fp)
	lw $t0, -3444($fp)
	lw $t1, -3448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label354
label354:
	lw $t0, -840($fp)
	sw $t0, -3456($fp)
	lw $t1, -3456($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -3440($fp)
label353:
	li $t0, 4
	lw $t1, -3440($fp)
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, 0($t0)
	sw $t1, -3468($fp)
	li $t0, 45548
	sw $t0, -3472($fp)
	li $t0, 54226
	sw $t0, -3476($fp)
	lw $t0, -3472($fp)
	lw $t1, -3476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3480($fp)
	lw $t0, -3468($fp)
	lw $t1, -3480($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 33771
	sw $t0, -3496($fp)
	lw $t0, -3284($fp)
	sw $t0, -3500($fp)
	lw $t0, -3496($fp)
	lw $t1, -3500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3504($fp)
	lw $t1, -3504($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label360
label360:
	lw $t0, -504($fp)
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -3492($fp)
label359:
	addi $t0, $fp, -80
	sw $t0, -3512($fp)
	lw $t0, -3272($fp)
	sw $t0, -3516($fp)
	li $t0, 4
	lw $t1, -3516($fp)
	mul $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	lw $t1, 0($t0)
	sw $t1, -3528($fp)
	lw $t0, -492($fp)
	sw $t0, -3532($fp)
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3532($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3536($fp)
	addi $sp, $sp, 16
	lw $t1, -3536($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label357
label357:
	lw $t0, -156($fp)
	sw $t0, -3540($fp)
	lw $t0, -420($fp)
	sw $t0, -3544($fp)
	lw $t0, -3540($fp)
	lw $t1, -3544($fp)
	mul $t0, $t0, $t1
	sw $t0, -3548($fp)
	li $t0, 37577
	sw $t0, -3552($fp)
	lw $t0, -3548($fp)
	lw $t1, -3552($fp)
	add $t0, $t0, $t1
	sw $t0, -3556($fp)
	jal f6
	sw $v0, -3560($fp)
	addi $sp, $sp, 4
	lw $t1, -3556($fp)
	lw $t2, -3560($fp)
	ble $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -3488($fp)
label356:
	j label349
label351:
label361:
	li $t0, 0
	sw $t0, -3564($fp)
	lw $t0, -3308($fp)
	sw $t0, -3568($fp)
	lw $t1, -3568($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label364:
	li $t0, 1
	sw $t0, -3564($fp)
label365:
	li $t0, 0
	lw $t1, -3564($fp)
	sub $t0, $t0, $t1
	sw $t0, -3572($fp)
	li $t0, 0
	sw $t0, -3576($fp)
	lw $t0, -564($fp)
	sw $t0, -3580($fp)
	li $t0, 18773
	sw $t0, -3584($fp)
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	sub $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label368
label368:
	li $t0, 53179
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -3576($fp)
label367:
	lw $t0, -192($fp)
	sw $t0, -3596($fp)
	li $t0, 24564
	sw $t0, -3600($fp)
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3604($fp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3604($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3608($fp)
	addi $sp, $sp, 16
	lw $t1, -3608($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 0
	sw $t0, -3612($fp)
	li $t0, 0
	sw $t0, -3616($fp)
	li $t0, 58065
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label374:
	li $t0, 1
	sw $t0, -3616($fp)
label375:
	li $t0, 0
	lw $t1, -3616($fp)
	sub $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -3308($fp)
	sw $t0, -3628($fp)
	lw $t0, -516($fp)
	sw $t0, -3632($fp)
	lw $t0, -3628($fp)
	lw $t1, -3632($fp)
	add $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t1, -3624($fp)
	lw $t2, -3636($fp)
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -3612($fp)
label373:
	lw $t0, -828($fp)
	sw $t0, -3640($fp)
	li $t0, 0
	lw $t1, -3640($fp)
	sub $t0, $t0, $t1
	sw $t0, -3644($fp)
	li $t0, 22252
	sw $t0, -3648($fp)
	lw $t0, -3644($fp)
	lw $t1, -3648($fp)
	sub $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -180($fp)
	sw $t0, -3656($fp)
	lw $t0, -3652($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t1, -3612($fp)
	lw $t2, -3660($fp)
	bne $t1, $t2, label369
	j label370
label369:
	addi $t0, $fp, -48
	sw $t0, -3664($fp)
	lw $t0, -132($fp)
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
	li $t0, 7303
	sw $t0, -3684($fp)
	lw $t0, -3680($fp)
	lw $t1, -3684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3688($fp)
	lw $t0, -576($fp)
	sw $t0, -3692($fp)
	lw $t0, -3308($fp)
	sw $t0, -3696($fp)
	lw $t0, -3692($fp)
	lw $t1, -3696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3700($fp)
	li $t0, 36629
	sw $t0, -3704($fp)
	lw $t0, -3700($fp)
	lw $t1, -3704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3708($fp)
	lw $t0, -3688($fp)
	lw $t1, -3708($fp)
	sub $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -840($fp)
	sw $t0, -3716($fp)
	lw $t0, -3712($fp)
	lw $t1, -3716($fp)
	sub $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $ra, -4($fp)
	lw $v0, -3720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label371
label370:
label376:
	addi $t0, $fp, -112
	sw $t0, -3724($fp)
	li $t0, 49155
	sw $t0, -3728($fp)
	li $t0, 5530
	sw $t0, -3732($fp)
	lw $t0, -3728($fp)
	lw $t1, -3732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3736($fp)
	lw $t0, -480($fp)
	sw $t0, -3740($fp)
	lw $t0, -3736($fp)
	lw $t1, -3740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3744($fp)
	li $t0, 4
	lw $t1, -3744($fp)
	mul $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	lw $t1, 0($t0)
	sw $t1, -3756($fp)
	jal f6
	sw $v0, -3760($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -3760($fp)
	sub $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t1, -3756($fp)
	lw $t2, -3764($fp)
	bne $t1, $t2, label377
	j label378
label377:
	lw $t0, -516($fp)
	sw $t0, -3768($fp)
	addi $sp, $sp, -4
	lw $t0, -3768($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3772($fp)
	addi $sp, $sp, 8
	li $t0, 63632
	sw $t0, -3776($fp)
	lw $t0, -3772($fp)
	lw $t1, -3776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3780($fp)
	li $t0, 0
	sw $t0, -3784($fp)
	li $t0, 0
	sw $t0, -3788($fp)
	li $t0, 0
	sw $t0, -3792($fp)
	li $t0, 60441
	sw $t0, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -3792($fp)
label384:
	li $t0, 0
	lw $t1, -3792($fp)
	sub $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label381:
	li $t0, 1
	sw $t0, -3788($fp)
label382:
	li $t0, 0
	lw $t1, -3788($fp)
	sub $t0, $t0, $t1
	sw $t0, -3804($fp)
	li $t0, 30934
	sw $t0, -3808($fp)
	lw $t1, -3804($fp)
	lw $t2, -3808($fp)
	ble $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -3784($fp)
label380:
	j label376
label378:
label371:
	j label361
label363:
	j label332
label331:
	li $t0, 0
	sw $t0, -3812($fp)
	li $t0, 32088
	sw $t0, -3816($fp)
	li $t0, 16219
	sw $t0, -3820($fp)
	lw $t0, -120($fp)
	sw $t0, -3824($fp)
	lw $t0, -3820($fp)
	lw $t1, -3824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3828($fp)
	li $t0, 59025
	sw $t0, -3832($fp)
	lw $t0, -576($fp)
	sw $t0, -3836($fp)
	lw $t0, -3832($fp)
	lw $t1, -3836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3840($fp)
	lw $t0, -828($fp)
	sw $t0, -3844($fp)
	lw $t0, -3840($fp)
	lw $t1, -3844($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	addi $sp, $sp, -4
	lw $t0, -3848($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3852($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3856($fp)
	li $t0, 64868
	sw $t0, -3860($fp)
	lw $t1, -3860($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label387
label387:
	li $t0, 1
	sw $t0, -3856($fp)
label388:
	addi $sp, $sp, -4
	lw $t0, -3828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3856($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3864($fp)
	addi $sp, $sp, 16
	lw $t0, -588($fp)
	sw $t0, -3868($fp)
	lw $t0, -3864($fp)
	lw $t1, -3868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3872($fp)
	li $t0, 22666
	sw $t0, -3876($fp)
	li $t0, 48991
	sw $t0, -3880($fp)
	lw $t0, -3876($fp)
	lw $t1, -3880($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3872($fp)
	lw $t1, -3884($fp)
	sub $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t1, -3816($fp)
	lw $t2, -3888($fp)
	bgt $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -3812($fp)
label386:
label332:
	j label329
label328:
	addi $t0, $fp, -56
	sw $t0, -3892($fp)
	li $t0, 0
	sw $t0, -3896($fp)
	li $t0, 54809
	sw $t0, -3900($fp)
	lw $t1, -3900($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -3896($fp)
label393:
	li $t0, 4
	lw $t1, -3896($fp)
	mul $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	lw $t1, 0($t0)
	sw $t1, -3912($fp)
	li $t0, 0
	lw $t1, -3912($fp)
	sub $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t1, -3916($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label390
label389:
	li $t0, 58047
	sw $t0, -3920($fp)
	li $t0, 0
	lw $t1, -3920($fp)
	sub $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -120($fp)
	sw $t0, -3928($fp)
	lw $t0, -3924($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3932($fp)
	addi $sp, $sp, -4
	lw $t0, -3932($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3936($fp)
	addi $sp, $sp, 8
	j label391
label390:
	li $t0, 34376
	sw $t0, -3940($fp)
	li $t0, 4095
	sw $t0, -3944($fp)
	lw $t0, -3940($fp)
	lw $t1, -3944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3948($fp)
	li $t0, 0
	lw $t1, -3948($fp)
	sub $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -120($fp)
	sw $t0, -3956($fp)
	jal f6
	sw $v0, -3960($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -3960($fp)
	sub $t0, $t0, $t1
	sw $t0, -3964($fp)
	addi $sp, $sp, -4
	lw $t0, -3964($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3968($fp)
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -3972($fp)
	lw $t0, -3968($fp)
	lw $t1, -3972($fp)
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3976($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3980($fp)
	addi $sp, $sp, 16
label391:
label329:
	lw $t0, -120($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4012($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -4032($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -4052($fp)
	li $t0, 2
	sw $t0, -4056($fp)
	li $t0, 4
	lw $t1, -4056($fp)
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	lw $t1, -4052($fp)
	add $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	lw $t1, 0($t0)
	sw $t1, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4072($fp)
	li $t0, 3
	sw $t0, -4076($fp)
	li $t0, 4
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	lw $t1, -4072($fp)
	add $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, 0($t0)
	sw $t1, -4088($fp)
	lw $t0, -4088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4092($fp)
	li $t0, 4
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
	lw $t0, -4108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4112($fp)
	li $t0, 5
	sw $t0, -4116($fp)
	li $t0, 4
	lw $t1, -4116($fp)
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, -4112($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	lw $t0, -4128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4132($fp)
	li $t0, 6
	sw $t0, -4136($fp)
	li $t0, 4
	lw $t1, -4136($fp)
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, -4132($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	lw $t1, 0($t0)
	sw $t1, -4148($fp)
	lw $t0, -4148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4152($fp)
	li $t0, 7
	sw $t0, -4156($fp)
	li $t0, 4
	lw $t1, -4156($fp)
	mul $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	lw $t1, -4152($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	lw $t1, 0($t0)
	sw $t1, -4168($fp)
	lw $t0, -4168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4172($fp)
	li $t0, 8
	sw $t0, -4176($fp)
	li $t0, 4
	lw $t1, -4176($fp)
	mul $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, -4172($fp)
	add $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	lw $t1, 0($t0)
	sw $t1, -4188($fp)
	lw $t0, -4188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4196($fp)
	li $t0, 0
	sw $t0, -4200($fp)
	li $t0, 4
	lw $t1, -4200($fp)
	mul $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, -4196($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	lw $t1, 0($t0)
	sw $t1, -4212($fp)
	lw $t0, -4212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4216($fp)
	li $t0, 1
	sw $t0, -4220($fp)
	li $t0, 4
	lw $t1, -4220($fp)
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, 0($t0)
	sw $t1, -4232($fp)
	lw $t0, -4232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4276($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -4296($fp)
	li $t0, 1
	sw $t0, -4300($fp)
	li $t0, 4
	lw $t1, -4300($fp)
	mul $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	lw $t1, -4296($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	lw $t1, 0($t0)
	sw $t1, -4312($fp)
	lw $t0, -4312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4324($fp)
	li $t0, 0
	sw $t0, -4328($fp)
	li $t0, 4
	lw $t1, -4328($fp)
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	lw $t1, -4324($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	lw $t1, 0($t0)
	sw $t1, -4340($fp)
	lw $t0, -4340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4344($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -4364($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -4384($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -4404($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -4424($fp)
	li $t0, 5
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
	lw $t0, -816($fp)
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4456($fp)
	li $t0, 0
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
	addi $t0, $fp, -112
	sw $t0, -4476($fp)
	li $t0, 1
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
	addi $t0, $fp, -112
	sw $t0, -4496($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -4516($fp)
	li $t0, 3
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
	addi $t0, $fp, -112
	sw $t0, -4536($fp)
	li $t0, 4
	sw $t0, -4540($fp)
	li $t0, 4
	lw $t1, -4540($fp)
	mul $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	lw $t1, -4536($fp)
	add $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	lw $t1, 0($t0)
	sw $t1, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4556($fp)
	li $t0, 5
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
	lw $t0, -4572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4576($fp)
	li $t0, 6
	sw $t0, -4580($fp)
	li $t0, 4
	lw $t1, -4580($fp)
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	lw $t1, -4576($fp)
	add $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	lw $t1, 0($t0)
	sw $t1, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4596($fp)
	li $t0, 7
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
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -4616($fp)
	jal f6
	sw $v0, -4620($fp)
	addi $sp, $sp, 4
	lw $t0, -4616($fp)
	lw $t1, -4620($fp)
	mul $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -4628($fp)
	lw $ra, -4($fp)
	lw $v0, -4628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -336
	li $t0, 12548
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 29893
	sw $t0, -40($fp)
	addi $t0, $fp, -24
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
	li $t0, 59782
	sw $t0, -64($fp)
	addi $t0, $fp, -24
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
	li $t0, 40717
	sw $t0, -88($fp)
	addi $t0, $fp, -24
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
	li $t0, 9906
	sw $t0, -112($fp)
	addi $t0, $fp, -24
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
	li $t0, 42998
	sw $t0, -136($fp)
	addi $t0, $fp, -24
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
	li $t0, 29407
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -164($fp)
	sw $t0, -172($fp)
	lw $t0, -32($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -180($fp)
	li $t0, 0
	sw $t0, -184($fp)
	li $t0, 4
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	lw $t0, -196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -200($fp)
	li $t0, 1
	sw $t0, -204($fp)
	li $t0, 4
	lw $t1, -204($fp)
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	lw $t1, 0($t0)
	sw $t1, -216($fp)
	lw $t0, -216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -220($fp)
	li $t0, 2
	sw $t0, -224($fp)
	li $t0, 4
	lw $t1, -224($fp)
	mul $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t1, 0($t0)
	sw $t1, -236($fp)
	lw $t0, -236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -240($fp)
	li $t0, 3
	sw $t0, -244($fp)
	li $t0, 4
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, 0($t0)
	sw $t1, -256($fp)
	lw $t0, -256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -260($fp)
	li $t0, 4
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
	lw $t0, -276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	lw $t0, -164($fp)
	sw $t0, -292($fp)
	li $t0, 0
	lw $t1, -292($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	li $t0, 43677
	sw $t0, -300($fp)
	lw $t0, -164($fp)
	sw $t0, -304($fp)
	lw $t0, -300($fp)
	lw $t1, -304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -308($fp)
	li $t0, 15040
	sw $t0, -312($fp)
	lw $t0, -308($fp)
	lw $t1, -312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -316($fp)
	lw $t1, -296($fp)
	lw $t2, -316($fp)
	bgt $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -288($fp)
label397:
	addi $t0, $fp, -24
	sw $t0, -320($fp)
	lw $t0, -164($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -328($fp)
	li $t0, 4
	lw $t1, -328($fp)
	mul $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t1, 0($t0)
	sw $t1, -340($fp)
	lw $t1, -288($fp)
	lw $t2, -340($fp)
	bgt $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -284($fp)
label395:
	lw $ra, -4($fp)
	lw $v0, -284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2324
	li $t0, 53971
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 62450
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 2683
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 46500
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 19166
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 9986
	sw $t0, -104($fp)
	addi $t0, $fp, -36
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
	li $t0, 17593
	sw $t0, -128($fp)
	addi $t0, $fp, -36
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
	li $t0, 2785
	sw $t0, -152($fp)
	addi $t0, $fp, -36
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
	li $t0, 15517
	sw $t0, -176($fp)
	addi $t0, $fp, -36
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
	li $t0, 15689
	sw $t0, -200($fp)
	addi $t0, $fp, -36
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
	li $t0, 63226
	sw $t0, -224($fp)
	addi $t0, $fp, -36
	sw $t0, -228($fp)
	li $t0, 5
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
	li $t0, 46451
	sw $t0, -248($fp)
	addi $t0, $fp, -36
	sw $t0, -252($fp)
	li $t0, 6
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
	li $t0, 47778
	sw $t0, -272($fp)
	addi $t0, $fp, -36
	sw $t0, -276($fp)
	li $t0, 7
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
	li $t0, 62558
	sw $t0, -296($fp)
	addi $t0, $fp, -40
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
	li $t0, 39940
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 63997
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 19688
	sw $t0, -380($fp)
	addi $t0, $fp, -376
	sw $t0, -384($fp)
	li $t0, 0
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
	li $t0, 23395
	sw $t0, -404($fp)
	addi $t0, $fp, -376
	sw $t0, -408($fp)
	li $t0, 1
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -408($fp)
	lw $t1, -416($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -404($fp)
	lw $t1, -420($fp)
	sw $t0, 0($t1)
	lw $t0, -420($fp)
	lw $t1, 0($t0)
	sw $t1, -424($fp)
	li $t0, 53270
	sw $t0, -428($fp)
	addi $t0, $fp, -376
	sw $t0, -432($fp)
	li $t0, 2
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
	li $t0, 12199
	sw $t0, -452($fp)
	addi $t0, $fp, -376
	sw $t0, -456($fp)
	li $t0, 3
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
	li $t0, 57772
	sw $t0, -476($fp)
	addi $t0, $fp, -376
	sw $t0, -480($fp)
	li $t0, 4
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
	li $t0, 57366
	sw $t0, -500($fp)
	addi $t0, $fp, -376
	sw $t0, -504($fp)
	li $t0, 5
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
	li $t0, 24747
	sw $t0, -524($fp)
	addi $t0, $fp, -376
	sw $t0, -528($fp)
	li $t0, 6
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
	li $t0, 22129
	sw $t0, -548($fp)
	addi $t0, $fp, -376
	sw $t0, -552($fp)
	li $t0, 7
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
	li $t0, 51612
	sw $t0, -572($fp)
	addi $t0, $fp, -376
	sw $t0, -576($fp)
	li $t0, 8
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
	addi $t0, $fp, -376
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
	addi $t0, $fp, -376
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
	addi $t0, $fp, -376
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
	addi $t0, $fp, -376
	sw $t0, -656($fp)
	li $t0, 3
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
	addi $t0, $fp, -376
	sw $t0, -676($fp)
	li $t0, 4
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
	addi $t0, $fp, -376
	sw $t0, -696($fp)
	li $t0, 5
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
	addi $t0, $fp, -376
	sw $t0, -716($fp)
	li $t0, 6
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
	addi $t0, $fp, -376
	sw $t0, -736($fp)
	li $t0, 7
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
	addi $t0, $fp, -376
	sw $t0, -756($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -776($fp)
	lw $t0, -336($fp)
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label398
label398:
	li $t0, 1
	sw $t0, -776($fp)
label399:
	lw $t0, -776($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -784($fp)
	lw $ra, -4($fp)
	lw $v0, -784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label400:
	li $t0, 65465
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, -84($fp)
	sw $t0, -796($fp)
	li $t0, 32035
	sw $t0, -800($fp)
	lw $t1, -796($fp)
	lw $t2, -800($fp)
	blt $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -792($fp)
label404:
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -804($fp)
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	lw $t1, -804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 29074
	sw $t0, -812($fp)
	addi $t0, $fp, -376
	sw $t0, -816($fp)
	li $t0, 7
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
	lw $t0, -812($fp)
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	li $t0, 0
	lw $t1, -836($fp)
	sub $t0, $t0, $t1
	sw $t0, -840($fp)
	li $t0, 0
	sw $t0, -844($fp)
	addi $t0, $fp, -376
	sw $t0, -848($fp)
	lw $t0, -84($fp)
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
	bne $t1, $t2, label406
	j label405
label405:
	li $t0, 1
	sw $t0, -844($fp)
label406:
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	jal f6
	sw $v0, -872($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -868($fp)
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	j label400
label402:
	lw $t0, -324($fp)
	sw $t0, -884($fp)
	li $t0, 44114
	sw $t0, -888($fp)
	lw $t0, -60($fp)
	sw $t0, -892($fp)
	lw $t0, -888($fp)
	lw $t1, -892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -896($fp)
	lw $t0, 16($fp)
	sw $t0, -900($fp)
	lw $t0, -896($fp)
	lw $t1, -900($fp)
	mul $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -884($fp)
	lw $t1, -904($fp)
	sub $t0, $t0, $t1
	sw $t0, -908($fp)
	li $t0, 17771
	sw $t0, -912($fp)
	lw $t1, -908($fp)
	lw $t2, -912($fp)
	bge $t1, $t2, label407
	j label408
label407:
label410:
	li $t0, 7090
	sw $t0, -916($fp)
	lw $t1, -916($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label413
label413:
	lw $t0, -60($fp)
	sw $t0, -920($fp)
	li $t0, 46798
	sw $t0, -924($fp)
	lw $t0, -920($fp)
	lw $t1, -924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 0
	sw $t0, -932($fp)
	jal f6
	sw $v0, -936($fp)
	addi $sp, $sp, 4
	lw $t0, 12($fp)
	sw $t0, -940($fp)
	lw $t0, -936($fp)
	lw $t1, -940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -944($fp)
	li $t0, 64272
	sw $t0, -948($fp)
	lw $t0, -944($fp)
	lw $t1, -948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -952($fp)
	li $t0, 26257
	sw $t0, -956($fp)
	lw $t0, -952($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label416
label416:
	addi $t0, $fp, -376
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
	li $t0, 29042
	sw $t0, -984($fp)
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	sub $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -932($fp)
label415:
	j label410
label412:
	j label409
label408:
	li $t0, 0
	sw $t0, -992($fp)
	addi $t0, $fp, -36
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
	lw $t0, -324($fp)
	sw $t0, -1016($fp)
	li $t0, 26733
	sw $t0, -1020($fp)
	lw $t0, -1016($fp)
	lw $t1, -1020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1024($fp)
	lw $t0, -336($fp)
	sw $t0, -1028($fp)
	li $t0, 0
	lw $t1, -1028($fp)
	sub $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1024($fp)
	lw $t1, -1032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1036($fp)
	lw $t1, -1012($fp)
	lw $t2, -1036($fp)
	bgt $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -992($fp)
label418:
label409:
	li $t0, 53216
	sw $t0, -1080($fp)
	addi $t0, $fp, -1076
	sw $t0, -1084($fp)
	li $t0, 0
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1084($fp)
	lw $t1, -1092($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1080($fp)
	lw $t1, -1096($fp)
	sw $t0, 0($t1)
	lw $t0, -1096($fp)
	lw $t1, 0($t0)
	sw $t1, -1100($fp)
	li $t0, 14261
	sw $t0, -1104($fp)
	addi $t0, $fp, -1076
	sw $t0, -1108($fp)
	li $t0, 1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1108($fp)
	lw $t1, -1116($fp)
	add $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1104($fp)
	lw $t1, -1120($fp)
	sw $t0, 0($t1)
	lw $t0, -1120($fp)
	lw $t1, 0($t0)
	sw $t1, -1124($fp)
	li $t0, 23755
	sw $t0, -1128($fp)
	addi $t0, $fp, -1076
	sw $t0, -1132($fp)
	li $t0, 2
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
	li $t0, 27620
	sw $t0, -1152($fp)
	addi $t0, $fp, -1076
	sw $t0, -1156($fp)
	li $t0, 3
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
	li $t0, 12722
	sw $t0, -1176($fp)
	addi $t0, $fp, -1076
	sw $t0, -1180($fp)
	li $t0, 4
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
	li $t0, 43444
	sw $t0, -1200($fp)
	addi $t0, $fp, -1076
	sw $t0, -1204($fp)
	li $t0, 5
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
	li $t0, 51016
	sw $t0, -1224($fp)
	addi $t0, $fp, -1076
	sw $t0, -1228($fp)
	li $t0, 6
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
	li $t0, 457
	sw $t0, -1248($fp)
	addi $t0, $fp, -1076
	sw $t0, -1252($fp)
	li $t0, 7
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1252($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1248($fp)
	lw $t1, -1264($fp)
	sw $t0, 0($t1)
	lw $t0, -1264($fp)
	lw $t1, 0($t0)
	sw $t1, -1268($fp)
	li $t0, 55643
	sw $t0, -1272($fp)
	addi $t0, $fp, -1076
	sw $t0, -1276($fp)
	li $t0, 8
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1276($fp)
	lw $t1, -1284($fp)
	add $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1272($fp)
	lw $t1, -1288($fp)
	sw $t0, 0($t1)
	lw $t0, -1288($fp)
	lw $t1, 0($t0)
	sw $t1, -1292($fp)
	li $t0, 43252
	sw $t0, -1296($fp)
	addi $t0, $fp, -1076
	sw $t0, -1300($fp)
	li $t0, 9
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1300($fp)
	lw $t1, -1308($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1296($fp)
	lw $t1, -1312($fp)
	sw $t0, 0($t1)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	li $t0, 57823
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 14855
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 0
	sw $t0, -1344($fp)
	li $t0, 65381
	sw $t0, -1348($fp)
	addi $t0, $fp, -36
	sw $t0, -1352($fp)
	li $t0, 0
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
	lw $t0, -1348($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label420
label421:
	li $t0, 31881
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -1344($fp)
label420:
	addi $t0, $fp, -1076
	sw $t0, -1380($fp)
	li $t0, 0
	sw $t0, -1384($fp)
	lw $t0, -96($fp)
	sw $t0, -1388($fp)
	li $t0, 7437
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	li $t0, 44120
	sw $t0, -1400($fp)
	lw $t1, -1396($fp)
	lw $t2, -1400($fp)
	bge $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -1384($fp)
label423:
	li $t0, 4
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, 0($t0)
	sw $t1, -1412($fp)
	lw $t0, -336($fp)
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1420($fp)
	li $t0, 0
	sw $t0, -1424($fp)
	li $t0, 42057
	sw $t0, -1428($fp)
	li $t0, 1
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	li $t0, 0
	lw $t1, -1436($fp)
	sub $t0, $t0, $t1
	sw $t0, -1440($fp)
	addi $t0, $fp, -40
	sw $t0, -1444($fp)
	lw $t0, -324($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1452($fp)
	li $t0, 4
	lw $t1, -1452($fp)
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t1, -1444($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	lw $t1, -1440($fp)
	lw $t2, -1464($fp)
	bgt $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -1424($fp)
label425:
	li $t0, 0
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	li $t0, 61891
	sw $t0, -1480($fp)
	li $t0, 0
	lw $t1, -1480($fp)
	sub $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label430
label430:
	li $t0, 1
	sw $t0, -1476($fp)
label431:
	li $t0, 0
	sw $t0, -1488($fp)
	li $t0, 0
	sw $t0, -1492($fp)
	li $t0, 49148
	sw $t0, -1496($fp)
	lw $t0, 8($fp)
	sw $t0, -1500($fp)
	lw $t1, -1496($fp)
	lw $t2, -1500($fp)
	ble $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -1492($fp)
label435:
	lw $t0, -1324($fp)
	sw $t0, -1504($fp)
	lw $t1, -1492($fp)
	lw $t2, -1504($fp)
	blt $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -1488($fp)
label433:
	lw $t1, -1476($fp)
	lw $t2, -1488($fp)
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -1472($fp)
label429:
	lw $t0, -48($fp)
	sw $t0, -1508($fp)
	lw $t1, -1472($fp)
	lw $t2, -1508($fp)
	beq $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -1468($fp)
label427:
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 0
	sw $t0, -1520($fp)
	li $t0, 9869
	sw $t0, -1524($fp)
	li $t0, 24062
	sw $t0, -1528($fp)
	lw $t1, -1524($fp)
	lw $t2, -1528($fp)
	bge $t1, $t2, label442
	j label441
label442:
	lw $t0, -72($fp)
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -1520($fp)
label441:
	addi $sp, $sp, -4
	lw $t0, -1520($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1536($fp)
	addi $sp, $sp, 8
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label438:
	li $t0, 1
	sw $t0, -1516($fp)
label439:
	li $t0, 32814
	sw $t0, -1540($fp)
	li $t0, 60627
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1548($fp)
	lw $t0, -324($fp)
	sw $t0, -1552($fp)
	lw $t0, -1548($fp)
	lw $t1, -1552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1556($fp)
	li $t0, 0
	sw $t0, -1560($fp)
	jal f9
	sw $v0, -1564($fp)
	addi $sp, $sp, 4
	lw $t0, 4($fp)
	sw $t0, -1568($fp)
	lw $t1, -1564($fp)
	lw $t2, -1568($fp)
	ble $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -1560($fp)
label444:
	lw $t0, -324($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -1576($fp)
	addi $sp, $sp, -4
	lw $t0, -1516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1580($fp)
	addi $sp, $sp, 20
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -1512($fp)
label437:
	addi $t0, $fp, -36
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	lw $t0, 16($fp)
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -1588($fp)
label446:
	li $t0, 4
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	lw $t1, 0($t0)
	sw $t1, -1604($fp)
	lw $t0, -1512($fp)
	lw $t1, -1604($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	li $t0, 0
	lw $t1, -1608($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -48($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1636($fp)
	li $t0, 0
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
	lw $t0, -1652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1656($fp)
	li $t0, 1
	sw $t0, -1660($fp)
	li $t0, 4
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, 0($t0)
	sw $t1, -1672($fp)
	lw $t0, -1672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1676($fp)
	li $t0, 2
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
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1696($fp)
	li $t0, 3
	sw $t0, -1700($fp)
	li $t0, 4
	lw $t1, -1700($fp)
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1716($fp)
	li $t0, 4
	sw $t0, -1720($fp)
	li $t0, 4
	lw $t1, -1720($fp)
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	lw $t1, 0($t0)
	sw $t1, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1736($fp)
	li $t0, 5
	sw $t0, -1740($fp)
	li $t0, 4
	lw $t1, -1740($fp)
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	lw $t1, -1736($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	lw $t1, 0($t0)
	sw $t1, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1756($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -1776($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -1796($fp)
	li $t0, 0
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
	lw $t0, -324($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1824($fp)
	addi $t0, $fp, -36
	sw $t0, -1828($fp)
	lw $t0, -60($fp)
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
	li $t0, 0
	lw $t1, -1844($fp)
	sub $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t1, -1848($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -1824($fp)
label448:
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $ra, -4($fp)
	lw $v0, -1852($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 11421
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	lw $t0, -96($fp)
	sw $t0, -1868($fp)
	li $t0, 0
	sw $t0, -1872($fp)
	li $t0, 0
	sw $t0, -1876($fp)
	addi $t0, $fp, -36
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
	li $t0, 0
	lw $t1, -1896($fp)
	sub $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -72($fp)
	sw $t0, -1904($fp)
	lw $t0, -96($fp)
	sw $t0, -1908($fp)
	lw $t0, -1904($fp)
	lw $t1, -1908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1912($fp)
	li $t0, 0
	lw $t1, -1912($fp)
	sub $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t1, -1900($fp)
	lw $t2, -1916($fp)
	ble $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -1876($fp)
label452:
	li $t0, 43440
	sw $t0, -1920($fp)
	lw $t1, -1876($fp)
	lw $t2, -1920($fp)
	bgt $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -1872($fp)
label450:
label453:
	li $t0, 0
	sw $t0, -1924($fp)
	lw $t0, -60($fp)
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label457
label459:
	li $t0, 1772
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label458:
	li $t0, 31609
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -1924($fp)
label457:
	lw $t0, 12($fp)
	sw $t0, -1940($fp)
	lw $t0, -60($fp)
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	sub $t0, $t0, $t1
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	li $t0, 23864
	sw $t0, -1956($fp)
	li $t0, 46129
	sw $t0, -1960($fp)
	lw $t0, -1956($fp)
	lw $t1, -1960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1964($fp)
	li $t0, 4887
	sw $t0, -1968($fp)
	lw $t1, -1964($fp)
	lw $t2, -1968($fp)
	beq $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -1952($fp)
label461:
	li $t0, 0
	sw $t0, -1972($fp)
	li $t0, 0
	sw $t0, -1976($fp)
	li $t0, 0
	sw $t0, -1980($fp)
	li $t0, 108
	sw $t0, -1984($fp)
	li $t0, 18508
	sw $t0, -1988($fp)
	lw $t1, -1984($fp)
	lw $t2, -1988($fp)
	bgt $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -1980($fp)
label468:
	lw $t0, -84($fp)
	sw $t0, -1992($fp)
	lw $t1, -1980($fp)
	lw $t2, -1992($fp)
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -1976($fp)
label466:
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1996($fp)
	addi $sp, $sp, 8
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label464
label464:
	li $t0, 57701
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -1972($fp)
label463:
	addi $sp, $sp, -4
	lw $t0, -1924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2004($fp)
	addi $sp, $sp, 20
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 0
	sw $t0, -2008($fp)
	lw $t0, -336($fp)
	sw $t0, -2012($fp)
	lw $t0, -60($fp)
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	sub $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -84($fp)
	sw $t0, -2024($fp)
	lw $t1, -2020($fp)
	lw $t2, -2024($fp)
	blt $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -2008($fp)
label470:
	li $t0, 0
	sw $t0, -2028($fp)
	lw $t0, -1860($fp)
	sw $t0, -2032($fp)
	lw $t0, -60($fp)
	sw $t0, -2036($fp)
	lw $t1, -2032($fp)
	lw $t2, -2036($fp)
	bge $t1, $t2, label471
	j label473
label473:
	lw $t0, -84($fp)
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -2028($fp)
label472:
	jal f9
	sw $v0, -2044($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2048($fp)
	addi $sp, $sp, 16
	lw $t0, -2048($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -2052($fp)
	lw $ra, -4($fp)
	lw $v0, -2052($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label453
label455:
	li $t0, 0
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	li $t0, 5344
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label479
label479:
	lw $t0, -60($fp)
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -2060($fp)
label478:
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2072($fp)
	addi $sp, $sp, 8
	lw $t1, -2072($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label476
label476:
	jal f9
	sw $v0, -2076($fp)
	addi $sp, $sp, 4
	lw $t0, -84($fp)
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	sub $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -2056($fp)
label475:
	lw $t0, -48($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2108($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -2128($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -2148($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -2168($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -2188($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -2208($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -2228($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -2248($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -2268($fp)
	li $t0, 0
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
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2296($fp)
	jal f6
	sw $v0, -2300($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -40
	sw $t0, -2304($fp)
	lw $t0, 16($fp)
	sw $t0, -2308($fp)
	li $t0, 4
	lw $t1, -2308($fp)
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	jal f9
	sw $v0, -2324($fp)
	addi $sp, $sp, 4
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t1, -2300($fp)
	lw $t2, -2328($fp)
	beq $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -2296($fp)
label481:
	lw $ra, -4($fp)
	lw $v0, -2296($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -28
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label482
label482:
	li $t0, 1
	sw $t0, -8($fp)
label483:
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 57415
	sw $t0, -16($fp)
	li $t0, 9325
	sw $t0, -20($fp)
	lw $t0, 4($fp)
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -28($fp)
	lw $t0, -16($fp)
	lw $t1, -28($fp)
	sub $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $ra, -4($fp)
	lw $v0, -32($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -100
	li $t0, 63167
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 6734
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 9170
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	li $t0, 0
	sw $t0, -52($fp)
	lw $t0, -36($fp)
	sw $t0, -56($fp)
	lw $t1, -56($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label487
label487:
	lw $t0, -36($fp)
	sw $t0, -60($fp)
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label486
label486:
	lw $t0, -24($fp)
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -52($fp)
label485:
	lw $t0, -36($fp)
	sw $t0, -68($fp)
	li $t0, 0
	lw $t1, -68($fp)
	sub $t0, $t0, $t1
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	li $t0, 41530
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label489
label490:
	li $t0, 21518
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -76($fp)
label489:
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -88($fp)
	addi $sp, $sp, 20
	lw $t0, -12($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 41051
	sw $t0, -104($fp)
	lw $ra, -4($fp)
	lw $v0, -104($fp)
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
