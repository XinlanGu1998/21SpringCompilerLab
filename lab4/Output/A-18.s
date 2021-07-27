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
	addi $sp, $sp, -204
	li $t0, 2036
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 6459
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
label121:
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 28241
	sw $t0, -36($fp)
	lw $t0, 4($fp)
	sw $t0, -40($fp)
	lw $t1, -36($fp)
	lw $t2, -40($fp)
	bne $t1, $t2, label126
	j label125
label126:
	lw $t0, -24($fp)
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -32($fp)
label125:
	li $t0, 0
	sw $t0, -48($fp)
	lw $t0, -24($fp)
	sw $t0, -52($fp)
	li $t0, 2250
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	mul $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, 4($fp)
	sw $t0, -64($fp)
	lw $t1, -60($fp)
	lw $t2, -64($fp)
	bgt $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -48($fp)
label128:
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -68($fp)
	addi $sp, $sp, 12
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label123
label122:
	li $t0, 0
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	lw $t0, 8($fp)
	sw $t0, -80($fp)
	lw $t0, -24($fp)
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	sub $t0, $t0, $t1
	sw $t0, -88($fp)
	li $t0, 45214
	sw $t0, -92($fp)
	lw $t1, -88($fp)
	lw $t2, -92($fp)
	bge $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -76($fp)
label132:
	li $t0, 0
	sw $t0, -96($fp)
	li $t0, 0
	sw $t0, -100($fp)
	li $t0, 58148
	sw $t0, -104($fp)
	li $t0, 63554
	sw $t0, -108($fp)
	lw $t1, -104($fp)
	lw $t2, -108($fp)
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -100($fp)
label136:
	lw $t0, -24($fp)
	sw $t0, -112($fp)
	lw $t1, -100($fp)
	lw $t2, -112($fp)
	beq $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -96($fp)
