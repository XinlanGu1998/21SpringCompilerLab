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
	addi $sp, $sp, -28
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -12($fp)
label122:
	li $t0, 0
	lw $t1, -12($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	li $t0, 2702
	sw $t0, -24($fp)
	li $t0, 0
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -32($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -32($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -11000
	li $t0, 29180
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 29990
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 853
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 50775
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 59437
	sw $t0, -312($fp)
	addi $t0, $fp, -32
	sw $t0, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -316($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -312($fp)
	lw $t1, -328($fp)
	sw $t0, 0($t1)
	lw $t0, -328($fp)
	lw $t1, 0($t0)
	sw $t1, -332($fp)
	li $t0, 16576
	sw $t0, -336($fp)
	addi $t0, $fp, -32
	sw $t0, -340($fp)
	li $t0, 1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -340($fp)
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -336($fp)
	lw $t1, -352($fp)
	sw $t0, 0($t1)
	lw $t0, -352($fp)
	lw $t1, 0($t0)
	sw $t1, -356($fp)
	li $t0, 42849
	sw $t0, -360($fp)
	addi $t0, $fp, -32
	sw $t0, -364($fp)
	li $t0, 2
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
	li $t0, 29057
	sw $t0, -384($fp)
	addi $t0, $fp, -32
	sw $t0, -388($fp)
	li $t0, 3
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
	li $t0, 61850
	sw $t0, -408($fp)
	addi $t0, $fp, -32
	sw $t0, -412($fp)
	li $t0, 4
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
	li $t0, 8800
	sw $t0, -432($fp)
	addi $t0, $fp, -32
	sw $t0, -436($fp)
	li $t0, 5
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
	li $t0, 21828
	sw $t0, -456($fp)
	addi $t0, $fp, -32
	sw $t0, -460($fp)
	li $t0, 6
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
	li $t0, 24389
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 26920
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 13718
	sw $t0, -504($fp)
	addi $t0, $fp, -52
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
	li $t0, 57345
	sw $t0, -528($fp)
	addi $t0, $fp, -52
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
	li $t0, 36831
	sw $t0, -552($fp)
	addi $t0, $fp, -52
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
	li $t0, 33022
	sw $t0, -576($fp)
	addi $t0, $fp, -52
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
	li $t0, 34384
	sw $t0, -600($fp)
	addi $t0, $fp, -52
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
	li $t0, 28359
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 64778
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 26565
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 57526
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 31906
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 37430
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 35148
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 42191
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 39144
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 28075
	sw $t0, -732($fp)
	addi $t0, $fp, -68
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
	li $t0, 29322
	sw $t0, -756($fp)
	addi $t0, $fp, -68
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
	li $t0, 30857
	sw $t0, -780($fp)
	addi $t0, $fp, -68
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
	li $t0, 30778
	sw $t0, -804($fp)
	addi $t0, $fp, -68
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
	li $t0, 58503
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 60848
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 31631
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 43742
	sw $t0, -864($fp)
	addi $t0, $fp, -88
	sw $t0, -868($fp)
	li $t0, 0
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
	li $t0, 54749
	sw $t0, -888($fp)
	addi $t0, $fp, -88
	sw $t0, -892($fp)
	li $t0, 1
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
	li $t0, 48207
	sw $t0, -912($fp)
	addi $t0, $fp, -88
	sw $t0, -916($fp)
	li $t0, 2
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
	li $t0, 21055
	sw $t0, -936($fp)
	addi $t0, $fp, -88
	sw $t0, -940($fp)
	li $t0, 3
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -940($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -936($fp)
	lw $t1, -952($fp)
	sw $t0, 0($t1)
	lw $t0, -952($fp)
	lw $t1, 0($t0)
	sw $t1, -956($fp)
	li $t0, 18271
	sw $t0, -960($fp)
	addi $t0, $fp, -88
	sw $t0, -964($fp)
	li $t0, 4
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -964($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -960($fp)
	lw $t1, -976($fp)
	sw $t0, 0($t1)
	lw $t0, -976($fp)
	lw $t1, 0($t0)
	sw $t1, -980($fp)
	li $t0, 44521
	sw $t0, -984($fp)
	addi $t0, $fp, -120
	sw $t0, -988($fp)
	li $t0, 0
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -988($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -984($fp)
	lw $t1, -1000($fp)
	sw $t0, 0($t1)
	lw $t0, -1000($fp)
	lw $t1, 0($t0)
	sw $t1, -1004($fp)
	li $t0, 29855
	sw $t0, -1008($fp)
	addi $t0, $fp, -120
	sw $t0, -1012($fp)
	li $t0, 1
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1012($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1008($fp)
	lw $t1, -1024($fp)
	sw $t0, 0($t1)
	lw $t0, -1024($fp)
	lw $t1, 0($t0)
	sw $t1, -1028($fp)
	li $t0, 40099
	sw $t0, -1032($fp)
	addi $t0, $fp, -120
	sw $t0, -1036($fp)
	li $t0, 2
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1036($fp)
	lw $t1, -1044($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1032($fp)
	lw $t1, -1048($fp)
	sw $t0, 0($t1)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	li $t0, 3374
	sw $t0, -1056($fp)
	addi $t0, $fp, -120
	sw $t0, -1060($fp)
	li $t0, 3
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1060($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1056($fp)
	lw $t1, -1072($fp)
	sw $t0, 0($t1)
	lw $t0, -1072($fp)
	lw $t1, 0($t0)
	sw $t1, -1076($fp)
	li $t0, 56775
	sw $t0, -1080($fp)
	addi $t0, $fp, -120
	sw $t0, -1084($fp)
	li $t0, 4
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
	li $t0, 53818
	sw $t0, -1104($fp)
	addi $t0, $fp, -120
	sw $t0, -1108($fp)
	li $t0, 5
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
	li $t0, 60719
	sw $t0, -1128($fp)
	addi $t0, $fp, -120
	sw $t0, -1132($fp)
	li $t0, 6
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
	li $t0, 28071
	sw $t0, -1152($fp)
	addi $t0, $fp, -120
	sw $t0, -1156($fp)
	li $t0, 7
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
	li $t0, 21304
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 29567
	sw $t0, -1188($fp)
	addi $t0, $fp, -132
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
	li $t0, 56430
	sw $t0, -1212($fp)
	addi $t0, $fp, -132
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
	li $t0, 20546
	sw $t0, -1236($fp)
	addi $t0, $fp, -132
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
	li $t0, 56132
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 48420
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 52452
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 28027
	sw $t0, -1296($fp)
	addi $t0, $fp, -164
	sw $t0, -1300($fp)
	li $t0, 0
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
	li $t0, 18033
	sw $t0, -1320($fp)
	addi $t0, $fp, -164
	sw $t0, -1324($fp)
	li $t0, 1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1324($fp)
	lw $t1, -1332($fp)
	add $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1320($fp)
	lw $t1, -1336($fp)
	sw $t0, 0($t1)
	lw $t0, -1336($fp)
	lw $t1, 0($t0)
	sw $t1, -1340($fp)
	li $t0, 29107
	sw $t0, -1344($fp)
	addi $t0, $fp, -164
	sw $t0, -1348($fp)
	li $t0, 2
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1348($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1344($fp)
	lw $t1, -1360($fp)
	sw $t0, 0($t1)
	lw $t0, -1360($fp)
	lw $t1, 0($t0)
	sw $t1, -1364($fp)
	li $t0, 1635
	sw $t0, -1368($fp)
	addi $t0, $fp, -164
	sw $t0, -1372($fp)
	li $t0, 3
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1372($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1368($fp)
	lw $t1, -1384($fp)
	sw $t0, 0($t1)
	lw $t0, -1384($fp)
	lw $t1, 0($t0)
	sw $t1, -1388($fp)
	li $t0, 46108
	sw $t0, -1392($fp)
	addi $t0, $fp, -164
	sw $t0, -1396($fp)
	li $t0, 4
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1396($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1392($fp)
	lw $t1, -1408($fp)
	sw $t0, 0($t1)
	lw $t0, -1408($fp)
	lw $t1, 0($t0)
	sw $t1, -1412($fp)
	li $t0, 58430
	sw $t0, -1416($fp)
	addi $t0, $fp, -164
	sw $t0, -1420($fp)
	li $t0, 5
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1420($fp)
	lw $t1, -1428($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1416($fp)
	lw $t1, -1432($fp)
	sw $t0, 0($t1)
	lw $t0, -1432($fp)
	lw $t1, 0($t0)
	sw $t1, -1436($fp)
	li $t0, 32493
	sw $t0, -1440($fp)
	addi $t0, $fp, -164
	sw $t0, -1444($fp)
	li $t0, 6
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1444($fp)
	lw $t1, -1452($fp)
	add $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1440($fp)
	lw $t1, -1456($fp)
	sw $t0, 0($t1)
	lw $t0, -1456($fp)
	lw $t1, 0($t0)
	sw $t1, -1460($fp)
	li $t0, 11350
	sw $t0, -1464($fp)
	addi $t0, $fp, -164
	sw $t0, -1468($fp)
	li $t0, 7
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1468($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1464($fp)
	lw $t1, -1480($fp)
	sw $t0, 0($t1)
	lw $t0, -1480($fp)
	lw $t1, 0($t0)
	sw $t1, -1484($fp)
	li $t0, 51397
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	li $t0, 27805
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	li $t0, 42981
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	li $t0, 29603
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	li $t0, 17018
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	li $t0, 25652
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	li $t0, 50658
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	li $t0, 35289
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	li $t0, 4638
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	li $t0, 14978
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	li $t0, 9853
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	li $t0, 8012
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	li $t0, 6217
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	li $t0, 63671
	sw $t0, -1644($fp)
	addi $t0, $fp, -196
	sw $t0, -1648($fp)
	li $t0, 0
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
	li $t0, 3196
	sw $t0, -1668($fp)
	addi $t0, $fp, -196
	sw $t0, -1672($fp)
	li $t0, 1
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
	li $t0, 34288
	sw $t0, -1692($fp)
	addi $t0, $fp, -196
	sw $t0, -1696($fp)
	li $t0, 2
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
	li $t0, 19439
	sw $t0, -1716($fp)
	addi $t0, $fp, -196
	sw $t0, -1720($fp)
	li $t0, 3
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
	li $t0, 32763
	sw $t0, -1740($fp)
	addi $t0, $fp, -196
	sw $t0, -1744($fp)
	li $t0, 4
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
	li $t0, 25183
	sw $t0, -1764($fp)
	addi $t0, $fp, -196
	sw $t0, -1768($fp)
	li $t0, 5
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
	li $t0, 39985
	sw $t0, -1788($fp)
	addi $t0, $fp, -196
	sw $t0, -1792($fp)
	li $t0, 6
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1792($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1788($fp)
	lw $t1, -1804($fp)
	sw $t0, 0($t1)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	li $t0, 23360
	sw $t0, -1812($fp)
	addi $t0, $fp, -196
	sw $t0, -1816($fp)
	li $t0, 7
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1816($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1812($fp)
	lw $t1, -1828($fp)
	sw $t0, 0($t1)
	lw $t0, -1828($fp)
	lw $t1, 0($t0)
	sw $t1, -1832($fp)
	li $t0, 8067
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	li $t0, 26901
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	li $t0, 51387
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	li $t0, 26100
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	li $t0, 56009
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	li $t0, 53022
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	li $t0, 6673
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	li $t0, 48903
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	li $t0, 19979
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	li $t0, 18023
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	li $t0, 34764
	sw $t0, -1956($fp)
	addi $t0, $fp, -228
	sw $t0, -1960($fp)
	li $t0, 0
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1960($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1956($fp)
	lw $t1, -1972($fp)
	sw $t0, 0($t1)
	lw $t0, -1972($fp)
	lw $t1, 0($t0)
	sw $t1, -1976($fp)
	li $t0, 47784
	sw $t0, -1980($fp)
	addi $t0, $fp, -228
	sw $t0, -1984($fp)
	li $t0, 1
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1984($fp)
	lw $t1, -1992($fp)
	add $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1980($fp)
	lw $t1, -1996($fp)
	sw $t0, 0($t1)
	lw $t0, -1996($fp)
	lw $t1, 0($t0)
	sw $t1, -2000($fp)
	li $t0, 61005
	sw $t0, -2004($fp)
	addi $t0, $fp, -228
	sw $t0, -2008($fp)
	li $t0, 2
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2008($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2004($fp)
	lw $t1, -2020($fp)
	sw $t0, 0($t1)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	li $t0, 64367
	sw $t0, -2028($fp)
	addi $t0, $fp, -228
	sw $t0, -2032($fp)
	li $t0, 3
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2032($fp)
	lw $t1, -2040($fp)
	add $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2028($fp)
	lw $t1, -2044($fp)
	sw $t0, 0($t1)
	lw $t0, -2044($fp)
	lw $t1, 0($t0)
	sw $t1, -2048($fp)
	li $t0, 64803
	sw $t0, -2052($fp)
	addi $t0, $fp, -228
	sw $t0, -2056($fp)
	li $t0, 4
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2056($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2052($fp)
	lw $t1, -2068($fp)
	sw $t0, 0($t1)
	lw $t0, -2068($fp)
	lw $t1, 0($t0)
	sw $t1, -2072($fp)
	li $t0, 21121
	sw $t0, -2076($fp)
	addi $t0, $fp, -228
	sw $t0, -2080($fp)
	li $t0, 5
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2080($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2076($fp)
	lw $t1, -2092($fp)
	sw $t0, 0($t1)
	lw $t0, -2092($fp)
	lw $t1, 0($t0)
	sw $t1, -2096($fp)
	li $t0, 49489
	sw $t0, -2100($fp)
	addi $t0, $fp, -228
	sw $t0, -2104($fp)
	li $t0, 6
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2104($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2100($fp)
	lw $t1, -2116($fp)
	sw $t0, 0($t1)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	li $t0, 34556
	sw $t0, -2124($fp)
	addi $t0, $fp, -228
	sw $t0, -2128($fp)
	li $t0, 7
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
	li $t0, 25759
	sw $t0, -2148($fp)
	addi $t0, $fp, -240
	sw $t0, -2152($fp)
	li $t0, 0
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
	li $t0, 64467
	sw $t0, -2172($fp)
	addi $t0, $fp, -240
	sw $t0, -2176($fp)
	li $t0, 1
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
	li $t0, 44409
	sw $t0, -2196($fp)
	addi $t0, $fp, -240
	sw $t0, -2200($fp)
	li $t0, 2
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
	li $t0, 33772
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	li $t0, 5149
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -2240($fp)
	li $t0, 42544
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	li $t0, 36968
	sw $t0, -2256($fp)
	addi $t0, $fp, -260
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2260($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2256($fp)
	lw $t1, -2272($fp)
	sw $t0, 0($t1)
	lw $t0, -2272($fp)
	lw $t1, 0($t0)
	sw $t1, -2276($fp)
	li $t0, 39437
	sw $t0, -2280($fp)
	addi $t0, $fp, -260
	sw $t0, -2284($fp)
	li $t0, 1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2284($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2280($fp)
	lw $t1, -2296($fp)
	sw $t0, 0($t1)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	li $t0, 61983
	sw $t0, -2304($fp)
	addi $t0, $fp, -260
	sw $t0, -2308($fp)
	li $t0, 2
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
	li $t0, 4195
	sw $t0, -2328($fp)
	addi $t0, $fp, -260
	sw $t0, -2332($fp)
	li $t0, 3
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
	li $t0, 64620
	sw $t0, -2352($fp)
	addi $t0, $fp, -260
	sw $t0, -2356($fp)
	li $t0, 4
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
	li $t0, 36432
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	li $t0, 27555
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	li $t0, 7152
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	li $t0, 63334
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	li $t0, 13406
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	li $t0, 33252
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	li $t0, 53807
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	li $t0, 893
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	li $t0, 39925
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	li $t0, 37174
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	li $t0, 20872
	sw $t0, -2532($fp)
	addi $t0, $fp, -2500
	sw $t0, -2536($fp)
	li $t0, 0
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
	li $t0, 57949
	sw $t0, -2556($fp)
	addi $t0, $fp, -2500
	sw $t0, -2560($fp)
	li $t0, 1
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
	li $t0, 6402
	sw $t0, -2580($fp)
	addi $t0, $fp, -2500
	sw $t0, -2584($fp)
	li $t0, 2
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
	li $t0, 3121
	sw $t0, -2604($fp)
	addi $t0, $fp, -2500
	sw $t0, -2608($fp)
	li $t0, 3
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
	li $t0, 53418
	sw $t0, -2628($fp)
	addi $t0, $fp, -2500
	sw $t0, -2632($fp)
	li $t0, 4
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
	li $t0, 5233
	sw $t0, -2652($fp)
	addi $t0, $fp, -2500
	sw $t0, -2656($fp)
	li $t0, 5
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
	li $t0, 2388
	sw $t0, -2676($fp)
	addi $t0, $fp, -2500
	sw $t0, -2680($fp)
	li $t0, 6
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
	li $t0, 9003
	sw $t0, -2700($fp)
	addi $t0, $fp, -2500
	sw $t0, -2704($fp)
	li $t0, 7
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
	li $t0, 54722
	sw $t0, -2724($fp)
	addi $t0, $fp, -2504
	sw $t0, -2728($fp)
	li $t0, 0
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
	li $t0, 36944
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	li $t0, 34763
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -2768($fp)
label123:
	addi $t0, $fp, -88
	sw $t0, -2772($fp)
	li $t0, 0
	sw $t0, -2776($fp)
	addi $t0, $fp, -260
	sw $t0, -2780($fp)
	lw $t0, -1876($fp)
	sw $t0, -2784($fp)
	li $t0, 4
	lw $t1, -2784($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label128
label128:
	lw $t0, -1588($fp)
	sw $t0, -2800($fp)
	lw $t1, -2800($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -2776($fp)
label127:
	li $t0, 4
	lw $t1, -2776($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	lw $t1, -2772($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, 0($t0)
	sw $t1, -2812($fp)
	li $t0, 0
	sw $t0, -2816($fp)
	lw $t0, -2440($fp)
	sw $t0, -2820($fp)
	lw $t0, -280($fp)
	sw $t0, -2824($fp)
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label131:
	lw $t0, -1864($fp)
	sw $t0, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -2816($fp)
label130:
	li $t0, 0
	sw $t0, -2836($fp)
	li $t0, 53654
	sw $t0, -2840($fp)
	li $t0, 15818
	sw $t0, -2844($fp)
	lw $t1, -2840($fp)
	lw $t2, -2844($fp)
	blt $t1, $t2, label132
	j label134
label134:
	lw $t0, -496($fp)
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -2836($fp)
label133:
	lw $t0, -1528($fp)
	sw $t0, -2852($fp)
	lw $t0, -1516($fp)
	sw $t0, -2856($fp)
	lw $t0, -2852($fp)
	lw $t1, -2856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2860($fp)
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	addi $sp, $sp, -4
	lw $t0, -2816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2864($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2868($fp)
	addi $sp, $sp, 16
	lw $t0, -2812($fp)
	lw $t1, -2868($fp)
	mul $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 2999
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	addi $t0, $fp, -32
	sw $t0, -2892($fp)
	lw $t0, -676($fp)
	sw $t0, -2896($fp)
	li $t0, 4
	lw $t1, -2896($fp)
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	lw $t1, -2892($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	lw $t1, 0($t0)
	sw $t1, -2908($fp)
	lw $t0, -724($fp)
	sw $t0, -2912($fp)
	lw $t0, -2908($fp)
	lw $t1, -2912($fp)
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	addi $t0, $fp, -52
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
	lw $t0, -2916($fp)
	lw $t1, -2936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2940($fp)
	lw $t0, -832($fp)
	sw $t0, -2944($fp)
	lw $t0, -484($fp)
	sw $t0, -2948($fp)
	lw $t0, -2944($fp)
	lw $t1, -2948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2952($fp)
	lw $t0, -2940($fp)
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	addi $t0, $fp, -88
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
	li $t0, 0
	sw $t0, -2980($fp)
	lw $t0, -652($fp)
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label137:
	li $t0, 1
	sw $t0, -2980($fp)
label138:
	lw $t0, -2976($fp)
	lw $t1, -2980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2988($fp)
	lw $t1, -2956($fp)
	lw $t2, -2988($fp)
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -2888($fp)
label136:
	li $t0, 0
	sw $t0, -2992($fp)
	addi $t0, $fp, -240
	sw $t0, -2996($fp)
	lw $t0, -2380($fp)
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
	lw $t0, -2464($fp)
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	li $t0, 54810
	sw $t0, -3024($fp)
	li $t0, 44162
	sw $t0, -3028($fp)
	lw $t0, -3024($fp)
	lw $t1, -3028($fp)
	sub $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t1, -3020($fp)
	lw $t2, -3032($fp)
	bge $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -2992($fp)
label143:
	lw $t0, -2992($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 6182
	sw $t0, -3040($fp)
	li $t0, 0
	lw $t1, -3040($fp)
	sub $t0, $t0, $t1
	sw $t0, -3044($fp)
	li $t0, 38941
	sw $t0, -3048($fp)
	lw $t0, -3044($fp)
	lw $t1, -3048($fp)
	sub $t0, $t0, $t1
	sw $t0, -3052($fp)
	li $t0, 0
	sw $t0, -3056($fp)
	li $t0, 31789
	sw $t0, -3060($fp)
	li $t0, 25706
	sw $t0, -3064($fp)
	lw $t0, -3060($fp)
	lw $t1, -3064($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t1, -3068($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label146
label146:
	lw $t0, -2880($fp)
	sw $t0, -3072($fp)
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -3056($fp)
label145:
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3076($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3080($fp)
	lw $t0, -2380($fp)
	sw $t0, -3084($fp)
	lw $t1, -3084($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label147:
	li $t0, 1
	sw $t0, -3080($fp)
label148:
	lw $t0, -3076($fp)
	lw $t1, -3080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3088($fp)
	lw $t0, -1492($fp)
	sw $t0, -3092($fp)
	lw $t0, -3088($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	li $t0, 23504
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	j label141
label140:
	li $t0, 19588
	sw $t0, -3108($fp)
label141:
	j label123
label125:
	li $t0, 0
	sw $t0, -3112($fp)
	lw $t0, -280($fp)
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -3112($fp)
label150:
	lw $t0, -2524($fp)
	sw $t0, -3120($fp)
	addi $t0, $fp, -2504
	sw $t0, -3124($fp)
	li $t0, 0
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
	lw $t0, -3120($fp)
	lw $t1, -3140($fp)
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
label154:
	li $t0, 0
	sw $t0, -3148($fp)
	li $t0, 46583
	sw $t0, -3152($fp)
	li $t0, 0
	lw $t1, -3152($fp)
	sub $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -1516($fp)
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	li $t0, 0
	sw $t0, -3168($fp)
	lw $t0, -1624($fp)
	sw $t0, -3172($fp)
	lw $t0, -1600($fp)
	sw $t0, -3176($fp)
	lw $t1, -3172($fp)
	lw $t2, -3176($fp)
	bge $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -3168($fp)
label160:
	lw $t1, -3164($fp)
	lw $t2, -3168($fp)
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -3148($fp)
label158:
	lw $t0, -3148($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -3180($fp)
	lw $t1, -3180($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 48949
	sw $t0, -3184($fp)
	lw $t0, -628($fp)
	sw $t0, -3188($fp)
	lw $t0, -3184($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
label164:
	addi $t0, $fp, -120
	sw $t0, -3196($fp)
	li $t0, 0
	sw $t0, -3200($fp)
	lw $t0, -2440($fp)
	sw $t0, -3204($fp)
	li $t0, 55351
	sw $t0, -3208($fp)
	lw $t1, -3204($fp)
	lw $t2, -3208($fp)
	blt $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -3200($fp)
label168:
	li $t0, 0
	sw $t0, -3212($fp)
	addi $t0, $fp, -2500
	sw $t0, -3216($fp)
	li $t0, 4
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
	lw $t0, -676($fp)
	sw $t0, -3236($fp)
	lw $t1, -3232($fp)
	lw $t2, -3236($fp)
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -3212($fp)
label170:
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3240($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -3240($fp)
	mul $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	lw $t1, -3196($fp)
	add $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, 0($t0)
	sw $t1, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -1516($fp)
	sw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label174
label174:
	li $t0, 46863
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label173
label173:
	lw $t0, -844($fp)
	sw $t0, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -3256($fp)
label172:
	li $t0, 60584
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -3276($fp)
	li $t0, 0
	sw $t0, -3280($fp)
	li $t0, 44475
	sw $t0, -3284($fp)
	lw $t0, -2764($fp)
	sw $t0, -3288($fp)
	lw $t0, -3284($fp)
	lw $t1, -3288($fp)
	add $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label177:
	li $t0, 26878
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -3280($fp)
label176:
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3280($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3300($fp)
	addi $sp, $sp, 16
	lw $t0, -3300($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -3304($fp)
	j label164
label166:
	j label163
label162:
	li $t0, 0
	sw $t0, -3308($fp)
	lw $t0, -832($fp)
	sw $t0, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label178
label181:
	lw $t0, -2464($fp)
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label180
label180:
	li $t0, 35881
	sw $t0, -3320($fp)
	lw $t0, -2752($fp)
	sw $t0, -3324($fp)
	lw $t0, -3320($fp)
	lw $t1, -3324($fp)
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -3308($fp)
label179:
	lw $t0, -3308($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -3332($fp)
label163:
	j label154
label156:
	j label153
label152:
	li $t0, 0
	sw $t0, -3336($fp)
	li $t0, 0
	sw $t0, -3340($fp)
	li $t0, 49771
	sw $t0, -3344($fp)
	lw $t0, -832($fp)
	sw $t0, -3348($fp)
	lw $t0, -3344($fp)
	lw $t1, -3348($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	li $t0, 0
	lw $t1, -3352($fp)
	sub $t0, $t0, $t1
	sw $t0, -3356($fp)
	li $t0, 18271
	sw $t0, -3360($fp)
	lw $t0, -3356($fp)
	lw $t1, -3360($fp)
	sub $t0, $t0, $t1
	sw $t0, -3364($fp)
	li $t0, 0
	sw $t0, -3368($fp)
	addi $t0, $fp, -240
	sw $t0, -3372($fp)
	lw $t0, -2464($fp)
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
	lw $t1, -3388($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -3368($fp)
label187:
	lw $t1, -3364($fp)
	lw $t2, -3368($fp)
	bge $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -3340($fp)
label185:
	lw $t0, -724($fp)
	sw $t0, -3392($fp)
	li $t0, 0
	lw $t1, -3392($fp)
	sub $t0, $t0, $t1
	sw $t0, -3396($fp)
	li $t0, 5108
	sw $t0, -3400($fp)
	lw $t0, -3396($fp)
	lw $t1, -3400($fp)
	sub $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t1, -3340($fp)
	lw $t2, -3404($fp)
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -3336($fp)
label183:
	li $t0, 0
	sw $t0, -3408($fp)
	lw $t0, -484($fp)
	sw $t0, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label190:
	li $t0, 37889
	sw $t0, -3416($fp)
	li $t0, 34089
	sw $t0, -3420($fp)
	li $t0, 8107
	sw $t0, -3424($fp)
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t1, -3416($fp)
	lw $t2, -3428($fp)
	ble $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -3408($fp)
label189:
label153:
label191:
	li $t0, 31156
	sw $t0, -3432($fp)
	li $t0, 26916
	sw $t0, -3436($fp)
	lw $t1, -3432($fp)
	lw $t2, -3436($fp)
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 48074
	sw $t0, -3440($fp)
	li $t0, 0
	lw $t1, -3440($fp)
	sub $t0, $t0, $t1
	sw $t0, -3444($fp)
	li $t0, 0
	sw $t0, -3448($fp)
	li $t0, 16190
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -3456($fp)
	li $t0, 0
	sw $t0, -3460($fp)
	lw $t0, -484($fp)
	sw $t0, -3464($fp)
	lw $t0, -1876($fp)
	sw $t0, -3468($fp)
	lw $t0, -3464($fp)
	lw $t1, -3468($fp)
	sub $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -2404($fp)
	sw $t0, -3476($fp)
	lw $t1, -3472($fp)
	lw $t2, -3476($fp)
	bne $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -3460($fp)
label197:
	li $t0, 63860
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -3484($fp)
	addi $sp, $sp, -4
	lw $t0, -3456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3488($fp)
	addi $sp, $sp, 16
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label194:
	li $t0, 1
	sw $t0, -3448($fp)
label195:
	lw $t0, -3444($fp)
	lw $t1, -3448($fp)
	add $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $ra, -4($fp)
	lw $v0, -3492($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label191
label193:
	li $t0, 26701
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	sw $t0, -3504($fp)
	li $t0, 30113
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -3516($fp)
	li $t0, 41896
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	sw $t0, -3528($fp)
	li $t0, 32883
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -3540($fp)
	li $t0, 3518
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	sw $t0, -3552($fp)
	li $t0, 0
	sw $t0, -3556($fp)
	li $t0, 65401
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -3564($fp)
	lw $t0, -292($fp)
	sw $t0, -3568($fp)
	addi $sp, $sp, -4
	lw $t0, -3564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3572($fp)
	addi $sp, $sp, 12
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label201:
	li $t0, 1
	sw $t0, -3556($fp)
label202:
	li $t0, 0
	sw $t0, -3576($fp)
	lw $t0, -1852($fp)
	sw $t0, -3580($fp)
	li $t0, 52471
	sw $t0, -3584($fp)
	lw $t1, -3580($fp)
	lw $t2, -3584($fp)
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -3576($fp)
label204:
	lw $t0, -3536($fp)
	sw $t0, -3588($fp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3592($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3592($fp)
	sub $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3556($fp)
	lw $t1, -3596($fp)
	add $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
label205:
	lw $t0, -712($fp)
	sw $t0, -3604($fp)
	lw $t0, -844($fp)
	sw $t0, -3608($fp)
	lw $t0, -3604($fp)
	lw $t1, -3608($fp)
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -832($fp)
	sw $t0, -3616($fp)
	lw $t0, -3612($fp)
	lw $t1, -3616($fp)
	add $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, 8($fp)
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -3628($fp)
	lw $t0, -1516($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	sw $t0, -3636($fp)
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3640($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -164
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
	lw $t0, -3640($fp)
	lw $t1, -3660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3664($fp)
	li $t0, 0
	sw $t0, -3668($fp)
	li $t0, 48771
	sw $t0, -3672($fp)
	lw $t1, -3672($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label208
label208:
	li $t0, 1
	sw $t0, -3668($fp)
label209:
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 60590
	sw $t0, -3680($fp)
	lw $t0, -1276($fp)
	sw $t0, -3684($fp)
	lw $t0, -3680($fp)
	lw $t1, -3684($fp)
	mul $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t1, -3688($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label212
label212:
	lw $t0, -1924($fp)
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -3676($fp)
label211:
	li $t0, 0
	sw $t0, -3696($fp)
	lw $t0, -1900($fp)
	sw $t0, -3700($fp)
	li $t0, 7417
	sw $t0, -3704($fp)
	lw $t0, -3700($fp)
	lw $t1, -3704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3708($fp)
	lw $t1, -3708($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label215:
	li $t0, 56759
	sw $t0, -3712($fp)
	lw $t1, -3712($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -3696($fp)
label214:
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3696($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3716($fp)
	addi $sp, $sp, 16
	lw $t0, -3664($fp)
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t1, -3720($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 0
	sw $t0, -3724($fp)
	lw $t0, -2440($fp)
	sw $t0, -3728($fp)
	li $t0, 0
	sw $t0, -3732($fp)
	li $t0, 0
	sw $t0, -3736($fp)
	addi $t0, $fp, -196
	sw $t0, -3740($fp)
	lw $t0, -2236($fp)
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
	li $t0, 27710
	sw $t0, -3760($fp)
	lw $t1, -3756($fp)
	lw $t2, -3760($fp)
	bge $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -3736($fp)
label221:
	li $t0, 0
	sw $t0, -3764($fp)
	li $t0, 0
	sw $t0, -3768($fp)
	lw $t0, -832($fp)
	sw $t0, -3772($fp)
	lw $t0, -856($fp)
	sw $t0, -3776($fp)
	lw $t1, -3772($fp)
	lw $t2, -3776($fp)
	bge $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -3768($fp)
label225:
	li $t0, 50405
	sw $t0, -3780($fp)
	lw $t1, -3768($fp)
	lw $t2, -3780($fp)
	beq $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -3764($fp)
label223:
	li $t0, 0
	sw $t0, -3784($fp)
	lw $t0, -1636($fp)
	sw $t0, -3788($fp)
	li $t0, 0
	lw $t1, -3788($fp)
	sub $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t1, -3792($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label228
label228:
	li $t0, 30219
	sw $t0, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -3784($fp)
label227:
	addi $sp, $sp, -4
	lw $t0, -3736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3784($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3800($fp)
	addi $sp, $sp, 16
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label218:
	li $t0, 1
	sw $t0, -3732($fp)
label219:
	li $t0, 9037
	sw $t0, -3804($fp)
	lw $t0, -1264($fp)
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3812($fp)
	li $t0, 27442
	sw $t0, -3816($fp)
	lw $t0, -3812($fp)
	lw $t1, -3816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3820($fp)
	li $t0, 57097
	sw $t0, -3824($fp)
	li $t0, 45454
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3832($fp)
	li $t0, 0
	lw $t1, -3832($fp)
	sub $t0, $t0, $t1
	sw $t0, -3836($fp)
	addi $sp, $sp, -4
	lw $t0, -3820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3836($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3840($fp)
	addi $sp, $sp, 12
	lw $t0, -3732($fp)
	lw $t1, -3840($fp)
	sub $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t1, -3728($fp)
	lw $t2, -3844($fp)
	beq $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -3724($fp)
label217:
	lw $ra, -4($fp)
	lw $v0, -3724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label205
label207:
	j label200
label199:
label229:
	lw $t0, -3548($fp)
	sw $t0, -3848($fp)
	lw $t1, -3848($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label232:
	li $t0, 0
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	li $t0, 0
	sw $t0, -3860($fp)
	lw $t0, -676($fp)
	sw $t0, -3864($fp)
	lw $t0, -1924($fp)
	sw $t0, -3868($fp)
	lw $t1, -3864($fp)
	lw $t2, -3868($fp)
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -3860($fp)
label239:
	li $t0, 61398
	sw $t0, -3872($fp)
	lw $t1, -3860($fp)
	lw $t2, -3872($fp)
	beq $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -3856($fp)
label237:
	li $t0, 2042
	sw $t0, -3876($fp)
	addi $sp, $sp, -4
	lw $t0, -3856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3880($fp)
	addi $sp, $sp, 12
	lw $t1, -3880($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label235:
	lw $t0, -1864($fp)
	sw $t0, -3884($fp)
	lw $t1, -3884($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -3852($fp)
label234:
	li $t0, 0
	sw $t0, -3888($fp)
	li $t0, 0
	sw $t0, -3892($fp)
	li $t0, 29689
	sw $t0, -3896($fp)
	li $t0, 27308
	sw $t0, -3900($fp)
	lw $t1, -3896($fp)
	lw $t2, -3900($fp)
	bge $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -3892($fp)
label243:
	li $t0, 32551
	sw $t0, -3904($fp)
	lw $t1, -3892($fp)
	lw $t2, -3904($fp)
	beq $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -3888($fp)
label241:
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3888($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3908($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -240
	sw $t0, -3912($fp)
	li $t0, 0
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
	lw $t1, -3908($fp)
	lw $t2, -3928($fp)
	ble $t1, $t2, label230
	j label231
label230:
label244:
	lw $t0, -1516($fp)
	sw $t0, -3932($fp)
	li $t0, 0
	lw $t1, -3932($fp)
	sub $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 0
	sw $t0, -3940($fp)
	addi $t0, $fp, -228
	sw $t0, -3944($fp)
	lw $t0, -2404($fp)
	sw $t0, -3948($fp)
	li $t0, 4
	lw $t1, -3948($fp)
	mul $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, 0($t0)
	sw $t1, -3960($fp)
	li $t0, 0
	sw $t0, -3964($fp)
	lw $t0, -2440($fp)
	sw $t0, -3968($fp)
	li $t0, 22778
	sw $t0, -3972($fp)
	lw $t0, -3968($fp)
	lw $t1, -3972($fp)
	sub $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -688($fp)
	sw $t0, -3980($fp)
	lw $t1, -3976($fp)
	lw $t2, -3980($fp)
	bge $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -3964($fp)
label251:
	lw $t0, -292($fp)
	sw $t0, -3984($fp)
	addi $sp, $sp, -4
	lw $t0, -3960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3988($fp)
	addi $sp, $sp, 16
	lw $t1, -3988($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label249:
	lw $t0, -3512($fp)
	sw $t0, -3992($fp)
	li $t0, 0
	lw $t1, -3992($fp)
	sub $t0, $t0, $t1
	sw $t0, -3996($fp)
	li $t0, 23197
	sw $t0, -4000($fp)
	li $t0, 31522
	sw $t0, -4004($fp)
	lw $t0, -4000($fp)
	lw $t1, -4004($fp)
	sub $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t1, -3996($fp)
	lw $t2, -4008($fp)
	beq $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -3940($fp)
label248:
	j label244
label246:
	j label229
label231:
label200:
	li $t0, 38968
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	sw $t0, -4020($fp)
	lw $t0, -4016($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4028($fp)
	li $t0, 0
	sw $t0, -4032($fp)
	li $t0, 65154
	sw $t0, -4036($fp)
	lw $t1, -4036($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -4032($fp)
label255:
	lw $t0, -1576($fp)
	sw $t0, -4040($fp)
	lw $t0, -4032($fp)
	lw $t1, -4040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4044($fp)
	addi $t0, $fp, -240
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
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 49898
	sw $t0, -4072($fp)
	lw $t0, -700($fp)
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label258
label258:
	li $t0, 61636
	sw $t0, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -4068($fp)
label257:
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4088($fp)
	addi $sp, $sp, 16
	li $t0, 15193
	sw $t0, -4092($fp)
	li $t0, 4180
	sw $t0, -4096($fp)
	lw $t0, -4092($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t1, -4088($fp)
	lw $t2, -4100($fp)
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -4028($fp)
label253:
	lw $ra, -4($fp)
	lw $v0, -4028($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4104($fp)
	li $t0, 26834
	sw $t0, -4108($fp)
	li $t0, 11597
	sw $t0, -4112($fp)
	lw $t1, -4108($fp)
	lw $t2, -4112($fp)
	blt $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -4104($fp)
label263:
	li $t0, 0
	sw $t0, -4116($fp)
	li $t0, 9794
	sw $t0, -4120($fp)
	lw $t0, -676($fp)
	sw $t0, -4124($fp)
	lw $t1, -4120($fp)
	lw $t2, -4124($fp)
	bgt $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -4116($fp)
label265:
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4128($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 1017
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
	li $t0, 1
	sw $t0, -4132($fp)
label267:
	lw $t0, -4128($fp)
	lw $t1, -4132($fp)
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	li $t0, 0
	lw $t1, -4140($fp)
	sub $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -4148($fp)
	lw $t1, -4148($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 21888
	sw $t0, -4152($fp)
	addi $t0, $fp, -240
	sw $t0, -4156($fp)
	li $t0, 0
	sw $t0, -4160($fp)
	li $t0, 60368
	sw $t0, -4164($fp)
	lw $t1, -4164($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label270:
	li $t0, 31236
	sw $t0, -4168($fp)
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -4160($fp)
label269:
	li $t0, 4
	lw $t1, -4160($fp)
	mul $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	lw $t1, -4156($fp)
	add $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	lw $t1, 0($t0)
	sw $t1, -4180($fp)
	lw $t0, -4152($fp)
	lw $t1, -4180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4184($fp)
	j label261
label260:
	li $t0, 0
	sw $t0, -4188($fp)
	addi $t0, $fp, -240
	sw $t0, -4192($fp)
	lw $t0, -628($fp)
	sw $t0, -4196($fp)
	li $t0, 4
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, -4192($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, 0($t0)
	sw $t1, -4208($fp)
	li $t0, 0
	sw $t0, -4212($fp)
	li $t0, 0
	sw $t0, -4216($fp)
	lw $t0, -1936($fp)
	sw $t0, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label275
label275:
	li $t0, 1
	sw $t0, -4216($fp)
label276:
	li $t0, 22542
	sw $t0, -4224($fp)
	lw $t1, -4216($fp)
	lw $t2, -4224($fp)
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -4212($fp)
label274:
	addi $t0, $fp, -132
	sw $t0, -4228($fp)
	lw $t0, -724($fp)
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
	li $t0, 6757
	sw $t0, -4248($fp)
	lw $t0, -4244($fp)
	lw $t1, -4248($fp)
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4252($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4256($fp)
	addi $sp, $sp, 16
	li $t0, 22797
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	lw $t0, -4016($fp)
	sw $t0, -4268($fp)
	lw $t1, -4268($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -4264($fp)
label278:
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	sub $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t1, -4256($fp)
	lw $t2, -4272($fp)
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -4188($fp)
label272:
label261:
	li $t0, 0
	sw $t0, -4276($fp)
	lw $t0, -724($fp)
	sw $t0, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label279:
	li $t0, 1
	sw $t0, -4276($fp)
label280:
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 0
	sw $t0, -4288($fp)
	li $t0, 52211
	sw $t0, -4292($fp)
	li $t0, 0
	lw $t1, -4292($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	li $t0, 0
	lw $t1, -4296($fp)
	sub $t0, $t0, $t1
	sw $t0, -4300($fp)
	li $t0, 0
	lw $t1, -4300($fp)
	sub $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -4288($fp)
label284:
	addi $t0, $fp, -88
	sw $t0, -4308($fp)
	lw $t0, -1588($fp)
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
	li $t0, 0
	lw $t1, -4324($fp)
	sub $t0, $t0, $t1
	sw $t0, -4328($fp)
	addi $t0, $fp, -88
	sw $t0, -4332($fp)
	lw $t0, -3524($fp)
	sw $t0, -4336($fp)
	li $t0, 4
	lw $t1, -4336($fp)
	mul $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	lw $t1, 0($t0)
	sw $t1, -4348($fp)
	li $t0, 31579
	sw $t0, -4352($fp)
	lw $t0, -664($fp)
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	addi $sp, $sp, -4
	lw $t0, -4328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4360($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4364($fp)
	addi $sp, $sp, 16
	lw $t1, -4288($fp)
	lw $t2, -4364($fp)
	bgt $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -4284($fp)
label282:
	li $t0, 50240
	sw $t0, -4368($fp)
	li $t0, 0
	sw $t0, -4372($fp)
	addi $t0, $fp, -32
	sw $t0, -4376($fp)
	lw $t0, -1492($fp)
	sw $t0, -4380($fp)
	li $t0, 4
	lw $t1, -4380($fp)
	mul $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	lw $t1, -4376($fp)
	add $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	lw $t1, 0($t0)
	sw $t1, -4392($fp)
	lw $t1, -4392($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -4372($fp)
label289:
	lw $t0, -4368($fp)
	lw $t1, -4372($fp)
	sub $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t1, -4396($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label286
label285:
	li $t0, 16364
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	sw $t0, -4408($fp)
	li $t0, 58888
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	sw $t0, -4420($fp)
	li $t0, 17255
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	sw $t0, -4432($fp)
	li $t0, 18406
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	sw $t0, -4444($fp)
	li $t0, 54750
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	sw $t0, -4456($fp)
	li $t0, 57913
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	sw $t0, -4468($fp)
	li $t0, 51604
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	sw $t0, -4480($fp)
label290:
	li $t0, 0
	sw $t0, -4484($fp)
	lw $t0, -1588($fp)
	sw $t0, -4488($fp)
	lw $t1, -4488($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label293:
	li $t0, 1
	sw $t0, -4484($fp)
label294:
	lw $t0, -724($fp)
	sw $t0, -4492($fp)
	lw $t1, -4484($fp)
	lw $t2, -4492($fp)
	bgt $t1, $t2, label291
	j label292
label291:
	li $t0, 0
	sw $t0, -4496($fp)
	lw $t0, -4452($fp)
	sw $t0, -4500($fp)
	li $t0, 0
	sw $t0, -4504($fp)
	li $t0, 0
	sw $t0, -4508($fp)
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 13309
	sw $t0, -4516($fp)
	li $t0, 0
	lw $t1, -4516($fp)
	sub $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -676($fp)
	sw $t0, -4524($fp)
	lw $t1, -4520($fp)
	lw $t2, -4524($fp)
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -4512($fp)
label303:
	addi $t0, $fp, -132
	sw $t0, -4528($fp)
	li $t0, 1
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
	lw $t0, -1540($fp)
	sw $t0, -4548($fp)
	lw $t0, -4544($fp)
	lw $t1, -4548($fp)
	sub $t0, $t0, $t1
	sw $t0, -4552($fp)
	li $t0, 50960
	sw $t0, -4556($fp)
	li $t0, 1
	sw $t0, -4560($fp)
	lw $t0, -4556($fp)
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4564($fp)
	li $t0, 13691
	sw $t0, -4568($fp)
	lw $t0, -4564($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	li $t0, 0
	sw $t0, -4576($fp)
	lw $t0, -2416($fp)
	sw $t0, -4580($fp)
	lw $t0, -628($fp)
	sw $t0, -4584($fp)
	lw $t1, -4580($fp)
	lw $t2, -4584($fp)
	bne $t1, $t2, label304
	j label306
label306:
	li $t0, 17591
	sw $t0, -4588($fp)
	lw $t1, -4588($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -4576($fp)
label305:
	addi $sp, $sp, -4
	lw $t0, -4572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4576($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4592($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4596($fp)
	addi $sp, $sp, 16
	li $t0, 15946
	sw $t0, -4600($fp)
	lw $t1, -4596($fp)
	lw $t2, -4600($fp)
	beq $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -4508($fp)
label301:
	lw $t0, -4440($fp)
	sw $t0, -4604($fp)
	li $t0, 0
	sw $t0, -4608($fp)
	lw $t0, -4464($fp)
	sw $t0, -4612($fp)
	li $t0, 11992
	sw $t0, -4616($fp)
	lw $t1, -4612($fp)
	lw $t2, -4616($fp)
	ble $t1, $t2, label307
	j label309
label309:
	li $t0, 15574
	sw $t0, -4620($fp)
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -4608($fp)
label308:
	addi $sp, $sp, -4
	lw $t0, -4508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4608($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4624($fp)
	addi $sp, $sp, 16
	lw $t1, -4624($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label298:
	li $t0, 1
	sw $t0, -4504($fp)
label299:
	lw $t0, -4500($fp)
	lw $t1, -4504($fp)
	mul $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t1, -4628($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label297:
	addi $t0, $fp, -260
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
	li $t0, 42780
	sw $t0, -4652($fp)
	lw $t0, -4648($fp)
	lw $t1, -4652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4656($fp)
	li $t0, 0
	sw $t0, -4660($fp)
	lw $t0, -628($fp)
	sw $t0, -4664($fp)
	li $t0, 32959
	sw $t0, -4668($fp)
	lw $t1, -4664($fp)
	lw $t2, -4668($fp)
	bgt $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -4660($fp)
label311:
	lw $t1, -4656($fp)
	lw $t2, -4660($fp)
	beq $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -4496($fp)
label296:
	j label290
label292:
label312:
	li $t0, 24121
	sw $t0, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 0
	sw $t0, -4676($fp)
	li $t0, 0
	sw $t0, -4680($fp)
	li $t0, 64668
	sw $t0, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label318:
	li $t0, 1
	sw $t0, -4680($fp)
label319:
	li $t0, 0
	lw $t1, -4680($fp)
	sub $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -496($fp)
	sw $t0, -4692($fp)
	lw $t0, -4688($fp)
	lw $t1, -4692($fp)
	sub $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t1, -4696($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label317:
	li $t0, 0
	sw $t0, -4700($fp)
	addi $t0, $fp, -240
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
	li $t0, 5889
	sw $t0, -4724($fp)
	lw $t1, -4720($fp)
	lw $t2, -4724($fp)
	ble $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -4700($fp)
label321:
	li $t0, 50334
	sw $t0, -4728($fp)
	li $t0, 12619
	sw $t0, -4732($fp)
	lw $t0, -4728($fp)
	lw $t1, -4732($fp)
	mul $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t1, -4700($fp)
	lw $t2, -4736($fp)
	blt $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -4676($fp)
label316:
	j label312
label314:
	li $t0, 58101
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	sw $t0, -4748($fp)
	li $t0, 16378
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	sw $t0, -4760($fp)
	li $t0, 0
	sw $t0, -4764($fp)
	lw $t0, -832($fp)
	sw $t0, -4768($fp)
	li $t0, 0
	lw $t1, -4768($fp)
	sub $t0, $t0, $t1
	sw $t0, -4772($fp)
	li $t0, 62859
	sw $t0, -4776($fp)
	li $t0, 0
	lw $t1, -4776($fp)
	sub $t0, $t0, $t1
	sw $t0, -4780($fp)
	li $t0, 0
	lw $t1, -4780($fp)
	sub $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4772($fp)
	lw $t1, -4784($fp)
	sub $t0, $t0, $t1
	sw $t0, -4788($fp)
	addi $t0, $fp, -132
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
	li $t0, 0
	sw $t0, -4812($fp)
	lw $t0, -4756($fp)
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label327
label327:
	lw $t0, -4476($fp)
	sw $t0, -4820($fp)
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label326
label326:
	lw $t0, -1588($fp)
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -4812($fp)
label325:
	li $t0, 0
	sw $t0, -4828($fp)
	li $t0, 22467
	sw $t0, -4832($fp)
	lw $t1, -4832($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label328:
	li $t0, 1
	sw $t0, -4828($fp)
label329:
	li $t0, 44686
	sw $t0, -4836($fp)
	lw $t0, -4828($fp)
	lw $t1, -4836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4840($fp)
	lw $t0, -664($fp)
	sw $t0, -4844($fp)
	li $t0, 61896
	sw $t0, -4848($fp)
	lw $t0, -4844($fp)
	lw $t1, -4848($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -1624($fp)
	sw $t0, -4856($fp)
	lw $t0, -4852($fp)
	lw $t1, -4856($fp)
	sub $t0, $t0, $t1
	sw $t0, -4860($fp)
	addi $sp, $sp, -4
	lw $t0, -4812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4864($fp)
	addi $sp, $sp, 16
	lw $t0, -268($fp)
	sw $t0, -4868($fp)
	lw $t0, -4864($fp)
	lw $t1, -4868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4872($fp)
	addi $t0, $fp, -228
	sw $t0, -4876($fp)
	li $t0, 2
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
	lw $t0, -1948($fp)
	sw $t0, -4896($fp)
	lw $t0, -1600($fp)
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -4904($fp)
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4908($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4912($fp)
	lw $t0, -640($fp)
	sw $t0, -4916($fp)
	lw $t1, -4916($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label330:
	li $t0, 1
	sw $t0, -4912($fp)
label331:
	li $t0, 0
	lw $t1, -4912($fp)
	sub $t0, $t0, $t1
	sw $t0, -4920($fp)
	li $t0, 0
	sw $t0, -4924($fp)
	lw $t0, -268($fp)
	sw $t0, -4928($fp)
	lw $t1, -4928($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label332
label334:
	lw $t0, -640($fp)
	sw $t0, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -4924($fp)
label333:
	li $t0, 0
	sw $t0, -4936($fp)
	li $t0, 0
	sw $t0, -4940($fp)
	lw $t0, -1552($fp)
	sw $t0, -4944($fp)
	li $t0, 6956
	sw $t0, -4948($fp)
	lw $t1, -4944($fp)
	lw $t2, -4948($fp)
	bge $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -4940($fp)
label338:
	li $t0, 13404
	sw $t0, -4952($fp)
	lw $t1, -4940($fp)
	lw $t2, -4952($fp)
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -4936($fp)
label336:
	li $t0, 0
	sw $t0, -4956($fp)
	li $t0, 0
	sw $t0, -4960($fp)
	li $t0, 0
	sw $t0, -4964($fp)
	li $t0, 27336
	sw $t0, -4968($fp)
	lw $t0, -1912($fp)
	sw $t0, -4972($fp)
	lw $t1, -4968($fp)
	lw $t2, -4972($fp)
	bgt $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -4964($fp)
label344:
	li $t0, 64480
	sw $t0, -4976($fp)
	lw $t1, -4964($fp)
	lw $t2, -4976($fp)
	bge $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -4960($fp)
label342:
	li $t0, 0
	sw $t0, -4980($fp)
	li $t0, 14578
	sw $t0, -4984($fp)
	lw $t1, -4984($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label347:
	lw $t0, -1612($fp)
	sw $t0, -4988($fp)
	lw $t1, -4988($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -4980($fp)
label346:
	addi $t0, $fp, -228
	sw $t0, -4992($fp)
	lw $t0, -724($fp)
	sw $t0, -4996($fp)
	li $t0, 4
	lw $t1, -4996($fp)
	mul $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	lw $t1, -4992($fp)
	add $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	lw $t1, 0($t0)
	sw $t1, -5008($fp)
	li $t0, 0
	lw $t1, -5008($fp)
	sub $t0, $t0, $t1
	sw $t0, -5012($fp)
	addi $sp, $sp, -4
	lw $t0, -4960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5012($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5016($fp)
	addi $sp, $sp, 16
	lw $t1, -5016($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label339
label339:
	li $t0, 1
	sw $t0, -4956($fp)
label340:
	addi $sp, $sp, -4
	lw $t0, -4924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4956($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5020($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -4908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5024($fp)
	addi $sp, $sp, 16
	li $t0, 30995
	sw $t0, -5028($fp)
	lw $t0, -5024($fp)
	lw $t1, -5028($fp)
	add $t0, $t0, $t1
	sw $t0, -5032($fp)
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5036($fp)
	addi $sp, $sp, 12
	lw $t0, -4808($fp)
	lw $t1, -5036($fp)
	mul $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t1, -4788($fp)
	lw $t2, -5040($fp)
	beq $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -4764($fp)
label323:
	lw $t0, -4744($fp)
	sw $t0, -5044($fp)
	li $t0, 0
	sw $t0, -5048($fp)
	lw $t0, -1180($fp)
	sw $t0, -5052($fp)
	lw $t0, -712($fp)
	sw $t0, -5056($fp)
	lw $t0, -5052($fp)
	lw $t1, -5056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5060($fp)
	li $t0, 0
	sw $t0, -5064($fp)
	addi $t0, $fp, -240
	sw $t0, -5068($fp)
	lw $t0, -2416($fp)
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
	lw $t1, -5084($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label350:
	li $t0, 1
	sw $t0, -5064($fp)
label351:
	lw $t1, -5060($fp)
	lw $t2, -5064($fp)
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -5048($fp)
label349:
	lw $t0, -304($fp)
	sw $t0, -5088($fp)
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label355
label355:
	li $t0, 62648
	sw $t0, -5092($fp)
	li $t0, 0
	lw $t1, -5092($fp)
	sub $t0, $t0, $t1
	sw $t0, -5096($fp)
	li $t0, 13058
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -5104($fp)
	li $t0, 0
	sw $t0, -5108($fp)
	addi $t0, $fp, -240
	sw $t0, -5112($fp)
	li $t0, 0
	sw $t0, -5116($fp)
	li $t0, 4
	lw $t1, -5116($fp)
	mul $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	lw $t1, -5112($fp)
	add $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	lw $t1, 0($t0)
	sw $t1, -5128($fp)
	lw $t1, -5128($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label356
label356:
	li $t0, 1
	sw $t0, -5108($fp)
label357:
	addi $sp, $sp, -4
	lw $t0, -5104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5132($fp)
	addi $sp, $sp, 12
	lw $t1, -5096($fp)
	lw $t2, -5132($fp)
	beq $t1, $t2, label352
	j label353
label352:
	addi $t0, $fp, -260
	sw $t0, -5136($fp)
	lw $t0, -4476($fp)
	sw $t0, -5140($fp)
	lw $t0, -1528($fp)
	sw $t0, -5144($fp)
	lw $t0, -5140($fp)
	lw $t1, -5144($fp)
	mul $t0, $t0, $t1
	sw $t0, -5148($fp)
	li $t0, 61010
	sw $t0, -5152($fp)
	lw $t0, -724($fp)
	sw $t0, -5156($fp)
	lw $t0, -5152($fp)
	lw $t1, -5156($fp)
	mul $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -5148($fp)
	lw $t1, -5160($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	li $t0, 4
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, -5136($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, 0($t0)
	sw $t1, -5176($fp)
	addi $t0, $fp, -32
	sw $t0, -5180($fp)
	li $t0, 0
	sw $t0, -5184($fp)
	lw $t0, -2440($fp)
	sw $t0, -5188($fp)
	lw $t1, -5188($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label358:
	li $t0, 1
	sw $t0, -5184($fp)
label359:
	lw $t0, -2464($fp)
	sw $t0, -5192($fp)
	lw $t0, -1888($fp)
	sw $t0, -5196($fp)
	lw $t0, -5192($fp)
	lw $t1, -5196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5200($fp)
	lw $t0, -5184($fp)
	lw $t1, -5200($fp)
	sub $t0, $t0, $t1
	sw $t0, -5204($fp)
	li $t0, 4
	lw $t1, -5204($fp)
	mul $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	lw $t1, -5180($fp)
	add $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	lw $t1, 0($t0)
	sw $t1, -5216($fp)
	j label354
label353:
	li $t0, 15564
	sw $t0, -5220($fp)
	lw $t1, -5220($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 0
	sw $t0, -5224($fp)
	li $t0, 0
	sw $t0, -5228($fp)
	li $t0, 39685
	sw $t0, -5232($fp)
	lw $t0, -1912($fp)
	sw $t0, -5236($fp)
	lw $t1, -5232($fp)
	lw $t2, -5236($fp)
	beq $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -5228($fp)
label366:
	li $t0, 54970
	sw $t0, -5240($fp)
	lw $t1, -5228($fp)
	lw $t2, -5240($fp)
	bne $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -5224($fp)
label364:
	addi $t0, $fp, -120
	sw $t0, -5244($fp)
	lw $t0, -1900($fp)
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
	li $t0, 0
	lw $t1, -5260($fp)
	sub $t0, $t0, $t1
	sw $t0, -5264($fp)
	li $t0, 55838
	sw $t0, -5268($fp)
	lw $t0, -2428($fp)
	sw $t0, -5272($fp)
	lw $t0, -5268($fp)
	lw $t1, -5272($fp)
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	li $t0, 28434
	sw $t0, -5280($fp)
	lw $t0, -5276($fp)
	lw $t1, -5280($fp)
	add $t0, $t0, $t1
	sw $t0, -5284($fp)
	addi $sp, $sp, -4
	lw $t0, -5224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5288($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5292($fp)
	lw $t0, -2440($fp)
	sw $t0, -5296($fp)
	lw $t0, -1852($fp)
	sw $t0, -5300($fp)
	lw $t0, -5296($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, 4($fp)
	sw $t0, -5308($fp)
	lw $t1, -5304($fp)
	lw $t2, -5308($fp)
	bgt $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -5292($fp)
label368:
	li $t0, 0
	sw $t0, -5312($fp)
	li $t0, 42127
	sw $t0, -5316($fp)
	li $t0, 1
	sw $t0, -5320($fp)
	lw $t0, -5316($fp)
	lw $t1, -5320($fp)
	mul $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t1, -5324($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label371
label371:
	lw $t0, -2380($fp)
	sw $t0, -5328($fp)
	lw $t1, -5328($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -5312($fp)
label370:
	li $t0, 41024
	sw $t0, -5332($fp)
	li $t0, 0
	lw $t1, -5332($fp)
	sub $t0, $t0, $t1
	sw $t0, -5336($fp)
	li $t0, 0
	lw $t1, -5336($fp)
	sub $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -4428($fp)
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -5348($fp)
	addi $sp, $sp, -4
	lw $t0, -5312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5348($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5352($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -52
	sw $t0, -5356($fp)
	li $t0, 2
	sw $t0, -5360($fp)
	li $t0, 4
	lw $t1, -5360($fp)
	mul $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	lw $t1, -5356($fp)
	add $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	lw $t1, 0($t0)
	sw $t1, -5372($fp)
	li $t0, 60860
	sw $t0, -5376($fp)
	lw $t0, -5372($fp)
	lw $t1, -5376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5380($fp)
	addi $sp, $sp, -4
	lw $t0, -5292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5380($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5384($fp)
	addi $sp, $sp, 16
	lw $t0, -5288($fp)
	lw $t1, -5384($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	li $t0, 0
	sw $t0, -5392($fp)
	li $t0, 0
	sw $t0, -5396($fp)
	li $t0, 62354
	sw $t0, -5400($fp)
	lw $t1, -5400($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label374:
	li $t0, 1
	sw $t0, -5396($fp)
label375:
	lw $t0, -484($fp)
	sw $t0, -5404($fp)
	lw $t1, -5396($fp)
	lw $t2, -5404($fp)
	blt $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -5392($fp)
label373:
	lw $t0, -280($fp)
	sw $t0, -5408($fp)
	li $t0, 39450
	sw $t0, -5412($fp)
	lw $t0, -5408($fp)
	lw $t1, -5412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5416($fp)
	li $t0, 0
	sw $t0, -5420($fp)
	lw $t0, -4404($fp)
	sw $t0, -5424($fp)
	lw $t1, -5424($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label379:
	lw $t0, -1504($fp)
	sw $t0, -5428($fp)
	lw $t1, -5428($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label378
label378:
	li $t0, 57402
	sw $t0, -5432($fp)
	lw $t1, -5432($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -5420($fp)
label377:
	addi $sp, $sp, -4
	lw $t0, -5392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5420($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5436($fp)
	addi $sp, $sp, 16
	lw $t0, -5388($fp)
	lw $t1, -5436($fp)
	add $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -1288($fp)
	sw $t0, -5444($fp)
	addi $t0, $fp, -164
	sw $t0, -5448($fp)
	li $t0, 5
	sw $t0, -5452($fp)
	li $t0, 4
	lw $t1, -5452($fp)
	mul $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	lw $t1, -5448($fp)
	add $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	lw $t1, 0($t0)
	sw $t1, -5464($fp)
	lw $t0, -5444($fp)
	lw $t1, -5464($fp)
	mul $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5440($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5472($fp)
	j label362
label361:
	li $t0, 0
	sw $t0, -5476($fp)
	li $t0, 0
	sw $t0, -5480($fp)
	lw $t0, -2452($fp)
	sw $t0, -5484($fp)
	li $t0, 24154
	sw $t0, -5488($fp)
	lw $t1, -5484($fp)
	lw $t2, -5488($fp)
	beq $t1, $t2, label382
	j label384
label384:
	li $t0, 540
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -5480($fp)
label383:
	lw $t0, -1516($fp)
	sw $t0, -5496($fp)
	li $t0, 0
	lw $t1, -5496($fp)
	sub $t0, $t0, $t1
	sw $t0, -5500($fp)
	li $t0, 0
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5504($fp)
	addi $sp, $sp, -4
	lw $t0, -5480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5508($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5512($fp)
	li $t0, 0
	sw $t0, -5516($fp)
	lw $t0, -4416($fp)
	sw $t0, -5520($fp)
	lw $t0, -4440($fp)
	sw $t0, -5524($fp)
	lw $t1, -5520($fp)
	lw $t2, -5524($fp)
	bgt $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -5516($fp)
label388:
	li $t0, 60985
	sw $t0, -5528($fp)
	lw $t1, -5516($fp)
	lw $t2, -5528($fp)
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -5512($fp)
label386:
	lw $t0, -2224($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -5536($fp)
	addi $sp, $sp, -4
	lw $t0, -5512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5540($fp)
	addi $sp, $sp, 12
	lw $t1, -5508($fp)
	lw $t2, -5540($fp)
	ble $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -5476($fp)
label381:
label362:
label354:
	j label287
label286:
label389:
	lw $t0, -2392($fp)
	sw $t0, -5544($fp)
	lw $t0, -676($fp)
	sw $t0, -5548($fp)
	li $t0, 37559
	sw $t0, -5552($fp)
	lw $t0, -5548($fp)
	lw $t1, -5552($fp)
	sub $t0, $t0, $t1
	sw $t0, -5556($fp)
	lw $t0, -1876($fp)
	sw $t0, -5560($fp)
	lw $t0, -5556($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5564($fp)
	li $t0, 11476
	sw $t0, -5568($fp)
	lw $t0, -5564($fp)
	lw $t1, -5568($fp)
	add $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t1, -5544($fp)
	lw $t2, -5572($fp)
	blt $t1, $t2, label390
	j label391
label390:
	li $t0, 17979
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	sw $t0, -5600($fp)
	li $t0, 3018
	sw $t0, -5604($fp)
	addi $t0, $fp, -5588
	sw $t0, -5608($fp)
	li $t0, 0
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
	li $t0, 7836
	sw $t0, -5628($fp)
	addi $t0, $fp, -5588
	sw $t0, -5632($fp)
	li $t0, 1
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
	li $t0, 40446
	sw $t0, -5652($fp)
	addi $t0, $fp, -5588
	sw $t0, -5656($fp)
	li $t0, 2
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
	li $t0, 47705
	sw $t0, -5676($fp)
	addi $t0, $fp, -5588
	sw $t0, -5680($fp)
	li $t0, 3
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
	li $t0, 4949
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	sw $t0, -5708($fp)
	li $t0, 14559
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	sw $t0, -5720($fp)
	li $t0, 0
	sw $t0, -5724($fp)
	lw $t0, -1180($fp)
	sw $t0, -5728($fp)
	lw $t0, -832($fp)
	sw $t0, -5732($fp)
	lw $t1, -5728($fp)
	lw $t2, -5732($fp)
	bge $t1, $t2, label397
	j label399
label399:
	lw $t0, -832($fp)
	sw $t0, -5736($fp)
	lw $t1, -5736($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -5724($fp)
label398:
	li $t0, 0
	sw $t0, -5740($fp)
	lw $t0, -2380($fp)
	sw $t0, -5744($fp)
	li $t0, 0
	lw $t1, -5744($fp)
	sub $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -2248($fp)
	sw $t0, -5752($fp)
	lw $t1, -5748($fp)
	lw $t2, -5752($fp)
	ble $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -5740($fp)
label401:
	li $t0, 0
	sw $t0, -5756($fp)
	lw $t0, -268($fp)
	sw $t0, -5760($fp)
	li $t0, 40165
	sw $t0, -5764($fp)
	lw $t0, -5760($fp)
	lw $t1, -5764($fp)
	sub $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t1, -5768($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label404
label404:
	lw $t0, -1912($fp)
	sw $t0, -5772($fp)
	lw $t1, -5772($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -5756($fp)
label403:
	addi $sp, $sp, -4
	lw $t0, -5724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5756($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5776($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5776($fp)
	sub $t0, $t0, $t1
	sw $t0, -5780($fp)
	lw $t1, -5780($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label396
label396:
	lw $t0, -304($fp)
	sw $t0, -5784($fp)
	li $t0, 0
	lw $t1, -5784($fp)
	sub $t0, $t0, $t1
	sw $t0, -5788($fp)
	li $t0, 0
	sw $t0, -5792($fp)
	addi $t0, $fp, -240
	sw $t0, -5796($fp)
	lw $t0, -844($fp)
	sw $t0, -5800($fp)
	li $t0, 4
	lw $t1, -5800($fp)
	mul $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	lw $t1, -5796($fp)
	add $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	lw $t1, 0($t0)
	sw $t1, -5812($fp)
	li $t0, 0
	sw $t0, -5816($fp)
	li $t0, 0
	sw $t0, -5820($fp)
	lw $t0, -652($fp)
	sw $t0, -5824($fp)
	lw $t1, -5824($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label409
label409:
	li $t0, 1
	sw $t0, -5820($fp)
label410:
	lw $t0, -1888($fp)
	sw $t0, -5828($fp)
	lw $t1, -5820($fp)
	lw $t2, -5828($fp)
	bge $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -5816($fp)
label408:
	li $t0, 0
	sw $t0, -5832($fp)
	lw $t0, -2464($fp)
	sw $t0, -5836($fp)
	li $t0, 0
	lw $t1, -5836($fp)
	sub $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -5832($fp)
label412:
	addi $sp, $sp, -4
	lw $t0, -5812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5832($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5844($fp)
	addi $sp, $sp, 16
	lw $t1, -5844($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label405
label405:
	li $t0, 1
	sw $t0, -5792($fp)
label406:
	addi $sp, $sp, -4
	lw $t0, -5788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5848($fp)
	addi $sp, $sp, 12
	lw $t1, -5848($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label395
label395:
	addi $t0, $fp, -240
	sw $t0, -5852($fp)
	li $t0, 2
	sw $t0, -5856($fp)
	li $t0, 4
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	lw $t1, -5852($fp)
	add $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, 0($t0)
	sw $t1, -5868($fp)
	lw $t0, -1924($fp)
	sw $t0, -5872($fp)
	lw $t0, -5868($fp)
	lw $t1, -5872($fp)
	mul $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t1, -5876($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label393
label392:
	lw $t0, -1912($fp)
	sw $t0, -5880($fp)
	li $t0, 29878
	sw $t0, -5884($fp)
	lw $t0, -5880($fp)
	lw $t1, -5884($fp)
	mul $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -676($fp)
	sw $t0, -5892($fp)
	lw $t0, -5888($fp)
	lw $t1, -5892($fp)
	add $t0, $t0, $t1
	sw $t0, -5896($fp)
	li $t0, 0
	sw $t0, -5900($fp)
	addi $t0, $fp, -240
	sw $t0, -5904($fp)
	li $t0, 1
	sw $t0, -5908($fp)
	li $t0, 4
	lw $t1, -5908($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	lw $t1, -5904($fp)
	add $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	lw $t1, 0($t0)
	sw $t1, -5920($fp)
	lw $t1, -5920($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label413
label413:
	li $t0, 1
	sw $t0, -5900($fp)
label414:
	lw $t0, -268($fp)
	sw $t0, -5924($fp)
	li $t0, 55729
	sw $t0, -5928($fp)
	lw $t0, -5924($fp)
	lw $t1, -5928($fp)
	mul $t0, $t0, $t1
	sw $t0, -5932($fp)
	addi $sp, $sp, -4
	lw $t0, -5896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5936($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5940($fp)
	lw $t0, -484($fp)
	sw $t0, -5944($fp)
	lw $t1, -5944($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label415:
	li $t0, 1
	sw $t0, -5940($fp)
label416:
	lw $t0, -5936($fp)
	lw $t1, -5940($fp)
	mul $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -5952($fp)
	j label394
label393:
	li $t0, 0
	sw $t0, -5956($fp)
	lw $t0, -676($fp)
	sw $t0, -5960($fp)
	li $t0, 0
	lw $t1, -5960($fp)
	sub $t0, $t0, $t1
	sw $t0, -5964($fp)
	addi $t0, $fp, -32
	sw $t0, -5968($fp)
	li $t0, 4
	sw $t0, -5972($fp)
	li $t0, 4
	lw $t1, -5972($fp)
	mul $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	lw $t1, -5968($fp)
	add $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	lw $t1, 0($t0)
	sw $t1, -5984($fp)
	li $t0, 0
	lw $t1, -5984($fp)
	sub $t0, $t0, $t1
	sw $t0, -5988($fp)
	lw $t0, -5964($fp)
	lw $t1, -5988($fp)
	add $t0, $t0, $t1
	sw $t0, -5992($fp)
	li $t0, 59386
	sw $t0, -5996($fp)
	li $t0, 58604
	sw $t0, -6000($fp)
	lw $t0, -5996($fp)
	lw $t1, -6000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6004($fp)
	li $t0, 4646
	sw $t0, -6008($fp)
	lw $t0, -6004($fp)
	lw $t1, -6008($fp)
	mul $t0, $t0, $t1
	sw $t0, -6012($fp)
	addi $t0, $fp, -240
	sw $t0, -6016($fp)
	lw $t0, -700($fp)
	sw $t0, -6020($fp)
	li $t0, 4
	lw $t1, -6020($fp)
	mul $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	lw $t1, -6016($fp)
	add $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t0, -6028($fp)
	lw $t1, 0($t0)
	sw $t1, -6032($fp)
	lw $t0, -6012($fp)
	lw $t1, -6032($fp)
	add $t0, $t0, $t1
	sw $t0, -6036($fp)
	lw $t1, -5992($fp)
	lw $t2, -6036($fp)
	blt $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -5956($fp)
label418:
label394:
label419:
	addi $t0, $fp, -132
	sw $t0, -6040($fp)
	li $t0, 1
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
	lw $t1, -6056($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 0
	sw $t0, -6060($fp)
	li $t0, 0
	sw $t0, -6064($fp)
	lw $t0, -5716($fp)
	sw $t0, -6068($fp)
	lw $t1, -6068($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label426:
	lw $t0, -1288($fp)
	sw $t0, -6072($fp)
	lw $t1, -6072($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -6064($fp)
label425:
	lw $t0, -724($fp)
	sw $t0, -6076($fp)
	li $t0, 0
	lw $t1, -6076($fp)
	sub $t0, $t0, $t1
	sw $t0, -6080($fp)
	li $t0, 0
	sw $t0, -6084($fp)
	li $t0, 0
	sw $t0, -6088($fp)
	li $t0, 62048
	sw $t0, -6092($fp)
	li $t0, 9891
	sw $t0, -6096($fp)
	lw $t1, -6092($fp)
	lw $t2, -6096($fp)
	bgt $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -6088($fp)
label430:
	li $t0, 43312
	sw $t0, -6100($fp)
	lw $t1, -6088($fp)
	lw $t2, -6100($fp)
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -6084($fp)
label428:
	addi $sp, $sp, -4
	lw $t0, -6064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6084($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6104($fp)
	addi $sp, $sp, 16
	lw $t0, -1576($fp)
	sw $t0, -6108($fp)
	li $t0, 63645
	sw $t0, -6112($fp)
	li $t0, 0
	lw $t1, -6112($fp)
	sub $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -6108($fp)
	lw $t1, -6116($fp)
	mul $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t1, -6104($fp)
	lw $t2, -6120($fp)
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -6060($fp)
label423:
	j label419
label421:
	li $t0, 63920
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	sw $t0, -6136($fp)
	li $t0, 1930
	sw $t0, -6140($fp)
	addi $t0, $fp, -6124
	sw $t0, -6144($fp)
	li $t0, 0
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6144($fp)
	lw $t1, -6152($fp)
	add $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6140($fp)
	lw $t1, -6156($fp)
	sw $t0, 0($t1)
	lw $t0, -6156($fp)
	lw $t1, 0($t0)
	sw $t1, -6160($fp)
	li $t0, 64185
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	sw $t0, -6172($fp)
	li $t0, 0
	sw $t0, -6176($fp)
	li $t0, 0
	sw $t0, -6180($fp)
	addi $t0, $fp, -6124
	sw $t0, -6184($fp)
	lw $t0, -640($fp)
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
	lw $t1, -6200($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -6180($fp)
label434:
	li $t0, 59369
	sw $t0, -6204($fp)
	li $t0, 0
	lw $t1, -6204($fp)
	sub $t0, $t0, $t1
	sw $t0, -6208($fp)
	lw $t0, -6180($fp)
	lw $t1, -6208($fp)
	mul $t0, $t0, $t1
	sw $t0, -6212($fp)
	li $t0, 0
	sw $t0, -6216($fp)
	lw $t0, -268($fp)
	sw $t0, -6220($fp)
	lw $t1, -6220($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label436
label437:
	lw $t0, -5716($fp)
	sw $t0, -6224($fp)
	lw $t1, -6224($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -6216($fp)
label436:
	lw $t0, -6168($fp)
	sw $t0, -6228($fp)
	li $t0, 0
	lw $t1, -6228($fp)
	sub $t0, $t0, $t1
	sw $t0, -6232($fp)
	addi $t0, $fp, -88
	sw $t0, -6236($fp)
	lw $t0, -712($fp)
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
	lw $t0, -724($fp)
	sw $t0, -6256($fp)
	lw $t0, -6252($fp)
	lw $t1, -6256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6260($fp)
	addi $sp, $sp, -4
	lw $t0, -6216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6264($fp)
	addi $sp, $sp, 16
	lw $t0, -292($fp)
	sw $t0, -6268($fp)
	lw $t0, -6264($fp)
	lw $t1, -6268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6272($fp)
	lw $t0, -6212($fp)
	lw $t1, -6272($fp)
	add $t0, $t0, $t1
	sw $t0, -6276($fp)
	li $t0, 0
	sw $t0, -6280($fp)
	li $t0, 39489
	sw $t0, -6284($fp)
	lw $t1, -6284($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label438:
	li $t0, 1
	sw $t0, -6280($fp)
label439:
	addi $t0, $fp, -68
	sw $t0, -6288($fp)
	lw $t0, -688($fp)
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
	lw $t0, -292($fp)
	sw $t0, -6308($fp)
	lw $t0, -6132($fp)
	sw $t0, -6312($fp)
	lw $t0, -6308($fp)
	lw $t1, -6312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6316($fp)
	li $t0, 10126
	sw $t0, -6320($fp)
	lw $t0, -6316($fp)
	lw $t1, -6320($fp)
	add $t0, $t0, $t1
	sw $t0, -6324($fp)
	addi $sp, $sp, -4
	lw $t0, -6304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6328($fp)
	addi $sp, $sp, 12
	lw $t0, -6280($fp)
	lw $t1, -6328($fp)
	mul $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t1, -6276($fp)
	lw $t2, -6332($fp)
	bgt $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -6176($fp)
label432:
	li $t0, 0
	sw $t0, -6336($fp)
	li $t0, 0
	sw $t0, -6340($fp)
	lw $t0, -1540($fp)
	sw $t0, -6344($fp)
	lw $t1, -6344($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -6340($fp)
label446:
	lw $t0, -1588($fp)
	sw $t0, -6348($fp)
	lw $t0, -1264($fp)
	sw $t0, -6352($fp)
	lw $t0, -6348($fp)
	lw $t1, -6352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6356($fp)
	lw $t0, -832($fp)
	sw $t0, -6360($fp)
	lw $t0, -6356($fp)
	lw $t1, -6360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6364($fp)
	lw $t1, -6340($fp)
	lw $t2, -6364($fp)
	bgt $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -6336($fp)
label444:
	li $t0, 11813
	sw $t0, -6368($fp)
	lw $t1, -6336($fp)
	lw $t2, -6368($fp)
	bge $t1, $t2, label440
	j label441
label440:
	li $t0, 0
	sw $t0, -6372($fp)
	li $t0, 0
	sw $t0, -6376($fp)
	li $t0, 52259
	sw $t0, -6380($fp)
	lw $t1, -6380($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label449
label449:
	li $t0, 1
	sw $t0, -6376($fp)
label450:
	li $t0, 0
	lw $t1, -6376($fp)
	sub $t0, $t0, $t1
	sw $t0, -6384($fp)
	li $t0, 0
	sw $t0, -6388($fp)
	lw $t0, -628($fp)
	sw $t0, -6392($fp)
	lw $t0, -856($fp)
	sw $t0, -6396($fp)
	lw $t0, -6392($fp)
	lw $t1, -6396($fp)
	sub $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t0, -1264($fp)
	sw $t0, -6404($fp)
	lw $t1, -6400($fp)
	lw $t2, -6404($fp)
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -6388($fp)
label452:
	li $t0, 42508
	sw $t0, -6408($fp)
	li $t0, 17962
	sw $t0, -6412($fp)
	lw $t0, -6408($fp)
	lw $t1, -6412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6416($fp)
	lw $t0, -2440($fp)
	sw $t0, -6420($fp)
	lw $t0, -6416($fp)
	lw $t1, -6420($fp)
	sub $t0, $t0, $t1
	sw $t0, -6424($fp)
	addi $sp, $sp, -4
	lw $t0, -6384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6424($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6428($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -132
	sw $t0, -6432($fp)
	lw $t0, -1600($fp)
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
	lw $t0, -832($fp)
	sw $t0, -6452($fp)
	lw $t0, -6448($fp)
	lw $t1, -6452($fp)
	mul $t0, $t0, $t1
	sw $t0, -6456($fp)
	li $t0, 0
	sw $t0, -6460($fp)
	li $t0, 24677
	sw $t0, -6464($fp)
	lw $t1, -6464($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label455
label456:
	li $t0, 22911
	sw $t0, -6468($fp)
	lw $t1, -6468($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label455
label455:
	li $t0, 1282
	sw $t0, -6472($fp)
	lw $t1, -6472($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -6460($fp)
label454:
	addi $sp, $sp, -4
	lw $t0, -6456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6460($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6476($fp)
	addi $sp, $sp, 12
	lw $t1, -6428($fp)
	lw $t2, -6476($fp)
	bgt $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -6372($fp)
label448:
	j label442
label441:
	li $t0, 0
	sw $t0, -6480($fp)
	addi $t0, $fp, -5588
	sw $t0, -6484($fp)
	li $t0, 0
	sw $t0, -6488($fp)
	li $t0, 64842
	sw $t0, -6492($fp)
	li $t0, 1
	sw $t0, -6496($fp)
	lw $t0, -6492($fp)
	lw $t1, -6496($fp)
	mul $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label461
label461:
	lw $t0, -5596($fp)
	sw $t0, -6504($fp)
	lw $t1, -6504($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -6488($fp)
label460:
	li $t0, 4
	lw $t1, -6488($fp)
	mul $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	lw $t1, -6484($fp)
	add $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	lw $t1, 0($t0)
	sw $t1, -6516($fp)
	li $t0, 0
	sw $t0, -6520($fp)
	li $t0, 55035
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -6528($fp)
	li $t0, 0
	sw $t0, -6532($fp)
	li $t0, 0
	sw $t0, -6536($fp)
	li $t0, 11316
	sw $t0, -6540($fp)
	lw $t0, -5704($fp)
	sw $t0, -6544($fp)
	lw $t1, -6540($fp)
	lw $t2, -6544($fp)
	bge $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -6536($fp)
label467:
	lw $t0, -1900($fp)
	sw $t0, -6548($fp)
	lw $t1, -6536($fp)
	lw $t2, -6548($fp)
	bge $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -6532($fp)
label465:
	li $t0, 0
	sw $t0, -6552($fp)
	lw $t0, -688($fp)
	sw $t0, -6556($fp)
	lw $t1, -6556($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label468:
	li $t0, 1
	sw $t0, -6552($fp)
label469:
	li $t0, 0
	lw $t1, -6552($fp)
	sub $t0, $t0, $t1
	sw $t0, -6560($fp)
	addi $sp, $sp, -4
	lw $t0, -6528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6560($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6564($fp)
	addi $sp, $sp, 16
	lw $t1, -6564($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -6520($fp)
label463:
	li $t0, 0
	lw $t1, -6520($fp)
	sub $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t1, -6516($fp)
	lw $t2, -6568($fp)
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -6480($fp)
label458:
label442:
	j label389
label391:
label287:
	lw $t0, -268($fp)
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6588($fp)
	li $t0, 0
	sw $t0, -6592($fp)
	li $t0, 4
	lw $t1, -6592($fp)
	mul $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	lw $t1, -6588($fp)
	add $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, 0($t0)
	sw $t1, -6604($fp)
	lw $t0, -6604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6608($fp)
	li $t0, 1
	sw $t0, -6612($fp)
	li $t0, 4
	lw $t1, -6612($fp)
	mul $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	lw $t1, -6608($fp)
	add $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	lw $t1, 0($t0)
	sw $t1, -6624($fp)
	lw $t0, -6624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6628($fp)
	li $t0, 2
	sw $t0, -6632($fp)
	li $t0, 4
	lw $t1, -6632($fp)
	mul $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	lw $t1, -6628($fp)
	add $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	lw $t1, 0($t0)
	sw $t1, -6644($fp)
	lw $t0, -6644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6648($fp)
	li $t0, 3
	sw $t0, -6652($fp)
	li $t0, 4
	lw $t1, -6652($fp)
	mul $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	lw $t1, -6648($fp)
	add $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	lw $t1, 0($t0)
	sw $t1, -6664($fp)
	lw $t0, -6664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6668($fp)
	li $t0, 4
	sw $t0, -6672($fp)
	li $t0, 4
	lw $t1, -6672($fp)
	mul $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	lw $t1, -6668($fp)
	add $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	lw $t1, 0($t0)
	sw $t1, -6684($fp)
	lw $t0, -6684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6688($fp)
	li $t0, 5
	sw $t0, -6692($fp)
	li $t0, 4
	lw $t1, -6692($fp)
	mul $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, -6688($fp)
	add $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	lw $t1, 0($t0)
	sw $t1, -6704($fp)
	lw $t0, -6704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6708($fp)
	li $t0, 6
	sw $t0, -6712($fp)
	li $t0, 4
	lw $t1, -6712($fp)
	mul $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	lw $t1, -6708($fp)
	add $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	lw $t1, 0($t0)
	sw $t1, -6724($fp)
	lw $t0, -6724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6736($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -6756($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -6776($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -6796($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -6816($fp)
	li $t0, 4
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
	lw $t0, -6832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -6872($fp)
	li $t0, 0
	sw $t0, -6876($fp)
	li $t0, 4
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, -6872($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	lw $t1, 0($t0)
	sw $t1, -6888($fp)
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -6892($fp)
	li $t0, 1
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
	lw $t0, -6908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -6912($fp)
	li $t0, 2
	sw $t0, -6916($fp)
	li $t0, 4
	lw $t1, -6916($fp)
	mul $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	lw $t1, -6912($fp)
	add $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	lw $t1, 0($t0)
	sw $t1, -6928($fp)
	lw $t0, -6928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -6932($fp)
	li $t0, 3
	sw $t0, -6936($fp)
	li $t0, 4
	lw $t1, -6936($fp)
	mul $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	lw $t1, -6932($fp)
	add $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	lw $t1, 0($t0)
	sw $t1, -6948($fp)
	lw $t0, -6948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6964($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -6984($fp)
	li $t0, 1
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
	addi $t0, $fp, -88
	sw $t0, -7004($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -7024($fp)
	li $t0, 3
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
	addi $t0, $fp, -88
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
	lw $t0, -7060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7064($fp)
	li $t0, 0
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
	lw $t0, -7080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7084($fp)
	li $t0, 1
	sw $t0, -7088($fp)
	li $t0, 4
	lw $t1, -7088($fp)
	mul $t0, $t0, $t1
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	lw $t1, -7084($fp)
	add $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	lw $t1, 0($t0)
	sw $t1, -7100($fp)
	lw $t0, -7100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7104($fp)
	li $t0, 2
	sw $t0, -7108($fp)
	li $t0, 4
	lw $t1, -7108($fp)
	mul $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	lw $t1, -7104($fp)
	add $t0, $t0, $t1
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	lw $t1, 0($t0)
	sw $t1, -7120($fp)
	lw $t0, -7120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7124($fp)
	li $t0, 3
	sw $t0, -7128($fp)
	li $t0, 4
	lw $t1, -7128($fp)
	mul $t0, $t0, $t1
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	lw $t1, -7124($fp)
	add $t0, $t0, $t1
	sw $t0, -7136($fp)
	lw $t0, -7136($fp)
	lw $t1, 0($t0)
	sw $t1, -7140($fp)
	lw $t0, -7140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7144($fp)
	li $t0, 4
	sw $t0, -7148($fp)
	li $t0, 4
	lw $t1, -7148($fp)
	mul $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	lw $t1, -7144($fp)
	add $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	lw $t1, 0($t0)
	sw $t1, -7160($fp)
	lw $t0, -7160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7164($fp)
	li $t0, 5
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
	addi $t0, $fp, -120
	sw $t0, -7184($fp)
	li $t0, 6
	sw $t0, -7188($fp)
	li $t0, 4
	lw $t1, -7188($fp)
	mul $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	lw $t1, -7184($fp)
	add $t0, $t0, $t1
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	lw $t1, 0($t0)
	sw $t1, -7200($fp)
	lw $t0, -7200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7204($fp)
	li $t0, 7
	sw $t0, -7208($fp)
	li $t0, 4
	lw $t1, -7208($fp)
	mul $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	lw $t1, -7204($fp)
	add $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	lw $t1, 0($t0)
	sw $t1, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7228($fp)
	li $t0, 0
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
	addi $t0, $fp, -132
	sw $t0, -7248($fp)
	li $t0, 1
	sw $t0, -7252($fp)
	li $t0, 4
	lw $t1, -7252($fp)
	mul $t0, $t0, $t1
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	lw $t1, -7248($fp)
	add $t0, $t0, $t1
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	lw $t1, 0($t0)
	sw $t1, -7264($fp)
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7268($fp)
	li $t0, 2
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
	lw $t0, -1264($fp)
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -7292($fp)
	lw $t0, -7292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7300($fp)
	li $t0, 0
	sw $t0, -7304($fp)
	li $t0, 4
	lw $t1, -7304($fp)
	mul $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	lw $t1, -7300($fp)
	add $t0, $t0, $t1
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	lw $t1, 0($t0)
	sw $t1, -7316($fp)
	lw $t0, -7316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7320($fp)
	li $t0, 1
	sw $t0, -7324($fp)
	li $t0, 4
	lw $t1, -7324($fp)
	mul $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	lw $t1, -7320($fp)
	add $t0, $t0, $t1
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	lw $t1, 0($t0)
	sw $t1, -7336($fp)
	lw $t0, -7336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7340($fp)
	li $t0, 2
	sw $t0, -7344($fp)
	li $t0, 4
	lw $t1, -7344($fp)
	mul $t0, $t0, $t1
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	lw $t1, -7340($fp)
	add $t0, $t0, $t1
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	lw $t1, 0($t0)
	sw $t1, -7356($fp)
	lw $t0, -7356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7360($fp)
	li $t0, 3
	sw $t0, -7364($fp)
	li $t0, 4
	lw $t1, -7364($fp)
	mul $t0, $t0, $t1
	sw $t0, -7368($fp)
	lw $t0, -7368($fp)
	lw $t1, -7360($fp)
	add $t0, $t0, $t1
	sw $t0, -7372($fp)
	lw $t0, -7372($fp)
	lw $t1, 0($t0)
	sw $t1, -7376($fp)
	lw $t0, -7376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7380($fp)
	li $t0, 4
	sw $t0, -7384($fp)
	li $t0, 4
	lw $t1, -7384($fp)
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	lw $t1, -7380($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	lw $t1, 0($t0)
	sw $t1, -7396($fp)
	lw $t0, -7396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7400($fp)
	li $t0, 5
	sw $t0, -7404($fp)
	li $t0, 4
	lw $t1, -7404($fp)
	mul $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	lw $t1, -7400($fp)
	add $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, 0($t0)
	sw $t1, -7416($fp)
	lw $t0, -7416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7420($fp)
	li $t0, 6
	sw $t0, -7424($fp)
	li $t0, 4
	lw $t1, -7424($fp)
	mul $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, -7420($fp)
	add $t0, $t0, $t1
	sw $t0, -7432($fp)
	lw $t0, -7432($fp)
	lw $t1, 0($t0)
	sw $t1, -7436($fp)
	lw $t0, -7436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -7440($fp)
	li $t0, 7
	sw $t0, -7444($fp)
	li $t0, 4
	lw $t1, -7444($fp)
	mul $t0, $t0, $t1
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	lw $t1, -7440($fp)
	add $t0, $t0, $t1
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	lw $t1, 0($t0)
	sw $t1, -7456($fp)
	lw $t0, -7456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1492($fp)
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1504($fp)
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1516($fp)
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1528($fp)
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1540($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1552($fp)
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1564($fp)
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1576($fp)
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1588($fp)
	sw $t0, -7492($fp)
	lw $t0, -7492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1600($fp)
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1612($fp)
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1624($fp)
	sw $t0, -7504($fp)
	lw $t0, -7504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1636($fp)
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -7512($fp)
	li $t0, 0
	sw $t0, -7516($fp)
	li $t0, 4
	lw $t1, -7516($fp)
	mul $t0, $t0, $t1
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	lw $t1, -7512($fp)
	add $t0, $t0, $t1
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	lw $t1, 0($t0)
	sw $t1, -7528($fp)
	lw $t0, -7528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -7532($fp)
	li $t0, 1
	sw $t0, -7536($fp)
	li $t0, 4
	lw $t1, -7536($fp)
	mul $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	lw $t1, -7532($fp)
	add $t0, $t0, $t1
	sw $t0, -7544($fp)
	lw $t0, -7544($fp)
	lw $t1, 0($t0)
	sw $t1, -7548($fp)
	lw $t0, -7548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -7552($fp)
	li $t0, 2
	sw $t0, -7556($fp)
	li $t0, 4
	lw $t1, -7556($fp)
	mul $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -7560($fp)
	lw $t1, -7552($fp)
	add $t0, $t0, $t1
	sw $t0, -7564($fp)
	lw $t0, -7564($fp)
	lw $t1, 0($t0)
	sw $t1, -7568($fp)
	lw $t0, -7568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -7572($fp)
	li $t0, 3
	sw $t0, -7576($fp)
	li $t0, 4
	lw $t1, -7576($fp)
	mul $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	lw $t1, -7572($fp)
	add $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	lw $t1, 0($t0)
	sw $t1, -7588($fp)
	lw $t0, -7588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -7592($fp)
	li $t0, 4
	sw $t0, -7596($fp)
	li $t0, 4
	lw $t1, -7596($fp)
	mul $t0, $t0, $t1
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	lw $t1, -7592($fp)
	add $t0, $t0, $t1
	sw $t0, -7604($fp)
	lw $t0, -7604($fp)
	lw $t1, 0($t0)
	sw $t1, -7608($fp)
	lw $t0, -7608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -7612($fp)
	li $t0, 5
	sw $t0, -7616($fp)
	li $t0, 4
	lw $t1, -7616($fp)
	mul $t0, $t0, $t1
	sw $t0, -7620($fp)
	lw $t0, -7620($fp)
	lw $t1, -7612($fp)
	add $t0, $t0, $t1
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	lw $t1, 0($t0)
	sw $t1, -7628($fp)
	lw $t0, -7628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -7632($fp)
	li $t0, 6
	sw $t0, -7636($fp)
	li $t0, 4
	lw $t1, -7636($fp)
	mul $t0, $t0, $t1
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	lw $t1, -7632($fp)
	add $t0, $t0, $t1
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	lw $t1, 0($t0)
	sw $t1, -7648($fp)
	lw $t0, -7648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -7652($fp)
	li $t0, 7
	sw $t0, -7656($fp)
	li $t0, 4
	lw $t1, -7656($fp)
	mul $t0, $t0, $t1
	sw $t0, -7660($fp)
	lw $t0, -7660($fp)
	lw $t1, -7652($fp)
	add $t0, $t0, $t1
	sw $t0, -7664($fp)
	lw $t0, -7664($fp)
	lw $t1, 0($t0)
	sw $t1, -7668($fp)
	lw $t0, -7668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1840($fp)
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1852($fp)
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1864($fp)
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1876($fp)
	sw $t0, -7684($fp)
	lw $t0, -7684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1888($fp)
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1900($fp)
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1912($fp)
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1924($fp)
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1936($fp)
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1948($fp)
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7712($fp)
	li $t0, 0
	sw $t0, -7716($fp)
	li $t0, 4
	lw $t1, -7716($fp)
	mul $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	lw $t1, -7712($fp)
	add $t0, $t0, $t1
	sw $t0, -7724($fp)
	lw $t0, -7724($fp)
	lw $t1, 0($t0)
	sw $t1, -7728($fp)
	lw $t0, -7728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7732($fp)
	li $t0, 1
	sw $t0, -7736($fp)
	li $t0, 4
	lw $t1, -7736($fp)
	mul $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, -7732($fp)
	add $t0, $t0, $t1
	sw $t0, -7744($fp)
	lw $t0, -7744($fp)
	lw $t1, 0($t0)
	sw $t1, -7748($fp)
	lw $t0, -7748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7752($fp)
	li $t0, 2
	sw $t0, -7756($fp)
	li $t0, 4
	lw $t1, -7756($fp)
	mul $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	lw $t1, -7752($fp)
	add $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	lw $t1, 0($t0)
	sw $t1, -7768($fp)
	lw $t0, -7768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7772($fp)
	li $t0, 3
	sw $t0, -7776($fp)
	li $t0, 4
	lw $t1, -7776($fp)
	mul $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	lw $t1, -7772($fp)
	add $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	lw $t1, 0($t0)
	sw $t1, -7788($fp)
	lw $t0, -7788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7792($fp)
	li $t0, 4
	sw $t0, -7796($fp)
	li $t0, 4
	lw $t1, -7796($fp)
	mul $t0, $t0, $t1
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	lw $t1, -7792($fp)
	add $t0, $t0, $t1
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	lw $t1, 0($t0)
	sw $t1, -7808($fp)
	lw $t0, -7808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7812($fp)
	li $t0, 5
	sw $t0, -7816($fp)
	li $t0, 4
	lw $t1, -7816($fp)
	mul $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t0, -7820($fp)
	lw $t1, -7812($fp)
	add $t0, $t0, $t1
	sw $t0, -7824($fp)
	lw $t0, -7824($fp)
	lw $t1, 0($t0)
	sw $t1, -7828($fp)
	lw $t0, -7828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7832($fp)
	li $t0, 6
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
	lw $t0, -7848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -7852($fp)
	li $t0, 7
	sw $t0, -7856($fp)
	li $t0, 4
	lw $t1, -7856($fp)
	mul $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	lw $t1, -7852($fp)
	add $t0, $t0, $t1
	sw $t0, -7864($fp)
	lw $t0, -7864($fp)
	lw $t1, 0($t0)
	sw $t1, -7868($fp)
	lw $t0, -7868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -7872($fp)
	li $t0, 0
	sw $t0, -7876($fp)
	li $t0, 4
	lw $t1, -7876($fp)
	mul $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -7880($fp)
	lw $t1, -7872($fp)
	add $t0, $t0, $t1
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	lw $t1, 0($t0)
	sw $t1, -7888($fp)
	lw $t0, -7888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -7892($fp)
	li $t0, 1
	sw $t0, -7896($fp)
	li $t0, 4
	lw $t1, -7896($fp)
	mul $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	lw $t1, -7892($fp)
	add $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	lw $t1, 0($t0)
	sw $t1, -7908($fp)
	lw $t0, -7908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -7912($fp)
	li $t0, 2
	sw $t0, -7916($fp)
	li $t0, 4
	lw $t1, -7916($fp)
	mul $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	lw $t1, -7912($fp)
	add $t0, $t0, $t1
	sw $t0, -7924($fp)
	lw $t0, -7924($fp)
	lw $t1, 0($t0)
	sw $t1, -7928($fp)
	lw $t0, -7928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2224($fp)
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2236($fp)
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2248($fp)
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -7944($fp)
	li $t0, 0
	sw $t0, -7948($fp)
	li $t0, 4
	lw $t1, -7948($fp)
	mul $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	lw $t1, -7944($fp)
	add $t0, $t0, $t1
	sw $t0, -7956($fp)
	lw $t0, -7956($fp)
	lw $t1, 0($t0)
	sw $t1, -7960($fp)
	lw $t0, -7960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -7964($fp)
	li $t0, 1
	sw $t0, -7968($fp)
	li $t0, 4
	lw $t1, -7968($fp)
	mul $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	lw $t1, -7964($fp)
	add $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	lw $t1, 0($t0)
	sw $t1, -7980($fp)
	lw $t0, -7980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -7984($fp)
	li $t0, 2
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
	addi $t0, $fp, -260
	sw $t0, -8004($fp)
	li $t0, 3
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
	addi $t0, $fp, -260
	sw $t0, -8024($fp)
	li $t0, 4
	sw $t0, -8028($fp)
	li $t0, 4
	lw $t1, -8028($fp)
	mul $t0, $t0, $t1
	sw $t0, -8032($fp)
	lw $t0, -8032($fp)
	lw $t1, -8024($fp)
	add $t0, $t0, $t1
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	lw $t1, 0($t0)
	sw $t1, -8040($fp)
	lw $t0, -8040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2380($fp)
	sw $t0, -8044($fp)
	lw $t0, -8044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2392($fp)
	sw $t0, -8048($fp)
	lw $t0, -8048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2404($fp)
	sw $t0, -8052($fp)
	lw $t0, -8052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2416($fp)
	sw $t0, -8056($fp)
	lw $t0, -8056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2428($fp)
	sw $t0, -8060($fp)
	lw $t0, -8060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2440($fp)
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2452($fp)
	sw $t0, -8068($fp)
	lw $t0, -8068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2464($fp)
	sw $t0, -8072($fp)
	lw $t0, -8072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8076($fp)
	lw $t0, 12($fp)
	sw $t0, -8080($fp)
	lw $t1, -8080($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label470:
	li $t0, 1
	sw $t0, -8076($fp)
label471:
	li $t0, 49229
	sw $t0, -8084($fp)
	li $t0, 0
	lw $t1, -8084($fp)
	sub $t0, $t0, $t1
	sw $t0, -8088($fp)
	lw $t0, -8076($fp)
	lw $t1, -8088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8092($fp)
	li $t0, 0
	lw $t1, -8092($fp)
	sub $t0, $t0, $t1
	sw $t0, -8096($fp)
	li $t0, 49783
	sw $t0, -8100($fp)
	lw $t0, -2248($fp)
	sw $t0, -8104($fp)
	lw $t0, -8100($fp)
	lw $t1, -8104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8108($fp)
	lw $t0, -8096($fp)
	lw $t1, -8108($fp)
	sub $t0, $t0, $t1
	sw $t0, -8112($fp)
	lw $t0, -712($fp)
	sw $t0, -8116($fp)
	lw $t0, -8112($fp)
	lw $t1, -8116($fp)
	add $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $ra, -4($fp)
	lw $v0, -8120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label472:
	addi $t0, $fp, -240
	sw $t0, -8124($fp)
	lw $t0, -2224($fp)
	sw $t0, -8128($fp)
	li $t0, 0
	sw $t0, -8132($fp)
	addi $t0, $fp, -240
	sw $t0, -8136($fp)
	li $t0, 1
	sw $t0, -8140($fp)
	li $t0, 4
	lw $t1, -8140($fp)
	mul $t0, $t0, $t1
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	lw $t1, -8136($fp)
	add $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	lw $t1, 0($t0)
	sw $t1, -8152($fp)
	lw $t1, -8152($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label475:
	li $t0, 1
	sw $t0, -8132($fp)
label476:
	addi $t0, $fp, -240
	sw $t0, -8156($fp)
	li $t0, 1
	sw $t0, -8160($fp)
	li $t0, 4
	lw $t1, -8160($fp)
	mul $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	lw $t1, -8156($fp)
	add $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	lw $t1, 0($t0)
	sw $t1, -8172($fp)
	li $t0, 19377
	sw $t0, -8176($fp)
	addi $sp, $sp, -4
	lw $t0, -8132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8176($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8180($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -8184($fp)
	lw $t0, -1612($fp)
	sw $t0, -8188($fp)
	li $t0, 0
	lw $t1, -8188($fp)
	sub $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t0, -1552($fp)
	sw $t0, -8196($fp)
	lw $t1, -8192($fp)
	lw $t2, -8196($fp)
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -8184($fp)
label478:
	addi $sp, $sp, -4
	lw $t0, -8128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8184($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8200($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -8200($fp)
	mul $t0, $t0, $t1
	sw $t0, -8204($fp)
	lw $t0, -8204($fp)
	lw $t1, -8124($fp)
	add $t0, $t0, $t1
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	lw $t1, 0($t0)
	sw $t1, -8212($fp)
	li $t0, 0
	lw $t1, -8212($fp)
	sub $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t1, -8216($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 0
	sw $t0, -8220($fp)
	li $t0, 0
	sw $t0, -8224($fp)
	li $t0, 18051
	sw $t0, -8228($fp)
	li $t0, 0
	sw $t0, -8232($fp)
	li $t0, 49204
	sw $t0, -8236($fp)
	lw $t1, -8236($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label483
label483:
	li $t0, 1
	sw $t0, -8232($fp)
label484:
	li $t0, 20999
	sw $t0, -8240($fp)
	lw $t0, -8232($fp)
	lw $t1, -8240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8244($fp)
	lw $t1, -8228($fp)
	lw $t2, -8244($fp)
	ble $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -8224($fp)
label482:
	li $t0, 0
	sw $t0, -8248($fp)
	addi $t0, $fp, -32
	sw $t0, -8252($fp)
	li $t0, 4
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
	lw $t1, -8268($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label485:
	li $t0, 1
	sw $t0, -8248($fp)
label486:
	lw $t1, -8224($fp)
	lw $t2, -8248($fp)
	beq $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -8220($fp)
label480:
	j label472
label474:
	li $t0, 64311
	sw $t0, -8272($fp)
	lw $t0, -8272($fp)
	sw $t0, -8276($fp)
	lw $t0, -8276($fp)
	sw $t0, -8280($fp)
	li $t0, 12672
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	sw $t0, -8292($fp)
	li $t0, 57480
	sw $t0, -8296($fp)
	lw $t0, -8296($fp)
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	sw $t0, -8304($fp)
	li $t0, 706
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	sw $t0, -8312($fp)
	lw $t0, -8312($fp)
	sw $t0, -8316($fp)
	li $t0, 11322
	sw $t0, -8320($fp)
	lw $t0, -8320($fp)
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	sw $t0, -8328($fp)
	li $t0, 51314
	sw $t0, -8332($fp)
	lw $t0, -8332($fp)
	sw $t0, -8336($fp)
	lw $t0, -8336($fp)
	sw $t0, -8340($fp)
	lw $t0, -8276($fp)
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8288($fp)
	sw $t0, -8348($fp)
	lw $t0, -8348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8300($fp)
	sw $t0, -8352($fp)
	lw $t0, -8352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8312($fp)
	sw $t0, -8356($fp)
	lw $t0, -8356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8324($fp)
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8336($fp)
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8368($fp)
	li $t0, 40195
	sw $t0, -8372($fp)
	lw $t0, -676($fp)
	sw $t0, -8376($fp)
	lw $t0, -8372($fp)
	lw $t1, -8376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8380($fp)
	addi $t0, $fp, -32
	sw $t0, -8384($fp)
	lw $t0, -1504($fp)
	sw $t0, -8388($fp)
	li $t0, 4
	lw $t1, -8388($fp)
	mul $t0, $t0, $t1
	sw $t0, -8392($fp)
	lw $t0, -8392($fp)
	lw $t1, -8384($fp)
	add $t0, $t0, $t1
	sw $t0, -8396($fp)
	lw $t0, -8396($fp)
	lw $t1, 0($t0)
	sw $t1, -8400($fp)
	lw $t0, -8380($fp)
	lw $t1, -8400($fp)
	sub $t0, $t0, $t1
	sw $t0, -8404($fp)
	li $t0, 0
	sw $t0, -8408($fp)
	li $t0, 0
	sw $t0, -8412($fp)
	lw $t0, -1840($fp)
	sw $t0, -8416($fp)
	li $t0, 39410
	sw $t0, -8420($fp)
	lw $t1, -8416($fp)
	lw $t2, -8420($fp)
	ble $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -8412($fp)
label493:
	lw $t0, -1948($fp)
	sw $t0, -8424($fp)
	lw $t1, -8412($fp)
	lw $t2, -8424($fp)
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -8408($fp)
label491:
	addi $t0, $fp, -196
	sw $t0, -8428($fp)
	li $t0, 7
	sw $t0, -8432($fp)
	li $t0, 4
	lw $t1, -8432($fp)
	mul $t0, $t0, $t1
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	lw $t1, -8428($fp)
	add $t0, $t0, $t1
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	lw $t1, 0($t0)
	sw $t1, -8444($fp)
	lw $t0, -8312($fp)
	sw $t0, -8448($fp)
	lw $t0, -2392($fp)
	sw $t0, -8452($fp)
	lw $t0, -8448($fp)
	lw $t1, -8452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8456($fp)
	li $t0, 21448
	sw $t0, -8460($fp)
	lw $t0, -8456($fp)
	lw $t1, -8460($fp)
	sub $t0, $t0, $t1
	sw $t0, -8464($fp)
	addi $sp, $sp, -4
	lw $t0, -8408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8464($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8468($fp)
	addi $sp, $sp, 16
	lw $t0, -8404($fp)
	lw $t1, -8468($fp)
	sub $t0, $t0, $t1
	sw $t0, -8472($fp)
	lw $t1, -8472($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label489
label489:
	li $t0, 0
	sw $t0, -8476($fp)
	addi $t0, $fp, -228
	sw $t0, -8480($fp)
	lw $t0, -844($fp)
	sw $t0, -8484($fp)
	li $t0, 4
	lw $t1, -8484($fp)
	mul $t0, $t0, $t1
	sw $t0, -8488($fp)
	lw $t0, -8488($fp)
	lw $t1, -8480($fp)
	add $t0, $t0, $t1
	sw $t0, -8492($fp)
	lw $t0, -8492($fp)
	lw $t1, 0($t0)
	sw $t1, -8496($fp)
	lw $t1, -8496($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label494:
	li $t0, 1
	sw $t0, -8476($fp)
label495:
	addi $t0, $fp, -260
	sw $t0, -8500($fp)
	li $t0, 3
	sw $t0, -8504($fp)
	li $t0, 4
	lw $t1, -8504($fp)
	mul $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t0, -8508($fp)
	lw $t1, -8500($fp)
	add $t0, $t0, $t1
	sw $t0, -8512($fp)
	lw $t0, -8512($fp)
	lw $t1, 0($t0)
	sw $t1, -8516($fp)
	li $t0, 62322
	sw $t0, -8520($fp)
	lw $t0, -8516($fp)
	lw $t1, -8520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8524($fp)
	li $t0, 0
	sw $t0, -8528($fp)
	lw $t0, -1624($fp)
	sw $t0, -8532($fp)
	lw $t1, -8532($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label496
label498:
	lw $t0, -8276($fp)
	sw $t0, -8536($fp)
	lw $t1, -8536($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -8528($fp)
label497:
	addi $sp, $sp, -4
	lw $t0, -8524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8540($fp)
	addi $sp, $sp, 12
	lw $t1, -8476($fp)
	lw $t2, -8540($fp)
	bgt $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -8368($fp)
label488:
	lw $ra, -4($fp)
	lw $v0, -8368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 51133
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	sw $t0, -8576($fp)
	lw $t0, -8576($fp)
	sw $t0, -8580($fp)
	li $t0, 41150
	sw $t0, -8584($fp)
	addi $t0, $fp, -8568
	sw $t0, -8588($fp)
	li $t0, 0
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8596($fp)
	lw $t0, -8588($fp)
	lw $t1, -8596($fp)
	add $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8584($fp)
	lw $t1, -8600($fp)
	sw $t0, 0($t1)
	lw $t0, -8600($fp)
	lw $t1, 0($t0)
	sw $t1, -8604($fp)
	li $t0, 37705
	sw $t0, -8608($fp)
	addi $t0, $fp, -8568
	sw $t0, -8612($fp)
	li $t0, 1
	sw $t0, -8616($fp)
	lw $t0, -8616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8612($fp)
	lw $t1, -8620($fp)
	add $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t0, -8608($fp)
	lw $t1, -8624($fp)
	sw $t0, 0($t1)
	lw $t0, -8624($fp)
	lw $t1, 0($t0)
	sw $t1, -8628($fp)
	li $t0, 62449
	sw $t0, -8632($fp)
	addi $t0, $fp, -8568
	sw $t0, -8636($fp)
	li $t0, 2
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8644($fp)
	lw $t0, -8636($fp)
	lw $t1, -8644($fp)
	add $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t0, -8632($fp)
	lw $t1, -8648($fp)
	sw $t0, 0($t1)
	lw $t0, -8648($fp)
	lw $t1, 0($t0)
	sw $t1, -8652($fp)
	li $t0, 30649
	sw $t0, -8656($fp)
	addi $t0, $fp, -8568
	sw $t0, -8660($fp)
	li $t0, 3
	sw $t0, -8664($fp)
	lw $t0, -8664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8668($fp)
	lw $t0, -8660($fp)
	lw $t1, -8668($fp)
	add $t0, $t0, $t1
	sw $t0, -8672($fp)
	lw $t0, -8656($fp)
	lw $t1, -8672($fp)
	sw $t0, 0($t1)
	lw $t0, -8672($fp)
	lw $t1, 0($t0)
	sw $t1, -8676($fp)
	li $t0, 21398
	sw $t0, -8680($fp)
	addi $t0, $fp, -8568
	sw $t0, -8684($fp)
	li $t0, 4
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t0, -8684($fp)
	lw $t1, -8692($fp)
	add $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8680($fp)
	lw $t1, -8696($fp)
	sw $t0, 0($t1)
	lw $t0, -8696($fp)
	lw $t1, 0($t0)
	sw $t1, -8700($fp)
	li $t0, 46696
	sw $t0, -8704($fp)
	addi $t0, $fp, -8568
	sw $t0, -8708($fp)
	li $t0, 5
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8708($fp)
	lw $t1, -8716($fp)
	add $t0, $t0, $t1
	sw $t0, -8720($fp)
	lw $t0, -8704($fp)
	lw $t1, -8720($fp)
	sw $t0, 0($t1)
	lw $t0, -8720($fp)
	lw $t1, 0($t0)
	sw $t1, -8724($fp)
	li $t0, 50027
	sw $t0, -8728($fp)
	addi $t0, $fp, -8568
	sw $t0, -8732($fp)
	li $t0, 6
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8740($fp)
	lw $t0, -8732($fp)
	lw $t1, -8740($fp)
	add $t0, $t0, $t1
	sw $t0, -8744($fp)
	lw $t0, -8728($fp)
	lw $t1, -8744($fp)
	sw $t0, 0($t1)
	lw $t0, -8744($fp)
	lw $t1, 0($t0)
	sw $t1, -8748($fp)
	li $t0, 2835
	sw $t0, -8752($fp)
	lw $t0, -8752($fp)
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	sw $t0, -8760($fp)
	lw $t0, -8276($fp)
	sw $t0, -8764($fp)
	lw $t0, -8764($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -8768($fp)
	li $t0, 0
	sw $t0, -8772($fp)
	lw $t0, -8756($fp)
	sw $t0, -8776($fp)
	lw $t1, -8776($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label501
label501:
	li $t0, 0
	sw $t0, -8780($fp)
	addi $t0, $fp, -240
	sw $t0, -8784($fp)
	lw $t0, -832($fp)
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
	lw $t0, -1948($fp)
	sw $t0, -8804($fp)
	lw $t1, -8800($fp)
	lw $t2, -8804($fp)
	ble $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -8780($fp)
label503:
	li $t0, 60101
	sw $t0, -8808($fp)
	li $t0, 0
	lw $t1, -8808($fp)
	sub $t0, $t0, $t1
	sw $t0, -8812($fp)
	lw $t1, -8780($fp)
	lw $t2, -8812($fp)
	bge $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -8772($fp)
label500:
	li $t0, 0
	sw $t0, -8816($fp)
	addi $t0, $fp, -132
	sw $t0, -8820($fp)
	lw $t0, -1288($fp)
	sw $t0, -8824($fp)
	li $t0, 4
	lw $t1, -8824($fp)
	mul $t0, $t0, $t1
	sw $t0, -8828($fp)
	lw $t0, -8828($fp)
	lw $t1, -8820($fp)
	add $t0, $t0, $t1
	sw $t0, -8832($fp)
	lw $t0, -8832($fp)
	lw $t1, 0($t0)
	sw $t1, -8836($fp)
	li $t0, 0
	sw $t0, -8840($fp)
	lw $t0, -8276($fp)
	sw $t0, -8844($fp)
	lw $t1, -8844($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label507:
	li $t0, 1
	sw $t0, -8840($fp)
label508:
	lw $t0, -8836($fp)
	lw $t1, -8840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8848($fp)
	lw $t0, -1636($fp)
	sw $t0, -8852($fp)
	lw $t0, -8848($fp)
	lw $t1, -8852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8856($fp)
	lw $t1, -8856($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label506
label506:
	addi $t0, $fp, -196
	sw $t0, -8860($fp)
	li $t0, 0
	sw $t0, -8864($fp)
	lw $t0, -8576($fp)
	sw $t0, -8868($fp)
	lw $t1, -8868($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label512
label512:
	lw $t0, -2380($fp)
	sw $t0, -8872($fp)
	lw $t1, -8872($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label511
label511:
	li $t0, 63254
	sw $t0, -8876($fp)
	lw $t1, -8876($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -8864($fp)
label510:
	addi $t0, $fp, -196
	sw $t0, -8880($fp)
	lw $t0, -1516($fp)
	sw $t0, -8884($fp)
	li $t0, 4
	lw $t1, -8884($fp)
	mul $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t0, -8888($fp)
	lw $t1, -8880($fp)
	add $t0, $t0, $t1
	sw $t0, -8892($fp)
	lw $t0, -8892($fp)
	lw $t1, 0($t0)
	sw $t1, -8896($fp)
	addi $sp, $sp, -4
	lw $t0, -8864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8896($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8900($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -8900($fp)
	mul $t0, $t0, $t1
	sw $t0, -8904($fp)
	lw $t0, -8904($fp)
	lw $t1, -8860($fp)
	add $t0, $t0, $t1
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	lw $t1, 0($t0)
	sw $t1, -8912($fp)
	lw $t1, -8912($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -8816($fp)
label505:
	li $t0, 0
	sw $t0, -8916($fp)
	li $t0, 0
	sw $t0, -8920($fp)
	addi $t0, $fp, -88
	sw $t0, -8924($fp)
	lw $t0, -832($fp)
	sw $t0, -8928($fp)
	li $t0, 4
	lw $t1, -8928($fp)
	mul $t0, $t0, $t1
	sw $t0, -8932($fp)
	lw $t0, -8932($fp)
	lw $t1, -8924($fp)
	add $t0, $t0, $t1
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	lw $t1, 0($t0)
	sw $t1, -8940($fp)
	li $t0, 0
	sw $t0, -8944($fp)
	li $t0, 63877
	sw $t0, -8948($fp)
	li $t0, 27180
	sw $t0, -8952($fp)
	lw $t1, -8948($fp)
	lw $t2, -8952($fp)
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -8944($fp)
label518:
	lw $t0, -8756($fp)
	sw $t0, -8956($fp)
	li $t0, 12616
	sw $t0, -8960($fp)
	lw $t0, -8956($fp)
	lw $t1, -8960($fp)
	add $t0, $t0, $t1
	sw $t0, -8964($fp)
	li $t0, 46923
	sw $t0, -8968($fp)
	lw $t0, -8964($fp)
	lw $t1, -8968($fp)
	add $t0, $t0, $t1
	sw $t0, -8972($fp)
	li $t0, 0
	sw $t0, -8976($fp)
	lw $t0, -1936($fp)
	sw $t0, -8980($fp)
	li $t0, 42877
	sw $t0, -8984($fp)
	lw $t1, -8980($fp)
	lw $t2, -8984($fp)
	beq $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -8976($fp)
label520:
	addi $sp, $sp, -4
	lw $t0, -8944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8976($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8988($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -8940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8988($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8992($fp)
	addi $sp, $sp, 12
	lw $t1, -8992($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label515
label515:
	li $t0, 1
	sw $t0, -8920($fp)
label516:
	addi $t0, $fp, -8568
	sw $t0, -8996($fp)
	li $t0, 5
	sw $t0, -9000($fp)
	li $t0, 4
	lw $t1, -9000($fp)
	mul $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t0, -9004($fp)
	lw $t1, -8996($fp)
	add $t0, $t0, $t1
	sw $t0, -9008($fp)
	lw $t0, -9008($fp)
	lw $t1, 0($t0)
	sw $t1, -9012($fp)
	lw $t0, -2404($fp)
	sw $t0, -9016($fp)
	lw $t0, -9012($fp)
	lw $t1, -9016($fp)
	mul $t0, $t0, $t1
	sw $t0, -9020($fp)
	lw $t0, -8920($fp)
	lw $t1, -9020($fp)
	sub $t0, $t0, $t1
	sw $t0, -9024($fp)
	lw $t0, -484($fp)
	sw $t0, -9028($fp)
	lw $t0, -9028($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -9032($fp)
	lw $t0, -2416($fp)
	sw $t0, -9036($fp)
	lw $t0, -1624($fp)
	sw $t0, -9040($fp)
	addi $sp, $sp, -4
	lw $t0, -9032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9040($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9044($fp)
	addi $sp, $sp, 16
	lw $t1, -9024($fp)
	lw $t2, -9044($fp)
	blt $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -8916($fp)
label514:
	lw $t0, -1264($fp)
	sw $t0, -9048($fp)
	li $t0, 39852
	sw $t0, -9052($fp)
	li $t0, 32427
	sw $t0, -9056($fp)
	lw $t0, -9052($fp)
	lw $t1, -9056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9060($fp)
	lw $t0, -1516($fp)
	sw $t0, -9064($fp)
	lw $t0, -9060($fp)
	lw $t1, -9064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9068($fp)
	lw $t0, -9048($fp)
	lw $t1, -9068($fp)
	sub $t0, $t0, $t1
	sw $t0, -9072($fp)
	li $t0, 0
	sw $t0, -9076($fp)
	li $t0, 0
	sw $t0, -9080($fp)
	li $t0, 18205
	sw $t0, -9084($fp)
	li $t0, 38018
	sw $t0, -9088($fp)
	lw $t1, -9084($fp)
	lw $t2, -9088($fp)
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -9080($fp)
label524:
	lw $t0, -1564($fp)
	sw $t0, -9092($fp)
	lw $t1, -9080($fp)
	lw $t2, -9092($fp)
	bne $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -9076($fp)
label522:
	li $t0, 0
	sw $t0, -9096($fp)
	lw $t0, -1276($fp)
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -9104($fp)
	addi $t0, $fp, -240
	sw $t0, -9108($fp)
	li $t0, 2
	sw $t0, -9112($fp)
	li $t0, 4
	lw $t1, -9112($fp)
	mul $t0, $t0, $t1
	sw $t0, -9116($fp)
	lw $t0, -9116($fp)
	lw $t1, -9108($fp)
	add $t0, $t0, $t1
	sw $t0, -9120($fp)
	lw $t0, -9120($fp)
	lw $t1, 0($t0)
	sw $t1, -9124($fp)
	li $t0, 0
	lw $t1, -9124($fp)
	sub $t0, $t0, $t1
	sw $t0, -9128($fp)
	lw $t0, -2404($fp)
	sw $t0, -9132($fp)
	addi $sp, $sp, -4
	lw $t0, -9104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9132($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9136($fp)
	addi $sp, $sp, 16
	lw $t1, -9136($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label525
label525:
	li $t0, 1
	sw $t0, -9096($fp)
label526:
	li $t0, 0
	sw $t0, -9140($fp)
	lw $t0, -1612($fp)
	sw $t0, -9144($fp)
	li $t0, 0
	lw $t1, -9144($fp)
	sub $t0, $t0, $t1
	sw $t0, -9148($fp)
	lw $t0, -2428($fp)
	sw $t0, -9152($fp)
	lw $t1, -9148($fp)
	lw $t2, -9152($fp)
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -9140($fp)
label528:
	addi $sp, $sp, -4
	lw $t0, -9076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9140($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9156($fp)
	addi $sp, $sp, 16
	lw $t0, -9072($fp)
	lw $t1, -9156($fp)
	sub $t0, $t0, $t1
	sw $t0, -9160($fp)
	li $t0, 0
	sw $t0, -9164($fp)
	addi $t0, $fp, -68
	sw $t0, -9168($fp)
	lw $t0, -1936($fp)
	sw $t0, -9172($fp)
	li $t0, 0
	lw $t1, -9172($fp)
	sub $t0, $t0, $t1
	sw $t0, -9176($fp)
	li $t0, 4
	lw $t1, -9176($fp)
	mul $t0, $t0, $t1
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	lw $t1, -9168($fp)
	add $t0, $t0, $t1
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	lw $t1, 0($t0)
	sw $t1, -9188($fp)
	lw $t1, -9188($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label532:
	li $t0, 1
	sw $t0, -9164($fp)
label533:
	li $t0, 0
	sw $t0, -9192($fp)
	addi $t0, $fp, -240
	sw $t0, -9196($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -9212($fp)
	sub $t0, $t0, $t1
	sw $t0, -9216($fp)
	lw $t1, -9216($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label534:
	li $t0, 1
	sw $t0, -9192($fp)
label535:
	lw $t0, -9164($fp)
	lw $t1, -9192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9220($fp)
	lw $t1, -9220($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	addi $t0, $fp, -240
	sw $t0, -9224($fp)
	addi $t0, $fp, -228
	sw $t0, -9228($fp)
	li $t0, 1
	sw $t0, -9232($fp)
	li $t0, 4
	lw $t1, -9232($fp)
	mul $t0, $t0, $t1
	sw $t0, -9236($fp)
	lw $t0, -9236($fp)
	lw $t1, -9228($fp)
	add $t0, $t0, $t1
	sw $t0, -9240($fp)
	lw $t0, -9240($fp)
	lw $t1, 0($t0)
	sw $t1, -9244($fp)
	li $t0, 4
	lw $t1, -9244($fp)
	mul $t0, $t0, $t1
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	lw $t1, -9224($fp)
	add $t0, $t0, $t1
	sw $t0, -9252($fp)
	lw $t0, -9252($fp)
	lw $t1, 0($t0)
	sw $t1, -9256($fp)
	lw $t1, -9256($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label537
label536:
	li $t0, 111
	sw $t0, -9260($fp)
	li $t0, 31494
	sw $t0, -9264($fp)
	lw $t0, -9260($fp)
	lw $t1, -9264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9268($fp)
	li $t0, 0
	sw $t0, -9272($fp)
	li $t0, 37758
	sw $t0, -9276($fp)
	li $t0, 36850
	sw $t0, -9280($fp)
	lw $t0, -9276($fp)
	lw $t1, -9280($fp)
	sub $t0, $t0, $t1
	sw $t0, -9284($fp)
	li $t0, 29317
	sw $t0, -9288($fp)
	lw $t1, -9284($fp)
	lw $t2, -9288($fp)
	bne $t1, $t2, label539
	j label540
label539:
	li $t0, 1
	sw $t0, -9272($fp)
label540:
	li $t0, 0
	sw $t0, -9292($fp)
	li $t0, 15452
	sw $t0, -9296($fp)
	li $t0, 0
	lw $t1, -9296($fp)
	sub $t0, $t0, $t1
	sw $t0, -9300($fp)
	lw $t1, -9300($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label543
label543:
	li $t0, 48157
	sw $t0, -9304($fp)
	lw $t1, -9304($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -9292($fp)
label542:
	li $t0, 0
	sw $t0, -9308($fp)
	li $t0, 7108
	sw $t0, -9312($fp)
	lw $t1, -9312($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 1
	sw $t0, -9308($fp)
label545:
	li $t0, 0
	lw $t1, -9308($fp)
	sub $t0, $t0, $t1
	sw $t0, -9316($fp)
	addi $sp, $sp, -4
	lw $t0, -9272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9316($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9320($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -9324($fp)
	lw $t0, -8324($fp)
	sw $t0, -9328($fp)
	lw $t1, -9328($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label546
label548:
	li $t0, 51244
	sw $t0, -9332($fp)
	lw $t1, -9332($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -9324($fp)
label547:
	addi $sp, $sp, -4
	lw $t0, -9320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9336($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -9336($fp)
	sub $t0, $t0, $t1
	sw $t0, -9340($fp)
	lw $t0, -1936($fp)
	sw $t0, -9344($fp)
	li $t0, 0
	lw $t1, -9344($fp)
	sub $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t0, -2236($fp)
	sw $t0, -9352($fp)
	lw $t0, -9348($fp)
	lw $t1, -9352($fp)
	add $t0, $t0, $t1
	sw $t0, -9356($fp)
	li $t0, 0
	sw $t0, -9360($fp)
	li $t0, 0
	sw $t0, -9364($fp)
	lw $t0, -1864($fp)
	sw $t0, -9368($fp)
	lw $t1, -9368($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -9364($fp)
label552:
	lw $t0, -2440($fp)
	sw $t0, -9372($fp)
	lw $t0, -9364($fp)
	lw $t1, -9372($fp)
	add $t0, $t0, $t1
	sw $t0, -9376($fp)
	lw $t0, -1912($fp)
	sw $t0, -9380($fp)
	lw $t0, -628($fp)
	sw $t0, -9384($fp)
	lw $t0, -9380($fp)
	lw $t1, -9384($fp)
	mul $t0, $t0, $t1
	sw $t0, -9388($fp)
	li $t0, 43283
	sw $t0, -9392($fp)
	lw $t0, -9388($fp)
	lw $t1, -9392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9396($fp)
	li $t0, 0
	sw $t0, -9400($fp)
	lw $t0, -628($fp)
	sw $t0, -9404($fp)
	lw $t1, -9404($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -9400($fp)
label554:
	lw $t0, -2416($fp)
	sw $t0, -9408($fp)
	lw $t0, -9400($fp)
	lw $t1, -9408($fp)
	add $t0, $t0, $t1
	sw $t0, -9412($fp)
	addi $sp, $sp, -4
	lw $t0, -9376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9412($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9416($fp)
	addi $sp, $sp, 16
	lw $t1, -9416($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label549:
	li $t0, 1
	sw $t0, -9360($fp)
label550:
	addi $sp, $sp, -4
	lw $t0, -9340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9360($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9420($fp)
	addi $sp, $sp, 16
	li $t0, 22249
	sw $t0, -9424($fp)
	lw $t0, -9420($fp)
	lw $t1, -9424($fp)
	mul $t0, $t0, $t1
	sw $t0, -9428($fp)
	li $t0, 0
	lw $t1, -9428($fp)
	sub $t0, $t0, $t1
	sw $t0, -9432($fp)
	lw $t0, -9268($fp)
	lw $t1, -9432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9436($fp)
	li $t0, 0
	lw $t1, -9436($fp)
	sub $t0, $t0, $t1
	sw $t0, -9440($fp)
	lw $ra, -4($fp)
	lw $v0, -9440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label538
label537:
label555:
	lw $t0, -496($fp)
	sw $t0, -9444($fp)
	lw $t1, -9444($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label556
label556:
	li $t0, 39685
	sw $t0, -9448($fp)
	lw $t0, -9448($fp)
	sw $t0, -9452($fp)
	lw $t0, -9452($fp)
	sw $t0, -9456($fp)
	li $t0, 0
	sw $t0, -9460($fp)
	lw $t0, -9452($fp)
	sw $t0, -9464($fp)
	lw $t1, -9464($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label558
label558:
	li $t0, 1
	sw $t0, -9460($fp)
label559:
	j label555
label557:
label538:
	j label531
label530:
	lw $t0, -8336($fp)
	sw $t0, -9468($fp)
	lw $t0, -8300($fp)
	sw $t0, -9472($fp)
	li $t0, 0
	lw $t1, -9472($fp)
	sub $t0, $t0, $t1
	sw $t0, -9476($fp)
	lw $t0, -9468($fp)
	lw $t1, -9476($fp)
	mul $t0, $t0, $t1
	sw $t0, -9480($fp)
	lw $ra, -4($fp)
	lw $v0, -9480($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label531:
	lw $t0, -268($fp)
	sw $t0, -9484($fp)
	lw $t0, -9484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -9488($fp)
	lw $t0, -9488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -9492($fp)
	lw $t0, -9492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -9496($fp)
	lw $t0, -9496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9500($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -9520($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -9540($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -9560($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -9580($fp)
	li $t0, 4
	sw $t0, -9584($fp)
	li $t0, 4
	lw $t1, -9584($fp)
	mul $t0, $t0, $t1
	sw $t0, -9588($fp)
	lw $t0, -9588($fp)
	lw $t1, -9580($fp)
	add $t0, $t0, $t1
	sw $t0, -9592($fp)
	lw $t0, -9592($fp)
	lw $t1, 0($t0)
	sw $t1, -9596($fp)
	lw $t0, -9596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9600($fp)
	li $t0, 5
	sw $t0, -9604($fp)
	li $t0, 4
	lw $t1, -9604($fp)
	mul $t0, $t0, $t1
	sw $t0, -9608($fp)
	lw $t0, -9608($fp)
	lw $t1, -9600($fp)
	add $t0, $t0, $t1
	sw $t0, -9612($fp)
	lw $t0, -9612($fp)
	lw $t1, 0($t0)
	sw $t1, -9616($fp)
	lw $t0, -9616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9620($fp)
	li $t0, 6
	sw $t0, -9624($fp)
	li $t0, 4
	lw $t1, -9624($fp)
	mul $t0, $t0, $t1
	sw $t0, -9628($fp)
	lw $t0, -9628($fp)
	lw $t1, -9620($fp)
	add $t0, $t0, $t1
	sw $t0, -9632($fp)
	lw $t0, -9632($fp)
	lw $t1, 0($t0)
	sw $t1, -9636($fp)
	lw $t0, -9636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -9640($fp)
	lw $t0, -9640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -9644($fp)
	lw $t0, -9644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -9648($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -9668($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -9688($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -9708($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -9728($fp)
	li $t0, 4
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
	lw $t0, -628($fp)
	sw $t0, -9748($fp)
	lw $t0, -9748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -9752($fp)
	lw $t0, -9752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -9756($fp)
	lw $t0, -9756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -9760($fp)
	lw $t0, -9760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -9764($fp)
	lw $t0, -9764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -9768($fp)
	lw $t0, -9768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -9772($fp)
	lw $t0, -9772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -9776($fp)
	lw $t0, -9776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -9780($fp)
	lw $t0, -9780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -9784($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -9804($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -9824($fp)
	li $t0, 2
	sw $t0, -9828($fp)
	li $t0, 4
	lw $t1, -9828($fp)
	mul $t0, $t0, $t1
	sw $t0, -9832($fp)
	lw $t0, -9832($fp)
	lw $t1, -9824($fp)
	add $t0, $t0, $t1
	sw $t0, -9836($fp)
	lw $t0, -9836($fp)
	lw $t1, 0($t0)
	sw $t1, -9840($fp)
	lw $t0, -9840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -9844($fp)
	li $t0, 3
	sw $t0, -9848($fp)
	li $t0, 4
	lw $t1, -9848($fp)
	mul $t0, $t0, $t1
	sw $t0, -9852($fp)
	lw $t0, -9852($fp)
	lw $t1, -9844($fp)
	add $t0, $t0, $t1
	sw $t0, -9856($fp)
	lw $t0, -9856($fp)
	lw $t1, 0($t0)
	sw $t1, -9860($fp)
	lw $t0, -9860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -9864($fp)
	lw $t0, -9864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -9868($fp)
	lw $t0, -9868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -9872($fp)
	lw $t0, -9872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -9876($fp)
	li $t0, 0
	sw $t0, -9880($fp)
	li $t0, 4
	lw $t1, -9880($fp)
	mul $t0, $t0, $t1
	sw $t0, -9884($fp)
	lw $t0, -9884($fp)
	lw $t1, -9876($fp)
	add $t0, $t0, $t1
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	lw $t1, 0($t0)
	sw $t1, -9892($fp)
	lw $t0, -9892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -9896($fp)
	li $t0, 1
	sw $t0, -9900($fp)
	li $t0, 4
	lw $t1, -9900($fp)
	mul $t0, $t0, $t1
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	lw $t1, -9896($fp)
	add $t0, $t0, $t1
	sw $t0, -9908($fp)
	lw $t0, -9908($fp)
	lw $t1, 0($t0)
	sw $t1, -9912($fp)
	lw $t0, -9912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -9916($fp)
	li $t0, 2
	sw $t0, -9920($fp)
	li $t0, 4
	lw $t1, -9920($fp)
	mul $t0, $t0, $t1
	sw $t0, -9924($fp)
	lw $t0, -9924($fp)
	lw $t1, -9916($fp)
	add $t0, $t0, $t1
	sw $t0, -9928($fp)
	lw $t0, -9928($fp)
	lw $t1, 0($t0)
	sw $t1, -9932($fp)
	lw $t0, -9932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -9936($fp)
	li $t0, 3
	sw $t0, -9940($fp)
	li $t0, 4
	lw $t1, -9940($fp)
	mul $t0, $t0, $t1
	sw $t0, -9944($fp)
	lw $t0, -9944($fp)
	lw $t1, -9936($fp)
	add $t0, $t0, $t1
	sw $t0, -9948($fp)
	lw $t0, -9948($fp)
	lw $t1, 0($t0)
	sw $t1, -9952($fp)
	lw $t0, -9952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -9956($fp)
	li $t0, 4
	sw $t0, -9960($fp)
	li $t0, 4
	lw $t1, -9960($fp)
	mul $t0, $t0, $t1
	sw $t0, -9964($fp)
	lw $t0, -9964($fp)
	lw $t1, -9956($fp)
	add $t0, $t0, $t1
	sw $t0, -9968($fp)
	lw $t0, -9968($fp)
	lw $t1, 0($t0)
	sw $t1, -9972($fp)
	lw $t0, -9972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -9976($fp)
	li $t0, 0
	sw $t0, -9980($fp)
	li $t0, 4
	lw $t1, -9980($fp)
	mul $t0, $t0, $t1
	sw $t0, -9984($fp)
	lw $t0, -9984($fp)
	lw $t1, -9976($fp)
	add $t0, $t0, $t1
	sw $t0, -9988($fp)
	lw $t0, -9988($fp)
	lw $t1, 0($t0)
	sw $t1, -9992($fp)
	lw $t0, -9992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -9996($fp)
	li $t0, 1
	sw $t0, -10000($fp)
	li $t0, 4
	lw $t1, -10000($fp)
	mul $t0, $t0, $t1
	sw $t0, -10004($fp)
	lw $t0, -10004($fp)
	lw $t1, -9996($fp)
	add $t0, $t0, $t1
	sw $t0, -10008($fp)
	lw $t0, -10008($fp)
	lw $t1, 0($t0)
	sw $t1, -10012($fp)
	lw $t0, -10012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10016($fp)
	li $t0, 2
	sw $t0, -10020($fp)
	li $t0, 4
	lw $t1, -10020($fp)
	mul $t0, $t0, $t1
	sw $t0, -10024($fp)
	lw $t0, -10024($fp)
	lw $t1, -10016($fp)
	add $t0, $t0, $t1
	sw $t0, -10028($fp)
	lw $t0, -10028($fp)
	lw $t1, 0($t0)
	sw $t1, -10032($fp)
	lw $t0, -10032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10036($fp)
	li $t0, 3
	sw $t0, -10040($fp)
	li $t0, 4
	lw $t1, -10040($fp)
	mul $t0, $t0, $t1
	sw $t0, -10044($fp)
	lw $t0, -10044($fp)
	lw $t1, -10036($fp)
	add $t0, $t0, $t1
	sw $t0, -10048($fp)
	lw $t0, -10048($fp)
	lw $t1, 0($t0)
	sw $t1, -10052($fp)
	lw $t0, -10052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10056($fp)
	li $t0, 4
	sw $t0, -10060($fp)
	li $t0, 4
	lw $t1, -10060($fp)
	mul $t0, $t0, $t1
	sw $t0, -10064($fp)
	lw $t0, -10064($fp)
	lw $t1, -10056($fp)
	add $t0, $t0, $t1
	sw $t0, -10068($fp)
	lw $t0, -10068($fp)
	lw $t1, 0($t0)
	sw $t1, -10072($fp)
	lw $t0, -10072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10076($fp)
	li $t0, 5
	sw $t0, -10080($fp)
	li $t0, 4
	lw $t1, -10080($fp)
	mul $t0, $t0, $t1
	sw $t0, -10084($fp)
	lw $t0, -10084($fp)
	lw $t1, -10076($fp)
	add $t0, $t0, $t1
	sw $t0, -10088($fp)
	lw $t0, -10088($fp)
	lw $t1, 0($t0)
	sw $t1, -10092($fp)
	lw $t0, -10092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10096($fp)
	li $t0, 6
	sw $t0, -10100($fp)
	li $t0, 4
	lw $t1, -10100($fp)
	mul $t0, $t0, $t1
	sw $t0, -10104($fp)
	lw $t0, -10104($fp)
	lw $t1, -10096($fp)
	add $t0, $t0, $t1
	sw $t0, -10108($fp)
	lw $t0, -10108($fp)
	lw $t1, 0($t0)
	sw $t1, -10112($fp)
	lw $t0, -10112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10116($fp)
	li $t0, 7
	sw $t0, -10120($fp)
	li $t0, 4
	lw $t1, -10120($fp)
	mul $t0, $t0, $t1
	sw $t0, -10124($fp)
	lw $t0, -10124($fp)
	lw $t1, -10116($fp)
	add $t0, $t0, $t1
	sw $t0, -10128($fp)
	lw $t0, -10128($fp)
	lw $t1, 0($t0)
	sw $t1, -10132($fp)
	lw $t0, -10132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -10136($fp)
	lw $t0, -10136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -10140($fp)
	li $t0, 0
	sw $t0, -10144($fp)
	li $t0, 4
	lw $t1, -10144($fp)
	mul $t0, $t0, $t1
	sw $t0, -10148($fp)
	lw $t0, -10148($fp)
	lw $t1, -10140($fp)
	add $t0, $t0, $t1
	sw $t0, -10152($fp)
	lw $t0, -10152($fp)
	lw $t1, 0($t0)
	sw $t1, -10156($fp)
	lw $t0, -10156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -10160($fp)
	li $t0, 1
	sw $t0, -10164($fp)
	li $t0, 4
	lw $t1, -10164($fp)
	mul $t0, $t0, $t1
	sw $t0, -10168($fp)
	lw $t0, -10168($fp)
	lw $t1, -10160($fp)
	add $t0, $t0, $t1
	sw $t0, -10172($fp)
	lw $t0, -10172($fp)
	lw $t1, 0($t0)
	sw $t1, -10176($fp)
	lw $t0, -10176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -10180($fp)
	li $t0, 2
	sw $t0, -10184($fp)
	li $t0, 4
	lw $t1, -10184($fp)
	mul $t0, $t0, $t1
	sw $t0, -10188($fp)
	lw $t0, -10188($fp)
	lw $t1, -10180($fp)
	add $t0, $t0, $t1
	sw $t0, -10192($fp)
	lw $t0, -10192($fp)
	lw $t1, 0($t0)
	sw $t1, -10196($fp)
	lw $t0, -10196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	sw $t0, -10200($fp)
	lw $t0, -10200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -10204($fp)
	lw $t0, -10204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -10208($fp)
	lw $t0, -10208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
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
	addi $t0, $fp, -164
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
	addi $t0, $fp, -164
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
	addi $t0, $fp, -164
	sw $t0, -10272($fp)
	li $t0, 3
	sw $t0, -10276($fp)
	li $t0, 4
	lw $t1, -10276($fp)
	mul $t0, $t0, $t1
	sw $t0, -10280($fp)
	lw $t0, -10280($fp)
	lw $t1, -10272($fp)
	add $t0, $t0, $t1
	sw $t0, -10284($fp)
	lw $t0, -10284($fp)
	lw $t1, 0($t0)
	sw $t1, -10288($fp)
	lw $t0, -10288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -10292($fp)
	li $t0, 4
	sw $t0, -10296($fp)
	li $t0, 4
	lw $t1, -10296($fp)
	mul $t0, $t0, $t1
	sw $t0, -10300($fp)
	lw $t0, -10300($fp)
	lw $t1, -10292($fp)
	add $t0, $t0, $t1
	sw $t0, -10304($fp)
	lw $t0, -10304($fp)
	lw $t1, 0($t0)
	sw $t1, -10308($fp)
	lw $t0, -10308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -10312($fp)
	li $t0, 5
	sw $t0, -10316($fp)
	li $t0, 4
	lw $t1, -10316($fp)
	mul $t0, $t0, $t1
	sw $t0, -10320($fp)
	lw $t0, -10320($fp)
	lw $t1, -10312($fp)
	add $t0, $t0, $t1
	sw $t0, -10324($fp)
	lw $t0, -10324($fp)
	lw $t1, 0($t0)
	sw $t1, -10328($fp)
	lw $t0, -10328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -10332($fp)
	li $t0, 6
	sw $t0, -10336($fp)
	li $t0, 4
	lw $t1, -10336($fp)
	mul $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t0, -10340($fp)
	lw $t1, -10332($fp)
	add $t0, $t0, $t1
	sw $t0, -10344($fp)
	lw $t0, -10344($fp)
	lw $t1, 0($t0)
	sw $t1, -10348($fp)
	lw $t0, -10348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -10352($fp)
	li $t0, 7
	sw $t0, -10356($fp)
	li $t0, 4
	lw $t1, -10356($fp)
	mul $t0, $t0, $t1
	sw $t0, -10360($fp)
	lw $t0, -10360($fp)
	lw $t1, -10352($fp)
	add $t0, $t0, $t1
	sw $t0, -10364($fp)
	lw $t0, -10364($fp)
	lw $t1, 0($t0)
	sw $t1, -10368($fp)
	lw $t0, -10368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1492($fp)
	sw $t0, -10372($fp)
	lw $t0, -10372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1504($fp)
	sw $t0, -10376($fp)
	lw $t0, -10376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1516($fp)
	sw $t0, -10380($fp)
	lw $t0, -10380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1528($fp)
	sw $t0, -10384($fp)
	lw $t0, -10384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1540($fp)
	sw $t0, -10388($fp)
	lw $t0, -10388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1552($fp)
	sw $t0, -10392($fp)
	lw $t0, -10392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1564($fp)
	sw $t0, -10396($fp)
	lw $t0, -10396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1576($fp)
	sw $t0, -10400($fp)
	lw $t0, -10400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1588($fp)
	sw $t0, -10404($fp)
	lw $t0, -10404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1600($fp)
	sw $t0, -10408($fp)
	lw $t0, -10408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1612($fp)
	sw $t0, -10412($fp)
	lw $t0, -10412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1624($fp)
	sw $t0, -10416($fp)
	lw $t0, -10416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1636($fp)
	sw $t0, -10420($fp)
	lw $t0, -10420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10424($fp)
	li $t0, 0
	sw $t0, -10428($fp)
	li $t0, 4
	lw $t1, -10428($fp)
	mul $t0, $t0, $t1
	sw $t0, -10432($fp)
	lw $t0, -10432($fp)
	lw $t1, -10424($fp)
	add $t0, $t0, $t1
	sw $t0, -10436($fp)
	lw $t0, -10436($fp)
	lw $t1, 0($t0)
	sw $t1, -10440($fp)
	lw $t0, -10440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10444($fp)
	li $t0, 1
	sw $t0, -10448($fp)
	li $t0, 4
	lw $t1, -10448($fp)
	mul $t0, $t0, $t1
	sw $t0, -10452($fp)
	lw $t0, -10452($fp)
	lw $t1, -10444($fp)
	add $t0, $t0, $t1
	sw $t0, -10456($fp)
	lw $t0, -10456($fp)
	lw $t1, 0($t0)
	sw $t1, -10460($fp)
	lw $t0, -10460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10464($fp)
	li $t0, 2
	sw $t0, -10468($fp)
	li $t0, 4
	lw $t1, -10468($fp)
	mul $t0, $t0, $t1
	sw $t0, -10472($fp)
	lw $t0, -10472($fp)
	lw $t1, -10464($fp)
	add $t0, $t0, $t1
	sw $t0, -10476($fp)
	lw $t0, -10476($fp)
	lw $t1, 0($t0)
	sw $t1, -10480($fp)
	lw $t0, -10480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10484($fp)
	li $t0, 3
	sw $t0, -10488($fp)
	li $t0, 4
	lw $t1, -10488($fp)
	mul $t0, $t0, $t1
	sw $t0, -10492($fp)
	lw $t0, -10492($fp)
	lw $t1, -10484($fp)
	add $t0, $t0, $t1
	sw $t0, -10496($fp)
	lw $t0, -10496($fp)
	lw $t1, 0($t0)
	sw $t1, -10500($fp)
	lw $t0, -10500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10504($fp)
	li $t0, 4
	sw $t0, -10508($fp)
	li $t0, 4
	lw $t1, -10508($fp)
	mul $t0, $t0, $t1
	sw $t0, -10512($fp)
	lw $t0, -10512($fp)
	lw $t1, -10504($fp)
	add $t0, $t0, $t1
	sw $t0, -10516($fp)
	lw $t0, -10516($fp)
	lw $t1, 0($t0)
	sw $t1, -10520($fp)
	lw $t0, -10520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10524($fp)
	li $t0, 5
	sw $t0, -10528($fp)
	li $t0, 4
	lw $t1, -10528($fp)
	mul $t0, $t0, $t1
	sw $t0, -10532($fp)
	lw $t0, -10532($fp)
	lw $t1, -10524($fp)
	add $t0, $t0, $t1
	sw $t0, -10536($fp)
	lw $t0, -10536($fp)
	lw $t1, 0($t0)
	sw $t1, -10540($fp)
	lw $t0, -10540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10544($fp)
	li $t0, 6
	sw $t0, -10548($fp)
	li $t0, 4
	lw $t1, -10548($fp)
	mul $t0, $t0, $t1
	sw $t0, -10552($fp)
	lw $t0, -10552($fp)
	lw $t1, -10544($fp)
	add $t0, $t0, $t1
	sw $t0, -10556($fp)
	lw $t0, -10556($fp)
	lw $t1, 0($t0)
	sw $t1, -10560($fp)
	lw $t0, -10560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10564($fp)
	li $t0, 7
	sw $t0, -10568($fp)
	li $t0, 4
	lw $t1, -10568($fp)
	mul $t0, $t0, $t1
	sw $t0, -10572($fp)
	lw $t0, -10572($fp)
	lw $t1, -10564($fp)
	add $t0, $t0, $t1
	sw $t0, -10576($fp)
	lw $t0, -10576($fp)
	lw $t1, 0($t0)
	sw $t1, -10580($fp)
	lw $t0, -10580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1840($fp)
	sw $t0, -10584($fp)
	lw $t0, -10584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1852($fp)
	sw $t0, -10588($fp)
	lw $t0, -10588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1864($fp)
	sw $t0, -10592($fp)
	lw $t0, -10592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1876($fp)
	sw $t0, -10596($fp)
	lw $t0, -10596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1888($fp)
	sw $t0, -10600($fp)
	lw $t0, -10600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1900($fp)
	sw $t0, -10604($fp)
	lw $t0, -10604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1912($fp)
	sw $t0, -10608($fp)
	lw $t0, -10608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1924($fp)
	sw $t0, -10612($fp)
	lw $t0, -10612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1936($fp)
	sw $t0, -10616($fp)
	lw $t0, -10616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1948($fp)
	sw $t0, -10620($fp)
	lw $t0, -10620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10624($fp)
	li $t0, 0
	sw $t0, -10628($fp)
	li $t0, 4
	lw $t1, -10628($fp)
	mul $t0, $t0, $t1
	sw $t0, -10632($fp)
	lw $t0, -10632($fp)
	lw $t1, -10624($fp)
	add $t0, $t0, $t1
	sw $t0, -10636($fp)
	lw $t0, -10636($fp)
	lw $t1, 0($t0)
	sw $t1, -10640($fp)
	lw $t0, -10640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10644($fp)
	li $t0, 1
	sw $t0, -10648($fp)
	li $t0, 4
	lw $t1, -10648($fp)
	mul $t0, $t0, $t1
	sw $t0, -10652($fp)
	lw $t0, -10652($fp)
	lw $t1, -10644($fp)
	add $t0, $t0, $t1
	sw $t0, -10656($fp)
	lw $t0, -10656($fp)
	lw $t1, 0($t0)
	sw $t1, -10660($fp)
	lw $t0, -10660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10664($fp)
	li $t0, 2
	sw $t0, -10668($fp)
	li $t0, 4
	lw $t1, -10668($fp)
	mul $t0, $t0, $t1
	sw $t0, -10672($fp)
	lw $t0, -10672($fp)
	lw $t1, -10664($fp)
	add $t0, $t0, $t1
	sw $t0, -10676($fp)
	lw $t0, -10676($fp)
	lw $t1, 0($t0)
	sw $t1, -10680($fp)
	lw $t0, -10680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10684($fp)
	li $t0, 3
	sw $t0, -10688($fp)
	li $t0, 4
	lw $t1, -10688($fp)
	mul $t0, $t0, $t1
	sw $t0, -10692($fp)
	lw $t0, -10692($fp)
	lw $t1, -10684($fp)
	add $t0, $t0, $t1
	sw $t0, -10696($fp)
	lw $t0, -10696($fp)
	lw $t1, 0($t0)
	sw $t1, -10700($fp)
	lw $t0, -10700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10704($fp)
	li $t0, 4
	sw $t0, -10708($fp)
	li $t0, 4
	lw $t1, -10708($fp)
	mul $t0, $t0, $t1
	sw $t0, -10712($fp)
	lw $t0, -10712($fp)
	lw $t1, -10704($fp)
	add $t0, $t0, $t1
	sw $t0, -10716($fp)
	lw $t0, -10716($fp)
	lw $t1, 0($t0)
	sw $t1, -10720($fp)
	lw $t0, -10720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10724($fp)
	li $t0, 5
	sw $t0, -10728($fp)
	li $t0, 4
	lw $t1, -10728($fp)
	mul $t0, $t0, $t1
	sw $t0, -10732($fp)
	lw $t0, -10732($fp)
	lw $t1, -10724($fp)
	add $t0, $t0, $t1
	sw $t0, -10736($fp)
	lw $t0, -10736($fp)
	lw $t1, 0($t0)
	sw $t1, -10740($fp)
	lw $t0, -10740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10744($fp)
	li $t0, 6
	sw $t0, -10748($fp)
	li $t0, 4
	lw $t1, -10748($fp)
	mul $t0, $t0, $t1
	sw $t0, -10752($fp)
	lw $t0, -10752($fp)
	lw $t1, -10744($fp)
	add $t0, $t0, $t1
	sw $t0, -10756($fp)
	lw $t0, -10756($fp)
	lw $t1, 0($t0)
	sw $t1, -10760($fp)
	lw $t0, -10760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -10764($fp)
	li $t0, 7
	sw $t0, -10768($fp)
	li $t0, 4
	lw $t1, -10768($fp)
	mul $t0, $t0, $t1
	sw $t0, -10772($fp)
	lw $t0, -10772($fp)
	lw $t1, -10764($fp)
	add $t0, $t0, $t1
	sw $t0, -10776($fp)
	lw $t0, -10776($fp)
	lw $t1, 0($t0)
	sw $t1, -10780($fp)
	lw $t0, -10780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -10784($fp)
	li $t0, 0
	sw $t0, -10788($fp)
	li $t0, 4
	lw $t1, -10788($fp)
	mul $t0, $t0, $t1
	sw $t0, -10792($fp)
	lw $t0, -10792($fp)
	lw $t1, -10784($fp)
	add $t0, $t0, $t1
	sw $t0, -10796($fp)
	lw $t0, -10796($fp)
	lw $t1, 0($t0)
	sw $t1, -10800($fp)
	lw $t0, -10800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -10804($fp)
	li $t0, 1
	sw $t0, -10808($fp)
	li $t0, 4
	lw $t1, -10808($fp)
	mul $t0, $t0, $t1
	sw $t0, -10812($fp)
	lw $t0, -10812($fp)
	lw $t1, -10804($fp)
	add $t0, $t0, $t1
	sw $t0, -10816($fp)
	lw $t0, -10816($fp)
	lw $t1, 0($t0)
	sw $t1, -10820($fp)
	lw $t0, -10820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -10824($fp)
	li $t0, 2
	sw $t0, -10828($fp)
	li $t0, 4
	lw $t1, -10828($fp)
	mul $t0, $t0, $t1
	sw $t0, -10832($fp)
	lw $t0, -10832($fp)
	lw $t1, -10824($fp)
	add $t0, $t0, $t1
	sw $t0, -10836($fp)
	lw $t0, -10836($fp)
	lw $t1, 0($t0)
	sw $t1, -10840($fp)
	lw $t0, -10840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2224($fp)
	sw $t0, -10844($fp)
	lw $t0, -10844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2236($fp)
	sw $t0, -10848($fp)
	lw $t0, -10848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2248($fp)
	sw $t0, -10852($fp)
	lw $t0, -10852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -10856($fp)
	li $t0, 0
	sw $t0, -10860($fp)
	li $t0, 4
	lw $t1, -10860($fp)
	mul $t0, $t0, $t1
	sw $t0, -10864($fp)
	lw $t0, -10864($fp)
	lw $t1, -10856($fp)
	add $t0, $t0, $t1
	sw $t0, -10868($fp)
	lw $t0, -10868($fp)
	lw $t1, 0($t0)
	sw $t1, -10872($fp)
	lw $t0, -10872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -10876($fp)
	li $t0, 1
	sw $t0, -10880($fp)
	li $t0, 4
	lw $t1, -10880($fp)
	mul $t0, $t0, $t1
	sw $t0, -10884($fp)
	lw $t0, -10884($fp)
	lw $t1, -10876($fp)
	add $t0, $t0, $t1
	sw $t0, -10888($fp)
	lw $t0, -10888($fp)
	lw $t1, 0($t0)
	sw $t1, -10892($fp)
	lw $t0, -10892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -10896($fp)
	li $t0, 2
	sw $t0, -10900($fp)
	li $t0, 4
	lw $t1, -10900($fp)
	mul $t0, $t0, $t1
	sw $t0, -10904($fp)
	lw $t0, -10904($fp)
	lw $t1, -10896($fp)
	add $t0, $t0, $t1
	sw $t0, -10908($fp)
	lw $t0, -10908($fp)
	lw $t1, 0($t0)
	sw $t1, -10912($fp)
	lw $t0, -10912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -10916($fp)
	li $t0, 3
	sw $t0, -10920($fp)
	li $t0, 4
	lw $t1, -10920($fp)
	mul $t0, $t0, $t1
	sw $t0, -10924($fp)
	lw $t0, -10924($fp)
	lw $t1, -10916($fp)
	add $t0, $t0, $t1
	sw $t0, -10928($fp)
	lw $t0, -10928($fp)
	lw $t1, 0($t0)
	sw $t1, -10932($fp)
	lw $t0, -10932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -10936($fp)
	li $t0, 4
	sw $t0, -10940($fp)
	li $t0, 4
	lw $t1, -10940($fp)
	mul $t0, $t0, $t1
	sw $t0, -10944($fp)
	lw $t0, -10944($fp)
	lw $t1, -10936($fp)
	add $t0, $t0, $t1
	sw $t0, -10948($fp)
	lw $t0, -10948($fp)
	lw $t1, 0($t0)
	sw $t1, -10952($fp)
	lw $t0, -10952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2380($fp)
	sw $t0, -10956($fp)
	lw $t0, -10956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2392($fp)
	sw $t0, -10960($fp)
	lw $t0, -10960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2404($fp)
	sw $t0, -10964($fp)
	lw $t0, -10964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2416($fp)
	sw $t0, -10968($fp)
	lw $t0, -10968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2428($fp)
	sw $t0, -10972($fp)
	lw $t0, -10972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2440($fp)
	sw $t0, -10976($fp)
	lw $t0, -10976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2452($fp)
	sw $t0, -10980($fp)
	lw $t0, -10980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2464($fp)
	sw $t0, -10984($fp)
	lw $t0, -10984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -10988($fp)
	li $t0, 0
	lw $t1, -10988($fp)
	sub $t0, $t0, $t1
	sw $t0, -10992($fp)
	li $t0, 0
	sw $t0, -10996($fp)
	lw $t0, -2452($fp)
	sw $t0, -11000($fp)
	lw $t1, -11000($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label560:
	li $t0, 1
	sw $t0, -10996($fp)
label561:
	lw $t0, -10992($fp)
	lw $t1, -10996($fp)
	add $t0, $t0, $t1
	sw $t0, -11004($fp)
	lw $ra, -4($fp)
	lw $v0, -11004($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2764
	li $t0, 23883
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 19967
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 17027
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 36499
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 1354
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 15368
	sw $t0, -204($fp)
	addi $t0, $fp, -40
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
	li $t0, 63679
	sw $t0, -228($fp)
	addi $t0, $fp, -40
	sw $t0, -232($fp)
	li $t0, 1
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
	li $t0, 41837
	sw $t0, -252($fp)
	addi $t0, $fp, -40
	sw $t0, -256($fp)
	li $t0, 2
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
	li $t0, 12484
	sw $t0, -276($fp)
	addi $t0, $fp, -40
	sw $t0, -280($fp)
	li $t0, 3
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
	li $t0, 37996
	sw $t0, -300($fp)
	addi $t0, $fp, -40
	sw $t0, -304($fp)
	li $t0, 4
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
	li $t0, 8729
	sw $t0, -324($fp)
	addi $t0, $fp, -40
	sw $t0, -328($fp)
	li $t0, 5
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
	li $t0, 10307
	sw $t0, -348($fp)
	addi $t0, $fp, -40
	sw $t0, -352($fp)
	li $t0, 6
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
	li $t0, 23634
	sw $t0, -372($fp)
	addi $t0, $fp, -40
	sw $t0, -376($fp)
	li $t0, 7
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
	li $t0, 26934
	sw $t0, -396($fp)
	addi $t0, $fp, -40
	sw $t0, -400($fp)
	li $t0, 8
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
	li $t0, 48325
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 30721
	sw $t0, -432($fp)
	addi $t0, $fp, -76
	sw $t0, -436($fp)
	li $t0, 0
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
	li $t0, 42731
	sw $t0, -456($fp)
	addi $t0, $fp, -76
	sw $t0, -460($fp)
	li $t0, 1
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
	li $t0, 37974
	sw $t0, -480($fp)
	addi $t0, $fp, -76
	sw $t0, -484($fp)
	li $t0, 2
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -484($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -480($fp)
	lw $t1, -496($fp)
	sw $t0, 0($t1)
	lw $t0, -496($fp)
	lw $t1, 0($t0)
	sw $t1, -500($fp)
	li $t0, 11682
	sw $t0, -504($fp)
	addi $t0, $fp, -76
	sw $t0, -508($fp)
	li $t0, 3
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
	li $t0, 42842
	sw $t0, -528($fp)
	addi $t0, $fp, -76
	sw $t0, -532($fp)
	li $t0, 4
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
	li $t0, 3932
	sw $t0, -552($fp)
	addi $t0, $fp, -76
	sw $t0, -556($fp)
	li $t0, 5
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
	li $t0, 54965
	sw $t0, -576($fp)
	addi $t0, $fp, -76
	sw $t0, -580($fp)
	li $t0, 6
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
	li $t0, 28550
	sw $t0, -600($fp)
	addi $t0, $fp, -76
	sw $t0, -604($fp)
	li $t0, 7
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
	li $t0, 11041
	sw $t0, -624($fp)
	addi $t0, $fp, -76
	sw $t0, -628($fp)
	li $t0, 8
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
	li $t0, 4881
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 11171
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 48799
	sw $t0, -672($fp)
	addi $t0, $fp, -80
	sw $t0, -676($fp)
	li $t0, 0
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
	li $t0, 41731
	sw $t0, -696($fp)
	addi $t0, $fp, -108
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
	li $t0, 40488
	sw $t0, -720($fp)
	addi $t0, $fp, -108
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
	li $t0, 5512
	sw $t0, -744($fp)
	addi $t0, $fp, -108
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
	li $t0, 15880
	sw $t0, -768($fp)
	addi $t0, $fp, -108
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
	li $t0, 64371
	sw $t0, -792($fp)
	addi $t0, $fp, -108
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
	li $t0, 25479
	sw $t0, -816($fp)
	addi $t0, $fp, -108
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
	li $t0, 32907
	sw $t0, -840($fp)
	addi $t0, $fp, -108
	sw $t0, -844($fp)
	li $t0, 6
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
	li $t0, 35335
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 26834
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 48275
	sw $t0, -888($fp)
	addi $t0, $fp, -140
	sw $t0, -892($fp)
	li $t0, 0
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
	li $t0, 33478
	sw $t0, -912($fp)
	addi $t0, $fp, -140
	sw $t0, -916($fp)
	li $t0, 1
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
	li $t0, 3135
	sw $t0, -936($fp)
	addi $t0, $fp, -140
	sw $t0, -940($fp)
	li $t0, 2
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -940($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -936($fp)
	lw $t1, -952($fp)
	sw $t0, 0($t1)
	lw $t0, -952($fp)
	lw $t1, 0($t0)
	sw $t1, -956($fp)
	li $t0, 60760
	sw $t0, -960($fp)
	addi $t0, $fp, -140
	sw $t0, -964($fp)
	li $t0, 3
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -964($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -960($fp)
	lw $t1, -976($fp)
	sw $t0, 0($t1)
	lw $t0, -976($fp)
	lw $t1, 0($t0)
	sw $t1, -980($fp)
	li $t0, 5938
	sw $t0, -984($fp)
	addi $t0, $fp, -140
	sw $t0, -988($fp)
	li $t0, 4
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -988($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -984($fp)
	lw $t1, -1000($fp)
	sw $t0, 0($t1)
	lw $t0, -1000($fp)
	lw $t1, 0($t0)
	sw $t1, -1004($fp)
	li $t0, 11864
	sw $t0, -1008($fp)
	addi $t0, $fp, -140
	sw $t0, -1012($fp)
	li $t0, 5
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1012($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1008($fp)
	lw $t1, -1024($fp)
	sw $t0, 0($t1)
	lw $t0, -1024($fp)
	lw $t1, 0($t0)
	sw $t1, -1028($fp)
	li $t0, 5531
	sw $t0, -1032($fp)
	addi $t0, $fp, -140
	sw $t0, -1036($fp)
	li $t0, 6
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1036($fp)
	lw $t1, -1044($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1032($fp)
	lw $t1, -1048($fp)
	sw $t0, 0($t1)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	li $t0, 29573
	sw $t0, -1056($fp)
	addi $t0, $fp, -140
	sw $t0, -1060($fp)
	li $t0, 7
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1060($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1056($fp)
	lw $t1, -1072($fp)
	sw $t0, 0($t1)
	lw $t0, -1072($fp)
	lw $t1, 0($t0)
	sw $t1, -1076($fp)
	addi $t0, $fp, -108
	sw $t0, -1080($fp)
	lw $t0, -880($fp)
	sw $t0, -1084($fp)
	li $t0, 38799
	sw $t0, -1088($fp)
	lw $t0, -1084($fp)
	lw $t1, -1088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1092($fp)
	li $t0, 4
	lw $t1, -1092($fp)
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, -1080($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	li $t0, 0
	sw $t0, -1108($fp)
	lw $t0, 8($fp)
	sw $t0, -1112($fp)
	lw $t0, -880($fp)
	sw $t0, -1116($fp)
	lw $t0, -1112($fp)
	lw $t1, -1116($fp)
	add $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label563
label564:
	li $t0, 21850
	sw $t0, -1124($fp)
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -1108($fp)
label563:
	addi $t0, $fp, -76
	sw $t0, -1128($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -1148($fp)
	addi $t0, $fp, -76
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
	li $t0, 58836
	sw $t0, -1172($fp)
	lw $t1, -1168($fp)
	lw $t2, -1172($fp)
	bgt $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -1148($fp)
label566:
	li $t0, 0
	sw $t0, -1176($fp)
	li $t0, 15994
	sw $t0, -1180($fp)
	lw $t0, 16($fp)
	sw $t0, -1184($fp)
	lw $t1, -1180($fp)
	lw $t2, -1184($fp)
	beq $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -1176($fp)
label568:
	li $t0, 0
	sw $t0, -1188($fp)
	li $t0, 0
	sw $t0, -1192($fp)
	li $t0, 53856
	sw $t0, -1196($fp)
	lw $t0, 4($fp)
	sw $t0, -1200($fp)
	lw $t1, -1196($fp)
	lw $t2, -1200($fp)
	bge $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -1192($fp)
label572:
	li $t0, 60294
	sw $t0, -1204($fp)
	lw $t1, -1192($fp)
	lw $t2, -1204($fp)
	bgt $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -1188($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -1108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1208($fp)
	addi $sp, $sp, 24
	lw $t0, -1104($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -664($fp)
	sw $t0, -1216($fp)
	li $t0, 41268
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1212($fp)
	lw $t1, -1224($fp)
	add $t0, $t0, $t1
	sw $t0, -1228($fp)
	li $t0, 0
	sw $t0, -1232($fp)
	li $t0, 33021
	sw $t0, -1236($fp)
	lw $t0, -184($fp)
	sw $t0, -1240($fp)
	lw $t0, -1236($fp)
	lw $t1, -1240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1244($fp)
	lw $t0, -868($fp)
	sw $t0, -1248($fp)
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	li $t0, 0
	sw $t0, -1256($fp)
	li $t0, 750
	sw $t0, -1260($fp)
	li $t0, 0
	lw $t1, -1260($fp)
	sub $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -664($fp)
	sw $t0, -1268($fp)
	lw $t1, -1264($fp)
	lw $t2, -1268($fp)
	bge $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -1256($fp)
label577:
	addi $sp, $sp, -4
	lw $t0, -1252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1272($fp)
	addi $sp, $sp, 12
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label574
label575:
	li $t0, 24531
	sw $t0, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label573
label573:
	li $t0, 1
	sw $t0, -1232($fp)
label574:
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 30043
	sw $t0, -1284($fp)
	li $t0, 58361
	sw $t0, -1288($fp)
	lw $t0, -1284($fp)
	lw $t1, -1288($fp)
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	li $t0, 0
	lw $t1, -1292($fp)
	sub $t0, $t0, $t1
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 42481
	sw $t0, -1304($fp)
	lw $t0, -424($fp)
	sw $t0, -1308($fp)
	lw $t1, -1304($fp)
	lw $t2, -1308($fp)
	beq $t1, $t2, label582
	j label581
label582:
	li $t0, 7973
	sw $t0, -1312($fp)
	lw $t1, -1312($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -1300($fp)
label581:
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1316($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	li $t0, 0
	sw $t0, -1324($fp)
	li $t0, 6809
	sw $t0, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label583:
	li $t0, 1
	sw $t0, -1324($fp)
label584:
	lw $t0, -1320($fp)
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1332($fp)
	li $t0, 55522
	sw $t0, -1336($fp)
	li $t0, 25733
	sw $t0, -1340($fp)
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1344($fp)
	li $t0, 42144
	sw $t0, -1348($fp)
	lw $t0, -1344($fp)
	lw $t1, -1348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1352($fp)
	lw $t0, -1332($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	li $t0, 0
	sw $t0, -1360($fp)
	addi $t0, $fp, -80
	sw $t0, -1364($fp)
	lw $t0, -880($fp)
	sw $t0, -1368($fp)
	li $t0, 4
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, 0($t0)
	sw $t1, -1380($fp)
	li $t0, 31820
	sw $t0, -1384($fp)
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 3696
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label590:
	lw $t0, -184($fp)
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label589
label589:
	li $t0, 16025
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -1388($fp)
label588:
	li $t0, 0
	sw $t0, -1404($fp)
	li $t0, 10086
	sw $t0, -1408($fp)
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label594
label594:
	li $t0, 19956
	sw $t0, -1412($fp)
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label593
label593:
	lw $t0, -184($fp)
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -1404($fp)
label592:
	li $t0, 16820
	sw $t0, -1420($fp)
	li $t0, 0
	lw $t1, -1420($fp)
	sub $t0, $t0, $t1
	sw $t0, -1424($fp)
	li $t0, 8472
	sw $t0, -1428($fp)
	lw $t0, -1424($fp)
	lw $t1, -1428($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1436($fp)
	addi $sp, $sp, 24
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label585:
	li $t0, 1
	sw $t0, -1360($fp)
label586:
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 9227
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label595
label595:
	li $t0, 1
	sw $t0, -1440($fp)
label596:
	lw $t0, -1360($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t1, -1356($fp)
	lw $t2, -1448($fp)
	bge $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -1280($fp)
label579:
	li $t0, 0
	sw $t0, -1452($fp)
	li $t0, 63083
	sw $t0, -1456($fp)
	lw $t0, -652($fp)
	sw $t0, -1460($fp)
	lw $t0, -1456($fp)
	lw $t1, -1460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1464($fp)
	lw $t0, -424($fp)
	sw $t0, -1468($fp)
	lw $t0, -1464($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	lw $t0, -664($fp)
	sw $t0, -1480($fp)
	li $t0, 5083
	sw $t0, -1484($fp)
	lw $t1, -1480($fp)
	lw $t2, -1484($fp)
	beq $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -1476($fp)
label600:
	li $t0, 45598
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1492($fp)
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1496($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1496($fp)
	sub $t0, $t0, $t1
	sw $t0, -1500($fp)
	li $t0, 40356
	sw $t0, -1504($fp)
	lw $t1, -1500($fp)
	lw $t2, -1504($fp)
	bge $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -1452($fp)
label598:
	li $t0, 0
	sw $t0, -1508($fp)
	li $t0, 21077
	sw $t0, -1512($fp)
	li $t0, 43415
	sw $t0, -1516($fp)
	li $t0, 0
	lw $t1, -1516($fp)
	sub $t0, $t0, $t1
	sw $t0, -1520($fp)
	addi $t0, $fp, -80
	sw $t0, -1524($fp)
	lw $t0, 8($fp)
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
	li $t0, 29801
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	li $t0, 36227
	sw $t0, -1556($fp)
	lw $t0, 8($fp)
	sw $t0, -1560($fp)
	lw $t1, -1556($fp)
	lw $t2, -1560($fp)
	bge $t1, $t2, label605
	j label604
label605:
	lw $t0, 12($fp)
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -1552($fp)
label604:
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, 12($fp)
	sw $t0, -1572($fp)
	li $t0, 42665
	sw $t0, -1576($fp)
	lw $t0, -1572($fp)
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -196($fp)
	sw $t0, -1584($fp)
	lw $t1, -1580($fp)
	lw $t2, -1584($fp)
	bne $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -1568($fp)
label607:
	addi $t0, $fp, -76
	sw $t0, -1588($fp)
	li $t0, 6
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
	addi $t0, $fp, -140
	sw $t0, -1608($fp)
	li $t0, 4
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
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1628($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -1520($fp)
	sw $t0, 0($sp)
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
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1632($fp)
	addi $sp, $sp, 24
	lw $t0, -1512($fp)
	lw $t1, -1632($fp)
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	li $t0, 0
	sw $t0, -1644($fp)
	li $t0, 20360
	sw $t0, -1648($fp)
	li $t0, 11686
	sw $t0, -1652($fp)
	lw $t1, -1648($fp)
	lw $t2, -1652($fp)
	bge $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -1644($fp)
label611:
	lw $t0, -664($fp)
	sw $t0, -1656($fp)
	lw $t1, -1644($fp)
	lw $t2, -1656($fp)
	bne $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -1640($fp)
label609:
	li $t0, 0
	sw $t0, -1660($fp)
	li $t0, 3712
	sw $t0, -1664($fp)
	lw $t0, 16($fp)
	sw $t0, -1668($fp)
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	li $t0, 54332
	sw $t0, -1676($fp)
	lw $t1, -1672($fp)
	lw $t2, -1676($fp)
	ble $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -1660($fp)
label613:
	lw $t0, 20($fp)
	sw $t0, -1680($fp)
	li $t0, 0
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	lw $t0, -652($fp)
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	li $t0, 1
	sw $t0, -1688($fp)
label615:
	li $t0, 0
	lw $t1, -1688($fp)
	sub $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, 16($fp)
	sw $t0, -1700($fp)
	li $t0, 0
	lw $t1, -1700($fp)
	sub $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, 4($fp)
	sw $t0, -1708($fp)
	lw $t0, -1704($fp)
	lw $t1, -1708($fp)
	sub $t0, $t0, $t1
	sw $t0, -1712($fp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1716($fp)
	addi $sp, $sp, 24
	lw $t0, -1636($fp)
	lw $t1, -1716($fp)
	mul $t0, $t0, $t1
	sw $t0, -1720($fp)
	li $t0, 0
	lw $t1, -1720($fp)
	sub $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t1, -1724($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label601:
	li $t0, 1
	sw $t0, -1508($fp)
label602:
	li $t0, 0
	lw $t1, -1508($fp)
	sub $t0, $t0, $t1
	sw $t0, -1728($fp)
	li $t0, 0
	sw $t0, -1732($fp)
	li $t0, 0
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	li $t0, 18839
	sw $t0, -1744($fp)
	li $t0, 0
	lw $t1, -1744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1748($fp)
	li $t0, 0
	lw $t1, -1748($fp)
	sub $t0, $t0, $t1
	sw $t0, -1752($fp)
	li $t0, 13185
	sw $t0, -1756($fp)
	lw $t0, 16($fp)
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1764($fp)
	lw $t1, -1752($fp)
	lw $t2, -1764($fp)
	bge $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -1740($fp)
label621:
	lw $t0, -664($fp)
	sw $t0, -1768($fp)
	li $t0, 18495
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	mul $t0, $t0, $t1
	sw $t0, -1776($fp)
	li $t0, 8825
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t1, -1740($fp)
	lw $t2, -1784($fp)
	ble $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -1736($fp)
label619:
	addi $t0, $fp, -140
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
	li $t0, 0
	sw $t0, -1808($fp)
	li $t0, 1276
	sw $t0, -1812($fp)
	lw $t1, -1812($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label622
label624:
	lw $t0, 8($fp)
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -1808($fp)
label623:
	lw $t0, -424($fp)
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	lw $t0, -184($fp)
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label625
label625:
	li $t0, 1
	sw $t0, -1824($fp)
label626:
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -196($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	lw $t0, 8($fp)
	sw $t0, -1848($fp)
	li $t0, 60315
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	sub $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label629
label629:
	lw $t0, 16($fp)
	sw $t0, -1860($fp)
	lw $t1, -1860($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -1844($fp)
label628:
	li $t0, 0
	sw $t0, -1864($fp)
	li $t0, 51087
	sw $t0, -1868($fp)
	li $t0, 21214
	sw $t0, -1872($fp)
	lw $t1, -1868($fp)
	lw $t2, -1872($fp)
	bgt $t1, $t2, label632
	j label631
label632:
	li $t0, 11886
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -1864($fp)
label631:
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1880($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1884($fp)
	addi $t0, $fp, -40
	sw $t0, -1888($fp)
	li $t0, 7
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
	lw $t0, 16($fp)
	sw $t0, -1908($fp)
	li $t0, 47391
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -664($fp)
	sw $t0, -1920($fp)
	lw $t0, -1916($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	li $t0, 25646
	sw $t0, -1928($fp)
	lw $t0, -184($fp)
	sw $t0, -1932($fp)
	lw $t0, -1928($fp)
	lw $t1, -1932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1936($fp)
	lw $t0, -196($fp)
	sw $t0, -1940($fp)
	lw $t0, -1936($fp)
	lw $t1, -1940($fp)
	sub $t0, $t0, $t1
	sw $t0, -1944($fp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1948($fp)
	addi $sp, $sp, 16
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label634
label635:
	lw $t0, -172($fp)
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -1884($fp)
label634:
	li $t0, 0
	sw $t0, -1956($fp)
	li $t0, 60639
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label638:
	lw $t0, -664($fp)
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label637
label636:
	li $t0, 1
	sw $t0, -1956($fp)
label637:
	li $t0, 0
	sw $t0, -1968($fp)
	li $t0, 38918
	sw $t0, -1972($fp)
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label641
label641:
	lw $t0, 16($fp)
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -1968($fp)
label640:
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1980($fp)
	addi $sp, $sp, 24
	li $t0, 16970
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	addi $t0, $fp, -108
	sw $t0, -1992($fp)
	lw $t0, -664($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2012($fp)
	addi $sp, $sp, 16
	lw $t0, -424($fp)
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t1, -1736($fp)
	lw $t2, -2020($fp)
	ble $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -1732($fp)
label617:
	lw $t0, -148($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2044($fp)
	li $t0, 0
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
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2064($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -2084($fp)
	li $t0, 2
	sw $t0, -2088($fp)
	li $t0, 4
	lw $t1, -2088($fp)
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2104($fp)
	li $t0, 3
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
	lw $t0, -2120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2124($fp)
	li $t0, 4
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
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2144($fp)
	li $t0, 5
	sw $t0, -2148($fp)
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2164($fp)
	li $t0, 6
	sw $t0, -2168($fp)
	li $t0, 4
	lw $t1, -2168($fp)
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	lw $t1, 0($t0)
	sw $t1, -2180($fp)
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2184($fp)
	li $t0, 7
	sw $t0, -2188($fp)
	li $t0, 4
	lw $t1, -2188($fp)
	mul $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	lw $t1, 0($t0)
	sw $t1, -2200($fp)
	lw $t0, -2200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2204($fp)
	li $t0, 8
	sw $t0, -2208($fp)
	li $t0, 4
	lw $t1, -2208($fp)
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	lw $t1, -2204($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	lw $t1, 0($t0)
	sw $t1, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
	sw $t0, -2248($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -2268($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -2288($fp)
	li $t0, 3
	sw $t0, -2292($fp)
	li $t0, 4
	lw $t1, -2292($fp)
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	lw $t0, -2304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2308($fp)
	li $t0, 4
	sw $t0, -2312($fp)
	li $t0, 4
	lw $t1, -2312($fp)
	mul $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	lw $t1, 0($t0)
	sw $t1, -2324($fp)
	lw $t0, -2324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2328($fp)
	li $t0, 5
	sw $t0, -2332($fp)
	li $t0, 4
	lw $t1, -2332($fp)
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	lw $t1, 0($t0)
	sw $t1, -2344($fp)
	lw $t0, -2344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2348($fp)
	li $t0, 6
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
	addi $t0, $fp, -76
	sw $t0, -2368($fp)
	li $t0, 7
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
	addi $t0, $fp, -76
	sw $t0, -2388($fp)
	li $t0, 8
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
	lw $t0, -652($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2416($fp)
	li $t0, 0
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
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2436($fp)
	li $t0, 0
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
	lw $t0, -2452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2456($fp)
	li $t0, 1
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
	lw $t0, -2472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2476($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -2496($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -2516($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -2536($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -2556($fp)
	li $t0, 6
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
	lw $t0, -868($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
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
	lw $t0, -2600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2604($fp)
	li $t0, 1
	sw $t0, -2608($fp)
	li $t0, 4
	lw $t1, -2608($fp)
	mul $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	lw $t1, 0($t0)
	sw $t1, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2624($fp)
	li $t0, 2
	sw $t0, -2628($fp)
	li $t0, 4
	lw $t1, -2628($fp)
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2644($fp)
	li $t0, 3
	sw $t0, -2648($fp)
	li $t0, 4
	lw $t1, -2648($fp)
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	lw $t1, 0($t0)
	sw $t1, -2660($fp)
	lw $t0, -2660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2664($fp)
	li $t0, 4
	sw $t0, -2668($fp)
	li $t0, 4
	lw $t1, -2668($fp)
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	lw $t1, 0($t0)
	sw $t1, -2680($fp)
	lw $t0, -2680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2684($fp)
	li $t0, 5
	sw $t0, -2688($fp)
	li $t0, 4
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	lw $t1, 0($t0)
	sw $t1, -2700($fp)
	lw $t0, -2700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2704($fp)
	li $t0, 6
	sw $t0, -2708($fp)
	li $t0, 4
	lw $t1, -2708($fp)
	mul $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	lw $t1, -2704($fp)
	add $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	lw $t1, 0($t0)
	sw $t1, -2720($fp)
	lw $t0, -2720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2724($fp)
	li $t0, 7
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
	lw $t0, -2740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2744($fp)
	lw $t0, -160($fp)
	sw $t0, -2748($fp)
	li $t0, 4
	lw $t1, -2748($fp)
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, -2744($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	lw $t1, 0($t0)
	sw $t1, -2760($fp)
	li $t0, 0
	lw $t1, -2760($fp)
	sub $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2768($fp)
	lw $ra, -4($fp)
	lw $v0, -2768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5728
	li $t0, 38047
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 16168
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 22892
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 52425
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 4701
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 21
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 23116
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 34502
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 43436
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 26829
	sw $t0, -236($fp)
	addi $t0, $fp, -20
	sw $t0, -240($fp)
	li $t0, 0
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
	li $t0, 23298
	sw $t0, -260($fp)
	addi $t0, $fp, -20
	sw $t0, -264($fp)
	li $t0, 1
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
	li $t0, 63796
	sw $t0, -284($fp)
	addi $t0, $fp, -20
	sw $t0, -288($fp)
	li $t0, 2
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
	li $t0, 38515
	sw $t0, -308($fp)
	addi $t0, $fp, -20
	sw $t0, -312($fp)
	li $t0, 3
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
	li $t0, 42137
	sw $t0, -332($fp)
	addi $t0, $fp, -60
	sw $t0, -336($fp)
	li $t0, 0
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
	li $t0, 11446
	sw $t0, -356($fp)
	addi $t0, $fp, -60
	sw $t0, -360($fp)
	li $t0, 1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -360($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -356($fp)
	lw $t1, -372($fp)
	sw $t0, 0($t1)
	lw $t0, -372($fp)
	lw $t1, 0($t0)
	sw $t1, -376($fp)
	li $t0, 57010
	sw $t0, -380($fp)
	addi $t0, $fp, -60
	sw $t0, -384($fp)
	li $t0, 2
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
	li $t0, 50963
	sw $t0, -404($fp)
	addi $t0, $fp, -60
	sw $t0, -408($fp)
	li $t0, 3
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
	li $t0, 50364
	sw $t0, -428($fp)
	addi $t0, $fp, -60
	sw $t0, -432($fp)
	li $t0, 4
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
	li $t0, 52113
	sw $t0, -452($fp)
	addi $t0, $fp, -60
	sw $t0, -456($fp)
	li $t0, 5
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
	li $t0, 11073
	sw $t0, -476($fp)
	addi $t0, $fp, -60
	sw $t0, -480($fp)
	li $t0, 6
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
	li $t0, 32219
	sw $t0, -500($fp)
	addi $t0, $fp, -60
	sw $t0, -504($fp)
	li $t0, 7
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
	li $t0, 57302
	sw $t0, -524($fp)
	addi $t0, $fp, -60
	sw $t0, -528($fp)
	li $t0, 8
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
	li $t0, 56675
	sw $t0, -548($fp)
	addi $t0, $fp, -60
	sw $t0, -552($fp)
	li $t0, 9
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
	li $t0, 17771
	sw $t0, -572($fp)
	addi $t0, $fp, -100
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
	li $t0, 12981
	sw $t0, -596($fp)
	addi $t0, $fp, -100
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
	li $t0, 3025
	sw $t0, -620($fp)
	addi $t0, $fp, -100
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
	li $t0, 12550
	sw $t0, -644($fp)
	addi $t0, $fp, -100
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
	li $t0, 14257
	sw $t0, -668($fp)
	addi $t0, $fp, -100
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
	li $t0, 19995
	sw $t0, -692($fp)
	addi $t0, $fp, -100
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
	li $t0, 4876
	sw $t0, -716($fp)
	addi $t0, $fp, -100
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
	li $t0, 55890
	sw $t0, -740($fp)
	addi $t0, $fp, -100
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
	li $t0, 58043
	sw $t0, -764($fp)
	addi $t0, $fp, -100
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
	li $t0, 21045
	sw $t0, -788($fp)
	addi $t0, $fp, -100
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
	li $t0, 13246
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 44932
	sw $t0, -824($fp)
	addi $t0, $fp, -112
	sw $t0, -828($fp)
	li $t0, 0
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
	li $t0, 25746
	sw $t0, -848($fp)
	addi $t0, $fp, -112
	sw $t0, -852($fp)
	li $t0, 1
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
	li $t0, 13268
	sw $t0, -872($fp)
	addi $t0, $fp, -112
	sw $t0, -876($fp)
	li $t0, 2
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
	li $t0, 2512
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 60249
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	li $t0, 56704
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 29341
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	li $t0, 18011
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 54965
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	li $t0, 2320
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	li $t0, 60149
	sw $t0, -980($fp)
	addi $t0, $fp, -124
	sw $t0, -984($fp)
	li $t0, 0
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
	li $t0, 875
	sw $t0, -1004($fp)
	addi $t0, $fp, -124
	sw $t0, -1008($fp)
	li $t0, 1
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
	li $t0, 59330
	sw $t0, -1028($fp)
	addi $t0, $fp, -124
	sw $t0, -1032($fp)
	li $t0, 2
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
	li $t0, 45576
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	li $t0, 51239
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 45907
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 56649
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 17923
	sw $t0, -1100($fp)
	lw $t0, -156($fp)
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	li $t0, 0
	sw $t0, -1112($fp)
	li $t0, 0
	sw $t0, -1116($fp)
	addi $t0, $fp, -124
	sw $t0, -1120($fp)
	li $t0, 0
	sw $t0, -1124($fp)
	li $t0, 37674
	sw $t0, -1128($fp)
	li $t0, 47788
	sw $t0, -1132($fp)
	lw $t1, -1128($fp)
	lw $t2, -1132($fp)
	bgt $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -1124($fp)
label647:
	li $t0, 4
	lw $t1, -1124($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, -1120($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label644
label644:
	li $t0, 1
	sw $t0, -1116($fp)
label645:
	li $t0, 35694
	sw $t0, -1148($fp)
	lw $t1, -1116($fp)
	lw $t2, -1148($fp)
	bge $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -1112($fp)
label643:
	lw $ra, -4($fp)
	lw $v0, -1112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -132($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
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
	addi $t0, $fp, -60
	sw $t0, -1268($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -1288($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -1308($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -1328($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -1348($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -1368($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -1388($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -1408($fp)
	li $t0, 7
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
	addi $t0, $fp, -60
	sw $t0, -1428($fp)
	li $t0, 8
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
	addi $t0, $fp, -60
	sw $t0, -1448($fp)
	li $t0, 9
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
	addi $t0, $fp, -100
	sw $t0, -1468($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -1488($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -1508($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -1528($fp)
	li $t0, 3
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
	addi $t0, $fp, -100
	sw $t0, -1548($fp)
	li $t0, 4
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
	addi $t0, $fp, -100
	sw $t0, -1568($fp)
	li $t0, 5
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
	addi $t0, $fp, -100
	sw $t0, -1588($fp)
	li $t0, 6
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
	addi $t0, $fp, -100
	sw $t0, -1608($fp)
	li $t0, 7
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
	addi $t0, $fp, -100
	sw $t0, -1628($fp)
	li $t0, 8
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
	addi $t0, $fp, -100
	sw $t0, -1648($fp)
	li $t0, 9
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
	lw $t0, -816($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1672($fp)
	li $t0, 0
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
	addi $t0, $fp, -112
	sw $t0, -1692($fp)
	li $t0, 1
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
	addi $t0, $fp, -112
	sw $t0, -1712($fp)
	li $t0, 2
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
	lw $t0, -900($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -912($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1760($fp)
	li $t0, 0
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
	lw $t0, -1776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1780($fp)
	li $t0, 1
	sw $t0, -1784($fp)
	li $t0, 4
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	lw $t1, -1780($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	lw $t1, 0($t0)
	sw $t1, -1796($fp)
	lw $t0, -1796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1800($fp)
	li $t0, 2
	sw $t0, -1804($fp)
	li $t0, 4
	lw $t1, -1804($fp)
	mul $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	lw $t1, 0($t0)
	sw $t1, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1836($fp)
	li $t0, 50655
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label648
label648:
	li $t0, 1
	sw $t0, -1836($fp)
label649:
	lw $ra, -4($fp)
	lw $v0, -1836($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 50813
	sw $t0, -1864($fp)
	addi $t0, $fp, -1860
	sw $t0, -1868($fp)
	li $t0, 0
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
	li $t0, 48244
	sw $t0, -1888($fp)
	addi $t0, $fp, -1860
	sw $t0, -1892($fp)
	li $t0, 1
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
	li $t0, 64912
	sw $t0, -1912($fp)
	addi $t0, $fp, -1860
	sw $t0, -1916($fp)
	li $t0, 2
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1916($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1912($fp)
	lw $t1, -1928($fp)
	sw $t0, 0($t1)
	lw $t0, -1928($fp)
	lw $t1, 0($t0)
	sw $t1, -1932($fp)
	li $t0, 5273
	sw $t0, -1936($fp)
	addi $t0, $fp, -1860
	sw $t0, -1940($fp)
	li $t0, 3
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
	li $t0, 53120
	sw $t0, -1960($fp)
	addi $t0, $fp, -1860
	sw $t0, -1964($fp)
	li $t0, 4
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
	li $t0, 55266
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	li $t0, 63316
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	li $t0, 8629
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	li $t0, 2977
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -2028($fp)
	li $t0, 42712
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -2040($fp)
	li $t0, 34376
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
	li $t0, 16245
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	li $t0, 45224
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	li $t0, 29089
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
	li $t0, 7413
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	li $t0, 9030
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 47100
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 62378
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	li $t0, 11350
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -2148($fp)
label650:
	addi $t0, $fp, -124
	sw $t0, -2152($fp)
	li $t0, 0
	sw $t0, -2156($fp)
	lw $t0, -2072($fp)
	sw $t0, -2160($fp)
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label657
label657:
	li $t0, 41713
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -2156($fp)
label656:
	li $t0, 4
	lw $t1, -2156($fp)
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label654:
	li $t0, 0
	sw $t0, -2180($fp)
	lw $t0, -2072($fp)
	sw $t0, -2184($fp)
	li $t0, 63253
	sw $t0, -2188($fp)
	lw $t1, -2184($fp)
	lw $t2, -2188($fp)
	beq $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -2180($fp)
label659:
	li $t0, 5145
	sw $t0, -2192($fp)
	lw $t1, -2180($fp)
	lw $t2, -2192($fp)
	bne $t1, $t2, label651
	j label653
label653:
	lw $t0, -2060($fp)
	sw $t0, -2196($fp)
	li $t0, 21753
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	mul $t0, $t0, $t1
	sw $t0, -2204($fp)
	addi $t0, $fp, -112
	sw $t0, -2208($fp)
	li $t0, 0
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
	lw $t0, -2204($fp)
	lw $t1, -2224($fp)
	mul $t0, $t0, $t1
	sw $t0, -2228($fp)
	li $t0, 0
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	addi $t0, $fp, -1860
	sw $t0, -2244($fp)
	li $t0, 0
	sw $t0, -2248($fp)
	li $t0, 12866
	sw $t0, -2252($fp)
	lw $t0, -2024($fp)
	sw $t0, -2256($fp)
	lw $t1, -2252($fp)
	lw $t2, -2256($fp)
	blt $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -2248($fp)
label665:
	li $t0, 4
	lw $t1, -2248($fp)
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, -2244($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	li $t0, 0
	sw $t0, -2272($fp)
	li $t0, 1344
	sw $t0, -2276($fp)
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label666
label666:
	li $t0, 1
	sw $t0, -2272($fp)
label667:
	lw $t1, -2268($fp)
	lw $t2, -2272($fp)
	blt $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -2240($fp)
label663:
	li $t0, 0
	sw $t0, -2280($fp)
	lw $t0, -912($fp)
	sw $t0, -2284($fp)
	lw $t0, -144($fp)
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	li $t0, 23190
	sw $t0, -2296($fp)
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	sub $t0, $t0, $t1
	sw $t0, -2300($fp)
	li $t0, 60654
	sw $t0, -2304($fp)
	lw $t1, -2300($fp)
	lw $t2, -2304($fp)
	bge $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -2280($fp)
label669:
	lw $t1, -2240($fp)
	lw $t2, -2280($fp)
	bne $t1, $t2, label660
	j label661
label660:
	li $t0, 1
	sw $t0, -2236($fp)
label661:
	lw $ra, -4($fp)
	lw $v0, -2236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label650
label652:
	li $t0, 0
	sw $t0, -2308($fp)
	lw $t0, -216($fp)
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label670
label670:
	li $t0, 1
	sw $t0, -2308($fp)
label671:
	li $t0, 0
	sw $t0, -2316($fp)
	addi $t0, $fp, -1860
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 4
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label675
label675:
	li $t0, 1
	sw $t0, -2316($fp)
label676:
	li $t0, 0
	lw $t1, -2316($fp)
	sub $t0, $t0, $t1
	sw $t0, -2340($fp)
	li $t0, 0
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label673
label672:
	lw $t0, -1056($fp)
	sw $t0, -2348($fp)
	lw $ra, -4($fp)
	lw $v0, -2348($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label674
label673:
	li $t0, 0
	sw $t0, -2352($fp)
	li $t0, 0
	sw $t0, -2356($fp)
	li $t0, 0
	sw $t0, -2360($fp)
	li $t0, 45932
	sw $t0, -2364($fp)
	lw $t0, -132($fp)
	sw $t0, -2368($fp)
	lw $t1, -2364($fp)
	lw $t2, -2368($fp)
	beq $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -2360($fp)
label685:
	li $t0, 19746
	sw $t0, -2372($fp)
	lw $t1, -2360($fp)
	lw $t2, -2372($fp)
	beq $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -2356($fp)
label683:
	lw $t0, -960($fp)
	sw $t0, -2376($fp)
	lw $t1, -2356($fp)
	lw $t2, -2376($fp)
	beq $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -2352($fp)
label681:
	lw $t0, -2352($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label678
label677:
label686:
	li $t0, 0
	sw $t0, -2384($fp)
	lw $t0, -2024($fp)
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label692
label692:
	li $t0, 51205
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -2384($fp)
label691:
	li $t0, 0
	sw $t0, -2396($fp)
	lw $t0, -912($fp)
	sw $t0, -2400($fp)
	lw $t1, -2400($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label693:
	li $t0, 1
	sw $t0, -2396($fp)
label694:
	lw $t0, -1092($fp)
	sw $t0, -2404($fp)
	li $t0, 7686
	sw $t0, -2408($fp)
	lw $t0, -2404($fp)
	lw $t1, -2408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2412($fp)
	lw $t0, -2096($fp)
	sw $t0, -2416($fp)
	lw $t0, -2412($fp)
	lw $t1, -2416($fp)
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2424($fp)
	addi $sp, $sp, 16
	lw $t0, -2060($fp)
	sw $t0, -2428($fp)
	lw $t0, -2424($fp)
	lw $t1, -2428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2432($fp)
	lw $t0, -960($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -2440($fp)
	lw $t0, -948($fp)
	sw $t0, -2444($fp)
	li $t0, 0
	lw $t1, -2444($fp)
	sub $t0, $t0, $t1
	sw $t0, -2448($fp)
	li $t0, 50336
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	li $t0, 26161
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	li $t0, 393
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label695
label697:
	lw $t0, -900($fp)
	sw $t0, -2476($fp)
	lw $t1, -2476($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label696
label695:
	li $t0, 1
	sw $t0, -2468($fp)
label696:
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -2060($fp)
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label701
label701:
	lw $t0, -2120($fp)
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label700
label700:
	lw $t0, -2048($fp)
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -2480($fp)
label699:
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2496($fp)
	addi $sp, $sp, 24
	li $t0, 15960
	sw $t0, -2500($fp)
	li $t0, 0
	sw $t0, -2504($fp)
	li $t0, 7330
	sw $t0, -2508($fp)
	lw $t1, -2508($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label704
label705:
	li $t0, 62952
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label704
label704:
	li $t0, 48985
	sw $t0, -2516($fp)
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -2504($fp)
label703:
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2520($fp)
	addi $sp, $sp, 16
	lw $t0, -2432($fp)
	lw $t1, -2520($fp)
	sub $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2060($fp)
	sw $t0, -2528($fp)
	lw $t0, -2132($fp)
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t1, -2524($fp)
	lw $t2, -2536($fp)
	bne $t1, $t2, label689
	j label688
label689:
	li $t0, 16638
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label688
label687:
	lw $t0, -1056($fp)
	sw $t0, -2544($fp)
	lw $t0, -2036($fp)
	sw $t0, -2548($fp)
	lw $t0, -2544($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2024($fp)
	sw $t0, -2556($fp)
	lw $t0, -2552($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 5849
	sw $t0, -2568($fp)
	li $t0, 0
	lw $t1, -2568($fp)
	sub $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2000($fp)
	sw $t0, -2576($fp)
	lw $t1, -2572($fp)
	lw $t2, -2576($fp)
	bge $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -2564($fp)
label710:
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2580($fp)
	addi $sp, $sp, 12
	li $t0, 13889
	sw $t0, -2584($fp)
	lw $t0, -2580($fp)
	lw $t1, -2584($fp)
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	jal f9
	sw $v0, -2592($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2592($fp)
	sub $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2588($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t1, -2600($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label707
label706:
	lw $t0, -2144($fp)
	sw $t0, -2604($fp)
	lw $t1, -2604($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label712
label711:
	li $t0, 24052
	sw $t0, -2608($fp)
	li $t0, 0
	sw $t0, -2612($fp)
	lw $t0, -1068($fp)
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label715
	j label714
label714:
	li $t0, 1
	sw $t0, -2612($fp)
label715:
	lw $t0, -2608($fp)
	lw $t1, -2612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2620($fp)
	j label713
label712:
	li $t0, 0
	sw $t0, -2624($fp)
	jal f9
	sw $v0, -2628($fp)
	addi $sp, $sp, 4
	li $t0, 14879
	sw $t0, -2632($fp)
	li $t0, 0
	lw $t1, -2632($fp)
	sub $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2628($fp)
	lw $t1, -2636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	lw $t0, -2084($fp)
	sw $t0, -2648($fp)
	lw $t1, -2648($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label718
label718:
	li $t0, 1
	sw $t0, -2644($fp)
label719:
	lw $t0, -1080($fp)
	sw $t0, -2652($fp)
	lw $t0, -2644($fp)
	lw $t1, -2652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2656($fp)
	lw $t0, -2640($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	addi $t0, $fp, -100
	sw $t0, -2664($fp)
	li $t0, 2
	sw $t0, -2668($fp)
	li $t0, 4
	lw $t1, -2668($fp)
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	lw $t1, 0($t0)
	sw $t1, -2680($fp)
	lw $t1, -2660($fp)
	lw $t2, -2680($fp)
	beq $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -2624($fp)
label717:
label713:
	j label708
label707:
	li $t0, 0
	sw $t0, -2684($fp)
	lw $t0, -936($fp)
	sw $t0, -2688($fp)
	lw $t1, -2688($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label720
label720:
	li $t0, 1
	sw $t0, -2684($fp)
label721:
label708:
	j label686
label688:
	j label679
label678:
label722:
	li $t0, 0
	sw $t0, -2692($fp)
	li $t0, 31375
	sw $t0, -2696($fp)
	li $t0, 58920
	sw $t0, -2700($fp)
	lw $t0, -2696($fp)
	lw $t1, -2700($fp)
	sub $t0, $t0, $t1
	sw $t0, -2704($fp)
	li $t0, 2033
	sw $t0, -2708($fp)
	lw $t1, -2704($fp)
	lw $t2, -2708($fp)
	bge $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -2692($fp)
label726:
	li $t0, 0
	sw $t0, -2712($fp)
	li $t0, 0
	sw $t0, -2716($fp)
	li $t0, 37167
	sw $t0, -2720($fp)
	lw $t0, -2060($fp)
	sw $t0, -2724($fp)
	lw $t1, -2720($fp)
	lw $t2, -2724($fp)
	ble $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -2716($fp)
label730:
	li $t0, 18612
	sw $t0, -2728($fp)
	lw $t1, -2716($fp)
	lw $t2, -2728($fp)
	blt $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -2712($fp)
label728:
	lw $t0, -2108($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -2736($fp)
	li $t0, 0
	sw $t0, -2740($fp)
	lw $t0, -900($fp)
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label732
label734:
	li $t0, 26230
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label732
label733:
	lw $t0, -216($fp)
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -2740($fp)
label732:
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2756($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2760($fp)
	lw $t0, -2072($fp)
	sw $t0, -2764($fp)
	lw $t0, -156($fp)
	sw $t0, -2768($fp)
	lw $t0, -2764($fp)
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -1068($fp)
	sw $t0, -2776($fp)
	lw $t1, -2772($fp)
	lw $t2, -2776($fp)
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -2760($fp)
label736:
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2760($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2780($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2780($fp)
	sub $t0, $t0, $t1
	sw $t0, -2784($fp)
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2784($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2788($fp)
	addi $sp, $sp, 16
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label724
label723:
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, -2060($fp)
	sw $t0, -2796($fp)
	li $t0, 40415
	sw $t0, -2800($fp)
	lw $t0, -2796($fp)
	lw $t1, -2800($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	li $t0, 48391
	sw $t0, -2808($fp)
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	li $t0, 0
	sw $t0, -2816($fp)
	lw $t0, -228($fp)
	sw $t0, -2820($fp)
	lw $t0, -180($fp)
	sw $t0, -2824($fp)
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label741
label741:
	lw $t0, -816($fp)
	sw $t0, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -2816($fp)
label740:
	li $t0, 0
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	li $t0, 40082
	sw $t0, -2844($fp)
	li $t0, 1369
	sw $t0, -2848($fp)
	lw $t1, -2844($fp)
	lw $t2, -2848($fp)
	ble $t1, $t2, label744
	j label745
label744:
	li $t0, 1
	sw $t0, -2840($fp)
label745:
	lw $t0, -1068($fp)
	sw $t0, -2852($fp)
	lw $t1, -2840($fp)
	lw $t2, -2852($fp)
	bne $t1, $t2, label742
	j label743
label742:
	li $t0, 1
	sw $t0, -2836($fp)
label743:
	li $t0, 0
	sw $t0, -2856($fp)
	li $t0, 6251
	sw $t0, -2860($fp)
	li $t0, 3377
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2868($fp)
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label748
label748:
	lw $t0, -2048($fp)
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -2856($fp)
label747:
	li $t0, 0
	sw $t0, -2876($fp)
	li $t0, 16891
	sw $t0, -2880($fp)
	lw $t0, -216($fp)
	sw $t0, -2884($fp)
	lw $t1, -2880($fp)
	lw $t2, -2884($fp)
	bne $t1, $t2, label749
	j label751
label751:
	lw $t0, -132($fp)
	sw $t0, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -2876($fp)
label750:
	addi $sp, $sp, -4
	lw $t0, -2812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2892($fp)
	addi $sp, $sp, 24
	li $t0, 47301
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	li $t0, 60161
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label753
	j label752
label752:
	li $t0, 1
	sw $t0, -2904($fp)
label753:
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	li $t0, 32971
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2920($fp)
	li $t0, 0
	sw $t0, -2924($fp)
	addi $t0, $fp, -100
	sw $t0, -2928($fp)
	lw $t0, -948($fp)
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
	li $t0, 0
	lw $t1, -2944($fp)
	sub $t0, $t0, $t1
	sw $t0, -2948($fp)
	li $t0, 0
	sw $t0, -2952($fp)
	lw $t0, -1068($fp)
	sw $t0, -2956($fp)
	li $t0, 0
	lw $t1, -2956($fp)
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	li $t0, 1955
	sw $t0, -2964($fp)
	lw $t1, -2960($fp)
	lw $t2, -2964($fp)
	bgt $t1, $t2, label756
	j label757
label756:
	li $t0, 1
	sw $t0, -2952($fp)
label757:
	lw $t0, -936($fp)
	sw $t0, -2968($fp)
	li $t0, 0
	lw $t1, -2968($fp)
	sub $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -960($fp)
	sw $t0, -2976($fp)
	li $t0, 0
	lw $t1, -2976($fp)
	sub $t0, $t0, $t1
	sw $t0, -2980($fp)
	li $t0, 0
	lw $t1, -2980($fp)
	sub $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -936($fp)
	sw $t0, -2988($fp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2992($fp)
	addi $sp, $sp, 24
	li $t0, 53494
	sw $t0, -2996($fp)
	lw $t0, -2992($fp)
	lw $t1, -2996($fp)
	add $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -1988($fp)
	sw $t0, -3004($fp)
	lw $t0, -132($fp)
	sw $t0, -3008($fp)
	lw $t0, -3004($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t1, -3000($fp)
	lw $t2, -3012($fp)
	bgt $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -2924($fp)
label755:
	lw $t1, -2920($fp)
	lw $t2, -2924($fp)
	bne $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -2792($fp)
label738:
	addi $t0, $fp, -1860
	sw $t0, -3016($fp)
	li $t0, 0
	sw $t0, -3020($fp)
	lw $t0, -1056($fp)
	sw $t0, -3024($fp)
	li $t0, 0
	lw $t1, -3024($fp)
	sub $t0, $t0, $t1
	sw $t0, -3028($fp)
	li $t0, 16419
	sw $t0, -3032($fp)
	li $t0, 17915
	sw $t0, -3036($fp)
	lw $t0, -3032($fp)
	lw $t1, -3036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3040($fp)
	lw $t1, -3028($fp)
	lw $t2, -3040($fp)
	bge $t1, $t2, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -3020($fp)
label759:
	li $t0, 4
	lw $t1, -3020($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, 0($t0)
	sw $t1, -3052($fp)
	j label722
label724:
label679:
label674:
	li $t0, 53887
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	sw $t0, -3108($fp)
	li $t0, 42580
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -3120($fp)
	li $t0, 2715
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	sw $t0, -3132($fp)
	li $t0, 4990
	sw $t0, -3136($fp)
	addi $t0, $fp, -3072
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
	li $t0, 48430
	sw $t0, -3160($fp)
	addi $t0, $fp, -3072
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
	li $t0, 16604
	sw $t0, -3184($fp)
	addi $t0, $fp, -3072
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
	li $t0, 29042
	sw $t0, -3208($fp)
	addi $t0, $fp, -3072
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
	li $t0, 63309
	sw $t0, -3232($fp)
	addi $t0, $fp, -3072
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
	li $t0, 12058
	sw $t0, -3256($fp)
	addi $t0, $fp, -3096
	sw $t0, -3260($fp)
	li $t0, 0
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
	li $t0, 49936
	sw $t0, -3280($fp)
	addi $t0, $fp, -3096
	sw $t0, -3284($fp)
	li $t0, 1
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
	li $t0, 24003
	sw $t0, -3304($fp)
	addi $t0, $fp, -3096
	sw $t0, -3308($fp)
	li $t0, 2
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
	li $t0, 49225
	sw $t0, -3328($fp)
	addi $t0, $fp, -3096
	sw $t0, -3332($fp)
	li $t0, 3
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
	li $t0, 3012
	sw $t0, -3352($fp)
	addi $t0, $fp, -3096
	sw $t0, -3356($fp)
	li $t0, 4
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
	li $t0, 55378
	sw $t0, -3376($fp)
	addi $t0, $fp, -3096
	sw $t0, -3380($fp)
	li $t0, 5
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
	lw $t0, -204($fp)
	sw $t0, -3400($fp)
	addi $t0, $fp, -3096
	sw $t0, -3404($fp)
	lw $t0, -2036($fp)
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
	li $t0, 0
	sw $t0, -3424($fp)
	lw $t0, -216($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label761
label762:
	li $t0, 63333
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label761
label760:
	li $t0, 1
	sw $t0, -3424($fp)
label761:
	lw $t0, -204($fp)
	sw $t0, -3436($fp)
	li $t0, 8171
	sw $t0, -3440($fp)
	lw $t0, -3436($fp)
	lw $t1, -3440($fp)
	sub $t0, $t0, $t1
	sw $t0, -3444($fp)
	li $t0, 15849
	sw $t0, -3448($fp)
	lw $t0, -3444($fp)
	lw $t1, -3448($fp)
	sub $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -2024($fp)
	sw $t0, -3456($fp)
	li $t0, 64966
	sw $t0, -3460($fp)
	lw $t0, -3456($fp)
	lw $t1, -3460($fp)
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	li $t0, 45418
	sw $t0, -3468($fp)
	lw $t0, -3464($fp)
	lw $t1, -3468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3472($fp)
	li $t0, 0
	sw $t0, -3476($fp)
	lw $t0, -2024($fp)
	sw $t0, -3480($fp)
	li $t0, 20213
	sw $t0, -3484($fp)
	lw $t0, -3480($fp)
	lw $t1, -3484($fp)
	sub $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label764
label765:
	lw $t0, -2060($fp)
	sw $t0, -3492($fp)
	lw $t1, -3492($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -3476($fp)
label764:
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -1092($fp)
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label766
label766:
	li $t0, 1
	sw $t0, -3496($fp)
label767:
	li $t0, 0
	sw $t0, -3504($fp)
	li $t0, 29671
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label771
	j label769
label771:
	li $t0, 31995
	sw $t0, -3512($fp)
	lw $t1, -3512($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label769
label770:
	li $t0, 43462
	sw $t0, -3516($fp)
	lw $t1, -3516($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -3504($fp)
label769:
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3520($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3524($fp)
	li $t0, 50230
	sw $t0, -3528($fp)
	lw $t0, -3104($fp)
	sw $t0, -3532($fp)
	lw $t1, -3528($fp)
	lw $t2, -3532($fp)
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -3524($fp)
label773:
	addi $t0, $fp, -112
	sw $t0, -3536($fp)
	lw $t0, -2072($fp)
	sw $t0, -3540($fp)
	li $t0, 4
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, -3536($fp)
	add $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, 0($t0)
	sw $t1, -3552($fp)
	li $t0, 46816
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	li $t0, 48860
	sw $t0, -3564($fp)
	li $t0, 8422
	sw $t0, -3568($fp)
	lw $t0, -3564($fp)
	lw $t1, -3568($fp)
	add $t0, $t0, $t1
	sw $t0, -3572($fp)
	addi $t0, $fp, -3096
	sw $t0, -3576($fp)
	lw $t0, -1080($fp)
	sw $t0, -3580($fp)
	li $t0, 4
	lw $t1, -3580($fp)
	mul $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, -3576($fp)
	add $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	lw $t1, 0($t0)
	sw $t1, -3592($fp)
	li $t0, 0
	sw $t0, -3596($fp)
	lw $t0, -228($fp)
	sw $t0, -3600($fp)
	li $t0, 6734
	sw $t0, -3604($fp)
	lw $t0, -3600($fp)
	lw $t1, -3604($fp)
	mul $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -2036($fp)
	sw $t0, -3612($fp)
	lw $t1, -3608($fp)
	lw $t2, -3612($fp)
	bge $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -3596($fp)
label775:
	addi $sp, $sp, -4
	lw $t0, -3524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3616($fp)
	addi $sp, $sp, 24
	li $t0, 48837
	sw $t0, -3620($fp)
	lw $t0, -3616($fp)
	lw $t1, -3620($fp)
	mul $t0, $t0, $t1
	sw $t0, -3624($fp)
	li $t0, 0
	sw $t0, -3628($fp)
	li $t0, 42609
	sw $t0, -3632($fp)
	li $t0, 0
	lw $t1, -3632($fp)
	sub $t0, $t0, $t1
	sw $t0, -3636($fp)
	li $t0, 5045
	sw $t0, -3640($fp)
	lw $t1, -3636($fp)
	lw $t2, -3640($fp)
	beq $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -3628($fp)
label777:
	addi $sp, $sp, -4
	lw $t0, -3420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3628($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3644($fp)
	addi $sp, $sp, 24
	lw $t0, -3400($fp)
	lw $t1, -3644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3648($fp)
	li $t0, 0
	lw $t1, -3648($fp)
	sub $t0, $t0, $t1
	sw $t0, -3652($fp)
label778:
	li $t0, 62058
	sw $t0, -3656($fp)
	lw $t0, -1080($fp)
	sw $t0, -3660($fp)
	lw $t0, -3656($fp)
	lw $t1, -3660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3664($fp)
	lw $t0, -2072($fp)
	sw $t0, -3668($fp)
	lw $t0, -3664($fp)
	lw $t1, -3668($fp)
	sub $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t1, -3672($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label780
label783:
	lw $t0, -960($fp)
	sw $t0, -3676($fp)
	lw $t1, -3676($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label780
label782:
	lw $t0, -1092($fp)
	sw $t0, -3680($fp)
	li $t0, 0
	lw $t1, -3680($fp)
	sub $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label780
label781:
	lw $t0, -180($fp)
	sw $t0, -3688($fp)
	li $t0, 0
	lw $t1, -3688($fp)
	sub $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label780
label779:
	lw $t0, -912($fp)
	sw $t0, -3696($fp)
	lw $t0, -192($fp)
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -2060($fp)
	sw $t0, -3708($fp)
	addi $t0, $fp, -60
	sw $t0, -3712($fp)
	lw $t0, -3116($fp)
	sw $t0, -3716($fp)
	li $t0, 4
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	lw $t1, -3712($fp)
	add $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	lw $t1, 0($t0)
	sw $t1, -3728($fp)
	lw $t0, -3708($fp)
	lw $t1, -3728($fp)
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	li $t0, 0
	lw $t1, -3732($fp)
	sub $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3704($fp)
	lw $t1, -3736($fp)
	mul $t0, $t0, $t1
	sw $t0, -3740($fp)
	li $t0, 0
	sw $t0, -3744($fp)
	li $t0, 58430
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label784
label784:
	li $t0, 1
	sw $t0, -3744($fp)
label785:
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 513
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label786
label786:
	li $t0, 1
	sw $t0, -3752($fp)
label787:
	lw $t0, -3744($fp)
	lw $t1, -3752($fp)
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	li $t0, 0
	lw $t1, -3760($fp)
	sub $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3740($fp)
	lw $t1, -3764($fp)
	add $t0, $t0, $t1
	sw $t0, -3768($fp)
	j label778
label780:
	li $t0, 1512
	sw $t0, -3792($fp)
	addi $t0, $fp, -3788
	sw $t0, -3796($fp)
	li $t0, 0
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3796($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3792($fp)
	lw $t1, -3808($fp)
	sw $t0, 0($t1)
	lw $t0, -3808($fp)
	lw $t1, 0($t0)
	sw $t1, -3812($fp)
	li $t0, 41324
	sw $t0, -3816($fp)
	addi $t0, $fp, -3788
	sw $t0, -3820($fp)
	li $t0, 1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3820($fp)
	lw $t1, -3828($fp)
	add $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3816($fp)
	lw $t1, -3832($fp)
	sw $t0, 0($t1)
	lw $t0, -3832($fp)
	lw $t1, 0($t0)
	sw $t1, -3836($fp)
	li $t0, 17117
	sw $t0, -3840($fp)
	addi $t0, $fp, -3788
	sw $t0, -3844($fp)
	li $t0, 2
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3844($fp)
	lw $t1, -3852($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3840($fp)
	lw $t1, -3856($fp)
	sw $t0, 0($t1)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	li $t0, 30554
	sw $t0, -3864($fp)
	addi $t0, $fp, -3788
	sw $t0, -3868($fp)
	li $t0, 3
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3868($fp)
	lw $t1, -3876($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3864($fp)
	lw $t1, -3880($fp)
	sw $t0, 0($t1)
	lw $t0, -3880($fp)
	lw $t1, 0($t0)
	sw $t1, -3884($fp)
	li $t0, 39097
	sw $t0, -3888($fp)
	addi $t0, $fp, -3788
	sw $t0, -3892($fp)
	li $t0, 4
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
	li $t0, 38798
	sw $t0, -3912($fp)
	lw $t0, -204($fp)
	sw $t0, -3916($fp)
	lw $t0, -3912($fp)
	lw $t1, -3916($fp)
	sub $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -1068($fp)
	sw $t0, -3924($fp)
	li $t0, 0
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	lw $t0, -1988($fp)
	sw $t0, -3936($fp)
	lw $t0, -2024($fp)
	sw $t0, -3940($fp)
	lw $t1, -3936($fp)
	lw $t2, -3940($fp)
	blt $t1, $t2, label790
	j label791
label790:
	li $t0, 1
	sw $t0, -3932($fp)
label791:
	li $t0, 59677
	sw $t0, -3944($fp)
	lw $t1, -3932($fp)
	lw $t2, -3944($fp)
	beq $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -3928($fp)
label789:
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 55474
	sw $t0, -3952($fp)
	li $t0, 0
	lw $t1, -3952($fp)
	sub $t0, $t0, $t1
	sw $t0, -3956($fp)
	li $t0, 23013
	sw $t0, -3960($fp)
	lw $t1, -3956($fp)
	lw $t2, -3960($fp)
	bge $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -3948($fp)
label793:
	addi $t0, $fp, -1860
	sw $t0, -3964($fp)
	li $t0, 0
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
	lw $t0, -2012($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -3988($fp)
	li $t0, 0
	sw $t0, -3992($fp)
	lw $t0, -3116($fp)
	sw $t0, -3996($fp)
	li $t0, 63101
	sw $t0, -4000($fp)
	lw $t0, -3996($fp)
	lw $t1, -4000($fp)
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label795
label796:
	li $t0, 12864
	sw $t0, -4008($fp)
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -3992($fp)
label795:
	li $t0, 0
	sw $t0, -4012($fp)
	li $t0, 0
	sw $t0, -4016($fp)
	li $t0, 14955
	sw $t0, -4020($fp)
	lw $t0, -1068($fp)
	sw $t0, -4024($fp)
	lw $t1, -4020($fp)
	lw $t2, -4024($fp)
	beq $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -4016($fp)
label800:
	lw $t0, -2036($fp)
	sw $t0, -4028($fp)
	lw $t1, -4016($fp)
	lw $t2, -4028($fp)
	bne $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -4012($fp)
label798:
	li $t0, 29175
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -4036($fp)
	addi $sp, $sp, -4
	lw $t0, -3980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4036($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4040($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4040($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4044($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -4048($fp)
	li $t0, 31435
	sw $t0, -4052($fp)
	addi $t0, $fp, -3788
	sw $t0, -4056($fp)
	li $t0, 3
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
	lw $t0, -936($fp)
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4052($fp)
	lw $t1, -4080($fp)
	add $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label803
label803:
	li $t0, 14737
	sw $t0, -4088($fp)
	lw $t0, -1056($fp)
	sw $t0, -4092($fp)
	lw $t0, -4088($fp)
	lw $t1, -4092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4096($fp)
	li $t0, 5093
	sw $t0, -4100($fp)
	lw $t0, -4096($fp)
	lw $t1, -4100($fp)
	mul $t0, $t0, $t1
	sw $t0, -4104($fp)
	addi $t0, $fp, -3096
	sw $t0, -4108($fp)
	lw $t0, -2036($fp)
	sw $t0, -4112($fp)
	li $t0, 4
	lw $t1, -4112($fp)
	mul $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	lw $t1, -4108($fp)
	add $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, 0($t0)
	sw $t1, -4124($fp)
	lw $t0, -4104($fp)
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -4048($fp)
label802:
	li $t0, 0
	sw $t0, -4132($fp)
	addi $t0, $fp, -112
	sw $t0, -4136($fp)
	lw $t0, -3116($fp)
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
	li $t0, 25306
	sw $t0, -4160($fp)
	lw $t1, -4160($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label806
label806:
	li $t0, 1
	sw $t0, -4156($fp)
label807:
	li $t0, 54918
	sw $t0, -4164($fp)
	lw $t0, -4156($fp)
	lw $t1, -4164($fp)
	sub $t0, $t0, $t1
	sw $t0, -4168($fp)
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4172($fp)
	addi $sp, $sp, 12
	lw $t1, -4172($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label804
label804:
	li $t0, 1
	sw $t0, -4132($fp)
label805:
	li $t0, 0
	sw $t0, -4176($fp)
	lw $t0, -3116($fp)
	sw $t0, -4180($fp)
	lw $t1, -4180($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label808
label808:
	li $t0, 1
	sw $t0, -4176($fp)
label809:
	li $t0, 0
	sw $t0, -4184($fp)
	li $t0, 55488
	sw $t0, -4188($fp)
	lw $t0, -168($fp)
	sw $t0, -4192($fp)
	lw $t0, -4188($fp)
	lw $t1, -4192($fp)
	mul $t0, $t0, $t1
	sw $t0, -4196($fp)
	li $t0, 58199
	sw $t0, -4200($fp)
	lw $t1, -4196($fp)
	lw $t2, -4200($fp)
	bgt $t1, $t2, label810
	j label811
label810:
	li $t0, 1
	sw $t0, -4184($fp)
label811:
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4204($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4208($fp)
	li $t0, 0
	sw $t0, -4212($fp)
	li $t0, 38081
	sw $t0, -4216($fp)
	lw $t1, -4216($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label814
label814:
	li $t0, 1
	sw $t0, -4212($fp)
label815:
	li $t0, 0
	lw $t1, -4212($fp)
	sub $t0, $t0, $t1
	sw $t0, -4220($fp)
	li $t0, 0
	lw $t1, -4220($fp)
	sub $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -4208($fp)
label813:
	li $t0, 0
	sw $t0, -4228($fp)
	li $t0, 0
	sw $t0, -4232($fp)
	li $t0, 53509
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	sw $t0, -4240($fp)
	li $t0, 0
	sw $t0, -4244($fp)
	li $t0, 31512
	sw $t0, -4248($fp)
	li $t0, 39449
	sw $t0, -4252($fp)
	lw $t0, -4248($fp)
	lw $t1, -4252($fp)
	sub $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t1, -4256($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label822
label822:
	lw $t0, -2036($fp)
	sw $t0, -4260($fp)
	lw $t1, -4260($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -4244($fp)
label821:
	addi $sp, $sp, -4
	lw $t0, -4240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4264($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4268($fp)
	addi $t0, $fp, -3072
	sw $t0, -4272($fp)
	li $t0, 4
	sw $t0, -4276($fp)
	li $t0, 4
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	lw $t1, -4272($fp)
	add $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, 0($t0)
	sw $t1, -4288($fp)
	li $t0, 63661
	sw $t0, -4292($fp)
	lw $t0, -4288($fp)
	lw $t1, -4292($fp)
	add $t0, $t0, $t1
	sw $t0, -4296($fp)
	li $t0, 0
	sw $t0, -4300($fp)
	li $t0, 33477
	sw $t0, -4304($fp)
	li $t0, 5231
	sw $t0, -4308($fp)
	lw $t1, -4304($fp)
	lw $t2, -4308($fp)
	ble $t1, $t2, label825
	j label826
label825:
	li $t0, 1
	sw $t0, -4300($fp)
label826:
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4312($fp)
	addi $sp, $sp, 12
	li $t0, 36392
	sw $t0, -4316($fp)
	lw $t1, -4312($fp)
	lw $t2, -4316($fp)
	bgt $t1, $t2, label823
	j label824
label823:
	li $t0, 1
	sw $t0, -4268($fp)
label824:
	addi $sp, $sp, -4
	lw $t0, -4264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4320($fp)
	addi $sp, $sp, 12
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label818
label818:
	li $t0, 1
	sw $t0, -4232($fp)
label819:
	li $t0, 0
	lw $t1, -4232($fp)
	sub $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label816
label816:
	li $t0, 1
	sw $t0, -4228($fp)
label817:
	li $t0, 0
	sw $t0, -4328($fp)
	lw $t0, -900($fp)
	sw $t0, -4332($fp)
	addi $t0, $fp, -100
	sw $t0, -4336($fp)
	li $t0, 0
	sw $t0, -4340($fp)
	lw $t0, -168($fp)
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label831
	j label830
label831:
	li $t0, 62066
	sw $t0, -4348($fp)
	lw $t1, -4348($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -4340($fp)
label830:
	li $t0, 4
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, 0($t0)
	sw $t1, -4360($fp)
	lw $t1, -4332($fp)
	lw $t2, -4360($fp)
	bne $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -4328($fp)
label828:
	li $t0, 13011
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	sw $t0, -4372($fp)
	li $t0, 17149
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	sw $t0, -4384($fp)
	li $t0, 11485
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	sw $t0, -4396($fp)
	li $t0, 10576
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	sw $t0, -4408($fp)
	li $t0, 30013
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	sw $t0, -4420($fp)
	lw $t0, -4368($fp)
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4380($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4392($fp)
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4404($fp)
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4416($fp)
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4444($fp)
	li $t0, 0
	sw $t0, -4448($fp)
	jal f9
	sw $v0, -4452($fp)
	addi $sp, $sp, 4
	li $t0, 29453
	sw $t0, -4456($fp)
	lw $t0, -4452($fp)
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	li $t0, 63519
	sw $t0, -4464($fp)
	lw $t0, -4460($fp)
	lw $t1, -4464($fp)
	sub $t0, $t0, $t1
	sw $t0, -4468($fp)
	li $t0, 0
	sw $t0, -4472($fp)
	lw $t0, -4368($fp)
	sw $t0, -4476($fp)
	lw $t1, -4476($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label836
label836:
	li $t0, 1
	sw $t0, -4472($fp)
label837:
	lw $t1, -4468($fp)
	lw $t2, -4472($fp)
	blt $t1, $t2, label834
	j label835
label834:
	li $t0, 1
	sw $t0, -4448($fp)
label835:
	addi $t0, $fp, -112
	sw $t0, -4480($fp)
	lw $t0, -924($fp)
	sw $t0, -4484($fp)
	lw $t0, -912($fp)
	sw $t0, -4488($fp)
	lw $t0, -4484($fp)
	lw $t1, -4488($fp)
	mul $t0, $t0, $t1
	sw $t0, -4492($fp)
	li $t0, 4
	lw $t1, -4492($fp)
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, -4480($fp)
	add $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, 0($t0)
	sw $t1, -4504($fp)
	lw $t1, -4448($fp)
	lw $t2, -4504($fp)
	bne $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -4444($fp)
label833:
	lw $ra, -4($fp)
	lw $v0, -4444($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4508($fp)
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 0
	sw $t0, -4516($fp)
	li $t0, 0
	sw $t0, -4520($fp)
	li $t0, 19951
	sw $t0, -4524($fp)
	lw $t0, -228($fp)
	sw $t0, -4528($fp)
	lw $t0, -4524($fp)
	lw $t1, -4528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4532($fp)
	li $t0, 52466
	sw $t0, -4536($fp)
	lw $t1, -4532($fp)
	lw $t2, -4536($fp)
	bne $t1, $t2, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -4520($fp)
label845:
	li $t0, 0
	sw $t0, -4540($fp)
	addi $t0, $fp, -124
	sw $t0, -4544($fp)
	lw $t0, -180($fp)
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
	lw $t0, -1092($fp)
	sw $t0, -4564($fp)
	lw $t1, -4560($fp)
	lw $t2, -4564($fp)
	bgt $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -4540($fp)
label847:
	lw $t0, -144($fp)
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -4572($fp)
	addi $sp, $sp, -4
	lw $t0, -4520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4576($fp)
	addi $sp, $sp, 16
	lw $t0, -1080($fp)
	sw $t0, -4580($fp)
	lw $t0, -4576($fp)
	lw $t1, -4580($fp)
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -936($fp)
	sw $t0, -4588($fp)
	li $t0, 0
	lw $t1, -4588($fp)
	sub $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t1, -4584($fp)
	lw $t2, -4592($fp)
	ble $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -4516($fp)
label843:
	li $t0, 0
	sw $t0, -4596($fp)
	li $t0, 57661
	sw $t0, -4600($fp)
	lw $t1, -4600($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label848
label848:
	li $t0, 1
	sw $t0, -4596($fp)
label849:
	li $t0, 0
	lw $t1, -4596($fp)
	sub $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t1, -4516($fp)
	lw $t2, -4604($fp)
	bgt $t1, $t2, label840
	j label841
label840:
	li $t0, 1
	sw $t0, -4512($fp)
label841:
	li $t0, 0
	sw $t0, -4608($fp)
	li $t0, 33102
	sw $t0, -4612($fp)
	lw $t0, -4404($fp)
	sw $t0, -4616($fp)
	lw $t0, -4612($fp)
	lw $t1, -4616($fp)
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label852
label852:
	lw $t0, -156($fp)
	sw $t0, -4624($fp)
	lw $t1, -4624($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label851
label850:
	li $t0, 1
	sw $t0, -4608($fp)
label851:
	li $t0, 33082
	sw $t0, -4628($fp)
	lw $t0, -4392($fp)
	sw $t0, -4632($fp)
	lw $t0, -4628($fp)
	lw $t1, -4632($fp)
	mul $t0, $t0, $t1
	sw $t0, -4636($fp)
	li $t0, 16706
	sw $t0, -4640($fp)
	lw $t0, -4636($fp)
	lw $t1, -4640($fp)
	sub $t0, $t0, $t1
	sw $t0, -4644($fp)
	li $t0, 0
	sw $t0, -4648($fp)
	li $t0, 58750
	sw $t0, -4652($fp)
	li $t0, 18365
	sw $t0, -4656($fp)
	lw $t0, -4652($fp)
	lw $t1, -4656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4660($fp)
	lw $t1, -4660($fp)
	li $t2, 0
	bne $t1, $t2, label853
	j label855
label855:
	lw $t0, -1092($fp)
	sw $t0, -4664($fp)
	lw $t1, -4664($fp)
	li $t2, 0
	bne $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -4648($fp)
label854:
	jal f9
	sw $v0, -4668($fp)
	addi $sp, $sp, 4
	lw $t0, -960($fp)
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	sw $t0, -4676($fp)
	addi $sp, $sp, -4
	lw $t0, -4608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4676($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4680($fp)
	addi $sp, $sp, 24
	lw $t1, -4512($fp)
	lw $t2, -4680($fp)
	bgt $t1, $t2, label838
	j label839
label838:
	li $t0, 1
	sw $t0, -4508($fp)
label839:
	lw $t0, -4368($fp)
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4380($fp)
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4392($fp)
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4404($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4416($fp)
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 31422
	sw $t0, -4704($fp)
	li $t0, 0
	lw $t1, -4704($fp)
	sub $t0, $t0, $t1
	sw $t0, -4708($fp)
	li $t0, 1272
	sw $t0, -4712($fp)
	lw $t0, -4708($fp)
	lw $t1, -4712($fp)
	add $t0, $t0, $t1
	sw $t0, -4716($fp)
	li $t0, 0
	sw $t0, -4720($fp)
	li $t0, 0
	sw $t0, -4724($fp)
	li $t0, 63847
	sw $t0, -4728($fp)
	li $t0, 0
	lw $t1, -4728($fp)
	sub $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4380($fp)
	sw $t0, -4736($fp)
	lw $t1, -4732($fp)
	lw $t2, -4736($fp)
	beq $t1, $t2, label858
	j label859
label858:
	li $t0, 1
	sw $t0, -4724($fp)
label859:
	li $t0, 61576
	sw $t0, -4740($fp)
	li $t0, 0
	lw $t1, -4740($fp)
	sub $t0, $t0, $t1
	sw $t0, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	li $t0, 0
	sw $t0, -4752($fp)
	li $t0, 25766
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label862
label862:
	li $t0, 1
	sw $t0, -4752($fp)
label863:
	li $t0, 63481
	sw $t0, -4760($fp)
	lw $t1, -4752($fp)
	lw $t2, -4760($fp)
	bne $t1, $t2, label860
	j label861
label860:
	li $t0, 1
	sw $t0, -4748($fp)
label861:
	li $t0, 0
	sw $t0, -4764($fp)
	lw $t0, -228($fp)
	sw $t0, -4768($fp)
	lw $t0, -216($fp)
	sw $t0, -4772($fp)
	lw $t0, -4768($fp)
	lw $t1, -4772($fp)
	sub $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label865
label866:
	li $t0, 6658
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label865
label864:
	li $t0, 1
	sw $t0, -4764($fp)
label865:
	li $t0, 38175
	sw $t0, -4784($fp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4788($fp)
	addi $sp, $sp, 24
	lw $t1, -4788($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label856
label856:
	li $t0, 1
	sw $t0, -4720($fp)
label857:
	addi $sp, $sp, -4
	lw $t0, -4716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4792($fp)
	addi $sp, $sp, 12
	jal f9
	sw $v0, -4796($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -4800($fp)
	lw $t0, -156($fp)
	sw $t0, -4804($fp)
	lw $t1, -4804($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label867
label867:
	li $t0, 1
	sw $t0, -4800($fp)
label868:
	lw $t0, -4796($fp)
	lw $t1, -4800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4808($fp)
	lw $t0, -4792($fp)
	lw $t1, -4808($fp)
	sub $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $ra, -4($fp)
	lw $v0, -4812($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1068($fp)
	sw $t0, -4816($fp)
	lw $t0, -204($fp)
	sw $t0, -4820($fp)
	lw $t0, -4816($fp)
	lw $t1, -4820($fp)
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	li $t0, 34190
	sw $t0, -4828($fp)
	lw $t0, -4824($fp)
	lw $t1, -4828($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	li $t0, 0
	lw $t1, -4832($fp)
	sub $t0, $t0, $t1
	sw $t0, -4836($fp)
	li $t0, 61422
	sw $t0, -4840($fp)
	li $t0, 64933
	sw $t0, -4844($fp)
	lw $t0, -4840($fp)
	lw $t1, -4844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4848($fp)
	lw $t0, -4836($fp)
	lw $t1, -4848($fp)
	sub $t0, $t0, $t1
	sw $t0, -4852($fp)
	li $t0, 0
	sw $t0, -4856($fp)
	lw $t0, -132($fp)
	sw $t0, -4860($fp)
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label872
	j label870
label872:
	li $t0, 35414
	sw $t0, -4864($fp)
	lw $t1, -4864($fp)
	li $t2, 0
	bne $t1, $t2, label871
	j label870
label871:
	lw $t0, -192($fp)
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -4856($fp)
label870:
	li $t0, 0
	sw $t0, -4872($fp)
	jal f9
	sw $v0, -4876($fp)
	addi $sp, $sp, 4
	lw $t1, -4876($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label873
label873:
	li $t0, 1
	sw $t0, -4872($fp)
label874:
	li $t0, 0
	sw $t0, -4880($fp)
	li $t0, 51858
	sw $t0, -4884($fp)
	lw $t1, -4884($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label875
label875:
	li $t0, 1
	sw $t0, -4880($fp)
label876:
	li $t0, 10169
	sw $t0, -4888($fp)
	lw $t0, -4880($fp)
	lw $t1, -4888($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	li $t0, 58556
	sw $t0, -4896($fp)
	li $t0, 23928
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4904($fp)
	addi $t0, $fp, -124
	sw $t0, -4908($fp)
	li $t0, 0
	sw $t0, -4912($fp)
	li $t0, 4
	lw $t1, -4912($fp)
	mul $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	lw $t1, -4908($fp)
	add $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	lw $t1, 0($t0)
	sw $t1, -4924($fp)
	li $t0, 38847
	sw $t0, -4928($fp)
	lw $t0, -4924($fp)
	lw $t1, -4928($fp)
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4932($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4936($fp)
	addi $sp, $sp, 24
	lw $t0, -4852($fp)
	lw $t1, -4936($fp)
	sub $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t0, -132($fp)
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -4980($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -5000($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -5020($fp)
	li $t0, 2
	sw $t0, -5024($fp)
	li $t0, 4
	lw $t1, -5024($fp)
	mul $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	lw $t1, -5020($fp)
	add $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	lw $t1, 0($t0)
	sw $t1, -5036($fp)
	lw $t0, -5036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -5040($fp)
	li $t0, 3
	sw $t0, -5044($fp)
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, 0($t0)
	sw $t1, -5056($fp)
	lw $t0, -5056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5060($fp)
	li $t0, 0
	sw $t0, -5064($fp)
	li $t0, 4
	lw $t1, -5064($fp)
	mul $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t0, -5068($fp)
	lw $t1, -5060($fp)
	add $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	lw $t1, 0($t0)
	sw $t1, -5076($fp)
	lw $t0, -5076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5080($fp)
	li $t0, 1
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
	lw $t0, -5096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	lw $t0, -5116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5120($fp)
	li $t0, 3
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
	lw $t0, -5136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5140($fp)
	li $t0, 4
	sw $t0, -5144($fp)
	li $t0, 4
	lw $t1, -5144($fp)
	mul $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	lw $t1, -5140($fp)
	add $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	lw $t1, 0($t0)
	sw $t1, -5156($fp)
	lw $t0, -5156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5160($fp)
	li $t0, 5
	sw $t0, -5164($fp)
	li $t0, 4
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, 0($t0)
	sw $t1, -5176($fp)
	lw $t0, -5176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5180($fp)
	li $t0, 6
	sw $t0, -5184($fp)
	li $t0, 4
	lw $t1, -5184($fp)
	mul $t0, $t0, $t1
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	lw $t1, -5180($fp)
	add $t0, $t0, $t1
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	lw $t1, 0($t0)
	sw $t1, -5196($fp)
	lw $t0, -5196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5200($fp)
	li $t0, 7
	sw $t0, -5204($fp)
	li $t0, 4
	lw $t1, -5204($fp)
	mul $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	lw $t1, -5200($fp)
	add $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	lw $t1, 0($t0)
	sw $t1, -5216($fp)
	lw $t0, -5216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5220($fp)
	li $t0, 8
	sw $t0, -5224($fp)
	li $t0, 4
	lw $t1, -5224($fp)
	mul $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	lw $t1, -5220($fp)
	add $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	lw $t1, 0($t0)
	sw $t1, -5236($fp)
	lw $t0, -5236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5240($fp)
	li $t0, 9
	sw $t0, -5244($fp)
	li $t0, 4
	lw $t1, -5244($fp)
	mul $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	lw $t1, 0($t0)
	sw $t1, -5256($fp)
	lw $t0, -5256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5260($fp)
	li $t0, 0
	sw $t0, -5264($fp)
	li $t0, 4
	lw $t1, -5264($fp)
	mul $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	lw $t1, -5260($fp)
	add $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	lw $t1, 0($t0)
	sw $t1, -5276($fp)
	lw $t0, -5276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5280($fp)
	li $t0, 1
	sw $t0, -5284($fp)
	li $t0, 4
	lw $t1, -5284($fp)
	mul $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	lw $t1, -5280($fp)
	add $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	lw $t1, 0($t0)
	sw $t1, -5296($fp)
	lw $t0, -5296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5300($fp)
	li $t0, 2
	sw $t0, -5304($fp)
	li $t0, 4
	lw $t1, -5304($fp)
	mul $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	lw $t1, 0($t0)
	sw $t1, -5316($fp)
	lw $t0, -5316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5320($fp)
	li $t0, 3
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
	lw $t0, -5336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5340($fp)
	li $t0, 4
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
	addi $t0, $fp, -100
	sw $t0, -5360($fp)
	li $t0, 5
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
	addi $t0, $fp, -100
	sw $t0, -5380($fp)
	li $t0, 6
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
	addi $t0, $fp, -100
	sw $t0, -5400($fp)
	li $t0, 7
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
	addi $t0, $fp, -100
	sw $t0, -5420($fp)
	li $t0, 8
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
	addi $t0, $fp, -100
	sw $t0, -5440($fp)
	li $t0, 9
	sw $t0, -5444($fp)
	li $t0, 4
	lw $t1, -5444($fp)
	mul $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	lw $t1, -5440($fp)
	add $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	lw $t1, 0($t0)
	sw $t1, -5456($fp)
	lw $t0, -5456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5464($fp)
	li $t0, 0
	sw $t0, -5468($fp)
	li $t0, 4
	lw $t1, -5468($fp)
	mul $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	lw $t1, -5464($fp)
	add $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, 0($t0)
	sw $t1, -5480($fp)
	lw $t0, -5480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5484($fp)
	li $t0, 1
	sw $t0, -5488($fp)
	li $t0, 4
	lw $t1, -5488($fp)
	mul $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, -5484($fp)
	add $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	lw $t1, 0($t0)
	sw $t1, -5500($fp)
	lw $t0, -5500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5504($fp)
	li $t0, 2
	sw $t0, -5508($fp)
	li $t0, 4
	lw $t1, -5508($fp)
	mul $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	lw $t1, -5504($fp)
	add $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, 0($t0)
	sw $t1, -5520($fp)
	lw $t0, -5520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -912($fp)
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5552($fp)
	li $t0, 0
	sw $t0, -5556($fp)
	li $t0, 4
	lw $t1, -5556($fp)
	mul $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	lw $t1, -5552($fp)
	add $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	lw $t1, 0($t0)
	sw $t1, -5568($fp)
	lw $t0, -5568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5572($fp)
	li $t0, 1
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
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5592($fp)
	li $t0, 2
	sw $t0, -5596($fp)
	li $t0, 4
	lw $t1, -5596($fp)
	mul $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	lw $t1, -5592($fp)
	add $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, 0($t0)
	sw $t1, -5608($fp)
	lw $t0, -5608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5628($fp)
	addi $t0, $fp, -100
	sw $t0, -5632($fp)
	li $t0, 0
	sw $t0, -5636($fp)
	addi $t0, $fp, -60
	sw $t0, -5640($fp)
	li $t0, 0
	sw $t0, -5644($fp)
	li $t0, 4
	lw $t1, -5644($fp)
	mul $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	lw $t1, -5640($fp)
	add $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	lw $t1, 0($t0)
	sw $t1, -5656($fp)
	lw $t1, -5656($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label882
label882:
	lw $t0, -972($fp)
	sw $t0, -5660($fp)
	lw $t1, -5660($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label881
label880:
	li $t0, 1
	sw $t0, -5636($fp)
label881:
	li $t0, 4
	lw $t1, -5636($fp)
	mul $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	lw $t1, -5632($fp)
	add $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, 0($t0)
	sw $t1, -5672($fp)
	lw $t1, -5672($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label879
label879:
	li $t0, 51797
	sw $t0, -5676($fp)
	li $t0, 52542
	sw $t0, -5680($fp)
	lw $t0, -5676($fp)
	lw $t1, -5680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5684($fp)
	lw $t0, -816($fp)
	sw $t0, -5688($fp)
	lw $t0, -5684($fp)
	lw $t1, -5688($fp)
	sub $t0, $t0, $t1
	sw $t0, -5692($fp)
	addi $t0, $fp, -20
	sw $t0, -5696($fp)
	li $t0, 1
	sw $t0, -5700($fp)
	li $t0, 4
	lw $t1, -5700($fp)
	mul $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	lw $t1, -5696($fp)
	add $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	lw $t1, 0($t0)
	sw $t1, -5712($fp)
	li $t0, 60134
	sw $t0, -5716($fp)
	lw $t0, -5712($fp)
	lw $t1, -5716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5720($fp)
	lw $t0, -948($fp)
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -5728($fp)
	addi $sp, $sp, -4
	lw $t0, -5692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5728($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5732($fp)
	addi $sp, $sp, 16
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -5628($fp)
label878:
	lw $ra, -4($fp)
	lw $v0, -5628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -312
	li $t0, 53348
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
	li $t0, 4626
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
	li $t0, 20089
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
	li $t0, 4518
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
	li $t0, 37729
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
	li $t0, 58264
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
label883:
	lw $t0, -152($fp)
	sw $t0, -160($fp)
	lw $t1, -160($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label884
label884:
	li $t0, 0
	sw $t0, -164($fp)
	li $t0, 11177
	sw $t0, -168($fp)
	lw $t1, -168($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label887
label888:
	lw $t0, 4($fp)
	sw $t0, -172($fp)
	lw $t1, -172($fp)
	li $t2, 0
	bne $t1, $t2, label886
	j label887
label886:
	li $t0, 1
	sw $t0, -164($fp)
label887:
	lw $t0, -164($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -176($fp)
	j label883
label885:
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
	lw $t0, -152($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 63495
	sw $t0, -284($fp)
	addi $t0, $fp, -24
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	lw $t0, 4($fp)
	sw $t0, -296($fp)
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label890
label891:
	lw $t0, -152($fp)
	sw $t0, -300($fp)
	lw $t1, -300($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label890
label889:
	li $t0, 1
	sw $t0, -292($fp)
label890:
	li $t0, 4
	lw $t1, -292($fp)
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	lw $t1, 0($t0)
	sw $t1, -312($fp)
	lw $t0, -284($fp)
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $ra, -4($fp)
	lw $v0, -316($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -840
	li $t0, 56210
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 7217
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 61806
	sw $t0, -68($fp)
	addi $t0, $fp, -36
	sw $t0, -72($fp)
	li $t0, 0
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
	li $t0, 22096
	sw $t0, -92($fp)
	addi $t0, $fp, -36
	sw $t0, -96($fp)
	li $t0, 1
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
	li $t0, 8489
	sw $t0, -116($fp)
	addi $t0, $fp, -36
	sw $t0, -120($fp)
	li $t0, 2
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
	li $t0, 30461
	sw $t0, -140($fp)
	addi $t0, $fp, -36
	sw $t0, -144($fp)
	li $t0, 3
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
	li $t0, 17982
	sw $t0, -164($fp)
	addi $t0, $fp, -36
	sw $t0, -168($fp)
	li $t0, 4
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
	li $t0, 7887
	sw $t0, -188($fp)
	addi $t0, $fp, -36
	sw $t0, -192($fp)
	li $t0, 5
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
	li $t0, 35507
	sw $t0, -212($fp)
	addi $t0, $fp, -36
	sw $t0, -216($fp)
	li $t0, 6
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
	li $t0, 45380
	sw $t0, -236($fp)
	addi $t0, $fp, -36
	sw $t0, -240($fp)
	li $t0, 7
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
	li $t0, 46734
	sw $t0, -260($fp)
	addi $t0, $fp, -40
	sw $t0, -264($fp)
	li $t0, 0
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
	li $t0, 28527
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 3773
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, 4($fp)
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label892
	j label893
label892:
	lw $t0, -288($fp)
	sw $t0, -312($fp)
label893:
label895:
	addi $t0, $fp, -40
	sw $t0, -316($fp)
	lw $t0, -288($fp)
	sw $t0, -320($fp)
	li $t0, 33056
	sw $t0, -324($fp)
	lw $t0, -320($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -48($fp)
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	li $t0, 4
	lw $t1, -336($fp)
	mul $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t1, 0($t0)
	sw $t1, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label897
label896:
label898:
	addi $t0, $fp, -36
	sw $t0, -352($fp)
	li $t0, 0
	sw $t0, -356($fp)
	lw $t0, -60($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -364($fp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -368($fp)
	addi $sp, $sp, 8
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label904
label904:
	li $t0, 38696
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -356($fp)
label903:
	li $t0, 4
	lw $t1, -356($fp)
	mul $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	lw $t1, -352($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	lw $t1, 0($t0)
	sw $t1, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label901
label901:
	li $t0, 0
	sw $t0, -388($fp)
	lw $t0, -288($fp)
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label906
label905:
	li $t0, 1
	sw $t0, -388($fp)
label906:
	li $t0, 0
	sw $t0, -396($fp)
	lw $t0, -288($fp)
	sw $t0, -400($fp)
	li $t0, 13343
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	sub $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t1, -408($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label909
label909:
	li $t0, 38518
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label908
label907:
	li $t0, 1
	sw $t0, -396($fp)
label908:
	addi $t0, $fp, -40
	sw $t0, -416($fp)
	lw $t0, -48($fp)
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
	lw $t0, -288($fp)
	sw $t0, -436($fp)
	li $t0, 39187
	sw $t0, -440($fp)
	lw $t0, -436($fp)
	lw $t1, -440($fp)
	sub $t0, $t0, $t1
	sw $t0, -444($fp)
	li $t0, 29954
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	add $t0, $t0, $t1
	sw $t0, -452($fp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -452($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -456($fp)
	addi $sp, $sp, 16
	lw $t0, -388($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
label910:
	li $t0, 7941
	sw $t0, -464($fp)
	addi $t0, $fp, -40
	sw $t0, -468($fp)
	lw $t0, -288($fp)
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
	lw $t0, 16($fp)
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -492($fp)
	lw $t0, 4($fp)
	sw $t0, -496($fp)
	lw $t0, 4($fp)
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	li $t0, 24835
	sw $t0, -508($fp)
	lw $t0, -504($fp)
	lw $t1, -508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -512($fp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -516($fp)
	addi $sp, $sp, 16
	lw $t0, 8($fp)
	sw $t0, -520($fp)
	li $t0, 0
	lw $t1, -520($fp)
	sub $t0, $t0, $t1
	sw $t0, -524($fp)
	li $t0, 0
	lw $t1, -524($fp)
	sub $t0, $t0, $t1
	sw $t0, -528($fp)
	li $t0, 0
	lw $t1, -528($fp)
	sub $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -516($fp)
	lw $t1, -532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label911
	j label912
label911:
	li $t0, 0
	sw $t0, -540($fp)
	li $t0, 0
	sw $t0, -544($fp)
	li $t0, 24779
	sw $t0, -548($fp)
	lw $t0, -288($fp)
	sw $t0, -552($fp)
	li $t0, 11842
	sw $t0, -556($fp)
	lw $t0, -552($fp)
	lw $t1, -556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -560($fp)
	lw $t0, -548($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, 4($fp)
	sw $t0, -568($fp)
	lw $t0, 16($fp)
	sw $t0, -572($fp)
	lw $t0, -568($fp)
	lw $t1, -572($fp)
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	li $t0, 0
	lw $t1, -576($fp)
	sub $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, 4($fp)
	sw $t0, -584($fp)
	lw $t0, 4($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -592($fp)
	addi $sp, $sp, -4
	lw $t0, -580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -596($fp)
	addi $sp, $sp, 16
	lw $t1, -564($fp)
	lw $t2, -596($fp)
	bgt $t1, $t2, label915
	j label916
label915:
	li $t0, 1
	sw $t0, -544($fp)
label916:
	li $t0, 61289
	sw $t0, -600($fp)
	lw $t1, -544($fp)
	lw $t2, -600($fp)
	beq $t1, $t2, label913
	j label914
label913:
	li $t0, 1
	sw $t0, -540($fp)
label914:
	lw $ra, -4($fp)
	lw $v0, -540($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 29405
	sw $t0, -604($fp)
	lw $ra, -4($fp)
	lw $v0, -604($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label910
label912:
	j label898
label900:
	j label895
label897:
	lw $t0, -48($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -616($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -636($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -656($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -676($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -696($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -716($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -736($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -756($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -776($fp)
	li $t0, 0
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
	lw $t0, -288($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -804($fp)
	addi $t0, $fp, -40
	sw $t0, -808($fp)
	lw $t0, -288($fp)
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
	li $t0, 31931
	sw $t0, -828($fp)
	lw $t0, -824($fp)
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, 8($fp)
	sw $t0, -836($fp)
	lw $t0, -832($fp)
	lw $t1, -836($fp)
	sub $t0, $t0, $t1
	sw $t0, -840($fp)
	li $t0, 271
	sw $t0, -844($fp)
	lw $t1, -840($fp)
	lw $t2, -844($fp)
	bgt $t1, $t2, label917
	j label918
label917:
	li $t0, 1
	sw $t0, -804($fp)
label918:
	lw $ra, -4($fp)
	lw $v0, -804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -316
	li $t0, 1598
	sw $t0, -20($fp)
	addi $t0, $fp, -16
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -20($fp)
	lw $t1, -36($fp)
	sw $t0, 0($t1)
	lw $t0, -36($fp)
	lw $t1, 0($t0)
	sw $t1, -40($fp)
	li $t0, 24659
	sw $t0, -44($fp)
	addi $t0, $fp, -16
	sw $t0, -48($fp)
	li $t0, 1
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
	li $t0, 11448
	sw $t0, -68($fp)
	addi $t0, $fp, -16
	sw $t0, -72($fp)
	li $t0, 2
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
	addi $t0, $fp, -16
	sw $t0, -92($fp)
	li $t0, 0
	sw $t0, -96($fp)
	li $t0, 4
	lw $t1, -96($fp)
	mul $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t1, -92($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	lw $t1, 0($t0)
	sw $t1, -108($fp)
	lw $t0, -108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -112($fp)
	li $t0, 1
	sw $t0, -116($fp)
	li $t0, 4
	lw $t1, -116($fp)
	mul $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	lw $t1, 0($t0)
	sw $t1, -128($fp)
	lw $t0, -128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -132($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -152($fp)
	li $t0, 65093
	sw $t0, -156($fp)
	lw $t1, -156($fp)
	li $t2, 0
	bne $t1, $t2, label919
	j label921
label921:
	addi $t0, $fp, -16
	sw $t0, -160($fp)
	li $t0, 1
	sw $t0, -164($fp)
	li $t0, 4
	lw $t1, -164($fp)
	mul $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	lw $t1, 0($t0)
	sw $t1, -176($fp)
	lw $t0, 4($fp)
	sw $t0, -180($fp)
	lw $t0, -176($fp)
	lw $t1, -180($fp)
	sub $t0, $t0, $t1
	sw $t0, -184($fp)
	li $t0, 61364
	sw $t0, -188($fp)
	lw $t1, -184($fp)
	lw $t2, -188($fp)
	blt $t1, $t2, label919
	j label920
label919:
	li $t0, 1
	sw $t0, -152($fp)
label920:
	lw $ra, -4($fp)
	lw $v0, -152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	li $t0, 0
	sw $t0, -252($fp)
	lw $t0, 12($fp)
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	lw $t0, 12($fp)
	sw $t0, -264($fp)
	li $t0, 0
	lw $t1, -264($fp)
	sub $t0, $t0, $t1
	sw $t0, -268($fp)
	li $t0, 27155
	sw $t0, -272($fp)
	lw $t1, -268($fp)
	lw $t2, -272($fp)
	bgt $t1, $t2, label924
	j label925
label924:
	li $t0, 1
	sw $t0, -260($fp)
label925:
	li $t0, 0
	sw $t0, -276($fp)
	li $t0, 0
	sw $t0, -280($fp)
	li $t0, 37430
	sw $t0, -284($fp)
	lw $t0, 12($fp)
	sw $t0, -288($fp)
	lw $t1, -284($fp)
	lw $t2, -288($fp)
	beq $t1, $t2, label928
	j label929
label928:
	li $t0, 1
	sw $t0, -280($fp)
label929:
	lw $t0, 12($fp)
	sw $t0, -292($fp)
	lw $t1, -280($fp)
	lw $t2, -292($fp)
	beq $t1, $t2, label926
	j label927
label926:
	li $t0, 1
	sw $t0, -276($fp)
label927:
	addi $t0, $fp, -16
	sw $t0, -296($fp)
	lw $t0, 8($fp)
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
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -316($fp)
	addi $sp, $sp, 16
	lw $t1, -256($fp)
	lw $t2, -316($fp)
	bge $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -252($fp)
label923:
	lw $t0, -252($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -320($fp)
	lw $ra, -4($fp)
	lw $v0, -320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1548
	li $t0, 26289
	sw $t0, -56($fp)
	addi $t0, $fp, -24
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
	li $t0, 55412
	sw $t0, -80($fp)
	addi $t0, $fp, -24
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
	li $t0, 35042
	sw $t0, -104($fp)
	addi $t0, $fp, -24
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
	li $t0, 61796
	sw $t0, -128($fp)
	addi $t0, $fp, -24
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
	li $t0, 35257
	sw $t0, -152($fp)
	addi $t0, $fp, -24
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
	li $t0, 16240
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 24788
	sw $t0, -188($fp)
	addi $t0, $fp, -40
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
	li $t0, 39030
	sw $t0, -212($fp)
	addi $t0, $fp, -40
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
	li $t0, 49296
	sw $t0, -236($fp)
	addi $t0, $fp, -40
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
	li $t0, 63484
	sw $t0, -260($fp)
	addi $t0, $fp, -40
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
	li $t0, 12681
	sw $t0, -284($fp)
	addi $t0, $fp, -52
	sw $t0, -288($fp)
	li $t0, 0
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
	li $t0, 13714
	sw $t0, -308($fp)
	addi $t0, $fp, -52
	sw $t0, -312($fp)
	li $t0, 1
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
	li $t0, 11291
	sw $t0, -332($fp)
	addi $t0, $fp, -52
	sw $t0, -336($fp)
	li $t0, 2
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
	li $t0, 51199
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 38550
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 19232
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 10442
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 50392
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 14985
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 39847
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	addi $t0, $fp, -24
	sw $t0, -440($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -460($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -480($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -500($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -520($fp)
	li $t0, 4
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
	lw $t0, -180($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -544($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -564($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -584($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -604($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	lw $t0, -360($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 16787
	sw $t0, -712($fp)
	li $t0, 0
	lw $t1, -712($fp)
	sub $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $ra, -4($fp)
	lw $v0, -716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -720($fp)
	li $t0, 0
	sw $t0, -724($fp)
	lw $t0, -360($fp)
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label933
label933:
	li $t0, 1
	sw $t0, -724($fp)
label934:
	lw $t0, -360($fp)
	sw $t0, -732($fp)
	lw $t0, -724($fp)
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label932
label932:
	lw $t0, -420($fp)
	sw $t0, -740($fp)
	lw $t0, -180($fp)
	sw $t0, -744($fp)
	lw $t1, -740($fp)
	lw $t2, -744($fp)
	beq $t1, $t2, label930
	j label931
label930:
	li $t0, 1
	sw $t0, -720($fp)
label931:
	lw $t0, -720($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -748($fp)
	li $t0, 15257
	sw $t0, -752($fp)
	li $t0, 41446
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -760($fp)
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label936
label935:
	lw $t0, -432($fp)
	sw $t0, -764($fp)
	lw $t0, -360($fp)
	sw $t0, -768($fp)
	lw $t0, -764($fp)
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $ra, -4($fp)
	lw $v0, -772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label937
label936:
	li $t0, 0
	sw $t0, -776($fp)
	addi $t0, $fp, -24
	sw $t0, -780($fp)
	li $t0, 41003
	sw $t0, -784($fp)
	li $t0, 1
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -408($fp)
	sw $t0, -796($fp)
	lw $t0, -792($fp)
	lw $t1, -796($fp)
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 41446
	sw $t0, -808($fp)
	lw $t0, -384($fp)
	sw $t0, -812($fp)
	lw $t0, -808($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	li $t0, 26705
	sw $t0, -820($fp)
	lw $t1, -816($fp)
	lw $t2, -820($fp)
	beq $t1, $t2, label940
	j label941
label940:
	li $t0, 1
	sw $t0, -804($fp)
label941:
	lw $t0, -384($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -828($fp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -832($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, -780($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	jal f9
	sw $v0, -848($fp)
	addi $sp, $sp, 4
	lw $t1, -844($fp)
	lw $t2, -848($fp)
	bgt $t1, $t2, label938
	j label939
label938:
	li $t0, 1
	sw $t0, -776($fp)
label939:
label937:
	lw $t0, -360($fp)
	sw $t0, -852($fp)
	lw $t0, -372($fp)
	sw $t0, -856($fp)
	lw $t1, -852($fp)
	lw $t2, -856($fp)
	bge $t1, $t2, label942
	j label943
label942:
	li $t0, 45371
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 0
	sw $t0, -872($fp)
	lw $t0, -372($fp)
	sw $t0, -876($fp)
	lw $t0, -864($fp)
	sw $t0, -880($fp)
	li $t0, 36831
	sw $t0, -884($fp)
	lw $t0, -880($fp)
	lw $t1, -884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -888($fp)
	li $t0, 0
	lw $t1, -888($fp)
	sub $t0, $t0, $t1
	sw $t0, -892($fp)
	jal f9
	sw $v0, -896($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -900($fp)
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t1, -876($fp)
	lw $t2, -904($fp)
	ble $t1, $t2, label945
	j label946
label945:
	li $t0, 1
	sw $t0, -872($fp)
label946:
	j label944
label943:
	li $t0, 0
	sw $t0, -908($fp)
	addi $t0, $fp, -52
	sw $t0, -912($fp)
	li $t0, 0
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
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -932($fp)
	addi $sp, $sp, 8
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label947
label947:
	li $t0, 1
	sw $t0, -908($fp)
label948:
	li $t0, 63120
	sw $t0, -936($fp)
	lw $t0, -908($fp)
	lw $t1, -936($fp)
	sub $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -944($fp)
label944:
	li $t0, 0
	sw $t0, -948($fp)
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 18550
	sw $t0, -956($fp)
	li $t0, 42033
	sw $t0, -960($fp)
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -964($fp)
	li $t0, 59381
	sw $t0, -968($fp)
	lw $t0, -964($fp)
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -972($fp)
	li $t0, 53807
	sw $t0, -976($fp)
	li $t0, 58274
	sw $t0, -980($fp)
	lw $t0, -976($fp)
	lw $t1, -980($fp)
	sub $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t1, -972($fp)
	lw $t2, -984($fp)
	blt $t1, $t2, label954
	j label955
label954:
	li $t0, 1
	sw $t0, -952($fp)
label955:
	li $t0, 18633
	sw $t0, -988($fp)
	li $t0, 27301
	sw $t0, -992($fp)
	lw $t0, -988($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	li $t0, 42034
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	sub $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t1, -952($fp)
	lw $t2, -1004($fp)
	ble $t1, $t2, label952
	j label953
label952:
	li $t0, 1
	sw $t0, -948($fp)
label953:
	addi $t0, $fp, -24
	sw $t0, -1008($fp)
	lw $t0, -396($fp)
	sw $t0, -1012($fp)
	li $t0, 16581
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	sub $t0, $t0, $t1
	sw $t0, -1020($fp)
	li $t0, 4
	lw $t1, -1020($fp)
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	lw $t1, 0($t0)
	sw $t1, -1032($fp)
	lw $t1, -948($fp)
	lw $t2, -1032($fp)
	beq $t1, $t2, label949
	j label950
label949:
	lw $t0, 4($fp)
	sw $t0, -1036($fp)
	j label951
label950:
	li $t0, 0
	sw $t0, -1040($fp)
	li $t0, 39982
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label957
label958:
	addi $t0, $fp, -24
	sw $t0, -1048($fp)
	li $t0, 2
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
	li $t0, 25645
	sw $t0, -1068($fp)
	li $t0, 28763
	sw $t0, -1072($fp)
	lw $t0, -1068($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t1, -1064($fp)
	lw $t2, -1076($fp)
	bne $t1, $t2, label956
	j label957
label956:
	li $t0, 1
	sw $t0, -1040($fp)
label957:
label951:
label959:
	addi $t0, $fp, -24
	sw $t0, -1080($fp)
	li $t0, 0
	sw $t0, -1084($fp)
	li $t0, 47105
	sw $t0, -1088($fp)
	li $t0, 36087
	sw $t0, -1092($fp)
	lw $t0, -1088($fp)
	lw $t1, -1092($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -396($fp)
	sw $t0, -1100($fp)
	lw $t1, -1096($fp)
	lw $t2, -1100($fp)
	bne $t1, $t2, label963
	j label964
label963:
	li $t0, 1
	sw $t0, -1084($fp)
label964:
	li $t0, 4
	lw $t1, -1084($fp)
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, -1080($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, 0($t0)
	sw $t1, -1112($fp)
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label961
label962:
	li $t0, 0
	sw $t0, -1116($fp)
	li $t0, 0
	sw $t0, -1120($fp)
	li $t0, 0
	sw $t0, -1124($fp)
	lw $t0, -360($fp)
	sw $t0, -1128($fp)
	lw $t0, -432($fp)
	sw $t0, -1132($fp)
	lw $t1, -1128($fp)
	lw $t2, -1132($fp)
	bne $t1, $t2, label969
	j label970
label969:
	li $t0, 1
	sw $t0, -1124($fp)
label970:
	li $t0, 13619
	sw $t0, -1136($fp)
	lw $t1, -1124($fp)
	lw $t2, -1136($fp)
	bne $t1, $t2, label967
	j label968
label967:
	li $t0, 1
	sw $t0, -1120($fp)
label968:
	lw $t0, -180($fp)
	sw $t0, -1140($fp)
	addi $sp, $sp, -4
	lw $t0, -1120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1144($fp)
	addi $sp, $sp, 12
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label965
label965:
	li $t0, 1
	sw $t0, -1116($fp)
label966:
	lw $t0, -396($fp)
	sw $t0, -1148($fp)
	lw $t0, -1116($fp)
	lw $t1, -1148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label960
	j label961
label960:
	li $t0, 0
	sw $t0, -1156($fp)
	addi $t0, $fp, -24
	sw $t0, -1160($fp)
	lw $t0, -384($fp)
	sw $t0, -1164($fp)
	lw $t0, -372($fp)
	sw $t0, -1168($fp)
	lw $t0, -1164($fp)
	lw $t1, -1168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1172($fp)
	lw $t0, 4($fp)
	sw $t0, -1176($fp)
	lw $t0, -1172($fp)
	lw $t1, -1176($fp)
	sub $t0, $t0, $t1
	sw $t0, -1180($fp)
	li $t0, 4
	lw $t1, -1180($fp)
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	lw $t1, -1192($fp)
	li $t2, 0
	bne $t1, $t2, label973
	j label972
label973:
	li $t0, 0
	sw $t0, -1196($fp)
	li $t0, 62091
	sw $t0, -1200($fp)
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label975
	j label974
label974:
	li $t0, 1
	sw $t0, -1196($fp)
label975:
	li $t0, 10399
	sw $t0, -1204($fp)
	lw $t0, -1196($fp)
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	li $t0, 30406
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label972
label971:
	li $t0, 1
	sw $t0, -1156($fp)
label972:
	j label959
label961:
	addi $t0, $fp, -24
	sw $t0, -1220($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -1240($fp)
	li $t0, 1
	sw $t0, -1244($fp)
	li $t0, 4
	lw $t1, -1244($fp)
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	lw $t1, 0($t0)
	sw $t1, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1260($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -1280($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1300($fp)
	li $t0, 4
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
	lw $t0, -180($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	li $t0, 4
	lw $t1, -1328($fp)
	mul $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	lw $t1, -1324($fp)
	add $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	lw $t1, 0($t0)
	sw $t1, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1344($fp)
	li $t0, 1
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
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1364($fp)
	li $t0, 2
	sw $t0, -1368($fp)
	li $t0, 4
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, 0($t0)
	sw $t1, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1384($fp)
	li $t0, 3
	sw $t0, -1388($fp)
	li $t0, 4
	lw $t1, -1388($fp)
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, 0($t0)
	sw $t1, -1400($fp)
	lw $t0, -1400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	li $t0, 4
	lw $t1, -1408($fp)
	mul $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	lw $t1, 0($t0)
	sw $t1, -1420($fp)
	lw $t0, -1420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1424($fp)
	li $t0, 1
	sw $t0, -1428($fp)
	li $t0, 4
	lw $t1, -1428($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1444($fp)
	li $t0, 2
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
	lw $t0, -360($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1492($fp)
	addi $t0, $fp, -40
	sw $t0, -1496($fp)
	li $t0, 0
	sw $t0, -1500($fp)
	lw $t0, -360($fp)
	sw $t0, -1504($fp)
	lw $t0, -384($fp)
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t1, -1512($fp)
	li $t2, 0
	bne $t1, $t2, label979
	j label981
label981:
	li $t0, 11812
	sw $t0, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -1500($fp)
label980:
	li $t0, 4
	lw $t1, -1500($fp)
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label978
label978:
	lw $t0, -396($fp)
	sw $t0, -1532($fp)
	li $t0, 51845
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	li $t0, 0
	lw $t1, -1540($fp)
	sub $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -384($fp)
	sw $t0, -1548($fp)
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label977
label976:
	li $t0, 1
	sw $t0, -1492($fp)
label977:
	lw $ra, -4($fp)
	lw $v0, -1492($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1316
	li $t0, 6316
	sw $t0, -64($fp)
	addi $t0, $fp, -44
	sw $t0, -68($fp)
	li $t0, 0
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
	li $t0, 38517
	sw $t0, -88($fp)
	addi $t0, $fp, -44
	sw $t0, -92($fp)
	li $t0, 1
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
	li $t0, 27312
	sw $t0, -112($fp)
	addi $t0, $fp, -44
	sw $t0, -116($fp)
	li $t0, 2
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
	li $t0, 63096
	sw $t0, -136($fp)
	addi $t0, $fp, -44
	sw $t0, -140($fp)
	li $t0, 3
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
	li $t0, 18353
	sw $t0, -160($fp)
	addi $t0, $fp, -44
	sw $t0, -164($fp)
	li $t0, 4
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
	li $t0, 64144
	sw $t0, -184($fp)
	addi $t0, $fp, -44
	sw $t0, -188($fp)
	li $t0, 5
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
	li $t0, 26234
	sw $t0, -208($fp)
	addi $t0, $fp, -44
	sw $t0, -212($fp)
	li $t0, 6
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
	li $t0, 25344
	sw $t0, -232($fp)
	addi $t0, $fp, -44
	sw $t0, -236($fp)
	li $t0, 7
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
	li $t0, 61728
	sw $t0, -256($fp)
	addi $t0, $fp, -44
	sw $t0, -260($fp)
	li $t0, 8
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
	li $t0, 44785
	sw $t0, -280($fp)
	addi $t0, $fp, -44
	sw $t0, -284($fp)
	li $t0, 9
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
	li $t0, 1841
	sw $t0, -304($fp)
	addi $t0, $fp, -60
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
	li $t0, 55573
	sw $t0, -328($fp)
	addi $t0, $fp, -60
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
	li $t0, 33056
	sw $t0, -352($fp)
	addi $t0, $fp, -60
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
	li $t0, 60115
	sw $t0, -376($fp)
	addi $t0, $fp, -60
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
	li $t0, 8670
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 60358
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 36614
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	addi $t0, $fp, -44
	sw $t0, -436($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -456($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -476($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -496($fp)
	li $t0, 3
	sw $t0, -500($fp)
	li $t0, 4
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	lw $t1, -496($fp)
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	lw $t1, 0($t0)
	sw $t1, -512($fp)
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -516($fp)
	li $t0, 4
	sw $t0, -520($fp)
	li $t0, 4
	lw $t1, -520($fp)
	mul $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	lw $t1, -516($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t1, 0($t0)
	sw $t1, -532($fp)
	lw $t0, -532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -536($fp)
	li $t0, 5
	sw $t0, -540($fp)
	li $t0, 4
	lw $t1, -540($fp)
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, 0($t0)
	sw $t1, -552($fp)
	lw $t0, -552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -556($fp)
	li $t0, 6
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
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -576($fp)
	li $t0, 7
	sw $t0, -580($fp)
	li $t0, 4
	lw $t1, -580($fp)
	mul $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, -576($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t1, 0($t0)
	sw $t1, -592($fp)
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -596($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -616($fp)
	li $t0, 9
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
	addi $t0, $fp, -60
	sw $t0, -636($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -656($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -676($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -696($fp)
	li $t0, 3
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
	lw $t0, -404($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -728($fp)
	lw $t0, 8($fp)
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
	lw $t0, -416($fp)
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $ra, -4($fp)
	lw $v0, -752($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label982:
	addi $t0, $fp, -60
	sw $t0, -756($fp)
	li $t0, 0
	sw $t0, -760($fp)
	li $t0, 25252
	sw $t0, -764($fp)
	lw $t0, -428($fp)
	sw $t0, -768($fp)
	lw $t1, -764($fp)
	lw $t2, -768($fp)
	bgt $t1, $t2, label985
	j label986
label985:
	li $t0, 1
	sw $t0, -760($fp)
label986:
	li $t0, 4
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	lw $t0, 8($fp)
	sw $t0, -784($fp)
	lw $t0, -780($fp)
	lw $t1, -784($fp)
	mul $t0, $t0, $t1
	sw $t0, -788($fp)
	addi $t0, $fp, -44
	sw $t0, -792($fp)
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, 8($fp)
	sw $t0, -800($fp)
	li $t0, 34804
	sw $t0, -804($fp)
	lw $t1, -800($fp)
	lw $t2, -804($fp)
	blt $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -796($fp)
label988:
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
	lw $t1, -788($fp)
	lw $t2, -816($fp)
	bge $t1, $t2, label983
	j label984
label983:
	li $t0, 0
	sw $t0, -820($fp)
	li $t0, 0
	sw $t0, -824($fp)
	addi $t0, $fp, -60
	sw $t0, -828($fp)
	lw $t0, -404($fp)
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
	li $t0, 0
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label991
label991:
	li $t0, 1
	sw $t0, -824($fp)
label992:
	lw $t0, -428($fp)
	sw $t0, -852($fp)
	lw $t1, -824($fp)
	lw $t2, -852($fp)
	ble $t1, $t2, label989
	j label990
label989:
	li $t0, 1
	sw $t0, -820($fp)
label990:
	j label982
label984:
	li $t0, 26827
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 53125
	sw $t0, -868($fp)
	li $t0, 0
	sw $t0, -872($fp)
	lw $t0, -860($fp)
	sw $t0, -876($fp)
	lw $t0, 8($fp)
	sw $t0, -880($fp)
	lw $t1, -876($fp)
	lw $t2, -880($fp)
	bgt $t1, $t2, label993
	j label994
label993:
	li $t0, 1
	sw $t0, -872($fp)
label994:
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -884($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -868($fp)
	lw $t1, -888($fp)
	sub $t0, $t0, $t1
	sw $t0, -892($fp)
	li $t0, 0
	sw $t0, -896($fp)
	lw $t0, 8($fp)
	sw $t0, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label997
	j label996
label997:
	lw $t0, -404($fp)
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -896($fp)
label996:
	li $t0, 0
	sw $t0, -908($fp)
	li $t0, 60450
	sw $t0, -912($fp)
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label998
label998:
	li $t0, 1
	sw $t0, -908($fp)
label999:
	li $t0, 0
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -916($fp)
	addi $t0, $fp, -60
	sw $t0, -920($fp)
	lw $t0, 8($fp)
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
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -940($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -60
	sw $t0, -944($fp)
	lw $t0, -404($fp)
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
	lw $t0, -940($fp)
	lw $t1, -960($fp)
	mul $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -892($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	addi $t0, $fp, -44
	sw $t0, -976($fp)
	li $t0, 0
	sw $t0, -980($fp)
	lw $t0, 4($fp)
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label1004
	j label1003
label1003:
	li $t0, 1
	sw $t0, -980($fp)
label1004:
	lw $t0, -404($fp)
	sw $t0, -988($fp)
	lw $t0, -980($fp)
	lw $t1, -988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -992($fp)
	li $t0, 4
	lw $t1, -992($fp)
	mul $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	lw $t1, 0($t0)
	sw $t1, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1001
label1002:
	addi $t0, $fp, -60
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
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label1000
	j label1001
label1000:
	li $t0, 1
	sw $t0, -972($fp)
label1001:
	addi $t0, $fp, -44
	sw $t0, -1028($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1048($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -1068($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -1088($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -1108($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -1128($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -1148($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -1168($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -1188($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -1208($fp)
	li $t0, 9
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
	sw $t0, -1288($fp)
	li $t0, 3
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
	lw $t0, -404($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 31001
	sw $t0, -1320($fp)
	lw $ra, -4($fp)
	lw $v0, -1320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f9
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 3673
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
	jal f15
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
