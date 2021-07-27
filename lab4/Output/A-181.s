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
	addi $sp, $sp, -668
	li $t0, 44432
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 32175
	sw $t0, -56($fp)
	addi $t0, $fp, -40
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
	li $t0, 1700
	sw $t0, -80($fp)
	addi $t0, $fp, -40
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
	li $t0, 37462
	sw $t0, -104($fp)
	addi $t0, $fp, -40
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
	li $t0, 31596
	sw $t0, -128($fp)
	addi $t0, $fp, -40
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
	li $t0, 11874
	sw $t0, -152($fp)
	addi $t0, $fp, -40
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
	li $t0, 27746
	sw $t0, -176($fp)
	addi $t0, $fp, -40
	sw $t0, -180($fp)
	li $t0, 5
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
	li $t0, 29442
	sw $t0, -200($fp)
	addi $t0, $fp, -40
	sw $t0, -204($fp)
	li $t0, 6
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
	li $t0, 52555
	sw $t0, -224($fp)
	addi $t0, $fp, -40
	sw $t0, -228($fp)
	li $t0, 7
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
	li $t0, 63660
	sw $t0, -248($fp)
	addi $t0, $fp, -40
	sw $t0, -252($fp)
	li $t0, 8
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
	li $t0, 31988
	sw $t0, -272($fp)
	li $t0, 14361
	sw $t0, -276($fp)
	lw $t0, -272($fp)
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, 54726
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -288($fp)
	li $t0, 6773
	sw $t0, -292($fp)
	lw $t0, 12($fp)
	sw $t0, -296($fp)
	lw $t0, -292($fp)
	lw $t1, -296($fp)
	sub $t0, $t0, $t1
	sw $t0, -300($fp)
	li $t0, 10895
	sw $t0, -304($fp)
	li $t0, 37739
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -312($fp)
	li $t0, 0
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -300($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
label121:
	lw $t0, 4($fp)
	sw $t0, -324($fp)
	li $t0, 6249
	sw $t0, -328($fp)
	lw $t0, 8($fp)
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	li $t0, 0
	lw $t1, -336($fp)
	sub $t0, $t0, $t1
	sw $t0, -340($fp)
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 8($fp)
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label128
label128:
	lw $t0, 12($fp)
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label127
label127:
	lw $t0, 8($fp)
	sw $t0, -356($fp)
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -344($fp)
label126:
	lw $t0, 12($fp)
	sw $t0, -360($fp)
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -364($fp)
	addi $sp, $sp, 16
	lw $t0, -324($fp)
	lw $t1, -364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -368($fp)
	lw $t0, 8($fp)
	sw $t0, -372($fp)
	lw $t0, -368($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label124
label124:
	li $t0, 57618
	sw $t0, -380($fp)
	li $t0, 39501
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -388($fp)
	addi $t0, $fp, -40
	sw $t0, -392($fp)
	li $t0, 2
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
	lw $t0, -388($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label123
label122:
	addi $t0, $fp, -40
	sw $t0, -416($fp)
	li $t0, 0
	sw $t0, -420($fp)
	li $t0, 28469
	sw $t0, -424($fp)
	lw $t0, -48($fp)
	sw $t0, -428($fp)
	lw $t1, -424($fp)
	lw $t2, -428($fp)
	bgt $t1, $t2, label129
	j label131
label131:
	lw $t0, 8($fp)
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -420($fp)
label130:
	li $t0, 4
	lw $t1, -420($fp)
	mul $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, -416($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, 0($t0)
	sw $t1, -444($fp)
	li $t0, 53482
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -452($fp)
	j label121
label123:
	lw $t0, -48($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -460($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -540($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -560($fp)
	li $t0, 5
	sw $t0, -564($fp)
	li $t0, 4
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, 0($t0)
	sw $t1, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -580($fp)
	li $t0, 6
	sw $t0, -584($fp)
	li $t0, 4
	lw $t1, -584($fp)
	mul $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t1, -580($fp)
	add $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	lw $t1, 0($t0)
	sw $t1, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -600($fp)
	li $t0, 7
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
	lw $t0, -616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -620($fp)
	li $t0, 8
	sw $t0, -624($fp)
	li $t0, 4
	lw $t1, -624($fp)
	mul $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	lw $t1, 0($t0)
	sw $t1, -636($fp)
	lw $t0, -636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -640($fp)
	addi $t0, $fp, -40
	sw $t0, -644($fp)
	lw $t0, 4($fp)
	sw $t0, -648($fp)
	li $t0, 0
	lw $t1, -648($fp)
	sub $t0, $t0, $t1
	sw $t0, -652($fp)
	li $t0, 4
	lw $t1, -652($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t1, 0($t0)
	sw $t1, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -640($fp)
label133:
	li $t0, 23484
	sw $t0, -668($fp)
	lw $t0, -640($fp)
	lw $t1, -668($fp)
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $ra, -4($fp)
	lw $v0, -672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -608
	li $t0, 54300
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
	li $t0, 49610
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
	li $t0, 64031
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
	li $t0, 16321
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
	li $t0, 25949
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
	li $t0, 60232
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
	li $t0, 60753
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
	li $t0, 58124
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
	li $t0, 61932
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, 20($fp)
	sw $t0, -244($fp)
	li $t0, 0
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
label134:
	lw $t0, 8($fp)
	sw $t0, -252($fp)
	li $t0, 24185
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	li $t0, 32679
	sw $t0, -264($fp)
	li $t0, 0
	lw $t1, -264($fp)
	sub $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 1
	sw $t0, -260($fp)
label139:
	addi $sp, $sp, -4
	lw $t0, -252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -272($fp)
	addi $sp, $sp, 16
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label137
label137:
	li $t0, 8270
	sw $t0, -276($fp)
	lw $t0, 8($fp)
	sw $t0, -280($fp)
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	lw $t0, 8($fp)
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -288($fp)
label141:
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
label142:
	lw $t0, -236($fp)
	sw $t0, -300($fp)
	lw $t1, -300($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label148
label148:
	lw $t0, 20($fp)
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label144
label147:
	lw $t0, 12($fp)
	sw $t0, -308($fp)
	li $t0, 60426
	sw $t0, -312($fp)
	lw $t1, -308($fp)
	lw $t2, -312($fp)
	bge $t1, $t2, label146
	j label144
label146:
	lw $t0, 4($fp)
	sw $t0, -316($fp)
	li $t0, 53627
	sw $t0, -320($fp)
	lw $t0, -316($fp)
	lw $t1, -320($fp)
	sub $t0, $t0, $t1
	sw $t0, -324($fp)
	li $t0, 60825
	sw $t0, -328($fp)
	lw $t0, -324($fp)
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label145:
	li $t0, 47740
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -340($fp)
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 12($fp)
	sw $t0, -348($fp)
	li $t0, 9651
	sw $t0, -352($fp)
	lw $t0, -348($fp)
	lw $t1, -352($fp)
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, 12($fp)
	sw $t0, -360($fp)
	lw $t1, -356($fp)
	lw $t2, -360($fp)
	ble $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -344($fp)
label150:
	li $t0, 0
	sw $t0, -364($fp)
	addi $t0, $fp, -36
	sw $t0, -368($fp)
	li $t0, 7
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
	lw $t0, 16($fp)
	sw $t0, -388($fp)
	lw $t1, -384($fp)
	lw $t2, -388($fp)
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -364($fp)
label152:
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -392($fp)
	addi $sp, $sp, 16
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 0
	sw $t0, -396($fp)
	addi $t0, $fp, -36
	sw $t0, -400($fp)
	li $t0, 0
	sw $t0, -404($fp)
	li $t0, 26853
	sw $t0, -408($fp)
	lw $t0, 8($fp)
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	sub $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label157
label158:
	lw $t0, 8($fp)
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -404($fp)
label157:
	li $t0, 4
	lw $t1, -404($fp)
	mul $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	lw $t1, 0($t0)
	sw $t1, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label155
label155:
	li $t0, 20546
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -396($fp)
label154:
	j label142
label144:
	j label134
label136:
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
	sw $t0, -540($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -560($fp)
	li $t0, 6
	sw $t0, -564($fp)
	li $t0, 4
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, 0($t0)
	sw $t1, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -580($fp)
	li $t0, 7
	sw $t0, -584($fp)
	li $t0, 4
	lw $t1, -584($fp)
	mul $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t1, -580($fp)
	add $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	lw $t1, 0($t0)
	sw $t1, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 19944
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -612($fp)
	lw $ra, -4($fp)
	lw $v0, -612($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -156
	li $t0, 33102
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
	li $t0, 12628
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
	addi $t0, $fp, -12
	sw $t0, -64($fp)
	li $t0, 0
	sw $t0, -68($fp)
	li $t0, 59445
	sw $t0, -72($fp)
	li $t0, 21230
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	mul $t0, $t0, $t1
	sw $t0, -80($fp)
	li $t0, 33213
	sw $t0, -84($fp)
	li $t0, 22378
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	sub $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t1, -80($fp)
	lw $t2, -92($fp)
	beq $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -68($fp)
label160:
	li $t0, 4
	lw $t1, -68($fp)
	mul $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t1, 0($t0)
	sw $t1, -104($fp)
	addi $t0, $fp, -12
	sw $t0, -108($fp)
	li $t0, 0
	sw $t0, -112($fp)
	li $t0, 4
	lw $t1, -112($fp)
	mul $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	lw $t1, -108($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	lw $t1, 0($t0)
	sw $t1, -124($fp)
	lw $t0, -124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -128($fp)
	li $t0, 1
	sw $t0, -132($fp)
	li $t0, 4
	lw $t1, -132($fp)
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t1, 0($t0)
	sw $t1, -144($fp)
	lw $t0, -144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 51817
	sw $t0, -148($fp)
	li $t0, 0
	lw $t1, -148($fp)
	sub $t0, $t0, $t1
	sw $t0, -152($fp)
	li $t0, 21158
	sw $t0, -156($fp)
	lw $t0, -152($fp)
	lw $t1, -156($fp)
	sub $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $ra, -4($fp)
	lw $v0, -160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -92
	li $t0, 45863
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t0, -8($fp)
	lw $t1, -12($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16($fp)
	li $t0, 0
	lw $t1, -16($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, 12($fp)
	sw $t0, -32($fp)
	li $t0, 40582
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	ble $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -28($fp)
label164:
	lw $t0, 12($fp)
	sw $t0, -40($fp)
	lw $t0, 8($fp)
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	lw $t1, -44($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -48($fp)
	li $t0, 56903
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -56($fp)
	li $t0, 0
	sw $t0, -60($fp)
	li $t0, 44358
	sw $t0, -64($fp)
	lw $t0, 8($fp)
	sw $t0, -68($fp)
	lw $t1, -64($fp)
	lw $t2, -68($fp)
	ble $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -60($fp)
label166:
	li $t0, 0
	sw $t0, -72($fp)
	lw $t0, 12($fp)
	sw $t0, -76($fp)
	li $t0, 0
	lw $t1, -76($fp)
	sub $t0, $t0, $t1
	sw $t0, -80($fp)
	li $t0, 5232
	sw $t0, -84($fp)
	lw $t1, -80($fp)
	lw $t2, -84($fp)
	beq $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -72($fp)
label168:
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -88($fp)
	addi $sp, $sp, 16
	li $t0, 39055
	sw $t0, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -96($fp)
	lw $t1, -28($fp)
	lw $t2, -96($fp)
	beq $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -24($fp)
label162:
	lw $ra, -4($fp)
	lw $v0, -24($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2532
	li $t0, 52121
	sw $t0, -116($fp)
	addi $t0, $fp, -12
	sw $t0, -120($fp)
	li $t0, 0
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
	li $t0, 23769
	sw $t0, -140($fp)
	addi $t0, $fp, -12
	sw $t0, -144($fp)
	li $t0, 1
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
	li $t0, 35450
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 19264
	sw $t0, -176($fp)
	addi $t0, $fp, -52
	sw $t0, -180($fp)
	li $t0, 0
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
	li $t0, 47954
	sw $t0, -200($fp)
	addi $t0, $fp, -52
	sw $t0, -204($fp)
	li $t0, 1
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
	li $t0, 43720
	sw $t0, -224($fp)
	addi $t0, $fp, -52
	sw $t0, -228($fp)
	li $t0, 2
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
	li $t0, 14154
	sw $t0, -248($fp)
	addi $t0, $fp, -52
	sw $t0, -252($fp)
	li $t0, 3
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
	li $t0, 36045
	sw $t0, -272($fp)
	addi $t0, $fp, -52
	sw $t0, -276($fp)
	li $t0, 4
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
	li $t0, 39010
	sw $t0, -296($fp)
	addi $t0, $fp, -52
	sw $t0, -300($fp)
	li $t0, 5
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
	li $t0, 7168
	sw $t0, -320($fp)
	addi $t0, $fp, -52
	sw $t0, -324($fp)
	li $t0, 6
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
	li $t0, 56125
	sw $t0, -344($fp)
	addi $t0, $fp, -52
	sw $t0, -348($fp)
	li $t0, 7
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
	li $t0, 48661
	sw $t0, -368($fp)
	addi $t0, $fp, -52
	sw $t0, -372($fp)
	li $t0, 8
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
	li $t0, 54909
	sw $t0, -392($fp)
	addi $t0, $fp, -52
	sw $t0, -396($fp)
	li $t0, 9
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
	li $t0, 17442
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 3671
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 9317
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 50544
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 16299
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 3226
	sw $t0, -476($fp)
	addi $t0, $fp, -76
	sw $t0, -480($fp)
	li $t0, 0
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
	li $t0, 6238
	sw $t0, -500($fp)
	addi $t0, $fp, -76
	sw $t0, -504($fp)
	li $t0, 1
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
	li $t0, 49512
	sw $t0, -524($fp)
	addi $t0, $fp, -76
	sw $t0, -528($fp)
	li $t0, 2
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
	li $t0, 25604
	sw $t0, -548($fp)
	addi $t0, $fp, -76
	sw $t0, -552($fp)
	li $t0, 3
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
	li $t0, 58056
	sw $t0, -572($fp)
	addi $t0, $fp, -76
	sw $t0, -576($fp)
	li $t0, 4
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
	li $t0, 5134
	sw $t0, -596($fp)
	addi $t0, $fp, -76
	sw $t0, -600($fp)
	li $t0, 5
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
	li $t0, 5931
	sw $t0, -620($fp)
	addi $t0, $fp, -112
	sw $t0, -624($fp)
	li $t0, 0
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
	li $t0, 33102
	sw $t0, -644($fp)
	addi $t0, $fp, -112
	sw $t0, -648($fp)
	li $t0, 1
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
	li $t0, 10366
	sw $t0, -668($fp)
	addi $t0, $fp, -112
	sw $t0, -672($fp)
	li $t0, 2
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
	li $t0, 50289
	sw $t0, -692($fp)
	addi $t0, $fp, -112
	sw $t0, -696($fp)
	li $t0, 3
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
	li $t0, 24469
	sw $t0, -716($fp)
	addi $t0, $fp, -112
	sw $t0, -720($fp)
	li $t0, 4
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
	li $t0, 41547
	sw $t0, -740($fp)
	addi $t0, $fp, -112
	sw $t0, -744($fp)
	li $t0, 5
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
	li $t0, 23807
	sw $t0, -764($fp)
	addi $t0, $fp, -112
	sw $t0, -768($fp)
	li $t0, 6
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
	li $t0, 11054
	sw $t0, -788($fp)
	addi $t0, $fp, -112
	sw $t0, -792($fp)
	li $t0, 7
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
	li $t0, 65316
	sw $t0, -812($fp)
	addi $t0, $fp, -112
	sw $t0, -816($fp)
	li $t0, 8
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
label169:
	addi $t0, $fp, -76
	sw $t0, -836($fp)
	li $t0, 0
	sw $t0, -840($fp)
	li $t0, 59257
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label172
label172:
	li $t0, 1
	sw $t0, -840($fp)
label173:
	li $t0, 0
	lw $t1, -840($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	li $t0, 4
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	lw $t1, 0($t0)
	sw $t1, -860($fp)
	li $t0, 0
	sw $t0, -864($fp)
	lw $t0, 12($fp)
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label174
label174:
	li $t0, 1
	sw $t0, -864($fp)
label175:
	lw $t1, -860($fp)
	lw $t2, -864($fp)
	bgt $t1, $t2, label170
	j label171
label170:
label176:
	li $t0, 30319
	sw $t0, -872($fp)
	addi $t0, $fp, -112
	sw $t0, -876($fp)
	li $t0, 47735
	sw $t0, -880($fp)
	li $t0, 37442
	sw $t0, -884($fp)
	lw $t0, -880($fp)
	lw $t1, -884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -888($fp)
	li $t0, 4
	lw $t1, -888($fp)
	mul $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	lw $t1, 0($t0)
	sw $t1, -900($fp)
	lw $t0, -872($fp)
	lw $t1, -900($fp)
	sub $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
label179:
	li $t0, 26275
	sw $t0, -908($fp)
	lw $t0, 12($fp)
	sw $t0, -912($fp)
	lw $t0, -908($fp)
	lw $t1, -912($fp)
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, 12($fp)
	sw $t0, -920($fp)
	lw $t0, -916($fp)
	lw $t1, -920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -924($fp)
	li $t0, 41015
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	li $t0, 51642
	sw $t0, -940($fp)
	li $t0, 8833
	sw $t0, -944($fp)
	lw $t0, -940($fp)
	lw $t1, -944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -948($fp)
	lw $t1, -948($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label183
label184:
	li $t0, 59577
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -936($fp)
label183:
	li $t0, 0
	sw $t0, -956($fp)
	addi $t0, $fp, -76
	sw $t0, -960($fp)
	li $t0, 4
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
	li $t0, 10916
	sw $t0, -980($fp)
	lw $t1, -976($fp)
	lw $t2, -980($fp)
	blt $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -956($fp)
label186:
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -984($fp)
	addi $sp, $sp, 20
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
label187:
	lw $t0, -456($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	addi $t0, $fp, -52
	sw $t0, -996($fp)
	li $t0, 0
	sw $t0, -1000($fp)
	lw $t0, -444($fp)
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label192:
	lw $t0, -456($fp)
	sw $t0, -1008($fp)
	lw $t1, -1008($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -1000($fp)
label191:
	li $t0, 4
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	lw $t1, 0($t0)
	sw $t1, -1020($fp)
	lw $t0, -468($fp)
	sw $t0, -1024($fp)
	lw $t0, -1020($fp)
	lw $t1, -1024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1028($fp)
	addi $t0, $fp, -76
	sw $t0, -1032($fp)
	lw $t0, 20($fp)
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
	lw $t0, -1028($fp)
	lw $t1, -1048($fp)
	sub $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $ra, -4($fp)
	lw $v0, -1052($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label187
label189:
	j label179
label181:
	j label176
label178:
	j label169
label171:
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 0
	sw $t0, -1060($fp)
	lw $t0, 16($fp)
	sw $t0, -1064($fp)
	lw $t1, -1064($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -1060($fp)
label196:
	lw $t0, -456($fp)
	sw $t0, -1068($fp)
	lw $t0, -1060($fp)
	lw $t1, -1068($fp)
	sub $t0, $t0, $t1
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	addi $t0, $fp, -112
	sw $t0, -1080($fp)
	li $t0, 3
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
	lw $t1, -1096($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -1076($fp)
label198:
	lw $t1, -1072($fp)
	lw $t2, -1076($fp)
	bgt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1056($fp)
label194:
	li $t0, 11284
	sw $t0, -1100($fp)
	li $t0, 0
	lw $t1, -1100($fp)
	sub $t0, $t0, $t1
	sw $t0, -1104($fp)
	li $t0, 0
	lw $t1, -1104($fp)
	sub $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $ra, -4($fp)
	lw $v0, -1108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label199:
	li $t0, 14011
	sw $t0, -1112($fp)
	li $t0, 0
	sw $t0, -1116($fp)
	lw $t0, -432($fp)
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label202
label202:
	li $t0, 1
	sw $t0, -1116($fp)
label203:
	lw $t0, -1112($fp)
	lw $t1, -1116($fp)
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	addi $t0, $fp, -112
	sw $t0, -1128($fp)
	li $t0, 6
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
	li $t0, 10042
	sw $t0, -1148($fp)
	lw $t0, -1144($fp)
	lw $t1, -1148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1152($fp)
	li $t0, 0
	sw $t0, -1156($fp)
	li $t0, 17522
	sw $t0, -1160($fp)
	li $t0, 0
	lw $t1, -1160($fp)
	sub $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, 8($fp)
	sw $t0, -1168($fp)
	lw $t1, -1164($fp)
	lw $t2, -1168($fp)
	bge $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -1156($fp)
label205:
	li $t0, 0
	sw $t0, -1172($fp)
	addi $t0, $fp, -112
	sw $t0, -1176($fp)
	lw $t0, 8($fp)
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
	bne $t1, $t2, label206
	j label208
label208:
	lw $t0, 8($fp)
	sw $t0, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1172($fp)
label207:
	li $t0, 53558
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -1204($fp)
	addi $sp, $sp, -4
	lw $t0, -1152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1208($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -1208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label199
label201:
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 0
	sw $t0, -1216($fp)
	li $t0, 2078
	sw $t0, -1220($fp)
	lw $t0, -168($fp)
	sw $t0, -1224($fp)
	lw $t1, -1220($fp)
	lw $t2, -1224($fp)
	ble $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -1216($fp)
label212:
	li $t0, 0
	sw $t0, -1228($fp)
	li $t0, 4311
	sw $t0, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label215
label215:
	lw $t0, 8($fp)
	sw $t0, -1236($fp)
	lw $t1, -1236($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -1228($fp)
label214:
	addi $t0, $fp, -112
	sw $t0, -1240($fp)
	li $t0, 5
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
	addi $t0, $fp, -112
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
	lw $t0, -420($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -1284($fp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1288($fp)
	addi $sp, $sp, 24
	lw $t0, 16($fp)
	sw $t0, -1292($fp)
	lw $t1, -1288($fp)
	lw $t2, -1292($fp)
	bge $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -1212($fp)
label210:
	addi $t0, $fp, -12
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
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1316($fp)
	li $t0, 1
	sw $t0, -1320($fp)
	li $t0, 4
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1340($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -1360($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -1380($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -1400($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -1420($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -1440($fp)
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -1460($fp)
	li $t0, 6
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
	addi $t0, $fp, -52
	sw $t0, -1480($fp)
	li $t0, 7
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
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1500($fp)
	li $t0, 8
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
	addi $t0, $fp, -52
	sw $t0, -1520($fp)
	li $t0, 9
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
	lw $t0, -420($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1560($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -1580($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -1600($fp)
	li $t0, 2
	sw $t0, -1604($fp)
	li $t0, 4
	lw $t1, -1604($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, 0($t0)
	sw $t1, -1616($fp)
	lw $t0, -1616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1620($fp)
	li $t0, 3
	sw $t0, -1624($fp)
	li $t0, 4
	lw $t1, -1624($fp)
	mul $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	lw $t1, 0($t0)
	sw $t1, -1636($fp)
	lw $t0, -1636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1640($fp)
	li $t0, 4
	sw $t0, -1644($fp)
	li $t0, 4
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, 0($t0)
	sw $t1, -1656($fp)
	lw $t0, -1656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1660($fp)
	li $t0, 5
	sw $t0, -1664($fp)
	li $t0, 4
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	lw $t0, -1676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1680($fp)
	li $t0, 0
	sw $t0, -1684($fp)
	li $t0, 4
	lw $t1, -1684($fp)
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1700($fp)
	li $t0, 1
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
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1720($fp)
	li $t0, 2
	sw $t0, -1724($fp)
	li $t0, 4
	lw $t1, -1724($fp)
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, 0($t0)
	sw $t1, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1740($fp)
	li $t0, 3
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
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1760($fp)
	li $t0, 4
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
	addi $t0, $fp, -112
	sw $t0, -1780($fp)
	li $t0, 5
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
	addi $t0, $fp, -112
	sw $t0, -1800($fp)
	li $t0, 6
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
	addi $t0, $fp, -112
	sw $t0, -1820($fp)
	li $t0, 7
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
	lw $t0, -1836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1840($fp)
	li $t0, 8
	sw $t0, -1844($fp)
	li $t0, 4
	lw $t1, -1844($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, 0($t0)
	sw $t1, -1856($fp)
	lw $t0, -1856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -1860($fp)
	lw $t0, 20($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -1868($fp)
	li $t0, 28119
	sw $t0, -1872($fp)
	li $t0, 0
	lw $t1, -1872($fp)
	sub $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, 16($fp)
	sw $t0, -1880($fp)
	lw $t0, 4($fp)
	sw $t0, -1884($fp)
	lw $t0, -1880($fp)
	lw $t1, -1884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	lw $t0, 12($fp)
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -1892($fp)
label217:
	li $t0, 0
	sw $t0, -1900($fp)
	li $t0, 55034
	sw $t0, -1904($fp)
	lw $t0, -432($fp)
	sw $t0, -1908($fp)
	lw $t0, -1904($fp)
	lw $t1, -1908($fp)
	sub $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label220
label220:
	lw $t0, -468($fp)
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -1900($fp)
label219:
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1920($fp)
	addi $sp, $sp, 24
	lw $t0, -1860($fp)
	lw $t1, -1920($fp)
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $ra, -4($fp)
	lw $v0, -1924($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, -168($fp)
	sw $t0, -1932($fp)
	li $t0, 13132
	sw $t0, -1936($fp)
	lw $t1, -1932($fp)
	lw $t2, -1936($fp)
	bge $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -1928($fp)
label222:
	addi $t0, $fp, -12
	sw $t0, -1940($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -1960($fp)
	li $t0, 1
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
	lw $t0, -168($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1984($fp)
	li $t0, 0
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
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2004($fp)
	li $t0, 1
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
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2024($fp)
	li $t0, 2
	sw $t0, -2028($fp)
	li $t0, 4
	lw $t1, -2028($fp)
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	lw $t0, -2040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2044($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -2064($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -2084($fp)
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -2104($fp)
	li $t0, 6
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
	addi $t0, $fp, -52
	sw $t0, -2124($fp)
	li $t0, 7
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
	addi $t0, $fp, -52
	sw $t0, -2144($fp)
	li $t0, 8
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
	addi $t0, $fp, -52
	sw $t0, -2164($fp)
	li $t0, 9
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
	lw $t0, -420($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2204($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -2224($fp)
	li $t0, 1
	sw $t0, -2228($fp)
	li $t0, 4
	lw $t1, -2228($fp)
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	lw $t1, 0($t0)
	sw $t1, -2240($fp)
	lw $t0, -2240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2244($fp)
	li $t0, 2
	sw $t0, -2248($fp)
	li $t0, 4
	lw $t1, -2248($fp)
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	lw $t1, -2244($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, 0($t0)
	sw $t1, -2260($fp)
	lw $t0, -2260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2264($fp)
	li $t0, 3
	sw $t0, -2268($fp)
	li $t0, 4
	lw $t1, -2268($fp)
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	lw $t1, -2264($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2284($fp)
	li $t0, 4
	sw $t0, -2288($fp)
	li $t0, 4
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t0, -2300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2304($fp)
	li $t0, 5
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
	lw $t0, -2320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2324($fp)
	li $t0, 0
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
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2344($fp)
	li $t0, 1
	sw $t0, -2348($fp)
	li $t0, 4
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2364($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -2384($fp)
	li $t0, 3
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
	addi $t0, $fp, -112
	sw $t0, -2404($fp)
	li $t0, 4
	sw $t0, -2408($fp)
	li $t0, 4
	lw $t1, -2408($fp)
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	lw $t1, -2404($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	lw $t0, -2420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2424($fp)
	li $t0, 5
	sw $t0, -2428($fp)
	li $t0, 4
	lw $t1, -2428($fp)
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	lw $t0, -2440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2444($fp)
	li $t0, 6
	sw $t0, -2448($fp)
	li $t0, 4
	lw $t1, -2448($fp)
	mul $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	lw $t1, 0($t0)
	sw $t1, -2460($fp)
	lw $t0, -2460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2464($fp)
	li $t0, 7
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
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2484($fp)
	li $t0, 8
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
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -2504($fp)
	li $t0, 0
	sw $t0, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	li $t0, 54814
	sw $t0, -2516($fp)
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -2512($fp)
label226:
	li $t0, 21840
	sw $t0, -2520($fp)
	lw $t1, -2512($fp)
	lw $t2, -2520($fp)
	bge $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -2508($fp)
label224:
	li $t0, 4
	lw $t1, -2508($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	li $t0, 0
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $ra, -4($fp)
	lw $v0, -2536($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -420
	li $t0, 43451
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
	li $t0, 37013
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
	li $t0, 59282
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
	li $t0, 22389
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
	li $t0, 55258
	sw $t0, -120($fp)
	li $t0, 4662
	sw $t0, -124($fp)
	li $t0, 0
	lw $t1, -124($fp)
	sub $t0, $t0, $t1
	sw $t0, -128($fp)
	li $t0, 0
	lw $t1, -128($fp)
	sub $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -120($fp)
	lw $t1, -132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -136($fp)
	li $t0, 0
	sw $t0, -140($fp)
	addi $t0, $fp, -20
	sw $t0, -144($fp)
	lw $t0, 12($fp)
	sw $t0, -148($fp)
	li $t0, 4
	lw $t1, -148($fp)
	mul $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	lw $t1, 0($t0)
	sw $t1, -160($fp)
	lw $t1, -160($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label227:
	li $t0, 1
	sw $t0, -140($fp)
label228:
	lw $t0, -136($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, 16($fp)
	sw $t0, -168($fp)
	li $t0, 0
	sw $t0, -172($fp)
	li $t0, 8495
	sw $t0, -176($fp)
	lw $t0, 16($fp)
	sw $t0, -180($fp)
	lw $t0, -176($fp)
	lw $t1, -180($fp)
	mul $t0, $t0, $t1
	sw $t0, -184($fp)
	li $t0, 24831
	sw $t0, -188($fp)
	li $t0, 61951
	sw $t0, -192($fp)
	lw $t0, -188($fp)
	lw $t1, -192($fp)
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	li $t0, 0
	sw $t0, -200($fp)
	lw $t0, 8($fp)
	sw $t0, -204($fp)
	lw $t1, -204($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -200($fp)
label234:
	li $t0, 0
	sw $t0, -208($fp)
	li $t0, 64239
	sw $t0, -212($fp)
	li $t0, 49510
	sw $t0, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label237
label237:
	lw $t0, 4($fp)
	sw $t0, -224($fp)
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -208($fp)
label236:
	li $t0, 64091
	sw $t0, -228($fp)
	li $t0, 0
	lw $t1, -228($fp)
	sub $t0, $t0, $t1
	sw $t0, -232($fp)
	addi $sp, $sp, -4
	lw $t0, -196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -232($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -236($fp)
	addi $sp, $sp, 20
	lw $t1, -184($fp)
	lw $t2, -236($fp)
	bne $t1, $t2, label232
	j label230
label232:
	lw $t0, 16($fp)
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label230
label231:
	li $t0, 34306
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -172($fp)
label230:
	addi $t0, $fp, -20
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 4
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	lw $t1, 0($t0)
	sw $t1, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -268($fp)
	li $t0, 1
	sw $t0, -272($fp)
	li $t0, 4
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t1, 0($t0)
	sw $t1, -284($fp)
	lw $t0, -284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -288($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -308($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 36115
	sw $t0, -332($fp)
	lw $t0, 16($fp)
	sw $t0, -336($fp)
	lw $t0, -332($fp)
	lw $t1, -336($fp)
	mul $t0, $t0, $t1
	sw $t0, -340($fp)
	li $t0, 10426
	sw $t0, -344($fp)
	lw $t0, -340($fp)
	lw $t1, -344($fp)
	mul $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label240
label241:
	lw $t0, 4($fp)
	sw $t0, -352($fp)
	lw $t0, 4($fp)
	sw $t0, -356($fp)
	lw $t0, -352($fp)
	lw $t1, -356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	li $t0, 35954
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label242:
	li $t0, 1
	sw $t0, -364($fp)
label243:
	li $t0, 0
	sw $t0, -372($fp)
	li $t0, 8413
	sw $t0, -376($fp)
	lw $t0, 4($fp)
	sw $t0, -380($fp)
	lw $t1, -376($fp)
	lw $t2, -380($fp)
	ble $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -372($fp)
label245:
	li $t0, 22328
	sw $t0, -384($fp)
	lw $t0, 12($fp)
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	li $t0, 53637
	sw $t0, -396($fp)
	lw $t0, -392($fp)
	lw $t1, -396($fp)
	sub $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, 16($fp)
	sw $t0, -404($fp)
	lw $t0, 4($fp)
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -416($fp)
	addi $sp, $sp, 24
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label238
label240:
	li $t0, 63680
	sw $t0, -420($fp)
	li $t0, 0
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -328($fp)
label239:
	lw $ra, -4($fp)
	lw $v0, -328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -36
	li $t0, 11534
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	mul $t0, $t0, $t1
	sw $t0, -28($fp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -32($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 55512
	sw $t0, -40($fp)
	lw $ra, -4($fp)
	lw $v0, -40($fp)
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