label134:
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -96($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -116($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -120($fp)
	li $t0, 33508
	sw $t0, -124($fp)
	lw $t1, -124($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label137:
	li $t0, 1
	sw $t0, -120($fp)
label138:
	li $t0, 5266
	sw $t0, -128($fp)
	lw $t0, -120($fp)
	lw $t1, -128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -132($fp)
	li $t0, 4199
	sw $t0, -136($fp)
	li $t0, 0
	lw $t1, -136($fp)
	sub $t0, $t0, $t1
	sw $t0, -140($fp)
	li $t0, 0
	lw $t1, -140($fp)
	sub $t0, $t0, $t1
	sw $t0, -144($fp)
	addi $sp, $sp, -4
	lw $t0, -132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -148($fp)
	addi $sp, $sp, 12
	lw $t0, -116($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	li $t0, 0
	sw $t0, -156($fp)
	lw $t0, -12($fp)
	sw $t0, -160($fp)
	lw $t1, -160($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label141:
	lw $t0, -24($fp)
	sw $t0, -164($fp)
	lw $t1, -164($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -156($fp)
label140:
	li $t0, 0
	sw $t0, -168($fp)
	lw $t0, 8($fp)
	sw $t0, -172($fp)
	li $t0, 42944
	sw $t0, -176($fp)
	lw $t0, -172($fp)
	lw $t1, -176($fp)
	mul $t0, $t0, $t1
	sw $t0, -180($fp)
	li $t0, 47754
	sw $t0, -184($fp)
	lw $t1, -180($fp)
	lw $t2, -184($fp)
	bgt $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -168($fp)
label143:
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -188($fp)
	addi $sp, $sp, 12
	lw $t0, -152($fp)
	lw $t1, -188($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	li $t0, 63988
	sw $t0, -196($fp)
	lw $t1, -192($fp)
	lw $t2, -196($fp)
	bge $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -72($fp)
label130:
	lw $ra, -4($fp)
	lw $v0, -72($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label121
label123:
	lw $t0, -12($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -208($fp)
	lw $ra, -4($fp)
	lw $v0, -208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -776
	li $t0, 9846
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
	li $t0, 11749
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
	li $t0, 7393
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
	li $t0, 33850
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
	li $t0, 14520
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
	li $t0, 53658
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
	li $t0, 6594
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
	li $t0, 60523
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
	addi $t0, $fp, -36
	sw $t0, -392($fp)
	addi $t0, $fp, -36
	sw $t0, -396($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -412($fp)
	sub $t0, $t0, $t1
	sw $t0, -416($fp)
	li $t0, 4
	lw $t1, -416($fp)
	mul $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	lw $t1, -392($fp)
	add $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	lw $t1, 0($t0)
	sw $t1, -428($fp)
	lw $ra, -4($fp)
	lw $v0, -428($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 49352
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -436($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -448($fp)
	li $t0, 0
	sw $t0, -452($fp)
	li $t0, 0
	sw $t0, -456($fp)
	lw $t0, 8($fp)
	sw $t0, -460($fp)
	li $t0, 23097
	sw $t0, -464($fp)
	lw $t0, -460($fp)
	lw $t1, -464($fp)
	add $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, 4($fp)
	sw $t0, -472($fp)
	lw $t1, -468($fp)
	lw $t2, -472($fp)
	ble $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -456($fp)
label147:
	addi $t0, $fp, -36
	sw $t0, -476($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -496($fp)
	li $t0, 43704
	sw $t0, -500($fp)
	li $t0, 0
	lw $t1, -500($fp)
	sub $t0, $t0, $t1
	sw $t0, -504($fp)
	li $t0, 0
	sw $t0, -508($fp)
	lw $t0, 12($fp)
	sw $t0, -512($fp)
	li $t0, 0
	lw $t1, -512($fp)
	sub $t0, $t0, $t1
	sw $t0, -516($fp)
	li $t0, 7151
	sw $t0, -520($fp)
	lw $t1, -516($fp)
	lw $t2, -520($fp)
	blt $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -508($fp)
label151:
	li $t0, 0
	sw $t0, -524($fp)
	lw $t0, 12($fp)
	sw $t0, -528($fp)
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label153
label155:
	lw $t0, 4($fp)
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label154:
	lw $t0, 4($fp)
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -524($fp)
label153:
	addi $sp, $sp, -4
	lw $t0, -504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -540($fp)
	addi $sp, $sp, 16
	li $t0, 5577
	sw $t0, -544($fp)
	lw $t1, -540($fp)
	lw $t2, -544($fp)
	blt $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -496($fp)
label149:
	addi $sp, $sp, -4
	lw $t0, -456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -548($fp)
	addi $sp, $sp, 16
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label144:
	li $t0, 1
	sw $t0, -452($fp)
label145:
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $ra, -4($fp)
	lw $v0, -552($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -36
	sw $t0, -556($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -576($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -596($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -616($fp)
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 0
	sw $t0, -716($fp)
	addi $t0, $fp, -36
	sw $t0, -720($fp)
	li $t0, 0
	sw $t0, -724($fp)
	li $t0, 0
	sw $t0, -728($fp)
	lw $t0, 4($fp)
	sw $t0, -732($fp)
	lw $t0, 12($fp)
	sw $t0, -736($fp)
	lw $t1, -732($fp)
	lw $t2, -736($fp)
	ble $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -728($fp)
label161:
	lw $t0, 12($fp)
	sw $t0, -740($fp)
	lw $t1, -728($fp)
	lw $t2, -740($fp)
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -724($fp)
label159:
	li $t0, 4
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	lw $t1, 0($t0)
	sw $t1, -752($fp)
	li $t0, 4383
	sw $t0, -756($fp)
	li $t0, 46295
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	sub $t0, $t0, $t1
	sw $t0, -764($fp)
	li $t0, 29557
	sw $t0, -768($fp)
	li $t0, 6633
	sw $t0, -772($fp)
	lw $t0, -768($fp)
	lw $t1, -772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -776($fp)
	lw $t0, -764($fp)
	lw $t1, -776($fp)
	sub $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t1, -752($fp)
	lw $t2, -780($fp)
	ble $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -716($fp)
label157:
	lw $ra, -4($fp)
	lw $v0, -716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6296
	li $t0, 9001
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 22169
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 4652
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 54215
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 26368
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 38160
	sw $t0, -128($fp)
	addi $t0, $fp, -44
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
	li $t0, 59482
	sw $t0, -152($fp)
	addi $t0, $fp, -44
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
	li $t0, 3776
	sw $t0, -176($fp)
	addi $t0, $fp, -44
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
	li $t0, 20378
	sw $t0, -200($fp)
	addi $t0, $fp, -44
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
	li $t0, 57934
	sw $t0, -224($fp)
	addi $t0, $fp, -44
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
	li $t0, 13623
	sw $t0, -248($fp)
	addi $t0, $fp, -44
	sw $t0, -252($fp)
	li $t0, 5
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
	li $t0, 32127
	sw $t0, -272($fp)
	addi $t0, $fp, -44
	sw $t0, -276($fp)
	li $t0, 6
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
	li $t0, 65327
	sw $t0, -296($fp)
	addi $t0, $fp, -44
	sw $t0, -300($fp)
	li $t0, 7
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
	li $t0, 47473
	sw $t0, -320($fp)
	addi $t0, $fp, -44
	sw $t0, -324($fp)
	li $t0, 8
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
	li $t0, 46648
	sw $t0, -344($fp)
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 9
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
	li $t0, 53449
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 54067
	sw $t0, -380($fp)
	addi $t0, $fp, -52
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
	li $t0, 41635
	sw $t0, -404($fp)
	addi $t0, $fp, -52
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
	li $t0, 4945
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 26190
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 25451
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 12096
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 4358
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 31029
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 53900
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 48617
	sw $t0, -512($fp)
	addi $t0, $fp, -64
	sw $t0, -516($fp)
	li $t0, 0
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
	li $t0, 54126
	sw $t0, -536($fp)
	addi $t0, $fp, -64
	sw $t0, -540($fp)
	li $t0, 1
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
	li $t0, 58283
	sw $t0, -560($fp)
	addi $t0, $fp, -64
	sw $t0, -564($fp)
	li $t0, 2
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
	li $t0, 29376
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 18147
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 64917
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 38377
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 40316
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 4033
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 27057
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	addi $t0, $fp, -64
	sw $t0, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	lw $t0, -468($fp)
	sw $t0, -676($fp)
	li $t0, 62571
	sw $t0, -680($fp)
	lw $t1, -676($fp)
	lw $t2, -680($fp)
	blt $t1, $t2, label167
	j label166
label167:
	lw $t0, 8($fp)
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -672($fp)
label166:
	li $t0, 21003
	sw $t0, -688($fp)
	li $t0, 4925
	sw $t0, -692($fp)
	lw $t0, -688($fp)
	lw $t1, -692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -696($fp)
	lw $t0, -612($fp)
	sw $t0, -700($fp)
	lw $t0, -696($fp)
	lw $t1, -700($fp)
	add $t0, $t0, $t1
	sw $t0, -704($fp)
	addi $t0, $fp, -44
	sw $t0, -708($fp)
	li $t0, 7
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
	addi $sp, $sp, -4
	lw $t0, -672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -724($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -728($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -728($fp)
	sub $t0, $t0, $t1
	sw $t0, -732($fp)
	li $t0, 0
	lw $t1, -732($fp)
	sub $t0, $t0, $t1
	sw $t0, -736($fp)
	li $t0, 4
	lw $t1, -736($fp)
	mul $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	lw $t1, 0($t0)
	sw $t1, -748($fp)
	lw $t1, -748($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label163
label162:
	lw $t0, -648($fp)
	sw $t0, -752($fp)
	li $t0, 0
	sw $t0, -756($fp)
	lw $t0, -84($fp)
	sw $t0, -760($fp)
	lw $t0, -432($fp)
	sw $t0, -764($fp)
	lw $t1, -760($fp)
	lw $t2, -764($fp)
	bge $t1, $t2, label170
	j label169
label170:
	li $t0, 18548
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -756($fp)
label169:
	li $t0, 13401
	sw $t0, -772($fp)
	lw $t0, -120($fp)
	sw $t0, -776($fp)
	lw $t0, -72($fp)
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	add $t0, $t0, $t1
	sw $t0, -784($fp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -788($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, -600($fp)
	sw $t0, -796($fp)
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -792($fp)
label172:
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -752($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $ra, -4($fp)
	lw $v0, -804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label164
label163:
	addi $t0, $fp, -52
	sw $t0, -808($fp)
	lw $t0, -492($fp)
	sw $t0, -812($fp)
	li $t0, 29163
	sw $t0, -816($fp)
	lw $t0, -812($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -108($fp)
	sw $t0, -824($fp)
	lw $t0, -820($fp)
	lw $t1, -824($fp)
	sub $t0, $t0, $t1
	sw $t0, -828($fp)
	li $t0, 4
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, 0($t0)
	sw $t1, -840($fp)
	lw $t0, -480($fp)
	sw $t0, -844($fp)
	li $t0, 0
	sw $t0, -848($fp)
	lw $t0, -456($fp)
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -848($fp)
label174:
	lw $t0, -844($fp)
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	li $t0, 0
	lw $t1, -860($fp)
	sub $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -840($fp)
	lw $t1, -864($fp)
	sub $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $ra, -4($fp)
	lw $v0, -868($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label164:
	lw $t0, -72($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -1072($fp)
	li $t0, 9
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
	lw $t0, -372($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1096($fp)
	li $t0, 0
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
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1116($fp)
	li $t0, 1
	sw $t0, -1120($fp)
	li $t0, 4
	lw $t1, -1120($fp)
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	lw $t1, -1116($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1164($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -1184($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -1204($fp)
	li $t0, 2
	sw $t0, -1208($fp)
	li $t0, 4
	lw $t1, -1208($fp)
	mul $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	lw $t1, 0($t0)
	sw $t1, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -1252($fp)
	li $t0, 13192
	sw $t0, -1256($fp)
	li $t0, 0
	sw $t0, -1260($fp)
	lw $t0, -624($fp)
	sw $t0, -1264($fp)
	li $t0, 485
	sw $t0, -1268($fp)
	lw $t0, -1264($fp)
	lw $t1, -1268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1272($fp)
	li $t0, 0
	lw $t1, -1272($fp)
	sub $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -1260($fp)
label176:
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1280($fp)
	li $t0, 0
	lw $t1, -1280($fp)
	sub $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1252($fp)
	lw $t1, -1284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1288($fp)
	lw $ra, -4($fp)
	lw $v0, -1288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label177:
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 0
	sw $t0, -1296($fp)
	lw $t0, -468($fp)
	sw $t0, -1300($fp)
	lw $t1, -1300($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label185:
	li $t0, 54553
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label184
label184:
	lw $t0, 12($fp)
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -1296($fp)
label183:
	lw $t0, -456($fp)
	sw $t0, -1312($fp)
	lw $t0, -588($fp)
	sw $t0, -1316($fp)
	lw $t0, -1312($fp)
	lw $t1, -1316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1320($fp)
	li $t0, 10275
	sw $t0, -1324($fp)
	lw $t0, -504($fp)
	sw $t0, -1328($fp)
	lw $t0, -1324($fp)
	lw $t1, -1328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1332($fp)
	li $t0, 1105
	sw $t0, -1336($fp)
	lw $t0, -1332($fp)
	lw $t1, -1336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1340($fp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1340($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1344($fp)
	addi $sp, $sp, 16
	li $t0, 51910
	sw $t0, -1348($fp)
	lw $t1, -1344($fp)
	lw $t2, -1348($fp)
	blt $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1292($fp)
label181:
	li $t0, 0
	sw $t0, -1352($fp)
	li $t0, 0
	sw $t0, -1356($fp)
	lw $t0, -96($fp)
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label188
label188:
	li $t0, 1
	sw $t0, -1356($fp)
label189:
	li $t0, 0
	lw $t1, -1356($fp)
	sub $t0, $t0, $t1
	sw $t0, -1364($fp)
	li $t0, 6051
	sw $t0, -1368($fp)
	lw $t1, -1364($fp)
	lw $t2, -1368($fp)
	bge $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1352($fp)
label187:
	lw $t1, -1292($fp)
	lw $t2, -1352($fp)
	beq $t1, $t2, label178
	j label179
label178:
	li $t0, 0
	sw $t0, -1372($fp)
	lw $t0, -456($fp)
	sw $t0, -1376($fp)
	li $t0, 0
	lw $t1, -1376($fp)
	sub $t0, $t0, $t1
	sw $t0, -1380($fp)
	li $t0, 15207
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -372($fp)
	sw $t0, -1392($fp)
	lw $t1, -1388($fp)
	lw $t2, -1392($fp)
	bgt $t1, $t2, label193
	j label192
label193:
	li $t0, 11825
	sw $t0, -1396($fp)
	li $t0, 18147
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1404($fp)
	li $t0, 19565
	sw $t0, -1408($fp)
	lw $t0, -1404($fp)
	lw $t1, -1408($fp)
	mul $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label192
label192:
	li $t0, 42854
	sw $t0, -1416($fp)
	lw $t0, -636($fp)
	sw $t0, -1420($fp)
	lw $t0, -444($fp)
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	sub $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t1, -1416($fp)
	lw $t2, -1428($fp)
	beq $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -1372($fp)
label191:
	lw $ra, -4($fp)
	lw $v0, -1372($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label177
label179:
	li $t0, 6512
	sw $t0, -1524($fp)
	addi $t0, $fp, -1432
	sw $t0, -1528($fp)
	li $t0, 0
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
	li $t0, 2646
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	li $t0, 31445
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	li $t0, 64795
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	li $t0, 32022
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	li $t0, 49592
	sw $t0, -1596($fp)
	addi $t0, $fp, -1448
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
	li $t0, 64176
	sw $t0, -1620($fp)
	addi $t0, $fp, -1448
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
	li $t0, 4864
	sw $t0, -1644($fp)
	addi $t0, $fp, -1448
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
	li $t0, 24373
	sw $t0, -1668($fp)
	addi $t0, $fp, -1448
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
	li $t0, 2673
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	li $t0, 31921
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	li $t0, 25521
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 44866
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	li $t0, 52924
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	li $t0, 30446
	sw $t0, -1752($fp)
	addi $t0, $fp, -1480
	sw $t0, -1756($fp)
	li $t0, 0
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1756($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1752($fp)
	lw $t1, -1768($fp)
	sw $t0, 0($t1)
	lw $t0, -1768($fp)
	lw $t1, 0($t0)
	sw $t1, -1772($fp)
	li $t0, 41902
	sw $t0, -1776($fp)
	addi $t0, $fp, -1480
	sw $t0, -1780($fp)
	li $t0, 1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1780($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1776($fp)
	lw $t1, -1792($fp)
	sw $t0, 0($t1)
	lw $t0, -1792($fp)
	lw $t1, 0($t0)
	sw $t1, -1796($fp)
	li $t0, 789
	sw $t0, -1800($fp)
	addi $t0, $fp, -1480
	sw $t0, -1804($fp)
	li $t0, 2
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
	li $t0, 48994
	sw $t0, -1824($fp)
	addi $t0, $fp, -1480
	sw $t0, -1828($fp)
	li $t0, 3
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
	li $t0, 5529
	sw $t0, -1848($fp)
	addi $t0, $fp, -1480
	sw $t0, -1852($fp)
	li $t0, 4
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
	li $t0, 13981
	sw $t0, -1872($fp)
	addi $t0, $fp, -1480
	sw $t0, -1876($fp)
	li $t0, 5
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
	li $t0, 49480
	sw $t0, -1896($fp)
	addi $t0, $fp, -1480
	sw $t0, -1900($fp)
	li $t0, 6
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
	li $t0, 15804
	sw $t0, -1920($fp)
	addi $t0, $fp, -1480
	sw $t0, -1924($fp)
	li $t0, 7
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
	li $t0, 15086
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	li $t0, 38497
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	li $t0, 2178
	sw $t0, -1968($fp)
	addi $t0, $fp, -1520
	sw $t0, -1972($fp)
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1972($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1968($fp)
	lw $t1, -1984($fp)
	sw $t0, 0($t1)
	lw $t0, -1984($fp)
	lw $t1, 0($t0)
	sw $t1, -1988($fp)
	li $t0, 21137
	sw $t0, -1992($fp)
	addi $t0, $fp, -1520
	sw $t0, -1996($fp)
	li $t0, 1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1996($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -1992($fp)
	lw $t1, -2008($fp)
	sw $t0, 0($t1)
	lw $t0, -2008($fp)
	lw $t1, 0($t0)
	sw $t1, -2012($fp)
	li $t0, 53704
	sw $t0, -2016($fp)
	addi $t0, $fp, -1520
	sw $t0, -2020($fp)
	li $t0, 2
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2020($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2016($fp)
	lw $t1, -2032($fp)
	sw $t0, 0($t1)
	lw $t0, -2032($fp)
	lw $t1, 0($t0)
	sw $t1, -2036($fp)
	li $t0, 14003
	sw $t0, -2040($fp)
	addi $t0, $fp, -1520
	sw $t0, -2044($fp)
	li $t0, 3
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2044($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2040($fp)
	lw $t1, -2056($fp)
	sw $t0, 0($t1)
	lw $t0, -2056($fp)
	lw $t1, 0($t0)
	sw $t1, -2060($fp)
	li $t0, 39285
	sw $t0, -2064($fp)
	addi $t0, $fp, -1520
	sw $t0, -2068($fp)
	li $t0, 4
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2068($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2064($fp)
	lw $t1, -2080($fp)
	sw $t0, 0($t1)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	li $t0, 7733
	sw $t0, -2088($fp)
	addi $t0, $fp, -1520
	sw $t0, -2092($fp)
	li $t0, 5
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2092($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2088($fp)
	lw $t1, -2104($fp)
	sw $t0, 0($t1)
	lw $t0, -2104($fp)
	lw $t1, 0($t0)
	sw $t1, -2108($fp)
	li $t0, 56858
	sw $t0, -2112($fp)
	addi $t0, $fp, -1520
	sw $t0, -2116($fp)
	li $t0, 6
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2116($fp)
	lw $t1, -2124($fp)
	add $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2112($fp)
	lw $t1, -2128($fp)
	sw $t0, 0($t1)
	lw $t0, -2128($fp)
	lw $t1, 0($t0)
	sw $t1, -2132($fp)
	li $t0, 45797
	sw $t0, -2136($fp)
	addi $t0, $fp, -1520
	sw $t0, -2140($fp)
	li $t0, 7
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2140($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2136($fp)
	lw $t1, -2152($fp)
	sw $t0, 0($t1)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	li $t0, 10379
	sw $t0, -2160($fp)
	addi $t0, $fp, -1520
	sw $t0, -2164($fp)
	li $t0, 8
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2164($fp)
	lw $t1, -2172($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2160($fp)
	lw $t1, -2176($fp)
	sw $t0, 0($t1)
	lw $t0, -2176($fp)
	lw $t1, 0($t0)
	sw $t1, -2180($fp)
	li $t0, 22767
	sw $t0, -2184($fp)
	addi $t0, $fp, -1520
	sw $t0, -2188($fp)
	li $t0, 9
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2188($fp)
	lw $t1, -2196($fp)
	add $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2184($fp)
	lw $t1, -2200($fp)
	sw $t0, 0($t1)
	lw $t0, -2200($fp)
	lw $t1, 0($t0)
	sw $t1, -2204($fp)
	li $t0, 45056
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	li $t0, 42401
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	li $t0, 6823
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -2240($fp)
	li $t0, 43697
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	li $t0, 47265
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -2264($fp)
	li $t0, 31196
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	li $t0, 46370
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	li $t0, 13650
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
label197:
	addi $t0, $fp, -52
	sw $t0, -2296($fp)
	lw $t0, -2272($fp)
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
	li $t0, 56718
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2320($fp)
	lw $t0, -2236($fp)
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -2328($fp)
	li $t0, 0
	sw $t0, -2332($fp)
	addi $t0, $fp, -52
	sw $t0, -2336($fp)
	lw $t0, -636($fp)
	sw $t0, -2340($fp)
	li $t0, 4
	lw $t1, -2340($fp)
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	li $t0, 25701
	sw $t0, -2356($fp)
	lw $t1, -2352($fp)
	lw $t2, -2356($fp)
	blt $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -2332($fp)
label202:
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2360($fp)
	addi $sp, $sp, 12
	lw $t0, -2320($fp)
	lw $t1, -2360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2364($fp)
	lw $t0, -1708($fp)
	sw $t0, -2368($fp)
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t1, -2364($fp)
	lw $t2, -2372($fp)
	bne $t1, $t2, label198
	j label200
label200:
	lw $t0, -2260($fp)
	sw $t0, -2376($fp)
	li $t0, 1038
	sw $t0, -2380($fp)
	lw $t0, -2376($fp)
	lw $t1, -2380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2384($fp)
	li $t0, 21628
	sw $t0, -2388($fp)
	li $t0, 0
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2384($fp)
	lw $t1, -2392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2396($fp)
	li $t0, 0
	lw $t1, -2396($fp)
	sub $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t1, -2400($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 2067
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	sw $t0, -2452($fp)
	li $t0, 1827
	sw $t0, -2456($fp)
	addi $t0, $fp, -2440
	sw $t0, -2460($fp)
	li $t0, 0
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2460($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2456($fp)
	lw $t1, -2472($fp)
	sw $t0, 0($t1)
	lw $t0, -2472($fp)
	lw $t1, 0($t0)
	sw $t1, -2476($fp)
	li $t0, 5087
	sw $t0, -2480($fp)
	addi $t0, $fp, -2440
	sw $t0, -2484($fp)
	li $t0, 1
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2484($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2480($fp)
	lw $t1, -2496($fp)
	sw $t0, 0($t1)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	li $t0, 7596
	sw $t0, -2504($fp)
	addi $t0, $fp, -2440
	sw $t0, -2508($fp)
	li $t0, 2
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2508($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2504($fp)
	lw $t1, -2520($fp)
	sw $t0, 0($t1)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	li $t0, 15808
	sw $t0, -2528($fp)
	addi $t0, $fp, -2440
	sw $t0, -2532($fp)
	li $t0, 3
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2532($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2528($fp)
	lw $t1, -2544($fp)
	sw $t0, 0($t1)
	lw $t0, -2544($fp)
	lw $t1, 0($t0)
	sw $t1, -2548($fp)
	li $t0, 54567
	sw $t0, -2552($fp)
	addi $t0, $fp, -2440
	sw $t0, -2556($fp)
	li $t0, 4
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2556($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2552($fp)
	lw $t1, -2568($fp)
	sw $t0, 0($t1)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	li $t0, 23400
	sw $t0, -2576($fp)
	addi $t0, $fp, -2440
	sw $t0, -2580($fp)
	li $t0, 5
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2580($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2576($fp)
	lw $t1, -2592($fp)
	sw $t0, 0($t1)
	lw $t0, -2592($fp)
	lw $t1, 0($t0)
	sw $t1, -2596($fp)
	li $t0, 30895
	sw $t0, -2600($fp)
	addi $t0, $fp, -2440
	sw $t0, -2604($fp)
	li $t0, 6
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2604($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2600($fp)
	lw $t1, -2616($fp)
	sw $t0, 0($t1)
	lw $t0, -2616($fp)
	lw $t1, 0($t0)
	sw $t1, -2620($fp)
	li $t0, 27528
	sw $t0, -2624($fp)
	addi $t0, $fp, -2440
	sw $t0, -2628($fp)
	li $t0, 7
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
	li $t0, 25578
	sw $t0, -2648($fp)
	addi $t0, $fp, -2440
	sw $t0, -2652($fp)
	li $t0, 8
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
	li $t0, 52032
	sw $t0, -2672($fp)
	addi $t0, $fp, -2440
	sw $t0, -2676($fp)
	li $t0, 9
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
	li $t0, 15696
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
label203:
	addi $t0, $fp, -1432
	sw $t0, -2708($fp)
	li $t0, 0
	sw $t0, -2712($fp)
	li $t0, 39581
	sw $t0, -2716($fp)
	li $t0, 25781
	sw $t0, -2720($fp)
	lw $t1, -2716($fp)
	lw $t2, -2720($fp)
	beq $t1, $t2, label209
	j label208
label209:
	li $t0, 23429
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -2712($fp)
label208:
	li $t0, 4
	lw $t1, -2712($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, -2708($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label206:
	li $t0, 0
	sw $t0, -2740($fp)
	lw $t0, -660($fp)
	sw $t0, -2744($fp)
	lw $t0, -480($fp)
	sw $t0, -2748($fp)
	lw $t0, -2744($fp)
	lw $t1, -2748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label212:
	li $t0, 6042
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -2740($fp)
label211:
	lw $t0, -648($fp)
	sw $t0, -2760($fp)
	li $t0, 30903
	sw $t0, -2764($fp)
	lw $t0, -2760($fp)
	lw $t1, -2764($fp)
	sub $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -492($fp)
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2776($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2780($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2780($fp)
	sub $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t1, -2784($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label205
label204:
	lw $t0, -492($fp)
	sw $t0, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, 4($fp)
	sw $t0, -2796($fp)
	li $t0, 60494
	sw $t0, -2800($fp)
	lw $t0, -2796($fp)
	lw $t1, -2800($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t1, -2804($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label215:
	li $t0, 29260
	sw $t0, -2808($fp)
	lw $t1, -2808($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -2792($fp)
label214:
	addi $t0, $fp, -2440
	sw $t0, -2812($fp)
	li $t0, 5
	sw $t0, -2816($fp)
	li $t0, 4
	lw $t1, -2816($fp)
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, 0($t0)
	sw $t1, -2828($fp)
	lw $t0, -108($fp)
	sw $t0, -2832($fp)
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	li $t0, 33808
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label219
label219:
	li $t0, 53670
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label218
label218:
	lw $t0, -660($fp)
	sw $t0, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -2840($fp)
label217:
	li $t0, 0
	sw $t0, -2856($fp)
	lw $t0, -1948($fp)
	sw $t0, -2860($fp)
	lw $t0, -2448($fp)
	sw $t0, -2864($fp)
	lw $t1, -2860($fp)
	lw $t2, -2864($fp)
	beq $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -2856($fp)
label221:
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2868($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -432($fp)
	sw $t0, -2876($fp)
	lw $t1, -2876($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label222:
	li $t0, 1
	sw $t0, -2872($fp)
label223:
	lw $t0, -660($fp)
	sw $t0, -2880($fp)
	lw $t0, -2872($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2888($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2888($fp)
	sub $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2788($fp)
	lw $t1, -2892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2896($fp)
	j label203
label205:
	lw $t0, -2236($fp)
	sw $t0, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	li $t0, 57939
	sw $t0, -2908($fp)
	lw $t0, -2224($fp)
	sw $t0, -2912($fp)
	lw $t1, -2908($fp)
	lw $t2, -2912($fp)
	beq $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -2904($fp)
label225:
	li $t0, 26154
	sw $t0, -2916($fp)
	li $t0, 0
	sw $t0, -2920($fp)
	addi $t0, $fp, -1432
	sw $t0, -2924($fp)
	lw $t0, -504($fp)
	sw $t0, -2928($fp)
	li $t0, 4
	lw $t1, -2928($fp)
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	lw $t1, 0($t0)
	sw $t1, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label226:
	li $t0, 1
	sw $t0, -2920($fp)
label227:
	lw $t0, -2916($fp)
	lw $t1, -2920($fp)
	sub $t0, $t0, $t1
	sw $t0, -2944($fp)
	li $t0, 0
	sw $t0, -2948($fp)
	li $t0, 10094
	sw $t0, -2952($fp)
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label228:
	li $t0, 1
	sw $t0, -2948($fp)
label229:
	li $t0, 0
	lw $t1, -2948($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	li $t0, 0
	lw $t1, -2956($fp)
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2944($fp)
	lw $t1, -2960($fp)
	sub $t0, $t0, $t1
	sw $t0, -2964($fp)
	li $t0, 6053
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	sw $t0, -2976($fp)
	li $t0, 0
	sw $t0, -2980($fp)
	addi $t0, $fp, -1480
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	addi $t0, $fp, -1520
	sw $t0, -2992($fp)
	lw $t0, 8($fp)
	sw $t0, -2996($fp)
	li $t0, 4
	lw $t1, -2996($fp)
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	lw $t1, -2992($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	lw $t1, 0($t0)
	sw $t1, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label234:
	lw $t0, -2972($fp)
	sw $t0, -3012($fp)
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -2988($fp)
label233:
	li $t0, 4
	lw $t1, -2988($fp)
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, 0($t0)
	sw $t1, -3024($fp)
	addi $t0, $fp, -44
	sw $t0, -3028($fp)
	lw $t0, 4($fp)
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
	li $t0, 8919
	sw $t0, -3048($fp)
	lw $t0, -3044($fp)
	lw $t1, -3048($fp)
	add $t0, $t0, $t1
	sw $t0, -3052($fp)
	addi $t0, $fp, -44
	sw $t0, -3056($fp)
	li $t0, 1
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
	li $t0, 37862
	sw $t0, -3076($fp)
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3084($fp)
	addi $sp, $sp, 12
	li $t0, 44052
	sw $t0, -3088($fp)
	lw $t0, -3084($fp)
	lw $t1, -3088($fp)
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -1744($fp)
	sw $t0, -3096($fp)
	li $t0, 35795
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3104($fp)
	li $t0, 17336
	sw $t0, -3108($fp)
	li $t0, 0
	lw $t1, -3108($fp)
	sub $t0, $t0, $t1
	sw $t0, -3112($fp)
	addi $sp, $sp, -4
	lw $t0, -3092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3116($fp)
	addi $sp, $sp, 16
	lw $t1, -3024($fp)
	lw $t2, -3116($fp)
	beq $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -2980($fp)
label231:
	lw $t0, 4($fp)
	sw $t0, -3120($fp)
	li $t0, 0
	lw $t1, -3120($fp)
	sub $t0, $t0, $t1
	sw $t0, -3124($fp)
	li $t0, 3322
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -3132($fp)
	li $t0, 0
	sw $t0, -3136($fp)
	li $t0, 24728
	sw $t0, -3140($fp)
	lw $t0, -636($fp)
	sw $t0, -3144($fp)
	lw $t0, -3140($fp)
	lw $t1, -3144($fp)
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label240
label240:
	li $t0, 33083
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -3136($fp)
label239:
	li $t0, 45458
	sw $t0, -3156($fp)
	lw $t0, -492($fp)
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	addi $sp, $sp, -4
	lw $t0, -3136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3168($fp)
	addi $sp, $sp, 12
	lw $t0, -372($fp)
	sw $t0, -3172($fp)
	lw $t0, -3168($fp)
	lw $t1, -3172($fp)
	mul $t0, $t0, $t1
	sw $t0, -3176($fp)
	addi $sp, $sp, -4
	lw $t0, -3132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3180($fp)
	addi $sp, $sp, 12
	li $t0, 60612
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 0
	sw $t0, -3192($fp)
	li $t0, 28900
	sw $t0, -3196($fp)
	li $t0, 42119
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label243:
	li $t0, 10771
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3192($fp)
label242:
	lw $ra, -4($fp)
	lw $v0, -3192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label236:
label244:
	lw $t0, -600($fp)
	sw $t0, -3212($fp)
	lw $t1, -3212($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 2946
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	sw $t0, -3224($fp)
	li $t0, 0
	sw $t0, -3228($fp)
	li $t0, 33849
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label250:
	lw $t0, -444($fp)
	sw $t0, -3236($fp)
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label249
label249:
	li $t0, 8407
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -3228($fp)
label248:
	li $t0, 0
	sw $t0, -3244($fp)
	li $t0, 2365
	sw $t0, -3248($fp)
	lw $t1, -3248($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label253
label254:
	lw $t0, -3220($fp)
	sw $t0, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label253
label253:
	li $t0, 34200
	sw $t0, -3256($fp)
	lw $t1, -3256($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -3244($fp)
label252:
	lw $t0, -2212($fp)
	sw $t0, -3260($fp)
	addi $sp, $sp, -4
	lw $t0, -3228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3264($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3264($fp)
	sub $t0, $t0, $t1
	sw $t0, -3268($fp)
	li $t0, 2472
	sw $t0, -3272($fp)
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	add $t0, $t0, $t1
	sw $t0, -3276($fp)
	j label244
label246:
	j label197
label199:
label195:
label255:
	addi $t0, $fp, -1448
	sw $t0, -3280($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -3296($fp)
	sub $t0, $t0, $t1
	sw $t0, -3300($fp)
	li $t0, 0
	lw $t1, -3300($fp)
	sub $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	lw $t0, -2212($fp)
	sw $t0, -3312($fp)
	lw $ra, -4($fp)
	lw $v0, -3312($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label255
label257:
	li $t0, 0
	sw $t0, -3316($fp)
	li $t0, 0
	sw $t0, -3320($fp)
	li $t0, 13145
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label263:
	li $t0, 1
	sw $t0, -3320($fp)
label264:
	li $t0, 0
	sw $t0, -3328($fp)
	lw $t0, -504($fp)
	sw $t0, -3332($fp)
	li $t0, 0
	lw $t1, -3332($fp)
	sub $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label265
label265:
	li $t0, 1
	sw $t0, -3328($fp)
label266:
	li $t0, 16942
	sw $t0, -3340($fp)
	li $t0, 0
	sw $t0, -3344($fp)
	lw $t0, -444($fp)
	sw $t0, -3348($fp)
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label269:
	lw $t0, -600($fp)
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -3344($fp)
label268:
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3356($fp)
	addi $sp, $sp, 16
	lw $t0, -1576($fp)
	sw $t0, -3360($fp)
	lw $t0, -3356($fp)
	lw $t1, -3360($fp)
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t1, -3320($fp)
	lw $t2, -3364($fp)
	bge $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -3316($fp)
label262:
	li $t0, 0
	sw $t0, -3368($fp)
	li $t0, 23230
	sw $t0, -3372($fp)
	lw $t1, -3372($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -3368($fp)
label271:
	lw $t1, -3316($fp)
	lw $t2, -3368($fp)
	blt $t1, $t2, label258
	j label259
label258:
	addi $t0, $fp, -64
	sw $t0, -3376($fp)
	lw $t0, -2284($fp)
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
	li $t0, 5548
	sw $t0, -3396($fp)
	lw $t0, -3392($fp)
	lw $t1, -3396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3400($fp)
	li $t0, 43096
	sw $t0, -3404($fp)
	li $t0, 0
	lw $t1, -3404($fp)
	sub $t0, $t0, $t1
	sw $t0, -3408($fp)
	li $t0, 0
	lw $t1, -3408($fp)
	sub $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3400($fp)
	lw $t1, -3412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3416($fp)
	lw $t0, -1552($fp)
	sw $t0, -3420($fp)
	li $t0, 33325
	sw $t0, -3424($fp)
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3428($fp)
	li $t0, 0
	sw $t0, -3432($fp)
	lw $t0, -1948($fp)
	sw $t0, -3436($fp)
	lw $t1, -3436($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label272:
	li $t0, 1
	sw $t0, -3432($fp)
label273:
	lw $t0, -3428($fp)
	lw $t1, -3432($fp)
	mul $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3416($fp)
	lw $t1, -3440($fp)
	sub $t0, $t0, $t1
	sw $t0, -3444($fp)
	j label260
label259:
	li $t0, 0
	sw $t0, -3448($fp)
	lw $t0, -1564($fp)
	sw $t0, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label276
label277:
	lw $t0, -1588($fp)
	sw $t0, -3456($fp)
	lw $t1, -3456($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label276
label276:
	lw $t0, -1720($fp)
	sw $t0, -3460($fp)
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -3448($fp)
label275:
	li $t0, 0
	sw $t0, -3464($fp)
	lw $t0, -1948($fp)
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label280:
	li $t0, 60433
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -3464($fp)
label279:
	li $t0, 0
	sw $t0, -3476($fp)
	lw $t0, -492($fp)
	sw $t0, -3480($fp)
	li $t0, 0
	lw $t1, -3480($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label283:
	li $t0, 11602
	sw $t0, -3488($fp)
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -3476($fp)
label282:
	addi $sp, $sp, -4
	lw $t0, -3448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3492($fp)
	addi $sp, $sp, 16
	li $t0, 3584
	sw $t0, -3496($fp)
	lw $t0, -3492($fp)
	lw $t1, -3496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3500($fp)
label284:
	li $t0, 0
	sw $t0, -3504($fp)
	li $t0, 18694
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -3504($fp)
label289:
	li $t0, 33862
	sw $t0, -3512($fp)
	lw $t0, -3504($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, 8($fp)
	sw $t0, -3520($fp)
	li $t0, 0
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3516($fp)
	lw $t1, -3524($fp)
	sub $t0, $t0, $t1
	sw $t0, -3528($fp)
	li $t0, 41447
	sw $t0, -3532($fp)
	lw $t0, -1732($fp)
	sw $t0, -3536($fp)
	lw $t0, -3532($fp)
	lw $t1, -3536($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t1, -3528($fp)
	lw $t2, -3540($fp)
	bne $t1, $t2, label287
	j label286
label287:
	li $t0, 27613
	sw $t0, -3544($fp)
	li $t0, 0
	lw $t1, -3544($fp)
	sub $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label286
label285:
	li $t0, 0
	sw $t0, -3552($fp)
	li $t0, 12378
	sw $t0, -3556($fp)
	li $t0, 0
	lw $t1, -3556($fp)
	sub $t0, $t0, $t1
	sw $t0, -3560($fp)
	li $t0, 21369
	sw $t0, -3564($fp)
	li $t0, 52341
	sw $t0, -3568($fp)
	lw $t0, -3564($fp)
	lw $t1, -3568($fp)
	sub $t0, $t0, $t1
	sw $t0, -3572($fp)
	li $t0, 45461
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	add $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t1, -3560($fp)
	lw $t2, -3580($fp)
	beq $t1, $t2, label290
	j label292
label292:
	li $t0, 0
	sw $t0, -3584($fp)
	li $t0, 24692
	sw $t0, -3588($fp)
	li $t0, 42428
	sw $t0, -3592($fp)
	lw $t1, -3588($fp)
	lw $t2, -3592($fp)
	bgt $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -3584($fp)
label295:
	li $t0, 40536
	sw $t0, -3596($fp)
	lw $t1, -3584($fp)
	lw $t2, -3596($fp)
	beq $t1, $t2, label293
	j label291
label293:
	li $t0, 53592
	sw $t0, -3600($fp)
	li $t0, 0
	lw $t1, -3600($fp)
	sub $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -3552($fp)
label291:
	j label284
label286:
label260:
	li $t0, 19012
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	sw $t0, -3676($fp)
	li $t0, 51307
	sw $t0, -3680($fp)
	addi $t0, $fp, -3640
	sw $t0, -3684($fp)
	li $t0, 0
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3684($fp)
	lw $t1, -3692($fp)
	add $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3680($fp)
	lw $t1, -3696($fp)
	sw $t0, 0($t1)
	lw $t0, -3696($fp)
	lw $t1, 0($t0)
	sw $t1, -3700($fp)
	li $t0, 56538
	sw $t0, -3704($fp)
	addi $t0, $fp, -3640
	sw $t0, -3708($fp)
	li $t0, 1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3708($fp)
	lw $t1, -3716($fp)
	add $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3704($fp)
	lw $t1, -3720($fp)
	sw $t0, 0($t1)
	lw $t0, -3720($fp)
	lw $t1, 0($t0)
	sw $t1, -3724($fp)
	li $t0, 21377
	sw $t0, -3728($fp)
	addi $t0, $fp, -3640
	sw $t0, -3732($fp)
	li $t0, 2
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3732($fp)
	lw $t1, -3740($fp)
	add $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3728($fp)
	lw $t1, -3744($fp)
	sw $t0, 0($t1)
	lw $t0, -3744($fp)
	lw $t1, 0($t0)
	sw $t1, -3748($fp)
	li $t0, 19971
	sw $t0, -3752($fp)
	addi $t0, $fp, -3640
	sw $t0, -3756($fp)
	li $t0, 3
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3756($fp)
	lw $t1, -3764($fp)
	add $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3752($fp)
	lw $t1, -3768($fp)
	sw $t0, 0($t1)
	lw $t0, -3768($fp)
	lw $t1, 0($t0)
	sw $t1, -3772($fp)
	li $t0, 24852
	sw $t0, -3776($fp)
	addi $t0, $fp, -3640
	sw $t0, -3780($fp)
	li $t0, 4
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3780($fp)
	lw $t1, -3788($fp)
	add $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3776($fp)
	lw $t1, -3792($fp)
	sw $t0, 0($t1)
	lw $t0, -3792($fp)
	lw $t1, 0($t0)
	sw $t1, -3796($fp)
	li $t0, 29784
	sw $t0, -3800($fp)
	addi $t0, $fp, -3640
	sw $t0, -3804($fp)
	li $t0, 5
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3804($fp)
	lw $t1, -3812($fp)
	add $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3800($fp)
	lw $t1, -3816($fp)
	sw $t0, 0($t1)
	lw $t0, -3816($fp)
	lw $t1, 0($t0)
	sw $t1, -3820($fp)
	li $t0, 22443
	sw $t0, -3824($fp)
	addi $t0, $fp, -3640
	sw $t0, -3828($fp)
	li $t0, 6
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3828($fp)
	lw $t1, -3836($fp)
	add $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3824($fp)
	lw $t1, -3840($fp)
	sw $t0, 0($t1)
	lw $t0, -3840($fp)
	lw $t1, 0($t0)
	sw $t1, -3844($fp)
	li $t0, 46836
	sw $t0, -3848($fp)
	addi $t0, $fp, -3640
	sw $t0, -3852($fp)
	li $t0, 7
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3852($fp)
	lw $t1, -3860($fp)
	add $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3848($fp)
	lw $t1, -3864($fp)
	sw $t0, 0($t1)
	lw $t0, -3864($fp)
	lw $t1, 0($t0)
	sw $t1, -3868($fp)
	li $t0, 23755
	sw $t0, -3872($fp)
	addi $t0, $fp, -3640
	sw $t0, -3876($fp)
	li $t0, 8
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3876($fp)
	lw $t1, -3884($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3872($fp)
	lw $t1, -3888($fp)
	sw $t0, 0($t1)
	lw $t0, -3888($fp)
	lw $t1, 0($t0)
	sw $t1, -3892($fp)
	li $t0, 35588
	sw $t0, -3896($fp)
	addi $t0, $fp, -3656
	sw $t0, -3900($fp)
	li $t0, 0
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3900($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3896($fp)
	lw $t1, -3912($fp)
	sw $t0, 0($t1)
	lw $t0, -3912($fp)
	lw $t1, 0($t0)
	sw $t1, -3916($fp)
	li $t0, 63778
	sw $t0, -3920($fp)
	addi $t0, $fp, -3656
	sw $t0, -3924($fp)
	li $t0, 1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3924($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3920($fp)
	lw $t1, -3936($fp)
	sw $t0, 0($t1)
	lw $t0, -3936($fp)
	lw $t1, 0($t0)
	sw $t1, -3940($fp)
	li $t0, 46985
	sw $t0, -3944($fp)
	addi $t0, $fp, -3656
	sw $t0, -3948($fp)
	li $t0, 2
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3948($fp)
	lw $t1, -3956($fp)
	add $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3944($fp)
	lw $t1, -3960($fp)
	sw $t0, 0($t1)
	lw $t0, -3960($fp)
	lw $t1, 0($t0)
	sw $t1, -3964($fp)
	li $t0, 41137
	sw $t0, -3968($fp)
	addi $t0, $fp, -3656
	sw $t0, -3972($fp)
	li $t0, 3
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3972($fp)
	lw $t1, -3980($fp)
	add $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3968($fp)
	lw $t1, -3984($fp)
	sw $t0, 0($t1)
	lw $t0, -3984($fp)
	lw $t1, 0($t0)
	sw $t1, -3988($fp)
	li $t0, 41338
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	sw $t0, -4000($fp)
	li $t0, 14774
	sw $t0, -4004($fp)
	addi $t0, $fp, -3664
	sw $t0, -4008($fp)
	li $t0, 0
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4008($fp)
	lw $t1, -4016($fp)
	add $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4004($fp)
	lw $t1, -4020($fp)
	sw $t0, 0($t1)
	lw $t0, -4020($fp)
	lw $t1, 0($t0)
	sw $t1, -4024($fp)
	li $t0, 52739
	sw $t0, -4028($fp)
	addi $t0, $fp, -3664
	sw $t0, -4032($fp)
	li $t0, 1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4032($fp)
	lw $t1, -4040($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4028($fp)
	lw $t1, -4044($fp)
	sw $t0, 0($t1)
	lw $t0, -4044($fp)
	lw $t1, 0($t0)
	sw $t1, -4048($fp)
	li $t0, 36235
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	sw $t0, -4060($fp)
	lw $t0, -3672($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -4068($fp)
	li $t0, 0
	sw $t0, -4072($fp)
	li $t0, 4
	lw $t1, -4072($fp)
	mul $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	lw $t1, 0($t0)
	sw $t1, -4084($fp)
	lw $t0, -4084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -4088($fp)
	li $t0, 1
	sw $t0, -4092($fp)
	li $t0, 4
	lw $t1, -4092($fp)
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	lw $t1, -4088($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
	lw $t0, -4104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -4108($fp)
	li $t0, 2
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
	lw $t0, -4124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -4128($fp)
	li $t0, 3
	sw $t0, -4132($fp)
	li $t0, 4
	lw $t1, -4132($fp)
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, -4128($fp)
	add $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, 0($t0)
	sw $t1, -4144($fp)
	lw $t0, -4144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -4148($fp)
	li $t0, 4
	sw $t0, -4152($fp)
	li $t0, 4
	lw $t1, -4152($fp)
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, -4148($fp)
	add $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	lw $t1, 0($t0)
	sw $t1, -4164($fp)
	lw $t0, -4164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -4168($fp)
	li $t0, 5
	sw $t0, -4172($fp)
	li $t0, 4
	lw $t1, -4172($fp)
	mul $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, 0($t0)
	sw $t1, -4184($fp)
	lw $t0, -4184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -4188($fp)
	li $t0, 6
	sw $t0, -4192($fp)
	li $t0, 4
	lw $t1, -4192($fp)
	mul $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	lw $t1, -4188($fp)
	add $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, 0($t0)
	sw $t1, -4204($fp)
	lw $t0, -4204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -4208($fp)
	li $t0, 7
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
	addi $t0, $fp, -3640
	sw $t0, -4228($fp)
	li $t0, 8
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
	addi $t0, $fp, -3656
	sw $t0, -4248($fp)
	li $t0, 0
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
	addi $t0, $fp, -3656
	sw $t0, -4268($fp)
	li $t0, 1
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
	addi $t0, $fp, -3656
	sw $t0, -4288($fp)
	li $t0, 2
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
	addi $t0, $fp, -3656
	sw $t0, -4308($fp)
	li $t0, 3
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
	lw $t0, -3996($fp)
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3664
	sw $t0, -4332($fp)
	li $t0, 0
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
	lw $t0, -4348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3664
	sw $t0, -4352($fp)
	li $t0, 1
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
	lw $t0, -4056($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -4376($fp)
	lw $t0, -504($fp)
	sw $t0, -4380($fp)
	lw $t0, -4376($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -4388($fp)
	lw $ra, -4($fp)
	lw $v0, -4388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 18359
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	sw $t0, -4412($fp)
	li $t0, 5897
	sw $t0, -4416($fp)
	addi $t0, $fp, -4400
	sw $t0, -4420($fp)
	li $t0, 0
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4420($fp)
	lw $t1, -4428($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4416($fp)
	lw $t1, -4432($fp)
	sw $t0, 0($t1)
	lw $t0, -4432($fp)
	lw $t1, 0($t0)
	sw $t1, -4436($fp)
	li $t0, 4561
	sw $t0, -4440($fp)
	addi $t0, $fp, -4400
	sw $t0, -4444($fp)
	li $t0, 1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4444($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4440($fp)
	lw $t1, -4456($fp)
	sw $t0, 0($t1)
	lw $t0, -4456($fp)
	lw $t1, 0($t0)
	sw $t1, -4460($fp)
	li $t0, 59806
	sw $t0, -4464($fp)
	addi $t0, $fp, -4400
	sw $t0, -4468($fp)
	li $t0, 2
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4468($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4464($fp)
	lw $t1, -4480($fp)
	sw $t0, 0($t1)
	lw $t0, -4480($fp)
	lw $t1, 0($t0)
	sw $t1, -4484($fp)
	li $t0, 33510
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	sw $t0, -4496($fp)
	lw $t0, -1744($fp)
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	sw $t0, -4504($fp)
	li $t0, 0
	sw $t0, -4508($fp)
	lw $t0, -4492($fp)
	sw $t0, -4512($fp)
	lw $t1, -4512($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label299:
	li $t0, 15639
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label298
label298:
	li $t0, 20316
	sw $t0, -4520($fp)
	lw $t1, -4520($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -4508($fp)
label297:
	li $t0, 16939
	sw $t0, -4524($fp)
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4528($fp)
	addi $sp, $sp, 16
	li $t0, 62400
	sw $t0, -4532($fp)
	lw $t0, -4528($fp)
	lw $t1, -4532($fp)
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	li $t0, 0
	lw $t1, -4536($fp)
	sub $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -4544($fp)
	li $t0, 0
	sw $t0, -4548($fp)
	li $t0, 0
	sw $t0, -4552($fp)
	li $t0, 40331
	sw $t0, -4556($fp)
	lw $t1, -4556($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label302:
	li $t0, 1
	sw $t0, -4552($fp)
label303:
	addi $t0, $fp, -52
	sw $t0, -4560($fp)
	li $t0, 0
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
	li $t0, 28388
	sw $t0, -4580($fp)
	lw $t0, -4576($fp)
	lw $t1, -4580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4584($fp)
	lw $t0, -600($fp)
	sw $t0, -4588($fp)
	li $t0, 0
	lw $t1, -4588($fp)
	sub $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -4584($fp)
	lw $t1, -4592($fp)
	sub $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t1, -4552($fp)
	lw $t2, -4596($fp)
	beq $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -4548($fp)
label301:
	addi $t0, $fp, -4400
	sw $t0, -4600($fp)
	lw $t0, -660($fp)
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
	lw $t0, -1732($fp)
	sw $t0, -4620($fp)
	li $t0, 0
	lw $t1, -4620($fp)
	sub $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4616($fp)
	lw $t1, -4624($fp)
	sub $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -4632($fp)
	li $t0, 16220
	sw $t0, -4636($fp)
	li $t0, 23171
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	sw $t0, -4648($fp)
	li $t0, 19390
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -4660($fp)
	li $t0, 0
	sw $t0, -4664($fp)
	li $t0, 37597
	sw $t0, -4668($fp)
	lw $t1, -4668($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label304:
	li $t0, 1
	sw $t0, -4664($fp)
label305:
	addi $t0, $fp, -1432
	sw $t0, -4672($fp)
	li $t0, 0
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
	lw $t0, -4664($fp)
	lw $t1, -4688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 1846
	sw $t0, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -4696($fp)
label307:
	addi $t0, $fp, -44
	sw $t0, -4704($fp)
	lw $t0, -504($fp)
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
	lw $t0, -4696($fp)
	lw $t1, -4720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4724($fp)
	lw $t0, -4692($fp)
	lw $t1, -4724($fp)
	sub $t0, $t0, $t1
	sw $t0, -4728($fp)
	li $t0, 0
	sw $t0, -4732($fp)
	li $t0, 49
	sw $t0, -4736($fp)
	lw $t1, -4736($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label310
label310:
	addi $t0, $fp, -1480
	sw $t0, -4740($fp)
	lw $t0, -4656($fp)
	sw $t0, -4744($fp)
	li $t0, 4
	lw $t1, -4744($fp)
	mul $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	lw $t1, -4740($fp)
	add $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	lw $t1, 0($t0)
	sw $t1, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 1
	sw $t0, -4732($fp)
label309:
	li $t0, 25542
	sw $t0, -4760($fp)
	li $t0, 0
	lw $t1, -4760($fp)
	sub $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -4768($fp)
	li $t0, 0
	sw $t0, -4772($fp)
	li $t0, 0
	sw $t0, -4776($fp)
	lw $t0, -1552($fp)
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -4776($fp)
label314:
	addi $t0, $fp, -52
	sw $t0, -4784($fp)
	li $t0, 0
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
	lw $t0, -4776($fp)
	lw $t1, -4800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4804($fp)
	li $t0, 0
	sw $t0, -4808($fp)
	li $t0, 11239
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label315:
	li $t0, 1
	sw $t0, -4808($fp)
label316:
	li $t0, 0
	sw $t0, -4816($fp)
	li $t0, 23784
	sw $t0, -4820($fp)
	lw $t0, -1720($fp)
	sw $t0, -4824($fp)
	lw $t0, -4820($fp)
	lw $t1, -4824($fp)
	add $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label319
label319:
	li $t0, 7050
	sw $t0, -4832($fp)
	lw $t1, -4832($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -4816($fp)
label318:
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4836($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -1432
	sw $t0, -4840($fp)
	lw $t0, -4644($fp)
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
	lw $t0, -4836($fp)
	lw $t1, -4856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4860($fp)
	lw $t1, -4804($fp)
	lw $t2, -4860($fp)
	ble $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -4772($fp)
label312:
	li $t0, 0
	sw $t0, -4864($fp)
	li $t0, 0
	sw $t0, -4868($fp)
	lw $t0, -1708($fp)
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label325:
	li $t0, 1
	sw $t0, -4868($fp)
label326:
	li $t0, 65123
	sw $t0, -4876($fp)
	lw $t1, -4868($fp)
	lw $t2, -4876($fp)
	beq $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -4864($fp)
label324:
	addi $t0, $fp, -3640
	sw $t0, -4880($fp)
	lw $t0, -1744($fp)
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
	lw $t0, -3672($fp)
	sw $t0, -4900($fp)
	addi $sp, $sp, -4
	lw $t0, -4864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4900($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4904($fp)
	addi $sp, $sp, 16
	li $t0, 21825
	sw $t0, -4908($fp)
	lw $t0, -4904($fp)
	lw $t1, -4908($fp)
	mul $t0, $t0, $t1
	sw $t0, -4912($fp)
	li $t0, 63978
	sw $t0, -4916($fp)
	lw $t0, -4912($fp)
	lw $t1, -4916($fp)
	add $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t1, -4920($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
label327:
	li $t0, 35822
	sw $t0, -4924($fp)
	li $t0, 0
	sw $t0, -4928($fp)
	li $t0, 40184
	sw $t0, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label331:
	li $t0, 1
	sw $t0, -4928($fp)
label332:
	li $t0, 0
	lw $t1, -4928($fp)
	sub $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4924($fp)
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t1, -4940($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label330
label330:
	li $t0, 4339
	sw $t0, -4944($fp)
	li $t0, 40384
	sw $t0, -4948($fp)
	lw $t0, -4944($fp)
	lw $t1, -4948($fp)
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	li $t0, 0
	sw $t0, -4956($fp)
	li $t0, 0
	sw $t0, -4960($fp)
	lw $t0, -636($fp)
	sw $t0, -4964($fp)
	li $t0, 55374
	sw $t0, -4968($fp)
	lw $t1, -4964($fp)
	lw $t2, -4968($fp)
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -4960($fp)
label336:
	lw $t0, -1708($fp)
	sw $t0, -4972($fp)
	lw $t1, -4960($fp)
	lw $t2, -4972($fp)
	beq $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -4956($fp)
label334:
	li $t0, 54188
	sw $t0, -4976($fp)
	lw $t0, -1732($fp)
	sw $t0, -4980($fp)
	lw $t0, -4976($fp)
	lw $t1, -4980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4984($fp)
	li $t0, 24889
	sw $t0, -4988($fp)
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	mul $t0, $t0, $t1
	sw $t0, -4992($fp)
	li $t0, 0
	sw $t0, -4996($fp)
	li $t0, 58165
	sw $t0, -5000($fp)
	lw $t0, -108($fp)
	sw $t0, -5004($fp)
	lw $t0, -5000($fp)
	lw $t1, -5004($fp)
	add $t0, $t0, $t1
	sw $t0, -5008($fp)
	lw $t0, -636($fp)
	sw $t0, -5012($fp)
	lw $t1, -5008($fp)
	lw $t2, -5012($fp)
	beq $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -4996($fp)
label338:
	lw $t0, -84($fp)
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -5020($fp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5024($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5028($fp)
	addi $t0, $fp, -52
	sw $t0, -5032($fp)
	li $t0, 1
	sw $t0, -5036($fp)
	li $t0, 4
	lw $t1, -5036($fp)
	mul $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	lw $t1, -5032($fp)
	add $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	lw $t1, 0($t0)
	sw $t1, -5048($fp)
	lw $t0, -432($fp)
	sw $t0, -5052($fp)
	lw $t0, -5048($fp)
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -120($fp)
	sw $t0, -5060($fp)
	lw $t0, -1948($fp)
	sw $t0, -5064($fp)
	lw $t0, -5060($fp)
	lw $t1, -5064($fp)
	add $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t0, -4056($fp)
	sw $t0, -5072($fp)
	lw $t0, -5068($fp)
	lw $t1, -5072($fp)
	sub $t0, $t0, $t1
	sw $t0, -5076($fp)
	li $t0, 0
	sw $t0, -5080($fp)
	lw $t0, -600($fp)
	sw $t0, -5084($fp)
	li $t0, 34454
	sw $t0, -5088($fp)
	lw $t1, -5084($fp)
	lw $t2, -5088($fp)
	bge $t1, $t2, label343
	j label342
label343:
	lw $t0, -108($fp)
	sw $t0, -5092($fp)
	lw $t1, -5092($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -5080($fp)
label342:
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5080($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5096($fp)
	addi $sp, $sp, 16
	li $t0, 50093
	sw $t0, -5100($fp)
	lw $t1, -5096($fp)
	lw $t2, -5100($fp)
	bgt $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -5028($fp)
label340:
	addi $sp, $sp, -4
	lw $t0, -4956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5104($fp)
	addi $sp, $sp, 16
	lw $t1, -4952($fp)
	lw $t2, -5104($fp)
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 26052
	sw $t0, -5108($fp)
	lw $ra, -4($fp)
	lw $v0, -5108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label327
label329:
	j label322
label321:
	li $t0, 53277
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	sw $t0, -5120($fp)
	li $t0, 0
	sw $t0, -5124($fp)
	lw $t0, -1960($fp)
	sw $t0, -5128($fp)
	addi $t0, $fp, -64
	sw $t0, -5132($fp)
	li $t0, 6058
	sw $t0, -5136($fp)
	lw $t0, -84($fp)
	sw $t0, -5140($fp)
	lw $t0, -5136($fp)
	lw $t1, -5140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5144($fp)
	li $t0, 4
	lw $t1, -5144($fp)
	mul $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	lw $t1, -5132($fp)
	add $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	lw $t1, 0($t0)
	sw $t1, -5156($fp)
	lw $t1, -5128($fp)
	lw $t2, -5156($fp)
	bne $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -5124($fp)
label345:
	addi $t0, $fp, -3656
	sw $t0, -5160($fp)
	addi $t0, $fp, -1448
	sw $t0, -5164($fp)
	lw $t0, -2224($fp)
	sw $t0, -5168($fp)
	li $t0, 4
	lw $t1, -5168($fp)
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, -5164($fp)
	add $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, 0($t0)
	sw $t1, -5180($fp)
	li $t0, 0
	sw $t0, -5184($fp)
	li $t0, 49224
	sw $t0, -5188($fp)
	lw $t0, -456($fp)
	sw $t0, -5192($fp)
	lw $t1, -5188($fp)
	lw $t2, -5192($fp)
	bgt $t1, $t2, label348
	j label347
label348:
	li $t0, 7131
	sw $t0, -5196($fp)
	lw $t1, -5196($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -5184($fp)
label347:
	addi $t0, $fp, -3640
	sw $t0, -5200($fp)
	lw $t0, -2284($fp)
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
	addi $sp, $sp, -4
	lw $t0, -5180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5216($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5220($fp)
	addi $sp, $sp, 16
	lw $t0, -5116($fp)
	sw $t0, -5224($fp)
	li $t0, 0
	lw $t1, -5224($fp)
	sub $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5220($fp)
	lw $t1, -5228($fp)
	add $t0, $t0, $t1
	sw $t0, -5232($fp)
	li $t0, 4
	lw $t1, -5232($fp)
	mul $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, 0($t0)
	sw $t1, -5244($fp)
label322:
	addi $t0, $fp, -3664
	sw $t0, -5248($fp)
	li $t0, 0
	sw $t0, -5252($fp)
	li $t0, 43656
	sw $t0, -5256($fp)
	lw $t0, -3996($fp)
	sw $t0, -5260($fp)
	lw $t0, -5256($fp)
	lw $t1, -5260($fp)
	sub $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -2236($fp)
	sw $t0, -5268($fp)
	lw $t1, -5264($fp)
	lw $t2, -5268($fp)
	bge $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -5252($fp)
label350:
	li $t0, 4
	lw $t1, -5252($fp)
	mul $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	lw $t1, -5248($fp)
	add $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, 0($t0)
	sw $t1, -5280($fp)
	li $t0, 0
	lw $t1, -5280($fp)
	sub $t0, $t0, $t1
	sw $t0, -5284($fp)
	li $t0, 0
	sw $t0, -5288($fp)
	addi $t0, $fp, -52
	sw $t0, -5292($fp)
	lw $t0, -456($fp)
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
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	li $t0, 1
	sw $t0, -5288($fp)
label355:
	li $t0, 0
	lw $t1, -5288($fp)
	sub $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t1, -5312($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label351
label351:
	lw $t0, -600($fp)
	sw $t0, -5316($fp)
	li $t0, 0
	sw $t0, -5320($fp)
	li $t0, 26830
	sw $t0, -5324($fp)
	lw $t1, -5324($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label359:
	li $t0, 1
	sw $t0, -5320($fp)
label360:
	lw $t0, -5316($fp)
	lw $t1, -5320($fp)
	sub $t0, $t0, $t1
	sw $t0, -5328($fp)
	addi $t0, $fp, -44
	sw $t0, -5332($fp)
	li $t0, 0
	sw $t0, -5336($fp)
	li $t0, 51374
	sw $t0, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label363:
	lw $t0, -372($fp)
	sw $t0, -5344($fp)
	lw $t1, -5344($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -5336($fp)
label362:
	li $t0, 4
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, 0($t0)
	sw $t1, -5356($fp)
	lw $t1, -5328($fp)
	lw $t2, -5356($fp)
	bge $t1, $t2, label356
	j label357
label356:
	addi $t0, $fp, -64
	sw $t0, -5360($fp)
	lw $t0, -1960($fp)
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
	li $t0, 45502
	sw $t0, -5380($fp)
	li $t0, 26880
	sw $t0, -5384($fp)
	lw $t0, -5380($fp)
	lw $t1, -5384($fp)
	mul $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -492($fp)
	sw $t0, -5392($fp)
	li $t0, 0
	lw $t1, -5392($fp)
	sub $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5388($fp)
	lw $t1, -5396($fp)
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5376($fp)
	lw $t1, -5400($fp)
	add $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t1, -5404($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
	lw $t0, -636($fp)
	sw $t0, -5408($fp)
	li $t0, 11380
	sw $t0, -5412($fp)
	lw $t0, -5408($fp)
	lw $t1, -5412($fp)
	mul $t0, $t0, $t1
	sw $t0, -5416($fp)
	addi $t0, $fp, -3656
	sw $t0, -5420($fp)
	lw $t0, -444($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -5428($fp)
	li $t0, 4
	lw $t1, -5428($fp)
	mul $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, -5420($fp)
	add $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, 0($t0)
	sw $t1, -5440($fp)
	lw $t0, -5416($fp)
	lw $t1, -5440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5444($fp)
	j label366
label365:
	li $t0, 5567
	sw $t0, -5448($fp)
label366:
	j label358
label357:
	li $t0, 0
	sw $t0, -5452($fp)
	lw $t0, -1696($fp)
	sw $t0, -5456($fp)
	lw $t1, -5456($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -5452($fp)
label368:
	lw $t0, -5452($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -5460($fp)
label358:
label352:
	lw $t0, -1564($fp)
	sw $t0, -5464($fp)
	lw $t1, -5464($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 0
	sw $t0, -5468($fp)
	li $t0, 0
	sw $t0, -5472($fp)
	lw $t0, -444($fp)
	sw $t0, -5476($fp)
	lw $t1, -5476($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label377
label377:
	li $t0, 1
	sw $t0, -5472($fp)
label378:
	li $t0, 62518
	sw $t0, -5480($fp)
	lw $t0, -5472($fp)
	lw $t1, -5480($fp)
	add $t0, $t0, $t1
	sw $t0, -5484($fp)
	addi $t0, $fp, -1520
	sw $t0, -5488($fp)
	li $t0, 5
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
	lw $t1, -5484($fp)
	lw $t2, -5504($fp)
	ble $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -5468($fp)
label376:
	li $t0, 8221
	sw $t0, -5508($fp)
	lw $t1, -5468($fp)
	lw $t2, -5508($fp)
	blt $t1, $t2, label372
	j label373
label372:
	li $t0, 0
	sw $t0, -5512($fp)
	li $t0, 0
	sw $t0, -5516($fp)
	li $t0, 34442
	sw $t0, -5520($fp)
	lw $t1, -5520($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label382
label382:
	li $t0, 1
	sw $t0, -5516($fp)
label383:
	li $t0, 0
	sw $t0, -5524($fp)
	li $t0, 34752
	sw $t0, -5528($fp)
	lw $t1, -5528($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label384:
	li $t0, 1
	sw $t0, -5524($fp)
label385:
	li $t0, 0
	lw $t1, -5524($fp)
	sub $t0, $t0, $t1
	sw $t0, -5532($fp)
	addi $sp, $sp, -4
	lw $t0, -5516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5536($fp)
	addi $sp, $sp, 12
	li $t0, 9090
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -5544($fp)
	addi $t0, $fp, -44
	sw $t0, -5548($fp)
	li $t0, 8
	sw $t0, -5552($fp)
	li $t0, 4
	lw $t1, -5552($fp)
	mul $t0, $t0, $t1
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	lw $t1, -5548($fp)
	add $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	lw $t1, 0($t0)
	sw $t1, -5564($fp)
	addi $sp, $sp, -4
	lw $t0, -5544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5568($fp)
	addi $sp, $sp, 12
	lw $t0, -5536($fp)
	lw $t1, -5568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5572($fp)
	addi $t0, $fp, -64
	sw $t0, -5576($fp)
	li $t0, 0
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
	lw $t0, -5572($fp)
	lw $t1, -5592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5596($fp)
	li $t0, 0
	lw $t1, -5596($fp)
	sub $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t1, -5600($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label381
label381:
	addi $t0, $fp, -64
	sw $t0, -5604($fp)
	lw $t0, 4($fp)
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
	li $t0, 43544
	sw $t0, -5624($fp)
	lw $t0, -5620($fp)
	lw $t1, -5624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5628($fp)
	lw $t1, -5628($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -5512($fp)
label380:
	lw $ra, -4($fp)
	lw $v0, -5512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label374
label373:
	li $t0, 0
	sw $t0, -5632($fp)
	addi $t0, $fp, -44
	sw $t0, -5636($fp)
	lw $t0, -1708($fp)
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
	li $t0, 25862
	sw $t0, -5656($fp)
	lw $t0, -5652($fp)
	lw $t1, -5656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5660($fp)
	li $t0, 37210
	sw $t0, -5664($fp)
	li $t0, 28102
	sw $t0, -5668($fp)
	lw $t0, -5664($fp)
	lw $t1, -5668($fp)
	sub $t0, $t0, $t1
	sw $t0, -5672($fp)
	li $t0, 41481
	sw $t0, -5676($fp)
	lw $t0, -5672($fp)
	lw $t1, -5676($fp)
	sub $t0, $t0, $t1
	sw $t0, -5680($fp)
	li $t0, 0
	sw $t0, -5684($fp)
	li $t0, 0
	sw $t0, -5688($fp)
	lw $t0, -504($fp)
	sw $t0, -5692($fp)
	li $t0, 48851
	sw $t0, -5696($fp)
	lw $t1, -5692($fp)
	lw $t2, -5696($fp)
	blt $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -5688($fp)
label391:
	lw $t0, -2212($fp)
	sw $t0, -5700($fp)
	lw $t1, -5688($fp)
	lw $t2, -5700($fp)
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -5684($fp)
label389:
	addi $sp, $sp, -4
	lw $t0, -5660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5684($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5704($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -52
	sw $t0, -5708($fp)
	lw $t0, -2248($fp)
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
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -5632($fp)
label387:
	lw $ra, -4($fp)
	lw $v0, -5632($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label374:
	j label371
label370:
label392:
	addi $t0, $fp, -44
	sw $t0, -5728($fp)
	lw $t0, -1696($fp)
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
	lw $t0, -1948($fp)
	sw $t0, -5748($fp)
	lw $t0, -5744($fp)
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	li $t0, 0
	sw $t0, -5756($fp)
	lw $t0, -2224($fp)
	sw $t0, -5760($fp)
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label398
label398:
	li $t0, 52991
	sw $t0, -5764($fp)
	lw $t1, -5764($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label397
label397:
	lw $t0, -600($fp)
	sw $t0, -5768($fp)
	lw $t1, -5768($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -5756($fp)
label396:
	lw $t0, -1552($fp)
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -5776($fp)
	addi $sp, $sp, -4
	lw $t0, -5752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5776($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5780($fp)
	addi $sp, $sp, 16
	lw $t1, -5780($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 0
	sw $t0, -5784($fp)
	li $t0, 51914
	sw $t0, -5788($fp)
	lw $t0, -456($fp)
	sw $t0, -5792($fp)
	lw $t0, -5788($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -444($fp)
	sw $t0, -5800($fp)
	lw $t0, -5796($fp)
	lw $t1, -5800($fp)
	add $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t0, -600($fp)
	sw $t0, -5808($fp)
	li $t0, 31319
	sw $t0, -5812($fp)
	lw $t0, -5808($fp)
	lw $t1, -5812($fp)
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	li $t0, 0
	lw $t1, -5816($fp)
	sub $t0, $t0, $t1
	sw $t0, -5820($fp)
	li $t0, 0
	sw $t0, -5824($fp)
	addi $t0, $fp, -1480
	sw $t0, -5828($fp)
	lw $t0, -2212($fp)
	sw $t0, -5832($fp)
	li $t0, 4
	lw $t1, -5832($fp)
	mul $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	lw $t1, -5828($fp)
	add $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	lw $t1, 0($t0)
	sw $t1, -5844($fp)
	lw $t0, -72($fp)
	sw $t0, -5848($fp)
	lw $t1, -5844($fp)
	lw $t2, -5848($fp)
	beq $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -5824($fp)
label402:
	addi $sp, $sp, -4
	lw $t0, -5804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5824($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5852($fp)
	addi $sp, $sp, 16
	lw $t0, -2236($fp)
	sw $t0, -5856($fp)
	lw $t0, -1960($fp)
	sw $t0, -5860($fp)
	lw $t0, -5856($fp)
	lw $t1, -5860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5864($fp)
	lw $t1, -5852($fp)
	lw $t2, -5864($fp)
	ble $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -5784($fp)
label400:
	lw $t0, -5784($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -5868($fp)
	lw $ra, -4($fp)
	lw $v0, -5868($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label392
label394:
label371:
	lw $t0, -72($fp)
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5892($fp)
	li $t0, 0
	sw $t0, -5896($fp)
	li $t0, 4
	lw $t1, -5896($fp)
	mul $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	lw $t1, -5892($fp)
	add $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, 0($t0)
	sw $t1, -5908($fp)
	lw $t0, -5908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5912($fp)
	li $t0, 1
	sw $t0, -5916($fp)
	li $t0, 4
	lw $t1, -5916($fp)
	mul $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t0, -5920($fp)
	lw $t1, -5912($fp)
	add $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	lw $t1, 0($t0)
	sw $t1, -5928($fp)
	lw $t0, -5928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5932($fp)
	li $t0, 2
	sw $t0, -5936($fp)
	li $t0, 4
	lw $t1, -5936($fp)
	mul $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	lw $t1, -5932($fp)
	add $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	lw $t1, 0($t0)
	sw $t1, -5948($fp)
	lw $t0, -5948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5952($fp)
	li $t0, 3
	sw $t0, -5956($fp)
	li $t0, 4
	lw $t1, -5956($fp)
	mul $t0, $t0, $t1
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	lw $t1, -5952($fp)
	add $t0, $t0, $t1
	sw $t0, -5964($fp)
	lw $t0, -5964($fp)
	lw $t1, 0($t0)
	sw $t1, -5968($fp)
	lw $t0, -5968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5972($fp)
	li $t0, 4
	sw $t0, -5976($fp)
	li $t0, 4
	lw $t1, -5976($fp)
	mul $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	lw $t1, -5972($fp)
	add $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	lw $t1, 0($t0)
	sw $t1, -5988($fp)
	lw $t0, -5988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5992($fp)
	li $t0, 5
	sw $t0, -5996($fp)
	li $t0, 4
	lw $t1, -5996($fp)
	mul $t0, $t0, $t1
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	lw $t1, -5992($fp)
	add $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	lw $t1, 0($t0)
	sw $t1, -6008($fp)
	lw $t0, -6008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6012($fp)
	li $t0, 6
	sw $t0, -6016($fp)
	li $t0, 4
	lw $t1, -6016($fp)
	mul $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t0, -6020($fp)
	lw $t1, -6012($fp)
	add $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	lw $t1, 0($t0)
	sw $t1, -6028($fp)
	lw $t0, -6028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6032($fp)
	li $t0, 7
	sw $t0, -6036($fp)
	li $t0, 4
	lw $t1, -6036($fp)
	mul $t0, $t0, $t1
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	lw $t1, -6032($fp)
	add $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	lw $t1, 0($t0)
	sw $t1, -6048($fp)
	lw $t0, -6048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6052($fp)
	li $t0, 8
	sw $t0, -6056($fp)
	li $t0, 4
	lw $t1, -6056($fp)
	mul $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	lw $t1, -6052($fp)
	add $t0, $t0, $t1
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	lw $t1, 0($t0)
	sw $t1, -6068($fp)
	lw $t0, -6068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6072($fp)
	li $t0, 9
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
	lw $t0, -6088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6096($fp)
	li $t0, 0
	sw $t0, -6100($fp)
	li $t0, 4
	lw $t1, -6100($fp)
	mul $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	lw $t1, -6096($fp)
	add $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	lw $t1, 0($t0)
	sw $t1, -6112($fp)
	lw $t0, -6112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6116($fp)
	li $t0, 1
	sw $t0, -6120($fp)
	li $t0, 4
	lw $t1, -6120($fp)
	mul $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	lw $t1, -6116($fp)
	add $t0, $t0, $t1
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	lw $t1, 0($t0)
	sw $t1, -6132($fp)
	lw $t0, -6132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6164($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -6184($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -6204($fp)
	li $t0, 2
	sw $t0, -6208($fp)
	li $t0, 4
	lw $t1, -6208($fp)
	mul $t0, $t0, $t1
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	lw $t1, -6204($fp)
	add $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	lw $t1, 0($t0)
	sw $t1, -6220($fp)
	lw $t0, -6220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -6236($fp)
	lw $t0, -6236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -6240($fp)
	lw $t0, -6240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6252($fp)
	li $t0, 40732
	sw $t0, -6256($fp)
	lw $t0, -108($fp)
	sw $t0, -6260($fp)
	lw $t0, -660($fp)
	sw $t0, -6264($fp)
	lw $t0, -6260($fp)
	lw $t1, -6264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6268($fp)
	li $t0, 37377
	sw $t0, -6272($fp)
	lw $t0, -6268($fp)
	lw $t1, -6272($fp)
	mul $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t1, -6256($fp)
	lw $t2, -6276($fp)
	ble $t1, $t2, label403
	j label405
label405:
	li $t0, 0
	sw $t0, -6280($fp)
	lw $t0, -636($fp)
	sw $t0, -6284($fp)
	lw $t1, -6284($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label406:
	li $t0, 1
	sw $t0, -6280($fp)
label407:
	lw $t0, -636($fp)
	sw $t0, -6288($fp)
	lw $t0, -6280($fp)
	lw $t1, -6288($fp)
	mul $t0, $t0, $t1
	sw $t0, -6292($fp)
	li $t0, 35602
	sw $t0, -6296($fp)
	lw $t0, -6292($fp)
	lw $t1, -6296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -6252($fp)
label404:
	lw $ra, -4($fp)
	lw $v0, -6252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5320
	li $t0, 47863
	sw $t0, -56($fp)
	addi $t0, $fp, -12
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
	li $t0, 15497
	sw $t0, -80($fp)
	addi $t0, $fp, -12
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
	li $t0, 62433
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 33701
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 60999
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 23777
	sw $t0, -140($fp)
	addi $t0, $fp, -52
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
	li $t0, 45082
	sw $t0, -164($fp)
	addi $t0, $fp, -52
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
	li $t0, 1030
	sw $t0, -188($fp)
	addi $t0, $fp, -52
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
	li $t0, 20759
	sw $t0, -212($fp)
	addi $t0, $fp, -52
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
	li $t0, 14711
	sw $t0, -236($fp)
	addi $t0, $fp, -52
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
	li $t0, 13648
	sw $t0, -260($fp)
	addi $t0, $fp, -52
	sw $t0, -264($fp)
	li $t0, 5
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
	li $t0, 28980
	sw $t0, -284($fp)
	addi $t0, $fp, -52
	sw $t0, -288($fp)
	li $t0, 6
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
	li $t0, 49463
	sw $t0, -308($fp)
	addi $t0, $fp, -52
	sw $t0, -312($fp)
	li $t0, 7
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
	li $t0, 48090
	sw $t0, -332($fp)
	addi $t0, $fp, -52
	sw $t0, -336($fp)
	li $t0, 8
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
	li $t0, 35643
	sw $t0, -356($fp)
	addi $t0, $fp, -52
	sw $t0, -360($fp)
	li $t0, 9
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
	li $t0, 54501
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
label408:
	lw $t0, -120($fp)
	sw $t0, -392($fp)
	li $t0, 57181
	sw $t0, -396($fp)
	lw $t0, -392($fp)
	lw $t1, -396($fp)
	mul $t0, $t0, $t1
	sw $t0, -400($fp)
	li $t0, 0
	sw $t0, -404($fp)
	addi $t0, $fp, -12
	sw $t0, -408($fp)
	lw $t0, -120($fp)
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
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -404($fp)
label412:
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -428($fp)
	li $t0, 0
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	li $t0, 46645
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 34388
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 35189
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 29960
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 6062
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 63291
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 5905
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 31924
	sw $t0, -536($fp)
	addi $t0, $fp, -444
	sw $t0, -540($fp)
	li $t0, 0
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
	li $t0, 50746
	sw $t0, -560($fp)
	addi $t0, $fp, -444
	sw $t0, -564($fp)
	li $t0, 1
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
	li $t0, 37224
	sw $t0, -584($fp)
	addi $t0, $fp, -444
	sw $t0, -588($fp)
	li $t0, 2
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
	li $t0, 18302
	sw $t0, -608($fp)
	addi $t0, $fp, -448
	sw $t0, -612($fp)
	li $t0, 0
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -612($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -608($fp)
	lw $t1, -624($fp)
	sw $t0, 0($t1)
	lw $t0, -624($fp)
	lw $t1, 0($t0)
	sw $t1, -628($fp)
	li $t0, 25942
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 9066
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 53905
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 8270
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 24563
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 50802
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
label413:
	addi $t0, $fp, -448
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	lw $t0, -504($fp)
	sw $t0, -712($fp)
	li $t0, 41971
	sw $t0, -716($fp)
	lw $t1, -712($fp)
	lw $t2, -716($fp)
	beq $t1, $t2, label416
	j label418
label418:
	lw $t0, -672($fp)
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -708($fp)
label417:
	li $t0, 4
	lw $t1, -708($fp)
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	lw $t1, -704($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	lw $t1, 0($t0)
	sw $t1, -732($fp)
	li $t0, 36228
	sw $t0, -736($fp)
	li $t0, 34705
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	sub $t0, $t0, $t1
	sw $t0, -744($fp)
	li $t0, 0
	sw $t0, -748($fp)
	lw $t0, -468($fp)
	sw $t0, -752($fp)
	li $t0, 21057
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	li $t0, 29802
	sw $t0, -764($fp)
	lw $t1, -760($fp)
	lw $t2, -764($fp)
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -748($fp)
label420:
	li $t0, 0
	sw $t0, -768($fp)
	li $t0, 0
	sw $t0, -772($fp)
	lw $t0, 12($fp)
	sw $t0, -776($fp)
	li $t0, 21517
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -784($fp)
	lw $t1, -784($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label425
label425:
	lw $t0, -516($fp)
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -772($fp)
label424:
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, -528($fp)
	sw $t0, -796($fp)
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label427
label429:
	lw $t0, -684($fp)
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label428:
	li $t0, 9043
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -792($fp)
label427:
	lw $t0, 12($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -812($fp)
	addi $sp, $sp, -4
	lw $t0, -772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -816($fp)
	addi $sp, $sp, 16
	lw $t0, -480($fp)
	sw $t0, -820($fp)
	lw $t1, -816($fp)
	lw $t2, -820($fp)
	ble $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -768($fp)
label422:
	li $t0, 0
	sw $t0, -824($fp)
	lw $t0, -660($fp)
	sw $t0, -828($fp)
	li $t0, 20027
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	ble $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -824($fp)
label431:
	addi $sp, $sp, -4
	lw $t0, -744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -836($fp)
	addi $sp, $sp, 20
	lw $t0, -732($fp)
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 58782
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 20155
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 17260
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 28889
	sw $t0, -892($fp)
	addi $t0, $fp, -852
	sw $t0, -896($fp)
	li $t0, 0
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
	li $t0, 9121
	sw $t0, -916($fp)
	addi $t0, $fp, -852
	sw $t0, -920($fp)
	li $t0, 1
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
	li $t0, 8905
	sw $t0, -940($fp)
	addi $t0, $fp, -852
	sw $t0, -944($fp)
	li $t0, 2
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
	li $t0, 9998
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 43509
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 44094
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 39958
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 49571
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 41850
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 45864
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 15959
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 27060
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 17552
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 34261
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 53003
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	addi $t0, $fp, -12
	sw $t0, -1108($fp)
	li $t0, 0
	sw $t0, -1112($fp)
	lw $t0, -696($fp)
	sw $t0, -1116($fp)
	li $t0, 26618
	sw $t0, -1120($fp)
	lw $t1, -1116($fp)
	lw $t2, -1120($fp)
	bge $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -1112($fp)
label436:
	li $t0, 4
	lw $t1, -1112($fp)
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
	li $t0, 22630
	sw $t0, -1136($fp)
	lw $t0, -1132($fp)
	lw $t1, -1136($fp)
	mul $t0, $t0, $t1
	sw $t0, -1140($fp)
	li $t0, 0
	lw $t1, -1140($fp)
	sub $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 61273
	sw $t0, -1180($fp)
	addi $t0, $fp, -1176
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
	li $t0, 51182
	sw $t0, -1204($fp)
	addi $t0, $fp, -1176
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
	li $t0, 7896
	sw $t0, -1228($fp)
	addi $t0, $fp, -1176
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
	li $t0, 37708
	sw $t0, -1252($fp)
	addi $t0, $fp, -1176
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
	li $t0, 5673
	sw $t0, -1276($fp)
	addi $t0, $fp, -1176
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
	li $t0, 16939
	sw $t0, -1300($fp)
	addi $t0, $fp, -1176
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
	li $t0, 59226
	sw $t0, -1324($fp)
	addi $t0, $fp, -1176
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
	li $t0, 26730
	sw $t0, -1348($fp)
	addi $t0, $fp, -1176
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
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	li $t0, 50074
	sw $t0, -1380($fp)
	li $t0, 0
	lw $t1, -1380($fp)
	sub $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label439
label439:
	li $t0, 1
	sw $t0, -1376($fp)
label440:
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 61436
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label442
label443:
	li $t0, 39987
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -1388($fp)
label442:
	li $t0, 29918
	sw $t0, -1400($fp)
	lw $t0, -1028($fp)
	sw $t0, -1404($fp)
	lw $t0, -1400($fp)
	lw $t1, -1404($fp)
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -884($fp)
	sw $t0, -1412($fp)
	lw $t0, -528($fp)
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1420($fp)
	li $t0, 46741
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1432($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -1372($fp)
label438:
	addi $t0, $fp, -1176
	sw $t0, -1440($fp)
	lw $t0, -528($fp)
	sw $t0, -1444($fp)
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 13160
	sw $t0, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label444
label444:
	li $t0, 1
	sw $t0, -1448($fp)
label445:
	lw $t0, -1444($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1456($fp)
	li $t0, 4
	lw $t1, -1456($fp)
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, 0($t0)
	sw $t1, -1468($fp)
	j label434
label433:
	li $t0, 0
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	lw $t0, -1004($fp)
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label451
label451:
	li $t0, 3340
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label450
label450:
	lw $t0, -492($fp)
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -1476($fp)
label449:
	lw $t0, -516($fp)
	sw $t0, -1492($fp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1496($fp)
	addi $sp, $sp, 12
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label446:
	li $t0, 1
	sw $t0, -1472($fp)
label447:
	lw $t0, -1472($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1500($fp)
label434:
	li $t0, 59195
	sw $t0, -1576($fp)
	addi $t0, $fp, -1536
	sw $t0, -1580($fp)
	li $t0, 0
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
	li $t0, 22065
	sw $t0, -1600($fp)
	addi $t0, $fp, -1536
	sw $t0, -1604($fp)
	li $t0, 1
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
	li $t0, 13338
	sw $t0, -1624($fp)
	addi $t0, $fp, -1536
	sw $t0, -1628($fp)
	li $t0, 2
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
	li $t0, 37168
	sw $t0, -1648($fp)
	addi $t0, $fp, -1536
	sw $t0, -1652($fp)
	li $t0, 3
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
	li $t0, 623
	sw $t0, -1672($fp)
	addi $t0, $fp, -1536
	sw $t0, -1676($fp)
	li $t0, 4
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
	li $t0, 53297
	sw $t0, -1696($fp)
	addi $t0, $fp, -1536
	sw $t0, -1700($fp)
	li $t0, 5
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
	li $t0, 21203
	sw $t0, -1720($fp)
	addi $t0, $fp, -1536
	sw $t0, -1724($fp)
	li $t0, 6
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
	li $t0, 42473
	sw $t0, -1744($fp)
	addi $t0, $fp, -1536
	sw $t0, -1748($fp)
	li $t0, 7
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
	li $t0, 33625
	sw $t0, -1768($fp)
	addi $t0, $fp, -1536
	sw $t0, -1772($fp)
	li $t0, 8
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
	li $t0, 37162
	sw $t0, -1792($fp)
	addi $t0, $fp, -1560
	sw $t0, -1796($fp)
	li $t0, 0
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
	li $t0, 3998
	sw $t0, -1816($fp)
	addi $t0, $fp, -1560
	sw $t0, -1820($fp)
	li $t0, 1
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
	li $t0, 51177
	sw $t0, -1840($fp)
	addi $t0, $fp, -1560
	sw $t0, -1844($fp)
	li $t0, 2
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
	li $t0, 5887
	sw $t0, -1864($fp)
	addi $t0, $fp, -1560
	sw $t0, -1868($fp)
	li $t0, 3
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
	li $t0, 57001
	sw $t0, -1888($fp)
	addi $t0, $fp, -1560
	sw $t0, -1892($fp)
	li $t0, 4
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
	li $t0, 12260
	sw $t0, -1912($fp)
	addi $t0, $fp, -1560
	sw $t0, -1916($fp)
	li $t0, 5
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
	li $t0, 28518
	sw $t0, -1936($fp)
	addi $t0, $fp, -1572
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
	li $t0, 52738
	sw $t0, -1960($fp)
	addi $t0, $fp, -1572
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
	li $t0, 63442
	sw $t0, -1984($fp)
	addi $t0, $fp, -1572
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
	li $t0, 36414
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	li $t0, 24910
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -2028($fp)
	addi $t0, $fp, -1572
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	addi $t0, $fp, -444
	sw $t0, -2040($fp)
	li $t0, 1
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
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label454
label454:
	lw $t0, -980($fp)
	sw $t0, -2060($fp)
	lw $t1, -2060($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -2036($fp)
label453:
	li $t0, 0
	sw $t0, -2064($fp)
	li $t0, 34559
	sw $t0, -2068($fp)
	li $t0, 48519
	sw $t0, -2072($fp)
	lw $t1, -2068($fp)
	lw $t2, -2072($fp)
	bgt $t1, $t2, label457
	j label456
label457:
	li $t0, 26209
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -2064($fp)
label456:
	lw $t0, -1100($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	lw $t0, -1016($fp)
	sw $t0, -2092($fp)
	li $t0, 0
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	li $t0, 30309
	sw $t0, -2100($fp)
	lw $t1, -2096($fp)
	lw $t2, -2100($fp)
	blt $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -2088($fp)
label459:
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2104($fp)
	addi $sp, $sp, 16
	lw $t0, -132($fp)
	sw $t0, -2108($fp)
	lw $t0, -2104($fp)
	lw $t1, -2108($fp)
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	li $t0, 0
	sw $t0, -2116($fp)
	addi $t0, $fp, -1560
	sw $t0, -2120($fp)
	li $t0, 0
	sw $t0, -2124($fp)
	li $t0, 4
	lw $t1, -2124($fp)
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	lw $t1, 0($t0)
	sw $t1, -2136($fp)
	lw $t0, -120($fp)
	sw $t0, -2140($fp)
	lw $t1, -2136($fp)
	lw $t2, -2140($fp)
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -2116($fp)
label461:
	lw $t0, -2012($fp)
	sw $t0, -2144($fp)
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2148($fp)
	addi $sp, $sp, 16
	lw $t0, -884($fp)
	sw $t0, -2152($fp)
	lw $t0, -2148($fp)
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 3579
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -2160($fp)
label463:
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2168($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -2168($fp)
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	lw $t1, 0($t0)
	sw $t1, -2180($fp)
	li $t0, 0
	sw $t0, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	addi $t0, $fp, -1536
	sw $t0, -2192($fp)
	lw $t0, -384($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -2200($fp)
	li $t0, 4
	lw $t1, -2200($fp)
	mul $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	lw $t1, 0($t0)
	sw $t1, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label466
label466:
	li $t0, 1
	sw $t0, -2188($fp)
label467:
	lw $t0, -884($fp)
	sw $t0, -2216($fp)
	lw $t1, -2188($fp)
	lw $t2, -2216($fp)
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -2184($fp)
label465:
	li $t0, 0
	sw $t0, -2220($fp)
	addi $t0, $fp, -444
	sw $t0, -2224($fp)
	li $t0, 0
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	lw $t0, -1052($fp)
	sw $t0, -2236($fp)
	lw $t0, -2024($fp)
	sw $t0, -2240($fp)
	lw $t1, -2236($fp)
	lw $t2, -2240($fp)
	beq $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -2232($fp)
label473:
	lw $t0, -968($fp)
	sw $t0, -2244($fp)
	lw $t1, -2232($fp)
	lw $t2, -2244($fp)
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -2228($fp)
label471:
	li $t0, 0
	sw $t0, -2248($fp)
	li $t0, 0
	sw $t0, -2252($fp)
	li $t0, 39369
	sw $t0, -2256($fp)
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label476
label476:
	li $t0, 1
	sw $t0, -2252($fp)
label477:
	lw $t0, -980($fp)
	sw $t0, -2260($fp)
	lw $t1, -2252($fp)
	lw $t2, -2260($fp)
	beq $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -2248($fp)
label475:
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -456($fp)
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label481
label481:
	lw $t0, -528($fp)
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label480
label480:
	lw $t0, -860($fp)
	sw $t0, -2276($fp)
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -2264($fp)
label479:
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2280($fp)
	addi $sp, $sp, 16
	li $t0, 12351
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2288($fp)
	li $t0, 4
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t0, 8($fp)
	sw $t0, -2304($fp)
	lw $t1, -2300($fp)
	lw $t2, -2304($fp)
	bgt $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -2220($fp)
label469:
	lw $t0, -1004($fp)
	sw $t0, -2308($fp)
	li $t0, 0
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -504($fp)
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	sub $t0, $t0, $t1
	sw $t0, -2320($fp)
label482:
	lw $t0, -980($fp)
	sw $t0, -2324($fp)
	li $t0, 0
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2328($fp)
	li $t0, 0
	sw $t0, -2332($fp)
	li $t0, 26716
	sw $t0, -2336($fp)
	li $t0, 0
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label485:
	li $t0, 1
	sw $t0, -2332($fp)
label486:
	lw $t1, -2328($fp)
	lw $t2, -2332($fp)
	beq $t1, $t2, label483
	j label484
label483:
	li $t0, 0
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	li $t0, 38995
	sw $t0, -2352($fp)
	li $t0, 47076
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -120($fp)
	sw $t0, -2364($fp)
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	li $t0, 0
	sw $t0, -2372($fp)
	li $t0, 13451
	sw $t0, -2376($fp)
	li $t0, 0
	lw $t1, -2376($fp)
	sub $t0, $t0, $t1
	sw $t0, -2380($fp)
	li $t0, 0
	lw $t1, -2380($fp)
	sub $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -684($fp)
	sw $t0, -2388($fp)
	li $t0, 62058
	sw $t0, -2392($fp)
	lw $t0, -2388($fp)
	lw $t1, -2392($fp)
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	li $t0, 0
	lw $t1, -2396($fp)
	sub $t0, $t0, $t1
	sw $t0, -2400($fp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2404($fp)
	addi $sp, $sp, 12
	li $t0, 19551
	sw $t0, -2408($fp)
	lw $t1, -2404($fp)
	lw $t2, -2408($fp)
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -2372($fp)
label492:
	li $t0, 0
	sw $t0, -2412($fp)
	li $t0, 63884
	sw $t0, -2416($fp)
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label495
label495:
	lw $t0, -992($fp)
	sw $t0, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -2412($fp)
label494:
	li $t0, 61434
	sw $t0, -2424($fp)
	li $t0, 25690
	sw $t0, -2428($fp)
	lw $t0, -2424($fp)
	lw $t1, -2428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2432($fp)
	addi $sp, $sp, -4
	lw $t0, -2368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2436($fp)
	addi $sp, $sp, 20
	lw $t1, -2436($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label489
label489:
	li $t0, 1
	sw $t0, -2348($fp)
label490:
	li $t0, 0
	lw $t1, -2348($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	li $t0, 34458
	sw $t0, -2448($fp)
	lw $t0, -1088($fp)
	sw $t0, -2452($fp)
	lw $t1, -2448($fp)
	lw $t2, -2452($fp)
	beq $t1, $t2, label498
	j label497
label498:
	lw $t0, -980($fp)
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -2444($fp)
label497:
	li $t0, 0
	sw $t0, -2460($fp)
	li $t0, 0
	sw $t0, -2464($fp)
	lw $t0, -528($fp)
	sw $t0, -2468($fp)
	lw $t0, -1040($fp)
	sw $t0, -2472($fp)
	lw $t1, -2468($fp)
	lw $t2, -2472($fp)
	bge $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -2464($fp)
label502:
	lw $t0, -120($fp)
	sw $t0, -2476($fp)
	lw $t1, -2464($fp)
	lw $t2, -2476($fp)
	bgt $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -2460($fp)
label500:
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -672($fp)
	sw $t0, -2484($fp)
	li $t0, 62600
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label505
label505:
	lw $t0, -1100($fp)
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -2480($fp)
label504:
	li $t0, 0
	sw $t0, -2500($fp)
	lw $t0, -492($fp)
	sw $t0, -2504($fp)
	li $t0, 32717
	sw $t0, -2508($fp)
	lw $t0, -2504($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label508:
	lw $t0, -684($fp)
	sw $t0, -2516($fp)
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -2500($fp)
label507:
	li $t0, 0
	sw $t0, -2520($fp)
	addi $t0, $fp, -852
	sw $t0, -2524($fp)
	lw $t0, -980($fp)
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
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label511
label511:
	lw $t0, -504($fp)
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
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
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2520($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2548($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2552($fp)
	addi $t0, $fp, -52
	sw $t0, -2556($fp)
	li $t0, 9
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
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label512
label512:
	li $t0, 1
	sw $t0, -2552($fp)
label513:
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2576($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2580($fp)
	addi $t0, $fp, -444
	sw $t0, -2584($fp)
	lw $t0, -636($fp)
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
	lw $t1, -2600($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label514:
	li $t0, 1
	sw $t0, -2580($fp)
label515:
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2604($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2612($fp)
	addi $sp, $sp, 16
	lw $t1, -2440($fp)
	lw $t2, -2612($fp)
	bgt $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -2344($fp)
label488:
	lw $ra, -4($fp)
	lw $v0, -2344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label482
label484:
	li $t0, 0
	sw $t0, -2616($fp)
	li $t0, 44977
	sw $t0, -2620($fp)
	li $t0, 0
	sw $t0, -2624($fp)
	li $t0, 25582
	sw $t0, -2628($fp)
	lw $t1, -2628($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label518
label518:
	li $t0, 1
	sw $t0, -2624($fp)
label519:
	lw $t0, -2620($fp)
	lw $t1, -2624($fp)
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -1064($fp)
	sw $t0, -2636($fp)
	lw $t0, -1004($fp)
	sw $t0, -2640($fp)
	lw $t0, -2636($fp)
	lw $t1, -2640($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	addi $t0, $fp, -12
	sw $t0, -2648($fp)
	lw $t0, -1100($fp)
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
	lw $t0, -2644($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t1, -2632($fp)
	lw $t2, -2668($fp)
	beq $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -2616($fp)
label517:
	li $t0, 21660
	sw $t0, -2720($fp)
	addi $t0, $fp, -2684
	sw $t0, -2724($fp)
	li $t0, 0
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2724($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2720($fp)
	lw $t1, -2736($fp)
	sw $t0, 0($t1)
	lw $t0, -2736($fp)
	lw $t1, 0($t0)
	sw $t1, -2740($fp)
	li $t0, 42883
	sw $t0, -2744($fp)
	addi $t0, $fp, -2684
	sw $t0, -2748($fp)
	li $t0, 1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2748($fp)
	lw $t1, -2756($fp)
	add $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2744($fp)
	lw $t1, -2760($fp)
	sw $t0, 0($t1)
	lw $t0, -2760($fp)
	lw $t1, 0($t0)
	sw $t1, -2764($fp)
	li $t0, 61997
	sw $t0, -2768($fp)
	addi $t0, $fp, -2684
	sw $t0, -2772($fp)
	li $t0, 2
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2772($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2768($fp)
	lw $t1, -2784($fp)
	sw $t0, 0($t1)
	lw $t0, -2784($fp)
	lw $t1, 0($t0)
	sw $t1, -2788($fp)
	li $t0, 46571
	sw $t0, -2792($fp)
	addi $t0, $fp, -2684
	sw $t0, -2796($fp)
	li $t0, 3
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2796($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2792($fp)
	lw $t1, -2808($fp)
	sw $t0, 0($t1)
	lw $t0, -2808($fp)
	lw $t1, 0($t0)
	sw $t1, -2812($fp)
	li $t0, 46462
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	sw $t0, -2824($fp)
	li $t0, 49815
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	sw $t0, -2836($fp)
	li $t0, 65171
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	sw $t0, -2848($fp)
	li $t0, 11236
	sw $t0, -2852($fp)
	addi $t0, $fp, -2716
	sw $t0, -2856($fp)
	li $t0, 0
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2856($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2852($fp)
	lw $t1, -2868($fp)
	sw $t0, 0($t1)
	lw $t0, -2868($fp)
	lw $t1, 0($t0)
	sw $t1, -2872($fp)
	li $t0, 18838
	sw $t0, -2876($fp)
	addi $t0, $fp, -2716
	sw $t0, -2880($fp)
	li $t0, 1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2880($fp)
	lw $t1, -2888($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2876($fp)
	lw $t1, -2892($fp)
	sw $t0, 0($t1)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	li $t0, 48154
	sw $t0, -2900($fp)
	addi $t0, $fp, -2716
	sw $t0, -2904($fp)
	li $t0, 2
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2904($fp)
	lw $t1, -2912($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2900($fp)
	lw $t1, -2916($fp)
	sw $t0, 0($t1)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	li $t0, 37445
	sw $t0, -2924($fp)
	addi $t0, $fp, -2716
	sw $t0, -2928($fp)
	li $t0, 3
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2928($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2924($fp)
	lw $t1, -2940($fp)
	sw $t0, 0($t1)
	lw $t0, -2940($fp)
	lw $t1, 0($t0)
	sw $t1, -2944($fp)
	li $t0, 27849
	sw $t0, -2948($fp)
	addi $t0, $fp, -2716
	sw $t0, -2952($fp)
	li $t0, 4
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2952($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2948($fp)
	lw $t1, -2964($fp)
	sw $t0, 0($t1)
	lw $t0, -2964($fp)
	lw $t1, 0($t0)
	sw $t1, -2968($fp)
	li $t0, 15675
	sw $t0, -2972($fp)
	addi $t0, $fp, -2716
	sw $t0, -2976($fp)
	li $t0, 5
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2976($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2972($fp)
	lw $t1, -2988($fp)
	sw $t0, 0($t1)
	lw $t0, -2988($fp)
	lw $t1, 0($t0)
	sw $t1, -2992($fp)
	li $t0, 11279
	sw $t0, -2996($fp)
	addi $t0, $fp, -2716
	sw $t0, -3000($fp)
	li $t0, 6
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3000($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -2996($fp)
	lw $t1, -3012($fp)
	sw $t0, 0($t1)
	lw $t0, -3012($fp)
	lw $t1, 0($t0)
	sw $t1, -3016($fp)
	li $t0, 40201
	sw $t0, -3020($fp)
	addi $t0, $fp, -2716
	sw $t0, -3024($fp)
	li $t0, 7
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3024($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3020($fp)
	lw $t1, -3036($fp)
	sw $t0, 0($t1)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	li $t0, 42391
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, -3052($fp)
label520:
	addi $t0, $fp, -444
	sw $t0, -3056($fp)
	li $t0, 0
	sw $t0, -3060($fp)
	li $t0, 7177
	sw $t0, -3064($fp)
	li $t0, 355
	sw $t0, -3068($fp)
	li $t0, 40739
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t1, -3064($fp)
	lw $t2, -3076($fp)
	beq $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -3060($fp)
label524:
	li $t0, 4
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	lw $t1, -3056($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, 0($t0)
	sw $t1, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label522
label521:
	lw $t0, -684($fp)
	sw $t0, -3092($fp)
	lw $ra, -4($fp)
	lw $v0, -3092($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label520
label522:
	li $t0, 3699
	sw $t0, -3136($fp)
	addi $t0, $fp, -3132
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
	li $t0, 13806
	sw $t0, -3160($fp)
	addi $t0, $fp, -3132
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
	li $t0, 60290
	sw $t0, -3184($fp)
	addi $t0, $fp, -3132
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
	li $t0, 42695
	sw $t0, -3208($fp)
	addi $t0, $fp, -3132
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
	li $t0, 60882
	sw $t0, -3232($fp)
	addi $t0, $fp, -3132
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
	li $t0, 51467
	sw $t0, -3256($fp)
	addi $t0, $fp, -3132
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
	li $t0, 20152
	sw $t0, -3280($fp)
	addi $t0, $fp, -3132
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
	li $t0, 28063
	sw $t0, -3304($fp)
	addi $t0, $fp, -3132
	sw $t0, -3308($fp)
	li $t0, 7
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
	li $t0, 48532
	sw $t0, -3328($fp)
	addi $t0, $fp, -3132
	sw $t0, -3332($fp)
	li $t0, 8
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
	li $t0, 54611
	sw $t0, -3352($fp)
	addi $t0, $fp, -3132
	sw $t0, -3356($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -3376($fp)
	li $t0, 0
	sw $t0, -3380($fp)
	li $t0, 10735
	sw $t0, -3384($fp)
	li $t0, 8578
	sw $t0, -3388($fp)
	lw $t0, -1028($fp)
	sw $t0, -3392($fp)
	lw $t0, -3388($fp)
	lw $t1, -3392($fp)
	mul $t0, $t0, $t1
	sw $t0, -3396($fp)
	li $t0, 0
	lw $t1, -3396($fp)
	sub $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -660($fp)
	sw $t0, -3404($fp)
	lw $t0, -120($fp)
	sw $t0, -3408($fp)
	lw $t0, -3404($fp)
	lw $t1, -3408($fp)
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	li $t0, 0
	sw $t0, -3416($fp)
	li $t0, 7505
	sw $t0, -3420($fp)
	lw $t0, -1052($fp)
	sw $t0, -3424($fp)
	lw $t1, -3420($fp)
	lw $t2, -3424($fp)
	bne $t1, $t2, label531
	j label533
label533:
	lw $t0, -1040($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -3416($fp)
label532:
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3416($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3432($fp)
	addi $sp, $sp, 20
	lw $t0, 8($fp)
	sw $t0, -3436($fp)
	lw $t1, -3432($fp)
	lw $t2, -3436($fp)
	bgt $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -3380($fp)
label530:
	li $t0, 50388
	sw $t0, -3440($fp)
	li $t0, 5039
	sw $t0, -3444($fp)
	lw $t0, -3440($fp)
	lw $t1, -3444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3448($fp)
	lw $t1, -3380($fp)
	lw $t2, -3448($fp)
	bne $t1, $t2, label525
	j label528
label528:
	li $t0, 57306
	sw $t0, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label525
label527:
	li $t0, 56942
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -3460($fp)
	li $t0, 0
	sw $t0, -3464($fp)
	li $t0, 31315
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label537
label537:
	li $t0, 54854
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label536
label536:
	lw $t0, -872($fp)
	sw $t0, -3476($fp)
	lw $t1, -3476($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -3464($fp)
label535:
	lw $t0, -120($fp)
	sw $t0, -3480($fp)
	li $t0, 0
	lw $t1, -3480($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3488($fp)
	addi $sp, $sp, 16
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label525
label525:
	li $t0, 1
	sw $t0, -3376($fp)
label526:
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	addi $t0, $fp, -3132
	sw $t0, -3500($fp)
	li $t0, 0
	sw $t0, -3504($fp)
	lw $t0, -2820($fp)
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label542:
	li $t0, 1
	sw $t0, -3504($fp)
label543:
	li $t0, 4
	lw $t1, -3504($fp)
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	lw $t1, -3500($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	lw $t1, 0($t0)
	sw $t1, -3520($fp)
	li $t0, 0
	sw $t0, -3524($fp)
	li $t0, 42551
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 1
	sw $t0, -3524($fp)
label545:
	li $t0, 8157
	sw $t0, -3532($fp)
	lw $t0, -3524($fp)
	lw $t1, -3532($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t1, -3520($fp)
	lw $t2, -3536($fp)
	blt $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -3496($fp)
label541:
	li $t0, 39560
	sw $t0, -3540($fp)
	li $t0, 0
	lw $t1, -3540($fp)
	sub $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t1, -3496($fp)
	lw $t2, -3544($fp)
	bgt $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -3492($fp)
label539:
	li $t0, 14460
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	sw $t0, -3556($fp)
	li $t0, 36006
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -3568($fp)
	lw $t0, -696($fp)
	sw $t0, -3572($fp)
	lw $t0, -504($fp)
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	sub $t0, $t0, $t1
	sw $t0, -3580($fp)
	li $t0, 0
	sw $t0, -3584($fp)
	li $t0, 55236
	sw $t0, -3588($fp)
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 0
	sw $t0, -3596($fp)
	li $t0, 10671
	sw $t0, -3600($fp)
	li $t0, 32091
	sw $t0, -3604($fp)
	lw $t1, -3600($fp)
	lw $t2, -3604($fp)
	bge $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -3596($fp)
label551:
	li $t0, 32917
	sw $t0, -3608($fp)
	lw $t1, -3596($fp)
	lw $t2, -3608($fp)
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -3592($fp)
label549:
	li $t0, 0
	sw $t0, -3612($fp)
	li $t0, 0
	sw $t0, -3616($fp)
	lw $t0, -3552($fp)
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label554
label554:
	li $t0, 1
	sw $t0, -3616($fp)
label555:
	lw $t0, -468($fp)
	sw $t0, -3624($fp)
	lw $t1, -3616($fp)
	lw $t2, -3624($fp)
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -3612($fp)
label553:
	li $t0, 25739
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -3632($fp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3632($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3636($fp)
	addi $sp, $sp, 16
	lw $t0, -3588($fp)
	lw $t1, -3636($fp)
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	li $t0, 0
	lw $t1, -3640($fp)
	sub $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label546
label546:
	li $t0, 1
	sw $t0, -3584($fp)
label547:
	lw $t0, -3584($fp)
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -3648($fp)
	li $t0, 0
	sw $t0, -3652($fp)
	li $t0, 0
	sw $t0, -3656($fp)
	lw $t0, -1016($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -3664($fp)
	li $t0, 24832
	sw $t0, -3668($fp)
	li $t0, 0
	sw $t0, -3672($fp)
	li $t0, 11026
	sw $t0, -3676($fp)
	li $t0, 7295
	sw $t0, -3680($fp)
	lw $t0, -3676($fp)
	lw $t1, -3680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label562:
	li $t0, 36616
	sw $t0, -3688($fp)
	lw $t1, -3688($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -3672($fp)
label561:
	addi $sp, $sp, -4
	lw $t0, -3664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3672($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3692($fp)
	addi $sp, $sp, 16
	lw $t0, -504($fp)
	sw $t0, -3696($fp)
	li $t0, 2049
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t1, -3692($fp)
	lw $t2, -3704($fp)
	bgt $t1, $t2, label558
	j label559
label558:
	li $t0, 1
	sw $t0, -3656($fp)
label559:
	li $t0, 0
	sw $t0, -3708($fp)
	li $t0, 0
	sw $t0, -3712($fp)
	li $t0, 36513
	sw $t0, -3716($fp)
	li $t0, 23003
	sw $t0, -3720($fp)
	lw $t1, -3716($fp)
	lw $t2, -3720($fp)
	bgt $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -3712($fp)
label566:
	lw $t0, -1040($fp)
	sw $t0, -3724($fp)
	lw $t1, -3712($fp)
	lw $t2, -3724($fp)
	ble $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -3708($fp)
label564:
	li $t0, 0
	sw $t0, -3728($fp)
	li $t0, 48242
	sw $t0, -3732($fp)
	li $t0, 0
	sw $t0, -3736($fp)
	lw $t0, -684($fp)
	sw $t0, -3740($fp)
	lw $t0, -1004($fp)
	sw $t0, -3744($fp)
	lw $t0, -3740($fp)
	lw $t1, -3744($fp)
	sub $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label571
label571:
	lw $t0, -1052($fp)
	sw $t0, -3752($fp)
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -3736($fp)
label570:
	li $t0, 33928
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -3760($fp)
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3760($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3764($fp)
	addi $sp, $sp, 16
	lw $t0, -1040($fp)
	sw $t0, -3768($fp)
	lw $t0, -3764($fp)
	lw $t1, -3768($fp)
	sub $t0, $t0, $t1
	sw $t0, -3772($fp)
	li $t0, 0
	sw $t0, -3776($fp)
	addi $t0, $fp, -52
	sw $t0, -3780($fp)
	lw $t0, -660($fp)
	sw $t0, -3784($fp)
	li $t0, 4
	lw $t1, -3784($fp)
	mul $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	lw $t1, 0($t0)
	sw $t1, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label572:
	li $t0, 1
	sw $t0, -3776($fp)
label573:
	li $t0, 0
	sw $t0, -3800($fp)
	addi $t0, $fp, -444
	sw $t0, -3804($fp)
	li $t0, 0
	sw $t0, -3808($fp)
	li $t0, 4
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, 0($t0)
	sw $t1, -3820($fp)
	lw $t0, -528($fp)
	sw $t0, -3824($fp)
	lw $t1, -3820($fp)
	lw $t2, -3824($fp)
	bge $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -3800($fp)
label575:
	addi $sp, $sp, -4
	lw $t0, -3772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3800($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3828($fp)
	addi $sp, $sp, 16
	lw $t1, -3828($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -3728($fp)
label568:
	li $t0, 0
	sw $t0, -3832($fp)
	lw $t0, -120($fp)
	sw $t0, -3836($fp)
	li $t0, 13775
	sw $t0, -3840($fp)
	lw $t0, -3836($fp)
	lw $t1, -3840($fp)
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -992($fp)
	sw $t0, -3848($fp)
	lw $t1, -3844($fp)
	lw $t2, -3848($fp)
	bge $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -3832($fp)
label577:
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3832($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3852($fp)
	addi $sp, $sp, 16
	li $t0, 55747
	sw $t0, -3856($fp)
	lw $t0, -3852($fp)
	lw $t1, -3856($fp)
	mul $t0, $t0, $t1
	sw $t0, -3860($fp)
	li $t0, 45091
	sw $t0, -3864($fp)
	lw $t0, -3860($fp)
	lw $t1, -3864($fp)
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t1, -3656($fp)
	lw $t2, -3868($fp)
	ble $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -3652($fp)
label557:
	li $t0, 0
	sw $t0, -3872($fp)
	li $t0, 0
	sw $t0, -3876($fp)
	addi $t0, $fp, -2716
	sw $t0, -3880($fp)
	lw $t0, 16($fp)
	sw $t0, -3884($fp)
	li $t0, 4
	lw $t1, -3884($fp)
	mul $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, -3880($fp)
	add $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	lw $t1, 0($t0)
	sw $t1, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label583:
	li $t0, 1
	sw $t0, -3876($fp)
label584:
	li $t0, 0
	lw $t1, -3876($fp)
	sub $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t1, -3900($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label581
label581:
	li $t0, 1
	sw $t0, -3872($fp)
label582:
	li $t0, 0
	sw $t0, -3904($fp)
	addi $t0, $fp, -444
	sw $t0, -3908($fp)
	li $t0, 2
	sw $t0, -3912($fp)
	li $t0, 4
	lw $t1, -3912($fp)
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	lw $t1, -3924($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label585:
	li $t0, 1
	sw $t0, -3904($fp)
label586:
	lw $t1, -3872($fp)
	lw $t2, -3904($fp)
	bge $t1, $t2, label578
	j label579
label578:
label587:
	lw $t0, -528($fp)
	sw $t0, -3928($fp)
	li $t0, 16915
	sw $t0, -3932($fp)
	li $t0, 48929
	sw $t0, -3936($fp)
	lw $t0, -3932($fp)
	lw $t1, -3936($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -1040($fp)
	sw $t0, -3944($fp)
	li $t0, 39449
	sw $t0, -3948($fp)
	lw $t0, -3944($fp)
	lw $t1, -3948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3952($fp)
	li $t0, 0
	sw $t0, -3956($fp)
	li $t0, 6378
	sw $t0, -3960($fp)
	lw $t1, -3960($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -3956($fp)
label591:
	li $t0, 0
	sw $t0, -3964($fp)
	li $t0, 0
	sw $t0, -3968($fp)
	li $t0, 50131
	sw $t0, -3972($fp)
	li $t0, 25509
	sw $t0, -3976($fp)
	lw $t1, -3972($fp)
	lw $t2, -3976($fp)
	ble $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -3968($fp)
label595:
	lw $t0, 8($fp)
	sw $t0, -3980($fp)
	lw $t1, -3968($fp)
	lw $t2, -3980($fp)
	beq $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -3964($fp)
label593:
	addi $sp, $sp, -4
	lw $t0, -3940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3964($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3984($fp)
	addi $sp, $sp, 20
	lw $t0, -3928($fp)
	lw $t1, -3984($fp)
	mul $t0, $t0, $t1
	sw $t0, -3988($fp)
	li $t0, 63390
	sw $t0, -3992($fp)
	li $t0, 0
	sw $t0, -3996($fp)
	addi $t0, $fp, -52
	sw $t0, -4000($fp)
	li $t0, 3
	sw $t0, -4004($fp)
	li $t0, 4
	lw $t1, -4004($fp)
	mul $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	lw $t1, -4000($fp)
	add $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	lw $t1, 0($t0)
	sw $t1, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label596:
	li $t0, 1
	sw $t0, -3996($fp)
label597:
	lw $t0, -860($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -4024($fp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4024($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4028($fp)
	addi $sp, $sp, 16
	lw $t1, -3988($fp)
	lw $t2, -4028($fp)
	bge $t1, $t2, label588
	j label589
label588:
	li $t0, 18077
	sw $t0, -4032($fp)
	addi $t0, $fp, -12
	sw $t0, -4036($fp)
	li $t0, 1
	sw $t0, -4040($fp)
	li $t0, 4
	lw $t1, -4040($fp)
	mul $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, -4036($fp)
	add $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	lw $t1, 0($t0)
	sw $t1, -4052($fp)
	lw $t0, -4032($fp)
	lw $t1, -4052($fp)
	mul $t0, $t0, $t1
	sw $t0, -4056($fp)
	li $t0, 28748
	sw $t0, -4060($fp)
	lw $t0, -4056($fp)
	lw $t1, -4060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4064($fp)
	addi $t0, $fp, -444
	sw $t0, -4068($fp)
	lw $t0, -980($fp)
	sw $t0, -4072($fp)
	li $t0, 12731
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	li $t0, 4
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	lw $t1, 0($t0)
	sw $t1, -4092($fp)
	lw $t0, -4064($fp)
	lw $t1, -4092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4096($fp)
	j label587
label589:
	j label580
label579:
	li $t0, 56510
	sw $t0, -4100($fp)
	li $t0, 0
	sw $t0, -4104($fp)
	li $t0, 19250
	sw $t0, -4108($fp)
	li $t0, 10056
	sw $t0, -4112($fp)
	lw $t0, -4108($fp)
	lw $t1, -4112($fp)
	add $t0, $t0, $t1
	sw $t0, -4116($fp)
	li $t0, 9758
	sw $t0, -4120($fp)
	lw $t1, -4116($fp)
	lw $t2, -4120($fp)
	bge $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -4104($fp)
label599:
	li $t0, 0
	sw $t0, -4124($fp)
	lw $t0, -696($fp)
	sw $t0, -4128($fp)
	lw $t0, -968($fp)
	sw $t0, -4132($fp)
	lw $t0, -4128($fp)
	lw $t1, -4132($fp)
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	li $t0, 41366
	sw $t0, -4140($fp)
	lw $t1, -4136($fp)
	lw $t2, -4140($fp)
	bgt $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -4124($fp)
label601:
	li $t0, 0
	sw $t0, -4144($fp)
	li $t0, 27591
	sw $t0, -4148($fp)
	li $t0, 64607
	sw $t0, -4152($fp)
	lw $t0, -4148($fp)
	lw $t1, -4152($fp)
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	li $t0, 22075
	sw $t0, -4160($fp)
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	li $t0, 0
	sw $t0, -4168($fp)
	li $t0, 20026
	sw $t0, -4172($fp)
	lw $t1, -4172($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label604
label604:
	li $t0, 1
	sw $t0, -4168($fp)
label605:
	lw $t0, -132($fp)
	sw $t0, -4176($fp)
	lw $t0, -4168($fp)
	lw $t1, -4176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4180($fp)
	lw $t0, -3048($fp)
	sw $t0, -4184($fp)
	li $t0, 39775
	sw $t0, -4188($fp)
	lw $t0, -4184($fp)
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	li $t0, 0
	lw $t1, -4192($fp)
	sub $t0, $t0, $t1
	sw $t0, -4196($fp)
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4196($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4200($fp)
	addi $sp, $sp, 16
	lw $t1, -4200($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label602
label602:
	li $t0, 1
	sw $t0, -4144($fp)
label603:
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4144($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4204($fp)
	addi $sp, $sp, 16
	lw $t0, -4100($fp)
	lw $t1, -4204($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
label580:
	li $t0, 1956
	sw $t0, -4212($fp)
	addi $t0, $fp, -2684
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
	lw $t0, -4212($fp)
	lw $t1, -4232($fp)
	mul $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -2832($fp)
	sw $t0, -4240($fp)
	li $t0, 964
	sw $t0, -4244($fp)
	lw $t0, -4240($fp)
	lw $t1, -4244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4248($fp)
	li $t0, 32766
	sw $t0, -4252($fp)
	lw $t0, -4248($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -528($fp)
	sw $t0, -4260($fp)
	lw $t0, -528($fp)
	sw $t0, -4264($fp)
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	sub $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -884($fp)
	sw $t0, -4272($fp)
	lw $t0, -4268($fp)
	lw $t1, -4272($fp)
	sub $t0, $t0, $t1
	sw $t0, -4276($fp)
	li $t0, 0
	sw $t0, -4280($fp)
	li $t0, 0
	sw $t0, -4284($fp)
	lw $t0, -684($fp)
	sw $t0, -4288($fp)
	li $t0, 57703
	sw $t0, -4292($fp)
	lw $t1, -4288($fp)
	lw $t2, -4292($fp)
	blt $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -4284($fp)
label613:
	li $t0, 26125
	sw $t0, -4296($fp)
	lw $t1, -4284($fp)
	lw $t2, -4296($fp)
	bgt $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -4280($fp)
label611:
	lw $t0, -468($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -4304($fp)
	addi $sp, $sp, -4
	lw $t0, -4256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4304($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4308($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4308($fp)
	sub $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t1, -4236($fp)
	lw $t2, -4312($fp)
	beq $t1, $t2, label609
	j label607
label609:
	lw $t0, -504($fp)
	sw $t0, -4316($fp)
	li $t0, 10720
	sw $t0, -4320($fp)
	li $t0, 26473
	sw $t0, -4324($fp)
	lw $t0, -4320($fp)
	lw $t1, -4324($fp)
	add $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t1, -4316($fp)
	lw $t2, -4328($fp)
	beq $t1, $t2, label606
	j label607
label606:
label614:
	lw $t0, -660($fp)
	sw $t0, -4332($fp)
	li $t0, 39145
	sw $t0, -4336($fp)
	lw $t0, -4332($fp)
	lw $t1, -4336($fp)
	mul $t0, $t0, $t1
	sw $t0, -4340($fp)
	li $t0, 0
	sw $t0, -4344($fp)
	li $t0, 50169
	sw $t0, -4348($fp)
	lw $t1, -4348($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -4344($fp)
label618:
	li $t0, 0
	lw $t1, -4344($fp)
	sub $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4340($fp)
	lw $t1, -4352($fp)
	mul $t0, $t0, $t1
	sw $t0, -4356($fp)
	li $t0, 0
	lw $t1, -4356($fp)
	sub $t0, $t0, $t1
	sw $t0, -4360($fp)
	li $t0, 43388
	sw $t0, -4364($fp)
	lw $t0, -4360($fp)
	lw $t1, -4364($fp)
	sub $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t1, -4368($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 0
	sw $t0, -4372($fp)
	lw $t0, -2844($fp)
	sw $t0, -4376($fp)
	lw $t1, -4376($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label621:
	li $t0, 22538
	sw $t0, -4380($fp)
	lw $t1, -4380($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -4372($fp)
label620:
	lw $t0, -4372($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -4388($fp)
	j label614
label616:
	j label608
label607:
	li $t0, 0
	sw $t0, -4392($fp)
	li $t0, 0
	sw $t0, -4396($fp)
	li $t0, 34960
	sw $t0, -4400($fp)
	li $t0, 53304
	sw $t0, -4404($fp)
	lw $t0, -4400($fp)
	lw $t1, -4404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4408($fp)
	lw $t0, -132($fp)
	sw $t0, -4412($fp)
	lw $t0, -4408($fp)
	lw $t1, -4412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4416($fp)
	li $t0, 0
	sw $t0, -4420($fp)
	li $t0, 0
	sw $t0, -4424($fp)
	li $t0, 13529
	sw $t0, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -4424($fp)
label630:
	li $t0, 43986
	sw $t0, -4432($fp)
	lw $t0, -980($fp)
	sw $t0, -4436($fp)
	lw $t0, -4432($fp)
	lw $t1, -4436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4440($fp)
	li $t0, 0
	lw $t1, -4440($fp)
	sub $t0, $t0, $t1
	sw $t0, -4444($fp)
	li $t0, 20392
	sw $t0, -4448($fp)
	li $t0, 50317
	sw $t0, -4452($fp)
	lw $t0, -4448($fp)
	lw $t1, -4452($fp)
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	li $t0, 14967
	sw $t0, -4460($fp)
	lw $t0, -4456($fp)
	lw $t1, -4460($fp)
	sub $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -120($fp)
	sw $t0, -4468($fp)
	li $t0, 0
	lw $t1, -4468($fp)
	sub $t0, $t0, $t1
	sw $t0, -4472($fp)
	addi $sp, $sp, -4
	lw $t0, -4424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4472($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4476($fp)
	addi $sp, $sp, 20
	lw $t1, -4476($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label627
label628:
	li $t0, 27698
	sw $t0, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -4420($fp)
label627:
	addi $t0, $fp, -12
	sw $t0, -4484($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -4500($fp)
	sub $t0, $t0, $t1
	sw $t0, -4504($fp)
	addi $sp, $sp, -4
	lw $t0, -4416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4508($fp)
	addi $sp, $sp, 16
	lw $t1, -4508($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label624:
	li $t0, 1
	sw $t0, -4396($fp)
label625:
	li $t0, 47724
	sw $t0, -4512($fp)
	li $t0, 0
	lw $t1, -4512($fp)
	sub $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4396($fp)
	lw $t1, -4516($fp)
	sub $t0, $t0, $t1
	sw $t0, -4520($fp)
	li $t0, 0
	sw $t0, -4524($fp)
	addi $t0, $fp, -852
	sw $t0, -4528($fp)
	li $t0, 2
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
	lw $t1, -4544($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label631
label631:
	li $t0, 1
	sw $t0, -4524($fp)
label632:
	lw $t0, -4520($fp)
	lw $t1, -4524($fp)
	sub $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -2820($fp)
	sw $t0, -4552($fp)
	lw $t1, -4548($fp)
	lw $t2, -4552($fp)
	ble $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -4392($fp)
label623:
label608:
	j label413
label415:
	addi $t0, $fp, -12
	sw $t0, -4556($fp)
	li $t0, 0
	sw $t0, -4560($fp)
	li $t0, 4263
	sw $t0, -4564($fp)
	lw $t1, -4564($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label639
label639:
	li $t0, 38382
	sw $t0, -4568($fp)
	lw $t1, -4568($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -4560($fp)
label638:
	li $t0, 4
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, 0($t0)
	sw $t1, -4580($fp)
	li $t0, 0
	sw $t0, -4584($fp)
	lw $t0, -132($fp)
	sw $t0, -4588($fp)
	lw $t0, -480($fp)
	sw $t0, -4592($fp)
	lw $t0, -4588($fp)
	lw $t1, -4592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4596($fp)
	li $t0, 8046
	sw $t0, -4600($fp)
	lw $t1, -4596($fp)
	lw $t2, -4600($fp)
	beq $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -4584($fp)
label641:
	li $t0, 0
	sw $t0, -4604($fp)
	li $t0, 14320
	sw $t0, -4608($fp)
	li $t0, 48140
	sw $t0, -4612($fp)
	lw $t0, -4608($fp)
	lw $t1, -4612($fp)
	sub $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t0, -528($fp)
	sw $t0, -4620($fp)
	lw $t1, -4616($fp)
	lw $t2, -4620($fp)
	bgt $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -4604($fp)
label643:
	addi $t0, $fp, -12
	sw $t0, -4624($fp)
	lw $t0, -684($fp)
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
	li $t0, 0
	sw $t0, -4644($fp)
	li $t0, 6090
	sw $t0, -4648($fp)
	lw $t1, -4648($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label644
label644:
	li $t0, 1
	sw $t0, -4644($fp)
label645:
	li $t0, 0
	lw $t1, -4644($fp)
	sub $t0, $t0, $t1
	sw $t0, -4652($fp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4652($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4656($fp)
	addi $sp, $sp, 20
	lw $t1, -4580($fp)
	lw $t2, -4656($fp)
	blt $t1, $t2, label636
	j label634
label636:
	addi $t0, $fp, -444
	sw $t0, -4660($fp)
	li $t0, 0
	sw $t0, -4664($fp)
	lw $t0, 4($fp)
	sw $t0, -4668($fp)
	li $t0, 60889
	sw $t0, -4672($fp)
	lw $t1, -4668($fp)
	lw $t2, -4672($fp)
	bne $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -4664($fp)
label647:
	li $t0, 4
	lw $t1, -4664($fp)
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, -4660($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	lw $t1, 0($t0)
	sw $t1, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 15366
	sw $t0, -4688($fp)
	li $t0, 0
	lw $t1, -4688($fp)
	sub $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $ra, -4($fp)
	lw $v0, -4692($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label635
label634:
	addi $t0, $fp, -12
	sw $t0, -4696($fp)
	li $t0, 0
	sw $t0, -4700($fp)
	lw $t0, -504($fp)
	sw $t0, -4704($fp)
	lw $t1, -4704($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label650
label650:
	lw $t0, -120($fp)
	sw $t0, -4708($fp)
	lw $t1, -4708($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -4700($fp)
label649:
	li $t0, 4
	lw $t1, -4700($fp)
	mul $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	lw $t1, 0($t0)
	sw $t1, -4720($fp)
	li $t0, 21479
	sw $t0, -4724($fp)
	lw $t0, -4720($fp)
	lw $t1, -4724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4728($fp)
	lw $ra, -4($fp)
	lw $v0, -4728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label635:
	lw $t0, -456($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -444
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
	addi $t0, $fp, -444
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
	addi $t0, $fp, -444
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
	addi $t0, $fp, -448
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
	lw $t0, -636($fp)
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4864($fp)
	li $t0, 33853
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label653
label653:
	lw $t0, -492($fp)
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -4864($fp)
label652:
	li $t0, 0
	sw $t0, -4876($fp)
	li $t0, 0
	sw $t0, -4880($fp)
	li $t0, 0
	sw $t0, -4884($fp)
	li $t0, 49072
	sw $t0, -4888($fp)
	li $t0, 54982
	sw $t0, -4892($fp)
	lw $t1, -4888($fp)
	lw $t2, -4892($fp)
	ble $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -4884($fp)
label659:
	li $t0, 49519
	sw $t0, -4896($fp)
	lw $t1, -4884($fp)
	lw $t2, -4896($fp)
	bge $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -4880($fp)
label657:
	li $t0, 0
	sw $t0, -4900($fp)
	li $t0, 16832
	sw $t0, -4904($fp)
	li $t0, 20655
	sw $t0, -4908($fp)
	lw $t0, -4904($fp)
	lw $t1, -4908($fp)
	sub $t0, $t0, $t1
	sw $t0, -4912($fp)
	li $t0, 29127
	sw $t0, -4916($fp)
	lw $t1, -4912($fp)
	lw $t2, -4916($fp)
	bge $t1, $t2, label660
	j label661
label660:
	li $t0, 1
	sw $t0, -4900($fp)
label661:
	li $t0, 6588
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -4924($fp)
	li $t0, 0
	sw $t0, -4928($fp)
	lw $t0, 8($fp)
	sw $t0, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label662
label662:
	li $t0, 1
	sw $t0, -4928($fp)
label663:
	addi $sp, $sp, -4
	lw $t0, -4900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4936($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4940($fp)
	li $t0, 32979
	sw $t0, -4944($fp)
	li $t0, 32198
	sw $t0, -4948($fp)
	lw $t0, -4944($fp)
	lw $t1, -4948($fp)
	sub $t0, $t0, $t1
	sw $t0, -4952($fp)
	li $t0, 42803
	sw $t0, -4956($fp)
	lw $t1, -4952($fp)
	lw $t2, -4956($fp)
	bge $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -4940($fp)
label665:
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4960($fp)
	addi $sp, $sp, 16
	lw $t0, -456($fp)
	sw $t0, -4964($fp)
	lw $t1, -4960($fp)
	lw $t2, -4964($fp)
	bne $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -4876($fp)
label655:
	lw $t0, -636($fp)
	sw $t0, -4968($fp)
	li $t0, 16330
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4976($fp)
	addi $sp, $sp, -4
	lw $t0, -4864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4980($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4980($fp)
	sub $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $ra, -4($fp)
	lw $v0, -4984($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4988($fp)
	lw $t0, -528($fp)
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label666
label666:
	li $t0, 1
	sw $t0, -4988($fp)
label667:
	j label408
label410:
	li $t0, 0
	sw $t0, -4996($fp)
	li $t0, 0
	sw $t0, -5000($fp)
	li $t0, 4413
	sw $t0, -5004($fp)
	li $t0, 0
	lw $t1, -5004($fp)
	sub $t0, $t0, $t1
	sw $t0, -5008($fp)
	li $t0, 27969
	sw $t0, -5012($fp)
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	sub $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, 4($fp)
	sw $t0, -5020($fp)
	li $t0, 0
	lw $t1, -5020($fp)
	sub $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5016($fp)
	lw $t1, -5024($fp)
	sub $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -108($fp)
	sw $t0, -5032($fp)
	li $t0, 0
	lw $t1, -5032($fp)
	sub $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t1, -5028($fp)
	lw $t2, -5036($fp)
	ble $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -5000($fp)
label671:
	addi $t0, $fp, -52
	sw $t0, -5040($fp)
	li $t0, 0
	sw $t0, -5044($fp)
	lw $t0, -132($fp)
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label674:
	lw $t0, -384($fp)
	sw $t0, -5052($fp)
	lw $t1, -5052($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -5044($fp)
label673:
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	lw $t1, 0($t0)
	sw $t1, -5064($fp)
	lw $t1, -5000($fp)
	lw $t2, -5064($fp)
	blt $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -4996($fp)
label669:
	addi $t0, $fp, -12
	sw $t0, -5068($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -5088($fp)
	li $t0, 1
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
	lw $t0, -108($fp)
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5120($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -5140($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -5160($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -5180($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -5200($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -5220($fp)
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -5240($fp)
	li $t0, 6
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
	addi $t0, $fp, -52
	sw $t0, -5260($fp)
	li $t0, 7
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
	addi $t0, $fp, -52
	sw $t0, -5280($fp)
	li $t0, 8
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
	addi $t0, $fp, -52
	sw $t0, -5300($fp)
	li $t0, 9
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
	lw $t0, -384($fp)
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -5324($fp)
	lw $ra, -4($fp)
	lw $v0, -5324($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3496
	li $t0, 47382
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 32111
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 62930
	sw $t0, -80($fp)
	addi $t0, $fp, -8
	sw $t0, -84($fp)
	li $t0, 0
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
	li $t0, 35151
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 14299
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 59945
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 21991
	sw $t0, -140($fp)
	addi $t0, $fp, -44
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
	li $t0, 18563
	sw $t0, -164($fp)
	addi $t0, $fp, -44
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
	li $t0, 32791
	sw $t0, -188($fp)
	addi $t0, $fp, -44
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
	li $t0, 28081
	sw $t0, -212($fp)
	addi $t0, $fp, -44
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
	li $t0, 32883
	sw $t0, -236($fp)
	addi $t0, $fp, -44
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
	li $t0, 15396
	sw $t0, -260($fp)
	addi $t0, $fp, -44
	sw $t0, -264($fp)
	li $t0, 5
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
	li $t0, 36127
	sw $t0, -284($fp)
	addi $t0, $fp, -44
	sw $t0, -288($fp)
	li $t0, 6
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
	li $t0, 28236
	sw $t0, -308($fp)
	addi $t0, $fp, -44
	sw $t0, -312($fp)
	li $t0, 7
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
	li $t0, 30762
	sw $t0, -332($fp)
	addi $t0, $fp, -44
	sw $t0, -336($fp)
	li $t0, 8
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
	li $t0, 36340
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 49715
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 47092
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 3783
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 16377
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 24359
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 10372
	sw $t0, -428($fp)
	addi $t0, $fp, -52
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
	li $t0, 33209
	sw $t0, -452($fp)
	addi $t0, $fp, -52
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
	li $t0, 45014
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 39499
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 16745
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 34460
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 23482
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 50598
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 38874
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 51452
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 32445
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 5449
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 48846
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 2060
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 19749
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 43255
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 24051
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 38312
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
label675:
	lw $t0, -384($fp)
	sw $t0, -668($fp)
	addi $t0, $fp, -8
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
	lw $t0, -668($fp)
	lw $t1, -688($fp)
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	lw $t0, -420($fp)
	sw $t0, -696($fp)
	li $t0, 0
	sw $t0, -700($fp)
	lw $t0, -420($fp)
	sw $t0, -704($fp)
	lw $t0, -60($fp)
	sw $t0, -708($fp)
	lw $t1, -704($fp)
	lw $t2, -708($fp)
	beq $t1, $t2, label678
	j label680
label680:
	li $t0, 22723
	sw $t0, -712($fp)
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label679
label678:
	li $t0, 1
	sw $t0, -700($fp)
label679:
	li $t0, 0
	sw $t0, -716($fp)
	lw $t0, -564($fp)
	sw $t0, -720($fp)
	lw $t0, -660($fp)
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label683
label683:
	li $t0, 25907
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -716($fp)
label682:
	addi $sp, $sp, -4
	lw $t0, -700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -716($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -736($fp)
	addi $sp, $sp, 12
	lw $t0, -696($fp)
	lw $t1, -736($fp)
	mul $t0, $t0, $t1
	sw $t0, -740($fp)
	li $t0, 0
	sw $t0, -744($fp)
	li $t0, 56669
	sw $t0, -748($fp)
	li $t0, 59063
	sw $t0, -752($fp)
	lw $t1, -748($fp)
	lw $t2, -752($fp)
	bne $t1, $t2, label684
	j label686
label686:
	lw $t0, -132($fp)
	sw $t0, -756($fp)
	lw $t1, -756($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -744($fp)
label685:
	li $t0, 33895
	sw $t0, -760($fp)
	li $t0, 0
	lw $t1, -760($fp)
	sub $t0, $t0, $t1
	sw $t0, -764($fp)
	addi $sp, $sp, -4
	lw $t0, -744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -768($fp)
	addi $sp, $sp, 12
	lw $t0, -740($fp)
	lw $t1, -768($fp)
	sub $t0, $t0, $t1
	sw $t0, -772($fp)
	j label675
label677:
	li $t0, 0
	sw $t0, -776($fp)
	li $t0, 0
	sw $t0, -780($fp)
	li $t0, 62846
	sw $t0, -784($fp)
	lw $t1, -784($fp)
	li $t2, 0
	bne $t1, $t2, label693
	j label691
label693:
	lw $t0, -624($fp)
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label691
label692:
	lw $t0, -648($fp)
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -780($fp)
label691:
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, -600($fp)
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label696
label696:
	li $t0, 38225
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -796($fp)
label695:
	lw $t0, -384($fp)
	sw $t0, -808($fp)
	li $t0, 18074
	sw $t0, -812($fp)
	li $t0, 0
	lw $t1, -812($fp)
	sub $t0, $t0, $t1
	sw $t0, -816($fp)
	li $t0, 0
	lw $t1, -816($fp)
	sub $t0, $t0, $t1
	sw $t0, -820($fp)
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -824($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 34452
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -828($fp)
label698:
	lw $t0, -824($fp)
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label688
label689:
	lw $t0, -108($fp)
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label687
label687:
	li $t0, 1
	sw $t0, -776($fp)
label688:
	lw $t0, -60($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -852($fp)
	li $t0, 0
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
	lw $t0, -868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	li $t0, 4
	lw $t1, -888($fp)
	mul $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	lw $t1, 0($t0)
	sw $t1, -900($fp)
	lw $t0, -900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -924($fp)
	li $t0, 2
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
	lw $t0, -940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -944($fp)
	li $t0, 3
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
	lw $t0, -960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -964($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -984($fp)
	li $t0, 5
	sw $t0, -988($fp)
	li $t0, 4
	lw $t1, -988($fp)
	mul $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	lw $t1, -984($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	lw $t1, 0($t0)
	sw $t1, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1004($fp)
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 8
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
	lw $t0, -360($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1088($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -1108($fp)
	li $t0, 1
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
	lw $t0, -480($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1192($fp)
	li $t0, 0
	sw $t0, -1196($fp)
	lw $t0, -384($fp)
	sw $t0, -1200($fp)
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label701
label701:
	li $t0, 1
	sw $t0, -1196($fp)
label702:
	li $t0, 5128
	sw $t0, -1204($fp)
	li $t0, 0
	lw $t1, -1204($fp)
	sub $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -492($fp)
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	sub $t0, $t0, $t1
	sw $t0, -1216($fp)
	li $t0, 0
	sw $t0, -1220($fp)
	li $t0, 47181
	sw $t0, -1224($fp)
	li $t0, 18871
	sw $t0, -1228($fp)
	lw $t0, -1224($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	li $t0, 10986
	sw $t0, -1236($fp)
	lw $t1, -1232($fp)
	lw $t2, -1236($fp)
	blt $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -1220($fp)
label704:
	li $t0, 0
	sw $t0, -1240($fp)
	li $t0, 2125
	sw $t0, -1244($fp)
	li $t0, 42062
	sw $t0, -1248($fp)
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -576($fp)
	sw $t0, -1256($fp)
	lw $t1, -1252($fp)
	lw $t2, -1256($fp)
	beq $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -1240($fp)
label706:
	li $t0, 62584
	sw $t0, -1260($fp)
	lw $t0, -360($fp)
	sw $t0, -1264($fp)
	lw $t0, -1260($fp)
	lw $t1, -1264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1268($fp)
	li $t0, 7682
	sw $t0, -1272($fp)
	lw $t0, -1268($fp)
	lw $t1, -1272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1276($fp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1280($fp)
	addi $sp, $sp, 20
	lw $t1, -1196($fp)
	lw $t2, -1280($fp)
	ble $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -1192($fp)
label700:
	lw $ra, -4($fp)
	lw $v0, -1192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 3933
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label710
label710:
	li $t0, 1
	sw $t0, -1284($fp)
label711:
	lw $t0, -1284($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
	li $t0, 0
	sw $t0, -1296($fp)
	li $t0, 49860
	sw $t0, -1300($fp)
	addi $t0, $fp, -8
	sw $t0, -1304($fp)
	li $t0, 0
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
	lw $t1, -1300($fp)
	lw $t2, -1320($fp)
	bge $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -1296($fp)
label713:
	j label709
label708:
	lw $t0, -552($fp)
	sw $t0, -1324($fp)
	lw $t0, -408($fp)
	sw $t0, -1328($fp)
	lw $t0, -1324($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -384($fp)
	sw $t0, -1336($fp)
	lw $t0, -1332($fp)
	lw $t1, -1336($fp)
	add $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -540($fp)
	sw $t0, -1344($fp)
	li $t0, 0
	sw $t0, -1348($fp)
	addi $t0, $fp, -52
	sw $t0, -1352($fp)
	lw $t0, -504($fp)
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
	lw $t0, -480($fp)
	sw $t0, -1372($fp)
	lw $t1, -1368($fp)
	lw $t2, -1372($fp)
	bne $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -1348($fp)
label715:
	addi $sp, $sp, -4
	lw $t0, -1344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1376($fp)
	addi $sp, $sp, 12
	li $t0, 39890
	sw $t0, -1380($fp)
	lw $t0, -1376($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	addi $sp, $sp, -4
	lw $t0, -1340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1388($fp)
	addi $sp, $sp, 12
	lw $t0, -648($fp)
	sw $t0, -1392($fp)
	li $t0, 9523
	sw $t0, -1396($fp)
	lw $t0, -1392($fp)
	lw $t1, -1396($fp)
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -624($fp)
	sw $t0, -1404($fp)
	lw $t0, -1400($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	li $t0, 38438
	sw $t0, -1412($fp)
	lw $t0, -660($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -1420($fp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1420($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1424($fp)
	addi $sp, $sp, 16
	lw $t0, -1388($fp)
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	li $t0, 0
	sw $t0, -1432($fp)
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 62489
	sw $t0, -1440($fp)
	li $t0, 0
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1444($fp)
	li $t0, 47835
	sw $t0, -1448($fp)
	lw $t1, -1444($fp)
	lw $t2, -1448($fp)
	bne $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -1436($fp)
label719:
	lw $t0, -492($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -1456($fp)
	li $t0, 0
	sw $t0, -1460($fp)
	lw $t0, -648($fp)
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label721
label723:
	li $t0, 17609
	sw $t0, -1468($fp)
	lw $t1, -1468($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label721
label722:
	lw $t0, -612($fp)
	sw $t0, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label721
label720:
	li $t0, 1
	sw $t0, -1460($fp)
label721:
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1460($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1476($fp)
	addi $sp, $sp, 16
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label716
label716:
	li $t0, 1
	sw $t0, -1432($fp)
label717:
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	mul $t0, $t0, $t1
	sw $t0, -1480($fp)
	li $t0, 28120
	sw $t0, -1484($fp)
	lw $t0, -1480($fp)
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
label709:
	li $t0, 49085
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 53494
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 54027
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 6272
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	li $t0, 21853
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label724
label724:
label727:
	li $t0, 0
	sw $t0, -1544($fp)
	li $t0, 62646
	sw $t0, -1548($fp)
	lw $t0, -1496($fp)
	sw $t0, -1552($fp)
	lw $t1, -1548($fp)
	lw $t2, -1552($fp)
	bne $t1, $t2, label730
	j label732
label732:
	li $t0, 8844
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -1544($fp)
label731:
	li $t0, 39928
	sw $t0, -1560($fp)
	li $t0, 17849
	sw $t0, -1564($fp)
	lw $t0, -1560($fp)
	lw $t1, -1564($fp)
	sub $t0, $t0, $t1
	sw $t0, -1568($fp)
	addi $t0, $fp, -44
	sw $t0, -1572($fp)
	li $t0, 2
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
	addi $sp, $sp, -4
	lw $t0, -1544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1592($fp)
	addi $sp, $sp, 16
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label728
label728:
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 14897
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1604($fp)
	lw $t0, -1520($fp)
	sw $t0, -1608($fp)
	li $t0, 0
	sw $t0, -1612($fp)
	li $t0, 0
	sw $t0, -1616($fp)
	lw $t0, -1532($fp)
	sw $t0, -1620($fp)
	lw $t0, -636($fp)
	sw $t0, -1624($fp)
	lw $t1, -1620($fp)
	lw $t2, -1624($fp)
	bge $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -1616($fp)
label739:
	lw $t0, -540($fp)
	sw $t0, -1628($fp)
	lw $t1, -1616($fp)
	lw $t2, -1628($fp)
	beq $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -1612($fp)
label737:
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1632($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t1, -1636($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label734
label735:
	lw $t0, -60($fp)
	sw $t0, -1640($fp)
	lw $t0, -504($fp)
	sw $t0, -1644($fp)
	lw $t0, -1640($fp)
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	li $t0, 10969
	sw $t0, -1652($fp)
	lw $t0, -1648($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	li $t0, 0
	sw $t0, -1660($fp)
	lw $t0, -1520($fp)
	sw $t0, -1664($fp)
	lw $t0, -480($fp)
	sw $t0, -1668($fp)
	lw $t1, -1664($fp)
	lw $t2, -1668($fp)
	blt $t1, $t2, label740
	j label742
label742:
	li $t0, 4792
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -1660($fp)
label741:
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1676($fp)
	addi $sp, $sp, 12
	li $t0, 56959
	sw $t0, -1680($fp)
	li $t0, 0
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1676($fp)
	lw $t1, -1684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1688($fp)
	li $t0, 0
	lw $t1, -1688($fp)
	sub $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -1596($fp)
label734:
	lw $ra, -4($fp)
	lw $v0, -1596($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label727
label729:
	j label726
label725:
	li $t0, 51974
	sw $t0, -1704($fp)
	addi $t0, $fp, -1700
	sw $t0, -1708($fp)
	li $t0, 0
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1708($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1704($fp)
	lw $t1, -1720($fp)
	sw $t0, 0($t1)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	li $t0, 29840
	sw $t0, -1728($fp)
	addi $t0, $fp, -1700
	sw $t0, -1732($fp)
	li $t0, 1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1732($fp)
	lw $t1, -1740($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1728($fp)
	lw $t1, -1744($fp)
	sw $t0, 0($t1)
	lw $t0, -1744($fp)
	lw $t1, 0($t0)
	sw $t1, -1748($fp)
	li $t0, 2410
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	li $t0, 57102
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	li $t0, 33774
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	li $t0, 52270
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	li $t0, 48146
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	li $t0, 4616
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	li $t0, 42044
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	li $t0, 22500
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	li $t0, 43055
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	li $t0, 51567
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
label743:
	li $t0, 0
	sw $t0, -1872($fp)
	li $t0, 0
	sw $t0, -1876($fp)
	li $t0, 2694
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label749
label751:
	lw $t0, -552($fp)
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label749
label750:
	lw $t0, -408($fp)
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -1876($fp)
label749:
	li $t0, 0
	sw $t0, -1892($fp)
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 40008
	sw $t0, -1900($fp)
	lw $t0, -1804($fp)
	sw $t0, -1904($fp)
	lw $t0, -1900($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label755
label756:
	li $t0, 33866
	sw $t0, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -1896($fp)
label755:
	li $t0, 0
	sw $t0, -1916($fp)
	li $t0, 0
	sw $t0, -1920($fp)
	lw $t0, -540($fp)
	sw $t0, -1924($fp)
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label759
label759:
	li $t0, 1
	sw $t0, -1920($fp)
label760:
	lw $t0, -528($fp)
	sw $t0, -1932($fp)
	li $t0, 0
	lw $t1, -1932($fp)
	sub $t0, $t0, $t1
	sw $t0, -1936($fp)
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1940($fp)
	addi $sp, $sp, 12
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label757
label757:
	li $t0, 1
	sw $t0, -1916($fp)
label758:
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1944($fp)
	addi $sp, $sp, 12
	lw $t0, -1852($fp)
	sw $t0, -1948($fp)
	lw $t1, -1944($fp)
	lw $t2, -1948($fp)
	bgt $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -1892($fp)
label753:
	li $t0, 40109
	sw $t0, -1952($fp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1956($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1960($fp)
	addi $t0, $fp, -52
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	li $t0, 4
	lw $t1, -1968($fp)
	mul $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	lw $t1, -1964($fp)
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, 0($t0)
	sw $t1, -1980($fp)
	lw $t1, -1980($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label761
label761:
	li $t0, 1
	sw $t0, -1960($fp)
label762:
	lw $t1, -1956($fp)
	lw $t2, -1960($fp)
	bgt $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -1872($fp)
label747:
	li $t0, 0
	sw $t0, -1984($fp)
	lw $t0, -612($fp)
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -1984($fp)
label764:
	li $t0, 0
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t1, -1872($fp)
	lw $t2, -1992($fp)
	beq $t1, $t2, label744
	j label745
label744:
	addi $t0, $fp, -1700
	sw $t0, -1996($fp)
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 4
	lw $t1, -2000($fp)
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	lw $t1, -1996($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	lw $t1, 0($t0)
	sw $t1, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label766
label765:
label768:
	li $t0, 43678
	sw $t0, -2016($fp)
	li $t0, 0
	sw $t0, -2020($fp)
	lw $t0, -72($fp)
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -2020($fp)
label772:
	lw $t0, -2016($fp)
	lw $t1, -2020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2028($fp)
	li $t0, 0
	lw $t1, -2028($fp)
	sub $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label770
label769:
	li $t0, 0
	sw $t0, -2036($fp)
	lw $t0, -1768($fp)
	sw $t0, -2040($fp)
	li $t0, 0
	sw $t0, -2044($fp)
	lw $t0, -528($fp)
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label775
label775:
	li $t0, 1
	sw $t0, -2044($fp)
label776:
	lw $t0, -492($fp)
	sw $t0, -2052($fp)
	lw $t0, -2044($fp)
	lw $t1, -2052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2056($fp)
	lw $t0, -2040($fp)
	lw $t1, -2056($fp)
	sub $t0, $t0, $t1
	sw $t0, -2060($fp)
	li $t0, 36346
	sw $t0, -2064($fp)
	addi $t0, $fp, -52
	sw $t0, -2068($fp)
	lw $t0, -492($fp)
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
	lw $t0, -2064($fp)
	lw $t1, -2084($fp)
	sub $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t1, -2060($fp)
	lw $t2, -2088($fp)
	beq $t1, $t2, label773
	j label774
label773:
	li $t0, 1
	sw $t0, -2036($fp)
label774:
	j label768
label770:
	j label767
label766:
	li $t0, 29630
	sw $t0, -2092($fp)
label767:
	j label743
label745:
	li $t0, 18070
	sw $t0, -2096($fp)
	lw $t0, -576($fp)
	sw $t0, -2100($fp)
	lw $t0, -2096($fp)
	lw $t1, -2100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label780
	j label778
label780:
	li $t0, 26740
	sw $t0, -2108($fp)
	li $t0, 26914
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2116($fp)
	lw $t0, -420($fp)
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
	li $t0, 0
	sw $t0, -2128($fp)
	lw $t0, -1864($fp)
	sw $t0, -2132($fp)
	lw $t0, -504($fp)
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -1816($fp)
	sw $t0, -2144($fp)
	lw $t1, -2140($fp)
	lw $t2, -2144($fp)
	bge $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -2128($fp)
label782:
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t0, -636($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label784
label785:
	li $t0, 54195
	sw $t0, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -2148($fp)
label784:
	li $t0, 0
	sw $t0, -2160($fp)
	lw $t0, -480($fp)
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -2160($fp)
label787:
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2168($fp)
	addi $sp, $sp, 20
	lw $t0, -72($fp)
	sw $t0, -2172($fp)
	lw $t0, -60($fp)
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2180($fp)
	li $t0, 0
	sw $t0, -2184($fp)
	addi $t0, $fp, -1700
	sw $t0, -2188($fp)
	lw $t0, -612($fp)
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
	bne $t1, $t2, label789
	j label788
label788:
	li $t0, 1
	sw $t0, -2184($fp)
label789:
	lw $t0, -492($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -2212($fp)
	addi $sp, $sp, -4
	lw $t0, -2180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2216($fp)
	addi $sp, $sp, 16
	lw $t0, -2168($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label778
label777:
label790:
	li $t0, 3557
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label792
label791:
	li $t0, 31532
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	lw $t0, -480($fp)
	sw $t0, -2240($fp)
	lw $t0, -492($fp)
	sw $t0, -2244($fp)
	lw $t1, -2240($fp)
	lw $t2, -2244($fp)
	bge $t1, $t2, label798
	j label799
label798:
	li $t0, 1
	sw $t0, -2236($fp)
label799:
	li $t0, 37883
	sw $t0, -2248($fp)
	lw $t1, -2236($fp)
	lw $t2, -2248($fp)
	bne $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -2232($fp)
label797:
	lw $t0, -120($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -2256($fp)
	addi $sp, $sp, -4
	lw $t0, -2232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2260($fp)
	addi $sp, $sp, 12
	lw $t0, -2228($fp)
	lw $t1, -2260($fp)
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label794
label793:
	li $t0, 0
	sw $t0, -2268($fp)
	li $t0, 60516
	sw $t0, -2272($fp)
	li $t0, 0
	lw $t1, -2272($fp)
	sub $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label800
label800:
	li $t0, 1
	sw $t0, -2268($fp)
label801:
	li $t0, 0
	lw $t1, -2268($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -2284($fp)
	j label795
label794:
	li $t0, 0
	sw $t0, -2288($fp)
	lw $t0, -636($fp)
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label802
label802:
	li $t0, 1
	sw $t0, -2288($fp)
label803:
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t0, -660($fp)
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label804
label804:
	li $t0, 1
	sw $t0, -2296($fp)
label805:
	lw $t0, -1756($fp)
	sw $t0, -2304($fp)
	lw $t0, -2296($fp)
	lw $t1, -2304($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	li $t0, 0
	sw $t0, -2312($fp)
	li $t0, 9536
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label809
label809:
	li $t0, 35962
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label808
label808:
	lw $t0, -408($fp)
	sw $t0, -2324($fp)
	lw $t1, -2324($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -2312($fp)
label807:
	lw $t0, -60($fp)
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -2332($fp)
	li $t0, 0
	sw $t0, -2336($fp)
	lw $t0, -480($fp)
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -2344($fp)
	lw $t0, -540($fp)
	sw $t0, -2348($fp)
	li $t0, 2188
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	addi $t0, $fp, -8
	sw $t0, -2360($fp)
	lw $t0, -480($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2380($fp)
	addi $sp, $sp, 16
	li $t0, 62926
	sw $t0, -2384($fp)
	lw $t1, -2380($fp)
	lw $t2, -2384($fp)
	bgt $t1, $t2, label810
	j label811
label810:
	li $t0, 1
	sw $t0, -2336($fp)
label811:
	lw $t0, -120($fp)
	sw $t0, -2388($fp)
	lw $t0, -1756($fp)
	sw $t0, -2392($fp)
	lw $t0, -2388($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -1816($fp)
	sw $t0, -2400($fp)
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	sub $t0, $t0, $t1
	sw $t0, -2404($fp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2408($fp)
	addi $sp, $sp, 20
	li $t0, 17970
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -2416($fp)
	lw $t0, -1508($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -2424($fp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2424($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2428($fp)
	addi $sp, $sp, 16
	lw $t0, -2308($fp)
	lw $t1, -2428($fp)
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2288($fp)
	lw $t1, -2432($fp)
	sub $t0, $t0, $t1
	sw $t0, -2436($fp)
label795:
	j label790
label792:
	j label779
label778:
label812:
	lw $t0, -552($fp)
	sw $t0, -2440($fp)
	li $t0, 0
	lw $t1, -2440($fp)
	sub $t0, $t0, $t1
	sw $t0, -2444($fp)
	li $t0, 0
	sw $t0, -2448($fp)
	li $t0, 14646
	sw $t0, -2452($fp)
	li $t0, 18097
	sw $t0, -2456($fp)
	lw $t1, -2452($fp)
	lw $t2, -2456($fp)
	blt $t1, $t2, label817
	j label816
label817:
	li $t0, 12201
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -2448($fp)
label816:
	li $t0, 0
	sw $t0, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	lw $t0, -60($fp)
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label820
label820:
	li $t0, 1
	sw $t0, -2468($fp)
label821:
	lw $t0, -612($fp)
	sw $t0, -2476($fp)
	lw $t0, -2468($fp)
	lw $t1, -2476($fp)
	sub $t0, $t0, $t1
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	lw $t0, -1756($fp)
	sw $t0, -2488($fp)
	li $t0, 40578
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label824
	j label823
label824:
	lw $t0, -492($fp)
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -2484($fp)
label823:
	li $t0, 0
	sw $t0, -2504($fp)
	li $t0, 49661
	sw $t0, -2508($fp)
	li $t0, 57682
	sw $t0, -2512($fp)
	lw $t1, -2508($fp)
	lw $t2, -2512($fp)
	beq $t1, $t2, label825
	j label827
label827:
	lw $t0, -108($fp)
	sw $t0, -2516($fp)
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label826
label825:
	li $t0, 1
	sw $t0, -2504($fp)
label826:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2520($fp)
	addi $sp, $sp, 16
	li $t0, 26169
	sw $t0, -2524($fp)
	lw $t1, -2520($fp)
	lw $t2, -2524($fp)
	ble $t1, $t2, label818
	j label819
label818:
	li $t0, 1
	sw $t0, -2464($fp)
label819:
	addi $sp, $sp, -4
	lw $t0, -2448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2528($fp)
	addi $sp, $sp, 12
	lw $t1, -2444($fp)
	lw $t2, -2528($fp)
	bge $t1, $t2, label813
	j label814
label813:
	addi $t0, $fp, -8
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	lw $t0, -1532($fp)
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label830
label830:
	li $t0, 57450
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label829
label828:
	li $t0, 1
	sw $t0, -2536($fp)
label829:
	li $t0, 0
	sw $t0, -2548($fp)
	lw $t0, -564($fp)
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label833
	j label832
label833:
	lw $t0, -1840($fp)
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label831
	j label832
label831:
	li $t0, 1
	sw $t0, -2548($fp)
label832:
	li $t0, 0
	sw $t0, -2560($fp)
	li $t0, 46067
	sw $t0, -2564($fp)
	lw $t1, -2564($fp)
	li $t2, 0
	bne $t1, $t2, label835
	j label834
label834:
	li $t0, 1
	sw $t0, -2560($fp)
label835:
	li $t0, 0
	lw $t1, -2560($fp)
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	li $t0, 0
	sw $t0, -2572($fp)
	li $t0, 54756
	sw $t0, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label836
label838:
	li $t0, 58106
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label837
label836:
	li $t0, 1
	sw $t0, -2572($fp)
label837:
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2584($fp)
	addi $sp, $sp, 20
	li $t0, 16128
	sw $t0, -2588($fp)
	li $t0, 0
	lw $t1, -2588($fp)
	sub $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2584($fp)
	lw $t1, -2592($fp)
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	li $t0, 4
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	j label812
label814:
label779:
	addi $t0, $fp, -1700
	sw $t0, -2612($fp)
	li $t0, 0
	sw $t0, -2616($fp)
	li $t0, 4
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1700
	sw $t0, -2632($fp)
	li $t0, 1
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
	lw $t0, -1756($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1768($fp)
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1780($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1792($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1804($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1816($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1828($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1840($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1852($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1864($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2692($fp)
	li $t0, 2356
	sw $t0, -2696($fp)
	li $t0, 48635
	sw $t0, -2700($fp)
	lw $t0, -2696($fp)
	lw $t1, -2700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2704($fp)
	li $t0, 45958
	sw $t0, -2708($fp)
	lw $t0, -2704($fp)
	lw $t1, -2708($fp)
	add $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -1780($fp)
	sw $t0, -2716($fp)
	li $t0, 0
	lw $t1, -2716($fp)
	sub $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2712($fp)
	lw $t1, -2720($fp)
	sub $t0, $t0, $t1
	sw $t0, -2724($fp)
	li $t0, 19445
	sw $t0, -2728($fp)
	lw $t0, -516($fp)
	sw $t0, -2732($fp)
	lw $t0, -2728($fp)
	lw $t1, -2732($fp)
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -1756($fp)
	sw $t0, -2740($fp)
	lw $t0, -2736($fp)
	lw $t1, -2740($fp)
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	li $t0, 0
	sw $t0, -2748($fp)
	li $t0, 46034
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label844
	j label843
label844:
	lw $t0, -624($fp)
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -2748($fp)
label843:
	addi $sp, $sp, -4
	lw $t0, -2744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2760($fp)
	addi $sp, $sp, 12
	lw $t1, -2724($fp)
	lw $t2, -2760($fp)
	blt $t1, $t2, label841
	j label840
label841:
	lw $t0, -564($fp)
	sw $t0, -2764($fp)
	lw $t1, -2764($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label840
label839:
	li $t0, 1
	sw $t0, -2692($fp)
label840:
	lw $ra, -4($fp)
	lw $v0, -2692($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -1700
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
	addi $t0, $fp, -1700
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
	lw $t0, -1756($fp)
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1768($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1780($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1792($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1804($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1816($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1828($fp)
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1840($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1852($fp)
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1864($fp)
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 10052
	sw $t0, -2848($fp)
	addi $t0, $fp, -52
	sw $t0, -2852($fp)
	li $t0, 1
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
	lw $t0, -2848($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	li $t0, 36792
	sw $t0, -2876($fp)
	lw $t0, -384($fp)
	sw $t0, -2880($fp)
	lw $t0, -2876($fp)
	lw $t1, -2880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2884($fp)
	lw $t0, -2872($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $ra, -4($fp)
	lw $v0, -2888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 25482
	sw $t0, -2892($fp)
	lw $t0, -492($fp)
	sw $t0, -2896($fp)
	li $t0, 0
	lw $t1, -2896($fp)
	sub $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2892($fp)
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -1780($fp)
	sw $t0, -2908($fp)
	lw $t0, -2904($fp)
	lw $t1, -2908($fp)
	sub $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -60($fp)
	sw $t0, -2916($fp)
label726:
	li $t0, 0
	sw $t0, -2920($fp)
	addi $t0, $fp, -52
	sw $t0, -2924($fp)
	li $t0, 1
	sw $t0, -2928($fp)
	li $t0, 4
	lw $t1, -2928($fp)
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	lw $t1, 0($t0)
	sw $t1, -2940($fp)
	lw $t0, -372($fp)
	sw $t0, -2944($fp)
	li $t0, 63365
	sw $t0, -2948($fp)
	lw $t0, -2944($fp)
	lw $t1, -2948($fp)
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t1, -2940($fp)
	lw $t2, -2952($fp)
	beq $t1, $t2, label845
	j label846
label845:
	li $t0, 1
	sw $t0, -2920($fp)
label846:
	li $t0, 6642
	sw $t0, -2956($fp)
	lw $t0, -60($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -2968($fp)
	li $t0, 0
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
	lw $t0, -108($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3000($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -3020($fp)
	li $t0, 1
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
	lw $t0, -3036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3040($fp)
	li $t0, 2
	sw $t0, -3044($fp)
	li $t0, 4
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, 0($t0)
	sw $t1, -3056($fp)
	lw $t0, -3056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3080($fp)
	li $t0, 4
	sw $t0, -3084($fp)
	li $t0, 4
	lw $t1, -3084($fp)
	mul $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, 0($t0)
	sw $t1, -3096($fp)
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3100($fp)
	li $t0, 5
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
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3120($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -3140($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -3160($fp)
	li $t0, 8
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
	lw $t0, -360($fp)
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3204($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -3224($fp)
	li $t0, 1
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
	lw $t0, -480($fp)
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3308($fp)
	li $t0, 4033
	sw $t0, -3312($fp)
	li $t0, 0
	lw $t1, -3312($fp)
	sub $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -120($fp)
	sw $t0, -3320($fp)
	li $t0, 0
	lw $t1, -3320($fp)
	sub $t0, $t0, $t1
	sw $t0, -3324($fp)
	li $t0, 0
	lw $t1, -3324($fp)
	sub $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -492($fp)
	sw $t0, -3332($fp)
	lw $t0, -60($fp)
	sw $t0, -3336($fp)
	lw $t0, -3332($fp)
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	li $t0, 0
	lw $t1, -3340($fp)
	sub $t0, $t0, $t1
	sw $t0, -3344($fp)
	addi $t0, $fp, -8
	sw $t0, -3348($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3364($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3368($fp)
	addi $sp, $sp, 20
	jal f10
	sw $v0, -3372($fp)
	addi $sp, $sp, 4
	lw $t0, -492($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -3380($fp)
	addi $t0, $fp, -52
	sw $t0, -3384($fp)
	lw $t0, -636($fp)
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
	li $t0, 0
	sw $t0, -3404($fp)
	li $t0, 35979
	sw $t0, -3408($fp)
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label849
label849:
	li $t0, 1
	sw $t0, -3404($fp)
label850:
	li $t0, 30296
	sw $t0, -3412($fp)
	lw $t0, -624($fp)
	sw $t0, -3416($fp)
	lw $t0, -3412($fp)
	lw $t1, -3416($fp)
	sub $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -648($fp)
	sw $t0, -3424($fp)
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3428($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3432($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3436($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3436($fp)
	sub $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3368($fp)
	lw $t1, -3440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3444($fp)
	li $t0, 0
	lw $t1, -3444($fp)
	sub $t0, $t0, $t1
	sw $t0, -3448($fp)
	addi $t0, $fp, -44
	sw $t0, -3452($fp)
	lw $t0, -396($fp)
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
	lw $t0, -624($fp)
	sw $t0, -3472($fp)
	lw $t0, -3468($fp)
	lw $t1, -3472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3476($fp)
	li $t0, 53694
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -3484($fp)
	lw $t0, -588($fp)
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -3492($fp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3496($fp)
	addi $sp, $sp, 12
	lw $t0, -3476($fp)
	lw $t1, -3496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3500($fp)
	lw $t1, -3448($fp)
	lw $t2, -3500($fp)
	blt $t1, $t2, label847
	j label848
label847:
	li $t0, 1
	sw $t0, -3308($fp)
label848:
	lw $ra, -4($fp)
	lw $v0, -3308($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1760
	li $t0, 22442
	sw $t0, -32($fp)
	addi $t0, $fp, -28
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
	li $t0, 11022
	sw $t0, -56($fp)
	addi $t0, $fp, -28
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
	li $t0, 14327
	sw $t0, -80($fp)
	addi $t0, $fp, -28
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
	li $t0, 37089
	sw $t0, -104($fp)
	addi $t0, $fp, -28
	sw $t0, -108($fp)
	li $t0, 3
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
	li $t0, 29119
	sw $t0, -128($fp)
	addi $t0, $fp, -28
	sw $t0, -132($fp)
	li $t0, 4
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
	li $t0, 26528
	sw $t0, -152($fp)
	addi $t0, $fp, -28
	sw $t0, -156($fp)
	li $t0, 5
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
	li $t0, 26309
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 21689
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 7060
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 18223
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 37817
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 9416
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 1322
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 18240
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 55450
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 20768
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 28292
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 54018
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 28873
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 65085
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 13964
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 40535
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 2338
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 11793
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 47177
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 23097
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 11811
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 51210
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 53393
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 0
	sw $t0, -452($fp)
	li $t0, 47790
	sw $t0, -456($fp)
	lw $t1, -456($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label854
label854:
	lw $t0, -276($fp)
	sw $t0, -460($fp)
	li $t0, 53696
	sw $t0, -464($fp)
	lw $t0, -460($fp)
	lw $t1, -464($fp)
	mul $t0, $t0, $t1
	sw $t0, -468($fp)
	li $t0, 47389
	sw $t0, -472($fp)
	lw $t0, -468($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	li $t0, 0
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	li $t0, 39368
	sw $t0, -488($fp)
	li $t0, 10300
	sw $t0, -492($fp)
	lw $t1, -488($fp)
	lw $t2, -492($fp)
	bne $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -484($fp)
label858:
	li $t0, 58812
	sw $t0, -496($fp)
	lw $t1, -484($fp)
	lw $t2, -496($fp)
	beq $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -480($fp)
label856:
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -500($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -500($fp)
	sub $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label853
label853:
	li $t0, 0
	sw $t0, -508($fp)
	lw $t0, -252($fp)
	sw $t0, -512($fp)
	lw $t0, -324($fp)
	sw $t0, -516($fp)
	lw $t0, -512($fp)
	lw $t1, -516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -520($fp)
	li $t0, 14688
	sw $t0, -524($fp)
	lw $t1, -520($fp)
	lw $t2, -524($fp)
	blt $t1, $t2, label860
	j label861
label860:
	li $t0, 1
	sw $t0, -508($fp)
label861:
	li $t0, 0
	sw $t0, -528($fp)
	li $t0, 22396
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label862
label862:
	li $t0, 1
	sw $t0, -528($fp)
label863:
	li $t0, 0
	lw $t1, -528($fp)
	sub $t0, $t0, $t1
	sw $t0, -536($fp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -536($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -540($fp)
	addi $sp, $sp, 12
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label859
	j label852
label859:
	li $t0, 8162
	sw $t0, -544($fp)
	lw $t0, -324($fp)
	sw $t0, -548($fp)
	lw $t1, -544($fp)
	lw $t2, -548($fp)
	beq $t1, $t2, label851
	j label852
label851:
	li $t0, 1
	sw $t0, -452($fp)
label852:
	lw $t0, 12($fp)
	sw $t0, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label865
label864:
	lw $t0, 4($fp)
	sw $t0, -556($fp)
	lw $ra, -4($fp)
	lw $v0, -556($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label866
label865:
	li $t0, 44085
	sw $t0, -560($fp)
	li $t0, 0
	sw $t0, -564($fp)
	addi $t0, $fp, -28
	sw $t0, -568($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	lw $t1, -584($fp)
	sub $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t1, -588($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label867
label867:
	li $t0, 1
	sw $t0, -564($fp)
label868:
	lw $t0, -560($fp)
	lw $t1, -564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -592($fp)
label866:
	li $t0, 0
	sw $t0, -596($fp)
	addi $t0, $fp, -28
	sw $t0, -600($fp)
	lw $t0, -444($fp)
	sw $t0, -604($fp)
	li $t0, 4
	lw $t1, -604($fp)
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	lw $t1, -600($fp)
	add $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	lw $t1, 0($t0)
	sw $t1, -616($fp)
	li $t0, 21748
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	li $t0, 31164
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -632($fp)
	li $t0, 16367
	sw $t0, -636($fp)
	li $t0, 0
	lw $t1, -636($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	li $t0, 26385
	sw $t0, -644($fp)
	lw $t0, -372($fp)
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	sub $t0, $t0, $t1
	sw $t0, -652($fp)
	addi $sp, $sp, -4
	lw $t0, -632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -652($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -656($fp)
	addi $sp, $sp, 16
	lw $t1, -624($fp)
	lw $t2, -656($fp)
	bne $t1, $t2, label871
	j label870
label871:
	lw $t0, -444($fp)
	sw $t0, -660($fp)
	lw $t0, 12($fp)
	sw $t0, -664($fp)
	li $t0, 0
	lw $t1, -664($fp)
	sub $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -660($fp)
	lw $t1, -668($fp)
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -596($fp)
label870:
label872:
	li $t0, 0
	sw $t0, -676($fp)
	li $t0, 48475
	sw $t0, -680($fp)
	li $t0, 62899
	sw $t0, -684($fp)
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	sub $t0, $t0, $t1
	sw $t0, -688($fp)
	li $t0, 9560
	sw $t0, -692($fp)
	lw $t1, -688($fp)
	lw $t2, -692($fp)
	blt $t1, $t2, label875
	j label876
label875:
	li $t0, 1
	sw $t0, -676($fp)
label876:
	li $t0, 0
	sw $t0, -696($fp)
	lw $t0, -312($fp)
	sw $t0, -700($fp)
	lw $t0, -228($fp)
	sw $t0, -704($fp)
	lw $t1, -700($fp)
	lw $t2, -704($fp)
	bge $t1, $t2, label879
	j label878
label879:
	li $t0, 21078
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -696($fp)
label878:
	li $t0, 0
	sw $t0, -712($fp)
	li $t0, 27707
	sw $t0, -716($fp)
	lw $t1, -716($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label881
label883:
	li $t0, 34607
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label881
label882:
	lw $t0, 8($fp)
	sw $t0, -724($fp)
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label881
label880:
	li $t0, 1
	sw $t0, -712($fp)
label881:
	lw $t0, -348($fp)
	sw $t0, -728($fp)
	lw $t0, -276($fp)
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -736($fp)
	addi $sp, $sp, -4
	lw $t0, -676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -736($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -740($fp)
	addi $sp, $sp, 20
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label874
label873:
label884:
	lw $t0, -180($fp)
	sw $t0, -744($fp)
	li $t0, 11812
	sw $t0, -748($fp)
	li $t0, 0
	lw $t1, -748($fp)
	sub $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -744($fp)
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	li $t0, 0
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
label887:
	li $t0, 0
	sw $t0, -768($fp)
	li $t0, 0
	sw $t0, -772($fp)
	li $t0, 47129
	sw $t0, -776($fp)
	lw $t0, -336($fp)
	sw $t0, -780($fp)
	lw $t1, -776($fp)
	lw $t2, -780($fp)
	blt $t1, $t2, label894
	j label893
label894:
	li $t0, 19663
	sw $t0, -784($fp)
	lw $t1, -784($fp)
	li $t2, 0
	bne $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -772($fp)
label893:
	li $t0, 0
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, 8($fp)
	sw $t0, -796($fp)
	li $t0, 33989
	sw $t0, -800($fp)
	lw $t1, -796($fp)
	lw $t2, -800($fp)
	blt $t1, $t2, label897
	j label898
label897:
	li $t0, 1
	sw $t0, -792($fp)
label898:
	li $t0, 35318
	sw $t0, -804($fp)
	li $t0, 0
	sw $t0, -808($fp)
	lw $t0, -324($fp)
	sw $t0, -812($fp)
	li $t0, 52347
	sw $t0, -816($fp)
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	beq $t1, $t2, label899
	j label901
label901:
	li $t0, 64786
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -808($fp)
label900:
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -808($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -824($fp)
	addi $sp, $sp, 16
	li $t0, 22348
	sw $t0, -828($fp)
	lw $t1, -824($fp)
	lw $t2, -828($fp)
	ble $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -788($fp)
label896:
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 62448
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label903
label905:
	lw $t0, -276($fp)
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label903
label904:
	li $t0, 23524
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -832($fp)
label903:
	addi $sp, $sp, -4
	lw $t0, -772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -848($fp)
	addi $sp, $sp, 16
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label890
label890:
	li $t0, 1
	sw $t0, -768($fp)
label891:
	li $t0, 10205
	sw $t0, -852($fp)
	lw $t0, -768($fp)
	lw $t1, -852($fp)
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label889
label888:
	li $t0, 0
	sw $t0, -860($fp)
	jal f10
	sw $v0, -864($fp)
	addi $sp, $sp, 4
	li $t0, 29383
	sw $t0, -868($fp)
	lw $t1, -864($fp)
	lw $t2, -868($fp)
	ble $t1, $t2, label906
	j label907
label906:
	li $t0, 1
	sw $t0, -860($fp)
label907:
	j label887
label889:
	j label884
label886:
	j label872
label874:
	li $t0, 0
	sw $t0, -872($fp)
	addi $t0, $fp, -28
	sw $t0, -876($fp)
	lw $t0, -408($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -884($fp)
	li $t0, 4
	lw $t1, -884($fp)
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	lw $t1, -896($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label908
label908:
	li $t0, 1
	sw $t0, -872($fp)
label909:
	li $t0, 59032
	sw $t0, -900($fp)
	li $t0, 0
	lw $t1, -900($fp)
	sub $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -872($fp)
	lw $t1, -904($fp)
	sub $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -300($fp)
	sw $t0, -912($fp)
	lw $t0, -252($fp)
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -920($fp)
	li $t0, 20505
	sw $t0, -924($fp)
	li $t0, 0
	lw $t1, -924($fp)
	sub $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -920($fp)
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	lw $t0, -180($fp)
	sw $t0, -940($fp)
	li $t0, 0
	sw $t0, -944($fp)
	lw $t0, -372($fp)
	sw $t0, -948($fp)
	lw $t1, -948($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label913
label913:
	li $t0, 1
	sw $t0, -944($fp)
label914:
	lw $t1, -940($fp)
	lw $t2, -944($fp)
	blt $t1, $t2, label910
	j label912
label912:
	lw $t0, -444($fp)
	sw $t0, -952($fp)
	lw $t0, 8($fp)
	sw $t0, -956($fp)
	lw $t0, -952($fp)
	lw $t1, -956($fp)
	mul $t0, $t0, $t1
	sw $t0, -960($fp)
	li $t0, 22660
	sw $t0, -964($fp)
	li $t0, 47192
	sw $t0, -968($fp)
	lw $t0, -964($fp)
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -960($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label911
label910:
	li $t0, 1
	sw $t0, -936($fp)
label911:
	li $t0, 0
	sw $t0, -980($fp)
	lw $t0, -276($fp)
	sw $t0, -984($fp)
	lw $t0, -180($fp)
	sw $t0, -988($fp)
	lw $t1, -984($fp)
	lw $t2, -988($fp)
	bne $t1, $t2, label920
	j label919
label920:
	li $t0, 45056
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -980($fp)
label919:
	lw $t0, -300($fp)
	sw $t0, -996($fp)
	li $t0, 0
	sw $t0, -1000($fp)
	lw $t0, 8($fp)
	sw $t0, -1004($fp)
	lw $t0, -192($fp)
	sw $t0, -1008($fp)
	lw $t1, -1004($fp)
	lw $t2, -1008($fp)
	beq $t1, $t2, label921
	j label923
label923:
	li $t0, 2358
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label921
	j label922
label921:
	li $t0, 1
	sw $t0, -1000($fp)
label922:
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1016($fp)
	addi $sp, $sp, 16
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label916
label915:
label924:
	lw $t0, -204($fp)
	sw $t0, -1020($fp)
	lw $t0, -276($fp)
	sw $t0, -1024($fp)
	lw $t0, -444($fp)
	sw $t0, -1028($fp)
	lw $t0, -1024($fp)
	lw $t1, -1028($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t1, -1020($fp)
	lw $t2, -1032($fp)
	bne $t1, $t2, label928
	j label927
label928:
	lw $t0, -444($fp)
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label927
label927:
	li $t0, 61880
	sw $t0, -1040($fp)
	li $t0, 10520
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label926
label929:
	lw $t0, -216($fp)
	sw $t0, -1052($fp)
	li $t0, 23605
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label926
label925:
	li $t0, 0
	sw $t0, -1064($fp)
	li $t0, 0
	sw $t0, -1068($fp)
	li $t0, 18093
	sw $t0, -1072($fp)
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label933
	j label932
label932:
	li $t0, 1
	sw $t0, -1068($fp)
label933:
	lw $t0, -324($fp)
	sw $t0, -1076($fp)
	lw $t0, -1068($fp)
	lw $t1, -1076($fp)
	mul $t0, $t0, $t1
	sw $t0, -1080($fp)
	li $t0, 47552
	sw $t0, -1084($fp)
	lw $t0, -324($fp)
	sw $t0, -1088($fp)
	lw $t0, -1084($fp)
	lw $t1, -1088($fp)
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	li $t0, 4800
	sw $t0, -1096($fp)
	lw $t0, -216($fp)
	sw $t0, -1100($fp)
	lw $t0, -1096($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -228($fp)
	sw $t0, -1108($fp)
	lw $t0, -1104($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1112($fp)
	li $t0, 0
	sw $t0, -1116($fp)
	li $t0, 39972
	sw $t0, -1120($fp)
	li $t0, 49257
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	sub $t0, $t0, $t1
	sw $t0, -1128($fp)
	li $t0, 64613
	sw $t0, -1132($fp)
	lw $t1, -1128($fp)
	lw $t2, -1132($fp)
	beq $t1, $t2, label934
	j label935
label934:
	li $t0, 1
	sw $t0, -1116($fp)
label935:
	lw $t0, 8($fp)
	sw $t0, -1136($fp)
	lw $t0, -324($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -1144($fp)
	lw $t0, -324($fp)
	sw $t0, -1148($fp)
	lw $t0, -180($fp)
	sw $t0, -1152($fp)
	lw $t0, -1148($fp)
	lw $t1, -1152($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	li $t0, 36905
	sw $t0, -1160($fp)
	lw $t0, -1156($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1164($fp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1164($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1168($fp)
	addi $sp, $sp, 20
	li $t0, 9043
	sw $t0, -1172($fp)
	lw $t0, -1168($fp)
	lw $t1, -1172($fp)
	sub $t0, $t0, $t1
	sw $t0, -1176($fp)
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1180($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1180($fp)
	sub $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t1, -1080($fp)
	lw $t2, -1184($fp)
	beq $t1, $t2, label930
	j label931
label930:
	li $t0, 1
	sw $t0, -1064($fp)
label931:
	j label924
label926:
	j label917
label916:
	li $t0, 6407
	sw $t0, -1188($fp)
	li $t0, 0
	sw $t0, -1192($fp)
	lw $t0, -396($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -1200($fp)
	addi $t0, $fp, -28
	sw $t0, -1204($fp)
	li $t0, 3
	sw $t0, -1208($fp)
	li $t0, 4
	lw $t1, -1208($fp)
	mul $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	lw $t1, 0($t0)
	sw $t1, -1220($fp)
	lw $t0, 8($fp)
	sw $t0, -1224($fp)
	lw $t0, -1220($fp)
	lw $t1, -1224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1228($fp)
	li $t0, 0
	sw $t0, -1232($fp)
	lw $t0, -408($fp)
	sw $t0, -1236($fp)
	li $t0, 0
	lw $t1, -1236($fp)
	sub $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t1, -1240($fp)
	li $t2, 0
	bne $t1, $t2, label941
	j label943
label943:
	lw $t0, -384($fp)
	sw $t0, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label941
	j label942
label941:
	li $t0, 1
	sw $t0, -1232($fp)
label942:
	addi $sp, $sp, -4
	lw $t0, -1200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1248($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label940
	j label939
label939:
	li $t0, 1
	sw $t0, -1192($fp)
label940:
	lw $t0, -1188($fp)
	lw $t1, -1192($fp)
	sub $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label937
label936:
	addi $t0, $fp, -28
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 3319
	sw $t0, -1268($fp)
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label944
label944:
	li $t0, 1
	sw $t0, -1264($fp)
label945:
	li $t0, 4
	lw $t1, -1264($fp)
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t1, 0($t0)
	sw $t1, -1284($fp)
	lw $t0, -240($fp)
	sw $t0, -1288($fp)
	lw $t0, -444($fp)
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -276($fp)
	sw $t0, -1300($fp)
	lw $t0, -1296($fp)
	lw $t1, -1300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1304($fp)
	lw $t0, -384($fp)
	sw $t0, -1308($fp)
	lw $t0, -1304($fp)
	lw $t1, -1308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1312($fp)
	lw $t0, -1284($fp)
	lw $t1, -1312($fp)
	sub $t0, $t0, $t1
	sw $t0, -1316($fp)
	j label938
label937:
	li $t0, 0
	sw $t0, -1320($fp)
	li $t0, 0
	sw $t0, -1324($fp)
	lw $t0, 8($fp)
	sw $t0, -1328($fp)
	li $t0, 2570
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label951
label951:
	lw $t0, 4($fp)
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label950
label949:
	li $t0, 1
	sw $t0, -1324($fp)
label950:
	li $t0, 0
	sw $t0, -1344($fp)
	lw $t0, -444($fp)
	sw $t0, -1348($fp)
	lw $t0, -360($fp)
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	li $t0, 46176
	sw $t0, -1360($fp)
	lw $t1, -1356($fp)
	lw $t2, -1360($fp)
	beq $t1, $t2, label952
	j label953
label952:
	li $t0, 1
	sw $t0, -1344($fp)
label953:
	li $t0, 37885
	sw $t0, -1364($fp)
	li $t0, 0
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	addi $sp, $sp, -4
	lw $t0, -1324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1372($fp)
	addi $sp, $sp, 16
	li $t0, 34293
	sw $t0, -1376($fp)
	lw $t0, -360($fp)
	sw $t0, -1380($fp)
	lw $t0, -1376($fp)
	lw $t1, -1380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1384($fp)
	li $t0, 35123
	sw $t0, -1388($fp)
	lw $t0, -1384($fp)
	lw $t1, -1388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1392($fp)
	li $t0, 0
	sw $t0, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	lw $t0, -276($fp)
	sw $t0, -1404($fp)
	li $t0, 24918
	sw $t0, -1408($fp)
	lw $t1, -1404($fp)
	lw $t2, -1408($fp)
	blt $t1, $t2, label956
	j label957
label956:
	li $t0, 1
	sw $t0, -1400($fp)
label957:
	li $t0, 54796
	sw $t0, -1412($fp)
	lw $t1, -1400($fp)
	lw $t2, -1412($fp)
	blt $t1, $t2, label954
	j label955
label954:
	li $t0, 1
	sw $t0, -1396($fp)
label955:
	li $t0, 0
	sw $t0, -1416($fp)
	li $t0, 14629
	sw $t0, -1420($fp)
	lw $t0, -276($fp)
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1428($fp)
	lw $t0, -324($fp)
	sw $t0, -1432($fp)
	lw $t1, -1428($fp)
	lw $t2, -1432($fp)
	bne $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -1416($fp)
label959:
	lw $t0, -264($fp)
	sw $t0, -1436($fp)
	lw $t0, -288($fp)
	sw $t0, -1440($fp)
	lw $t0, -1436($fp)
	lw $t1, -1440($fp)
	mul $t0, $t0, $t1
	sw $t0, -1444($fp)
	li $t0, 7667
	sw $t0, -1448($fp)
	lw $t0, -1444($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1456($fp)
	addi $sp, $sp, 20
	lw $t0, -1372($fp)
	lw $t1, -1456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label947
label948:
	li $t0, 18643
	sw $t0, -1464($fp)
	lw $t0, -444($fp)
	sw $t0, -1468($fp)
	lw $t0, -1464($fp)
	lw $t1, -1468($fp)
	sub $t0, $t0, $t1
	sw $t0, -1472($fp)
	li $t0, 27789
	sw $t0, -1476($fp)
	lw $t0, -1472($fp)
	lw $t1, -1476($fp)
	sub $t0, $t0, $t1
	sw $t0, -1480($fp)
	li $t0, 55629
	sw $t0, -1484($fp)
	li $t0, 41303
	sw $t0, -1488($fp)
	lw $t0, -1484($fp)
	lw $t1, -1488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1492($fp)
	lw $t1, -1480($fp)
	lw $t2, -1492($fp)
	bne $t1, $t2, label946
	j label947
label946:
	li $t0, 1
	sw $t0, -1320($fp)
label947:
label938:
label917:
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
	sw $t0, -1556($fp)
	li $t0, 3
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
	lw $t0, -1572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1576($fp)
	li $t0, 4
	sw $t0, -1580($fp)
	li $t0, 4
	lw $t1, -1580($fp)
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, -1576($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t1, 0($t0)
	sw $t1, -1592($fp)
	lw $t0, -1592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1596($fp)
	li $t0, 5
	sw $t0, -1600($fp)
	li $t0, 4
	lw $t1, -1600($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	lw $t0, -1612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1708($fp)
	li $t0, 0
	sw $t0, -1712($fp)
	li $t0, 5789
	sw $t0, -1716($fp)
	lw $t0, -180($fp)
	sw $t0, -1720($fp)
	lw $t1, -1716($fp)
	lw $t2, -1720($fp)
	bne $t1, $t2, label960
	j label961
label960:
	li $t0, 1
	sw $t0, -1712($fp)
label961:
	li $t0, 20823
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -1728($fp)
	li $t0, 0
	sw $t0, -1732($fp)
	li $t0, 0
	sw $t0, -1736($fp)
	li $t0, 9445
	sw $t0, -1740($fp)
	li $t0, 57987
	sw $t0, -1744($fp)
	lw $t1, -1740($fp)
	lw $t2, -1744($fp)
	ble $t1, $t2, label964
	j label965
label964:
	li $t0, 1
	sw $t0, -1736($fp)
label965:
	lw $t0, -228($fp)
	sw $t0, -1748($fp)
	lw $t1, -1736($fp)
	lw $t2, -1748($fp)
	bgt $t1, $t2, label962
	j label963
label962:
	li $t0, 1
	sw $t0, -1732($fp)
label963:
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1732($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1752($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -1752($fp)
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, 0($t0)
	sw $t1, -1764($fp)
	lw $ra, -4($fp)
	lw $v0, -1764($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2300
	li $t0, 2972
	sw $t0, -144($fp)
	addi $t0, $fp, -36
	sw $t0, -148($fp)
	li $t0, 0
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
	li $t0, 44429
	sw $t0, -168($fp)
	addi $t0, $fp, -36
	sw $t0, -172($fp)
	li $t0, 1
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
	li $t0, 23882
	sw $t0, -192($fp)
	addi $t0, $fp, -36
	sw $t0, -196($fp)
	li $t0, 2
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
	li $t0, 39877
	sw $t0, -216($fp)
	addi $t0, $fp, -36
	sw $t0, -220($fp)
	li $t0, 3
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
	li $t0, 18865
	sw $t0, -240($fp)
	addi $t0, $fp, -36
	sw $t0, -244($fp)
	li $t0, 4
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
	li $t0, 7604
	sw $t0, -264($fp)
	addi $t0, $fp, -36
	sw $t0, -268($fp)
	li $t0, 5
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
	li $t0, 38954
	sw $t0, -288($fp)
	addi $t0, $fp, -36
	sw $t0, -292($fp)
	li $t0, 6
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -292($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -288($fp)
	lw $t1, -304($fp)
	sw $t0, 0($t1)
	lw $t0, -304($fp)
	lw $t1, 0($t0)
	sw $t1, -308($fp)
	li $t0, 27909
	sw $t0, -312($fp)
	addi $t0, $fp, -36
	sw $t0, -316($fp)
	li $t0, 7
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
	li $t0, 12404
	sw $t0, -336($fp)
	addi $t0, $fp, -76
	sw $t0, -340($fp)
	li $t0, 0
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
	li $t0, 20971
	sw $t0, -360($fp)
	addi $t0, $fp, -76
	sw $t0, -364($fp)
	li $t0, 1
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
	li $t0, 34316
	sw $t0, -384($fp)
	addi $t0, $fp, -76
	sw $t0, -388($fp)
	li $t0, 2
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
	li $t0, 26764
	sw $t0, -408($fp)
	addi $t0, $fp, -76
	sw $t0, -412($fp)
	li $t0, 3
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
	li $t0, 14800
	sw $t0, -432($fp)
	addi $t0, $fp, -76
	sw $t0, -436($fp)
	li $t0, 4
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
	li $t0, 37635
	sw $t0, -456($fp)
	addi $t0, $fp, -76
	sw $t0, -460($fp)
	li $t0, 5
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
	li $t0, 64649
	sw $t0, -480($fp)
	addi $t0, $fp, -76
	sw $t0, -484($fp)
	li $t0, 6
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
	li $t0, 60976
	sw $t0, -504($fp)
	addi $t0, $fp, -76
	sw $t0, -508($fp)
	li $t0, 7
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
	li $t0, 40205
	sw $t0, -528($fp)
	addi $t0, $fp, -76
	sw $t0, -532($fp)
	li $t0, 8
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
	li $t0, 6780
	sw $t0, -552($fp)
	addi $t0, $fp, -76
	sw $t0, -556($fp)
	li $t0, 9
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
	li $t0, 10070
	sw $t0, -576($fp)
	addi $t0, $fp, -108
	sw $t0, -580($fp)
	li $t0, 0
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
	li $t0, 65123
	sw $t0, -600($fp)
	addi $t0, $fp, -108
	sw $t0, -604($fp)
	li $t0, 1
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
	li $t0, 61576
	sw $t0, -624($fp)
	addi $t0, $fp, -108
	sw $t0, -628($fp)
	li $t0, 2
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
	li $t0, 44363
	sw $t0, -648($fp)
	addi $t0, $fp, -108
	sw $t0, -652($fp)
	li $t0, 3
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
	li $t0, 34711
	sw $t0, -672($fp)
	addi $t0, $fp, -108
	sw $t0, -676($fp)
	li $t0, 4
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
	li $t0, 14684
	sw $t0, -696($fp)
	addi $t0, $fp, -108
	sw $t0, -700($fp)
	li $t0, 5
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
	li $t0, 6616
	sw $t0, -720($fp)
	addi $t0, $fp, -108
	sw $t0, -724($fp)
	li $t0, 6
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
	li $t0, 24804
	sw $t0, -744($fp)
	addi $t0, $fp, -108
	sw $t0, -748($fp)
	li $t0, 7
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
	li $t0, 55987
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 16061
	sw $t0, -780($fp)
	addi $t0, $fp, -140
	sw $t0, -784($fp)
	li $t0, 0
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
	li $t0, 17255
	sw $t0, -804($fp)
	addi $t0, $fp, -140
	sw $t0, -808($fp)
	li $t0, 1
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
	li $t0, 11275
	sw $t0, -828($fp)
	addi $t0, $fp, -140
	sw $t0, -832($fp)
	li $t0, 2
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
	li $t0, 21850
	sw $t0, -852($fp)
	addi $t0, $fp, -140
	sw $t0, -856($fp)
	li $t0, 3
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
	li $t0, 20227
	sw $t0, -876($fp)
	addi $t0, $fp, -140
	sw $t0, -880($fp)
	li $t0, 4
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
	li $t0, 55704
	sw $t0, -900($fp)
	addi $t0, $fp, -140
	sw $t0, -904($fp)
	li $t0, 5
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
	li $t0, 45733
	sw $t0, -924($fp)
	addi $t0, $fp, -140
	sw $t0, -928($fp)
	li $t0, 6
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
	li $t0, 60105
	sw $t0, -948($fp)
	addi $t0, $fp, -140
	sw $t0, -952($fp)
	li $t0, 7
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
	li $t0, 9033
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	li $t0, 53337
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 33523
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 36942
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	li $t0, 205
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 54494
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 0
	sw $t0, -1044($fp)
	li $t0, 5722
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label968
	j label967
label968:
	lw $t0, -1012($fp)
	sw $t0, -1052($fp)
	lw $t0, 12($fp)
	sw $t0, -1056($fp)
	lw $t0, 4($fp)
	sw $t0, -1060($fp)
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1064($fp)
	lw $t0, -1052($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -1044($fp)
label967:
	lw $t0, 12($fp)
	sw $t0, -1072($fp)
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label970
label969:
	li $t0, 0
	sw $t0, -1076($fp)
	addi $t0, $fp, -108
	sw $t0, -1080($fp)
	lw $t0, 12($fp)
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
	addi $t0, $fp, -76
	sw $t0, -1100($fp)
	lw $t0, 4($fp)
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
	addi $t0, $fp, -108
	sw $t0, -1120($fp)
	lw $t0, -988($fp)
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
	lw $t0, -988($fp)
	sw $t0, -1140($fp)
	lw $t0, -1136($fp)
	lw $t1, -1140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	li $t0, 26969
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label978
	j label977
label978:
	li $t0, 3758
	sw $t0, -1156($fp)
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label977
label976:
	li $t0, 1
	sw $t0, -1148($fp)
label977:
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1148($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1160($fp)
	addi $sp, $sp, 16
	lw $t0, -1096($fp)
	lw $t1, -1160($fp)
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t1, -1164($fp)
	li $t2, 0
	bne $t1, $t2, label975
	j label973
label975:
	jal f10
	sw $v0, -1168($fp)
	addi $sp, $sp, 4
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label973
label974:
	li $t0, 0
	sw $t0, -1172($fp)
	addi $t0, $fp, -108
	sw $t0, -1176($fp)
	li $t0, 3
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
	bne $t1, $t2, label980
	j label979
label979:
	li $t0, 1
	sw $t0, -1172($fp)
label980:
	li $t0, 64735
	sw $t0, -1196($fp)
	lw $t0, -988($fp)
	sw $t0, -1200($fp)
	lw $t0, -1196($fp)
	lw $t1, -1200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1204($fp)
	lw $t0, -1172($fp)
	lw $t1, -1204($fp)
	sub $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label972
	j label973
label972:
	li $t0, 1
	sw $t0, -1076($fp)
label973:
	lw $ra, -4($fp)
	lw $v0, -1076($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label971
label970:
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 0
	sw $t0, -1216($fp)
	addi $t0, $fp, -140
	sw $t0, -1220($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -1240($fp)
	li $t0, 17615
	sw $t0, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label985
	j label986
label985:
	li $t0, 1
	sw $t0, -1240($fp)
label986:
	lw $t1, -1236($fp)
	lw $t2, -1240($fp)
	bgt $t1, $t2, label983
	j label984
label983:
	li $t0, 1
	sw $t0, -1216($fp)
label984:
	li $t0, 28904
	sw $t0, -1248($fp)
	lw $t1, -1216($fp)
	lw $t2, -1248($fp)
	beq $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -1212($fp)
label982:
	lw $ra, -4($fp)
	lw $v0, -1212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label971:
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 0
	sw $t0, -1256($fp)
	li $t0, 43588
	sw $t0, -1260($fp)
	lw $t0, -772($fp)
	sw $t0, -1264($fp)
	lw $t1, -1260($fp)
	lw $t2, -1264($fp)
	ble $t1, $t2, label992
	j label993
label992:
	li $t0, 1
	sw $t0, -1256($fp)
label993:
	lw $t0, 4($fp)
	sw $t0, -1268($fp)
	lw $t1, -1256($fp)
	lw $t2, -1268($fp)
	ble $t1, $t2, label990
	j label991
label990:
	li $t0, 1
	sw $t0, -1252($fp)
label991:
	li $t0, 0
	sw $t0, -1272($fp)
	li $t0, 52326
	sw $t0, -1276($fp)
	lw $t0, -1036($fp)
	sw $t0, -1280($fp)
	lw $t1, -1276($fp)
	lw $t2, -1280($fp)
	ble $t1, $t2, label994
	j label995
label994:
	li $t0, 1
	sw $t0, -1272($fp)
label995:
	li $t0, 0
	sw $t0, -1284($fp)
	lw $t0, -1036($fp)
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label996
label998:
	lw $t0, -1024($fp)
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label996
	j label997
label996:
	li $t0, 1
	sw $t0, -1284($fp)
label997:
	addi $sp, $sp, -4
	lw $t0, -1272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1296($fp)
	addi $sp, $sp, 12
	li $t0, 53632
	sw $t0, -1300($fp)
	li $t0, 0
	lw $t1, -1300($fp)
	sub $t0, $t0, $t1
	sw $t0, -1304($fp)
	addi $sp, $sp, -4
	lw $t0, -1252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1304($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1308($fp)
	addi $sp, $sp, 16
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label987
	j label988
label987:
	li $t0, 0
	sw $t0, -1312($fp)
	li $t0, 60248
	sw $t0, -1316($fp)
	lw $t1, -1316($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label1001
label1001:
	lw $t0, -1024($fp)
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -1312($fp)
label1000:
	lw $t0, -1312($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -1328($fp)
	li $t0, 0
	sw $t0, -1332($fp)
	jal f10
	sw $v0, -1336($fp)
	addi $sp, $sp, 4
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label1003
	j label1002
label1002:
	li $t0, 1
	sw $t0, -1332($fp)
label1003:
	li $t0, 11594
	sw $t0, -1340($fp)
	li $t0, 0
	sw $t0, -1344($fp)
	addi $t0, $fp, -108
	sw $t0, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	lw $t0, -1000($fp)
	sw $t0, -1356($fp)
	li $t0, 34039
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1024($fp)
	sw $t0, -1368($fp)
	lw $t1, -1364($fp)
	lw $t2, -1368($fp)
	bne $t1, $t2, label1006
	j label1007
label1006:
	li $t0, 1
	sw $t0, -1352($fp)
label1007:
	li $t0, 4
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, 0($t0)
	sw $t1, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label1005
	j label1004
label1004:
	li $t0, 1
	sw $t0, -1344($fp)
label1005:
	li $t0, 0
	sw $t0, -1384($fp)
	lw $t0, -772($fp)
	sw $t0, -1388($fp)
	jal f10
	sw $v0, -1392($fp)
	addi $sp, $sp, 4
	lw $t1, -1388($fp)
	lw $t2, -1392($fp)
	bne $t1, $t2, label1008
	j label1009
label1008:
	li $t0, 1
	sw $t0, -1384($fp)
label1009:
	j label989
label988:
	li $t0, 0
	sw $t0, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	li $t0, 0
	sw $t0, -1404($fp)
	li $t0, 10773
	sw $t0, -1408($fp)
	li $t0, 0
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	li $t0, 28849
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1420($fp)
	addi $t0, $fp, -76
	sw $t0, -1424($fp)
	li $t0, 3
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
	lw $t1, -1420($fp)
	lw $t2, -1440($fp)
	bne $t1, $t2, label1014
	j label1015
label1014:
	li $t0, 1
	sw $t0, -1404($fp)
label1015:
	lw $t0, -1000($fp)
	sw $t0, -1444($fp)
	lw $t0, 8($fp)
	sw $t0, -1448($fp)
	lw $t0, -1444($fp)
	lw $t1, -1448($fp)
	mul $t0, $t0, $t1
	sw $t0, -1452($fp)
	li $t0, 0
	lw $t1, -1452($fp)
	sub $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t1, -1404($fp)
	lw $t2, -1456($fp)
	beq $t1, $t2, label1012
	j label1013
label1012:
	li $t0, 1
	sw $t0, -1400($fp)
label1013:
	li $t0, 49077
	sw $t0, -1460($fp)
	lw $t1, -1400($fp)
	lw $t2, -1460($fp)
	beq $t1, $t2, label1010
	j label1011
label1010:
	li $t0, 1
	sw $t0, -1396($fp)
label1011:
	lw $ra, -4($fp)
	lw $v0, -1396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label989:
	li $t0, 0
	sw $t0, -1464($fp)
	lw $t0, 12($fp)
	sw $t0, -1468($fp)
	lw $t0, 12($fp)
	sw $t0, -1472($fp)
	lw $t1, -1468($fp)
	lw $t2, -1472($fp)
	ble $t1, $t2, label1019
	j label1021
label1021:
	lw $t0, 12($fp)
	sw $t0, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1020
label1019:
	li $t0, 1
	sw $t0, -1464($fp)
label1020:
	addi $t0, $fp, -108
	sw $t0, -1480($fp)
	lw $t0, -976($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1496($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1500($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1504($fp)
	li $t0, 0
	lw $t1, -1504($fp)
	sub $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label1016
	j label1017
label1016:
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 35482
	sw $t0, -1516($fp)
	li $t0, 0
	sw $t0, -1520($fp)
	li $t0, 43646
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1528($fp)
	lw $t0, -976($fp)
	sw $t0, -1532($fp)
	li $t0, 12820
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1540($fp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1544($fp)
	addi $sp, $sp, 12
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label1025
	j label1024
label1024:
	li $t0, 1
	sw $t0, -1520($fp)
label1025:
	lw $t1, -1516($fp)
	lw $t2, -1520($fp)
	bge $t1, $t2, label1022
	j label1023
label1022:
	li $t0, 1
	sw $t0, -1512($fp)
label1023:
	lw $ra, -4($fp)
	lw $v0, -1512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1018
label1017:
	lw $t0, 12($fp)
	sw $t0, -1548($fp)
	lw $ra, -4($fp)
	lw $v0, -1548($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1018:
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
	sw $t0, -1692($fp)
	li $t0, 7
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
	addi $t0, $fp, -76
	sw $t0, -1712($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -1732($fp)
	li $t0, 1
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
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1752($fp)
	li $t0, 2
	sw $t0, -1756($fp)
	li $t0, 4
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, 0($t0)
	sw $t1, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1772($fp)
	li $t0, 3
	sw $t0, -1776($fp)
	li $t0, 4
	lw $t1, -1776($fp)
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1792($fp)
	li $t0, 4
	sw $t0, -1796($fp)
	li $t0, 4
	lw $t1, -1796($fp)
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
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
	lw $t0, -1828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1832($fp)
	li $t0, 6
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
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1852($fp)
	li $t0, 7
	sw $t0, -1856($fp)
	li $t0, 4
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1872($fp)
	li $t0, 8
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
	addi $t0, $fp, -76
	sw $t0, -1892($fp)
	li $t0, 9
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	lw $t0, -772($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2076($fp)
	li $t0, 0
	sw $t0, -2080($fp)
	li $t0, 4
	lw $t1, -2080($fp)
	mul $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, 0($t0)
	sw $t1, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2096($fp)
	li $t0, 1
	sw $t0, -2100($fp)
	li $t0, 4
	lw $t1, -2100($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, -2096($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, 0($t0)
	sw $t1, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2116($fp)
	li $t0, 2
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
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -2136($fp)
	li $t0, 3
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
	addi $t0, $fp, -140
	sw $t0, -2156($fp)
	li $t0, 4
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
	addi $t0, $fp, -140
	sw $t0, -2176($fp)
	li $t0, 5
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
	addi $t0, $fp, -140
	sw $t0, -2196($fp)
	li $t0, 6
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
	addi $t0, $fp, -140
	sw $t0, -2216($fp)
	li $t0, 7
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
	lw $t0, -976($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -976($fp)
	sw $t0, -2268($fp)
	li $t0, 44516
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2276($fp)
	li $t0, 621
	sw $t0, -2280($fp)
	lw $t1, -2276($fp)
	lw $t2, -2280($fp)
	blt $t1, $t2, label1026
	j label1028
label1028:
	li $t0, 11633
	sw $t0, -2284($fp)
	li $t0, 15922
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 1
	sw $t0, -2264($fp)
label1027:
	li $t0, 4
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	lw $ra, -4($fp)
	lw $v0, -2304($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -852
	li $t0, 826
	sw $t0, -60($fp)
	addi $t0, $fp, -44
	sw $t0, -64($fp)
	li $t0, 0
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
	li $t0, 592
	sw $t0, -84($fp)
	addi $t0, $fp, -44
	sw $t0, -88($fp)
	li $t0, 1
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
	li $t0, 21645
	sw $t0, -108($fp)
	addi $t0, $fp, -44
	sw $t0, -112($fp)
	li $t0, 2
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
	li $t0, 27796
	sw $t0, -132($fp)
	addi $t0, $fp, -44
	sw $t0, -136($fp)
	li $t0, 3
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
	li $t0, 4350
	sw $t0, -156($fp)
	addi $t0, $fp, -44
	sw $t0, -160($fp)
	li $t0, 4
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
	li $t0, 65003
	sw $t0, -180($fp)
	addi $t0, $fp, -44
	sw $t0, -184($fp)
	li $t0, 5
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
	li $t0, 53879
	sw $t0, -204($fp)
	addi $t0, $fp, -44
	sw $t0, -208($fp)
	li $t0, 6
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
	li $t0, 3549
	sw $t0, -228($fp)
	addi $t0, $fp, -44
	sw $t0, -232($fp)
	li $t0, 7
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
	li $t0, 17494
	sw $t0, -252($fp)
	addi $t0, $fp, -44
	sw $t0, -256($fp)
	li $t0, 8
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
	li $t0, 21206
	sw $t0, -276($fp)
	addi $t0, $fp, -44
	sw $t0, -280($fp)
	li $t0, 9
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
	li $t0, 12818
	sw $t0, -300($fp)
	addi $t0, $fp, -56
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
	li $t0, 35109
	sw $t0, -324($fp)
	addi $t0, $fp, -56
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
	li $t0, 50110
	sw $t0, -348($fp)
	addi $t0, $fp, -56
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
	li $t0, 914
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 21899
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	li $t0, 0
	sw $t0, -400($fp)
	li $t0, 33493
	sw $t0, -404($fp)
	lw $t0, 4($fp)
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -376($fp)
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	blt $t1, $t2, label1031
	j label1032
label1031:
	li $t0, 1
	sw $t0, -400($fp)
label1032:
	li $t0, 0
	sw $t0, -420($fp)
	lw $t0, 4($fp)
	sw $t0, -424($fp)
	lw $t0, -376($fp)
	sw $t0, -428($fp)
	lw $t1, -424($fp)
	lw $t2, -428($fp)
	ble $t1, $t2, label1035
	j label1034
label1035:
	li $t0, 61162
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1034
label1033:
	li $t0, 1
	sw $t0, -420($fp)
label1034:
	li $t0, 0
	sw $t0, -436($fp)
	lw $t0, -376($fp)
	sw $t0, -440($fp)
	lw $t0, -376($fp)
	sw $t0, -444($fp)
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -448($fp)
	li $t0, 28162
	sw $t0, -452($fp)
	lw $t1, -448($fp)
	lw $t2, -452($fp)
	bne $t1, $t2, label1036
	j label1037
label1036:
	li $t0, 1
	sw $t0, -436($fp)
label1037:
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -456($fp)
	addi $sp, $sp, 16
	lw $t1, -456($fp)
	li $t2, 0
	bne $t1, $t2, label1029
	j label1030
label1029:
	li $t0, 1
	sw $t0, -396($fp)
label1030:
	addi $t0, $fp, -56
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 62202
	sw $t0, -468($fp)
	lw $t0, -388($fp)
	sw $t0, -472($fp)
	lw $t1, -468($fp)
	lw $t2, -472($fp)
	bne $t1, $t2, label1038
	j label1039
label1038:
	li $t0, 1
	sw $t0, -464($fp)
label1039:
	li $t0, 4
	lw $t1, -464($fp)
	mul $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, 0($t0)
	sw $t1, -484($fp)
	lw $t0, -396($fp)
	lw $t1, -484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -488($fp)
	addi $t0, $fp, -44
	sw $t0, -492($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -512($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -532($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -552($fp)
	li $t0, 3
	sw $t0, -556($fp)
	li $t0, 4
	lw $t1, -556($fp)
	mul $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	lw $t1, 0($t0)
	sw $t1, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -572($fp)
	li $t0, 4
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
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -592($fp)
	li $t0, 5
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
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -612($fp)
	li $t0, 6
	sw $t0, -616($fp)
	li $t0, 4
	lw $t1, -616($fp)
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	lw $t1, 0($t0)
	sw $t1, -628($fp)
	lw $t0, -628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -632($fp)
	li $t0, 7
	sw $t0, -636($fp)
	li $t0, 4
	lw $t1, -636($fp)
	mul $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	lw $t1, 0($t0)
	sw $t1, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -652($fp)
	li $t0, 8
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
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -672($fp)
	li $t0, 9
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
	addi $t0, $fp, -56
	sw $t0, -692($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -712($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -732($fp)
	li $t0, 2
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
	lw $t0, -376($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 6399
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1043
label1043:
	li $t0, 1
	sw $t0, -764($fp)
label1044:
	li $t0, 45884
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -776($fp)
	addi $t0, $fp, -56
	sw $t0, -780($fp)
	lw $t0, 4($fp)
	sw $t0, -784($fp)
	li $t0, 4
	lw $t1, -784($fp)
	mul $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, -780($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	lw $t1, 0($t0)
	sw $t1, -796($fp)
	addi $t0, $fp, -44
	sw $t0, -800($fp)
	li $t0, 4
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
	li $t0, 39023
	sw $t0, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -824($fp)
	addi $sp, $sp, -4
	lw $t0, -776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -828($fp)
	addi $sp, $sp, 16
	lw $t0, -764($fp)
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label1040
	j label1042
label1042:
	addi $t0, $fp, -44
	sw $t0, -836($fp)
	li $t0, 0
	sw $t0, -840($fp)
	li $t0, 11927
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label1046
	j label1045
label1045:
	li $t0, 1
	sw $t0, -840($fp)
label1046:
	li $t0, 4
	lw $t1, -840($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -760($fp)
label1041:
	lw $ra, -4($fp)
	lw $v0, -760($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -248
	li $t0, 51843
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 23994
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 56443
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 52465
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -24($fp)
	sw $t0, -56($fp)
	li $t0, 0
	lw $t1, -56($fp)
	sub $t0, $t0, $t1
	sw $t0, -60($fp)
	li $t0, 0
	sw $t0, -64($fp)
	li $t0, 0
	sw $t0, -68($fp)
	lw $t0, -12($fp)
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	li $t0, 0
	sw $t0, -80($fp)
	lw $t0, -12($fp)
	sw $t0, -84($fp)
	li $t0, 35627
	sw $t0, -88($fp)
	lw $t1, -84($fp)
	lw $t2, -88($fp)
	bgt $t1, $t2, label1053
	j label1054
label1053:
	li $t0, 1
	sw $t0, -80($fp)
label1054:
	li $t0, 6829
	sw $t0, -92($fp)
	lw $t1, -80($fp)
	lw $t2, -92($fp)
	blt $t1, $t2, label1051
	j label1052
label1051:
	li $t0, 1
	sw $t0, -76($fp)
label1052:
	lw $t1, -72($fp)
	lw $t2, -76($fp)
	bne $t1, $t2, label1049
	j label1050
label1049:
	li $t0, 1
	sw $t0, -68($fp)
label1050:
	lw $t0, -36($fp)
	sw $t0, -96($fp)
	lw $t1, -68($fp)
	lw $t2, -96($fp)
	bne $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -64($fp)
label1048:
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
	lw $t0, -36($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -116($fp)
	li $t0, 0
	sw $t0, -120($fp)
	lw $t0, -48($fp)
	sw $t0, -124($fp)
	lw $t1, -124($fp)
	li $t2, 0
	bne $t1, $t2, label1055
	j label1058
label1058:
	li $t0, 3894
	sw $t0, -128($fp)
	lw $t1, -128($fp)
	li $t2, 0
	bne $t1, $t2, label1055
	j label1057
label1057:
	lw $t0, -24($fp)
	sw $t0, -132($fp)
	lw $t1, -132($fp)
	li $t2, 0
	bne $t1, $t2, label1055
	j label1056
label1055:
	li $t0, 1
	sw $t0, -120($fp)
label1056:
	li $t0, 0
	sw $t0, -136($fp)
	jal f14
	sw $v0, -140($fp)
	addi $sp, $sp, 4
	lw $t0, -24($fp)
	sw $t0, -144($fp)
	lw $t0, -140($fp)
	lw $t1, -144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -148($fp)
	li $t0, 27941
	sw $t0, -152($fp)
	addi $sp, $sp, -4
	lw $t0, -148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -152($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -156($fp)
	addi $sp, $sp, 12
	lw $t0, -24($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -164($fp)
	li $t0, 0
	sw $t0, -168($fp)
	li $t0, 28474
	sw $t0, -172($fp)
	li $t0, 15551
	sw $t0, -176($fp)
	lw $t0, -172($fp)
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label1063
	j label1062
label1063:
	li $t0, 40570
	sw $t0, -184($fp)
	lw $t1, -184($fp)
	li $t2, 0
	bne $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -168($fp)
label1062:
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -168($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -188($fp)
	addi $sp, $sp, 16
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label1060
	j label1059
label1059:
	li $t0, 1
	sw $t0, -136($fp)
label1060:
	li $t0, 0
	sw $t0, -192($fp)
	li $t0, 53291
	sw $t0, -196($fp)
	li $t0, 0
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	li $t0, 36219
	sw $t0, -204($fp)
	lw $t1, -200($fp)
	lw $t2, -204($fp)
	blt $t1, $t2, label1064
	j label1065
label1064:
	li $t0, 1
	sw $t0, -192($fp)
label1065:
	addi $sp, $sp, -4
	lw $t0, -120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -192($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -208($fp)
	addi $sp, $sp, 16
	lw $t0, -36($fp)
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	addi $sp, $sp, -4
	lw $t0, -116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -220($fp)
	addi $sp, $sp, 12
	li $t0, 44119
	sw $t0, -224($fp)
	li $t0, 45436
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	li $t0, 0
	lw $t1, -232($fp)
	sub $t0, $t0, $t1
	sw $t0, -236($fp)
	li $t0, 0
	lw $t1, -236($fp)
	sub $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -220($fp)
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	li $t0, 0
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	li $t0, 0
	lw $t1, -248($fp)
	sub $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $ra, -4($fp)
	lw $v0, -252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -84
	li $t0, 25101
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 56938
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	li $t0, 9675
	sw $t0, -40($fp)
	li $t0, 57852
	sw $t0, -44($fp)
	lw $t1, -40($fp)
	lw $t2, -44($fp)
	ble $t1, $t2, label1068
	j label1069
label1068:
	li $t0, 1
	sw $t0, -36($fp)
label1069:
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t1, -36($fp)
	lw $t2, -48($fp)
	beq $t1, $t2, label1066
	j label1067
label1066:
	li $t0, 1
	sw $t0, -32($fp)
label1067:
	li $t0, 0
	sw $t0, -52($fp)
	li $t0, 15009
	sw $t0, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	sub $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label1070
	j label1072
label1072:
	lw $t0, -24($fp)
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label1070
	j label1071
label1070:
	li $t0, 1
	sw $t0, -52($fp)
label1071:
	lw $t0, -24($fp)
	sw $t0, -72($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -76($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 36909
	sw $t0, -88($fp)
	lw $ra, -4($fp)
	lw $v0, -88($fp)
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
