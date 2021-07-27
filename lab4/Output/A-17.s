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
	addi $sp, $sp, -15752
	li $t0, 18299
	sw $t0, -328($fp)
	addi $t0, $fp, -40
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
	li $t0, 20904
	sw $t0, -352($fp)
	addi $t0, $fp, -40
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
	li $t0, 816
	sw $t0, -376($fp)
	addi $t0, $fp, -40
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
	li $t0, 10850
	sw $t0, -400($fp)
	addi $t0, $fp, -40
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
	li $t0, 59968
	sw $t0, -424($fp)
	addi $t0, $fp, -40
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
	li $t0, 34658
	sw $t0, -448($fp)
	addi $t0, $fp, -40
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
	li $t0, 29682
	sw $t0, -472($fp)
	addi $t0, $fp, -40
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
	li $t0, 33714
	sw $t0, -496($fp)
	addi $t0, $fp, -40
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
	li $t0, 52261
	sw $t0, -520($fp)
	addi $t0, $fp, -40
	sw $t0, -524($fp)
	li $t0, 8
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
	li $t0, 18857
	sw $t0, -544($fp)
	addi $t0, $fp, -44
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
	li $t0, 50764
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 60585
	sw $t0, -580($fp)
	addi $t0, $fp, -64
	sw $t0, -584($fp)
	li $t0, 0
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
	li $t0, 41123
	sw $t0, -604($fp)
	addi $t0, $fp, -64
	sw $t0, -608($fp)
	li $t0, 1
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
	li $t0, 31792
	sw $t0, -628($fp)
	addi $t0, $fp, -64
	sw $t0, -632($fp)
	li $t0, 2
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
	li $t0, 2512
	sw $t0, -652($fp)
	addi $t0, $fp, -64
	sw $t0, -656($fp)
	li $t0, 3
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
	li $t0, 31421
	sw $t0, -676($fp)
	addi $t0, $fp, -64
	sw $t0, -680($fp)
	li $t0, 4
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
	li $t0, 50401
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 3327
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 36969
	sw $t0, -724($fp)
	addi $t0, $fp, -68
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
	li $t0, 53437
	sw $t0, -748($fp)
	addi $t0, $fp, -92
	sw $t0, -752($fp)
	li $t0, 0
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
	li $t0, 46222
	sw $t0, -772($fp)
	addi $t0, $fp, -92
	sw $t0, -776($fp)
	li $t0, 1
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
	li $t0, 48585
	sw $t0, -796($fp)
	addi $t0, $fp, -92
	sw $t0, -800($fp)
	li $t0, 2
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
	li $t0, 7565
	sw $t0, -820($fp)
	addi $t0, $fp, -92
	sw $t0, -824($fp)
	li $t0, 3
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
	li $t0, 21569
	sw $t0, -844($fp)
	addi $t0, $fp, -92
	sw $t0, -848($fp)
	li $t0, 4
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
	li $t0, 19631
	sw $t0, -868($fp)
	addi $t0, $fp, -92
	sw $t0, -872($fp)
	li $t0, 5
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
	li $t0, 29746
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 14935
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 60990
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 55089
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 33649
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 27476
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 7852
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 54553
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 28293
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 18703
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 48985
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 62951
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 48385
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 17163
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 49677
	sw $t0, -1060($fp)
	addi $t0, $fp, -96
	sw $t0, -1064($fp)
	li $t0, 0
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
	li $t0, 1706
	sw $t0, -1084($fp)
	addi $t0, $fp, -136
	sw $t0, -1088($fp)
	li $t0, 0
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
	li $t0, 2392
	sw $t0, -1108($fp)
	addi $t0, $fp, -136
	sw $t0, -1112($fp)
	li $t0, 1
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
	li $t0, 44726
	sw $t0, -1132($fp)
	addi $t0, $fp, -136
	sw $t0, -1136($fp)
	li $t0, 2
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
	li $t0, 42829
	sw $t0, -1156($fp)
	addi $t0, $fp, -136
	sw $t0, -1160($fp)
	li $t0, 3
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
	li $t0, 34184
	sw $t0, -1180($fp)
	addi $t0, $fp, -136
	sw $t0, -1184($fp)
	li $t0, 4
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
	li $t0, 47238
	sw $t0, -1204($fp)
	addi $t0, $fp, -136
	sw $t0, -1208($fp)
	li $t0, 5
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
	li $t0, 8714
	sw $t0, -1228($fp)
	addi $t0, $fp, -136
	sw $t0, -1232($fp)
	li $t0, 6
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
	li $t0, 19049
	sw $t0, -1252($fp)
	addi $t0, $fp, -136
	sw $t0, -1256($fp)
	li $t0, 7
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
	li $t0, 50566
	sw $t0, -1276($fp)
	addi $t0, $fp, -136
	sw $t0, -1280($fp)
	li $t0, 8
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
	li $t0, 45684
	sw $t0, -1300($fp)
	addi $t0, $fp, -136
	sw $t0, -1304($fp)
	li $t0, 9
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
	li $t0, 6951
	sw $t0, -1324($fp)
	addi $t0, $fp, -152
	sw $t0, -1328($fp)
	li $t0, 0
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
	li $t0, 31252
	sw $t0, -1348($fp)
	addi $t0, $fp, -152
	sw $t0, -1352($fp)
	li $t0, 1
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
	li $t0, 28733
	sw $t0, -1372($fp)
	addi $t0, $fp, -152
	sw $t0, -1376($fp)
	li $t0, 2
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
	li $t0, 14516
	sw $t0, -1396($fp)
	addi $t0, $fp, -152
	sw $t0, -1400($fp)
	li $t0, 3
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
	li $t0, 52821
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 48365
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 44262
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 2221
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 43819
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 33815
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	li $t0, 35870
	sw $t0, -1492($fp)
	addi $t0, $fp, -160
	sw $t0, -1496($fp)
	li $t0, 0
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
	li $t0, 5759
	sw $t0, -1516($fp)
	addi $t0, $fp, -160
	sw $t0, -1520($fp)
	li $t0, 1
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
	li $t0, 41668
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	li $t0, 24887
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 34052
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 60371
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 8337
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 31468
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	li $t0, 43220
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	li $t0, 25500
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	li $t0, 15609
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 44927
	sw $t0, -1648($fp)
	addi $t0, $fp, -180
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
	li $t0, 27892
	sw $t0, -1672($fp)
	addi $t0, $fp, -180
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
	li $t0, 60335
	sw $t0, -1696($fp)
	addi $t0, $fp, -180
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
	li $t0, 22220
	sw $t0, -1720($fp)
	addi $t0, $fp, -180
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
	li $t0, 62076
	sw $t0, -1744($fp)
	addi $t0, $fp, -180
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
	li $t0, 42037
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 30935
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 15590
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 27067
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 11083
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 22541
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 58320
	sw $t0, -1840($fp)
	addi $t0, $fp, -192
	sw $t0, -1844($fp)
	li $t0, 0
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
	li $t0, 39816
	sw $t0, -1864($fp)
	addi $t0, $fp, -192
	sw $t0, -1868($fp)
	li $t0, 1
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
	li $t0, 37057
	sw $t0, -1888($fp)
	addi $t0, $fp, -192
	sw $t0, -1892($fp)
	li $t0, 2
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
	li $t0, 45605
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	li $t0, 22645
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 15783
	sw $t0, -1936($fp)
	addi $t0, $fp, -208
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
	li $t0, 47826
	sw $t0, -1960($fp)
	addi $t0, $fp, -208
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
	li $t0, 928
	sw $t0, -1984($fp)
	addi $t0, $fp, -208
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
	li $t0, 49599
	sw $t0, -2008($fp)
	addi $t0, $fp, -208
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
	li $t0, 18160
	sw $t0, -2032($fp)
	addi $t0, $fp, -220
	sw $t0, -2036($fp)
	li $t0, 0
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
	li $t0, 6688
	sw $t0, -2056($fp)
	addi $t0, $fp, -220
	sw $t0, -2060($fp)
	li $t0, 1
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
	li $t0, 25731
	sw $t0, -2080($fp)
	addi $t0, $fp, -220
	sw $t0, -2084($fp)
	li $t0, 2
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
	li $t0, 43048
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 40740
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 20566
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	li $t0, 51385
	sw $t0, -2140($fp)
	addi $t0, $fp, -244
	sw $t0, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2144($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2140($fp)
	lw $t1, -2156($fp)
	sw $t0, 0($t1)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	li $t0, 6672
	sw $t0, -2164($fp)
	addi $t0, $fp, -244
	sw $t0, -2168($fp)
	li $t0, 1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2168($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2164($fp)
	lw $t1, -2180($fp)
	sw $t0, 0($t1)
	lw $t0, -2180($fp)
	lw $t1, 0($t0)
	sw $t1, -2184($fp)
	li $t0, 63786
	sw $t0, -2188($fp)
	addi $t0, $fp, -244
	sw $t0, -2192($fp)
	li $t0, 2
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2192($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2188($fp)
	lw $t1, -2204($fp)
	sw $t0, 0($t1)
	lw $t0, -2204($fp)
	lw $t1, 0($t0)
	sw $t1, -2208($fp)
	li $t0, 11349
	sw $t0, -2212($fp)
	addi $t0, $fp, -244
	sw $t0, -2216($fp)
	li $t0, 3
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
	li $t0, 22281
	sw $t0, -2236($fp)
	addi $t0, $fp, -244
	sw $t0, -2240($fp)
	li $t0, 4
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
	li $t0, 43177
	sw $t0, -2260($fp)
	addi $t0, $fp, -244
	sw $t0, -2264($fp)
	li $t0, 5
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
	li $t0, 39242
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -2292($fp)
	li $t0, 17080
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	sw $t0, -2304($fp)
	li $t0, 65398
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -2316($fp)
	li $t0, 35782
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -2328($fp)
	li $t0, 59118
	sw $t0, -2332($fp)
	addi $t0, $fp, -276
	sw $t0, -2336($fp)
	li $t0, 0
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2336($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2332($fp)
	lw $t1, -2348($fp)
	sw $t0, 0($t1)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	li $t0, 30797
	sw $t0, -2356($fp)
	addi $t0, $fp, -276
	sw $t0, -2360($fp)
	li $t0, 1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2360($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2356($fp)
	lw $t1, -2372($fp)
	sw $t0, 0($t1)
	lw $t0, -2372($fp)
	lw $t1, 0($t0)
	sw $t1, -2376($fp)
	li $t0, 51372
	sw $t0, -2380($fp)
	addi $t0, $fp, -276
	sw $t0, -2384($fp)
	li $t0, 2
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2384($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2380($fp)
	lw $t1, -2396($fp)
	sw $t0, 0($t1)
	lw $t0, -2396($fp)
	lw $t1, 0($t0)
	sw $t1, -2400($fp)
	li $t0, 20649
	sw $t0, -2404($fp)
	addi $t0, $fp, -276
	sw $t0, -2408($fp)
	li $t0, 3
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2408($fp)
	lw $t1, -2416($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2404($fp)
	lw $t1, -2420($fp)
	sw $t0, 0($t1)
	lw $t0, -2420($fp)
	lw $t1, 0($t0)
	sw $t1, -2424($fp)
	li $t0, 41880
	sw $t0, -2428($fp)
	addi $t0, $fp, -276
	sw $t0, -2432($fp)
	li $t0, 4
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2432($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2428($fp)
	lw $t1, -2444($fp)
	sw $t0, 0($t1)
	lw $t0, -2444($fp)
	lw $t1, 0($t0)
	sw $t1, -2448($fp)
	li $t0, 8377
	sw $t0, -2452($fp)
	addi $t0, $fp, -276
	sw $t0, -2456($fp)
	li $t0, 5
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2456($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2452($fp)
	lw $t1, -2468($fp)
	sw $t0, 0($t1)
	lw $t0, -2468($fp)
	lw $t1, 0($t0)
	sw $t1, -2472($fp)
	li $t0, 13433
	sw $t0, -2476($fp)
	addi $t0, $fp, -276
	sw $t0, -2480($fp)
	li $t0, 6
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2480($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2476($fp)
	lw $t1, -2492($fp)
	sw $t0, 0($t1)
	lw $t0, -2492($fp)
	lw $t1, 0($t0)
	sw $t1, -2496($fp)
	li $t0, 16160
	sw $t0, -2500($fp)
	addi $t0, $fp, -276
	sw $t0, -2504($fp)
	li $t0, 7
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2504($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2500($fp)
	lw $t1, -2516($fp)
	sw $t0, 0($t1)
	lw $t0, -2516($fp)
	lw $t1, 0($t0)
	sw $t1, -2520($fp)
	li $t0, 45434
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	li $t0, 59039
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	li $t0, 38806
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -2556($fp)
	li $t0, 61218
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	sw $t0, -2568($fp)
	li $t0, 41329
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -2580($fp)
	li $t0, 39734
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	li $t0, 45281
	sw $t0, -2596($fp)
	addi $t0, $fp, -312
	sw $t0, -2600($fp)
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2600($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2596($fp)
	lw $t1, -2612($fp)
	sw $t0, 0($t1)
	lw $t0, -2612($fp)
	lw $t1, 0($t0)
	sw $t1, -2616($fp)
	li $t0, 59490
	sw $t0, -2620($fp)
	addi $t0, $fp, -312
	sw $t0, -2624($fp)
	li $t0, 1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2624($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2620($fp)
	lw $t1, -2636($fp)
	sw $t0, 0($t1)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	li $t0, 46422
	sw $t0, -2644($fp)
	addi $t0, $fp, -312
	sw $t0, -2648($fp)
	li $t0, 2
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2648($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2644($fp)
	lw $t1, -2660($fp)
	sw $t0, 0($t1)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	li $t0, 5476
	sw $t0, -2668($fp)
	addi $t0, $fp, -312
	sw $t0, -2672($fp)
	li $t0, 3
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2672($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2668($fp)
	lw $t1, -2684($fp)
	sw $t0, 0($t1)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	li $t0, 37002
	sw $t0, -2692($fp)
	addi $t0, $fp, -312
	sw $t0, -2696($fp)
	li $t0, 4
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2696($fp)
	lw $t1, -2704($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2692($fp)
	lw $t1, -2708($fp)
	sw $t0, 0($t1)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	li $t0, 21627
	sw $t0, -2716($fp)
	addi $t0, $fp, -312
	sw $t0, -2720($fp)
	li $t0, 5
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2720($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2716($fp)
	lw $t1, -2732($fp)
	sw $t0, 0($t1)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	li $t0, 26042
	sw $t0, -2740($fp)
	addi $t0, $fp, -312
	sw $t0, -2744($fp)
	li $t0, 6
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2744($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2740($fp)
	lw $t1, -2756($fp)
	sw $t0, 0($t1)
	lw $t0, -2756($fp)
	lw $t1, 0($t0)
	sw $t1, -2760($fp)
	li $t0, 22851
	sw $t0, -2764($fp)
	addi $t0, $fp, -312
	sw $t0, -2768($fp)
	li $t0, 7
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2768($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2764($fp)
	lw $t1, -2780($fp)
	sw $t0, 0($t1)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	li $t0, 28299
	sw $t0, -2788($fp)
	addi $t0, $fp, -312
	sw $t0, -2792($fp)
	li $t0, 8
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2792($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2788($fp)
	lw $t1, -2804($fp)
	sw $t0, 0($t1)
	lw $t0, -2804($fp)
	lw $t1, 0($t0)
	sw $t1, -2808($fp)
	li $t0, 24292
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2820($fp)
	li $t0, 34200
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -2832($fp)
	li $t0, 50581
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	sw $t0, -2844($fp)
	li $t0, 1934
	sw $t0, -2848($fp)
	addi $t0, $fp, -324
	sw $t0, -2852($fp)
	li $t0, 0
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
	li $t0, 7906
	sw $t0, -2872($fp)
	addi $t0, $fp, -324
	sw $t0, -2876($fp)
	li $t0, 1
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
	li $t0, 2125
	sw $t0, -2896($fp)
	addi $t0, $fp, -324
	sw $t0, -2900($fp)
	li $t0, 2
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
	li $t0, 1796
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -2928($fp)
	li $t0, 43689
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -2940($fp)
	li $t0, 0
	sw $t0, -2944($fp)
	lw $t0, -1460($fp)
	sw $t0, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -2944($fp)
label125:
	li $t0, 0
	lw $t1, -2944($fp)
	sub $t0, $t0, $t1
	sw $t0, -2952($fp)
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	li $t0, 0
	lw $t1, -2956($fp)
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	lw $t0, 4($fp)
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -2964($fp)
label127:
	li $t0, 61243
	sw $t0, -2972($fp)
	lw $t0, -2964($fp)
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t1, -2960($fp)
	lw $t2, -2976($fp)
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 32593
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 0
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	li $t0, 29525
	sw $t0, -2992($fp)
	addi $t0, $fp, -40
	sw $t0, -2996($fp)
	lw $t0, -1916($fp)
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
	lw $t0, -1820($fp)
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t1, -2992($fp)
	lw $t2, -3020($fp)
	ble $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -2988($fp)
label134:
	li $t0, 16357
	sw $t0, -3024($fp)
	li $t0, 0
	sw $t0, -3028($fp)
	li $t0, 29790
	sw $t0, -3032($fp)
	li $t0, 0
	lw $t1, -3032($fp)
	sub $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, 8($fp)
	sw $t0, -3040($fp)
	lw $t1, -3036($fp)
	lw $t2, -3040($fp)
	beq $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -3028($fp)
label136:
	addi $t0, $fp, -244
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
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3064($fp)
	addi $sp, $sp, 12
	lw $t0, -3024($fp)
	lw $t1, -3064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3068($fp)
	lw $t1, -2988($fp)
	lw $t2, -3068($fp)
	beq $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -2984($fp)
label132:
	j label130
label129:
	li $t0, 25097
	sw $t0, -3072($fp)
	addi $t0, $fp, -44
	sw $t0, -3076($fp)
	li $t0, 0
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
	lw $t1, -3072($fp)
	lw $t2, -3092($fp)
	beq $t1, $t2, label137
	j label138
label137:
	li $t0, 13483
	sw $t0, -3096($fp)
	lw $t0, -572($fp)
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $ra, -4($fp)
	lw $v0, -3104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label139
label138:
	li $t0, 64623
	sw $t0, -3108($fp)
	addi $t0, $fp, -64
	sw $t0, -3112($fp)
	li $t0, 0
	sw $t0, -3116($fp)
	lw $t0, -2840($fp)
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -3116($fp)
label144:
	li $t0, 4
	lw $t1, -3116($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	lw $t1, -3108($fp)
	lw $t2, -3132($fp)
	bge $t1, $t2, label140
	j label141
label140:
	li $t0, 38102
	sw $t0, -3160($fp)
	addi $t0, $fp, -3156
	sw $t0, -3164($fp)
	li $t0, 0
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
	li $t0, 58764
	sw $t0, -3184($fp)
	addi $t0, $fp, -3156
	sw $t0, -3188($fp)
	li $t0, 1
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
	li $t0, 58577
	sw $t0, -3208($fp)
	addi $t0, $fp, -3156
	sw $t0, -3212($fp)
	li $t0, 2
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
	li $t0, 18988
	sw $t0, -3232($fp)
	addi $t0, $fp, -3156
	sw $t0, -3236($fp)
	li $t0, 3
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
	li $t0, 64240
	sw $t0, -3256($fp)
	addi $t0, $fp, -3156
	sw $t0, -3260($fp)
	li $t0, 4
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
	li $t0, 30043
	sw $t0, -3280($fp)
	addi $t0, $fp, -3156
	sw $t0, -3284($fp)
	li $t0, 5
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
	li $t0, 40615
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
	addi $t0, $fp, -3156
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
	addi $t0, $fp, -3156
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
	addi $t0, $fp, -3156
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
	addi $t0, $fp, -3156
	sw $t0, -3376($fp)
	li $t0, 3
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
	lw $t0, -3392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3156
	sw $t0, -3396($fp)
	li $t0, 4
	sw $t0, -3400($fp)
	li $t0, 4
	lw $t1, -3400($fp)
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	lw $t1, -3396($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, 0($t0)
	sw $t1, -3412($fp)
	lw $t0, -3412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3156
	sw $t0, -3416($fp)
	li $t0, 5
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
	lw $t0, -3432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3308($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -3440($fp)
	li $t0, 0
	sw $t0, -3444($fp)
	li $t0, 24746
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label147:
	li $t0, 52894
	sw $t0, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -3444($fp)
label146:
	li $t0, 4
	lw $t1, -3444($fp)
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	lw $t1, -3440($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, 0($t0)
	sw $t1, -3464($fp)
	li $t0, 0
	sw $t0, -3468($fp)
	lw $t0, -1928($fp)
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -3468($fp)
label149:
	lw $t0, -3464($fp)
	lw $t1, -3468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3476($fp)
	addi $t0, $fp, -64
	sw $t0, -3480($fp)
	lw $t0, -572($fp)
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
	li $t0, 0
	sw $t0, -3500($fp)
	lw $t0, -3308($fp)
	sw $t0, -3504($fp)
	lw $t1, -3504($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label150:
	li $t0, 1
	sw $t0, -3500($fp)
label151:
	lw $t0, -3496($fp)
	lw $t1, -3500($fp)
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3476($fp)
	lw $t1, -3508($fp)
	sub $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $ra, -4($fp)
	lw $v0, -3512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 3379
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -3540($fp)
	li $t0, 49039
	sw $t0, -3544($fp)
	addi $t0, $fp, -3524
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3548($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3544($fp)
	lw $t1, -3560($fp)
	sw $t0, 0($t1)
	lw $t0, -3560($fp)
	lw $t1, 0($t0)
	sw $t1, -3564($fp)
	li $t0, 21558
	sw $t0, -3568($fp)
	addi $t0, $fp, -3524
	sw $t0, -3572($fp)
	li $t0, 1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3572($fp)
	lw $t1, -3580($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3568($fp)
	lw $t1, -3584($fp)
	sw $t0, 0($t1)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	li $t0, 53960
	sw $t0, -3592($fp)
	addi $t0, $fp, -3524
	sw $t0, -3596($fp)
	li $t0, 2
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3596($fp)
	lw $t1, -3604($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3592($fp)
	lw $t1, -3608($fp)
	sw $t0, 0($t1)
	lw $t0, -3608($fp)
	lw $t1, 0($t0)
	sw $t1, -3612($fp)
	li $t0, 50973
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	sw $t0, -3624($fp)
	li $t0, 29465
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	sw $t0, -3636($fp)
	li $t0, 56085
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	sw $t0, -3648($fp)
	li $t0, 52769
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	sw $t0, -3660($fp)
	li $t0, 7618
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -3672($fp)
	li $t0, 51793
	sw $t0, -3676($fp)
	addi $t0, $fp, -3528
	sw $t0, -3680($fp)
	li $t0, 0
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
	li $t0, 19826
	sw $t0, -3700($fp)
	lw $t1, -3700($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 37143
	sw $t0, -3736($fp)
	addi $t0, $fp, -3732
	sw $t0, -3740($fp)
	li $t0, 0
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3740($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3736($fp)
	lw $t1, -3752($fp)
	sw $t0, 0($t1)
	lw $t0, -3752($fp)
	lw $t1, 0($t0)
	sw $t1, -3756($fp)
	li $t0, 2614
	sw $t0, -3760($fp)
	addi $t0, $fp, -3732
	sw $t0, -3764($fp)
	li $t0, 1
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3764($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3760($fp)
	lw $t1, -3776($fp)
	sw $t0, 0($t1)
	lw $t0, -3776($fp)
	lw $t1, 0($t0)
	sw $t1, -3780($fp)
	li $t0, 28763
	sw $t0, -3784($fp)
	addi $t0, $fp, -3732
	sw $t0, -3788($fp)
	li $t0, 2
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3788($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3784($fp)
	lw $t1, -3800($fp)
	sw $t0, 0($t1)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	li $t0, 9510
	sw $t0, -3808($fp)
	addi $t0, $fp, -3732
	sw $t0, -3812($fp)
	li $t0, 3
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3812($fp)
	lw $t1, -3820($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3808($fp)
	lw $t1, -3824($fp)
	sw $t0, 0($t1)
	lw $t0, -3824($fp)
	lw $t1, 0($t0)
	sw $t1, -3828($fp)
	li $t0, 32404
	sw $t0, -3832($fp)
	addi $t0, $fp, -3732
	sw $t0, -3836($fp)
	li $t0, 4
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3836($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3832($fp)
	lw $t1, -3848($fp)
	sw $t0, 0($t1)
	lw $t0, -3848($fp)
	lw $t1, 0($t0)
	sw $t1, -3852($fp)
	li $t0, 53860
	sw $t0, -3856($fp)
	addi $t0, $fp, -3732
	sw $t0, -3860($fp)
	li $t0, 5
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3860($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3856($fp)
	lw $t1, -3872($fp)
	sw $t0, 0($t1)
	lw $t0, -3872($fp)
	lw $t1, 0($t0)
	sw $t1, -3876($fp)
	li $t0, 27312
	sw $t0, -3880($fp)
	addi $t0, $fp, -3732
	sw $t0, -3884($fp)
	li $t0, 6
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3884($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3880($fp)
	lw $t1, -3896($fp)
	sw $t0, 0($t1)
	lw $t0, -3896($fp)
	lw $t1, 0($t0)
	sw $t1, -3900($fp)
	li $t0, 55698
	sw $t0, -3904($fp)
	addi $t0, $fp, -3732
	sw $t0, -3908($fp)
	li $t0, 7
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3908($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3904($fp)
	lw $t1, -3920($fp)
	sw $t0, 0($t1)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	lw $t0, -1772($fp)
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	li $t0, 0
	sw $t0, -3936($fp)
	lw $t0, -1544($fp)
	sw $t0, -3940($fp)
	lw $t0, -2300($fp)
	sw $t0, -3944($fp)
	lw $t0, -3940($fp)
	lw $t1, -3944($fp)
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	li $t0, 40795
	sw $t0, -3952($fp)
	lw $t1, -3948($fp)
	lw $t2, -3952($fp)
	ble $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -3936($fp)
label158:
	li $t0, 52228
	sw $t0, -3956($fp)
	addi $sp, $sp, -4
	lw $t0, -3936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3960($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3964($fp)
	li $t0, 54785
	sw $t0, -3968($fp)
	li $t0, 0
	lw $t1, -3968($fp)
	sub $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t1, -3972($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label159
label159:
	li $t0, 1
	sw $t0, -3964($fp)
label160:
	lw $t0, -3960($fp)
	lw $t1, -3964($fp)
	sub $t0, $t0, $t1
	sw $t0, -3976($fp)
	li $t0, 0
	sw $t0, -3980($fp)
	li $t0, 0
	sw $t0, -3984($fp)
	lw $t0, -2312($fp)
	sw $t0, -3988($fp)
	lw $t0, -2324($fp)
	sw $t0, -3992($fp)
	lw $t1, -3988($fp)
	lw $t2, -3992($fp)
	beq $t1, $t2, label165
	j label164
label165:
	lw $t0, -1916($fp)
	sw $t0, -3996($fp)
	lw $t1, -3996($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -3984($fp)
label164:
	li $t0, 0
	sw $t0, -4000($fp)
	lw $t0, -2828($fp)
	sw $t0, -4004($fp)
	lw $t0, -1016($fp)
	sw $t0, -4008($fp)
	lw $t1, -4004($fp)
	lw $t2, -4008($fp)
	bne $t1, $t2, label168
	j label167
label168:
	li $t0, 24794
	sw $t0, -4012($fp)
	lw $t1, -4012($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -4000($fp)
label167:
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4016($fp)
	addi $sp, $sp, 12
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label161
label161:
	li $t0, 1
	sw $t0, -3980($fp)
label162:
	lw $t1, -3976($fp)
	lw $t2, -3980($fp)
	blt $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -3932($fp)
label156:
	li $t0, 0
	sw $t0, -4020($fp)
	addi $t0, $fp, -3732
	sw $t0, -4024($fp)
	lw $t0, -1472($fp)
	sw $t0, -4028($fp)
	li $t0, 4
	lw $t1, -4028($fp)
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, 0($t0)
	sw $t1, -4040($fp)
	li $t0, 0
	sw $t0, -4044($fp)
	li $t0, 0
	sw $t0, -4048($fp)
	lw $t0, -968($fp)
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label174
label174:
	li $t0, 1
	sw $t0, -4048($fp)
label175:
	li $t0, 0
	sw $t0, -4056($fp)
	addi $t0, $fp, -324
	sw $t0, -4060($fp)
	li $t0, 0
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
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label176:
	li $t0, 1
	sw $t0, -4056($fp)
label177:
	addi $sp, $sp, -4
	lw $t0, -4048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4080($fp)
	addi $sp, $sp, 12
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label172
label172:
	li $t0, 1
	sw $t0, -4044($fp)
label173:
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 0
	sw $t0, -4088($fp)
	li $t0, 34024
	sw $t0, -4092($fp)
	li $t0, 47826
	sw $t0, -4096($fp)
	lw $t1, -4092($fp)
	lw $t2, -4096($fp)
	blt $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -4088($fp)
label181:
	lw $t0, -1568($fp)
	sw $t0, -4100($fp)
	lw $t1, -4088($fp)
	lw $t2, -4100($fp)
	beq $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -4084($fp)
label179:
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4104($fp)
	addi $sp, $sp, 12
	lw $t0, -4040($fp)
	lw $t1, -4104($fp)
	mul $t0, $t0, $t1
	sw $t0, -4108($fp)
	li $t0, 0
	lw $t1, -4108($fp)
	sub $t0, $t0, $t1
	sw $t0, -4112($fp)
	li $t0, 0
	lw $t1, -4112($fp)
	sub $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t1, -4116($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label171
label171:
	lw $t0, -1052($fp)
	sw $t0, -4120($fp)
	lw $t0, -1484($fp)
	sw $t0, -4124($fp)
	li $t0, 12333
	sw $t0, -4128($fp)
	lw $t0, -4124($fp)
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t1, -4120($fp)
	lw $t2, -4132($fp)
	bge $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -4020($fp)
label170:
	j label154
label153:
	li $t0, 0
	sw $t0, -4136($fp)
	li $t0, 65227
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -4136($fp)
label183:
	lw $t0, -1052($fp)
	sw $t0, -4144($fp)
	lw $t0, -4136($fp)
	lw $t1, -4144($fp)
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	addi $t0, $fp, -160
	sw $t0, -4152($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -4148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4172($fp)
	addi $sp, $sp, 12
	li $t0, 22241
	sw $t0, -4176($fp)
	lw $t0, -4172($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4180($fp)
label154:
	addi $t0, $fp, -64
	sw $t0, -4184($fp)
	li $t0, 0
	sw $t0, -4188($fp)
	lw $t0, -932($fp)
	sw $t0, -4192($fp)
	li $t0, 40978
	sw $t0, -4196($fp)
	lw $t1, -4192($fp)
	lw $t2, -4196($fp)
	beq $t1, $t2, label189
	j label188
label189:
	li $t0, 21249
	sw $t0, -4200($fp)
	lw $t1, -4200($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -4188($fp)
label188:
	lw $t0, -920($fp)
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -4208($fp)
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4212($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -4212($fp)
	mul $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	lw $t1, 0($t0)
	sw $t1, -4224($fp)
	li $t0, 10665
	sw $t0, -4228($fp)
	lw $t1, -4224($fp)
	lw $t2, -4228($fp)
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 26415
	sw $t0, -4232($fp)
	li $t0, 1215
	sw $t0, -4236($fp)
	lw $t0, -4232($fp)
	lw $t1, -4236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4240($fp)
	addi $t0, $fp, -3524
	sw $t0, -4244($fp)
	li $t0, 1
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
	li $t0, 29940
	sw $t0, -4264($fp)
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	li $t0, 0
	sw $t0, -4272($fp)
	lw $t0, -1928($fp)
	sw $t0, -4276($fp)
	lw $t1, -4276($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label194
label196:
	lw $t0, -2528($fp)
	sw $t0, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label195:
	li $t0, 58332
	sw $t0, -4284($fp)
	lw $t1, -4284($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -4272($fp)
label194:
	li $t0, 13648
	sw $t0, -4288($fp)
	li $t0, 0
	lw $t1, -4288($fp)
	sub $t0, $t0, $t1
	sw $t0, -4292($fp)
	li $t0, 0
	lw $t1, -4292($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	addi $sp, $sp, -4
	lw $t0, -4272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4300($fp)
	addi $sp, $sp, 12
	lw $t0, -1472($fp)
	sw $t0, -4304($fp)
	lw $t0, -4300($fp)
	lw $t1, -4304($fp)
	sub $t0, $t0, $t1
	sw $t0, -4308($fp)
	addi $sp, $sp, -4
	lw $t0, -4268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4312($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4312($fp)
	sub $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4240($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	li $t0, 55621
	sw $t0, -4324($fp)
	lw $t0, -3620($fp)
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -1556($fp)
	sw $t0, -4336($fp)
	lw $t0, -4332($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	li $t0, 0
	sw $t0, -4344($fp)
	lw $t0, -1004($fp)
	sw $t0, -4348($fp)
	li $t0, 0
	lw $t1, -4348($fp)
	sub $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t1, -4352($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -4344($fp)
label198:
	addi $sp, $sp, -4
	lw $t0, -4340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4344($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4356($fp)
	addi $sp, $sp, 12
	lw $t0, -4320($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t1, -4360($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
	li $t0, 0
	sw $t0, -4364($fp)
	li $t0, 0
	sw $t0, -4368($fp)
	addi $t0, $fp, -312
	sw $t0, -4372($fp)
	lw $t0, -2528($fp)
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
	lw $t0, -2828($fp)
	sw $t0, -4392($fp)
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4396($fp)
	addi $t0, $fp, -3156
	sw $t0, -4400($fp)
	li $t0, 5
	sw $t0, -4404($fp)
	li $t0, 4
	lw $t1, -4404($fp)
	mul $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	lw $t1, -4400($fp)
	add $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, 0($t0)
	sw $t1, -4416($fp)
	addi $t0, $fp, -3528
	sw $t0, -4420($fp)
	lw $t0, -572($fp)
	sw $t0, -4424($fp)
	li $t0, 4
	lw $t1, -4424($fp)
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, -4420($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, 0($t0)
	sw $t1, -4436($fp)
	addi $sp, $sp, -4
	lw $t0, -4416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4440($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4444($fp)
	li $t0, 62237
	sw $t0, -4448($fp)
	li $t0, 0
	lw $t1, -4448($fp)
	sub $t0, $t0, $t1
	sw $t0, -4452($fp)
	li $t0, 39450
	sw $t0, -4456($fp)
	lw $t1, -4452($fp)
	lw $t2, -4456($fp)
	beq $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -4444($fp)
label204:
	addi $sp, $sp, -4
	lw $t0, -4440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4460($fp)
	addi $sp, $sp, 12
	lw $t0, -4396($fp)
	lw $t1, -4460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4464($fp)
	addi $t0, $fp, -3528
	sw $t0, -4468($fp)
	lw $t0, -2576($fp)
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
	li $t0, 1226
	sw $t0, -4488($fp)
	lw $t0, -4484($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t1, -4464($fp)
	lw $t2, -4492($fp)
	ble $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -4368($fp)
label202:
	addi $t0, $fp, -244
	sw $t0, -4496($fp)
	lw $t0, -2564($fp)
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -4504($fp)
	li $t0, 4
	lw $t1, -4504($fp)
	mul $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	lw $t1, -4496($fp)
	add $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, 0($t0)
	sw $t1, -4516($fp)
	lw $t1, -4368($fp)
	lw $t2, -4516($fp)
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -4364($fp)
label200:
	lw $ra, -4($fp)
	lw $v0, -4364($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label192
label191:
label205:
	addi $t0, $fp, -312
	sw $t0, -4520($fp)
	li $t0, 0
	sw $t0, -4524($fp)
	lw $t0, -1832($fp)
	sw $t0, -4528($fp)
	li $t0, 12652
	sw $t0, -4532($fp)
	lw $t1, -4528($fp)
	lw $t2, -4532($fp)
	blt $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -4524($fp)
label209:
	li $t0, 4
	lw $t1, -4524($fp)
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	lw $t1, -4520($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	lw $t1, 0($t0)
	sw $t1, -4544($fp)
	li $t0, 0
	lw $t1, -4544($fp)
	sub $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t1, -4548($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 0
	sw $t0, -4552($fp)
	lw $t0, -3656($fp)
	sw $t0, -4556($fp)
	lw $t0, -2576($fp)
	sw $t0, -4560($fp)
	lw $t1, -4556($fp)
	lw $t2, -4560($fp)
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -4552($fp)
label211:
	lw $t0, -4552($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -4568($fp)
	j label205
label207:
label192:
	j label186
label185:
	li $t0, 0
	sw $t0, -4572($fp)
	li $t0, 62047
	sw $t0, -4576($fp)
	lw $t1, -4576($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label215:
	li $t0, 1
	sw $t0, -4572($fp)
label216:
	li $t0, 0
	sw $t0, -4580($fp)
	li $t0, 1901
	sw $t0, -4584($fp)
	lw $t1, -4584($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label217:
	li $t0, 1
	sw $t0, -4580($fp)
label218:
	lw $t0, -3668($fp)
	sw $t0, -4588($fp)
	lw $t0, -4580($fp)
	lw $t1, -4588($fp)
	mul $t0, $t0, $t1
	sw $t0, -4592($fp)
	addi $sp, $sp, -4
	lw $t0, -4572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4596($fp)
	addi $sp, $sp, 12
	li $t0, 37253
	sw $t0, -4600($fp)
	li $t0, 42022
	sw $t0, -4604($fp)
	lw $t0, -4600($fp)
	lw $t1, -4604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4608($fp)
	lw $t0, -1928($fp)
	sw $t0, -4612($fp)
	lw $t0, -4608($fp)
	lw $t1, -4612($fp)
	sub $t0, $t0, $t1
	sw $t0, -4616($fp)
	addi $sp, $sp, -4
	lw $t0, -4596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4620($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4620($fp)
	sub $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -1916($fp)
	sw $t0, -4628($fp)
	lw $t1, -4624($fp)
	lw $t2, -4628($fp)
	ble $t1, $t2, label212
	j label213
label212:
	li $t0, 10510
	sw $t0, -4660($fp)
	addi $t0, $fp, -4656
	sw $t0, -4664($fp)
	li $t0, 0
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4664($fp)
	lw $t1, -4672($fp)
	add $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4660($fp)
	lw $t1, -4676($fp)
	sw $t0, 0($t1)
	lw $t0, -4676($fp)
	lw $t1, 0($t0)
	sw $t1, -4680($fp)
	li $t0, 49727
	sw $t0, -4684($fp)
	addi $t0, $fp, -4656
	sw $t0, -4688($fp)
	li $t0, 1
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4688($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4684($fp)
	lw $t1, -4700($fp)
	sw $t0, 0($t1)
	lw $t0, -4700($fp)
	lw $t1, 0($t0)
	sw $t1, -4704($fp)
	li $t0, 40294
	sw $t0, -4708($fp)
	addi $t0, $fp, -4656
	sw $t0, -4712($fp)
	li $t0, 2
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4712($fp)
	lw $t1, -4720($fp)
	add $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4708($fp)
	lw $t1, -4724($fp)
	sw $t0, 0($t1)
	lw $t0, -4724($fp)
	lw $t1, 0($t0)
	sw $t1, -4728($fp)
	li $t0, 43238
	sw $t0, -4732($fp)
	addi $t0, $fp, -4656
	sw $t0, -4736($fp)
	li $t0, 3
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4736($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4732($fp)
	lw $t1, -4748($fp)
	sw $t0, 0($t1)
	lw $t0, -4748($fp)
	lw $t1, 0($t0)
	sw $t1, -4752($fp)
	li $t0, 62060
	sw $t0, -4756($fp)
	addi $t0, $fp, -4656
	sw $t0, -4760($fp)
	li $t0, 4
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4760($fp)
	lw $t1, -4768($fp)
	add $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4756($fp)
	lw $t1, -4772($fp)
	sw $t0, 0($t1)
	lw $t0, -4772($fp)
	lw $t1, 0($t0)
	sw $t1, -4776($fp)
	li $t0, 59156
	sw $t0, -4780($fp)
	addi $t0, $fp, -4656
	sw $t0, -4784($fp)
	li $t0, 5
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4784($fp)
	lw $t1, -4792($fp)
	add $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4780($fp)
	lw $t1, -4796($fp)
	sw $t0, 0($t1)
	lw $t0, -4796($fp)
	lw $t1, 0($t0)
	sw $t1, -4800($fp)
	li $t0, 35177
	sw $t0, -4804($fp)
	addi $t0, $fp, -4656
	sw $t0, -4808($fp)
	li $t0, 6
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4808($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4804($fp)
	lw $t1, -4820($fp)
	sw $t0, 0($t1)
	lw $t0, -4820($fp)
	lw $t1, 0($t0)
	sw $t1, -4824($fp)
	lw $t0, -2588($fp)
	sw $t0, -4828($fp)
	li $t0, 0
	sw $t0, -4832($fp)
	lw $t0, -968($fp)
	sw $t0, -4836($fp)
	li $t0, 61751
	sw $t0, -4840($fp)
	lw $t0, -4836($fp)
	lw $t1, -4840($fp)
	mul $t0, $t0, $t1
	sw $t0, -4844($fp)
	li $t0, 15861
	sw $t0, -4848($fp)
	lw $t1, -4844($fp)
	lw $t2, -4848($fp)
	beq $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -4832($fp)
label220:
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4852($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -4656
	sw $t0, -4856($fp)
	lw $t0, -1040($fp)
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
	li $t0, 0
	sw $t0, -4876($fp)
	lw $t0, -1784($fp)
	sw $t0, -4880($fp)
	lw $t1, -4880($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label221:
	li $t0, 1
	sw $t0, -4876($fp)
label222:
	lw $t0, -716($fp)
	sw $t0, -4884($fp)
	lw $t0, -4876($fp)
	lw $t1, -4884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4888($fp)
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4888($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4892($fp)
	addi $sp, $sp, 12
	lw $t0, -4852($fp)
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -1820($fp)
	sw $t0, -4900($fp)
	li $t0, 0
	lw $t1, -4900($fp)
	sub $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4896($fp)
	lw $t1, -4904($fp)
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	j label214
label213:
	li $t0, 0
	sw $t0, -4912($fp)
	li $t0, 0
	sw $t0, -4916($fp)
	li $t0, 10619
	sw $t0, -4920($fp)
	lw $t1, -4920($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label226:
	li $t0, 1
	sw $t0, -4916($fp)
label227:
	lw $t0, -3632($fp)
	sw $t0, -4924($fp)
	li $t0, 0
	lw $t1, -4924($fp)
	sub $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4916($fp)
	lw $t1, -4928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4932($fp)
	li $t0, 0
	lw $t1, -4932($fp)
	sub $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t1, -4936($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label225
label225:
	lw $t0, -2564($fp)
	sw $t0, -4940($fp)
	li $t0, 17464
	sw $t0, -4944($fp)
	lw $t0, -4940($fp)
	lw $t1, -4944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4948($fp)
	li $t0, 0
	lw $t1, -4948($fp)
	sub $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t1, -4952($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label224
label228:
	lw $t0, -3308($fp)
	sw $t0, -4956($fp)
	li $t0, 0
	lw $t1, -4956($fp)
	sub $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -3644($fp)
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4968($fp)
	li $t0, 0
	sw $t0, -4972($fp)
	li $t0, 26526
	sw $t0, -4976($fp)
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -4972($fp)
label230:
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4980($fp)
	addi $sp, $sp, 12
	lw $t1, -4980($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -4912($fp)
label224:
label214:
label186:
label231:
	lw $t0, -944($fp)
	sw $t0, -4984($fp)
	li $t0, 0
	sw $t0, -4988($fp)
	lw $t0, -1916($fp)
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -4988($fp)
label235:
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4996($fp)
	lw $t1, -4996($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 0
	sw $t0, -5000($fp)
	addi $t0, $fp, -324
	sw $t0, -5004($fp)
	lw $t0, -3536($fp)
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
	lw $t0, -908($fp)
	sw $t0, -5024($fp)
	lw $t0, -5020($fp)
	lw $t1, -5024($fp)
	mul $t0, $t0, $t1
	sw $t0, -5028($fp)
	li $t0, 0
	sw $t0, -5032($fp)
	addi $t0, $fp, -44
	sw $t0, -5036($fp)
	li $t0, 0
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
	lw $t1, -5052($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label238:
	li $t0, 1
	sw $t0, -5032($fp)
label239:
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5056($fp)
	addi $sp, $sp, 12
	lw $t0, -1832($fp)
	sw $t0, -5060($fp)
	lw $t1, -5056($fp)
	lw $t2, -5060($fp)
	bgt $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -5000($fp)
label237:
	lw $ra, -4($fp)
	lw $v0, -5000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label231
label233:
	li $t0, 27740
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	sw $t0, -5068($fp)
	lw $t0, -5068($fp)
	sw $t0, -5072($fp)
	li $t0, 50682
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	sw $t0, -5084($fp)
	li $t0, 60975
	sw $t0, -5088($fp)
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label241
label243:
	addi $t0, $fp, -68
	sw $t0, -5092($fp)
	li $t0, 0
	sw $t0, -5096($fp)
	li $t0, 4
	lw $t1, -5096($fp)
	mul $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	lw $t1, -5092($fp)
	add $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	lw $t1, 0($t0)
	sw $t1, -5108($fp)
	li $t0, 25379
	sw $t0, -5112($fp)
	li $t0, 5297
	sw $t0, -5116($fp)
	lw $t0, -5112($fp)
	lw $t1, -5116($fp)
	mul $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t1, -5108($fp)
	lw $t2, -5120($fp)
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 0
	sw $t0, -5124($fp)
	li $t0, 15321
	sw $t0, -5128($fp)
	lw $t1, -5128($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label247:
	li $t0, 1
	sw $t0, -5124($fp)
label248:
	li $t0, 64830
	sw $t0, -5132($fp)
	lw $t0, -5124($fp)
	lw $t1, -5132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5136($fp)
	lw $t0, -2576($fp)
	sw $t0, -5140($fp)
	lw $t0, -5136($fp)
	lw $t1, -5140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5144($fp)
	li $t0, 0
	lw $t1, -5144($fp)
	sub $t0, $t0, $t1
	sw $t0, -5148($fp)
	li $t0, 0
	sw $t0, -5152($fp)
	lw $t0, -5068($fp)
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label249:
	li $t0, 1
	sw $t0, -5152($fp)
label250:
	lw $t0, -5148($fp)
	lw $t1, -5152($fp)
	add $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t1, -5160($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	lw $t0, -2828($fp)
	sw $t0, -5164($fp)
	li $t0, 0
	sw $t0, -5168($fp)
	addi $t0, $fp, -68
	sw $t0, -5172($fp)
	lw $t0, -1472($fp)
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
	lw $t1, -5188($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label251
label251:
	li $t0, 1
	sw $t0, -5168($fp)
label252:
	lw $t0, -1820($fp)
	sw $t0, -5192($fp)
	li $t0, 27787
	sw $t0, -5196($fp)
	lw $t0, -5192($fp)
	lw $t1, -5196($fp)
	sub $t0, $t0, $t1
	sw $t0, -5200($fp)
	li $t0, 347
	sw $t0, -5204($fp)
	lw $t0, -5200($fp)
	lw $t1, -5204($fp)
	sub $t0, $t0, $t1
	sw $t0, -5208($fp)
	addi $sp, $sp, -4
	lw $t0, -5168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5212($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5212($fp)
	sub $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5164($fp)
	lw $t1, -5216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5220($fp)
	j label246
label245:
	li $t0, 0
	sw $t0, -5224($fp)
	li $t0, 0
	sw $t0, -5228($fp)
	lw $t0, -2840($fp)
	sw $t0, -5232($fp)
	lw $t1, -5232($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label256
label256:
	li $t0, 1
	sw $t0, -5228($fp)
label257:
	li $t0, 520
	sw $t0, -5236($fp)
	lw $t0, -5228($fp)
	lw $t1, -5236($fp)
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t1, -5240($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label255
label255:
	lw $t0, -1016($fp)
	sw $t0, -5244($fp)
	lw $t0, -1784($fp)
	sw $t0, -5248($fp)
	lw $t1, -5244($fp)
	lw $t2, -5248($fp)
	bge $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -5224($fp)
label254:
	lw $t0, -5224($fp)
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -5252($fp)
label246:
label241:
	li $t0, 40439
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	sw $t0, -5264($fp)
	li $t0, 0
	sw $t0, -5268($fp)
	lw $t0, -2924($fp)
	sw $t0, -5272($fp)
	addi $t0, $fp, -96
	sw $t0, -5276($fp)
	li $t0, 0
	sw $t0, -5280($fp)
	li $t0, 37600
	sw $t0, -5284($fp)
	li $t0, 42542
	sw $t0, -5288($fp)
	lw $t1, -5284($fp)
	lw $t2, -5288($fp)
	beq $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -5280($fp)
label261:
	li $t0, 4
	lw $t1, -5280($fp)
	mul $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	lw $t1, 0($t0)
	sw $t1, -5300($fp)
	lw $t0, -5272($fp)
	lw $t1, -5300($fp)
	mul $t0, $t0, $t1
	sw $t0, -5304($fp)
	li $t0, 0
	lw $t1, -5304($fp)
	sub $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -5268($fp)
label259:
	li $t0, 0
	sw $t0, -5312($fp)
	lw $t0, -2936($fp)
	sw $t0, -5316($fp)
	addi $t0, $fp, -324
	sw $t0, -5320($fp)
	lw $t0, -5260($fp)
	sw $t0, -5324($fp)
	li $t0, 4
	lw $t1, -5324($fp)
	mul $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	lw $t1, -5320($fp)
	add $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	lw $t1, 0($t0)
	sw $t1, -5336($fp)
	addi $t0, $fp, -96
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
	lw $t0, -5336($fp)
	lw $t1, -5356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5360($fp)
	lw $t1, -5316($fp)
	lw $t2, -5360($fp)
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -5312($fp)
label263:
label264:
	addi $t0, $fp, -96
	sw $t0, -5364($fp)
	lw $t0, -1616($fp)
	sw $t0, -5368($fp)
	li $t0, 4
	lw $t1, -5368($fp)
	mul $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	lw $t1, -5364($fp)
	add $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	lw $t1, 0($t0)
	sw $t1, -5380($fp)
	li $t0, 53052
	sw $t0, -5384($fp)
	li $t0, 0
	lw $t1, -5384($fp)
	sub $t0, $t0, $t1
	sw $t0, -5388($fp)
	li $t0, 0
	lw $t1, -5388($fp)
	sub $t0, $t0, $t1
	sw $t0, -5392($fp)
	addi $sp, $sp, -4
	lw $t0, -5380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5396($fp)
	addi $sp, $sp, 12
	lw $t1, -5396($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	addi $t0, $fp, -92
	sw $t0, -5400($fp)
	li $t0, 0
	sw $t0, -5404($fp)
	lw $t0, -896($fp)
	sw $t0, -5408($fp)
	lw $t0, -1772($fp)
	sw $t0, -5412($fp)
	lw $t1, -5408($fp)
	lw $t2, -5412($fp)
	bge $t1, $t2, label267
	j label270
label270:
	li $t0, 26531
	sw $t0, -5416($fp)
	lw $t1, -5416($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label269
label269:
	li $t0, 8870
	sw $t0, -5420($fp)
	lw $t0, -1052($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -5428($fp)
	addi $sp, $sp, -4
	lw $t0, -5420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5432($fp)
	addi $sp, $sp, 12
	lw $t1, -5432($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -5404($fp)
label268:
	li $t0, 4
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, -5400($fp)
	add $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	lw $t1, 0($t0)
	sw $t1, -5444($fp)
	j label264
label266:
	li $t0, 30755
	sw $t0, -5448($fp)
label271:
	li $t0, 23055
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
label274:
	li $t0, 0
	sw $t0, -5456($fp)
	li $t0, 2490
	sw $t0, -5460($fp)
	lw $t1, -5460($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -5456($fp)
label278:
	li $t0, 0
	lw $t1, -5456($fp)
	sub $t0, $t0, $t1
	sw $t0, -5464($fp)
	li $t0, 0
	lw $t1, -5464($fp)
	sub $t0, $t0, $t1
	sw $t0, -5468($fp)
	li $t0, 0
	sw $t0, -5472($fp)
	li $t0, 396
	sw $t0, -5476($fp)
	lw $t1, -5476($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label279:
	li $t0, 1
	sw $t0, -5472($fp)
label280:
	li $t0, 0
	lw $t1, -5472($fp)
	sub $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5468($fp)
	lw $t1, -5480($fp)
	sub $t0, $t0, $t1
	sw $t0, -5484($fp)
	addi $t0, $fp, -136
	sw $t0, -5488($fp)
	lw $t0, -5080($fp)
	sw $t0, -5492($fp)
	li $t0, 4
	lw $t1, -5492($fp)
	mul $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	lw $t1, -5488($fp)
	add $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	lw $t1, 0($t0)
	sw $t1, -5504($fp)
	li $t0, 0
	sw $t0, -5508($fp)
	li $t0, 19270
	sw $t0, -5512($fp)
	lw $t1, -5512($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label281:
	li $t0, 1
	sw $t0, -5508($fp)
label282:
	lw $t0, -5504($fp)
	lw $t1, -5508($fp)
	add $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t1, -5484($fp)
	lw $t2, -5516($fp)
	bgt $t1, $t2, label275
	j label276
label275:
	li $t0, 0
	sw $t0, -5520($fp)
	addi $t0, $fp, -3156
	sw $t0, -5524($fp)
	li $t0, 2
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
	lw $t1, -5540($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -5520($fp)
label284:
	lw $t0, -5520($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -5544($fp)
	j label274
label276:
	j label271
label273:
	j label142
label141:
	li $t0, 0
	sw $t0, -5548($fp)
	li $t0, 0
	sw $t0, -5552($fp)
	li $t0, 0
	sw $t0, -5556($fp)
	li $t0, 44877
	sw $t0, -5560($fp)
	li $t0, 48050
	sw $t0, -5564($fp)
	lw $t1, -5560($fp)
	lw $t2, -5564($fp)
	ble $t1, $t2, label289
	j label291
label291:
	li $t0, 39378
	sw $t0, -5568($fp)
	lw $t1, -5568($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -5556($fp)
label290:
	addi $t0, $fp, -152
	sw $t0, -5572($fp)
	lw $t0, -1424($fp)
	sw $t0, -5576($fp)
	li $t0, 4
	lw $t1, -5576($fp)
	mul $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	lw $t1, -5572($fp)
	add $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	lw $t1, 0($t0)
	sw $t1, -5588($fp)
	li $t0, 36735
	sw $t0, -5592($fp)
	lw $t0, -5588($fp)
	lw $t1, -5592($fp)
	add $t0, $t0, $t1
	sw $t0, -5596($fp)
	addi $sp, $sp, -4
	lw $t0, -5556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5596($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5600($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5600($fp)
	sub $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t1, -5604($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label287
label287:
	li $t0, 1
	sw $t0, -5552($fp)
label288:
	li $t0, 0
	sw $t0, -5608($fp)
	li $t0, 7081
	sw $t0, -5612($fp)
	lw $t1, -5612($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -5608($fp)
label293:
	lw $t1, -5552($fp)
	lw $t2, -5608($fp)
	ble $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -5548($fp)
label286:
	lw $ra, -4($fp)
	lw $v0, -5548($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label142:
label139:
label130:
	j label123
label122:
	li $t0, 33197
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	sw $t0, -5624($fp)
	lw $t0, -5620($fp)
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5632($fp)
	lw $t0, -1436($fp)
	sw $t0, -5636($fp)
	lw $t0, -2816($fp)
	sw $t0, -5640($fp)
	lw $t0, -1916($fp)
	sw $t0, -5644($fp)
	lw $t0, -5640($fp)
	lw $t1, -5644($fp)
	mul $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5636($fp)
	lw $t1, -5648($fp)
	sub $t0, $t0, $t1
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	li $t0, 34817
	sw $t0, -5660($fp)
	lw $t0, -1448($fp)
	sw $t0, -5664($fp)
	lw $t0, -5660($fp)
	lw $t1, -5664($fp)
	sub $t0, $t0, $t1
	sw $t0, -5668($fp)
	li $t0, 22293
	sw $t0, -5672($fp)
	lw $t1, -5668($fp)
	lw $t2, -5672($fp)
	blt $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -5656($fp)
label298:
	lw $t1, -5652($fp)
	lw $t2, -5656($fp)
	beq $t1, $t2, label294
	j label296
label296:
	li $t0, 0
	sw $t0, -5676($fp)
	li $t0, 60197
	sw $t0, -5680($fp)
	lw $t0, -1820($fp)
	sw $t0, -5684($fp)
	lw $t1, -5680($fp)
	lw $t2, -5684($fp)
	blt $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -5676($fp)
label300:
	li $t0, 0
	sw $t0, -5688($fp)
	li $t0, 51817
	sw $t0, -5692($fp)
	lw $t0, -1460($fp)
	sw $t0, -5696($fp)
	lw $t1, -5692($fp)
	lw $t2, -5696($fp)
	bne $t1, $t2, label301
	j label303
label303:
	lw $t0, -572($fp)
	sw $t0, -5700($fp)
	lw $t1, -5700($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -5688($fp)
label302:
	addi $sp, $sp, -4
	lw $t0, -5676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5688($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5704($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5708($fp)
	li $t0, 27591
	sw $t0, -5712($fp)
	li $t0, 1603
	sw $t0, -5716($fp)
	lw $t1, -5712($fp)
	lw $t2, -5716($fp)
	ble $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -5708($fp)
label305:
	lw $t1, -5704($fp)
	lw $t2, -5708($fp)
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -5632($fp)
label295:
	lw $ra, -4($fp)
	lw $v0, -5632($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 59491
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	sw $t0, -5728($fp)
	li $t0, 55378
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	sw $t0, -5740($fp)
	lw $t0, -5724($fp)
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5736($fp)
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5752($fp)
	li $t0, 0
	sw $t0, -5756($fp)
	addi $t0, $fp, -68
	sw $t0, -5760($fp)
	lw $t0, -1820($fp)
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
	lw $t1, -5776($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label310:
	li $t0, 1
	sw $t0, -5756($fp)
label311:
	lw $t0, -1028($fp)
	sw $t0, -5780($fp)
	lw $t0, -2528($fp)
	sw $t0, -5784($fp)
	lw $t0, -5780($fp)
	lw $t1, -5784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5788($fp)
	lw $t0, -5756($fp)
	lw $t1, -5788($fp)
	sub $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label309
label309:
	lw $t0, -5724($fp)
	sw $t0, -5796($fp)
	lw $t0, -944($fp)
	sw $t0, -5800($fp)
	lw $t1, -5796($fp)
	lw $t2, -5800($fp)
	ble $t1, $t2, label306
	j label308
label308:
	addi $t0, $fp, -92
	sw $t0, -5804($fp)
	li $t0, 0
	sw $t0, -5808($fp)
	lw $t0, -1472($fp)
	sw $t0, -5812($fp)
	li $t0, 1950
	sw $t0, -5816($fp)
	lw $t1, -5812($fp)
	lw $t2, -5816($fp)
	ble $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -5808($fp)
label313:
	li $t0, 4
	lw $t1, -5808($fp)
	mul $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	lw $t1, -5804($fp)
	add $t0, $t0, $t1
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	lw $t1, 0($t0)
	sw $t1, -5828($fp)
	lw $t1, -5828($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -5752($fp)
label307:
	lw $ra, -4($fp)
	lw $v0, -5752($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 60011
	sw $t0, -5832($fp)
	li $t0, 30282
	sw $t0, -5836($fp)
	lw $t0, -5832($fp)
	lw $t1, -5836($fp)
	sub $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t0, -5736($fp)
	sw $t0, -5844($fp)
	li $t0, 39550
	sw $t0, -5848($fp)
	lw $t0, -5844($fp)
	lw $t1, -5848($fp)
	mul $t0, $t0, $t1
	sw $t0, -5852($fp)
	lw $t0, -5840($fp)
	lw $t1, -5852($fp)
	sub $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -5860($fp)
	li $t0, 37018
	sw $t0, -5884($fp)
	addi $t0, $fp, -5880
	sw $t0, -5888($fp)
	li $t0, 0
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5888($fp)
	lw $t1, -5896($fp)
	add $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5884($fp)
	lw $t1, -5900($fp)
	sw $t0, 0($t1)
	lw $t0, -5900($fp)
	lw $t1, 0($t0)
	sw $t1, -5904($fp)
	li $t0, 7086
	sw $t0, -5908($fp)
	addi $t0, $fp, -5880
	sw $t0, -5912($fp)
	li $t0, 1
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t0, -5912($fp)
	lw $t1, -5920($fp)
	add $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $t0, -5908($fp)
	lw $t1, -5924($fp)
	sw $t0, 0($t1)
	lw $t0, -5924($fp)
	lw $t1, 0($t0)
	sw $t1, -5928($fp)
	li $t0, 8126
	sw $t0, -5932($fp)
	addi $t0, $fp, -5880
	sw $t0, -5936($fp)
	li $t0, 2
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5936($fp)
	lw $t1, -5944($fp)
	add $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5932($fp)
	lw $t1, -5948($fp)
	sw $t0, 0($t1)
	lw $t0, -5948($fp)
	lw $t1, 0($t0)
	sw $t1, -5952($fp)
	li $t0, 24534
	sw $t0, -5956($fp)
	addi $t0, $fp, -5880
	sw $t0, -5960($fp)
	li $t0, 3
	sw $t0, -5964($fp)
	lw $t0, -5964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5960($fp)
	lw $t1, -5968($fp)
	add $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5956($fp)
	lw $t1, -5972($fp)
	sw $t0, 0($t1)
	lw $t0, -5972($fp)
	lw $t1, 0($t0)
	sw $t1, -5976($fp)
	li $t0, 33618
	sw $t0, -5980($fp)
	addi $t0, $fp, -5880
	sw $t0, -5984($fp)
	li $t0, 4
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5992($fp)
	lw $t0, -5984($fp)
	lw $t1, -5992($fp)
	add $t0, $t0, $t1
	sw $t0, -5996($fp)
	lw $t0, -5980($fp)
	lw $t1, -5996($fp)
	sw $t0, 0($t1)
	lw $t0, -5996($fp)
	lw $t1, 0($t0)
	sw $t1, -6000($fp)
	li $t0, 16996
	sw $t0, -6032($fp)
	addi $t0, $fp, -6028
	sw $t0, -6036($fp)
	li $t0, 0
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t0, -6036($fp)
	lw $t1, -6044($fp)
	add $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t0, -6032($fp)
	lw $t1, -6048($fp)
	sw $t0, 0($t1)
	lw $t0, -6048($fp)
	lw $t1, 0($t0)
	sw $t1, -6052($fp)
	li $t0, 55289
	sw $t0, -6056($fp)
	addi $t0, $fp, -6028
	sw $t0, -6060($fp)
	li $t0, 1
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t0, -6060($fp)
	lw $t1, -6068($fp)
	add $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6056($fp)
	lw $t1, -6072($fp)
	sw $t0, 0($t1)
	lw $t0, -6072($fp)
	lw $t1, 0($t0)
	sw $t1, -6076($fp)
	li $t0, 56673
	sw $t0, -6080($fp)
	addi $t0, $fp, -6028
	sw $t0, -6084($fp)
	li $t0, 2
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -6084($fp)
	lw $t1, -6092($fp)
	add $t0, $t0, $t1
	sw $t0, -6096($fp)
	lw $t0, -6080($fp)
	lw $t1, -6096($fp)
	sw $t0, 0($t1)
	lw $t0, -6096($fp)
	lw $t1, 0($t0)
	sw $t1, -6100($fp)
	li $t0, 19486
	sw $t0, -6104($fp)
	addi $t0, $fp, -6028
	sw $t0, -6108($fp)
	li $t0, 3
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -6108($fp)
	lw $t1, -6116($fp)
	add $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6104($fp)
	lw $t1, -6120($fp)
	sw $t0, 0($t1)
	lw $t0, -6120($fp)
	lw $t1, 0($t0)
	sw $t1, -6124($fp)
	li $t0, 55686
	sw $t0, -6128($fp)
	addi $t0, $fp, -6028
	sw $t0, -6132($fp)
	li $t0, 4
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6132($fp)
	lw $t1, -6140($fp)
	add $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6128($fp)
	lw $t1, -6144($fp)
	sw $t0, 0($t1)
	lw $t0, -6144($fp)
	lw $t1, 0($t0)
	sw $t1, -6148($fp)
	li $t0, 10408
	sw $t0, -6152($fp)
	addi $t0, $fp, -6028
	sw $t0, -6156($fp)
	li $t0, 5
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6156($fp)
	lw $t1, -6164($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6152($fp)
	lw $t1, -6168($fp)
	sw $t0, 0($t1)
	lw $t0, -6168($fp)
	lw $t1, 0($t0)
	sw $t1, -6172($fp)
	li $t0, 37837
	sw $t0, -6176($fp)
	addi $t0, $fp, -6028
	sw $t0, -6180($fp)
	li $t0, 6
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6180($fp)
	lw $t1, -6188($fp)
	add $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6176($fp)
	lw $t1, -6192($fp)
	sw $t0, 0($t1)
	lw $t0, -6192($fp)
	lw $t1, 0($t0)
	sw $t1, -6196($fp)
	li $t0, 0
	sw $t0, -6200($fp)
	addi $t0, $fp, -6028
	sw $t0, -6204($fp)
	li $t0, 0
	sw $t0, -6208($fp)
	li $t0, 1166
	sw $t0, -6212($fp)
	li $t0, 47143
	sw $t0, -6216($fp)
	lw $t1, -6212($fp)
	lw $t2, -6216($fp)
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -6208($fp)
label317:
	li $t0, 4
	lw $t1, -6208($fp)
	mul $t0, $t0, $t1
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	lw $t1, -6204($fp)
	add $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	lw $t1, 0($t0)
	sw $t1, -6228($fp)
	li $t0, 24260
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -6236($fp)
	li $t0, 0
	sw $t0, -6240($fp)
	li $t0, 17178
	sw $t0, -6244($fp)
	lw $t1, -6244($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label321:
	li $t0, 49216
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label320
label320:
	li $t0, 20985
	sw $t0, -6252($fp)
	lw $t1, -6252($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -6240($fp)
label319:
	addi $sp, $sp, -4
	lw $t0, -6236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6256($fp)
	addi $sp, $sp, 12
	lw $t1, -6228($fp)
	lw $t2, -6256($fp)
	beq $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -6200($fp)
label315:
	lw $t0, -716($fp)
	sw $t0, -6260($fp)
	li $t0, 16877
	sw $t0, -6264($fp)
	lw $t0, -6260($fp)
	lw $t1, -6264($fp)
	mul $t0, $t0, $t1
	sw $t0, -6268($fp)
	li $t0, 0
	sw $t0, -6272($fp)
	lw $t0, -1424($fp)
	sw $t0, -6276($fp)
	lw $t0, -980($fp)
	sw $t0, -6280($fp)
	lw $t1, -6276($fp)
	lw $t2, -6280($fp)
	bge $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -6272($fp)
label323:
	lw $t0, -6272($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -6288($fp)
	lw $t0, -944($fp)
	sw $t0, -6292($fp)
	li $t0, 0
	lw $t1, -6292($fp)
	sub $t0, $t0, $t1
	sw $t0, -6296($fp)
	li $t0, 0
	lw $t1, -6296($fp)
	sub $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -956($fp)
	sw $t0, -6304($fp)
	li $t0, 0
	sw $t0, -6308($fp)
	addi $t0, $fp, -92
	sw $t0, -6312($fp)
	li $t0, 1
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
	lw $t1, -6328($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -6308($fp)
label325:
	li $t0, 0
	sw $t0, -6332($fp)
	li $t0, 50463
	sw $t0, -6336($fp)
	lw $t1, -6336($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label326:
	li $t0, 1
	sw $t0, -6332($fp)
label327:
	li $t0, 8608
	sw $t0, -6340($fp)
	lw $t0, -6332($fp)
	lw $t1, -6340($fp)
	mul $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -968($fp)
	sw $t0, -6348($fp)
	li $t0, 0
	lw $t1, -6348($fp)
	sub $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6344($fp)
	lw $t1, -6352($fp)
	mul $t0, $t0, $t1
	sw $t0, -6356($fp)
	li $t0, 0
	sw $t0, -6360($fp)
	li $t0, 0
	sw $t0, -6364($fp)
	lw $t0, -992($fp)
	sw $t0, -6368($fp)
	lw $t0, -1004($fp)
	sw $t0, -6372($fp)
	lw $t1, -6368($fp)
	lw $t2, -6372($fp)
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -6364($fp)
label331:
	li $t0, 4762
	sw $t0, -6376($fp)
	lw $t1, -6364($fp)
	lw $t2, -6376($fp)
	beq $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -6360($fp)
label329:
	lw $t0, -980($fp)
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -6384($fp)
	addi $sp, $sp, -4
	lw $t0, -6360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6388($fp)
	addi $sp, $sp, 12
	lw $t0, -6356($fp)
	lw $t1, -6388($fp)
	sub $t0, $t0, $t1
	sw $t0, -6392($fp)
	li $t0, 0
	sw $t0, -6396($fp)
	li $t0, 44418
	sw $t0, -6400($fp)
	li $t0, 0
	lw $t1, -6400($fp)
	sub $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t1, -6404($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label334:
	lw $t0, -1916($fp)
	sw $t0, -6408($fp)
	lw $t1, -6408($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -6396($fp)
label333:
	li $t0, 0
	sw $t0, -6412($fp)
	lw $t0, -716($fp)
	sw $t0, -6416($fp)
	lw $t1, -6416($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label335
label335:
	li $t0, 1
	sw $t0, -6412($fp)
label336:
	li $t0, 0
	lw $t1, -6412($fp)
	sub $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -1016($fp)
	sw $t0, -6424($fp)
	li $t0, 0
	lw $t1, -6424($fp)
	sub $t0, $t0, $t1
	sw $t0, -6428($fp)
	li $t0, 0
	lw $t1, -6428($fp)
	sub $t0, $t0, $t1
	sw $t0, -6432($fp)
	li $t0, 0
	sw $t0, -6436($fp)
	li $t0, 0
	sw $t0, -6440($fp)
	lw $t0, -2288($fp)
	sw $t0, -6444($fp)
	li $t0, 63987
	sw $t0, -6448($fp)
	lw $t1, -6444($fp)
	lw $t2, -6448($fp)
	bgt $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -6440($fp)
label340:
	lw $t0, -1820($fp)
	sw $t0, -6452($fp)
	lw $t1, -6440($fp)
	lw $t2, -6452($fp)
	blt $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -6436($fp)
label338:
	addi $sp, $sp, -4
	lw $t0, -6432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6456($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -5880
	sw $t0, -6460($fp)
	li $t0, 0
	sw $t0, -6464($fp)
	li $t0, 6712
	sw $t0, -6468($fp)
	li $t0, 38894
	sw $t0, -6472($fp)
	lw $t1, -6468($fp)
	lw $t2, -6472($fp)
	beq $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -6464($fp)
label345:
	li $t0, 4
	lw $t1, -6464($fp)
	mul $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	lw $t1, -6460($fp)
	add $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	lw $t1, 0($t0)
	sw $t1, -6484($fp)
	addi $t0, $fp, -192
	sw $t0, -6488($fp)
	li $t0, 2
	sw $t0, -6492($fp)
	li $t0, 4
	lw $t1, -6492($fp)
	mul $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	lw $t1, -6488($fp)
	add $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	lw $t1, 0($t0)
	sw $t1, -6504($fp)
	lw $t0, -6484($fp)
	lw $t1, -6504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6508($fp)
	li $t0, 0
	sw $t0, -6512($fp)
	li $t0, 10376
	sw $t0, -6516($fp)
	lw $t0, -1640($fp)
	sw $t0, -6520($fp)
	lw $t0, -6516($fp)
	lw $t1, -6520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6524($fp)
	li $t0, 35819
	sw $t0, -6528($fp)
	lw $t1, -6524($fp)
	lw $t2, -6528($fp)
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -6512($fp)
label347:
	li $t0, 0
	sw $t0, -6532($fp)
	lw $t0, -2936($fp)
	sw $t0, -6536($fp)
	lw $t1, -6536($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -6532($fp)
label349:
	addi $sp, $sp, -4
	lw $t0, -6512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6540($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -6540($fp)
	sub $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6508($fp)
	lw $t1, -6544($fp)
	mul $t0, $t0, $t1
	sw $t0, -6548($fp)
	lw $t1, -6548($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 0
	sw $t0, -6552($fp)
	li $t0, 0
	sw $t0, -6556($fp)
	li $t0, 0
	sw $t0, -6560($fp)
	li $t0, 54389
	sw $t0, -6564($fp)
	lw $t1, -6564($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	li $t0, 1
	sw $t0, -6560($fp)
label355:
	li $t0, 0
	lw $t1, -6560($fp)
	sub $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t1, -6568($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -6556($fp)
label353:
	addi $t0, $fp, -312
	sw $t0, -6572($fp)
	li $t0, 8
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
	li $t0, 0
	lw $t1, -6588($fp)
	sub $t0, $t0, $t1
	sw $t0, -6592($fp)
	li $t0, 0
	lw $t1, -6592($fp)
	sub $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t1, -6556($fp)
	lw $t2, -6596($fp)
	bgt $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -6552($fp)
label351:
	lw $ra, -4($fp)
	lw $v0, -6552($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label343
label342:
	li $t0, 5849
	sw $t0, -6624($fp)
	addi $t0, $fp, -6620
	sw $t0, -6628($fp)
	li $t0, 0
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6628($fp)
	lw $t1, -6636($fp)
	add $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6624($fp)
	lw $t1, -6640($fp)
	sw $t0, 0($t1)
	lw $t0, -6640($fp)
	lw $t1, 0($t0)
	sw $t1, -6644($fp)
	li $t0, 24664
	sw $t0, -6648($fp)
	addi $t0, $fp, -6620
	sw $t0, -6652($fp)
	li $t0, 1
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6652($fp)
	lw $t1, -6660($fp)
	add $t0, $t0, $t1
	sw $t0, -6664($fp)
	lw $t0, -6648($fp)
	lw $t1, -6664($fp)
	sw $t0, 0($t1)
	lw $t0, -6664($fp)
	lw $t1, 0($t0)
	sw $t1, -6668($fp)
	li $t0, 60575
	sw $t0, -6672($fp)
	addi $t0, $fp, -6620
	sw $t0, -6676($fp)
	li $t0, 2
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6676($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6672($fp)
	lw $t1, -6688($fp)
	sw $t0, 0($t1)
	lw $t0, -6688($fp)
	lw $t1, 0($t0)
	sw $t1, -6692($fp)
	li $t0, 25336
	sw $t0, -6696($fp)
	addi $t0, $fp, -6620
	sw $t0, -6700($fp)
	li $t0, 3
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6700($fp)
	lw $t1, -6708($fp)
	add $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6696($fp)
	lw $t1, -6712($fp)
	sw $t0, 0($t1)
	lw $t0, -6712($fp)
	lw $t1, 0($t0)
	sw $t1, -6716($fp)
	li $t0, 14814
	sw $t0, -6720($fp)
	addi $t0, $fp, -6620
	sw $t0, -6724($fp)
	li $t0, 4
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6724($fp)
	lw $t1, -6732($fp)
	add $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6720($fp)
	lw $t1, -6736($fp)
	sw $t0, 0($t1)
	lw $t0, -6736($fp)
	lw $t1, 0($t0)
	sw $t1, -6740($fp)
	li $t0, 5447
	sw $t0, -6744($fp)
	addi $t0, $fp, -6620
	sw $t0, -6748($fp)
	li $t0, 5
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6748($fp)
	lw $t1, -6756($fp)
	add $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6744($fp)
	lw $t1, -6760($fp)
	sw $t0, 0($t1)
	lw $t0, -6760($fp)
	lw $t1, 0($t0)
	sw $t1, -6764($fp)
	li $t0, 63173
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	sw $t0, -6776($fp)
	li $t0, 0
	sw $t0, -6780($fp)
	li $t0, 0
	sw $t0, -6784($fp)
	li $t0, 15980
	sw $t0, -6788($fp)
	lw $t1, -6788($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label359:
	li $t0, 1
	sw $t0, -6784($fp)
label360:
	li $t0, 52590
	sw $t0, -6792($fp)
	li $t0, 0
	lw $t1, -6792($fp)
	sub $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6784($fp)
	lw $t1, -6796($fp)
	mul $t0, $t0, $t1
	sw $t0, -6800($fp)
	li $t0, 0
	lw $t1, -6800($fp)
	sub $t0, $t0, $t1
	sw $t0, -6804($fp)
	li $t0, 0
	sw $t0, -6808($fp)
	li $t0, 39076
	sw $t0, -6812($fp)
	lw $t1, -6812($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label363:
	li $t0, 16538
	sw $t0, -6816($fp)
	lw $t1, -6816($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -6808($fp)
label362:
	addi $t0, $fp, -160
	sw $t0, -6820($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -6840($fp)
	li $t0, 14816
	sw $t0, -6844($fp)
	lw $t1, -6844($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label364:
	li $t0, 1
	sw $t0, -6840($fp)
label365:
	addi $sp, $sp, -4
	lw $t0, -6836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6848($fp)
	addi $sp, $sp, 12
	lw $t0, -704($fp)
	sw $t0, -6852($fp)
	lw $t0, -6848($fp)
	lw $t1, -6852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6856($fp)
	addi $sp, $sp, -4
	lw $t0, -6808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6860($fp)
	addi $sp, $sp, 12
	li $t0, 63841
	sw $t0, -6864($fp)
	lw $t0, -6860($fp)
	lw $t1, -6864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6868($fp)
	lw $t1, -6804($fp)
	lw $t2, -6868($fp)
	bne $t1, $t2, label356
	j label358
label358:
	li $t0, 20093
	sw $t0, -6872($fp)
	li $t0, 0
	lw $t1, -6872($fp)
	sub $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t1, -6876($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label357
label366:
	lw $t0, -920($fp)
	sw $t0, -6880($fp)
	lw $t0, -896($fp)
	sw $t0, -6884($fp)
	lw $t0, -6880($fp)
	lw $t1, -6884($fp)
	sub $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t1, -6888($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -6780($fp)
label357:
	lw $t0, -2828($fp)
	sw $t0, -6892($fp)
	li $t0, 0
	lw $t1, -6892($fp)
	sub $t0, $t0, $t1
	sw $t0, -6896($fp)
	li $t0, 0
	sw $t0, -6900($fp)
	li $t0, 0
	sw $t0, -6904($fp)
	lw $t0, -2528($fp)
	sw $t0, -6908($fp)
	li $t0, 0
	lw $t1, -6908($fp)
	sub $t0, $t0, $t1
	sw $t0, -6912($fp)
	li $t0, 48769
	sw $t0, -6916($fp)
	lw $t1, -6912($fp)
	lw $t2, -6916($fp)
	ble $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -6904($fp)
label371:
	lw $t0, -1592($fp)
	sw $t0, -6920($fp)
	lw $t0, -908($fp)
	sw $t0, -6924($fp)
	lw $t0, -6920($fp)
	lw $t1, -6924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6928($fp)
	li $t0, 19697
	sw $t0, -6932($fp)
	lw $t0, -6928($fp)
	lw $t1, -6932($fp)
	sub $t0, $t0, $t1
	sw $t0, -6936($fp)
	addi $sp, $sp, -4
	lw $t0, -6904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6940($fp)
	addi $sp, $sp, 12
	lw $t1, -6940($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label368
label369:
	li $t0, 28702
	sw $t0, -6944($fp)
	li $t0, 27651
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -6952($fp)
	li $t0, 0
	sw $t0, -6956($fp)
	lw $t0, -1928($fp)
	sw $t0, -6960($fp)
	lw $t1, -6960($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label373
label374:
	li $t0, 24459
	sw $t0, -6964($fp)
	lw $t1, -6964($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -6956($fp)
label373:
	addi $sp, $sp, -4
	lw $t0, -6952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6968($fp)
	addi $sp, $sp, 12
	lw $t0, -6944($fp)
	lw $t1, -6968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6972($fp)
	lw $t1, -6972($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -6900($fp)
label368:
	li $t0, 0
	sw $t0, -6976($fp)
	li $t0, 27153
	sw $t0, -6980($fp)
	lw $t1, -6980($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label377:
	li $t0, 31171
	sw $t0, -6984($fp)
	lw $t0, -1628($fp)
	sw $t0, -6988($fp)
	lw $t0, -6984($fp)
	lw $t1, -6988($fp)
	mul $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t1, -6992($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -6976($fp)
label376:
	addi $t0, $fp, -180
	sw $t0, -6996($fp)
	li $t0, 3
	sw $t0, -7000($fp)
	li $t0, 4
	lw $t1, -7000($fp)
	mul $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	lw $t1, -6996($fp)
	add $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	lw $t1, 0($t0)
	sw $t1, -7012($fp)
	lw $t0, -2540($fp)
	sw $t0, -7016($fp)
	li $t0, 0
	lw $t1, -7016($fp)
	sub $t0, $t0, $t1
	sw $t0, -7020($fp)
	addi $sp, $sp, -4
	lw $t0, -7012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7024($fp)
	addi $sp, $sp, 12
	li $t0, 11897
	sw $t0, -7028($fp)
	lw $t0, -7024($fp)
	lw $t1, -7028($fp)
	sub $t0, $t0, $t1
	sw $t0, -7032($fp)
	li $t0, 0
	sw $t0, -7036($fp)
	li $t0, 11385
	sw $t0, -7040($fp)
	li $t0, 0
	lw $t1, -7040($fp)
	sub $t0, $t0, $t1
	sw $t0, -7044($fp)
	li $t0, 0
	sw $t0, -7048($fp)
	li $t0, 26169
	sw $t0, -7052($fp)
	lw $t1, -7052($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label380
label380:
	li $t0, 1
	sw $t0, -7048($fp)
label381:
	lw $t0, -1484($fp)
	sw $t0, -7056($fp)
	lw $t0, -7048($fp)
	lw $t1, -7056($fp)
	add $t0, $t0, $t1
	sw $t0, -7060($fp)
	addi $t0, $fp, -6620
	sw $t0, -7064($fp)
	lw $t0, -1928($fp)
	sw $t0, -7068($fp)
	li $t0, 4
	lw $t1, -7068($fp)
	mul $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	lw $t1, -7064($fp)
	add $t0, $t0, $t1
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	lw $t1, 0($t0)
	sw $t1, -7080($fp)
	addi $sp, $sp, -4
	lw $t0, -7060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7084($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -7088($fp)
	lw $t0, -968($fp)
	sw $t0, -7092($fp)
	lw $t0, -908($fp)
	sw $t0, -7096($fp)
	lw $t0, -7092($fp)
	lw $t1, -7096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7100($fp)
	lw $t1, -7100($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label384
label384:
	li $t0, 6600
	sw $t0, -7104($fp)
	lw $t1, -7104($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -7088($fp)
label383:
	lw $t0, -6772($fp)
	sw $t0, -7108($fp)
	addi $sp, $sp, -4
	lw $t0, -7088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7112($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -7116($fp)
	li $t0, 750
	sw $t0, -7120($fp)
	li $t0, 46296
	sw $t0, -7124($fp)
	lw $t0, -7120($fp)
	lw $t1, -7124($fp)
	add $t0, $t0, $t1
	sw $t0, -7128($fp)
	li $t0, 30071
	sw $t0, -7132($fp)
	lw $t1, -7128($fp)
	lw $t2, -7132($fp)
	bge $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -7116($fp)
label386:
	addi $sp, $sp, -4
	lw $t0, -7112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7136($fp)
	addi $sp, $sp, 12
	lw $t0, -7084($fp)
	lw $t1, -7136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7140($fp)
	lw $t1, -7044($fp)
	lw $t2, -7140($fp)
	bgt $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -7036($fp)
label379:
label343:
label387:
	li $t0, 0
	sw $t0, -7144($fp)
	li $t0, 0
	sw $t0, -7148($fp)
	lw $t0, -5620($fp)
	sw $t0, -7152($fp)
	li $t0, 31936
	sw $t0, -7156($fp)
	lw $t1, -7152($fp)
	lw $t2, -7156($fp)
	ble $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -7148($fp)
label393:
	li $t0, 20238
	sw $t0, -7160($fp)
	lw $t1, -7148($fp)
	lw $t2, -7160($fp)
	beq $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -7144($fp)
label391:
	li $t0, 0
	sw $t0, -7164($fp)
	li $t0, 5424
	sw $t0, -7168($fp)
	lw $t1, -7168($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label394:
	li $t0, 1
	sw $t0, -7164($fp)
label395:
	li $t0, 25110
	sw $t0, -7172($fp)
	lw $t0, -7164($fp)
	lw $t1, -7172($fp)
	mul $t0, $t0, $t1
	sw $t0, -7176($fp)
	addi $sp, $sp, -4
	lw $t0, -7144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7180($fp)
	addi $sp, $sp, 12
	lw $t1, -7180($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
label396:
	addi $t0, $fp, -44
	sw $t0, -7184($fp)
	li $t0, 0
	sw $t0, -7188($fp)
	li $t0, 0
	sw $t0, -7192($fp)
	lw $t0, -1928($fp)
	sw $t0, -7196($fp)
	lw $t0, -2324($fp)
	sw $t0, -7200($fp)
	lw $t1, -7196($fp)
	lw $t2, -7200($fp)
	ble $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -7192($fp)
label402:
	li $t0, 30557
	sw $t0, -7204($fp)
	lw $t1, -7192($fp)
	lw $t2, -7204($fp)
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -7188($fp)
label400:
	li $t0, 4
	lw $t1, -7188($fp)
	mul $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	lw $t1, -7184($fp)
	add $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	lw $t1, 0($t0)
	sw $t1, -7216($fp)
	lw $t0, -1616($fp)
	sw $t0, -7220($fp)
	li $t0, 0
	lw $t1, -7220($fp)
	sub $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -7216($fp)
	lw $t1, -7224($fp)
	sub $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t1, -7228($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	addi $t0, $fp, -324
	sw $t0, -7232($fp)
	li $t0, 1
	sw $t0, -7236($fp)
	li $t0, 4
	lw $t1, -7236($fp)
	mul $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	lw $t1, -7232($fp)
	add $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	lw $t1, 0($t0)
	sw $t1, -7248($fp)
	lw $t1, -7248($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label403:
	lw $t0, -1772($fp)
	sw $t0, -7252($fp)
	j label405
label404:
	li $t0, 17611
	sw $t0, -7256($fp)
	lw $t0, -1928($fp)
	sw $t0, -7260($fp)
	li $t0, 0
	lw $t1, -7260($fp)
	sub $t0, $t0, $t1
	sw $t0, -7264($fp)
	lw $t0, -7256($fp)
	lw $t1, -7264($fp)
	add $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -7272($fp)
label405:
	j label396
label398:
	li $t0, 0
	sw $t0, -7276($fp)
	lw $t0, -2840($fp)
	sw $t0, -7280($fp)
	li $t0, 0
	sw $t0, -7284($fp)
	lw $t0, -1424($fp)
	sw $t0, -7288($fp)
	lw $t1, -7288($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label408:
	li $t0, 1
	sw $t0, -7284($fp)
label409:
	lw $t0, -7280($fp)
	lw $t1, -7284($fp)
	mul $t0, $t0, $t1
	sw $t0, -7292($fp)
	li $t0, 0
	sw $t0, -7296($fp)
	li $t0, 0
	sw $t0, -7300($fp)
	li $t0, 25650
	sw $t0, -7304($fp)
	li $t0, 17929
	sw $t0, -7308($fp)
	lw $t1, -7304($fp)
	lw $t2, -7308($fp)
	bgt $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -7300($fp)
label413:
	li $t0, 52416
	sw $t0, -7312($fp)
	lw $t1, -7300($fp)
	lw $t2, -7312($fp)
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -7296($fp)
label411:
	li $t0, 0
	sw $t0, -7316($fp)
	lw $t0, -896($fp)
	sw $t0, -7320($fp)
	li $t0, 44389
	sw $t0, -7324($fp)
	lw $t0, -7320($fp)
	lw $t1, -7324($fp)
	sub $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t1, -7328($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label416
label416:
	li $t0, 35878
	sw $t0, -7332($fp)
	lw $t1, -7332($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -7316($fp)
label415:
	addi $sp, $sp, -4
	lw $t0, -7296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7336($fp)
	addi $sp, $sp, 12
	lw $t0, -7292($fp)
	lw $t1, -7336($fp)
	add $t0, $t0, $t1
	sw $t0, -7340($fp)
	li $t0, 0
	sw $t0, -7344($fp)
	li $t0, 23955
	sw $t0, -7348($fp)
	lw $t1, -7348($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label417:
	li $t0, 1
	sw $t0, -7344($fp)
label418:
	lw $t1, -7340($fp)
	lw $t2, -7344($fp)
	beq $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -7276($fp)
label407:
	li $t0, 0
	sw $t0, -7352($fp)
	lw $t0, -944($fp)
	sw $t0, -7356($fp)
	lw $t1, -7356($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label422:
	li $t0, 1
	sw $t0, -7352($fp)
label423:
	lw $t0, -1040($fp)
	sw $t0, -7360($fp)
	lw $t0, -7352($fp)
	lw $t1, -7360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7364($fp)
	li $t0, 0
	sw $t0, -7368($fp)
	lw $t0, -1436($fp)
	sw $t0, -7372($fp)
	lw $t0, -2132($fp)
	sw $t0, -7376($fp)
	lw $t1, -7372($fp)
	lw $t2, -7376($fp)
	bne $t1, $t2, label424
	j label426
label426:
	li $t0, 38023
	sw $t0, -7380($fp)
	lw $t1, -7380($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -7368($fp)
label425:
	addi $sp, $sp, -4
	lw $t0, -7364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7384($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -7384($fp)
	sub $t0, $t0, $t1
	sw $t0, -7388($fp)
	li $t0, 0
	lw $t1, -7388($fp)
	sub $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t1, -7392($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label419:
	addi $t0, $fp, -208
	sw $t0, -7396($fp)
	li $t0, 0
	sw $t0, -7400($fp)
	li $t0, 4
	lw $t1, -7400($fp)
	mul $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	lw $t1, -7396($fp)
	add $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	lw $t1, 0($t0)
	sw $t1, -7412($fp)
	j label421
label420:
	li $t0, 0
	sw $t0, -7416($fp)
	li $t0, 0
	sw $t0, -7420($fp)
	lw $t0, -2828($fp)
	sw $t0, -7424($fp)
	li $t0, 0
	lw $t1, -7424($fp)
	sub $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t1, -7428($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label429:
	li $t0, 1
	sw $t0, -7420($fp)
label430:
	li $t0, 0
	lw $t1, -7420($fp)
	sub $t0, $t0, $t1
	sw $t0, -7432($fp)
	li $t0, 0
	sw $t0, -7436($fp)
	li $t0, 1189
	sw $t0, -7440($fp)
	lw $t0, -1772($fp)
	sw $t0, -7444($fp)
	li $t0, 31036
	sw $t0, -7448($fp)
	lw $t0, -7444($fp)
	lw $t1, -7448($fp)
	add $t0, $t0, $t1
	sw $t0, -7452($fp)
	lw $t1, -7440($fp)
	lw $t2, -7452($fp)
	bge $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -7436($fp)
label432:
	lw $t1, -7432($fp)
	lw $t2, -7436($fp)
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -7416($fp)
label428:
label421:
	addi $t0, $fp, -220
	sw $t0, -7456($fp)
	li $t0, 0
	sw $t0, -7460($fp)
	li $t0, 34840
	sw $t0, -7464($fp)
	lw $t1, -7464($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label438:
	lw $t0, -1568($fp)
	sw $t0, -7468($fp)
	lw $t1, -7468($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -7460($fp)
label437:
	li $t0, 4
	lw $t1, -7460($fp)
	mul $t0, $t0, $t1
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	lw $t1, -7456($fp)
	add $t0, $t0, $t1
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	lw $t1, 0($t0)
	sw $t1, -7480($fp)
	li $t0, 0
	sw $t0, -7484($fp)
	lw $t0, -2108($fp)
	sw $t0, -7488($fp)
	lw $t1, -7488($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -7484($fp)
label440:
	lw $t0, -7480($fp)
	lw $t1, -7484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7492($fp)
	li $t0, 0
	sw $t0, -7496($fp)
	lw $t0, -1580($fp)
	sw $t0, -7500($fp)
	li $t0, 0
	lw $t1, -7500($fp)
	sub $t0, $t0, $t1
	sw $t0, -7504($fp)
	lw $t1, -7504($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -7496($fp)
label442:
	lw $t0, -7492($fp)
	lw $t1, -7496($fp)
	mul $t0, $t0, $t1
	sw $t0, -7508($fp)
	lw $t1, -7508($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label434
label433:
label443:
	li $t0, 28342
	sw $t0, -7512($fp)
	lw $t1, -7512($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 0
	sw $t0, -7516($fp)
	addi $t0, $fp, -136
	sw $t0, -7520($fp)
	li $t0, 62207
	sw $t0, -7524($fp)
	li $t0, 35849
	sw $t0, -7528($fp)
	lw $t0, -7524($fp)
	lw $t1, -7528($fp)
	sub $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t0, -1916($fp)
	sw $t0, -7536($fp)
	lw $t0, -7532($fp)
	lw $t1, -7536($fp)
	add $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t0, -980($fp)
	sw $t0, -7544($fp)
	lw $t0, -7544($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -7548($fp)
	addi $sp, $sp, -4
	lw $t0, -7540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7552($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -7552($fp)
	mul $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	lw $t1, -7520($fp)
	add $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -7560($fp)
	lw $t1, 0($t0)
	sw $t1, -7564($fp)
	lw $t1, -7564($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label448
label448:
	lw $t0, -1928($fp)
	sw $t0, -7568($fp)
	li $t0, 18692
	sw $t0, -7572($fp)
	lw $t0, -7568($fp)
	lw $t1, -7572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7576($fp)
	lw $t0, -2300($fp)
	sw $t0, -7580($fp)
	lw $t0, -7576($fp)
	lw $t1, -7580($fp)
	sub $t0, $t0, $t1
	sw $t0, -7584($fp)
	addi $t0, $fp, -276
	sw $t0, -7588($fp)
	lw $t0, -1772($fp)
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
	lw $t1, -7584($fp)
	lw $t2, -7604($fp)
	ble $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -7516($fp)
label447:
	j label443
label445:
	j label435
label434:
	addi $t0, $fp, -64
	sw $t0, -7608($fp)
	li $t0, 9319
	sw $t0, -7612($fp)
	li $t0, 0
	sw $t0, -7616($fp)
	li $t0, 8569
	sw $t0, -7620($fp)
	lw $t1, -7620($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label451
label452:
	li $t0, 47235
	sw $t0, -7624($fp)
	lw $t1, -7624($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label451
label451:
	li $t0, 44861
	sw $t0, -7628($fp)
	lw $t1, -7628($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -7616($fp)
label450:
	addi $sp, $sp, -4
	lw $t0, -7612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7632($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -7632($fp)
	sub $t0, $t0, $t1
	sw $t0, -7636($fp)
	li $t0, 4
	lw $t1, -7636($fp)
	mul $t0, $t0, $t1
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	lw $t1, -7608($fp)
	add $t0, $t0, $t1
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	lw $t1, 0($t0)
	sw $t1, -7648($fp)
label435:
label453:
	addi $t0, $fp, -324
	sw $t0, -7652($fp)
	li $t0, 0
	sw $t0, -7656($fp)
	li $t0, 27995
	sw $t0, -7660($fp)
	lw $t1, -7660($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label457:
	li $t0, 1
	sw $t0, -7656($fp)
label458:
	li $t0, 4
	lw $t1, -7656($fp)
	mul $t0, $t0, $t1
	sw $t0, -7664($fp)
	lw $t0, -7664($fp)
	lw $t1, -7652($fp)
	add $t0, $t0, $t1
	sw $t0, -7668($fp)
	lw $t0, -7668($fp)
	lw $t1, 0($t0)
	sw $t1, -7672($fp)
	lw $t1, -7672($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label454
label456:
	lw $t0, -2528($fp)
	sw $t0, -7676($fp)
	li $t0, 9396
	sw $t0, -7680($fp)
	lw $t0, -7676($fp)
	lw $t1, -7680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7684($fp)
	lw $t0, -2540($fp)
	sw $t0, -7688($fp)
	lw $t0, -7684($fp)
	lw $t1, -7688($fp)
	sub $t0, $t0, $t1
	sw $t0, -7692($fp)
	lw $t0, -2288($fp)
	sw $t0, -7696($fp)
	lw $t1, -7692($fp)
	lw $t2, -7696($fp)
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 0
	sw $t0, -7700($fp)
	li $t0, 15919
	sw $t0, -7704($fp)
	li $t0, 0
	sw $t0, -7708($fp)
	li $t0, 33419
	sw $t0, -7712($fp)
	lw $t1, -7712($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label461
label461:
	li $t0, 1
	sw $t0, -7708($fp)
label462:
	lw $t1, -7704($fp)
	lw $t2, -7708($fp)
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -7700($fp)
label460:
	lw $t0, -7700($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -7716($fp)
	j label453
label455:
	li $t0, 34506
	sw $t0, -7756($fp)
	addi $t0, $fp, -7724
	sw $t0, -7760($fp)
	li $t0, 0
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7768($fp)
	lw $t0, -7760($fp)
	lw $t1, -7768($fp)
	add $t0, $t0, $t1
	sw $t0, -7772($fp)
	lw $t0, -7756($fp)
	lw $t1, -7772($fp)
	sw $t0, 0($t1)
	lw $t0, -7772($fp)
	lw $t1, 0($t0)
	sw $t1, -7776($fp)
	li $t0, 47855
	sw $t0, -7780($fp)
	addi $t0, $fp, -7724
	sw $t0, -7784($fp)
	li $t0, 1
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7792($fp)
	lw $t0, -7784($fp)
	lw $t1, -7792($fp)
	add $t0, $t0, $t1
	sw $t0, -7796($fp)
	lw $t0, -7780($fp)
	lw $t1, -7796($fp)
	sw $t0, 0($t1)
	lw $t0, -7796($fp)
	lw $t1, 0($t0)
	sw $t1, -7800($fp)
	li $t0, 53657
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	sw $t0, -7808($fp)
	lw $t0, -7808($fp)
	sw $t0, -7812($fp)
	li $t0, 65063
	sw $t0, -7816($fp)
	addi $t0, $fp, -7752
	sw $t0, -7820($fp)
	li $t0, 0
	sw $t0, -7824($fp)
	lw $t0, -7824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7828($fp)
	lw $t0, -7820($fp)
	lw $t1, -7828($fp)
	add $t0, $t0, $t1
	sw $t0, -7832($fp)
	lw $t0, -7816($fp)
	lw $t1, -7832($fp)
	sw $t0, 0($t1)
	lw $t0, -7832($fp)
	lw $t1, 0($t0)
	sw $t1, -7836($fp)
	li $t0, 11893
	sw $t0, -7840($fp)
	addi $t0, $fp, -7752
	sw $t0, -7844($fp)
	li $t0, 1
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7852($fp)
	lw $t0, -7844($fp)
	lw $t1, -7852($fp)
	add $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7840($fp)
	lw $t1, -7856($fp)
	sw $t0, 0($t1)
	lw $t0, -7856($fp)
	lw $t1, 0($t0)
	sw $t1, -7860($fp)
	li $t0, 24339
	sw $t0, -7864($fp)
	addi $t0, $fp, -7752
	sw $t0, -7868($fp)
	li $t0, 2
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7876($fp)
	lw $t0, -7868($fp)
	lw $t1, -7876($fp)
	add $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -7864($fp)
	lw $t1, -7880($fp)
	sw $t0, 0($t1)
	lw $t0, -7880($fp)
	lw $t1, 0($t0)
	sw $t1, -7884($fp)
	li $t0, 17138
	sw $t0, -7888($fp)
	addi $t0, $fp, -7752
	sw $t0, -7892($fp)
	li $t0, 3
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7892($fp)
	lw $t1, -7900($fp)
	add $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7888($fp)
	lw $t1, -7904($fp)
	sw $t0, 0($t1)
	lw $t0, -7904($fp)
	lw $t1, 0($t0)
	sw $t1, -7908($fp)
	li $t0, 56282
	sw $t0, -7912($fp)
	addi $t0, $fp, -7752
	sw $t0, -7916($fp)
	li $t0, 4
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7924($fp)
	lw $t0, -7916($fp)
	lw $t1, -7924($fp)
	add $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t0, -7912($fp)
	lw $t1, -7928($fp)
	sw $t0, 0($t1)
	lw $t0, -7928($fp)
	lw $t1, 0($t0)
	sw $t1, -7932($fp)
	li $t0, 60217
	sw $t0, -7936($fp)
	addi $t0, $fp, -7752
	sw $t0, -7940($fp)
	li $t0, 5
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7940($fp)
	lw $t1, -7948($fp)
	add $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7936($fp)
	lw $t1, -7952($fp)
	sw $t0, 0($t1)
	lw $t0, -7952($fp)
	lw $t1, 0($t0)
	sw $t1, -7956($fp)
	li $t0, 42788
	sw $t0, -7960($fp)
	addi $t0, $fp, -7752
	sw $t0, -7964($fp)
	li $t0, 6
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7964($fp)
	lw $t1, -7972($fp)
	add $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, -7960($fp)
	lw $t1, -7976($fp)
	sw $t0, 0($t1)
	lw $t0, -7976($fp)
	lw $t1, 0($t0)
	sw $t1, -7980($fp)
	addi $t0, $fp, -7724
	sw $t0, -7984($fp)
	li $t0, 0
	sw $t0, -7988($fp)
	li $t0, 4
	lw $t1, -7988($fp)
	mul $t0, $t0, $t1
	sw $t0, -7992($fp)
	lw $t0, -7992($fp)
	lw $t1, -7984($fp)
	add $t0, $t0, $t1
	sw $t0, -7996($fp)
	lw $t0, -7996($fp)
	lw $t1, 0($t0)
	sw $t1, -8000($fp)
	lw $t0, -8000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7724
	sw $t0, -8004($fp)
	li $t0, 1
	sw $t0, -8008($fp)
	li $t0, 4
	lw $t1, -8008($fp)
	mul $t0, $t0, $t1
	sw $t0, -8012($fp)
	lw $t0, -8012($fp)
	lw $t1, -8004($fp)
	add $t0, $t0, $t1
	sw $t0, -8016($fp)
	lw $t0, -8016($fp)
	lw $t1, 0($t0)
	sw $t1, -8020($fp)
	lw $t0, -8020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7808($fp)
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8028($fp)
	li $t0, 0
	sw $t0, -8032($fp)
	li $t0, 4
	lw $t1, -8032($fp)
	mul $t0, $t0, $t1
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	lw $t1, -8028($fp)
	add $t0, $t0, $t1
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	lw $t1, 0($t0)
	sw $t1, -8044($fp)
	lw $t0, -8044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8048($fp)
	li $t0, 1
	sw $t0, -8052($fp)
	li $t0, 4
	lw $t1, -8052($fp)
	mul $t0, $t0, $t1
	sw $t0, -8056($fp)
	lw $t0, -8056($fp)
	lw $t1, -8048($fp)
	add $t0, $t0, $t1
	sw $t0, -8060($fp)
	lw $t0, -8060($fp)
	lw $t1, 0($t0)
	sw $t1, -8064($fp)
	lw $t0, -8064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8068($fp)
	li $t0, 2
	sw $t0, -8072($fp)
	li $t0, 4
	lw $t1, -8072($fp)
	mul $t0, $t0, $t1
	sw $t0, -8076($fp)
	lw $t0, -8076($fp)
	lw $t1, -8068($fp)
	add $t0, $t0, $t1
	sw $t0, -8080($fp)
	lw $t0, -8080($fp)
	lw $t1, 0($t0)
	sw $t1, -8084($fp)
	lw $t0, -8084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8088($fp)
	li $t0, 3
	sw $t0, -8092($fp)
	li $t0, 4
	lw $t1, -8092($fp)
	mul $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8096($fp)
	lw $t1, -8088($fp)
	add $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	lw $t1, 0($t0)
	sw $t1, -8104($fp)
	lw $t0, -8104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8108($fp)
	li $t0, 4
	sw $t0, -8112($fp)
	li $t0, 4
	lw $t1, -8112($fp)
	mul $t0, $t0, $t1
	sw $t0, -8116($fp)
	lw $t0, -8116($fp)
	lw $t1, -8108($fp)
	add $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t0, -8120($fp)
	lw $t1, 0($t0)
	sw $t1, -8124($fp)
	lw $t0, -8124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8128($fp)
	li $t0, 5
	sw $t0, -8132($fp)
	li $t0, 4
	lw $t1, -8132($fp)
	mul $t0, $t0, $t1
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	lw $t1, -8128($fp)
	add $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	lw $t1, 0($t0)
	sw $t1, -8144($fp)
	lw $t0, -8144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8148($fp)
	li $t0, 6
	sw $t0, -8152($fp)
	li $t0, 4
	lw $t1, -8152($fp)
	mul $t0, $t0, $t1
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	lw $t1, -8148($fp)
	add $t0, $t0, $t1
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	lw $t1, 0($t0)
	sw $t1, -8164($fp)
	lw $t0, -8164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8168($fp)
	li $t0, 47098
	sw $t0, -8172($fp)
	lw $t0, -2828($fp)
	sw $t0, -8176($fp)
	lw $t1, -8172($fp)
	lw $t2, -8176($fp)
	bne $t1, $t2, label463
	j label465
label465:
	lw $t0, -956($fp)
	sw $t0, -8180($fp)
	lw $t1, -8180($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -8168($fp)
label464:
	li $t0, 0
	sw $t0, -8184($fp)
	addi $t0, $fp, -7724
	sw $t0, -8188($fp)
	lw $t0, -7808($fp)
	sw $t0, -8192($fp)
	li $t0, 4
	lw $t1, -8192($fp)
	mul $t0, $t0, $t1
	sw $t0, -8196($fp)
	lw $t0, -8196($fp)
	lw $t1, -8188($fp)
	add $t0, $t0, $t1
	sw $t0, -8200($fp)
	lw $t0, -8200($fp)
	lw $t1, 0($t0)
	sw $t1, -8204($fp)
	lw $t1, -8204($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label468
label468:
	li $t0, 8676
	sw $t0, -8208($fp)
	lw $t1, -8208($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -8184($fp)
label467:
	addi $sp, $sp, -4
	lw $t0, -8168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8212($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -7752
	sw $t0, -8216($fp)
	li $t0, 2
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
	li $t0, 1208
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -8240($fp)
	addi $sp, $sp, -4
	lw $t0, -8232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8244($fp)
	addi $sp, $sp, 12
	lw $t0, -8212($fp)
	lw $t1, -8244($fp)
	add $t0, $t0, $t1
	sw $t0, -8248($fp)
	lw $ra, -4($fp)
	lw $v0, -8248($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -7724
	sw $t0, -8252($fp)
	li $t0, 0
	sw $t0, -8256($fp)
	li $t0, 4
	lw $t1, -8256($fp)
	mul $t0, $t0, $t1
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	lw $t1, -8252($fp)
	add $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	lw $t1, 0($t0)
	sw $t1, -8268($fp)
	lw $t0, -8268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7724
	sw $t0, -8272($fp)
	li $t0, 1
	sw $t0, -8276($fp)
	li $t0, 4
	lw $t1, -8276($fp)
	mul $t0, $t0, $t1
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	lw $t1, -8272($fp)
	add $t0, $t0, $t1
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	lw $t1, 0($t0)
	sw $t1, -8288($fp)
	lw $t0, -8288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7808($fp)
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8296($fp)
	li $t0, 0
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
	addi $t0, $fp, -7752
	sw $t0, -8316($fp)
	li $t0, 1
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
	addi $t0, $fp, -7752
	sw $t0, -8336($fp)
	li $t0, 2
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
	addi $t0, $fp, -7752
	sw $t0, -8356($fp)
	li $t0, 3
	sw $t0, -8360($fp)
	li $t0, 4
	lw $t1, -8360($fp)
	mul $t0, $t0, $t1
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	lw $t1, -8356($fp)
	add $t0, $t0, $t1
	sw $t0, -8368($fp)
	lw $t0, -8368($fp)
	lw $t1, 0($t0)
	sw $t1, -8372($fp)
	lw $t0, -8372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8376($fp)
	li $t0, 4
	sw $t0, -8380($fp)
	li $t0, 4
	lw $t1, -8380($fp)
	mul $t0, $t0, $t1
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	lw $t1, -8376($fp)
	add $t0, $t0, $t1
	sw $t0, -8388($fp)
	lw $t0, -8388($fp)
	lw $t1, 0($t0)
	sw $t1, -8392($fp)
	lw $t0, -8392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8396($fp)
	li $t0, 5
	sw $t0, -8400($fp)
	li $t0, 4
	lw $t1, -8400($fp)
	mul $t0, $t0, $t1
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	lw $t1, -8396($fp)
	add $t0, $t0, $t1
	sw $t0, -8408($fp)
	lw $t0, -8408($fp)
	lw $t1, 0($t0)
	sw $t1, -8412($fp)
	lw $t0, -8412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7752
	sw $t0, -8416($fp)
	li $t0, 6
	sw $t0, -8420($fp)
	li $t0, 4
	lw $t1, -8420($fp)
	mul $t0, $t0, $t1
	sw $t0, -8424($fp)
	lw $t0, -8424($fp)
	lw $t1, -8416($fp)
	add $t0, $t0, $t1
	sw $t0, -8428($fp)
	lw $t0, -8428($fp)
	lw $t1, 0($t0)
	sw $t1, -8432($fp)
	lw $t0, -8432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 8396
	sw $t0, -8436($fp)
	li $t0, 47888
	sw $t0, -8440($fp)
	li $t0, 0
	lw $t1, -8440($fp)
	sub $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t0, -8436($fp)
	lw $t1, -8444($fp)
	mul $t0, $t0, $t1
	sw $t0, -8448($fp)
	lw $ra, -4($fp)
	lw $v0, -8448($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label387
label389:
label123:
	addi $t0, $fp, -40
	sw $t0, -8452($fp)
	li $t0, 0
	sw $t0, -8456($fp)
	li $t0, 4
	lw $t1, -8456($fp)
	mul $t0, $t0, $t1
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	lw $t1, -8452($fp)
	add $t0, $t0, $t1
	sw $t0, -8464($fp)
	lw $t0, -8464($fp)
	lw $t1, 0($t0)
	sw $t1, -8468($fp)
	lw $t0, -8468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8472($fp)
	li $t0, 1
	sw $t0, -8476($fp)
	li $t0, 4
	lw $t1, -8476($fp)
	mul $t0, $t0, $t1
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	lw $t1, -8472($fp)
	add $t0, $t0, $t1
	sw $t0, -8484($fp)
	lw $t0, -8484($fp)
	lw $t1, 0($t0)
	sw $t1, -8488($fp)
	lw $t0, -8488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8492($fp)
	li $t0, 2
	sw $t0, -8496($fp)
	li $t0, 4
	lw $t1, -8496($fp)
	mul $t0, $t0, $t1
	sw $t0, -8500($fp)
	lw $t0, -8500($fp)
	lw $t1, -8492($fp)
	add $t0, $t0, $t1
	sw $t0, -8504($fp)
	lw $t0, -8504($fp)
	lw $t1, 0($t0)
	sw $t1, -8508($fp)
	lw $t0, -8508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8512($fp)
	li $t0, 3
	sw $t0, -8516($fp)
	li $t0, 4
	lw $t1, -8516($fp)
	mul $t0, $t0, $t1
	sw $t0, -8520($fp)
	lw $t0, -8520($fp)
	lw $t1, -8512($fp)
	add $t0, $t0, $t1
	sw $t0, -8524($fp)
	lw $t0, -8524($fp)
	lw $t1, 0($t0)
	sw $t1, -8528($fp)
	lw $t0, -8528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8532($fp)
	li $t0, 4
	sw $t0, -8536($fp)
	li $t0, 4
	lw $t1, -8536($fp)
	mul $t0, $t0, $t1
	sw $t0, -8540($fp)
	lw $t0, -8540($fp)
	lw $t1, -8532($fp)
	add $t0, $t0, $t1
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	lw $t1, 0($t0)
	sw $t1, -8548($fp)
	lw $t0, -8548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8552($fp)
	li $t0, 5
	sw $t0, -8556($fp)
	li $t0, 4
	lw $t1, -8556($fp)
	mul $t0, $t0, $t1
	sw $t0, -8560($fp)
	lw $t0, -8560($fp)
	lw $t1, -8552($fp)
	add $t0, $t0, $t1
	sw $t0, -8564($fp)
	lw $t0, -8564($fp)
	lw $t1, 0($t0)
	sw $t1, -8568($fp)
	lw $t0, -8568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8572($fp)
	li $t0, 6
	sw $t0, -8576($fp)
	li $t0, 4
	lw $t1, -8576($fp)
	mul $t0, $t0, $t1
	sw $t0, -8580($fp)
	lw $t0, -8580($fp)
	lw $t1, -8572($fp)
	add $t0, $t0, $t1
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	lw $t1, 0($t0)
	sw $t1, -8588($fp)
	lw $t0, -8588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8592($fp)
	li $t0, 7
	sw $t0, -8596($fp)
	li $t0, 4
	lw $t1, -8596($fp)
	mul $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8600($fp)
	lw $t1, -8592($fp)
	add $t0, $t0, $t1
	sw $t0, -8604($fp)
	lw $t0, -8604($fp)
	lw $t1, 0($t0)
	sw $t1, -8608($fp)
	lw $t0, -8608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -8612($fp)
	li $t0, 8
	sw $t0, -8616($fp)
	li $t0, 4
	lw $t1, -8616($fp)
	mul $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	lw $t1, -8612($fp)
	add $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t0, -8624($fp)
	lw $t1, 0($t0)
	sw $t1, -8628($fp)
	lw $t0, -8628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -8632($fp)
	li $t0, 0
	sw $t0, -8636($fp)
	li $t0, 4
	lw $t1, -8636($fp)
	mul $t0, $t0, $t1
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	lw $t1, -8632($fp)
	add $t0, $t0, $t1
	sw $t0, -8644($fp)
	lw $t0, -8644($fp)
	lw $t1, 0($t0)
	sw $t1, -8648($fp)
	lw $t0, -8648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -8652($fp)
	lw $t0, -8652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8656($fp)
	li $t0, 0
	sw $t0, -8660($fp)
	li $t0, 4
	lw $t1, -8660($fp)
	mul $t0, $t0, $t1
	sw $t0, -8664($fp)
	lw $t0, -8664($fp)
	lw $t1, -8656($fp)
	add $t0, $t0, $t1
	sw $t0, -8668($fp)
	lw $t0, -8668($fp)
	lw $t1, 0($t0)
	sw $t1, -8672($fp)
	lw $t0, -8672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8676($fp)
	li $t0, 1
	sw $t0, -8680($fp)
	li $t0, 4
	lw $t1, -8680($fp)
	mul $t0, $t0, $t1
	sw $t0, -8684($fp)
	lw $t0, -8684($fp)
	lw $t1, -8676($fp)
	add $t0, $t0, $t1
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	lw $t1, 0($t0)
	sw $t1, -8692($fp)
	lw $t0, -8692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8696($fp)
	li $t0, 2
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
	lw $t0, -8712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8716($fp)
	li $t0, 3
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
	lw $t0, -8732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8736($fp)
	li $t0, 4
	sw $t0, -8740($fp)
	li $t0, 4
	lw $t1, -8740($fp)
	mul $t0, $t0, $t1
	sw $t0, -8744($fp)
	lw $t0, -8744($fp)
	lw $t1, -8736($fp)
	add $t0, $t0, $t1
	sw $t0, -8748($fp)
	lw $t0, -8748($fp)
	lw $t1, 0($t0)
	sw $t1, -8752($fp)
	lw $t0, -8752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -8760($fp)
	lw $t0, -8760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -8764($fp)
	li $t0, 0
	sw $t0, -8768($fp)
	li $t0, 4
	lw $t1, -8768($fp)
	mul $t0, $t0, $t1
	sw $t0, -8772($fp)
	lw $t0, -8772($fp)
	lw $t1, -8764($fp)
	add $t0, $t0, $t1
	sw $t0, -8776($fp)
	lw $t0, -8776($fp)
	lw $t1, 0($t0)
	sw $t1, -8780($fp)
	lw $t0, -8780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8784($fp)
	li $t0, 0
	sw $t0, -8788($fp)
	li $t0, 4
	lw $t1, -8788($fp)
	mul $t0, $t0, $t1
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	lw $t1, -8784($fp)
	add $t0, $t0, $t1
	sw $t0, -8796($fp)
	lw $t0, -8796($fp)
	lw $t1, 0($t0)
	sw $t1, -8800($fp)
	lw $t0, -8800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8804($fp)
	li $t0, 1
	sw $t0, -8808($fp)
	li $t0, 4
	lw $t1, -8808($fp)
	mul $t0, $t0, $t1
	sw $t0, -8812($fp)
	lw $t0, -8812($fp)
	lw $t1, -8804($fp)
	add $t0, $t0, $t1
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	lw $t1, 0($t0)
	sw $t1, -8820($fp)
	lw $t0, -8820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8824($fp)
	li $t0, 2
	sw $t0, -8828($fp)
	li $t0, 4
	lw $t1, -8828($fp)
	mul $t0, $t0, $t1
	sw $t0, -8832($fp)
	lw $t0, -8832($fp)
	lw $t1, -8824($fp)
	add $t0, $t0, $t1
	sw $t0, -8836($fp)
	lw $t0, -8836($fp)
	lw $t1, 0($t0)
	sw $t1, -8840($fp)
	lw $t0, -8840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8844($fp)
	li $t0, 3
	sw $t0, -8848($fp)
	li $t0, 4
	lw $t1, -8848($fp)
	mul $t0, $t0, $t1
	sw $t0, -8852($fp)
	lw $t0, -8852($fp)
	lw $t1, -8844($fp)
	add $t0, $t0, $t1
	sw $t0, -8856($fp)
	lw $t0, -8856($fp)
	lw $t1, 0($t0)
	sw $t1, -8860($fp)
	lw $t0, -8860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8864($fp)
	li $t0, 4
	sw $t0, -8868($fp)
	li $t0, 4
	lw $t1, -8868($fp)
	mul $t0, $t0, $t1
	sw $t0, -8872($fp)
	lw $t0, -8872($fp)
	lw $t1, -8864($fp)
	add $t0, $t0, $t1
	sw $t0, -8876($fp)
	lw $t0, -8876($fp)
	lw $t1, 0($t0)
	sw $t1, -8880($fp)
	lw $t0, -8880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8884($fp)
	li $t0, 5
	sw $t0, -8888($fp)
	li $t0, 4
	lw $t1, -8888($fp)
	mul $t0, $t0, $t1
	sw $t0, -8892($fp)
	lw $t0, -8892($fp)
	lw $t1, -8884($fp)
	add $t0, $t0, $t1
	sw $t0, -8896($fp)
	lw $t0, -8896($fp)
	lw $t1, 0($t0)
	sw $t1, -8900($fp)
	lw $t0, -8900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -8904($fp)
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
	lw $t0, -944($fp)
	sw $t0, -8920($fp)
	lw $t0, -8920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -8924($fp)
	lw $t0, -8924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -8928($fp)
	lw $t0, -8928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -8932($fp)
	lw $t0, -8932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -8940($fp)
	lw $t0, -8940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -8944($fp)
	lw $t0, -8944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -8948($fp)
	lw $t0, -8948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -8952($fp)
	lw $t0, -8952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -8956($fp)
	lw $t0, -8956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
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
	addi $t0, $fp, -136
	sw $t0, -8980($fp)
	li $t0, 0
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
	addi $t0, $fp, -136
	sw $t0, -9000($fp)
	li $t0, 1
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
	addi $t0, $fp, -136
	sw $t0, -9020($fp)
	li $t0, 2
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
	addi $t0, $fp, -136
	sw $t0, -9040($fp)
	li $t0, 3
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
	addi $t0, $fp, -136
	sw $t0, -9060($fp)
	li $t0, 4
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
	addi $t0, $fp, -136
	sw $t0, -9080($fp)
	li $t0, 5
	sw $t0, -9084($fp)
	li $t0, 4
	lw $t1, -9084($fp)
	mul $t0, $t0, $t1
	sw $t0, -9088($fp)
	lw $t0, -9088($fp)
	lw $t1, -9080($fp)
	add $t0, $t0, $t1
	sw $t0, -9092($fp)
	lw $t0, -9092($fp)
	lw $t1, 0($t0)
	sw $t1, -9096($fp)
	lw $t0, -9096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -9100($fp)
	li $t0, 6
	sw $t0, -9104($fp)
	li $t0, 4
	lw $t1, -9104($fp)
	mul $t0, $t0, $t1
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	lw $t1, -9100($fp)
	add $t0, $t0, $t1
	sw $t0, -9112($fp)
	lw $t0, -9112($fp)
	lw $t1, 0($t0)
	sw $t1, -9116($fp)
	lw $t0, -9116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -9120($fp)
	li $t0, 7
	sw $t0, -9124($fp)
	li $t0, 4
	lw $t1, -9124($fp)
	mul $t0, $t0, $t1
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	lw $t1, -9120($fp)
	add $t0, $t0, $t1
	sw $t0, -9132($fp)
	lw $t0, -9132($fp)
	lw $t1, 0($t0)
	sw $t1, -9136($fp)
	lw $t0, -9136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -9140($fp)
	li $t0, 8
	sw $t0, -9144($fp)
	li $t0, 4
	lw $t1, -9144($fp)
	mul $t0, $t0, $t1
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	lw $t1, -9140($fp)
	add $t0, $t0, $t1
	sw $t0, -9152($fp)
	lw $t0, -9152($fp)
	lw $t1, 0($t0)
	sw $t1, -9156($fp)
	lw $t0, -9156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -9160($fp)
	li $t0, 9
	sw $t0, -9164($fp)
	li $t0, 4
	lw $t1, -9164($fp)
	mul $t0, $t0, $t1
	sw $t0, -9168($fp)
	lw $t0, -9168($fp)
	lw $t1, -9160($fp)
	add $t0, $t0, $t1
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	lw $t1, 0($t0)
	sw $t1, -9176($fp)
	lw $t0, -9176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -9180($fp)
	li $t0, 0
	sw $t0, -9184($fp)
	li $t0, 4
	lw $t1, -9184($fp)
	mul $t0, $t0, $t1
	sw $t0, -9188($fp)
	lw $t0, -9188($fp)
	lw $t1, -9180($fp)
	add $t0, $t0, $t1
	sw $t0, -9192($fp)
	lw $t0, -9192($fp)
	lw $t1, 0($t0)
	sw $t1, -9196($fp)
	lw $t0, -9196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -9200($fp)
	li $t0, 1
	sw $t0, -9204($fp)
	li $t0, 4
	lw $t1, -9204($fp)
	mul $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $t0, -9208($fp)
	lw $t1, -9200($fp)
	add $t0, $t0, $t1
	sw $t0, -9212($fp)
	lw $t0, -9212($fp)
	lw $t1, 0($t0)
	sw $t1, -9216($fp)
	lw $t0, -9216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -9220($fp)
	li $t0, 2
	sw $t0, -9224($fp)
	li $t0, 4
	lw $t1, -9224($fp)
	mul $t0, $t0, $t1
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	lw $t1, -9220($fp)
	add $t0, $t0, $t1
	sw $t0, -9232($fp)
	lw $t0, -9232($fp)
	lw $t1, 0($t0)
	sw $t1, -9236($fp)
	lw $t0, -9236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -9240($fp)
	li $t0, 3
	sw $t0, -9244($fp)
	li $t0, 4
	lw $t1, -9244($fp)
	mul $t0, $t0, $t1
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	lw $t1, -9240($fp)
	add $t0, $t0, $t1
	sw $t0, -9252($fp)
	lw $t0, -9252($fp)
	lw $t1, 0($t0)
	sw $t1, -9256($fp)
	lw $t0, -9256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -9268($fp)
	lw $t0, -9268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -9272($fp)
	lw $t0, -9272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -9276($fp)
	lw $t0, -9276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -9280($fp)
	lw $t0, -9280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -9284($fp)
	li $t0, 0
	sw $t0, -9288($fp)
	li $t0, 4
	lw $t1, -9288($fp)
	mul $t0, $t0, $t1
	sw $t0, -9292($fp)
	lw $t0, -9292($fp)
	lw $t1, -9284($fp)
	add $t0, $t0, $t1
	sw $t0, -9296($fp)
	lw $t0, -9296($fp)
	lw $t1, 0($t0)
	sw $t1, -9300($fp)
	lw $t0, -9300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -9304($fp)
	li $t0, 1
	sw $t0, -9308($fp)
	li $t0, 4
	lw $t1, -9308($fp)
	mul $t0, $t0, $t1
	sw $t0, -9312($fp)
	lw $t0, -9312($fp)
	lw $t1, -9304($fp)
	add $t0, $t0, $t1
	sw $t0, -9316($fp)
	lw $t0, -9316($fp)
	lw $t1, 0($t0)
	sw $t1, -9320($fp)
	lw $t0, -9320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1544($fp)
	sw $t0, -9324($fp)
	lw $t0, -9324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -9328($fp)
	lw $t0, -9328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -9332($fp)
	lw $t0, -9332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -9336($fp)
	lw $t0, -9336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -9340($fp)
	lw $t0, -9340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -9344($fp)
	lw $t0, -9344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1616($fp)
	sw $t0, -9348($fp)
	lw $t0, -9348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1628($fp)
	sw $t0, -9352($fp)
	lw $t0, -9352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -9356($fp)
	lw $t0, -9356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -9360($fp)
	li $t0, 0
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
	addi $t0, $fp, -180
	sw $t0, -9380($fp)
	li $t0, 1
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
	addi $t0, $fp, -180
	sw $t0, -9400($fp)
	li $t0, 2
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
	addi $t0, $fp, -180
	sw $t0, -9420($fp)
	li $t0, 3
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
	addi $t0, $fp, -180
	sw $t0, -9440($fp)
	li $t0, 4
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
	lw $t0, -1772($fp)
	sw $t0, -9460($fp)
	lw $t0, -9460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -9464($fp)
	lw $t0, -9464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -9468($fp)
	lw $t0, -9468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -9472($fp)
	lw $t0, -9472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -9476($fp)
	lw $t0, -9476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -9480($fp)
	lw $t0, -9480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -9484($fp)
	li $t0, 0
	sw $t0, -9488($fp)
	li $t0, 4
	lw $t1, -9488($fp)
	mul $t0, $t0, $t1
	sw $t0, -9492($fp)
	lw $t0, -9492($fp)
	lw $t1, -9484($fp)
	add $t0, $t0, $t1
	sw $t0, -9496($fp)
	lw $t0, -9496($fp)
	lw $t1, 0($t0)
	sw $t1, -9500($fp)
	lw $t0, -9500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -9504($fp)
	li $t0, 1
	sw $t0, -9508($fp)
	li $t0, 4
	lw $t1, -9508($fp)
	mul $t0, $t0, $t1
	sw $t0, -9512($fp)
	lw $t0, -9512($fp)
	lw $t1, -9504($fp)
	add $t0, $t0, $t1
	sw $t0, -9516($fp)
	lw $t0, -9516($fp)
	lw $t1, 0($t0)
	sw $t1, -9520($fp)
	lw $t0, -9520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -9524($fp)
	li $t0, 2
	sw $t0, -9528($fp)
	li $t0, 4
	lw $t1, -9528($fp)
	mul $t0, $t0, $t1
	sw $t0, -9532($fp)
	lw $t0, -9532($fp)
	lw $t1, -9524($fp)
	add $t0, $t0, $t1
	sw $t0, -9536($fp)
	lw $t0, -9536($fp)
	lw $t1, 0($t0)
	sw $t1, -9540($fp)
	lw $t0, -9540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1916($fp)
	sw $t0, -9544($fp)
	lw $t0, -9544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -9548($fp)
	lw $t0, -9548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -9552($fp)
	li $t0, 0
	sw $t0, -9556($fp)
	li $t0, 4
	lw $t1, -9556($fp)
	mul $t0, $t0, $t1
	sw $t0, -9560($fp)
	lw $t0, -9560($fp)
	lw $t1, -9552($fp)
	add $t0, $t0, $t1
	sw $t0, -9564($fp)
	lw $t0, -9564($fp)
	lw $t1, 0($t0)
	sw $t1, -9568($fp)
	lw $t0, -9568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -9572($fp)
	li $t0, 1
	sw $t0, -9576($fp)
	li $t0, 4
	lw $t1, -9576($fp)
	mul $t0, $t0, $t1
	sw $t0, -9580($fp)
	lw $t0, -9580($fp)
	lw $t1, -9572($fp)
	add $t0, $t0, $t1
	sw $t0, -9584($fp)
	lw $t0, -9584($fp)
	lw $t1, 0($t0)
	sw $t1, -9588($fp)
	lw $t0, -9588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -9592($fp)
	li $t0, 2
	sw $t0, -9596($fp)
	li $t0, 4
	lw $t1, -9596($fp)
	mul $t0, $t0, $t1
	sw $t0, -9600($fp)
	lw $t0, -9600($fp)
	lw $t1, -9592($fp)
	add $t0, $t0, $t1
	sw $t0, -9604($fp)
	lw $t0, -9604($fp)
	lw $t1, 0($t0)
	sw $t1, -9608($fp)
	lw $t0, -9608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -9612($fp)
	li $t0, 3
	sw $t0, -9616($fp)
	li $t0, 4
	lw $t1, -9616($fp)
	mul $t0, $t0, $t1
	sw $t0, -9620($fp)
	lw $t0, -9620($fp)
	lw $t1, -9612($fp)
	add $t0, $t0, $t1
	sw $t0, -9624($fp)
	lw $t0, -9624($fp)
	lw $t1, 0($t0)
	sw $t1, -9628($fp)
	lw $t0, -9628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -9632($fp)
	li $t0, 0
	sw $t0, -9636($fp)
	li $t0, 4
	lw $t1, -9636($fp)
	mul $t0, $t0, $t1
	sw $t0, -9640($fp)
	lw $t0, -9640($fp)
	lw $t1, -9632($fp)
	add $t0, $t0, $t1
	sw $t0, -9644($fp)
	lw $t0, -9644($fp)
	lw $t1, 0($t0)
	sw $t1, -9648($fp)
	lw $t0, -9648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -9652($fp)
	li $t0, 1
	sw $t0, -9656($fp)
	li $t0, 4
	lw $t1, -9656($fp)
	mul $t0, $t0, $t1
	sw $t0, -9660($fp)
	lw $t0, -9660($fp)
	lw $t1, -9652($fp)
	add $t0, $t0, $t1
	sw $t0, -9664($fp)
	lw $t0, -9664($fp)
	lw $t1, 0($t0)
	sw $t1, -9668($fp)
	lw $t0, -9668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -9672($fp)
	li $t0, 2
	sw $t0, -9676($fp)
	li $t0, 4
	lw $t1, -9676($fp)
	mul $t0, $t0, $t1
	sw $t0, -9680($fp)
	lw $t0, -9680($fp)
	lw $t1, -9672($fp)
	add $t0, $t0, $t1
	sw $t0, -9684($fp)
	lw $t0, -9684($fp)
	lw $t1, 0($t0)
	sw $t1, -9688($fp)
	lw $t0, -9688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2108($fp)
	sw $t0, -9692($fp)
	lw $t0, -9692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2120($fp)
	sw $t0, -9696($fp)
	lw $t0, -9696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2132($fp)
	sw $t0, -9700($fp)
	lw $t0, -9700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -9704($fp)
	li $t0, 0
	sw $t0, -9708($fp)
	li $t0, 4
	lw $t1, -9708($fp)
	mul $t0, $t0, $t1
	sw $t0, -9712($fp)
	lw $t0, -9712($fp)
	lw $t1, -9704($fp)
	add $t0, $t0, $t1
	sw $t0, -9716($fp)
	lw $t0, -9716($fp)
	lw $t1, 0($t0)
	sw $t1, -9720($fp)
	lw $t0, -9720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -9724($fp)
	li $t0, 1
	sw $t0, -9728($fp)
	li $t0, 4
	lw $t1, -9728($fp)
	mul $t0, $t0, $t1
	sw $t0, -9732($fp)
	lw $t0, -9732($fp)
	lw $t1, -9724($fp)
	add $t0, $t0, $t1
	sw $t0, -9736($fp)
	lw $t0, -9736($fp)
	lw $t1, 0($t0)
	sw $t1, -9740($fp)
	lw $t0, -9740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -9744($fp)
	li $t0, 2
	sw $t0, -9748($fp)
	li $t0, 4
	lw $t1, -9748($fp)
	mul $t0, $t0, $t1
	sw $t0, -9752($fp)
	lw $t0, -9752($fp)
	lw $t1, -9744($fp)
	add $t0, $t0, $t1
	sw $t0, -9756($fp)
	lw $t0, -9756($fp)
	lw $t1, 0($t0)
	sw $t1, -9760($fp)
	lw $t0, -9760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -9764($fp)
	li $t0, 3
	sw $t0, -9768($fp)
	li $t0, 4
	lw $t1, -9768($fp)
	mul $t0, $t0, $t1
	sw $t0, -9772($fp)
	lw $t0, -9772($fp)
	lw $t1, -9764($fp)
	add $t0, $t0, $t1
	sw $t0, -9776($fp)
	lw $t0, -9776($fp)
	lw $t1, 0($t0)
	sw $t1, -9780($fp)
	lw $t0, -9780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -9784($fp)
	li $t0, 4
	sw $t0, -9788($fp)
	li $t0, 4
	lw $t1, -9788($fp)
	mul $t0, $t0, $t1
	sw $t0, -9792($fp)
	lw $t0, -9792($fp)
	lw $t1, -9784($fp)
	add $t0, $t0, $t1
	sw $t0, -9796($fp)
	lw $t0, -9796($fp)
	lw $t1, 0($t0)
	sw $t1, -9800($fp)
	lw $t0, -9800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -9804($fp)
	li $t0, 5
	sw $t0, -9808($fp)
	li $t0, 4
	lw $t1, -9808($fp)
	mul $t0, $t0, $t1
	sw $t0, -9812($fp)
	lw $t0, -9812($fp)
	lw $t1, -9804($fp)
	add $t0, $t0, $t1
	sw $t0, -9816($fp)
	lw $t0, -9816($fp)
	lw $t1, 0($t0)
	sw $t1, -9820($fp)
	lw $t0, -9820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2288($fp)
	sw $t0, -9824($fp)
	lw $t0, -9824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2300($fp)
	sw $t0, -9828($fp)
	lw $t0, -9828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2312($fp)
	sw $t0, -9832($fp)
	lw $t0, -9832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2324($fp)
	sw $t0, -9836($fp)
	lw $t0, -9836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -9840($fp)
	li $t0, 0
	sw $t0, -9844($fp)
	li $t0, 4
	lw $t1, -9844($fp)
	mul $t0, $t0, $t1
	sw $t0, -9848($fp)
	lw $t0, -9848($fp)
	lw $t1, -9840($fp)
	add $t0, $t0, $t1
	sw $t0, -9852($fp)
	lw $t0, -9852($fp)
	lw $t1, 0($t0)
	sw $t1, -9856($fp)
	lw $t0, -9856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -9860($fp)
	li $t0, 1
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
	addi $t0, $fp, -276
	sw $t0, -9880($fp)
	li $t0, 2
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
	addi $t0, $fp, -276
	sw $t0, -9900($fp)
	li $t0, 3
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
	addi $t0, $fp, -276
	sw $t0, -9920($fp)
	li $t0, 4
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
	addi $t0, $fp, -276
	sw $t0, -9940($fp)
	li $t0, 5
	sw $t0, -9944($fp)
	li $t0, 4
	lw $t1, -9944($fp)
	mul $t0, $t0, $t1
	sw $t0, -9948($fp)
	lw $t0, -9948($fp)
	lw $t1, -9940($fp)
	add $t0, $t0, $t1
	sw $t0, -9952($fp)
	lw $t0, -9952($fp)
	lw $t1, 0($t0)
	sw $t1, -9956($fp)
	lw $t0, -9956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -9960($fp)
	li $t0, 6
	sw $t0, -9964($fp)
	li $t0, 4
	lw $t1, -9964($fp)
	mul $t0, $t0, $t1
	sw $t0, -9968($fp)
	lw $t0, -9968($fp)
	lw $t1, -9960($fp)
	add $t0, $t0, $t1
	sw $t0, -9972($fp)
	lw $t0, -9972($fp)
	lw $t1, 0($t0)
	sw $t1, -9976($fp)
	lw $t0, -9976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -9980($fp)
	li $t0, 7
	sw $t0, -9984($fp)
	li $t0, 4
	lw $t1, -9984($fp)
	mul $t0, $t0, $t1
	sw $t0, -9988($fp)
	lw $t0, -9988($fp)
	lw $t1, -9980($fp)
	add $t0, $t0, $t1
	sw $t0, -9992($fp)
	lw $t0, -9992($fp)
	lw $t1, 0($t0)
	sw $t1, -9996($fp)
	lw $t0, -9996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2528($fp)
	sw $t0, -10000($fp)
	lw $t0, -10000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2540($fp)
	sw $t0, -10004($fp)
	lw $t0, -10004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2552($fp)
	sw $t0, -10008($fp)
	lw $t0, -10008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2564($fp)
	sw $t0, -10012($fp)
	lw $t0, -10012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2576($fp)
	sw $t0, -10016($fp)
	lw $t0, -10016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2588($fp)
	sw $t0, -10020($fp)
	lw $t0, -10020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
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
	addi $t0, $fp, -312
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
	addi $t0, $fp, -312
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
	addi $t0, $fp, -312
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
	addi $t0, $fp, -312
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
	addi $t0, $fp, -312
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
	addi $t0, $fp, -312
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
	addi $t0, $fp, -312
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
	addi $t0, $fp, -312
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
	lw $t0, -2816($fp)
	sw $t0, -10204($fp)
	lw $t0, -10204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2828($fp)
	sw $t0, -10208($fp)
	lw $t0, -10208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2840($fp)
	sw $t0, -10212($fp)
	lw $t0, -10212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -10216($fp)
	li $t0, 0
	sw $t0, -10220($fp)
	li $t0, 4
	lw $t1, -10220($fp)
	mul $t0, $t0, $t1
	sw $t0, -10224($fp)
	lw $t0, -10224($fp)
	lw $t1, -10216($fp)
	add $t0, $t0, $t1
	sw $t0, -10228($fp)
	lw $t0, -10228($fp)
	lw $t1, 0($t0)
	sw $t1, -10232($fp)
	lw $t0, -10232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -10236($fp)
	li $t0, 1
	sw $t0, -10240($fp)
	li $t0, 4
	lw $t1, -10240($fp)
	mul $t0, $t0, $t1
	sw $t0, -10244($fp)
	lw $t0, -10244($fp)
	lw $t1, -10236($fp)
	add $t0, $t0, $t1
	sw $t0, -10248($fp)
	lw $t0, -10248($fp)
	lw $t1, 0($t0)
	sw $t1, -10252($fp)
	lw $t0, -10252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -10256($fp)
	li $t0, 2
	sw $t0, -10260($fp)
	li $t0, 4
	lw $t1, -10260($fp)
	mul $t0, $t0, $t1
	sw $t0, -10264($fp)
	lw $t0, -10264($fp)
	lw $t1, -10256($fp)
	add $t0, $t0, $t1
	sw $t0, -10268($fp)
	lw $t0, -10268($fp)
	lw $t1, 0($t0)
	sw $t1, -10272($fp)
	lw $t0, -10272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2924($fp)
	sw $t0, -10276($fp)
	lw $t0, -10276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2936($fp)
	sw $t0, -10280($fp)
	lw $t0, -10280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -10284($fp)
	li $t0, 0
	sw $t0, -10288($fp)
	lw $t0, -1604($fp)
	sw $t0, -10292($fp)
	lw $t1, -10292($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label473
label473:
	li $t0, 1
	sw $t0, -10288($fp)
label474:
	lw $t0, -2552($fp)
	sw $t0, -10296($fp)
	lw $t0, -10288($fp)
	lw $t1, -10296($fp)
	sub $t0, $t0, $t1
	sw $t0, -10300($fp)
	lw $t0, -1436($fp)
	sw $t0, -10304($fp)
	li $t0, 19176
	sw $t0, -10308($fp)
	lw $t0, -10304($fp)
	lw $t1, -10308($fp)
	add $t0, $t0, $t1
	sw $t0, -10312($fp)
	lw $t1, -10300($fp)
	lw $t2, -10312($fp)
	bge $t1, $t2, label472
	j label471
label472:
	li $t0, 0
	sw $t0, -10316($fp)
	lw $t0, -572($fp)
	sw $t0, -10320($fp)
	lw $t0, -1028($fp)
	sw $t0, -10324($fp)
	lw $t1, -10320($fp)
	lw $t2, -10324($fp)
	bge $t1, $t2, label475
	j label476
label475:
	li $t0, 1
	sw $t0, -10316($fp)
label476:
	lw $t0, -1016($fp)
	sw $t0, -10328($fp)
	lw $t1, -10316($fp)
	lw $t2, -10328($fp)
	bne $t1, $t2, label469
	j label471
label471:
	li $t0, 0
	sw $t0, -10332($fp)
	lw $t0, -2108($fp)
	sw $t0, -10336($fp)
	li $t0, 0
	lw $t1, -10336($fp)
	sub $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t1, -10340($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label477:
	li $t0, 1
	sw $t0, -10332($fp)
label478:
	li $t0, 0
	lw $t1, -10332($fp)
	sub $t0, $t0, $t1
	sw $t0, -10344($fp)
	lw $t1, -10344($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -10284($fp)
label470:
	lw $ra, -4($fp)
	lw $v0, -10284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label479:
	li $t0, 10694
	sw $t0, -10348($fp)
	li $t0, 15847
	sw $t0, -10352($fp)
	lw $t0, -10348($fp)
	lw $t1, -10352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10356($fp)
	li $t0, 43236
	sw $t0, -10360($fp)
	lw $t0, -1628($fp)
	sw $t0, -10364($fp)
	lw $t0, -10360($fp)
	lw $t1, -10364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10368($fp)
	li $t0, 0
	lw $t1, -10368($fp)
	sub $t0, $t0, $t1
	sw $t0, -10372($fp)
	addi $sp, $sp, -4
	lw $t0, -10356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10376($fp)
	addi $sp, $sp, 12
	lw $t1, -10376($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 13550
	sw $t0, -10436($fp)
	lw $t0, -10436($fp)
	sw $t0, -10440($fp)
	lw $t0, -10440($fp)
	sw $t0, -10444($fp)
	li $t0, 29386
	sw $t0, -10448($fp)
	lw $t0, -10448($fp)
	sw $t0, -10452($fp)
	lw $t0, -10452($fp)
	sw $t0, -10456($fp)
	li $t0, 24416
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	sw $t0, -10468($fp)
	li $t0, 60785
	sw $t0, -10472($fp)
	lw $t0, -10472($fp)
	sw $t0, -10476($fp)
	lw $t0, -10476($fp)
	sw $t0, -10480($fp)
	li $t0, 8711
	sw $t0, -10484($fp)
	lw $t0, -10484($fp)
	sw $t0, -10488($fp)
	lw $t0, -10488($fp)
	sw $t0, -10492($fp)
	li $t0, 33736
	sw $t0, -10496($fp)
	addi $t0, $fp, -10404
	sw $t0, -10500($fp)
	li $t0, 0
	sw $t0, -10504($fp)
	lw $t0, -10504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10508($fp)
	lw $t0, -10500($fp)
	lw $t1, -10508($fp)
	add $t0, $t0, $t1
	sw $t0, -10512($fp)
	lw $t0, -10496($fp)
	lw $t1, -10512($fp)
	sw $t0, 0($t1)
	lw $t0, -10512($fp)
	lw $t1, 0($t0)
	sw $t1, -10516($fp)
	li $t0, 23244
	sw $t0, -10520($fp)
	addi $t0, $fp, -10404
	sw $t0, -10524($fp)
	li $t0, 1
	sw $t0, -10528($fp)
	lw $t0, -10528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10532($fp)
	lw $t0, -10524($fp)
	lw $t1, -10532($fp)
	add $t0, $t0, $t1
	sw $t0, -10536($fp)
	lw $t0, -10520($fp)
	lw $t1, -10536($fp)
	sw $t0, 0($t1)
	lw $t0, -10536($fp)
	lw $t1, 0($t0)
	sw $t1, -10540($fp)
	li $t0, 18108
	sw $t0, -10544($fp)
	addi $t0, $fp, -10404
	sw $t0, -10548($fp)
	li $t0, 2
	sw $t0, -10552($fp)
	lw $t0, -10552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10556($fp)
	lw $t0, -10548($fp)
	lw $t1, -10556($fp)
	add $t0, $t0, $t1
	sw $t0, -10560($fp)
	lw $t0, -10544($fp)
	lw $t1, -10560($fp)
	sw $t0, 0($t1)
	lw $t0, -10560($fp)
	lw $t1, 0($t0)
	sw $t1, -10564($fp)
	li $t0, 49655
	sw $t0, -10568($fp)
	addi $t0, $fp, -10404
	sw $t0, -10572($fp)
	li $t0, 3
	sw $t0, -10576($fp)
	lw $t0, -10576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10580($fp)
	lw $t0, -10572($fp)
	lw $t1, -10580($fp)
	add $t0, $t0, $t1
	sw $t0, -10584($fp)
	lw $t0, -10568($fp)
	lw $t1, -10584($fp)
	sw $t0, 0($t1)
	lw $t0, -10584($fp)
	lw $t1, 0($t0)
	sw $t1, -10588($fp)
	li $t0, 56663
	sw $t0, -10592($fp)
	addi $t0, $fp, -10404
	sw $t0, -10596($fp)
	li $t0, 4
	sw $t0, -10600($fp)
	lw $t0, -10600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10604($fp)
	lw $t0, -10596($fp)
	lw $t1, -10604($fp)
	add $t0, $t0, $t1
	sw $t0, -10608($fp)
	lw $t0, -10592($fp)
	lw $t1, -10608($fp)
	sw $t0, 0($t1)
	lw $t0, -10608($fp)
	lw $t1, 0($t0)
	sw $t1, -10612($fp)
	li $t0, 52614
	sw $t0, -10616($fp)
	addi $t0, $fp, -10404
	sw $t0, -10620($fp)
	li $t0, 5
	sw $t0, -10624($fp)
	lw $t0, -10624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10628($fp)
	lw $t0, -10620($fp)
	lw $t1, -10628($fp)
	add $t0, $t0, $t1
	sw $t0, -10632($fp)
	lw $t0, -10616($fp)
	lw $t1, -10632($fp)
	sw $t0, 0($t1)
	lw $t0, -10632($fp)
	lw $t1, 0($t0)
	sw $t1, -10636($fp)
	li $t0, 31975
	sw $t0, -10640($fp)
	addi $t0, $fp, -10404
	sw $t0, -10644($fp)
	li $t0, 6
	sw $t0, -10648($fp)
	lw $t0, -10648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10652($fp)
	lw $t0, -10644($fp)
	lw $t1, -10652($fp)
	add $t0, $t0, $t1
	sw $t0, -10656($fp)
	lw $t0, -10640($fp)
	lw $t1, -10656($fp)
	sw $t0, 0($t1)
	lw $t0, -10656($fp)
	lw $t1, 0($t0)
	sw $t1, -10660($fp)
	li $t0, 44784
	sw $t0, -10664($fp)
	lw $t0, -10664($fp)
	sw $t0, -10668($fp)
	lw $t0, -10668($fp)
	sw $t0, -10672($fp)
	li $t0, 52142
	sw $t0, -10676($fp)
	addi $t0, $fp, -10412
	sw $t0, -10680($fp)
	li $t0, 0
	sw $t0, -10684($fp)
	lw $t0, -10684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10688($fp)
	lw $t0, -10680($fp)
	lw $t1, -10688($fp)
	add $t0, $t0, $t1
	sw $t0, -10692($fp)
	lw $t0, -10676($fp)
	lw $t1, -10692($fp)
	sw $t0, 0($t1)
	lw $t0, -10692($fp)
	lw $t1, 0($t0)
	sw $t1, -10696($fp)
	li $t0, 43868
	sw $t0, -10700($fp)
	addi $t0, $fp, -10412
	sw $t0, -10704($fp)
	li $t0, 1
	sw $t0, -10708($fp)
	lw $t0, -10708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10712($fp)
	lw $t0, -10704($fp)
	lw $t1, -10712($fp)
	add $t0, $t0, $t1
	sw $t0, -10716($fp)
	lw $t0, -10700($fp)
	lw $t1, -10716($fp)
	sw $t0, 0($t1)
	lw $t0, -10716($fp)
	lw $t1, 0($t0)
	sw $t1, -10720($fp)
	li $t0, 3587
	sw $t0, -10724($fp)
	addi $t0, $fp, -10416
	sw $t0, -10728($fp)
	li $t0, 0
	sw $t0, -10732($fp)
	lw $t0, -10732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10736($fp)
	lw $t0, -10728($fp)
	lw $t1, -10736($fp)
	add $t0, $t0, $t1
	sw $t0, -10740($fp)
	lw $t0, -10724($fp)
	lw $t1, -10740($fp)
	sw $t0, 0($t1)
	lw $t0, -10740($fp)
	lw $t1, 0($t0)
	sw $t1, -10744($fp)
	li $t0, 3744
	sw $t0, -10748($fp)
	addi $t0, $fp, -10432
	sw $t0, -10752($fp)
	li $t0, 0
	sw $t0, -10756($fp)
	lw $t0, -10756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10760($fp)
	lw $t0, -10752($fp)
	lw $t1, -10760($fp)
	add $t0, $t0, $t1
	sw $t0, -10764($fp)
	lw $t0, -10748($fp)
	lw $t1, -10764($fp)
	sw $t0, 0($t1)
	lw $t0, -10764($fp)
	lw $t1, 0($t0)
	sw $t1, -10768($fp)
	li $t0, 34614
	sw $t0, -10772($fp)
	addi $t0, $fp, -10432
	sw $t0, -10776($fp)
	li $t0, 1
	sw $t0, -10780($fp)
	lw $t0, -10780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10784($fp)
	lw $t0, -10776($fp)
	lw $t1, -10784($fp)
	add $t0, $t0, $t1
	sw $t0, -10788($fp)
	lw $t0, -10772($fp)
	lw $t1, -10788($fp)
	sw $t0, 0($t1)
	lw $t0, -10788($fp)
	lw $t1, 0($t0)
	sw $t1, -10792($fp)
	li $t0, 63804
	sw $t0, -10796($fp)
	addi $t0, $fp, -10432
	sw $t0, -10800($fp)
	li $t0, 2
	sw $t0, -10804($fp)
	lw $t0, -10804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10808($fp)
	lw $t0, -10800($fp)
	lw $t1, -10808($fp)
	add $t0, $t0, $t1
	sw $t0, -10812($fp)
	lw $t0, -10796($fp)
	lw $t1, -10812($fp)
	sw $t0, 0($t1)
	lw $t0, -10812($fp)
	lw $t1, 0($t0)
	sw $t1, -10816($fp)
	li $t0, 46533
	sw $t0, -10820($fp)
	addi $t0, $fp, -10432
	sw $t0, -10824($fp)
	li $t0, 3
	sw $t0, -10828($fp)
	lw $t0, -10828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10832($fp)
	lw $t0, -10824($fp)
	lw $t1, -10832($fp)
	add $t0, $t0, $t1
	sw $t0, -10836($fp)
	lw $t0, -10820($fp)
	lw $t1, -10836($fp)
	sw $t0, 0($t1)
	lw $t0, -10836($fp)
	lw $t1, 0($t0)
	sw $t1, -10840($fp)
	li $t0, 0
	sw $t0, -10844($fp)
	li $t0, 0
	sw $t0, -10848($fp)
	li $t0, 0
	sw $t0, -10852($fp)
	lw $t0, -1808($fp)
	sw $t0, -10856($fp)
	lw $t1, -10856($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label489
label489:
	li $t0, 1
	sw $t0, -10852($fp)
label490:
	li $t0, 0
	lw $t1, -10852($fp)
	sub $t0, $t0, $t1
	sw $t0, -10860($fp)
	lw $t1, -10860($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label487
label487:
	li $t0, 1
	sw $t0, -10848($fp)
label488:
	lw $t0, -1928($fp)
	sw $t0, -10864($fp)
	li $t0, 43290
	sw $t0, -10868($fp)
	lw $t0, -10864($fp)
	lw $t1, -10868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10872($fp)
	lw $t0, -1436($fp)
	sw $t0, -10876($fp)
	lw $t0, -10872($fp)
	lw $t1, -10876($fp)
	mul $t0, $t0, $t1
	sw $t0, -10880($fp)
	lw $t1, -10848($fp)
	lw $t2, -10880($fp)
	bge $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -10844($fp)
label486:
	li $t0, 0
	sw $t0, -10884($fp)
	li $t0, 45366
	sw $t0, -10888($fp)
	li $t0, 0
	lw $t1, -10888($fp)
	sub $t0, $t0, $t1
	sw $t0, -10892($fp)
	lw $t1, -10892($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label491:
	li $t0, 1
	sw $t0, -10884($fp)
label492:
	lw $t1, -10844($fp)
	lw $t2, -10884($fp)
	bge $t1, $t2, label482
	j label483
label482:
	li $t0, 47741
	sw $t0, -10896($fp)
	lw $t0, -10440($fp)
	sw $t0, -10900($fp)
	lw $t0, -944($fp)
	sw $t0, -10904($fp)
	li $t0, 0
	lw $t1, -10904($fp)
	sub $t0, $t0, $t1
	sw $t0, -10908($fp)
	lw $t0, -10900($fp)
	lw $t1, -10908($fp)
	mul $t0, $t0, $t1
	sw $t0, -10912($fp)
	li $t0, 0
	lw $t1, -10912($fp)
	sub $t0, $t0, $t1
	sw $t0, -10916($fp)
	lw $t0, -10896($fp)
	lw $t1, -10916($fp)
	add $t0, $t0, $t1
	sw $t0, -10920($fp)
	j label484
label483:
	li $t0, 24453
	sw $t0, -10924($fp)
	li $t0, 0
	sw $t0, -10928($fp)
	li $t0, 52682
	sw $t0, -10932($fp)
	lw $t1, -10932($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label494
label496:
	li $t0, 33838
	sw $t0, -10936($fp)
	lw $t1, -10936($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label495:
	li $t0, 17499
	sw $t0, -10940($fp)
	lw $t1, -10940($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -10928($fp)
label494:
	lw $t0, -1928($fp)
	sw $t0, -10944($fp)
	li $t0, 56137
	sw $t0, -10948($fp)
	lw $t0, -1472($fp)
	sw $t0, -10952($fp)
	lw $t0, -10948($fp)
	lw $t1, -10952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10956($fp)
	lw $t0, -1628($fp)
	sw $t0, -10960($fp)
	lw $t0, -10956($fp)
	lw $t1, -10960($fp)
	mul $t0, $t0, $t1
	sw $t0, -10964($fp)
	addi $sp, $sp, -4
	lw $t0, -10944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10968($fp)
	addi $sp, $sp, 12
	li $t0, 6805
	sw $t0, -10972($fp)
	lw $t0, -10968($fp)
	lw $t1, -10972($fp)
	add $t0, $t0, $t1
	sw $t0, -10976($fp)
	addi $sp, $sp, -4
	lw $t0, -10928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10980($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -10984($fp)
	lw $t0, -1040($fp)
	sw $t0, -10988($fp)
	li $t0, 0
	lw $t1, -10988($fp)
	sub $t0, $t0, $t1
	sw $t0, -10992($fp)
	lw $t1, -10992($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label499
label499:
	li $t0, 33506
	sw $t0, -10996($fp)
	lw $t1, -10996($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -10984($fp)
label498:
	addi $sp, $sp, -4
	lw $t0, -10980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11000($fp)
	addi $sp, $sp, 12
	lw $t0, -10924($fp)
	lw $t1, -11000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11004($fp)
	li $t0, 2993
	sw $t0, -11008($fp)
	lw $t0, -11004($fp)
	lw $t1, -11008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11012($fp)
	lw $ra, -4($fp)
	lw $v0, -11012($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label484:
label500:
	li $t0, 0
	sw $t0, -11016($fp)
	li $t0, 0
	sw $t0, -11020($fp)
	li $t0, 47388
	sw $t0, -11024($fp)
	lw $t1, -11024($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label506
label506:
	li $t0, 1
	sw $t0, -11020($fp)
label507:
	li $t0, 0
	lw $t1, -11020($fp)
	sub $t0, $t0, $t1
	sw $t0, -11028($fp)
	li $t0, 46885
	sw $t0, -11032($fp)
	li $t0, 0
	lw $t1, -11032($fp)
	sub $t0, $t0, $t1
	sw $t0, -11036($fp)
	lw $t1, -11028($fp)
	lw $t2, -11036($fp)
	ble $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -11016($fp)
label505:
	li $t0, 0
	sw $t0, -11040($fp)
	li $t0, 27410
	sw $t0, -11044($fp)
	lw $t1, -11044($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label508
label508:
	li $t0, 1
	sw $t0, -11040($fp)
label509:
	li $t0, 42637
	sw $t0, -11048($fp)
	lw $t0, -11040($fp)
	lw $t1, -11048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11052($fp)
	lw $t1, -11016($fp)
	lw $t2, -11052($fp)
	ble $t1, $t2, label501
	j label503
label503:
	li $t0, 55597
	sw $t0, -11056($fp)
	lw $t1, -11056($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 0
	sw $t0, -11060($fp)
	li $t0, 61146
	sw $t0, -11064($fp)
	lw $t1, -11064($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label513
label513:
	li $t0, 1
	sw $t0, -11060($fp)
label514:
	li $t0, 345
	sw $t0, -11068($fp)
	li $t0, 0
	lw $t1, -11068($fp)
	sub $t0, $t0, $t1
	sw $t0, -11072($fp)
	li $t0, 0
	lw $t1, -11072($fp)
	sub $t0, $t0, $t1
	sw $t0, -11076($fp)
	lw $t1, -11060($fp)
	lw $t2, -11076($fp)
	bne $t1, $t2, label510
	j label511
label510:
	li $t0, 0
	sw $t0, -11080($fp)
	lw $t0, -920($fp)
	sw $t0, -11084($fp)
	lw $t0, -1052($fp)
	sw $t0, -11088($fp)
	lw $t0, -11084($fp)
	lw $t1, -11088($fp)
	add $t0, $t0, $t1
	sw $t0, -11092($fp)
	li $t0, 8169
	sw $t0, -11096($fp)
	lw $t0, -572($fp)
	sw $t0, -11100($fp)
	lw $t0, -11096($fp)
	lw $t1, -11100($fp)
	mul $t0, $t0, $t1
	sw $t0, -11104($fp)
	lw $t0, -11092($fp)
	lw $t1, -11104($fp)
	add $t0, $t0, $t1
	sw $t0, -11108($fp)
	li $t0, 45265
	sw $t0, -11112($fp)
	li $t0, 1
	sw $t0, -11116($fp)
	lw $t0, -11112($fp)
	lw $t1, -11116($fp)
	mul $t0, $t0, $t1
	sw $t0, -11120($fp)
	li $t0, 60783
	sw $t0, -11124($fp)
	lw $t0, -11120($fp)
	lw $t1, -11124($fp)
	sub $t0, $t0, $t1
	sw $t0, -11128($fp)
	lw $t1, -11108($fp)
	lw $t2, -11128($fp)
	beq $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -11080($fp)
label519:
	li $t0, 0
	sw $t0, -11132($fp)
	li $t0, 11704
	sw $t0, -11136($fp)
	li $t0, 0
	sw $t0, -11140($fp)
	li $t0, 55572
	sw $t0, -11144($fp)
	lw $t0, -10452($fp)
	sw $t0, -11148($fp)
	lw $t0, -11144($fp)
	lw $t1, -11148($fp)
	mul $t0, $t0, $t1
	sw $t0, -11152($fp)
	lw $t1, -11152($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label524
label524:
	li $t0, 39843
	sw $t0, -11156($fp)
	lw $t1, -11156($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -11140($fp)
label523:
	li $t0, 0
	sw $t0, -11160($fp)
	li $t0, 0
	sw $t0, -11164($fp)
	li $t0, 36256
	sw $t0, -11168($fp)
	li $t0, 47389
	sw $t0, -11172($fp)
	lw $t1, -11168($fp)
	lw $t2, -11172($fp)
	beq $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -11164($fp)
label528:
	lw $t0, -1052($fp)
	sw $t0, -11176($fp)
	lw $t1, -11164($fp)
	lw $t2, -11176($fp)
	beq $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -11160($fp)
label526:
	addi $sp, $sp, -4
	lw $t0, -11140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11180($fp)
	addi $sp, $sp, 12
	lw $t1, -11136($fp)
	lw $t2, -11180($fp)
	bgt $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -11132($fp)
label521:
	lw $t1, -11080($fp)
	lw $t2, -11132($fp)
	bne $t1, $t2, label515
	j label516
label515:
label529:
	li $t0, 0
	sw $t0, -11184($fp)
	addi $t0, $fp, -96
	sw $t0, -11188($fp)
	li $t0, 0
	sw $t0, -11192($fp)
	li $t0, 4
	lw $t1, -11192($fp)
	mul $t0, $t0, $t1
	sw $t0, -11196($fp)
	lw $t0, -11196($fp)
	lw $t1, -11188($fp)
	add $t0, $t0, $t1
	sw $t0, -11200($fp)
	lw $t0, -11200($fp)
	lw $t1, 0($t0)
	sw $t1, -11204($fp)
	li $t0, 38111
	sw $t0, -11208($fp)
	lw $t0, -11204($fp)
	lw $t1, -11208($fp)
	add $t0, $t0, $t1
	sw $t0, -11212($fp)
	li $t0, 0
	sw $t0, -11216($fp)
	addi $t0, $fp, -220
	sw $t0, -11220($fp)
	li $t0, 1
	sw $t0, -11224($fp)
	li $t0, 4
	lw $t1, -11224($fp)
	mul $t0, $t0, $t1
	sw $t0, -11228($fp)
	lw $t0, -11228($fp)
	lw $t1, -11220($fp)
	add $t0, $t0, $t1
	sw $t0, -11232($fp)
	lw $t0, -11232($fp)
	lw $t1, 0($t0)
	sw $t1, -11236($fp)
	lw $t1, -11236($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label537:
	lw $t0, -1820($fp)
	sw $t0, -11240($fp)
	lw $t1, -11240($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -11216($fp)
label536:
	lw $t0, -2540($fp)
	sw $t0, -11244($fp)
	addi $sp, $sp, -4
	lw $t0, -11216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11248($fp)
	addi $sp, $sp, 12
	lw $t1, -11212($fp)
	lw $t2, -11248($fp)
	bgt $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -11184($fp)
label534:
	addi $t0, $fp, -44
	sw $t0, -11252($fp)
	li $t0, 0
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
	lw $t1, -11184($fp)
	lw $t2, -11268($fp)
	bgt $t1, $t2, label530
	j label532
label532:
	addi $t0, $fp, -10412
	sw $t0, -11272($fp)
	li $t0, 0
	sw $t0, -11276($fp)
	li $t0, 4
	lw $t1, -11276($fp)
	mul $t0, $t0, $t1
	sw $t0, -11280($fp)
	lw $t0, -11280($fp)
	lw $t1, -11272($fp)
	add $t0, $t0, $t1
	sw $t0, -11284($fp)
	lw $t0, -11284($fp)
	lw $t1, 0($t0)
	sw $t1, -11288($fp)
	li $t0, 38594
	sw $t0, -11292($fp)
	addi $t0, $fp, -64
	sw $t0, -11296($fp)
	li $t0, 2
	sw $t0, -11300($fp)
	li $t0, 4
	lw $t1, -11300($fp)
	mul $t0, $t0, $t1
	sw $t0, -11304($fp)
	lw $t0, -11304($fp)
	lw $t1, -11296($fp)
	add $t0, $t0, $t1
	sw $t0, -11308($fp)
	lw $t0, -11308($fp)
	lw $t1, 0($t0)
	sw $t1, -11312($fp)
	addi $sp, $sp, -4
	lw $t0, -11292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11316($fp)
	addi $sp, $sp, 12
	lw $t0, -11288($fp)
	lw $t1, -11316($fp)
	mul $t0, $t0, $t1
	sw $t0, -11320($fp)
	lw $t1, -11320($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 38775
	sw $t0, -11324($fp)
	lw $t0, -11324($fp)
	sw $t0, -11328($fp)
	lw $t0, -11328($fp)
	sw $t0, -11332($fp)
	li $t0, 51164
	sw $t0, -11336($fp)
	lw $t0, -11336($fp)
	sw $t0, -11340($fp)
	lw $t0, -11340($fp)
	sw $t0, -11344($fp)
	li $t0, 41587
	sw $t0, -11348($fp)
	lw $t0, -11348($fp)
	sw $t0, -11352($fp)
	lw $t0, -11352($fp)
	sw $t0, -11356($fp)
	li $t0, 20627
	sw $t0, -11360($fp)
	lw $t0, -11360($fp)
	sw $t0, -11364($fp)
	lw $t0, -11364($fp)
	sw $t0, -11368($fp)
	lw $t0, -11328($fp)
	sw $t0, -11372($fp)
	lw $t0, -11372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11340($fp)
	sw $t0, -11376($fp)
	lw $t0, -11376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11352($fp)
	sw $t0, -11380($fp)
	lw $t0, -11380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11364($fp)
	sw $t0, -11384($fp)
	lw $t0, -11384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -11388($fp)
	li $t0, 0
	sw $t0, -11392($fp)
	addi $t0, $fp, -160
	sw $t0, -11396($fp)
	li $t0, 1
	sw $t0, -11400($fp)
	li $t0, 4
	lw $t1, -11400($fp)
	mul $t0, $t0, $t1
	sw $t0, -11404($fp)
	lw $t0, -11404($fp)
	lw $t1, -11396($fp)
	add $t0, $t0, $t1
	sw $t0, -11408($fp)
	lw $t0, -11408($fp)
	lw $t1, 0($t0)
	sw $t1, -11412($fp)
	li $t0, 0
	lw $t1, -11412($fp)
	sub $t0, $t0, $t1
	sw $t0, -11416($fp)
	lw $t1, -11416($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label541:
	li $t0, 1
	sw $t0, -11392($fp)
label542:
	addi $t0, $fp, -276
	sw $t0, -11420($fp)
	lw $t0, -956($fp)
	sw $t0, -11424($fp)
	li $t0, 4
	lw $t1, -11424($fp)
	mul $t0, $t0, $t1
	sw $t0, -11428($fp)
	lw $t0, -11428($fp)
	lw $t1, -11420($fp)
	add $t0, $t0, $t1
	sw $t0, -11432($fp)
	lw $t0, -11432($fp)
	lw $t1, 0($t0)
	sw $t1, -11436($fp)
	lw $t1, -11392($fp)
	lw $t2, -11436($fp)
	bge $t1, $t2, label540
	j label539
label540:
	li $t0, 0
	sw $t0, -11440($fp)
	li $t0, 63264
	sw $t0, -11444($fp)
	lw $t1, -11444($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label543
label543:
	li $t0, 1
	sw $t0, -11440($fp)
label544:
	lw $t0, -11328($fp)
	sw $t0, -11448($fp)
	lw $t0, -11440($fp)
	lw $t1, -11448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11452($fp)
	lw $t1, -11452($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -11388($fp)
label539:
	lw $ra, -4($fp)
	lw $v0, -11388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -11328($fp)
	sw $t0, -11456($fp)
	lw $t0, -11456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11340($fp)
	sw $t0, -11460($fp)
	lw $t0, -11460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11352($fp)
	sw $t0, -11464($fp)
	lw $t0, -11464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11364($fp)
	sw $t0, -11468($fp)
	lw $t0, -11468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -11472($fp)
	li $t0, 22574
	sw $t0, -11476($fp)
	lw $t0, -11476($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -11480($fp)
	li $t0, 0
	sw $t0, -11484($fp)
	lw $t0, -11340($fp)
	sw $t0, -11488($fp)
	lw $t0, -2816($fp)
	sw $t0, -11492($fp)
	lw $t0, -11488($fp)
	lw $t1, -11492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11496($fp)
	lw $t0, -944($fp)
	sw $t0, -11500($fp)
	lw $t1, -11496($fp)
	lw $t2, -11500($fp)
	bgt $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -11484($fp)
label551:
	addi $sp, $sp, -4
	lw $t0, -11480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11504($fp)
	addi $sp, $sp, 12
	li $t0, 64607
	sw $t0, -11508($fp)
	lw $t0, -11504($fp)
	lw $t1, -11508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11512($fp)
	lw $t1, -11512($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label549
label549:
	lw $t0, -2840($fp)
	sw $t0, -11516($fp)
	li $t0, 0
	lw $t1, -11516($fp)
	sub $t0, $t0, $t1
	sw $t0, -11520($fp)
	lw $t1, -11520($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label548
label548:
	addi $t0, $fp, -92
	sw $t0, -11524($fp)
	li $t0, 1
	sw $t0, -11528($fp)
	li $t0, 4
	lw $t1, -11528($fp)
	mul $t0, $t0, $t1
	sw $t0, -11532($fp)
	lw $t0, -11532($fp)
	lw $t1, -11524($fp)
	add $t0, $t0, $t1
	sw $t0, -11536($fp)
	lw $t0, -11536($fp)
	lw $t1, 0($t0)
	sw $t1, -11540($fp)
	lw $t1, -11540($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label547
label547:
	addi $t0, $fp, -324
	sw $t0, -11544($fp)
	lw $t0, -2924($fp)
	sw $t0, -11548($fp)
	li $t0, 4
	lw $t1, -11548($fp)
	mul $t0, $t0, $t1
	sw $t0, -11552($fp)
	lw $t0, -11552($fp)
	lw $t1, -11544($fp)
	add $t0, $t0, $t1
	sw $t0, -11556($fp)
	lw $t0, -11556($fp)
	lw $t1, 0($t0)
	sw $t1, -11560($fp)
	lw $t0, -992($fp)
	sw $t0, -11564($fp)
	lw $t0, -11560($fp)
	lw $t1, -11564($fp)
	mul $t0, $t0, $t1
	sw $t0, -11568($fp)
	lw $t0, -2588($fp)
	sw $t0, -11572($fp)
	li $t0, 44337
	sw $t0, -11576($fp)
	lw $t0, -11572($fp)
	lw $t1, -11576($fp)
	sub $t0, $t0, $t1
	sw $t0, -11580($fp)
	lw $t1, -11568($fp)
	lw $t2, -11580($fp)
	bge $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -11472($fp)
label546:
	lw $ra, -4($fp)
	lw $v0, -11472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -11584($fp)
	addi $t0, $fp, -276
	sw $t0, -11588($fp)
	lw $t0, -11352($fp)
	sw $t0, -11592($fp)
	li $t0, 55081
	sw $t0, -11596($fp)
	lw $t0, -11592($fp)
	lw $t1, -11596($fp)
	mul $t0, $t0, $t1
	sw $t0, -11600($fp)
	li $t0, 4
	lw $t1, -11600($fp)
	mul $t0, $t0, $t1
	sw $t0, -11604($fp)
	lw $t0, -11604($fp)
	lw $t1, -11588($fp)
	add $t0, $t0, $t1
	sw $t0, -11608($fp)
	lw $t0, -11608($fp)
	lw $t1, 0($t0)
	sw $t1, -11612($fp)
	lw $t1, -11612($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label552:
	li $t0, 1
	sw $t0, -11584($fp)
label553:
	li $t0, 0
	sw $t0, -11616($fp)
	addi $t0, $fp, -64
	sw $t0, -11620($fp)
	lw $t0, -2552($fp)
	sw $t0, -11624($fp)
	li $t0, 4
	lw $t1, -11624($fp)
	mul $t0, $t0, $t1
	sw $t0, -11628($fp)
	lw $t0, -11628($fp)
	lw $t1, -11620($fp)
	add $t0, $t0, $t1
	sw $t0, -11632($fp)
	lw $t0, -11632($fp)
	lw $t1, 0($t0)
	sw $t1, -11636($fp)
	li $t0, 0
	lw $t1, -11636($fp)
	sub $t0, $t0, $t1
	sw $t0, -11640($fp)
	lw $t1, -11640($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label554
label554:
	li $t0, 1
	sw $t0, -11616($fp)
label555:
	lw $t0, -11584($fp)
	lw $t1, -11616($fp)
	mul $t0, $t0, $t1
	sw $t0, -11644($fp)
	lw $t0, -2936($fp)
	sw $t0, -11648($fp)
	lw $t1, -11648($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	addi $t0, $fp, -10432
	sw $t0, -11652($fp)
	addi $t0, $fp, -208
	sw $t0, -11656($fp)
	li $t0, 1
	sw $t0, -11660($fp)
	li $t0, 4
	lw $t1, -11660($fp)
	mul $t0, $t0, $t1
	sw $t0, -11664($fp)
	lw $t0, -11664($fp)
	lw $t1, -11656($fp)
	add $t0, $t0, $t1
	sw $t0, -11668($fp)
	lw $t0, -11668($fp)
	lw $t1, 0($t0)
	sw $t1, -11672($fp)
	li $t0, 4
	lw $t1, -11672($fp)
	mul $t0, $t0, $t1
	sw $t0, -11676($fp)
	lw $t0, -11676($fp)
	lw $t1, -11652($fp)
	add $t0, $t0, $t1
	sw $t0, -11680($fp)
	lw $t0, -11680($fp)
	lw $t1, 0($t0)
	sw $t1, -11684($fp)
	li $t0, 0
	lw $t1, -11684($fp)
	sub $t0, $t0, $t1
	sw $t0, -11688($fp)
	j label558
label557:
	li $t0, 0
	sw $t0, -11692($fp)
	li $t0, 0
	sw $t0, -11696($fp)
	lw $t0, -2528($fp)
	sw $t0, -11700($fp)
	lw $t0, -10452($fp)
	sw $t0, -11704($fp)
	li $t0, 46078
	sw $t0, -11708($fp)
	lw $t0, -11704($fp)
	lw $t1, -11708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11712($fp)
	addi $sp, $sp, -4
	lw $t0, -11700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11716($fp)
	addi $sp, $sp, 12
	lw $t1, -11716($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label563
label564:
	lw $t0, -1424($fp)
	sw $t0, -11720($fp)
	lw $t1, -11720($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -11696($fp)
label563:
	li $t0, 0
	sw $t0, -11724($fp)
	li $t0, 25801
	sw $t0, -11728($fp)
	li $t0, 7844
	sw $t0, -11732($fp)
	lw $t0, -11728($fp)
	lw $t1, -11732($fp)
	add $t0, $t0, $t1
	sw $t0, -11736($fp)
	lw $t1, -11736($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label567:
	lw $t0, -11364($fp)
	sw $t0, -11740($fp)
	lw $t1, -11740($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -11724($fp)
label566:
	addi $sp, $sp, -4
	lw $t0, -11696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11744($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -11744($fp)
	sub $t0, $t0, $t1
	sw $t0, -11748($fp)
	lw $t1, -11748($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label561:
	lw $t0, -2588($fp)
	sw $t0, -11752($fp)
	li $t0, 108
	sw $t0, -11756($fp)
	lw $t0, -11752($fp)
	lw $t1, -11756($fp)
	mul $t0, $t0, $t1
	sw $t0, -11760($fp)
	lw $t1, -11760($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -11692($fp)
label560:
label558:
	li $t0, 0
	sw $t0, -11764($fp)
	addi $t0, $fp, -244
	sw $t0, -11768($fp)
	li $t0, 0
	sw $t0, -11772($fp)
	li $t0, 58978
	sw $t0, -11776($fp)
	lw $t1, -11776($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label573:
	li $t0, 5193
	sw $t0, -11780($fp)
	lw $t1, -11780($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label572
label572:
	li $t0, 38220
	sw $t0, -11784($fp)
	lw $t1, -11784($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -11772($fp)
label571:
	li $t0, 4
	lw $t1, -11772($fp)
	mul $t0, $t0, $t1
	sw $t0, -11788($fp)
	lw $t0, -11788($fp)
	lw $t1, -11768($fp)
	add $t0, $t0, $t1
	sw $t0, -11792($fp)
	lw $t0, -11792($fp)
	lw $t1, 0($t0)
	sw $t1, -11796($fp)
	lw $t1, -11796($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label568:
	li $t0, 1
	sw $t0, -11764($fp)
label569:
	j label529
label531:
	j label517
label516:
label574:
	li $t0, 0
	sw $t0, -11800($fp)
	lw $t0, -1556($fp)
	sw $t0, -11804($fp)
	li $t0, 7598
	sw $t0, -11808($fp)
	li $t0, 56162
	sw $t0, -11812($fp)
	lw $t0, -11808($fp)
	lw $t1, -11812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11816($fp)
	li $t0, 0
	lw $t1, -11816($fp)
	sub $t0, $t0, $t1
	sw $t0, -11820($fp)
	addi $sp, $sp, -4
	lw $t0, -11804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11820($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11824($fp)
	addi $sp, $sp, 12
	lw $t1, -11824($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label579:
	li $t0, 39909
	sw $t0, -11828($fp)
	lw $t1, -11828($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -11800($fp)
label578:
	li $t0, 0
	sw $t0, -11832($fp)
	lw $t0, -1544($fp)
	sw $t0, -11836($fp)
	li $t0, 25573
	sw $t0, -11840($fp)
	lw $t0, -11836($fp)
	lw $t1, -11840($fp)
	mul $t0, $t0, $t1
	sw $t0, -11844($fp)
	lw $t0, -944($fp)
	sw $t0, -11848($fp)
	lw $t1, -11844($fp)
	lw $t2, -11848($fp)
	ble $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -11832($fp)
label581:
	addi $sp, $sp, -4
	lw $t0, -11800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11832($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11852($fp)
	addi $sp, $sp, 12
	lw $t0, -1568($fp)
	sw $t0, -11856($fp)
	lw $t0, -1580($fp)
	sw $t0, -11860($fp)
	lw $t0, -11856($fp)
	lw $t1, -11860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11864($fp)
	lw $t0, -1916($fp)
	sw $t0, -11868($fp)
	lw $t0, -10464($fp)
	sw $t0, -11872($fp)
	lw $t0, -11868($fp)
	lw $t1, -11872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11876($fp)
	lw $t0, -10476($fp)
	sw $t0, -11880($fp)
	lw $t0, -11876($fp)
	lw $t1, -11880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11884($fp)
	addi $sp, $sp, -4
	lw $t0, -11864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11884($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11888($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -64
	sw $t0, -11892($fp)
	li $t0, 2
	sw $t0, -11896($fp)
	li $t0, 4
	lw $t1, -11896($fp)
	mul $t0, $t0, $t1
	sw $t0, -11900($fp)
	lw $t0, -11900($fp)
	lw $t1, -11892($fp)
	add $t0, $t0, $t1
	sw $t0, -11904($fp)
	lw $t0, -11904($fp)
	lw $t1, 0($t0)
	sw $t1, -11908($fp)
	lw $t0, -11888($fp)
	lw $t1, -11908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11912($fp)
	lw $t1, -11852($fp)
	lw $t2, -11912($fp)
	bge $t1, $t2, label575
	j label576
label575:
label582:
	li $t0, 44847
	sw $t0, -11916($fp)
	li $t0, 2586
	sw $t0, -11920($fp)
	lw $t0, -11916($fp)
	lw $t1, -11920($fp)
	sub $t0, $t0, $t1
	sw $t0, -11924($fp)
	lw $t1, -11924($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label587
label587:
	addi $t0, $fp, -276
	sw $t0, -11928($fp)
	li $t0, 7
	sw $t0, -11932($fp)
	li $t0, 4
	lw $t1, -11932($fp)
	mul $t0, $t0, $t1
	sw $t0, -11936($fp)
	lw $t0, -11936($fp)
	lw $t1, -11928($fp)
	add $t0, $t0, $t1
	sw $t0, -11940($fp)
	lw $t0, -11940($fp)
	lw $t1, 0($t0)
	sw $t1, -11944($fp)
	li $t0, 0
	sw $t0, -11948($fp)
	addi $t0, $fp, -220
	sw $t0, -11952($fp)
	li $t0, 0
	sw $t0, -11956($fp)
	li $t0, 4
	lw $t1, -11956($fp)
	mul $t0, $t0, $t1
	sw $t0, -11960($fp)
	lw $t0, -11960($fp)
	lw $t1, -11952($fp)
	add $t0, $t0, $t1
	sw $t0, -11964($fp)
	lw $t0, -11964($fp)
	lw $t1, 0($t0)
	sw $t1, -11968($fp)
	lw $t1, -11968($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label588
label588:
	li $t0, 1
	sw $t0, -11948($fp)
label589:
	addi $sp, $sp, -4
	lw $t0, -11944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11972($fp)
	addi $sp, $sp, 12
	lw $t1, -11972($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label586
label586:
	li $t0, 38714
	sw $t0, -11976($fp)
	li $t0, 0
	lw $t1, -11976($fp)
	sub $t0, $t0, $t1
	sw $t0, -11980($fp)
	lw $t0, -10488($fp)
	sw $t0, -11984($fp)
	lw $t1, -11980($fp)
	lw $t2, -11984($fp)
	blt $t1, $t2, label583
	j label585
label585:
	lw $t0, -1592($fp)
	sw $t0, -11988($fp)
	lw $t1, -11988($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label584
label583:
label590:
	li $t0, 20727
	sw $t0, -11992($fp)
	li $t0, 0
	sw $t0, -11996($fp)
	addi $t0, $fp, -10404
	sw $t0, -12000($fp)
	lw $t0, -2312($fp)
	sw $t0, -12004($fp)
	li $t0, 4
	lw $t1, -12004($fp)
	mul $t0, $t0, $t1
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	lw $t1, -12000($fp)
	add $t0, $t0, $t1
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	lw $t1, 0($t0)
	sw $t1, -12016($fp)
	lw $t1, -12016($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label595
label595:
	lw $t0, -920($fp)
	sw $t0, -12020($fp)
	lw $t1, -12020($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -11996($fp)
label594:
	li $t0, 36442
	sw $t0, -12024($fp)
	addi $sp, $sp, -4
	lw $t0, -11996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12028($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -12032($fp)
	li $t0, 60181
	sw $t0, -12036($fp)
	lw $t0, -1544($fp)
	sw $t0, -12040($fp)
	lw $t1, -12036($fp)
	lw $t2, -12040($fp)
	ble $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -12032($fp)
label597:
	addi $sp, $sp, -4
	lw $t0, -12028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12032($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12044($fp)
	addi $sp, $sp, 12
	lw $t0, -11992($fp)
	lw $t1, -12044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12048($fp)
	lw $t1, -12048($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label592
label591:
	li $t0, 43302
	sw $t0, -12052($fp)
	lw $t0, -12052($fp)
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	sw $t0, -12060($fp)
	li $t0, 59252
	sw $t0, -12064($fp)
	lw $t0, -12064($fp)
	sw $t0, -12068($fp)
	lw $t0, -12068($fp)
	sw $t0, -12072($fp)
	lw $t0, -12068($fp)
	sw $t0, -12076($fp)
	lw $t0, -12076($fp)
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	sw $t0, -12080($fp)
	lw $t0, -2828($fp)
	sw $t0, -12084($fp)
	li $t0, 34516
	sw $t0, -12088($fp)
	lw $t0, -12084($fp)
	lw $t1, -12088($fp)
	sub $t0, $t0, $t1
	sw $t0, -12092($fp)
	addi $sp, $sp, -4
	lw $t0, -12080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12096($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -12100($fp)
	li $t0, 8509
	sw $t0, -12104($fp)
	li $t0, 0
	sw $t0, -12108($fp)
	li $t0, 38053
	sw $t0, -12112($fp)
	lw $t1, -12112($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -12108($fp)
label601:
	li $t0, 24061
	sw $t0, -12116($fp)
	lw $t0, -1796($fp)
	sw $t0, -12120($fp)
	lw $t0, -12116($fp)
	lw $t1, -12120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12124($fp)
	lw $t0, -12108($fp)
	lw $t1, -12124($fp)
	sub $t0, $t0, $t1
	sw $t0, -12128($fp)
	lw $t1, -12104($fp)
	lw $t2, -12128($fp)
	ble $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -12100($fp)
label599:
	li $t0, 0
	sw $t0, -12132($fp)
	li $t0, 34500
	sw $t0, -12136($fp)
	lw $t1, -12136($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label602
label602:
	li $t0, 1
	sw $t0, -12132($fp)
label603:
	j label590
label592:
	j label582
label584:
	j label574
label576:
label517:
	j label512
label511:
	lw $t0, -1604($fp)
	sw $t0, -12140($fp)
	li $t0, 0
	sw $t0, -12144($fp)
	li $t0, 28559
	sw $t0, -12148($fp)
	lw $t1, -12148($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label604
label604:
	li $t0, 1
	sw $t0, -12144($fp)
label605:
	lw $t0, -12140($fp)
	lw $t1, -12144($fp)
	mul $t0, $t0, $t1
	sw $t0, -12152($fp)
	li $t0, 0
	lw $t1, -12152($fp)
	sub $t0, $t0, $t1
	sw $t0, -12156($fp)
	lw $ra, -4($fp)
	lw $v0, -12156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label512:
	j label500
label502:
	li $t0, 49863
	sw $t0, -12160($fp)
	li $t0, 42345
	sw $t0, -12164($fp)
	li $t0, 0
	lw $t1, -12164($fp)
	sub $t0, $t0, $t1
	sw $t0, -12168($fp)
	lw $t0, -12160($fp)
	lw $t1, -12168($fp)
	mul $t0, $t0, $t1
	sw $t0, -12172($fp)
	lw $t1, -12172($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label607
label609:
	addi $t0, $fp, -10412
	sw $t0, -12176($fp)
	addi $t0, $fp, -96
	sw $t0, -12180($fp)
	lw $t0, -1628($fp)
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
	li $t0, 4
	lw $t1, -12196($fp)
	mul $t0, $t0, $t1
	sw $t0, -12200($fp)
	lw $t0, -12200($fp)
	lw $t1, -12176($fp)
	add $t0, $t0, $t1
	sw $t0, -12204($fp)
	lw $t0, -12204($fp)
	lw $t1, 0($t0)
	sw $t1, -12208($fp)
	lw $t1, -12208($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label607
label606:
	lw $t0, -1052($fp)
	sw $t0, -12212($fp)
	lw $ra, -4($fp)
	lw $v0, -12212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label608
label607:
label610:
	li $t0, 9101
	sw $t0, -12216($fp)
	li $t0, 0
	sw $t0, -12220($fp)
	addi $t0, $fp, -10416
	sw $t0, -12224($fp)
	lw $t0, -2828($fp)
	sw $t0, -12228($fp)
	li $t0, 4
	lw $t1, -12228($fp)
	mul $t0, $t0, $t1
	sw $t0, -12232($fp)
	lw $t0, -12232($fp)
	lw $t1, -12224($fp)
	add $t0, $t0, $t1
	sw $t0, -12236($fp)
	lw $t0, -12236($fp)
	lw $t1, 0($t0)
	sw $t1, -12240($fp)
	lw $t1, -12240($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label614
label613:
	li $t0, 1
	sw $t0, -12220($fp)
label614:
	lw $t1, -12216($fp)
	lw $t2, -12220($fp)
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 49971
	sw $t0, -12280($fp)
	addi $t0, $fp, -12260
	sw $t0, -12284($fp)
	li $t0, 0
	sw $t0, -12288($fp)
	lw $t0, -12288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12292($fp)
	lw $t0, -12284($fp)
	lw $t1, -12292($fp)
	add $t0, $t0, $t1
	sw $t0, -12296($fp)
	lw $t0, -12280($fp)
	lw $t1, -12296($fp)
	sw $t0, 0($t1)
	lw $t0, -12296($fp)
	lw $t1, 0($t0)
	sw $t1, -12300($fp)
	li $t0, 35787
	sw $t0, -12304($fp)
	addi $t0, $fp, -12260
	sw $t0, -12308($fp)
	li $t0, 1
	sw $t0, -12312($fp)
	lw $t0, -12312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12316($fp)
	lw $t0, -12308($fp)
	lw $t1, -12316($fp)
	add $t0, $t0, $t1
	sw $t0, -12320($fp)
	lw $t0, -12304($fp)
	lw $t1, -12320($fp)
	sw $t0, 0($t1)
	lw $t0, -12320($fp)
	lw $t1, 0($t0)
	sw $t1, -12324($fp)
	li $t0, 14294
	sw $t0, -12328($fp)
	addi $t0, $fp, -12260
	sw $t0, -12332($fp)
	li $t0, 2
	sw $t0, -12336($fp)
	lw $t0, -12336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12340($fp)
	lw $t0, -12332($fp)
	lw $t1, -12340($fp)
	add $t0, $t0, $t1
	sw $t0, -12344($fp)
	lw $t0, -12328($fp)
	lw $t1, -12344($fp)
	sw $t0, 0($t1)
	lw $t0, -12344($fp)
	lw $t1, 0($t0)
	sw $t1, -12348($fp)
	li $t0, 22655
	sw $t0, -12352($fp)
	addi $t0, $fp, -12260
	sw $t0, -12356($fp)
	li $t0, 3
	sw $t0, -12360($fp)
	lw $t0, -12360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12364($fp)
	lw $t0, -12356($fp)
	lw $t1, -12364($fp)
	add $t0, $t0, $t1
	sw $t0, -12368($fp)
	lw $t0, -12352($fp)
	lw $t1, -12368($fp)
	sw $t0, 0($t1)
	lw $t0, -12368($fp)
	lw $t1, 0($t0)
	sw $t1, -12372($fp)
	li $t0, 61361
	sw $t0, -12376($fp)
	addi $t0, $fp, -12260
	sw $t0, -12380($fp)
	li $t0, 4
	sw $t0, -12384($fp)
	lw $t0, -12384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12388($fp)
	lw $t0, -12380($fp)
	lw $t1, -12388($fp)
	add $t0, $t0, $t1
	sw $t0, -12392($fp)
	lw $t0, -12376($fp)
	lw $t1, -12392($fp)
	sw $t0, 0($t1)
	lw $t0, -12392($fp)
	lw $t1, 0($t0)
	sw $t1, -12396($fp)
	li $t0, 21892
	sw $t0, -12400($fp)
	lw $t0, -12400($fp)
	sw $t0, -12404($fp)
	lw $t0, -12404($fp)
	sw $t0, -12408($fp)
	li $t0, 13281
	sw $t0, -12412($fp)
	lw $t0, -12412($fp)
	sw $t0, -12416($fp)
	lw $t0, -12416($fp)
	sw $t0, -12420($fp)
	li $t0, 35734
	sw $t0, -12424($fp)
	lw $t0, -12424($fp)
	sw $t0, -12428($fp)
	lw $t0, -12428($fp)
	sw $t0, -12432($fp)
	li $t0, 56350
	sw $t0, -12436($fp)
	lw $t0, -12436($fp)
	sw $t0, -12440($fp)
	lw $t0, -12440($fp)
	sw $t0, -12444($fp)
	li $t0, 55355
	sw $t0, -12448($fp)
	addi $t0, $fp, -12276
	sw $t0, -12452($fp)
	li $t0, 0
	sw $t0, -12456($fp)
	lw $t0, -12456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12460($fp)
	lw $t0, -12452($fp)
	lw $t1, -12460($fp)
	add $t0, $t0, $t1
	sw $t0, -12464($fp)
	lw $t0, -12448($fp)
	lw $t1, -12464($fp)
	sw $t0, 0($t1)
	lw $t0, -12464($fp)
	lw $t1, 0($t0)
	sw $t1, -12468($fp)
	li $t0, 15045
	sw $t0, -12472($fp)
	addi $t0, $fp, -12276
	sw $t0, -12476($fp)
	li $t0, 1
	sw $t0, -12480($fp)
	lw $t0, -12480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12484($fp)
	lw $t0, -12476($fp)
	lw $t1, -12484($fp)
	add $t0, $t0, $t1
	sw $t0, -12488($fp)
	lw $t0, -12472($fp)
	lw $t1, -12488($fp)
	sw $t0, 0($t1)
	lw $t0, -12488($fp)
	lw $t1, 0($t0)
	sw $t1, -12492($fp)
	li $t0, 58936
	sw $t0, -12496($fp)
	addi $t0, $fp, -12276
	sw $t0, -12500($fp)
	li $t0, 2
	sw $t0, -12504($fp)
	lw $t0, -12504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12508($fp)
	lw $t0, -12500($fp)
	lw $t1, -12508($fp)
	add $t0, $t0, $t1
	sw $t0, -12512($fp)
	lw $t0, -12496($fp)
	lw $t1, -12512($fp)
	sw $t0, 0($t1)
	lw $t0, -12512($fp)
	lw $t1, 0($t0)
	sw $t1, -12516($fp)
	li $t0, 4951
	sw $t0, -12520($fp)
	addi $t0, $fp, -12276
	sw $t0, -12524($fp)
	li $t0, 3
	sw $t0, -12528($fp)
	lw $t0, -12528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12532($fp)
	lw $t0, -12524($fp)
	lw $t1, -12532($fp)
	add $t0, $t0, $t1
	sw $t0, -12536($fp)
	lw $t0, -12520($fp)
	lw $t1, -12536($fp)
	sw $t0, 0($t1)
	lw $t0, -12536($fp)
	lw $t1, 0($t0)
	sw $t1, -12540($fp)
	li $t0, 33132
	sw $t0, -12544($fp)
	lw $t0, -12544($fp)
	sw $t0, -12548($fp)
	lw $t0, -12548($fp)
	sw $t0, -12552($fp)
label615:
	addi $t0, $fp, -12260
	sw $t0, -12556($fp)
	li $t0, 61671
	sw $t0, -12560($fp)
	li $t0, 47150
	sw $t0, -12564($fp)
	addi $sp, $sp, -4
	lw $t0, -12560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12568($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -12568($fp)
	mul $t0, $t0, $t1
	sw $t0, -12572($fp)
	lw $t0, -12572($fp)
	lw $t1, -12556($fp)
	add $t0, $t0, $t1
	sw $t0, -12576($fp)
	lw $t0, -12576($fp)
	lw $t1, 0($t0)
	sw $t1, -12580($fp)
	lw $t0, -1424($fp)
	sw $t0, -12584($fp)
	li $t0, 0
	lw $t1, -12584($fp)
	sub $t0, $t0, $t1
	sw $t0, -12588($fp)
	lw $t1, -12580($fp)
	lw $t2, -12588($fp)
	bne $t1, $t2, label616
	j label617
label616:
	lw $t0, -980($fp)
	sw $t0, -12592($fp)
	addi $t0, $fp, -68
	sw $t0, -12596($fp)
	li $t0, 0
	sw $t0, -12600($fp)
	li $t0, 4
	lw $t1, -12600($fp)
	mul $t0, $t0, $t1
	sw $t0, -12604($fp)
	lw $t0, -12604($fp)
	lw $t1, -12596($fp)
	add $t0, $t0, $t1
	sw $t0, -12608($fp)
	lw $t0, -12608($fp)
	lw $t1, 0($t0)
	sw $t1, -12612($fp)
	lw $t1, -12592($fp)
	lw $t2, -12612($fp)
	blt $t1, $t2, label621
	j label619
label621:
	addi $t0, $fp, -10416
	sw $t0, -12616($fp)
	li $t0, 0
	sw $t0, -12620($fp)
	li $t0, 4
	lw $t1, -12620($fp)
	mul $t0, $t0, $t1
	sw $t0, -12624($fp)
	lw $t0, -12624($fp)
	lw $t1, -12616($fp)
	add $t0, $t0, $t1
	sw $t0, -12628($fp)
	lw $t0, -12628($fp)
	lw $t1, 0($t0)
	sw $t1, -12632($fp)
	li $t0, 0
	sw $t0, -12636($fp)
	li $t0, 0
	sw $t0, -12640($fp)
	li $t0, 45643
	sw $t0, -12644($fp)
	lw $t1, -12644($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label624
label626:
	li $t0, 50032
	sw $t0, -12648($fp)
	lw $t1, -12648($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -12640($fp)
label625:
	li $t0, 0
	sw $t0, -12652($fp)
	li $t0, 56316
	sw $t0, -12656($fp)
	lw $t1, -12656($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label629
label630:
	li $t0, 42752
	sw $t0, -12660($fp)
	lw $t1, -12660($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label629
label629:
	lw $t0, -1772($fp)
	sw $t0, -12664($fp)
	lw $t1, -12664($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -12652($fp)
label628:
	addi $sp, $sp, -4
	lw $t0, -12640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12652($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12668($fp)
	addi $sp, $sp, 12
	lw $t0, -1808($fp)
	sw $t0, -12672($fp)
	lw $t1, -12668($fp)
	lw $t2, -12672($fp)
	bge $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -12636($fp)
label623:
	addi $sp, $sp, -4
	lw $t0, -12632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12636($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12676($fp)
	addi $sp, $sp, 12
	lw $t0, -1448($fp)
	sw $t0, -12680($fp)
	li $t0, 0
	lw $t1, -12680($fp)
	sub $t0, $t0, $t1
	sw $t0, -12684($fp)
	lw $t0, -12676($fp)
	lw $t1, -12684($fp)
	sub $t0, $t0, $t1
	sw $t0, -12688($fp)
	lw $t1, -12688($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 0
	sw $t0, -12692($fp)
	lw $t0, -1052($fp)
	sw $t0, -12696($fp)
	lw $t1, -12696($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label634
label634:
	li $t0, 1
	sw $t0, -12692($fp)
label635:
	li $t0, 0
	lw $t1, -12692($fp)
	sub $t0, $t0, $t1
	sw $t0, -12700($fp)
	lw $t1, -12700($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label632
label631:
	li $t0, 0
	sw $t0, -12704($fp)
	addi $t0, $fp, -324
	sw $t0, -12708($fp)
	li $t0, 1
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
	lw $t1, -12724($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label638:
	li $t0, 0
	sw $t0, -12728($fp)
	li $t0, 0
	sw $t0, -12732($fp)
	lw $t0, -2552($fp)
	sw $t0, -12736($fp)
	li $t0, 0
	sw $t0, -12740($fp)
	lw $t0, -1820($fp)
	sw $t0, -12744($fp)
	lw $t0, -2552($fp)
	sw $t0, -12748($fp)
	lw $t0, -12744($fp)
	lw $t1, -12748($fp)
	mul $t0, $t0, $t1
	sw $t0, -12752($fp)
	lw $t1, -12752($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label646
label646:
	lw $t0, -572($fp)
	sw $t0, -12756($fp)
	lw $t1, -12756($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -12740($fp)
label645:
	addi $sp, $sp, -4
	lw $t0, -12736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12740($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12760($fp)
	addi $sp, $sp, 12
	lw $t1, -12760($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label642
label643:
	lw $t0, -12404($fp)
	sw $t0, -12764($fp)
	lw $t1, -12764($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -12732($fp)
label642:
	li $t0, 0
	sw $t0, -12768($fp)
	li $t0, 51109
	sw $t0, -12772($fp)
	lw $t1, -12772($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label649:
	lw $t0, -1052($fp)
	sw $t0, -12776($fp)
	lw $t1, -12776($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -12768($fp)
label648:
	li $t0, 0
	sw $t0, -12780($fp)
	li $t0, 23117
	sw $t0, -12784($fp)
	lw $t1, -12784($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label650:
	li $t0, 1
	sw $t0, -12780($fp)
label651:
	lw $t0, -1928($fp)
	sw $t0, -12788($fp)
	lw $t0, -12780($fp)
	lw $t1, -12788($fp)
	add $t0, $t0, $t1
	sw $t0, -12792($fp)
	addi $sp, $sp, -4
	lw $t0, -12768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12796($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -12732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12800($fp)
	addi $sp, $sp, 12
	li $t0, 20121
	sw $t0, -12804($fp)
	lw $t1, -12800($fp)
	lw $t2, -12804($fp)
	bgt $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -12728($fp)
label640:
	lw $t0, -12416($fp)
	sw $t0, -12808($fp)
	li $t0, 0
	lw $t1, -12808($fp)
	sub $t0, $t0, $t1
	sw $t0, -12812($fp)
	lw $t1, -12728($fp)
	lw $t2, -12812($fp)
	bne $t1, $t2, label636
	j label637
label636:
	li $t0, 1
	sw $t0, -12704($fp)
label637:
	j label633
label632:
	lw $t0, -1832($fp)
	sw $t0, -12816($fp)
label633:
	j label620
label619:
	li $t0, 65462
	sw $t0, -12820($fp)
	addi $t0, $fp, -96
	sw $t0, -12824($fp)
	li $t0, 0
	sw $t0, -12828($fp)
	li $t0, 60210
	sw $t0, -12832($fp)
	lw $t1, -12832($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label652:
	li $t0, 1
	sw $t0, -12828($fp)
label653:
	li $t0, 4
	lw $t1, -12828($fp)
	mul $t0, $t0, $t1
	sw $t0, -12836($fp)
	lw $t0, -12836($fp)
	lw $t1, -12824($fp)
	add $t0, $t0, $t1
	sw $t0, -12840($fp)
	lw $t0, -12840($fp)
	lw $t1, 0($t0)
	sw $t1, -12844($fp)
	lw $t0, -12820($fp)
	lw $t1, -12844($fp)
	mul $t0, $t0, $t1
	sw $t0, -12848($fp)
label620:
	j label615
label617:
	li $t0, 0
	sw $t0, -12852($fp)
	lw $t0, -1592($fp)
	sw $t0, -12856($fp)
	lw $t1, -12856($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label659
label660:
	li $t0, 27212
	sw $t0, -12860($fp)
	lw $t1, -12860($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label659
label659:
	lw $t0, -1040($fp)
	sw $t0, -12864($fp)
	lw $t1, -12864($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -12852($fp)
label658:
	li $t0, 0
	sw $t0, -12868($fp)
	lw $t0, -12428($fp)
	sw $t0, -12872($fp)
	li $t0, 0
	lw $t1, -12872($fp)
	sub $t0, $t0, $t1
	sw $t0, -12876($fp)
	li $t0, 8968
	sw $t0, -12880($fp)
	lw $t1, -12876($fp)
	lw $t2, -12880($fp)
	beq $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -12868($fp)
label662:
	addi $sp, $sp, -4
	lw $t0, -12852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12884($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -12888($fp)
	addi $t0, $fp, -192
	sw $t0, -12892($fp)
	li $t0, 2
	sw $t0, -12896($fp)
	li $t0, 4
	lw $t1, -12896($fp)
	mul $t0, $t0, $t1
	sw $t0, -12900($fp)
	lw $t0, -12900($fp)
	lw $t1, -12892($fp)
	add $t0, $t0, $t1
	sw $t0, -12904($fp)
	lw $t0, -12904($fp)
	lw $t1, 0($t0)
	sw $t1, -12908($fp)
	lw $t1, -12908($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label663
label663:
	li $t0, 1
	sw $t0, -12888($fp)
label664:
	addi $sp, $sp, -4
	lw $t0, -12884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12888($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12912($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -12916($fp)
	li $t0, 0
	sw $t0, -12920($fp)
	li $t0, 0
	sw $t0, -12924($fp)
	li $t0, 40493
	sw $t0, -12928($fp)
	lw $t1, -12928($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label670
label670:
	li $t0, 1
	sw $t0, -12924($fp)
label671:
	li $t0, 1737
	sw $t0, -12932($fp)
	lw $t1, -12924($fp)
	lw $t2, -12932($fp)
	beq $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -12920($fp)
label669:
	li $t0, 30860
	sw $t0, -12936($fp)
	li $t0, 0
	lw $t1, -12936($fp)
	sub $t0, $t0, $t1
	sw $t0, -12940($fp)
	li $t0, 0
	lw $t1, -12940($fp)
	sub $t0, $t0, $t1
	sw $t0, -12944($fp)
	addi $sp, $sp, -4
	lw $t0, -12920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12948($fp)
	addi $sp, $sp, 12
	lw $t1, -12948($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label666
label667:
	lw $t0, -2552($fp)
	sw $t0, -12952($fp)
	lw $t1, -12952($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -12916($fp)
label666:
	li $t0, 31539
	sw $t0, -12956($fp)
	lw $t0, -12956($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -12960($fp)
	addi $sp, $sp, -4
	lw $t0, -12916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12960($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12964($fp)
	addi $sp, $sp, 12
	lw $t0, -12912($fp)
	lw $t1, -12964($fp)
	mul $t0, $t0, $t1
	sw $t0, -12968($fp)
	li $t0, 21674
	sw $t0, -12972($fp)
	lw $t0, -12968($fp)
	lw $t1, -12972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12976($fp)
	lw $t0, -932($fp)
	sw $t0, -12980($fp)
	li $t0, 0
	sw $t0, -12984($fp)
	li $t0, 0
	sw $t0, -12988($fp)
	lw $t0, -2120($fp)
	sw $t0, -12992($fp)
	lw $t0, -1544($fp)
	sw $t0, -12996($fp)
	lw $t1, -12992($fp)
	lw $t2, -12996($fp)
	blt $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -12988($fp)
label675:
	lw $t0, -12440($fp)
	sw $t0, -13000($fp)
	lw $t1, -12988($fp)
	lw $t2, -13000($fp)
	bge $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -12984($fp)
label673:
	addi $sp, $sp, -4
	lw $t0, -12980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13004($fp)
	addi $sp, $sp, 12
	lw $t0, -1436($fp)
	sw $t0, -13008($fp)
	lw $t0, -13004($fp)
	lw $t1, -13008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13012($fp)
	li $t0, 30313
	sw $t0, -13016($fp)
	lw $t0, -13012($fp)
	lw $t1, -13016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13020($fp)
	lw $t1, -12976($fp)
	lw $t2, -13020($fp)
	bgt $t1, $t2, label654
	j label655
label654:
	addi $t0, $fp, -208
	sw $t0, -13024($fp)
	li $t0, 0
	sw $t0, -13028($fp)
	li $t0, 16783
	sw $t0, -13032($fp)
	lw $t1, -13032($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label678:
	li $t0, 15074
	sw $t0, -13036($fp)
	lw $t1, -13036($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -13028($fp)
label677:
	li $t0, 4
	lw $t1, -13028($fp)
	mul $t0, $t0, $t1
	sw $t0, -13040($fp)
	lw $t0, -13040($fp)
	lw $t1, -13024($fp)
	add $t0, $t0, $t1
	sw $t0, -13044($fp)
	lw $t0, -13044($fp)
	lw $t1, 0($t0)
	sw $t1, -13048($fp)
	lw $t0, -13048($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -13052($fp)
	lw $ra, -4($fp)
	lw $v0, -13052($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label656
label655:
	lw $t0, -1928($fp)
	sw $t0, -13056($fp)
	lw $t0, -920($fp)
	sw $t0, -13060($fp)
	lw $t0, -13056($fp)
	lw $t1, -13060($fp)
	mul $t0, $t0, $t1
	sw $t0, -13064($fp)
	li $t0, 35264
	sw $t0, -13068($fp)
	lw $t0, -13064($fp)
	lw $t1, -13068($fp)
	mul $t0, $t0, $t1
	sw $t0, -13072($fp)
	lw $t0, -1628($fp)
	sw $t0, -13076($fp)
	lw $t0, -13072($fp)
	lw $t1, -13076($fp)
	add $t0, $t0, $t1
	sw $t0, -13080($fp)
	li $t0, 0
	sw $t0, -13084($fp)
	li $t0, 49915
	sw $t0, -13088($fp)
	lw $t1, -13088($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label679
label679:
	li $t0, 1
	sw $t0, -13084($fp)
label680:
	li $t0, 62224
	sw $t0, -13092($fp)
	lw $t0, -13084($fp)
	lw $t1, -13092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13096($fp)
	lw $t0, -13080($fp)
	lw $t1, -13096($fp)
	add $t0, $t0, $t1
	sw $t0, -13100($fp)
	li $t0, 0
	sw $t0, -13104($fp)
	lw $t0, -1772($fp)
	sw $t0, -13108($fp)
	lw $t1, -13108($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label681
label681:
	li $t0, 1
	sw $t0, -13104($fp)
label682:
	lw $t0, -13100($fp)
	lw $t1, -13104($fp)
	sub $t0, $t0, $t1
	sw $t0, -13112($fp)
label656:
	addi $t0, $fp, -12260
	sw $t0, -13116($fp)
	li $t0, 0
	sw $t0, -13120($fp)
	li $t0, 4
	lw $t1, -13120($fp)
	mul $t0, $t0, $t1
	sw $t0, -13124($fp)
	lw $t0, -13124($fp)
	lw $t1, -13116($fp)
	add $t0, $t0, $t1
	sw $t0, -13128($fp)
	lw $t0, -13128($fp)
	lw $t1, 0($t0)
	sw $t1, -13132($fp)
	lw $t0, -13132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12260
	sw $t0, -13136($fp)
	li $t0, 1
	sw $t0, -13140($fp)
	li $t0, 4
	lw $t1, -13140($fp)
	mul $t0, $t0, $t1
	sw $t0, -13144($fp)
	lw $t0, -13144($fp)
	lw $t1, -13136($fp)
	add $t0, $t0, $t1
	sw $t0, -13148($fp)
	lw $t0, -13148($fp)
	lw $t1, 0($t0)
	sw $t1, -13152($fp)
	lw $t0, -13152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12260
	sw $t0, -13156($fp)
	li $t0, 2
	sw $t0, -13160($fp)
	li $t0, 4
	lw $t1, -13160($fp)
	mul $t0, $t0, $t1
	sw $t0, -13164($fp)
	lw $t0, -13164($fp)
	lw $t1, -13156($fp)
	add $t0, $t0, $t1
	sw $t0, -13168($fp)
	lw $t0, -13168($fp)
	lw $t1, 0($t0)
	sw $t1, -13172($fp)
	lw $t0, -13172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12260
	sw $t0, -13176($fp)
	li $t0, 3
	sw $t0, -13180($fp)
	li $t0, 4
	lw $t1, -13180($fp)
	mul $t0, $t0, $t1
	sw $t0, -13184($fp)
	lw $t0, -13184($fp)
	lw $t1, -13176($fp)
	add $t0, $t0, $t1
	sw $t0, -13188($fp)
	lw $t0, -13188($fp)
	lw $t1, 0($t0)
	sw $t1, -13192($fp)
	lw $t0, -13192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12260
	sw $t0, -13196($fp)
	li $t0, 4
	sw $t0, -13200($fp)
	li $t0, 4
	lw $t1, -13200($fp)
	mul $t0, $t0, $t1
	sw $t0, -13204($fp)
	lw $t0, -13204($fp)
	lw $t1, -13196($fp)
	add $t0, $t0, $t1
	sw $t0, -13208($fp)
	lw $t0, -13208($fp)
	lw $t1, 0($t0)
	sw $t1, -13212($fp)
	lw $t0, -13212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12404($fp)
	sw $t0, -13216($fp)
	lw $t0, -13216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12416($fp)
	sw $t0, -13220($fp)
	lw $t0, -13220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12428($fp)
	sw $t0, -13224($fp)
	lw $t0, -13224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12440($fp)
	sw $t0, -13228($fp)
	lw $t0, -13228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12276
	sw $t0, -13232($fp)
	li $t0, 0
	sw $t0, -13236($fp)
	li $t0, 4
	lw $t1, -13236($fp)
	mul $t0, $t0, $t1
	sw $t0, -13240($fp)
	lw $t0, -13240($fp)
	lw $t1, -13232($fp)
	add $t0, $t0, $t1
	sw $t0, -13244($fp)
	lw $t0, -13244($fp)
	lw $t1, 0($t0)
	sw $t1, -13248($fp)
	lw $t0, -13248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12276
	sw $t0, -13252($fp)
	li $t0, 1
	sw $t0, -13256($fp)
	li $t0, 4
	lw $t1, -13256($fp)
	mul $t0, $t0, $t1
	sw $t0, -13260($fp)
	lw $t0, -13260($fp)
	lw $t1, -13252($fp)
	add $t0, $t0, $t1
	sw $t0, -13264($fp)
	lw $t0, -13264($fp)
	lw $t1, 0($t0)
	sw $t1, -13268($fp)
	lw $t0, -13268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12276
	sw $t0, -13272($fp)
	li $t0, 2
	sw $t0, -13276($fp)
	li $t0, 4
	lw $t1, -13276($fp)
	mul $t0, $t0, $t1
	sw $t0, -13280($fp)
	lw $t0, -13280($fp)
	lw $t1, -13272($fp)
	add $t0, $t0, $t1
	sw $t0, -13284($fp)
	lw $t0, -13284($fp)
	lw $t1, 0($t0)
	sw $t1, -13288($fp)
	lw $t0, -13288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12276
	sw $t0, -13292($fp)
	li $t0, 3
	sw $t0, -13296($fp)
	li $t0, 4
	lw $t1, -13296($fp)
	mul $t0, $t0, $t1
	sw $t0, -13300($fp)
	lw $t0, -13300($fp)
	lw $t1, -13292($fp)
	add $t0, $t0, $t1
	sw $t0, -13304($fp)
	lw $t0, -13304($fp)
	lw $t1, 0($t0)
	sw $t1, -13308($fp)
	lw $t0, -13308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12548($fp)
	sw $t0, -13312($fp)
	lw $t0, -13312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -13316($fp)
	lw $t0, -2840($fp)
	sw $t0, -13320($fp)
	addi $t0, $fp, -12276
	sw $t0, -13324($fp)
	li $t0, 1
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
	lw $t0, -13320($fp)
	lw $t1, -13340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13344($fp)
	li $t0, 4
	lw $t1, -13344($fp)
	mul $t0, $t0, $t1
	sw $t0, -13348($fp)
	lw $t0, -13348($fp)
	lw $t1, -13316($fp)
	add $t0, $t0, $t1
	sw $t0, -13352($fp)
	lw $t0, -13352($fp)
	lw $t1, 0($t0)
	sw $t1, -13356($fp)
	lw $ra, -4($fp)
	lw $v0, -13356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2324($fp)
	sw $t0, -13360($fp)
	lw $t0, -1544($fp)
	sw $t0, -13364($fp)
	lw $t0, -13360($fp)
	lw $t1, -13364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13368($fp)
	li $t0, 0
	lw $t1, -13368($fp)
	sub $t0, $t0, $t1
	sw $t0, -13372($fp)
	lw $t0, -13372($fp)
	sw $t0, -12548($fp)
	lw $t0, -12548($fp)
	sw $t0, -13376($fp)
	j label610
label612:
label608:
	li $t0, 64566
	sw $t0, -13380($fp)
	lw $t0, -13380($fp)
	sw $t0, -13384($fp)
	lw $t0, -13384($fp)
	sw $t0, -13388($fp)
	li $t0, 22179
	sw $t0, -13392($fp)
	lw $t0, -13384($fp)
	sw $t0, -13396($fp)
	lw $t0, -13396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2828($fp)
	sw $t0, -13400($fp)
	lw $ra, -4($fp)
	lw $v0, -13400($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label683:
	li $t0, 0
	sw $t0, -13404($fp)
	addi $t0, $fp, -10412
	sw $t0, -13408($fp)
	li $t0, 0
	sw $t0, -13412($fp)
	lw $t0, -1556($fp)
	sw $t0, -13416($fp)
	li $t0, 33441
	sw $t0, -13420($fp)
	lw $t1, -13416($fp)
	lw $t2, -13420($fp)
	bgt $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -13412($fp)
label689:
	li $t0, 4
	lw $t1, -13412($fp)
	mul $t0, $t0, $t1
	sw $t0, -13424($fp)
	lw $t0, -13424($fp)
	lw $t1, -13408($fp)
	add $t0, $t0, $t1
	sw $t0, -13428($fp)
	lw $t0, -13428($fp)
	lw $t1, 0($t0)
	sw $t1, -13432($fp)
	lw $t1, -13432($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label686
label686:
	li $t0, 1
	sw $t0, -13404($fp)
label687:
	li $t0, 0
	lw $t1, -13404($fp)
	sub $t0, $t0, $t1
	sw $t0, -13436($fp)
	lw $t1, -13436($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label685
label684:
	li $t0, 0
	sw $t0, -13440($fp)
	addi $t0, $fp, -10432
	sw $t0, -13444($fp)
	li $t0, 0
	sw $t0, -13448($fp)
	li $t0, 4
	lw $t1, -13448($fp)
	mul $t0, $t0, $t1
	sw $t0, -13452($fp)
	lw $t0, -13452($fp)
	lw $t1, -13444($fp)
	add $t0, $t0, $t1
	sw $t0, -13456($fp)
	lw $t0, -13456($fp)
	lw $t1, 0($t0)
	sw $t1, -13460($fp)
	lw $t1, -13460($fp)
	li $t2, 0
	bne $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -13440($fp)
label694:
	lw $t0, -2288($fp)
	sw $t0, -13464($fp)
	lw $t1, -13440($fp)
	lw $t2, -13464($fp)
	bgt $t1, $t2, label690
	j label691
label690:
label695:
	li $t0, 0
	sw $t0, -13468($fp)
	lw $t0, -1628($fp)
	sw $t0, -13472($fp)
	lw $t1, -13472($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label700
label700:
	li $t0, 15432
	sw $t0, -13476($fp)
	lw $t1, -13476($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -13468($fp)
label699:
	li $t0, 0
	sw $t0, -13480($fp)
	li $t0, 45174
	sw $t0, -13484($fp)
	li $t0, 33290
	sw $t0, -13488($fp)
	lw $t1, -13484($fp)
	lw $t2, -13488($fp)
	blt $t1, $t2, label703
	j label702
label703:
	li $t0, 29226
	sw $t0, -13492($fp)
	lw $t1, -13492($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -13480($fp)
label702:
	addi $sp, $sp, -4
	lw $t0, -13468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13496($fp)
	addi $sp, $sp, 12
	lw $t1, -13496($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label697
label696:
	li $t0, 0
	sw $t0, -13500($fp)
	lw $t0, -1640($fp)
	sw $t0, -13504($fp)
	li $t0, 56408
	sw $t0, -13508($fp)
	addi $sp, $sp, -4
	lw $t0, -13504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13512($fp)
	addi $sp, $sp, 12
	lw $t0, -13384($fp)
	sw $t0, -13516($fp)
	li $t0, 0
	lw $t1, -13516($fp)
	sub $t0, $t0, $t1
	sw $t0, -13520($fp)
	li $t0, 0
	lw $t1, -13520($fp)
	sub $t0, $t0, $t1
	sw $t0, -13524($fp)
	lw $t1, -13512($fp)
	lw $t2, -13524($fp)
	bne $t1, $t2, label706
	j label705
label706:
	li $t0, 14799
	sw $t0, -13528($fp)
	lw $t1, -13528($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label705
label704:
	li $t0, 1
	sw $t0, -13500($fp)
label705:
	lw $ra, -4($fp)
	lw $v0, -13500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label695
label697:
	j label692
label691:
label707:
	li $t0, 0
	sw $t0, -13532($fp)
	addi $t0, $fp, -208
	sw $t0, -13536($fp)
	li $t0, 35553
	sw $t0, -13540($fp)
	lw $t0, -1916($fp)
	sw $t0, -13544($fp)
	lw $t0, -13540($fp)
	lw $t1, -13544($fp)
	add $t0, $t0, $t1
	sw $t0, -13548($fp)
	li $t0, 4
	lw $t1, -13548($fp)
	mul $t0, $t0, $t1
	sw $t0, -13552($fp)
	lw $t0, -13552($fp)
	lw $t1, -13536($fp)
	add $t0, $t0, $t1
	sw $t0, -13556($fp)
	lw $t0, -13556($fp)
	lw $t1, 0($t0)
	sw $t1, -13560($fp)
	lw $t1, -13560($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label710
label710:
	li $t0, 1
	sw $t0, -13532($fp)
label711:
	addi $t0, $fp, -68
	sw $t0, -13564($fp)
	addi $t0, $fp, -180
	sw $t0, -13568($fp)
	lw $t0, -1772($fp)
	sw $t0, -13572($fp)
	li $t0, 4
	lw $t1, -13572($fp)
	mul $t0, $t0, $t1
	sw $t0, -13576($fp)
	lw $t0, -13576($fp)
	lw $t1, -13568($fp)
	add $t0, $t0, $t1
	sw $t0, -13580($fp)
	lw $t0, -13580($fp)
	lw $t1, 0($t0)
	sw $t1, -13584($fp)
	li $t0, 4
	lw $t1, -13584($fp)
	mul $t0, $t0, $t1
	sw $t0, -13588($fp)
	lw $t0, -13588($fp)
	lw $t1, -13564($fp)
	add $t0, $t0, $t1
	sw $t0, -13592($fp)
	lw $t0, -13592($fp)
	lw $t1, 0($t0)
	sw $t1, -13596($fp)
	lw $t0, -13532($fp)
	lw $t1, -13596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13600($fp)
	lw $t1, -13600($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label709
label708:
	li $t0, 0
	sw $t0, -13604($fp)
	li $t0, 56334
	sw $t0, -13608($fp)
	li $t0, 9473
	sw $t0, -13612($fp)
	lw $t1, -13608($fp)
	lw $t2, -13612($fp)
	ble $t1, $t2, label712
	j label714
label714:
	li $t0, 0
	sw $t0, -13616($fp)
	lw $t0, -2528($fp)
	sw $t0, -13620($fp)
	lw $t1, -13620($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label715
label715:
	li $t0, 1
	sw $t0, -13616($fp)
label716:
	li $t0, 0
	lw $t1, -13616($fp)
	sub $t0, $t0, $t1
	sw $t0, -13624($fp)
	li $t0, 0
	sw $t0, -13628($fp)
	li $t0, 40109
	sw $t0, -13632($fp)
	lw $t0, -1424($fp)
	sw $t0, -13636($fp)
	lw $t0, -13632($fp)
	lw $t1, -13636($fp)
	sub $t0, $t0, $t1
	sw $t0, -13640($fp)
	lw $t1, -13640($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label718
label719:
	li $t0, 26512
	sw $t0, -13644($fp)
	lw $t1, -13644($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -13628($fp)
label718:
	addi $sp, $sp, -4
	lw $t0, -13624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13628($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13648($fp)
	addi $sp, $sp, 12
	lw $t1, -13648($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -13604($fp)
label713:
	lw $t0, -13604($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -13652($fp)
	j label707
label709:
label692:
	j label683
label685:
	lw $t0, -1028($fp)
	sw $t0, -13656($fp)
	lw $t0, -1808($fp)
	sw $t0, -13660($fp)
	li $t0, 0
	lw $t1, -13660($fp)
	sub $t0, $t0, $t1
	sw $t0, -13664($fp)
	li $t0, 18441
	sw $t0, -13668($fp)
	lw $t0, -13668($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -13672($fp)
	lw $t0, -1784($fp)
	sw $t0, -13676($fp)
	lw $t0, -2576($fp)
	sw $t0, -13680($fp)
	li $t0, 1785
	sw $t0, -13684($fp)
	lw $t0, -13680($fp)
	lw $t1, -13684($fp)
	add $t0, $t0, $t1
	sw $t0, -13688($fp)
	lw $t0, -13688($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -13692($fp)
	li $t0, 58051
	sw $t0, -13696($fp)
	lw $t0, -13696($fp)
	sw $t0, -13700($fp)
	lw $t0, -13700($fp)
	sw $t0, -13704($fp)
	li $t0, 49301
	sw $t0, -13708($fp)
	lw $t0, -13708($fp)
	sw $t0, -13712($fp)
	lw $t0, -13712($fp)
	sw $t0, -13716($fp)
label720:
	li $t0, 42279
	sw $t0, -13720($fp)
	lw $t1, -13720($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	lw $t0, -2132($fp)
	sw $t0, -13724($fp)
	li $t0, 0
	lw $t1, -13724($fp)
	sub $t0, $t0, $t1
	sw $t0, -13728($fp)
	lw $t0, -1580($fp)
	sw $t0, -13732($fp)
	lw $t0, -13728($fp)
	lw $t1, -13732($fp)
	add $t0, $t0, $t1
	sw $t0, -13736($fp)
	lw $t0, -13700($fp)
	sw $t0, -13740($fp)
	lw $t0, -13736($fp)
	lw $t1, -13740($fp)
	add $t0, $t0, $t1
	sw $t0, -13744($fp)
	j label720
label722:
	lw $t0, -13700($fp)
	sw $t0, -13748($fp)
	lw $t0, -13748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -13712($fp)
	sw $t0, -13752($fp)
	lw $t0, -13752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -13756($fp)
	addi $t0, $fp, -220
	sw $t0, -13760($fp)
	li $t0, 59789
	sw $t0, -13764($fp)
	lw $t0, -1472($fp)
	sw $t0, -13768($fp)
	lw $t0, -13764($fp)
	lw $t1, -13768($fp)
	mul $t0, $t0, $t1
	sw $t0, -13772($fp)
	li $t0, 4
	lw $t1, -13772($fp)
	mul $t0, $t0, $t1
	sw $t0, -13776($fp)
	lw $t0, -13776($fp)
	lw $t1, -13760($fp)
	add $t0, $t0, $t1
	sw $t0, -13780($fp)
	lw $t0, -13780($fp)
	lw $t1, 0($t0)
	sw $t1, -13784($fp)
	lw $t1, -13784($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label724
label725:
	addi $t0, $fp, -312
	sw $t0, -13788($fp)
	li $t0, 4
	sw $t0, -13792($fp)
	li $t0, 4
	lw $t1, -13792($fp)
	mul $t0, $t0, $t1
	sw $t0, -13796($fp)
	lw $t0, -13796($fp)
	lw $t1, -13788($fp)
	add $t0, $t0, $t1
	sw $t0, -13800($fp)
	lw $t0, -13800($fp)
	lw $t1, 0($t0)
	sw $t1, -13804($fp)
	lw $t1, -13804($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label724
label723:
	li $t0, 1
	sw $t0, -13756($fp)
label724:
	lw $ra, -4($fp)
	lw $v0, -13756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label726:
	lw $t0, -2108($fp)
	sw $t0, -13808($fp)
	lw $t1, -13808($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label727
label729:
	lw $t0, -968($fp)
	sw $t0, -13812($fp)
	lw $t1, -13812($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label728
label727:
	li $t0, 0
	sw $t0, -13816($fp)
	li $t0, 11036
	sw $t0, -13820($fp)
	li $t0, 0
	lw $t1, -13820($fp)
	sub $t0, $t0, $t1
	sw $t0, -13824($fp)
	li $t0, 0
	lw $t1, -13824($fp)
	sub $t0, $t0, $t1
	sw $t0, -13828($fp)
	lw $t1, -13828($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label732
label734:
	li $t0, 20514
	sw $t0, -13832($fp)
	lw $t1, -13832($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label733
label733:
	li $t0, 42320
	sw $t0, -13836($fp)
	lw $t1, -13836($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label732
label732:
	lw $t0, -13712($fp)
	sw $t0, -13840($fp)
	lw $t1, -13840($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label730
label730:
	li $t0, 1
	sw $t0, -13816($fp)
label731:
	j label726
label728:
	li $t0, 0
	sw $t0, -13844($fp)
	li $t0, 0
	sw $t0, -13848($fp)
	lw $t0, -2312($fp)
	sw $t0, -13852($fp)
	lw $t0, -2564($fp)
	sw $t0, -13856($fp)
	lw $t1, -13852($fp)
	lw $t2, -13856($fp)
	bne $t1, $t2, label740
	j label739
label740:
	lw $t0, -10668($fp)
	sw $t0, -13860($fp)
	lw $t1, -13860($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -13848($fp)
label739:
	li $t0, 0
	sw $t0, -13864($fp)
	li $t0, 60951
	sw $t0, -13868($fp)
	lw $t0, -2540($fp)
	sw $t0, -13872($fp)
	lw $t1, -13868($fp)
	lw $t2, -13872($fp)
	beq $t1, $t2, label743
	j label742
label743:
	li $t0, 17203
	sw $t0, -13876($fp)
	lw $t1, -13876($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -13864($fp)
label742:
	addi $sp, $sp, -4
	lw $t0, -13848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13880($fp)
	addi $sp, $sp, 12
	lw $t1, -13880($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label736
label737:
	li $t0, 8184
	sw $t0, -13884($fp)
	lw $t1, -13884($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -13844($fp)
label736:
	j label479
label481:
	addi $t0, $fp, -40
	sw $t0, -13888($fp)
	li $t0, 0
	sw $t0, -13892($fp)
	li $t0, 4
	lw $t1, -13892($fp)
	mul $t0, $t0, $t1
	sw $t0, -13896($fp)
	lw $t0, -13896($fp)
	lw $t1, -13888($fp)
	add $t0, $t0, $t1
	sw $t0, -13900($fp)
	lw $t0, -13900($fp)
	lw $t1, 0($t0)
	sw $t1, -13904($fp)
	lw $t0, -13904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13908($fp)
	li $t0, 1
	sw $t0, -13912($fp)
	li $t0, 4
	lw $t1, -13912($fp)
	mul $t0, $t0, $t1
	sw $t0, -13916($fp)
	lw $t0, -13916($fp)
	lw $t1, -13908($fp)
	add $t0, $t0, $t1
	sw $t0, -13920($fp)
	lw $t0, -13920($fp)
	lw $t1, 0($t0)
	sw $t1, -13924($fp)
	lw $t0, -13924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13928($fp)
	li $t0, 2
	sw $t0, -13932($fp)
	li $t0, 4
	lw $t1, -13932($fp)
	mul $t0, $t0, $t1
	sw $t0, -13936($fp)
	lw $t0, -13936($fp)
	lw $t1, -13928($fp)
	add $t0, $t0, $t1
	sw $t0, -13940($fp)
	lw $t0, -13940($fp)
	lw $t1, 0($t0)
	sw $t1, -13944($fp)
	lw $t0, -13944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13948($fp)
	li $t0, 3
	sw $t0, -13952($fp)
	li $t0, 4
	lw $t1, -13952($fp)
	mul $t0, $t0, $t1
	sw $t0, -13956($fp)
	lw $t0, -13956($fp)
	lw $t1, -13948($fp)
	add $t0, $t0, $t1
	sw $t0, -13960($fp)
	lw $t0, -13960($fp)
	lw $t1, 0($t0)
	sw $t1, -13964($fp)
	lw $t0, -13964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13968($fp)
	li $t0, 4
	sw $t0, -13972($fp)
	li $t0, 4
	lw $t1, -13972($fp)
	mul $t0, $t0, $t1
	sw $t0, -13976($fp)
	lw $t0, -13976($fp)
	lw $t1, -13968($fp)
	add $t0, $t0, $t1
	sw $t0, -13980($fp)
	lw $t0, -13980($fp)
	lw $t1, 0($t0)
	sw $t1, -13984($fp)
	lw $t0, -13984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13988($fp)
	li $t0, 5
	sw $t0, -13992($fp)
	li $t0, 4
	lw $t1, -13992($fp)
	mul $t0, $t0, $t1
	sw $t0, -13996($fp)
	lw $t0, -13996($fp)
	lw $t1, -13988($fp)
	add $t0, $t0, $t1
	sw $t0, -14000($fp)
	lw $t0, -14000($fp)
	lw $t1, 0($t0)
	sw $t1, -14004($fp)
	lw $t0, -14004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -14008($fp)
	li $t0, 6
	sw $t0, -14012($fp)
	li $t0, 4
	lw $t1, -14012($fp)
	mul $t0, $t0, $t1
	sw $t0, -14016($fp)
	lw $t0, -14016($fp)
	lw $t1, -14008($fp)
	add $t0, $t0, $t1
	sw $t0, -14020($fp)
	lw $t0, -14020($fp)
	lw $t1, 0($t0)
	sw $t1, -14024($fp)
	lw $t0, -14024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -14028($fp)
	li $t0, 7
	sw $t0, -14032($fp)
	li $t0, 4
	lw $t1, -14032($fp)
	mul $t0, $t0, $t1
	sw $t0, -14036($fp)
	lw $t0, -14036($fp)
	lw $t1, -14028($fp)
	add $t0, $t0, $t1
	sw $t0, -14040($fp)
	lw $t0, -14040($fp)
	lw $t1, 0($t0)
	sw $t1, -14044($fp)
	lw $t0, -14044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -14048($fp)
	li $t0, 8
	sw $t0, -14052($fp)
	li $t0, 4
	lw $t1, -14052($fp)
	mul $t0, $t0, $t1
	sw $t0, -14056($fp)
	lw $t0, -14056($fp)
	lw $t1, -14048($fp)
	add $t0, $t0, $t1
	sw $t0, -14060($fp)
	lw $t0, -14060($fp)
	lw $t1, 0($t0)
	sw $t1, -14064($fp)
	lw $t0, -14064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -14068($fp)
	li $t0, 0
	sw $t0, -14072($fp)
	li $t0, 4
	lw $t1, -14072($fp)
	mul $t0, $t0, $t1
	sw $t0, -14076($fp)
	lw $t0, -14076($fp)
	lw $t1, -14068($fp)
	add $t0, $t0, $t1
	sw $t0, -14080($fp)
	lw $t0, -14080($fp)
	lw $t1, 0($t0)
	sw $t1, -14084($fp)
	lw $t0, -14084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -14088($fp)
	lw $t0, -14088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -14092($fp)
	li $t0, 0
	sw $t0, -14096($fp)
	li $t0, 4
	lw $t1, -14096($fp)
	mul $t0, $t0, $t1
	sw $t0, -14100($fp)
	lw $t0, -14100($fp)
	lw $t1, -14092($fp)
	add $t0, $t0, $t1
	sw $t0, -14104($fp)
	lw $t0, -14104($fp)
	lw $t1, 0($t0)
	sw $t1, -14108($fp)
	lw $t0, -14108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -14112($fp)
	li $t0, 1
	sw $t0, -14116($fp)
	li $t0, 4
	lw $t1, -14116($fp)
	mul $t0, $t0, $t1
	sw $t0, -14120($fp)
	lw $t0, -14120($fp)
	lw $t1, -14112($fp)
	add $t0, $t0, $t1
	sw $t0, -14124($fp)
	lw $t0, -14124($fp)
	lw $t1, 0($t0)
	sw $t1, -14128($fp)
	lw $t0, -14128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -14132($fp)
	li $t0, 2
	sw $t0, -14136($fp)
	li $t0, 4
	lw $t1, -14136($fp)
	mul $t0, $t0, $t1
	sw $t0, -14140($fp)
	lw $t0, -14140($fp)
	lw $t1, -14132($fp)
	add $t0, $t0, $t1
	sw $t0, -14144($fp)
	lw $t0, -14144($fp)
	lw $t1, 0($t0)
	sw $t1, -14148($fp)
	lw $t0, -14148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -14152($fp)
	li $t0, 3
	sw $t0, -14156($fp)
	li $t0, 4
	lw $t1, -14156($fp)
	mul $t0, $t0, $t1
	sw $t0, -14160($fp)
	lw $t0, -14160($fp)
	lw $t1, -14152($fp)
	add $t0, $t0, $t1
	sw $t0, -14164($fp)
	lw $t0, -14164($fp)
	lw $t1, 0($t0)
	sw $t1, -14168($fp)
	lw $t0, -14168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -14172($fp)
	li $t0, 4
	sw $t0, -14176($fp)
	li $t0, 4
	lw $t1, -14176($fp)
	mul $t0, $t0, $t1
	sw $t0, -14180($fp)
	lw $t0, -14180($fp)
	lw $t1, -14172($fp)
	add $t0, $t0, $t1
	sw $t0, -14184($fp)
	lw $t0, -14184($fp)
	lw $t1, 0($t0)
	sw $t1, -14188($fp)
	lw $t0, -14188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -14192($fp)
	lw $t0, -14192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -14196($fp)
	lw $t0, -14196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -14200($fp)
	li $t0, 0
	sw $t0, -14204($fp)
	li $t0, 4
	lw $t1, -14204($fp)
	mul $t0, $t0, $t1
	sw $t0, -14208($fp)
	lw $t0, -14208($fp)
	lw $t1, -14200($fp)
	add $t0, $t0, $t1
	sw $t0, -14212($fp)
	lw $t0, -14212($fp)
	lw $t1, 0($t0)
	sw $t1, -14216($fp)
	lw $t0, -14216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -14220($fp)
	li $t0, 0
	sw $t0, -14224($fp)
	li $t0, 4
	lw $t1, -14224($fp)
	mul $t0, $t0, $t1
	sw $t0, -14228($fp)
	lw $t0, -14228($fp)
	lw $t1, -14220($fp)
	add $t0, $t0, $t1
	sw $t0, -14232($fp)
	lw $t0, -14232($fp)
	lw $t1, 0($t0)
	sw $t1, -14236($fp)
	lw $t0, -14236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -14240($fp)
	li $t0, 1
	sw $t0, -14244($fp)
	li $t0, 4
	lw $t1, -14244($fp)
	mul $t0, $t0, $t1
	sw $t0, -14248($fp)
	lw $t0, -14248($fp)
	lw $t1, -14240($fp)
	add $t0, $t0, $t1
	sw $t0, -14252($fp)
	lw $t0, -14252($fp)
	lw $t1, 0($t0)
	sw $t1, -14256($fp)
	lw $t0, -14256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -14260($fp)
	li $t0, 2
	sw $t0, -14264($fp)
	li $t0, 4
	lw $t1, -14264($fp)
	mul $t0, $t0, $t1
	sw $t0, -14268($fp)
	lw $t0, -14268($fp)
	lw $t1, -14260($fp)
	add $t0, $t0, $t1
	sw $t0, -14272($fp)
	lw $t0, -14272($fp)
	lw $t1, 0($t0)
	sw $t1, -14276($fp)
	lw $t0, -14276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -14280($fp)
	li $t0, 3
	sw $t0, -14284($fp)
	li $t0, 4
	lw $t1, -14284($fp)
	mul $t0, $t0, $t1
	sw $t0, -14288($fp)
	lw $t0, -14288($fp)
	lw $t1, -14280($fp)
	add $t0, $t0, $t1
	sw $t0, -14292($fp)
	lw $t0, -14292($fp)
	lw $t1, 0($t0)
	sw $t1, -14296($fp)
	lw $t0, -14296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -14300($fp)
	li $t0, 4
	sw $t0, -14304($fp)
	li $t0, 4
	lw $t1, -14304($fp)
	mul $t0, $t0, $t1
	sw $t0, -14308($fp)
	lw $t0, -14308($fp)
	lw $t1, -14300($fp)
	add $t0, $t0, $t1
	sw $t0, -14312($fp)
	lw $t0, -14312($fp)
	lw $t1, 0($t0)
	sw $t1, -14316($fp)
	lw $t0, -14316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -14320($fp)
	li $t0, 5
	sw $t0, -14324($fp)
	li $t0, 4
	lw $t1, -14324($fp)
	mul $t0, $t0, $t1
	sw $t0, -14328($fp)
	lw $t0, -14328($fp)
	lw $t1, -14320($fp)
	add $t0, $t0, $t1
	sw $t0, -14332($fp)
	lw $t0, -14332($fp)
	lw $t1, 0($t0)
	sw $t1, -14336($fp)
	lw $t0, -14336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -14340($fp)
	lw $t0, -14340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -14344($fp)
	lw $t0, -14344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -14348($fp)
	lw $t0, -14348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -14352($fp)
	lw $t0, -14352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -14356($fp)
	lw $t0, -14356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -14360($fp)
	lw $t0, -14360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -14364($fp)
	lw $t0, -14364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -14368($fp)
	lw $t0, -14368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -14372($fp)
	lw $t0, -14372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -14376($fp)
	lw $t0, -14376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -14380($fp)
	lw $t0, -14380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -14384($fp)
	lw $t0, -14384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -14388($fp)
	lw $t0, -14388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -14392($fp)
	lw $t0, -14392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -14396($fp)
	li $t0, 0
	sw $t0, -14400($fp)
	li $t0, 4
	lw $t1, -14400($fp)
	mul $t0, $t0, $t1
	sw $t0, -14404($fp)
	lw $t0, -14404($fp)
	lw $t1, -14396($fp)
	add $t0, $t0, $t1
	sw $t0, -14408($fp)
	lw $t0, -14408($fp)
	lw $t1, 0($t0)
	sw $t1, -14412($fp)
	lw $t0, -14412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14416($fp)
	li $t0, 0
	sw $t0, -14420($fp)
	li $t0, 4
	lw $t1, -14420($fp)
	mul $t0, $t0, $t1
	sw $t0, -14424($fp)
	lw $t0, -14424($fp)
	lw $t1, -14416($fp)
	add $t0, $t0, $t1
	sw $t0, -14428($fp)
	lw $t0, -14428($fp)
	lw $t1, 0($t0)
	sw $t1, -14432($fp)
	lw $t0, -14432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14436($fp)
	li $t0, 1
	sw $t0, -14440($fp)
	li $t0, 4
	lw $t1, -14440($fp)
	mul $t0, $t0, $t1
	sw $t0, -14444($fp)
	lw $t0, -14444($fp)
	lw $t1, -14436($fp)
	add $t0, $t0, $t1
	sw $t0, -14448($fp)
	lw $t0, -14448($fp)
	lw $t1, 0($t0)
	sw $t1, -14452($fp)
	lw $t0, -14452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14456($fp)
	li $t0, 2
	sw $t0, -14460($fp)
	li $t0, 4
	lw $t1, -14460($fp)
	mul $t0, $t0, $t1
	sw $t0, -14464($fp)
	lw $t0, -14464($fp)
	lw $t1, -14456($fp)
	add $t0, $t0, $t1
	sw $t0, -14468($fp)
	lw $t0, -14468($fp)
	lw $t1, 0($t0)
	sw $t1, -14472($fp)
	lw $t0, -14472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14476($fp)
	li $t0, 3
	sw $t0, -14480($fp)
	li $t0, 4
	lw $t1, -14480($fp)
	mul $t0, $t0, $t1
	sw $t0, -14484($fp)
	lw $t0, -14484($fp)
	lw $t1, -14476($fp)
	add $t0, $t0, $t1
	sw $t0, -14488($fp)
	lw $t0, -14488($fp)
	lw $t1, 0($t0)
	sw $t1, -14492($fp)
	lw $t0, -14492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14496($fp)
	li $t0, 4
	sw $t0, -14500($fp)
	li $t0, 4
	lw $t1, -14500($fp)
	mul $t0, $t0, $t1
	sw $t0, -14504($fp)
	lw $t0, -14504($fp)
	lw $t1, -14496($fp)
	add $t0, $t0, $t1
	sw $t0, -14508($fp)
	lw $t0, -14508($fp)
	lw $t1, 0($t0)
	sw $t1, -14512($fp)
	lw $t0, -14512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14516($fp)
	li $t0, 5
	sw $t0, -14520($fp)
	li $t0, 4
	lw $t1, -14520($fp)
	mul $t0, $t0, $t1
	sw $t0, -14524($fp)
	lw $t0, -14524($fp)
	lw $t1, -14516($fp)
	add $t0, $t0, $t1
	sw $t0, -14528($fp)
	lw $t0, -14528($fp)
	lw $t1, 0($t0)
	sw $t1, -14532($fp)
	lw $t0, -14532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14536($fp)
	li $t0, 6
	sw $t0, -14540($fp)
	li $t0, 4
	lw $t1, -14540($fp)
	mul $t0, $t0, $t1
	sw $t0, -14544($fp)
	lw $t0, -14544($fp)
	lw $t1, -14536($fp)
	add $t0, $t0, $t1
	sw $t0, -14548($fp)
	lw $t0, -14548($fp)
	lw $t1, 0($t0)
	sw $t1, -14552($fp)
	lw $t0, -14552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14556($fp)
	li $t0, 7
	sw $t0, -14560($fp)
	li $t0, 4
	lw $t1, -14560($fp)
	mul $t0, $t0, $t1
	sw $t0, -14564($fp)
	lw $t0, -14564($fp)
	lw $t1, -14556($fp)
	add $t0, $t0, $t1
	sw $t0, -14568($fp)
	lw $t0, -14568($fp)
	lw $t1, 0($t0)
	sw $t1, -14572($fp)
	lw $t0, -14572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14576($fp)
	li $t0, 8
	sw $t0, -14580($fp)
	li $t0, 4
	lw $t1, -14580($fp)
	mul $t0, $t0, $t1
	sw $t0, -14584($fp)
	lw $t0, -14584($fp)
	lw $t1, -14576($fp)
	add $t0, $t0, $t1
	sw $t0, -14588($fp)
	lw $t0, -14588($fp)
	lw $t1, 0($t0)
	sw $t1, -14592($fp)
	lw $t0, -14592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -14596($fp)
	li $t0, 9
	sw $t0, -14600($fp)
	li $t0, 4
	lw $t1, -14600($fp)
	mul $t0, $t0, $t1
	sw $t0, -14604($fp)
	lw $t0, -14604($fp)
	lw $t1, -14596($fp)
	add $t0, $t0, $t1
	sw $t0, -14608($fp)
	lw $t0, -14608($fp)
	lw $t1, 0($t0)
	sw $t1, -14612($fp)
	lw $t0, -14612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -14616($fp)
	li $t0, 0
	sw $t0, -14620($fp)
	li $t0, 4
	lw $t1, -14620($fp)
	mul $t0, $t0, $t1
	sw $t0, -14624($fp)
	lw $t0, -14624($fp)
	lw $t1, -14616($fp)
	add $t0, $t0, $t1
	sw $t0, -14628($fp)
	lw $t0, -14628($fp)
	lw $t1, 0($t0)
	sw $t1, -14632($fp)
	lw $t0, -14632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -14636($fp)
	li $t0, 1
	sw $t0, -14640($fp)
	li $t0, 4
	lw $t1, -14640($fp)
	mul $t0, $t0, $t1
	sw $t0, -14644($fp)
	lw $t0, -14644($fp)
	lw $t1, -14636($fp)
	add $t0, $t0, $t1
	sw $t0, -14648($fp)
	lw $t0, -14648($fp)
	lw $t1, 0($t0)
	sw $t1, -14652($fp)
	lw $t0, -14652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -14656($fp)
	li $t0, 2
	sw $t0, -14660($fp)
	li $t0, 4
	lw $t1, -14660($fp)
	mul $t0, $t0, $t1
	sw $t0, -14664($fp)
	lw $t0, -14664($fp)
	lw $t1, -14656($fp)
	add $t0, $t0, $t1
	sw $t0, -14668($fp)
	lw $t0, -14668($fp)
	lw $t1, 0($t0)
	sw $t1, -14672($fp)
	lw $t0, -14672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -14676($fp)
	li $t0, 3
	sw $t0, -14680($fp)
	li $t0, 4
	lw $t1, -14680($fp)
	mul $t0, $t0, $t1
	sw $t0, -14684($fp)
	lw $t0, -14684($fp)
	lw $t1, -14676($fp)
	add $t0, $t0, $t1
	sw $t0, -14688($fp)
	lw $t0, -14688($fp)
	lw $t1, 0($t0)
	sw $t1, -14692($fp)
	lw $t0, -14692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -14696($fp)
	lw $t0, -14696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -14700($fp)
	lw $t0, -14700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -14704($fp)
	lw $t0, -14704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -14708($fp)
	lw $t0, -14708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -14712($fp)
	lw $t0, -14712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -14716($fp)
	lw $t0, -14716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -14720($fp)
	li $t0, 0
	sw $t0, -14724($fp)
	li $t0, 4
	lw $t1, -14724($fp)
	mul $t0, $t0, $t1
	sw $t0, -14728($fp)
	lw $t0, -14728($fp)
	lw $t1, -14720($fp)
	add $t0, $t0, $t1
	sw $t0, -14732($fp)
	lw $t0, -14732($fp)
	lw $t1, 0($t0)
	sw $t1, -14736($fp)
	lw $t0, -14736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -14740($fp)
	li $t0, 1
	sw $t0, -14744($fp)
	li $t0, 4
	lw $t1, -14744($fp)
	mul $t0, $t0, $t1
	sw $t0, -14748($fp)
	lw $t0, -14748($fp)
	lw $t1, -14740($fp)
	add $t0, $t0, $t1
	sw $t0, -14752($fp)
	lw $t0, -14752($fp)
	lw $t1, 0($t0)
	sw $t1, -14756($fp)
	lw $t0, -14756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1544($fp)
	sw $t0, -14760($fp)
	lw $t0, -14760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -14764($fp)
	lw $t0, -14764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -14768($fp)
	lw $t0, -14768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -14772($fp)
	lw $t0, -14772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -14776($fp)
	lw $t0, -14776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -14780($fp)
	lw $t0, -14780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1616($fp)
	sw $t0, -14784($fp)
	lw $t0, -14784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1628($fp)
	sw $t0, -14788($fp)
	lw $t0, -14788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -14792($fp)
	lw $t0, -14792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -14796($fp)
	li $t0, 0
	sw $t0, -14800($fp)
	li $t0, 4
	lw $t1, -14800($fp)
	mul $t0, $t0, $t1
	sw $t0, -14804($fp)
	lw $t0, -14804($fp)
	lw $t1, -14796($fp)
	add $t0, $t0, $t1
	sw $t0, -14808($fp)
	lw $t0, -14808($fp)
	lw $t1, 0($t0)
	sw $t1, -14812($fp)
	lw $t0, -14812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -14816($fp)
	li $t0, 1
	sw $t0, -14820($fp)
	li $t0, 4
	lw $t1, -14820($fp)
	mul $t0, $t0, $t1
	sw $t0, -14824($fp)
	lw $t0, -14824($fp)
	lw $t1, -14816($fp)
	add $t0, $t0, $t1
	sw $t0, -14828($fp)
	lw $t0, -14828($fp)
	lw $t1, 0($t0)
	sw $t1, -14832($fp)
	lw $t0, -14832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -14836($fp)
	li $t0, 2
	sw $t0, -14840($fp)
	li $t0, 4
	lw $t1, -14840($fp)
	mul $t0, $t0, $t1
	sw $t0, -14844($fp)
	lw $t0, -14844($fp)
	lw $t1, -14836($fp)
	add $t0, $t0, $t1
	sw $t0, -14848($fp)
	lw $t0, -14848($fp)
	lw $t1, 0($t0)
	sw $t1, -14852($fp)
	lw $t0, -14852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -14856($fp)
	li $t0, 3
	sw $t0, -14860($fp)
	li $t0, 4
	lw $t1, -14860($fp)
	mul $t0, $t0, $t1
	sw $t0, -14864($fp)
	lw $t0, -14864($fp)
	lw $t1, -14856($fp)
	add $t0, $t0, $t1
	sw $t0, -14868($fp)
	lw $t0, -14868($fp)
	lw $t1, 0($t0)
	sw $t1, -14872($fp)
	lw $t0, -14872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -14876($fp)
	li $t0, 4
	sw $t0, -14880($fp)
	li $t0, 4
	lw $t1, -14880($fp)
	mul $t0, $t0, $t1
	sw $t0, -14884($fp)
	lw $t0, -14884($fp)
	lw $t1, -14876($fp)
	add $t0, $t0, $t1
	sw $t0, -14888($fp)
	lw $t0, -14888($fp)
	lw $t1, 0($t0)
	sw $t1, -14892($fp)
	lw $t0, -14892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -14896($fp)
	lw $t0, -14896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -14900($fp)
	lw $t0, -14900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -14904($fp)
	lw $t0, -14904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -14908($fp)
	lw $t0, -14908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -14912($fp)
	lw $t0, -14912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -14916($fp)
	lw $t0, -14916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -14920($fp)
	li $t0, 0
	sw $t0, -14924($fp)
	li $t0, 4
	lw $t1, -14924($fp)
	mul $t0, $t0, $t1
	sw $t0, -14928($fp)
	lw $t0, -14928($fp)
	lw $t1, -14920($fp)
	add $t0, $t0, $t1
	sw $t0, -14932($fp)
	lw $t0, -14932($fp)
	lw $t1, 0($t0)
	sw $t1, -14936($fp)
	lw $t0, -14936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -14940($fp)
	li $t0, 1
	sw $t0, -14944($fp)
	li $t0, 4
	lw $t1, -14944($fp)
	mul $t0, $t0, $t1
	sw $t0, -14948($fp)
	lw $t0, -14948($fp)
	lw $t1, -14940($fp)
	add $t0, $t0, $t1
	sw $t0, -14952($fp)
	lw $t0, -14952($fp)
	lw $t1, 0($t0)
	sw $t1, -14956($fp)
	lw $t0, -14956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -14960($fp)
	li $t0, 2
	sw $t0, -14964($fp)
	li $t0, 4
	lw $t1, -14964($fp)
	mul $t0, $t0, $t1
	sw $t0, -14968($fp)
	lw $t0, -14968($fp)
	lw $t1, -14960($fp)
	add $t0, $t0, $t1
	sw $t0, -14972($fp)
	lw $t0, -14972($fp)
	lw $t1, 0($t0)
	sw $t1, -14976($fp)
	lw $t0, -14976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1916($fp)
	sw $t0, -14980($fp)
	lw $t0, -14980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -14984($fp)
	lw $t0, -14984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -14988($fp)
	li $t0, 0
	sw $t0, -14992($fp)
	li $t0, 4
	lw $t1, -14992($fp)
	mul $t0, $t0, $t1
	sw $t0, -14996($fp)
	lw $t0, -14996($fp)
	lw $t1, -14988($fp)
	add $t0, $t0, $t1
	sw $t0, -15000($fp)
	lw $t0, -15000($fp)
	lw $t1, 0($t0)
	sw $t1, -15004($fp)
	lw $t0, -15004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -15008($fp)
	li $t0, 1
	sw $t0, -15012($fp)
	li $t0, 4
	lw $t1, -15012($fp)
	mul $t0, $t0, $t1
	sw $t0, -15016($fp)
	lw $t0, -15016($fp)
	lw $t1, -15008($fp)
	add $t0, $t0, $t1
	sw $t0, -15020($fp)
	lw $t0, -15020($fp)
	lw $t1, 0($t0)
	sw $t1, -15024($fp)
	lw $t0, -15024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -15028($fp)
	li $t0, 2
	sw $t0, -15032($fp)
	li $t0, 4
	lw $t1, -15032($fp)
	mul $t0, $t0, $t1
	sw $t0, -15036($fp)
	lw $t0, -15036($fp)
	lw $t1, -15028($fp)
	add $t0, $t0, $t1
	sw $t0, -15040($fp)
	lw $t0, -15040($fp)
	lw $t1, 0($t0)
	sw $t1, -15044($fp)
	lw $t0, -15044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -15048($fp)
	li $t0, 3
	sw $t0, -15052($fp)
	li $t0, 4
	lw $t1, -15052($fp)
	mul $t0, $t0, $t1
	sw $t0, -15056($fp)
	lw $t0, -15056($fp)
	lw $t1, -15048($fp)
	add $t0, $t0, $t1
	sw $t0, -15060($fp)
	lw $t0, -15060($fp)
	lw $t1, 0($t0)
	sw $t1, -15064($fp)
	lw $t0, -15064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -15068($fp)
	li $t0, 0
	sw $t0, -15072($fp)
	li $t0, 4
	lw $t1, -15072($fp)
	mul $t0, $t0, $t1
	sw $t0, -15076($fp)
	lw $t0, -15076($fp)
	lw $t1, -15068($fp)
	add $t0, $t0, $t1
	sw $t0, -15080($fp)
	lw $t0, -15080($fp)
	lw $t1, 0($t0)
	sw $t1, -15084($fp)
	lw $t0, -15084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -15088($fp)
	li $t0, 1
	sw $t0, -15092($fp)
	li $t0, 4
	lw $t1, -15092($fp)
	mul $t0, $t0, $t1
	sw $t0, -15096($fp)
	lw $t0, -15096($fp)
	lw $t1, -15088($fp)
	add $t0, $t0, $t1
	sw $t0, -15100($fp)
	lw $t0, -15100($fp)
	lw $t1, 0($t0)
	sw $t1, -15104($fp)
	lw $t0, -15104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -15108($fp)
	li $t0, 2
	sw $t0, -15112($fp)
	li $t0, 4
	lw $t1, -15112($fp)
	mul $t0, $t0, $t1
	sw $t0, -15116($fp)
	lw $t0, -15116($fp)
	lw $t1, -15108($fp)
	add $t0, $t0, $t1
	sw $t0, -15120($fp)
	lw $t0, -15120($fp)
	lw $t1, 0($t0)
	sw $t1, -15124($fp)
	lw $t0, -15124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2108($fp)
	sw $t0, -15128($fp)
	lw $t0, -15128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2120($fp)
	sw $t0, -15132($fp)
	lw $t0, -15132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2132($fp)
	sw $t0, -15136($fp)
	lw $t0, -15136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -15140($fp)
	li $t0, 0
	sw $t0, -15144($fp)
	li $t0, 4
	lw $t1, -15144($fp)
	mul $t0, $t0, $t1
	sw $t0, -15148($fp)
	lw $t0, -15148($fp)
	lw $t1, -15140($fp)
	add $t0, $t0, $t1
	sw $t0, -15152($fp)
	lw $t0, -15152($fp)
	lw $t1, 0($t0)
	sw $t1, -15156($fp)
	lw $t0, -15156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -15160($fp)
	li $t0, 1
	sw $t0, -15164($fp)
	li $t0, 4
	lw $t1, -15164($fp)
	mul $t0, $t0, $t1
	sw $t0, -15168($fp)
	lw $t0, -15168($fp)
	lw $t1, -15160($fp)
	add $t0, $t0, $t1
	sw $t0, -15172($fp)
	lw $t0, -15172($fp)
	lw $t1, 0($t0)
	sw $t1, -15176($fp)
	lw $t0, -15176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -15180($fp)
	li $t0, 2
	sw $t0, -15184($fp)
	li $t0, 4
	lw $t1, -15184($fp)
	mul $t0, $t0, $t1
	sw $t0, -15188($fp)
	lw $t0, -15188($fp)
	lw $t1, -15180($fp)
	add $t0, $t0, $t1
	sw $t0, -15192($fp)
	lw $t0, -15192($fp)
	lw $t1, 0($t0)
	sw $t1, -15196($fp)
	lw $t0, -15196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -15200($fp)
	li $t0, 3
	sw $t0, -15204($fp)
	li $t0, 4
	lw $t1, -15204($fp)
	mul $t0, $t0, $t1
	sw $t0, -15208($fp)
	lw $t0, -15208($fp)
	lw $t1, -15200($fp)
	add $t0, $t0, $t1
	sw $t0, -15212($fp)
	lw $t0, -15212($fp)
	lw $t1, 0($t0)
	sw $t1, -15216($fp)
	lw $t0, -15216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -15220($fp)
	li $t0, 4
	sw $t0, -15224($fp)
	li $t0, 4
	lw $t1, -15224($fp)
	mul $t0, $t0, $t1
	sw $t0, -15228($fp)
	lw $t0, -15228($fp)
	lw $t1, -15220($fp)
	add $t0, $t0, $t1
	sw $t0, -15232($fp)
	lw $t0, -15232($fp)
	lw $t1, 0($t0)
	sw $t1, -15236($fp)
	lw $t0, -15236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -15240($fp)
	li $t0, 5
	sw $t0, -15244($fp)
	li $t0, 4
	lw $t1, -15244($fp)
	mul $t0, $t0, $t1
	sw $t0, -15248($fp)
	lw $t0, -15248($fp)
	lw $t1, -15240($fp)
	add $t0, $t0, $t1
	sw $t0, -15252($fp)
	lw $t0, -15252($fp)
	lw $t1, 0($t0)
	sw $t1, -15256($fp)
	lw $t0, -15256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2288($fp)
	sw $t0, -15260($fp)
	lw $t0, -15260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2300($fp)
	sw $t0, -15264($fp)
	lw $t0, -15264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2312($fp)
	sw $t0, -15268($fp)
	lw $t0, -15268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2324($fp)
	sw $t0, -15272($fp)
	lw $t0, -15272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -15276($fp)
	li $t0, 0
	sw $t0, -15280($fp)
	li $t0, 4
	lw $t1, -15280($fp)
	mul $t0, $t0, $t1
	sw $t0, -15284($fp)
	lw $t0, -15284($fp)
	lw $t1, -15276($fp)
	add $t0, $t0, $t1
	sw $t0, -15288($fp)
	lw $t0, -15288($fp)
	lw $t1, 0($t0)
	sw $t1, -15292($fp)
	lw $t0, -15292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -15296($fp)
	li $t0, 1
	sw $t0, -15300($fp)
	li $t0, 4
	lw $t1, -15300($fp)
	mul $t0, $t0, $t1
	sw $t0, -15304($fp)
	lw $t0, -15304($fp)
	lw $t1, -15296($fp)
	add $t0, $t0, $t1
	sw $t0, -15308($fp)
	lw $t0, -15308($fp)
	lw $t1, 0($t0)
	sw $t1, -15312($fp)
	lw $t0, -15312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -15316($fp)
	li $t0, 2
	sw $t0, -15320($fp)
	li $t0, 4
	lw $t1, -15320($fp)
	mul $t0, $t0, $t1
	sw $t0, -15324($fp)
	lw $t0, -15324($fp)
	lw $t1, -15316($fp)
	add $t0, $t0, $t1
	sw $t0, -15328($fp)
	lw $t0, -15328($fp)
	lw $t1, 0($t0)
	sw $t1, -15332($fp)
	lw $t0, -15332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -15336($fp)
	li $t0, 3
	sw $t0, -15340($fp)
	li $t0, 4
	lw $t1, -15340($fp)
	mul $t0, $t0, $t1
	sw $t0, -15344($fp)
	lw $t0, -15344($fp)
	lw $t1, -15336($fp)
	add $t0, $t0, $t1
	sw $t0, -15348($fp)
	lw $t0, -15348($fp)
	lw $t1, 0($t0)
	sw $t1, -15352($fp)
	lw $t0, -15352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -15356($fp)
	li $t0, 4
	sw $t0, -15360($fp)
	li $t0, 4
	lw $t1, -15360($fp)
	mul $t0, $t0, $t1
	sw $t0, -15364($fp)
	lw $t0, -15364($fp)
	lw $t1, -15356($fp)
	add $t0, $t0, $t1
	sw $t0, -15368($fp)
	lw $t0, -15368($fp)
	lw $t1, 0($t0)
	sw $t1, -15372($fp)
	lw $t0, -15372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -15376($fp)
	li $t0, 5
	sw $t0, -15380($fp)
	li $t0, 4
	lw $t1, -15380($fp)
	mul $t0, $t0, $t1
	sw $t0, -15384($fp)
	lw $t0, -15384($fp)
	lw $t1, -15376($fp)
	add $t0, $t0, $t1
	sw $t0, -15388($fp)
	lw $t0, -15388($fp)
	lw $t1, 0($t0)
	sw $t1, -15392($fp)
	lw $t0, -15392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -15396($fp)
	li $t0, 6
	sw $t0, -15400($fp)
	li $t0, 4
	lw $t1, -15400($fp)
	mul $t0, $t0, $t1
	sw $t0, -15404($fp)
	lw $t0, -15404($fp)
	lw $t1, -15396($fp)
	add $t0, $t0, $t1
	sw $t0, -15408($fp)
	lw $t0, -15408($fp)
	lw $t1, 0($t0)
	sw $t1, -15412($fp)
	lw $t0, -15412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -15416($fp)
	li $t0, 7
	sw $t0, -15420($fp)
	li $t0, 4
	lw $t1, -15420($fp)
	mul $t0, $t0, $t1
	sw $t0, -15424($fp)
	lw $t0, -15424($fp)
	lw $t1, -15416($fp)
	add $t0, $t0, $t1
	sw $t0, -15428($fp)
	lw $t0, -15428($fp)
	lw $t1, 0($t0)
	sw $t1, -15432($fp)
	lw $t0, -15432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2528($fp)
	sw $t0, -15436($fp)
	lw $t0, -15436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2540($fp)
	sw $t0, -15440($fp)
	lw $t0, -15440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2552($fp)
	sw $t0, -15444($fp)
	lw $t0, -15444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2564($fp)
	sw $t0, -15448($fp)
	lw $t0, -15448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2576($fp)
	sw $t0, -15452($fp)
	lw $t0, -15452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2588($fp)
	sw $t0, -15456($fp)
	lw $t0, -15456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15460($fp)
	li $t0, 0
	sw $t0, -15464($fp)
	li $t0, 4
	lw $t1, -15464($fp)
	mul $t0, $t0, $t1
	sw $t0, -15468($fp)
	lw $t0, -15468($fp)
	lw $t1, -15460($fp)
	add $t0, $t0, $t1
	sw $t0, -15472($fp)
	lw $t0, -15472($fp)
	lw $t1, 0($t0)
	sw $t1, -15476($fp)
	lw $t0, -15476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15480($fp)
	li $t0, 1
	sw $t0, -15484($fp)
	li $t0, 4
	lw $t1, -15484($fp)
	mul $t0, $t0, $t1
	sw $t0, -15488($fp)
	lw $t0, -15488($fp)
	lw $t1, -15480($fp)
	add $t0, $t0, $t1
	sw $t0, -15492($fp)
	lw $t0, -15492($fp)
	lw $t1, 0($t0)
	sw $t1, -15496($fp)
	lw $t0, -15496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15500($fp)
	li $t0, 2
	sw $t0, -15504($fp)
	li $t0, 4
	lw $t1, -15504($fp)
	mul $t0, $t0, $t1
	sw $t0, -15508($fp)
	lw $t0, -15508($fp)
	lw $t1, -15500($fp)
	add $t0, $t0, $t1
	sw $t0, -15512($fp)
	lw $t0, -15512($fp)
	lw $t1, 0($t0)
	sw $t1, -15516($fp)
	lw $t0, -15516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15520($fp)
	li $t0, 3
	sw $t0, -15524($fp)
	li $t0, 4
	lw $t1, -15524($fp)
	mul $t0, $t0, $t1
	sw $t0, -15528($fp)
	lw $t0, -15528($fp)
	lw $t1, -15520($fp)
	add $t0, $t0, $t1
	sw $t0, -15532($fp)
	lw $t0, -15532($fp)
	lw $t1, 0($t0)
	sw $t1, -15536($fp)
	lw $t0, -15536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15540($fp)
	li $t0, 4
	sw $t0, -15544($fp)
	li $t0, 4
	lw $t1, -15544($fp)
	mul $t0, $t0, $t1
	sw $t0, -15548($fp)
	lw $t0, -15548($fp)
	lw $t1, -15540($fp)
	add $t0, $t0, $t1
	sw $t0, -15552($fp)
	lw $t0, -15552($fp)
	lw $t1, 0($t0)
	sw $t1, -15556($fp)
	lw $t0, -15556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15560($fp)
	li $t0, 5
	sw $t0, -15564($fp)
	li $t0, 4
	lw $t1, -15564($fp)
	mul $t0, $t0, $t1
	sw $t0, -15568($fp)
	lw $t0, -15568($fp)
	lw $t1, -15560($fp)
	add $t0, $t0, $t1
	sw $t0, -15572($fp)
	lw $t0, -15572($fp)
	lw $t1, 0($t0)
	sw $t1, -15576($fp)
	lw $t0, -15576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15580($fp)
	li $t0, 6
	sw $t0, -15584($fp)
	li $t0, 4
	lw $t1, -15584($fp)
	mul $t0, $t0, $t1
	sw $t0, -15588($fp)
	lw $t0, -15588($fp)
	lw $t1, -15580($fp)
	add $t0, $t0, $t1
	sw $t0, -15592($fp)
	lw $t0, -15592($fp)
	lw $t1, 0($t0)
	sw $t1, -15596($fp)
	lw $t0, -15596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15600($fp)
	li $t0, 7
	sw $t0, -15604($fp)
	li $t0, 4
	lw $t1, -15604($fp)
	mul $t0, $t0, $t1
	sw $t0, -15608($fp)
	lw $t0, -15608($fp)
	lw $t1, -15600($fp)
	add $t0, $t0, $t1
	sw $t0, -15612($fp)
	lw $t0, -15612($fp)
	lw $t1, 0($t0)
	sw $t1, -15616($fp)
	lw $t0, -15616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15620($fp)
	li $t0, 8
	sw $t0, -15624($fp)
	li $t0, 4
	lw $t1, -15624($fp)
	mul $t0, $t0, $t1
	sw $t0, -15628($fp)
	lw $t0, -15628($fp)
	lw $t1, -15620($fp)
	add $t0, $t0, $t1
	sw $t0, -15632($fp)
	lw $t0, -15632($fp)
	lw $t1, 0($t0)
	sw $t1, -15636($fp)
	lw $t0, -15636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2816($fp)
	sw $t0, -15640($fp)
	lw $t0, -15640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2828($fp)
	sw $t0, -15644($fp)
	lw $t0, -15644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2840($fp)
	sw $t0, -15648($fp)
	lw $t0, -15648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15652($fp)
	li $t0, 0
	sw $t0, -15656($fp)
	li $t0, 4
	lw $t1, -15656($fp)
	mul $t0, $t0, $t1
	sw $t0, -15660($fp)
	lw $t0, -15660($fp)
	lw $t1, -15652($fp)
	add $t0, $t0, $t1
	sw $t0, -15664($fp)
	lw $t0, -15664($fp)
	lw $t1, 0($t0)
	sw $t1, -15668($fp)
	lw $t0, -15668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15672($fp)
	li $t0, 1
	sw $t0, -15676($fp)
	li $t0, 4
	lw $t1, -15676($fp)
	mul $t0, $t0, $t1
	sw $t0, -15680($fp)
	lw $t0, -15680($fp)
	lw $t1, -15672($fp)
	add $t0, $t0, $t1
	sw $t0, -15684($fp)
	lw $t0, -15684($fp)
	lw $t1, 0($t0)
	sw $t1, -15688($fp)
	lw $t0, -15688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15692($fp)
	li $t0, 2
	sw $t0, -15696($fp)
	li $t0, 4
	lw $t1, -15696($fp)
	mul $t0, $t0, $t1
	sw $t0, -15700($fp)
	lw $t0, -15700($fp)
	lw $t1, -15692($fp)
	add $t0, $t0, $t1
	sw $t0, -15704($fp)
	lw $t0, -15704($fp)
	lw $t1, 0($t0)
	sw $t1, -15708($fp)
	lw $t0, -15708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2924($fp)
	sw $t0, -15712($fp)
	lw $t0, -15712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2936($fp)
	sw $t0, -15716($fp)
	lw $t0, -15716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -15720($fp)
	li $t0, 51640
	sw $t0, -15724($fp)
	lw $t1, -15724($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label747
label747:
	li $t0, 16233
	sw $t0, -15728($fp)
	lw $t1, -15728($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label746
label746:
	li $t0, 0
	sw $t0, -15732($fp)
	li $t0, 30363
	sw $t0, -15736($fp)
	lw $t0, -704($fp)
	sw $t0, -15740($fp)
	lw $t1, -15736($fp)
	lw $t2, -15740($fp)
	beq $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -15732($fp)
label750:
	li $t0, 19545
	sw $t0, -15744($fp)
	lw $t1, -15732($fp)
	lw $t2, -15744($fp)
	beq $t1, $t2, label748
	j label745
label748:
	lw $t0, -1796($fp)
	sw $t0, -15748($fp)
	lw $t0, -2108($fp)
	sw $t0, -15752($fp)
	lw $t0, -15748($fp)
	lw $t1, -15752($fp)
	sub $t0, $t0, $t1
	sw $t0, -15756($fp)
	lw $t1, -15756($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label745
label744:
	li $t0, 1
	sw $t0, -15720($fp)
label745:
	lw $ra, -4($fp)
	lw $v0, -15720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -36
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 60906
	sw $t0, -12($fp)
	li $t0, 1
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	mul $t0, $t0, $t1
	sw $t0, -20($fp)
	li $t0, 1
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	mul $t0, $t0, $t1
	sw $t0, -28($fp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -32($fp)
	addi $sp, $sp, 8
	lw $t1, -32($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label751
label751:
	li $t0, 1
	sw $t0, -8($fp)
label752:
	lw $t0, 4($fp)
	sw $t0, -36($fp)
	lw $t0, -8($fp)
	lw $t1, -36($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -40($fp)
	lw $ra, -4($fp)
	lw $v0, -40($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2264
	li $t0, 28661
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 729
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 14615
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 19533
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 15528
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 50168
	sw $t0, -136($fp)
	addi $t0, $fp, -8
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
	li $t0, 10331
	sw $t0, -160($fp)
	addi $t0, $fp, -44
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
	li $t0, 25001
	sw $t0, -184($fp)
	addi $t0, $fp, -44
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
	li $t0, 24742
	sw $t0, -208($fp)
	addi $t0, $fp, -44
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
	li $t0, 36844
	sw $t0, -232($fp)
	addi $t0, $fp, -44
	sw $t0, -236($fp)
	li $t0, 3
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
	li $t0, 43442
	sw $t0, -256($fp)
	addi $t0, $fp, -44
	sw $t0, -260($fp)
	li $t0, 4
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
	li $t0, 26527
	sw $t0, -280($fp)
	addi $t0, $fp, -44
	sw $t0, -284($fp)
	li $t0, 5
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
	li $t0, 29359
	sw $t0, -304($fp)
	addi $t0, $fp, -44
	sw $t0, -308($fp)
	li $t0, 6
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
	li $t0, 27208
	sw $t0, -328($fp)
	addi $t0, $fp, -44
	sw $t0, -332($fp)
	li $t0, 7
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
	li $t0, 3270
	sw $t0, -352($fp)
	addi $t0, $fp, -44
	sw $t0, -356($fp)
	li $t0, 8
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
	li $t0, 23612
	sw $t0, -376($fp)
	addi $t0, $fp, -68
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
	li $t0, 32648
	sw $t0, -400($fp)
	addi $t0, $fp, -68
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
	li $t0, 10326
	sw $t0, -424($fp)
	addi $t0, $fp, -68
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
	li $t0, 34648
	sw $t0, -448($fp)
	addi $t0, $fp, -68
	sw $t0, -452($fp)
	li $t0, 3
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
	li $t0, 53162
	sw $t0, -472($fp)
	addi $t0, $fp, -68
	sw $t0, -476($fp)
	li $t0, 4
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
	li $t0, 52647
	sw $t0, -496($fp)
	addi $t0, $fp, -68
	sw $t0, -500($fp)
	li $t0, 5
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
	li $t0, 30063
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 4829
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 60831
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 16167
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 21062
	sw $t0, -568($fp)
	addi $t0, $fp, -72
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
	li $t0, 25658
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 35713
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	addi $t0, $fp, -72
	sw $t0, -616($fp)
	lw $t0, -80($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -624($fp)
	li $t0, 4
	lw $t1, -624($fp)
	mul $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	lw $t1, -616($fp)
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	lw $t1, 0($t0)
	sw $t1, -636($fp)
	li $t0, 16433
	sw $t0, -640($fp)
	lw $t1, -636($fp)
	lw $t2, -640($fp)
	bne $t1, $t2, label753
	j label756
label756:
	lw $t0, -536($fp)
	sw $t0, -644($fp)
	li $t0, 62698
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	sub $t0, $t0, $t1
	sw $t0, -652($fp)
	li $t0, 0
	sw $t0, -656($fp)
	lw $t0, -608($fp)
	sw $t0, -660($fp)
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label757
label757:
	li $t0, 1
	sw $t0, -656($fp)
label758:
	lw $t1, -652($fp)
	lw $t2, -656($fp)
	beq $t1, $t2, label753
	j label754
label753:
	li $t0, 0
	sw $t0, -664($fp)
	jal f8
	sw $v0, -668($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -672($fp)
	lw $t0, -536($fp)
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label761
label761:
	li $t0, 1
	sw $t0, -672($fp)
label762:
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -680($fp)
	addi $t0, $fp, -44
	sw $t0, -684($fp)
	lw $t0, -104($fp)
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
	lw $t0, -680($fp)
	lw $t1, -700($fp)
	add $t0, $t0, $t1
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	li $t0, 0
	sw $t0, -712($fp)
	li $t0, 34896
	sw $t0, -716($fp)
	lw $t0, -92($fp)
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	li $t0, 0
	lw $t1, -724($fp)
	sub $t0, $t0, $t1
	sw $t0, -728($fp)
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -732($fp)
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -736($fp)
	lw $t1, -732($fp)
	lw $t2, -736($fp)
	bgt $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -712($fp)
label766:
	jal f8
	sw $v0, -740($fp)
	addi $sp, $sp, 4
	lw $t1, -712($fp)
	lw $t2, -740($fp)
	bgt $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -708($fp)
label764:
	lw $t1, -704($fp)
	lw $t2, -708($fp)
	beq $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -664($fp)
label760:
	j label755
label754:
label767:
	li $t0, 0
	sw $t0, -744($fp)
	li $t0, 45094
	sw $t0, -748($fp)
	li $t0, 0
	lw $t1, -748($fp)
	sub $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t1, -752($fp)
	li $t2, 0
	bne $t1, $t2, label771
	j label770
label770:
	li $t0, 1
	sw $t0, -744($fp)
label771:
	addi $t0, $fp, -72
	sw $t0, -756($fp)
	lw $t0, -608($fp)
	sw $t0, -760($fp)
	li $t0, 63427
	sw $t0, -764($fp)
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	li $t0, 4
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	lw $t1, -744($fp)
	lw $t2, -780($fp)
	bne $t1, $t2, label768
	j label769
label768:
	addi $t0, $fp, -68
	sw $t0, -784($fp)
	li $t0, 5
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
	lw $t0, -80($fp)
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	li $t0, 0
	sw $t0, -812($fp)
	li $t0, 13420
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label772
label772:
	li $t0, 1
	sw $t0, -812($fp)
label773:
	lw $t0, -808($fp)
	lw $t1, -812($fp)
	sub $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -824($fp)
	lw $ra, -4($fp)
	lw $v0, -824($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label767
label769:
label755:
	lw $t0, -80($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -848($fp)
	li $t0, 0
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
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -908($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -928($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -948($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -968($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -988($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -1008($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -1028($fp)
	li $t0, 8
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
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	lw $t0, -524($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1184($fp)
	li $t0, 0
	sw $t0, -1188($fp)
	li $t0, 4
	lw $t1, -1188($fp)
	mul $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	lw $t1, -1184($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	lw $t1, 0($t0)
	sw $t1, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1212($fp)
	li $t0, 34144
	sw $t0, -1216($fp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1220($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -1220($fp)
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	lw $t1, 0($t0)
	sw $t1, -1232($fp)
	li $t0, 0
	lw $t1, -1232($fp)
	sub $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $ra, -4($fp)
	lw $v0, -1236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 9422
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 38421
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 58886
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	addi $t0, $fp, -44
	sw $t0, -1276($fp)
	lw $t0, -560($fp)
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
	addi $t0, $fp, -68
	sw $t0, -1296($fp)
	li $t0, 0
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
	lw $t0, -1292($fp)
	lw $t1, -1312($fp)
	add $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label775
label774:
	li $t0, 0
	sw $t0, -1324($fp)
	jal f8
	sw $v0, -1328($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1332($fp)
	addi $t0, $fp, -44
	sw $t0, -1336($fp)
	lw $t0, -524($fp)
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
	lw $t0, -116($fp)
	sw $t0, -1356($fp)
	lw $t1, -1352($fp)
	lw $t2, -1356($fp)
	ble $t1, $t2, label779
	j label780
label779:
	li $t0, 1
	sw $t0, -1332($fp)
label780:
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1360($fp)
	addi $sp, $sp, 12
	li $t0, 10090
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1368($fp)
	lw $t0, -1268($fp)
	sw $t0, -1372($fp)
	li $t0, 19878
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -524($fp)
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1388($fp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1392($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1396($fp)
	lw $t0, -608($fp)
	sw $t0, -1400($fp)
	li $t0, 43536
	sw $t0, -1404($fp)
	lw $t0, -1400($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -80($fp)
	sw $t0, -1412($fp)
	lw $t1, -1408($fp)
	lw $t2, -1412($fp)
	blt $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -1396($fp)
label782:
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1416($fp)
	addi $sp, $sp, 8
	lw $t1, -1392($fp)
	lw $t2, -1416($fp)
	bge $t1, $t2, label777
	j label778
label777:
	li $t0, 1
	sw $t0, -1324($fp)
label778:
	j label776
label775:
	li $t0, 23148
	sw $t0, -1420($fp)
	li $t0, 0
	sw $t0, -1424($fp)
	lw $t0, -560($fp)
	sw $t0, -1428($fp)
	lw $t0, -596($fp)
	sw $t0, -1432($fp)
	li $t0, 0
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 33702
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label787
label787:
	li $t0, 10648
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -1440($fp)
label786:
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1440($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1452($fp)
	addi $sp, $sp, 12
	lw $t0, -1428($fp)
	lw $t1, -1452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1456($fp)
	li $t0, 0
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label783
label783:
	li $t0, 1
	sw $t0, -1424($fp)
label784:
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1464($fp)
label776:
	li $t0, 0
	sw $t0, -1468($fp)
	li $t0, 33475
	sw $t0, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label789
label791:
	li $t0, 2815
	sw $t0, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label789
label790:
	li $t0, 63810
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -1468($fp)
label789:
	addi $sp, $sp, -4
	lw $t0, -1468($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1484($fp)
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -1488($fp)
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1492($fp)
label792:
	li $t0, 0
	sw $t0, -1496($fp)
	lw $t0, -1256($fp)
	sw $t0, -1500($fp)
	li $t0, 20586
	sw $t0, -1504($fp)
	lw $t0, -1256($fp)
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1512($fp)
	lw $t1, -1500($fp)
	lw $t2, -1512($fp)
	bge $t1, $t2, label795
	j label796
label795:
	li $t0, 1
	sw $t0, -1496($fp)
label796:
	addi $t0, $fp, -44
	sw $t0, -1516($fp)
	li $t0, 6
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
	li $t0, 15881
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t1, -1496($fp)
	lw $t2, -1540($fp)
	ble $t1, $t2, label793
	j label794
label793:
	li $t0, 0
	sw $t0, -1544($fp)
	lw $t0, -1244($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -1552($fp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1556($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1560($fp)
	li $t0, 49046
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label800
label800:
	li $t0, 1
	sw $t0, -1560($fp)
label801:
	lw $t1, -1556($fp)
	lw $t2, -1560($fp)
	ble $t1, $t2, label799
	j label798
label799:
	addi $t0, $fp, -44
	sw $t0, -1568($fp)
	lw $t0, -80($fp)
	sw $t0, -1572($fp)
	li $t0, 0
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 4
	lw $t1, -1576($fp)
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -1544($fp)
label798:
	j label792
label794:
	lw $t0, -1244($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 24166
	sw $t0, -1604($fp)
	li $t0, 0
	sw $t0, -1608($fp)
	lw $t0, -92($fp)
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label802
label802:
	li $t0, 1
	sw $t0, -1608($fp)
label803:
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $ra, -4($fp)
	lw $v0, -1616($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 41539
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	li $t0, 19223
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label804
	j label805
label804:
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	lw $t0, -524($fp)
	sw $t0, -1644($fp)
	li $t0, 40599
	sw $t0, -1648($fp)
	lw $t0, -128($fp)
	sw $t0, -1652($fp)
	lw $t0, -1648($fp)
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t1, -1644($fp)
	lw $t2, -1656($fp)
	bge $t1, $t2, label810
	j label811
label810:
	li $t0, 1
	sw $t0, -1640($fp)
label811:
	lw $t0, -92($fp)
	sw $t0, -1660($fp)
	lw $t1, -1640($fp)
	lw $t2, -1660($fp)
	beq $t1, $t2, label809
	j label808
label809:
	li $t0, 0
	sw $t0, -1664($fp)
	lw $t0, -560($fp)
	sw $t0, -1668($fp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1672($fp)
	addi $sp, $sp, 8
	li $t0, 38701
	sw $t0, -1676($fp)
	lw $t1, -1672($fp)
	lw $t2, -1676($fp)
	beq $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -1664($fp)
label813:
	addi $sp, $sp, -4
	lw $t0, -1664($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1680($fp)
	addi $sp, $sp, 8
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label808
label807:
	li $t0, 1
	sw $t0, -1636($fp)
label808:
label805:
	li $t0, 0
	sw $t0, -1684($fp)
	addi $t0, $fp, -72
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	li $t0, 4
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, 0($t0)
	sw $t1, -1704($fp)
	li $t0, 36593
	sw $t0, -1708($fp)
	lw $t1, -1704($fp)
	lw $t2, -1708($fp)
	bne $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -1684($fp)
label815:
label816:
	li $t0, 0
	sw $t0, -1712($fp)
	li $t0, 38095
	sw $t0, -1716($fp)
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label821
label821:
	li $t0, 1
	sw $t0, -1712($fp)
label822:
	li $t0, 19248
	sw $t0, -1720($fp)
	lw $t0, -1712($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	li $t0, 50013
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label824
	j label823
label823:
	li $t0, 1
	sw $t0, -1728($fp)
label824:
	lw $t1, -1724($fp)
	lw $t2, -1728($fp)
	bne $t1, $t2, label820
	j label819
label820:
	lw $t0, -92($fp)
	sw $t0, -1736($fp)
	lw $t0, -608($fp)
	sw $t0, -1740($fp)
	lw $t0, -1736($fp)
	lw $t1, -1740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1744($fp)
	li $t0, 0
	lw $t1, -1744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label819
label819:
	jal f8
	sw $v0, -1752($fp)
	addi $sp, $sp, 4
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label818
label817:
	lw $t0, -116($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -1760($fp)
	j label816
label818:
	addi $t0, $fp, -8
	sw $t0, -1764($fp)
	li $t0, 0
	sw $t0, -1768($fp)
	li $t0, 6704
	sw $t0, -1772($fp)
	lw $t0, -116($fp)
	sw $t0, -1776($fp)
	lw $t1, -1772($fp)
	lw $t2, -1776($fp)
	bge $t1, $t2, label828
	j label829
label828:
	li $t0, 1
	sw $t0, -1768($fp)
label829:
	li $t0, 4
	lw $t1, -1768($fp)
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	lw $t0, -116($fp)
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 28671
	sw $t0, -1800($fp)
	li $t0, 0
	lw $t1, -1800($fp)
	sub $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t1, -1796($fp)
	lw $t2, -1804($fp)
	bgt $t1, $t2, label825
	j label826
label825:
	li $t0, 0
	sw $t0, -1808($fp)
	addi $t0, $fp, -72
	sw $t0, -1812($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label831
	j label830
label830:
	li $t0, 1
	sw $t0, -1808($fp)
label831:
	lw $ra, -4($fp)
	lw $v0, -1808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label827
label826:
	addi $t0, $fp, -44
	sw $t0, -1836($fp)
	li $t0, 0
	sw $t0, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	jal f8
	sw $v0, -1848($fp)
	addi $sp, $sp, 4
	lw $t0, -560($fp)
	sw $t0, -1852($fp)
	lw $t1, -1848($fp)
	lw $t2, -1852($fp)
	beq $t1, $t2, label834
	j label835
label834:
	li $t0, 1
	sw $t0, -1844($fp)
label835:
	lw $t0, -548($fp)
	sw $t0, -1856($fp)
	lw $t1, -1844($fp)
	lw $t2, -1856($fp)
	bne $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -1840($fp)
label833:
	li $t0, 4
	lw $t1, -1840($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
label827:
	lw $t0, -80($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -1892($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1912($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1932($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -1952($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -1972($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -1992($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -2012($fp)
	li $t0, 5
	sw $t0, -2016($fp)
	li $t0, 4
	lw $t1, -2016($fp)
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, 0($t0)
	sw $t1, -2028($fp)
	lw $t0, -2028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2032($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -2052($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -2072($fp)
	li $t0, 8
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
	addi $t0, $fp, -68
	sw $t0, -2092($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -2112($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
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
	lw $t0, -2148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2152($fp)
	li $t0, 3
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
	lw $t0, -2168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2172($fp)
	li $t0, 4
	sw $t0, -2176($fp)
	li $t0, 4
	lw $t1, -2176($fp)
	mul $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	lw $t1, -2172($fp)
	add $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	lw $t1, 0($t0)
	sw $t1, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2192($fp)
	li $t0, 5
	sw $t0, -2196($fp)
	li $t0, 4
	lw $t1, -2196($fp)
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	lw $t1, 0($t0)
	sw $t1, -2208($fp)
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2228($fp)
	li $t0, 0
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
	lw $t0, -596($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 39226
	sw $t0, -2256($fp)
	li $t0, 0
	lw $t1, -2256($fp)
	sub $t0, $t0, $t1
	sw $t0, -2260($fp)
	li $t0, 0
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -2268($fp)
	lw $ra, -4($fp)
	lw $v0, -2268($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -528
	li $t0, 19932
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
	li $t0, 19491
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
	li $t0, 17226
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
	li $t0, 43081
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
	li $t0, 53194
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
	li $t0, 27874
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
	li $t0, 11020
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
	li $t0, 56009
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
	li $t0, 26149
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
	li $t0, 31606
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
	addi $t0, $fp, -44
	sw $t0, -288($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -308($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -328($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -368($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -388($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -408($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -428($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -448($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -468($fp)
	li $t0, 9
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
	li $t0, 23351
	sw $t0, -492($fp)
	li $t0, 29253
	sw $t0, -496($fp)
	lw $t0, -492($fp)
	lw $t1, -496($fp)
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label837
label838:
	li $t0, 47487
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label837
label836:
	li $t0, 1
	sw $t0, -488($fp)
label837:
	li $t0, 0
	sw $t0, -508($fp)
	addi $t0, $fp, -44
	sw $t0, -512($fp)
	lw $t0, 4($fp)
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
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label839
label839:
	li $t0, 1
	sw $t0, -508($fp)
label840:
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -532($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -532($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4844
	li $t0, 6861
	sw $t0, -148($fp)
	addi $t0, $fp, -36
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
	li $t0, 53419
	sw $t0, -172($fp)
	addi $t0, $fp, -36
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
	li $t0, 23490
	sw $t0, -196($fp)
	addi $t0, $fp, -36
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
	li $t0, 26084
	sw $t0, -220($fp)
	addi $t0, $fp, -36
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
	li $t0, 28483
	sw $t0, -244($fp)
	addi $t0, $fp, -36
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
	li $t0, 62192
	sw $t0, -268($fp)
	addi $t0, $fp, -36
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
	li $t0, 14668
	sw $t0, -292($fp)
	addi $t0, $fp, -36
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
	li $t0, 48640
	sw $t0, -316($fp)
	addi $t0, $fp, -36
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
	li $t0, 33249
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 52763
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 2353
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
	li $t0, 17726
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 59467
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 31024
	sw $t0, -412($fp)
	addi $t0, $fp, -68
	sw $t0, -416($fp)
	li $t0, 0
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
	li $t0, 40624
	sw $t0, -436($fp)
	addi $t0, $fp, -68
	sw $t0, -440($fp)
	li $t0, 1
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
	li $t0, 59522
	sw $t0, -460($fp)
	addi $t0, $fp, -68
	sw $t0, -464($fp)
	li $t0, 2
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
	li $t0, 40425
	sw $t0, -484($fp)
	addi $t0, $fp, -68
	sw $t0, -488($fp)
	li $t0, 3
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
	li $t0, 14315
	sw $t0, -508($fp)
	addi $t0, $fp, -68
	sw $t0, -512($fp)
	li $t0, 4
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
	li $t0, 13918
	sw $t0, -532($fp)
	addi $t0, $fp, -68
	sw $t0, -536($fp)
	li $t0, 5
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
	li $t0, 59917
	sw $t0, -556($fp)
	addi $t0, $fp, -68
	sw $t0, -560($fp)
	li $t0, 6
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
	li $t0, 31541
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 56999
	sw $t0, -592($fp)
	addi $t0, $fp, -108
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
	li $t0, 47575
	sw $t0, -616($fp)
	addi $t0, $fp, -108
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
	li $t0, 59416
	sw $t0, -640($fp)
	addi $t0, $fp, -108
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
	li $t0, 2483
	sw $t0, -664($fp)
	addi $t0, $fp, -108
	sw $t0, -668($fp)
	li $t0, 3
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
	li $t0, 38048
	sw $t0, -688($fp)
	addi $t0, $fp, -108
	sw $t0, -692($fp)
	li $t0, 4
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
	li $t0, 20029
	sw $t0, -712($fp)
	addi $t0, $fp, -108
	sw $t0, -716($fp)
	li $t0, 5
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
	li $t0, 34089
	sw $t0, -736($fp)
	addi $t0, $fp, -108
	sw $t0, -740($fp)
	li $t0, 6
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
	li $t0, 61399
	sw $t0, -760($fp)
	addi $t0, $fp, -108
	sw $t0, -764($fp)
	li $t0, 7
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
	li $t0, 49282
	sw $t0, -784($fp)
	addi $t0, $fp, -108
	sw $t0, -788($fp)
	li $t0, 8
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
	li $t0, 16040
	sw $t0, -808($fp)
	addi $t0, $fp, -108
	sw $t0, -812($fp)
	li $t0, 9
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
	li $t0, 2725
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 37165
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 39531
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 28809
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 112
	sw $t0, -880($fp)
	addi $t0, $fp, -112
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
	li $t0, 36187
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 43477
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 48753
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 3900
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 30705
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 51106
	sw $t0, -964($fp)
	addi $t0, $fp, -144
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
	li $t0, 21626
	sw $t0, -988($fp)
	addi $t0, $fp, -144
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
	li $t0, 24636
	sw $t0, -1012($fp)
	addi $t0, $fp, -144
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
	li $t0, 16594
	sw $t0, -1036($fp)
	addi $t0, $fp, -144
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
	li $t0, 62250
	sw $t0, -1060($fp)
	addi $t0, $fp, -144
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
	li $t0, 18622
	sw $t0, -1084($fp)
	addi $t0, $fp, -144
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
	li $t0, 57019
	sw $t0, -1108($fp)
	addi $t0, $fp, -144
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
	li $t0, 11029
	sw $t0, -1132($fp)
	addi $t0, $fp, -144
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
	li $t0, 32541
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	li $t0, 51400
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 42571
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 24004
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 33439
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 36451
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 26488
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 5951
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 56480
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 60577
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
label841:
	lw $t0, -1208($fp)
	sw $t0, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label842
label842:
	lw $t0, -1172($fp)
	sw $t0, -1280($fp)
	li $t0, 1815
	sw $t0, -1284($fp)
	lw $t0, -1280($fp)
	lw $t1, -1284($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -404($fp)
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	addi $t0, $fp, -108
	sw $t0, -1300($fp)
	li $t0, 6
	sw $t0, -1304($fp)
	li $t0, 4
	lw $t1, -1304($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	lw $t0, -1296($fp)
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label844
	j label845
label844:
	li $t0, 4540
	sw $t0, -1328($fp)
	lw $ra, -4($fp)
	lw $v0, -1328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label846
label845:
	addi $t0, $fp, -112
	sw $t0, -1332($fp)
	li $t0, 0
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
label846:
	j label841
label843:
	li $t0, 33349
	sw $t0, -1352($fp)
	li $t0, 11968
	sw $t0, -1356($fp)
	lw $t0, -1352($fp)
	lw $t1, -1356($fp)
	mul $t0, $t0, $t1
	sw $t0, -1360($fp)
	li $t0, 21264
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1368($fp)
	lw $t1, -1368($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label848
label847:
	li $t0, 11291
	sw $t0, -1412($fp)
	addi $t0, $fp, -1408
	sw $t0, -1416($fp)
	li $t0, 0
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
	li $t0, 60721
	sw $t0, -1436($fp)
	addi $t0, $fp, -1408
	sw $t0, -1440($fp)
	li $t0, 1
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
	li $t0, 25164
	sw $t0, -1460($fp)
	addi $t0, $fp, -1408
	sw $t0, -1464($fp)
	li $t0, 2
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
	li $t0, 41996
	sw $t0, -1484($fp)
	addi $t0, $fp, -1408
	sw $t0, -1488($fp)
	li $t0, 3
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
	li $t0, 46291
	sw $t0, -1508($fp)
	addi $t0, $fp, -1408
	sw $t0, -1512($fp)
	li $t0, 4
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
	li $t0, 46790
	sw $t0, -1532($fp)
	addi $t0, $fp, -1408
	sw $t0, -1536($fp)
	li $t0, 5
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
	li $t0, 1096
	sw $t0, -1556($fp)
	addi $t0, $fp, -1408
	sw $t0, -1560($fp)
	li $t0, 6
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
	li $t0, 62885
	sw $t0, -1580($fp)
	addi $t0, $fp, -1408
	sw $t0, -1584($fp)
	li $t0, 7
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
	li $t0, 43504
	sw $t0, -1604($fp)
	addi $t0, $fp, -1408
	sw $t0, -1608($fp)
	li $t0, 8
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
	li $t0, 19719
	sw $t0, -1628($fp)
	addi $t0, $fp, -1408
	sw $t0, -1632($fp)
	li $t0, 9
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
	li $t0, 54368
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	li $t0, 54534
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	li $t0, 52260
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	lw $t0, -836($fp)
	sw $t0, -1692($fp)
	lw $t0, -1208($fp)
	sw $t0, -1696($fp)
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label851
label852:
	li $t0, 0
	sw $t0, -1704($fp)
	li $t0, 40233
	sw $t0, -1708($fp)
	lw $t0, -1256($fp)
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1668($fp)
	sw $t0, -1720($fp)
	lw $t1, -1716($fp)
	lw $t2, -1720($fp)
	blt $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -1704($fp)
label854:
	li $t0, 0
	sw $t0, -1724($fp)
	addi $t0, $fp, -1408
	sw $t0, -1728($fp)
	lw $t0, -1172($fp)
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
	lw $t0, -920($fp)
	sw $t0, -1748($fp)
	lw $t1, -1744($fp)
	lw $t2, -1748($fp)
	bgt $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -1724($fp)
label856:
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1752($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1752($fp)
	sub $t0, $t0, $t1
	sw $t0, -1756($fp)
	jal f8
	sw $v0, -1760($fp)
	addi $sp, $sp, 4
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label851
label850:
	li $t0, 1
	sw $t0, -1688($fp)
label851:
	li $t0, 0
	sw $t0, -1768($fp)
	lw $t0, -1208($fp)
	sw $t0, -1772($fp)
	li $t0, 0
	sw $t0, -1776($fp)
	lw $t0, -584($fp)
	sw $t0, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label859
label859:
	li $t0, 1
	sw $t0, -1776($fp)
label860:
	lw $t0, -1772($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	li $t0, 45509
	sw $t0, -1800($fp)
	lw $t0, -920($fp)
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	mul $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1184($fp)
	sw $t0, -1812($fp)
	lw $t1, -1808($fp)
	lw $t2, -1812($fp)
	bne $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -1796($fp)
label866:
	li $t0, 0
	sw $t0, -1816($fp)
	addi $t0, $fp, -36
	sw $t0, -1820($fp)
	lw $t0, -392($fp)
	sw $t0, -1824($fp)
	li $t0, 4
	lw $t1, -1824($fp)
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	lw $t1, 0($t0)
	sw $t1, -1836($fp)
	lw $t0, -944($fp)
	sw $t0, -1840($fp)
	li $t0, 0
	lw $t1, -1840($fp)
	sub $t0, $t0, $t1
	sw $t0, -1844($fp)
	li $t0, 0
	sw $t0, -1848($fp)
	lw $t0, -1184($fp)
	sw $t0, -1852($fp)
	lw $t0, -1172($fp)
	sw $t0, -1856($fp)
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	li $t0, 43340
	sw $t0, -1864($fp)
	lw $t1, -1860($fp)
	lw $t2, -1864($fp)
	bne $t1, $t2, label870
	j label871
label870:
	li $t0, 1
	sw $t0, -1848($fp)
label871:
	li $t0, 0
	sw $t0, -1868($fp)
	lw $t0, -584($fp)
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label872
label872:
	li $t0, 1
	sw $t0, -1868($fp)
label873:
	li $t0, 33654
	sw $t0, -1876($fp)
	lw $t0, -1868($fp)
	lw $t1, -1876($fp)
	sub $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	li $t0, 0
	sw $t0, -1888($fp)
	li $t0, 15903
	sw $t0, -1892($fp)
	lw $t0, -584($fp)
	sw $t0, -1896($fp)
	lw $t1, -1892($fp)
	lw $t2, -1896($fp)
	beq $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -1888($fp)
label878:
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1900($fp)
	addi $sp, $sp, 8
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label875
label876:
	lw $t0, -1160($fp)
	sw $t0, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label875
label874:
	li $t0, 1
	sw $t0, -1884($fp)
label875:
	lw $t0, -848($fp)
	sw $t0, -1908($fp)
	lw $t0, -1256($fp)
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	sub $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, 4($fp)
	sw $t0, -1920($fp)
	lw $t0, -1916($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, -356($fp)
	sw $t0, -1932($fp)
	li $t0, 0
	lw $t1, -1932($fp)
	sub $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1208($fp)
	sw $t0, -1940($fp)
	lw $t1, -1936($fp)
	lw $t2, -1940($fp)
	blt $t1, $t2, label879
	j label880
label879:
	li $t0, 1
	sw $t0, -1928($fp)
label880:
	lw $t0, -1184($fp)
	sw $t0, -1944($fp)
	lw $t0, -1208($fp)
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	sub $t0, $t0, $t1
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	li $t0, 14088
	sw $t0, -1960($fp)
	li $t0, 58964
	sw $t0, -1964($fp)
	lw $t0, -1960($fp)
	lw $t1, -1964($fp)
	sub $t0, $t0, $t1
	sw $t0, -1968($fp)
	li $t0, 32258
	sw $t0, -1972($fp)
	lw $t1, -1968($fp)
	lw $t2, -1972($fp)
	bne $t1, $t2, label881
	j label882
label881:
	li $t0, 1
	sw $t0, -1956($fp)
label882:
	lw $t0, -848($fp)
	sw $t0, -1976($fp)
	lw $t0, -860($fp)
	sw $t0, -1980($fp)
	lw $t0, -1976($fp)
	lw $t1, -1980($fp)
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1184($fp)
	sw $t0, -1988($fp)
	lw $t0, -1984($fp)
	lw $t1, -1988($fp)
	mul $t0, $t0, $t1
	sw $t0, -1992($fp)
	addi $sp, $sp, -4
	lw $t0, -1924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1996($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2000($fp)
	addi $sp, $sp, 24
	li $t0, 37216
	sw $t0, -2004($fp)
	li $t0, 0
	sw $t0, -2008($fp)
	li $t0, 2484
	sw $t0, -2012($fp)
	lw $t0, -392($fp)
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -860($fp)
	sw $t0, -2024($fp)
	lw $t1, -2020($fp)
	lw $t2, -2024($fp)
	bne $t1, $t2, label883
	j label884
label883:
	li $t0, 1
	sw $t0, -2008($fp)
label884:
	li $t0, 8136
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -2032($fp)
	addi $sp, $sp, -4
	lw $t0, -1836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2036($fp)
	addi $sp, $sp, 24
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label869
label869:
	li $t0, 20443
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -1816($fp)
label868:
	lw $t0, -1656($fp)
	sw $t0, -2044($fp)
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 10728
	sw $t0, -2052($fp)
	lw $t0, -836($fp)
	sw $t0, -2056($fp)
	lw $t0, -2052($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -1680($fp)
	sw $t0, -2064($fp)
	lw $t1, -2060($fp)
	lw $t2, -2064($fp)
	blt $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -2048($fp)
label886:
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 31569
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label890
	j label889
label889:
	li $t0, 1
	sw $t0, -2072($fp)
label890:
	lw $t0, -1172($fp)
	sw $t0, -2080($fp)
	lw $t1, -2072($fp)
	lw $t2, -2080($fp)
	beq $t1, $t2, label887
	j label888
label887:
	li $t0, 1
	sw $t0, -2068($fp)
label888:
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2084($fp)
	addi $sp, $sp, 24
	lw $t0, -1172($fp)
	sw $t0, -2088($fp)
	lw $t1, -2084($fp)
	lw $t2, -2088($fp)
	bne $t1, $t2, label863
	j label864
label863:
	li $t0, 1
	sw $t0, -1792($fp)
label864:
	lw $t0, -848($fp)
	sw $t0, -2092($fp)
	lw $t0, -848($fp)
	sw $t0, -2096($fp)
	lw $t0, -2092($fp)
	lw $t1, -2096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2100($fp)
	li $t0, 0
	lw $t1, -2100($fp)
	sub $t0, $t0, $t1
	sw $t0, -2104($fp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2108($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2112($fp)
	addi $sp, $sp, 12
	lw $t1, -2112($fp)
	li $t2, 0
	bne $t1, $t2, label862
	j label861
label861:
	li $t0, 1
	sw $t0, -1788($fp)
label862:
	addi $t0, $fp, -36
	sw $t0, -2116($fp)
	li $t0, 0
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
	lw $t0, -1160($fp)
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2144($fp)
	addi $sp, $sp, 8
	lw $t0, -1788($fp)
	lw $t1, -2144($fp)
	sub $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t1, -1784($fp)
	lw $t2, -2148($fp)
	blt $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -1768($fp)
label858:
	j label849
label848:
	li $t0, 9309
	sw $t0, -2152($fp)
	li $t0, 41543
	sw $t0, -2156($fp)
	lw $t0, -2152($fp)
	lw $t1, -2156($fp)
	sub $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -908($fp)
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	li $t0, 65083
	sw $t0, -2172($fp)
	lw $t0, -848($fp)
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2180($fp)
	li $t0, 52662
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -1244($fp)
	sw $t0, -2192($fp)
	li $t0, 0
	sw $t0, -2196($fp)
	li $t0, 49681
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label892
	j label891
label891:
	li $t0, 1
	sw $t0, -2196($fp)
label892:
	li $t0, 0
	lw $t1, -2196($fp)
	sub $t0, $t0, $t1
	sw $t0, -2204($fp)
	li $t0, 57477
	sw $t0, -2208($fp)
	lw $t0, -920($fp)
	sw $t0, -2212($fp)
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -1220($fp)
	sw $t0, -2220($fp)
	lw $t0, -2216($fp)
	lw $t1, -2220($fp)
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	addi $sp, $sp, -4
	lw $t0, -2168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2228($fp)
	addi $sp, $sp, 24
	li $t0, 33417
	sw $t0, -2232($fp)
	li $t0, 56099
	sw $t0, -2236($fp)
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2244($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2244($fp)
	sub $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2228($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	addi $t0, $fp, -68
	sw $t0, -2256($fp)
	li $t0, 6
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
	li $t0, 34067
	sw $t0, -2276($fp)
	lw $t0, -2272($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2284($fp)
	addi $sp, $sp, 8
	lw $t0, -2252($fp)
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
label849:
label893:
	lw $t0, -836($fp)
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	addi $t0, $fp, -40
	sw $t0, -2300($fp)
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 4
	lw $t1, -2304($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label896
label896:
	li $t0, 1
	sw $t0, -2296($fp)
label897:
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 23065
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label898
	j label899
label898:
	li $t0, 1
	sw $t0, -2324($fp)
label899:
	li $t0, 0
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2320($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label894
	j label895
label894:
	addi $t0, $fp, -36
	sw $t0, -2340($fp)
	li $t0, 0
	sw $t0, -2344($fp)
	lw $t0, -920($fp)
	sw $t0, -2348($fp)
	li $t0, 49083
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	sub $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label901
label902:
	li $t0, 59832
	sw $t0, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label900
	j label901
label900:
	li $t0, 1
	sw $t0, -2344($fp)
label901:
	li $t0, 4
	lw $t1, -2344($fp)
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	lw $t1, -2340($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, 0($t0)
	sw $t1, -2372($fp)
	li $t0, 0
	lw $t1, -2372($fp)
	sub $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $ra, -4($fp)
	lw $v0, -2376($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label893
label895:
	lw $t0, -1160($fp)
	sw $t0, -2380($fp)
	lw $t0, -1256($fp)
	sw $t0, -2384($fp)
	lw $t0, -2380($fp)
	lw $t1, -2384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2388($fp)
	addi $t0, $fp, -36
	sw $t0, -2392($fp)
	lw $t0, -1196($fp)
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
	lw $t0, -2388($fp)
	lw $t1, -2408($fp)
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -2416($fp)
	li $t0, 54634
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	li $t0, 59811
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	li $t0, 2432
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	li $t0, 57118
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	li $t0, 31492
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	li $t0, 16520
	sw $t0, -2488($fp)
	addi $t0, $fp, -2424
	sw $t0, -2492($fp)
	li $t0, 0
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2492($fp)
	lw $t1, -2500($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2488($fp)
	lw $t1, -2504($fp)
	sw $t0, 0($t1)
	lw $t0, -2504($fp)
	lw $t1, 0($t0)
	sw $t1, -2508($fp)
	li $t0, 50546
	sw $t0, -2512($fp)
	addi $t0, $fp, -2424
	sw $t0, -2516($fp)
	li $t0, 1
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
	li $t0, 63750
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
label903:
	addi $t0, $fp, -144
	sw $t0, -2548($fp)
	li $t0, 2
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
	lw $t0, -2480($fp)
	sw $t0, -2568($fp)
	lw $t1, -2564($fp)
	lw $t2, -2568($fp)
	bge $t1, $t2, label904
	j label906
label906:
	addi $t0, $fp, -40
	sw $t0, -2572($fp)
	lw $t0, 4($fp)
	sw $t0, -2576($fp)
	li $t0, 4
	lw $t1, -2576($fp)
	mul $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	lw $t1, 0($t0)
	sw $t1, -2588($fp)
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label905
label907:
	li $t0, 52866
	sw $t0, -2592($fp)
	lw $t0, -2540($fp)
	sw $t0, -2596($fp)
	lw $t1, -2592($fp)
	lw $t2, -2596($fp)
	bne $t1, $t2, label904
	j label905
label904:
	li $t0, 64174
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	sw $t0, -2620($fp)
	li $t0, 4435
	sw $t0, -2624($fp)
	addi $t0, $fp, -2608
	sw $t0, -2628($fp)
	li $t0, 0
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
	li $t0, 41123
	sw $t0, -2648($fp)
	addi $t0, $fp, -2608
	sw $t0, -2652($fp)
	li $t0, 1
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
	li $t0, 56115
	sw $t0, -2672($fp)
	addi $t0, $fp, -2608
	sw $t0, -2676($fp)
	li $t0, 2
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2676($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2672($fp)
	lw $t1, -2688($fp)
	sw $t0, 0($t1)
	lw $t0, -2688($fp)
	lw $t1, 0($t0)
	sw $t1, -2692($fp)
	li $t0, 54116
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	li $t0, 40670
	sw $t0, -2708($fp)
	addi $t0, $fp, -40
	sw $t0, -2712($fp)
	lw $t0, -584($fp)
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
	lw $t0, -2708($fp)
	lw $t1, -2728($fp)
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	li $t0, 0
	lw $t1, -2732($fp)
	sub $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label912
	j label909
label912:
	addi $t0, $fp, -108
	sw $t0, -2740($fp)
	lw $t0, -1172($fp)
	sw $t0, -2744($fp)
	li $t0, 4
	lw $t1, -2744($fp)
	mul $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, -2740($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, 0($t0)
	sw $t1, -2756($fp)
	lw $t0, -1244($fp)
	sw $t0, -2760($fp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2760($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2764($fp)
	addi $sp, $sp, 12
	lw $t1, -2764($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label911
label911:
	lw $t0, -404($fp)
	sw $t0, -2768($fp)
	li $t0, 0
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	li $t0, 0
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2468($fp)
	sw $t0, -2780($fp)
	lw $t0, -2776($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t1, -2784($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label909
label908:
label913:
	li $t0, 0
	sw $t0, -2788($fp)
	li $t0, 43242
	sw $t0, -2792($fp)
	li $t0, 0
	sw $t0, -2796($fp)
	li $t0, 63425
	sw $t0, -2800($fp)
	li $t0, 16678
	sw $t0, -2804($fp)
	lw $t1, -2800($fp)
	lw $t2, -2804($fp)
	ble $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -2796($fp)
label919:
	lw $t1, -2792($fp)
	lw $t2, -2796($fp)
	beq $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -2788($fp)
label917:
	li $t0, 11123
	sw $t0, -2808($fp)
	li $t0, 53988
	sw $t0, -2812($fp)
	lw $t0, -2808($fp)
	lw $t1, -2812($fp)
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2700($fp)
	sw $t0, -2820($fp)
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	li $t0, 0
	sw $t0, -2828($fp)
	lw $t0, -1268($fp)
	sw $t0, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label921
	j label920
label920:
	li $t0, 1
	sw $t0, -2828($fp)
label921:
	lw $t0, -2824($fp)
	lw $t1, -2828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2836($fp)
	lw $t1, -2788($fp)
	lw $t2, -2836($fp)
	beq $t1, $t2, label914
	j label915
label914:
	addi $t0, $fp, -36
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	addi $t0, $fp, -2608
	sw $t0, -2848($fp)
	li $t0, 0
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
	lw $t1, -2864($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label924
label925:
	lw $t0, -836($fp)
	sw $t0, -2868($fp)
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label924
label924:
	lw $t0, -1208($fp)
	sw $t0, -2872($fp)
	li $t0, 0
	lw $t1, -2872($fp)
	sub $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t1, -2876($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -2844($fp)
label923:
	li $t0, 4
	lw $t1, -2844($fp)
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	j label913
label915:
	j label910
label909:
	lw $t0, -836($fp)
	sw $t0, -2892($fp)
	lw $t0, -1208($fp)
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2900($fp)
	li $t0, 0
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2904($fp)
	li $t0, 22519
	sw $t0, -2908($fp)
	lw $t0, -2616($fp)
	sw $t0, -2912($fp)
	lw $t0, -2908($fp)
	lw $t1, -2912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2916($fp)
	lw $t0, -2904($fp)
	lw $t1, -2916($fp)
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2924($fp)
label910:
	j label903
label905:
	li $t0, 0
	sw $t0, -2928($fp)
	lw $t0, -1208($fp)
	sw $t0, -2932($fp)
	lw $t0, -956($fp)
	sw $t0, -2936($fp)
	lw $t0, -2932($fp)
	lw $t1, -2936($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label931
label931:
	li $t0, 56141
	sw $t0, -2944($fp)
	lw $t1, -2944($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label930
label929:
	li $t0, 1
	sw $t0, -2928($fp)
label930:
	li $t0, 0
	sw $t0, -2948($fp)
	lw $t0, -848($fp)
	sw $t0, -2952($fp)
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label933
	j label932
label932:
	li $t0, 1
	sw $t0, -2948($fp)
label933:
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2960($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2964($fp)
	li $t0, 61489
	sw $t0, -2968($fp)
	li $t0, 45585
	sw $t0, -2972($fp)
	lw $t0, -2968($fp)
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2976($fp)
	li $t0, 0
	lw $t1, -2976($fp)
	sub $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label934
label934:
	li $t0, 1
	sw $t0, -2964($fp)
label935:
	lw $t0, -2960($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label926
	j label927
label926:
label936:
	li $t0, 0
	sw $t0, -2988($fp)
	lw $t0, -1220($fp)
	sw $t0, -2992($fp)
	li $t0, 11276
	sw $t0, -2996($fp)
	lw $t1, -2992($fp)
	lw $t2, -2996($fp)
	bne $t1, $t2, label939
	j label941
label941:
	lw $t0, -848($fp)
	sw $t0, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -2988($fp)
label940:
	li $t0, 0
	sw $t0, -3004($fp)
	addi $t0, $fp, -2424
	sw $t0, -3008($fp)
	li $t0, 0
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
	lw $t0, -848($fp)
	sw $t0, -3028($fp)
	lw $t1, -3024($fp)
	lw $t2, -3028($fp)
	bne $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -3004($fp)
label943:
	li $t0, 58217
	sw $t0, -3032($fp)
	lw $t0, -2456($fp)
	sw $t0, -3036($fp)
	lw $t0, -3032($fp)
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	li $t0, 26266
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3048($fp)
	li $t0, 0
	sw $t0, -3052($fp)
	li $t0, 34683
	sw $t0, -3056($fp)
	lw $t0, -2444($fp)
	sw $t0, -3060($fp)
	lw $t0, -3056($fp)
	lw $t1, -3060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3064($fp)
	li $t0, 33963
	sw $t0, -3068($fp)
	lw $t1, -3064($fp)
	lw $t2, -3068($fp)
	ble $t1, $t2, label944
	j label945
label944:
	li $t0, 1
	sw $t0, -3052($fp)
label945:
	li $t0, 0
	sw $t0, -3072($fp)
	li $t0, 39688
	sw $t0, -3076($fp)
	lw $t0, -2432($fp)
	sw $t0, -3080($fp)
	lw $t1, -3076($fp)
	lw $t2, -3080($fp)
	ble $t1, $t2, label948
	j label947
label948:
	li $t0, 55785
	sw $t0, -3084($fp)
	lw $t1, -3084($fp)
	li $t2, 0
	bne $t1, $t2, label946
	j label947
label946:
	li $t0, 1
	sw $t0, -3072($fp)
label947:
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3088($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	li $t0, 0
	lw $t1, -3092($fp)
	sub $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label938
	j label937
label937:
	addi $t0, $fp, -36
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 0
	sw $t0, -3108($fp)
	lw $t0, -1244($fp)
	sw $t0, -3112($fp)
	lw $t0, -584($fp)
	sw $t0, -3116($fp)
	lw $t1, -3112($fp)
	lw $t2, -3116($fp)
	bgt $t1, $t2, label951
	j label952
label951:
	li $t0, 1
	sw $t0, -3108($fp)
label952:
	li $t0, 63669
	sw $t0, -3120($fp)
	lw $t1, -3108($fp)
	lw $t2, -3120($fp)
	ble $t1, $t2, label949
	j label950
label949:
	li $t0, 1
	sw $t0, -3104($fp)
label950:
	li $t0, 4
	lw $t1, -3104($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	li $t0, 0
	lw $t1, -3132($fp)
	sub $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $ra, -4($fp)
	lw $v0, -3136($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label936
label938:
	j label928
label927:
	lw $t0, -1244($fp)
	sw $t0, -3140($fp)
	li $t0, 0
	sw $t0, -3144($fp)
	lw $t0, -872($fp)
	sw $t0, -3148($fp)
	lw $t0, -944($fp)
	sw $t0, -3152($fp)
	lw $t0, -3148($fp)
	lw $t1, -3152($fp)
	sub $t0, $t0, $t1
	sw $t0, -3156($fp)
	li $t0, 41625
	sw $t0, -3160($fp)
	lw $t1, -3156($fp)
	lw $t2, -3160($fp)
	bgt $t1, $t2, label956
	j label957
label956:
	li $t0, 1
	sw $t0, -3144($fp)
label957:
	addi $sp, $sp, -4
	lw $t0, -3144($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3164($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3168($fp)
	lw $t0, -584($fp)
	sw $t0, -3172($fp)
	lw $t1, -3172($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label958
label958:
	li $t0, 1
	sw $t0, -3168($fp)
label959:
	lw $t0, -3164($fp)
	lw $t1, -3168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3176($fp)
	lw $t0, -3140($fp)
	lw $t1, -3176($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t1, -3180($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label954
label953:
	li $t0, 29941
	sw $t0, -3184($fp)
	lw $ra, -4($fp)
	lw $v0, -3184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label955
label954:
	li $t0, 0
	sw $t0, -3188($fp)
	addi $t0, $fp, -112
	sw $t0, -3192($fp)
	addi $t0, $fp, -2424
	sw $t0, -3196($fp)
	lw $t0, -1232($fp)
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
	li $t0, 39687
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	li $t0, 4
	lw $t1, -3220($fp)
	mul $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, -3192($fp)
	add $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	lw $t1, 0($t0)
	sw $t1, -3232($fp)
	lw $t0, -836($fp)
	sw $t0, -3236($fp)
	lw $t1, -3232($fp)
	lw $t2, -3236($fp)
	beq $t1, $t2, label960
	j label961
label960:
	li $t0, 1
	sw $t0, -3188($fp)
label961:
label955:
label928:
	li $t0, 28956
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -3252($fp)
	li $t0, 28579
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	sw $t0, -3264($fp)
	li $t0, 44122
	sw $t0, -3268($fp)
	addi $t0, $fp, -3240
	sw $t0, -3272($fp)
	li $t0, 0
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3272($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3268($fp)
	lw $t1, -3284($fp)
	sw $t0, 0($t1)
	lw $t0, -3284($fp)
	lw $t1, 0($t0)
	sw $t1, -3288($fp)
	li $t0, 0
	sw $t0, -3292($fp)
	li $t0, 0
	sw $t0, -3296($fp)
	li $t0, 0
	sw $t0, -3300($fp)
	lw $t0, -1268($fp)
	sw $t0, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label968
label969:
	li $t0, 19158
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label967
	j label968
label967:
	li $t0, 1
	sw $t0, -3300($fp)
label968:
	li $t0, 4543
	sw $t0, -3312($fp)
	lw $t0, -3260($fp)
	sw $t0, -3316($fp)
	lw $t0, -3312($fp)
	lw $t1, -3316($fp)
	mul $t0, $t0, $t1
	sw $t0, -3320($fp)
	addi $sp, $sp, -4
	lw $t0, -3300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3324($fp)
	addi $sp, $sp, 12
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label965
	j label966
label965:
	li $t0, 1
	sw $t0, -3296($fp)
label966:
	li $t0, 0
	sw $t0, -3328($fp)
	lw $t0, -836($fp)
	sw $t0, -3332($fp)
	li $t0, 0
	lw $t1, -3332($fp)
	sub $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label970
label970:
	li $t0, 1
	sw $t0, -3328($fp)
label971:
	lw $t1, -3296($fp)
	lw $t2, -3328($fp)
	bne $t1, $t2, label962
	j label964
label964:
	addi $t0, $fp, -3240
	sw $t0, -3340($fp)
	li $t0, 0
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
	lw $t0, -956($fp)
	sw $t0, -3360($fp)
	li $t0, 62400
	sw $t0, -3364($fp)
	lw $t0, -2468($fp)
	sw $t0, -3368($fp)
	lw $t0, -3364($fp)
	lw $t1, -3368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3372($fp)
	lw $t0, -1160($fp)
	sw $t0, -3376($fp)
	lw $t0, -3372($fp)
	lw $t1, -3376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3380($fp)
	lw $t0, -1184($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -3388($fp)
	li $t0, 32702
	sw $t0, -3392($fp)
	li $t0, 45213
	sw $t0, -3396($fp)
	lw $t0, -3392($fp)
	lw $t1, -3396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3400($fp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3404($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3404($fp)
	sub $t0, $t0, $t1
	sw $t0, -3408($fp)
	addi $sp, $sp, -4
	lw $t0, -3356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3408($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3412($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3416($fp)
	li $t0, 7988
	sw $t0, -3420($fp)
	li $t0, 19043
	sw $t0, -3424($fp)
	lw $t1, -3420($fp)
	lw $t2, -3424($fp)
	blt $t1, $t2, label972
	j label973
label972:
	li $t0, 1
	sw $t0, -3416($fp)
label973:
	lw $t1, -3412($fp)
	lw $t2, -3416($fp)
	beq $t1, $t2, label962
	j label963
label962:
	li $t0, 1
	sw $t0, -3292($fp)
label963:
	li $t0, 0
	sw $t0, -3428($fp)
	lw $t0, -920($fp)
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label975
label976:
	li $t0, 55673
	sw $t0, -3436($fp)
	li $t0, 49878
	sw $t0, -3440($fp)
	lw $t1, -3436($fp)
	lw $t2, -3440($fp)
	bne $t1, $t2, label974
	j label975
label974:
	li $t0, 1
	sw $t0, -3428($fp)
label975:
	lw $t0, -3428($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -3444($fp)
	addi $t0, $fp, -112
	sw $t0, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	lw $t0, -1208($fp)
	sw $t0, -3456($fp)
	li $t0, 41563
	sw $t0, -3460($fp)
	lw $t1, -3456($fp)
	lw $t2, -3460($fp)
	beq $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -3452($fp)
label978:
	li $t0, 4
	lw $t1, -3452($fp)
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, -3448($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, 0($t0)
	sw $t1, -3472($fp)
	jal f8
	sw $v0, -3476($fp)
	addi $sp, $sp, 4
	lw $t0, -3472($fp)
	lw $t1, -3476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3480($fp)
	li $t0, 0
	lw $t1, -3480($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	li $t0, 46278
	sw $t0, -3488($fp)
	li $t0, 0
	lw $t1, -3488($fp)
	sub $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -1244($fp)
	sw $t0, -3496($fp)
	lw $t0, -3492($fp)
	lw $t1, -3496($fp)
	add $t0, $t0, $t1
	sw $t0, -3500($fp)
	jal f8
	sw $v0, -3504($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3508($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3512($fp)
	li $t0, 45831
	sw $t0, -3516($fp)
	li $t0, 21612
	sw $t0, -3520($fp)
	li $t0, 0
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3516($fp)
	lw $t1, -3524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3528($fp)
	lw $t0, -584($fp)
	sw $t0, -3532($fp)
	lw $t1, -3528($fp)
	lw $t2, -3532($fp)
	beq $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -3512($fp)
label980:
label981:
	jal f8
	sw $v0, -3536($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3540($fp)
	li $t0, 0
	lw $t1, -3540($fp)
	sub $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t1, -3544($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label983
label984:
	lw $t0, -956($fp)
	sw $t0, -3548($fp)
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label982
	j label983
label982:
	lw $t0, -1160($fp)
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -3556($fp)
	j label981
label983:
	addi $t0, $fp, -36
	sw $t0, -3560($fp)
	li $t0, 0
	sw $t0, -3564($fp)
	li $t0, 0
	sw $t0, -3568($fp)
	lw $t0, -872($fp)
	sw $t0, -3572($fp)
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label988
	j label987
label987:
	li $t0, 1
	sw $t0, -3568($fp)
label988:
	lw $t0, -1232($fp)
	sw $t0, -3576($fp)
	lw $t1, -3568($fp)
	lw $t2, -3576($fp)
	bne $t1, $t2, label985
	j label986
label985:
	li $t0, 1
	sw $t0, -3564($fp)
label986:
	li $t0, 4
	lw $t1, -3564($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, -3560($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	lw $t0, -848($fp)
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -3596($fp)
	li $t0, 0
	sw $t0, -3600($fp)
	li $t0, 0
	sw $t0, -3604($fp)
	lw $t0, -836($fp)
	sw $t0, -3608($fp)
	lw $t1, -3608($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label991
label991:
	li $t0, 1
	sw $t0, -3604($fp)
label992:
	li $t0, 20430
	sw $t0, -3612($fp)
	lw $t1, -3604($fp)
	lw $t2, -3612($fp)
	ble $t1, $t2, label989
	j label990
label989:
	li $t0, 1
	sw $t0, -3600($fp)
label990:
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3600($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3616($fp)
	addi $sp, $sp, 12
	lw $t0, -3588($fp)
	lw $t1, -3616($fp)
	add $t0, $t0, $t1
	sw $t0, -3620($fp)
	li $t0, 36080
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -3632($fp)
	li $t0, 56295
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -3644($fp)
	li $t0, 54394
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	sw $t0, -3656($fp)
	li $t0, 28761
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	sw $t0, -3668($fp)
	li $t0, 0
	sw $t0, -3672($fp)
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 52447
	sw $t0, -3680($fp)
	li $t0, 14053
	sw $t0, -3684($fp)
	lw $t0, -3680($fp)
	lw $t1, -3684($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	li $t0, 58243
	sw $t0, -3692($fp)
	lw $t1, -3688($fp)
	lw $t2, -3692($fp)
	beq $t1, $t2, label996
	j label997
label996:
	li $t0, 1
	sw $t0, -3676($fp)
label997:
	li $t0, 0
	sw $t0, -3696($fp)
	li $t0, 37963
	sw $t0, -3700($fp)
	li $t0, 0
	lw $t1, -3700($fp)
	sub $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t1, -3704($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label1000
label1000:
	li $t0, 28302
	sw $t0, -3708($fp)
	lw $t1, -3708($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label999
label998:
	li $t0, 1
	sw $t0, -3696($fp)
label999:
	lw $t0, -356($fp)
	sw $t0, -3712($fp)
	addi $sp, $sp, -4
	lw $t0, -3712($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3716($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3720($fp)
	lw $t0, -872($fp)
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	li $t2, 0
	bne $t1, $t2, label1003
	j label1002
label1003:
	li $t0, 54313
	sw $t0, -3728($fp)
	lw $t1, -3728($fp)
	li $t2, 0
	bne $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 1
	sw $t0, -3720($fp)
label1002:
	li $t0, 0
	sw $t0, -3732($fp)
	li $t0, 17025
	sw $t0, -3736($fp)
	lw $t0, -3664($fp)
	sw $t0, -3740($fp)
	lw $t0, -3736($fp)
	lw $t1, -3740($fp)
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t1, -3744($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1005
label1006:
	lw $t0, -1220($fp)
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label1004
	j label1005
label1004:
	li $t0, 1
	sw $t0, -3732($fp)
label1005:
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3752($fp)
	addi $sp, $sp, 24
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label995
	j label994
label995:
	li $t0, 26598
	sw $t0, -3756($fp)
	addi $sp, $sp, -4
	lw $t0, -3756($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3760($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3760($fp)
	sub $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t1, -3764($fp)
	li $t2, 0
	bne $t1, $t2, label993
	j label994
label993:
	li $t0, 1
	sw $t0, -3672($fp)
label994:
	lw $t0, -3628($fp)
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3640($fp)
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3652($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3664($fp)
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 43009
	sw $t0, -3784($fp)
	li $t0, 0
	lw $t1, -3784($fp)
	sub $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $ra, -4($fp)
	lw $v0, -3788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	jal f8
	sw $v0, -3792($fp)
	addi $sp, $sp, 4
	lw $t0, -3792($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1008
label1007:
	addi $t0, $fp, -36
	sw $t0, -3800($fp)
	li $t0, 21286
	sw $t0, -3804($fp)
	lw $t0, -3664($fp)
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	li $t0, 5185
	sw $t0, -3816($fp)
	lw $t0, -3812($fp)
	lw $t1, -3816($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	li $t0, 4
	lw $t1, -3820($fp)
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	lw $t1, 0($t0)
	sw $t1, -3832($fp)
	lw $t0, -3628($fp)
	sw $t0, -3836($fp)
	lw $t0, -3832($fp)
	lw $t1, -3836($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	j label1009
label1008:
	li $t0, 47552
	sw $t0, -3844($fp)
label1009:
	li $t0, 40444
	sw $t0, -3848($fp)
	li $t0, 37887
	sw $t0, -3852($fp)
	lw $t1, -3848($fp)
	lw $t2, -3852($fp)
	ble $t1, $t2, label1016
	j label1013
label1016:
	lw $t0, -1244($fp)
	sw $t0, -3856($fp)
	lw $t1, -3856($fp)
	li $t2, 0
	bne $t1, $t2, label1015
	j label1013
label1015:
	li $t0, 27229
	sw $t0, -3860($fp)
	lw $t0, -3640($fp)
	sw $t0, -3864($fp)
	lw $t1, -3860($fp)
	lw $t2, -3864($fp)
	bne $t1, $t2, label1014
	j label1013
label1014:
	li $t0, 0
	sw $t0, -3868($fp)
	lw $t0, -848($fp)
	sw $t0, -3872($fp)
	lw $t0, -3652($fp)
	sw $t0, -3876($fp)
	lw $t1, -3872($fp)
	lw $t2, -3876($fp)
	blt $t1, $t2, label1017
	j label1018
label1017:
	li $t0, 1
	sw $t0, -3868($fp)
label1018:
	lw $t0, -860($fp)
	sw $t0, -3880($fp)
	lw $t1, -3868($fp)
	lw $t2, -3880($fp)
	beq $t1, $t2, label1010
	j label1013
label1013:
	addi $t0, $fp, -40
	sw $t0, -3884($fp)
	lw $t0, -1244($fp)
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
	lw $t1, -3900($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1011
label1019:
	li $t0, 37309
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label1011
	j label1010
label1010:
	li $t0, 0
	sw $t0, -3908($fp)
	lw $t0, -860($fp)
	sw $t0, -3912($fp)
	addi $t0, $fp, -144
	sw $t0, -3916($fp)
	li $t0, 1
	sw $t0, -3920($fp)
	li $t0, 4
	lw $t1, -3920($fp)
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	lw $t0, -1172($fp)
	sw $t0, -3936($fp)
	lw $t0, -3932($fp)
	lw $t1, -3936($fp)
	mul $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3912($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t1, -3944($fp)
	li $t2, 0
	bne $t1, $t2, label1020
	j label1022
label1022:
	lw $t0, -1208($fp)
	sw $t0, -3948($fp)
	lw $t0, -356($fp)
	sw $t0, -3952($fp)
	lw $t0, -3948($fp)
	lw $t1, -3952($fp)
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -908($fp)
	sw $t0, -3960($fp)
	lw $t0, -3956($fp)
	lw $t1, -3960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3964($fp)
	lw $t0, -1268($fp)
	sw $t0, -3968($fp)
	li $t0, 45297
	sw $t0, -3972($fp)
	lw $t0, -3968($fp)
	lw $t1, -3972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3976($fp)
	lw $t1, -3964($fp)
	lw $t2, -3976($fp)
	beq $t1, $t2, label1020
	j label1021
label1020:
	li $t0, 1
	sw $t0, -3908($fp)
label1021:
	j label1012
label1011:
	lw $t0, -1244($fp)
	sw $t0, -3980($fp)
	li $t0, 21986
	sw $t0, -3984($fp)
	lw $t0, -3980($fp)
	lw $t1, -3984($fp)
	mul $t0, $t0, $t1
	sw $t0, -3988($fp)
	li $t0, 13722
	sw $t0, -3992($fp)
	li $t0, 29639
	sw $t0, -3996($fp)
	lw $t0, -3992($fp)
	lw $t1, -3996($fp)
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -3988($fp)
	lw $t1, -4000($fp)
	sub $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -4008($fp)
label1012:
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	lw $t0, -344($fp)
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4180($fp)
	li $t0, 0
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
	lw $t0, -392($fp)
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
	sw $t0, -4248($fp)
	li $t0, 2
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
	lw $t0, -4264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4268($fp)
	li $t0, 3
	sw $t0, -4272($fp)
	li $t0, 4
	lw $t1, -4272($fp)
	mul $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	lw $t1, -4268($fp)
	add $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	lw $t1, 0($t0)
	sw $t1, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4288($fp)
	li $t0, 4
	sw $t0, -4292($fp)
	li $t0, 4
	lw $t1, -4292($fp)
	mul $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	lw $t1, -4288($fp)
	add $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	lw $t1, 0($t0)
	sw $t1, -4304($fp)
	lw $t0, -4304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4308($fp)
	li $t0, 5
	sw $t0, -4312($fp)
	li $t0, 4
	lw $t1, -4312($fp)
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	lw $t1, -4308($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	lw $t1, 0($t0)
	sw $t1, -4324($fp)
	lw $t0, -4324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4328($fp)
	li $t0, 6
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
	lw $t0, -584($fp)
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4352($fp)
	li $t0, 0
	sw $t0, -4356($fp)
	li $t0, 4
	lw $t1, -4356($fp)
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	lw $t1, -4352($fp)
	add $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	lw $t1, 0($t0)
	sw $t1, -4368($fp)
	lw $t0, -4368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
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
	lw $t0, -4388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4392($fp)
	li $t0, 2
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
	lw $t0, -4408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4412($fp)
	li $t0, 3
	sw $t0, -4416($fp)
	li $t0, 4
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4432($fp)
	li $t0, 4
	sw $t0, -4436($fp)
	li $t0, 4
	lw $t1, -4436($fp)
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	lw $t1, -4432($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	lw $t1, 0($t0)
	sw $t1, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4452($fp)
	li $t0, 5
	sw $t0, -4456($fp)
	li $t0, 4
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	lw $t0, -4468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4472($fp)
	li $t0, 6
	sw $t0, -4476($fp)
	li $t0, 4
	lw $t1, -4476($fp)
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, -4472($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	lw $t0, -4488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4492($fp)
	li $t0, 7
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
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4512($fp)
	li $t0, 8
	sw $t0, -4516($fp)
	li $t0, 4
	lw $t1, -4516($fp)
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	lw $t1, -4512($fp)
	add $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, 0($t0)
	sw $t1, -4528($fp)
	lw $t0, -4528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4532($fp)
	li $t0, 9
	sw $t0, -4536($fp)
	li $t0, 4
	lw $t1, -4536($fp)
	mul $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	lw $t1, -4532($fp)
	add $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	lw $t1, 0($t0)
	sw $t1, -4548($fp)
	lw $t0, -4548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4568($fp)
	li $t0, 0
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
	lw $t0, -908($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
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
	addi $t0, $fp, -144
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
	addi $t0, $fp, -144
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
	addi $t0, $fp, -144
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
	addi $t0, $fp, -144
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
	addi $t0, $fp, -144
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
	addi $t0, $fp, -144
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
	addi $t0, $fp, -144
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
	lw $t0, -1160($fp)
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1172($fp)
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4808($fp)
	li $t0, 0
	sw $t0, -4812($fp)
	li $t0, 0
	sw $t0, -4816($fp)
	li $t0, 63549
	sw $t0, -4820($fp)
	lw $t0, -356($fp)
	sw $t0, -4824($fp)
	lw $t0, -4820($fp)
	lw $t1, -4824($fp)
	add $t0, $t0, $t1
	sw $t0, -4828($fp)
	li $t0, 60001
	sw $t0, -4832($fp)
	lw $t1, -4828($fp)
	lw $t2, -4832($fp)
	beq $t1, $t2, label1025
	j label1026
label1025:
	li $t0, 1
	sw $t0, -4816($fp)
label1026:
	li $t0, 9934
	sw $t0, -4836($fp)
	lw $t1, -4816($fp)
	lw $t2, -4836($fp)
	bne $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 1
	sw $t0, -4812($fp)
label1024:
	li $t0, 4
	lw $t1, -4812($fp)
	mul $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	lw $t1, -4808($fp)
	add $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	lw $t1, 0($t0)
	sw $t1, -4848($fp)
	lw $ra, -4($fp)
	lw $v0, -4848($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2244
	li $t0, 19625
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 14895
	sw $t0, -44($fp)
	addi $t0, $fp, -8
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
	li $t0, 46014
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 10385
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 3753
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 9239
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 27410
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 58067
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 47203
	sw $t0, -140($fp)
	addi $t0, $fp, -28
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
	li $t0, 55712
	sw $t0, -164($fp)
	addi $t0, $fp, -28
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
	li $t0, 44978
	sw $t0, -188($fp)
	addi $t0, $fp, -28
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
	li $t0, 61256
	sw $t0, -212($fp)
	addi $t0, $fp, -28
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
	li $t0, 48419
	sw $t0, -236($fp)
	addi $t0, $fp, -28
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
	lw $t0, -36($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -264($fp)
	li $t0, 0
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
	lw $t0, -280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -8
	sw $t0, -408($fp)
	lw $t0, 8($fp)
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	lw $t0, -132($fp)
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label1028
	j label1027
label1027:
	li $t0, 1
	sw $t0, -416($fp)
label1028:
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -424($fp)
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	lw $t1, -424($fp)
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	li $t0, 4
	lw $t1, -428($fp)
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, 0($t0)
	sw $t1, -440($fp)
	lw $ra, -4($fp)
	lw $v0, -440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 6040
	sw $t0, -488($fp)
	addi $t0, $fp, -460
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
	li $t0, 38729
	sw $t0, -512($fp)
	addi $t0, $fp, -460
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
	li $t0, 4169
	sw $t0, -536($fp)
	addi $t0, $fp, -460
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
	li $t0, 11225
	sw $t0, -560($fp)
	addi $t0, $fp, -460
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
	li $t0, 20745
	sw $t0, -584($fp)
	addi $t0, $fp, -460
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
	li $t0, 44614
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 49113
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 47974
	sw $t0, -632($fp)
	addi $t0, $fp, -484
	sw $t0, -636($fp)
	li $t0, 0
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
	li $t0, 16387
	sw $t0, -656($fp)
	addi $t0, $fp, -484
	sw $t0, -660($fp)
	li $t0, 1
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
	li $t0, 52056
	sw $t0, -680($fp)
	addi $t0, $fp, -484
	sw $t0, -684($fp)
	li $t0, 2
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
	li $t0, 6023
	sw $t0, -704($fp)
	addi $t0, $fp, -484
	sw $t0, -708($fp)
	li $t0, 3
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
	li $t0, 61684
	sw $t0, -728($fp)
	addi $t0, $fp, -484
	sw $t0, -732($fp)
	li $t0, 4
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
	li $t0, 8506
	sw $t0, -752($fp)
	addi $t0, $fp, -484
	sw $t0, -756($fp)
	li $t0, 5
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
	li $t0, 19746
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 25787
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	addi $t0, $fp, -484
	sw $t0, -800($fp)
	lw $t0, -96($fp)
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
	lw $t0, -84($fp)
	sw $t0, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	mul $t0, $t0, $t1
	sw $t0, -824($fp)
	li $t0, 6520
	sw $t0, -828($fp)
	lw $t0, -824($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -612($fp)
	sw $t0, -836($fp)
	lw $t0, -832($fp)
	lw $t1, -836($fp)
	sub $t0, $t0, $t1
	sw $t0, -840($fp)
	li $t0, 0
	sw $t0, -844($fp)
	addi $t0, $fp, -28
	sw $t0, -848($fp)
	li $t0, 1
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
	bne $t1, $t2, label1030
	j label1029
label1029:
	li $t0, 1
	sw $t0, -844($fp)
label1030:
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -868($fp)
	li $t0, 26145
	sw $t0, -872($fp)
	li $t0, 0
	sw $t0, -876($fp)
	li $t0, 0
	sw $t0, -880($fp)
	li $t0, 16199
	sw $t0, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1036
label1037:
	lw $t0, -96($fp)
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1036
label1036:
	li $t0, 36530
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1035
label1034:
	li $t0, 1
	sw $t0, -880($fp)
label1035:
	addi $t0, $fp, -460
	sw $t0, -896($fp)
	lw $t0, -132($fp)
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
	lw $t0, -792($fp)
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	sub $t0, $t0, $t1
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	lw $t0, -624($fp)
	sw $t0, -932($fp)
	lw $t0, -36($fp)
	sw $t0, -936($fp)
	lw $t1, -932($fp)
	lw $t2, -936($fp)
	bne $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -928($fp)
label1041:
	li $t0, 29106
	sw $t0, -940($fp)
	lw $t1, -928($fp)
	lw $t2, -940($fp)
	bne $t1, $t2, label1038
	j label1039
label1038:
	li $t0, 1
	sw $t0, -924($fp)
label1039:
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -944($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -948($fp)
	addi $sp, $sp, 12
	lw $t1, -948($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1032
label1033:
	li $t0, 32860
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label1031
	j label1032
label1031:
	li $t0, 1
	sw $t0, -876($fp)
label1032:
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -956($fp)
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	lw $t1, -956($fp)
	mul $t0, $t0, $t1
	sw $t0, -960($fp)
	li $t0, 25438
	sw $t0, -964($fp)
	li $t0, 63941
	sw $t0, -968($fp)
	lw $t0, -964($fp)
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	li $t0, 1
	sw $t0, -976($fp)
	lw $t0, -972($fp)
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -960($fp)
	lw $t1, -980($fp)
	sub $t0, $t0, $t1
	sw $t0, -984($fp)
	li $t0, 0
	sw $t0, -988($fp)
	addi $t0, $fp, -28
	sw $t0, -992($fp)
	lw $t0, -96($fp)
	sw $t0, -996($fp)
	lw $t0, 8($fp)
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1004($fp)
	li $t0, 4
	lw $t1, -1004($fp)
	mul $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, 0($t0)
	sw $t1, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label1045
	j label1043
label1045:
	li $t0, 7105
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1043
label1044:
	li $t0, 54117
	sw $t0, -1024($fp)
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label1042
	j label1043
label1042:
	li $t0, 1
	sw $t0, -988($fp)
label1043:
	li $t0, 0
	sw $t0, -1028($fp)
	lw $t0, -36($fp)
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1046
label1046:
	li $t0, 1
	sw $t0, -1028($fp)
label1047:
	li $t0, 4833
	sw $t0, -1036($fp)
	lw $t0, -96($fp)
	sw $t0, -1040($fp)
	li $t0, 2825
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1048($fp)
	li $t0, 37001
	sw $t0, -1052($fp)
	lw $t0, -1048($fp)
	lw $t1, -1052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1056($fp)
	lw $t0, 8($fp)
	sw $t0, -1060($fp)
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1064($fp)
	addi $sp, $sp, 12
	lw $t0, -1036($fp)
	lw $t1, -1064($fp)
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
label1048:
	lw $t0, -96($fp)
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	lw $t0, 12($fp)
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label1052
	j label1051
label1051:
	li $t0, 1
	sw $t0, -1076($fp)
label1052:
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	li $t0, 0
	sw $t0, -1088($fp)
	jal f8
	sw $v0, -1092($fp)
	addi $sp, $sp, 4
	lw $t1, -1092($fp)
	li $t2, 0
	bne $t1, $t2, label1054
	j label1053
label1053:
	li $t0, 1
	sw $t0, -1088($fp)
label1054:
	lw $t0, -1084($fp)
	lw $t1, -1088($fp)
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -120($fp)
	sw $t0, -1100($fp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1104($fp)
	addi $sp, $sp, 8
	lw $t1, -1096($fp)
	lw $t2, -1104($fp)
	beq $t1, $t2, label1049
	j label1050
label1049:
	li $t0, 0
	sw $t0, -1108($fp)
	li $t0, 10873
	sw $t0, -1112($fp)
	li $t0, 5676
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -1120($fp)
	li $t0, 0
	sw $t0, -1124($fp)
	li $t0, 62299
	sw $t0, -1128($fp)
	lw $t0, -780($fp)
	sw $t0, -1132($fp)
	lw $t0, -1128($fp)
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label1060
	j label1059
label1060:
	li $t0, 20248
	sw $t0, -1140($fp)
	lw $t1, -1140($fp)
	li $t2, 0
	bne $t1, $t2, label1058
	j label1059
label1058:
	li $t0, 1
	sw $t0, -1124($fp)
label1059:
	li $t0, 0
	sw $t0, -1144($fp)
	li $t0, 41170
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label1063
	j label1062
label1063:
	li $t0, 22099
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -1144($fp)
label1062:
	li $t0, 0
	sw $t0, -1156($fp)
	li $t0, 0
	sw $t0, -1160($fp)
	lw $t0, 8($fp)
	sw $t0, -1164($fp)
	li $t0, 41554
	sw $t0, -1168($fp)
	lw $t1, -1164($fp)
	lw $t2, -1168($fp)
	bge $t1, $t2, label1066
	j label1067
label1066:
	li $t0, 1
	sw $t0, -1160($fp)
label1067:
	lw $t0, -792($fp)
	sw $t0, -1172($fp)
	lw $t1, -1160($fp)
	lw $t2, -1172($fp)
	ble $t1, $t2, label1064
	j label1065
label1064:
	li $t0, 1
	sw $t0, -1156($fp)
label1065:
	lw $t0, 8($fp)
	sw $t0, -1176($fp)
	addi $sp, $sp, -4
	lw $t0, -1120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1180($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1180($fp)
	sub $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1112($fp)
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t1, -1188($fp)
	li $t2, 0
	bne $t1, $t2, label1057
	j label1056
label1057:
	lw $t0, 8($fp)
	sw $t0, -1192($fp)
	li $t0, 0
	sw $t0, -1196($fp)
	li $t0, 44738
	sw $t0, -1200($fp)
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label1069
	j label1068
label1068:
	li $t0, 1
	sw $t0, -1196($fp)
label1069:
	lw $t0, -1192($fp)
	lw $t1, -1196($fp)
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	li $t0, 0
	lw $t1, -1204($fp)
	sub $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label1055
	j label1056
label1055:
	li $t0, 1
	sw $t0, -1108($fp)
label1056:
	j label1048
label1050:
	lw $t0, -36($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -1216($fp)
	li $t0, 0
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
	lw $t0, -72($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1260($fp)
	li $t0, 0
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
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1280($fp)
	li $t0, 1
	sw $t0, -1284($fp)
	li $t0, 4
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1300($fp)
	li $t0, 2
	sw $t0, -1304($fp)
	li $t0, 4
	lw $t1, -1304($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1320($fp)
	li $t0, 3
	sw $t0, -1324($fp)
	li $t0, 4
	lw $t1, -1324($fp)
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, -1320($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	lw $t1, 0($t0)
	sw $t1, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1340($fp)
	li $t0, 4
	sw $t0, -1344($fp)
	li $t0, 4
	lw $t1, -1344($fp)
	mul $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, 0($t0)
	sw $t1, -1356($fp)
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1360($fp)
	addi $t0, $fp, -8
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	lw $t0, -36($fp)
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label1074
	j label1073
label1073:
	li $t0, 1
	sw $t0, -1368($fp)
label1074:
	li $t0, 4
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	lw $t1, 0($t0)
	sw $t1, -1384($fp)
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 36635
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label1078
	j label1077
label1078:
	lw $t0, -108($fp)
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label1075
	j label1077
label1077:
	lw $t0, 8($fp)
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label1075
	j label1076
label1075:
	li $t0, 1
	sw $t0, -1388($fp)
label1076:
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1404($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, -84($fp)
	sw $t0, -1412($fp)
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label1079
	j label1081
label1081:
	lw $t0, -108($fp)
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label1079
	j label1080
label1079:
	li $t0, 1
	sw $t0, -1408($fp)
label1080:
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1420($fp)
	addi $sp, $sp, 12
	lw $t1, -1384($fp)
	lw $t2, -1420($fp)
	bne $t1, $t2, label1072
	j label1071
label1072:
	li $t0, 702
	sw $t0, -1424($fp)
	li $t0, 0
	sw $t0, -1428($fp)
	li $t0, 32783
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label1083
	j label1082
label1082:
	li $t0, 1
	sw $t0, -1428($fp)
label1083:
	li $t0, 0
	sw $t0, -1436($fp)
	jal f8
	sw $v0, -1440($fp)
	addi $sp, $sp, 4
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label1086
	j label1085
label1086:
	li $t0, 50761
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label1084
	j label1085
label1084:
	li $t0, 1
	sw $t0, -1436($fp)
label1085:
	jal f8
	sw $v0, -1448($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -108($fp)
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label1090
	j label1089
label1089:
	li $t0, 1
	sw $t0, -1456($fp)
label1090:
	li $t0, 57732
	sw $t0, -1464($fp)
	lw $t1, -1456($fp)
	lw $t2, -1464($fp)
	blt $t1, $t2, label1087
	j label1088
label1087:
	li $t0, 1
	sw $t0, -1452($fp)
label1088:
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1468($fp)
	addi $sp, $sp, 24
	lw $t0, -96($fp)
	sw $t0, -1472($fp)
	lw $t0, -1468($fp)
	lw $t1, -1472($fp)
	sub $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, 8($fp)
	sw $t0, -1480($fp)
	lw $t0, -1476($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label1070
	j label1071
label1070:
	li $t0, 1
	sw $t0, -1360($fp)
label1071:
	lw $ra, -4($fp)
	lw $v0, -1360($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1091:
	addi $t0, $fp, -28
	sw $t0, -1488($fp)
	lw $t0, -36($fp)
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	li $t0, 0
	sw $t0, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	li $t0, 19182
	sw $t0, -1508($fp)
	lw $t0, -72($fp)
	sw $t0, -1512($fp)
	lw $t1, -1508($fp)
	lw $t2, -1512($fp)
	ble $t1, $t2, label1099
	j label1100
label1099:
	li $t0, 1
	sw $t0, -1504($fp)
label1100:
	lw $t0, -108($fp)
	sw $t0, -1516($fp)
	lw $t1, -1504($fp)
	lw $t2, -1516($fp)
	beq $t1, $t2, label1097
	j label1098
label1097:
	li $t0, 1
	sw $t0, -1500($fp)
label1098:
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1520($fp)
	addi $sp, $sp, 8
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label1096
	j label1095
label1096:
	lw $t0, -96($fp)
	sw $t0, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label1094
	j label1095
label1094:
	li $t0, 1
	sw $t0, -1496($fp)
label1095:
	li $t0, 0
	sw $t0, -1528($fp)
	addi $t0, $fp, -28
	sw $t0, -1532($fp)
	lw $t0, 4($fp)
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
	li $t0, 7222
	sw $t0, -1552($fp)
	lw $t1, -1548($fp)
	lw $t2, -1552($fp)
	beq $t1, $t2, label1101
	j label1102
label1101:
	li $t0, 1
	sw $t0, -1528($fp)
label1102:
	addi $t0, $fp, -8
	sw $t0, -1556($fp)
	li $t0, 0
	sw $t0, -1560($fp)
	li $t0, 4
	lw $t1, -1560($fp)
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, 0($t0)
	sw $t1, -1572($fp)
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1576($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -1576($fp)
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label1092
	j label1093
label1092:
	li $t0, 28755
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	li $t0, 33368
	sw $t0, -1616($fp)
	addi $t0, $fp, -1600
	sw $t0, -1620($fp)
	li $t0, 0
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
	li $t0, 48289
	sw $t0, -1640($fp)
	addi $t0, $fp, -1600
	sw $t0, -1644($fp)
	li $t0, 1
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
	li $t0, 44954
	sw $t0, -1664($fp)
	addi $t0, $fp, -1600
	sw $t0, -1668($fp)
	li $t0, 2
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
	li $t0, 4362
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
label1103:
	addi $t0, $fp, -1600
	sw $t0, -1700($fp)
	li $t0, 2
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
	lw $t0, -96($fp)
	sw $t0, -1720($fp)
	lw $t0, -1716($fp)
	lw $t1, -1720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	li $t0, 2767
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label1109
	j label1108
label1108:
	li $t0, 1
	sw $t0, -1728($fp)
label1109:
	lw $t1, -1724($fp)
	lw $t2, -1728($fp)
	bgt $t1, $t2, label1107
	j label1105
label1107:
	li $t0, 41004
	sw $t0, -1736($fp)
	lw $t0, -96($fp)
	sw $t0, -1740($fp)
	lw $t0, -1736($fp)
	lw $t1, -1740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1744($fp)
	li $t0, 0
	lw $t1, -1744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label1106
	j label1105
label1106:
	li $t0, 0
	sw $t0, -1752($fp)
	li $t0, 11962
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label1111
	j label1110
label1110:
	li $t0, 1
	sw $t0, -1752($fp)
label1111:
	lw $t0, 8($fp)
	sw $t0, -1760($fp)
	lw $t0, -1752($fp)
	lw $t1, -1760($fp)
	sub $t0, $t0, $t1
	sw $t0, -1764($fp)
	li $t0, 0
	sw $t0, -1768($fp)
	li $t0, 56885
	sw $t0, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label1113
	j label1112
label1112:
	li $t0, 1
	sw $t0, -1768($fp)
label1113:
	lw $t1, -1764($fp)
	lw $t2, -1768($fp)
	bne $t1, $t2, label1104
	j label1105
label1104:
label1114:
	lw $t0, -1608($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -1780($fp)
	li $t0, 13273
	sw $t0, -1784($fp)
	li $t0, 56710
	sw $t0, -1788($fp)
	li $t0, 56342
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 3984
	sw $t0, -1800($fp)
	lw $t0, -1796($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1808($fp)
	addi $sp, $sp, 12
	li $t0, 14788
	sw $t0, -1812($fp)
	lw $t0, -1692($fp)
	sw $t0, -1816($fp)
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1820($fp)
	lw $t0, 16($fp)
	sw $t0, -1824($fp)
	lw $t0, -1820($fp)
	lw $t1, -1824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1828($fp)
	addi $sp, $sp, -4
	lw $t0, -1828($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1832($fp)
	addi $sp, $sp, 8
	li $t0, 28350
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	li $t0, 45837
	sw $t0, -1844($fp)
	li $t0, 0
	lw $t1, -1844($fp)
	sub $t0, $t0, $t1
	sw $t0, -1848($fp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1852($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1852($fp)
	sub $t0, $t0, $t1
	sw $t0, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 53106
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label1118
	j label1117
label1117:
	li $t0, 1
	sw $t0, -1860($fp)
label1118:
	lw $t1, -1856($fp)
	lw $t2, -1860($fp)
	blt $t1, $t2, label1115
	j label1116
label1115:
	li $t0, 24233
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	li $t0, 0
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	lw $t0, -96($fp)
	sw $t0, -1888($fp)
	lw $t0, -108($fp)
	sw $t0, -1892($fp)
	lw $t1, -1888($fp)
	lw $t2, -1892($fp)
	bne $t1, $t2, label1121
	j label1123
label1123:
	li $t0, 32308
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label1121
	j label1122
label1121:
	li $t0, 1
	sw $t0, -1884($fp)
label1122:
	li $t0, 0
	sw $t0, -1900($fp)
	li $t0, 18949
	sw $t0, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label1124
	j label1126
label1126:
	lw $t0, 8($fp)
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label1124
	j label1125
label1124:
	li $t0, 1
	sw $t0, -1900($fp)
label1125:
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1912($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1912($fp)
	sub $t0, $t0, $t1
	sw $t0, -1916($fp)
	li $t0, 0
	lw $t1, -1916($fp)
	sub $t0, $t0, $t1
	sw $t0, -1920($fp)
	li $t0, 0
	sw $t0, -1924($fp)
	lw $t0, -1872($fp)
	sw $t0, -1928($fp)
	li $t0, 0
	lw $t1, -1928($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label1128
	j label1127
label1127:
	li $t0, 1
	sw $t0, -1924($fp)
label1128:
	lw $t0, -96($fp)
	sw $t0, -1936($fp)
	li $t0, 0
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1924($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t1, -1920($fp)
	lw $t2, -1944($fp)
	ble $t1, $t2, label1119
	j label1120
label1119:
	li $t0, 1
	sw $t0, -1880($fp)
label1120:
	li $t0, 0
	sw $t0, -1948($fp)
	addi $t0, $fp, -28
	sw $t0, -1952($fp)
	lw $t0, -96($fp)
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
	li $t0, 0
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -96($fp)
	sw $t0, -1980($fp)
	li $t0, 0
	lw $t1, -1980($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label1132
	j label1131
label1131:
	li $t0, 1
	sw $t0, -1976($fp)
label1132:
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	li $t0, 0
	sw $t0, -1992($fp)
	li $t0, 60868
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label1134
	j label1133
label1133:
	li $t0, 1
	sw $t0, -1992($fp)
label1134:
	addi $t0, $fp, -1600
	sw $t0, -2000($fp)
	lw $t0, -36($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2020($fp)
	addi $sp, $sp, 8
	lw $t0, -1992($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t1, -1988($fp)
	lw $t2, -2024($fp)
	bne $t1, $t2, label1129
	j label1130
label1129:
	li $t0, 1
	sw $t0, -1948($fp)
label1130:
	li $t0, 28116
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	li $t0, 11145
	sw $t0, -2040($fp)
	li $t0, 17533
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label1137
	j label1136
label1137:
	lw $t0, -120($fp)
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label1135
	j label1136
label1135:
	li $t0, 1
	sw $t0, -2036($fp)
label1136:
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2056($fp)
	addi $sp, $sp, 12
	j label1114
label1116:
	j label1103
label1105:
	j label1091
label1093:
	lw $t0, -36($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 4
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	li $t0, 0
	sw $t0, -2208($fp)
	li $t0, 11848
	sw $t0, -2212($fp)
	li $t0, 22505
	sw $t0, -2216($fp)
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	li $t0, 1
	sw $t0, -2224($fp)
	lw $t0, -2220($fp)
	lw $t1, -2224($fp)
	mul $t0, $t0, $t1
	sw $t0, -2228($fp)
	li $t0, 1
	sw $t0, -2232($fp)
	lw $t0, -2228($fp)
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, 12($fp)
	sw $t0, -2240($fp)
	lw $t0, -2236($fp)
	lw $t1, -2240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2244($fp)
	li $t0, 41687
	sw $t0, -2248($fp)
	lw $t1, -2244($fp)
	lw $t2, -2248($fp)
	bge $t1, $t2, label1138
	j label1139
label1138:
	li $t0, 1
	sw $t0, -2208($fp)
label1139:
	lw $ra, -4($fp)
	lw $v0, -2208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -684
	li $t0, 49906
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
	li $t0, 52438
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
	li $t0, 24440
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
	li $t0, 29324
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
	li $t0, 56801
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
	li $t0, 40053
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
	li $t0, 34181
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
	li $t0, 59568
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
	sw $t0, -372($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -392($fp)
	li $t0, 15521
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label1141
	j label1140
label1140:
	li $t0, 1
	sw $t0, -392($fp)
label1141:
	lw $ra, -4($fp)
	lw $v0, -392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -400($fp)
	lw $t0, 8($fp)
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label1143
	j label1142
label1142:
	li $t0, 1
	sw $t0, -400($fp)
label1143:
	lw $t0, 8($fp)
	sw $t0, -408($fp)
	li $t0, 46144
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -416($fp)
	lw $t0, -400($fp)
	lw $t1, -416($fp)
	sub $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, 8($fp)
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	sub $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, 4($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -436($fp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -440($fp)
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	lw $t1, -440($fp)
	add $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $ra, -4($fp)
	lw $v0, -444($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
	sw $t0, -468($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -488($fp)
	li $t0, 2
	sw $t0, -492($fp)
	li $t0, 4
	lw $t1, -492($fp)
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t1, -488($fp)
	add $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, 0($t0)
	sw $t1, -504($fp)
	lw $t0, -504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -508($fp)
	li $t0, 3
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
	lw $t0, -524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -528($fp)
	li $t0, 4
	sw $t0, -532($fp)
	li $t0, 4
	lw $t1, -532($fp)
	mul $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	lw $t1, -528($fp)
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, 0($t0)
	sw $t1, -544($fp)
	lw $t0, -544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -548($fp)
	li $t0, 5
	sw $t0, -552($fp)
	li $t0, 4
	lw $t1, -552($fp)
	mul $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	lw $t1, -548($fp)
	add $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	lw $t1, 0($t0)
	sw $t1, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -568($fp)
	li $t0, 6
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
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -588($fp)
	li $t0, 7
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
	lw $t0, -604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 16($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -612($fp)
	lw $t0, 16($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -620($fp)
	addi $t0, $fp, -36
	sw $t0, -624($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -644($fp)
	li $t0, 0
	sw $t0, -648($fp)
	li $t0, 61358
	sw $t0, -652($fp)
	lw $t0, 12($fp)
	sw $t0, -656($fp)
	lw $t1, -652($fp)
	lw $t2, -656($fp)
	bgt $t1, $t2, label1146
	j label1147
label1146:
	li $t0, 1
	sw $t0, -648($fp)
label1147:
	li $t0, 60932
	sw $t0, -660($fp)
	lw $t1, -648($fp)
	lw $t2, -660($fp)
	ble $t1, $t2, label1144
	j label1145
label1144:
	li $t0, 1
	sw $t0, -644($fp)
label1145:
	li $t0, 0
	sw $t0, -664($fp)
	lw $t0, 16($fp)
	sw $t0, -668($fp)
	li $t0, 50917
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label1148
	j label1150
label1150:
	lw $t0, 16($fp)
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label1148
	j label1149
label1148:
	li $t0, 1
	sw $t0, -664($fp)
label1149:
	addi $sp, $sp, -4
	lw $t0, -612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -664($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -684($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -684($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -688($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1504
	li $t0, 51738
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 17716
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 270
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 39308
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 41949
	sw $t0, -92($fp)
	addi $t0, $fp, -40
	sw $t0, -96($fp)
	li $t0, 0
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
	li $t0, 19220
	sw $t0, -116($fp)
	addi $t0, $fp, -40
	sw $t0, -120($fp)
	li $t0, 1
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
	li $t0, 6080
	sw $t0, -140($fp)
	addi $t0, $fp, -40
	sw $t0, -144($fp)
	li $t0, 2
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
	li $t0, 37281
	sw $t0, -164($fp)
	addi $t0, $fp, -40
	sw $t0, -168($fp)
	li $t0, 3
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
	li $t0, 30365
	sw $t0, -188($fp)
	addi $t0, $fp, -40
	sw $t0, -192($fp)
	li $t0, 4
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
	li $t0, 23614
	sw $t0, -212($fp)
	addi $t0, $fp, -40
	sw $t0, -216($fp)
	li $t0, 5
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
	li $t0, 65397
	sw $t0, -236($fp)
	addi $t0, $fp, -40
	sw $t0, -240($fp)
	li $t0, 6
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
	li $t0, 42213
	sw $t0, -260($fp)
	addi $t0, $fp, -40
	sw $t0, -264($fp)
	li $t0, 7
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
	li $t0, 46119
	sw $t0, -284($fp)
	addi $t0, $fp, -40
	sw $t0, -288($fp)
	li $t0, 8
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
	li $t0, 21012
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 61284
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 22270
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 5382
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -48($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -372($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -392($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -412($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -432($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -452($fp)
	li $t0, 4
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
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -472($fp)
	li $t0, 5
	sw $t0, -476($fp)
	li $t0, 4
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	lw $t0, -488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -492($fp)
	li $t0, 6
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
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -512($fp)
	li $t0, 7
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
	lw $t0, -528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -532($fp)
	li $t0, 8
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
	lw $t0, -548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -568($fp)
	li $t0, 48186
	sw $t0, -572($fp)
	lw $t0, -312($fp)
	sw $t0, -576($fp)
	lw $t1, -572($fp)
	lw $t2, -576($fp)
	bne $t1, $t2, label1156
	j label1155
label1156:
	lw $t0, -72($fp)
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label1151
	j label1155
label1155:
	lw $t0, -84($fp)
	sw $t0, -584($fp)
	li $t0, 46711
	sw $t0, -588($fp)
	lw $t1, -584($fp)
	lw $t2, -588($fp)
	beq $t1, $t2, label1151
	j label1154
label1154:
	lw $t0, -84($fp)
	sw $t0, -592($fp)
	li $t0, 34706
	sw $t0, -596($fp)
	lw $t0, -592($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	li $t0, 39451
	sw $t0, -604($fp)
	lw $t0, -600($fp)
	lw $t1, -604($fp)
	sub $t0, $t0, $t1
	sw $t0, -608($fp)
	addi $sp, $sp, -4
	lw $t0, -608($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -612($fp)
	addi $sp, $sp, 8
	li $t0, 21228
	sw $t0, -616($fp)
	lw $t0, -612($fp)
	lw $t1, -616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -620($fp)
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label1151
	j label1153
label1153:
	li $t0, 3352
	sw $t0, -624($fp)
	lw $t0, -84($fp)
	sw $t0, -628($fp)
	lw $t0, -624($fp)
	lw $t1, -628($fp)
	sub $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -72($fp)
	sw $t0, -636($fp)
	lw $t0, -632($fp)
	lw $t1, -636($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -60($fp)
	sw $t0, -644($fp)
	lw $t0, -336($fp)
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -652($fp)
	lw $t1, -640($fp)
	lw $t2, -652($fp)
	blt $t1, $t2, label1151
	j label1152
label1151:
	li $t0, 1
	sw $t0, -568($fp)
label1152:
	lw $ra, -4($fp)
	lw $v0, -568($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -48($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	li $t0, 4
	lw $t1, -676($fp)
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, -672($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	lw $t1, 0($t0)
	sw $t1, -688($fp)
	lw $t0, -688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -692($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -712($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -732($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -752($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -772($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -792($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -812($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -832($fp)
	li $t0, 8
	sw $t0, -836($fp)
	li $t0, 4
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, 0($t0)
	sw $t1, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -868($fp)
	li $t0, 0
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $ra, -4($fp)
	lw $v0, -872($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -48($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -892($fp)
	li $t0, 0
	sw $t0, -896($fp)
	li $t0, 4
	lw $t1, -896($fp)
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, 0($t0)
	sw $t1, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -912($fp)
	li $t0, 1
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
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -932($fp)
	li $t0, 2
	sw $t0, -936($fp)
	li $t0, 4
	lw $t1, -936($fp)
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, 0($t0)
	sw $t1, -948($fp)
	lw $t0, -948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -952($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -972($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -992($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -1012($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -1032($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -1052($fp)
	li $t0, 8
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
	lw $t0, -312($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1088($fp)
	li $t0, 0
	sw $t0, -1092($fp)
	lw $t0, -348($fp)
	sw $t0, -1096($fp)
	li $t0, 33484
	sw $t0, -1100($fp)
	lw $t1, -1096($fp)
	lw $t2, -1100($fp)
	bne $t1, $t2, label1159
	j label1161
label1161:
	li $t0, 36750
	sw $t0, -1104($fp)
	lw $t1, -1104($fp)
	li $t2, 0
	bne $t1, $t2, label1159
	j label1160
label1159:
	li $t0, 1
	sw $t0, -1092($fp)
label1160:
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1108($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1108($fp)
	sub $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label1158
	j label1157
label1157:
	li $t0, 1
	sw $t0, -1088($fp)
label1158:
	lw $ra, -4($fp)
	lw $v0, -1088($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1116($fp)
	li $t0, 0
	sw $t0, -1120($fp)
	li $t0, 0
	sw $t0, -1124($fp)
	li $t0, 44892
	sw $t0, -1128($fp)
	lw $t0, -84($fp)
	sw $t0, -1132($fp)
	lw $t0, -1128($fp)
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label1166
	j label1168
label1168:
	li $t0, 32597
	sw $t0, -1140($fp)
	lw $t1, -1140($fp)
	li $t2, 0
	bne $t1, $t2, label1166
	j label1167
label1166:
	li $t0, 1
	sw $t0, -1124($fp)
label1167:
	li $t0, 0
	sw $t0, -1144($fp)
	li $t0, 18865
	sw $t0, -1148($fp)
	lw $t0, -84($fp)
	sw $t0, -1152($fp)
	lw $t1, -1148($fp)
	lw $t2, -1152($fp)
	bgt $t1, $t2, label1171
	j label1170
label1171:
	li $t0, 32572
	sw $t0, -1156($fp)
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label1169
	j label1170
label1169:
	li $t0, 1
	sw $t0, -1144($fp)
label1170:
	lw $t0, -72($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -1164($fp)
	li $t0, 49496
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -1172($fp)
	lw $t0, -84($fp)
	sw $t0, -1176($fp)
	lw $t0, -72($fp)
	sw $t0, -1180($fp)
	lw $t0, -1176($fp)
	lw $t1, -1180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1184($fp)
	li $t0, 0
	lw $t1, -1184($fp)
	sub $t0, $t0, $t1
	sw $t0, -1188($fp)
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1192($fp)
	addi $sp, $sp, 24
	lw $t1, -1192($fp)
	li $t2, 0
	bne $t1, $t2, label1165
	j label1164
label1164:
	li $t0, 1
	sw $t0, -1120($fp)
label1165:
	li $t0, 0
	sw $t0, -1196($fp)
	lw $t0, -312($fp)
	sw $t0, -1200($fp)
	lw $t0, -84($fp)
	sw $t0, -1204($fp)
	lw $t1, -1200($fp)
	lw $t2, -1204($fp)
	ble $t1, $t2, label1172
	j label1173
label1172:
	li $t0, 1
	sw $t0, -1196($fp)
label1173:
	lw $t1, -1120($fp)
	lw $t2, -1196($fp)
	bne $t1, $t2, label1162
	j label1163
label1162:
	li $t0, 1
	sw $t0, -1116($fp)
label1163:
	lw $t0, -1116($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -1208($fp)
	jal f13
	sw $v0, -1212($fp)
	addi $sp, $sp, 4
	lw $t0, -1212($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -1216($fp)
label1174:
	li $t0, 19569
	sw $t0, -1220($fp)
	lw $t0, -324($fp)
	sw $t0, -1224($fp)
	li $t0, 0
	lw $t1, -1224($fp)
	sub $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1220($fp)
	lw $t1, -1228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label1175
	j label1176
label1175:
	li $t0, 0
	sw $t0, -1236($fp)
	li $t0, 0
	sw $t0, -1240($fp)
	lw $t0, -48($fp)
	sw $t0, -1244($fp)
	li $t0, 0
	sw $t0, -1248($fp)
	lw $t0, -84($fp)
	sw $t0, -1252($fp)
	li $t0, 0
	lw $t1, -1252($fp)
	sub $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label1182
	j label1181
label1181:
	li $t0, 1
	sw $t0, -1248($fp)
label1182:
	lw $t1, -1244($fp)
	lw $t2, -1248($fp)
	blt $t1, $t2, label1179
	j label1180
label1179:
	li $t0, 1
	sw $t0, -1240($fp)
label1180:
	li $t0, 31094
	sw $t0, -1260($fp)
	lw $t1, -1240($fp)
	lw $t2, -1260($fp)
	bne $t1, $t2, label1177
	j label1178
label1177:
	li $t0, 1
	sw $t0, -1236($fp)
label1178:
	j label1174
label1176:
	lw $t0, -48($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 4
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1300($fp)
	li $t0, 1
	sw $t0, -1304($fp)
	li $t0, 4
	lw $t1, -1304($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1320($fp)
	li $t0, 2
	sw $t0, -1324($fp)
	li $t0, 4
	lw $t1, -1324($fp)
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, -1320($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	lw $t1, 0($t0)
	sw $t1, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1340($fp)
	li $t0, 3
	sw $t0, -1344($fp)
	li $t0, 4
	lw $t1, -1344($fp)
	mul $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, 0($t0)
	sw $t1, -1356($fp)
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1360($fp)
	li $t0, 4
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
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1380($fp)
	li $t0, 5
	sw $t0, -1384($fp)
	li $t0, 4
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, 0($t0)
	sw $t1, -1396($fp)
	lw $t0, -1396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1400($fp)
	li $t0, 6
	sw $t0, -1404($fp)
	li $t0, 4
	lw $t1, -1404($fp)
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	lw $t1, 0($t0)
	sw $t1, -1416($fp)
	lw $t0, -1416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1420($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -1440($fp)
	li $t0, 8
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
	lw $t0, -312($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1476($fp)
	addi $t0, $fp, -40
	sw $t0, -1480($fp)
	li $t0, 50313
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -1488($fp)
	addi $sp, $sp, -4
	lw $t0, -1488($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1492($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -1492($fp)
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t1, 0($t0)
	sw $t1, -1504($fp)
	li $t0, 0
	lw $t1, -1504($fp)
	sub $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label1184
	j label1183
label1183:
	li $t0, 1
	sw $t0, -1476($fp)
label1184:
	lw $ra, -4($fp)
	lw $v0, -1476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f13
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 19840
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
