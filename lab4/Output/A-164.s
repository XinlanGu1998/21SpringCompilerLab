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
	addi $sp, $sp, -556
	li $t0, 26776
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
	li $t0, 38697
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
	li $t0, 42663
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
	li $t0, 21207
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
	li $t0, 43971
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
	li $t0, 22944
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
	li $t0, 28522
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
	li $t0, 16440
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
	li $t0, 62876
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
	li $t0, 7495
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	addi $t0, $fp, -40
	sw $t0, -272($fp)
	li $t0, 0
	sw $t0, -276($fp)
	addi $t0, $fp, -40
	sw $t0, -280($fp)
	li $t0, 1
	sw $t0, -284($fp)
	li $t0, 4
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, 0($t0)
	sw $t1, -296($fp)
	li $t0, 23254
	sw $t0, -300($fp)
	lw $t1, -296($fp)
	lw $t2, -300($fp)
	blt $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -276($fp)
label122:
	li $t0, 4
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	lw $t1, 0($t0)
	sw $t1, -312($fp)
	addi $t0, $fp, -40
	sw $t0, -316($fp)
	li $t0, 8
	sw $t0, -320($fp)
	li $t0, 4
	lw $t1, -320($fp)
	mul $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	lw $t1, 0($t0)
	sw $t1, -332($fp)
	li $t0, 0
	lw $t1, -332($fp)
	sub $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, 8($fp)
	sw $t0, -340($fp)
	lw $t0, 8($fp)
	sw $t0, -344($fp)
	lw $t0, -340($fp)
	lw $t1, -344($fp)
	sub $t0, $t0, $t1
	sw $t0, -348($fp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -352($fp)
	addi $sp, $sp, 12
	lw $t0, -312($fp)
	lw $t1, -352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -356($fp)
	addi $t0, $fp, -40
	sw $t0, -360($fp)
	li $t0, 0
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
	lw $t0, -376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -380($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -400($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -420($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -440($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -460($fp)
	li $t0, 5
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
	lw $t0, -476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -480($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -500($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -520($fp)
	li $t0, 8
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
	lw $t0, -264($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -544($fp)
	li $t0, 3757
	sw $t0, -548($fp)
	lw $t0, -544($fp)
	lw $t1, -548($fp)
	sub $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -560($fp)
	lw $ra, -4($fp)
	lw $v0, -560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4004
	li $t0, 22421
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 49754
	sw $t0, -124($fp)
	addi $t0, $fp, -16
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
	li $t0, 48508
	sw $t0, -148($fp)
	addi $t0, $fp, -16
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
	li $t0, 60321
	sw $t0, -172($fp)
	addi $t0, $fp, -16
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
	li $t0, 7189
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 33184
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 44499
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 8962
	sw $t0, -232($fp)
	addi $t0, $fp, -56
	sw $t0, -236($fp)
	li $t0, 0
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
	li $t0, 48787
	sw $t0, -256($fp)
	addi $t0, $fp, -56
	sw $t0, -260($fp)
	li $t0, 1
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
	li $t0, 16103
	sw $t0, -280($fp)
	addi $t0, $fp, -56
	sw $t0, -284($fp)
	li $t0, 2
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
	li $t0, 25543
	sw $t0, -304($fp)
	addi $t0, $fp, -56
	sw $t0, -308($fp)
	li $t0, 3
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
	li $t0, 63022
	sw $t0, -328($fp)
	addi $t0, $fp, -56
	sw $t0, -332($fp)
	li $t0, 4
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
	li $t0, 7084
	sw $t0, -352($fp)
	addi $t0, $fp, -56
	sw $t0, -356($fp)
	li $t0, 5
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
	li $t0, 19877
	sw $t0, -376($fp)
	addi $t0, $fp, -56
	sw $t0, -380($fp)
	li $t0, 6
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
	li $t0, 7775
	sw $t0, -400($fp)
	addi $t0, $fp, -56
	sw $t0, -404($fp)
	li $t0, 7
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
	li $t0, 33860
	sw $t0, -424($fp)
	addi $t0, $fp, -56
	sw $t0, -428($fp)
	li $t0, 8
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
	li $t0, 58574
	sw $t0, -448($fp)
	addi $t0, $fp, -56
	sw $t0, -452($fp)
	li $t0, 9
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
	li $t0, 50438
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 55068
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 37009
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 7847
	sw $t0, -508($fp)
	addi $t0, $fp, -72
	sw $t0, -512($fp)
	li $t0, 0
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
	li $t0, 18054
	sw $t0, -532($fp)
	addi $t0, $fp, -72
	sw $t0, -536($fp)
	li $t0, 1
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
	li $t0, 53450
	sw $t0, -556($fp)
	addi $t0, $fp, -72
	sw $t0, -560($fp)
	li $t0, 2
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
	li $t0, 5187
	sw $t0, -580($fp)
	addi $t0, $fp, -72
	sw $t0, -584($fp)
	li $t0, 3
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
	li $t0, 25549
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 60073
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 48883
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 48803
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 15915
	sw $t0, -652($fp)
	addi $t0, $fp, -108
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
	li $t0, 53968
	sw $t0, -676($fp)
	addi $t0, $fp, -108
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
	li $t0, 52561
	sw $t0, -700($fp)
	addi $t0, $fp, -108
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
	li $t0, 38336
	sw $t0, -724($fp)
	addi $t0, $fp, -108
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
	li $t0, 38187
	sw $t0, -748($fp)
	addi $t0, $fp, -108
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
	li $t0, 35533
	sw $t0, -772($fp)
	addi $t0, $fp, -108
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
	li $t0, 33121
	sw $t0, -796($fp)
	addi $t0, $fp, -108
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
	li $t0, 45376
	sw $t0, -820($fp)
	addi $t0, $fp, -108
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
	li $t0, 3181
	sw $t0, -844($fp)
	addi $t0, $fp, -108
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
	li $t0, 12085
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 54338
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 51968
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 28188
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 14345
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 49454
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 35273
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 34222
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -116($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
	sw $t0, -1008($fp)
	li $t0, 2
	sw $t0, -1012($fp)
	li $t0, 4
	lw $t1, -1012($fp)
	mul $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	lw $t1, 0($t0)
	sw $t1, -1024($fp)
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1040($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -1060($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -1080($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -1100($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -1120($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -1140($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -1160($fp)
	li $t0, 6
	sw $t0, -1164($fp)
	li $t0, 4
	lw $t1, -1164($fp)
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, 0($t0)
	sw $t1, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1180($fp)
	li $t0, 7
	sw $t0, -1184($fp)
	li $t0, 4
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	lw $t1, 0($t0)
	sw $t1, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1200($fp)
	li $t0, 8
	sw $t0, -1204($fp)
	li $t0, 4
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1220($fp)
	li $t0, 9
	sw $t0, -1224($fp)
	li $t0, 4
	lw $t1, -1224($fp)
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1252($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	lw $t0, -608($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
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
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1368($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -1388($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -1408($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -1428($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -1448($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -1468($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -1488($fp)
	li $t0, 7
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
	addi $t0, $fp, -108
	sw $t0, -1508($fp)
	li $t0, 8
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
	lw $t0, -872($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1560($fp)
	li $t0, 57229
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -1560($fp)
label124:
	lw $ra, -4($fp)
	lw $v0, -1560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -476($fp)
	sw $t0, -1568($fp)
	lw $t0, -908($fp)
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 3597
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	li $t0, 27260
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	li $t0, 42132
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 58665
	sw $t0, -1648($fp)
	addi $t0, $fp, -1608
	sw $t0, -1652($fp)
	li $t0, 0
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
	li $t0, 64270
	sw $t0, -1672($fp)
	addi $t0, $fp, -1608
	sw $t0, -1676($fp)
	li $t0, 1
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
	li $t0, 49979
	sw $t0, -1696($fp)
	addi $t0, $fp, -1608
	sw $t0, -1700($fp)
	li $t0, 2
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
	li $t0, 11183
	sw $t0, -1720($fp)
	addi $t0, $fp, -1608
	sw $t0, -1724($fp)
	li $t0, 3
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
	li $t0, 52184
	sw $t0, -1744($fp)
	addi $t0, $fp, -1608
	sw $t0, -1748($fp)
	li $t0, 4
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
	li $t0, 55166
	sw $t0, -1768($fp)
	addi $t0, $fp, -1608
	sw $t0, -1772($fp)
	li $t0, 5
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
	li $t0, 36732
	sw $t0, -1792($fp)
	addi $t0, $fp, -1608
	sw $t0, -1796($fp)
	li $t0, 6
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
	li $t0, 46721
	sw $t0, -1816($fp)
	addi $t0, $fp, -1608
	sw $t0, -1820($fp)
	li $t0, 7
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
	li $t0, 38514
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	lw $t0, -212($fp)
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 7025
	sw $t0, -1856($fp)
	li $t0, 0
	lw $t1, -1856($fp)
	sub $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -488($fp)
	sw $t0, -1864($fp)
	lw $t0, -1844($fp)
	sw $t0, -1868($fp)
	lw $t0, -1864($fp)
	lw $t1, -1868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1872($fp)
	li $t0, 26946
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	li $t0, 20000
	sw $t0, -1888($fp)
	li $t0, 62636
	sw $t0, -1892($fp)
	lw $t0, -1888($fp)
	lw $t1, -1892($fp)
	sub $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -500($fp)
	sw $t0, -1900($fp)
	lw $t1, -1896($fp)
	lw $t2, -1900($fp)
	blt $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -1884($fp)
label129:
	lw $t0, -1616($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1908($fp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1912($fp)
	addi $sp, $sp, 20
	j label127
label126:
	addi $t0, $fp, -1608
	sw $t0, -1916($fp)
	li $t0, 0
	sw $t0, -1920($fp)
	li $t0, 4
	lw $t1, -1920($fp)
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	lw $t1, 0($t0)
	sw $t1, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 43295
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -1944($fp)
	addi $t0, $fp, -72
	sw $t0, -1948($fp)
	li $t0, 0
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
	li $t0, 32171
	sw $t0, -1968($fp)
	lw $t0, -1964($fp)
	lw $t1, -1968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1972($fp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1976($fp)
	addi $sp, $sp, 12
	li $t0, 48122
	sw $t0, -1980($fp)
	lw $t1, -1976($fp)
	lw $t2, -1980($fp)
	blt $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -1936($fp)
label131:
	addi $t0, $fp, -72
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
	li $t0, 0
	sw $t0, -2004($fp)
	li $t0, 42558
	sw $t0, -2008($fp)
	li $t0, 0
	lw $t1, -2008($fp)
	sub $t0, $t0, $t1
	sw $t0, -2012($fp)
	li $t0, 3022
	sw $t0, -2016($fp)
	lw $t1, -2012($fp)
	lw $t2, -2016($fp)
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -2004($fp)
label133:
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2020($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2020($fp)
	sub $t0, $t0, $t1
	sw $t0, -2024($fp)
	li $t0, 0
	sw $t0, -2028($fp)
	lw $t0, -476($fp)
	sw $t0, -2032($fp)
	li $t0, 35436
	sw $t0, -2036($fp)
	lw $t0, -2032($fp)
	lw $t1, -2036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label136:
	li $t0, 65133
	sw $t0, -2044($fp)
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -2028($fp)
label135:
	li $t0, 0
	sw $t0, -2048($fp)
	lw $t0, 4($fp)
	sw $t0, -2052($fp)
	lw $t0, 4($fp)
	sw $t0, -2056($fp)
	lw $t1, -2052($fp)
	lw $t2, -2056($fp)
	ble $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -2048($fp)
label138:
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2060($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2060($fp)
	sub $t0, $t0, $t1
	sw $t0, -2064($fp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2068($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2068($fp)
	sub $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -2076($fp)
	lw $ra, -4($fp)
	lw $v0, -2076($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label127:
	li $t0, 16808
	sw $t0, -2080($fp)
	li $t0, 0
	lw $t1, -2080($fp)
	sub $t0, $t0, $t1
	sw $t0, -2084($fp)
	addi $t0, $fp, -72
	sw $t0, -2088($fp)
	lw $t0, -116($fp)
	sw $t0, -2092($fp)
	li $t0, 7783
	sw $t0, -2096($fp)
	lw $t0, -2092($fp)
	lw $t1, -2096($fp)
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	li $t0, 4
	lw $t1, -2100($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, 0($t0)
	sw $t1, -2112($fp)
	lw $t0, -2084($fp)
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 0
	sw $t0, -2120($fp)
	li $t0, 0
	sw $t0, -2124($fp)
	lw $t0, -644($fp)
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label144:
	li $t0, 1
	sw $t0, -2124($fp)
label145:
	li $t0, 0
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	li $t0, 49915
	sw $t0, -2136($fp)
	li $t0, 9759
	sw $t0, -2140($fp)
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -896($fp)
	sw $t0, -2148($fp)
	lw $t0, -884($fp)
	sw $t0, -2152($fp)
	lw $t0, -2148($fp)
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	li $t0, 44069
	sw $t0, -2160($fp)
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	sub $t0, $t0, $t1
	sw $t0, -2164($fp)
	li $t0, 0
	sw $t0, -2168($fp)
	lw $t0, -956($fp)
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label146
label148:
	li $t0, 16630
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -2168($fp)
label147:
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2168($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2180($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2180($fp)
	sub $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -884($fp)
	sw $t0, -2188($fp)
	lw $t0, -932($fp)
	sw $t0, -2192($fp)
	lw $t0, -2188($fp)
	lw $t1, -2192($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	li $t0, 42803
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2204($fp)
	lw $t0, -2184($fp)
	lw $t1, -2204($fp)
	sub $t0, $t0, $t1
	sw $t0, -2208($fp)
	li $t0, 0
	sw $t0, -2212($fp)
	lw $t0, -488($fp)
	sw $t0, -2216($fp)
	li $t0, 0
	sw $t0, -2220($fp)
	li $t0, 34358
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label151
label151:
	li $t0, 1
	sw $t0, -2220($fp)
label152:
	lw $t1, -2216($fp)
	lw $t2, -2220($fp)
	blt $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -2212($fp)
label150:
	lw $t1, -2208($fp)
	lw $t2, -2212($fp)
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -2120($fp)
label143:
	lw $ra, -4($fp)
	lw $v0, -2120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label141
label140:
	li $t0, 0
	sw $t0, -2228($fp)
	addi $t0, $fp, -72
	sw $t0, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	lw $t0, -944($fp)
	sw $t0, -2240($fp)
	lw $t0, -620($fp)
	sw $t0, -2244($fp)
	lw $t1, -2240($fp)
	lw $t2, -2244($fp)
	beq $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -2236($fp)
label156:
	li $t0, 4
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 20943
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -2260($fp)
label158:
	lw $t0, -2256($fp)
	lw $t1, -2260($fp)
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	addi $t0, $fp, -72
	sw $t0, -2272($fp)
	lw $t0, -116($fp)
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
	lw $t0, -488($fp)
	sw $t0, -2292($fp)
	lw $t0, -2288($fp)
	lw $t1, -2292($fp)
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -1628($fp)
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	sub $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t1, -2268($fp)
	lw $t2, -2304($fp)
	beq $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -2228($fp)
label154:
label141:
	li $t0, 29451
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -2316($fp)
	li $t0, 23988
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -2328($fp)
	li $t0, 57675
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	sw $t0, -2340($fp)
	li $t0, 10636
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	li $t0, 62502
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	li $t0, 23913
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -2368($fp)
label164:
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, 8($fp)
	sw $t0, -2380($fp)
	lw $t0, -500($fp)
	sw $t0, -2384($fp)
	lw $t0, -2380($fp)
	lw $t1, -2384($fp)
	sub $t0, $t0, $t1
	sw $t0, -2388($fp)
	li $t0, 0
	sw $t0, -2392($fp)
	li $t0, 7736
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 1
	sw $t0, -2392($fp)
label166:
	li $t0, 12139
	sw $t0, -2400($fp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2404($fp)
	addi $sp, $sp, 20
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label159
label162:
	li $t0, 19164
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	lw $t0, -2312($fp)
	sw $t0, -2416($fp)
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -2412($fp)
label168:
	lw $t0, -2408($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 0
	sw $t0, -2424($fp)
	li $t0, 43172
	sw $t0, -2428($fp)
	lw $t0, -956($fp)
	sw $t0, -2432($fp)
	li $t0, 0
	lw $t1, -2432($fp)
	sub $t0, $t0, $t1
	sw $t0, -2436($fp)
	li $t0, 0
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2428($fp)
	lw $t1, -2440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2444($fp)
	lw $t1, -2444($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label171:
	li $t0, 23510
	sw $t0, -2448($fp)
	lw $t0, 12($fp)
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2360($fp)
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -212($fp)
	sw $t0, -2468($fp)
	li $t0, 0
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2464($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t1, -2476($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -2424($fp)
label170:
label160:
	li $t0, 0
	sw $t0, -2480($fp)
	li $t0, 8560
	sw $t0, -2484($fp)
	li $t0, 0
	sw $t0, -2488($fp)
	li $t0, 36725
	sw $t0, -2492($fp)
	lw $t0, -908($fp)
	sw $t0, -2496($fp)
	lw $t1, -2492($fp)
	lw $t2, -2496($fp)
	beq $t1, $t2, label176
	j label175
label176:
	lw $t0, -500($fp)
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -2488($fp)
label175:
	li $t0, 0
	sw $t0, -2504($fp)
	li $t0, 0
	sw $t0, -2508($fp)
	li $t0, 61301
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -2508($fp)
label180:
	lw $t0, -488($fp)
	sw $t0, -2516($fp)
	lw $t1, -2508($fp)
	lw $t2, -2516($fp)
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2504($fp)
label178:
	addi $sp, $sp, -4
	lw $t0, -2488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2520($fp)
	addi $sp, $sp, 12
	lw $t0, -620($fp)
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	mul $t0, $t0, $t1
	sw $t0, -2528($fp)
	li $t0, 41925
	sw $t0, -2532($fp)
	lw $t0, -884($fp)
	sw $t0, -2536($fp)
	lw $t0, -2532($fp)
	lw $t1, -2536($fp)
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2348($fp)
	sw $t0, -2544($fp)
	lw $t0, -2540($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	li $t0, 0
	sw $t0, -2552($fp)
	lw $t0, -2348($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -2560($fp)
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 61722
	sw $t0, -2568($fp)
	li $t0, 0
	lw $t1, -2568($fp)
	sub $t0, $t0, $t1
	sw $t0, -2572($fp)
	li $t0, 46194
	sw $t0, -2576($fp)
	lw $t1, -2572($fp)
	lw $t2, -2576($fp)
	bge $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -2564($fp)
label184:
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2580($fp)
	addi $sp, $sp, 12
	li $t0, 2948
	sw $t0, -2584($fp)
	lw $t1, -2580($fp)
	lw $t2, -2584($fp)
	bge $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -2552($fp)
label182:
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2588($fp)
	addi $sp, $sp, 20
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label172
label172:
	li $t0, 1
	sw $t0, -2480($fp)
label173:
	li $t0, 39061
	sw $t0, -2592($fp)
	lw $t0, -2480($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	li $t0, 0
	sw $t0, -2600($fp)
	li $t0, 36119
	sw $t0, -2604($fp)
	lw $t0, -2336($fp)
	sw $t0, -2608($fp)
	lw $t0, -2604($fp)
	lw $t1, -2608($fp)
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -200($fp)
	sw $t0, -2616($fp)
	lw $t1, -2612($fp)
	lw $t2, -2616($fp)
	bgt $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -2600($fp)
label189:
	addi $t0, $fp, -56
	sw $t0, -2620($fp)
	lw $t0, -908($fp)
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
	li $t0, 0
	sw $t0, -2640($fp)
	lw $t0, -944($fp)
	sw $t0, -2644($fp)
	li $t0, 52093
	sw $t0, -2648($fp)
	lw $t0, -2644($fp)
	lw $t1, -2648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2652($fp)
	lw $t0, -224($fp)
	sw $t0, -2656($fp)
	lw $t1, -2652($fp)
	lw $t2, -2656($fp)
	ble $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -2640($fp)
label191:
	li $t0, 0
	sw $t0, -2660($fp)
	li $t0, 19311
	sw $t0, -2664($fp)
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -2660($fp)
label193:
	li $t0, 24650
	sw $t0, -2668($fp)
	lw $t0, -2660($fp)
	lw $t1, -2668($fp)
	sub $t0, $t0, $t1
	sw $t0, -2672($fp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2676($fp)
	addi $sp, $sp, 20
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	addi $t0, $fp, -16
	sw $t0, -2680($fp)
	lw $t0, -2336($fp)
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
	li $t0, 0
	sw $t0, -2700($fp)
	lw $t0, -2324($fp)
	sw $t0, -2704($fp)
	li $t0, 0
	lw $t1, -2704($fp)
	sub $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label196:
	li $t0, 12947
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -2700($fp)
label195:
	li $t0, 0
	sw $t0, -2716($fp)
	li $t0, 14652
	sw $t0, -2720($fp)
	lw $t0, -212($fp)
	sw $t0, -2724($fp)
	lw $t0, -2720($fp)
	lw $t1, -2724($fp)
	sub $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label199
label199:
	li $t0, 16812
	sw $t0, -2732($fp)
	lw $t1, -2732($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -2716($fp)
label198:
	li $t0, 0
	sw $t0, -2736($fp)
	li $t0, 3187
	sw $t0, -2740($fp)
	lw $t0, -608($fp)
	sw $t0, -2744($fp)
	lw $t1, -2740($fp)
	lw $t2, -2744($fp)
	ble $t1, $t2, label200
	j label202
label202:
	lw $t0, -212($fp)
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -2736($fp)
label201:
	li $t0, 32433
	sw $t0, -2752($fp)
	lw $t0, -200($fp)
	sw $t0, -2756($fp)
	lw $t0, -2752($fp)
	lw $t1, -2756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2760($fp)
	li $t0, 0
	lw $t1, -2760($fp)
	sub $t0, $t0, $t1
	sw $t0, -2764($fp)
	addi $sp, $sp, -4
	lw $t0, -2700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2764($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2768($fp)
	addi $sp, $sp, 20
	lw $t0, -2696($fp)
	lw $t1, -2768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2772($fp)
	j label187
label186:
	li $t0, 0
	sw $t0, -2776($fp)
	li $t0, 0
	sw $t0, -2780($fp)
	addi $t0, $fp, -72
	sw $t0, -2784($fp)
	lw $t0, -884($fp)
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
	lw $t0, -500($fp)
	sw $t0, -2804($fp)
	lw $t1, -2800($fp)
	lw $t2, -2804($fp)
	blt $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -2780($fp)
label206:
	lw $t0, -896($fp)
	sw $t0, -2808($fp)
	lw $t0, -620($fp)
	sw $t0, -2812($fp)
	lw $t0, -2808($fp)
	lw $t1, -2812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2816($fp)
	lw $t0, -608($fp)
	sw $t0, -2820($fp)
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	li $t0, 0
	sw $t0, -2828($fp)
	lw $t0, -488($fp)
	sw $t0, -2832($fp)
	li $t0, 57455
	sw $t0, -2836($fp)
	lw $t0, -2832($fp)
	lw $t1, -2836($fp)
	mul $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label209
label209:
	lw $t0, -632($fp)
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -2828($fp)
label208:
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, -212($fp)
	sw $t0, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label212:
	lw $t0, -644($fp)
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -2848($fp)
label211:
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2848($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2860($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -212($fp)
	sw $t0, -2868($fp)
	lw $t0, -932($fp)
	sw $t0, -2872($fp)
	lw $t0, -2868($fp)
	lw $t1, -2872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2876($fp)
	li $t0, 9622
	sw $t0, -2880($fp)
	lw $t0, -2876($fp)
	lw $t1, -2880($fp)
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	li $t0, 21370
	sw $t0, -2888($fp)
	lw $t0, 8($fp)
	sw $t0, -2892($fp)
	li $t0, 51170
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2900($fp)
	li $t0, 33890
	sw $t0, -2904($fp)
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2908($fp)
	addi $t0, $fp, -72
	sw $t0, -2912($fp)
	lw $t0, 12($fp)
	sw $t0, -2916($fp)
	li $t0, 4
	lw $t1, -2916($fp)
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	lw $t1, -2912($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	lw $t1, 0($t0)
	sw $t1, -2928($fp)
	lw $t0, -2312($fp)
	sw $t0, -2932($fp)
	lw $t0, -2928($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2936($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2940($fp)
	addi $sp, $sp, 20
	lw $t0, -2864($fp)
	lw $t1, -2940($fp)
	sub $t0, $t0, $t1
	sw $t0, -2944($fp)
	li $t0, 0
	sw $t0, -2948($fp)
	li $t0, 0
	sw $t0, -2952($fp)
	lw $t0, 8($fp)
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label215:
	li $t0, 1
	sw $t0, -2952($fp)
label216:
	lw $t0, -200($fp)
	sw $t0, -2960($fp)
	li $t0, 0
	lw $t1, -2960($fp)
	sub $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t1, -2952($fp)
	lw $t2, -2964($fp)
	bge $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -2948($fp)
label214:
	lw $t1, -2944($fp)
	lw $t2, -2948($fp)
	beq $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -2776($fp)
label204:
label187:
	li $t0, 0
	sw $t0, -2968($fp)
	lw $t0, -200($fp)
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label217:
	li $t0, 1
	sw $t0, -2968($fp)
label218:
	li $t0, 0
	sw $t0, -2976($fp)
	lw $t0, -872($fp)
	sw $t0, -2980($fp)
	lw $t0, -920($fp)
	sw $t0, -2984($fp)
	lw $t1, -2980($fp)
	lw $t2, -2984($fp)
	bge $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -2976($fp)
label223:
	li $t0, 26029
	sw $t0, -2988($fp)
	lw $t1, -2976($fp)
	lw $t2, -2988($fp)
	ble $t1, $t2, label219
	j label220
label219:
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 0
	sw $t0, -2996($fp)
	li $t0, 0
	sw $t0, -3000($fp)
	li $t0, 32006
	sw $t0, -3004($fp)
	li $t0, 6589
	sw $t0, -3008($fp)
	lw $t0, -200($fp)
	sw $t0, -3012($fp)
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	sub $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t1, -3004($fp)
	lw $t2, -3016($fp)
	beq $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -3000($fp)
label229:
	li $t0, 0
	sw $t0, -3020($fp)
	lw $t0, -212($fp)
	sw $t0, -3024($fp)
	lw $t0, 12($fp)
	sw $t0, -3028($fp)
	lw $t0, -3024($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -620($fp)
	sw $t0, -3036($fp)
	lw $t1, -3032($fp)
	lw $t2, -3036($fp)
	bgt $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -3020($fp)
label231:
	li $t0, 0
	sw $t0, -3040($fp)
	li $t0, 38169
	sw $t0, -3044($fp)
	li $t0, 39742
	sw $t0, -3048($fp)
	lw $t1, -3044($fp)
	lw $t2, -3048($fp)
	ble $t1, $t2, label232
	j label234
label234:
	lw $t0, -488($fp)
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -3040($fp)
label233:
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3056($fp)
	addi $sp, $sp, 12
	lw $t1, -3000($fp)
	lw $t2, -3056($fp)
	beq $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -2996($fp)
label227:
	addi $t0, $fp, -108
	sw $t0, -3060($fp)
	li $t0, 3
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
	lw $t1, -2996($fp)
	lw $t2, -3076($fp)
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -2992($fp)
label225:
	lw $ra, -4($fp)
	lw $v0, -2992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label221
label220:
	lw $t0, -632($fp)
	sw $t0, -3080($fp)
	lw $t1, -3080($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 0
	sw $t0, -3084($fp)
	lw $t0, -608($fp)
	sw $t0, -3088($fp)
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	li $t0, 54012
	sw $t0, -3096($fp)
	lw $t1, -3092($fp)
	lw $t2, -3096($fp)
	bne $t1, $t2, label240
	j label239
label240:
	lw $t0, -896($fp)
	sw $t0, -3100($fp)
	lw $t0, -932($fp)
	sw $t0, -3104($fp)
	lw $t1, -3100($fp)
	lw $t2, -3104($fp)
	beq $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -3084($fp)
label239:
	lw $t0, -3084($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -3108($fp)
	j label237
label236:
	addi $t0, $fp, -16
	sw $t0, -3112($fp)
	li $t0, 53520
	sw $t0, -3116($fp)
	li $t0, 63573
	sw $t0, -3120($fp)
	lw $t0, -3116($fp)
	lw $t1, -3120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3124($fp)
	li $t0, 4
	lw $t1, -3124($fp)
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	li $t0, 56961
	sw $t0, -3140($fp)
	lw $t0, -3136($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label242
label244:
	li $t0, 29909
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
label245:
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 38470
	sw $t0, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label251:
	li $t0, 32864
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -3152($fp)
label250:
	li $t0, 0
	sw $t0, -3164($fp)
	li $t0, 59339
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label255:
	li $t0, 28150
	sw $t0, -3172($fp)
	lw $t1, -3172($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label254
label254:
	lw $t0, -608($fp)
	sw $t0, -3176($fp)
	lw $t1, -3176($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -3164($fp)
label253:
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3180($fp)
	addi $sp, $sp, 12
	lw $t0, -632($fp)
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label248
label248:
	li $t0, 47461
	sw $t0, -3192($fp)
	li $t0, 63120
	sw $t0, -3196($fp)
	lw $t0, -908($fp)
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3204($fp)
	lw $t0, -3192($fp)
	lw $t1, -3204($fp)
	sub $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
label256:
	li $t0, 19421
	sw $t0, -3212($fp)
	lw $t0, -884($fp)
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3220($fp)
	li $t0, 18044
	sw $t0, -3224($fp)
	li $t0, 30017
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3232($fp)
	lw $t0, -3220($fp)
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	li $t0, 22609
	sw $t0, -3240($fp)
	li $t0, 32697
	sw $t0, -3244($fp)
	lw $t0, -3240($fp)
	lw $t1, -3244($fp)
	mul $t0, $t0, $t1
	sw $t0, -3248($fp)
	li $t0, 1
	sw $t0, -3252($fp)
	lw $t0, -3248($fp)
	lw $t1, -3252($fp)
	mul $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3236($fp)
	lw $t1, -3256($fp)
	sub $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 0
	sw $t0, -3264($fp)
	li $t0, 0
	sw $t0, -3268($fp)
	addi $t0, $fp, -16
	sw $t0, -3272($fp)
	lw $t0, -620($fp)
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
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -3268($fp)
label262:
	lw $t0, -116($fp)
	sw $t0, -3292($fp)
	li $t0, 0
	lw $t1, -3292($fp)
	sub $t0, $t0, $t1
	sw $t0, -3296($fp)
	li $t0, 0
	lw $t1, -3296($fp)
	sub $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3268($fp)
	lw $t1, -3300($fp)
	sub $t0, $t0, $t1
	sw $t0, -3304($fp)
	li $t0, 35556
	sw $t0, -3308($fp)
	lw $t1, -3304($fp)
	lw $t2, -3308($fp)
	bge $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -3264($fp)
label260:
	j label256
label258:
	j label245
label247:
label242:
label237:
label221:
	lw $t0, -116($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3316($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -3336($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -3356($fp)
	li $t0, 2
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
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3388($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -3408($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -3428($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -3448($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -3468($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -3488($fp)
	li $t0, 5
	sw $t0, -3492($fp)
	li $t0, 4
	lw $t1, -3492($fp)
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	lw $t1, -3488($fp)
	add $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, 0($t0)
	sw $t1, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3508($fp)
	li $t0, 6
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
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3528($fp)
	li $t0, 7
	sw $t0, -3532($fp)
	li $t0, 4
	lw $t1, -3532($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, -3528($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, 0($t0)
	sw $t1, -3544($fp)
	lw $t0, -3544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3548($fp)
	li $t0, 8
	sw $t0, -3552($fp)
	li $t0, 4
	lw $t1, -3552($fp)
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	lw $t1, -3548($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, 0($t0)
	sw $t1, -3564($fp)
	lw $t0, -3564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -3568($fp)
	li $t0, 9
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
	lw $t0, -3584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3600($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -3620($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -3640($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -3660($fp)
	li $t0, 3
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
	lw $t0, -608($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
	sw $t0, -3856($fp)
	li $t0, 8
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
	lw $t0, -3872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3908($fp)
	addi $t0, $fp, -16
	sw $t0, -3912($fp)
	lw $t0, -200($fp)
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
	li $t0, 0
	sw $t0, -3932($fp)
	addi $t0, $fp, -72
	sw $t0, -3936($fp)
	lw $t0, 8($fp)
	sw $t0, -3940($fp)
	li $t0, 4
	lw $t1, -3940($fp)
	mul $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	lw $t1, -3936($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, 0($t0)
	sw $t1, -3952($fp)
	lw $t1, -3952($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label267:
	li $t0, 3910
	sw $t0, -3956($fp)
	lw $t1, -3956($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -3932($fp)
label266:
	li $t0, 0
	sw $t0, -3960($fp)
	li $t0, 0
	sw $t0, -3964($fp)
	li $t0, 24616
	sw $t0, -3968($fp)
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -3964($fp)
label271:
	li $t0, 32463
	sw $t0, -3972($fp)
	lw $t1, -3964($fp)
	lw $t2, -3972($fp)
	ble $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -3960($fp)
label269:
	addi $t0, $fp, -56
	sw $t0, -3976($fp)
	lw $t0, -884($fp)
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
	lw $t0, 16($fp)
	sw $t0, -3996($fp)
	lw $t0, -224($fp)
	sw $t0, -4000($fp)
	lw $t0, -3996($fp)
	lw $t1, -4000($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	addi $sp, $sp, -4
	lw $t0, -3932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4004($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4008($fp)
	addi $sp, $sp, 20
	lw $t1, -3928($fp)
	lw $t2, -4008($fp)
	bgt $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -3908($fp)
label264:
	lw $ra, -4($fp)
	lw $v0, -3908($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -92
	li $t0, 45987
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 42085
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 48674
	sw $t0, -36($fp)
	li $t0, 2572
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	blt $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -32($fp)
label273:
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	li $t0, 0
	sw $t0, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	li $t0, 12457
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	mul $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -12($fp)
	sw $t0, -72($fp)
	lw $t1, -68($fp)
	lw $t2, -72($fp)
	bne $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -56($fp)
label275:
	li $t0, 29939
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -80($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -80($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -84($fp)
	addi $sp, $sp, 20
	lw $t0, -12($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 52200
	sw $t0, -96($fp)
	lw $ra, -4($fp)
	lw $v0, -96($fp)
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
	jal f8
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
