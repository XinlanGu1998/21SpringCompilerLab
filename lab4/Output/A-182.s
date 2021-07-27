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
	addi $sp, $sp, -4748
	li $t0, 17782
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 44114
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 3370
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 15355
	sw $t0, -68($fp)
	addi $t0, $fp, -20
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
	li $t0, 3722
	sw $t0, -92($fp)
	addi $t0, $fp, -20
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
	li $t0, 43634
	sw $t0, -116($fp)
	addi $t0, $fp, -20
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
	li $t0, 53778
	sw $t0, -140($fp)
	addi $t0, $fp, -20
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
	li $t0, 29094
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 2991
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 16732
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 35135
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 61115
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 46100
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 35415
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 387
	sw $t0, -248($fp)
	addi $t0, $fp, -28
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
	li $t0, 64711
	sw $t0, -272($fp)
	addi $t0, $fp, -28
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
	lw $t0, -180($fp)
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	lw $t0, -60($fp)
	sw $t0, -304($fp)
	li $t0, 19488
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -312($fp)
	lw $t0, -180($fp)
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label126
label126:
	lw $t0, -228($fp)
	sw $t0, -324($fp)
	li $t0, 58279
	sw $t0, -328($fp)
	lw $t0, -324($fp)
	lw $t1, -328($fp)
	mul $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -300($fp)
label125:
	lw $t0, -300($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	addi $t0, $fp, -28
	sw $t0, -340($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 5157
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label133
label133:
	lw $t0, -192($fp)
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label132
label132:
	li $t0, 1594
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -360($fp)
label131:
	lw $t0, -216($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -380($fp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -384($fp)
	addi $sp, $sp, 16
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
	li $t0, 0
	sw $t0, -388($fp)
	li $t0, 0
	sw $t0, -392($fp)
	lw $t0, 4($fp)
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -392($fp)
label137:
	li $t0, 0
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label134:
	li $t0, 1
	sw $t0, -388($fp)
label135:
	lw $ra, -4($fp)
	lw $v0, -388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label129
label128:
	li $t0, 0
	sw $t0, -404($fp)
	addi $t0, $fp, -20
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	li $t0, 63812
	sw $t0, -420($fp)
	li $t0, 58618
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -428($fp)
	lw $t1, -428($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label144
label144:
	li $t0, 60791
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -416($fp)
label143:
	li $t0, 0
	sw $t0, -436($fp)
	li $t0, 28399
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	lw $t0, -60($fp)
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -448($fp)
label149:
	li $t0, 12807
	sw $t0, -456($fp)
	lw $t0, -448($fp)
	lw $t1, -456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 10947
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label153
label153:
	li $t0, 38663
	sw $t0, -472($fp)
	lw $t1, -472($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label152
label152:
	li $t0, 44724
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -464($fp)
label151:
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -480($fp)
	addi $sp, $sp, 16
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label147
label147:
	lw $t0, -204($fp)
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -436($fp)
label146:
	li $t0, 0
	sw $t0, -488($fp)
	li $t0, 16862
	sw $t0, -492($fp)
	li $t0, 63858
	sw $t0, -496($fp)
	lw $t0, -492($fp)
	lw $t1, -496($fp)
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -240($fp)
	sw $t0, -504($fp)
	lw $t1, -500($fp)
	lw $t2, -504($fp)
	beq $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -488($fp)
label155:
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -508($fp)
	addi $sp, $sp, 16
	li $t0, 27469
	sw $t0, -512($fp)
	lw $t1, -508($fp)
	lw $t2, -512($fp)
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -412($fp)
label141:
	li $t0, 4
	lw $t1, -412($fp)
	mul $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	lw $t1, 0($t0)
	sw $t1, -524($fp)
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 1
	sw $t0, -404($fp)
label139:
	lw $ra, -4($fp)
	lw $v0, -404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label129:
	j label123
label122:
	li $t0, 10864
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 39369
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 30839
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 26219
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 43091
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 8938
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 14461
	sw $t0, -700($fp)
	addi $t0, $fp, -560
	sw $t0, -704($fp)
	li $t0, 0
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
	li $t0, 6649
	sw $t0, -724($fp)
	addi $t0, $fp, -560
	sw $t0, -728($fp)
	li $t0, 1
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
	li $t0, 11929
	sw $t0, -748($fp)
	addi $t0, $fp, -560
	sw $t0, -752($fp)
	li $t0, 2
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
	li $t0, 31193
	sw $t0, -772($fp)
	addi $t0, $fp, -560
	sw $t0, -776($fp)
	li $t0, 3
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
	li $t0, 41784
	sw $t0, -796($fp)
	addi $t0, $fp, -560
	sw $t0, -800($fp)
	li $t0, 4
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
	li $t0, 7508
	sw $t0, -820($fp)
	addi $t0, $fp, -560
	sw $t0, -824($fp)
	li $t0, 5
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
	li $t0, 11757
	sw $t0, -844($fp)
	addi $t0, $fp, -560
	sw $t0, -848($fp)
	li $t0, 6
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
	li $t0, 11664
	sw $t0, -868($fp)
	addi $t0, $fp, -560
	sw $t0, -872($fp)
	li $t0, 7
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
	li $t0, 7896
	sw $t0, -892($fp)
	addi $t0, $fp, -560
	sw $t0, -896($fp)
	li $t0, 8
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
	li $t0, 10933
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 31152
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 639
	sw $t0, -940($fp)
	addi $t0, $fp, -564
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
	li $t0, 16090
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 32746
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 17501
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 14412
	sw $t0, -1000($fp)
	addi $t0, $fp, -604
	sw $t0, -1004($fp)
	li $t0, 0
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1004($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1000($fp)
	lw $t1, -1016($fp)
	sw $t0, 0($t1)
	lw $t0, -1016($fp)
	lw $t1, 0($t0)
	sw $t1, -1020($fp)
	li $t0, 43693
	sw $t0, -1024($fp)
	addi $t0, $fp, -604
	sw $t0, -1028($fp)
	li $t0, 1
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1028($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1024($fp)
	lw $t1, -1040($fp)
	sw $t0, 0($t1)
	lw $t0, -1040($fp)
	lw $t1, 0($t0)
	sw $t1, -1044($fp)
	li $t0, 56165
	sw $t0, -1048($fp)
	addi $t0, $fp, -604
	sw $t0, -1052($fp)
	li $t0, 2
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1052($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1048($fp)
	lw $t1, -1064($fp)
	sw $t0, 0($t1)
	lw $t0, -1064($fp)
	lw $t1, 0($t0)
	sw $t1, -1068($fp)
	li $t0, 59136
	sw $t0, -1072($fp)
	addi $t0, $fp, -604
	sw $t0, -1076($fp)
	li $t0, 3
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1076($fp)
	lw $t1, -1084($fp)
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1072($fp)
	lw $t1, -1088($fp)
	sw $t0, 0($t1)
	lw $t0, -1088($fp)
	lw $t1, 0($t0)
	sw $t1, -1092($fp)
	li $t0, 56500
	sw $t0, -1096($fp)
	addi $t0, $fp, -604
	sw $t0, -1100($fp)
	li $t0, 4
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1100($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1096($fp)
	lw $t1, -1112($fp)
	sw $t0, 0($t1)
	lw $t0, -1112($fp)
	lw $t1, 0($t0)
	sw $t1, -1116($fp)
	li $t0, 19028
	sw $t0, -1120($fp)
	addi $t0, $fp, -604
	sw $t0, -1124($fp)
	li $t0, 5
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1124($fp)
	lw $t1, -1132($fp)
	add $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1120($fp)
	lw $t1, -1136($fp)
	sw $t0, 0($t1)
	lw $t0, -1136($fp)
	lw $t1, 0($t0)
	sw $t1, -1140($fp)
	li $t0, 57413
	sw $t0, -1144($fp)
	addi $t0, $fp, -604
	sw $t0, -1148($fp)
	li $t0, 6
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1148($fp)
	lw $t1, -1156($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1144($fp)
	lw $t1, -1160($fp)
	sw $t0, 0($t1)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	li $t0, 49582
	sw $t0, -1168($fp)
	addi $t0, $fp, -604
	sw $t0, -1172($fp)
	li $t0, 7
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1172($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1168($fp)
	lw $t1, -1184($fp)
	sw $t0, 0($t1)
	lw $t0, -1184($fp)
	lw $t1, 0($t0)
	sw $t1, -1188($fp)
	li $t0, 14283
	sw $t0, -1192($fp)
	addi $t0, $fp, -604
	sw $t0, -1196($fp)
	li $t0, 8
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1196($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1192($fp)
	lw $t1, -1208($fp)
	sw $t0, 0($t1)
	lw $t0, -1208($fp)
	lw $t1, 0($t0)
	sw $t1, -1212($fp)
	li $t0, 19346
	sw $t0, -1216($fp)
	addi $t0, $fp, -604
	sw $t0, -1220($fp)
	li $t0, 9
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1220($fp)
	lw $t1, -1228($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1216($fp)
	lw $t1, -1232($fp)
	sw $t0, 0($t1)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	li $t0, 60446
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 53652
	sw $t0, -1252($fp)
	addi $t0, $fp, -624
	sw $t0, -1256($fp)
	li $t0, 0
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
	li $t0, 50185
	sw $t0, -1276($fp)
	addi $t0, $fp, -624
	sw $t0, -1280($fp)
	li $t0, 1
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
	li $t0, 21129
	sw $t0, -1300($fp)
	addi $t0, $fp, -624
	sw $t0, -1304($fp)
	li $t0, 2
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
	li $t0, 31207
	sw $t0, -1324($fp)
	addi $t0, $fp, -624
	sw $t0, -1328($fp)
	li $t0, 3
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
	li $t0, 59123
	sw $t0, -1348($fp)
	addi $t0, $fp, -624
	sw $t0, -1352($fp)
	li $t0, 4
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
	li $t0, 35590
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 37856
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 5517
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 1247
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 14104
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 13025
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
label156:
	li $t0, 13004
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 25768
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	lw $t0, -1452($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1464($fp)
	li $t0, 0
	sw $t0, -1468($fp)
	addi $t0, $fp, -564
	sw $t0, -1472($fp)
	lw $t0, -1452($fp)
	sw $t0, -1476($fp)
	li $t0, 4
	lw $t1, -1476($fp)
	mul $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, 0($t0)
	sw $t1, -1488($fp)
	lw $t0, -632($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -1496($fp)
	li $t0, 21561
	sw $t0, -1500($fp)
	addi $sp, $sp, -4
	lw $t0, -1488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1504($fp)
	addi $sp, $sp, 16
	li $t0, 56920
	sw $t0, -1508($fp)
	lw $t0, -680($fp)
	sw $t0, -1512($fp)
	lw $t0, -1508($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -168($fp)
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	sub $t0, $t0, $t1
	sw $t0, -1524($fp)
	li $t0, 20921
	sw $t0, -1528($fp)
	li $t0, 0
	lw $t1, -1528($fp)
	sub $t0, $t0, $t1
	sw $t0, -1532($fp)
	li $t0, 23937
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1544($fp)
	addi $sp, $sp, 16
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label161
label161:
	li $t0, 1
	sw $t0, -1468($fp)
label162:
	li $t0, 40027
	sw $t0, -1548($fp)
	lw $t1, -1468($fp)
	lw $t2, -1548($fp)
	bgt $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -1464($fp)
label160:
	lw $ra, -4($fp)
	lw $v0, -1464($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label163:
	li $t0, 24130
	sw $t0, -1552($fp)
	addi $t0, $fp, -564
	sw $t0, -1556($fp)
	lw $t0, -656($fp)
	sw $t0, -1560($fp)
	lw $t0, -204($fp)
	sw $t0, -1564($fp)
	lw $t0, -1560($fp)
	lw $t1, -1564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1568($fp)
	li $t0, 4
	lw $t1, -1568($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	lw $t1, -1552($fp)
	lw $t2, -1580($fp)
	bge $t1, $t2, label164
	j label165
label164:
	addi $t0, $fp, -560
	sw $t0, -1584($fp)
	li $t0, 5
	sw $t0, -1588($fp)
	li $t0, 4
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	lw $t1, 0($t0)
	sw $t1, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1604($fp)
	j label163
label165:
	li $t0, 2287
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -216($fp)
	sw $t0, -1620($fp)
	lw $t0, -656($fp)
	sw $t0, -1624($fp)
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	li $t0, 29691
	sw $t0, -1632($fp)
	lw $t0, -1628($fp)
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	li $t0, 58787
	sw $t0, -1644($fp)
	li $t0, 48719
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label168
label168:
	lw $t0, -1612($fp)
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1640($fp)
label167:
	li $t0, 48040
	sw $t0, -1660($fp)
	lw $t0, -632($fp)
	sw $t0, -1664($fp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1664($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1668($fp)
	addi $sp, $sp, 16
	lw $t0, -1636($fp)
	lw $t1, -1668($fp)
	sub $t0, $t0, $t1
	sw $t0, -1672($fp)
label169:
	addi $t0, $fp, -624
	sw $t0, -1676($fp)
	lw $t0, -180($fp)
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
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	lw $t0, -216($fp)
	sw $t0, -1696($fp)
	j label169
label171:
	li $t0, 0
	sw $t0, -1700($fp)
	li $t0, 39917
	sw $t0, -1704($fp)
	li $t0, 0
	sw $t0, -1708($fp)
	lw $t0, -968($fp)
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -1708($fp)
label175:
	li $t0, 0
	sw $t0, -1716($fp)
	li $t0, 42833
	sw $t0, -1720($fp)
	lw $t1, -1720($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label176:
	li $t0, 1
	sw $t0, -1716($fp)
label177:
	lw $t0, -1708($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t1, -1704($fp)
	lw $t2, -1724($fp)
	bge $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1700($fp)
label173:
	j label156
label158:
	lw $t0, -240($fp)
	sw $t0, -1728($fp)
	lw $t0, -36($fp)
	sw $t0, -1732($fp)
	lw $t0, 8($fp)
	sw $t0, -1736($fp)
	lw $t0, -1732($fp)
	lw $t1, -1736($fp)
	mul $t0, $t0, $t1
	sw $t0, -1740($fp)
	li $t0, 63002
	sw $t0, -1744($fp)
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1748($fp)
	lw $t0, -1728($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1388($fp)
	sw $t0, -1756($fp)
	lw $t0, -992($fp)
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	sub $t0, $t0, $t1
	sw $t0, -1764($fp)
	li $t0, 0
	sw $t0, -1768($fp)
	lw $t0, -656($fp)
	sw $t0, -1772($fp)
	lw $t0, -644($fp)
	sw $t0, -1776($fp)
	lw $t0, -1772($fp)
	lw $t1, -1776($fp)
	sub $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -36($fp)
	sw $t0, -1784($fp)
	lw $t1, -1780($fp)
	lw $t2, -1784($fp)
	ble $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -1768($fp)
label182:
	li $t0, 0
	sw $t0, -1788($fp)
	li $t0, 43017
	sw $t0, -1792($fp)
	li $t0, 0
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label185:
	li $t0, 30173
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -1788($fp)
label184:
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 28926
	sw $t0, -1808($fp)
	li $t0, 0
	sw $t0, -1812($fp)
	li $t0, 0
	sw $t0, -1816($fp)
	li $t0, 16789
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label191:
	li $t0, 1
	sw $t0, -1816($fp)
label192:
	li $t0, 37500
	sw $t0, -1824($fp)
	lw $t1, -1816($fp)
	lw $t2, -1824($fp)
	beq $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -1812($fp)
label190:
	li $t0, 51118
	sw $t0, -1828($fp)
	li $t0, 43912
	sw $t0, -1832($fp)
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	li $t0, 58872
	sw $t0, -1840($fp)
	lw $t0, -1836($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1848($fp)
	addi $sp, $sp, 16
	lw $t1, -1848($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label188
label188:
	li $t0, 54645
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1804($fp)
label187:
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1856($fp)
	addi $sp, $sp, 16
	lw $t0, -980($fp)
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -1864($fp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1868($fp)
	addi $sp, $sp, 16
	li $t0, 37743
	sw $t0, -1872($fp)
	li $t0, 0
	lw $t1, -1872($fp)
	sub $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -632($fp)
	sw $t0, -1880($fp)
	lw $t0, -1876($fp)
	lw $t1, -1880($fp)
	sub $t0, $t0, $t1
	sw $t0, -1884($fp)
	li $t0, 59263
	sw $t0, -1888($fp)
	lw $t0, -644($fp)
	sw $t0, -1892($fp)
	lw $t0, -1888($fp)
	lw $t1, -1892($fp)
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1376($fp)
	sw $t0, -1900($fp)
	lw $t0, -1896($fp)
	lw $t1, -1900($fp)
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1908($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1912($fp)
	lw $t0, -992($fp)
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label193
label193:
	li $t0, 1
	sw $t0, -1912($fp)
label194:
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1920($fp)
	lw $t0, -1752($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 3214
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	li $t0, 56042
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -1948($fp)
	li $t0, 43178
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1960($fp)
	li $t0, 28982
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
	li $t0, 11428
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	sw $t0, -1984($fp)
	li $t0, 1579
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	sw $t0, -1996($fp)
	lw $t0, -644($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -2004($fp)
	li $t0, 6515
	sw $t0, -2008($fp)
	lw $t0, -680($fp)
	sw $t0, -2012($fp)
	lw $t0, -2008($fp)
	lw $t1, -2012($fp)
	sub $t0, $t0, $t1
	sw $t0, -2016($fp)
	li $t0, 30510
	sw $t0, -2020($fp)
	lw $t0, -2016($fp)
	lw $t1, -2020($fp)
	sub $t0, $t0, $t1
	sw $t0, -2024($fp)
	li $t0, 0
	sw $t0, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	lw $t0, -668($fp)
	sw $t0, -2036($fp)
	lw $t0, -1388($fp)
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2044($fp)
	li $t0, 41607
	sw $t0, -2048($fp)
	lw $t1, -2044($fp)
	lw $t2, -2048($fp)
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -2032($fp)
label201:
	li $t0, 0
	sw $t0, -2052($fp)
	li $t0, 0
	sw $t0, -2056($fp)
	lw $t0, -644($fp)
	sw $t0, -2060($fp)
	li $t0, 20367
	sw $t0, -2064($fp)
	lw $t1, -2060($fp)
	lw $t2, -2064($fp)
	beq $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -2056($fp)
label205:
	li $t0, 32989
	sw $t0, -2068($fp)
	lw $t1, -2056($fp)
	lw $t2, -2068($fp)
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -2052($fp)
label203:
	lw $t0, -668($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -2076($fp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2080($fp)
	addi $sp, $sp, 16
	li $t0, 44497
	sw $t0, -2084($fp)
	lw $t1, -2080($fp)
	lw $t2, -2084($fp)
	bge $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -2028($fp)
label199:
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2088($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 13014
	sw $t0, -2096($fp)
	li $t0, 40036
	sw $t0, -2100($fp)
	lw $t0, -2096($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	li $t0, 19390
	sw $t0, -2108($fp)
	lw $t1, -2104($fp)
	lw $t2, -2108($fp)
	blt $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -2092($fp)
label207:
	li $t0, 0
	sw $t0, -2112($fp)
	li $t0, 46785
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label209
label211:
	li $t0, 36207
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label210:
	lw $t0, -692($fp)
	sw $t0, -2124($fp)
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -2112($fp)
label209:
	lw $t0, -1932($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -2132($fp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2136($fp)
	addi $sp, $sp, 16
	lw $t0, -2088($fp)
	lw $t1, -2136($fp)
	sub $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 0
	sw $t0, -2144($fp)
	lw $t0, -192($fp)
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -2144($fp)
label213:
	li $t0, 0
	lw $t1, -2144($fp)
	sub $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -2156($fp)
	j label197
label196:
	li $t0, 0
	sw $t0, -2160($fp)
	lw $t0, -632($fp)
	sw $t0, -2164($fp)
	li $t0, 0
	lw $t1, -2164($fp)
	sub $t0, $t0, $t1
	sw $t0, -2168($fp)
	li $t0, 0
	lw $t1, -2168($fp)
	sub $t0, $t0, $t1
	sw $t0, -2172($fp)
	li $t0, 0
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -1436($fp)
	sw $t0, -2180($fp)
	lw $t1, -2176($fp)
	lw $t2, -2180($fp)
	bne $t1, $t2, label214
	j label216
label216:
	li $t0, 46658
	sw $t0, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	li $t0, 17334
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label218
label220:
	lw $t0, -192($fp)
	sw $t0, -2196($fp)
	lw $t1, -2196($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label219:
	li $t0, 16857
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -2188($fp)
label218:
	li $t0, 0
	sw $t0, -2204($fp)
	li $t0, 52931
	sw $t0, -2208($fp)
	lw $t0, -1956($fp)
	sw $t0, -2212($fp)
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -1968($fp)
	sw $t0, -2220($fp)
	lw $t1, -2216($fp)
	lw $t2, -2220($fp)
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -2204($fp)
label222:
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2224($fp)
	addi $sp, $sp, 16
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -2160($fp)
label215:
label197:
	lw $t0, -1932($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1944($fp)
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1956($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1968($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1980($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1992($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	lw $t0, -1944($fp)
	sw $t0, -2260($fp)
	li $t0, 0
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -168($fp)
	sw $t0, -2268($fp)
	lw $t1, -2264($fp)
	lw $t2, -2268($fp)
	blt $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -2256($fp)
label226:
	li $t0, 55077
	sw $t0, -2272($fp)
	li $t0, 2439
	sw $t0, -2276($fp)
	lw $t0, -2272($fp)
	lw $t1, -2276($fp)
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t1, -2256($fp)
	lw $t2, -2280($fp)
	beq $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -2252($fp)
label224:
	lw $t0, -2252($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -2284($fp)
	lw $ra, -4($fp)
	lw $v0, -2284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2288($fp)
	li $t0, 25035
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -2288($fp)
label228:
	li $t0, 0
	lw $t1, -2288($fp)
	sub $t0, $t0, $t1
	sw $t0, -2296($fp)
	li $t0, 0
	lw $t1, -2296($fp)
	sub $t0, $t0, $t1
	sw $t0, -2300($fp)
	li $t0, 48414
	sw $t0, -2304($fp)
	lw $t0, -1980($fp)
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2312($fp)
	lw $t0, -632($fp)
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2320($fp)
	lw $t0, -180($fp)
	sw $t0, -2324($fp)
	li $t0, 0
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2320($fp)
	lw $t1, -2328($fp)
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2300($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -1932($fp)
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1944($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1956($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1968($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1980($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1992($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2364($fp)
	li $t0, 19229
	sw $t0, -2368($fp)
	lw $t1, -2368($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label232
label232:
	li $t0, 0
	sw $t0, -2372($fp)
	lw $t0, -36($fp)
	sw $t0, -2376($fp)
	lw $t1, -2376($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -2372($fp)
label234:
	lw $t0, -192($fp)
	sw $t0, -2380($fp)
	lw $t0, -2372($fp)
	lw $t1, -2380($fp)
	sub $t0, $t0, $t1
	sw $t0, -2384($fp)
	li $t0, 0
	sw $t0, -2388($fp)
	lw $t0, 4($fp)
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label236
label238:
	li $t0, 62535
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label237:
	li $t0, 11804
	sw $t0, -2400($fp)
	lw $t1, -2400($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -2388($fp)
label236:
	lw $t0, -644($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -2408($fp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2412($fp)
	addi $sp, $sp, 16
	lw $t1, -2412($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label231
label231:
	li $t0, 8338
	sw $t0, -2416($fp)
	lw $t0, -1992($fp)
	sw $t0, -2420($fp)
	lw $t1, -2416($fp)
	lw $t2, -2420($fp)
	beq $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -2364($fp)
label230:
	lw $ra, -4($fp)
	lw $v0, -2364($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2424($fp)
	addi $t0, $fp, -20
	sw $t0, -2428($fp)
	li $t0, 2
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
	lw $t1, -2444($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label242:
	li $t0, 1
	sw $t0, -2424($fp)
label243:
	li $t0, 30523
	sw $t0, -2448($fp)
	lw $t0, -2424($fp)
	lw $t1, -2448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2452($fp)
	li $t0, 0
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 0
	sw $t0, -2460($fp)
	addi $t0, $fp, -604
	sw $t0, -2464($fp)
	lw $t0, -1244($fp)
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
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label244:
	li $t0, 1
	sw $t0, -2460($fp)
label245:
	lw $t0, -2460($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -2484($fp)
label240:
label179:
	li $t0, 19620
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	li $t0, 40535
	sw $t0, -2556($fp)
	addi $t0, $fp, -2504
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
	li $t0, 41950
	sw $t0, -2580($fp)
	addi $t0, $fp, -2504
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
	li $t0, 21199
	sw $t0, -2604($fp)
	addi $t0, $fp, -2504
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
	li $t0, 60902
	sw $t0, -2628($fp)
	addi $t0, $fp, -2504
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
	li $t0, 9403
	sw $t0, -2652($fp)
	addi $t0, $fp, -2504
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
	li $t0, 62806
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	li $t0, 39863
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -2696($fp)
	li $t0, 15919
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	li $t0, 27781
	sw $t0, -2712($fp)
	addi $t0, $fp, -2540
	sw $t0, -2716($fp)
	li $t0, 0
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
	li $t0, 21112
	sw $t0, -2736($fp)
	addi $t0, $fp, -2540
	sw $t0, -2740($fp)
	li $t0, 1
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
	li $t0, 52126
	sw $t0, -2760($fp)
	addi $t0, $fp, -2540
	sw $t0, -2764($fp)
	li $t0, 2
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
	li $t0, 40795
	sw $t0, -2784($fp)
	addi $t0, $fp, -2540
	sw $t0, -2788($fp)
	li $t0, 3
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
	li $t0, 61149
	sw $t0, -2808($fp)
	addi $t0, $fp, -2540
	sw $t0, -2812($fp)
	li $t0, 4
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2812($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2808($fp)
	lw $t1, -2824($fp)
	sw $t0, 0($t1)
	lw $t0, -2824($fp)
	lw $t1, 0($t0)
	sw $t1, -2828($fp)
	li $t0, 5980
	sw $t0, -2832($fp)
	addi $t0, $fp, -2540
	sw $t0, -2836($fp)
	li $t0, 5
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
	li $t0, 28191
	sw $t0, -2856($fp)
	addi $t0, $fp, -2540
	sw $t0, -2860($fp)
	li $t0, 6
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
	li $t0, 12947
	sw $t0, -2880($fp)
	addi $t0, $fp, -2540
	sw $t0, -2884($fp)
	li $t0, 7
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
	li $t0, 22837
	sw $t0, -2904($fp)
	addi $t0, $fp, -2540
	sw $t0, -2908($fp)
	li $t0, 8
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
	addi $t0, $fp, -20
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	lw $t0, -216($fp)
	sw $t0, -2936($fp)
	li $t0, 0
	lw $t1, -2936($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -228($fp)
	sw $t0, -2944($fp)
	lw $t1, -2940($fp)
	lw $t2, -2944($fp)
	bgt $t1, $t2, label251
	j label250
label251:
	li $t0, 9313
	sw $t0, -2948($fp)
	li $t0, 2488
	sw $t0, -2952($fp)
	lw $t1, -2948($fp)
	lw $t2, -2952($fp)
	beq $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -2932($fp)
label250:
	li $t0, 4
	lw $t1, -2932($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	addi $t0, $fp, -624
	sw $t0, -2968($fp)
	li $t0, 0
	sw $t0, -2972($fp)
	li $t0, 25277
	sw $t0, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label254
label254:
	li $t0, 34348
	sw $t0, -2980($fp)
	li $t0, 50902
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2988($fp)
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -2972($fp)
label253:
	li $t0, 4
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	lw $ra, -4($fp)
	lw $v0, -3000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label248
label247:
	li $t0, 0
	sw $t0, -3004($fp)
	li $t0, 0
	sw $t0, -3008($fp)
	lw $t0, -1412($fp)
	sw $t0, -3012($fp)
	lw $t0, -204($fp)
	sw $t0, -3016($fp)
	lw $t1, -3012($fp)
	lw $t2, -3016($fp)
	bgt $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -3008($fp)
label258:
	li $t0, 44506
	sw $t0, -3020($fp)
	lw $t1, -3008($fp)
	lw $t2, -3020($fp)
	bge $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -3004($fp)
label256:
	addi $t0, $fp, -2504
	sw $t0, -3024($fp)
	lw $t0, -2680($fp)
	sw $t0, -3028($fp)
	li $t0, 4
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	addi $t0, $fp, -20
	sw $t0, -3044($fp)
	lw $t0, -240($fp)
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
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3064($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3068($fp)
	li $t0, 0
	sw $t0, -3072($fp)
	li $t0, 52844
	sw $t0, -3076($fp)
	li $t0, 5827
	sw $t0, -3080($fp)
	lw $t0, -3076($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	li $t0, 39149
	sw $t0, -3088($fp)
	lw $t1, -3084($fp)
	lw $t2, -3088($fp)
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -3072($fp)
label262:
	li $t0, 31347
	sw $t0, -3092($fp)
	li $t0, 62707
	sw $t0, -3096($fp)
	lw $t0, -3092($fp)
	lw $t1, -3096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3100($fp)
	lw $t0, -1376($fp)
	sw $t0, -3104($fp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3108($fp)
	addi $sp, $sp, 16
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label259:
	li $t0, 1
	sw $t0, -3068($fp)
label260:
	li $t0, 0
	lw $t1, -3068($fp)
	sub $t0, $t0, $t1
	sw $t0, -3112($fp)
label248:
label263:
	li $t0, 0
	sw $t0, -3116($fp)
	li $t0, 39396
	sw $t0, -3120($fp)
	li $t0, 0
	lw $t1, -3120($fp)
	sub $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t1, -3124($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -3116($fp)
label268:
	li $t0, 0
	sw $t0, -3128($fp)
	lw $t0, -1400($fp)
	sw $t0, -3132($fp)
	li $t0, 58769
	sw $t0, -3136($fp)
	lw $t0, -3132($fp)
	lw $t1, -3136($fp)
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -192($fp)
	sw $t0, -3144($fp)
	lw $t1, -3140($fp)
	lw $t2, -3144($fp)
	blt $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -3128($fp)
label270:
	li $t0, 0
	sw $t0, -3148($fp)
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 64397
	sw $t0, -3156($fp)
	li $t0, 36350
	sw $t0, -3160($fp)
	lw $t1, -3156($fp)
	lw $t2, -3160($fp)
	blt $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -3152($fp)
label274:
	lw $t0, -1388($fp)
	sw $t0, -3164($fp)
	lw $t1, -3152($fp)
	lw $t2, -3164($fp)
	blt $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -3148($fp)
label272:
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3168($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3168($fp)
	sub $t0, $t0, $t1
	sw $t0, -3172($fp)
	li $t0, 0
	lw $t1, -3172($fp)
	sub $t0, $t0, $t1
	sw $t0, -3176($fp)
	addi $t0, $fp, -560
	sw $t0, -3180($fp)
	lw $t0, -204($fp)
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
	li $t0, 12764
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3204($fp)
	lw $t0, -3176($fp)
	lw $t1, -3204($fp)
	sub $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label266
label266:
	li $t0, 0
	sw $t0, -3212($fp)
	lw $t0, -1412($fp)
	sw $t0, -3216($fp)
	lw $t1, -3216($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label278:
	li $t0, 11703
	sw $t0, -3220($fp)
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label277
label277:
	lw $t0, -2692($fp)
	sw $t0, -3224($fp)
	lw $t1, -3224($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -3212($fp)
label276:
	li $t0, 0
	sw $t0, -3228($fp)
	li $t0, 34762
	sw $t0, -3232($fp)
	lw $t0, -192($fp)
	sw $t0, -3236($fp)
	lw $t0, -3232($fp)
	lw $t1, -3236($fp)
	sub $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label281:
	li $t0, 22168
	sw $t0, -3244($fp)
	lw $t1, -3244($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -3228($fp)
label280:
	li $t0, 0
	sw $t0, -3248($fp)
	lw $t0, -204($fp)
	sw $t0, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label282
label284:
	lw $t0, -240($fp)
	sw $t0, -3256($fp)
	lw $t1, -3256($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -3248($fp)
label283:
	lw $t0, -180($fp)
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -3264($fp)
	addi $sp, $sp, -4
	lw $t0, -3228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3268($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 14432
	sw $t0, -3276($fp)
	li $t0, 0
	lw $t1, -3276($fp)
	sub $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -192($fp)
	sw $t0, -3284($fp)
	lw $t1, -3280($fp)
	lw $t2, -3284($fp)
	bne $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -3272($fp)
label286:
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3288($fp)
	addi $sp, $sp, 16
	lw $t0, -2704($fp)
	sw $t0, -3292($fp)
	lw $t0, -1424($fp)
	sw $t0, -3296($fp)
	lw $t0, -3292($fp)
	lw $t1, -3296($fp)
	mul $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t1, -3288($fp)
	lw $t2, -3300($fp)
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 9089
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	li $t0, 38087
	sw $t0, -3352($fp)
	addi $t0, $fp, -3320
	sw $t0, -3356($fp)
	li $t0, 0
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
	li $t0, 39484
	sw $t0, -3376($fp)
	addi $t0, $fp, -3320
	sw $t0, -3380($fp)
	li $t0, 1
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
	li $t0, 30202
	sw $t0, -3400($fp)
	addi $t0, $fp, -3320
	sw $t0, -3404($fp)
	li $t0, 2
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3404($fp)
	lw $t1, -3412($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3400($fp)
	lw $t1, -3416($fp)
	sw $t0, 0($t1)
	lw $t0, -3416($fp)
	lw $t1, 0($t0)
	sw $t1, -3420($fp)
	li $t0, 24677
	sw $t0, -3424($fp)
	addi $t0, $fp, -3320
	sw $t0, -3428($fp)
	li $t0, 3
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3428($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3424($fp)
	lw $t1, -3440($fp)
	sw $t0, 0($t1)
	lw $t0, -3440($fp)
	lw $t1, 0($t0)
	sw $t1, -3444($fp)
	li $t0, 14743
	sw $t0, -3448($fp)
	addi $t0, $fp, -3320
	sw $t0, -3452($fp)
	li $t0, 4
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3452($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3448($fp)
	lw $t1, -3464($fp)
	sw $t0, 0($t1)
	lw $t0, -3464($fp)
	lw $t1, 0($t0)
	sw $t1, -3468($fp)
	li $t0, 25815
	sw $t0, -3472($fp)
	addi $t0, $fp, -3336
	sw $t0, -3476($fp)
	li $t0, 0
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3476($fp)
	lw $t1, -3484($fp)
	add $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3472($fp)
	lw $t1, -3488($fp)
	sw $t0, 0($t1)
	lw $t0, -3488($fp)
	lw $t1, 0($t0)
	sw $t1, -3492($fp)
	li $t0, 30657
	sw $t0, -3496($fp)
	addi $t0, $fp, -3336
	sw $t0, -3500($fp)
	li $t0, 1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3500($fp)
	lw $t1, -3508($fp)
	add $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3496($fp)
	lw $t1, -3512($fp)
	sw $t0, 0($t1)
	lw $t0, -3512($fp)
	lw $t1, 0($t0)
	sw $t1, -3516($fp)
	li $t0, 42934
	sw $t0, -3520($fp)
	addi $t0, $fp, -3336
	sw $t0, -3524($fp)
	li $t0, 2
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3524($fp)
	lw $t1, -3532($fp)
	add $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3520($fp)
	lw $t1, -3536($fp)
	sw $t0, 0($t1)
	lw $t0, -3536($fp)
	lw $t1, 0($t0)
	sw $t1, -3540($fp)
	li $t0, 38762
	sw $t0, -3544($fp)
	addi $t0, $fp, -3336
	sw $t0, -3548($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -3568($fp)
	lw $t0, -920($fp)
	sw $t0, -3572($fp)
	li $t0, 53495
	sw $t0, -3576($fp)
	li $t0, 0
	lw $t1, -3576($fp)
	sub $t0, $t0, $t1
	sw $t0, -3580($fp)
	li $t0, 52248
	sw $t0, -3584($fp)
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3588($fp)
	li $t0, 0
	sw $t0, -3592($fp)
	lw $t0, -36($fp)
	sw $t0, -3596($fp)
	li $t0, 0
	lw $t1, -3596($fp)
	sub $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -668($fp)
	sw $t0, -3604($fp)
	lw $t1, -3600($fp)
	lw $t2, -3604($fp)
	beq $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -3592($fp)
label290:
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3608($fp)
	addi $sp, $sp, 16
	lw $t0, -1412($fp)
	sw $t0, -3612($fp)
	li $t0, 0
	lw $t1, -3612($fp)
	sub $t0, $t0, $t1
	sw $t0, -3616($fp)
	li $t0, 0
	sw $t0, -3620($fp)
	lw $t0, -1412($fp)
	sw $t0, -3624($fp)
	li $t0, 41250
	sw $t0, -3628($fp)
	lw $t0, -3624($fp)
	lw $t1, -3628($fp)
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t1, -3632($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label293:
	li $t0, 13236
	sw $t0, -3636($fp)
	lw $t1, -3636($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -3620($fp)
label292:
	lw $t0, -192($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -3644($fp)
	lw $t0, -3344($fp)
	sw $t0, -3648($fp)
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3652($fp)
	addi $sp, $sp, 16
	lw $t0, -3616($fp)
	lw $t1, -3652($fp)
	sub $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t1, -3608($fp)
	lw $t2, -3656($fp)
	ble $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -3568($fp)
label288:
	li $t0, 0
	sw $t0, -3660($fp)
	addi $t0, $fp, -2540
	sw $t0, -3664($fp)
	lw $t0, -2692($fp)
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
	li $t0, 0
	lw $t1, -3680($fp)
	sub $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label297
label297:
	li $t0, 21060
	sw $t0, -3688($fp)
	li $t0, 26617
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t1, -3696($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label296
label296:
	lw $t0, -932($fp)
	sw $t0, -3700($fp)
	addi $t0, $fp, -3320
	sw $t0, -3704($fp)
	lw $t0, -1436($fp)
	sw $t0, -3708($fp)
	li $t0, 4
	lw $t1, -3708($fp)
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	lw $t1, -3704($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	lw $t1, 0($t0)
	sw $t1, -3720($fp)
	addi $t0, $fp, -28
	sw $t0, -3724($fp)
	lw $t0, -668($fp)
	sw $t0, -3728($fp)
	li $t0, 4
	lw $t1, -3728($fp)
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	lw $t1, 0($t0)
	sw $t1, -3740($fp)
	li $t0, 57742
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -3748($fp)
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3748($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3752($fp)
	addi $sp, $sp, 16
	lw $t0, -3700($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -3660($fp)
label295:
	addi $t0, $fp, -28
	sw $t0, -3760($fp)
	addi $t0, $fp, -3336
	sw $t0, -3764($fp)
	li $t0, 0
	sw $t0, -3768($fp)
	li $t0, 4
	lw $t1, -3768($fp)
	mul $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	lw $t1, -3764($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, 0($t0)
	sw $t1, -3780($fp)
	li $t0, 4
	lw $t1, -3780($fp)
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	lw $t0, -204($fp)
	sw $t0, -3796($fp)
	lw $t0, -3792($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	j label263
label265:
	lw $t0, -1244($fp)
	sw $t0, -3804($fp)
	li $t0, 58236
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 0
	sw $t0, -3816($fp)
	addi $t0, $fp, -28
	sw $t0, -3820($fp)
	li $t0, 1
	sw $t0, -3824($fp)
	li $t0, 4
	lw $t1, -3824($fp)
	mul $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	lw $t1, -3820($fp)
	add $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	lw $t1, 0($t0)
	sw $t1, -3836($fp)
	lw $t1, -3836($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -3816($fp)
label302:
	li $t0, 0
	lw $t1, -3816($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	li $t0, 0
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	li $t0, 0
	sw $t0, -3852($fp)
	addi $t0, $fp, -2504
	sw $t0, -3856($fp)
	lw $t0, -2548($fp)
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
	li $t0, 52533
	sw $t0, -3876($fp)
	lw $t1, -3872($fp)
	lw $t2, -3876($fp)
	ble $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -3852($fp)
label308:
	li $t0, 0
	sw $t0, -3880($fp)
	li $t0, 5066
	sw $t0, -3884($fp)
	li $t0, 0
	lw $t1, -3884($fp)
	sub $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label309
label309:
	li $t0, 1
	sw $t0, -3880($fp)
label310:
	addi $t0, $fp, -2540
	sw $t0, -3892($fp)
	li $t0, 7
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
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3912($fp)
	addi $sp, $sp, 16
	li $t0, 63982
	sw $t0, -3916($fp)
	lw $t1, -3912($fp)
	lw $t2, -3916($fp)
	beq $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -3848($fp)
label306:
	lw $t0, 4($fp)
	sw $t0, -3920($fp)
	lw $t0, -2680($fp)
	sw $t0, -3924($fp)
	lw $t0, -3920($fp)
	lw $t1, -3924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3928($fp)
	lw $t0, -1376($fp)
	sw $t0, -3932($fp)
	lw $t0, -3928($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	li $t0, 0
	sw $t0, -3940($fp)
	li $t0, 56170
	sw $t0, -3944($fp)
	lw $t0, -656($fp)
	sw $t0, -3948($fp)
	lw $t0, -3944($fp)
	lw $t1, -3948($fp)
	sub $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -692($fp)
	sw $t0, -3956($fp)
	lw $t1, -3952($fp)
	lw $t2, -3956($fp)
	blt $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -3940($fp)
label312:
	addi $sp, $sp, -4
	lw $t0, -3848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3960($fp)
	addi $sp, $sp, 16
	lw $t0, -668($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -3968($fp)
	li $t0, 0
	sw $t0, -3972($fp)
	lw $t0, -656($fp)
	sw $t0, -3976($fp)
	li $t0, 29049
	sw $t0, -3980($fp)
	lw $t0, -3976($fp)
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -1388($fp)
	sw $t0, -3988($fp)
	lw $t1, -3984($fp)
	lw $t2, -3988($fp)
	bgt $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -3972($fp)
label314:
	addi $sp, $sp, -4
	lw $t0, -3960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3992($fp)
	addi $sp, $sp, 16
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -3844($fp)
label304:
	li $t0, 0
	lw $t1, -3844($fp)
	sub $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3840($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	j label300
label299:
	addi $t0, $fp, -624
	sw $t0, -4004($fp)
	lw $t0, -168($fp)
	sw $t0, -4008($fp)
	li $t0, 0
	sw $t0, -4012($fp)
	li $t0, 16769
	sw $t0, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label315:
	li $t0, 1
	sw $t0, -4012($fp)
label316:
	lw $t0, -4008($fp)
	lw $t1, -4012($fp)
	add $t0, $t0, $t1
	sw $t0, -4020($fp)
	li $t0, 4
	lw $t1, -4020($fp)
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, 0($t0)
	sw $t1, -4032($fp)
	lw $ra, -4($fp)
	lw $v0, -4032($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label300:
	li $t0, 61623
	sw $t0, -4048($fp)
	addi $t0, $fp, -4044
	sw $t0, -4052($fp)
	li $t0, 0
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4052($fp)
	lw $t1, -4060($fp)
	add $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4048($fp)
	lw $t1, -4064($fp)
	sw $t0, 0($t1)
	lw $t0, -4064($fp)
	lw $t1, 0($t0)
	sw $t1, -4068($fp)
	li $t0, 36533
	sw $t0, -4072($fp)
	addi $t0, $fp, -4044
	sw $t0, -4076($fp)
	li $t0, 1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4076($fp)
	lw $t1, -4084($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4072($fp)
	lw $t1, -4088($fp)
	sw $t0, 0($t1)
	lw $t0, -4088($fp)
	lw $t1, 0($t0)
	sw $t1, -4092($fp)
	li $t0, 56253
	sw $t0, -4096($fp)
	addi $t0, $fp, -4044
	sw $t0, -4100($fp)
	li $t0, 2
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4100($fp)
	lw $t1, -4108($fp)
	add $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4096($fp)
	lw $t1, -4112($fp)
	sw $t0, 0($t1)
	lw $t0, -4112($fp)
	lw $t1, 0($t0)
	sw $t1, -4116($fp)
	li $t0, 26289
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	sw $t0, -4128($fp)
	li $t0, 61210
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	sw $t0, -4140($fp)
label317:
	lw $t0, -180($fp)
	sw $t0, -4144($fp)
	addi $t0, $fp, -4044
	sw $t0, -4148($fp)
	li $t0, 1
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
	lw $t0, -4144($fp)
	lw $t1, -4164($fp)
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
label320:
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, -216($fp)
	sw $t0, -4176($fp)
	li $t0, 48395
	sw $t0, -4180($fp)
	lw $t1, -4176($fp)
	lw $t2, -4180($fp)
	ble $t1, $t2, label325
	j label324
label325:
	li $t0, 25330
	sw $t0, -4184($fp)
	lw $t1, -4184($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -4172($fp)
label324:
	lw $t0, -192($fp)
	sw $t0, -4188($fp)
	li $t0, 0
	sw $t0, -4192($fp)
	li $t0, 26331
	sw $t0, -4196($fp)
	lw $t1, -4196($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -4192($fp)
label327:
	addi $sp, $sp, -4
	lw $t0, -4172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4192($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4200($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4200($fp)
	sub $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t1, -4204($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label322
label321:
	li $t0, 14290
	sw $t0, -4208($fp)
	lw $t1, -4208($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 0
	sw $t0, -4212($fp)
	li $t0, 0
	sw $t0, -4216($fp)
	li $t0, 35107
	sw $t0, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label334
label334:
	li $t0, 1
	sw $t0, -4216($fp)
label335:
	li $t0, 1044
	sw $t0, -4224($fp)
	lw $t0, -4216($fp)
	lw $t1, -4224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4228($fp)
	li $t0, 27526
	sw $t0, -4232($fp)
	lw $t0, -656($fp)
	sw $t0, -4236($fp)
	lw $t0, -4232($fp)
	lw $t1, -4236($fp)
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4228($fp)
	lw $t1, -4240($fp)
	sub $t0, $t0, $t1
	sw $t0, -4244($fp)
	li $t0, 0
	sw $t0, -4248($fp)
	li $t0, 0
	sw $t0, -4252($fp)
	lw $t0, -180($fp)
	sw $t0, -4256($fp)
	lw $t1, -4256($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label338
label338:
	li $t0, 1
	sw $t0, -4252($fp)
label339:
	lw $t0, -4136($fp)
	sw $t0, -4260($fp)
	lw $t1, -4252($fp)
	lw $t2, -4260($fp)
	bgt $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -4248($fp)
label337:
	lw $t1, -4244($fp)
	lw $t2, -4248($fp)
	bne $t1, $t2, label331
	j label333
label333:
	li $t0, 56168
	sw $t0, -4264($fp)
	lw $t1, -4264($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -4212($fp)
label332:
	j label330
label329:
	li $t0, 0
	sw $t0, -4268($fp)
	li $t0, 27661
	sw $t0, -4272($fp)
	lw $t1, -4272($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label340:
	li $t0, 1
	sw $t0, -4268($fp)
label341:
label330:
	j label320
label322:
	j label317
label319:
	li $t0, 19732
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	sw $t0, -4284($fp)
	li $t0, 43040
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	sw $t0, -4296($fp)
	li $t0, 0
	sw $t0, -4300($fp)
	addi $t0, $fp, -560
	sw $t0, -4304($fp)
	li $t0, 8
	sw $t0, -4308($fp)
	li $t0, 4
	lw $t1, -4308($fp)
	mul $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	lw $t1, 0($t0)
	sw $t1, -4320($fp)
	li $t0, 0
	lw $t1, -4320($fp)
	sub $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -632($fp)
	sw $t0, -4328($fp)
	li $t0, 35739
	sw $t0, -4332($fp)
	lw $t0, -4328($fp)
	lw $t1, -4332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4336($fp)
	lw $t1, -4324($fp)
	lw $t2, -4336($fp)
	beq $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -4300($fp)
label343:
	lw $t0, -4300($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -4340($fp)
	li $t0, 0
	sw $t0, -4344($fp)
	addi $t0, $fp, -564
	sw $t0, -4348($fp)
	li $t0, 0
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
	lw $t0, -1424($fp)
	sw $t0, -4368($fp)
	lw $t1, -4364($fp)
	lw $t2, -4368($fp)
	ble $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -4344($fp)
label345:
	li $t0, 48850
	sw $t0, -4372($fp)
	li $t0, 0
	lw $t1, -4372($fp)
	sub $t0, $t0, $t1
	sw $t0, -4376($fp)
	li $t0, 0
	lw $t1, -4376($fp)
	sub $t0, $t0, $t1
	sw $t0, -4380($fp)
	li $t0, 0
	sw $t0, -4384($fp)
	lw $t0, -920($fp)
	sw $t0, -4388($fp)
	lw $t1, -4388($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label347
label349:
	lw $t0, -932($fp)
	sw $t0, -4392($fp)
	lw $t1, -4392($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label348:
	lw $t0, -4280($fp)
	sw $t0, -4396($fp)
	lw $t1, -4396($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -4384($fp)
label347:
	li $t0, 0
	sw $t0, -4400($fp)
	lw $t0, -1412($fp)
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label350:
	li $t0, 1
	sw $t0, -4400($fp)
label351:
	addi $sp, $sp, -4
	lw $t0, -4380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4408($fp)
	addi $sp, $sp, 16
	lw $t0, -228($fp)
	sw $t0, -4412($fp)
	lw $t0, -932($fp)
	sw $t0, -4416($fp)
	lw $t0, -4412($fp)
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	addi $sp, $sp, -4
	lw $t0, -4344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4424($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -604
	sw $t0, -4428($fp)
	li $t0, 0
	sw $t0, -4432($fp)
	li $t0, 4
	lw $t1, -4432($fp)
	mul $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, -4428($fp)
	add $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	lw $t1, 0($t0)
	sw $t1, -4444($fp)
	li $t0, 0
	lw $t1, -4444($fp)
	sub $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4424($fp)
	lw $t1, -4448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4452($fp)
	lw $t0, -192($fp)
	sw $t0, -4456($fp)
	li $t0, 0
	sw $t0, -4460($fp)
	addi $t0, $fp, -20
	sw $t0, -4464($fp)
	lw $t0, 4($fp)
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
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label352:
	li $t0, 1
	sw $t0, -4460($fp)
label353:
	lw $t0, -4456($fp)
	lw $t1, -4460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4484($fp)
	li $t0, 0
	sw $t0, -4488($fp)
	lw $t0, -4292($fp)
	sw $t0, -4492($fp)
	lw $t1, -4492($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	li $t0, 1
	sw $t0, -4488($fp)
label355:
	li $t0, 44014
	sw $t0, -4496($fp)
	lw $t0, -4488($fp)
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	li $t0, 0
	sw $t0, -4504($fp)
	lw $t0, -968($fp)
	sw $t0, -4508($fp)
	li $t0, 39513
	sw $t0, -4512($fp)
	lw $t0, -4508($fp)
	lw $t1, -4512($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label358
label358:
	li $t0, 61320
	sw $t0, -4520($fp)
	lw $t1, -4520($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -4504($fp)
label357:
	li $t0, 0
	sw $t0, -4524($fp)
	li $t0, 41067
	sw $t0, -4528($fp)
	li $t0, 44551
	sw $t0, -4532($fp)
	lw $t0, -4528($fp)
	lw $t1, -4532($fp)
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t1, -4536($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label361
label361:
	li $t0, 47927
	sw $t0, -4540($fp)
	lw $t1, -4540($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -4524($fp)
label360:
	addi $sp, $sp, -4
	lw $t0, -4500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4544($fp)
	addi $sp, $sp, 16
	lw $t0, -4484($fp)
	lw $t1, -4544($fp)
	add $t0, $t0, $t1
	sw $t0, -4548($fp)
	li $t0, 0
	sw $t0, -4552($fp)
	lw $t0, -168($fp)
	sw $t0, -4556($fp)
	lw $t0, -1376($fp)
	sw $t0, -4560($fp)
	li $t0, 4767
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -4568($fp)
	li $t0, 10510
	sw $t0, -4572($fp)
	li $t0, 52038
	sw $t0, -4576($fp)
	lw $t0, -4572($fp)
	lw $t1, -4576($fp)
	mul $t0, $t0, $t1
	sw $t0, -4580($fp)
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4584($fp)
	addi $sp, $sp, 16
	lw $t1, -4556($fp)
	lw $t2, -4584($fp)
	ble $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -4552($fp)
label363:
	lw $ra, -4($fp)
	lw $v0, -4552($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label123:
	lw $t0, -36($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -4600($fp)
	li $t0, 0
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
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -4620($fp)
	li $t0, 1
	sw $t0, -4624($fp)
	li $t0, 4
	lw $t1, -4624($fp)
	mul $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	lw $t1, -4620($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	lw $t1, 0($t0)
	sw $t1, -4636($fp)
	lw $t0, -4636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -4640($fp)
	li $t0, 2
	sw $t0, -4644($fp)
	li $t0, 4
	lw $t1, -4644($fp)
	mul $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, -4640($fp)
	add $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	lw $t1, 0($t0)
	sw $t1, -4656($fp)
	lw $t0, -4656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -4660($fp)
	li $t0, 3
	sw $t0, -4664($fp)
	li $t0, 4
	lw $t1, -4664($fp)
	mul $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	lw $t1, -4660($fp)
	add $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	lw $t1, 0($t0)
	sw $t1, -4676($fp)
	lw $t0, -4676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4708($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -4728($fp)
	li $t0, 1
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
	lw $t0, -168($fp)
	sw $t0, -4748($fp)
	li $t0, 0
	lw $t1, -4748($fp)
	sub $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $ra, -4($fp)
	lw $v0, -4752($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	li $t0, 6184
	sw $t0, -8($fp)
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -36
	li $t0, 16665
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	li $t0, 40358
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 57499
	sw $t0, -28($fp)
	li $t0, 56871
	sw $t0, -32($fp)
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	beq $t1, $t2, label364
	j label366
label366:
	li $t0, 32515
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -24($fp)
label365:
	addi $sp, $sp, -4
	lw $t0, -12($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -40($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -40($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -15120
	li $t0, 46806
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 9930
	sw $t0, -416($fp)
	addi $t0, $fp, -12
	sw $t0, -420($fp)
	li $t0, 0
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -420($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -416($fp)
	lw $t1, -432($fp)
	sw $t0, 0($t1)
	lw $t0, -432($fp)
	lw $t1, 0($t0)
	sw $t1, -436($fp)
	li $t0, 17710
	sw $t0, -440($fp)
	addi $t0, $fp, -12
	sw $t0, -444($fp)
	li $t0, 1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -444($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -440($fp)
	lw $t1, -456($fp)
	sw $t0, 0($t1)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	li $t0, 8796
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 562
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 45371
	sw $t0, -488($fp)
	addi $t0, $fp, -28
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
	li $t0, 28529
	sw $t0, -512($fp)
	addi $t0, $fp, -28
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
	li $t0, 43602
	sw $t0, -536($fp)
	addi $t0, $fp, -28
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
	li $t0, 31285
	sw $t0, -560($fp)
	addi $t0, $fp, -28
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
	li $t0, 27776
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 13805
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 14599
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 5398
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 13058
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 54084
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 792
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 54125
	sw $t0, -668($fp)
	addi $t0, $fp, -32
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
	li $t0, 33099
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 48720
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 28102
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 28883
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 27198
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 38612
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 15385
	sw $t0, -764($fp)
	addi $t0, $fp, -68
	sw $t0, -768($fp)
	li $t0, 0
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
	li $t0, 31966
	sw $t0, -788($fp)
	addi $t0, $fp, -68
	sw $t0, -792($fp)
	li $t0, 1
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
	li $t0, 44796
	sw $t0, -812($fp)
	addi $t0, $fp, -68
	sw $t0, -816($fp)
	li $t0, 2
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
	li $t0, 7348
	sw $t0, -836($fp)
	addi $t0, $fp, -68
	sw $t0, -840($fp)
	li $t0, 3
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
	li $t0, 23301
	sw $t0, -860($fp)
	addi $t0, $fp, -68
	sw $t0, -864($fp)
	li $t0, 4
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
	li $t0, 11776
	sw $t0, -884($fp)
	addi $t0, $fp, -68
	sw $t0, -888($fp)
	li $t0, 5
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
	li $t0, 47707
	sw $t0, -908($fp)
	addi $t0, $fp, -68
	sw $t0, -912($fp)
	li $t0, 6
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
	li $t0, 39967
	sw $t0, -932($fp)
	addi $t0, $fp, -68
	sw $t0, -936($fp)
	li $t0, 7
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
	li $t0, 58582
	sw $t0, -956($fp)
	addi $t0, $fp, -68
	sw $t0, -960($fp)
	li $t0, 8
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
	li $t0, 57637
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	li $t0, 57677
	sw $t0, -992($fp)
	addi $t0, $fp, -108
	sw $t0, -996($fp)
	li $t0, 0
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
	li $t0, 1842
	sw $t0, -1016($fp)
	addi $t0, $fp, -108
	sw $t0, -1020($fp)
	li $t0, 1
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
	li $t0, 58199
	sw $t0, -1040($fp)
	addi $t0, $fp, -108
	sw $t0, -1044($fp)
	li $t0, 2
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1044($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1040($fp)
	lw $t1, -1056($fp)
	sw $t0, 0($t1)
	lw $t0, -1056($fp)
	lw $t1, 0($t0)
	sw $t1, -1060($fp)
	li $t0, 37512
	sw $t0, -1064($fp)
	addi $t0, $fp, -108
	sw $t0, -1068($fp)
	li $t0, 3
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1068($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1064($fp)
	lw $t1, -1080($fp)
	sw $t0, 0($t1)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	li $t0, 30371
	sw $t0, -1088($fp)
	addi $t0, $fp, -108
	sw $t0, -1092($fp)
	li $t0, 4
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1092($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1088($fp)
	lw $t1, -1104($fp)
	sw $t0, 0($t1)
	lw $t0, -1104($fp)
	lw $t1, 0($t0)
	sw $t1, -1108($fp)
	li $t0, 36265
	sw $t0, -1112($fp)
	addi $t0, $fp, -108
	sw $t0, -1116($fp)
	li $t0, 5
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1116($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1112($fp)
	lw $t1, -1128($fp)
	sw $t0, 0($t1)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
	li $t0, 3261
	sw $t0, -1136($fp)
	addi $t0, $fp, -108
	sw $t0, -1140($fp)
	li $t0, 6
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1140($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1136($fp)
	lw $t1, -1152($fp)
	sw $t0, 0($t1)
	lw $t0, -1152($fp)
	lw $t1, 0($t0)
	sw $t1, -1156($fp)
	li $t0, 58147
	sw $t0, -1160($fp)
	addi $t0, $fp, -108
	sw $t0, -1164($fp)
	li $t0, 7
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1164($fp)
	lw $t1, -1172($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1160($fp)
	lw $t1, -1176($fp)
	sw $t0, 0($t1)
	lw $t0, -1176($fp)
	lw $t1, 0($t0)
	sw $t1, -1180($fp)
	li $t0, 50070
	sw $t0, -1184($fp)
	addi $t0, $fp, -108
	sw $t0, -1188($fp)
	li $t0, 8
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1188($fp)
	lw $t1, -1196($fp)
	add $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1184($fp)
	lw $t1, -1200($fp)
	sw $t0, 0($t1)
	lw $t0, -1200($fp)
	lw $t1, 0($t0)
	sw $t1, -1204($fp)
	li $t0, 17861
	sw $t0, -1208($fp)
	addi $t0, $fp, -108
	sw $t0, -1212($fp)
	li $t0, 9
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1212($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1208($fp)
	lw $t1, -1224($fp)
	sw $t0, 0($t1)
	lw $t0, -1224($fp)
	lw $t1, 0($t0)
	sw $t1, -1228($fp)
	li $t0, 63546
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	li $t0, 63129
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 6409
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 64338
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 51718
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 39508
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 47522
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 14285
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 2855
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	li $t0, 9185
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	li $t0, 52897
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	li $t0, 18241
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 41151
	sw $t0, -1376($fp)
	addi $t0, $fp, -128
	sw $t0, -1380($fp)
	li $t0, 0
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
	li $t0, 32158
	sw $t0, -1400($fp)
	addi $t0, $fp, -128
	sw $t0, -1404($fp)
	li $t0, 1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1404($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1400($fp)
	lw $t1, -1416($fp)
	sw $t0, 0($t1)
	lw $t0, -1416($fp)
	lw $t1, 0($t0)
	sw $t1, -1420($fp)
	li $t0, 25589
	sw $t0, -1424($fp)
	addi $t0, $fp, -128
	sw $t0, -1428($fp)
	li $t0, 2
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1428($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1424($fp)
	lw $t1, -1440($fp)
	sw $t0, 0($t1)
	lw $t0, -1440($fp)
	lw $t1, 0($t0)
	sw $t1, -1444($fp)
	li $t0, 64452
	sw $t0, -1448($fp)
	addi $t0, $fp, -128
	sw $t0, -1452($fp)
	li $t0, 3
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1452($fp)
	lw $t1, -1460($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1448($fp)
	lw $t1, -1464($fp)
	sw $t0, 0($t1)
	lw $t0, -1464($fp)
	lw $t1, 0($t0)
	sw $t1, -1468($fp)
	li $t0, 43934
	sw $t0, -1472($fp)
	addi $t0, $fp, -128
	sw $t0, -1476($fp)
	li $t0, 4
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1476($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1472($fp)
	lw $t1, -1488($fp)
	sw $t0, 0($t1)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	li $t0, 7760
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	li $t0, 38883
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	li $t0, 36980
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	li $t0, 65397
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	li $t0, 31024
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 38822
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	li $t0, 58060
	sw $t0, -1568($fp)
	addi $t0, $fp, -140
	sw $t0, -1572($fp)
	li $t0, 0
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1572($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1568($fp)
	lw $t1, -1584($fp)
	sw $t0, 0($t1)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	li $t0, 3001
	sw $t0, -1592($fp)
	addi $t0, $fp, -140
	sw $t0, -1596($fp)
	li $t0, 1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1596($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1592($fp)
	lw $t1, -1608($fp)
	sw $t0, 0($t1)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	li $t0, 3658
	sw $t0, -1616($fp)
	addi $t0, $fp, -140
	sw $t0, -1620($fp)
	li $t0, 2
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
	li $t0, 28789
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -1648($fp)
	li $t0, 6262
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	li $t0, 61805
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	li $t0, 13324
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 24123
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	li $t0, 59815
	sw $t0, -1700($fp)
	addi $t0, $fp, -160
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
	li $t0, 10917
	sw $t0, -1724($fp)
	addi $t0, $fp, -160
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
	li $t0, 30532
	sw $t0, -1748($fp)
	addi $t0, $fp, -160
	sw $t0, -1752($fp)
	li $t0, 2
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1752($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1748($fp)
	lw $t1, -1764($fp)
	sw $t0, 0($t1)
	lw $t0, -1764($fp)
	lw $t1, 0($t0)
	sw $t1, -1768($fp)
	li $t0, 58618
	sw $t0, -1772($fp)
	addi $t0, $fp, -160
	sw $t0, -1776($fp)
	li $t0, 3
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1776($fp)
	lw $t1, -1784($fp)
	add $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1772($fp)
	lw $t1, -1788($fp)
	sw $t0, 0($t1)
	lw $t0, -1788($fp)
	lw $t1, 0($t0)
	sw $t1, -1792($fp)
	li $t0, 62635
	sw $t0, -1796($fp)
	addi $t0, $fp, -160
	sw $t0, -1800($fp)
	li $t0, 4
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1800($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1796($fp)
	lw $t1, -1812($fp)
	sw $t0, 0($t1)
	lw $t0, -1812($fp)
	lw $t1, 0($t0)
	sw $t1, -1816($fp)
	li $t0, 4504
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	li $t0, 40604
	sw $t0, -1832($fp)
	addi $t0, $fp, -196
	sw $t0, -1836($fp)
	li $t0, 0
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1836($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1832($fp)
	lw $t1, -1848($fp)
	sw $t0, 0($t1)
	lw $t0, -1848($fp)
	lw $t1, 0($t0)
	sw $t1, -1852($fp)
	li $t0, 11384
	sw $t0, -1856($fp)
	addi $t0, $fp, -196
	sw $t0, -1860($fp)
	li $t0, 1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1860($fp)
	lw $t1, -1868($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1856($fp)
	lw $t1, -1872($fp)
	sw $t0, 0($t1)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	li $t0, 7360
	sw $t0, -1880($fp)
	addi $t0, $fp, -196
	sw $t0, -1884($fp)
	li $t0, 2
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1884($fp)
	lw $t1, -1892($fp)
	add $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1880($fp)
	lw $t1, -1896($fp)
	sw $t0, 0($t1)
	lw $t0, -1896($fp)
	lw $t1, 0($t0)
	sw $t1, -1900($fp)
	li $t0, 49789
	sw $t0, -1904($fp)
	addi $t0, $fp, -196
	sw $t0, -1908($fp)
	li $t0, 3
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1908($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1904($fp)
	lw $t1, -1920($fp)
	sw $t0, 0($t1)
	lw $t0, -1920($fp)
	lw $t1, 0($t0)
	sw $t1, -1924($fp)
	li $t0, 64282
	sw $t0, -1928($fp)
	addi $t0, $fp, -196
	sw $t0, -1932($fp)
	li $t0, 4
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1932($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1928($fp)
	lw $t1, -1944($fp)
	sw $t0, 0($t1)
	lw $t0, -1944($fp)
	lw $t1, 0($t0)
	sw $t1, -1948($fp)
	li $t0, 25601
	sw $t0, -1952($fp)
	addi $t0, $fp, -196
	sw $t0, -1956($fp)
	li $t0, 5
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1956($fp)
	lw $t1, -1964($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1952($fp)
	lw $t1, -1968($fp)
	sw $t0, 0($t1)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	li $t0, 25404
	sw $t0, -1976($fp)
	addi $t0, $fp, -196
	sw $t0, -1980($fp)
	li $t0, 6
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1980($fp)
	lw $t1, -1988($fp)
	add $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1976($fp)
	lw $t1, -1992($fp)
	sw $t0, 0($t1)
	lw $t0, -1992($fp)
	lw $t1, 0($t0)
	sw $t1, -1996($fp)
	li $t0, 30904
	sw $t0, -2000($fp)
	addi $t0, $fp, -196
	sw $t0, -2004($fp)
	li $t0, 7
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2004($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2000($fp)
	lw $t1, -2016($fp)
	sw $t0, 0($t1)
	lw $t0, -2016($fp)
	lw $t1, 0($t0)
	sw $t1, -2020($fp)
	li $t0, 51190
	sw $t0, -2024($fp)
	addi $t0, $fp, -196
	sw $t0, -2028($fp)
	li $t0, 8
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2028($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2024($fp)
	lw $t1, -2040($fp)
	sw $t0, 0($t1)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	li $t0, 24321
	sw $t0, -2048($fp)
	addi $t0, $fp, -236
	sw $t0, -2052($fp)
	li $t0, 0
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2052($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2048($fp)
	lw $t1, -2064($fp)
	sw $t0, 0($t1)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	li $t0, 9302
	sw $t0, -2072($fp)
	addi $t0, $fp, -236
	sw $t0, -2076($fp)
	li $t0, 1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2076($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2072($fp)
	lw $t1, -2088($fp)
	sw $t0, 0($t1)
	lw $t0, -2088($fp)
	lw $t1, 0($t0)
	sw $t1, -2092($fp)
	li $t0, 58951
	sw $t0, -2096($fp)
	addi $t0, $fp, -236
	sw $t0, -2100($fp)
	li $t0, 2
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2100($fp)
	lw $t1, -2108($fp)
	add $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2096($fp)
	lw $t1, -2112($fp)
	sw $t0, 0($t1)
	lw $t0, -2112($fp)
	lw $t1, 0($t0)
	sw $t1, -2116($fp)
	li $t0, 63204
	sw $t0, -2120($fp)
	addi $t0, $fp, -236
	sw $t0, -2124($fp)
	li $t0, 3
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2124($fp)
	lw $t1, -2132($fp)
	add $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2120($fp)
	lw $t1, -2136($fp)
	sw $t0, 0($t1)
	lw $t0, -2136($fp)
	lw $t1, 0($t0)
	sw $t1, -2140($fp)
	li $t0, 46282
	sw $t0, -2144($fp)
	addi $t0, $fp, -236
	sw $t0, -2148($fp)
	li $t0, 4
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
	li $t0, 58812
	sw $t0, -2168($fp)
	addi $t0, $fp, -236
	sw $t0, -2172($fp)
	li $t0, 5
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
	li $t0, 28693
	sw $t0, -2192($fp)
	addi $t0, $fp, -236
	sw $t0, -2196($fp)
	li $t0, 6
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2196($fp)
	lw $t1, -2204($fp)
	add $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2192($fp)
	lw $t1, -2208($fp)
	sw $t0, 0($t1)
	lw $t0, -2208($fp)
	lw $t1, 0($t0)
	sw $t1, -2212($fp)
	li $t0, 19568
	sw $t0, -2216($fp)
	addi $t0, $fp, -236
	sw $t0, -2220($fp)
	li $t0, 7
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2220($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2216($fp)
	lw $t1, -2232($fp)
	sw $t0, 0($t1)
	lw $t0, -2232($fp)
	lw $t1, 0($t0)
	sw $t1, -2236($fp)
	li $t0, 51337
	sw $t0, -2240($fp)
	addi $t0, $fp, -236
	sw $t0, -2244($fp)
	li $t0, 8
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2244($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2240($fp)
	lw $t1, -2256($fp)
	sw $t0, 0($t1)
	lw $t0, -2256($fp)
	lw $t1, 0($t0)
	sw $t1, -2260($fp)
	li $t0, 31694
	sw $t0, -2264($fp)
	addi $t0, $fp, -236
	sw $t0, -2268($fp)
	li $t0, 9
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2268($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2264($fp)
	lw $t1, -2280($fp)
	sw $t0, 0($t1)
	lw $t0, -2280($fp)
	lw $t1, 0($t0)
	sw $t1, -2284($fp)
	li $t0, 23226
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	li $t0, 14590
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	sw $t0, -2308($fp)
	li $t0, 37956
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	li $t0, 19496
	sw $t0, -2324($fp)
	addi $t0, $fp, -268
	sw $t0, -2328($fp)
	li $t0, 0
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2328($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2324($fp)
	lw $t1, -2340($fp)
	sw $t0, 0($t1)
	lw $t0, -2340($fp)
	lw $t1, 0($t0)
	sw $t1, -2344($fp)
	li $t0, 27914
	sw $t0, -2348($fp)
	addi $t0, $fp, -268
	sw $t0, -2352($fp)
	li $t0, 1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2352($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2348($fp)
	lw $t1, -2364($fp)
	sw $t0, 0($t1)
	lw $t0, -2364($fp)
	lw $t1, 0($t0)
	sw $t1, -2368($fp)
	li $t0, 62080
	sw $t0, -2372($fp)
	addi $t0, $fp, -268
	sw $t0, -2376($fp)
	li $t0, 2
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2376($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2372($fp)
	lw $t1, -2388($fp)
	sw $t0, 0($t1)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	li $t0, 13775
	sw $t0, -2396($fp)
	addi $t0, $fp, -268
	sw $t0, -2400($fp)
	li $t0, 3
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2400($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2396($fp)
	lw $t1, -2412($fp)
	sw $t0, 0($t1)
	lw $t0, -2412($fp)
	lw $t1, 0($t0)
	sw $t1, -2416($fp)
	li $t0, 38831
	sw $t0, -2420($fp)
	addi $t0, $fp, -268
	sw $t0, -2424($fp)
	li $t0, 4
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2424($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2420($fp)
	lw $t1, -2436($fp)
	sw $t0, 0($t1)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	li $t0, 27076
	sw $t0, -2444($fp)
	addi $t0, $fp, -268
	sw $t0, -2448($fp)
	li $t0, 5
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2448($fp)
	lw $t1, -2456($fp)
	add $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2444($fp)
	lw $t1, -2460($fp)
	sw $t0, 0($t1)
	lw $t0, -2460($fp)
	lw $t1, 0($t0)
	sw $t1, -2464($fp)
	li $t0, 6857
	sw $t0, -2468($fp)
	addi $t0, $fp, -268
	sw $t0, -2472($fp)
	li $t0, 6
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2472($fp)
	lw $t1, -2480($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2468($fp)
	lw $t1, -2484($fp)
	sw $t0, 0($t1)
	lw $t0, -2484($fp)
	lw $t1, 0($t0)
	sw $t1, -2488($fp)
	li $t0, 35931
	sw $t0, -2492($fp)
	addi $t0, $fp, -268
	sw $t0, -2496($fp)
	li $t0, 7
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2496($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2492($fp)
	lw $t1, -2508($fp)
	sw $t0, 0($t1)
	lw $t0, -2508($fp)
	lw $t1, 0($t0)
	sw $t1, -2512($fp)
	li $t0, 31581
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	li $t0, 47462
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	sw $t0, -2536($fp)
	li $t0, 47315
	sw $t0, -2540($fp)
	addi $t0, $fp, -276
	sw $t0, -2544($fp)
	li $t0, 0
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2544($fp)
	lw $t1, -2552($fp)
	add $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2540($fp)
	lw $t1, -2556($fp)
	sw $t0, 0($t1)
	lw $t0, -2556($fp)
	lw $t1, 0($t0)
	sw $t1, -2560($fp)
	li $t0, 38941
	sw $t0, -2564($fp)
	addi $t0, $fp, -276
	sw $t0, -2568($fp)
	li $t0, 1
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2568($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2564($fp)
	lw $t1, -2580($fp)
	sw $t0, 0($t1)
	lw $t0, -2580($fp)
	lw $t1, 0($t0)
	sw $t1, -2584($fp)
	li $t0, 31715
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -2596($fp)
	li $t0, 46061
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	sw $t0, -2608($fp)
	li $t0, 64542
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	sw $t0, -2620($fp)
	li $t0, 57120
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	sw $t0, -2632($fp)
	li $t0, 11429
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	sw $t0, -2644($fp)
	li $t0, 50196
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -2656($fp)
	li $t0, 15905
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -2668($fp)
	li $t0, 20731
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -2680($fp)
	li $t0, 43611
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -2692($fp)
	li $t0, 13573
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	li $t0, 1477
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -2716($fp)
	li $t0, 36888
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	li $t0, 42266
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	li $t0, 21046
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	sw $t0, -2752($fp)
	li $t0, 22689
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	sw $t0, -2764($fp)
	li $t0, 8424
	sw $t0, -2768($fp)
	addi $t0, $fp, -304
	sw $t0, -2772($fp)
	li $t0, 0
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
	li $t0, 44272
	sw $t0, -2792($fp)
	addi $t0, $fp, -304
	sw $t0, -2796($fp)
	li $t0, 1
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
	li $t0, 37279
	sw $t0, -2816($fp)
	addi $t0, $fp, -304
	sw $t0, -2820($fp)
	li $t0, 2
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2820($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2816($fp)
	lw $t1, -2832($fp)
	sw $t0, 0($t1)
	lw $t0, -2832($fp)
	lw $t1, 0($t0)
	sw $t1, -2836($fp)
	li $t0, 46381
	sw $t0, -2840($fp)
	addi $t0, $fp, -304
	sw $t0, -2844($fp)
	li $t0, 3
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2844($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2840($fp)
	lw $t1, -2856($fp)
	sw $t0, 0($t1)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	li $t0, 63768
	sw $t0, -2864($fp)
	addi $t0, $fp, -304
	sw $t0, -2868($fp)
	li $t0, 4
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2868($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2864($fp)
	lw $t1, -2880($fp)
	sw $t0, 0($t1)
	lw $t0, -2880($fp)
	lw $t1, 0($t0)
	sw $t1, -2884($fp)
	li $t0, 65194
	sw $t0, -2888($fp)
	addi $t0, $fp, -304
	sw $t0, -2892($fp)
	li $t0, 5
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2892($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2888($fp)
	lw $t1, -2904($fp)
	sw $t0, 0($t1)
	lw $t0, -2904($fp)
	lw $t1, 0($t0)
	sw $t1, -2908($fp)
	li $t0, 42925
	sw $t0, -2912($fp)
	addi $t0, $fp, -304
	sw $t0, -2916($fp)
	li $t0, 6
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2916($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2912($fp)
	lw $t1, -2928($fp)
	sw $t0, 0($t1)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	li $t0, 12008
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -2944($fp)
	li $t0, 38489
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	sw $t0, -2956($fp)
	li $t0, 4465
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	sw $t0, -2968($fp)
	li $t0, 18865
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	sw $t0, -2980($fp)
	li $t0, 8884
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	sw $t0, -2992($fp)
	li $t0, 36046
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	sw $t0, -3004($fp)
	li $t0, 791
	sw $t0, -3008($fp)
	addi $t0, $fp, -344
	sw $t0, -3012($fp)
	li $t0, 0
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
	li $t0, 56200
	sw $t0, -3032($fp)
	addi $t0, $fp, -344
	sw $t0, -3036($fp)
	li $t0, 1
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
	li $t0, 9451
	sw $t0, -3056($fp)
	addi $t0, $fp, -344
	sw $t0, -3060($fp)
	li $t0, 2
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
	li $t0, 32507
	sw $t0, -3080($fp)
	addi $t0, $fp, -344
	sw $t0, -3084($fp)
	li $t0, 3
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
	li $t0, 36725
	sw $t0, -3104($fp)
	addi $t0, $fp, -344
	sw $t0, -3108($fp)
	li $t0, 4
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
	li $t0, 8457
	sw $t0, -3128($fp)
	addi $t0, $fp, -344
	sw $t0, -3132($fp)
	li $t0, 5
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3132($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3128($fp)
	lw $t1, -3144($fp)
	sw $t0, 0($t1)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	li $t0, 24091
	sw $t0, -3152($fp)
	addi $t0, $fp, -344
	sw $t0, -3156($fp)
	li $t0, 6
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3156($fp)
	lw $t1, -3164($fp)
	add $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3152($fp)
	lw $t1, -3168($fp)
	sw $t0, 0($t1)
	lw $t0, -3168($fp)
	lw $t1, 0($t0)
	sw $t1, -3172($fp)
	li $t0, 48155
	sw $t0, -3176($fp)
	addi $t0, $fp, -344
	sw $t0, -3180($fp)
	li $t0, 7
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3180($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3176($fp)
	lw $t1, -3192($fp)
	sw $t0, 0($t1)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	li $t0, 58654
	sw $t0, -3200($fp)
	addi $t0, $fp, -344
	sw $t0, -3204($fp)
	li $t0, 8
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3204($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3200($fp)
	lw $t1, -3216($fp)
	sw $t0, 0($t1)
	lw $t0, -3216($fp)
	lw $t1, 0($t0)
	sw $t1, -3220($fp)
	li $t0, 39996
	sw $t0, -3224($fp)
	addi $t0, $fp, -344
	sw $t0, -3228($fp)
	li $t0, 9
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3228($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t0, -3224($fp)
	lw $t1, -3240($fp)
	sw $t0, 0($t1)
	lw $t0, -3240($fp)
	lw $t1, 0($t0)
	sw $t1, -3244($fp)
	li $t0, 3350
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	sw $t0, -3256($fp)
	li $t0, 36729
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	sw $t0, -3268($fp)
	li $t0, 53569
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	sw $t0, -3280($fp)
	li $t0, 4828
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	sw $t0, -3292($fp)
	li $t0, 8081
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	sw $t0, -3304($fp)
	li $t0, 30300
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	sw $t0, -3316($fp)
	li $t0, 25874
	sw $t0, -3320($fp)
	addi $t0, $fp, -360
	sw $t0, -3324($fp)
	li $t0, 0
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3324($fp)
	lw $t1, -3332($fp)
	add $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3320($fp)
	lw $t1, -3336($fp)
	sw $t0, 0($t1)
	lw $t0, -3336($fp)
	lw $t1, 0($t0)
	sw $t1, -3340($fp)
	li $t0, 30770
	sw $t0, -3344($fp)
	addi $t0, $fp, -360
	sw $t0, -3348($fp)
	li $t0, 1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3348($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3344($fp)
	lw $t1, -3360($fp)
	sw $t0, 0($t1)
	lw $t0, -3360($fp)
	lw $t1, 0($t0)
	sw $t1, -3364($fp)
	li $t0, 38724
	sw $t0, -3368($fp)
	addi $t0, $fp, -360
	sw $t0, -3372($fp)
	li $t0, 2
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3372($fp)
	lw $t1, -3380($fp)
	add $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3368($fp)
	lw $t1, -3384($fp)
	sw $t0, 0($t1)
	lw $t0, -3384($fp)
	lw $t1, 0($t0)
	sw $t1, -3388($fp)
	li $t0, 4610
	sw $t0, -3392($fp)
	addi $t0, $fp, -360
	sw $t0, -3396($fp)
	li $t0, 3
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3396($fp)
	lw $t1, -3404($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3392($fp)
	lw $t1, -3408($fp)
	sw $t0, 0($t1)
	lw $t0, -3408($fp)
	lw $t1, 0($t0)
	sw $t1, -3412($fp)
	li $t0, 2514
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	sw $t0, -3424($fp)
	li $t0, 19569
	sw $t0, -3428($fp)
	addi $t0, $fp, -388
	sw $t0, -3432($fp)
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3432($fp)
	lw $t1, -3440($fp)
	add $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3428($fp)
	lw $t1, -3444($fp)
	sw $t0, 0($t1)
	lw $t0, -3444($fp)
	lw $t1, 0($t0)
	sw $t1, -3448($fp)
	li $t0, 2843
	sw $t0, -3452($fp)
	addi $t0, $fp, -388
	sw $t0, -3456($fp)
	li $t0, 1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3456($fp)
	lw $t1, -3464($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3452($fp)
	lw $t1, -3468($fp)
	sw $t0, 0($t1)
	lw $t0, -3468($fp)
	lw $t1, 0($t0)
	sw $t1, -3472($fp)
	li $t0, 2172
	sw $t0, -3476($fp)
	addi $t0, $fp, -388
	sw $t0, -3480($fp)
	li $t0, 2
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3480($fp)
	lw $t1, -3488($fp)
	add $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3476($fp)
	lw $t1, -3492($fp)
	sw $t0, 0($t1)
	lw $t0, -3492($fp)
	lw $t1, 0($t0)
	sw $t1, -3496($fp)
	li $t0, 62494
	sw $t0, -3500($fp)
	addi $t0, $fp, -388
	sw $t0, -3504($fp)
	li $t0, 3
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3504($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3500($fp)
	lw $t1, -3516($fp)
	sw $t0, 0($t1)
	lw $t0, -3516($fp)
	lw $t1, 0($t0)
	sw $t1, -3520($fp)
	li $t0, 14851
	sw $t0, -3524($fp)
	addi $t0, $fp, -388
	sw $t0, -3528($fp)
	li $t0, 4
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3528($fp)
	lw $t1, -3536($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3524($fp)
	lw $t1, -3540($fp)
	sw $t0, 0($t1)
	lw $t0, -3540($fp)
	lw $t1, 0($t0)
	sw $t1, -3544($fp)
	li $t0, 40661
	sw $t0, -3548($fp)
	addi $t0, $fp, -388
	sw $t0, -3552($fp)
	li $t0, 5
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3552($fp)
	lw $t1, -3560($fp)
	add $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3548($fp)
	lw $t1, -3564($fp)
	sw $t0, 0($t1)
	lw $t0, -3564($fp)
	lw $t1, 0($t0)
	sw $t1, -3568($fp)
	li $t0, 1424
	sw $t0, -3572($fp)
	addi $t0, $fp, -388
	sw $t0, -3576($fp)
	li $t0, 6
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3576($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3572($fp)
	lw $t1, -3588($fp)
	sw $t0, 0($t1)
	lw $t0, -3588($fp)
	lw $t1, 0($t0)
	sw $t1, -3592($fp)
	li $t0, 33716
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	sw $t0, -3604($fp)
	li $t0, 49546
	sw $t0, -3608($fp)
	addi $t0, $fp, -400
	sw $t0, -3612($fp)
	li $t0, 0
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, -3612($fp)
	lw $t1, -3620($fp)
	add $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -3608($fp)
	lw $t1, -3624($fp)
	sw $t0, 0($t1)
	lw $t0, -3624($fp)
	lw $t1, 0($t0)
	sw $t1, -3628($fp)
	li $t0, 37470
	sw $t0, -3632($fp)
	addi $t0, $fp, -400
	sw $t0, -3636($fp)
	li $t0, 1
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3636($fp)
	lw $t1, -3644($fp)
	add $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3632($fp)
	lw $t1, -3648($fp)
	sw $t0, 0($t1)
	lw $t0, -3648($fp)
	lw $t1, 0($t0)
	sw $t1, -3652($fp)
	li $t0, 34508
	sw $t0, -3656($fp)
	addi $t0, $fp, -400
	sw $t0, -3660($fp)
	li $t0, 2
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3660($fp)
	lw $t1, -3668($fp)
	add $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3656($fp)
	lw $t1, -3672($fp)
	sw $t0, 0($t1)
	lw $t0, -3672($fp)
	lw $t1, 0($t0)
	sw $t1, -3676($fp)
	li $t0, 40210
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -3688($fp)
	li $t0, 46922
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	sw $t0, -3700($fp)
	li $t0, 1479
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	sw $t0, -3712($fp)
	addi $t0, $fp, -268
	sw $t0, -3716($fp)
	li $t0, 0
	sw $t0, -3720($fp)
	li $t0, 0
	sw $t0, -3724($fp)
	li $t0, 11399
	sw $t0, -3728($fp)
	li $t0, 55379
	sw $t0, -3732($fp)
	lw $t1, -3728($fp)
	lw $t2, -3732($fp)
	bgt $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -3724($fp)
label374:
	li $t0, 25570
	sw $t0, -3736($fp)
	lw $t1, -3724($fp)
	lw $t2, -3736($fp)
	bge $t1, $t2, label372
	j label371
label372:
	lw $t0, -468($fp)
	sw $t0, -3740($fp)
	lw $t0, -708($fp)
	sw $t0, -3744($fp)
	lw $t0, -3740($fp)
	lw $t1, -3744($fp)
	mul $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -3720($fp)
label371:
	li $t0, 4
	lw $t1, -3720($fp)
	mul $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	lw $t1, -3716($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	lw $t1, 0($t0)
	sw $t1, -3760($fp)
	lw $t1, -3760($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 59554
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	sw $t0, -3800($fp)
	li $t0, 48497
	sw $t0, -3804($fp)
	addi $t0, $fp, -3788
	sw $t0, -3808($fp)
	li $t0, 0
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3808($fp)
	lw $t1, -3816($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3804($fp)
	lw $t1, -3820($fp)
	sw $t0, 0($t1)
	lw $t0, -3820($fp)
	lw $t1, 0($t0)
	sw $t1, -3824($fp)
	li $t0, 30
	sw $t0, -3828($fp)
	addi $t0, $fp, -3788
	sw $t0, -3832($fp)
	li $t0, 1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3832($fp)
	lw $t1, -3840($fp)
	add $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3828($fp)
	lw $t1, -3844($fp)
	sw $t0, 0($t1)
	lw $t0, -3844($fp)
	lw $t1, 0($t0)
	sw $t1, -3848($fp)
	li $t0, 62905
	sw $t0, -3852($fp)
	addi $t0, $fp, -3788
	sw $t0, -3856($fp)
	li $t0, 2
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3856($fp)
	lw $t1, -3864($fp)
	add $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3852($fp)
	lw $t1, -3868($fp)
	sw $t0, 0($t1)
	lw $t0, -3868($fp)
	lw $t1, 0($t0)
	sw $t1, -3872($fp)
	li $t0, 19691
	sw $t0, -3876($fp)
	addi $t0, $fp, -3788
	sw $t0, -3880($fp)
	li $t0, 3
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3880($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3876($fp)
	lw $t1, -3892($fp)
	sw $t0, 0($t1)
	lw $t0, -3892($fp)
	lw $t1, 0($t0)
	sw $t1, -3896($fp)
	li $t0, 53599
	sw $t0, -3900($fp)
	addi $t0, $fp, -3788
	sw $t0, -3904($fp)
	li $t0, 4
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3904($fp)
	lw $t1, -3912($fp)
	add $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3900($fp)
	lw $t1, -3916($fp)
	sw $t0, 0($t1)
	lw $t0, -3916($fp)
	lw $t1, 0($t0)
	sw $t1, -3920($fp)
	li $t0, 2197
	sw $t0, -3924($fp)
	addi $t0, $fp, -3788
	sw $t0, -3928($fp)
	li $t0, 5
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3928($fp)
	lw $t1, -3936($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3924($fp)
	lw $t1, -3940($fp)
	sw $t0, 0($t1)
	lw $t0, -3940($fp)
	lw $t1, 0($t0)
	sw $t1, -3944($fp)
	li $t0, 27772
	sw $t0, -3948($fp)
	addi $t0, $fp, -3788
	sw $t0, -3952($fp)
	li $t0, 6
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3952($fp)
	lw $t1, -3960($fp)
	add $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3948($fp)
	lw $t1, -3964($fp)
	sw $t0, 0($t1)
	lw $t0, -3964($fp)
	lw $t1, 0($t0)
	sw $t1, -3968($fp)
	li $t0, 18363
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	sw $t0, -3980($fp)
	li $t0, 0
	sw $t0, -3984($fp)
	li $t0, 0
	sw $t0, -3988($fp)
	lw $t0, -696($fp)
	sw $t0, -3992($fp)
	li $t0, 0
	lw $t1, -3992($fp)
	sub $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t1, -3996($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label377
label377:
	li $t0, 1
	sw $t0, -3988($fp)
label378:
	li $t0, 0
	lw $t1, -3988($fp)
	sub $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, 8($fp)
	sw $t0, -4004($fp)
	lw $t0, -4000($fp)
	lw $t1, -4004($fp)
	sub $t0, $t0, $t1
	sw $t0, -4008($fp)
	li $t0, 28071
	sw $t0, -4012($fp)
	lw $t1, -4008($fp)
	lw $t2, -4012($fp)
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -3984($fp)
label376:
	lw $t0, -3796($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3788
	sw $t0, -4020($fp)
	li $t0, 0
	sw $t0, -4024($fp)
	li $t0, 4
	lw $t1, -4024($fp)
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, 0($t0)
	sw $t1, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3788
	sw $t0, -4040($fp)
	li $t0, 1
	sw $t0, -4044($fp)
	li $t0, 4
	lw $t1, -4044($fp)
	mul $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	lw $t1, -4040($fp)
	add $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	lw $t1, 0($t0)
	sw $t1, -4056($fp)
	lw $t0, -4056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3788
	sw $t0, -4060($fp)
	li $t0, 2
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
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3788
	sw $t0, -4080($fp)
	li $t0, 3
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
	addi $t0, $fp, -3788
	sw $t0, -4100($fp)
	li $t0, 4
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
	addi $t0, $fp, -3788
	sw $t0, -4120($fp)
	li $t0, 5
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
	addi $t0, $fp, -3788
	sw $t0, -4140($fp)
	li $t0, 6
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
	lw $t0, -3976($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 58543
	sw $t0, -4164($fp)
	lw $ra, -4($fp)
	lw $v0, -4164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label379:
	addi $t0, $fp, -28
	sw $t0, -4168($fp)
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, -3976($fp)
	sw $t0, -4176($fp)
	li $t0, 32681
	sw $t0, -4180($fp)
	lw $t1, -4176($fp)
	lw $t2, -4180($fp)
	bne $t1, $t2, label382
	j label384
label384:
	lw $t0, -3796($fp)
	sw $t0, -4184($fp)
	lw $t1, -4184($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -4172($fp)
label383:
	lw $t0, -1296($fp)
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -4192($fp)
	addi $t0, $fp, -160
	sw $t0, -4196($fp)
	lw $t0, -408($fp)
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
	li $t0, 57088
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	sub $t0, $t0, $t1
	sw $t0, -4220($fp)
	addi $sp, $sp, -4
	lw $t0, -4172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4224($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -4224($fp)
	mul $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, 0($t0)
	sw $t1, -4236($fp)
	li $t0, 0
	lw $t1, -4236($fp)
	sub $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t1, -4240($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 0
	sw $t0, -4244($fp)
	li $t0, 61057
	sw $t0, -4248($fp)
	lw $t1, -4248($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -4244($fp)
label386:
	j label379
label381:
label387:
	li $t0, 11121
	sw $t0, -4252($fp)
	li $t0, 0
	lw $t1, -4252($fp)
	sub $t0, $t0, $t1
	sw $t0, -4256($fp)
	li $t0, 0
	lw $t1, -4256($fp)
	sub $t0, $t0, $t1
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	li $t0, 0
	sw $t0, -4268($fp)
	li $t0, 8080
	sw $t0, -4272($fp)
	li $t0, 50375
	sw $t0, -4276($fp)
	lw $t1, -4272($fp)
	lw $t2, -4276($fp)
	bge $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -4268($fp)
label393:
	lw $t0, -1500($fp)
	sw $t0, -4280($fp)
	lw $t1, -4268($fp)
	lw $t2, -4280($fp)
	blt $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -4264($fp)
label391:
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 35524
	sw $t0, -4288($fp)
	li $t0, 63229
	sw $t0, -4292($fp)
	lw $t0, -4288($fp)
	lw $t1, -4292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4296($fp)
	lw $t1, -4296($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label396:
	lw $t0, -732($fp)
	sw $t0, -4300($fp)
	lw $t1, -4300($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -4284($fp)
label395:
	addi $sp, $sp, -4
	lw $t0, -4264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4284($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4304($fp)
	addi $sp, $sp, 12
	lw $t0, -4260($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -4312($fp)
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 0
	sw $t0, -4316($fp)
	li $t0, 0
	sw $t0, -4320($fp)
	lw $t0, -2604($fp)
	sw $t0, -4324($fp)
	li $t0, 38354
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4332($fp)
	li $t0, 0
	sw $t0, -4336($fp)
	lw $t0, -2676($fp)
	sw $t0, -4340($fp)
	li $t0, 9504
	sw $t0, -4344($fp)
	lw $t1, -4340($fp)
	lw $t2, -4344($fp)
	bge $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -4336($fp)
label403:
	lw $t1, -4332($fp)
	lw $t2, -4336($fp)
	beq $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -4320($fp)
label401:
	addi $t0, $fp, -3788
	sw $t0, -4348($fp)
	lw $t0, -1512($fp)
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
	lw $t1, -4320($fp)
	lw $t2, -4364($fp)
	beq $t1, $t2, label397
	j label399
label399:
	addi $t0, $fp, -196
	sw $t0, -4368($fp)
	lw $t0, -1284($fp)
	sw $t0, -4372($fp)
	li $t0, 4
	lw $t1, -4372($fp)
	mul $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	lw $t1, -4368($fp)
	add $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	lw $t1, 0($t0)
	sw $t1, -4384($fp)
	li $t0, 18556
	sw $t0, -4388($fp)
	lw $t0, -4384($fp)
	lw $t1, -4388($fp)
	mul $t0, $t0, $t1
	sw $t0, -4392($fp)
	li $t0, 0
	sw $t0, -4396($fp)
	lw $t0, -1656($fp)
	sw $t0, -4400($fp)
	lw $t1, -4400($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label404:
	li $t0, 1
	sw $t0, -4396($fp)
label405:
	lw $t0, -4392($fp)
	lw $t1, -4396($fp)
	add $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -4316($fp)
label398:
	j label387
label389:
	j label369
label368:
	li $t0, 22364
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	sw $t0, -4416($fp)
	li $t0, 46974
	sw $t0, -4432($fp)
	addi $t0, $fp, -4428
	sw $t0, -4436($fp)
	li $t0, 0
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4436($fp)
	lw $t1, -4444($fp)
	add $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4432($fp)
	lw $t1, -4448($fp)
	sw $t0, 0($t1)
	lw $t0, -4448($fp)
	lw $t1, 0($t0)
	sw $t1, -4452($fp)
	li $t0, 53064
	sw $t0, -4456($fp)
	addi $t0, $fp, -4428
	sw $t0, -4460($fp)
	li $t0, 1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4460($fp)
	lw $t1, -4468($fp)
	add $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4456($fp)
	lw $t1, -4472($fp)
	sw $t0, 0($t1)
	lw $t0, -4472($fp)
	lw $t1, 0($t0)
	sw $t1, -4476($fp)
	li $t0, 62574
	sw $t0, -4480($fp)
	addi $t0, $fp, -4428
	sw $t0, -4484($fp)
	li $t0, 2
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4484($fp)
	lw $t1, -4492($fp)
	add $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4480($fp)
	lw $t1, -4496($fp)
	sw $t0, 0($t1)
	lw $t0, -4496($fp)
	lw $t1, 0($t0)
	sw $t1, -4500($fp)
	lw $t0, -1548($fp)
	sw $t0, -4504($fp)
	addi $t0, $fp, -4428
	sw $t0, -4508($fp)
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 4
	lw $t1, -4512($fp)
	mul $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	lw $t1, 0($t0)
	sw $t1, -4524($fp)
	lw $t0, -4524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4428
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
	lw $t0, -4544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4428
	sw $t0, -4548($fp)
	li $t0, 2
	sw $t0, -4552($fp)
	li $t0, 4
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	lw $t1, -4548($fp)
	add $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	lw $t1, 0($t0)
	sw $t1, -4564($fp)
	lw $t0, -4564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4428
	sw $t0, -4568($fp)
	li $t0, 0
	sw $t0, -4572($fp)
	lw $t0, -1680($fp)
	sw $t0, -4576($fp)
	li $t0, 28360
	sw $t0, -4580($fp)
	lw $t0, -2964($fp)
	sw $t0, -4584($fp)
	lw $t0, -4580($fp)
	lw $t1, -4584($fp)
	mul $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t1, -4576($fp)
	lw $t2, -4588($fp)
	bge $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -4572($fp)
label407:
	li $t0, 4
	lw $t1, -4572($fp)
	mul $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	lw $t1, 0($t0)
	sw $t1, -4600($fp)
	lw $ra, -4($fp)
	lw $v0, -4600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 54543
	sw $t0, -4604($fp)
	addi $t0, $fp, -32
	sw $t0, -4608($fp)
	lw $t0, -660($fp)
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
	li $t0, 0
	lw $t1, -4624($fp)
	sub $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4604($fp)
	lw $t1, -4628($fp)
	mul $t0, $t0, $t1
	sw $t0, -4632($fp)
	addi $t0, $fp, -4428
	sw $t0, -4636($fp)
	li $t0, 0
	sw $t0, -4640($fp)
	li $t0, 4
	lw $t1, -4640($fp)
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	lw $t1, -4636($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, 0($t0)
	sw $t1, -4652($fp)
	lw $t0, -4652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4428
	sw $t0, -4656($fp)
	li $t0, 1
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
	lw $t0, -4672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4428
	sw $t0, -4676($fp)
	li $t0, 2
	sw $t0, -4680($fp)
	li $t0, 4
	lw $t1, -4680($fp)
	mul $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	lw $t1, 0($t0)
	sw $t1, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4696($fp)
	li $t0, 8438
	sw $t0, -4700($fp)
	li $t0, 2456
	sw $t0, -4704($fp)
	lw $t0, -2652($fp)
	sw $t0, -4708($fp)
	lw $t0, -4704($fp)
	lw $t1, -4708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4712($fp)
	lw $t0, -2532($fp)
	sw $t0, -4716($fp)
	lw $t0, -4712($fp)
	lw $t1, -4716($fp)
	add $t0, $t0, $t1
	sw $t0, -4720($fp)
	li $t0, 0
	sw $t0, -4724($fp)
	lw $t0, -1248($fp)
	sw $t0, -4728($fp)
	lw $t0, -1524($fp)
	sw $t0, -4732($fp)
	lw $t0, -4728($fp)
	lw $t1, -4732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4736($fp)
	li $t0, 14577
	sw $t0, -4740($fp)
	lw $t1, -4736($fp)
	lw $t2, -4740($fp)
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -4724($fp)
label409:
	li $t0, 0
	sw $t0, -4744($fp)
	lw $t0, -1824($fp)
	sw $t0, -4748($fp)
	lw $t0, -1560($fp)
	sw $t0, -4752($fp)
	lw $t0, -4748($fp)
	lw $t1, -4752($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	li $t0, 18204
	sw $t0, -4760($fp)
	lw $t1, -4756($fp)
	lw $t2, -4760($fp)
	beq $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -4744($fp)
label411:
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4764($fp)
	addi $sp, $sp, 16
	lw $t0, -4700($fp)
	lw $t1, -4764($fp)
	mul $t0, $t0, $t1
	sw $t0, -4768($fp)
	li $t0, 4
	lw $t1, -4768($fp)
	mul $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, 0($t0)
	sw $t1, -4780($fp)
	lw $ra, -4($fp)
	lw $v0, -4780($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -4412($fp)
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4788($fp)
	li $t0, 1165
	sw $t0, -4792($fp)
	li $t0, 0
	lw $t1, -4792($fp)
	sub $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t1, -4796($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -4788($fp)
label413:
	lw $ra, -4($fp)
	lw $v0, -4788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -4412($fp)
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4804($fp)
	lw $t0, -4412($fp)
	sw $t0, -4808($fp)
	li $t0, 14607
	sw $t0, -4812($fp)
	lw $t0, -1656($fp)
	sw $t0, -4816($fp)
	lw $t0, -4812($fp)
	lw $t1, -4816($fp)
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t1, -4808($fp)
	lw $t2, -4820($fp)
	beq $t1, $t2, label414
	j label416
label416:
	lw $t0, -660($fp)
	sw $t0, -4824($fp)
	lw $t0, -3696($fp)
	sw $t0, -4828($fp)
	lw $t0, -4824($fp)
	lw $t1, -4828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4832($fp)
	li $t0, 65361
	sw $t0, -4836($fp)
	lw $t0, -4832($fp)
	lw $t1, -4836($fp)
	add $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -612($fp)
	sw $t0, -4844($fp)
	lw $t0, -2316($fp)
	sw $t0, -4848($fp)
	lw $t0, -4844($fp)
	lw $t1, -4848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4852($fp)
	lw $t0, -4840($fp)
	lw $t1, -4852($fp)
	sub $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t1, -4856($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -4804($fp)
label415:
	lw $ra, -4($fp)
	lw $v0, -4804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4860($fp)
	lw $t0, -1656($fp)
	sw $t0, -4864($fp)
	addi $t0, $fp, -196
	sw $t0, -4868($fp)
	li $t0, 6
	sw $t0, -4872($fp)
	li $t0, 4
	lw $t1, -4872($fp)
	mul $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	lw $t1, -4868($fp)
	add $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	lw $t1, 0($t0)
	sw $t1, -4884($fp)
	lw $t0, -3312($fp)
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	sw $t0, -4892($fp)
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4896($fp)
	addi $sp, $sp, 12
	lw $t1, -4864($fp)
	lw $t2, -4896($fp)
	blt $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -4860($fp)
label418:
	lw $t0, -4860($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -4900($fp)
	lw $ra, -4($fp)
	lw $v0, -4900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label369:
	li $t0, 2022
	sw $t0, -4912($fp)
	addi $t0, $fp, -4908
	sw $t0, -4916($fp)
	li $t0, 0
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4916($fp)
	lw $t1, -4924($fp)
	add $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4912($fp)
	lw $t1, -4928($fp)
	sw $t0, 0($t1)
	lw $t0, -4928($fp)
	lw $t1, 0($t0)
	sw $t1, -4932($fp)
	li $t0, 48629
	sw $t0, -4936($fp)
	addi $t0, $fp, -4908
	sw $t0, -4940($fp)
	li $t0, 1
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4940($fp)
	lw $t1, -4948($fp)
	add $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4936($fp)
	lw $t1, -4952($fp)
	sw $t0, 0($t1)
	lw $t0, -4952($fp)
	lw $t1, 0($t0)
	sw $t1, -4956($fp)
	li $t0, 21034
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	sw $t0, -4968($fp)
label419:
	addi $t0, $fp, -4908
	sw $t0, -4972($fp)
	li $t0, 0
	sw $t0, -4976($fp)
	lw $t0, -480($fp)
	sw $t0, -4980($fp)
	lw $t0, -2316($fp)
	sw $t0, -4984($fp)
	lw $t1, -4980($fp)
	lw $t2, -4984($fp)
	ble $t1, $t2, label423
	j label425
label425:
	lw $t0, -3684($fp)
	sw $t0, -4988($fp)
	lw $t1, -4988($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -4976($fp)
label424:
	li $t0, 4
	lw $t1, -4976($fp)
	mul $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, 0($t0)
	sw $t1, -5000($fp)
	lw $t1, -5000($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label422:
	li $t0, 0
	sw $t0, -5004($fp)
	lw $t0, -1644($fp)
	sw $t0, -5008($fp)
	li $t0, 0
	lw $t1, -5008($fp)
	sub $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label426:
	li $t0, 1
	sw $t0, -5004($fp)
label427:
	li $t0, 30093
	sw $t0, -5016($fp)
	li $t0, 41636
	sw $t0, -5020($fp)
	lw $t0, -5016($fp)
	lw $t1, -5020($fp)
	mul $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t1, -5004($fp)
	lw $t2, -5024($fp)
	bgt $t1, $t2, label420
	j label421
label420:
label428:
	addi $t0, $fp, -108
	sw $t0, -5028($fp)
	li $t0, 0
	sw $t0, -5032($fp)
	addi $t0, $fp, -12
	sw $t0, -5036($fp)
	li $t0, 1
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
	bne $t1, $t2, label431
	j label433
label433:
	li $t0, 37157
	sw $t0, -5056($fp)
	li $t0, 23707
	sw $t0, -5060($fp)
	lw $t1, -5056($fp)
	lw $t2, -5060($fp)
	ble $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -5032($fp)
label432:
	li $t0, 4
	lw $t1, -5032($fp)
	mul $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	lw $t1, -5028($fp)
	add $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t0, -5068($fp)
	lw $t1, 0($t0)
	sw $t1, -5072($fp)
	lw $t1, -5072($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 0
	sw $t0, -5076($fp)
	lw $t0, -2652($fp)
	sw $t0, -5080($fp)
	lw $t1, -5080($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label436
label436:
	li $t0, 32763
	sw $t0, -5084($fp)
	lw $t1, -5084($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label435
label437:
	li $t0, 34850
	sw $t0, -5088($fp)
	lw $t0, -4964($fp)
	sw $t0, -5092($fp)
	lw $t1, -5088($fp)
	lw $t2, -5092($fp)
	blt $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -5076($fp)
label435:
	j label428
label430:
	j label419
label421:
label438:
	li $t0, 31787
	sw $t0, -5096($fp)
	li $t0, 17603
	sw $t0, -5100($fp)
	lw $t0, -5096($fp)
	lw $t1, -5100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5104($fp)
	li $t0, 0
	lw $t1, -5104($fp)
	sub $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 7668
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	sw $t0, -5120($fp)
	li $t0, 41291
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5132($fp)
	li $t0, 36159
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	sw $t0, -5144($fp)
	li $t0, 30033
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	sw $t0, -5156($fp)
label441:
	li $t0, 22730
	sw $t0, -5160($fp)
	lw $t1, -5160($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
label444:
	li $t0, 0
	sw $t0, -5164($fp)
	addi $t0, $fp, -128
	sw $t0, -5168($fp)
	li $t0, 1
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
	li $t0, 51090
	sw $t0, -5188($fp)
	lw $t0, -5184($fp)
	lw $t1, -5188($fp)
	add $t0, $t0, $t1
	sw $t0, -5192($fp)
	li $t0, 27271
	sw $t0, -5196($fp)
	addi $t0, $fp, -68
	sw $t0, -5200($fp)
	lw $t0, -1332($fp)
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
	li $t0, 0
	sw $t0, -5220($fp)
	lw $t0, -2676($fp)
	sw $t0, -5224($fp)
	li $t0, 35509
	sw $t0, -5228($fp)
	lw $t0, -5224($fp)
	lw $t1, -5228($fp)
	add $t0, $t0, $t1
	sw $t0, -5232($fp)
	li $t0, 3758
	sw $t0, -5236($fp)
	lw $t1, -5232($fp)
	lw $t2, -5236($fp)
	beq $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -5220($fp)
label450:
	addi $sp, $sp, -4
	lw $t0, -5216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5220($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5240($fp)
	addi $sp, $sp, 12
	li $t0, 12694
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	sw $t0, -5248($fp)
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5252($fp)
	addi $sp, $sp, 16
	lw $t1, -5192($fp)
	lw $t2, -5252($fp)
	blt $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -5164($fp)
label448:
	lw $t0, -5164($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -5256($fp)
	lw $t1, -5256($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 0
	sw $t0, -5260($fp)
	lw $t0, -1524($fp)
	sw $t0, -5264($fp)
	lw $t0, -1536($fp)
	sw $t0, -5268($fp)
	lw $t0, -3264($fp)
	sw $t0, -5272($fp)
	lw $t0, -5268($fp)
	lw $t1, -5272($fp)
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t1, -5264($fp)
	lw $t2, -5276($fp)
	blt $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -5260($fp)
label452:
	lw $t0, -5260($fp)
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5280($fp)
	j label444
label446:
	j label441
label443:
	li $t0, 37966
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	sw $t0, -5292($fp)
	li $t0, 0
	sw $t0, -5296($fp)
	li $t0, 0
	sw $t0, -5300($fp)
	lw $t0, -744($fp)
	sw $t0, -5304($fp)
	lw $t1, -5304($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label455
label455:
	li $t0, 1
	sw $t0, -5300($fp)
label456:
	li $t0, 0
	lw $t1, -5300($fp)
	sub $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -5296($fp)
label454:
	li $t0, 0
	sw $t0, -5312($fp)
	addi $t0, $fp, -32
	sw $t0, -5316($fp)
	li $t0, 0
	sw $t0, -5320($fp)
	lw $t0, -2688($fp)
	sw $t0, -5324($fp)
	lw $t0, -2592($fp)
	sw $t0, -5328($fp)
	lw $t1, -5324($fp)
	lw $t2, -5328($fp)
	beq $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -5320($fp)
label461:
	li $t0, 4
	lw $t1, -5320($fp)
	mul $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	lw $t1, -5316($fp)
	add $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	lw $t1, 0($t0)
	sw $t1, -5340($fp)
	lw $t0, -696($fp)
	sw $t0, -5344($fp)
	li $t0, 4924
	sw $t0, -5348($fp)
	lw $t0, -5344($fp)
	lw $t1, -5348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5352($fp)
	lw $t0, 4($fp)
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5360($fp)
	lw $t1, -5340($fp)
	lw $t2, -5360($fp)
	bne $t1, $t2, label457
	j label459
label459:
	li $t0, 41878
	sw $t0, -5364($fp)
	li $t0, 0
	lw $t1, -5364($fp)
	sub $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label458
label462:
	lw $t0, -5288($fp)
	sw $t0, -5372($fp)
	li $t0, 37791
	sw $t0, -5376($fp)
	lw $t1, -5372($fp)
	lw $t2, -5376($fp)
	beq $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -5312($fp)
label458:
label463:
	addi $t0, $fp, -140
	sw $t0, -5380($fp)
	lw $t0, -5140($fp)
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
	lw $t1, -5396($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 0
	sw $t0, -5400($fp)
	addi $t0, $fp, -236
	sw $t0, -5404($fp)
	li $t0, 2
	sw $t0, -5408($fp)
	li $t0, 4
	lw $t1, -5408($fp)
	mul $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, -5404($fp)
	add $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, 0($t0)
	sw $t1, -5420($fp)
	li $t0, 39814
	sw $t0, -5424($fp)
	lw $t0, -5420($fp)
	lw $t1, -5424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5428($fp)
	li $t0, 0
	sw $t0, -5432($fp)
	lw $t0, 8($fp)
	sw $t0, -5436($fp)
	lw $t1, -5436($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label468:
	li $t0, 1
	sw $t0, -5432($fp)
label469:
	lw $t0, -5428($fp)
	lw $t1, -5432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5440($fp)
	li $t0, 0
	sw $t0, -5444($fp)
	li $t0, 8873
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label470:
	li $t0, 1
	sw $t0, -5444($fp)
label471:
	lw $t0, -5440($fp)
	lw $t1, -5444($fp)
	mul $t0, $t0, $t1
	sw $t0, -5452($fp)
	li $t0, 0
	sw $t0, -5456($fp)
	li $t0, 0
	sw $t0, -5460($fp)
	li $t0, 46
	sw $t0, -5464($fp)
	lw $t1, -5464($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label474
label474:
	li $t0, 1
	sw $t0, -5460($fp)
label475:
	li $t0, 0
	lw $t1, -5460($fp)
	sub $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t1, -5468($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -5456($fp)
label473:
	lw $t1, -5452($fp)
	lw $t2, -5456($fp)
	beq $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -5400($fp)
label467:
	j label463
label465:
	lw $t0, -5116($fp)
	sw $t0, -5472($fp)
	lw $t0, -2952($fp)
	sw $t0, -5476($fp)
	li $t0, 0
	lw $t1, -5476($fp)
	sub $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5472($fp)
	lw $t1, -5480($fp)
	mul $t0, $t0, $t1
	sw $t0, -5484($fp)
	lw $t1, -5484($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
label479:
	lw $t0, -648($fp)
	sw $t0, -5488($fp)
	li $t0, 0
	sw $t0, -5492($fp)
	addi $t0, $fp, -268
	sw $t0, -5496($fp)
	lw $t0, -588($fp)
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
	lw $t1, -5512($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label484
label484:
	lw $t0, -2964($fp)
	sw $t0, -5516($fp)
	lw $t1, -5516($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -5492($fp)
label483:
	li $t0, 0
	sw $t0, -5520($fp)
	lw $t0, -1500($fp)
	sw $t0, -5524($fp)
	li $t0, 4371
	sw $t0, -5528($fp)
	lw $t0, -5524($fp)
	lw $t1, -5528($fp)
	mul $t0, $t0, $t1
	sw $t0, -5532($fp)
	li $t0, 50509
	sw $t0, -5536($fp)
	lw $t1, -5532($fp)
	lw $t2, -5536($fp)
	bgt $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -5520($fp)
label486:
	li $t0, 0
	sw $t0, -5540($fp)
	lw $t0, -1332($fp)
	sw $t0, -5544($fp)
	lw $t0, -660($fp)
	sw $t0, -5548($fp)
	lw $t0, -5544($fp)
	lw $t1, -5548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5552($fp)
	lw $t0, -720($fp)
	sw $t0, -5556($fp)
	lw $t1, -5552($fp)
	lw $t2, -5556($fp)
	beq $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -5540($fp)
label488:
	addi $sp, $sp, -4
	lw $t0, -5492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5540($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5560($fp)
	addi $sp, $sp, 16
	lw $t1, -5488($fp)
	lw $t2, -5560($fp)
	bgt $t1, $t2, label480
	j label481
label480:
	li $t0, 0
	sw $t0, -5564($fp)
	li $t0, 0
	sw $t0, -5568($fp)
	li $t0, 12632
	sw $t0, -5572($fp)
	li $t0, 0
	lw $t1, -5572($fp)
	sub $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -612($fp)
	sw $t0, -5580($fp)
	lw $t1, -5576($fp)
	lw $t2, -5580($fp)
	blt $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -5568($fp)
label492:
	lw $t0, -2652($fp)
	sw $t0, -5584($fp)
	li $t0, 0
	lw $t1, -5584($fp)
	sub $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t1, -5568($fp)
	lw $t2, -5588($fp)
	beq $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -5564($fp)
label490:
	lw $t0, -5564($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -5592($fp)
	j label479
label481:
	j label478
label477:
	li $t0, 1610
	sw $t0, -5596($fp)
label478:
	li $t0, 22130
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	sw $t0, -5608($fp)
	li $t0, 36340
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	sw $t0, -5620($fp)
	li $t0, 34374
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	sw $t0, -5632($fp)
	li $t0, 0
	sw $t0, -5636($fp)
	li $t0, 0
	sw $t0, -5640($fp)
	li $t0, 56980
	sw $t0, -5644($fp)
	li $t0, 2591
	sw $t0, -5648($fp)
	lw $t0, -5644($fp)
	lw $t1, -5648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5652($fp)
	lw $t0, -624($fp)
	sw $t0, -5656($fp)
	lw $t1, -5652($fp)
	lw $t2, -5656($fp)
	ble $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -5640($fp)
label497:
	lw $t0, -5604($fp)
	sw $t0, -5660($fp)
	li $t0, 0
	sw $t0, -5664($fp)
	lw $t0, -2652($fp)
	sw $t0, -5668($fp)
	lw $t0, -1656($fp)
	sw $t0, -5672($fp)
	lw $t1, -5668($fp)
	lw $t2, -5672($fp)
	bge $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -5664($fp)
label499:
	addi $sp, $sp, -4
	lw $t0, -5640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5664($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5676($fp)
	addi $sp, $sp, 16
	lw $t1, -5676($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label495
label495:
	lw $t0, -2316($fp)
	sw $t0, -5680($fp)
	lw $t0, -744($fp)
	sw $t0, -5684($fp)
	lw $t0, -5680($fp)
	lw $t1, -5684($fp)
	mul $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -696($fp)
	sw $t0, -5692($fp)
	lw $t0, -5688($fp)
	lw $t1, -5692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5696($fp)
	lw $t0, -588($fp)
	sw $t0, -5700($fp)
	li $t0, 0
	sw $t0, -5704($fp)
	li $t0, 51977
	sw $t0, -5708($fp)
	li $t0, 64649
	sw $t0, -5712($fp)
	lw $t1, -5708($fp)
	lw $t2, -5712($fp)
	beq $t1, $t2, label500
	j label502
label502:
	li $t0, 43883
	sw $t0, -5716($fp)
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -5704($fp)
label501:
	addi $sp, $sp, -4
	lw $t0, -5696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5704($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5720($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5724($fp)
	lw $t0, -5616($fp)
	sw $t0, -5728($fp)
	lw $t1, -5728($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label503:
	li $t0, 1
	sw $t0, -5724($fp)
label504:
	lw $t1, -5720($fp)
	lw $t2, -5724($fp)
	ble $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -5636($fp)
label494:
	li $t0, 0
	sw $t0, -5732($fp)
	lw $t0, -636($fp)
	sw $t0, -5736($fp)
	li $t0, 0
	sw $t0, -5740($fp)
	li $t0, 22600
	sw $t0, -5744($fp)
	lw $t1, -5744($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label508
label508:
	li $t0, 1
	sw $t0, -5740($fp)
label509:
	lw $t0, -5736($fp)
	lw $t1, -5740($fp)
	mul $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -3684($fp)
	sw $t0, -5752($fp)
	lw $t0, -5748($fp)
	lw $t1, -5752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5756($fp)
	li $t0, 0
	lw $t1, -5756($fp)
	sub $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label507
label507:
	li $t0, 0
	sw $t0, -5764($fp)
	lw $t0, -1500($fp)
	sw $t0, -5768($fp)
	li $t0, 52167
	sw $t0, -5772($fp)
	lw $t0, -5768($fp)
	lw $t1, -5772($fp)
	mul $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t1, -5776($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label512
label512:
	li $t0, 58981
	sw $t0, -5780($fp)
	lw $t1, -5780($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -5764($fp)
label511:
	li $t0, 0
	sw $t0, -5784($fp)
	addi $t0, $fp, -196
	sw $t0, -5788($fp)
	lw $t0, -5628($fp)
	sw $t0, -5792($fp)
	li $t0, 4
	lw $t1, -5792($fp)
	mul $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	lw $t1, -5788($fp)
	add $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	lw $t1, 0($t0)
	sw $t1, -5804($fp)
	li $t0, 56217
	sw $t0, -5808($fp)
	lw $t1, -5804($fp)
	lw $t2, -5808($fp)
	bgt $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -5784($fp)
label514:
	addi $t0, $fp, -128
	sw $t0, -5812($fp)
	li $t0, 0
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
	lw $t0, -1680($fp)
	sw $t0, -5832($fp)
	lw $t0, -5828($fp)
	lw $t1, -5832($fp)
	mul $t0, $t0, $t1
	sw $t0, -5836($fp)
	li $t0, 0
	sw $t0, -5840($fp)
	lw $t0, -2616($fp)
	sw $t0, -5844($fp)
	lw $t1, -5844($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label517
label517:
	lw $t0, -1668($fp)
	sw $t0, -5848($fp)
	lw $t1, -5848($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -5840($fp)
label516:
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5852($fp)
	addi $sp, $sp, 16
	li $t0, 29146
	sw $t0, -5856($fp)
	lw $t0, -1272($fp)
	sw $t0, -5860($fp)
	lw $t0, -5856($fp)
	lw $t1, -5860($fp)
	sub $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -2700($fp)
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	addi $sp, $sp, -4
	lw $t0, -5764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5876($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5876($fp)
	sub $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t1, -5880($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -5732($fp)
label506:
	li $t0, 26191
	sw $t0, -5884($fp)
	addi $t0, $fp, -388
	sw $t0, -5888($fp)
	lw $t0, -1272($fp)
	sw $t0, -5892($fp)
	li $t0, 4
	lw $t1, -5892($fp)
	mul $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	lw $t1, -5888($fp)
	add $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	lw $t1, 0($t0)
	sw $t1, -5904($fp)
	li $t0, 0
	sw $t0, -5908($fp)
	lw $t0, -1356($fp)
	sw $t0, -5912($fp)
	li $t0, 55926
	sw $t0, -5916($fp)
	lw $t0, -5912($fp)
	lw $t1, -5916($fp)
	mul $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t1, -5920($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label523
label523:
	lw $t0, -1356($fp)
	sw $t0, -5924($fp)
	lw $t1, -5924($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -5908($fp)
label522:
	addi $sp, $sp, -4
	lw $t0, -5904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5908($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5928($fp)
	addi $sp, $sp, 12
	lw $t0, -5884($fp)
	lw $t1, -5928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5932($fp)
	li $t0, 0
	lw $t1, -5932($fp)
	sub $t0, $t0, $t1
	sw $t0, -5936($fp)
	li $t0, 0
	lw $t1, -5936($fp)
	sub $t0, $t0, $t1
	sw $t0, -5940($fp)
	li $t0, 0
	sw $t0, -5944($fp)
	lw $t0, -2316($fp)
	sw $t0, -5948($fp)
	li $t0, 0
	lw $t1, -5948($fp)
	sub $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t1, -5952($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label524:
	li $t0, 1
	sw $t0, -5944($fp)
label525:
	lw $t0, -1344($fp)
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -5960($fp)
	lw $t0, -3696($fp)
	sw $t0, -5964($fp)
	lw $t0, -2592($fp)
	sw $t0, -5968($fp)
	lw $t0, -5964($fp)
	lw $t1, -5968($fp)
	add $t0, $t0, $t1
	sw $t0, -5972($fp)
	addi $sp, $sp, -4
	lw $t0, -5944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5976($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5976($fp)
	sub $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -5940($fp)
	lw $t1, -5980($fp)
	sub $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 0
	sw $t0, -5988($fp)
	li $t0, 0
	sw $t0, -5992($fp)
	li $t0, 60850
	sw $t0, -5996($fp)
	lw $t1, -5996($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label531:
	li $t0, 62594
	sw $t0, -6000($fp)
	lw $t1, -6000($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label530
label530:
	li $t0, 36412
	sw $t0, -6004($fp)
	lw $t1, -6004($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -5992($fp)
label529:
	li $t0, 0
	sw $t0, -6008($fp)
	li $t0, 64157
	sw $t0, -6012($fp)
	lw $t1, -6012($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label533
label534:
	lw $t0, -5152($fp)
	sw $t0, -6016($fp)
	lw $t1, -6016($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -6008($fp)
label533:
	li $t0, 0
	sw $t0, -6020($fp)
	lw $t0, -2640($fp)
	sw $t0, -6024($fp)
	li $t0, 20716
	sw $t0, -6028($fp)
	lw $t1, -6024($fp)
	lw $t2, -6028($fp)
	ble $t1, $t2, label537
	j label536
label537:
	lw $t0, -1644($fp)
	sw $t0, -6032($fp)
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -6020($fp)
label536:
	addi $sp, $sp, -4
	lw $t0, -5992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6036($fp)
	addi $sp, $sp, 16
	lw $t1, -6036($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label526
label526:
	li $t0, 1
	sw $t0, -5988($fp)
label527:
	li $t0, 0
	sw $t0, -6040($fp)
	lw $t0, -2976($fp)
	sw $t0, -6044($fp)
	li $t0, 41606
	sw $t0, -6048($fp)
	lw $t1, -6044($fp)
	lw $t2, -6048($fp)
	bge $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -6040($fp)
label539:
	li $t0, 0
	sw $t0, -6052($fp)
	li $t0, 21094
	sw $t0, -6056($fp)
	lw $t0, -1644($fp)
	sw $t0, -6060($fp)
	lw $t1, -6056($fp)
	lw $t2, -6060($fp)
	bge $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -6052($fp)
label541:
	addi $sp, $sp, -4
	lw $t0, -6040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6064($fp)
	addi $sp, $sp, 12
	lw $t0, -5988($fp)
	lw $t1, -6064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6068($fp)
	lw $ra, -4($fp)
	lw $v0, -6068($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label520
label519:
	li $t0, 0
	sw $t0, -6072($fp)
	lw $t0, -2640($fp)
	sw $t0, -6076($fp)
	lw $t1, -6076($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label544:
	lw $t0, -1536($fp)
	sw $t0, -6080($fp)
	li $t0, 10690
	sw $t0, -6084($fp)
	li $t0, 0
	lw $t1, -6084($fp)
	sub $t0, $t0, $t1
	sw $t0, -6088($fp)
	li $t0, 29968
	sw $t0, -6092($fp)
	lw $t0, -6088($fp)
	lw $t1, -6092($fp)
	add $t0, $t0, $t1
	sw $t0, -6096($fp)
	addi $t0, $fp, -400
	sw $t0, -6100($fp)
	lw $t0, -588($fp)
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
	lw $t0, -1536($fp)
	sw $t0, -6120($fp)
	lw $t0, -6116($fp)
	lw $t1, -6120($fp)
	mul $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -3420($fp)
	sw $t0, -6128($fp)
	li $t0, 0
	lw $t1, -6128($fp)
	sub $t0, $t0, $t1
	sw $t0, -6132($fp)
	li $t0, 0
	lw $t1, -6132($fp)
	sub $t0, $t0, $t1
	sw $t0, -6136($fp)
	addi $sp, $sp, -4
	lw $t0, -6096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6136($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6140($fp)
	addi $sp, $sp, 16
	lw $t1, -6080($fp)
	lw $t2, -6140($fp)
	bgt $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -6072($fp)
label543:
label520:
	j label438
label440:
	addi $t0, $fp, -4908
	sw $t0, -6144($fp)
	li $t0, 0
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
	addi $t0, $fp, -4908
	sw $t0, -6164($fp)
	li $t0, 1
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
	lw $t0, -4964($fp)
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6188($fp)
	addi $t0, $fp, -140
	sw $t0, -6192($fp)
	addi $t0, $fp, -400
	sw $t0, -6196($fp)
	lw $t0, -2976($fp)
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
	lw $t0, -1296($fp)
	sw $t0, -6216($fp)
	lw $t0, -6212($fp)
	lw $t1, -6216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6220($fp)
	li $t0, 4
	lw $t1, -6220($fp)
	mul $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	lw $t1, -6192($fp)
	add $t0, $t0, $t1
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	lw $t1, 0($t0)
	sw $t1, -6232($fp)
	lw $t1, -6232($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label546
label547:
	addi $t0, $fp, -400
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
	li $t0, 0
	sw $t0, -6256($fp)
	lw $t0, -2592($fp)
	sw $t0, -6260($fp)
	li $t0, 0
	lw $t1, -6260($fp)
	sub $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label548:
	li $t0, 1
	sw $t0, -6256($fp)
label549:
	li $t0, 0
	sw $t0, -6268($fp)
	addi $t0, $fp, -12
	sw $t0, -6272($fp)
	lw $t0, -3264($fp)
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
	lw $t0, -1272($fp)
	sw $t0, -6292($fp)
	lw $t1, -6288($fp)
	lw $t2, -6292($fp)
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -6268($fp)
label551:
	addi $sp, $sp, -4
	lw $t0, -6252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6296($fp)
	addi $sp, $sp, 16
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -6188($fp)
label546:
	lw $ra, -4($fp)
	lw $v0, -6188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 14941
	sw $t0, -6344($fp)
	addi $t0, $fp, -6328
	sw $t0, -6348($fp)
	li $t0, 0
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6348($fp)
	lw $t1, -6356($fp)
	add $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -6344($fp)
	lw $t1, -6360($fp)
	sw $t0, 0($t1)
	lw $t0, -6360($fp)
	lw $t1, 0($t0)
	sw $t1, -6364($fp)
	li $t0, 54285
	sw $t0, -6368($fp)
	addi $t0, $fp, -6328
	sw $t0, -6372($fp)
	li $t0, 1
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6372($fp)
	lw $t1, -6380($fp)
	add $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6368($fp)
	lw $t1, -6384($fp)
	sw $t0, 0($t1)
	lw $t0, -6384($fp)
	lw $t1, 0($t0)
	sw $t1, -6388($fp)
	li $t0, 16672
	sw $t0, -6392($fp)
	addi $t0, $fp, -6328
	sw $t0, -6396($fp)
	li $t0, 2
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t0, -6396($fp)
	lw $t1, -6404($fp)
	add $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t0, -6392($fp)
	lw $t1, -6408($fp)
	sw $t0, 0($t1)
	lw $t0, -6408($fp)
	lw $t1, 0($t0)
	sw $t1, -6412($fp)
	li $t0, 37072
	sw $t0, -6416($fp)
	addi $t0, $fp, -6328
	sw $t0, -6420($fp)
	li $t0, 3
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t0, -6420($fp)
	lw $t1, -6428($fp)
	add $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t0, -6416($fp)
	lw $t1, -6432($fp)
	sw $t0, 0($t1)
	lw $t0, -6432($fp)
	lw $t1, 0($t0)
	sw $t1, -6436($fp)
	li $t0, 25089
	sw $t0, -6440($fp)
	addi $t0, $fp, -6328
	sw $t0, -6444($fp)
	li $t0, 4
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6444($fp)
	lw $t1, -6452($fp)
	add $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -6440($fp)
	lw $t1, -6456($fp)
	sw $t0, 0($t1)
	lw $t0, -6456($fp)
	lw $t1, 0($t0)
	sw $t1, -6460($fp)
	li $t0, 51046
	sw $t0, -6464($fp)
	addi $t0, $fp, -6328
	sw $t0, -6468($fp)
	li $t0, 5
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6468($fp)
	lw $t1, -6476($fp)
	add $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6464($fp)
	lw $t1, -6480($fp)
	sw $t0, 0($t1)
	lw $t0, -6480($fp)
	lw $t1, 0($t0)
	sw $t1, -6484($fp)
	li $t0, 28516
	sw $t0, -6488($fp)
	addi $t0, $fp, -6328
	sw $t0, -6492($fp)
	li $t0, 6
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6492($fp)
	lw $t1, -6500($fp)
	add $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6488($fp)
	lw $t1, -6504($fp)
	sw $t0, 0($t1)
	lw $t0, -6504($fp)
	lw $t1, 0($t0)
	sw $t1, -6508($fp)
	li $t0, 27681
	sw $t0, -6512($fp)
	addi $t0, $fp, -6328
	sw $t0, -6516($fp)
	li $t0, 7
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t0, -6516($fp)
	lw $t1, -6524($fp)
	add $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -6512($fp)
	lw $t1, -6528($fp)
	sw $t0, 0($t1)
	lw $t0, -6528($fp)
	lw $t1, 0($t0)
	sw $t1, -6532($fp)
	li $t0, 37487
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	sw $t0, -6544($fp)
	li $t0, 27629
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	sw $t0, -6556($fp)
	li $t0, 6028
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	sw $t0, -6568($fp)
	li $t0, 60087
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	sw $t0, -6580($fp)
	li $t0, 56775
	sw $t0, -6584($fp)
	addi $t0, $fp, -6340
	sw $t0, -6588($fp)
	li $t0, 0
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -6588($fp)
	lw $t1, -6596($fp)
	add $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6584($fp)
	lw $t1, -6600($fp)
	sw $t0, 0($t1)
	lw $t0, -6600($fp)
	lw $t1, 0($t0)
	sw $t1, -6604($fp)
	li $t0, 7105
	sw $t0, -6608($fp)
	addi $t0, $fp, -6340
	sw $t0, -6612($fp)
	li $t0, 1
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6612($fp)
	lw $t1, -6620($fp)
	add $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t0, -6608($fp)
	lw $t1, -6624($fp)
	sw $t0, 0($t1)
	lw $t0, -6624($fp)
	lw $t1, 0($t0)
	sw $t1, -6628($fp)
	li $t0, 40838
	sw $t0, -6632($fp)
	addi $t0, $fp, -6340
	sw $t0, -6636($fp)
	li $t0, 2
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t0, -6636($fp)
	lw $t1, -6644($fp)
	add $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6632($fp)
	lw $t1, -6648($fp)
	sw $t0, 0($t1)
	lw $t0, -6648($fp)
	lw $t1, 0($t0)
	sw $t1, -6652($fp)
	addi $t0, $fp, -160
	sw $t0, -6656($fp)
	li $t0, 0
	sw $t0, -6660($fp)
	li $t0, 0
	sw $t0, -6664($fp)
	li $t0, 47457
	sw $t0, -6668($fp)
	lw $t1, -6668($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label557:
	li $t0, 1
	sw $t0, -6664($fp)
label558:
	lw $t0, -648($fp)
	sw $t0, -6672($fp)
	lw $t0, -6664($fp)
	lw $t1, -6672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6676($fp)
	li $t0, 59272
	sw $t0, -6680($fp)
	lw $t0, -1644($fp)
	sw $t0, -6684($fp)
	lw $t0, -6680($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t1, -6676($fp)
	lw $t2, -6688($fp)
	bne $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -6660($fp)
label556:
	li $t0, 4
	lw $t1, -6660($fp)
	mul $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, -6656($fp)
	add $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, 0($t0)
	sw $t1, -6700($fp)
	lw $t1, -6700($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 34283
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	sw $t0, -6712($fp)
	li $t0, 8112
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	sw $t0, -6724($fp)
	li $t0, 49662
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	sw $t0, -6736($fp)
	li $t0, 0
	sw $t0, -6740($fp)
	li $t0, 0
	sw $t0, -6744($fp)
	li $t0, 54999
	sw $t0, -6748($fp)
	lw $t0, -1368($fp)
	sw $t0, -6752($fp)
	lw $t0, -6748($fp)
	lw $t1, -6752($fp)
	mul $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -1824($fp)
	sw $t0, -6760($fp)
	lw $t0, -6756($fp)
	lw $t1, -6760($fp)
	sub $t0, $t0, $t1
	sw $t0, -6764($fp)
	li $t0, 6733
	sw $t0, -6768($fp)
	li $t0, 44976
	sw $t0, -6772($fp)
	lw $t0, -6768($fp)
	lw $t1, -6772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6776($fp)
	lw $t0, -6764($fp)
	lw $t1, -6776($fp)
	add $t0, $t0, $t1
	sw $t0, -6780($fp)
	li $t0, 52057
	sw $t0, -6784($fp)
	li $t0, 1
	sw $t0, -6788($fp)
	lw $t0, -6784($fp)
	lw $t1, -6788($fp)
	mul $t0, $t0, $t1
	sw $t0, -6792($fp)
	lw $t1, -6780($fp)
	lw $t2, -6792($fp)
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -6744($fp)
label562:
	addi $t0, $fp, -196
	sw $t0, -6796($fp)
	li $t0, 2
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
	lw $t0, -6576($fp)
	sw $t0, -6816($fp)
	lw $t0, -6812($fp)
	lw $t1, -6816($fp)
	mul $t0, $t0, $t1
	sw $t0, -6820($fp)
	li $t0, 0
	lw $t1, -6820($fp)
	sub $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t1, -6744($fp)
	lw $t2, -6824($fp)
	beq $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -6740($fp)
label560:
	addi $t0, $fp, -128
	sw $t0, -6828($fp)
	li $t0, 0
	sw $t0, -6832($fp)
	lw $t0, -984($fp)
	sw $t0, -6836($fp)
	lw $t1, -6836($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label566
label566:
	lw $t0, -6708($fp)
	sw $t0, -6840($fp)
	lw $t1, -6840($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label565
label565:
	li $t0, 53836
	sw $t0, -6844($fp)
	lw $t1, -6844($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -6832($fp)
label564:
	li $t0, 4
	lw $t1, -6832($fp)
	mul $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	lw $t1, -6828($fp)
	add $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	lw $t1, 0($t0)
	sw $t1, -6856($fp)
	addi $t0, $fp, -196
	sw $t0, -6860($fp)
	lw $t0, -6720($fp)
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
	lw $t0, -2316($fp)
	sw $t0, -6880($fp)
	lw $t0, -6876($fp)
	lw $t1, -6880($fp)
	mul $t0, $t0, $t1
	sw $t0, -6884($fp)
	li $t0, 0
	sw $t0, -6888($fp)
	li $t0, 0
	sw $t0, -6892($fp)
	lw $t0, -408($fp)
	sw $t0, -6896($fp)
	lw $t0, -3420($fp)
	sw $t0, -6900($fp)
	lw $t1, -6896($fp)
	lw $t2, -6900($fp)
	beq $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -6892($fp)
label570:
	lw $t0, -1548($fp)
	sw $t0, -6904($fp)
	lw $t1, -6892($fp)
	lw $t2, -6904($fp)
	bne $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -6888($fp)
label568:
	li $t0, 0
	sw $t0, -6908($fp)
	li $t0, 30503
	sw $t0, -6912($fp)
	lw $t1, -6912($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label571:
	li $t0, 1
	sw $t0, -6908($fp)
label572:
	addi $sp, $sp, -4
	lw $t0, -6888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6908($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6916($fp)
	addi $sp, $sp, 12
	lw $t0, -6884($fp)
	lw $t1, -6916($fp)
	mul $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6856($fp)
	lw $t1, -6920($fp)
	add $t0, $t0, $t1
	sw $t0, -6924($fp)
	li $t0, 0
	sw $t0, -6928($fp)
	lw $t0, -2652($fp)
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -6936($fp)
	li $t0, 0
	sw $t0, -6940($fp)
	li $t0, 0
	sw $t0, -6944($fp)
	li $t0, 58530
	sw $t0, -6948($fp)
	li $t0, 20034
	sw $t0, -6952($fp)
	lw $t1, -6948($fp)
	lw $t2, -6952($fp)
	beq $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -6944($fp)
label578:
	lw $t0, -2616($fp)
	sw $t0, -6956($fp)
	lw $t1, -6944($fp)
	lw $t2, -6956($fp)
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -6940($fp)
label576:
	li $t0, 0
	sw $t0, -6960($fp)
	addi $t0, $fp, -236
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
	li $t0, 45444
	sw $t0, -6984($fp)
	lw $t1, -6980($fp)
	lw $t2, -6984($fp)
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -6960($fp)
label580:
	addi $sp, $sp, -4
	lw $t0, -6936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6960($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6988($fp)
	addi $sp, $sp, 16
	lw $t0, -6732($fp)
	sw $t0, -6992($fp)
	li $t0, 16980
	sw $t0, -6996($fp)
	li $t0, 0
	lw $t1, -6996($fp)
	sub $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -6992($fp)
	lw $t1, -7000($fp)
	mul $t0, $t0, $t1
	sw $t0, -7004($fp)
	li $t0, 0
	lw $t1, -7004($fp)
	sub $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -6988($fp)
	lw $t1, -7008($fp)
	mul $t0, $t0, $t1
	sw $t0, -7012($fp)
	li $t0, 18084
	sw $t0, -7016($fp)
	li $t0, 0
	lw $t1, -7016($fp)
	sub $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t1, -7012($fp)
	lw $t2, -7020($fp)
	ble $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -6928($fp)
label574:
	j label554
label553:
label581:
	li $t0, 0
	sw $t0, -7024($fp)
	li $t0, 45765
	sw $t0, -7028($fp)
	lw $t1, -7028($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label586
label586:
	lw $t0, -2292($fp)
	sw $t0, -7032($fp)
	lw $t1, -7032($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -7024($fp)
label585:
	addi $t0, $fp, -6328
	sw $t0, -7036($fp)
	li $t0, 1
	sw $t0, -7040($fp)
	li $t0, 4
	lw $t1, -7040($fp)
	mul $t0, $t0, $t1
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	lw $t1, -7036($fp)
	add $t0, $t0, $t1
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	lw $t1, 0($t0)
	sw $t1, -7052($fp)
	addi $sp, $sp, -4
	lw $t0, -7024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7052($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7056($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -304
	sw $t0, -7060($fp)
	li $t0, 3
	sw $t0, -7064($fp)
	li $t0, 4
	lw $t1, -7064($fp)
	mul $t0, $t0, $t1
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	lw $t1, -7060($fp)
	add $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	lw $t1, 0($t0)
	sw $t1, -7076($fp)
	lw $t0, -7056($fp)
	lw $t1, -7076($fp)
	mul $t0, $t0, $t1
	sw $t0, -7080($fp)
	li $t0, 0
	sw $t0, -7084($fp)
	lw $t0, -480($fp)
	sw $t0, -7088($fp)
	lw $t1, -7088($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -7084($fp)
label588:
	lw $t0, -7080($fp)
	lw $t1, -7084($fp)
	mul $t0, $t0, $t1
	sw $t0, -7092($fp)
	li $t0, 0
	lw $t1, -7092($fp)
	sub $t0, $t0, $t1
	sw $t0, -7096($fp)
	li $t0, 0
	sw $t0, -7100($fp)
	li $t0, 46287
	sw $t0, -7104($fp)
	lw $t1, -7104($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -7100($fp)
label590:
	li $t0, 52634
	sw $t0, -7108($fp)
	lw $t0, -7100($fp)
	lw $t1, -7108($fp)
	add $t0, $t0, $t1
	sw $t0, -7112($fp)
	li $t0, 0
	sw $t0, -7116($fp)
	li $t0, 64366
	sw $t0, -7120($fp)
	li $t0, 58898
	sw $t0, -7124($fp)
	lw $t1, -7120($fp)
	lw $t2, -7124($fp)
	bne $t1, $t2, label593
	j label592
label593:
	li $t0, 12886
	sw $t0, -7128($fp)
	lw $t1, -7128($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -7116($fp)
label592:
	li $t0, 0
	sw $t0, -7132($fp)
	li $t0, 51793
	sw $t0, -7136($fp)
	lw $t1, -7136($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label597:
	lw $t0, -2964($fp)
	sw $t0, -7140($fp)
	lw $t1, -7140($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label596
label596:
	li $t0, 37584
	sw $t0, -7144($fp)
	lw $t1, -7144($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -7132($fp)
label595:
	addi $sp, $sp, -4
	lw $t0, -7112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7148($fp)
	addi $sp, $sp, 16
	lw $t0, -2304($fp)
	sw $t0, -7152($fp)
	lw $t0, -7148($fp)
	lw $t1, -7152($fp)
	mul $t0, $t0, $t1
	sw $t0, -7156($fp)
	li $t0, 0
	sw $t0, -7160($fp)
	li $t0, 47170
	sw $t0, -7164($fp)
	lw $t1, -7164($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label598
label598:
	li $t0, 1
	sw $t0, -7160($fp)
label599:
	lw $t0, -7156($fp)
	lw $t1, -7160($fp)
	mul $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7096($fp)
	lw $t1, -7168($fp)
	sub $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t1, -7172($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
label600:
	addi $t0, $fp, -400
	sw $t0, -7176($fp)
	li $t0, 0
	sw $t0, -7180($fp)
	lw $t0, -1332($fp)
	sw $t0, -7184($fp)
	lw $t1, -7184($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label607
label607:
	lw $t0, -2652($fp)
	sw $t0, -7188($fp)
	lw $t1, -7188($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label606
label606:
	lw $t0, -1644($fp)
	sw $t0, -7192($fp)
	lw $t1, -7192($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label605
label605:
	lw $t0, -1296($fp)
	sw $t0, -7196($fp)
	li $t0, 54399
	sw $t0, -7200($fp)
	lw $t0, -7196($fp)
	lw $t1, -7200($fp)
	add $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t1, -7204($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -7180($fp)
label604:
	li $t0, 4
	lw $t1, -7180($fp)
	mul $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	lw $t1, -7176($fp)
	add $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	lw $t1, 0($t0)
	sw $t1, -7216($fp)
	lw $t1, -7216($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 0
	sw $t0, -7220($fp)
	addi $t0, $fp, -12
	sw $t0, -7224($fp)
	li $t0, 0
	sw $t0, -7228($fp)
	li $t0, 36761
	sw $t0, -7232($fp)
	lw $t1, -7232($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label613
label613:
	li $t0, 36633
	sw $t0, -7236($fp)
	lw $t1, -7236($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -7228($fp)
label612:
	li $t0, 4
	lw $t1, -7228($fp)
	mul $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	lw $t1, -7224($fp)
	add $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	lw $t1, 0($t0)
	sw $t1, -7248($fp)
	lw $t1, -7248($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label608
label610:
	lw $t0, -2316($fp)
	sw $t0, -7252($fp)
	lw $t0, -2316($fp)
	sw $t0, -7256($fp)
	lw $t0, -7252($fp)
	lw $t1, -7256($fp)
	sub $t0, $t0, $t1
	sw $t0, -7260($fp)
	lw $t0, -2652($fp)
	sw $t0, -7264($fp)
	lw $t0, -7260($fp)
	lw $t1, -7264($fp)
	sub $t0, $t0, $t1
	sw $t0, -7268($fp)
	li $t0, 61132
	sw $t0, -7272($fp)
	lw $t0, -7268($fp)
	lw $t1, -7272($fp)
	add $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t1, -7276($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -7220($fp)
label609:
	j label600
label602:
	j label581
label583:
label554:
	li $t0, 0
	sw $t0, -7280($fp)
	lw $t0, -480($fp)
	sw $t0, -7284($fp)
	lw $t1, -7284($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label616
label616:
	lw $t0, -660($fp)
	sw $t0, -7288($fp)
	li $t0, 0
	lw $t1, -7288($fp)
	sub $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t1, -7292($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label615
label617:
	lw $t0, -2760($fp)
	sw $t0, -7296($fp)
	lw $t0, -1536($fp)
	sw $t0, -7300($fp)
	lw $t1, -7296($fp)
	lw $t2, -7300($fp)
	blt $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -7280($fp)
label615:
	lw $ra, -4($fp)
	lw $v0, -7280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 16201
	sw $t0, -7328($fp)
	addi $t0, $fp, -7324
	sw $t0, -7332($fp)
	li $t0, 0
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7332($fp)
	lw $t1, -7340($fp)
	add $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -7328($fp)
	lw $t1, -7344($fp)
	sw $t0, 0($t1)
	lw $t0, -7344($fp)
	lw $t1, 0($t0)
	sw $t1, -7348($fp)
	li $t0, 23155
	sw $t0, -7352($fp)
	addi $t0, $fp, -7324
	sw $t0, -7356($fp)
	li $t0, 1
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7364($fp)
	lw $t0, -7356($fp)
	lw $t1, -7364($fp)
	add $t0, $t0, $t1
	sw $t0, -7368($fp)
	lw $t0, -7352($fp)
	lw $t1, -7368($fp)
	sw $t0, 0($t1)
	lw $t0, -7368($fp)
	lw $t1, 0($t0)
	sw $t1, -7372($fp)
	li $t0, 38741
	sw $t0, -7376($fp)
	addi $t0, $fp, -7324
	sw $t0, -7380($fp)
	li $t0, 2
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7380($fp)
	lw $t1, -7388($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7376($fp)
	lw $t1, -7392($fp)
	sw $t0, 0($t1)
	lw $t0, -7392($fp)
	lw $t1, 0($t0)
	sw $t1, -7396($fp)
	li $t0, 16736
	sw $t0, -7400($fp)
	addi $t0, $fp, -7324
	sw $t0, -7404($fp)
	li $t0, 3
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7404($fp)
	lw $t1, -7412($fp)
	add $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7400($fp)
	lw $t1, -7416($fp)
	sw $t0, 0($t1)
	lw $t0, -7416($fp)
	lw $t1, 0($t0)
	sw $t1, -7420($fp)
	li $t0, 51283
	sw $t0, -7424($fp)
	addi $t0, $fp, -7324
	sw $t0, -7428($fp)
	li $t0, 4
	sw $t0, -7432($fp)
	lw $t0, -7432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7436($fp)
	lw $t0, -7428($fp)
	lw $t1, -7436($fp)
	add $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -7424($fp)
	lw $t1, -7440($fp)
	sw $t0, 0($t1)
	lw $t0, -7440($fp)
	lw $t1, 0($t0)
	sw $t1, -7444($fp)
	li $t0, 27041
	sw $t0, -7448($fp)
	addi $t0, $fp, -7324
	sw $t0, -7452($fp)
	li $t0, 5
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7460($fp)
	lw $t0, -7452($fp)
	lw $t1, -7460($fp)
	add $t0, $t0, $t1
	sw $t0, -7464($fp)
	lw $t0, -7448($fp)
	lw $t1, -7464($fp)
	sw $t0, 0($t1)
	lw $t0, -7464($fp)
	lw $t1, 0($t0)
	sw $t1, -7468($fp)
	li $t0, 47239
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	sw $t0, -7480($fp)
	li $t0, 55528
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	sw $t0, -7492($fp)
	lw $t0, -1272($fp)
	sw $t0, -7496($fp)
	li $t0, 0
	sw $t0, -7500($fp)
	li $t0, 30403
	sw $t0, -7504($fp)
	lw $t0, -2652($fp)
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	sw $t0, -7512($fp)
	li $t0, 0
	sw $t0, -7516($fp)
	addi $t0, $fp, -7324
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
	li $t0, 55983
	sw $t0, -7540($fp)
	lw $t1, -7536($fp)
	lw $t2, -7540($fp)
	bgt $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -7516($fp)
label621:
	li $t0, 0
	sw $t0, -7544($fp)
	li $t0, 50438
	sw $t0, -7548($fp)
	lw $t1, -7548($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label622
label622:
	li $t0, 1
	sw $t0, -7544($fp)
label623:
	li $t0, 0
	lw $t1, -7544($fp)
	sub $t0, $t0, $t1
	sw $t0, -7552($fp)
	li $t0, 27148
	sw $t0, -7556($fp)
	li $t0, 48522
	sw $t0, -7560($fp)
	lw $t0, -7556($fp)
	lw $t1, -7560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7564($fp)
	addi $sp, $sp, -4
	lw $t0, -7516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7564($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7568($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -7512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7568($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7572($fp)
	addi $sp, $sp, 12
	li $t0, 46836
	sw $t0, -7576($fp)
	lw $t0, -7572($fp)
	lw $t1, -7576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7580($fp)
	lw $t1, -7504($fp)
	lw $t2, -7580($fp)
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -7500($fp)
label619:
	li $t0, 0
	sw $t0, -7584($fp)
	lw $t0, -3300($fp)
	sw $t0, -7588($fp)
	lw $t1, -7588($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label624:
	li $t0, 1
	sw $t0, -7584($fp)
label625:
	li $t0, 33479
	sw $t0, -7592($fp)
	lw $t0, -7584($fp)
	lw $t1, -7592($fp)
	add $t0, $t0, $t1
	sw $t0, -7596($fp)
	li $t0, 0
	sw $t0, -7600($fp)
	li $t0, 31680
	sw $t0, -7604($fp)
	li $t0, 33092
	sw $t0, -7608($fp)
	lw $t0, -7604($fp)
	lw $t1, -7608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7612($fp)
	li $t0, 5527
	sw $t0, -7616($fp)
	li $t0, 0
	lw $t1, -7616($fp)
	sub $t0, $t0, $t1
	sw $t0, -7620($fp)
	lw $t0, -7612($fp)
	lw $t1, -7620($fp)
	mul $t0, $t0, $t1
	sw $t0, -7624($fp)
	li $t0, 30510
	sw $t0, -7628($fp)
	lw $t0, -7624($fp)
	lw $t1, -7628($fp)
	add $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t1, -7632($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label628
label628:
	addi $t0, $fp, -304
	sw $t0, -7636($fp)
	li $t0, 0
	sw $t0, -7640($fp)
	li $t0, 4
	lw $t1, -7640($fp)
	mul $t0, $t0, $t1
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	lw $t1, -7636($fp)
	add $t0, $t0, $t1
	sw $t0, -7648($fp)
	lw $t0, -7648($fp)
	lw $t1, 0($t0)
	sw $t1, -7652($fp)
	li $t0, 0
	sw $t0, -7656($fp)
	lw $t0, -1644($fp)
	sw $t0, -7660($fp)
	lw $t1, -7660($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label631
label631:
	li $t0, 26454
	sw $t0, -7664($fp)
	lw $t1, -7664($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -7656($fp)
label630:
	addi $sp, $sp, -4
	lw $t0, -7652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7656($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7668($fp)
	addi $sp, $sp, 12
	lw $t0, -7488($fp)
	sw $t0, -7672($fp)
	lw $t0, -7668($fp)
	lw $t1, -7672($fp)
	mul $t0, $t0, $t1
	sw $t0, -7676($fp)
	li $t0, 48
	sw $t0, -7680($fp)
	li $t0, 13553
	sw $t0, -7684($fp)
	lw $t0, -7684($fp)
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	sw $t0, -7688($fp)
	addi $sp, $sp, -4
	lw $t0, -7680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7688($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7692($fp)
	addi $sp, $sp, 12
	lw $t0, -7676($fp)
	lw $t1, -7692($fp)
	add $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t1, -7696($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -7600($fp)
label627:
	li $t0, 124
	sw $t0, -7700($fp)
	lw $t1, -7700($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
	lw $t0, -2316($fp)
	sw $t0, -7704($fp)
	lw $t1, -7704($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	addi $t0, $fp, -108
	sw $t0, -7708($fp)
	lw $t0, -6540($fp)
	sw $t0, -7712($fp)
	lw $t0, -2520($fp)
	sw $t0, -7716($fp)
	li $t0, 0
	sw $t0, -7720($fp)
	addi $t0, $fp, -6340
	sw $t0, -7724($fp)
	li $t0, 1
	sw $t0, -7728($fp)
	li $t0, 4
	lw $t1, -7728($fp)
	mul $t0, $t0, $t1
	sw $t0, -7732($fp)
	lw $t0, -7732($fp)
	lw $t1, -7724($fp)
	add $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	lw $t1, 0($t0)
	sw $t1, -7740($fp)
	li $t0, 11272
	sw $t0, -7744($fp)
	lw $t1, -7740($fp)
	lw $t2, -7744($fp)
	bne $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -7720($fp)
label639:
	li $t0, 0
	sw $t0, -7748($fp)
	li $t0, 35575
	sw $t0, -7752($fp)
	li $t0, 0
	lw $t1, -7752($fp)
	sub $t0, $t0, $t1
	sw $t0, -7756($fp)
	li $t0, 26370
	sw $t0, -7760($fp)
	lw $t1, -7756($fp)
	lw $t2, -7760($fp)
	blt $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -7748($fp)
label641:
	li $t0, 64955
	sw $t0, -7764($fp)
	lw $t0, -612($fp)
	sw $t0, -7768($fp)
	lw $t0, -7764($fp)
	lw $t1, -7768($fp)
	mul $t0, $t0, $t1
	sw $t0, -7772($fp)
	lw $t0, -984($fp)
	sw $t0, -7776($fp)
	lw $t0, -7772($fp)
	lw $t1, -7776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7780($fp)
	addi $t0, $fp, -268
	sw $t0, -7784($fp)
	li $t0, 7
	sw $t0, -7788($fp)
	li $t0, 4
	lw $t1, -7788($fp)
	mul $t0, $t0, $t1
	sw $t0, -7792($fp)
	lw $t0, -7792($fp)
	lw $t1, -7784($fp)
	add $t0, $t0, $t1
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	lw $t1, 0($t0)
	sw $t1, -7800($fp)
	li $t0, 0
	sw $t0, -7804($fp)
	li $t0, 34461
	sw $t0, -7808($fp)
	lw $t0, -3696($fp)
	sw $t0, -7812($fp)
	lw $t1, -7808($fp)
	lw $t2, -7812($fp)
	beq $t1, $t2, label644
	j label643
label644:
	lw $t0, -6564($fp)
	sw $t0, -7816($fp)
	lw $t1, -7816($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -7804($fp)
label643:
	li $t0, 979
	sw $t0, -7820($fp)
	lw $t0, -6552($fp)
	sw $t0, -7824($fp)
	lw $t0, -7820($fp)
	lw $t1, -7824($fp)
	add $t0, $t0, $t1
	sw $t0, -7828($fp)
	li $t0, 0
	sw $t0, -7832($fp)
	li $t0, 50314
	sw $t0, -7836($fp)
	li $t0, 36681
	sw $t0, -7840($fp)
	lw $t1, -7836($fp)
	lw $t2, -7840($fp)
	ble $t1, $t2, label645
	j label647
label647:
	li $t0, 61256
	sw $t0, -7844($fp)
	lw $t1, -7844($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -7832($fp)
label646:
	addi $sp, $sp, -4
	lw $t0, -7828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7832($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7848($fp)
	addi $sp, $sp, 12
	li $t0, 59836
	sw $t0, -7852($fp)
	lw $t0, -7848($fp)
	lw $t1, -7852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7856($fp)
	addi $sp, $sp, -4
	lw $t0, -7800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7856($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7860($fp)
	addi $sp, $sp, 16
	li $t0, 61503
	sw $t0, -7864($fp)
	lw $t0, -7860($fp)
	lw $t1, -7864($fp)
	add $t0, $t0, $t1
	sw $t0, -7868($fp)
	addi $sp, $sp, -4
	lw $t0, -7748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7868($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7872($fp)
	addi $sp, $sp, 16
	lw $t0, -6576($fp)
	sw $t0, -7876($fp)
	lw $t0, -7872($fp)
	lw $t1, -7876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7880($fp)
	addi $sp, $sp, -4
	lw $t0, -7716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7880($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7884($fp)
	addi $sp, $sp, 16
	lw $t0, -7712($fp)
	lw $t1, -7884($fp)
	mul $t0, $t0, $t1
	sw $t0, -7888($fp)
	li $t0, 4
	lw $t1, -7888($fp)
	mul $t0, $t0, $t1
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	lw $t1, -7708($fp)
	add $t0, $t0, $t1
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	lw $t1, 0($t0)
	sw $t1, -7900($fp)
	lw $ra, -4($fp)
	lw $v0, -7900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label637
label636:
	addi $t0, $fp, -344
	sw $t0, -7904($fp)
	li $t0, 0
	sw $t0, -7908($fp)
	li $t0, 5160
	sw $t0, -7912($fp)
	lw $t1, -7912($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label651
label651:
	li $t0, 1
	sw $t0, -7908($fp)
label652:
	li $t0, 4
	lw $t1, -7908($fp)
	mul $t0, $t0, $t1
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	lw $t1, -7904($fp)
	add $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	lw $t1, 0($t0)
	sw $t1, -7924($fp)
	lw $t1, -7924($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 0
	sw $t0, -7928($fp)
	addi $t0, $fp, -128
	sw $t0, -7932($fp)
	li $t0, 0
	sw $t0, -7936($fp)
	li $t0, 19632
	sw $t0, -7940($fp)
	lw $t0, -2532($fp)
	sw $t0, -7944($fp)
	lw $t1, -7940($fp)
	lw $t2, -7944($fp)
	bne $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -7936($fp)
label657:
	li $t0, 4
	lw $t1, -7936($fp)
	mul $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	lw $t1, -7932($fp)
	add $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	lw $t1, 0($t0)
	sw $t1, -7956($fp)
	addi $t0, $fp, -268
	sw $t0, -7960($fp)
	li $t0, 1
	sw $t0, -7964($fp)
	li $t0, 4
	lw $t1, -7964($fp)
	mul $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	lw $t1, -7960($fp)
	add $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	lw $t1, 0($t0)
	sw $t1, -7976($fp)
	lw $t1, -7956($fp)
	lw $t2, -7976($fp)
	blt $t1, $t2, label653
	j label655
label655:
	li $t0, 932
	sw $t0, -7980($fp)
	lw $t1, -7980($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -7928($fp)
label654:
	j label650
label649:
	li $t0, 60929
	sw $t0, -7984($fp)
	li $t0, 35199
	sw $t0, -7988($fp)
	addi $sp, $sp, -4
	lw $t0, -7984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7988($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7992($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -276
	sw $t0, -7996($fp)
	lw $t0, -2592($fp)
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
	lw $t0, -7992($fp)
	lw $t1, -8012($fp)
	sub $t0, $t0, $t1
	sw $t0, -8016($fp)
	li $t0, 0
	sw $t0, -8020($fp)
	li $t0, 0
	sw $t0, -8024($fp)
	li $t0, 25903
	sw $t0, -8028($fp)
	lw $t0, -2604($fp)
	sw $t0, -8032($fp)
	lw $t1, -8028($fp)
	lw $t2, -8032($fp)
	beq $t1, $t2, label660
	j label661
label660:
	li $t0, 1
	sw $t0, -8024($fp)
label661:
	li $t0, 60479
	sw $t0, -8036($fp)
	lw $t1, -8024($fp)
	lw $t2, -8036($fp)
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -8020($fp)
label659:
	li $t0, 0
	sw $t0, -8040($fp)
	lw $t0, -1260($fp)
	sw $t0, -8044($fp)
	li $t0, 0
	lw $t1, -8044($fp)
	sub $t0, $t0, $t1
	sw $t0, -8048($fp)
	lw $t1, -8048($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label662
label662:
	li $t0, 1
	sw $t0, -8040($fp)
label663:
	li $t0, 0
	sw $t0, -8052($fp)
	li $t0, 34024
	sw $t0, -8056($fp)
	li $t0, 40726
	sw $t0, -8060($fp)
	lw $t1, -8056($fp)
	lw $t2, -8060($fp)
	beq $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -8052($fp)
label665:
	addi $sp, $sp, -4
	lw $t0, -8020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8052($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8064($fp)
	addi $sp, $sp, 16
	lw $t0, -8016($fp)
	lw $t1, -8064($fp)
	sub $t0, $t0, $t1
	sw $t0, -8068($fp)
label650:
label637:
	j label634
label633:
	li $t0, 59140
	sw $t0, -8072($fp)
	li $t0, 0
	lw $t1, -8072($fp)
	sub $t0, $t0, $t1
	sw $t0, -8076($fp)
	li $t0, 0
	lw $t1, -8076($fp)
	sub $t0, $t0, $t1
	sw $t0, -8080($fp)
	lw $t0, -1548($fp)
	sw $t0, -8084($fp)
	lw $t0, -8080($fp)
	lw $t1, -8084($fp)
	add $t0, $t0, $t1
	sw $t0, -8088($fp)
label634:
label666:
	li $t0, 0
	sw $t0, -8092($fp)
	lw $t0, -1320($fp)
	sw $t0, -8096($fp)
	li $t0, 0
	lw $t1, -8096($fp)
	sub $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -2616($fp)
	sw $t0, -8104($fp)
	lw $t0, -8100($fp)
	lw $t1, -8104($fp)
	sub $t0, $t0, $t1
	sw $t0, -8108($fp)
	li $t0, 0
	sw $t0, -8112($fp)
	lw $t0, -1248($fp)
	sw $t0, -8116($fp)
	li $t0, 58810
	sw $t0, -8120($fp)
	lw $t0, -8116($fp)
	lw $t1, -8120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8124($fp)
	lw $t1, -8124($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label674:
	li $t0, 30334
	sw $t0, -8128($fp)
	lw $t1, -8128($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -8112($fp)
label673:
	li $t0, 37288
	sw $t0, -8132($fp)
	li $t0, 0
	sw $t0, -8136($fp)
	li $t0, 37164
	sw $t0, -8140($fp)
	li $t0, 8496
	sw $t0, -8144($fp)
	lw $t0, -8140($fp)
	lw $t1, -8144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8148($fp)
	lw $t1, -8148($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label676
label677:
	li $t0, 59188
	sw $t0, -8152($fp)
	lw $t1, -8152($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -8136($fp)
label676:
	addi $sp, $sp, -4
	lw $t0, -8112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8136($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8156($fp)
	addi $sp, $sp, 16
	lw $t1, -8108($fp)
	lw $t2, -8156($fp)
	bgt $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -8092($fp)
label671:
	li $t0, 0
	sw $t0, -8160($fp)
	li $t0, 0
	sw $t0, -8164($fp)
	lw $t0, -3264($fp)
	sw $t0, -8168($fp)
	li $t0, 24634
	sw $t0, -8172($fp)
	lw $t1, -8168($fp)
	lw $t2, -8172($fp)
	blt $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -8164($fp)
label681:
	li $t0, 1934
	sw $t0, -8176($fp)
	lw $t1, -8164($fp)
	lw $t2, -8176($fp)
	ble $t1, $t2, label678
	j label679
label678:
	li $t0, 1
	sw $t0, -8160($fp)
label679:
	li $t0, 0
	sw $t0, -8180($fp)
	li $t0, 0
	sw $t0, -8184($fp)
	li $t0, 0
	sw $t0, -8188($fp)
	li $t0, 59789
	sw $t0, -8192($fp)
	lw $t1, -8192($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label686
label686:
	li $t0, 1
	sw $t0, -8188($fp)
label687:
	li $t0, 0
	sw $t0, -8196($fp)
	lw $t0, -2988($fp)
	sw $t0, -8200($fp)
	lw $t1, -8200($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label688
label690:
	lw $t0, -2640($fp)
	sw $t0, -8204($fp)
	lw $t1, -8204($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -8196($fp)
label689:
	addi $sp, $sp, -4
	lw $t0, -8188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8196($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -8208($fp)
	addi $sp, $sp, 12
	lw $t1, -8208($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label684
label684:
	li $t0, 1
	sw $t0, -8184($fp)
label685:
	lw $t0, -2628($fp)
	sw $t0, -8212($fp)
	li $t0, 33008
	sw $t0, -8216($fp)
	lw $t0, -8212($fp)
	lw $t1, -8216($fp)
	mul $t0, $t0, $t1
	sw $t0, -8220($fp)
	addi $sp, $sp, -4
	lw $t0, -8184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8220($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -8224($fp)
	addi $sp, $sp, 12
	lw $t1, -8224($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label682
label682:
	li $t0, 1
	sw $t0, -8180($fp)
label683:
	addi $t0, $fp, -268
	sw $t0, -8228($fp)
	lw $t0, -3684($fp)
	sw $t0, -8232($fp)
	li $t0, 4
	lw $t1, -8232($fp)
	mul $t0, $t0, $t1
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	lw $t1, -8228($fp)
	add $t0, $t0, $t1
	sw $t0, -8240($fp)
	lw $t0, -8240($fp)
	lw $t1, 0($t0)
	sw $t1, -8244($fp)
	addi $sp, $sp, -4
	lw $t0, -8160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8244($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8248($fp)
	addi $sp, $sp, 16
	li $t0, 11969
	sw $t0, -8252($fp)
	lw $t0, -8248($fp)
	lw $t1, -8252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8256($fp)
	lw $t1, -8092($fp)
	lw $t2, -8256($fp)
	ble $t1, $t2, label667
	j label669
label669:
	li $t0, 4682
	sw $t0, -8260($fp)
	lw $t1, -8260($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 40257
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -8268($fp)
	li $t0, 0
	sw $t0, -8272($fp)
	li $t0, 63437
	sw $t0, -8276($fp)
	lw $t0, -2652($fp)
	sw $t0, -8280($fp)
	lw $t1, -8276($fp)
	lw $t2, -8280($fp)
	blt $t1, $t2, label693
	j label692
label693:
	li $t0, 11389
	sw $t0, -8284($fp)
	lw $t1, -8284($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -8272($fp)
label692:
	addi $sp, $sp, -4
	lw $t0, -8268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8272($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -8288($fp)
	addi $sp, $sp, 12
	li $t0, 24271
	sw $t0, -8292($fp)
	lw $t0, -8288($fp)
	lw $t1, -8292($fp)
	sub $t0, $t0, $t1
	sw $t0, -8296($fp)
	j label666
label668:
	lw $t0, -3000($fp)
	sw $t0, -8300($fp)
	li $t0, 0
	sw $t0, -8304($fp)
	li $t0, 0
	sw $t0, -8308($fp)
	lw $t0, -3600($fp)
	sw $t0, -8312($fp)
	lw $t0, -2688($fp)
	sw $t0, -8316($fp)
	lw $t1, -8312($fp)
	lw $t2, -8316($fp)
	beq $t1, $t2, label701
	j label700
label701:
	lw $t0, -3708($fp)
	sw $t0, -8320($fp)
	lw $t1, -8320($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -8308($fp)
label700:
	lw $t0, -2964($fp)
	sw $t0, -8324($fp)
	lw $t0, -2676($fp)
	sw $t0, -8328($fp)
	lw $t0, -8324($fp)
	lw $t1, -8328($fp)
	mul $t0, $t0, $t1
	sw $t0, -8332($fp)
	li $t0, 0
	sw $t0, -8336($fp)
	li $t0, 37956
	sw $t0, -8340($fp)
	li $t0, 0
	lw $t1, -8340($fp)
	sub $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t1, -8344($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label704
label704:
	li $t0, 58819
	sw $t0, -8348($fp)
	lw $t1, -8348($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -8336($fp)
label703:
	addi $sp, $sp, -4
	lw $t0, -8308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8352($fp)
	addi $sp, $sp, 16
	lw $t1, -8352($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label697
label697:
	li $t0, 1
	sw $t0, -8304($fp)
label698:
	lw $t0, -8300($fp)
	lw $t1, -8304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8356($fp)
	lw $t1, -8356($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label695
label694:
	lw $t0, -1332($fp)
	sw $t0, -8360($fp)
	lw $t1, -8360($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label705
label709:
	li $t0, 35544
	sw $t0, -8364($fp)
	lw $t0, -2700($fp)
	sw $t0, -8368($fp)
	lw $t0, -8364($fp)
	lw $t1, -8368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8372($fp)
	li $t0, 43116
	sw $t0, -8376($fp)
	lw $t0, -8372($fp)
	lw $t1, -8376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8380($fp)
	lw $t1, -8380($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label708
label708:
	li $t0, 0
	sw $t0, -8384($fp)
	li $t0, 12916
	sw $t0, -8388($fp)
	li $t0, 0
	lw $t1, -8388($fp)
	sub $t0, $t0, $t1
	sw $t0, -8392($fp)
	lw $t1, -8392($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label710
label710:
	li $t0, 1
	sw $t0, -8384($fp)
label711:
	lw $t0, -2712($fp)
	sw $t0, -8396($fp)
	li $t0, 0
	lw $t1, -8396($fp)
	sub $t0, $t0, $t1
	sw $t0, -8400($fp)
	lw $t1, -8384($fp)
	lw $t2, -8400($fp)
	blt $t1, $t2, label705
	j label706
label705:
	li $t0, 0
	sw $t0, -8404($fp)
	li $t0, 0
	sw $t0, -8408($fp)
	li $t0, 37263
	sw $t0, -8412($fp)
	lw $t0, -3276($fp)
	sw $t0, -8416($fp)
	lw $t1, -8412($fp)
	lw $t2, -8416($fp)
	ble $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -8408($fp)
label719:
	lw $t0, -2724($fp)
	sw $t0, -8420($fp)
	lw $t0, -2736($fp)
	sw $t0, -8424($fp)
	lw $t0, -8420($fp)
	lw $t1, -8424($fp)
	mul $t0, $t0, $t1
	sw $t0, -8428($fp)
	lw $t1, -8408($fp)
	lw $t2, -8428($fp)
	beq $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -8404($fp)
label717:
	li $t0, 0
	sw $t0, -8432($fp)
	li $t0, 6830
	sw $t0, -8436($fp)
	lw $t1, -8436($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label721
label720:
	li $t0, 1
	sw $t0, -8432($fp)
label721:
	lw $t1, -8404($fp)
	lw $t2, -8432($fp)
	bne $t1, $t2, label715
	j label713
label715:
	li $t0, 0
	sw $t0, -8440($fp)
	li $t0, 13848
	sw $t0, -8444($fp)
	li $t0, 0
	lw $t1, -8444($fp)
	sub $t0, $t0, $t1
	sw $t0, -8448($fp)
	lw $t0, -2748($fp)
	sw $t0, -8452($fp)
	lw $t1, -8448($fp)
	lw $t2, -8452($fp)
	bgt $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -8440($fp)
label723:
	lw $t0, -1536($fp)
	sw $t0, -8456($fp)
	li $t0, 0
	lw $t1, -8456($fp)
	sub $t0, $t0, $t1
	sw $t0, -8460($fp)
	lw $t1, -8440($fp)
	lw $t2, -8460($fp)
	bne $t1, $t2, label712
	j label713
label712:
	li $t0, 6926
	sw $t0, -8464($fp)
	lw $t0, -8464($fp)
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	sw $t0, -8472($fp)
	li $t0, 2223
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	sw $t0, -8484($fp)
label724:
	li $t0, 0
	sw $t0, -8488($fp)
	li $t0, 65291
	sw $t0, -8492($fp)
	li $t0, 51311
	sw $t0, -8496($fp)
	lw $t0, -8492($fp)
	lw $t1, -8496($fp)
	add $t0, $t0, $t1
	sw $t0, -8500($fp)
	li $t0, 34910
	sw $t0, -8504($fp)
	lw $t1, -8500($fp)
	lw $t2, -8504($fp)
	blt $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -8488($fp)
label728:
	lw $t0, -696($fp)
	sw $t0, -8508($fp)
	li $t0, 41257
	sw $t0, -8512($fp)
	lw $t0, -8508($fp)
	lw $t1, -8512($fp)
	sub $t0, $t0, $t1
	sw $t0, -8516($fp)
	lw $t0, -2592($fp)
	sw $t0, -8520($fp)
	lw $t0, -8516($fp)
	lw $t1, -8520($fp)
	sub $t0, $t0, $t1
	sw $t0, -8524($fp)
	addi $sp, $sp, -4
	lw $t0, -8488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8528($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -8532($fp)
	li $t0, 0
	sw $t0, -8536($fp)
	lw $t0, -744($fp)
	sw $t0, -8540($fp)
	lw $t1, -8540($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -8536($fp)
label732:
	li $t0, 0
	sw $t0, -8544($fp)
	li $t0, 47653
	sw $t0, -8548($fp)
	li $t0, 28127
	sw $t0, -8552($fp)
	lw $t1, -8548($fp)
	lw $t2, -8552($fp)
	blt $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -8544($fp)
label734:
	li $t0, 47872
	sw $t0, -8556($fp)
	li $t0, 0
	lw $t1, -8556($fp)
	sub $t0, $t0, $t1
	sw $t0, -8560($fp)
	addi $sp, $sp, -4
	lw $t0, -8536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8564($fp)
	addi $sp, $sp, 16
	li $t0, 42815
	sw $t0, -8568($fp)
	lw $t1, -8564($fp)
	lw $t2, -8568($fp)
	ble $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -8532($fp)
label730:
	addi $sp, $sp, -4
	lw $t0, -8528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8532($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -8572($fp)
	addi $sp, $sp, 12
	li $t0, 37044
	sw $t0, -8576($fp)
	lw $t0, -8572($fp)
	lw $t1, -8576($fp)
	add $t0, $t0, $t1
	sw $t0, -8580($fp)
	lw $t1, -8580($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label726
label725:
	li $t0, 44585
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	sw $t0, -8592($fp)
	li $t0, 0
	sw $t0, -8596($fp)
	li $t0, 65244
	sw $t0, -8600($fp)
	lw $t1, -8600($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label737
label738:
	li $t0, 0
	sw $t0, -8604($fp)
	li $t0, 4516
	sw $t0, -8608($fp)
	lw $t1, -8608($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label739
label739:
	li $t0, 1
	sw $t0, -8604($fp)
label740:
	li $t0, 38839
	sw $t0, -8612($fp)
	lw $t1, -8604($fp)
	lw $t2, -8612($fp)
	bgt $t1, $t2, label735
	j label737
label737:
	li $t0, 0
	sw $t0, -8616($fp)
	li $t0, 24342
	sw $t0, -8620($fp)
	li $t0, 6450
	sw $t0, -8624($fp)
	lw $t1, -8620($fp)
	lw $t2, -8624($fp)
	bgt $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -8616($fp)
label742:
	lw $t0, -8588($fp)
	sw $t0, -8628($fp)
	lw $t1, -8616($fp)
	lw $t2, -8628($fp)
	ble $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -8596($fp)
label736:
	li $t0, 0
	sw $t0, -8632($fp)
	lw $t0, -2292($fp)
	sw $t0, -8636($fp)
	addi $t0, $fp, -388
	sw $t0, -8640($fp)
	lw $t0, -2652($fp)
	sw $t0, -8644($fp)
	li $t0, 4
	lw $t1, -8644($fp)
	mul $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t0, -8648($fp)
	lw $t1, -8640($fp)
	add $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t0, -8652($fp)
	lw $t1, 0($t0)
	sw $t1, -8656($fp)
	lw $t0, -2964($fp)
	sw $t0, -8660($fp)
	lw $t0, -8656($fp)
	lw $t1, -8660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8664($fp)
	lw $t1, -8636($fp)
	lw $t2, -8664($fp)
	beq $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -8632($fp)
label744:
	li $t0, 0
	sw $t0, -8668($fp)
	li $t0, 0
	sw $t0, -8672($fp)
	lw $t0, -8480($fp)
	sw $t0, -8676($fp)
	li $t0, 50808
	sw $t0, -8680($fp)
	lw $t1, -8676($fp)
	lw $t2, -8680($fp)
	beq $t1, $t2, label748
	j label750
label750:
	lw $t0, -2760($fp)
	sw $t0, -8684($fp)
	lw $t1, -8684($fp)
	li $t2, 0
	bne $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -8672($fp)
label749:
	lw $t0, -3264($fp)
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -8692($fp)
	addi $sp, $sp, -4
	lw $t0, -8672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8692($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -8696($fp)
	addi $sp, $sp, 12
	li $t0, 29024
	sw $t0, -8700($fp)
	lw $t0, -1692($fp)
	sw $t0, -8704($fp)
	lw $t0, -8700($fp)
	lw $t1, -8704($fp)
	mul $t0, $t0, $t1
	sw $t0, -8708($fp)
	lw $t0, -8696($fp)
	lw $t1, -8708($fp)
	add $t0, $t0, $t1
	sw $t0, -8712($fp)
	li $t0, 4351
	sw $t0, -8716($fp)
	lw $t1, -8712($fp)
	lw $t2, -8716($fp)
	bge $t1, $t2, label747
	j label746
label747:
	addi $t0, $fp, -304
	sw $t0, -8720($fp)
	li $t0, 2
	sw $t0, -8724($fp)
	li $t0, 4
	lw $t1, -8724($fp)
	mul $t0, $t0, $t1
	sw $t0, -8728($fp)
	lw $t0, -8728($fp)
	lw $t1, -8720($fp)
	add $t0, $t0, $t1
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	lw $t1, 0($t0)
	sw $t1, -8736($fp)
	li $t0, 0
	lw $t1, -8736($fp)
	sub $t0, $t0, $t1
	sw $t0, -8740($fp)
	addi $t0, $fp, -196
	sw $t0, -8744($fp)
	li $t0, 2
	sw $t0, -8748($fp)
	li $t0, 4
	lw $t1, -8748($fp)
	mul $t0, $t0, $t1
	sw $t0, -8752($fp)
	lw $t0, -8752($fp)
	lw $t1, -8744($fp)
	add $t0, $t0, $t1
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	lw $t1, 0($t0)
	sw $t1, -8760($fp)
	lw $t0, -8740($fp)
	lw $t1, -8760($fp)
	sub $t0, $t0, $t1
	sw $t0, -8764($fp)
	lw $t1, -8764($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -8668($fp)
label746:
	j label724
label726:
	li $t0, 62565
	sw $t0, -8768($fp)
	lw $t0, -8768($fp)
	sw $t0, -8772($fp)
	lw $t0, -8772($fp)
	sw $t0, -8776($fp)
	li $t0, 64167
	sw $t0, -8780($fp)
	lw $t0, -8780($fp)
	sw $t0, -8784($fp)
	lw $t0, -8784($fp)
	sw $t0, -8788($fp)
	li $t0, 12198
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	sw $t0, -8796($fp)
	lw $t0, -8796($fp)
	sw $t0, -8800($fp)
	li $t0, 9945
	sw $t0, -8804($fp)
	lw $t0, -8804($fp)
	sw $t0, -8808($fp)
	lw $t0, -8808($fp)
	sw $t0, -8812($fp)
	li $t0, 0
	sw $t0, -8816($fp)
	lw $t0, -8796($fp)
	sw $t0, -8820($fp)
	lw $t1, -8820($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label751
label751:
	li $t0, 1
	sw $t0, -8816($fp)
label752:
	li $t0, 35894
	sw $t0, -8824($fp)
	lw $t0, -3684($fp)
	sw $t0, -8828($fp)
	li $t0, 23793
	sw $t0, -8832($fp)
	lw $t0, -2952($fp)
	sw $t0, -8836($fp)
	lw $t0, -8832($fp)
	lw $t1, -8836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8840($fp)
	li $t0, 0
	lw $t1, -8840($fp)
	sub $t0, $t0, $t1
	sw $t0, -8844($fp)
	li $t0, 0
	sw $t0, -8848($fp)
	lw $t0, -2940($fp)
	sw $t0, -8852($fp)
	lw $t1, -8852($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label753
label753:
	li $t0, 1
	sw $t0, -8848($fp)
label754:
	li $t0, 19028
	sw $t0, -8856($fp)
	lw $t0, -8848($fp)
	lw $t1, -8856($fp)
	mul $t0, $t0, $t1
	sw $t0, -8860($fp)
	addi $sp, $sp, -4
	lw $t0, -8828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8860($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8864($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -8864($fp)
	sub $t0, $t0, $t1
	sw $t0, -8868($fp)
	lw $t0, -8824($fp)
	lw $t1, -8868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8872($fp)
	addi $t0, $fp, -304
	sw $t0, -8876($fp)
	lw $t0, -2304($fp)
	sw $t0, -8880($fp)
	li $t0, 24938
	sw $t0, -8884($fp)
	lw $t0, -8880($fp)
	lw $t1, -8884($fp)
	add $t0, $t0, $t1
	sw $t0, -8888($fp)
	li $t0, 49379
	sw $t0, -8892($fp)
	lw $t0, -8888($fp)
	lw $t1, -8892($fp)
	sub $t0, $t0, $t1
	sw $t0, -8896($fp)
	li $t0, 6130
	sw $t0, -8900($fp)
	li $t0, 0
	lw $t1, -8900($fp)
	sub $t0, $t0, $t1
	sw $t0, -8904($fp)
	li $t0, 0
	lw $t1, -8904($fp)
	sub $t0, $t0, $t1
	sw $t0, -8908($fp)
	li $t0, 0
	sw $t0, -8912($fp)
	li $t0, 42821
	sw $t0, -8916($fp)
	li $t0, 21252
	sw $t0, -8920($fp)
	lw $t1, -8916($fp)
	lw $t2, -8920($fp)
	ble $t1, $t2, label757
	j label756
label757:
	lw $t0, -8808($fp)
	sw $t0, -8924($fp)
	lw $t1, -8924($fp)
	li $t2, 0
	bne $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -8912($fp)
label756:
	addi $sp, $sp, -4
	lw $t0, -8896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8928($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -8928($fp)
	mul $t0, $t0, $t1
	sw $t0, -8932($fp)
	lw $t0, -8932($fp)
	lw $t1, -8876($fp)
	add $t0, $t0, $t1
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	lw $t1, 0($t0)
	sw $t1, -8940($fp)
	lw $t0, -8872($fp)
	lw $t1, -8940($fp)
	sub $t0, $t0, $t1
	sw $t0, -8944($fp)
	li $t0, 0
	sw $t0, -8948($fp)
	lw $t0, -3252($fp)
	sw $t0, -8952($fp)
	lw $t0, -2760($fp)
	sw $t0, -8956($fp)
	lw $t0, -8952($fp)
	lw $t1, -8956($fp)
	mul $t0, $t0, $t1
	sw $t0, -8960($fp)
	li $t0, 0
	lw $t1, -8960($fp)
	sub $t0, $t0, $t1
	sw $t0, -8964($fp)
	li $t0, 0
	sw $t0, -8968($fp)
	li $t0, 0
	sw $t0, -8972($fp)
	li $t0, 35277
	sw $t0, -8976($fp)
	lw $t0, -1644($fp)
	sw $t0, -8980($fp)
	lw $t1, -8976($fp)
	lw $t2, -8980($fp)
	bne $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -8972($fp)
label763:
	li $t0, 25159
	sw $t0, -8984($fp)
	lw $t1, -8972($fp)
	lw $t2, -8984($fp)
	beq $t1, $t2, label760
	j label761
label760:
	li $t0, 1
	sw $t0, -8968($fp)
label761:
	li $t0, 0
	sw $t0, -8988($fp)
	lw $t0, -1560($fp)
	sw $t0, -8992($fp)
	li $t0, 20642
	sw $t0, -8996($fp)
	lw $t0, -8992($fp)
	lw $t1, -8996($fp)
	sub $t0, $t0, $t1
	sw $t0, -9000($fp)
	li $t0, 13770
	sw $t0, -9004($fp)
	lw $t1, -9000($fp)
	lw $t2, -9004($fp)
	blt $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -8988($fp)
label765:
	li $t0, 0
	sw $t0, -9008($fp)
	li $t0, 0
	sw $t0, -9012($fp)
	lw $t0, -1512($fp)
	sw $t0, -9016($fp)
	lw $t0, -8784($fp)
	sw $t0, -9020($fp)
	lw $t0, -9016($fp)
	lw $t1, -9020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9024($fp)
	lw $t0, -756($fp)
	sw $t0, -9028($fp)
	lw $t1, -9024($fp)
	lw $t2, -9028($fp)
	bge $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -9012($fp)
label769:
	li $t0, 0
	sw $t0, -9032($fp)
	lw $t0, -1644($fp)
	sw $t0, -9036($fp)
	li $t0, 0
	lw $t1, -9036($fp)
	sub $t0, $t0, $t1
	sw $t0, -9040($fp)
	li $t0, 35569
	sw $t0, -9044($fp)
	lw $t1, -9040($fp)
	lw $t2, -9044($fp)
	beq $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -9032($fp)
label771:
	li $t0, 0
	sw $t0, -9048($fp)
	li $t0, 34721
	sw $t0, -9052($fp)
	lw $t1, -9052($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label772
label772:
	li $t0, 1
	sw $t0, -9048($fp)
label773:
	addi $sp, $sp, -4
	lw $t0, -9012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9056($fp)
	addi $sp, $sp, 16
	lw $t0, -696($fp)
	sw $t0, -9060($fp)
	lw $t1, -9056($fp)
	lw $t2, -9060($fp)
	beq $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -9008($fp)
label767:
	li $t0, 0
	sw $t0, -9064($fp)
	lw $t0, -3300($fp)
	sw $t0, -9068($fp)
	lw $t1, -9068($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label775
label777:
	lw $t0, -2688($fp)
	sw $t0, -9072($fp)
	lw $t1, -9072($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label775
label776:
	lw $t0, -744($fp)
	sw $t0, -9076($fp)
	lw $t1, -9076($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -9064($fp)
label775:
	li $t0, 0
	sw $t0, -9080($fp)
	lw $t0, -612($fp)
	sw $t0, -9084($fp)
	lw $t1, -9084($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label780
label780:
	lw $t0, -732($fp)
	sw $t0, -9088($fp)
	lw $t1, -9088($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -9080($fp)
label779:
	addi $sp, $sp, -4
	lw $t0, -9064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9080($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9092($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -9096($fp)
	lw $t0, -708($fp)
	sw $t0, -9100($fp)
	lw $t0, -720($fp)
	sw $t0, -9104($fp)
	lw $t1, -9100($fp)
	lw $t2, -9104($fp)
	beq $t1, $t2, label783
	j label782
label783:
	lw $t0, -648($fp)
	sw $t0, -9108($fp)
	lw $t1, -9108($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -9096($fp)
label782:
	li $t0, 0
	sw $t0, -9112($fp)
	li $t0, 0
	sw $t0, -9116($fp)
	lw $t0, -8772($fp)
	sw $t0, -9120($fp)
	li $t0, 659
	sw $t0, -9124($fp)
	lw $t1, -9120($fp)
	lw $t2, -9124($fp)
	bgt $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -9116($fp)
label787:
	li $t0, 49134
	sw $t0, -9128($fp)
	lw $t1, -9116($fp)
	lw $t2, -9128($fp)
	bne $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -9112($fp)
label785:
	addi $sp, $sp, -4
	lw $t0, -9092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9112($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9132($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -9136($fp)
	lw $t0, -696($fp)
	sw $t0, -9140($fp)
	li $t0, 48945
	sw $t0, -9144($fp)
	lw $t1, -9140($fp)
	lw $t2, -9144($fp)
	beq $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -9136($fp)
label789:
	addi $t0, $fp, -268
	sw $t0, -9148($fp)
	lw $t0, -2640($fp)
	sw $t0, -9152($fp)
	li $t0, 4
	lw $t1, -9152($fp)
	mul $t0, $t0, $t1
	sw $t0, -9156($fp)
	lw $t0, -9156($fp)
	lw $t1, -9148($fp)
	add $t0, $t0, $t1
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	lw $t1, 0($t0)
	sw $t1, -9164($fp)
	addi $sp, $sp, -4
	lw $t0, -9132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9168($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -9008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9168($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9172($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -8968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9176($fp)
	addi $sp, $sp, 16
	lw $t0, -2964($fp)
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	sw $t0, -9184($fp)
	addi $sp, $sp, -4
	lw $t0, -8964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9188($fp)
	addi $sp, $sp, 16
	lw $t1, -9188($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -8948($fp)
label759:
	li $t0, 0
	sw $t0, -9192($fp)
	addi $t0, $fp, -68
	sw $t0, -9196($fp)
	lw $t0, -2316($fp)
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
	lw $t1, -9212($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label790
label790:
	li $t0, 1
	sw $t0, -9192($fp)
label791:
	lw $t0, -1272($fp)
	sw $t0, -9216($fp)
	lw $t0, -9192($fp)
	lw $t1, -9216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9220($fp)
	li $t0, 0
	lw $t1, -9220($fp)
	sub $t0, $t0, $t1
	sw $t0, -9224($fp)
	addi $t0, $fp, -68
	sw $t0, -9228($fp)
	lw $t0, -984($fp)
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
	lw $t0, -1512($fp)
	sw $t0, -9248($fp)
	lw $t0, -3684($fp)
	sw $t0, -9252($fp)
	lw $t0, -9248($fp)
	lw $t1, -9252($fp)
	add $t0, $t0, $t1
	sw $t0, -9256($fp)
	addi $sp, $sp, -4
	lw $t0, -9244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9256($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9260($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -140
	sw $t0, -9264($fp)
	lw $t0, -1668($fp)
	sw $t0, -9268($fp)
	li $t0, 4
	lw $t1, -9268($fp)
	mul $t0, $t0, $t1
	sw $t0, -9272($fp)
	lw $t0, -9272($fp)
	lw $t1, -9264($fp)
	add $t0, $t0, $t1
	sw $t0, -9276($fp)
	lw $t0, -9276($fp)
	lw $t1, 0($t0)
	sw $t1, -9280($fp)
	lw $t0, -2316($fp)
	sw $t0, -9284($fp)
	lw $t0, -9280($fp)
	lw $t1, -9284($fp)
	mul $t0, $t0, $t1
	sw $t0, -9288($fp)
	lw $t0, -9260($fp)
	lw $t1, -9288($fp)
	sub $t0, $t0, $t1
	sw $t0, -9292($fp)
	li $t0, 52609
	sw $t0, -9296($fp)
	li $t0, 0
	sw $t0, -9300($fp)
	li $t0, 59620
	sw $t0, -9304($fp)
	lw $t1, -9304($fp)
	li $t2, 0
	bne $t1, $t2, label794
	j label793
label794:
	li $t0, 0
	sw $t0, -9308($fp)
	lw $t0, -984($fp)
	sw $t0, -9312($fp)
	lw $t1, -9312($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label795
label795:
	li $t0, 1
	sw $t0, -9308($fp)
label796:
	li $t0, 31609
	sw $t0, -9316($fp)
	lw $t0, -9308($fp)
	lw $t1, -9316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9320($fp)
	addi $t0, $fp, -108
	sw $t0, -9324($fp)
	lw $t0, -3696($fp)
	sw $t0, -9328($fp)
	li $t0, 4
	lw $t1, -9328($fp)
	mul $t0, $t0, $t1
	sw $t0, -9332($fp)
	lw $t0, -9332($fp)
	lw $t1, -9324($fp)
	add $t0, $t0, $t1
	sw $t0, -9336($fp)
	lw $t0, -9336($fp)
	lw $t1, 0($t0)
	sw $t1, -9340($fp)
	lw $t0, -9320($fp)
	lw $t1, -9340($fp)
	mul $t0, $t0, $t1
	sw $t0, -9344($fp)
	lw $t1, -9344($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -9300($fp)
label793:
	li $t0, 0
	sw $t0, -9348($fp)
	li $t0, 37882
	sw $t0, -9352($fp)
	li $t0, 23108
	sw $t0, -9356($fp)
	li $t0, 0
	lw $t1, -9356($fp)
	sub $t0, $t0, $t1
	sw $t0, -9360($fp)
	lw $t0, -9352($fp)
	lw $t1, -9360($fp)
	sub $t0, $t0, $t1
	sw $t0, -9364($fp)
	lw $t0, -2988($fp)
	sw $t0, -9368($fp)
	lw $t0, -2724($fp)
	sw $t0, -9372($fp)
	lw $t0, -9368($fp)
	lw $t1, -9372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9376($fp)
	lw $t0, -9364($fp)
	lw $t1, -9376($fp)
	sub $t0, $t0, $t1
	sw $t0, -9380($fp)
	lw $t1, -9380($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label799
label799:
	li $t0, 35961
	sw $t0, -9384($fp)
	li $t0, 34543
	sw $t0, -9388($fp)
	lw $t0, -9384($fp)
	lw $t1, -9388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9392($fp)
	lw $t0, -8480($fp)
	sw $t0, -9396($fp)
	lw $t0, -9396($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -9400($fp)
	li $t0, 0
	sw $t0, -9404($fp)
	lw $t0, -1236($fp)
	sw $t0, -9408($fp)
	lw $t0, -600($fp)
	sw $t0, -9412($fp)
	lw $t1, -9408($fp)
	lw $t2, -9412($fp)
	beq $t1, $t2, label800
	j label801
label800:
	li $t0, 1
	sw $t0, -9404($fp)
label801:
	addi $sp, $sp, -4
	lw $t0, -9400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9404($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9416($fp)
	addi $sp, $sp, 12
	lw $t1, -9392($fp)
	lw $t2, -9416($fp)
	bge $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -9348($fp)
label798:
	li $t0, 0
	sw $t0, -9420($fp)
	li $t0, 26854
	sw $t0, -9424($fp)
	lw $t1, -9424($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label803
label802:
	li $t0, 1
	sw $t0, -9420($fp)
label803:
	li $t0, 64584
	sw $t0, -9428($fp)
	lw $t0, -9428($fp)
	sw $t0, -9432($fp)
	lw $t0, -9432($fp)
	sw $t0, -9436($fp)
	li $t0, 3625
	sw $t0, -9440($fp)
	lw $t0, -9440($fp)
	sw $t0, -9444($fp)
	lw $t0, -9444($fp)
	sw $t0, -9448($fp)
	li $t0, 0
	sw $t0, -9452($fp)
	addi $t0, $fp, -32
	sw $t0, -9456($fp)
	li $t0, 0
	sw $t0, -9460($fp)
	li $t0, 4
	lw $t1, -9460($fp)
	mul $t0, $t0, $t1
	sw $t0, -9464($fp)
	lw $t0, -9464($fp)
	lw $t1, -9456($fp)
	add $t0, $t0, $t1
	sw $t0, -9468($fp)
	lw $t0, -9468($fp)
	lw $t1, 0($t0)
	sw $t1, -9472($fp)
	lw $t1, -9472($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label807
label807:
	li $t0, 1
	sw $t0, -9452($fp)
label808:
	addi $t0, $fp, -388
	sw $t0, -9476($fp)
	lw $t0, -2316($fp)
	sw $t0, -9480($fp)
	li $t0, 4
	lw $t1, -9480($fp)
	mul $t0, $t0, $t1
	sw $t0, -9484($fp)
	lw $t0, -9484($fp)
	lw $t1, -9476($fp)
	add $t0, $t0, $t1
	sw $t0, -9488($fp)
	lw $t0, -9488($fp)
	lw $t1, 0($t0)
	sw $t1, -9492($fp)
	lw $t0, -9452($fp)
	lw $t1, -9492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9496($fp)
	lw $t1, -9496($fp)
	li $t2, 0
	bne $t1, $t2, label804
	j label805
label804:
	li $t0, 33829
	sw $t0, -9500($fp)
	lw $t0, -9500($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -9504($fp)
	lw $ra, -4($fp)
	lw $v0, -9504($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label806
label805:
	addi $t0, $fp, -304
	sw $t0, -9508($fp)
	lw $t0, -2652($fp)
	sw $t0, -9512($fp)
	li $t0, 0
	lw $t1, -9512($fp)
	sub $t0, $t0, $t1
	sw $t0, -9516($fp)
	li $t0, 4
	lw $t1, -9516($fp)
	mul $t0, $t0, $t1
	sw $t0, -9520($fp)
	lw $t0, -9520($fp)
	lw $t1, -9508($fp)
	add $t0, $t0, $t1
	sw $t0, -9524($fp)
	lw $t0, -9524($fp)
	lw $t1, 0($t0)
	sw $t1, -9528($fp)
	li $t0, 0
	lw $t1, -9528($fp)
	sub $t0, $t0, $t1
	sw $t0, -9532($fp)
	lw $t0, -2316($fp)
	sw $t0, -9536($fp)
	addi $t0, $fp, -276
	sw $t0, -9540($fp)
	lw $t0, -660($fp)
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
	li $t0, 0
	sw $t0, -9560($fp)
	lw $t0, -1548($fp)
	sw $t0, -9564($fp)
	li $t0, 0
	lw $t1, -9564($fp)
	sub $t0, $t0, $t1
	sw $t0, -9568($fp)
	li $t0, 33573
	sw $t0, -9572($fp)
	lw $t1, -9568($fp)
	lw $t2, -9572($fp)
	bgt $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -9560($fp)
label810:
	addi $sp, $sp, -4
	lw $t0, -9536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9560($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9576($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -9580($fp)
	lw $t0, -1548($fp)
	sw $t0, -9584($fp)
	lw $t1, -9584($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label811
label811:
	li $t0, 1
	sw $t0, -9580($fp)
label812:
	lw $t0, -9576($fp)
	lw $t1, -9580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9588($fp)
	lw $t0, -9532($fp)
	lw $t1, -9588($fp)
	sub $t0, $t0, $t1
	sw $t0, -9592($fp)
label806:
	li $t0, 0
	sw $t0, -9596($fp)
	addi $t0, $fp, -32
	sw $t0, -9600($fp)
	lw $t0, -3276($fp)
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
	lw $t0, -2976($fp)
	sw $t0, -9620($fp)
	lw $t1, -9616($fp)
	lw $t2, -9620($fp)
	bgt $t1, $t2, label813
	j label814
label813:
	li $t0, 1
	sw $t0, -9596($fp)
label814:
	li $t0, 0
	sw $t0, -9624($fp)
	li $t0, 0
	sw $t0, -9628($fp)
	li $t0, 57623
	sw $t0, -9632($fp)
	lw $t0, -1332($fp)
	sw $t0, -9636($fp)
	lw $t1, -9632($fp)
	lw $t2, -9636($fp)
	beq $t1, $t2, label817
	j label818
label817:
	li $t0, 1
	sw $t0, -9628($fp)
label818:
	lw $t0, -9444($fp)
	sw $t0, -9640($fp)
	lw $t1, -9628($fp)
	lw $t2, -9640($fp)
	bne $t1, $t2, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -9624($fp)
label816:
	li $t0, 34852
	sw $t0, -9644($fp)
	lw $t0, -9644($fp)
	sw $t0, -9432($fp)
	lw $t0, -9432($fp)
	sw $t0, -9648($fp)
	addi $sp, $sp, -4
	lw $t0, -9596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9648($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9652($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -9652($fp)
	sub $t0, $t0, $t1
	sw $t0, -9656($fp)
	addi $t0, $fp, -360
	sw $t0, -9660($fp)
	li $t0, 10858
	sw $t0, -9664($fp)
	li $t0, 56104
	sw $t0, -9668($fp)
	lw $t0, -9664($fp)
	lw $t1, -9668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9672($fp)
	lw $t0, -9672($fp)
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	sw $t0, -9676($fp)
	li $t0, 4
	lw $t1, -9676($fp)
	mul $t0, $t0, $t1
	sw $t0, -9680($fp)
	lw $t0, -9680($fp)
	lw $t1, -9660($fp)
	add $t0, $t0, $t1
	sw $t0, -9684($fp)
	lw $t0, -9684($fp)
	lw $t1, 0($t0)
	sw $t1, -9688($fp)
	j label714
label713:
	li $t0, 63753
	sw $t0, -9692($fp)
	lw $t0, -9692($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	sw $t0, -9696($fp)
	lw $ra, -4($fp)
	lw $v0, -9696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label714:
	j label707
label706:
label819:
	lw $t0, -1236($fp)
	sw $t0, -9700($fp)
	lw $t0, -9700($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -9704($fp)
	lw $t1, -9704($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label821
label820:
label822:
	addi $t0, $fp, -32
	sw $t0, -9708($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -9728($fp)
	li $t0, 0
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
	lw $t0, -9724($fp)
	lw $t1, -9744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9748($fp)
	li $t0, 0
	sw $t0, -9752($fp)
	lw $t0, -2592($fp)
	sw $t0, -9756($fp)
	lw $t0, -1272($fp)
	sw $t0, -9760($fp)
	lw $t0, -9756($fp)
	lw $t1, -9760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9764($fp)
	lw $t1, -9764($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label827
label827:
	li $t0, 23546
	sw $t0, -9768($fp)
	lw $t1, -9768($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label826
label825:
	li $t0, 1
	sw $t0, -9752($fp)
label826:
	li $t0, 0
	sw $t0, -9772($fp)
	lw $t0, -2316($fp)
	sw $t0, -9776($fp)
	lw $t1, -9776($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label830
label830:
	lw $t0, -1644($fp)
	sw $t0, -9780($fp)
	lw $t1, -9780($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label829
label828:
	li $t0, 1
	sw $t0, -9772($fp)
label829:
	addi $sp, $sp, -4
	lw $t0, -9752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9772($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9784($fp)
	addi $sp, $sp, 12
	lw $t0, -9748($fp)
	lw $t1, -9784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9788($fp)
	li $t0, 16347
	sw $t0, -9792($fp)
	lw $t0, -1260($fp)
	sw $t0, -9796($fp)
	lw $t0, -9792($fp)
	lw $t1, -9796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9800($fp)
	lw $t0, -3276($fp)
	sw $t0, -9804($fp)
	lw $t0, -9800($fp)
	lw $t1, -9804($fp)
	add $t0, $t0, $t1
	sw $t0, -9808($fp)
	addi $t0, $fp, -128
	sw $t0, -9812($fp)
	lw $t0, -1284($fp)
	sw $t0, -9816($fp)
	li $t0, 4
	lw $t1, -9816($fp)
	mul $t0, $t0, $t1
	sw $t0, -9820($fp)
	lw $t0, -9820($fp)
	lw $t1, -9812($fp)
	add $t0, $t0, $t1
	sw $t0, -9824($fp)
	lw $t0, -9824($fp)
	lw $t1, 0($t0)
	sw $t1, -9828($fp)
	addi $sp, $sp, -4
	lw $t0, -9808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9828($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9832($fp)
	addi $sp, $sp, 12
	lw $t0, -9788($fp)
	lw $t1, -9832($fp)
	sub $t0, $t0, $t1
	sw $t0, -9836($fp)
	lw $t1, -9836($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label824
label823:
	li $t0, 0
	sw $t0, -9840($fp)
	addi $t0, $fp, -32
	sw $t0, -9844($fp)
	li $t0, 0
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
	lw $t0, -2316($fp)
	sw $t0, -9864($fp)
	lw $t0, -9864($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -9868($fp)
	li $t0, 41767
	sw $t0, -9872($fp)
	lw $t0, -9872($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -9876($fp)
	li $t0, 0
	sw $t0, -9880($fp)
	li $t0, 0
	sw $t0, -9884($fp)
	lw $t0, -3276($fp)
	sw $t0, -9888($fp)
	lw $t0, -1308($fp)
	sw $t0, -9892($fp)
	lw $t1, -9888($fp)
	lw $t2, -9892($fp)
	bgt $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -9884($fp)
label836:
	li $t0, 30118
	sw $t0, -9896($fp)
	lw $t1, -9884($fp)
	lw $t2, -9896($fp)
	beq $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -9880($fp)
label834:
	addi $sp, $sp, -4
	lw $t0, -9868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9900($fp)
	addi $sp, $sp, 16
	lw $t1, -9860($fp)
	lw $t2, -9900($fp)
	beq $t1, $t2, label831
	j label832
label831:
	li $t0, 1
	sw $t0, -9840($fp)
label832:
	lw $t0, -9840($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -9904($fp)
	j label822
label824:
	j label819
label821:
label707:
label695:
label837:
	li $t0, 3811
	sw $t0, -9908($fp)
	lw $t0, -1368($fp)
	sw $t0, -9912($fp)
	lw $t0, -9908($fp)
	lw $t1, -9912($fp)
	mul $t0, $t0, $t1
	sw $t0, -9916($fp)
	li $t0, 17191
	sw $t0, -9920($fp)
	li $t0, 0
	lw $t1, -9920($fp)
	sub $t0, $t0, $t1
	sw $t0, -9924($fp)
	lw $t0, -9916($fp)
	lw $t1, -9924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9928($fp)
	li $t0, 0
	lw $t1, -9928($fp)
	sub $t0, $t0, $t1
	sw $t0, -9932($fp)
	lw $t0, -1644($fp)
	sw $t0, -9936($fp)
	lw $t1, -9932($fp)
	lw $t2, -9936($fp)
	ble $t1, $t2, label840
	j label839
label840:
	li $t0, 0
	sw $t0, -9940($fp)
	li $t0, 35851
	sw $t0, -9944($fp)
	lw $t1, -9944($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label841
label841:
	li $t0, 1
	sw $t0, -9940($fp)
label842:
	li $t0, 35421
	sw $t0, -9948($fp)
	lw $t0, -9940($fp)
	lw $t1, -9948($fp)
	add $t0, $t0, $t1
	sw $t0, -9952($fp)
	li $t0, 55073
	sw $t0, -9956($fp)
	li $t0, 0
	lw $t1, -9956($fp)
	sub $t0, $t0, $t1
	sw $t0, -9960($fp)
	lw $t1, -9952($fp)
	lw $t2, -9960($fp)
	ble $t1, $t2, label838
	j label839
label838:
	li $t0, 0
	sw $t0, -9964($fp)
	li $t0, 58959
	sw $t0, -9968($fp)
	lw $t1, -9968($fp)
	li $t2, 0
	bne $t1, $t2, label844
	j label843
label843:
	li $t0, 1
	sw $t0, -9964($fp)
label844:
	li $t0, 0
	lw $t1, -9964($fp)
	sub $t0, $t0, $t1
	sw $t0, -9972($fp)
	j label837
label839:
	li $t0, 5846
	sw $t0, -9996($fp)
	lw $t0, -9996($fp)
	sw $t0, -10000($fp)
	lw $t0, -10000($fp)
	sw $t0, -10004($fp)
	li $t0, 24081
	sw $t0, -10008($fp)
	addi $t0, $fp, -9992
	sw $t0, -10012($fp)
	li $t0, 0
	sw $t0, -10016($fp)
	lw $t0, -10016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10020($fp)
	lw $t0, -10012($fp)
	lw $t1, -10020($fp)
	add $t0, $t0, $t1
	sw $t0, -10024($fp)
	lw $t0, -10008($fp)
	lw $t1, -10024($fp)
	sw $t0, 0($t1)
	lw $t0, -10024($fp)
	lw $t1, 0($t0)
	sw $t1, -10028($fp)
	li $t0, 20278
	sw $t0, -10032($fp)
	addi $t0, $fp, -9992
	sw $t0, -10036($fp)
	li $t0, 1
	sw $t0, -10040($fp)
	lw $t0, -10040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10044($fp)
	lw $t0, -10036($fp)
	lw $t1, -10044($fp)
	add $t0, $t0, $t1
	sw $t0, -10048($fp)
	lw $t0, -10032($fp)
	lw $t1, -10048($fp)
	sw $t0, 0($t1)
	lw $t0, -10048($fp)
	lw $t1, 0($t0)
	sw $t1, -10052($fp)
	li $t0, 4894
	sw $t0, -10056($fp)
	addi $t0, $fp, -9992
	sw $t0, -10060($fp)
	li $t0, 2
	sw $t0, -10064($fp)
	lw $t0, -10064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10068($fp)
	lw $t0, -10060($fp)
	lw $t1, -10068($fp)
	add $t0, $t0, $t1
	sw $t0, -10072($fp)
	lw $t0, -10056($fp)
	lw $t1, -10072($fp)
	sw $t0, 0($t1)
	lw $t0, -10072($fp)
	lw $t1, 0($t0)
	sw $t1, -10076($fp)
	li $t0, 27706
	sw $t0, -10080($fp)
	addi $t0, $fp, -9992
	sw $t0, -10084($fp)
	li $t0, 3
	sw $t0, -10088($fp)
	lw $t0, -10088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10092($fp)
	lw $t0, -10084($fp)
	lw $t1, -10092($fp)
	add $t0, $t0, $t1
	sw $t0, -10096($fp)
	lw $t0, -10080($fp)
	lw $t1, -10096($fp)
	sw $t0, 0($t1)
	lw $t0, -10096($fp)
	lw $t1, 0($t0)
	sw $t1, -10100($fp)
	li $t0, 44162
	sw $t0, -10104($fp)
	addi $t0, $fp, -9992
	sw $t0, -10108($fp)
	li $t0, 4
	sw $t0, -10112($fp)
	lw $t0, -10112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10116($fp)
	lw $t0, -10108($fp)
	lw $t1, -10116($fp)
	add $t0, $t0, $t1
	sw $t0, -10120($fp)
	lw $t0, -10104($fp)
	lw $t1, -10120($fp)
	sw $t0, 0($t1)
	lw $t0, -10120($fp)
	lw $t1, 0($t0)
	sw $t1, -10124($fp)
	li $t0, 2573
	sw $t0, -10128($fp)
	lw $t0, -10128($fp)
	sw $t0, -10132($fp)
	lw $t0, -10132($fp)
	sw $t0, -10136($fp)
	li $t0, 43530
	sw $t0, -10140($fp)
	lw $t0, -10140($fp)
	sw $t0, -10144($fp)
	lw $t0, -10144($fp)
	sw $t0, -10148($fp)
	li $t0, 12455
	sw $t0, -10152($fp)
	lw $t0, -10152($fp)
	sw $t0, -10156($fp)
	lw $t0, -10156($fp)
	sw $t0, -10160($fp)
	li $t0, 36146
	sw $t0, -10164($fp)
	lw $t0, -10164($fp)
	sw $t0, -10168($fp)
	lw $t0, -10168($fp)
	sw $t0, -10172($fp)
	li $t0, 0
	sw $t0, -10176($fp)
	addi $t0, $fp, -68
	sw $t0, -10180($fp)
	li $t0, 0
	sw $t0, -10184($fp)
	lw $t0, -1524($fp)
	sw $t0, -10188($fp)
	lw $t1, -10188($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label849
label850:
	li $t0, 12847
	sw $t0, -10192($fp)
	lw $t1, -10192($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label849
label849:
	li $t0, 4542
	sw $t0, -10196($fp)
	lw $t1, -10196($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label848
label847:
	li $t0, 1
	sw $t0, -10184($fp)
label848:
	li $t0, 4
	lw $t1, -10184($fp)
	mul $t0, $t0, $t1
	sw $t0, -10200($fp)
	lw $t0, -10200($fp)
	lw $t1, -10180($fp)
	add $t0, $t0, $t1
	sw $t0, -10204($fp)
	lw $t0, -10204($fp)
	lw $t1, 0($t0)
	sw $t1, -10208($fp)
	li $t0, 47005
	sw $t0, -10212($fp)
	li $t0, 0
	lw $t1, -10212($fp)
	sub $t0, $t0, $t1
	sw $t0, -10216($fp)
	lw $t1, -10208($fp)
	lw $t2, -10216($fp)
	blt $t1, $t2, label845
	j label846
label845:
	li $t0, 1
	sw $t0, -10176($fp)
label846:
	lw $ra, -4($fp)
	lw $v0, -10176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -10220($fp)
	li $t0, 0
	sw $t0, -10224($fp)
	lw $t0, -2592($fp)
	sw $t0, -10228($fp)
	li $t0, 0
	lw $t1, -10228($fp)
	sub $t0, $t0, $t1
	sw $t0, -10232($fp)
	lw $t1, -10232($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label853
label853:
	li $t0, 1
	sw $t0, -10224($fp)
label854:
	li $t0, 0
	sw $t0, -10236($fp)
	li $t0, 0
	sw $t0, -10240($fp)
	li $t0, 2759
	sw $t0, -10244($fp)
	lw $t0, -1344($fp)
	sw $t0, -10248($fp)
	lw $t1, -10244($fp)
	lw $t2, -10248($fp)
	beq $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -10240($fp)
label858:
	lw $t0, -1356($fp)
	sw $t0, -10252($fp)
	lw $t1, -10240($fp)
	lw $t2, -10252($fp)
	bne $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -10236($fp)
label856:
	lw $t0, -1332($fp)
	sw $t0, -10256($fp)
	li $t0, 3415
	sw $t0, -10260($fp)
	lw $t0, -10256($fp)
	lw $t1, -10260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10264($fp)
	addi $sp, $sp, -4
	lw $t0, -10224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10264($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10268($fp)
	addi $sp, $sp, 16
	li $t0, 17265
	sw $t0, -10272($fp)
	li $t0, 43363
	sw $t0, -10276($fp)
	lw $t0, -10272($fp)
	lw $t1, -10276($fp)
	add $t0, $t0, $t1
	sw $t0, -10280($fp)
	li $t0, 0
	sw $t0, -10284($fp)
	lw $t0, -3276($fp)
	sw $t0, -10288($fp)
	lw $t1, -10288($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label859
label859:
	li $t0, 1
	sw $t0, -10284($fp)
label860:
	lw $t0, -2976($fp)
	sw $t0, -10292($fp)
	lw $t0, -10284($fp)
	lw $t1, -10292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10296($fp)
	addi $sp, $sp, -4
	lw $t0, -10280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10296($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -10300($fp)
	addi $sp, $sp, 12
	lw $t1, -10268($fp)
	lw $t2, -10300($fp)
	ble $t1, $t2, label851
	j label852
label851:
	li $t0, 1
	sw $t0, -10220($fp)
label852:
	li $t0, 49922
	sw $t0, -10360($fp)
	addi $t0, $fp, -10332
	sw $t0, -10364($fp)
	li $t0, 0
	sw $t0, -10368($fp)
	lw $t0, -10368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10372($fp)
	lw $t0, -10364($fp)
	lw $t1, -10372($fp)
	add $t0, $t0, $t1
	sw $t0, -10376($fp)
	lw $t0, -10360($fp)
	lw $t1, -10376($fp)
	sw $t0, 0($t1)
	lw $t0, -10376($fp)
	lw $t1, 0($t0)
	sw $t1, -10380($fp)
	li $t0, 53721
	sw $t0, -10384($fp)
	addi $t0, $fp, -10332
	sw $t0, -10388($fp)
	li $t0, 1
	sw $t0, -10392($fp)
	lw $t0, -10392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10396($fp)
	lw $t0, -10388($fp)
	lw $t1, -10396($fp)
	add $t0, $t0, $t1
	sw $t0, -10400($fp)
	lw $t0, -10384($fp)
	lw $t1, -10400($fp)
	sw $t0, 0($t1)
	lw $t0, -10400($fp)
	lw $t1, 0($t0)
	sw $t1, -10404($fp)
	li $t0, 1373
	sw $t0, -10408($fp)
	addi $t0, $fp, -10332
	sw $t0, -10412($fp)
	li $t0, 2
	sw $t0, -10416($fp)
	lw $t0, -10416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10420($fp)
	lw $t0, -10412($fp)
	lw $t1, -10420($fp)
	add $t0, $t0, $t1
	sw $t0, -10424($fp)
	lw $t0, -10408($fp)
	lw $t1, -10424($fp)
	sw $t0, 0($t1)
	lw $t0, -10424($fp)
	lw $t1, 0($t0)
	sw $t1, -10428($fp)
	li $t0, 733
	sw $t0, -10432($fp)
	addi $t0, $fp, -10332
	sw $t0, -10436($fp)
	li $t0, 3
	sw $t0, -10440($fp)
	lw $t0, -10440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10444($fp)
	lw $t0, -10436($fp)
	lw $t1, -10444($fp)
	add $t0, $t0, $t1
	sw $t0, -10448($fp)
	lw $t0, -10432($fp)
	lw $t1, -10448($fp)
	sw $t0, 0($t1)
	lw $t0, -10448($fp)
	lw $t1, 0($t0)
	sw $t1, -10452($fp)
	li $t0, 60211
	sw $t0, -10456($fp)
	addi $t0, $fp, -10332
	sw $t0, -10460($fp)
	li $t0, 4
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10468($fp)
	lw $t0, -10460($fp)
	lw $t1, -10468($fp)
	add $t0, $t0, $t1
	sw $t0, -10472($fp)
	lw $t0, -10456($fp)
	lw $t1, -10472($fp)
	sw $t0, 0($t1)
	lw $t0, -10472($fp)
	lw $t1, 0($t0)
	sw $t1, -10476($fp)
	li $t0, 45561
	sw $t0, -10480($fp)
	addi $t0, $fp, -10332
	sw $t0, -10484($fp)
	li $t0, 5
	sw $t0, -10488($fp)
	lw $t0, -10488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10492($fp)
	lw $t0, -10484($fp)
	lw $t1, -10492($fp)
	add $t0, $t0, $t1
	sw $t0, -10496($fp)
	lw $t0, -10480($fp)
	lw $t1, -10496($fp)
	sw $t0, 0($t1)
	lw $t0, -10496($fp)
	lw $t1, 0($t0)
	sw $t1, -10500($fp)
	li $t0, 30851
	sw $t0, -10504($fp)
	addi $t0, $fp, -10332
	sw $t0, -10508($fp)
	li $t0, 6
	sw $t0, -10512($fp)
	lw $t0, -10512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10516($fp)
	lw $t0, -10508($fp)
	lw $t1, -10516($fp)
	add $t0, $t0, $t1
	sw $t0, -10520($fp)
	lw $t0, -10504($fp)
	lw $t1, -10520($fp)
	sw $t0, 0($t1)
	lw $t0, -10520($fp)
	lw $t1, 0($t0)
	sw $t1, -10524($fp)
	li $t0, 36442
	sw $t0, -10528($fp)
	addi $t0, $fp, -10332
	sw $t0, -10532($fp)
	li $t0, 7
	sw $t0, -10536($fp)
	lw $t0, -10536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10540($fp)
	lw $t0, -10532($fp)
	lw $t1, -10540($fp)
	add $t0, $t0, $t1
	sw $t0, -10544($fp)
	lw $t0, -10528($fp)
	lw $t1, -10544($fp)
	sw $t0, 0($t1)
	lw $t0, -10544($fp)
	lw $t1, 0($t0)
	sw $t1, -10548($fp)
	li $t0, 49373
	sw $t0, -10552($fp)
	lw $t0, -10552($fp)
	sw $t0, -10556($fp)
	lw $t0, -10556($fp)
	sw $t0, -10560($fp)
	li $t0, 48043
	sw $t0, -10564($fp)
	addi $t0, $fp, -10356
	sw $t0, -10568($fp)
	li $t0, 0
	sw $t0, -10572($fp)
	lw $t0, -10572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10576($fp)
	lw $t0, -10568($fp)
	lw $t1, -10576($fp)
	add $t0, $t0, $t1
	sw $t0, -10580($fp)
	lw $t0, -10564($fp)
	lw $t1, -10580($fp)
	sw $t0, 0($t1)
	lw $t0, -10580($fp)
	lw $t1, 0($t0)
	sw $t1, -10584($fp)
	li $t0, 6757
	sw $t0, -10588($fp)
	addi $t0, $fp, -10356
	sw $t0, -10592($fp)
	li $t0, 1
	sw $t0, -10596($fp)
	lw $t0, -10596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10600($fp)
	lw $t0, -10592($fp)
	lw $t1, -10600($fp)
	add $t0, $t0, $t1
	sw $t0, -10604($fp)
	lw $t0, -10588($fp)
	lw $t1, -10604($fp)
	sw $t0, 0($t1)
	lw $t0, -10604($fp)
	lw $t1, 0($t0)
	sw $t1, -10608($fp)
	li $t0, 19258
	sw $t0, -10612($fp)
	addi $t0, $fp, -10356
	sw $t0, -10616($fp)
	li $t0, 2
	sw $t0, -10620($fp)
	lw $t0, -10620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10624($fp)
	lw $t0, -10616($fp)
	lw $t1, -10624($fp)
	add $t0, $t0, $t1
	sw $t0, -10628($fp)
	lw $t0, -10612($fp)
	lw $t1, -10628($fp)
	sw $t0, 0($t1)
	lw $t0, -10628($fp)
	lw $t1, 0($t0)
	sw $t1, -10632($fp)
	li $t0, 37580
	sw $t0, -10636($fp)
	addi $t0, $fp, -10356
	sw $t0, -10640($fp)
	li $t0, 3
	sw $t0, -10644($fp)
	lw $t0, -10644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10648($fp)
	lw $t0, -10640($fp)
	lw $t1, -10648($fp)
	add $t0, $t0, $t1
	sw $t0, -10652($fp)
	lw $t0, -10636($fp)
	lw $t1, -10652($fp)
	sw $t0, 0($t1)
	lw $t0, -10652($fp)
	lw $t1, 0($t0)
	sw $t1, -10656($fp)
	li $t0, 180
	sw $t0, -10660($fp)
	addi $t0, $fp, -10356
	sw $t0, -10664($fp)
	li $t0, 4
	sw $t0, -10668($fp)
	lw $t0, -10668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10672($fp)
	lw $t0, -10664($fp)
	lw $t1, -10672($fp)
	add $t0, $t0, $t1
	sw $t0, -10676($fp)
	lw $t0, -10660($fp)
	lw $t1, -10676($fp)
	sw $t0, 0($t1)
	lw $t0, -10676($fp)
	lw $t1, 0($t0)
	sw $t1, -10680($fp)
	li $t0, 25104
	sw $t0, -10684($fp)
	addi $t0, $fp, -10356
	sw $t0, -10688($fp)
	li $t0, 5
	sw $t0, -10692($fp)
	lw $t0, -10692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10696($fp)
	lw $t0, -10688($fp)
	lw $t1, -10696($fp)
	add $t0, $t0, $t1
	sw $t0, -10700($fp)
	lw $t0, -10684($fp)
	lw $t1, -10700($fp)
	sw $t0, 0($t1)
	lw $t0, -10700($fp)
	lw $t1, 0($t0)
	sw $t1, -10704($fp)
	addi $t0, $fp, -10332
	sw $t0, -10708($fp)
	li $t0, 0
	sw $t0, -10712($fp)
	li $t0, 4
	lw $t1, -10712($fp)
	mul $t0, $t0, $t1
	sw $t0, -10716($fp)
	lw $t0, -10716($fp)
	lw $t1, -10708($fp)
	add $t0, $t0, $t1
	sw $t0, -10720($fp)
	lw $t0, -10720($fp)
	lw $t1, 0($t0)
	sw $t1, -10724($fp)
	lw $t0, -10724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -10728($fp)
	li $t0, 1
	sw $t0, -10732($fp)
	li $t0, 4
	lw $t1, -10732($fp)
	mul $t0, $t0, $t1
	sw $t0, -10736($fp)
	lw $t0, -10736($fp)
	lw $t1, -10728($fp)
	add $t0, $t0, $t1
	sw $t0, -10740($fp)
	lw $t0, -10740($fp)
	lw $t1, 0($t0)
	sw $t1, -10744($fp)
	lw $t0, -10744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -10748($fp)
	li $t0, 2
	sw $t0, -10752($fp)
	li $t0, 4
	lw $t1, -10752($fp)
	mul $t0, $t0, $t1
	sw $t0, -10756($fp)
	lw $t0, -10756($fp)
	lw $t1, -10748($fp)
	add $t0, $t0, $t1
	sw $t0, -10760($fp)
	lw $t0, -10760($fp)
	lw $t1, 0($t0)
	sw $t1, -10764($fp)
	lw $t0, -10764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -10768($fp)
	li $t0, 3
	sw $t0, -10772($fp)
	li $t0, 4
	lw $t1, -10772($fp)
	mul $t0, $t0, $t1
	sw $t0, -10776($fp)
	lw $t0, -10776($fp)
	lw $t1, -10768($fp)
	add $t0, $t0, $t1
	sw $t0, -10780($fp)
	lw $t0, -10780($fp)
	lw $t1, 0($t0)
	sw $t1, -10784($fp)
	lw $t0, -10784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -10788($fp)
	li $t0, 4
	sw $t0, -10792($fp)
	li $t0, 4
	lw $t1, -10792($fp)
	mul $t0, $t0, $t1
	sw $t0, -10796($fp)
	lw $t0, -10796($fp)
	lw $t1, -10788($fp)
	add $t0, $t0, $t1
	sw $t0, -10800($fp)
	lw $t0, -10800($fp)
	lw $t1, 0($t0)
	sw $t1, -10804($fp)
	lw $t0, -10804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -10808($fp)
	li $t0, 5
	sw $t0, -10812($fp)
	li $t0, 4
	lw $t1, -10812($fp)
	mul $t0, $t0, $t1
	sw $t0, -10816($fp)
	lw $t0, -10816($fp)
	lw $t1, -10808($fp)
	add $t0, $t0, $t1
	sw $t0, -10820($fp)
	lw $t0, -10820($fp)
	lw $t1, 0($t0)
	sw $t1, -10824($fp)
	lw $t0, -10824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -10828($fp)
	li $t0, 6
	sw $t0, -10832($fp)
	li $t0, 4
	lw $t1, -10832($fp)
	mul $t0, $t0, $t1
	sw $t0, -10836($fp)
	lw $t0, -10836($fp)
	lw $t1, -10828($fp)
	add $t0, $t0, $t1
	sw $t0, -10840($fp)
	lw $t0, -10840($fp)
	lw $t1, 0($t0)
	sw $t1, -10844($fp)
	lw $t0, -10844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -10848($fp)
	li $t0, 7
	sw $t0, -10852($fp)
	li $t0, 4
	lw $t1, -10852($fp)
	mul $t0, $t0, $t1
	sw $t0, -10856($fp)
	lw $t0, -10856($fp)
	lw $t1, -10848($fp)
	add $t0, $t0, $t1
	sw $t0, -10860($fp)
	lw $t0, -10860($fp)
	lw $t1, 0($t0)
	sw $t1, -10864($fp)
	lw $t0, -10864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10556($fp)
	sw $t0, -10868($fp)
	lw $t0, -10868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -10872($fp)
	li $t0, 0
	sw $t0, -10876($fp)
	li $t0, 4
	lw $t1, -10876($fp)
	mul $t0, $t0, $t1
	sw $t0, -10880($fp)
	lw $t0, -10880($fp)
	lw $t1, -10872($fp)
	add $t0, $t0, $t1
	sw $t0, -10884($fp)
	lw $t0, -10884($fp)
	lw $t1, 0($t0)
	sw $t1, -10888($fp)
	lw $t0, -10888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -10892($fp)
	li $t0, 1
	sw $t0, -10896($fp)
	li $t0, 4
	lw $t1, -10896($fp)
	mul $t0, $t0, $t1
	sw $t0, -10900($fp)
	lw $t0, -10900($fp)
	lw $t1, -10892($fp)
	add $t0, $t0, $t1
	sw $t0, -10904($fp)
	lw $t0, -10904($fp)
	lw $t1, 0($t0)
	sw $t1, -10908($fp)
	lw $t0, -10908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -10912($fp)
	li $t0, 2
	sw $t0, -10916($fp)
	li $t0, 4
	lw $t1, -10916($fp)
	mul $t0, $t0, $t1
	sw $t0, -10920($fp)
	lw $t0, -10920($fp)
	lw $t1, -10912($fp)
	add $t0, $t0, $t1
	sw $t0, -10924($fp)
	lw $t0, -10924($fp)
	lw $t1, 0($t0)
	sw $t1, -10928($fp)
	lw $t0, -10928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -10932($fp)
	li $t0, 3
	sw $t0, -10936($fp)
	li $t0, 4
	lw $t1, -10936($fp)
	mul $t0, $t0, $t1
	sw $t0, -10940($fp)
	lw $t0, -10940($fp)
	lw $t1, -10932($fp)
	add $t0, $t0, $t1
	sw $t0, -10944($fp)
	lw $t0, -10944($fp)
	lw $t1, 0($t0)
	sw $t1, -10948($fp)
	lw $t0, -10948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -10952($fp)
	li $t0, 4
	sw $t0, -10956($fp)
	li $t0, 4
	lw $t1, -10956($fp)
	mul $t0, $t0, $t1
	sw $t0, -10960($fp)
	lw $t0, -10960($fp)
	lw $t1, -10952($fp)
	add $t0, $t0, $t1
	sw $t0, -10964($fp)
	lw $t0, -10964($fp)
	lw $t1, 0($t0)
	sw $t1, -10968($fp)
	lw $t0, -10968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -10972($fp)
	li $t0, 5
	sw $t0, -10976($fp)
	li $t0, 4
	lw $t1, -10976($fp)
	mul $t0, $t0, $t1
	sw $t0, -10980($fp)
	lw $t0, -10980($fp)
	lw $t1, -10972($fp)
	add $t0, $t0, $t1
	sw $t0, -10984($fp)
	lw $t0, -10984($fp)
	lw $t1, 0($t0)
	sw $t1, -10988($fp)
	lw $t0, -10988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -10992($fp)
	addi $t0, $fp, -10332
	sw $t0, -10996($fp)
	lw $t0, -1368($fp)
	sw $t0, -11000($fp)
	lw $t0, -1296($fp)
	sw $t0, -11004($fp)
	lw $t0, -11000($fp)
	lw $t1, -11004($fp)
	mul $t0, $t0, $t1
	sw $t0, -11008($fp)
	li $t0, 4
	lw $t1, -11008($fp)
	mul $t0, $t0, $t1
	sw $t0, -11012($fp)
	lw $t0, -11012($fp)
	lw $t1, -10996($fp)
	add $t0, $t0, $t1
	sw $t0, -11016($fp)
	lw $t0, -11016($fp)
	lw $t1, 0($t0)
	sw $t1, -11020($fp)
	lw $t1, -11020($fp)
	li $t2, 0
	bne $t1, $t2, label861
	j label863
label863:
	li $t0, 0
	sw $t0, -11024($fp)
	li $t0, 61661
	sw $t0, -11028($fp)
	li $t0, 0
	lw $t1, -11028($fp)
	sub $t0, $t0, $t1
	sw $t0, -11032($fp)
	li $t0, 20458
	sw $t0, -11036($fp)
	lw $t1, -11032($fp)
	lw $t2, -11036($fp)
	bge $t1, $t2, label864
	j label865
label864:
	li $t0, 1
	sw $t0, -11024($fp)
label865:
	lw $t0, -10556($fp)
	sw $t0, -11040($fp)
	addi $sp, $sp, -4
	lw $t0, -11024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11040($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -11044($fp)
	addi $sp, $sp, 12
	lw $t0, -2640($fp)
	sw $t0, -11048($fp)
	lw $t0, -11044($fp)
	lw $t1, -11048($fp)
	mul $t0, $t0, $t1
	sw $t0, -11052($fp)
	li $t0, 29998
	sw $t0, -11056($fp)
	li $t0, 0
	lw $t1, -11056($fp)
	sub $t0, $t0, $t1
	sw $t0, -11060($fp)
	lw $t0, -11052($fp)
	lw $t1, -11060($fp)
	mul $t0, $t0, $t1
	sw $t0, -11064($fp)
	lw $t1, -11064($fp)
	li $t2, 0
	bne $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -10992($fp)
label862:
	lw $ra, -4($fp)
	lw $v0, -10992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -10332
	sw $t0, -11068($fp)
	li $t0, 0
	sw $t0, -11072($fp)
	li $t0, 4
	lw $t1, -11072($fp)
	mul $t0, $t0, $t1
	sw $t0, -11076($fp)
	lw $t0, -11076($fp)
	lw $t1, -11068($fp)
	add $t0, $t0, $t1
	sw $t0, -11080($fp)
	lw $t0, -11080($fp)
	lw $t1, 0($t0)
	sw $t1, -11084($fp)
	lw $t0, -11084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11088($fp)
	li $t0, 1
	sw $t0, -11092($fp)
	li $t0, 4
	lw $t1, -11092($fp)
	mul $t0, $t0, $t1
	sw $t0, -11096($fp)
	lw $t0, -11096($fp)
	lw $t1, -11088($fp)
	add $t0, $t0, $t1
	sw $t0, -11100($fp)
	lw $t0, -11100($fp)
	lw $t1, 0($t0)
	sw $t1, -11104($fp)
	lw $t0, -11104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11108($fp)
	li $t0, 2
	sw $t0, -11112($fp)
	li $t0, 4
	lw $t1, -11112($fp)
	mul $t0, $t0, $t1
	sw $t0, -11116($fp)
	lw $t0, -11116($fp)
	lw $t1, -11108($fp)
	add $t0, $t0, $t1
	sw $t0, -11120($fp)
	lw $t0, -11120($fp)
	lw $t1, 0($t0)
	sw $t1, -11124($fp)
	lw $t0, -11124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11128($fp)
	li $t0, 3
	sw $t0, -11132($fp)
	li $t0, 4
	lw $t1, -11132($fp)
	mul $t0, $t0, $t1
	sw $t0, -11136($fp)
	lw $t0, -11136($fp)
	lw $t1, -11128($fp)
	add $t0, $t0, $t1
	sw $t0, -11140($fp)
	lw $t0, -11140($fp)
	lw $t1, 0($t0)
	sw $t1, -11144($fp)
	lw $t0, -11144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11148($fp)
	li $t0, 4
	sw $t0, -11152($fp)
	li $t0, 4
	lw $t1, -11152($fp)
	mul $t0, $t0, $t1
	sw $t0, -11156($fp)
	lw $t0, -11156($fp)
	lw $t1, -11148($fp)
	add $t0, $t0, $t1
	sw $t0, -11160($fp)
	lw $t0, -11160($fp)
	lw $t1, 0($t0)
	sw $t1, -11164($fp)
	lw $t0, -11164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11168($fp)
	li $t0, 5
	sw $t0, -11172($fp)
	li $t0, 4
	lw $t1, -11172($fp)
	mul $t0, $t0, $t1
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	lw $t1, -11168($fp)
	add $t0, $t0, $t1
	sw $t0, -11180($fp)
	lw $t0, -11180($fp)
	lw $t1, 0($t0)
	sw $t1, -11184($fp)
	lw $t0, -11184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11188($fp)
	li $t0, 6
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
	lw $t0, -11204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11208($fp)
	li $t0, 7
	sw $t0, -11212($fp)
	li $t0, 4
	lw $t1, -11212($fp)
	mul $t0, $t0, $t1
	sw $t0, -11216($fp)
	lw $t0, -11216($fp)
	lw $t1, -11208($fp)
	add $t0, $t0, $t1
	sw $t0, -11220($fp)
	lw $t0, -11220($fp)
	lw $t1, 0($t0)
	sw $t1, -11224($fp)
	lw $t0, -11224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10556($fp)
	sw $t0, -11228($fp)
	lw $t0, -11228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11232($fp)
	li $t0, 0
	sw $t0, -11236($fp)
	li $t0, 4
	lw $t1, -11236($fp)
	mul $t0, $t0, $t1
	sw $t0, -11240($fp)
	lw $t0, -11240($fp)
	lw $t1, -11232($fp)
	add $t0, $t0, $t1
	sw $t0, -11244($fp)
	lw $t0, -11244($fp)
	lw $t1, 0($t0)
	sw $t1, -11248($fp)
	lw $t0, -11248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11252($fp)
	li $t0, 1
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
	lw $t0, -11268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11272($fp)
	li $t0, 2
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
	lw $t0, -11288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11292($fp)
	li $t0, 3
	sw $t0, -11296($fp)
	li $t0, 4
	lw $t1, -11296($fp)
	mul $t0, $t0, $t1
	sw $t0, -11300($fp)
	lw $t0, -11300($fp)
	lw $t1, -11292($fp)
	add $t0, $t0, $t1
	sw $t0, -11304($fp)
	lw $t0, -11304($fp)
	lw $t1, 0($t0)
	sw $t1, -11308($fp)
	lw $t0, -11308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11312($fp)
	li $t0, 4
	sw $t0, -11316($fp)
	li $t0, 4
	lw $t1, -11316($fp)
	mul $t0, $t0, $t1
	sw $t0, -11320($fp)
	lw $t0, -11320($fp)
	lw $t1, -11312($fp)
	add $t0, $t0, $t1
	sw $t0, -11324($fp)
	lw $t0, -11324($fp)
	lw $t1, 0($t0)
	sw $t1, -11328($fp)
	lw $t0, -11328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11332($fp)
	li $t0, 5
	sw $t0, -11336($fp)
	li $t0, 4
	lw $t1, -11336($fp)
	mul $t0, $t0, $t1
	sw $t0, -11340($fp)
	lw $t0, -11340($fp)
	lw $t1, -11332($fp)
	add $t0, $t0, $t1
	sw $t0, -11344($fp)
	lw $t0, -11344($fp)
	lw $t1, 0($t0)
	sw $t1, -11348($fp)
	lw $t0, -11348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -11352($fp)
	li $t0, 0
	sw $t0, -11356($fp)
	li $t0, 23832
	sw $t0, -11360($fp)
	lw $t1, -11360($fp)
	li $t2, 0
	bne $t1, $t2, label870
	j label869
label869:
	li $t0, 1
	sw $t0, -11356($fp)
label870:
	li $t0, 0
	lw $t1, -11356($fp)
	sub $t0, $t0, $t1
	sw $t0, -11364($fp)
	li $t0, 0
	sw $t0, -11368($fp)
	lw $t0, -1560($fp)
	sw $t0, -11372($fp)
	li $t0, 0
	lw $t1, -11372($fp)
	sub $t0, $t0, $t1
	sw $t0, -11376($fp)
	li $t0, 1826
	sw $t0, -11380($fp)
	lw $t1, -11376($fp)
	lw $t2, -11380($fp)
	bgt $t1, $t2, label871
	j label872
label871:
	li $t0, 1
	sw $t0, -11368($fp)
label872:
	li $t0, 0
	sw $t0, -11384($fp)
	li $t0, 0
	sw $t0, -11388($fp)
	lw $t0, -1344($fp)
	sw $t0, -11392($fp)
	li $t0, 64620
	sw $t0, -11396($fp)
	lw $t1, -11392($fp)
	lw $t2, -11396($fp)
	beq $t1, $t2, label875
	j label876
label875:
	li $t0, 1
	sw $t0, -11388($fp)
label876:
	li $t0, 32571
	sw $t0, -11400($fp)
	lw $t1, -11388($fp)
	lw $t2, -11400($fp)
	beq $t1, $t2, label873
	j label874
label873:
	li $t0, 1
	sw $t0, -11384($fp)
label874:
	addi $sp, $sp, -4
	lw $t0, -11368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11384($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -11404($fp)
	addi $sp, $sp, 12
	lw $t0, -11364($fp)
	lw $t1, -11404($fp)
	add $t0, $t0, $t1
	sw $t0, -11408($fp)
	lw $t1, -11408($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label867
label868:
	addi $t0, $fp, -10356
	sw $t0, -11412($fp)
	lw $t0, -10156($fp)
	sw $t0, -11416($fp)
	lw $t0, -10000($fp)
	sw $t0, -11420($fp)
	lw $t0, -11416($fp)
	lw $t1, -11420($fp)
	sub $t0, $t0, $t1
	sw $t0, -11424($fp)
	li $t0, 4
	lw $t1, -11424($fp)
	mul $t0, $t0, $t1
	sw $t0, -11428($fp)
	lw $t0, -11428($fp)
	lw $t1, -11412($fp)
	add $t0, $t0, $t1
	sw $t0, -11432($fp)
	lw $t0, -11432($fp)
	lw $t1, 0($t0)
	sw $t1, -11436($fp)
	lw $t1, -11436($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label867
label866:
	li $t0, 1
	sw $t0, -11352($fp)
label867:
	lw $ra, -4($fp)
	lw $v0, -11352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -10332
	sw $t0, -11440($fp)
	li $t0, 0
	sw $t0, -11444($fp)
	li $t0, 4
	lw $t1, -11444($fp)
	mul $t0, $t0, $t1
	sw $t0, -11448($fp)
	lw $t0, -11448($fp)
	lw $t1, -11440($fp)
	add $t0, $t0, $t1
	sw $t0, -11452($fp)
	lw $t0, -11452($fp)
	lw $t1, 0($t0)
	sw $t1, -11456($fp)
	lw $t0, -11456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11460($fp)
	li $t0, 1
	sw $t0, -11464($fp)
	li $t0, 4
	lw $t1, -11464($fp)
	mul $t0, $t0, $t1
	sw $t0, -11468($fp)
	lw $t0, -11468($fp)
	lw $t1, -11460($fp)
	add $t0, $t0, $t1
	sw $t0, -11472($fp)
	lw $t0, -11472($fp)
	lw $t1, 0($t0)
	sw $t1, -11476($fp)
	lw $t0, -11476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11480($fp)
	li $t0, 2
	sw $t0, -11484($fp)
	li $t0, 4
	lw $t1, -11484($fp)
	mul $t0, $t0, $t1
	sw $t0, -11488($fp)
	lw $t0, -11488($fp)
	lw $t1, -11480($fp)
	add $t0, $t0, $t1
	sw $t0, -11492($fp)
	lw $t0, -11492($fp)
	lw $t1, 0($t0)
	sw $t1, -11496($fp)
	lw $t0, -11496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11500($fp)
	li $t0, 3
	sw $t0, -11504($fp)
	li $t0, 4
	lw $t1, -11504($fp)
	mul $t0, $t0, $t1
	sw $t0, -11508($fp)
	lw $t0, -11508($fp)
	lw $t1, -11500($fp)
	add $t0, $t0, $t1
	sw $t0, -11512($fp)
	lw $t0, -11512($fp)
	lw $t1, 0($t0)
	sw $t1, -11516($fp)
	lw $t0, -11516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11520($fp)
	li $t0, 4
	sw $t0, -11524($fp)
	li $t0, 4
	lw $t1, -11524($fp)
	mul $t0, $t0, $t1
	sw $t0, -11528($fp)
	lw $t0, -11528($fp)
	lw $t1, -11520($fp)
	add $t0, $t0, $t1
	sw $t0, -11532($fp)
	lw $t0, -11532($fp)
	lw $t1, 0($t0)
	sw $t1, -11536($fp)
	lw $t0, -11536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11540($fp)
	li $t0, 5
	sw $t0, -11544($fp)
	li $t0, 4
	lw $t1, -11544($fp)
	mul $t0, $t0, $t1
	sw $t0, -11548($fp)
	lw $t0, -11548($fp)
	lw $t1, -11540($fp)
	add $t0, $t0, $t1
	sw $t0, -11552($fp)
	lw $t0, -11552($fp)
	lw $t1, 0($t0)
	sw $t1, -11556($fp)
	lw $t0, -11556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11560($fp)
	li $t0, 6
	sw $t0, -11564($fp)
	li $t0, 4
	lw $t1, -11564($fp)
	mul $t0, $t0, $t1
	sw $t0, -11568($fp)
	lw $t0, -11568($fp)
	lw $t1, -11560($fp)
	add $t0, $t0, $t1
	sw $t0, -11572($fp)
	lw $t0, -11572($fp)
	lw $t1, 0($t0)
	sw $t1, -11576($fp)
	lw $t0, -11576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11580($fp)
	li $t0, 7
	sw $t0, -11584($fp)
	li $t0, 4
	lw $t1, -11584($fp)
	mul $t0, $t0, $t1
	sw $t0, -11588($fp)
	lw $t0, -11588($fp)
	lw $t1, -11580($fp)
	add $t0, $t0, $t1
	sw $t0, -11592($fp)
	lw $t0, -11592($fp)
	lw $t1, 0($t0)
	sw $t1, -11596($fp)
	lw $t0, -11596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10556($fp)
	sw $t0, -11600($fp)
	lw $t0, -11600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11604($fp)
	li $t0, 0
	sw $t0, -11608($fp)
	li $t0, 4
	lw $t1, -11608($fp)
	mul $t0, $t0, $t1
	sw $t0, -11612($fp)
	lw $t0, -11612($fp)
	lw $t1, -11604($fp)
	add $t0, $t0, $t1
	sw $t0, -11616($fp)
	lw $t0, -11616($fp)
	lw $t1, 0($t0)
	sw $t1, -11620($fp)
	lw $t0, -11620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11624($fp)
	li $t0, 1
	sw $t0, -11628($fp)
	li $t0, 4
	lw $t1, -11628($fp)
	mul $t0, $t0, $t1
	sw $t0, -11632($fp)
	lw $t0, -11632($fp)
	lw $t1, -11624($fp)
	add $t0, $t0, $t1
	sw $t0, -11636($fp)
	lw $t0, -11636($fp)
	lw $t1, 0($t0)
	sw $t1, -11640($fp)
	lw $t0, -11640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11644($fp)
	li $t0, 2
	sw $t0, -11648($fp)
	li $t0, 4
	lw $t1, -11648($fp)
	mul $t0, $t0, $t1
	sw $t0, -11652($fp)
	lw $t0, -11652($fp)
	lw $t1, -11644($fp)
	add $t0, $t0, $t1
	sw $t0, -11656($fp)
	lw $t0, -11656($fp)
	lw $t1, 0($t0)
	sw $t1, -11660($fp)
	lw $t0, -11660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11664($fp)
	li $t0, 3
	sw $t0, -11668($fp)
	li $t0, 4
	lw $t1, -11668($fp)
	mul $t0, $t0, $t1
	sw $t0, -11672($fp)
	lw $t0, -11672($fp)
	lw $t1, -11664($fp)
	add $t0, $t0, $t1
	sw $t0, -11676($fp)
	lw $t0, -11676($fp)
	lw $t1, 0($t0)
	sw $t1, -11680($fp)
	lw $t0, -11680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11684($fp)
	li $t0, 4
	sw $t0, -11688($fp)
	li $t0, 4
	lw $t1, -11688($fp)
	mul $t0, $t0, $t1
	sw $t0, -11692($fp)
	lw $t0, -11692($fp)
	lw $t1, -11684($fp)
	add $t0, $t0, $t1
	sw $t0, -11696($fp)
	lw $t0, -11696($fp)
	lw $t1, 0($t0)
	sw $t1, -11700($fp)
	lw $t0, -11700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10356
	sw $t0, -11704($fp)
	li $t0, 5
	sw $t0, -11708($fp)
	li $t0, 4
	lw $t1, -11708($fp)
	mul $t0, $t0, $t1
	sw $t0, -11712($fp)
	lw $t0, -11712($fp)
	lw $t1, -11704($fp)
	add $t0, $t0, $t1
	sw $t0, -11716($fp)
	lw $t0, -11716($fp)
	lw $t1, 0($t0)
	sw $t1, -11720($fp)
	lw $t0, -11720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -11724($fp)
	addi $t0, $fp, -128
	sw $t0, -11728($fp)
	addi $t0, $fp, -128
	sw $t0, -11732($fp)
	lw $t0, -10168($fp)
	sw $t0, -11736($fp)
	li $t0, 4
	lw $t1, -11736($fp)
	mul $t0, $t0, $t1
	sw $t0, -11740($fp)
	lw $t0, -11740($fp)
	lw $t1, -11732($fp)
	add $t0, $t0, $t1
	sw $t0, -11744($fp)
	lw $t0, -11744($fp)
	lw $t1, 0($t0)
	sw $t1, -11748($fp)
	li $t0, 4
	lw $t1, -11748($fp)
	mul $t0, $t0, $t1
	sw $t0, -11752($fp)
	lw $t0, -11752($fp)
	lw $t1, -11728($fp)
	add $t0, $t0, $t1
	sw $t0, -11756($fp)
	lw $t0, -11756($fp)
	lw $t1, 0($t0)
	sw $t1, -11760($fp)
	li $t0, 11540
	sw $t0, -11764($fp)
	lw $t0, -11760($fp)
	lw $t1, -11764($fp)
	mul $t0, $t0, $t1
	sw $t0, -11768($fp)
	lw $t1, -11768($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label879
label879:
	li $t0, 3181
	sw $t0, -11772($fp)
	lw $t0, -660($fp)
	sw $t0, -11776($fp)
	lw $t0, -11772($fp)
	lw $t1, -11776($fp)
	mul $t0, $t0, $t1
	sw $t0, -11780($fp)
	addi $t0, $fp, -12
	sw $t0, -11784($fp)
	li $t0, 0
	sw $t0, -11788($fp)
	li $t0, 4
	lw $t1, -11788($fp)
	mul $t0, $t0, $t1
	sw $t0, -11792($fp)
	lw $t0, -11792($fp)
	lw $t1, -11784($fp)
	add $t0, $t0, $t1
	sw $t0, -11796($fp)
	lw $t0, -11796($fp)
	lw $t1, 0($t0)
	sw $t1, -11800($fp)
	lw $t0, -11780($fp)
	lw $t1, -11800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11804($fp)
	li $t0, 0
	lw $t1, -11804($fp)
	sub $t0, $t0, $t1
	sw $t0, -11808($fp)
	lw $t1, -11808($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -11724($fp)
label878:
	lw $ra, -4($fp)
	lw $v0, -11724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label880:
	li $t0, 50186
	sw $t0, -11812($fp)
	li $t0, 18089
	sw $t0, -11816($fp)
	lw $t0, -11812($fp)
	lw $t1, -11816($fp)
	mul $t0, $t0, $t1
	sw $t0, -11820($fp)
	lw $t0, -10000($fp)
	sw $t0, -11824($fp)
	li $t0, 61452
	sw $t0, -11828($fp)
	lw $t0, -11828($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -11832($fp)
	addi $t0, $fp, -9992
	sw $t0, -11836($fp)
	li $t0, 4
	sw $t0, -11840($fp)
	li $t0, 4
	lw $t1, -11840($fp)
	mul $t0, $t0, $t1
	sw $t0, -11844($fp)
	lw $t0, -11844($fp)
	lw $t1, -11836($fp)
	add $t0, $t0, $t1
	sw $t0, -11848($fp)
	lw $t0, -11848($fp)
	lw $t1, 0($t0)
	sw $t1, -11852($fp)
	addi $sp, $sp, -4
	lw $t0, -11824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11856($fp)
	addi $sp, $sp, 16
	lw $t0, -11820($fp)
	lw $t1, -11856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11860($fp)
	lw $t0, -10132($fp)
	sw $t0, -11864($fp)
	lw $t0, -11860($fp)
	lw $t1, -11864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11868($fp)
	li $t0, 0
	lw $t1, -11868($fp)
	sub $t0, $t0, $t1
	sw $t0, -11872($fp)
	li $t0, 3228
	sw $t0, -11876($fp)
	lw $t0, -11872($fp)
	lw $t1, -11876($fp)
	add $t0, $t0, $t1
	sw $t0, -11880($fp)
	lw $t1, -11880($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label882
label881:
	li $t0, 0
	sw $t0, -11884($fp)
	li $t0, 55637
	sw $t0, -11888($fp)
	lw $t1, -11888($fp)
	li $t2, 0
	bne $t1, $t2, label884
	j label883
label883:
	li $t0, 1
	sw $t0, -11884($fp)
label884:
	lw $ra, -4($fp)
	lw $v0, -11884($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label880
label882:
label885:
	lw $t0, -2976($fp)
	sw $t0, -11892($fp)
	lw $t1, -11892($fp)
	li $t2, 0
	bne $t1, $t2, label887
	j label886
label886:
	li $t0, 0
	sw $t0, -11896($fp)
	lw $t0, -10144($fp)
	sw $t0, -11900($fp)
	li $t0, 42850
	sw $t0, -11904($fp)
	lw $t0, -11900($fp)
	lw $t1, -11904($fp)
	sub $t0, $t0, $t1
	sw $t0, -11908($fp)
	lw $t0, -720($fp)
	sw $t0, -11912($fp)
	lw $t1, -11908($fp)
	lw $t2, -11912($fp)
	beq $t1, $t2, label891
	j label892
label891:
	li $t0, 1
	sw $t0, -11896($fp)
label892:
	li $t0, 62825
	sw $t0, -11916($fp)
	li $t0, 3961
	sw $t0, -11920($fp)
	lw $t0, -11916($fp)
	lw $t1, -11920($fp)
	mul $t0, $t0, $t1
	sw $t0, -11924($fp)
	li $t0, 50312
	sw $t0, -11928($fp)
	lw $t0, -11924($fp)
	lw $t1, -11928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11932($fp)
	addi $sp, $sp, -4
	lw $t0, -11896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11932($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -11936($fp)
	addi $sp, $sp, 12
	li $t0, 34813
	sw $t0, -11940($fp)
	li $t0, 0
	lw $t1, -11940($fp)
	sub $t0, $t0, $t1
	sw $t0, -11944($fp)
	li $t0, 0
	lw $t1, -11944($fp)
	sub $t0, $t0, $t1
	sw $t0, -11948($fp)
	lw $t0, -11936($fp)
	lw $t1, -11948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11952($fp)
	li $t0, 0
	lw $t1, -11952($fp)
	sub $t0, $t0, $t1
	sw $t0, -11956($fp)
	lw $t0, -2976($fp)
	sw $t0, -11960($fp)
	lw $t1, -11956($fp)
	lw $t2, -11960($fp)
	bne $t1, $t2, label888
	j label889
label888:
	li $t0, 0
	sw $t0, -11964($fp)
	li $t0, 21218
	sw $t0, -11968($fp)
	lw $t1, -11968($fp)
	li $t2, 0
	bne $t1, $t2, label894
	j label893
label893:
	li $t0, 1
	sw $t0, -11964($fp)
label894:
	lw $ra, -4($fp)
	lw $v0, -11964($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label890
label889:
	lw $t0, -2988($fp)
	sw $t0, -11972($fp)
	lw $t0, -3000($fp)
	sw $t0, -11976($fp)
	lw $t0, -11972($fp)
	lw $t1, -11976($fp)
	mul $t0, $t0, $t1
	sw $t0, -11980($fp)
	li $t0, 26687
	sw $t0, -11984($fp)
	li $t0, 0
	lw $t1, -11984($fp)
	sub $t0, $t0, $t1
	sw $t0, -11988($fp)
	lw $t0, -11980($fp)
	lw $t1, -11988($fp)
	sub $t0, $t0, $t1
	sw $t0, -11992($fp)
	addi $t0, $fp, -344
	sw $t0, -11996($fp)
	lw $t0, -408($fp)
	sw $t0, -12000($fp)
	li $t0, 4
	lw $t1, -12000($fp)
	mul $t0, $t0, $t1
	sw $t0, -12004($fp)
	lw $t0, -12004($fp)
	lw $t1, -11996($fp)
	add $t0, $t0, $t1
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	lw $t1, 0($t0)
	sw $t1, -12012($fp)
	lw $t0, -11992($fp)
	lw $t1, -12012($fp)
	add $t0, $t0, $t1
	sw $t0, -12016($fp)
	addi $t0, $fp, -196
	sw $t0, -12020($fp)
	lw $t0, -3252($fp)
	sw $t0, -12024($fp)
	li $t0, 4
	lw $t1, -12024($fp)
	mul $t0, $t0, $t1
	sw $t0, -12028($fp)
	lw $t0, -12028($fp)
	lw $t1, -12020($fp)
	add $t0, $t0, $t1
	sw $t0, -12032($fp)
	lw $t0, -12032($fp)
	lw $t1, 0($t0)
	sw $t1, -12036($fp)
	lw $t0, -12016($fp)
	lw $t1, -12036($fp)
	add $t0, $t0, $t1
	sw $t0, -12040($fp)
label890:
	j label885
label887:
	li $t0, 17320
	sw $t0, -12044($fp)
	lw $t0, -12044($fp)
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	sw $t0, -12052($fp)
	li $t0, 27975
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	sw $t0, -12060($fp)
	lw $t0, -12060($fp)
	sw $t0, -12064($fp)
	li $t0, 0
	sw $t0, -12068($fp)
	addi $t0, $fp, -388
	sw $t0, -12072($fp)
	lw $t0, -2952($fp)
	sw $t0, -12076($fp)
	li $t0, 45945
	sw $t0, -12080($fp)
	lw $t0, -12076($fp)
	lw $t1, -12080($fp)
	mul $t0, $t0, $t1
	sw $t0, -12084($fp)
	li $t0, 4
	lw $t1, -12084($fp)
	mul $t0, $t0, $t1
	sw $t0, -12088($fp)
	lw $t0, -12088($fp)
	lw $t1, -12072($fp)
	add $t0, $t0, $t1
	sw $t0, -12092($fp)
	lw $t0, -12092($fp)
	lw $t1, 0($t0)
	sw $t1, -12096($fp)
	addi $t0, $fp, -236
	sw $t0, -12100($fp)
	lw $t0, -3264($fp)
	sw $t0, -12104($fp)
	li $t0, 4
	lw $t1, -12104($fp)
	mul $t0, $t0, $t1
	sw $t0, -12108($fp)
	lw $t0, -12108($fp)
	lw $t1, -12100($fp)
	add $t0, $t0, $t1
	sw $t0, -12112($fp)
	lw $t0, -12112($fp)
	lw $t1, 0($t0)
	sw $t1, -12116($fp)
	li $t0, 54900
	sw $t0, -12120($fp)
	lw $t0, -12116($fp)
	lw $t1, -12120($fp)
	sub $t0, $t0, $t1
	sw $t0, -12124($fp)
	lw $t1, -12096($fp)
	lw $t2, -12124($fp)
	beq $t1, $t2, label898
	j label899
label898:
	li $t0, 1
	sw $t0, -12068($fp)
label899:
	li $t0, 0
	sw $t0, -12128($fp)
	li $t0, 28156
	sw $t0, -12132($fp)
	lw $t1, -12132($fp)
	li $t2, 0
	bne $t1, $t2, label900
	j label901
label900:
	li $t0, 1
	sw $t0, -12128($fp)
label901:
	lw $t0, -3276($fp)
	sw $t0, -12136($fp)
	li $t0, 5513
	sw $t0, -12140($fp)
	lw $t0, -12136($fp)
	lw $t1, -12140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12144($fp)
	lw $t0, -12128($fp)
	lw $t1, -12144($fp)
	sub $t0, $t0, $t1
	sw $t0, -12148($fp)
	lw $t1, -12068($fp)
	lw $t2, -12148($fp)
	beq $t1, $t2, label895
	j label896
label895:
	li $t0, 51026
	sw $t0, -12152($fp)
	lw $t0, -12152($fp)
	sw $t0, -12156($fp)
	lw $t0, -12156($fp)
	sw $t0, -12160($fp)
	li $t0, 0
	sw $t0, -12164($fp)
	addi $t0, $fp, -140
	sw $t0, -12168($fp)
	li $t0, 0
	sw $t0, -12172($fp)
	lw $t0, -3288($fp)
	sw $t0, -12176($fp)
	lw $t0, -12156($fp)
	sw $t0, -12180($fp)
	lw $t1, -12176($fp)
	lw $t2, -12180($fp)
	blt $t1, $t2, label904
	j label905
label904:
	li $t0, 1
	sw $t0, -12172($fp)
label905:
	li $t0, 4
	lw $t1, -12172($fp)
	mul $t0, $t0, $t1
	sw $t0, -12184($fp)
	lw $t0, -12184($fp)
	lw $t1, -12168($fp)
	add $t0, $t0, $t1
	sw $t0, -12188($fp)
	lw $t0, -12188($fp)
	lw $t1, 0($t0)
	sw $t1, -12192($fp)
	lw $t0, -636($fp)
	sw $t0, -12196($fp)
	lw $t0, -12192($fp)
	lw $t1, -12196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12200($fp)
	li $t0, 48614
	sw $t0, -12204($fp)
	lw $t0, -2700($fp)
	sw $t0, -12208($fp)
	li $t0, 0
	lw $t1, -12208($fp)
	sub $t0, $t0, $t1
	sw $t0, -12212($fp)
	lw $t0, -12204($fp)
	lw $t1, -12212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12216($fp)
	lw $t1, -12200($fp)
	lw $t2, -12216($fp)
	ble $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -12164($fp)
label903:
	addi $t0, $fp, -304
	sw $t0, -12220($fp)
	lw $t0, -3264($fp)
	sw $t0, -12224($fp)
	addi $t0, $fp, -28
	sw $t0, -12228($fp)
	lw $t0, -612($fp)
	sw $t0, -12232($fp)
	li $t0, 4
	lw $t1, -12232($fp)
	mul $t0, $t0, $t1
	sw $t0, -12236($fp)
	lw $t0, -12236($fp)
	lw $t1, -12228($fp)
	add $t0, $t0, $t1
	sw $t0, -12240($fp)
	lw $t0, -12240($fp)
	lw $t1, 0($t0)
	sw $t1, -12244($fp)
	addi $sp, $sp, -4
	lw $t0, -12224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12244($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -12248($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -12248($fp)
	mul $t0, $t0, $t1
	sw $t0, -12252($fp)
	lw $t0, -12252($fp)
	lw $t1, -12220($fp)
	add $t0, $t0, $t1
	sw $t0, -12256($fp)
	lw $t0, -12256($fp)
	lw $t1, 0($t0)
	sw $t1, -12260($fp)
	addi $t0, $fp, -196
	sw $t0, -12264($fp)
	li $t0, 1
	sw $t0, -12268($fp)
	li $t0, 4
	lw $t1, -12268($fp)
	mul $t0, $t0, $t1
	sw $t0, -12272($fp)
	lw $t0, -12272($fp)
	lw $t1, -12264($fp)
	add $t0, $t0, $t1
	sw $t0, -12276($fp)
	lw $t0, -12276($fp)
	lw $t1, 0($t0)
	sw $t1, -12280($fp)
	lw $t0, -12260($fp)
	lw $t1, -12280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12284($fp)
	li $t0, 0
	sw $t0, -12288($fp)
	li $t0, 47699
	sw $t0, -12292($fp)
	li $t0, 0
	lw $t1, -12292($fp)
	sub $t0, $t0, $t1
	sw $t0, -12296($fp)
	lw $t0, -2940($fp)
	sw $t0, -12300($fp)
	lw $t0, -12296($fp)
	lw $t1, -12300($fp)
	sub $t0, $t0, $t1
	sw $t0, -12304($fp)
	li $t0, 0
	sw $t0, -12308($fp)
	lw $t0, -984($fp)
	sw $t0, -12312($fp)
	lw $t1, -12312($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label909
label909:
	li $t0, 1
	sw $t0, -12308($fp)
label910:
	lw $t0, -12304($fp)
	lw $t1, -12308($fp)
	add $t0, $t0, $t1
	sw $t0, -12316($fp)
	lw $t0, -3300($fp)
	sw $t0, -12320($fp)
	lw $t0, -12316($fp)
	lw $t1, -12320($fp)
	sub $t0, $t0, $t1
	sw $t0, -12324($fp)
	lw $t1, -12324($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label907
label908:
	lw $t0, -3312($fp)
	sw $t0, -12328($fp)
	lw $t1, -12328($fp)
	li $t2, 0
	bne $t1, $t2, label906
	j label907
label906:
	li $t0, 1
	sw $t0, -12288($fp)
label907:
	lw $t0, -1368($fp)
	sw $t0, -12332($fp)
label896:
	li $t0, 2546
	sw $t0, -12336($fp)
	lw $t0, -12336($fp)
	sw $t0, -12340($fp)
	lw $t0, -12340($fp)
	sw $t0, -12344($fp)
label911:
	li $t0, 11148
	sw $t0, -12348($fp)
	lw $t0, -636($fp)
	sw $t0, -12352($fp)
	lw $t0, -12348($fp)
	lw $t1, -12352($fp)
	mul $t0, $t0, $t1
	sw $t0, -12356($fp)
	lw $t1, -12356($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label913
label914:
	addi $t0, $fp, -360
	sw $t0, -12360($fp)
	li $t0, 2
	sw $t0, -12364($fp)
	li $t0, 4
	lw $t1, -12364($fp)
	mul $t0, $t0, $t1
	sw $t0, -12368($fp)
	lw $t0, -12368($fp)
	lw $t1, -12360($fp)
	add $t0, $t0, $t1
	sw $t0, -12372($fp)
	lw $t0, -12372($fp)
	lw $t1, 0($t0)
	sw $t1, -12376($fp)
	lw $t0, -3252($fp)
	sw $t0, -12380($fp)
	lw $t0, -12376($fp)
	lw $t1, -12380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12384($fp)
	li $t0, 0
	sw $t0, -12388($fp)
	li $t0, 59239
	sw $t0, -12392($fp)
	lw $t1, -12392($fp)
	li $t2, 0
	bne $t1, $t2, label916
	j label915
label915:
	li $t0, 1
	sw $t0, -12388($fp)
label916:
	lw $t0, -3696($fp)
	sw $t0, -12396($fp)
	lw $t0, -12388($fp)
	lw $t1, -12396($fp)
	sub $t0, $t0, $t1
	sw $t0, -12400($fp)
	addi $sp, $sp, -4
	lw $t0, -12384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12400($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12404($fp)
	addi $sp, $sp, 12
	li $t0, 9785
	sw $t0, -12408($fp)
	li $t0, 55914
	sw $t0, -12412($fp)
	lw $t0, -12408($fp)
	lw $t1, -12412($fp)
	add $t0, $t0, $t1
	sw $t0, -12416($fp)
	lw $t1, -12404($fp)
	lw $t2, -12416($fp)
	beq $t1, $t2, label912
	j label913
label912:
	li $t0, 0
	sw $t0, -12420($fp)
	li $t0, 28627
	sw $t0, -12424($fp)
	li $t0, 57830
	sw $t0, -12428($fp)
	lw $t1, -12424($fp)
	lw $t2, -12428($fp)
	ble $t1, $t2, label917
	j label918
label917:
	li $t0, 1
	sw $t0, -12420($fp)
label918:
	li $t0, 43911
	sw $t0, -12432($fp)
	lw $t0, -12432($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	sw $t0, -12436($fp)
	lw $t0, -624($fp)
	sw $t0, -12440($fp)
	lw $t0, -12440($fp)
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	sw $t0, -12444($fp)
	addi $sp, $sp, -4
	lw $t0, -12420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12448($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -388
	sw $t0, -12452($fp)
	li $t0, 3
	sw $t0, -12456($fp)
	li $t0, 4
	lw $t1, -12456($fp)
	mul $t0, $t0, $t1
	sw $t0, -12460($fp)
	lw $t0, -12460($fp)
	lw $t1, -12452($fp)
	add $t0, $t0, $t1
	sw $t0, -12464($fp)
	lw $t0, -12464($fp)
	lw $t1, 0($t0)
	sw $t1, -12468($fp)
	li $t0, 0
	lw $t1, -12468($fp)
	sub $t0, $t0, $t1
	sw $t0, -12472($fp)
	lw $t0, -12448($fp)
	lw $t1, -12472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12476($fp)
	j label911
label913:
label919:
	li $t0, 0
	sw $t0, -12480($fp)
	lw $t0, -1344($fp)
	sw $t0, -12484($fp)
	lw $t0, -480($fp)
	sw $t0, -12488($fp)
	lw $t0, -12484($fp)
	lw $t1, -12488($fp)
	add $t0, $t0, $t1
	sw $t0, -12492($fp)
	lw $t1, -12492($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label923
label924:
	lw $t0, -2532($fp)
	sw $t0, -12496($fp)
	lw $t1, -12496($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -12480($fp)
label923:
	li $t0, 0
	sw $t0, -12500($fp)
	lw $t0, -10156($fp)
	sw $t0, -12504($fp)
	li $t0, 35817
	sw $t0, -12508($fp)
	lw $t0, -12504($fp)
	lw $t1, -12508($fp)
	sub $t0, $t0, $t1
	sw $t0, -12512($fp)
	lw $t1, -12512($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label927
label927:
	lw $t0, -3000($fp)
	sw $t0, -12516($fp)
	lw $t1, -12516($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label926
label925:
	li $t0, 1
	sw $t0, -12500($fp)
label926:
	li $t0, 0
	sw $t0, -12520($fp)
	lw $t0, -12048($fp)
	sw $t0, -12524($fp)
	li $t0, 47932
	sw $t0, -12528($fp)
	lw $t0, -12524($fp)
	lw $t1, -12528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12532($fp)
	lw $t1, -12532($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label930
label930:
	li $t0, 37116
	sw $t0, -12536($fp)
	lw $t1, -12536($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label929
label928:
	li $t0, 1
	sw $t0, -12520($fp)
label929:
	addi $sp, $sp, -4
	lw $t0, -12480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12540($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -12544($fp)
	lw $t0, -612($fp)
	sw $t0, -12548($fp)
	lw $t1, -12548($fp)
	li $t2, 0
	bne $t1, $t2, label932
	j label931
label931:
	li $t0, 1
	sw $t0, -12544($fp)
label932:
	lw $t0, -12540($fp)
	lw $t1, -12544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12552($fp)
	addi $t0, $fp, -128
	sw $t0, -12556($fp)
	li $t0, 0
	sw $t0, -12560($fp)
	li $t0, 4
	lw $t1, -12560($fp)
	mul $t0, $t0, $t1
	sw $t0, -12564($fp)
	lw $t0, -12564($fp)
	lw $t1, -12556($fp)
	add $t0, $t0, $t1
	sw $t0, -12568($fp)
	lw $t0, -12568($fp)
	lw $t1, 0($t0)
	sw $t1, -12572($fp)
	lw $t0, -12552($fp)
	lw $t1, -12572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12576($fp)
	lw $t1, -12576($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label921
label920:
	addi $t0, $fp, -388
	sw $t0, -12580($fp)
	li $t0, 0
	sw $t0, -12584($fp)
	li $t0, 5094
	sw $t0, -12588($fp)
	li $t0, 53927
	sw $t0, -12592($fp)
	lw $t0, -12588($fp)
	lw $t1, -12592($fp)
	mul $t0, $t0, $t1
	sw $t0, -12596($fp)
	lw $t1, -12596($fp)
	li $t2, 0
	bne $t1, $t2, label938
	j label937
label938:
	lw $t0, -1548($fp)
	sw $t0, -12600($fp)
	lw $t1, -12600($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label937
label936:
	li $t0, 1
	sw $t0, -12584($fp)
label937:
	li $t0, 4
	lw $t1, -12584($fp)
	mul $t0, $t0, $t1
	sw $t0, -12604($fp)
	lw $t0, -12604($fp)
	lw $t1, -12580($fp)
	add $t0, $t0, $t1
	sw $t0, -12608($fp)
	lw $t0, -12608($fp)
	lw $t1, 0($t0)
	sw $t1, -12612($fp)
	lw $t1, -12612($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label933
label933:
	li $t0, 0
	sw $t0, -12616($fp)
	addi $t0, $fp, -160
	sw $t0, -12620($fp)
	lw $t0, -3600($fp)
	sw $t0, -12624($fp)
	li $t0, 4
	lw $t1, -12624($fp)
	mul $t0, $t0, $t1
	sw $t0, -12628($fp)
	lw $t0, -12628($fp)
	lw $t1, -12620($fp)
	add $t0, $t0, $t1
	sw $t0, -12632($fp)
	lw $t0, -12632($fp)
	lw $t1, 0($t0)
	sw $t1, -12636($fp)
	lw $t1, -12636($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label941
label941:
	addi $t0, $fp, -304
	sw $t0, -12640($fp)
	li $t0, 0
	sw $t0, -12644($fp)
	li $t0, 41118
	sw $t0, -12648($fp)
	lw $t0, -3252($fp)
	sw $t0, -12652($fp)
	lw $t1, -12648($fp)
	lw $t2, -12652($fp)
	bne $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -12644($fp)
label943:
	li $t0, 4
	lw $t1, -12644($fp)
	mul $t0, $t0, $t1
	sw $t0, -12656($fp)
	lw $t0, -12656($fp)
	lw $t1, -12640($fp)
	add $t0, $t0, $t1
	sw $t0, -12660($fp)
	lw $t0, -12660($fp)
	lw $t1, 0($t0)
	sw $t1, -12664($fp)
	lw $t1, -12664($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -12616($fp)
label940:
	j label935
label934:
	addi $t0, $fp, -400
	sw $t0, -12668($fp)
	addi $t0, $fp, -32
	sw $t0, -12672($fp)
	li $t0, 0
	sw $t0, -12676($fp)
	li $t0, 4
	lw $t1, -12676($fp)
	mul $t0, $t0, $t1
	sw $t0, -12680($fp)
	lw $t0, -12680($fp)
	lw $t1, -12672($fp)
	add $t0, $t0, $t1
	sw $t0, -12684($fp)
	lw $t0, -12684($fp)
	lw $t1, 0($t0)
	sw $t1, -12688($fp)
	li $t0, 4
	lw $t1, -12688($fp)
	mul $t0, $t0, $t1
	sw $t0, -12692($fp)
	lw $t0, -12692($fp)
	lw $t1, -12668($fp)
	add $t0, $t0, $t1
	sw $t0, -12696($fp)
	lw $t0, -12696($fp)
	lw $t1, 0($t0)
	sw $t1, -12700($fp)
	li $t0, 21527
	sw $t0, -12704($fp)
	li $t0, 0
	lw $t1, -12704($fp)
	sub $t0, $t0, $t1
	sw $t0, -12708($fp)
	lw $t0, -12700($fp)
	lw $t1, -12708($fp)
	mul $t0, $t0, $t1
	sw $t0, -12712($fp)
label935:
	j label919
label921:
label944:
	li $t0, 11778
	sw $t0, -12716($fp)
	lw $t0, -12716($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -12720($fp)
	lw $t1, -12720($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label946
label945:
	lw $t0, -12340($fp)
	sw $t0, -12724($fp)
	lw $ra, -4($fp)
	lw $v0, -12724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label944
label946:
	li $t0, 0
	sw $t0, -12728($fp)
	lw $t0, -1296($fp)
	sw $t0, -12732($fp)
	li $t0, 0
	lw $t1, -12732($fp)
	sub $t0, $t0, $t1
	sw $t0, -12736($fp)
	lw $t0, -3300($fp)
	sw $t0, -12740($fp)
	lw $t1, -12736($fp)
	lw $t2, -12740($fp)
	bge $t1, $t2, label947
	j label948
label947:
	li $t0, 1
	sw $t0, -12728($fp)
label948:
	lw $t0, -3708($fp)
	sw $t0, -12744($fp)
	lw $t0, -12048($fp)
	sw $t0, -12748($fp)
	lw $t0, -12744($fp)
	lw $t1, -12748($fp)
	mul $t0, $t0, $t1
	sw $t0, -12752($fp)
	li $t0, 0
	lw $t1, -12752($fp)
	sub $t0, $t0, $t1
	sw $t0, -12756($fp)
	addi $sp, $sp, -4
	lw $t0, -12728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12756($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12760($fp)
	addi $sp, $sp, 12
	lw $t0, -12048($fp)
	sw $t0, -12764($fp)
	lw $t0, -12764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12060($fp)
	sw $t0, -12768($fp)
	lw $t0, -12768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12772($fp)
	lw $t0, -2316($fp)
	sw $t0, -12776($fp)
	lw $t1, -12776($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label951
label951:
	lw $t0, -3684($fp)
	sw $t0, -12780($fp)
	li $t0, 0
	lw $t1, -12780($fp)
	sub $t0, $t0, $t1
	sw $t0, -12784($fp)
	lw $t0, -10168($fp)
	sw $t0, -12788($fp)
	lw $t0, -12060($fp)
	sw $t0, -12792($fp)
	lw $t0, -12788($fp)
	lw $t1, -12792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12796($fp)
	lw $t0, -12784($fp)
	lw $t1, -12796($fp)
	sub $t0, $t0, $t1
	sw $t0, -12800($fp)
	lw $t1, -12800($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label950
label949:
	li $t0, 1
	sw $t0, -12772($fp)
label950:
	lw $ra, -4($fp)
	lw $v0, -12772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -408($fp)
	sw $t0, -12804($fp)
	lw $t0, -12804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -12808($fp)
	li $t0, 0
	sw $t0, -12812($fp)
	li $t0, 4
	lw $t1, -12812($fp)
	mul $t0, $t0, $t1
	sw $t0, -12816($fp)
	lw $t0, -12816($fp)
	lw $t1, -12808($fp)
	add $t0, $t0, $t1
	sw $t0, -12820($fp)
	lw $t0, -12820($fp)
	lw $t1, 0($t0)
	sw $t1, -12824($fp)
	lw $t0, -12824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -12828($fp)
	li $t0, 1
	sw $t0, -12832($fp)
	li $t0, 4
	lw $t1, -12832($fp)
	mul $t0, $t0, $t1
	sw $t0, -12836($fp)
	lw $t0, -12836($fp)
	lw $t1, -12828($fp)
	add $t0, $t0, $t1
	sw $t0, -12840($fp)
	lw $t0, -12840($fp)
	lw $t1, 0($t0)
	sw $t1, -12844($fp)
	lw $t0, -12844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -12848($fp)
	lw $t0, -12848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -12852($fp)
	lw $t0, -12852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -12856($fp)
	li $t0, 0
	sw $t0, -12860($fp)
	li $t0, 4
	lw $t1, -12860($fp)
	mul $t0, $t0, $t1
	sw $t0, -12864($fp)
	lw $t0, -12864($fp)
	lw $t1, -12856($fp)
	add $t0, $t0, $t1
	sw $t0, -12868($fp)
	lw $t0, -12868($fp)
	lw $t1, 0($t0)
	sw $t1, -12872($fp)
	lw $t0, -12872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -12876($fp)
	li $t0, 1
	sw $t0, -12880($fp)
	li $t0, 4
	lw $t1, -12880($fp)
	mul $t0, $t0, $t1
	sw $t0, -12884($fp)
	lw $t0, -12884($fp)
	lw $t1, -12876($fp)
	add $t0, $t0, $t1
	sw $t0, -12888($fp)
	lw $t0, -12888($fp)
	lw $t1, 0($t0)
	sw $t1, -12892($fp)
	lw $t0, -12892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -12896($fp)
	li $t0, 2
	sw $t0, -12900($fp)
	li $t0, 4
	lw $t1, -12900($fp)
	mul $t0, $t0, $t1
	sw $t0, -12904($fp)
	lw $t0, -12904($fp)
	lw $t1, -12896($fp)
	add $t0, $t0, $t1
	sw $t0, -12908($fp)
	lw $t0, -12908($fp)
	lw $t1, 0($t0)
	sw $t1, -12912($fp)
	lw $t0, -12912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -12916($fp)
	li $t0, 3
	sw $t0, -12920($fp)
	li $t0, 4
	lw $t1, -12920($fp)
	mul $t0, $t0, $t1
	sw $t0, -12924($fp)
	lw $t0, -12924($fp)
	lw $t1, -12916($fp)
	add $t0, $t0, $t1
	sw $t0, -12928($fp)
	lw $t0, -12928($fp)
	lw $t1, 0($t0)
	sw $t1, -12932($fp)
	lw $t0, -12932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -12936($fp)
	lw $t0, -12936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -12940($fp)
	lw $t0, -12940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -12944($fp)
	lw $t0, -12944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -12948($fp)
	lw $t0, -12948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -12952($fp)
	lw $t0, -12952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -12956($fp)
	lw $t0, -12956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -12960($fp)
	lw $t0, -12960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -12964($fp)
	li $t0, 0
	sw $t0, -12968($fp)
	li $t0, 4
	lw $t1, -12968($fp)
	mul $t0, $t0, $t1
	sw $t0, -12972($fp)
	lw $t0, -12972($fp)
	lw $t1, -12964($fp)
	add $t0, $t0, $t1
	sw $t0, -12976($fp)
	lw $t0, -12976($fp)
	lw $t1, 0($t0)
	sw $t1, -12980($fp)
	lw $t0, -12980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -12984($fp)
	lw $t0, -12984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -12988($fp)
	lw $t0, -12988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -12992($fp)
	lw $t0, -12992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -12996($fp)
	lw $t0, -12996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -13000($fp)
	lw $t0, -13000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -13004($fp)
	lw $t0, -13004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -13008($fp)
	li $t0, 0
	sw $t0, -13012($fp)
	li $t0, 4
	lw $t1, -13012($fp)
	mul $t0, $t0, $t1
	sw $t0, -13016($fp)
	lw $t0, -13016($fp)
	lw $t1, -13008($fp)
	add $t0, $t0, $t1
	sw $t0, -13020($fp)
	lw $t0, -13020($fp)
	lw $t1, 0($t0)
	sw $t1, -13024($fp)
	lw $t0, -13024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -13028($fp)
	li $t0, 1
	sw $t0, -13032($fp)
	li $t0, 4
	lw $t1, -13032($fp)
	mul $t0, $t0, $t1
	sw $t0, -13036($fp)
	lw $t0, -13036($fp)
	lw $t1, -13028($fp)
	add $t0, $t0, $t1
	sw $t0, -13040($fp)
	lw $t0, -13040($fp)
	lw $t1, 0($t0)
	sw $t1, -13044($fp)
	lw $t0, -13044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -13048($fp)
	li $t0, 2
	sw $t0, -13052($fp)
	li $t0, 4
	lw $t1, -13052($fp)
	mul $t0, $t0, $t1
	sw $t0, -13056($fp)
	lw $t0, -13056($fp)
	lw $t1, -13048($fp)
	add $t0, $t0, $t1
	sw $t0, -13060($fp)
	lw $t0, -13060($fp)
	lw $t1, 0($t0)
	sw $t1, -13064($fp)
	lw $t0, -13064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -13068($fp)
	li $t0, 3
	sw $t0, -13072($fp)
	li $t0, 4
	lw $t1, -13072($fp)
	mul $t0, $t0, $t1
	sw $t0, -13076($fp)
	lw $t0, -13076($fp)
	lw $t1, -13068($fp)
	add $t0, $t0, $t1
	sw $t0, -13080($fp)
	lw $t0, -13080($fp)
	lw $t1, 0($t0)
	sw $t1, -13084($fp)
	lw $t0, -13084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -13088($fp)
	li $t0, 4
	sw $t0, -13092($fp)
	li $t0, 4
	lw $t1, -13092($fp)
	mul $t0, $t0, $t1
	sw $t0, -13096($fp)
	lw $t0, -13096($fp)
	lw $t1, -13088($fp)
	add $t0, $t0, $t1
	sw $t0, -13100($fp)
	lw $t0, -13100($fp)
	lw $t1, 0($t0)
	sw $t1, -13104($fp)
	lw $t0, -13104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -13108($fp)
	li $t0, 5
	sw $t0, -13112($fp)
	li $t0, 4
	lw $t1, -13112($fp)
	mul $t0, $t0, $t1
	sw $t0, -13116($fp)
	lw $t0, -13116($fp)
	lw $t1, -13108($fp)
	add $t0, $t0, $t1
	sw $t0, -13120($fp)
	lw $t0, -13120($fp)
	lw $t1, 0($t0)
	sw $t1, -13124($fp)
	lw $t0, -13124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -13128($fp)
	li $t0, 6
	sw $t0, -13132($fp)
	li $t0, 4
	lw $t1, -13132($fp)
	mul $t0, $t0, $t1
	sw $t0, -13136($fp)
	lw $t0, -13136($fp)
	lw $t1, -13128($fp)
	add $t0, $t0, $t1
	sw $t0, -13140($fp)
	lw $t0, -13140($fp)
	lw $t1, 0($t0)
	sw $t1, -13144($fp)
	lw $t0, -13144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -13148($fp)
	li $t0, 7
	sw $t0, -13152($fp)
	li $t0, 4
	lw $t1, -13152($fp)
	mul $t0, $t0, $t1
	sw $t0, -13156($fp)
	lw $t0, -13156($fp)
	lw $t1, -13148($fp)
	add $t0, $t0, $t1
	sw $t0, -13160($fp)
	lw $t0, -13160($fp)
	lw $t1, 0($t0)
	sw $t1, -13164($fp)
	lw $t0, -13164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -13168($fp)
	li $t0, 8
	sw $t0, -13172($fp)
	li $t0, 4
	lw $t1, -13172($fp)
	mul $t0, $t0, $t1
	sw $t0, -13176($fp)
	lw $t0, -13176($fp)
	lw $t1, -13168($fp)
	add $t0, $t0, $t1
	sw $t0, -13180($fp)
	lw $t0, -13180($fp)
	lw $t1, 0($t0)
	sw $t1, -13184($fp)
	lw $t0, -13184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -13188($fp)
	lw $t0, -13188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -13192($fp)
	li $t0, 0
	sw $t0, -13196($fp)
	li $t0, 4
	lw $t1, -13196($fp)
	mul $t0, $t0, $t1
	sw $t0, -13200($fp)
	lw $t0, -13200($fp)
	lw $t1, -13192($fp)
	add $t0, $t0, $t1
	sw $t0, -13204($fp)
	lw $t0, -13204($fp)
	lw $t1, 0($t0)
	sw $t1, -13208($fp)
	lw $t0, -13208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -13212($fp)
	li $t0, 1
	sw $t0, -13216($fp)
	li $t0, 4
	lw $t1, -13216($fp)
	mul $t0, $t0, $t1
	sw $t0, -13220($fp)
	lw $t0, -13220($fp)
	lw $t1, -13212($fp)
	add $t0, $t0, $t1
	sw $t0, -13224($fp)
	lw $t0, -13224($fp)
	lw $t1, 0($t0)
	sw $t1, -13228($fp)
	lw $t0, -13228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -13232($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -13252($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -13272($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -13292($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -13312($fp)
	li $t0, 6
	sw $t0, -13316($fp)
	li $t0, 4
	lw $t1, -13316($fp)
	mul $t0, $t0, $t1
	sw $t0, -13320($fp)
	lw $t0, -13320($fp)
	lw $t1, -13312($fp)
	add $t0, $t0, $t1
	sw $t0, -13324($fp)
	lw $t0, -13324($fp)
	lw $t1, 0($t0)
	sw $t1, -13328($fp)
	lw $t0, -13328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -13332($fp)
	li $t0, 7
	sw $t0, -13336($fp)
	li $t0, 4
	lw $t1, -13336($fp)
	mul $t0, $t0, $t1
	sw $t0, -13340($fp)
	lw $t0, -13340($fp)
	lw $t1, -13332($fp)
	add $t0, $t0, $t1
	sw $t0, -13344($fp)
	lw $t0, -13344($fp)
	lw $t1, 0($t0)
	sw $t1, -13348($fp)
	lw $t0, -13348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -13352($fp)
	li $t0, 8
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
	addi $t0, $fp, -108
	sw $t0, -13372($fp)
	li $t0, 9
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
	lw $t0, -1236($fp)
	sw $t0, -13392($fp)
	lw $t0, -13392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -13396($fp)
	lw $t0, -13396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -13400($fp)
	lw $t0, -13400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -13404($fp)
	lw $t0, -13404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -13408($fp)
	lw $t0, -13408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -13412($fp)
	lw $t0, -13412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -13416($fp)
	lw $t0, -13416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -13420($fp)
	lw $t0, -13420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -13424($fp)
	lw $t0, -13424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -13428($fp)
	lw $t0, -13428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -13432($fp)
	lw $t0, -13432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -13436($fp)
	lw $t0, -13436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13440($fp)
	li $t0, 0
	sw $t0, -13444($fp)
	li $t0, 4
	lw $t1, -13444($fp)
	mul $t0, $t0, $t1
	sw $t0, -13448($fp)
	lw $t0, -13448($fp)
	lw $t1, -13440($fp)
	add $t0, $t0, $t1
	sw $t0, -13452($fp)
	lw $t0, -13452($fp)
	lw $t1, 0($t0)
	sw $t1, -13456($fp)
	lw $t0, -13456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13460($fp)
	li $t0, 1
	sw $t0, -13464($fp)
	li $t0, 4
	lw $t1, -13464($fp)
	mul $t0, $t0, $t1
	sw $t0, -13468($fp)
	lw $t0, -13468($fp)
	lw $t1, -13460($fp)
	add $t0, $t0, $t1
	sw $t0, -13472($fp)
	lw $t0, -13472($fp)
	lw $t1, 0($t0)
	sw $t1, -13476($fp)
	lw $t0, -13476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13480($fp)
	li $t0, 2
	sw $t0, -13484($fp)
	li $t0, 4
	lw $t1, -13484($fp)
	mul $t0, $t0, $t1
	sw $t0, -13488($fp)
	lw $t0, -13488($fp)
	lw $t1, -13480($fp)
	add $t0, $t0, $t1
	sw $t0, -13492($fp)
	lw $t0, -13492($fp)
	lw $t1, 0($t0)
	sw $t1, -13496($fp)
	lw $t0, -13496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13500($fp)
	li $t0, 3
	sw $t0, -13504($fp)
	li $t0, 4
	lw $t1, -13504($fp)
	mul $t0, $t0, $t1
	sw $t0, -13508($fp)
	lw $t0, -13508($fp)
	lw $t1, -13500($fp)
	add $t0, $t0, $t1
	sw $t0, -13512($fp)
	lw $t0, -13512($fp)
	lw $t1, 0($t0)
	sw $t1, -13516($fp)
	lw $t0, -13516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13520($fp)
	li $t0, 4
	sw $t0, -13524($fp)
	li $t0, 4
	lw $t1, -13524($fp)
	mul $t0, $t0, $t1
	sw $t0, -13528($fp)
	lw $t0, -13528($fp)
	lw $t1, -13520($fp)
	add $t0, $t0, $t1
	sw $t0, -13532($fp)
	lw $t0, -13532($fp)
	lw $t1, 0($t0)
	sw $t1, -13536($fp)
	lw $t0, -13536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1500($fp)
	sw $t0, -13540($fp)
	lw $t0, -13540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1512($fp)
	sw $t0, -13544($fp)
	lw $t0, -13544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1524($fp)
	sw $t0, -13548($fp)
	lw $t0, -13548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1536($fp)
	sw $t0, -13552($fp)
	lw $t0, -13552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1548($fp)
	sw $t0, -13556($fp)
	lw $t0, -13556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1560($fp)
	sw $t0, -13560($fp)
	lw $t0, -13560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -13564($fp)
	li $t0, 0
	sw $t0, -13568($fp)
	li $t0, 4
	lw $t1, -13568($fp)
	mul $t0, $t0, $t1
	sw $t0, -13572($fp)
	lw $t0, -13572($fp)
	lw $t1, -13564($fp)
	add $t0, $t0, $t1
	sw $t0, -13576($fp)
	lw $t0, -13576($fp)
	lw $t1, 0($t0)
	sw $t1, -13580($fp)
	lw $t0, -13580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -13584($fp)
	li $t0, 1
	sw $t0, -13588($fp)
	li $t0, 4
	lw $t1, -13588($fp)
	mul $t0, $t0, $t1
	sw $t0, -13592($fp)
	lw $t0, -13592($fp)
	lw $t1, -13584($fp)
	add $t0, $t0, $t1
	sw $t0, -13596($fp)
	lw $t0, -13596($fp)
	lw $t1, 0($t0)
	sw $t1, -13600($fp)
	lw $t0, -13600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -13604($fp)
	li $t0, 2
	sw $t0, -13608($fp)
	li $t0, 4
	lw $t1, -13608($fp)
	mul $t0, $t0, $t1
	sw $t0, -13612($fp)
	lw $t0, -13612($fp)
	lw $t1, -13604($fp)
	add $t0, $t0, $t1
	sw $t0, -13616($fp)
	lw $t0, -13616($fp)
	lw $t1, 0($t0)
	sw $t1, -13620($fp)
	lw $t0, -13620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1644($fp)
	sw $t0, -13624($fp)
	lw $t0, -13624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1656($fp)
	sw $t0, -13628($fp)
	lw $t0, -13628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1668($fp)
	sw $t0, -13632($fp)
	lw $t0, -13632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1680($fp)
	sw $t0, -13636($fp)
	lw $t0, -13636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1692($fp)
	sw $t0, -13640($fp)
	lw $t0, -13640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -13644($fp)
	li $t0, 0
	sw $t0, -13648($fp)
	li $t0, 4
	lw $t1, -13648($fp)
	mul $t0, $t0, $t1
	sw $t0, -13652($fp)
	lw $t0, -13652($fp)
	lw $t1, -13644($fp)
	add $t0, $t0, $t1
	sw $t0, -13656($fp)
	lw $t0, -13656($fp)
	lw $t1, 0($t0)
	sw $t1, -13660($fp)
	lw $t0, -13660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -13664($fp)
	li $t0, 1
	sw $t0, -13668($fp)
	li $t0, 4
	lw $t1, -13668($fp)
	mul $t0, $t0, $t1
	sw $t0, -13672($fp)
	lw $t0, -13672($fp)
	lw $t1, -13664($fp)
	add $t0, $t0, $t1
	sw $t0, -13676($fp)
	lw $t0, -13676($fp)
	lw $t1, 0($t0)
	sw $t1, -13680($fp)
	lw $t0, -13680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -13684($fp)
	li $t0, 2
	sw $t0, -13688($fp)
	li $t0, 4
	lw $t1, -13688($fp)
	mul $t0, $t0, $t1
	sw $t0, -13692($fp)
	lw $t0, -13692($fp)
	lw $t1, -13684($fp)
	add $t0, $t0, $t1
	sw $t0, -13696($fp)
	lw $t0, -13696($fp)
	lw $t1, 0($t0)
	sw $t1, -13700($fp)
	lw $t0, -13700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -13704($fp)
	li $t0, 3
	sw $t0, -13708($fp)
	li $t0, 4
	lw $t1, -13708($fp)
	mul $t0, $t0, $t1
	sw $t0, -13712($fp)
	lw $t0, -13712($fp)
	lw $t1, -13704($fp)
	add $t0, $t0, $t1
	sw $t0, -13716($fp)
	lw $t0, -13716($fp)
	lw $t1, 0($t0)
	sw $t1, -13720($fp)
	lw $t0, -13720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -13724($fp)
	li $t0, 4
	sw $t0, -13728($fp)
	li $t0, 4
	lw $t1, -13728($fp)
	mul $t0, $t0, $t1
	sw $t0, -13732($fp)
	lw $t0, -13732($fp)
	lw $t1, -13724($fp)
	add $t0, $t0, $t1
	sw $t0, -13736($fp)
	lw $t0, -13736($fp)
	lw $t1, 0($t0)
	sw $t1, -13740($fp)
	lw $t0, -13740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1824($fp)
	sw $t0, -13744($fp)
	lw $t0, -13744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -13748($fp)
	li $t0, 0
	sw $t0, -13752($fp)
	li $t0, 4
	lw $t1, -13752($fp)
	mul $t0, $t0, $t1
	sw $t0, -13756($fp)
	lw $t0, -13756($fp)
	lw $t1, -13748($fp)
	add $t0, $t0, $t1
	sw $t0, -13760($fp)
	lw $t0, -13760($fp)
	lw $t1, 0($t0)
	sw $t1, -13764($fp)
	lw $t0, -13764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -13768($fp)
	li $t0, 1
	sw $t0, -13772($fp)
	li $t0, 4
	lw $t1, -13772($fp)
	mul $t0, $t0, $t1
	sw $t0, -13776($fp)
	lw $t0, -13776($fp)
	lw $t1, -13768($fp)
	add $t0, $t0, $t1
	sw $t0, -13780($fp)
	lw $t0, -13780($fp)
	lw $t1, 0($t0)
	sw $t1, -13784($fp)
	lw $t0, -13784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -13788($fp)
	li $t0, 2
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
	lw $t0, -13804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -13808($fp)
	li $t0, 3
	sw $t0, -13812($fp)
	li $t0, 4
	lw $t1, -13812($fp)
	mul $t0, $t0, $t1
	sw $t0, -13816($fp)
	lw $t0, -13816($fp)
	lw $t1, -13808($fp)
	add $t0, $t0, $t1
	sw $t0, -13820($fp)
	lw $t0, -13820($fp)
	lw $t1, 0($t0)
	sw $t1, -13824($fp)
	lw $t0, -13824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -13828($fp)
	li $t0, 4
	sw $t0, -13832($fp)
	li $t0, 4
	lw $t1, -13832($fp)
	mul $t0, $t0, $t1
	sw $t0, -13836($fp)
	lw $t0, -13836($fp)
	lw $t1, -13828($fp)
	add $t0, $t0, $t1
	sw $t0, -13840($fp)
	lw $t0, -13840($fp)
	lw $t1, 0($t0)
	sw $t1, -13844($fp)
	lw $t0, -13844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -13848($fp)
	li $t0, 5
	sw $t0, -13852($fp)
	li $t0, 4
	lw $t1, -13852($fp)
	mul $t0, $t0, $t1
	sw $t0, -13856($fp)
	lw $t0, -13856($fp)
	lw $t1, -13848($fp)
	add $t0, $t0, $t1
	sw $t0, -13860($fp)
	lw $t0, -13860($fp)
	lw $t1, 0($t0)
	sw $t1, -13864($fp)
	lw $t0, -13864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -13868($fp)
	li $t0, 6
	sw $t0, -13872($fp)
	li $t0, 4
	lw $t1, -13872($fp)
	mul $t0, $t0, $t1
	sw $t0, -13876($fp)
	lw $t0, -13876($fp)
	lw $t1, -13868($fp)
	add $t0, $t0, $t1
	sw $t0, -13880($fp)
	lw $t0, -13880($fp)
	lw $t1, 0($t0)
	sw $t1, -13884($fp)
	lw $t0, -13884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -13888($fp)
	li $t0, 7
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
	addi $t0, $fp, -196
	sw $t0, -13908($fp)
	li $t0, 8
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
	addi $t0, $fp, -236
	sw $t0, -13928($fp)
	li $t0, 0
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
	addi $t0, $fp, -236
	sw $t0, -13948($fp)
	li $t0, 1
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
	addi $t0, $fp, -236
	sw $t0, -13968($fp)
	li $t0, 2
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
	addi $t0, $fp, -236
	sw $t0, -13988($fp)
	li $t0, 3
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
	addi $t0, $fp, -236
	sw $t0, -14008($fp)
	li $t0, 4
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
	addi $t0, $fp, -236
	sw $t0, -14028($fp)
	li $t0, 5
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
	addi $t0, $fp, -236
	sw $t0, -14048($fp)
	li $t0, 6
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
	addi $t0, $fp, -236
	sw $t0, -14068($fp)
	li $t0, 7
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
	addi $t0, $fp, -236
	sw $t0, -14088($fp)
	li $t0, 8
	sw $t0, -14092($fp)
	li $t0, 4
	lw $t1, -14092($fp)
	mul $t0, $t0, $t1
	sw $t0, -14096($fp)
	lw $t0, -14096($fp)
	lw $t1, -14088($fp)
	add $t0, $t0, $t1
	sw $t0, -14100($fp)
	lw $t0, -14100($fp)
	lw $t1, 0($t0)
	sw $t1, -14104($fp)
	lw $t0, -14104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -14108($fp)
	li $t0, 9
	sw $t0, -14112($fp)
	li $t0, 4
	lw $t1, -14112($fp)
	mul $t0, $t0, $t1
	sw $t0, -14116($fp)
	lw $t0, -14116($fp)
	lw $t1, -14108($fp)
	add $t0, $t0, $t1
	sw $t0, -14120($fp)
	lw $t0, -14120($fp)
	lw $t1, 0($t0)
	sw $t1, -14124($fp)
	lw $t0, -14124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2292($fp)
	sw $t0, -14128($fp)
	lw $t0, -14128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2304($fp)
	sw $t0, -14132($fp)
	lw $t0, -14132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2316($fp)
	sw $t0, -14136($fp)
	lw $t0, -14136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -14140($fp)
	li $t0, 0
	sw $t0, -14144($fp)
	li $t0, 4
	lw $t1, -14144($fp)
	mul $t0, $t0, $t1
	sw $t0, -14148($fp)
	lw $t0, -14148($fp)
	lw $t1, -14140($fp)
	add $t0, $t0, $t1
	sw $t0, -14152($fp)
	lw $t0, -14152($fp)
	lw $t1, 0($t0)
	sw $t1, -14156($fp)
	lw $t0, -14156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -14160($fp)
	li $t0, 1
	sw $t0, -14164($fp)
	li $t0, 4
	lw $t1, -14164($fp)
	mul $t0, $t0, $t1
	sw $t0, -14168($fp)
	lw $t0, -14168($fp)
	lw $t1, -14160($fp)
	add $t0, $t0, $t1
	sw $t0, -14172($fp)
	lw $t0, -14172($fp)
	lw $t1, 0($t0)
	sw $t1, -14176($fp)
	lw $t0, -14176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -14180($fp)
	li $t0, 2
	sw $t0, -14184($fp)
	li $t0, 4
	lw $t1, -14184($fp)
	mul $t0, $t0, $t1
	sw $t0, -14188($fp)
	lw $t0, -14188($fp)
	lw $t1, -14180($fp)
	add $t0, $t0, $t1
	sw $t0, -14192($fp)
	lw $t0, -14192($fp)
	lw $t1, 0($t0)
	sw $t1, -14196($fp)
	lw $t0, -14196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -14200($fp)
	li $t0, 3
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
	addi $t0, $fp, -268
	sw $t0, -14220($fp)
	li $t0, 4
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
	addi $t0, $fp, -268
	sw $t0, -14240($fp)
	li $t0, 5
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
	addi $t0, $fp, -268
	sw $t0, -14260($fp)
	li $t0, 6
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
	addi $t0, $fp, -268
	sw $t0, -14280($fp)
	li $t0, 7
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
	lw $t0, -2520($fp)
	sw $t0, -14300($fp)
	lw $t0, -14300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2532($fp)
	sw $t0, -14304($fp)
	lw $t0, -14304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -14308($fp)
	li $t0, 0
	sw $t0, -14312($fp)
	li $t0, 4
	lw $t1, -14312($fp)
	mul $t0, $t0, $t1
	sw $t0, -14316($fp)
	lw $t0, -14316($fp)
	lw $t1, -14308($fp)
	add $t0, $t0, $t1
	sw $t0, -14320($fp)
	lw $t0, -14320($fp)
	lw $t1, 0($t0)
	sw $t1, -14324($fp)
	lw $t0, -14324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -14328($fp)
	li $t0, 1
	sw $t0, -14332($fp)
	li $t0, 4
	lw $t1, -14332($fp)
	mul $t0, $t0, $t1
	sw $t0, -14336($fp)
	lw $t0, -14336($fp)
	lw $t1, -14328($fp)
	add $t0, $t0, $t1
	sw $t0, -14340($fp)
	lw $t0, -14340($fp)
	lw $t1, 0($t0)
	sw $t1, -14344($fp)
	lw $t0, -14344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2592($fp)
	sw $t0, -14348($fp)
	lw $t0, -14348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2604($fp)
	sw $t0, -14352($fp)
	lw $t0, -14352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2616($fp)
	sw $t0, -14356($fp)
	lw $t0, -14356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2628($fp)
	sw $t0, -14360($fp)
	lw $t0, -14360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2640($fp)
	sw $t0, -14364($fp)
	lw $t0, -14364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2652($fp)
	sw $t0, -14368($fp)
	lw $t0, -14368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2664($fp)
	sw $t0, -14372($fp)
	lw $t0, -14372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2676($fp)
	sw $t0, -14376($fp)
	lw $t0, -14376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2688($fp)
	sw $t0, -14380($fp)
	lw $t0, -14380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2700($fp)
	sw $t0, -14384($fp)
	lw $t0, -14384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2712($fp)
	sw $t0, -14388($fp)
	lw $t0, -14388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2724($fp)
	sw $t0, -14392($fp)
	lw $t0, -14392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2736($fp)
	sw $t0, -14396($fp)
	lw $t0, -14396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2748($fp)
	sw $t0, -14400($fp)
	lw $t0, -14400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2760($fp)
	sw $t0, -14404($fp)
	lw $t0, -14404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -304
	sw $t0, -14408($fp)
	li $t0, 0
	sw $t0, -14412($fp)
	li $t0, 4
	lw $t1, -14412($fp)
	mul $t0, $t0, $t1
	sw $t0, -14416($fp)
	lw $t0, -14416($fp)
	lw $t1, -14408($fp)
	add $t0, $t0, $t1
	sw $t0, -14420($fp)
	lw $t0, -14420($fp)
	lw $t1, 0($t0)
	sw $t1, -14424($fp)
	lw $t0, -14424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -304
	sw $t0, -14428($fp)
	li $t0, 1
	sw $t0, -14432($fp)
	li $t0, 4
	lw $t1, -14432($fp)
	mul $t0, $t0, $t1
	sw $t0, -14436($fp)
	lw $t0, -14436($fp)
	lw $t1, -14428($fp)
	add $t0, $t0, $t1
	sw $t0, -14440($fp)
	lw $t0, -14440($fp)
	lw $t1, 0($t0)
	sw $t1, -14444($fp)
	lw $t0, -14444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -304
	sw $t0, -14448($fp)
	li $t0, 2
	sw $t0, -14452($fp)
	li $t0, 4
	lw $t1, -14452($fp)
	mul $t0, $t0, $t1
	sw $t0, -14456($fp)
	lw $t0, -14456($fp)
	lw $t1, -14448($fp)
	add $t0, $t0, $t1
	sw $t0, -14460($fp)
	lw $t0, -14460($fp)
	lw $t1, 0($t0)
	sw $t1, -14464($fp)
	lw $t0, -14464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -304
	sw $t0, -14468($fp)
	li $t0, 3
	sw $t0, -14472($fp)
	li $t0, 4
	lw $t1, -14472($fp)
	mul $t0, $t0, $t1
	sw $t0, -14476($fp)
	lw $t0, -14476($fp)
	lw $t1, -14468($fp)
	add $t0, $t0, $t1
	sw $t0, -14480($fp)
	lw $t0, -14480($fp)
	lw $t1, 0($t0)
	sw $t1, -14484($fp)
	lw $t0, -14484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -304
	sw $t0, -14488($fp)
	li $t0, 4
	sw $t0, -14492($fp)
	li $t0, 4
	lw $t1, -14492($fp)
	mul $t0, $t0, $t1
	sw $t0, -14496($fp)
	lw $t0, -14496($fp)
	lw $t1, -14488($fp)
	add $t0, $t0, $t1
	sw $t0, -14500($fp)
	lw $t0, -14500($fp)
	lw $t1, 0($t0)
	sw $t1, -14504($fp)
	lw $t0, -14504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -304
	sw $t0, -14508($fp)
	li $t0, 5
	sw $t0, -14512($fp)
	li $t0, 4
	lw $t1, -14512($fp)
	mul $t0, $t0, $t1
	sw $t0, -14516($fp)
	lw $t0, -14516($fp)
	lw $t1, -14508($fp)
	add $t0, $t0, $t1
	sw $t0, -14520($fp)
	lw $t0, -14520($fp)
	lw $t1, 0($t0)
	sw $t1, -14524($fp)
	lw $t0, -14524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -304
	sw $t0, -14528($fp)
	li $t0, 6
	sw $t0, -14532($fp)
	li $t0, 4
	lw $t1, -14532($fp)
	mul $t0, $t0, $t1
	sw $t0, -14536($fp)
	lw $t0, -14536($fp)
	lw $t1, -14528($fp)
	add $t0, $t0, $t1
	sw $t0, -14540($fp)
	lw $t0, -14540($fp)
	lw $t1, 0($t0)
	sw $t1, -14544($fp)
	lw $t0, -14544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2940($fp)
	sw $t0, -14548($fp)
	lw $t0, -14548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2952($fp)
	sw $t0, -14552($fp)
	lw $t0, -14552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2964($fp)
	sw $t0, -14556($fp)
	lw $t0, -14556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2976($fp)
	sw $t0, -14560($fp)
	lw $t0, -14560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2988($fp)
	sw $t0, -14564($fp)
	lw $t0, -14564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3000($fp)
	sw $t0, -14568($fp)
	lw $t0, -14568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14572($fp)
	li $t0, 0
	sw $t0, -14576($fp)
	li $t0, 4
	lw $t1, -14576($fp)
	mul $t0, $t0, $t1
	sw $t0, -14580($fp)
	lw $t0, -14580($fp)
	lw $t1, -14572($fp)
	add $t0, $t0, $t1
	sw $t0, -14584($fp)
	lw $t0, -14584($fp)
	lw $t1, 0($t0)
	sw $t1, -14588($fp)
	lw $t0, -14588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14592($fp)
	li $t0, 1
	sw $t0, -14596($fp)
	li $t0, 4
	lw $t1, -14596($fp)
	mul $t0, $t0, $t1
	sw $t0, -14600($fp)
	lw $t0, -14600($fp)
	lw $t1, -14592($fp)
	add $t0, $t0, $t1
	sw $t0, -14604($fp)
	lw $t0, -14604($fp)
	lw $t1, 0($t0)
	sw $t1, -14608($fp)
	lw $t0, -14608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14612($fp)
	li $t0, 2
	sw $t0, -14616($fp)
	li $t0, 4
	lw $t1, -14616($fp)
	mul $t0, $t0, $t1
	sw $t0, -14620($fp)
	lw $t0, -14620($fp)
	lw $t1, -14612($fp)
	add $t0, $t0, $t1
	sw $t0, -14624($fp)
	lw $t0, -14624($fp)
	lw $t1, 0($t0)
	sw $t1, -14628($fp)
	lw $t0, -14628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14632($fp)
	li $t0, 3
	sw $t0, -14636($fp)
	li $t0, 4
	lw $t1, -14636($fp)
	mul $t0, $t0, $t1
	sw $t0, -14640($fp)
	lw $t0, -14640($fp)
	lw $t1, -14632($fp)
	add $t0, $t0, $t1
	sw $t0, -14644($fp)
	lw $t0, -14644($fp)
	lw $t1, 0($t0)
	sw $t1, -14648($fp)
	lw $t0, -14648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14652($fp)
	li $t0, 4
	sw $t0, -14656($fp)
	li $t0, 4
	lw $t1, -14656($fp)
	mul $t0, $t0, $t1
	sw $t0, -14660($fp)
	lw $t0, -14660($fp)
	lw $t1, -14652($fp)
	add $t0, $t0, $t1
	sw $t0, -14664($fp)
	lw $t0, -14664($fp)
	lw $t1, 0($t0)
	sw $t1, -14668($fp)
	lw $t0, -14668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14672($fp)
	li $t0, 5
	sw $t0, -14676($fp)
	li $t0, 4
	lw $t1, -14676($fp)
	mul $t0, $t0, $t1
	sw $t0, -14680($fp)
	lw $t0, -14680($fp)
	lw $t1, -14672($fp)
	add $t0, $t0, $t1
	sw $t0, -14684($fp)
	lw $t0, -14684($fp)
	lw $t1, 0($t0)
	sw $t1, -14688($fp)
	lw $t0, -14688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14692($fp)
	li $t0, 6
	sw $t0, -14696($fp)
	li $t0, 4
	lw $t1, -14696($fp)
	mul $t0, $t0, $t1
	sw $t0, -14700($fp)
	lw $t0, -14700($fp)
	lw $t1, -14692($fp)
	add $t0, $t0, $t1
	sw $t0, -14704($fp)
	lw $t0, -14704($fp)
	lw $t1, 0($t0)
	sw $t1, -14708($fp)
	lw $t0, -14708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14712($fp)
	li $t0, 7
	sw $t0, -14716($fp)
	li $t0, 4
	lw $t1, -14716($fp)
	mul $t0, $t0, $t1
	sw $t0, -14720($fp)
	lw $t0, -14720($fp)
	lw $t1, -14712($fp)
	add $t0, $t0, $t1
	sw $t0, -14724($fp)
	lw $t0, -14724($fp)
	lw $t1, 0($t0)
	sw $t1, -14728($fp)
	lw $t0, -14728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14732($fp)
	li $t0, 8
	sw $t0, -14736($fp)
	li $t0, 4
	lw $t1, -14736($fp)
	mul $t0, $t0, $t1
	sw $t0, -14740($fp)
	lw $t0, -14740($fp)
	lw $t1, -14732($fp)
	add $t0, $t0, $t1
	sw $t0, -14744($fp)
	lw $t0, -14744($fp)
	lw $t1, 0($t0)
	sw $t1, -14748($fp)
	lw $t0, -14748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -14752($fp)
	li $t0, 9
	sw $t0, -14756($fp)
	li $t0, 4
	lw $t1, -14756($fp)
	mul $t0, $t0, $t1
	sw $t0, -14760($fp)
	lw $t0, -14760($fp)
	lw $t1, -14752($fp)
	add $t0, $t0, $t1
	sw $t0, -14764($fp)
	lw $t0, -14764($fp)
	lw $t1, 0($t0)
	sw $t1, -14768($fp)
	lw $t0, -14768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3252($fp)
	sw $t0, -14772($fp)
	lw $t0, -14772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3264($fp)
	sw $t0, -14776($fp)
	lw $t0, -14776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3276($fp)
	sw $t0, -14780($fp)
	lw $t0, -14780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3288($fp)
	sw $t0, -14784($fp)
	lw $t0, -14784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3300($fp)
	sw $t0, -14788($fp)
	lw $t0, -14788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3312($fp)
	sw $t0, -14792($fp)
	lw $t0, -14792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
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
	addi $t0, $fp, -360
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
	addi $t0, $fp, -360
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
	addi $t0, $fp, -360
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
	lw $t0, -3420($fp)
	sw $t0, -14876($fp)
	lw $t0, -14876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -14880($fp)
	li $t0, 0
	sw $t0, -14884($fp)
	li $t0, 4
	lw $t1, -14884($fp)
	mul $t0, $t0, $t1
	sw $t0, -14888($fp)
	lw $t0, -14888($fp)
	lw $t1, -14880($fp)
	add $t0, $t0, $t1
	sw $t0, -14892($fp)
	lw $t0, -14892($fp)
	lw $t1, 0($t0)
	sw $t1, -14896($fp)
	lw $t0, -14896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -14900($fp)
	li $t0, 1
	sw $t0, -14904($fp)
	li $t0, 4
	lw $t1, -14904($fp)
	mul $t0, $t0, $t1
	sw $t0, -14908($fp)
	lw $t0, -14908($fp)
	lw $t1, -14900($fp)
	add $t0, $t0, $t1
	sw $t0, -14912($fp)
	lw $t0, -14912($fp)
	lw $t1, 0($t0)
	sw $t1, -14916($fp)
	lw $t0, -14916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -14920($fp)
	li $t0, 2
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
	addi $t0, $fp, -388
	sw $t0, -14940($fp)
	li $t0, 3
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
	addi $t0, $fp, -388
	sw $t0, -14960($fp)
	li $t0, 4
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
	addi $t0, $fp, -388
	sw $t0, -14980($fp)
	li $t0, 5
	sw $t0, -14984($fp)
	li $t0, 4
	lw $t1, -14984($fp)
	mul $t0, $t0, $t1
	sw $t0, -14988($fp)
	lw $t0, -14988($fp)
	lw $t1, -14980($fp)
	add $t0, $t0, $t1
	sw $t0, -14992($fp)
	lw $t0, -14992($fp)
	lw $t1, 0($t0)
	sw $t1, -14996($fp)
	lw $t0, -14996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -15000($fp)
	li $t0, 6
	sw $t0, -15004($fp)
	li $t0, 4
	lw $t1, -15004($fp)
	mul $t0, $t0, $t1
	sw $t0, -15008($fp)
	lw $t0, -15008($fp)
	lw $t1, -15000($fp)
	add $t0, $t0, $t1
	sw $t0, -15012($fp)
	lw $t0, -15012($fp)
	lw $t1, 0($t0)
	sw $t1, -15016($fp)
	lw $t0, -15016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3600($fp)
	sw $t0, -15020($fp)
	lw $t0, -15020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -15024($fp)
	li $t0, 0
	sw $t0, -15028($fp)
	li $t0, 4
	lw $t1, -15028($fp)
	mul $t0, $t0, $t1
	sw $t0, -15032($fp)
	lw $t0, -15032($fp)
	lw $t1, -15024($fp)
	add $t0, $t0, $t1
	sw $t0, -15036($fp)
	lw $t0, -15036($fp)
	lw $t1, 0($t0)
	sw $t1, -15040($fp)
	lw $t0, -15040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -15044($fp)
	li $t0, 1
	sw $t0, -15048($fp)
	li $t0, 4
	lw $t1, -15048($fp)
	mul $t0, $t0, $t1
	sw $t0, -15052($fp)
	lw $t0, -15052($fp)
	lw $t1, -15044($fp)
	add $t0, $t0, $t1
	sw $t0, -15056($fp)
	lw $t0, -15056($fp)
	lw $t1, 0($t0)
	sw $t1, -15060($fp)
	lw $t0, -15060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -15064($fp)
	li $t0, 2
	sw $t0, -15068($fp)
	li $t0, 4
	lw $t1, -15068($fp)
	mul $t0, $t0, $t1
	sw $t0, -15072($fp)
	lw $t0, -15072($fp)
	lw $t1, -15064($fp)
	add $t0, $t0, $t1
	sw $t0, -15076($fp)
	lw $t0, -15076($fp)
	lw $t1, 0($t0)
	sw $t1, -15080($fp)
	lw $t0, -15080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3684($fp)
	sw $t0, -15084($fp)
	lw $t0, -15084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3696($fp)
	sw $t0, -15088($fp)
	lw $t0, -15088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3708($fp)
	sw $t0, -15092($fp)
	lw $t0, -15092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -15096($fp)
	lw $t0, -3696($fp)
	sw $t0, -15100($fp)
	lw $t0, -15096($fp)
	lw $t1, -15100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15104($fp)
	lw $t0, -2292($fp)
	sw $t0, -15108($fp)
	lw $t0, -3708($fp)
	sw $t0, -15112($fp)
	lw $t0, -15108($fp)
	lw $t1, -15112($fp)
	mul $t0, $t0, $t1
	sw $t0, -15116($fp)
	lw $t0, -15104($fp)
	lw $t1, -15116($fp)
	add $t0, $t0, $t1
	sw $t0, -15120($fp)
	lw $t0, -15120($fp)
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	sw $t0, -15124($fp)
	lw $ra, -4($fp)
	lw $v0, -15124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3428
	li $t0, 44522
	sw $t0, -128($fp)
	addi $t0, $fp, -20
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
	li $t0, 27041
	sw $t0, -152($fp)
	addi $t0, $fp, -20
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
	li $t0, 62804
	sw $t0, -176($fp)
	addi $t0, $fp, -20
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
	li $t0, 27601
	sw $t0, -200($fp)
	addi $t0, $fp, -20
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
	li $t0, 62552
	sw $t0, -224($fp)
	addi $t0, $fp, -36
	sw $t0, -228($fp)
	li $t0, 0
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
	li $t0, 6590
	sw $t0, -248($fp)
	addi $t0, $fp, -36
	sw $t0, -252($fp)
	li $t0, 1
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
	li $t0, 9764
	sw $t0, -272($fp)
	addi $t0, $fp, -36
	sw $t0, -276($fp)
	li $t0, 2
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
	li $t0, 65099
	sw $t0, -296($fp)
	addi $t0, $fp, -36
	sw $t0, -300($fp)
	li $t0, 3
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
	li $t0, 17739
	sw $t0, -320($fp)
	addi $t0, $fp, -60
	sw $t0, -324($fp)
	li $t0, 0
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
	li $t0, 3467
	sw $t0, -344($fp)
	addi $t0, $fp, -60
	sw $t0, -348($fp)
	li $t0, 1
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
	li $t0, 5291
	sw $t0, -368($fp)
	addi $t0, $fp, -60
	sw $t0, -372($fp)
	li $t0, 2
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
	li $t0, 43561
	sw $t0, -392($fp)
	addi $t0, $fp, -60
	sw $t0, -396($fp)
	li $t0, 3
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
	li $t0, 13252
	sw $t0, -416($fp)
	addi $t0, $fp, -60
	sw $t0, -420($fp)
	li $t0, 4
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -420($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -416($fp)
	lw $t1, -432($fp)
	sw $t0, 0($t1)
	lw $t0, -432($fp)
	lw $t1, 0($t0)
	sw $t1, -436($fp)
	li $t0, 61205
	sw $t0, -440($fp)
	addi $t0, $fp, -60
	sw $t0, -444($fp)
	li $t0, 5
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -444($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -440($fp)
	lw $t1, -456($fp)
	sw $t0, 0($t1)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	li $t0, 21936
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 41880
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 53500
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 61763
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 8199
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 35896
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 33343
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 44016
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 3068
	sw $t0, -560($fp)
	addi $t0, $fp, -96
	sw $t0, -564($fp)
	li $t0, 0
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
	li $t0, 47773
	sw $t0, -584($fp)
	addi $t0, $fp, -96
	sw $t0, -588($fp)
	li $t0, 1
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
	li $t0, 49110
	sw $t0, -608($fp)
	addi $t0, $fp, -96
	sw $t0, -612($fp)
	li $t0, 2
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
	li $t0, 56995
	sw $t0, -632($fp)
	addi $t0, $fp, -96
	sw $t0, -636($fp)
	li $t0, 3
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
	li $t0, 23355
	sw $t0, -656($fp)
	addi $t0, $fp, -96
	sw $t0, -660($fp)
	li $t0, 4
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
	li $t0, 5988
	sw $t0, -680($fp)
	addi $t0, $fp, -96
	sw $t0, -684($fp)
	li $t0, 5
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
	li $t0, 7826
	sw $t0, -704($fp)
	addi $t0, $fp, -96
	sw $t0, -708($fp)
	li $t0, 6
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
	li $t0, 44883
	sw $t0, -728($fp)
	addi $t0, $fp, -96
	sw $t0, -732($fp)
	li $t0, 7
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
	li $t0, 17767
	sw $t0, -752($fp)
	addi $t0, $fp, -96
	sw $t0, -756($fp)
	li $t0, 8
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
	li $t0, 52348
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 6388
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 15035
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 14413
	sw $t0, -812($fp)
	addi $t0, $fp, -124
	sw $t0, -816($fp)
	li $t0, 0
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
	li $t0, 3404
	sw $t0, -836($fp)
	addi $t0, $fp, -124
	sw $t0, -840($fp)
	li $t0, 1
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
	li $t0, 21626
	sw $t0, -860($fp)
	addi $t0, $fp, -124
	sw $t0, -864($fp)
	li $t0, 2
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
	li $t0, 24177
	sw $t0, -884($fp)
	addi $t0, $fp, -124
	sw $t0, -888($fp)
	li $t0, 3
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
	li $t0, 2967
	sw $t0, -908($fp)
	addi $t0, $fp, -124
	sw $t0, -912($fp)
	li $t0, 4
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
	li $t0, 39365
	sw $t0, -932($fp)
	addi $t0, $fp, -124
	sw $t0, -936($fp)
	li $t0, 5
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
	li $t0, 27644
	sw $t0, -956($fp)
	addi $t0, $fp, -124
	sw $t0, -960($fp)
	li $t0, 6
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
	li $t0, 8258
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	addi $t0, $fp, -20
	sw $t0, -992($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -1012($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -1032($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -1052($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -1072($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -1092($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -1112($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -1132($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -1152($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -1172($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -1192($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -1212($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -1232($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -1252($fp)
	li $t0, 5
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
	lw $t0, -468($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
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
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1324($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -1344($fp)
	li $t0, 2
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
	addi $t0, $fp, -96
	sw $t0, -1364($fp)
	li $t0, 3
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
	addi $t0, $fp, -96
	sw $t0, -1384($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -1404($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -1424($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -1444($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -1464($fp)
	li $t0, 8
	sw $t0, -1468($fp)
	li $t0, 4
	lw $t1, -1468($fp)
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	lw $t1, 0($t0)
	sw $t1, -1480($fp)
	lw $t0, -1480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
	sw $t0, -1616($fp)
	li $t0, 6
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
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1640($fp)
	lw $t0, 8($fp)
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label952
label952:
	li $t0, 1
	sw $t0, -1640($fp)
label953:
	lw $t0, -480($fp)
	sw $t0, -1648($fp)
	lw $t0, -1640($fp)
	lw $t1, -1648($fp)
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 57428
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label956
	j label954
label956:
	lw $t0, -480($fp)
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label954
	j label955
label954:
	li $t0, 1
	sw $t0, -1656($fp)
label955:
	li $t0, 0
	sw $t0, -1668($fp)
	addi $t0, $fp, -20
	sw $t0, -1672($fp)
	li $t0, 1
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
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label959
label959:
	lw $t0, -492($fp)
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label958
label957:
	li $t0, 1
	sw $t0, -1668($fp)
label958:
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1696($fp)
	addi $sp, $sp, 12
	lw $t0, -468($fp)
	sw $t0, -1700($fp)
	li $t0, 3928
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -480($fp)
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	add $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -804($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	lw $t0, -540($fp)
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label961
label963:
	li $t0, 17390
	sw $t0, -1736($fp)
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label961
label962:
	li $t0, 40897
	sw $t0, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label960
	j label961
label960:
	li $t0, 1
	sw $t0, -1728($fp)
label961:
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1744($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -36
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	li $t0, 4
	lw $t1, -1752($fp)
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, 0($t0)
	sw $t1, -1764($fp)
	lw $t0, -1744($fp)
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $ra, -4($fp)
	lw $v0, -1768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -96
	sw $t0, -1772($fp)
	li $t0, 0
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
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label964
	j label965
label964:
	li $t0, 3921
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 30856
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 0
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	lw $t0, -1808($fp)
	sw $t0, -1824($fp)
	lw $t0, -492($fp)
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, 12($fp)
	sw $t0, -1836($fp)
	lw $t1, -1832($fp)
	lw $t2, -1836($fp)
	ble $t1, $t2, label970
	j label971
label970:
	li $t0, 1
	sw $t0, -1820($fp)
label971:
	li $t0, 22316
	sw $t0, -1840($fp)
	lw $t0, -780($fp)
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	li $t0, 8953
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	sub $t0, $t0, $t1
	sw $t0, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 51133
	sw $t0, -1864($fp)
	li $t0, 53031
	sw $t0, -1868($fp)
	lw $t0, -1864($fp)
	lw $t1, -1868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1872($fp)
	lw $t0, -552($fp)
	sw $t0, -1876($fp)
	lw $t1, -1872($fp)
	lw $t2, -1876($fp)
	blt $t1, $t2, label972
	j label973
label972:
	li $t0, 1
	sw $t0, -1860($fp)
label973:
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1880($fp)
	addi $sp, $sp, 16
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label968
label969:
	li $t0, 59020
	sw $t0, -1884($fp)
	lw $t0, -492($fp)
	sw $t0, -1888($fp)
	lw $t0, -1884($fp)
	lw $t1, -1888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1892($fp)
	lw $t0, -780($fp)
	sw $t0, -1896($fp)
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	sub $t0, $t0, $t1
	sw $t0, -1900($fp)
	addi $t0, $fp, -124
	sw $t0, -1904($fp)
	lw $t0, -1796($fp)
	sw $t0, -1908($fp)
	li $t0, 4
	lw $t1, -1908($fp)
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	lw $t0, -1900($fp)
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label967
	j label968
label967:
	li $t0, 1
	sw $t0, -1816($fp)
label968:
	lw $t0, -780($fp)
	sw $t0, -1928($fp)
	lw $t0, -480($fp)
	sw $t0, -1932($fp)
	li $t0, 30142
	sw $t0, -1936($fp)
	lw $t0, 20($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	lw $t0, -552($fp)
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label975
label976:
	lw $t0, -528($fp)
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label975
label974:
	li $t0, 1
	sw $t0, -1948($fp)
label975:
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1960($fp)
	addi $sp, $sp, 12
	lw $t0, -1936($fp)
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -528($fp)
	sw $t0, -1968($fp)
	li $t0, 0
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -480($fp)
	sw $t0, -1976($fp)
	li $t0, 0
	lw $t1, -1976($fp)
	sub $t0, $t0, $t1
	sw $t0, -1980($fp)
	li $t0, 0
	lw $t1, -1980($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -552($fp)
	sw $t0, -1988($fp)
	li $t0, 53836
	sw $t0, -1992($fp)
	lw $t0, -1988($fp)
	lw $t1, -1992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1996($fp)
	li $t0, 0
	lw $t1, -1996($fp)
	sub $t0, $t0, $t1
	sw $t0, -2000($fp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2004($fp)
	addi $sp, $sp, 16
	lw $t0, -1964($fp)
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	li $t0, 0
	lw $t1, -2008($fp)
	sub $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -1932($fp)
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	li $t0, 0
	lw $t1, -2016($fp)
	sub $t0, $t0, $t1
	sw $t0, -2020($fp)
	li $t0, 0
	sw $t0, -2024($fp)
	lw $t0, 4($fp)
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label977
	j label979
label979:
	lw $t0, -780($fp)
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -2024($fp)
label978:
	li $t0, 0
	sw $t0, -2036($fp)
	li $t0, 0
	sw $t0, -2040($fp)
	lw $t0, -528($fp)
	sw $t0, -2044($fp)
	li $t0, 0
	lw $t1, -2044($fp)
	sub $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label983
	j label985
label985:
	lw $t0, -504($fp)
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label983
	j label984
label983:
	li $t0, 1
	sw $t0, -2040($fp)
label984:
	li $t0, 60224
	sw $t0, -2056($fp)
	li $t0, 26286
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	sub $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -780($fp)
	sw $t0, -2068($fp)
	lw $t0, -2064($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -480($fp)
	sw $t0, -2076($fp)
	addi $t0, $fp, -20
	sw $t0, -2080($fp)
	li $t0, 2
	sw $t0, -2084($fp)
	li $t0, 4
	lw $t1, -2084($fp)
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, 0($t0)
	sw $t1, -2096($fp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2100($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -2040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2100($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2104($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2104($fp)
	sub $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t1, -2108($fp)
	li $t2, 0
	bne $t1, $t2, label980
	j label982
label982:
	lw $t0, -984($fp)
	sw $t0, -2112($fp)
	lw $t1, -2112($fp)
	li $t2, 0
	bne $t1, $t2, label981
	j label980
label980:
	li $t0, 1
	sw $t0, -2036($fp)
label981:
	lw $t0, -2036($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2116($fp)
	j label966
label965:
	li $t0, 31368
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	sw $t0, -2128($fp)
	li $t0, 0
	sw $t0, -2132($fp)
	li $t0, 63628
	sw $t0, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label987
label986:
	li $t0, 1
	sw $t0, -2132($fp)
label987:
	li $t0, 47912
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 55545
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label989
	j label988
label988:
	li $t0, 1
	sw $t0, -2144($fp)
label989:
	lw $t0, -2144($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -2156($fp)
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 1060
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label991
	j label992
label992:
	li $t0, 21741
	sw $t0, -2168($fp)
	li $t0, 17654
	sw $t0, -2172($fp)
	lw $t0, -2168($fp)
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	li $t0, 9318
	sw $t0, -2180($fp)
	lw $t0, -2176($fp)
	lw $t1, -2180($fp)
	sub $t0, $t0, $t1
	sw $t0, -2184($fp)
	addi $t0, $fp, -124
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
	li $t0, 0
	sw $t0, -2208($fp)
	lw $t0, -2124($fp)
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label994
	j label993
label993:
	li $t0, 1
	sw $t0, -2208($fp)
label994:
	li $t0, 5138
	sw $t0, -2216($fp)
	lw $t0, -2208($fp)
	lw $t1, -2216($fp)
	sub $t0, $t0, $t1
	sw $t0, -2220($fp)
	li $t0, 0
	sw $t0, -2224($fp)
	li $t0, 12921
	sw $t0, -2228($fp)
	lw $t1, -2228($fp)
	li $t2, 0
	bne $t1, $t2, label995
	j label997
label997:
	li $t0, 10256
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -2224($fp)
label996:
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2236($fp)
	addi $sp, $sp, 12
	li $t0, 48474
	sw $t0, -2240($fp)
	lw $t0, -2236($fp)
	lw $t1, -2240($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	li $t0, 0
	sw $t0, -2248($fp)
	li $t0, 39131
	sw $t0, -2252($fp)
	li $t0, 1
	sw $t0, -2256($fp)
	lw $t0, -2252($fp)
	lw $t1, -2256($fp)
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	li $t0, 13246
	sw $t0, -2264($fp)
	lw $t1, -2260($fp)
	lw $t2, -2264($fp)
	beq $t1, $t2, label998
	j label999
label998:
	li $t0, 1
	sw $t0, -2248($fp)
label999:
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2268($fp)
	addi $sp, $sp, 16
	lw $t1, -2184($fp)
	lw $t2, -2268($fp)
	beq $t1, $t2, label990
	j label991
label990:
	li $t0, 1
	sw $t0, -2160($fp)
label991:
label966:
	li $t0, 0
	sw $t0, -2272($fp)
	li $t0, 51834
	sw $t0, -2276($fp)
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label1004
	j label1003
label1003:
	li $t0, 1
	sw $t0, -2272($fp)
label1004:
	lw $t0, -2272($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label1000
	j label1001
label1000:
	li $t0, 0
	sw $t0, -2284($fp)
	lw $t0, -528($fp)
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1005
label1005:
	li $t0, 1
	sw $t0, -2284($fp)
label1006:
	lw $t0, -468($fp)
	sw $t0, -2292($fp)
	lw $t0, -2284($fp)
	lw $t1, -2292($fp)
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -516($fp)
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -2304($fp)
	li $t0, 0
	sw $t0, -2308($fp)
	li $t0, 39617
	sw $t0, -2312($fp)
	li $t0, 63783
	sw $t0, -2316($fp)
	lw $t1, -2312($fp)
	lw $t2, -2316($fp)
	bne $t1, $t2, label1007
	j label1009
label1009:
	lw $t0, -504($fp)
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -2308($fp)
label1008:
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2308($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2324($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -60
	sw $t0, -2328($fp)
	li $t0, 0
	sw $t0, -2332($fp)
	lw $t0, -516($fp)
	sw $t0, -2336($fp)
	lw $t0, -492($fp)
	sw $t0, -2340($fp)
	lw $t1, -2336($fp)
	lw $t2, -2340($fp)
	bge $t1, $t2, label1010
	j label1011
label1010:
	li $t0, 1
	sw $t0, -2332($fp)
label1011:
	li $t0, 4
	lw $t1, -2332($fp)
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	lw $t0, -2324($fp)
	lw $t1, -2352($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	j label1002
label1001:
	li $t0, 0
	sw $t0, -2360($fp)
	addi $t0, $fp, -124
	sw $t0, -2364($fp)
	li $t0, 37432
	sw $t0, -2368($fp)
	li $t0, 27113
	sw $t0, -2372($fp)
	lw $t0, -2368($fp)
	lw $t1, -2372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2376($fp)
	li $t0, 4
	lw $t1, -2376($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	li $t0, 0
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label1013
	j label1012
label1012:
	li $t0, 1
	sw $t0, -2360($fp)
label1013:
label1002:
label1014:
	li $t0, 20563
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	li $t0, 0
	sw $t0, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	lw $t0, -480($fp)
	sw $t0, -2412($fp)
	lw $t0, 8($fp)
	sw $t0, -2416($fp)
	lw $t1, -2412($fp)
	lw $t2, -2416($fp)
	bge $t1, $t2, label1021
	j label1022
label1021:
	li $t0, 1
	sw $t0, -2408($fp)
label1022:
	lw $t0, -552($fp)
	sw $t0, -2420($fp)
	lw $t1, -2408($fp)
	lw $t2, -2420($fp)
	beq $t1, $t2, label1019
	j label1020
label1019:
	li $t0, 1
	sw $t0, -2404($fp)
label1020:
	li $t0, 20597
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -2428($fp)
	lw $t0, -552($fp)
	sw $t0, -2432($fp)
	li $t0, 46385
	sw $t0, -2436($fp)
	lw $t0, -2432($fp)
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2444($fp)
	addi $sp, $sp, 16
	li $t0, 50705
	sw $t0, -2448($fp)
	lw $t0, -2444($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, 8($fp)
	sw $t0, -2456($fp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2460($fp)
	addi $sp, $sp, 12
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label1018
	j label1017
label1017:
	li $t0, 1
	sw $t0, -2400($fp)
label1018:
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label1015
	j label1016
label1015:
	li $t0, 0
	sw $t0, -2468($fp)
	lw $t0, -504($fp)
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label1027
	j label1026
label1026:
	li $t0, 1
	sw $t0, -2468($fp)
label1027:
	li $t0, 34685
	sw $t0, -2476($fp)
	lw $t0, -2468($fp)
	lw $t1, -2476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 31848
	sw $t0, -2488($fp)
	li $t0, 0
	lw $t1, -2488($fp)
	sub $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label1028
	j label1029
label1028:
	li $t0, 1
	sw $t0, -2484($fp)
label1029:
	lw $t0, -2480($fp)
	lw $t1, -2484($fp)
	sub $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1024
label1023:
label1030:
	li $t0, 0
	sw $t0, -2500($fp)
	addi $t0, $fp, -60
	sw $t0, -2504($fp)
	lw $t0, -780($fp)
	sw $t0, -2508($fp)
	li $t0, 4
	lw $t1, -2508($fp)
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	lw $t1, 0($t0)
	sw $t1, -2520($fp)
	li $t0, 2123
	sw $t0, -2524($fp)
	lw $t1, -2520($fp)
	lw $t2, -2524($fp)
	bgt $t1, $t2, label1035
	j label1036
label1035:
	li $t0, 1
	sw $t0, -2500($fp)
label1036:
	li $t0, 29373
	sw $t0, -2528($fp)
	li $t0, 58134
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t1, -2500($fp)
	lw $t2, -2536($fp)
	blt $t1, $t2, label1034
	j label1032
label1034:
	lw $t0, -780($fp)
	sw $t0, -2540($fp)
	li $t0, 0
	lw $t1, -2540($fp)
	sub $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label1032
	j label1033
label1033:
	lw $t0, -552($fp)
	sw $t0, -2548($fp)
	li $t0, 33491
	sw $t0, -2552($fp)
	lw $t0, -2548($fp)
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	li $t0, 27465
	sw $t0, -2560($fp)
	lw $t0, -2556($fp)
	lw $t1, -2560($fp)
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	li $t0, 40511
	sw $t0, -2568($fp)
	li $t0, 23501
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	sub $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t1, -2564($fp)
	lw $t2, -2576($fp)
	bne $t1, $t2, label1031
	j label1032
label1031:
	li $t0, 28525
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	li $t0, 0
	sw $t0, -2592($fp)
	li $t0, 62252
	sw $t0, -2596($fp)
	lw $t0, -780($fp)
	sw $t0, -2600($fp)
	lw $t0, -2596($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	li $t0, 41155
	sw $t0, -2608($fp)
	lw $t0, -2604($fp)
	lw $t1, -2608($fp)
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	li $t0, 0
	sw $t0, -2616($fp)
	lw $t0, -504($fp)
	sw $t0, -2620($fp)
	lw $t1, -2620($fp)
	li $t2, 0
	bne $t1, $t2, label1040
	j label1039
label1039:
	li $t0, 1
	sw $t0, -2616($fp)
label1040:
	lw $t0, -2612($fp)
	lw $t1, -2616($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	li $t0, 0
	sw $t0, -2632($fp)
	li $t0, 0
	sw $t0, -2636($fp)
	lw $t0, 20($fp)
	sw $t0, -2640($fp)
	lw $t0, -2584($fp)
	sw $t0, -2644($fp)
	lw $t1, -2640($fp)
	lw $t2, -2644($fp)
	blt $t1, $t2, label1045
	j label1046
label1045:
	li $t0, 1
	sw $t0, -2636($fp)
label1046:
	lw $t0, -780($fp)
	sw $t0, -2648($fp)
	lw $t1, -2636($fp)
	lw $t2, -2648($fp)
	bne $t1, $t2, label1043
	j label1044
label1043:
	li $t0, 1
	sw $t0, -2632($fp)
label1044:
	li $t0, 0
	sw $t0, -2652($fp)
	li $t0, 37844
	sw $t0, -2656($fp)
	lw $t1, -2656($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1049
label1049:
	li $t0, 35848
	sw $t0, -2660($fp)
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -2652($fp)
label1048:
	addi $sp, $sp, -4
	lw $t0, -2632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2652($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2664($fp)
	addi $sp, $sp, 12
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label1042
	j label1041
label1041:
	li $t0, 1
	sw $t0, -2628($fp)
label1042:
	lw $t0, -2624($fp)
	lw $t1, -2628($fp)
	sub $t0, $t0, $t1
	sw $t0, -2668($fp)
	addi $t0, $fp, -124
	sw $t0, -2672($fp)
	lw $t0, -552($fp)
	sw $t0, -2676($fp)
	li $t0, 34170
	sw $t0, -2680($fp)
	lw $t0, -2676($fp)
	lw $t1, -2680($fp)
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	li $t0, 4
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, 0($t0)
	sw $t1, -2696($fp)
	lw $t1, -2668($fp)
	lw $t2, -2696($fp)
	ble $t1, $t2, label1037
	j label1038
label1037:
	li $t0, 1
	sw $t0, -2592($fp)
label1038:
	li $t0, 0
	sw $t0, -2700($fp)
	li $t0, 51090
	sw $t0, -2704($fp)
	li $t0, 0
	sw $t0, -2708($fp)
	li $t0, 48769
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1052
label1052:
	li $t0, 1
	sw $t0, -2708($fp)
label1053:
	li $t0, 0
	lw $t1, -2708($fp)
	sub $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t1, -2704($fp)
	lw $t2, -2716($fp)
	bne $t1, $t2, label1050
	j label1051
label1050:
	li $t0, 1
	sw $t0, -2700($fp)
label1051:
	li $t0, 0
	sw $t0, -2720($fp)
	li $t0, 0
	sw $t0, -2724($fp)
	lw $t0, -984($fp)
	sw $t0, -2728($fp)
	lw $t0, -480($fp)
	sw $t0, -2732($fp)
	lw $t1, -2728($fp)
	lw $t2, -2732($fp)
	ble $t1, $t2, label1056
	j label1057
label1056:
	li $t0, 1
	sw $t0, -2724($fp)
label1057:
	li $t0, 44426
	sw $t0, -2736($fp)
	addi $t0, $fp, -60
	sw $t0, -2740($fp)
	li $t0, 4
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
	lw $t0, -2736($fp)
	lw $t1, -2756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2760($fp)
	lw $t1, -2724($fp)
	lw $t2, -2760($fp)
	bne $t1, $t2, label1054
	j label1055
label1054:
	li $t0, 1
	sw $t0, -2720($fp)
label1055:
	j label1030
label1032:
	j label1025
label1024:
	li $t0, 0
	sw $t0, -2764($fp)
	li $t0, 14586
	sw $t0, -2768($fp)
	li $t0, 23619
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	add $t0, $t0, $t1
	sw $t0, -2776($fp)
	li $t0, 18006
	sw $t0, -2780($fp)
	lw $t1, -2776($fp)
	lw $t2, -2780($fp)
	beq $t1, $t2, label1058
	j label1059
label1058:
	li $t0, 1
	sw $t0, -2764($fp)
label1059:
	lw $ra, -4($fp)
	lw $v0, -2764($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1025:
	j label1014
label1016:
	addi $t0, $fp, -20
	sw $t0, -2784($fp)
	li $t0, 0
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
	lw $t0, -2800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2804($fp)
	li $t0, 1
	sw $t0, -2808($fp)
	li $t0, 4
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, 0($t0)
	sw $t1, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2824($fp)
	li $t0, 2
	sw $t0, -2828($fp)
	li $t0, 4
	lw $t1, -2828($fp)
	mul $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, 0($t0)
	sw $t1, -2840($fp)
	lw $t0, -2840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2844($fp)
	li $t0, 3
	sw $t0, -2848($fp)
	li $t0, 4
	lw $t1, -2848($fp)
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, -2844($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	lw $t0, -2860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2864($fp)
	li $t0, 0
	sw $t0, -2868($fp)
	li $t0, 4
	lw $t1, -2868($fp)
	mul $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	lw $t1, 0($t0)
	sw $t1, -2880($fp)
	lw $t0, -2880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2884($fp)
	li $t0, 1
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
	lw $t0, -2900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2904($fp)
	li $t0, 2
	sw $t0, -2908($fp)
	li $t0, 4
	lw $t1, -2908($fp)
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	lw $t0, -2920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2924($fp)
	li $t0, 3
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
	lw $t0, -2940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2944($fp)
	li $t0, 0
	sw $t0, -2948($fp)
	li $t0, 4
	lw $t1, -2948($fp)
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2964($fp)
	li $t0, 1
	sw $t0, -2968($fp)
	li $t0, 4
	lw $t1, -2968($fp)
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	lw $t1, 0($t0)
	sw $t1, -2980($fp)
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2984($fp)
	li $t0, 2
	sw $t0, -2988($fp)
	li $t0, 4
	lw $t1, -2988($fp)
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3004($fp)
	li $t0, 3
	sw $t0, -3008($fp)
	li $t0, 4
	lw $t1, -3008($fp)
	mul $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	lw $t1, 0($t0)
	sw $t1, -3020($fp)
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3024($fp)
	li $t0, 4
	sw $t0, -3028($fp)
	li $t0, 4
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	lw $t0, -3040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3044($fp)
	li $t0, 5
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
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3096($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -3116($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -3136($fp)
	li $t0, 2
	sw $t0, -3140($fp)
	li $t0, 4
	lw $t1, -3140($fp)
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, -3136($fp)
	add $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	lw $t1, 0($t0)
	sw $t1, -3152($fp)
	lw $t0, -3152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3156($fp)
	li $t0, 3
	sw $t0, -3160($fp)
	li $t0, 4
	lw $t1, -3160($fp)
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	lw $t1, 0($t0)
	sw $t1, -3172($fp)
	lw $t0, -3172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3176($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -3196($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -3216($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -3236($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -3256($fp)
	li $t0, 8
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
	lw $t0, -780($fp)
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3288($fp)
	li $t0, 0
	sw $t0, -3292($fp)
	li $t0, 4
	lw $t1, -3292($fp)
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, -3288($fp)
	add $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	lw $t1, 0($t0)
	sw $t1, -3304($fp)
	lw $t0, -3304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3308($fp)
	li $t0, 1
	sw $t0, -3312($fp)
	li $t0, 4
	lw $t1, -3312($fp)
	mul $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	lw $t1, -3308($fp)
	add $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	lw $t1, 0($t0)
	sw $t1, -3324($fp)
	lw $t0, -3324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3328($fp)
	li $t0, 2
	sw $t0, -3332($fp)
	li $t0, 4
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, -3328($fp)
	add $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, 0($t0)
	sw $t1, -3344($fp)
	lw $t0, -3344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3348($fp)
	li $t0, 3
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
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3368($fp)
	li $t0, 4
	sw $t0, -3372($fp)
	li $t0, 4
	lw $t1, -3372($fp)
	mul $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, -3368($fp)
	add $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	lw $t1, 0($t0)
	sw $t1, -3384($fp)
	lw $t0, -3384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -3388($fp)
	li $t0, 5
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
	addi $t0, $fp, -124
	sw $t0, -3408($fp)
	li $t0, 6
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
	lw $t0, -984($fp)
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 54204
	sw $t0, -3432($fp)
	lw $ra, -4($fp)
	lw $v0, -3432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -9168
	li $t0, 21866
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 55438
	sw $t0, -216($fp)
	addi $t0, $fp, -32
	sw $t0, -220($fp)
	li $t0, 0
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
	li $t0, 15781
	sw $t0, -240($fp)
	addi $t0, $fp, -32
	sw $t0, -244($fp)
	li $t0, 1
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
	li $t0, 42429
	sw $t0, -264($fp)
	addi $t0, $fp, -32
	sw $t0, -268($fp)
	li $t0, 2
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
	li $t0, 36287
	sw $t0, -288($fp)
	addi $t0, $fp, -32
	sw $t0, -292($fp)
	li $t0, 3
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
	li $t0, 36378
	sw $t0, -312($fp)
	addi $t0, $fp, -32
	sw $t0, -316($fp)
	li $t0, 4
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
	li $t0, 27598
	sw $t0, -336($fp)
	addi $t0, $fp, -32
	sw $t0, -340($fp)
	li $t0, 5
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
	li $t0, 5436
	sw $t0, -360($fp)
	addi $t0, $fp, -32
	sw $t0, -364($fp)
	li $t0, 6
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
	li $t0, 2690
	sw $t0, -384($fp)
	addi $t0, $fp, -64
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
	li $t0, 29722
	sw $t0, -408($fp)
	addi $t0, $fp, -64
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
	li $t0, 34809
	sw $t0, -432($fp)
	addi $t0, $fp, -64
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
	li $t0, 60824
	sw $t0, -456($fp)
	addi $t0, $fp, -64
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
	li $t0, 63213
	sw $t0, -480($fp)
	addi $t0, $fp, -64
	sw $t0, -484($fp)
	li $t0, 4
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
	li $t0, 62275
	sw $t0, -504($fp)
	addi $t0, $fp, -64
	sw $t0, -508($fp)
	li $t0, 5
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
	li $t0, 35799
	sw $t0, -528($fp)
	addi $t0, $fp, -64
	sw $t0, -532($fp)
	li $t0, 6
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
	li $t0, 21178
	sw $t0, -552($fp)
	addi $t0, $fp, -64
	sw $t0, -556($fp)
	li $t0, 7
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
	li $t0, 25264
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 32516
	sw $t0, -588($fp)
	addi $t0, $fp, -88
	sw $t0, -592($fp)
	li $t0, 0
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
	li $t0, 62333
	sw $t0, -612($fp)
	addi $t0, $fp, -88
	sw $t0, -616($fp)
	li $t0, 1
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
	li $t0, 63108
	sw $t0, -636($fp)
	addi $t0, $fp, -88
	sw $t0, -640($fp)
	li $t0, 2
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
	li $t0, 2828
	sw $t0, -660($fp)
	addi $t0, $fp, -88
	sw $t0, -664($fp)
	li $t0, 3
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
	li $t0, 30967
	sw $t0, -684($fp)
	addi $t0, $fp, -88
	sw $t0, -688($fp)
	li $t0, 4
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
	li $t0, 48663
	sw $t0, -708($fp)
	addi $t0, $fp, -88
	sw $t0, -712($fp)
	li $t0, 5
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -712($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -708($fp)
	lw $t1, -724($fp)
	sw $t0, 0($t1)
	lw $t0, -724($fp)
	lw $t1, 0($t0)
	sw $t1, -728($fp)
	li $t0, 51597
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 9857
	sw $t0, -744($fp)
	addi $t0, $fp, -116
	sw $t0, -748($fp)
	li $t0, 0
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
	li $t0, 39356
	sw $t0, -768($fp)
	addi $t0, $fp, -116
	sw $t0, -772($fp)
	li $t0, 1
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
	li $t0, 17769
	sw $t0, -792($fp)
	addi $t0, $fp, -116
	sw $t0, -796($fp)
	li $t0, 2
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
	li $t0, 24444
	sw $t0, -816($fp)
	addi $t0, $fp, -116
	sw $t0, -820($fp)
	li $t0, 3
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
	li $t0, 62975
	sw $t0, -840($fp)
	addi $t0, $fp, -116
	sw $t0, -844($fp)
	li $t0, 4
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
	li $t0, 35776
	sw $t0, -864($fp)
	addi $t0, $fp, -116
	sw $t0, -868($fp)
	li $t0, 5
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
	li $t0, 13112
	sw $t0, -888($fp)
	addi $t0, $fp, -116
	sw $t0, -892($fp)
	li $t0, 6
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
	li $t0, 19306
	sw $t0, -912($fp)
	addi $t0, $fp, -124
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
	li $t0, 25678
	sw $t0, -936($fp)
	addi $t0, $fp, -124
	sw $t0, -940($fp)
	li $t0, 1
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
	li $t0, 28893
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	li $t0, 61735
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	li $t0, 61966
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 65271
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 23798
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	li $t0, 1866
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 2425
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 53520
	sw $t0, -1044($fp)
	addi $t0, $fp, -136
	sw $t0, -1048($fp)
	li $t0, 0
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
	li $t0, 36676
	sw $t0, -1068($fp)
	addi $t0, $fp, -136
	sw $t0, -1072($fp)
	li $t0, 1
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
	li $t0, 63249
	sw $t0, -1092($fp)
	addi $t0, $fp, -136
	sw $t0, -1096($fp)
	li $t0, 2
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
	li $t0, 51197
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 33415
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 33513
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 6840
	sw $t0, -1152($fp)
	addi $t0, $fp, -160
	sw $t0, -1156($fp)
	li $t0, 0
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
	li $t0, 58679
	sw $t0, -1176($fp)
	addi $t0, $fp, -160
	sw $t0, -1180($fp)
	li $t0, 1
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
	li $t0, 493
	sw $t0, -1200($fp)
	addi $t0, $fp, -160
	sw $t0, -1204($fp)
	li $t0, 2
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
	li $t0, 3637
	sw $t0, -1224($fp)
	addi $t0, $fp, -160
	sw $t0, -1228($fp)
	li $t0, 3
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
	li $t0, 56252
	sw $t0, -1248($fp)
	addi $t0, $fp, -160
	sw $t0, -1252($fp)
	li $t0, 4
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
	li $t0, 3321
	sw $t0, -1272($fp)
	addi $t0, $fp, -160
	sw $t0, -1276($fp)
	li $t0, 5
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
	li $t0, 34605
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 39379
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 54918
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 44462
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 13199
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 7152
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 3370
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 10638
	sw $t0, -1380($fp)
	addi $t0, $fp, -180
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
	li $t0, 42928
	sw $t0, -1404($fp)
	addi $t0, $fp, -180
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
	li $t0, 16482
	sw $t0, -1428($fp)
	addi $t0, $fp, -180
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
	li $t0, 29944
	sw $t0, -1452($fp)
	addi $t0, $fp, -180
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
	li $t0, 3070
	sw $t0, -1476($fp)
	addi $t0, $fp, -180
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
	li $t0, 45375
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	li $t0, 26144
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	li $t0, 65036
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	li $t0, 45110
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	li $t0, 49942
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	li $t0, 1367
	sw $t0, -1560($fp)
	addi $t0, $fp, -192
	sw $t0, -1564($fp)
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1564($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1560($fp)
	lw $t1, -1576($fp)
	sw $t0, 0($t1)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	li $t0, 47535
	sw $t0, -1584($fp)
	addi $t0, $fp, -192
	sw $t0, -1588($fp)
	li $t0, 1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1588($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1584($fp)
	lw $t1, -1600($fp)
	sw $t0, 0($t1)
	lw $t0, -1600($fp)
	lw $t1, 0($t0)
	sw $t1, -1604($fp)
	li $t0, 37926
	sw $t0, -1608($fp)
	addi $t0, $fp, -192
	sw $t0, -1612($fp)
	li $t0, 2
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1612($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1608($fp)
	lw $t1, -1624($fp)
	sw $t0, 0($t1)
	lw $t0, -1624($fp)
	lw $t1, 0($t0)
	sw $t1, -1628($fp)
	li $t0, 38043
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	li $t0, 45249
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	li $t0, 23587
	sw $t0, -1656($fp)
	addi $t0, $fp, -200
	sw $t0, -1660($fp)
	li $t0, 0
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1660($fp)
	lw $t1, -1668($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1656($fp)
	lw $t1, -1672($fp)
	sw $t0, 0($t1)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	li $t0, 5922
	sw $t0, -1680($fp)
	addi $t0, $fp, -200
	sw $t0, -1684($fp)
	li $t0, 1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1684($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1680($fp)
	lw $t1, -1696($fp)
	sw $t0, 0($t1)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
	li $t0, 13226
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	li $t0, 30427
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 64601
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	li $t0, 13719
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	li $t0, 34065
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	li $t0, 55317
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	li $t0, 17040
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	li $t0, 3134
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	li $t0, 29160
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	li $t0, 6422
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	li $t0, 47596
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	li $t0, 42359
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1372($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1852($fp)
	addi $t0, $fp, -32
	sw $t0, -1856($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -1872($fp)
	sub $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label1060
	j label1061
label1060:
	li $t0, 0
	sw $t0, -1884($fp)
	li $t0, 1913
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label1066
	j label1067
label1066:
	li $t0, 1
	sw $t0, -1884($fp)
label1067:
	li $t0, 0
	sw $t0, -1892($fp)
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 52998
	sw $t0, -1900($fp)
	lw $t0, -1552($fp)
	sw $t0, -1904($fp)
	lw $t1, -1900($fp)
	lw $t2, -1904($fp)
	ble $t1, $t2, label1070
	j label1071
label1070:
	li $t0, 1
	sw $t0, -1896($fp)
label1071:
	li $t0, 56502
	sw $t0, -1908($fp)
	lw $t1, -1896($fp)
	lw $t2, -1908($fp)
	bne $t1, $t2, label1068
	j label1069
label1068:
	li $t0, 1
	sw $t0, -1892($fp)
label1069:
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	jal f11
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
	li $t0, 17406
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label1063
	j label1064
label1063:
label1072:
	li $t0, 59573
	sw $t0, -1932($fp)
	lw $t0, -1720($fp)
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label1073
	j label1074
label1073:
	li $t0, 47289
	sw $t0, -1964($fp)
	addi $t0, $fp, -1960
	sw $t0, -1968($fp)
	li $t0, 0
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1968($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1964($fp)
	lw $t1, -1980($fp)
	sw $t0, 0($t1)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	li $t0, 43550
	sw $t0, -1988($fp)
	addi $t0, $fp, -1960
	sw $t0, -1992($fp)
	li $t0, 1
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1992($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1988($fp)
	lw $t1, -2004($fp)
	sw $t0, 0($t1)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	li $t0, 59073
	sw $t0, -2012($fp)
	addi $t0, $fp, -1960
	sw $t0, -2016($fp)
	li $t0, 2
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
	li $t0, 26863
	sw $t0, -2036($fp)
	addi $t0, $fp, -1960
	sw $t0, -2040($fp)
	li $t0, 3
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
	li $t0, 27956
	sw $t0, -2060($fp)
	addi $t0, $fp, -1960
	sw $t0, -2064($fp)
	li $t0, 4
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
	li $t0, 60440
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	lw $t0, -1792($fp)
	sw $t0, -2096($fp)
	li $t0, 8863
	sw $t0, -2100($fp)
	lw $t0, -2096($fp)
	lw $t1, -2100($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	li $t0, 346
	sw $t0, -2108($fp)
	lw $t0, -1792($fp)
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	li $t0, 0
	lw $t1, -2116($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -1780($fp)
	sw $t0, -2124($fp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2128($fp)
	addi $sp, $sp, 12
	lw $t0, -2104($fp)
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label1075
	j label1076
label1075:
label1078:
	addi $t0, $fp, -136
	sw $t0, -2140($fp)
	addi $t0, $fp, -200
	sw $t0, -2144($fp)
	lw $t0, -1768($fp)
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
	li $t0, 4
	lw $t1, -2160($fp)
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, 0($t0)
	sw $t1, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label1082
	j label1080
label1082:
	li $t0, 0
	sw $t0, -2176($fp)
	lw $t0, -2088($fp)
	sw $t0, -2180($fp)
	li $t0, 38869
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	sub $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t1, -2188($fp)
	li $t2, 0
	bne $t1, $t2, label1085
	j label1084
label1085:
	lw $t0, -1708($fp)
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label1083
	j label1084
label1083:
	li $t0, 1
	sw $t0, -2176($fp)
label1084:
	li $t0, 0
	sw $t0, -2196($fp)
	addi $t0, $fp, -180
	sw $t0, -2200($fp)
	li $t0, 0
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
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label1088
	j label1087
label1088:
	li $t0, 23934
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label1086
	j label1087
label1086:
	li $t0, 1
	sw $t0, -2196($fp)
label1087:
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2224($fp)
	addi $sp, $sp, 12
	li $t0, 1802
	sw $t0, -2228($fp)
	lw $t1, -2224($fp)
	lw $t2, -2228($fp)
	beq $t1, $t2, label1081
	j label1080
label1081:
	li $t0, 54361
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label1079
	j label1080
label1079:
label1089:
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 37935
	sw $t0, -2240($fp)
	li $t0, 0
	lw $t1, -2240($fp)
	sub $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t1, -2244($fp)
	li $t2, 0
	bne $t1, $t2, label1093
	j label1092
label1092:
	li $t0, 1
	sw $t0, -2236($fp)
label1093:
	addi $t0, $fp, -192
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
	li $t0, 0
	lw $t1, -2264($fp)
	sub $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2236($fp)
	lw $t1, -2268($fp)
	sub $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label1090
	j label1091
label1090:
	li $t0, 27716
	sw $t0, -2276($fp)
	li $t0, 0
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	j label1089
label1091:
	j label1078
label1080:
	j label1077
label1076:
	addi $t0, $fp, -88
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
	lw $t0, -1300($fp)
	sw $t0, -2304($fp)
	lw $t0, -2300($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2308($fp)
	addi $t0, $fp, -1960
	sw $t0, -2312($fp)
	lw $t0, -1636($fp)
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
	lw $t0, -2308($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -2336($fp)
label1077:
	j label1072
label1074:
	j label1065
label1064:
	li $t0, 56877
	sw $t0, -2340($fp)
label1065:
	j label1062
label1061:
	li $t0, 38983
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	li $t0, 8085
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	li $t0, 33700
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	li $t0, 0
	sw $t0, -2384($fp)
	li $t0, 0
	sw $t0, -2388($fp)
	lw $t0, -1744($fp)
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label1099
	j label1100
label1099:
	li $t0, 1
	sw $t0, -2388($fp)
label1100:
	li $t0, 0
	sw $t0, -2396($fp)
	addi $t0, $fp, -32
	sw $t0, -2400($fp)
	li $t0, 3
	sw $t0, -2404($fp)
	li $t0, 4
	lw $t1, -2404($fp)
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	lw $t1, -2400($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	lw $t1, 0($t0)
	sw $t1, -2416($fp)
	lw $t0, -2348($fp)
	sw $t0, -2420($fp)
	lw $t1, -2416($fp)
	lw $t2, -2420($fp)
	beq $t1, $t2, label1101
	j label1102
label1101:
	li $t0, 1
	sw $t0, -2396($fp)
label1102:
	addi $sp, $sp, -4
	lw $t0, -2388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2396($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2424($fp)
	addi $sp, $sp, 12
	lw $t1, -2424($fp)
	li $t2, 0
	bne $t1, $t2, label1097
	j label1098
label1097:
	li $t0, 1
	sw $t0, -2384($fp)
label1098:
	li $t0, 0
	sw $t0, -2428($fp)
	li $t0, 60965
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label1105
	j label1104
label1105:
	lw $t0, -1792($fp)
	sw $t0, -2436($fp)
	lw $t1, -2436($fp)
	li $t2, 0
	bne $t1, $t2, label1103
	j label1104
label1103:
	li $t0, 1
	sw $t0, -2428($fp)
label1104:
	addi $t0, $fp, -124
	sw $t0, -2440($fp)
	lw $t0, -1324($fp)
	sw $t0, -2444($fp)
	li $t0, 4
	lw $t1, -2444($fp)
	mul $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	lw $t1, 0($t0)
	sw $t1, -2456($fp)
	li $t0, 43524
	sw $t0, -2460($fp)
	addi $sp, $sp, -4
	lw $t0, -2428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2464($fp)
	addi $sp, $sp, 16
	li $t0, 38569
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -2360($fp)
	sw $t0, -2484($fp)
	lw $t0, -1348($fp)
	sw $t0, -2488($fp)
	lw $t1, -2484($fp)
	lw $t2, -2488($fp)
	beq $t1, $t2, label1108
	j label1109
label1108:
	li $t0, 1
	sw $t0, -2480($fp)
label1109:
	li $t0, 21162
	sw $t0, -2492($fp)
	lw $t1, -2480($fp)
	lw $t2, -2492($fp)
	bne $t1, $t2, label1106
	j label1107
label1106:
	li $t0, 1
	sw $t0, -2476($fp)
label1107:
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2496($fp)
	addi $sp, $sp, 12
	lw $t1, -2384($fp)
	lw $t2, -2496($fp)
	beq $t1, $t2, label1096
	j label1095
label1096:
	addi $t0, $fp, -116
	sw $t0, -2500($fp)
	li $t0, 37561
	sw $t0, -2504($fp)
	lw $t0, -2348($fp)
	sw $t0, -2508($fp)
	lw $t0, -2504($fp)
	lw $t1, -2508($fp)
	sub $t0, $t0, $t1
	sw $t0, -2512($fp)
	li $t0, 4
	lw $t1, -2512($fp)
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	lw $t1, -2500($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label1094
	j label1095
label1094:
	li $t0, 1
	sw $t0, -2380($fp)
label1095:
	li $t0, 42718
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	sw $t0, -2568($fp)
	li $t0, 16583
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -2580($fp)
	li $t0, 31099
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	li $t0, 4046
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	sw $t0, -2604($fp)
	li $t0, 44540
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -2616($fp)
	li $t0, 26003
	sw $t0, -2620($fp)
	addi $t0, $fp, -2528
	sw $t0, -2624($fp)
	li $t0, 0
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
	li $t0, 12909
	sw $t0, -2644($fp)
	addi $t0, $fp, -2556
	sw $t0, -2648($fp)
	li $t0, 0
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
	li $t0, 44886
	sw $t0, -2668($fp)
	addi $t0, $fp, -2556
	sw $t0, -2672($fp)
	li $t0, 1
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
	li $t0, 58951
	sw $t0, -2692($fp)
	addi $t0, $fp, -2556
	sw $t0, -2696($fp)
	li $t0, 2
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
	li $t0, 1485
	sw $t0, -2716($fp)
	addi $t0, $fp, -2556
	sw $t0, -2720($fp)
	li $t0, 3
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
	li $t0, 3284
	sw $t0, -2740($fp)
	addi $t0, $fp, -2556
	sw $t0, -2744($fp)
	li $t0, 4
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
	li $t0, 32284
	sw $t0, -2764($fp)
	addi $t0, $fp, -2556
	sw $t0, -2768($fp)
	li $t0, 5
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
	li $t0, 3287
	sw $t0, -2788($fp)
	addi $t0, $fp, -2556
	sw $t0, -2792($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -2812($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	li $t0, 0
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label1110
	j label1111
label1110:
	li $t0, 0
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	li $t0, 0
	sw $t0, -2848($fp)
	li $t0, 18808
	sw $t0, -2852($fp)
	lw $t0, -1372($fp)
	sw $t0, -2856($fp)
	lw $t1, -2852($fp)
	lw $t2, -2856($fp)
	blt $t1, $t2, label1117
	j label1118
label1117:
	li $t0, 1
	sw $t0, -2848($fp)
label1118:
	li $t0, 15000
	sw $t0, -2860($fp)
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -580($fp)
	sw $t0, -2868($fp)
	lw $t0, -2864($fp)
	lw $t1, -2868($fp)
	sub $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t1, -2848($fp)
	lw $t2, -2872($fp)
	bge $t1, $t2, label1115
	j label1116
label1115:
	li $t0, 1
	sw $t0, -2844($fp)
label1116:
	li $t0, 0
	sw $t0, -2876($fp)
	li $t0, 32400
	sw $t0, -2880($fp)
	li $t0, 0
	lw $t1, -2880($fp)
	sub $t0, $t0, $t1
	sw $t0, -2884($fp)
	li $t0, 0
	lw $t1, -2884($fp)
	sub $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label1120
	j label1119
label1119:
	li $t0, 1
	sw $t0, -2876($fp)
label1120:
	lw $t1, -2844($fp)
	lw $t2, -2876($fp)
	bne $t1, $t2, label1113
	j label1114
label1113:
	li $t0, 1
	sw $t0, -2840($fp)
label1114:
label1111:
	li $t0, 51369
	sw $t0, -2892($fp)
	li $t0, 0
	sw $t0, -2896($fp)
	addi $t0, $fp, -160
	sw $t0, -2900($fp)
	lw $t0, -1804($fp)
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
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label1125
	j label1124
label1124:
	li $t0, 1
	sw $t0, -2896($fp)
label1125:
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2920($fp)
	addi $t0, $fp, -2556
	sw $t0, -2924($fp)
	lw $t0, -2612($fp)
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
	li $t0, 23742
	sw $t0, -2944($fp)
	lw $t0, -2940($fp)
	lw $t1, -2944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2948($fp)
	lw $t0, -2920($fp)
	lw $t1, -2948($fp)
	sub $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label1121
	j label1122
label1121:
	li $t0, 0
	sw $t0, -2956($fp)
	li $t0, 24816
	sw $t0, -2960($fp)
	lw $t0, -1828($fp)
	sw $t0, -2964($fp)
	lw $t0, -2960($fp)
	lw $t1, -2964($fp)
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	li $t0, 0
	sw $t0, -2972($fp)
	addi $t0, $fp, -32
	sw $t0, -2976($fp)
	lw $t0, -1360($fp)
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
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label1130
	j label1129
label1129:
	li $t0, 1
	sw $t0, -2972($fp)
label1130:
	lw $t0, -2968($fp)
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	li $t0, 0
	lw $t1, -2996($fp)
	sub $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label1127
	j label1128
label1128:
	lw $t0, -1504($fp)
	sw $t0, -3004($fp)
	lw $t0, -1768($fp)
	sw $t0, -3008($fp)
	lw $t0, -976($fp)
	sw $t0, -3012($fp)
	lw $t0, -2564($fp)
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -3020($fp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3024($fp)
	addi $sp, $sp, 16
	lw $t0, -3004($fp)
	lw $t1, -3024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3028($fp)
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label1126
	j label1127
label1126:
	li $t0, 1
	sw $t0, -2956($fp)
label1127:
	j label1123
label1122:
	addi $t0, $fp, -160
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	li $t0, 0
	sw $t0, -3040($fp)
	li $t0, 0
	sw $t0, -3044($fp)
	li $t0, 49110
	sw $t0, -3048($fp)
	lw $t0, -1816($fp)
	sw $t0, -3052($fp)
	lw $t1, -3048($fp)
	lw $t2, -3052($fp)
	beq $t1, $t2, label1135
	j label1136
label1135:
	li $t0, 1
	sw $t0, -3044($fp)
label1136:
	lw $t0, -1300($fp)
	sw $t0, -3056($fp)
	lw $t1, -3044($fp)
	lw $t2, -3056($fp)
	bne $t1, $t2, label1133
	j label1134
label1133:
	li $t0, 1
	sw $t0, -3040($fp)
label1134:
	lw $t0, -988($fp)
	sw $t0, -3060($fp)
	lw $t0, -1720($fp)
	sw $t0, -3064($fp)
	lw $t0, -3060($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t1, -3040($fp)
	lw $t2, -3068($fp)
	beq $t1, $t2, label1131
	j label1132
label1131:
	li $t0, 1
	sw $t0, -3036($fp)
label1132:
	li $t0, 4
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	lw $t1, 0($t0)
	sw $t1, -3080($fp)
label1123:
	addi $t0, $fp, -88
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	li $t0, 11838
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -3096($fp)
	li $t0, 0
	sw $t0, -3100($fp)
	li $t0, 57441
	sw $t0, -3104($fp)
	lw $t0, -208($fp)
	sw $t0, -3108($fp)
	lw $t0, -3104($fp)
	lw $t1, -3108($fp)
	sub $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -1024($fp)
	sw $t0, -3116($fp)
	lw $t1, -3112($fp)
	lw $t2, -3116($fp)
	bgt $t1, $t2, label1140
	j label1141
label1140:
	li $t0, 1
	sw $t0, -3100($fp)
label1141:
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3120($fp)
	addi $sp, $sp, 12
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label1137
	j label1139
label1139:
	li $t0, 42626
	sw $t0, -3124($fp)
	li $t0, 13068
	sw $t0, -3128($fp)
	lw $t1, -3124($fp)
	lw $t2, -3128($fp)
	beq $t1, $t2, label1137
	j label1138
label1137:
	li $t0, 1
	sw $t0, -3088($fp)
label1138:
	li $t0, 4
	lw $t1, -3088($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
label1142:
	li $t0, 0
	sw $t0, -3144($fp)
	li $t0, 55363
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label1145
	j label1146
label1145:
	li $t0, 1
	sw $t0, -3144($fp)
label1146:
	lw $t0, -2576($fp)
	sw $t0, -3152($fp)
	lw $t0, -3144($fp)
	lw $t1, -3152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3156($fp)
	lw $t0, -3156($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label1143
	j label1144
label1143:
	li $t0, 0
	sw $t0, -3164($fp)
	li $t0, 0
	sw $t0, -3168($fp)
	li $t0, 0
	sw $t0, -3172($fp)
	li $t0, 51637
	sw $t0, -3176($fp)
	lw $t1, -3176($fp)
	li $t2, 0
	bne $t1, $t2, label1152
	j label1151
label1151:
	li $t0, 1
	sw $t0, -3172($fp)
label1152:
	li $t0, 27388
	sw $t0, -3180($fp)
	lw $t1, -3172($fp)
	lw $t2, -3180($fp)
	bgt $t1, $t2, label1149
	j label1150
label1149:
	li $t0, 1
	sw $t0, -3168($fp)
label1150:
	li $t0, 0
	sw $t0, -3184($fp)
	lw $t0, -1516($fp)
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label1153
	j label1156
label1156:
	lw $t0, -1768($fp)
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 0
	bne $t1, $t2, label1153
	j label1155
label1155:
	lw $t0, -1732($fp)
	sw $t0, -3196($fp)
	lw $t1, -3196($fp)
	li $t2, 0
	bne $t1, $t2, label1153
	j label1154
label1153:
	li $t0, 1
	sw $t0, -3184($fp)
label1154:
	li $t0, 0
	sw $t0, -3200($fp)
	li $t0, 38055
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label1159
	j label1157
label1159:
	lw $t0, -1792($fp)
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label1157
	j label1158
label1157:
	li $t0, 1
	sw $t0, -3200($fp)
label1158:
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3212($fp)
	addi $sp, $sp, 16
	li $t0, 15238
	sw $t0, -3216($fp)
	lw $t1, -3212($fp)
	lw $t2, -3216($fp)
	bge $t1, $t2, label1147
	j label1148
label1147:
	li $t0, 1
	sw $t0, -3164($fp)
label1148:
	j label1142
label1144:
	li $t0, 0
	sw $t0, -3220($fp)
	li $t0, 2684
	sw $t0, -3224($fp)
	lw $t0, -1780($fp)
	sw $t0, -3228($fp)
	li $t0, 0
	lw $t1, -3228($fp)
	sub $t0, $t0, $t1
	sw $t0, -3232($fp)
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3232($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3236($fp)
	addi $sp, $sp, 12
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label1161
	j label1160
label1160:
	li $t0, 1
	sw $t0, -3220($fp)
label1161:
label1162:
	addi $t0, $fp, -2528
	sw $t0, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	li $t0, 4
	lw $t1, -3244($fp)
	mul $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, -3240($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	lw $t1, 0($t0)
	sw $t1, -3256($fp)
	lw $t1, -3256($fp)
	li $t2, 0
	bne $t1, $t2, label1165
	j label1164
label1165:
	lw $t0, -736($fp)
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -3264($fp)
	li $t0, 47224
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -3272($fp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3276($fp)
	addi $sp, $sp, 12
	lw $t0, -1300($fp)
	sw $t0, -3280($fp)
	lw $t0, -3276($fp)
	lw $t1, -3280($fp)
	mul $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t1, -3284($fp)
	li $t2, 0
	bne $t1, $t2, label1163
	j label1164
label1163:
	li $t0, 0
	sw $t0, -3288($fp)
	li $t0, 0
	sw $t0, -3292($fp)
	lw $t0, -1360($fp)
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label1172
	j label1170
label1172:
	lw $t0, -2600($fp)
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label1171
	j label1170
label1171:
	lw $t0, -2588($fp)
	sw $t0, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label1169
	j label1170
label1169:
	li $t0, 1
	sw $t0, -3292($fp)
label1170:
	li $t0, 0
	sw $t0, -3308($fp)
	li $t0, 18955
	sw $t0, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label1174
	j label1173
label1173:
	li $t0, 1
	sw $t0, -3308($fp)
label1174:
	li $t0, 0
	lw $t1, -3308($fp)
	sub $t0, $t0, $t1
	sw $t0, -3316($fp)
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3320($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3324($fp)
	li $t0, 32193
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label1176
	j label1175
label1175:
	li $t0, 1
	sw $t0, -3324($fp)
label1176:
	lw $t0, -3320($fp)
	lw $t1, -3324($fp)
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	li $t0, 0
	sw $t0, -3336($fp)
	li $t0, 26575
	sw $t0, -3340($fp)
	li $t0, 0
	lw $t1, -3340($fp)
	sub $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t1, -3344($fp)
	li $t2, 0
	bne $t1, $t2, label1178
	j label1177
label1177:
	li $t0, 1
	sw $t0, -3336($fp)
label1178:
	lw $t0, -3332($fp)
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label1168
	j label1167
label1168:
	li $t0, 12370
	sw $t0, -3352($fp)
	li $t0, 33678
	sw $t0, -3356($fp)
	lw $t0, -1300($fp)
	sw $t0, -3360($fp)
	lw $t0, -3356($fp)
	lw $t1, -3360($fp)
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3352($fp)
	lw $t1, -3364($fp)
	sub $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t1, -3368($fp)
	li $t2, 0
	bne $t1, $t2, label1166
	j label1167
label1166:
	li $t0, 1
	sw $t0, -3288($fp)
label1167:
	j label1162
label1164:
	li $t0, 0
	sw $t0, -3372($fp)
	lw $t0, -1540($fp)
	sw $t0, -3376($fp)
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label1181
	j label1179
label1181:
	lw $t0, -1792($fp)
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label1179
	j label1180
label1179:
	li $t0, 1
	sw $t0, -3372($fp)
label1180:
	addi $t0, $fp, -192
	sw $t0, -3384($fp)
	li $t0, 0
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
	li $t0, 29859
	sw $t0, -3408($fp)
	lw $t0, -580($fp)
	sw $t0, -3412($fp)
	lw $t1, -3408($fp)
	lw $t2, -3412($fp)
	bne $t1, $t2, label1184
	j label1183
label1184:
	li $t0, 44654
	sw $t0, -3416($fp)
	lw $t1, -3416($fp)
	li $t2, 0
	bne $t1, $t2, label1182
	j label1183
label1182:
	li $t0, 1
	sw $t0, -3404($fp)
label1183:
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3420($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3420($fp)
	sub $t0, $t0, $t1
	sw $t0, -3424($fp)
	li $t0, 0
	lw $t1, -3424($fp)
	sub $t0, $t0, $t1
	sw $t0, -3428($fp)
	li $t0, 49338
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	sw $t0, -3440($fp)
	addi $t0, $fp, -32
	sw $t0, -3444($fp)
	li $t0, 0
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
	li $t0, 16202
	sw $t0, -3464($fp)
	li $t0, 41606
	sw $t0, -3468($fp)
	lw $t0, -3464($fp)
	lw $t1, -3468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3472($fp)
	lw $t0, -3460($fp)
	lw $t1, -3472($fp)
	add $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -1792($fp)
	sw $t0, -3480($fp)
	lw $t0, -3476($fp)
	lw $t1, -3480($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	li $t0, 31848
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	li $t0, 0
	sw $t0, -3500($fp)
	li $t0, 61569
	sw $t0, -3504($fp)
	lw $t0, -3436($fp)
	sw $t0, -3508($fp)
	lw $t1, -3504($fp)
	lw $t2, -3508($fp)
	blt $t1, $t2, label1187
	j label1188
label1187:
	li $t0, 1
	sw $t0, -3500($fp)
label1188:
	lw $t0, -1372($fp)
	sw $t0, -3512($fp)
	lw $t1, -3500($fp)
	lw $t2, -3512($fp)
	beq $t1, $t2, label1185
	j label1186
label1185:
	li $t0, 1
	sw $t0, -3496($fp)
label1186:
	addi $t0, $fp, -88
	sw $t0, -3516($fp)
	lw $t0, -1648($fp)
	sw $t0, -3520($fp)
	li $t0, 4
	lw $t1, -3520($fp)
	mul $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	lw $t1, -3516($fp)
	add $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	lw $t1, 0($t0)
	sw $t1, -3532($fp)
	li $t0, 886
	sw $t0, -3536($fp)
	lw $t0, -3532($fp)
	lw $t1, -3536($fp)
	mul $t0, $t0, $t1
	sw $t0, -3540($fp)
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3544($fp)
	addi $sp, $sp, 16
	li $t0, 12725
	sw $t0, -3548($fp)
	lw $t0, -3544($fp)
	lw $t1, -3548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3552($fp)
	li $t0, 39943
	sw $t0, -3556($fp)
	lw $t0, -1756($fp)
	sw $t0, -3560($fp)
	lw $t0, -1516($fp)
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	li $t0, 12459
	sw $t0, -3572($fp)
	lw $t0, -3568($fp)
	lw $t1, -3572($fp)
	add $t0, $t0, $t1
	sw $t0, -3576($fp)
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3580($fp)
	addi $sp, $sp, 16
	li $t0, 38659
	sw $t0, -3584($fp)
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	sub $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -1300($fp)
	sw $t0, -3592($fp)
	li $t0, 0
	sw $t0, -3596($fp)
	li $t0, 0
	sw $t0, -3600($fp)
	lw $t0, -1132($fp)
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label1192
	j label1191
label1191:
	li $t0, 1
	sw $t0, -3600($fp)
label1192:
	lw $t0, -1144($fp)
	sw $t0, -3608($fp)
	lw $t1, -3600($fp)
	lw $t2, -3608($fp)
	ble $t1, $t2, label1189
	j label1190
label1189:
	li $t0, 1
	sw $t0, -3596($fp)
label1190:
	addi $sp, $sp, -4
	lw $t0, -3588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3612($fp)
	addi $sp, $sp, 16
	lw $t0, -1120($fp)
	sw $t0, -3616($fp)
	lw $t0, -3612($fp)
	lw $t1, -3616($fp)
	mul $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, -3484($fp)
	lw $t1, -3620($fp)
	add $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -1036($fp)
	sw $t0, -3628($fp)
	li $t0, 0
	lw $t1, -3628($fp)
	sub $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -2348($fp)
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2360($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2372($fp)
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3648($fp)
	addi $t0, $fp, -32
	sw $t0, -3652($fp)
	li $t0, 4
	sw $t0, -3656($fp)
	li $t0, 4
	lw $t1, -3656($fp)
	mul $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	lw $t1, -3652($fp)
	add $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	lw $t1, 0($t0)
	sw $t1, -3668($fp)
	lw $t1, -3668($fp)
	li $t2, 0
	bne $t1, $t2, label1194
	j label1193
label1193:
	li $t0, 1
	sw $t0, -3648($fp)
label1194:
	lw $ra, -4($fp)
	lw $v0, -3648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2348($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2360($fp)
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2372($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3684($fp)
	li $t0, 0
	sw $t0, -3688($fp)
	lw $t0, -736($fp)
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label1199
	j label1198
label1198:
	li $t0, 1
	sw $t0, -3688($fp)
label1199:
	lw $t0, -2372($fp)
	sw $t0, -3696($fp)
	lw $t0, -3688($fp)
	lw $t1, -3696($fp)
	add $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t1, -3700($fp)
	li $t2, 0
	bne $t1, $t2, label1197
	j label1196
label1197:
	li $t0, 29940
	sw $t0, -3704($fp)
	lw $t0, -1336($fp)
	sw $t0, -3708($fp)
	lw $t0, -3704($fp)
	lw $t1, -3708($fp)
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	li $t0, 26416
	sw $t0, -3716($fp)
	lw $t0, -3712($fp)
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -1708($fp)
	sw $t0, -3724($fp)
	lw $t0, -3720($fp)
	lw $t1, -3724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3728($fp)
	lw $t1, -3728($fp)
	li $t2, 0
	bne $t1, $t2, label1195
	j label1196
label1195:
	li $t0, 1
	sw $t0, -3684($fp)
label1196:
	lw $ra, -4($fp)
	lw $v0, -3684($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1062:
	li $t0, 0
	sw $t0, -3732($fp)
	addi $t0, $fp, -64
	sw $t0, -3736($fp)
	li $t0, 4
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
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label1200
	j label1201
label1200:
	li $t0, 1
	sw $t0, -3732($fp)
label1201:
label1202:
	li $t0, 15390
	sw $t0, -3756($fp)
	li $t0, 0
	lw $t1, -3756($fp)
	sub $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t1, -3760($fp)
	li $t2, 0
	bne $t1, $t2, label1203
	j label1204
label1203:
	li $t0, 41847
	sw $t0, -3800($fp)
	addi $t0, $fp, -3780
	sw $t0, -3804($fp)
	li $t0, 0
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
	li $t0, 12357
	sw $t0, -3824($fp)
	addi $t0, $fp, -3780
	sw $t0, -3828($fp)
	li $t0, 1
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
	li $t0, 41965
	sw $t0, -3848($fp)
	addi $t0, $fp, -3780
	sw $t0, -3852($fp)
	li $t0, 2
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
	li $t0, 54217
	sw $t0, -3872($fp)
	addi $t0, $fp, -3780
	sw $t0, -3876($fp)
	li $t0, 3
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
	li $t0, 46035
	sw $t0, -3896($fp)
	addi $t0, $fp, -3780
	sw $t0, -3900($fp)
	li $t0, 4
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
	li $t0, 6289
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	sw $t0, -3928($fp)
	li $t0, 33335
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	sw $t0, -3940($fp)
	li $t0, 17464
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	sw $t0, -3952($fp)
	li $t0, 28258
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	sw $t0, -3964($fp)
	li $t0, 17137
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	sw $t0, -3976($fp)
	li $t0, 7701
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	sw $t0, -3988($fp)
	li $t0, 65228
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	sw $t0, -4000($fp)
	li $t0, 33339
	sw $t0, -4004($fp)
	addi $t0, $fp, -3796
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
	li $t0, 49307
	sw $t0, -4028($fp)
	addi $t0, $fp, -3796
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
	li $t0, 12151
	sw $t0, -4052($fp)
	addi $t0, $fp, -3796
	sw $t0, -4056($fp)
	li $t0, 2
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4056($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4052($fp)
	lw $t1, -4068($fp)
	sw $t0, 0($t1)
	lw $t0, -4068($fp)
	lw $t1, 0($t0)
	sw $t1, -4072($fp)
	li $t0, 7746
	sw $t0, -4076($fp)
	addi $t0, $fp, -3796
	sw $t0, -4080($fp)
	li $t0, 3
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4080($fp)
	lw $t1, -4088($fp)
	add $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4076($fp)
	lw $t1, -4092($fp)
	sw $t0, 0($t1)
	lw $t0, -4092($fp)
	lw $t1, 0($t0)
	sw $t1, -4096($fp)
label1205:
	lw $t0, -1636($fp)
	sw $t0, -4100($fp)
	li $t0, 0
	sw $t0, -4104($fp)
	addi $t0, $fp, -192
	sw $t0, -4108($fp)
	lw $t0, -1648($fp)
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
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label1210
	j label1209
label1210:
	li $t0, 50194
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label1208
	j label1209
label1208:
	li $t0, 1
	sw $t0, -4104($fp)
label1209:
	lw $t0, -3984($fp)
	sw $t0, -4132($fp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4136($fp)
	addi $sp, $sp, 12
	lw $t0, -4100($fp)
	lw $t1, -4136($fp)
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label1206
	j label1207
label1206:
	li $t0, 8184
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	sw $t0, -4152($fp)
	li $t0, 39595
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	sw $t0, -4164($fp)
	li $t0, 62919
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	sw $t0, -4176($fp)
	li $t0, 46843
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	sw $t0, -4188($fp)
	li $t0, 18975
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	sw $t0, -4200($fp)
	li $t0, 65471
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	sw $t0, -4212($fp)
	li $t0, 58022
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	sw $t0, -4224($fp)
	li $t0, 49993
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	sw $t0, -4236($fp)
	lw $t0, -1372($fp)
	sw $t0, -4240($fp)
	li $t0, 29875
	sw $t0, -4272($fp)
	addi $t0, $fp, -4268
	sw $t0, -4276($fp)
	li $t0, 0
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4276($fp)
	lw $t1, -4284($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4272($fp)
	lw $t1, -4288($fp)
	sw $t0, 0($t1)
	lw $t0, -4288($fp)
	lw $t1, 0($t0)
	sw $t1, -4292($fp)
	li $t0, 18902
	sw $t0, -4296($fp)
	addi $t0, $fp, -4268
	sw $t0, -4300($fp)
	li $t0, 1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4300($fp)
	lw $t1, -4308($fp)
	add $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4296($fp)
	lw $t1, -4312($fp)
	sw $t0, 0($t1)
	lw $t0, -4312($fp)
	lw $t1, 0($t0)
	sw $t1, -4316($fp)
	li $t0, 18159
	sw $t0, -4320($fp)
	addi $t0, $fp, -4268
	sw $t0, -4324($fp)
	li $t0, 2
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4324($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4320($fp)
	lw $t1, -4336($fp)
	sw $t0, 0($t1)
	lw $t0, -4336($fp)
	lw $t1, 0($t0)
	sw $t1, -4340($fp)
	li $t0, 52767
	sw $t0, -4344($fp)
	addi $t0, $fp, -4268
	sw $t0, -4348($fp)
	li $t0, 3
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4348($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4344($fp)
	lw $t1, -4360($fp)
	sw $t0, 0($t1)
	lw $t0, -4360($fp)
	lw $t1, 0($t0)
	sw $t1, -4364($fp)
	li $t0, 64603
	sw $t0, -4368($fp)
	addi $t0, $fp, -4268
	sw $t0, -4372($fp)
	li $t0, 4
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4372($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4368($fp)
	lw $t1, -4384($fp)
	sw $t0, 0($t1)
	lw $t0, -4384($fp)
	lw $t1, 0($t0)
	sw $t1, -4388($fp)
	li $t0, 33549
	sw $t0, -4392($fp)
	addi $t0, $fp, -4268
	sw $t0, -4396($fp)
	li $t0, 5
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4396($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4392($fp)
	lw $t1, -4408($fp)
	sw $t0, 0($t1)
	lw $t0, -4408($fp)
	lw $t1, 0($t0)
	sw $t1, -4412($fp)
	li $t0, 29078
	sw $t0, -4416($fp)
	addi $t0, $fp, -4268
	sw $t0, -4420($fp)
	li $t0, 6
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
	li $t0, 11424
	sw $t0, -4440($fp)
	li $t0, 0
	sw $t0, -4444($fp)
	addi $t0, $fp, -192
	sw $t0, -4448($fp)
	li $t0, 2
	sw $t0, -4452($fp)
	li $t0, 4
	lw $t1, -4452($fp)
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	lw $t1, -4448($fp)
	add $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, 0($t0)
	sw $t1, -4464($fp)
	lw $t1, -4464($fp)
	li $t2, 0
	bne $t1, $t2, label1212
	j label1211
label1211:
	li $t0, 1
	sw $t0, -4444($fp)
label1212:
	addi $t0, $fp, -64
	sw $t0, -4468($fp)
	li $t0, 4
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
	addi $t0, $fp, -116
	sw $t0, -4488($fp)
	lw $t0, -1840($fp)
	sw $t0, -4492($fp)
	li $t0, 4
	lw $t1, -4492($fp)
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, 0($t0)
	sw $t1, -4504($fp)
	li $t0, 9979
	sw $t0, -4508($fp)
	lw $t0, -4504($fp)
	lw $t1, -4508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4512($fp)
	addi $sp, $sp, -4
	lw $t0, -4444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4516($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4516($fp)
	sub $t0, $t0, $t1
	sw $t0, -4520($fp)
	li $t0, 0
	sw $t0, -4524($fp)
	li $t0, 0
	sw $t0, -4528($fp)
	addi $t0, $fp, -32
	sw $t0, -4532($fp)
	li $t0, 9388
	sw $t0, -4536($fp)
	lw $t0, -3960($fp)
	sw $t0, -4540($fp)
	lw $t0, -4536($fp)
	lw $t1, -4540($fp)
	mul $t0, $t0, $t1
	sw $t0, -4544($fp)
	li $t0, 4
	lw $t1, -4544($fp)
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	lw $t1, -4532($fp)
	add $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	lw $t1, 0($t0)
	sw $t1, -4556($fp)
	li $t0, 44526
	sw $t0, -4560($fp)
	li $t0, 0
	lw $t1, -4560($fp)
	sub $t0, $t0, $t1
	sw $t0, -4564($fp)
	li $t0, 2696
	sw $t0, -4568($fp)
	lw $t0, -4564($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t1, -4556($fp)
	lw $t2, -4572($fp)
	ble $t1, $t2, label1215
	j label1216
label1215:
	li $t0, 1
	sw $t0, -4528($fp)
label1216:
	addi $t0, $fp, -4268
	sw $t0, -4576($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -4592($fp)
	sub $t0, $t0, $t1
	sw $t0, -4596($fp)
	addi $t0, $fp, -4268
	sw $t0, -4600($fp)
	lw $t0, -1120($fp)
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
	addi $sp, $sp, -4
	lw $t0, -4596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4616($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4620($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4624($fp)
	li $t0, 36036
	sw $t0, -4628($fp)
	lw $t1, -4628($fp)
	li $t2, 0
	bne $t1, $t2, label1218
	j label1217
label1217:
	li $t0, 1
	sw $t0, -4624($fp)
label1218:
	lw $t0, -4620($fp)
	lw $t1, -4624($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t1, -4528($fp)
	lw $t2, -4632($fp)
	ble $t1, $t2, label1213
	j label1214
label1213:
	li $t0, 1
	sw $t0, -4524($fp)
label1214:
	li $t0, 56370
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -4640($fp)
	li $t0, 861
	sw $t0, -4644($fp)
	li $t0, 0
	lw $t1, -4644($fp)
	sub $t0, $t0, $t1
	sw $t0, -4648($fp)
	addi $sp, $sp, -4
	lw $t0, -4640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4652($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4656($fp)
	addi $t0, $fp, -124
	sw $t0, -4660($fp)
	addi $t0, $fp, -32
	sw $t0, -4664($fp)
	lw $t0, -1792($fp)
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
	lw $t0, -1372($fp)
	sw $t0, -4684($fp)
	lw $t0, -4680($fp)
	lw $t1, -4684($fp)
	add $t0, $t0, $t1
	sw $t0, -4688($fp)
	li $t0, 4
	lw $t1, -4688($fp)
	mul $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	lw $t1, -4660($fp)
	add $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	lw $t1, 0($t0)
	sw $t1, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label1221
	j label1220
label1221:
	li $t0, 43782
	sw $t0, -4704($fp)
	li $t0, 51055
	sw $t0, -4708($fp)
	lw $t0, -4704($fp)
	lw $t1, -4708($fp)
	sub $t0, $t0, $t1
	sw $t0, -4712($fp)
	li $t0, 64555
	sw $t0, -4716($fp)
	lw $t0, -1552($fp)
	sw $t0, -4720($fp)
	lw $t0, -4716($fp)
	lw $t1, -4720($fp)
	mul $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t1, -4712($fp)
	lw $t2, -4724($fp)
	blt $t1, $t2, label1219
	j label1220
label1219:
	li $t0, 1
	sw $t0, -4656($fp)
label1220:
label1222:
	li $t0, 0
	sw $t0, -4728($fp)
	li $t0, 0
	sw $t0, -4732($fp)
	lw $t0, -4220($fp)
	sw $t0, -4736($fp)
	lw $t0, -736($fp)
	sw $t0, -4740($fp)
	lw $t0, -4736($fp)
	lw $t1, -4740($fp)
	sub $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -3936($fp)
	sw $t0, -4748($fp)
	lw $t1, -4744($fp)
	lw $t2, -4748($fp)
	bgt $t1, $t2, label1228
	j label1229
label1228:
	li $t0, 1
	sw $t0, -4732($fp)
label1229:
	li $t0, 17841
	sw $t0, -4752($fp)
	li $t0, 0
	lw $t1, -4752($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -1372($fp)
	sw $t0, -4760($fp)
	lw $t0, -4756($fp)
	lw $t1, -4760($fp)
	add $t0, $t0, $t1
	sw $t0, -4764($fp)
	addi $sp, $sp, -4
	lw $t0, -4732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4768($fp)
	addi $sp, $sp, 12
	lw $t1, -4768($fp)
	li $t2, 0
	bne $t1, $t2, label1227
	j label1226
label1227:
	lw $t0, -4172($fp)
	sw $t0, -4772($fp)
	li $t0, 0
	lw $t1, -4772($fp)
	sub $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label1225
	j label1226
label1225:
	li $t0, 1
	sw $t0, -4728($fp)
label1226:
	lw $t0, -4728($fp)
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label1223
	j label1224
label1223:
label1230:
	lw $t0, -4208($fp)
	sw $t0, -4784($fp)
	li $t0, 0
	sw $t0, -4788($fp)
	lw $t0, -1768($fp)
	sw $t0, -4792($fp)
	li $t0, 57251
	sw $t0, -4796($fp)
	lw $t1, -4792($fp)
	lw $t2, -4796($fp)
	ble $t1, $t2, label1233
	j label1234
label1233:
	li $t0, 1
	sw $t0, -4788($fp)
label1234:
	li $t0, 0
	sw $t0, -4800($fp)
	lw $t0, -4160($fp)
	sw $t0, -4804($fp)
	li $t0, 0
	lw $t1, -4804($fp)
	sub $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t1, -4808($fp)
	li $t2, 0
	bne $t1, $t2, label1236
	j label1235
label1235:
	li $t0, 1
	sw $t0, -4800($fp)
label1236:
	li $t0, 0
	sw $t0, -4812($fp)
	li $t0, 0
	sw $t0, -4816($fp)
	lw $t0, 4($fp)
	sw $t0, -4820($fp)
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label1240
	j label1239
label1239:
	li $t0, 1
	sw $t0, -4816($fp)
label1240:
	li $t0, 12713
	sw $t0, -4824($fp)
	lw $t1, -4816($fp)
	lw $t2, -4824($fp)
	bgt $t1, $t2, label1237
	j label1238
label1237:
	li $t0, 1
	sw $t0, -4812($fp)
label1238:
	addi $sp, $sp, -4
	lw $t0, -4800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4812($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4828($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4828($fp)
	sub $t0, $t0, $t1
	sw $t0, -4832($fp)
	addi $t0, $fp, -3796
	sw $t0, -4836($fp)
	li $t0, 1
	sw $t0, -4840($fp)
	li $t0, 4
	lw $t1, -4840($fp)
	mul $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	lw $t1, -4836($fp)
	add $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	lw $t1, 0($t0)
	sw $t1, -4852($fp)
	li $t0, 38348
	sw $t0, -4856($fp)
	lw $t0, -4852($fp)
	lw $t1, -4856($fp)
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	li $t0, 45862
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -4868($fp)
	addi $sp, $sp, -4
	lw $t0, -4860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4868($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4872($fp)
	addi $sp, $sp, 12
	li $t0, 21274
	sw $t0, -4876($fp)
	lw $t0, -4872($fp)
	lw $t1, -4876($fp)
	mul $t0, $t0, $t1
	sw $t0, -4880($fp)
	li $t0, 0
	sw $t0, -4884($fp)
	li $t0, 48438
	sw $t0, -4888($fp)
	lw $t1, -4888($fp)
	li $t2, 0
	bne $t1, $t2, label1243
	j label1242
label1243:
	lw $t0, -1720($fp)
	sw $t0, -4892($fp)
	lw $t1, -4892($fp)
	li $t2, 0
	bne $t1, $t2, label1241
	j label1242
label1241:
	li $t0, 1
	sw $t0, -4884($fp)
label1242:
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4896($fp)
	addi $sp, $sp, 12
	lw $t0, -1792($fp)
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	sub $t0, $t0, $t1
	sw $t0, -4904($fp)
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4908($fp)
	addi $sp, $sp, 12
	lw $t0, -1348($fp)
	sw $t0, -4912($fp)
	lw $t0, -4908($fp)
	lw $t1, -4912($fp)
	add $t0, $t0, $t1
	sw $t0, -4916($fp)
	addi $sp, $sp, -4
	lw $t0, -4788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4916($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4920($fp)
	addi $sp, $sp, 12
	lw $t0, -4784($fp)
	lw $t1, -4920($fp)
	mul $t0, $t0, $t1
	sw $t0, -4924($fp)
	li $t0, 39433
	sw $t0, -4928($fp)
	lw $t0, -4924($fp)
	lw $t1, -4928($fp)
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	li $t0, 0
	lw $t1, -4932($fp)
	sub $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t1, -4936($fp)
	li $t2, 0
	bne $t1, $t2, label1232
	j label1231
label1231:
	lw $t0, -3924($fp)
	sw $t0, -4940($fp)
	li $t0, 56319
	sw $t0, -4944($fp)
	lw $t0, -4940($fp)
	lw $t1, -4944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4948($fp)
	li $t0, 0
	sw $t0, -4952($fp)
	lw $t0, -4184($fp)
	sw $t0, -4956($fp)
	lw $t0, -4148($fp)
	sw $t0, -4960($fp)
	lw $t0, -4956($fp)
	lw $t1, -4960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4964($fp)
	lw $t0, -1504($fp)
	sw $t0, -4968($fp)
	li $t0, 0
	lw $t1, -4968($fp)
	sub $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4232($fp)
	sw $t0, -4976($fp)
	lw $t0, -4972($fp)
	lw $t1, -4976($fp)
	sub $t0, $t0, $t1
	sw $t0, -4980($fp)
	addi $sp, $sp, -4
	lw $t0, -4964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4984($fp)
	addi $sp, $sp, 12
	lw $t1, -4984($fp)
	li $t2, 0
	bne $t1, $t2, label1248
	j label1247
label1247:
	li $t0, 1
	sw $t0, -4952($fp)
label1248:
	lw $t1, -4948($fp)
	lw $t2, -4952($fp)
	bne $t1, $t2, label1244
	j label1245
label1244:
	addi $t0, $fp, -192
	sw $t0, -4988($fp)
	li $t0, 0
	sw $t0, -4992($fp)
	li $t0, 7446
	sw $t0, -4996($fp)
	lw $t1, -4996($fp)
	li $t2, 0
	bne $t1, $t2, label1250
	j label1249
label1249:
	li $t0, 1
	sw $t0, -4992($fp)
label1250:
	li $t0, 4
	lw $t1, -4992($fp)
	mul $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	lw $t1, 0($t0)
	sw $t1, -5008($fp)
	lw $t0, -4196($fp)
	sw $t0, -5012($fp)
	li $t0, 17425
	sw $t0, -5016($fp)
	lw $t0, -5012($fp)
	lw $t1, -5016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5020($fp)
	li $t0, 46782
	sw $t0, -5024($fp)
	lw $t0, -5020($fp)
	lw $t1, -5024($fp)
	mul $t0, $t0, $t1
	sw $t0, -5028($fp)
	addi $t0, $fp, -3780
	sw $t0, -5032($fp)
	li $t0, 2
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
	lw $t0, -1120($fp)
	sw $t0, -5052($fp)
	lw $t0, -5048($fp)
	lw $t1, -5052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5056($fp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5060($fp)
	addi $sp, $sp, 12
	lw $t0, -5008($fp)
	lw $t1, -5060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5064($fp)
	j label1246
label1245:
	li $t0, 0
	sw $t0, -5068($fp)
	li $t0, 3519
	sw $t0, -5072($fp)
	lw $t1, -5072($fp)
	li $t2, 0
	bne $t1, $t2, label1255
	j label1254
label1254:
	li $t0, 1
	sw $t0, -5068($fp)
label1255:
	lw $t0, -1300($fp)
	sw $t0, -5076($fp)
	lw $t0, -5068($fp)
	lw $t1, -5076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5080($fp)
	li $t0, 0
	sw $t0, -5084($fp)
	li $t0, 59666
	sw $t0, -5088($fp)
	li $t0, 33693
	sw $t0, -5092($fp)
	lw $t0, -5088($fp)
	lw $t1, -5092($fp)
	sub $t0, $t0, $t1
	sw $t0, -5096($fp)
	li $t0, 32341
	sw $t0, -5100($fp)
	lw $t1, -5096($fp)
	lw $t2, -5100($fp)
	beq $t1, $t2, label1256
	j label1257
label1256:
	li $t0, 1
	sw $t0, -5084($fp)
label1257:
	lw $t0, -1756($fp)
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -5108($fp)
	addi $sp, $sp, -4
	lw $t0, -5080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5112($fp)
	addi $sp, $sp, 16
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label1251
	j label1252
label1251:
	addi $t0, $fp, -124
	sw $t0, -5116($fp)
	li $t0, 0
	sw $t0, -5120($fp)
	lw $t0, -1780($fp)
	sw $t0, -5124($fp)
	lw $t1, -5124($fp)
	li $t2, 0
	bne $t1, $t2, label1259
	j label1258
label1258:
	li $t0, 1
	sw $t0, -5120($fp)
label1259:
	li $t0, 4
	lw $t1, -5120($fp)
	mul $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	lw $t1, -5116($fp)
	add $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	lw $t1, 0($t0)
	sw $t1, -5136($fp)
	lw $t0, -1816($fp)
	sw $t0, -5140($fp)
	lw $t0, -5136($fp)
	lw $t1, -5140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5144($fp)
	li $t0, 0
	sw $t0, -5148($fp)
	li $t0, 46756
	sw $t0, -5152($fp)
	li $t0, 1626
	sw $t0, -5156($fp)
	lw $t0, -5152($fp)
	lw $t1, -5156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5160($fp)
	li $t0, 55428
	sw $t0, -5164($fp)
	lw $t1, -5160($fp)
	lw $t2, -5164($fp)
	beq $t1, $t2, label1260
	j label1261
label1260:
	li $t0, 1
	sw $t0, -5148($fp)
label1261:
	li $t0, 0
	sw $t0, -5168($fp)
	li $t0, 0
	sw $t0, -5172($fp)
	li $t0, 49320
	sw $t0, -5176($fp)
	lw $t0, -3996($fp)
	sw $t0, -5180($fp)
	lw $t0, -5176($fp)
	lw $t1, -5180($fp)
	mul $t0, $t0, $t1
	sw $t0, -5184($fp)
	li $t0, 6990
	sw $t0, -5188($fp)
	lw $t0, -5184($fp)
	lw $t1, -5188($fp)
	add $t0, $t0, $t1
	sw $t0, -5192($fp)
	li $t0, 0
	sw $t0, -5196($fp)
	li $t0, 47737
	sw $t0, -5200($fp)
	lw $t1, -5200($fp)
	li $t2, 0
	bne $t1, $t2, label1267
	j label1266
label1266:
	li $t0, 1
	sw $t0, -5196($fp)
label1267:
	addi $sp, $sp, -4
	lw $t0, -5192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5204($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5208($fp)
	li $t0, 56903
	sw $t0, -5212($fp)
	li $t0, 5538
	sw $t0, -5216($fp)
	lw $t0, -5212($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t1, -5220($fp)
	li $t2, 0
	bne $t1, $t2, label1270
	j label1269
label1270:
	li $t0, 21470
	sw $t0, -5224($fp)
	lw $t1, -5224($fp)
	li $t2, 0
	bne $t1, $t2, label1268
	j label1269
label1268:
	li $t0, 1
	sw $t0, -5208($fp)
label1269:
	addi $sp, $sp, -4
	lw $t0, -5204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5228($fp)
	addi $sp, $sp, 12
	lw $t0, -3960($fp)
	sw $t0, -5232($fp)
	lw $t1, -5228($fp)
	lw $t2, -5232($fp)
	beq $t1, $t2, label1264
	j label1265
label1264:
	li $t0, 1
	sw $t0, -5172($fp)
label1265:
	li $t0, 0
	sw $t0, -5236($fp)
	lw $t0, -1732($fp)
	sw $t0, -5240($fp)
	lw $t1, -5240($fp)
	li $t2, 0
	bne $t1, $t2, label1272
	j label1273
label1273:
	li $t0, 20609
	sw $t0, -5244($fp)
	lw $t1, -5244($fp)
	li $t2, 0
	bne $t1, $t2, label1271
	j label1272
label1271:
	li $t0, 1
	sw $t0, -5236($fp)
label1272:
	addi $t0, $fp, -3780
	sw $t0, -5248($fp)
	li $t0, 2
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
	addi $sp, $sp, -4
	lw $t0, -5172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5268($fp)
	addi $sp, $sp, 16
	lw $t0, -4196($fp)
	sw $t0, -5272($fp)
	li $t0, 0
	lw $t1, -5272($fp)
	sub $t0, $t0, $t1
	sw $t0, -5276($fp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5276($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5280($fp)
	addi $sp, $sp, 12
	lw $t1, -5280($fp)
	li $t2, 0
	bne $t1, $t2, label1263
	j label1262
label1262:
	li $t0, 1
	sw $t0, -5168($fp)
label1263:
	addi $sp, $sp, -4
	lw $t0, -5148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5168($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5284($fp)
	addi $sp, $sp, 12
	lw $t0, -5144($fp)
	lw $t1, -5284($fp)
	add $t0, $t0, $t1
	sw $t0, -5288($fp)
	j label1253
label1252:
	li $t0, 27083
	sw $t0, -5292($fp)
label1253:
label1246:
	j label1230
label1232:
	j label1222
label1224:
	lw $t0, -4148($fp)
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4160($fp)
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4172($fp)
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4184($fp)
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4196($fp)
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4208($fp)
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4220($fp)
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4232($fp)
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5328($fp)
	li $t0, 38443
	sw $t0, -5332($fp)
	lw $t0, -1504($fp)
	sw $t0, -5336($fp)
	lw $t0, -5332($fp)
	lw $t1, -5336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 0
	bne $t1, $t2, label1274
	j label1276
label1276:
	addi $t0, $fp, -192
	sw $t0, -5344($fp)
	li $t0, 0
	sw $t0, -5348($fp)
	li $t0, 38266
	sw $t0, -5352($fp)
	li $t0, 65431
	sw $t0, -5356($fp)
	lw $t1, -5352($fp)
	lw $t2, -5356($fp)
	beq $t1, $t2, label1277
	j label1278
label1277:
	li $t0, 1
	sw $t0, -5348($fp)
label1278:
	li $t0, 4
	lw $t1, -5348($fp)
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	lw $t1, 0($t0)
	sw $t1, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label1274
	j label1275
label1274:
	li $t0, 1
	sw $t0, -5328($fp)
label1275:
	lw $ra, -4($fp)
	lw $v0, -5328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1205
label1207:
	li $t0, 0
	sw $t0, -5372($fp)
	lw $t0, -1828($fp)
	sw $t0, -5376($fp)
	lw $t1, -5376($fp)
	li $t2, 0
	bne $t1, $t2, label1279
	j label1281
label1281:
	lw $t0, -1504($fp)
	sw $t0, -5380($fp)
	lw $t1, -5380($fp)
	li $t2, 0
	bne $t1, $t2, label1279
	j label1280
label1279:
	li $t0, 1
	sw $t0, -5372($fp)
label1280:
	li $t0, 0
	sw $t0, -5384($fp)
	li $t0, 41060
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -5392($fp)
	li $t0, 0
	sw $t0, -5396($fp)
	li $t0, 0
	sw $t0, -5400($fp)
	li $t0, 50923
	sw $t0, -5404($fp)
	lw $t1, -5404($fp)
	li $t2, 0
	bne $t1, $t2, label1288
	j label1287
label1287:
	li $t0, 1
	sw $t0, -5400($fp)
label1288:
	li $t0, 47928
	sw $t0, -5408($fp)
	lw $t1, -5400($fp)
	lw $t2, -5408($fp)
	beq $t1, $t2, label1285
	j label1286
label1285:
	li $t0, 1
	sw $t0, -5396($fp)
label1286:
	addi $sp, $sp, -4
	lw $t0, -5392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5396($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5412($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5416($fp)
	addi $t0, $fp, -160
	sw $t0, -5420($fp)
	li $t0, 2
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
	li $t0, 33614
	sw $t0, -5440($fp)
	lw $t1, -5436($fp)
	lw $t2, -5440($fp)
	bne $t1, $t2, label1289
	j label1290
label1289:
	li $t0, 1
	sw $t0, -5416($fp)
label1290:
	addi $sp, $sp, -4
	lw $t0, -5412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5444($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5448($fp)
	lw $t0, -1132($fp)
	sw $t0, -5452($fp)
	lw $t0, -208($fp)
	sw $t0, -5456($fp)
	lw $t0, -5452($fp)
	lw $t1, -5456($fp)
	sub $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -1828($fp)
	sw $t0, -5464($fp)
	lw $t1, -5460($fp)
	lw $t2, -5464($fp)
	beq $t1, $t2, label1291
	j label1292
label1291:
	li $t0, 1
	sw $t0, -5448($fp)
label1292:
	addi $sp, $sp, -4
	lw $t0, -5444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5448($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5468($fp)
	addi $sp, $sp, 12
	lw $t1, -5468($fp)
	li $t2, 0
	bne $t1, $t2, label1282
	j label1284
label1284:
	li $t0, 14410
	sw $t0, -5472($fp)
	lw $t1, -5472($fp)
	li $t2, 0
	bne $t1, $t2, label1282
	j label1283
label1282:
	li $t0, 1
	sw $t0, -5384($fp)
label1283:
	li $t0, 0
	sw $t0, -5476($fp)
	lw $t0, -3972($fp)
	sw $t0, -5480($fp)
	lw $t1, -5480($fp)
	li $t2, 0
	bne $t1, $t2, label1294
	j label1293
label1293:
	li $t0, 1
	sw $t0, -5476($fp)
label1294:
	addi $sp, $sp, -4
	lw $t0, -5384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5484($fp)
	addi $sp, $sp, 12
	li $t0, 50135
	sw $t0, -5488($fp)
	lw $t0, -5484($fp)
	lw $t1, -5488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5492($fp)
	li $t0, 59717
	sw $t0, -5496($fp)
	lw $t0, -1348($fp)
	sw $t0, -5500($fp)
	lw $t0, -5496($fp)
	lw $t1, -5500($fp)
	mul $t0, $t0, $t1
	sw $t0, -5504($fp)
	addi $sp, $sp, -4
	lw $t0, -5372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5504($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5508($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5508($fp)
	sub $t0, $t0, $t1
	sw $t0, -5512($fp)
	li $t0, 0
	lw $t1, -5512($fp)
	sub $t0, $t0, $t1
	sw $t0, -5516($fp)
	li $t0, 0
	lw $t1, -5516($fp)
	sub $t0, $t0, $t1
	sw $t0, -5520($fp)
	li $t0, 0
	lw $t1, -5520($fp)
	sub $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $ra, -4($fp)
	lw $v0, -5524($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1012($fp)
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -5532($fp)
	lw $ra, -4($fp)
	lw $v0, -5532($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1372($fp)
	sw $t0, -5536($fp)
	lw $t0, -3936($fp)
	sw $t0, -5540($fp)
	lw $t0, -5536($fp)
	lw $t1, -5540($fp)
	mul $t0, $t0, $t1
	sw $t0, -5544($fp)
	li $t0, 0
	sw $t0, -5548($fp)
	li $t0, 0
	sw $t0, -5552($fp)
	lw $t0, -1768($fp)
	sw $t0, -5556($fp)
	li $t0, 44265
	sw $t0, -5560($fp)
	lw $t0, -5556($fp)
	lw $t1, -5560($fp)
	sub $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -1300($fp)
	sw $t0, -5568($fp)
	lw $t1, -5564($fp)
	lw $t2, -5568($fp)
	beq $t1, $t2, label1297
	j label1298
label1297:
	li $t0, 1
	sw $t0, -5552($fp)
label1298:
	li $t0, 0
	sw $t0, -5572($fp)
	li $t0, 61193
	sw $t0, -5576($fp)
	lw $t0, -1504($fp)
	sw $t0, -5580($fp)
	lw $t0, -5576($fp)
	lw $t1, -5580($fp)
	mul $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $t0, -3948($fp)
	sw $t0, -5588($fp)
	lw $t1, -5584($fp)
	lw $t2, -5588($fp)
	bge $t1, $t2, label1299
	j label1300
label1299:
	li $t0, 1
	sw $t0, -5572($fp)
label1300:
	li $t0, 58486
	sw $t0, -5592($fp)
	lw $t0, -1012($fp)
	sw $t0, -5596($fp)
	lw $t0, -5592($fp)
	lw $t1, -5596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5600($fp)
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5600($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5604($fp)
	addi $sp, $sp, 16
	lw $t1, -5604($fp)
	li $t2, 0
	bne $t1, $t2, label1296
	j label1295
label1295:
	li $t0, 1
	sw $t0, -5548($fp)
label1296:
	lw $t0, -5544($fp)
	lw $t1, -5548($fp)
	sub $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -1516($fp)
	sw $t0, -5612($fp)
	li $t0, 0
	sw $t0, -5616($fp)
	li $t0, 63036
	sw $t0, -5620($fp)
	li $t0, 0
	lw $t1, -5620($fp)
	sub $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t1, -5624($fp)
	li $t2, 0
	bne $t1, $t2, label1301
	j label1303
label1303:
	lw $t0, -3996($fp)
	sw $t0, -5628($fp)
	lw $t1, -5628($fp)
	li $t2, 0
	bne $t1, $t2, label1301
	j label1302
label1301:
	li $t0, 1
	sw $t0, -5616($fp)
label1302:
	li $t0, 39327
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -5636($fp)
	li $t0, 0
	sw $t0, -5640($fp)
	lw $t0, -976($fp)
	sw $t0, -5644($fp)
	li $t0, 26643
	sw $t0, -5648($fp)
	lw $t0, -5644($fp)
	lw $t1, -5648($fp)
	mul $t0, $t0, $t1
	sw $t0, -5652($fp)
	li $t0, 27998
	sw $t0, -5656($fp)
	lw $t0, -5652($fp)
	lw $t1, -5656($fp)
	mul $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -1804($fp)
	sw $t0, -5664($fp)
	addi $sp, $sp, -4
	lw $t0, -5660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5664($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5668($fp)
	addi $sp, $sp, 12
	li $t0, 47784
	sw $t0, -5672($fp)
	lw $t1, -5668($fp)
	lw $t2, -5672($fp)
	bne $t1, $t2, label1304
	j label1305
label1304:
	li $t0, 1
	sw $t0, -5640($fp)
label1305:
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5676($fp)
	addi $sp, $sp, 16
	lw $t0, -5612($fp)
	lw $t1, -5676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5680($fp)
	lw $t0, -5608($fp)
	lw $t1, -5680($fp)
	add $t0, $t0, $t1
	sw $t0, -5684($fp)
	li $t0, 2857
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	sw $t0, -5744($fp)
	li $t0, 30694
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	sw $t0, -5756($fp)
	li $t0, 3038
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	sw $t0, -5768($fp)
	li $t0, 24328
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	sw $t0, -5780($fp)
	li $t0, 12896
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	sw $t0, -5792($fp)
	li $t0, 52359
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	sw $t0, -5804($fp)
	li $t0, 31318
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	sw $t0, -5816($fp)
	li $t0, 59652
	sw $t0, -5820($fp)
	addi $t0, $fp, -5712
	sw $t0, -5824($fp)
	li $t0, 0
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5824($fp)
	lw $t1, -5832($fp)
	add $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5820($fp)
	lw $t1, -5836($fp)
	sw $t0, 0($t1)
	lw $t0, -5836($fp)
	lw $t1, 0($t0)
	sw $t1, -5840($fp)
	li $t0, 53985
	sw $t0, -5844($fp)
	addi $t0, $fp, -5712
	sw $t0, -5848($fp)
	li $t0, 1
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5848($fp)
	lw $t1, -5856($fp)
	add $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5844($fp)
	lw $t1, -5860($fp)
	sw $t0, 0($t1)
	lw $t0, -5860($fp)
	lw $t1, 0($t0)
	sw $t1, -5864($fp)
	li $t0, 21210
	sw $t0, -5868($fp)
	addi $t0, $fp, -5712
	sw $t0, -5872($fp)
	li $t0, 2
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5872($fp)
	lw $t1, -5880($fp)
	add $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5868($fp)
	lw $t1, -5884($fp)
	sw $t0, 0($t1)
	lw $t0, -5884($fp)
	lw $t1, 0($t0)
	sw $t1, -5888($fp)
	li $t0, 21199
	sw $t0, -5892($fp)
	addi $t0, $fp, -5712
	sw $t0, -5896($fp)
	li $t0, 3
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5896($fp)
	lw $t1, -5904($fp)
	add $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5892($fp)
	lw $t1, -5908($fp)
	sw $t0, 0($t1)
	lw $t0, -5908($fp)
	lw $t1, 0($t0)
	sw $t1, -5912($fp)
	li $t0, 26892
	sw $t0, -5916($fp)
	addi $t0, $fp, -5712
	sw $t0, -5920($fp)
	li $t0, 4
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5920($fp)
	lw $t1, -5928($fp)
	add $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5916($fp)
	lw $t1, -5932($fp)
	sw $t0, 0($t1)
	lw $t0, -5932($fp)
	lw $t1, 0($t0)
	sw $t1, -5936($fp)
	li $t0, 59476
	sw $t0, -5940($fp)
	addi $t0, $fp, -5712
	sw $t0, -5944($fp)
	li $t0, 5
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5944($fp)
	lw $t1, -5952($fp)
	add $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5940($fp)
	lw $t1, -5956($fp)
	sw $t0, 0($t1)
	lw $t0, -5956($fp)
	lw $t1, 0($t0)
	sw $t1, -5960($fp)
	li $t0, 21095
	sw $t0, -5964($fp)
	addi $t0, $fp, -5712
	sw $t0, -5968($fp)
	li $t0, 6
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t0, -5968($fp)
	lw $t1, -5976($fp)
	add $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -5964($fp)
	lw $t1, -5980($fp)
	sw $t0, 0($t1)
	lw $t0, -5980($fp)
	lw $t1, 0($t0)
	sw $t1, -5984($fp)
	li $t0, 21073
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	sw $t0, -5996($fp)
	li $t0, 44919
	sw $t0, -6000($fp)
	addi $t0, $fp, -5732
	sw $t0, -6004($fp)
	li $t0, 0
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t0, -6004($fp)
	lw $t1, -6012($fp)
	add $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t0, -6000($fp)
	lw $t1, -6016($fp)
	sw $t0, 0($t1)
	lw $t0, -6016($fp)
	lw $t1, 0($t0)
	sw $t1, -6020($fp)
	li $t0, 12705
	sw $t0, -6024($fp)
	addi $t0, $fp, -5732
	sw $t0, -6028($fp)
	li $t0, 1
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6036($fp)
	lw $t0, -6028($fp)
	lw $t1, -6036($fp)
	add $t0, $t0, $t1
	sw $t0, -6040($fp)
	lw $t0, -6024($fp)
	lw $t1, -6040($fp)
	sw $t0, 0($t1)
	lw $t0, -6040($fp)
	lw $t1, 0($t0)
	sw $t1, -6044($fp)
	li $t0, 54687
	sw $t0, -6048($fp)
	addi $t0, $fp, -5732
	sw $t0, -6052($fp)
	li $t0, 2
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t0, -6052($fp)
	lw $t1, -6060($fp)
	add $t0, $t0, $t1
	sw $t0, -6064($fp)
	lw $t0, -6048($fp)
	lw $t1, -6064($fp)
	sw $t0, 0($t1)
	lw $t0, -6064($fp)
	lw $t1, 0($t0)
	sw $t1, -6068($fp)
	li $t0, 30307
	sw $t0, -6072($fp)
	addi $t0, $fp, -5732
	sw $t0, -6076($fp)
	li $t0, 3
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t0, -6076($fp)
	lw $t1, -6084($fp)
	add $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -6072($fp)
	lw $t1, -6088($fp)
	sw $t0, 0($t1)
	lw $t0, -6088($fp)
	lw $t1, 0($t0)
	sw $t1, -6092($fp)
	li $t0, 60634
	sw $t0, -6096($fp)
	addi $t0, $fp, -5732
	sw $t0, -6100($fp)
	li $t0, 4
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6100($fp)
	lw $t1, -6108($fp)
	add $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6096($fp)
	lw $t1, -6112($fp)
	sw $t0, 0($t1)
	lw $t0, -6112($fp)
	lw $t1, 0($t0)
	sw $t1, -6116($fp)
	li $t0, 30211
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	sw $t0, -6128($fp)
	li $t0, 0
	sw $t0, -6132($fp)
	li $t0, 44717
	sw $t0, -6136($fp)
	lw $t0, -1000($fp)
	sw $t0, -6140($fp)
	lw $t0, -6136($fp)
	lw $t1, -6140($fp)
	mul $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -3984($fp)
	sw $t0, -6148($fp)
	lw $t1, -6144($fp)
	lw $t2, -6148($fp)
	bgt $t1, $t2, label1311
	j label1310
label1311:
	li $t0, 45233
	sw $t0, -6152($fp)
	lw $t0, -5788($fp)
	sw $t0, -6156($fp)
	lw $t1, -6152($fp)
	lw $t2, -6156($fp)
	beq $t1, $t2, label1309
	j label1310
label1309:
	li $t0, 1
	sw $t0, -6132($fp)
label1310:
	lw $t0, -6132($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	sw $t0, -6160($fp)
	lw $t1, -6160($fp)
	li $t2, 0
	bne $t1, $t2, label1306
	j label1307
label1306:
label1312:
	addi $t0, $fp, -32
	sw $t0, -6164($fp)
	li $t0, 5
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
	lw $t1, -6180($fp)
	li $t2, 0
	bne $t1, $t2, label1313
	j label1314
label1313:
	li $t0, 0
	sw $t0, -6184($fp)
	addi $t0, $fp, -5732
	sw $t0, -6188($fp)
	addi $t0, $fp, -124
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
	li $t0, 4
	lw $t1, -6208($fp)
	mul $t0, $t0, $t1
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	lw $t1, -6188($fp)
	add $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	lw $t1, 0($t0)
	sw $t1, -6220($fp)
	li $t0, 337
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -6228($fp)
	li $t0, 0
	sw $t0, -6232($fp)
	lw $t0, -1792($fp)
	sw $t0, -6236($fp)
	lw $t0, -3960($fp)
	sw $t0, -6240($fp)
	lw $t0, -6236($fp)
	lw $t1, -6240($fp)
	mul $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t1, -6244($fp)
	li $t2, 0
	bne $t1, $t2, label1317
	j label1319
label1319:
	li $t0, 23596
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label1317
	j label1318
label1317:
	li $t0, 1
	sw $t0, -6232($fp)
label1318:
	li $t0, 0
	sw $t0, -6252($fp)
	lw $t0, -5800($fp)
	sw $t0, -6256($fp)
	lw $t1, -6256($fp)
	li $t2, 0
	bne $t1, $t2, label1322
	j label1320
label1322:
	li $t0, 6211
	sw $t0, -6260($fp)
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label1320
	j label1321
label1320:
	li $t0, 1
	sw $t0, -6252($fp)
label1321:
	lw $t0, -1000($fp)
	sw $t0, -6264($fp)
	lw $t0, -3984($fp)
	sw $t0, -6268($fp)
	lw $t0, -6264($fp)
	lw $t1, -6268($fp)
	sub $t0, $t0, $t1
	sw $t0, -6272($fp)
	li $t0, 2837
	sw $t0, -6276($fp)
	lw $t0, -988($fp)
	sw $t0, -6280($fp)
	lw $t0, -6276($fp)
	lw $t1, -6280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6284($fp)
	addi $sp, $sp, -4
	lw $t0, -6228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6284($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6288($fp)
	addi $sp, $sp, 24
	lw $t0, -6220($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6292($fp)
	addi $t0, $fp, -180
	sw $t0, -6296($fp)
	li $t0, 0
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
	addi $t0, $fp, -136
	sw $t0, -6316($fp)
	li $t0, 1
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
	lw $t0, -6312($fp)
	lw $t1, -6332($fp)
	add $t0, $t0, $t1
	sw $t0, -6336($fp)
	lw $t1, -6292($fp)
	lw $t2, -6336($fp)
	bge $t1, $t2, label1315
	j label1316
label1315:
	li $t0, 1
	sw $t0, -6184($fp)
label1316:
	lw $ra, -4($fp)
	lw $v0, -6184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1312
label1314:
	j label1308
label1307:
	addi $t0, $fp, -160
	sw $t0, -6340($fp)
	addi $t0, $fp, -200
	sw $t0, -6344($fp)
	lw $t0, -1792($fp)
	sw $t0, -6348($fp)
	li $t0, 4
	lw $t1, -6348($fp)
	mul $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	lw $t1, -6344($fp)
	add $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	lw $t1, 0($t0)
	sw $t1, -6360($fp)
	li $t0, 1651
	sw $t0, -6364($fp)
	lw $t0, -6360($fp)
	lw $t1, -6364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6368($fp)
	li $t0, 4
	lw $t1, -6368($fp)
	mul $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	lw $t1, -6340($fp)
	add $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	lw $t1, 0($t0)
	sw $t1, -6380($fp)
	lw $t0, -988($fp)
	sw $t0, -6384($fp)
	li $t0, 0
	lw $t1, -6384($fp)
	sub $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t1, -6380($fp)
	lw $t2, -6388($fp)
	beq $t1, $t2, label1323
	j label1324
label1323:
	lw $t0, -5992($fp)
	sw $t0, -6392($fp)
	lw $t0, -988($fp)
	sw $t0, -6396($fp)
	li $t0, 55735
	sw $t0, -6400($fp)
	lw $t0, -6396($fp)
	lw $t1, -6400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6404($fp)
	lw $t0, -6392($fp)
	lw $t1, -6404($fp)
	add $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -6412($fp)
label1324:
label1308:
	li $t0, 64714
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	sw $t0, -6464($fp)
	li $t0, 61303
	sw $t0, -6468($fp)
	addi $t0, $fp, -6452
	sw $t0, -6472($fp)
	li $t0, 0
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6472($fp)
	lw $t1, -6480($fp)
	add $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t0, -6468($fp)
	lw $t1, -6484($fp)
	sw $t0, 0($t1)
	lw $t0, -6484($fp)
	lw $t1, 0($t0)
	sw $t1, -6488($fp)
	li $t0, 44184
	sw $t0, -6492($fp)
	addi $t0, $fp, -6452
	sw $t0, -6496($fp)
	li $t0, 1
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6496($fp)
	lw $t1, -6504($fp)
	add $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -6492($fp)
	lw $t1, -6508($fp)
	sw $t0, 0($t1)
	lw $t0, -6508($fp)
	lw $t1, 0($t0)
	sw $t1, -6512($fp)
	li $t0, 20389
	sw $t0, -6516($fp)
	addi $t0, $fp, -6452
	sw $t0, -6520($fp)
	li $t0, 2
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -6520($fp)
	lw $t1, -6528($fp)
	add $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6516($fp)
	lw $t1, -6532($fp)
	sw $t0, 0($t1)
	lw $t0, -6532($fp)
	lw $t1, 0($t0)
	sw $t1, -6536($fp)
	li $t0, 16967
	sw $t0, -6540($fp)
	addi $t0, $fp, -6452
	sw $t0, -6544($fp)
	li $t0, 3
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -6544($fp)
	lw $t1, -6552($fp)
	add $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t0, -6540($fp)
	lw $t1, -6556($fp)
	sw $t0, 0($t1)
	lw $t0, -6556($fp)
	lw $t1, 0($t0)
	sw $t1, -6560($fp)
	li $t0, 5540
	sw $t0, -6564($fp)
	addi $t0, $fp, -6452
	sw $t0, -6568($fp)
	li $t0, 4
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6568($fp)
	lw $t1, -6576($fp)
	add $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6564($fp)
	lw $t1, -6580($fp)
	sw $t0, 0($t1)
	lw $t0, -6580($fp)
	lw $t1, 0($t0)
	sw $t1, -6584($fp)
	li $t0, 14329
	sw $t0, -6588($fp)
	addi $t0, $fp, -6452
	sw $t0, -6592($fp)
	li $t0, 5
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6592($fp)
	lw $t1, -6600($fp)
	add $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6588($fp)
	lw $t1, -6604($fp)
	sw $t0, 0($t1)
	lw $t0, -6604($fp)
	lw $t1, 0($t0)
	sw $t1, -6608($fp)
	li $t0, 38062
	sw $t0, -6612($fp)
	addi $t0, $fp, -6452
	sw $t0, -6616($fp)
	li $t0, 6
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t0, -6616($fp)
	lw $t1, -6624($fp)
	add $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -6612($fp)
	lw $t1, -6628($fp)
	sw $t0, 0($t1)
	lw $t0, -6628($fp)
	lw $t1, 0($t0)
	sw $t1, -6632($fp)
	li $t0, 26613
	sw $t0, -6636($fp)
	addi $t0, $fp, -6452
	sw $t0, -6640($fp)
	li $t0, 7
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6640($fp)
	lw $t1, -6648($fp)
	add $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -6636($fp)
	lw $t1, -6652($fp)
	sw $t0, 0($t1)
	lw $t0, -6652($fp)
	lw $t1, 0($t0)
	sw $t1, -6656($fp)
	li $t0, 59249
	sw $t0, -6660($fp)
	addi $t0, $fp, -6452
	sw $t0, -6664($fp)
	li $t0, 8
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6672($fp)
	lw $t0, -6664($fp)
	lw $t1, -6672($fp)
	add $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t0, -6660($fp)
	lw $t1, -6676($fp)
	sw $t0, 0($t1)
	lw $t0, -6676($fp)
	lw $t1, 0($t0)
	sw $t1, -6680($fp)
	li $t0, 50767
	sw $t0, -6684($fp)
	addi $t0, $fp, -6452
	sw $t0, -6688($fp)
	li $t0, 9
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6688($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6684($fp)
	lw $t1, -6700($fp)
	sw $t0, 0($t1)
	lw $t0, -6700($fp)
	lw $t1, 0($t0)
	sw $t1, -6704($fp)
label1326:
	lw $t0, -1636($fp)
	sw $t0, -6708($fp)
	lw $t1, -6708($fp)
	li $t2, 0
	bne $t1, $t2, label1327
	j label1328
label1327:
	li $t0, 0
	sw $t0, -6712($fp)
	lw $t0, -3936($fp)
	sw $t0, -6716($fp)
	lw $t0, -1792($fp)
	sw $t0, -6720($fp)
	lw $t1, -6716($fp)
	lw $t2, -6720($fp)
	ble $t1, $t2, label1331
	j label1330
label1331:
	lw $t0, -5752($fp)
	sw $t0, -6724($fp)
	lw $t1, -6724($fp)
	li $t2, 0
	bne $t1, $t2, label1329
	j label1330
label1329:
	li $t0, 1
	sw $t0, -6712($fp)
label1330:
	li $t0, 0
	sw $t0, -6728($fp)
	li $t0, 0
	sw $t0, -6732($fp)
	li $t0, 15764
	sw $t0, -6736($fp)
	li $t0, 24020
	sw $t0, -6740($fp)
	lw $t1, -6736($fp)
	lw $t2, -6740($fp)
	ble $t1, $t2, label1334
	j label1335
label1334:
	li $t0, 1
	sw $t0, -6732($fp)
label1335:
	li $t0, 45865
	sw $t0, -6744($fp)
	lw $t1, -6732($fp)
	lw $t2, -6744($fp)
	blt $t1, $t2, label1332
	j label1333
label1332:
	li $t0, 1
	sw $t0, -6728($fp)
label1333:
	addi $sp, $sp, -4
	lw $t0, -6712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6728($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6748($fp)
	addi $sp, $sp, 12
	j label1326
label1328:
label1336:
	li $t0, 0
	sw $t0, -6752($fp)
	addi $t0, $fp, -88
	sw $t0, -6756($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -6776($fp)
	li $t0, 25562
	sw $t0, -6780($fp)
	lw $t1, -6780($fp)
	li $t2, 0
	bne $t1, $t2, label1341
	j label1342
label1341:
	li $t0, 1
	sw $t0, -6776($fp)
label1342:
	lw $t1, -6772($fp)
	lw $t2, -6776($fp)
	blt $t1, $t2, label1339
	j label1340
label1339:
	li $t0, 1
	sw $t0, -6752($fp)
label1340:
	li $t0, 0
	sw $t0, -6784($fp)
	li $t0, 0
	sw $t0, -6788($fp)
	li $t0, 43576
	sw $t0, -6792($fp)
	lw $t1, -6792($fp)
	li $t2, 0
	bne $t1, $t2, label1346
	j label1345
label1345:
	li $t0, 1
	sw $t0, -6788($fp)
label1346:
	lw $t0, -1036($fp)
	sw $t0, -6796($fp)
	lw $t0, -6788($fp)
	lw $t1, -6796($fp)
	mul $t0, $t0, $t1
	sw $t0, -6800($fp)
	li $t0, 0
	sw $t0, -6804($fp)
	li $t0, 0
	sw $t0, -6808($fp)
	lw $t0, -3960($fp)
	sw $t0, -6812($fp)
	lw $t1, -6812($fp)
	li $t2, 0
	bne $t1, $t2, label1350
	j label1349
label1349:
	li $t0, 1
	sw $t0, -6808($fp)
label1350:
	lw $t0, -1372($fp)
	sw $t0, -6816($fp)
	lw $t1, -6808($fp)
	lw $t2, -6816($fp)
	blt $t1, $t2, label1347
	j label1348
label1347:
	li $t0, 1
	sw $t0, -6804($fp)
label1348:
	li $t0, 0
	sw $t0, -6820($fp)
	li $t0, 3601
	sw $t0, -6824($fp)
	lw $t1, -6824($fp)
	li $t2, 0
	bne $t1, $t2, label1352
	j label1351
label1351:
	li $t0, 1
	sw $t0, -6820($fp)
label1352:
	addi $sp, $sp, -4
	lw $t0, -6800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6820($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6828($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6828($fp)
	sub $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t1, -6832($fp)
	li $t2, 0
	bne $t1, $t2, label1344
	j label1343
label1343:
	li $t0, 1
	sw $t0, -6784($fp)
label1344:
	lw $t1, -6752($fp)
	lw $t2, -6784($fp)
	blt $t1, $t2, label1337
	j label1338
label1337:
	li $t0, 0
	sw $t0, -6836($fp)
	addi $t0, $fp, -32
	sw $t0, -6840($fp)
	li $t0, 0
	sw $t0, -6844($fp)
	lw $t0, -5752($fp)
	sw $t0, -6848($fp)
	lw $t1, -6848($fp)
	li $t2, 0
	bne $t1, $t2, label1360
	j label1359
label1360:
	li $t0, 49525
	sw $t0, -6852($fp)
	lw $t1, -6852($fp)
	li $t2, 0
	bne $t1, $t2, label1358
	j label1359
label1358:
	li $t0, 1
	sw $t0, -6844($fp)
label1359:
	li $t0, 4
	lw $t1, -6844($fp)
	mul $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	lw $t1, -6840($fp)
	add $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	lw $t1, 0($t0)
	sw $t1, -6864($fp)
	lw $t1, -6864($fp)
	li $t2, 0
	bne $t1, $t2, label1357
	j label1356
label1356:
	li $t0, 1
	sw $t0, -6836($fp)
label1357:
	addi $t0, $fp, -32
	sw $t0, -6868($fp)
	lw $t0, -6460($fp)
	sw $t0, -6872($fp)
	li $t0, 0
	lw $t1, -6872($fp)
	sub $t0, $t0, $t1
	sw $t0, -6876($fp)
	li $t0, 4
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, -6868($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	lw $t1, 0($t0)
	sw $t1, -6888($fp)
	lw $t0, -6836($fp)
	lw $t1, -6888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6892($fp)
	lw $t1, -6892($fp)
	li $t2, 0
	bne $t1, $t2, label1353
	j label1354
label1353:
	li $t0, 0
	sw $t0, -6896($fp)
	addi $t0, $fp, -6452
	sw $t0, -6900($fp)
	lw $t0, -1552($fp)
	sw $t0, -6904($fp)
	li $t0, 4
	lw $t1, -6904($fp)
	mul $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	lw $t1, -6900($fp)
	add $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	lw $t1, 0($t0)
	sw $t1, -6916($fp)
	li $t0, 53406
	sw $t0, -6920($fp)
	lw $t0, -6916($fp)
	lw $t1, -6920($fp)
	sub $t0, $t0, $t1
	sw $t0, -6924($fp)
	li $t0, 46413
	sw $t0, -6928($fp)
	li $t0, 55736
	sw $t0, -6932($fp)
	lw $t0, -6928($fp)
	lw $t1, -6932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6936($fp)
	lw $t0, -6924($fp)
	lw $t1, -6936($fp)
	sub $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -1360($fp)
	sw $t0, -6944($fp)
	li $t0, 11466
	sw $t0, -6948($fp)
	lw $t0, -6944($fp)
	lw $t1, -6948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6952($fp)
	li $t0, 0
	lw $t1, -6952($fp)
	sub $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -5992($fp)
	sw $t0, -6960($fp)
	li $t0, 46750
	sw $t0, -6964($fp)
	lw $t0, -6960($fp)
	lw $t1, -6964($fp)
	mul $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -6956($fp)
	lw $t1, -6968($fp)
	sub $t0, $t0, $t1
	sw $t0, -6972($fp)
	lw $t1, -6940($fp)
	lw $t2, -6972($fp)
	beq $t1, $t2, label1361
	j label1362
label1361:
	li $t0, 1
	sw $t0, -6896($fp)
label1362:
	j label1355
label1354:
	li $t0, 0
	sw $t0, -6976($fp)
	addi $t0, $fp, -3780
	sw $t0, -6980($fp)
	li $t0, 2
	sw $t0, -6984($fp)
	li $t0, 4
	lw $t1, -6984($fp)
	mul $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	lw $t1, -6980($fp)
	add $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	lw $t1, 0($t0)
	sw $t1, -6996($fp)
	li $t0, 0
	lw $t1, -6996($fp)
	sub $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t1, -7000($fp)
	li $t2, 0
	bne $t1, $t2, label1363
	j label1364
label1363:
	li $t0, 1
	sw $t0, -6976($fp)
label1364:
label1355:
	j label1336
label1338:
label1365:
	addi $t0, $fp, -64
	sw $t0, -7004($fp)
	li $t0, 0
	sw $t0, -7008($fp)
	li $t0, 50126
	sw $t0, -7012($fp)
	li $t0, 0
	lw $t1, -7012($fp)
	sub $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t1, -7016($fp)
	li $t2, 0
	bne $t1, $t2, label1369
	j label1368
label1368:
	li $t0, 1
	sw $t0, -7008($fp)
label1369:
	li $t0, 4
	lw $t1, -7008($fp)
	mul $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, -7004($fp)
	add $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	lw $t1, 0($t0)
	sw $t1, -7028($fp)
	li $t0, 32665
	sw $t0, -7032($fp)
	li $t0, 0
	lw $t1, -7032($fp)
	sub $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7028($fp)
	lw $t1, -7036($fp)
	sub $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t1, -7040($fp)
	li $t2, 0
	bne $t1, $t2, label1366
	j label1367
label1366:
	li $t0, 0
	sw $t0, -7044($fp)
	li $t0, 0
	sw $t0, -7048($fp)
	li $t0, 0
	sw $t0, -7052($fp)
	li $t0, 1872
	sw $t0, -7056($fp)
	lw $t1, -7056($fp)
	li $t2, 0
	bne $t1, $t2, label1375
	j label1374
label1374:
	li $t0, 1
	sw $t0, -7052($fp)
label1375:
	li $t0, 0
	sw $t0, -7060($fp)
	lw $t0, -3924($fp)
	sw $t0, -7064($fp)
	lw $t1, -7064($fp)
	li $t2, 0
	bne $t1, $t2, label1376
	j label1377
label1376:
	li $t0, 1
	sw $t0, -7060($fp)
label1377:
	lw $t0, -7052($fp)
	lw $t1, -7060($fp)
	mul $t0, $t0, $t1
	sw $t0, -7068($fp)
	li $t0, 0
	lw $t1, -7068($fp)
	sub $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t1, -7072($fp)
	li $t2, 0
	bne $t1, $t2, label1373
	j label1372
label1372:
	li $t0, 1
	sw $t0, -7048($fp)
label1373:
	li $t0, 0
	sw $t0, -7076($fp)
	lw $t0, -1708($fp)
	sw $t0, -7080($fp)
	lw $t0, -1336($fp)
	sw $t0, -7084($fp)
	lw $t1, -7080($fp)
	lw $t2, -7084($fp)
	beq $t1, $t2, label1378
	j label1379
label1378:
	li $t0, 1
	sw $t0, -7076($fp)
label1379:
	addi $t0, $fp, -124
	sw $t0, -7088($fp)
	li $t0, 0
	sw $t0, -7092($fp)
	li $t0, 4
	lw $t1, -7092($fp)
	mul $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	lw $t1, -7088($fp)
	add $t0, $t0, $t1
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	lw $t1, 0($t0)
	sw $t1, -7104($fp)
	addi $t0, $fp, -192
	sw $t0, -7108($fp)
	li $t0, 1
	sw $t0, -7112($fp)
	li $t0, 4
	lw $t1, -7112($fp)
	mul $t0, $t0, $t1
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	lw $t1, -7108($fp)
	add $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	lw $t1, 0($t0)
	sw $t1, -7124($fp)
	li $t0, 63176
	sw $t0, -7128($fp)
	lw $t0, -7124($fp)
	lw $t1, -7128($fp)
	mul $t0, $t0, $t1
	sw $t0, -7132($fp)
	addi $sp, $sp, -4
	lw $t0, -7076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7132($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7136($fp)
	addi $sp, $sp, 16
	lw $t0, -1708($fp)
	sw $t0, -7140($fp)
	lw $t0, -7136($fp)
	lw $t1, -7140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7144($fp)
	li $t0, 0
	sw $t0, -7148($fp)
	li $t0, 24513
	sw $t0, -7152($fp)
	lw $t0, -3996($fp)
	sw $t0, -7156($fp)
	lw $t0, -7152($fp)
	lw $t1, -7156($fp)
	sub $t0, $t0, $t1
	sw $t0, -7160($fp)
	lw $t0, -1792($fp)
	sw $t0, -7164($fp)
	lw $t1, -7160($fp)
	lw $t2, -7164($fp)
	bgt $t1, $t2, label1380
	j label1381
label1380:
	li $t0, 1
	sw $t0, -7148($fp)
label1381:
	li $t0, 0
	sw $t0, -7168($fp)
	li $t0, 14607
	sw $t0, -7172($fp)
	lw $t0, 8($fp)
	sw $t0, -7176($fp)
	lw $t0, -7172($fp)
	lw $t1, -7176($fp)
	add $t0, $t0, $t1
	sw $t0, -7180($fp)
	lw $t1, -7180($fp)
	li $t2, 0
	bne $t1, $t2, label1382
	j label1384
label1384:
	lw $t0, -1540($fp)
	sw $t0, -7184($fp)
	lw $t1, -7184($fp)
	li $t2, 0
	bne $t1, $t2, label1382
	j label1383
label1382:
	li $t0, 1
	sw $t0, -7168($fp)
label1383:
	addi $sp, $sp, -4
	lw $t0, -7148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7168($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7188($fp)
	addi $sp, $sp, 12
	lw $t0, -7144($fp)
	lw $t1, -7188($fp)
	mul $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t1, -7048($fp)
	lw $t2, -7192($fp)
	blt $t1, $t2, label1370
	j label1371
label1370:
	li $t0, 1
	sw $t0, -7044($fp)
label1371:
	lw $ra, -4($fp)
	lw $v0, -7044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1365
label1367:
label1385:
	li $t0, 1026
	sw $t0, -7196($fp)
	lw $t1, -7196($fp)
	li $t2, 0
	bne $t1, $t2, label1386
	j label1387
label1386:
	li $t0, 52669
	sw $t0, -7200($fp)
	li $t0, 0
	sw $t0, -7204($fp)
	lw $t0, -1756($fp)
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	sw $t0, -7212($fp)
	li $t0, 0
	sw $t0, -7216($fp)
	lw $t0, -5776($fp)
	sw $t0, -7220($fp)
	lw $t1, -7220($fp)
	li $t2, 0
	bne $t1, $t2, label1393
	j label1395
label1395:
	lw $t0, -1528($fp)
	sw $t0, -7224($fp)
	lw $t1, -7224($fp)
	li $t2, 0
	bne $t1, $t2, label1393
	j label1394
label1393:
	li $t0, 1
	sw $t0, -7216($fp)
label1394:
	li $t0, 0
	sw $t0, -7228($fp)
	li $t0, 51126
	sw $t0, -7232($fp)
	lw $t1, -7232($fp)
	li $t2, 0
	bne $t1, $t2, label1399
	j label1398
label1399:
	lw $t0, -1804($fp)
	sw $t0, -7236($fp)
	lw $t1, -7236($fp)
	li $t2, 0
	bne $t1, $t2, label1396
	j label1398
label1398:
	lw $t0, -1552($fp)
	sw $t0, -7240($fp)
	lw $t1, -7240($fp)
	li $t2, 0
	bne $t1, $t2, label1396
	j label1397
label1396:
	li $t0, 1
	sw $t0, -7228($fp)
label1397:
	addi $sp, $sp, -4
	lw $t0, -7212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7228($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7244($fp)
	addi $sp, $sp, 16
	lw $t1, -7244($fp)
	li $t2, 0
	bne $t1, $t2, label1392
	j label1391
label1391:
	li $t0, 1
	sw $t0, -7204($fp)
label1392:
	addi $t0, $fp, -192
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
	lw $t0, -7204($fp)
	lw $t1, -7264($fp)
	mul $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7200($fp)
	lw $t1, -7268($fp)
	add $t0, $t0, $t1
	sw $t0, -7272($fp)
	lw $t1, -7272($fp)
	li $t2, 0
	bne $t1, $t2, label1388
	j label1389
label1388:
	li $t0, 1354
	sw $t0, -7288($fp)
	addi $t0, $fp, -7284
	sw $t0, -7292($fp)
	li $t0, 0
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t0, -7292($fp)
	lw $t1, -7300($fp)
	add $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t0, -7288($fp)
	lw $t1, -7304($fp)
	sw $t0, 0($t1)
	lw $t0, -7304($fp)
	lw $t1, 0($t0)
	sw $t1, -7308($fp)
	li $t0, 18759
	sw $t0, -7312($fp)
	addi $t0, $fp, -7284
	sw $t0, -7316($fp)
	li $t0, 1
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7324($fp)
	lw $t0, -7316($fp)
	lw $t1, -7324($fp)
	add $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7312($fp)
	lw $t1, -7328($fp)
	sw $t0, 0($t1)
	lw $t0, -7328($fp)
	lw $t1, 0($t0)
	sw $t1, -7332($fp)
	li $t0, 18230
	sw $t0, -7336($fp)
	addi $t0, $fp, -7284
	sw $t0, -7340($fp)
	li $t0, 2
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7348($fp)
	lw $t0, -7340($fp)
	lw $t1, -7348($fp)
	add $t0, $t0, $t1
	sw $t0, -7352($fp)
	lw $t0, -7336($fp)
	lw $t1, -7352($fp)
	sw $t0, 0($t1)
	lw $t0, -7352($fp)
	lw $t1, 0($t0)
	sw $t1, -7356($fp)
	lw $t0, -580($fp)
	sw $t0, -7360($fp)
	li $t0, 47330
	sw $t0, -7364($fp)
	li $t0, 0
	lw $t1, -7364($fp)
	sub $t0, $t0, $t1
	sw $t0, -7368($fp)
	lw $t0, -7360($fp)
	lw $t1, -7368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7372($fp)
	li $t0, 0
	lw $t1, -7372($fp)
	sub $t0, $t0, $t1
	sw $t0, -7376($fp)
	li $t0, 0
	lw $t1, -7376($fp)
	sub $t0, $t0, $t1
	sw $t0, -7380($fp)
	li $t0, 0
	sw $t0, -7384($fp)
	li $t0, 21960
	sw $t0, -7388($fp)
	lw $t1, -7388($fp)
	li $t2, 0
	bne $t1, $t2, label1400
	j label1401
label1400:
	li $t0, 1
	sw $t0, -7384($fp)
label1401:
	lw $t0, -1552($fp)
	sw $t0, -7392($fp)
	li $t0, 17250
	sw $t0, -7396($fp)
	lw $t0, -7392($fp)
	lw $t1, -7396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7400($fp)
	lw $t0, -1372($fp)
	sw $t0, -7404($fp)
	lw $t0, -7400($fp)
	lw $t1, -7404($fp)
	add $t0, $t0, $t1
	sw $t0, -7408($fp)
	li $t0, 0
	sw $t0, -7412($fp)
	lw $t0, -1516($fp)
	sw $t0, -7416($fp)
	lw $t1, -7416($fp)
	li $t2, 0
	bne $t1, $t2, label1405
	j label1404
label1405:
	lw $t0, -5752($fp)
	sw $t0, -7420($fp)
	lw $t1, -7420($fp)
	li $t2, 0
	bne $t1, $t2, label1402
	j label1404
label1404:
	lw $t0, -1792($fp)
	sw $t0, -7424($fp)
	lw $t1, -7424($fp)
	li $t2, 0
	bne $t1, $t2, label1402
	j label1403
label1402:
	li $t0, 1
	sw $t0, -7412($fp)
label1403:
	li $t0, 0
	sw $t0, -7428($fp)
	lw $t0, -1768($fp)
	sw $t0, -7432($fp)
	li $t0, 27628
	sw $t0, -7436($fp)
	lw $t1, -7432($fp)
	lw $t2, -7436($fp)
	ble $t1, $t2, label1408
	j label1407
label1408:
	lw $t0, -1744($fp)
	sw $t0, -7440($fp)
	lw $t1, -7440($fp)
	li $t2, 0
	bne $t1, $t2, label1406
	j label1407
label1406:
	li $t0, 1
	sw $t0, -7428($fp)
label1407:
	addi $t0, $fp, -7284
	sw $t0, -7444($fp)
	li $t0, 1
	sw $t0, -7448($fp)
	li $t0, 4
	lw $t1, -7448($fp)
	mul $t0, $t0, $t1
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	lw $t1, -7444($fp)
	add $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	lw $t1, 0($t0)
	sw $t1, -7460($fp)
	li $t0, 0
	lw $t1, -7460($fp)
	sub $t0, $t0, $t1
	sw $t0, -7464($fp)
	addi $t0, $fp, -124
	sw $t0, -7468($fp)
	li $t0, 1
	sw $t0, -7472($fp)
	li $t0, 4
	lw $t1, -7472($fp)
	mul $t0, $t0, $t1
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	lw $t1, -7468($fp)
	add $t0, $t0, $t1
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	lw $t1, 0($t0)
	sw $t1, -7484($fp)
	li $t0, 46413
	sw $t0, -7488($fp)
	lw $t0, -7484($fp)
	lw $t1, -7488($fp)
	sub $t0, $t0, $t1
	sw $t0, -7492($fp)
	addi $t0, $fp, -88
	sw $t0, -7496($fp)
	li $t0, 0
	sw $t0, -7500($fp)
	li $t0, 4
	lw $t1, -7500($fp)
	mul $t0, $t0, $t1
	sw $t0, -7504($fp)
	lw $t0, -7504($fp)
	lw $t1, -7496($fp)
	add $t0, $t0, $t1
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	lw $t1, 0($t0)
	sw $t1, -7512($fp)
	li $t0, 0
	lw $t1, -7512($fp)
	sub $t0, $t0, $t1
	sw $t0, -7516($fp)
	li $t0, 0
	sw $t0, -7520($fp)
	li $t0, 50931
	sw $t0, -7524($fp)
	lw $t0, -5764($fp)
	sw $t0, -7528($fp)
	lw $t1, -7524($fp)
	lw $t2, -7528($fp)
	beq $t1, $t2, label1409
	j label1410
label1409:
	li $t0, 1
	sw $t0, -7520($fp)
label1410:
	li $t0, 43792
	sw $t0, -7532($fp)
	li $t0, 0
	lw $t1, -7532($fp)
	sub $t0, $t0, $t1
	sw $t0, -7536($fp)
	lw $t0, -3960($fp)
	sw $t0, -7540($fp)
	lw $t0, -7536($fp)
	lw $t1, -7540($fp)
	sub $t0, $t0, $t1
	sw $t0, -7544($fp)
	addi $sp, $sp, -4
	lw $t0, -7520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7544($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7548($fp)
	addi $sp, $sp, 12
	lw $t0, -1528($fp)
	sw $t0, -7552($fp)
	lw $t0, -7548($fp)
	lw $t1, -7552($fp)
	add $t0, $t0, $t1
	sw $t0, -7556($fp)
	addi $sp, $sp, -4
	lw $t0, -7428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7556($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7560($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -7408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7560($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7564($fp)
	addi $sp, $sp, 16
	j label1390
label1389:
	li $t0, 0
	sw $t0, -7568($fp)
	li $t0, 0
	sw $t0, -7572($fp)
	lw $t0, -1144($fp)
	sw $t0, -7576($fp)
	li $t0, 3945
	sw $t0, -7580($fp)
	lw $t1, -7576($fp)
	lw $t2, -7580($fp)
	bne $t1, $t2, label1413
	j label1414
label1413:
	li $t0, 1
	sw $t0, -7572($fp)
label1414:
	li $t0, 51741
	sw $t0, -7584($fp)
	lw $t1, -7572($fp)
	lw $t2, -7584($fp)
	bne $t1, $t2, label1411
	j label1412
label1411:
	li $t0, 1
	sw $t0, -7568($fp)
label1412:
	lw $t0, -5812($fp)
	sw $t0, -7588($fp)
	li $t0, 64608
	sw $t0, -7592($fp)
	lw $t0, -7588($fp)
	lw $t1, -7592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7596($fp)
	li $t0, 30495
	sw $t0, -7600($fp)
	lw $t0, -7596($fp)
	lw $t1, -7600($fp)
	add $t0, $t0, $t1
	sw $t0, -7604($fp)
	li $t0, 0
	sw $t0, -7608($fp)
	lw $t0, -1300($fp)
	sw $t0, -7612($fp)
	lw $t1, -7612($fp)
	li $t2, 0
	bne $t1, $t2, label1417
	j label1416
label1417:
	lw $t0, -1540($fp)
	sw $t0, -7616($fp)
	lw $t1, -7616($fp)
	li $t2, 0
	bne $t1, $t2, label1415
	j label1416
label1415:
	li $t0, 1
	sw $t0, -7608($fp)
label1416:
	li $t0, 0
	sw $t0, -7620($fp)
	li $t0, 0
	sw $t0, -7624($fp)
	lw $t0, -1528($fp)
	sw $t0, -7628($fp)
	lw $t0, -1792($fp)
	sw $t0, -7632($fp)
	lw $t0, -7628($fp)
	lw $t1, -7632($fp)
	add $t0, $t0, $t1
	sw $t0, -7636($fp)
	li $t0, 5981
	sw $t0, -7640($fp)
	lw $t1, -7636($fp)
	lw $t2, -7640($fp)
	blt $t1, $t2, label1421
	j label1422
label1421:
	li $t0, 1
	sw $t0, -7624($fp)
label1422:
	li $t0, 0
	sw $t0, -7644($fp)
	li $t0, 0
	sw $t0, -7648($fp)
	li $t0, 50001
	sw $t0, -7652($fp)
	lw $t1, -7652($fp)
	li $t2, 0
	bne $t1, $t2, label1426
	j label1425
label1425:
	li $t0, 1
	sw $t0, -7648($fp)
label1426:
	lw $t0, -1372($fp)
	sw $t0, -7656($fp)
	lw $t1, -7648($fp)
	lw $t2, -7656($fp)
	bgt $t1, $t2, label1423
	j label1424
label1423:
	li $t0, 1
	sw $t0, -7644($fp)
label1424:
	addi $t0, $fp, -5712
	sw $t0, -7660($fp)
	lw $t0, -1504($fp)
	sw $t0, -7664($fp)
	li $t0, 4
	lw $t1, -7664($fp)
	mul $t0, $t0, $t1
	sw $t0, -7668($fp)
	lw $t0, -7668($fp)
	lw $t1, -7660($fp)
	add $t0, $t0, $t1
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	lw $t1, 0($t0)
	sw $t1, -7676($fp)
	li $t0, 16222
	sw $t0, -7680($fp)
	lw $t0, -7676($fp)
	lw $t1, -7680($fp)
	add $t0, $t0, $t1
	sw $t0, -7684($fp)
	li $t0, 0
	sw $t0, -7688($fp)
	li $t0, 52544
	sw $t0, -7692($fp)
	li $t0, 0
	lw $t1, -7692($fp)
	sub $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t1, -7696($fp)
	li $t2, 0
	bne $t1, $t2, label1429
	j label1428
label1429:
	lw $t0, -5764($fp)
	sw $t0, -7700($fp)
	lw $t1, -7700($fp)
	li $t2, 0
	bne $t1, $t2, label1427
	j label1428
label1427:
	li $t0, 1
	sw $t0, -7688($fp)
label1428:
	li $t0, 0
	sw $t0, -7704($fp)
	lw $t0, -5740($fp)
	sw $t0, -7708($fp)
	lw $t1, -7708($fp)
	li $t2, 0
	bne $t1, $t2, label1430
	j label1431
label1430:
	li $t0, 1
	sw $t0, -7704($fp)
label1431:
	li $t0, 0
	sw $t0, -7712($fp)
	li $t0, 52361
	sw $t0, -7716($fp)
	lw $t1, -7716($fp)
	li $t2, 0
	bne $t1, $t2, label1434
	j label1433
label1434:
	lw $t0, -1372($fp)
	sw $t0, -7720($fp)
	lw $t1, -7720($fp)
	li $t2, 0
	bne $t1, $t2, label1432
	j label1433
label1432:
	li $t0, 1
	sw $t0, -7712($fp)
label1433:
	addi $sp, $sp, -4
	lw $t0, -7688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7724($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -7728($fp)
	li $t0, 50489
	sw $t0, -7732($fp)
	lw $t1, -7732($fp)
	li $t2, 0
	bne $t1, $t2, label1438
	j label1437
label1438:
	li $t0, 12218
	sw $t0, -7736($fp)
	lw $t1, -7736($fp)
	li $t2, 0
	bne $t1, $t2, label1435
	j label1437
label1437:
	li $t0, 49915
	sw $t0, -7740($fp)
	lw $t1, -7740($fp)
	li $t2, 0
	bne $t1, $t2, label1435
	j label1436
label1435:
	li $t0, 1
	sw $t0, -7728($fp)
label1436:
	addi $sp, $sp, -4
	lw $t0, -7624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7728($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7744($fp)
	addi $sp, $sp, 24
	lw $t1, -7744($fp)
	li $t2, 0
	bne $t1, $t2, label1418
	j label1420
label1420:
	li $t0, 2919
	sw $t0, -7748($fp)
	lw $t1, -7748($fp)
	li $t2, 0
	bne $t1, $t2, label1418
	j label1419
label1418:
	li $t0, 1
	sw $t0, -7620($fp)
label1419:
	addi $sp, $sp, -4
	lw $t0, -7608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7620($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7752($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -7568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7752($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7756($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -7756($fp)
	sub $t0, $t0, $t1
	sw $t0, -7760($fp)
	li $t0, 0
	sw $t0, -7764($fp)
	li $t0, 16085
	sw $t0, -7768($fp)
	lw $t1, -7768($fp)
	li $t2, 0
	bne $t1, $t2, label1440
	j label1439
label1439:
	li $t0, 1
	sw $t0, -7764($fp)
label1440:
	lw $t0, -7760($fp)
	lw $t1, -7764($fp)
	sub $t0, $t0, $t1
	sw $t0, -7772($fp)
	lw $t0, -1816($fp)
	sw $t0, -7776($fp)
	lw $t0, -7772($fp)
	lw $t1, -7776($fp)
	sub $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $ra, -4($fp)
	lw $v0, -7780($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1390:
	j label1385
label1387:
	lw $t0, -1324($fp)
	sw $t0, -7784($fp)
	lw $t1, -7784($fp)
	li $t2, 0
	bne $t1, $t2, label1441
	j label1442
label1441:
label1444:
	lw $t0, -1012($fp)
	sw $t0, -7788($fp)
	lw $t0, -1144($fp)
	sw $t0, -7792($fp)
	lw $t0, -7788($fp)
	lw $t1, -7792($fp)
	sub $t0, $t0, $t1
	sw $t0, -7796($fp)
	lw $t0, -3960($fp)
	sw $t0, -7800($fp)
	lw $t0, -7796($fp)
	lw $t1, -7800($fp)
	add $t0, $t0, $t1
	sw $t0, -7804($fp)
	li $t0, 0
	sw $t0, -7808($fp)
	li $t0, 64220
	sw $t0, -7812($fp)
	li $t0, 24106
	sw $t0, -7816($fp)
	lw $t1, -7812($fp)
	lw $t2, -7816($fp)
	blt $t1, $t2, label1449
	j label1450
label1449:
	li $t0, 1
	sw $t0, -7808($fp)
label1450:
	lw $t1, -7804($fp)
	lw $t2, -7808($fp)
	beq $t1, $t2, label1448
	j label1447
label1448:
	li $t0, 17440
	sw $t0, -7820($fp)
	lw $t0, -1636($fp)
	sw $t0, -7824($fp)
	lw $t0, -7820($fp)
	lw $t1, -7824($fp)
	mul $t0, $t0, $t1
	sw $t0, -7828($fp)
	li $t0, 17443
	sw $t0, -7832($fp)
	lw $t1, -7828($fp)
	lw $t2, -7832($fp)
	bne $t1, $t2, label1445
	j label1447
label1447:
	addi $t0, $fp, -3796
	sw $t0, -7836($fp)
	li $t0, 0
	sw $t0, -7840($fp)
	li $t0, 42336
	sw $t0, -7844($fp)
	lw $t0, -1012($fp)
	sw $t0, -7848($fp)
	lw $t1, -7844($fp)
	lw $t2, -7848($fp)
	bne $t1, $t2, label1451
	j label1452
label1451:
	li $t0, 1
	sw $t0, -7840($fp)
label1452:
	li $t0, 4
	lw $t1, -7840($fp)
	mul $t0, $t0, $t1
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	lw $t1, -7836($fp)
	add $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7856($fp)
	lw $t1, 0($t0)
	sw $t1, -7860($fp)
	lw $t1, -7860($fp)
	li $t2, 0
	bne $t1, $t2, label1445
	j label1446
label1445:
label1453:
	li $t0, 0
	sw $t0, -7864($fp)
	lw $t0, -1744($fp)
	sw $t0, -7868($fp)
	lw $t1, -7868($fp)
	li $t2, 0
	bne $t1, $t2, label1457
	j label1456
label1456:
	li $t0, 1
	sw $t0, -7864($fp)
label1457:
	lw $t0, -736($fp)
	sw $t0, -7872($fp)
	lw $t0, -1708($fp)
	sw $t0, -7876($fp)
	lw $t0, -7872($fp)
	lw $t1, -7876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7880($fp)
	li $t0, 0
	lw $t1, -7880($fp)
	sub $t0, $t0, $t1
	sw $t0, -7884($fp)
	li $t0, 0
	sw $t0, -7888($fp)
	li $t0, 64770
	sw $t0, -7892($fp)
	lw $t1, -7892($fp)
	li $t2, 0
	bne $t1, $t2, label1459
	j label1458
label1458:
	li $t0, 1
	sw $t0, -7888($fp)
label1459:
	lw $t0, -7884($fp)
	lw $t1, -7888($fp)
	add $t0, $t0, $t1
	sw $t0, -7896($fp)
	lw $t1, -7864($fp)
	lw $t2, -7896($fp)
	blt $t1, $t2, label1454
	j label1455
label1454:
label1460:
	li $t0, 39403
	sw $t0, -7900($fp)
	lw $t1, -7900($fp)
	li $t2, 0
	bne $t1, $t2, label1461
	j label1462
label1461:
	lw $t0, -3936($fp)
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	sw $t0, -7908($fp)
	lw $t0, -7908($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -7912($fp)
	lw $t0, -7912($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -7916($fp)
	lw $ra, -4($fp)
	lw $v0, -7916($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1460
label1462:
	j label1453
label1455:
	j label1444
label1446:
label1442:
	addi $t0, $fp, -180
	sw $t0, -7920($fp)
	li $t0, 1
	sw $t0, -7924($fp)
	li $t0, 4
	lw $t1, -7924($fp)
	mul $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t0, -7928($fp)
	lw $t1, -7920($fp)
	add $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	lw $t1, 0($t0)
	sw $t1, -7936($fp)
	lw $t0, -3996($fp)
	sw $t0, -7940($fp)
	lw $t0, -7936($fp)
	lw $t1, -7940($fp)
	add $t0, $t0, $t1
	sw $t0, -7944($fp)
	addi $t0, $fp, -200
	sw $t0, -7948($fp)
	li $t0, 0
	sw $t0, -7952($fp)
	li $t0, 4
	lw $t1, -7952($fp)
	mul $t0, $t0, $t1
	sw $t0, -7956($fp)
	lw $t0, -7956($fp)
	lw $t1, -7948($fp)
	add $t0, $t0, $t1
	sw $t0, -7960($fp)
	lw $t0, -7960($fp)
	lw $t1, 0($t0)
	sw $t1, -7964($fp)
	lw $t0, -7944($fp)
	lw $t1, -7964($fp)
	add $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	sw $t0, -7972($fp)
	j label1202
label1204:
	lw $t0, -208($fp)
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7980($fp)
	li $t0, 0
	sw $t0, -7984($fp)
	li $t0, 4
	lw $t1, -7984($fp)
	mul $t0, $t0, $t1
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	lw $t1, -7980($fp)
	add $t0, $t0, $t1
	sw $t0, -7992($fp)
	lw $t0, -7992($fp)
	lw $t1, 0($t0)
	sw $t1, -7996($fp)
	lw $t0, -7996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8000($fp)
	li $t0, 1
	sw $t0, -8004($fp)
	li $t0, 4
	lw $t1, -8004($fp)
	mul $t0, $t0, $t1
	sw $t0, -8008($fp)
	lw $t0, -8008($fp)
	lw $t1, -8000($fp)
	add $t0, $t0, $t1
	sw $t0, -8012($fp)
	lw $t0, -8012($fp)
	lw $t1, 0($t0)
	sw $t1, -8016($fp)
	lw $t0, -8016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8020($fp)
	li $t0, 2
	sw $t0, -8024($fp)
	li $t0, 4
	lw $t1, -8024($fp)
	mul $t0, $t0, $t1
	sw $t0, -8028($fp)
	lw $t0, -8028($fp)
	lw $t1, -8020($fp)
	add $t0, $t0, $t1
	sw $t0, -8032($fp)
	lw $t0, -8032($fp)
	lw $t1, 0($t0)
	sw $t1, -8036($fp)
	lw $t0, -8036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8040($fp)
	li $t0, 3
	sw $t0, -8044($fp)
	li $t0, 4
	lw $t1, -8044($fp)
	mul $t0, $t0, $t1
	sw $t0, -8048($fp)
	lw $t0, -8048($fp)
	lw $t1, -8040($fp)
	add $t0, $t0, $t1
	sw $t0, -8052($fp)
	lw $t0, -8052($fp)
	lw $t1, 0($t0)
	sw $t1, -8056($fp)
	lw $t0, -8056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8060($fp)
	li $t0, 4
	sw $t0, -8064($fp)
	li $t0, 4
	lw $t1, -8064($fp)
	mul $t0, $t0, $t1
	sw $t0, -8068($fp)
	lw $t0, -8068($fp)
	lw $t1, -8060($fp)
	add $t0, $t0, $t1
	sw $t0, -8072($fp)
	lw $t0, -8072($fp)
	lw $t1, 0($t0)
	sw $t1, -8076($fp)
	lw $t0, -8076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8080($fp)
	li $t0, 5
	sw $t0, -8084($fp)
	li $t0, 4
	lw $t1, -8084($fp)
	mul $t0, $t0, $t1
	sw $t0, -8088($fp)
	lw $t0, -8088($fp)
	lw $t1, -8080($fp)
	add $t0, $t0, $t1
	sw $t0, -8092($fp)
	lw $t0, -8092($fp)
	lw $t1, 0($t0)
	sw $t1, -8096($fp)
	lw $t0, -8096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -8100($fp)
	li $t0, 6
	sw $t0, -8104($fp)
	li $t0, 4
	lw $t1, -8104($fp)
	mul $t0, $t0, $t1
	sw $t0, -8108($fp)
	lw $t0, -8108($fp)
	lw $t1, -8100($fp)
	add $t0, $t0, $t1
	sw $t0, -8112($fp)
	lw $t0, -8112($fp)
	lw $t1, 0($t0)
	sw $t1, -8116($fp)
	lw $t0, -8116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8120($fp)
	li $t0, 0
	sw $t0, -8124($fp)
	li $t0, 4
	lw $t1, -8124($fp)
	mul $t0, $t0, $t1
	sw $t0, -8128($fp)
	lw $t0, -8128($fp)
	lw $t1, -8120($fp)
	add $t0, $t0, $t1
	sw $t0, -8132($fp)
	lw $t0, -8132($fp)
	lw $t1, 0($t0)
	sw $t1, -8136($fp)
	lw $t0, -8136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8140($fp)
	li $t0, 1
	sw $t0, -8144($fp)
	li $t0, 4
	lw $t1, -8144($fp)
	mul $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	lw $t1, -8140($fp)
	add $t0, $t0, $t1
	sw $t0, -8152($fp)
	lw $t0, -8152($fp)
	lw $t1, 0($t0)
	sw $t1, -8156($fp)
	lw $t0, -8156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8160($fp)
	li $t0, 2
	sw $t0, -8164($fp)
	li $t0, 4
	lw $t1, -8164($fp)
	mul $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	lw $t1, -8160($fp)
	add $t0, $t0, $t1
	sw $t0, -8172($fp)
	lw $t0, -8172($fp)
	lw $t1, 0($t0)
	sw $t1, -8176($fp)
	lw $t0, -8176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8180($fp)
	li $t0, 3
	sw $t0, -8184($fp)
	li $t0, 4
	lw $t1, -8184($fp)
	mul $t0, $t0, $t1
	sw $t0, -8188($fp)
	lw $t0, -8188($fp)
	lw $t1, -8180($fp)
	add $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t0, -8192($fp)
	lw $t1, 0($t0)
	sw $t1, -8196($fp)
	lw $t0, -8196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8200($fp)
	li $t0, 4
	sw $t0, -8204($fp)
	li $t0, 4
	lw $t1, -8204($fp)
	mul $t0, $t0, $t1
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	lw $t1, -8200($fp)
	add $t0, $t0, $t1
	sw $t0, -8212($fp)
	lw $t0, -8212($fp)
	lw $t1, 0($t0)
	sw $t1, -8216($fp)
	lw $t0, -8216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8220($fp)
	li $t0, 5
	sw $t0, -8224($fp)
	li $t0, 4
	lw $t1, -8224($fp)
	mul $t0, $t0, $t1
	sw $t0, -8228($fp)
	lw $t0, -8228($fp)
	lw $t1, -8220($fp)
	add $t0, $t0, $t1
	sw $t0, -8232($fp)
	lw $t0, -8232($fp)
	lw $t1, 0($t0)
	sw $t1, -8236($fp)
	lw $t0, -8236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8240($fp)
	li $t0, 6
	sw $t0, -8244($fp)
	li $t0, 4
	lw $t1, -8244($fp)
	mul $t0, $t0, $t1
	sw $t0, -8248($fp)
	lw $t0, -8248($fp)
	lw $t1, -8240($fp)
	add $t0, $t0, $t1
	sw $t0, -8252($fp)
	lw $t0, -8252($fp)
	lw $t1, 0($t0)
	sw $t1, -8256($fp)
	lw $t0, -8256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -8260($fp)
	li $t0, 7
	sw $t0, -8264($fp)
	li $t0, 4
	lw $t1, -8264($fp)
	mul $t0, $t0, $t1
	sw $t0, -8268($fp)
	lw $t0, -8268($fp)
	lw $t1, -8260($fp)
	add $t0, $t0, $t1
	sw $t0, -8272($fp)
	lw $t0, -8272($fp)
	lw $t1, 0($t0)
	sw $t1, -8276($fp)
	lw $t0, -8276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8284($fp)
	li $t0, 0
	sw $t0, -8288($fp)
	li $t0, 4
	lw $t1, -8288($fp)
	mul $t0, $t0, $t1
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	lw $t1, -8284($fp)
	add $t0, $t0, $t1
	sw $t0, -8296($fp)
	lw $t0, -8296($fp)
	lw $t1, 0($t0)
	sw $t1, -8300($fp)
	lw $t0, -8300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8304($fp)
	li $t0, 1
	sw $t0, -8308($fp)
	li $t0, 4
	lw $t1, -8308($fp)
	mul $t0, $t0, $t1
	sw $t0, -8312($fp)
	lw $t0, -8312($fp)
	lw $t1, -8304($fp)
	add $t0, $t0, $t1
	sw $t0, -8316($fp)
	lw $t0, -8316($fp)
	lw $t1, 0($t0)
	sw $t1, -8320($fp)
	lw $t0, -8320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8324($fp)
	li $t0, 2
	sw $t0, -8328($fp)
	li $t0, 4
	lw $t1, -8328($fp)
	mul $t0, $t0, $t1
	sw $t0, -8332($fp)
	lw $t0, -8332($fp)
	lw $t1, -8324($fp)
	add $t0, $t0, $t1
	sw $t0, -8336($fp)
	lw $t0, -8336($fp)
	lw $t1, 0($t0)
	sw $t1, -8340($fp)
	lw $t0, -8340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8344($fp)
	li $t0, 3
	sw $t0, -8348($fp)
	li $t0, 4
	lw $t1, -8348($fp)
	mul $t0, $t0, $t1
	sw $t0, -8352($fp)
	lw $t0, -8352($fp)
	lw $t1, -8344($fp)
	add $t0, $t0, $t1
	sw $t0, -8356($fp)
	lw $t0, -8356($fp)
	lw $t1, 0($t0)
	sw $t1, -8360($fp)
	lw $t0, -8360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8364($fp)
	li $t0, 4
	sw $t0, -8368($fp)
	li $t0, 4
	lw $t1, -8368($fp)
	mul $t0, $t0, $t1
	sw $t0, -8372($fp)
	lw $t0, -8372($fp)
	lw $t1, -8364($fp)
	add $t0, $t0, $t1
	sw $t0, -8376($fp)
	lw $t0, -8376($fp)
	lw $t1, 0($t0)
	sw $t1, -8380($fp)
	lw $t0, -8380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8384($fp)
	li $t0, 5
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
	lw $t0, -8400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -8408($fp)
	li $t0, 0
	sw $t0, -8412($fp)
	li $t0, 4
	lw $t1, -8412($fp)
	mul $t0, $t0, $t1
	sw $t0, -8416($fp)
	lw $t0, -8416($fp)
	lw $t1, -8408($fp)
	add $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	lw $t1, 0($t0)
	sw $t1, -8424($fp)
	lw $t0, -8424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -8428($fp)
	li $t0, 1
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
	lw $t0, -8444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -8448($fp)
	li $t0, 2
	sw $t0, -8452($fp)
	li $t0, 4
	lw $t1, -8452($fp)
	mul $t0, $t0, $t1
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	lw $t1, -8448($fp)
	add $t0, $t0, $t1
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	lw $t1, 0($t0)
	sw $t1, -8464($fp)
	lw $t0, -8464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -8468($fp)
	li $t0, 3
	sw $t0, -8472($fp)
	li $t0, 4
	lw $t1, -8472($fp)
	mul $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	lw $t1, -8468($fp)
	add $t0, $t0, $t1
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	lw $t1, 0($t0)
	sw $t1, -8484($fp)
	lw $t0, -8484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -8488($fp)
	li $t0, 4
	sw $t0, -8492($fp)
	li $t0, 4
	lw $t1, -8492($fp)
	mul $t0, $t0, $t1
	sw $t0, -8496($fp)
	lw $t0, -8496($fp)
	lw $t1, -8488($fp)
	add $t0, $t0, $t1
	sw $t0, -8500($fp)
	lw $t0, -8500($fp)
	lw $t1, 0($t0)
	sw $t1, -8504($fp)
	lw $t0, -8504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -8508($fp)
	li $t0, 5
	sw $t0, -8512($fp)
	li $t0, 4
	lw $t1, -8512($fp)
	mul $t0, $t0, $t1
	sw $t0, -8516($fp)
	lw $t0, -8516($fp)
	lw $t1, -8508($fp)
	add $t0, $t0, $t1
	sw $t0, -8520($fp)
	lw $t0, -8520($fp)
	lw $t1, 0($t0)
	sw $t1, -8524($fp)
	lw $t0, -8524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -8528($fp)
	li $t0, 6
	sw $t0, -8532($fp)
	li $t0, 4
	lw $t1, -8532($fp)
	mul $t0, $t0, $t1
	sw $t0, -8536($fp)
	lw $t0, -8536($fp)
	lw $t1, -8528($fp)
	add $t0, $t0, $t1
	sw $t0, -8540($fp)
	lw $t0, -8540($fp)
	lw $t1, 0($t0)
	sw $t1, -8544($fp)
	lw $t0, -8544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8548($fp)
	li $t0, 0
	sw $t0, -8552($fp)
	li $t0, 4
	lw $t1, -8552($fp)
	mul $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	lw $t1, -8548($fp)
	add $t0, $t0, $t1
	sw $t0, -8560($fp)
	lw $t0, -8560($fp)
	lw $t1, 0($t0)
	sw $t1, -8564($fp)
	lw $t0, -8564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8568($fp)
	li $t0, 1
	sw $t0, -8572($fp)
	li $t0, 4
	lw $t1, -8572($fp)
	mul $t0, $t0, $t1
	sw $t0, -8576($fp)
	lw $t0, -8576($fp)
	lw $t1, -8568($fp)
	add $t0, $t0, $t1
	sw $t0, -8580($fp)
	lw $t0, -8580($fp)
	lw $t1, 0($t0)
	sw $t1, -8584($fp)
	lw $t0, -8584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -964($fp)
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -976($fp)
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -8600($fp)
	lw $t0, -8600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -8604($fp)
	lw $t0, -8604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -8608($fp)
	lw $t0, -8608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -8612($fp)
	lw $t0, -8612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8616($fp)
	li $t0, 0
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
	lw $t0, -8632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8636($fp)
	li $t0, 1
	sw $t0, -8640($fp)
	li $t0, 4
	lw $t1, -8640($fp)
	mul $t0, $t0, $t1
	sw $t0, -8644($fp)
	lw $t0, -8644($fp)
	lw $t1, -8636($fp)
	add $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t0, -8648($fp)
	lw $t1, 0($t0)
	sw $t1, -8652($fp)
	lw $t0, -8652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8656($fp)
	li $t0, 2
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
	lw $t0, -1120($fp)
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -8680($fp)
	lw $t0, -8680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -8684($fp)
	lw $t0, -8684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8688($fp)
	li $t0, 0
	sw $t0, -8692($fp)
	li $t0, 4
	lw $t1, -8692($fp)
	mul $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8696($fp)
	lw $t1, -8688($fp)
	add $t0, $t0, $t1
	sw $t0, -8700($fp)
	lw $t0, -8700($fp)
	lw $t1, 0($t0)
	sw $t1, -8704($fp)
	lw $t0, -8704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8708($fp)
	li $t0, 1
	sw $t0, -8712($fp)
	li $t0, 4
	lw $t1, -8712($fp)
	mul $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, -8708($fp)
	add $t0, $t0, $t1
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	lw $t1, 0($t0)
	sw $t1, -8724($fp)
	lw $t0, -8724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8728($fp)
	li $t0, 2
	sw $t0, -8732($fp)
	li $t0, 4
	lw $t1, -8732($fp)
	mul $t0, $t0, $t1
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	lw $t1, -8728($fp)
	add $t0, $t0, $t1
	sw $t0, -8740($fp)
	lw $t0, -8740($fp)
	lw $t1, 0($t0)
	sw $t1, -8744($fp)
	lw $t0, -8744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8748($fp)
	li $t0, 3
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
	addi $t0, $fp, -160
	sw $t0, -8768($fp)
	li $t0, 4
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
	addi $t0, $fp, -160
	sw $t0, -8788($fp)
	li $t0, 5
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
	lw $t0, -1300($fp)
	sw $t0, -8808($fp)
	lw $t0, -8808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -8812($fp)
	lw $t0, -8812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -8824($fp)
	lw $t0, -8824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -8828($fp)
	lw $t0, -8828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -8832($fp)
	lw $t0, -8832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8836($fp)
	li $t0, 0
	sw $t0, -8840($fp)
	li $t0, 4
	lw $t1, -8840($fp)
	mul $t0, $t0, $t1
	sw $t0, -8844($fp)
	lw $t0, -8844($fp)
	lw $t1, -8836($fp)
	add $t0, $t0, $t1
	sw $t0, -8848($fp)
	lw $t0, -8848($fp)
	lw $t1, 0($t0)
	sw $t1, -8852($fp)
	lw $t0, -8852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8856($fp)
	li $t0, 1
	sw $t0, -8860($fp)
	li $t0, 4
	lw $t1, -8860($fp)
	mul $t0, $t0, $t1
	sw $t0, -8864($fp)
	lw $t0, -8864($fp)
	lw $t1, -8856($fp)
	add $t0, $t0, $t1
	sw $t0, -8868($fp)
	lw $t0, -8868($fp)
	lw $t1, 0($t0)
	sw $t1, -8872($fp)
	lw $t0, -8872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8876($fp)
	li $t0, 2
	sw $t0, -8880($fp)
	li $t0, 4
	lw $t1, -8880($fp)
	mul $t0, $t0, $t1
	sw $t0, -8884($fp)
	lw $t0, -8884($fp)
	lw $t1, -8876($fp)
	add $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t0, -8888($fp)
	lw $t1, 0($t0)
	sw $t1, -8892($fp)
	lw $t0, -8892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8896($fp)
	li $t0, 3
	sw $t0, -8900($fp)
	li $t0, 4
	lw $t1, -8900($fp)
	mul $t0, $t0, $t1
	sw $t0, -8904($fp)
	lw $t0, -8904($fp)
	lw $t1, -8896($fp)
	add $t0, $t0, $t1
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	lw $t1, 0($t0)
	sw $t1, -8912($fp)
	lw $t0, -8912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -8916($fp)
	li $t0, 4
	sw $t0, -8920($fp)
	li $t0, 4
	lw $t1, -8920($fp)
	mul $t0, $t0, $t1
	sw $t0, -8924($fp)
	lw $t0, -8924($fp)
	lw $t1, -8916($fp)
	add $t0, $t0, $t1
	sw $t0, -8928($fp)
	lw $t0, -8928($fp)
	lw $t1, 0($t0)
	sw $t1, -8932($fp)
	lw $t0, -8932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1504($fp)
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1516($fp)
	sw $t0, -8940($fp)
	lw $t0, -8940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1528($fp)
	sw $t0, -8944($fp)
	lw $t0, -8944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1540($fp)
	sw $t0, -8948($fp)
	lw $t0, -8948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1552($fp)
	sw $t0, -8952($fp)
	lw $t0, -8952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -8956($fp)
	li $t0, 0
	sw $t0, -8960($fp)
	li $t0, 4
	lw $t1, -8960($fp)
	mul $t0, $t0, $t1
	sw $t0, -8964($fp)
	lw $t0, -8964($fp)
	lw $t1, -8956($fp)
	add $t0, $t0, $t1
	sw $t0, -8968($fp)
	lw $t0, -8968($fp)
	lw $t1, 0($t0)
	sw $t1, -8972($fp)
	lw $t0, -8972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -8976($fp)
	li $t0, 1
	sw $t0, -8980($fp)
	li $t0, 4
	lw $t1, -8980($fp)
	mul $t0, $t0, $t1
	sw $t0, -8984($fp)
	lw $t0, -8984($fp)
	lw $t1, -8976($fp)
	add $t0, $t0, $t1
	sw $t0, -8988($fp)
	lw $t0, -8988($fp)
	lw $t1, 0($t0)
	sw $t1, -8992($fp)
	lw $t0, -8992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -8996($fp)
	li $t0, 2
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
	lw $t0, -9012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1636($fp)
	sw $t0, -9016($fp)
	lw $t0, -9016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1648($fp)
	sw $t0, -9020($fp)
	lw $t0, -9020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -9024($fp)
	li $t0, 0
	sw $t0, -9028($fp)
	li $t0, 4
	lw $t1, -9028($fp)
	mul $t0, $t0, $t1
	sw $t0, -9032($fp)
	lw $t0, -9032($fp)
	lw $t1, -9024($fp)
	add $t0, $t0, $t1
	sw $t0, -9036($fp)
	lw $t0, -9036($fp)
	lw $t1, 0($t0)
	sw $t1, -9040($fp)
	lw $t0, -9040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -9044($fp)
	li $t0, 1
	sw $t0, -9048($fp)
	li $t0, 4
	lw $t1, -9048($fp)
	mul $t0, $t0, $t1
	sw $t0, -9052($fp)
	lw $t0, -9052($fp)
	lw $t1, -9044($fp)
	add $t0, $t0, $t1
	sw $t0, -9056($fp)
	lw $t0, -9056($fp)
	lw $t1, 0($t0)
	sw $t1, -9060($fp)
	lw $t0, -9060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -9064($fp)
	lw $t0, -9064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -9068($fp)
	lw $t0, -9068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -9072($fp)
	lw $t0, -9072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -9076($fp)
	lw $t0, -9076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1756($fp)
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1768($fp)
	sw $t0, -9084($fp)
	lw $t0, -9084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1780($fp)
	sw $t0, -9088($fp)
	lw $t0, -9088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1792($fp)
	sw $t0, -9092($fp)
	lw $t0, -9092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1804($fp)
	sw $t0, -9096($fp)
	lw $t0, -9096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1816($fp)
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1828($fp)
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1840($fp)
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9112($fp)
	li $t0, 0
	sw $t0, -9116($fp)
	li $t0, 0
	sw $t0, -9120($fp)
	lw $t0, -1024($fp)
	sw $t0, -9124($fp)
	lw $t0, -964($fp)
	sw $t0, -9128($fp)
	lw $t1, -9124($fp)
	lw $t2, -9128($fp)
	beq $t1, $t2, label1467
	j label1469
label1469:
	lw $t0, -1528($fp)
	sw $t0, -9132($fp)
	lw $t1, -9132($fp)
	li $t2, 0
	bne $t1, $t2, label1467
	j label1468
label1467:
	li $t0, 1
	sw $t0, -9120($fp)
label1468:
	lw $t0, -1552($fp)
	sw $t0, -9136($fp)
	li $t0, 0
	lw $t1, -9136($fp)
	sub $t0, $t0, $t1
	sw $t0, -9140($fp)
	li $t0, 0
	lw $t1, -9140($fp)
	sub $t0, $t0, $t1
	sw $t0, -9144($fp)
	addi $sp, $sp, -4
	lw $t0, -9120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9144($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9148($fp)
	addi $sp, $sp, 12
	li $t0, 23430
	sw $t0, -9152($fp)
	lw $t0, -1840($fp)
	sw $t0, -9156($fp)
	lw $t0, -9152($fp)
	lw $t1, -9156($fp)
	mul $t0, $t0, $t1
	sw $t0, -9160($fp)
	li $t0, 20281
	sw $t0, -9164($fp)
	lw $t0, -9160($fp)
	lw $t1, -9164($fp)
	mul $t0, $t0, $t1
	sw $t0, -9168($fp)
	lw $t1, -9148($fp)
	lw $t2, -9168($fp)
	bge $t1, $t2, label1465
	j label1466
label1465:
	li $t0, 1
	sw $t0, -9116($fp)
label1466:
	li $t0, 819
	sw $t0, -9172($fp)
	lw $t1, -9116($fp)
	lw $t2, -9172($fp)
	bne $t1, $t2, label1463
	j label1464
label1463:
	li $t0, 1
	sw $t0, -9112($fp)
label1464:
	lw $ra, -4($fp)
	lw $v0, -9112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -696
	li $t0, 8161
	sw $t0, -32($fp)
	addi $t0, $fp, -20
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
	li $t0, 47909
	sw $t0, -56($fp)
	addi $t0, $fp, -20
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
	li $t0, 18069
	sw $t0, -80($fp)
	addi $t0, $fp, -20
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
	li $t0, 58650
	sw $t0, -104($fp)
	addi $t0, $fp, -20
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
	li $t0, 60128
	sw $t0, -128($fp)
	addi $t0, $fp, -28
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
	li $t0, 2448
	sw $t0, -152($fp)
	addi $t0, $fp, -28
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
	li $t0, 45476
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 47136
	sw $t0, -188($fp)
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label1474
	j label1471
label1474:
	lw $t0, -180($fp)
	sw $t0, -192($fp)
	li $t0, 0
	sw $t0, -196($fp)
	lw $t0, 12($fp)
	sw $t0, -200($fp)
	li $t0, 0
	lw $t1, -200($fp)
	sub $t0, $t0, $t1
	sw $t0, -204($fp)
	li $t0, 18671
	sw $t0, -208($fp)
	lw $t1, -204($fp)
	lw $t2, -208($fp)
	bge $t1, $t2, label1475
	j label1476
label1475:
	li $t0, 1
	sw $t0, -196($fp)
label1476:
	addi $sp, $sp, -4
	lw $t0, -192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -196($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -212($fp)
	addi $sp, $sp, 12
	lw $t1, -212($fp)
	li $t2, 0
	bne $t1, $t2, label1473
	j label1471
label1473:
	li $t0, 0
	sw $t0, -216($fp)
	lw $t0, 8($fp)
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label1478
	j label1477
label1477:
	li $t0, 1
	sw $t0, -216($fp)
label1478:
	addi $t0, $fp, -28
	sw $t0, -224($fp)
	li $t0, 1
	sw $t0, -228($fp)
	li $t0, 4
	lw $t1, -228($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t1, -224($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, 0($t0)
	sw $t1, -240($fp)
	lw $t0, -216($fp)
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label1470
	j label1471
label1470:
	li $t0, 0
	sw $t0, -248($fp)
	addi $t0, $fp, -20
	sw $t0, -252($fp)
	li $t0, 2
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
	lw $t0, 8($fp)
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, 12($fp)
	sw $t0, -280($fp)
	li $t0, 0
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -276($fp)
	lw $t1, -284($fp)
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	lw $t0, 16($fp)
	sw $t0, -296($fp)
	li $t0, 41662
	sw $t0, -300($fp)
	lw $t1, -296($fp)
	lw $t2, -300($fp)
	beq $t1, $t2, label1481
	j label1482
label1481:
	li $t0, 1
	sw $t0, -292($fp)
label1482:
	li $t0, 39325
	sw $t0, -304($fp)
	lw $t0, 12($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -312($fp)
	li $t0, 0
	sw $t0, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	li $t0, 15219
	sw $t0, -324($fp)
	li $t0, 34162
	sw $t0, -328($fp)
	lw $t1, -324($fp)
	lw $t2, -328($fp)
	bne $t1, $t2, label1485
	j label1486
label1485:
	li $t0, 1
	sw $t0, -320($fp)
label1486:
	li $t0, 24219
	sw $t0, -332($fp)
	lw $t1, -320($fp)
	lw $t2, -332($fp)
	beq $t1, $t2, label1483
	j label1484
label1483:
	li $t0, 1
	sw $t0, -316($fp)
label1484:
	li $t0, 0
	sw $t0, -336($fp)
	lw $t0, 16($fp)
	sw $t0, -340($fp)
	li $t0, 0
	lw $t1, -340($fp)
	sub $t0, $t0, $t1
	sw $t0, -344($fp)
	li $t0, 25535
	sw $t0, -348($fp)
	lw $t1, -344($fp)
	lw $t2, -348($fp)
	blt $t1, $t2, label1487
	j label1488
label1487:
	li $t0, 1
	sw $t0, -336($fp)
label1488:
	li $t0, 0
	sw $t0, -352($fp)
	lw $t0, 8($fp)
	sw $t0, -356($fp)
	lw $t0, -180($fp)
	sw $t0, -360($fp)
	lw $t1, -356($fp)
	lw $t2, -360($fp)
	bge $t1, $t2, label1491
	j label1490
label1491:
	li $t0, 18076
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label1489
	j label1490
label1489:
	li $t0, 1
	sw $t0, -352($fp)
label1490:
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -368($fp)
	addi $sp, $sp, 24
	li $t0, 51602
	sw $t0, -372($fp)
	lw $t0, -368($fp)
	lw $t1, -372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	li $t0, 0
	sw $t0, -384($fp)
	lw $t0, 16($fp)
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label1495
	j label1494
label1494:
	li $t0, 1
	sw $t0, -384($fp)
label1495:
	lw $t0, 20($fp)
	sw $t0, -392($fp)
	lw $t1, -384($fp)
	lw $t2, -392($fp)
	bne $t1, $t2, label1492
	j label1493
label1492:
	li $t0, 1
	sw $t0, -380($fp)
label1493:
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -396($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -400($fp)
	addi $sp, $sp, 12
	lw $t0, 8($fp)
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -408($fp)
	lw $t0, -288($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, 20($fp)
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	bne $t1, $t2, label1479
	j label1480
label1479:
	li $t0, 1
	sw $t0, -248($fp)
label1480:
	j label1472
label1471:
	addi $t0, $fp, -28
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
	li $t0, 35465
	sw $t0, -440($fp)
	lw $t0, -436($fp)
	lw $t1, -440($fp)
	sub $t0, $t0, $t1
	sw $t0, -444($fp)
	li $t0, 16125
	sw $t0, -448($fp)
	li $t0, 50836
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -456($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -460($fp)
	addi $sp, $sp, 12
label1472:
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 0
	sw $t0, -468($fp)
	addi $t0, $fp, -20
	sw $t0, -472($fp)
	li $t0, 0
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
	lw $t1, -488($fp)
	li $t2, 0
	bne $t1, $t2, label1499
	j label1498
label1498:
	li $t0, 1
	sw $t0, -468($fp)
label1499:
	li $t0, 0
	sw $t0, -492($fp)
	lw $t0, 12($fp)
	sw $t0, -496($fp)
	li $t0, 20375
	sw $t0, -500($fp)
	lw $t1, -496($fp)
	lw $t2, -500($fp)
	beq $t1, $t2, label1500
	j label1501
label1500:
	li $t0, 1
	sw $t0, -492($fp)
label1501:
	li $t0, 0
	sw $t0, -504($fp)
	li $t0, 58895
	sw $t0, -508($fp)
	lw $t1, -508($fp)
	li $t2, 0
	bne $t1, $t2, label1505
	j label1503
label1505:
	lw $t0, 8($fp)
	sw $t0, -512($fp)
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label1504
	j label1503
label1504:
	li $t0, 9679
	sw $t0, -516($fp)
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label1502
	j label1503
label1502:
	li $t0, 1
	sw $t0, -504($fp)
label1503:
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -504($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -520($fp)
	addi $sp, $sp, 12
	lw $t0, -468($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -524($fp)
	li $t0, 0
	sw $t0, -528($fp)
	li $t0, 1520
	sw $t0, -532($fp)
	li $t0, 57588
	sw $t0, -536($fp)
	lw $t0, -532($fp)
	lw $t1, -536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -540($fp)
	li $t0, 38445
	sw $t0, -544($fp)
	lw $t1, -540($fp)
	lw $t2, -544($fp)
	ble $t1, $t2, label1506
	j label1507
label1506:
	li $t0, 1
	sw $t0, -528($fp)
label1507:
	lw $t1, -524($fp)
	lw $t2, -528($fp)
	beq $t1, $t2, label1496
	j label1497
label1496:
	li $t0, 1
	sw $t0, -464($fp)
label1497:
	addi $t0, $fp, -20
	sw $t0, -548($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -568($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -588($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -608($fp)
	li $t0, 3
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
	lw $t0, -624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -628($fp)
	li $t0, 0
	sw $t0, -632($fp)
	li $t0, 4
	lw $t1, -632($fp)
	mul $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	lw $t1, 0($t0)
	sw $t1, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -648($fp)
	li $t0, 1
	sw $t0, -652($fp)
	li $t0, 4
	lw $t1, -652($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t1, 0($t0)
	sw $t1, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -672($fp)
	addi $t0, $fp, -20
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	li $t0, 60171
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label1511
	j label1510
label1510:
	li $t0, 1
	sw $t0, -680($fp)
label1511:
	li $t0, 0
	lw $t1, -680($fp)
	sub $t0, $t0, $t1
	sw $t0, -688($fp)
	li $t0, 4
	lw $t1, -688($fp)
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, 0($t0)
	sw $t1, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label1509
	j label1508
label1508:
	li $t0, 1
	sw $t0, -672($fp)
label1509:
	lw $ra, -4($fp)
	lw $v0, -672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -148
	li $t0, 52180
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
	li $t0, 40893
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
	li $t0, 40111
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	addi $t0, $fp, -12
	sw $t0, -76($fp)
	lw $t0, -68($fp)
	sw $t0, -80($fp)
	li $t0, 33780
	sw $t0, -84($fp)
	li $t0, 0
	lw $t1, -84($fp)
	sub $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -80($fp)
	lw $t1, -88($fp)
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	li $t0, 4
	lw $t1, -92($fp)
	mul $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, -76($fp)
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
	lw $t0, -68($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 59564
	sw $t0, -152($fp)
	lw $ra, -4($fp)
	lw $v0, -152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4708
	li $t0, 4516
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 21362
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 15618
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 33530
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 39438
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 41153
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 48750
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 8064
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 65372
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 22539
	sw $t0, -236($fp)
	addi $t0, $fp, -8
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
	li $t0, 59666
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 41498
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 38665
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 44966
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 57028
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 9847
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 14895
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 46425
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 29403
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 8254
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 56104
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 49778
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 9775
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 48157
	sw $t0, -416($fp)
	addi $t0, $fp, -20
	sw $t0, -420($fp)
	li $t0, 0
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -420($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -416($fp)
	lw $t1, -432($fp)
	sw $t0, 0($t1)
	lw $t0, -432($fp)
	lw $t1, 0($t0)
	sw $t1, -436($fp)
	li $t0, 22687
	sw $t0, -440($fp)
	addi $t0, $fp, -20
	sw $t0, -444($fp)
	li $t0, 1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -444($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -440($fp)
	lw $t1, -456($fp)
	sw $t0, 0($t1)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	li $t0, 4410
	sw $t0, -464($fp)
	addi $t0, $fp, -20
	sw $t0, -468($fp)
	li $t0, 2
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -468($fp)
	lw $t1, -476($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -464($fp)
	lw $t1, -480($fp)
	sw $t0, 0($t1)
	lw $t0, -480($fp)
	lw $t1, 0($t0)
	sw $t1, -484($fp)
	li $t0, 34801
	sw $t0, -488($fp)
	addi $t0, $fp, -44
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
	li $t0, 63581
	sw $t0, -512($fp)
	addi $t0, $fp, -44
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
	li $t0, 44521
	sw $t0, -536($fp)
	addi $t0, $fp, -44
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
	li $t0, 3046
	sw $t0, -560($fp)
	addi $t0, $fp, -44
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
	li $t0, 57609
	sw $t0, -584($fp)
	addi $t0, $fp, -44
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
	li $t0, 49037
	sw $t0, -608($fp)
	addi $t0, $fp, -44
	sw $t0, -612($fp)
	li $t0, 5
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
	li $t0, 24408
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 7692
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 17032
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 63846
	sw $t0, -668($fp)
	addi $t0, $fp, -72
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
	li $t0, 48845
	sw $t0, -692($fp)
	addi $t0, $fp, -72
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
	li $t0, 246
	sw $t0, -716($fp)
	addi $t0, $fp, -72
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
	li $t0, 6375
	sw $t0, -740($fp)
	addi $t0, $fp, -72
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
	li $t0, 48682
	sw $t0, -764($fp)
	addi $t0, $fp, -72
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
	li $t0, 22785
	sw $t0, -788($fp)
	addi $t0, $fp, -72
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
	li $t0, 505
	sw $t0, -812($fp)
	addi $t0, $fp, -72
	sw $t0, -816($fp)
	li $t0, 6
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
	li $t0, 24644
	sw $t0, -836($fp)
	addi $t0, $fp, -88
	sw $t0, -840($fp)
	li $t0, 0
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
	li $t0, 61450
	sw $t0, -860($fp)
	addi $t0, $fp, -88
	sw $t0, -864($fp)
	li $t0, 1
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
	li $t0, 45472
	sw $t0, -884($fp)
	addi $t0, $fp, -88
	sw $t0, -888($fp)
	li $t0, 2
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
	li $t0, 16136
	sw $t0, -908($fp)
	addi $t0, $fp, -88
	sw $t0, -912($fp)
	li $t0, 3
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
	li $t0, 5761
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	li $t0, 60367
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 62562
	sw $t0, -956($fp)
	addi $t0, $fp, -124
	sw $t0, -960($fp)
	li $t0, 0
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
	li $t0, 35164
	sw $t0, -980($fp)
	addi $t0, $fp, -124
	sw $t0, -984($fp)
	li $t0, 1
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
	li $t0, 3086
	sw $t0, -1004($fp)
	addi $t0, $fp, -124
	sw $t0, -1008($fp)
	li $t0, 2
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
	li $t0, 53130
	sw $t0, -1028($fp)
	addi $t0, $fp, -124
	sw $t0, -1032($fp)
	li $t0, 3
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
	li $t0, 19407
	sw $t0, -1052($fp)
	addi $t0, $fp, -124
	sw $t0, -1056($fp)
	li $t0, 4
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
	li $t0, 12861
	sw $t0, -1076($fp)
	addi $t0, $fp, -124
	sw $t0, -1080($fp)
	li $t0, 5
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
	li $t0, 35751
	sw $t0, -1100($fp)
	addi $t0, $fp, -124
	sw $t0, -1104($fp)
	li $t0, 6
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
	li $t0, 42094
	sw $t0, -1124($fp)
	addi $t0, $fp, -124
	sw $t0, -1128($fp)
	li $t0, 7
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1128($fp)
	lw $t1, -1136($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1124($fp)
	lw $t1, -1140($fp)
	sw $t0, 0($t1)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
	li $t0, 17271
	sw $t0, -1148($fp)
	addi $t0, $fp, -124
	sw $t0, -1152($fp)
	li $t0, 8
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1152($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1148($fp)
	lw $t1, -1164($fp)
	sw $t0, 0($t1)
	lw $t0, -1164($fp)
	lw $t1, 0($t0)
	sw $t1, -1168($fp)
	li $t0, 0
	sw $t0, -1172($fp)
	li $t0, 0
	sw $t0, -1176($fp)
	lw $t0, -132($fp)
	sw $t0, -1180($fp)
	lw $t1, -1180($fp)
	li $t2, 0
	bne $t1, $t2, label1516
	j label1515
label1515:
	li $t0, 1
	sw $t0, -1176($fp)
label1516:
	li $t0, 5017
	sw $t0, -1184($fp)
	lw $t0, -1176($fp)
	lw $t1, -1184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1188($fp)
	lw $t1, -1188($fp)
	li $t2, 0
	bne $t1, $t2, label1512
	j label1514
label1514:
	li $t0, 40139
	sw $t0, -1192($fp)
	li $t0, 0
	sw $t0, -1196($fp)
	li $t0, 61792
	sw $t0, -1200($fp)
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label1518
	j label1517
label1517:
	li $t0, 1
	sw $t0, -1196($fp)
label1518:
	lw $t1, -1192($fp)
	lw $t2, -1196($fp)
	ble $t1, $t2, label1512
	j label1513
label1512:
	li $t0, 1
	sw $t0, -1172($fp)
label1513:
	li $t0, 8063
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	li $t0, 32213
	sw $t0, -1236($fp)
	addi $t0, $fp, -1220
	sw $t0, -1240($fp)
	li $t0, 0
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
	li $t0, 45293
	sw $t0, -1260($fp)
	addi $t0, $fp, -1220
	sw $t0, -1264($fp)
	li $t0, 1
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
	li $t0, 32471
	sw $t0, -1284($fp)
	addi $t0, $fp, -1220
	sw $t0, -1288($fp)
	li $t0, 2
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
	li $t0, 39905
	sw $t0, -1308($fp)
	addi $t0, $fp, -1220
	sw $t0, -1312($fp)
	li $t0, 3
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
	li $t0, 62325
	sw $t0, -1332($fp)
	addi $t0, $fp, -1220
	sw $t0, -1336($fp)
	li $t0, 4
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
	li $t0, 30781
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 23214
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 62571
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 37156
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	li $t0, 6360
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	li $t0, 19821
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	li $t0, 37662
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	li $t0, 31005
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	li $t0, 15735
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	li $t0, 17598
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	li $t0, 47141
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	li $t0, 21497
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	li $t0, 12429
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	li $t0, 44167
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
label1519:
	li $t0, 56661
	sw $t0, -1524($fp)
	lw $t0, -312($fp)
	sw $t0, -1528($fp)
	lw $t0, -1524($fp)
	lw $t1, -1528($fp)
	sub $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label1520
	j label1521
label1520:
	addi $t0, $fp, -8
	sw $t0, -1536($fp)
	lw $t0, -192($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1544($fp)
	li $t0, 4
	lw $t1, -1544($fp)
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	lw $t1, 0($t0)
	sw $t1, -1556($fp)
	li $t0, 0
	lw $t1, -1556($fp)
	sub $t0, $t0, $t1
	sw $t0, -1560($fp)
	addi $t0, $fp, -124
	sw $t0, -1564($fp)
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, -408($fp)
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label1526
	j label1525
label1525:
	li $t0, 1
	sw $t0, -1568($fp)
label1526:
	li $t0, 4
	lw $t1, -1568($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	lw $t1, -1560($fp)
	lw $t2, -1584($fp)
	bge $t1, $t2, label1522
	j label1523
label1522:
	li $t0, 15515
	sw $t0, -1588($fp)
	lw $t0, -276($fp)
	sw $t0, -1592($fp)
	li $t0, 0
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1588($fp)
	lw $t1, -1596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1600($fp)
	lw $ra, -4($fp)
	lw $v0, -1600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1524
label1523:
	li $t0, 31762
	sw $t0, -1604($fp)
label1524:
	j label1519
label1521:
	lw $t0, -1228($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1220
	sw $t0, -1612($fp)
	li $t0, 0
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
	addi $t0, $fp, -1220
	sw $t0, -1632($fp)
	li $t0, 1
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
	addi $t0, $fp, -1220
	sw $t0, -1652($fp)
	li $t0, 2
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
	addi $t0, $fp, -1220
	sw $t0, -1672($fp)
	li $t0, 3
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
	addi $t0, $fp, -1220
	sw $t0, -1692($fp)
	li $t0, 4
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
	lw $t0, -1360($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1408($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1420($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1432($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1444($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1456($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1468($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1480($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1492($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1504($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1516($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1768($fp)
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 10532
	sw $t0, -1776($fp)
	lw $t0, -1384($fp)
	sw $t0, -1780($fp)
	li $t0, 0
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1776($fp)
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	li $t0, 0
	lw $t1, -1788($fp)
	sub $t0, $t0, $t1
	sw $t0, -1792($fp)
	li $t0, 28376
	sw $t0, -1796($fp)
	lw $t1, -1792($fp)
	lw $t2, -1796($fp)
	beq $t1, $t2, label1529
	j label1530
label1529:
	li $t0, 1
	sw $t0, -1772($fp)
label1530:
	li $t0, 0
	sw $t0, -1800($fp)
	li $t0, 0
	sw $t0, -1804($fp)
	lw $t0, -408($fp)
	sw $t0, -1808($fp)
	li $t0, 1977
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	li $t0, 52627
	sw $t0, -1820($fp)
	lw $t1, -1816($fp)
	lw $t2, -1820($fp)
	blt $t1, $t2, label1533
	j label1534
label1533:
	li $t0, 1
	sw $t0, -1804($fp)
label1534:
	lw $t0, -360($fp)
	sw $t0, -1824($fp)
	lw $t0, -1444($fp)
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t1, -1804($fp)
	lw $t2, -1832($fp)
	ble $t1, $t2, label1531
	j label1532
label1531:
	li $t0, 1
	sw $t0, -1800($fp)
label1532:
	lw $t1, -1772($fp)
	lw $t2, -1800($fp)
	bne $t1, $t2, label1527
	j label1528
label1527:
	li $t0, 1
	sw $t0, -1768($fp)
label1528:
	lw $ra, -4($fp)
	lw $v0, -1768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 45647
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	li $t0, 6994
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 0
	sw $t0, -1864($fp)
	li $t0, 41903
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label1538
	j label1537
label1537:
	li $t0, 1
	sw $t0, -1864($fp)
label1538:
	li $t0, 0
	sw $t0, -1872($fp)
	lw $t0, -312($fp)
	sw $t0, -1876($fp)
	lw $t0, -324($fp)
	sw $t0, -1880($fp)
	lw $t0, -1876($fp)
	lw $t1, -1880($fp)
	sub $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label1541
	j label1540
label1541:
	lw $t0, -1432($fp)
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label1539
	j label1540
label1539:
	li $t0, 1
	sw $t0, -1872($fp)
label1540:
	lw $t0, -1492($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1896($fp)
	li $t0, 0
	sw $t0, -1900($fp)
	li $t0, 0
	sw $t0, -1904($fp)
	lw $t0, -336($fp)
	sw $t0, -1908($fp)
	lw $t0, -192($fp)
	sw $t0, -1912($fp)
	lw $t1, -1908($fp)
	lw $t2, -1912($fp)
	blt $t1, $t2, label1544
	j label1545
label1544:
	li $t0, 1
	sw $t0, -1904($fp)
label1545:
	lw $t0, -156($fp)
	sw $t0, -1916($fp)
	lw $t1, -1904($fp)
	lw $t2, -1916($fp)
	bgt $t1, $t2, label1542
	j label1543
label1542:
	li $t0, 1
	sw $t0, -1900($fp)
label1543:
	li $t0, 27230
	sw $t0, -1920($fp)
	li $t0, 0
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1924($fp)
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1932($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1936($fp)
	addi $t0, $fp, -44
	sw $t0, -1940($fp)
	li $t0, 3
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
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label1547
	j label1546
label1546:
	li $t0, 1
	sw $t0, -1936($fp)
label1547:
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 21661
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label1549
	j label1548
label1548:
	li $t0, 1
	sw $t0, -1960($fp)
label1549:
	lw $t0, -1936($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t1, -1932($fp)
	lw $t2, -1968($fp)
	beq $t1, $t2, label1535
	j label1536
label1535:
	li $t0, 1
	sw $t0, -1860($fp)
label1536:
	lw $t0, -168($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -1976($fp)
	li $t0, 0
	sw $t0, -1980($fp)
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 0
	sw $t0, -1988($fp)
	li $t0, 33812
	sw $t0, -1992($fp)
	li $t0, 18450
	sw $t0, -1996($fp)
	lw $t1, -1992($fp)
	lw $t2, -1996($fp)
	blt $t1, $t2, label1554
	j label1555
label1554:
	li $t0, 1
	sw $t0, -1988($fp)
label1555:
	lw $t0, -636($fp)
	sw $t0, -2000($fp)
	lw $t1, -1988($fp)
	lw $t2, -2000($fp)
	beq $t1, $t2, label1552
	j label1553
label1552:
	li $t0, 1
	sw $t0, -1984($fp)
label1553:
	li $t0, 0
	sw $t0, -2004($fp)
	li $t0, 47528
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label1557
	j label1556
label1556:
	li $t0, 1
	sw $t0, -2004($fp)
label1557:
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2012($fp)
	addi $sp, $sp, 12
	li $t0, 12774
	sw $t0, -2016($fp)
	lw $t0, -1852($fp)
	sw $t0, -2020($fp)
	lw $t0, -2016($fp)
	lw $t1, -2020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2024($fp)
	li $t0, 0
	sw $t0, -2028($fp)
	lw $t0, -1360($fp)
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label1559
	j label1558
label1558:
	li $t0, 1
	sw $t0, -2028($fp)
label1559:
	li $t0, 15486
	sw $t0, -2036($fp)
	lw $t0, -2028($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 57027
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label1561
	j label1560
label1560:
	li $t0, 1
	sw $t0, -2044($fp)
label1561:
	lw $t0, -660($fp)
	sw $t0, -2052($fp)
	lw $t0, -2044($fp)
	lw $t1, -2052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2056($fp)
	addi $sp, $sp, -4
	lw $t0, -2040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2060($fp)
	addi $sp, $sp, 12
	lw $t0, -2024($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t1, -2012($fp)
	lw $t2, -2064($fp)
	blt $t1, $t2, label1550
	j label1551
label1550:
	li $t0, 1
	sw $t0, -1980($fp)
label1551:
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 49930
	sw $t0, -2072($fp)
	li $t0, 63387
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2080($fp)
	li $t0, 0
	sw $t0, -2084($fp)
	li $t0, 35307
	sw $t0, -2088($fp)
	lw $t1, -2088($fp)
	li $t2, 0
	bne $t1, $t2, label1564
	j label1565
label1564:
	li $t0, 1
	sw $t0, -2084($fp)
label1565:
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	li $t0, 22056
	sw $t0, -2096($fp)
	li $t0, 0
	sw $t0, -2100($fp)
	lw $t0, -1396($fp)
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label1567
	j label1566
label1566:
	li $t0, 1
	sw $t0, -2100($fp)
label1567:
	lw $t0, -2096($fp)
	lw $t1, -2100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2108($fp)
	lw $t1, -2092($fp)
	lw $t2, -2108($fp)
	blt $t1, $t2, label1562
	j label1563
label1562:
	li $t0, 1
	sw $t0, -2068($fp)
label1563:
	lw $t0, -396($fp)
	sw $t0, -2112($fp)
	li $t0, 0
	sw $t0, -2116($fp)
	addi $t0, $fp, -88
	sw $t0, -2120($fp)
	lw $t0, -1228($fp)
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
	li $t0, 10462
	sw $t0, -2140($fp)
	lw $t1, -2136($fp)
	lw $t2, -2140($fp)
	beq $t1, $t2, label1568
	j label1569
label1568:
	li $t0, 1
	sw $t0, -2116($fp)
label1569:
	li $t0, 39654
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -2148($fp)
	lw $t0, -144($fp)
	sw $t0, -2152($fp)
	li $t0, 28856
	sw $t0, -2156($fp)
	li $t0, 51042
	sw $t0, -2160($fp)
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -1228($fp)
	sw $t0, -2168($fp)
	lw $t0, -2164($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	addi $t0, $fp, -1220
	sw $t0, -2176($fp)
	lw $t0, -216($fp)
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
	lw $t0, -348($fp)
	sw $t0, -2196($fp)
	lw $t0, -2192($fp)
	lw $t1, -2196($fp)
	sub $t0, $t0, $t1
	sw $t0, -2200($fp)
	addi $sp, $sp, -4
	lw $t0, -2116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2200($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2204($fp)
	addi $sp, $sp, 24
	lw $t0, -2112($fp)
	lw $t1, -2204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2208($fp)
	li $t0, 0
	sw $t0, -2212($fp)
	lw $t0, -372($fp)
	sw $t0, -2216($fp)
	li $t0, 10551
	sw $t0, -2220($fp)
	lw $t0, -2216($fp)
	lw $t1, -2220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2224($fp)
	li $t0, 61288
	sw $t0, -2228($fp)
	li $t0, 0
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -372($fp)
	sw $t0, -2236($fp)
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2240($fp)
	addi $t0, $fp, -72
	sw $t0, -2244($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -2264($fp)
	li $t0, 8661
	sw $t0, -2268($fp)
	lw $t0, -1444($fp)
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label1572
	j label1574
label1574:
	lw $t0, -372($fp)
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label1572
	j label1573
label1572:
	li $t0, 1
	sw $t0, -2264($fp)
label1573:
	li $t0, 0
	sw $t0, -2284($fp)
	li $t0, 20855
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label1578
	j label1577
label1578:
	lw $t0, -1840($fp)
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label1575
	j label1577
label1577:
	lw $t0, -936($fp)
	sw $t0, -2296($fp)
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label1575
	j label1576
label1575:
	li $t0, 1
	sw $t0, -2284($fp)
label1576:
	addi $t0, $fp, -72
	sw $t0, -2300($fp)
	lw $t0, -372($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2316($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2320($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2324($fp)
	lw $t0, -180($fp)
	sw $t0, -2328($fp)
	li $t0, 2063
	sw $t0, -2332($fp)
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label1579
	j label1581
label1581:
	lw $t0, -660($fp)
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label1579
	j label1580
label1579:
	li $t0, 1
	sw $t0, -2324($fp)
label1580:
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2344($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2348($fp)
	li $t0, 54629
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label1582
	j label1584
label1584:
	li $t0, 63665
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label1582
	j label1583
label1582:
	li $t0, 1
	sw $t0, -2348($fp)
label1583:
	li $t0, 0
	sw $t0, -2360($fp)
	li $t0, 52084
	sw $t0, -2364($fp)
	addi $sp, $sp, -4
	lw $t0, -2364($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -2368($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -2372($fp)
	lw $t1, -2368($fp)
	lw $t2, -2372($fp)
	beq $t1, $t2, label1585
	j label1586
label1585:
	li $t0, 1
	sw $t0, -2360($fp)
label1586:
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2360($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2376($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2380($fp)
	lw $t0, 4($fp)
	sw $t0, -2384($fp)
	li $t0, 7003
	sw $t0, -2388($fp)
	lw $t1, -2384($fp)
	lw $t2, -2388($fp)
	ble $t1, $t2, label1589
	j label1588
label1589:
	lw $t0, -1432($fp)
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label1587
	j label1588
label1587:
	li $t0, 1
	sw $t0, -2380($fp)
label1588:
	lw $t0, -1420($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -2400($fp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2404($fp)
	addi $sp, $sp, 24
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label1571
	j label1570
label1570:
	li $t0, 1
	sw $t0, -2212($fp)
label1571:
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -348($fp)
	sw $t0, -2412($fp)
	li $t0, 0
	lw $t1, -2412($fp)
	sub $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label1593
	j label1591
label1593:
	li $t0, 0
	sw $t0, -2420($fp)
	lw $t0, -348($fp)
	sw $t0, -2424($fp)
	li $t0, 0
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -1516($fp)
	sw $t0, -2432($fp)
	lw $t1, -2428($fp)
	lw $t2, -2432($fp)
	bne $t1, $t2, label1594
	j label1595
label1594:
	li $t0, 1
	sw $t0, -2420($fp)
label1595:
	li $t0, 29827
	sw $t0, -2436($fp)
	li $t0, 22983
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t1, -2420($fp)
	lw $t2, -2444($fp)
	beq $t1, $t2, label1590
	j label1591
label1590:
	li $t0, 52455
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	li $t0, 0
	sw $t0, -2460($fp)
	addi $t0, $fp, -72
	sw $t0, -2464($fp)
	li $t0, 2
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
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label1598
	j label1597
label1598:
	lw $t0, -1492($fp)
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label1596
	j label1597
label1596:
	li $t0, 1
	sw $t0, -2460($fp)
label1597:
	li $t0, 0
	sw $t0, -2488($fp)
	li $t0, 40045
	sw $t0, -2492($fp)
	li $t0, 12287
	sw $t0, -2496($fp)
	lw $t0, -2492($fp)
	lw $t1, -2496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2500($fp)
	li $t0, 46102
	sw $t0, -2504($fp)
	lw $t1, -2500($fp)
	lw $t2, -2504($fp)
	beq $t1, $t2, label1599
	j label1600
label1599:
	li $t0, 1
	sw $t0, -2488($fp)
label1600:
	li $t0, 0
	sw $t0, -2508($fp)
	li $t0, 24046
	sw $t0, -2512($fp)
	lw $t0, -948($fp)
	sw $t0, -2516($fp)
	lw $t0, -2512($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t1, -2520($fp)
	li $t2, 0
	bne $t1, $t2, label1603
	j label1602
label1603:
	lw $t0, -156($fp)
	sw $t0, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label1601
	j label1602
label1601:
	li $t0, 1
	sw $t0, -2508($fp)
label1602:
	li $t0, 42516
	sw $t0, -2528($fp)
	li $t0, 0
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 27030
	sw $t0, -2540($fp)
	li $t0, 39651
	sw $t0, -2544($fp)
	lw $t1, -2540($fp)
	lw $t2, -2544($fp)
	beq $t1, $t2, label1608
	j label1607
label1608:
	lw $t0, -1516($fp)
	sw $t0, -2548($fp)
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label1606
	j label1607
label1606:
	li $t0, 1
	sw $t0, -2536($fp)
label1607:
	lw $t0, -1396($fp)
	sw $t0, -2552($fp)
	li $t0, 50703
	sw $t0, -2556($fp)
	lw $t0, -2552($fp)
	lw $t1, -2556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2560($fp)
	li $t0, 0
	lw $t1, -2560($fp)
	sub $t0, $t0, $t1
	sw $t0, -2564($fp)
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 0
	sw $t0, -2572($fp)
	lw $t0, -936($fp)
	sw $t0, -2576($fp)
	li $t0, 8580
	sw $t0, -2580($fp)
	lw $t1, -2576($fp)
	lw $t2, -2580($fp)
	bne $t1, $t2, label1611
	j label1612
label1611:
	li $t0, 1
	sw $t0, -2572($fp)
label1612:
	li $t0, 26877
	sw $t0, -2584($fp)
	lw $t1, -2572($fp)
	lw $t2, -2584($fp)
	beq $t1, $t2, label1609
	j label1610
label1609:
	li $t0, 1
	sw $t0, -2568($fp)
label1610:
	li $t0, 0
	sw $t0, -2588($fp)
	lw $t0, -1456($fp)
	sw $t0, -2592($fp)
	lw $t1, -2592($fp)
	li $t2, 0
	bne $t1, $t2, label1616
	j label1614
label1616:
	li $t0, 16890
	sw $t0, -2596($fp)
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label1615
	j label1614
label1615:
	lw $t0, -276($fp)
	sw $t0, -2600($fp)
	lw $t1, -2600($fp)
	li $t2, 0
	bne $t1, $t2, label1613
	j label1614
label1613:
	li $t0, 1
	sw $t0, -2588($fp)
label1614:
	li $t0, 44885
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -2608($fp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2612($fp)
	addi $sp, $sp, 24
	li $t0, 42194
	sw $t0, -2616($fp)
	lw $t1, -2612($fp)
	lw $t2, -2616($fp)
	beq $t1, $t2, label1604
	j label1605
label1604:
	li $t0, 1
	sw $t0, -2532($fp)
label1605:
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2620($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2624($fp)
	lw $t0, -1420($fp)
	sw $t0, -2628($fp)
	lw $t0, -384($fp)
	sw $t0, -2632($fp)
	lw $t0, -2628($fp)
	lw $t1, -2632($fp)
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t1, -2636($fp)
	li $t2, 0
	bne $t1, $t2, label1619
	j label1618
label1619:
	lw $t0, -1492($fp)
	sw $t0, -2640($fp)
	li $t0, 20221
	sw $t0, -2644($fp)
	lw $t1, -2640($fp)
	lw $t2, -2644($fp)
	ble $t1, $t2, label1617
	j label1618
label1617:
	li $t0, 1
	sw $t0, -2624($fp)
label1618:
	lw $t0, -2624($fp)
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -2648($fp)
	lw $t0, -1420($fp)
	sw $t0, -2652($fp)
	li $t0, 8832
	sw $t0, -2656($fp)
	lw $t0, -2652($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	addi $t0, $fp, -72
	sw $t0, -2664($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 6769
	sw $t0, -2688($fp)
	lw $t1, -2688($fp)
	li $t2, 0
	bne $t1, $t2, label1621
	j label1620
label1620:
	li $t0, 1
	sw $t0, -2684($fp)
label1621:
	li $t0, 0
	sw $t0, -2692($fp)
	addi $t0, $fp, -124
	sw $t0, -2696($fp)
	li $t0, 8
	sw $t0, -2700($fp)
	li $t0, 4
	lw $t1, -2700($fp)
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label1623
	j label1622
label1622:
	li $t0, 1
	sw $t0, -2692($fp)
label1623:
	li $t0, 0
	sw $t0, -2716($fp)
	lw $t0, -168($fp)
	sw $t0, -2720($fp)
	lw $t0, -1360($fp)
	sw $t0, -2724($fp)
	lw $t1, -2720($fp)
	lw $t2, -2724($fp)
	ble $t1, $t2, label1624
	j label1625
label1624:
	li $t0, 1
	sw $t0, -2716($fp)
label1625:
	addi $sp, $sp, -4
	lw $t0, -2660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2728($fp)
	addi $sp, $sp, 24
	lw $t0, -1228($fp)
	sw $t0, -2732($fp)
	lw $t0, -2728($fp)
	lw $t1, -2732($fp)
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	li $t0, 0
	sw $t0, -2740($fp)
	li $t0, 0
	sw $t0, -2744($fp)
	li $t0, 23777
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label1629
	j label1628
label1628:
	li $t0, 1
	sw $t0, -2744($fp)
label1629:
	addi $t0, $fp, -44
	sw $t0, -2752($fp)
	lw $t0, -2452($fp)
	sw $t0, -2756($fp)
	lw $t0, -1228($fp)
	sw $t0, -2760($fp)
	lw $t0, -2756($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2764($fp)
	li $t0, 4
	lw $t1, -2764($fp)
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	lw $t1, -2744($fp)
	lw $t2, -2776($fp)
	ble $t1, $t2, label1626
	j label1627
label1626:
	li $t0, 1
	sw $t0, -2740($fp)
label1627:
	j label1592
label1591:
label1630:
	addi $t0, $fp, -20
	sw $t0, -2780($fp)
	lw $t0, -192($fp)
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
	li $t0, 0
	lw $t1, -2796($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	li $t0, 0
	sw $t0, -2804($fp)
	li $t0, 11588
	sw $t0, -2808($fp)
	lw $t0, -1432($fp)
	sw $t0, -2812($fp)
	lw $t0, -2808($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	li $t0, 39272
	sw $t0, -2820($fp)
	lw $t1, -2816($fp)
	lw $t2, -2820($fp)
	bne $t1, $t2, label1633
	j label1634
label1633:
	li $t0, 1
	sw $t0, -2804($fp)
label1634:
	li $t0, 0
	sw $t0, -2824($fp)
	lw $t0, -228($fp)
	sw $t0, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label1636
	j label1635
label1635:
	li $t0, 1
	sw $t0, -2824($fp)
label1636:
	li $t0, 0
	lw $t1, -2824($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	addi $sp, $sp, -4
	lw $t0, -2804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2836($fp)
	addi $sp, $sp, 12
	lw $t0, -2800($fp)
	lw $t1, -2836($fp)
	sub $t0, $t0, $t1
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	lw $t0, -1456($fp)
	sw $t0, -2848($fp)
	li $t0, 46610
	sw $t0, -2852($fp)
	lw $t0, -2848($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -156($fp)
	sw $t0, -2860($fp)
	li $t0, 7340
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	sub $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t1, -2856($fp)
	lw $t2, -2868($fp)
	blt $t1, $t2, label1637
	j label1638
label1637:
	li $t0, 1
	sw $t0, -2844($fp)
label1638:
	lw $t1, -2840($fp)
	lw $t2, -2844($fp)
	beq $t1, $t2, label1631
	j label1632
label1631:
	li $t0, 49824
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	li $t0, 0
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	li $t0, 45323
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label1644
	j label1642
label1644:
	lw $t0, -192($fp)
	sw $t0, -2896($fp)
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label1643
	j label1642
label1643:
	lw $t0, -1228($fp)
	sw $t0, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label1641
	j label1642
label1641:
	li $t0, 1
	sw $t0, -2888($fp)
label1642:
	addi $t0, $fp, -1220
	sw $t0, -2904($fp)
	li $t0, 1
	sw $t0, -2908($fp)
	li $t0, 4
	lw $t1, -2908($fp)
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	lw $t0, -156($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	lw $t0, -1504($fp)
	sw $t0, -2936($fp)
	li $t0, 0
	lw $t1, -2936($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -180($fp)
	sw $t0, -2944($fp)
	lw $t1, -2940($fp)
	lw $t2, -2944($fp)
	beq $t1, $t2, label1645
	j label1646
label1645:
	li $t0, 1
	sw $t0, -2932($fp)
label1646:
	li $t0, 10901
	sw $t0, -2948($fp)
	li $t0, 30323
	sw $t0, -2952($fp)
	lw $t0, -2948($fp)
	lw $t1, -2952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	li $t0, 1
	sw $t0, -2960($fp)
	lw $t0, -2956($fp)
	lw $t1, -2960($fp)
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	addi $sp, $sp, -4
	lw $t0, -2888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2968($fp)
	addi $sp, $sp, 24
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label1640
	j label1639
label1639:
	li $t0, 1
	sw $t0, -2884($fp)
label1640:
	lw $t0, -636($fp)
	sw $t0, -2972($fp)
	lw $t0, -2876($fp)
	sw $t0, -2976($fp)
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2980($fp)
	li $t0, 0
	sw $t0, -2984($fp)
	li $t0, 17128
	sw $t0, -2988($fp)
	li $t0, 32381
	sw $t0, -2992($fp)
	lw $t0, -2988($fp)
	lw $t1, -2992($fp)
	sub $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label1649
	j label1648
label1649:
	lw $t0, -1408($fp)
	sw $t0, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label1647
	j label1648
label1647:
	li $t0, 1
	sw $t0, -2984($fp)
label1648:
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2984($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3004($fp)
	addi $sp, $sp, 12
	j label1630
label1632:
label1592:
	li $t0, 9039
	sw $t0, -3008($fp)
	li $t0, 0
	lw $t1, -3008($fp)
	sub $t0, $t0, $t1
	sw $t0, -3012($fp)
	li $t0, 0
	sw $t0, -3016($fp)
	lw $t0, -1468($fp)
	sw $t0, -3020($fp)
	lw $t0, -1480($fp)
	sw $t0, -3024($fp)
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	li $t0, 56779
	sw $t0, -3032($fp)
	lw $t1, -3028($fp)
	lw $t2, -3032($fp)
	blt $t1, $t2, label1650
	j label1651
label1650:
	li $t0, 1
	sw $t0, -3016($fp)
label1651:
	li $t0, 0
	sw $t0, -3036($fp)
	li $t0, 6817
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label1653
	j label1652
label1652:
	li $t0, 1
	sw $t0, -3036($fp)
label1653:
	addi $sp, $sp, -4
	lw $t0, -3012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3036($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3044($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3044($fp)
	sub $t0, $t0, $t1
	sw $t0, -3048($fp)
	li $t0, 0
	lw $t1, -3048($fp)
	sub $t0, $t0, $t1
	sw $t0, -3052($fp)
	li $t0, 0
	sw $t0, -3056($fp)
	li $t0, 49334
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label1655
	j label1654
label1654:
	li $t0, 1
	sw $t0, -3056($fp)
label1655:
	addi $t0, $fp, -124
	sw $t0, -3064($fp)
	li $t0, 0
	sw $t0, -3068($fp)
	li $t0, 15289
	sw $t0, -3072($fp)
	lw $t0, -192($fp)
	sw $t0, -3076($fp)
	lw $t1, -3072($fp)
	lw $t2, -3076($fp)
	beq $t1, $t2, label1656
	j label1657
label1656:
	li $t0, 1
	sw $t0, -3068($fp)
label1657:
	li $t0, 4
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, 0($t0)
	sw $t1, -3088($fp)
	lw $t0, -3056($fp)
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
label1658:
	li $t0, 49084
	sw $t0, -3096($fp)
	li $t0, 61621
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label1661
	j label1660
label1661:
	addi $t0, $fp, -124
	sw $t0, -3108($fp)
	li $t0, 5
	sw $t0, -3112($fp)
	li $t0, 4
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	lw $t1, 0($t0)
	sw $t1, -3124($fp)
	li $t0, 59415
	sw $t0, -3128($fp)
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	li $t0, 0
	sw $t0, -3136($fp)
	lw $t0, -312($fp)
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label1663
	j label1662
label1662:
	li $t0, 1
	sw $t0, -3136($fp)
label1663:
	lw $t1, -3132($fp)
	lw $t2, -3136($fp)
	beq $t1, $t2, label1659
	j label1660
label1659:
label1664:
	li $t0, 0
	sw $t0, -3144($fp)
	li $t0, 0
	sw $t0, -3148($fp)
	li $t0, 16077
	sw $t0, -3152($fp)
	lw $t0, -300($fp)
	sw $t0, -3156($fp)
	lw $t1, -3152($fp)
	lw $t2, -3156($fp)
	blt $t1, $t2, label1669
	j label1670
label1669:
	li $t0, 1
	sw $t0, -3148($fp)
label1670:
	li $t0, 742
	sw $t0, -3160($fp)
	lw $t1, -3148($fp)
	lw $t2, -3160($fp)
	bge $t1, $t2, label1667
	j label1668
label1667:
	li $t0, 1
	sw $t0, -3144($fp)
label1668:
	addi $sp, $sp, -4
	lw $t0, -3144($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -3164($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -3168($fp)
	li $t0, 2
	sw $t0, -3172($fp)
	li $t0, 4
	lw $t1, -3172($fp)
	mul $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	lw $t1, 0($t0)
	sw $t1, -3184($fp)
	lw $t0, -3164($fp)
	lw $t1, -3184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3188($fp)
	lw $t0, -3188($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 0
	bne $t1, $t2, label1665
	j label1666
label1665:
label1671:
	li $t0, 3664
	sw $t0, -3196($fp)
	li $t0, 1603
	sw $t0, -3200($fp)
	lw $t1, -3196($fp)
	lw $t2, -3200($fp)
	bne $t1, $t2, label1672
	j label1673
label1672:
	lw $t0, -372($fp)
	sw $t0, -3204($fp)
	j label1671
label1673:
	j label1664
label1666:
	j label1658
label1660:
label1674:
	li $t0, 31678
	sw $t0, -3208($fp)
	li $t0, 0
	sw $t0, -3212($fp)
	li $t0, 55239
	sw $t0, -3216($fp)
	li $t0, 19416
	sw $t0, -3220($fp)
	lw $t0, -3216($fp)
	lw $t1, -3220($fp)
	mul $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -144($fp)
	sw $t0, -3228($fp)
	lw $t1, -3224($fp)
	lw $t2, -3228($fp)
	bge $t1, $t2, label1677
	j label1678
label1677:
	li $t0, 1
	sw $t0, -3212($fp)
label1678:
	li $t0, 0
	sw $t0, -3232($fp)
	addi $t0, $fp, -72
	sw $t0, -3236($fp)
	lw $t0, -312($fp)
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
	li $t0, 20532
	sw $t0, -3256($fp)
	lw $t1, -3252($fp)
	lw $t2, -3256($fp)
	bne $t1, $t2, label1679
	j label1680
label1679:
	li $t0, 1
	sw $t0, -3232($fp)
label1680:
	li $t0, 0
	sw $t0, -3260($fp)
	li $t0, 0
	sw $t0, -3264($fp)
	li $t0, 8515
	sw $t0, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label1684
	j label1683
label1683:
	li $t0, 1
	sw $t0, -3264($fp)
label1684:
	lw $t0, -204($fp)
	sw $t0, -3272($fp)
	lw $t1, -3264($fp)
	lw $t2, -3272($fp)
	bne $t1, $t2, label1681
	j label1682
label1681:
	li $t0, 1
	sw $t0, -3260($fp)
label1682:
	addi $t0, $fp, -72
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
	lw $t0, -324($fp)
	sw $t0, -3296($fp)
	lw $t0, -264($fp)
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3304($fp)
	li $t0, 27441
	sw $t0, -3308($fp)
	lw $t0, -3304($fp)
	lw $t1, -3308($fp)
	mul $t0, $t0, $t1
	sw $t0, -3312($fp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3312($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3316($fp)
	addi $sp, $sp, 24
	lw $t0, -3208($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t1, -3320($fp)
	li $t2, 0
	bne $t1, $t2, label1675
	j label1676
label1675:
	addi $t0, $fp, -44
	sw $t0, -3324($fp)
	li $t0, 0
	sw $t0, -3328($fp)
	li $t0, 0
	sw $t0, -3332($fp)
	lw $t0, -276($fp)
	sw $t0, -3336($fp)
	lw $t0, -384($fp)
	sw $t0, -3340($fp)
	lw $t1, -3336($fp)
	lw $t2, -3340($fp)
	beq $t1, $t2, label1690
	j label1691
label1690:
	li $t0, 1
	sw $t0, -3332($fp)
label1691:
	lw $t0, -192($fp)
	sw $t0, -3344($fp)
	lw $t1, -3332($fp)
	lw $t2, -3344($fp)
	beq $t1, $t2, label1688
	j label1689
label1688:
	li $t0, 1
	sw $t0, -3328($fp)
label1689:
	li $t0, 4
	lw $t1, -3328($fp)
	mul $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, 0($t0)
	sw $t1, -3356($fp)
	lw $t0, -372($fp)
	sw $t0, -3360($fp)
	lw $t1, -3356($fp)
	lw $t2, -3360($fp)
	bne $t1, $t2, label1685
	j label1686
label1685:
	li $t0, 50855
	sw $t0, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label1692
	j label1693
label1692:
	addi $t0, $fp, -72
	sw $t0, -3368($fp)
	li $t0, 0
	sw $t0, -3372($fp)
	li $t0, 26446
	sw $t0, -3376($fp)
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label1696
	j label1695
label1695:
	li $t0, 1
	sw $t0, -3372($fp)
label1696:
	lw $t0, -3372($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -3380($fp)
	li $t0, 4
	lw $t1, -3380($fp)
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	lw $t1, -3368($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, 0($t0)
	sw $t1, -3392($fp)
	j label1694
label1693:
	li $t0, 0
	sw $t0, -3396($fp)
	addi $t0, $fp, -20
	sw $t0, -3400($fp)
	lw $t0, -948($fp)
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
	lw $t1, -3416($fp)
	li $t2, 0
	bne $t1, $t2, label1702
	j label1701
label1702:
	li $t0, 9667
	sw $t0, -3420($fp)
	li $t0, 32533
	sw $t0, -3424($fp)
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label1700
	j label1701
label1700:
	li $t0, 1
	sw $t0, -3396($fp)
label1701:
	lw $t0, -3396($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label1697
	j label1698
label1697:
	li $t0, 6233
	sw $t0, -3436($fp)
	lw $t1, -3436($fp)
	li $t2, 0
	bne $t1, $t2, label1703
	j label1704
label1703:
	li $t0, 0
	sw $t0, -3440($fp)
	li $t0, 0
	sw $t0, -3444($fp)
	li $t0, 26795
	sw $t0, -3448($fp)
	li $t0, 0
	lw $t1, -3448($fp)
	sub $t0, $t0, $t1
	sw $t0, -3452($fp)
	li $t0, 0
	lw $t1, -3452($fp)
	sub $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t1, -3456($fp)
	li $t2, 0
	bne $t1, $t2, label1709
	j label1708
label1708:
	li $t0, 1
	sw $t0, -3444($fp)
label1709:
	li $t0, 0
	lw $t1, -3444($fp)
	sub $t0, $t0, $t1
	sw $t0, -3460($fp)
	li $t0, 0
	sw $t0, -3464($fp)
	lw $t0, -396($fp)
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label1711
	j label1710
label1710:
	li $t0, 1
	sw $t0, -3464($fp)
label1711:
	lw $t1, -3460($fp)
	lw $t2, -3464($fp)
	bge $t1, $t2, label1706
	j label1707
label1706:
	li $t0, 1
	sw $t0, -3440($fp)
label1707:
	addi $t0, $fp, -20
	sw $t0, -3472($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -3488($fp)
	sub $t0, $t0, $t1
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -264($fp)
	sw $t0, -3500($fp)
	li $t0, 62384
	sw $t0, -3504($fp)
	lw $t1, -3500($fp)
	lw $t2, -3504($fp)
	beq $t1, $t2, label1714
	j label1713
label1714:
	lw $t0, -324($fp)
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label1712
	j label1713
label1712:
	li $t0, 1
	sw $t0, -3496($fp)
label1713:
	li $t0, 0
	sw $t0, -3512($fp)
	lw $t0, -372($fp)
	sw $t0, -3516($fp)
	li $t0, 33328
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -348($fp)
	sw $t0, -3528($fp)
	lw $t0, -3524($fp)
	lw $t1, -3528($fp)
	sub $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t1, -3532($fp)
	li $t2, 0
	bne $t1, $t2, label1715
	j label1717
label1717:
	li $t0, 57502
	sw $t0, -3536($fp)
	lw $t1, -3536($fp)
	li $t2, 0
	bne $t1, $t2, label1715
	j label1716
label1715:
	li $t0, 1
	sw $t0, -3512($fp)
label1716:
	lw $t0, -3512($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -3540($fp)
	li $t0, 0
	sw $t0, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	addi $t0, $fp, -72
	sw $t0, -3556($fp)
	li $t0, 4
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
	lw $t0, -360($fp)
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	sub $t0, $t0, $t1
	sw $t0, -3580($fp)
	li $t0, 44416
	sw $t0, -3584($fp)
	lw $t1, -3580($fp)
	lw $t2, -3584($fp)
	beq $t1, $t2, label1722
	j label1723
label1722:
	li $t0, 1
	sw $t0, -3552($fp)
label1723:
	lw $t0, -336($fp)
	sw $t0, -3588($fp)
	lw $t1, -3552($fp)
	lw $t2, -3588($fp)
	bne $t1, $t2, label1720
	j label1721
label1720:
	li $t0, 1
	sw $t0, -3548($fp)
label1721:
	li $t0, 0
	sw $t0, -3592($fp)
	lw $t0, -660($fp)
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label1725
	j label1724
label1724:
	li $t0, 1
	sw $t0, -3592($fp)
label1725:
	li $t0, 52349
	sw $t0, -3600($fp)
	lw $t0, -3592($fp)
	lw $t1, -3600($fp)
	add $t0, $t0, $t1
	sw $t0, -3604($fp)
	li $t0, 45261
	sw $t0, -3608($fp)
	li $t0, 0
	lw $t1, -3608($fp)
	sub $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3604($fp)
	lw $t1, -3612($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t1, -3548($fp)
	lw $t2, -3616($fp)
	beq $t1, $t2, label1718
	j label1719
label1718:
	li $t0, 1
	sw $t0, -3544($fp)
label1719:
	j label1705
label1704:
	jal f13
	sw $v0, -3620($fp)
	addi $sp, $sp, 4
	li $t0, 45159
	sw $t0, -3624($fp)
	lw $t0, -348($fp)
	sw $t0, -3628($fp)
	lw $t0, -3624($fp)
	lw $t1, -3628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3632($fp)
	lw $t0, -3620($fp)
	lw $t1, -3632($fp)
	sub $t0, $t0, $t1
	sw $t0, -3636($fp)
	li $t0, 51026
	sw $t0, -3640($fp)
	lw $t0, -168($fp)
	sw $t0, -3644($fp)
	li $t0, 0
	lw $t1, -3644($fp)
	sub $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3640($fp)
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	li $t0, 0
	lw $t1, -3652($fp)
	sub $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -144($fp)
	sw $t0, -3660($fp)
	li $t0, 0
	lw $t1, -3660($fp)
	sub $t0, $t0, $t1
	sw $t0, -3664($fp)
	li $t0, 2571
	sw $t0, -3668($fp)
	addi $sp, $sp, -4
	lw $t0, -3664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3672($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3672($fp)
	sub $t0, $t0, $t1
	sw $t0, -3676($fp)
	li $t0, 0
	lw $t1, -3676($fp)
	sub $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -180($fp)
	sw $t0, -3684($fp)
label1705:
	j label1699
label1698:
	li $t0, 0
	sw $t0, -3688($fp)
	li $t0, 0
	sw $t0, -3692($fp)
	lw $t0, -372($fp)
	sw $t0, -3696($fp)
	lw $t0, 4($fp)
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3704($fp)
	lw $t0, -156($fp)
	sw $t0, -3708($fp)
	lw $t1, -3704($fp)
	lw $t2, -3708($fp)
	ble $t1, $t2, label1730
	j label1731
label1730:
	li $t0, 1
	sw $t0, -3692($fp)
label1731:
	addi $sp, $sp, -4
	lw $t0, -3692($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -3712($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3712($fp)
	sub $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t1, -3716($fp)
	li $t2, 0
	bne $t1, $t2, label1729
	j label1728
label1729:
	addi $t0, $fp, -8
	sw $t0, -3720($fp)
	lw $t0, -156($fp)
	sw $t0, -3724($fp)
	li $t0, 4
	lw $t1, -3724($fp)
	mul $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	lw $t1, -3720($fp)
	add $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	lw $t1, 0($t0)
	sw $t1, -3736($fp)
	lw $t0, -348($fp)
	sw $t0, -3740($fp)
	lw $t1, -3736($fp)
	lw $t2, -3740($fp)
	bne $t1, $t2, label1726
	j label1728
label1728:
	lw $t0, -384($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -3748($fp)
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 48823
	sw $t0, -3756($fp)
	lw $t0, -336($fp)
	sw $t0, -3760($fp)
	lw $t0, -3756($fp)
	lw $t1, -3760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3764($fp)
	lw $t1, -3764($fp)
	li $t2, 0
	bne $t1, $t2, label1734
	j label1733
label1734:
	li $t0, 52630
	sw $t0, -3768($fp)
	lw $t1, -3768($fp)
	li $t2, 0
	bne $t1, $t2, label1732
	j label1733
label1732:
	li $t0, 1
	sw $t0, -3752($fp)
label1733:
	addi $sp, $sp, -4
	lw $t0, -3748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3752($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3772($fp)
	addi $sp, $sp, 12
	lw $t1, -3772($fp)
	li $t2, 0
	bne $t1, $t2, label1726
	j label1727
label1726:
	li $t0, 1
	sw $t0, -3688($fp)
label1727:
label1699:
label1694:
	j label1687
label1686:
label1735:
	li $t0, 0
	sw $t0, -3776($fp)
	li $t0, 0
	sw $t0, -3780($fp)
	li $t0, 285
	sw $t0, -3784($fp)
	li $t0, 39664
	sw $t0, -3788($fp)
	lw $t1, -3784($fp)
	lw $t2, -3788($fp)
	blt $t1, $t2, label1740
	j label1741
label1740:
	li $t0, 1
	sw $t0, -3780($fp)
label1741:
	lw $t0, -228($fp)
	sw $t0, -3792($fp)
	lw $t1, -3780($fp)
	lw $t2, -3792($fp)
	bge $t1, $t2, label1738
	j label1739
label1738:
	li $t0, 1
	sw $t0, -3776($fp)
label1739:
	li $t0, 34249
	sw $t0, -3796($fp)
	li $t0, 10728
	sw $t0, -3800($fp)
	lw $t0, -3796($fp)
	lw $t1, -3800($fp)
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	li $t0, 0
	sw $t0, -3808($fp)
	lw $t0, -336($fp)
	sw $t0, -3812($fp)
	lw $t0, -648($fp)
	sw $t0, -3816($fp)
	lw $t0, -3812($fp)
	lw $t1, -3816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3820($fp)
	lw $t0, -288($fp)
	sw $t0, -3824($fp)
	lw $t1, -3820($fp)
	lw $t2, -3824($fp)
	bgt $t1, $t2, label1742
	j label1743
label1742:
	li $t0, 1
	sw $t0, -3808($fp)
label1743:
	addi $sp, $sp, -4
	lw $t0, -3776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3808($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3828($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3828($fp)
	sub $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t1, -3832($fp)
	li $t2, 0
	bne $t1, $t2, label1737
	j label1736
label1736:
	li $t0, 0
	sw $t0, -3836($fp)
	li $t0, 0
	sw $t0, -3840($fp)
	addi $t0, $fp, -72
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	li $t0, 4
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	lw $t0, -636($fp)
	sw $t0, -3864($fp)
	lw $t0, -3860($fp)
	lw $t1, -3864($fp)
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	addi $t0, $fp, -124
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
	lw $t0, -3868($fp)
	lw $t1, -3888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3892($fp)
	li $t0, 0
	sw $t0, -3896($fp)
	li $t0, 6137
	sw $t0, -3900($fp)
	lw $t0, -936($fp)
	sw $t0, -3904($fp)
	lw $t0, -3900($fp)
	lw $t1, -3904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3908($fp)
	lw $t0, -180($fp)
	sw $t0, -3912($fp)
	lw $t1, -3908($fp)
	lw $t2, -3912($fp)
	bgt $t1, $t2, label1748
	j label1749
label1748:
	li $t0, 1
	sw $t0, -3896($fp)
label1749:
	lw $t1, -3892($fp)
	lw $t2, -3896($fp)
	beq $t1, $t2, label1746
	j label1747
label1746:
	li $t0, 1
	sw $t0, -3840($fp)
label1747:
	li $t0, 0
	sw $t0, -3916($fp)
	lw $t0, -384($fp)
	sw $t0, -3920($fp)
	li $t0, 0
	lw $t1, -3920($fp)
	sub $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -288($fp)
	sw $t0, -3928($fp)
	lw $t0, -3924($fp)
	lw $t1, -3928($fp)
	sub $t0, $t0, $t1
	sw $t0, -3932($fp)
	li $t0, 0
	sw $t0, -3936($fp)
	li $t0, 0
	sw $t0, -3940($fp)
	lw $t0, -408($fp)
	sw $t0, -3944($fp)
	li $t0, 38670
	sw $t0, -3948($fp)
	lw $t1, -3944($fp)
	lw $t2, -3948($fp)
	bgt $t1, $t2, label1754
	j label1755
label1754:
	li $t0, 1
	sw $t0, -3940($fp)
label1755:
	lw $t0, -192($fp)
	sw $t0, -3952($fp)
	lw $t1, -3940($fp)
	lw $t2, -3952($fp)
	bgt $t1, $t2, label1752
	j label1753
label1752:
	li $t0, 1
	sw $t0, -3936($fp)
label1753:
	addi $t0, $fp, -72
	sw $t0, -3956($fp)
	li $t0, 4
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
	addi $sp, $sp, -4
	lw $t0, -3932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3976($fp)
	addi $sp, $sp, 16
	lw $t1, -3976($fp)
	li $t2, 0
	bne $t1, $t2, label1751
	j label1750
label1750:
	li $t0, 1
	sw $t0, -3916($fp)
label1751:
	li $t0, 0
	lw $t1, -3916($fp)
	sub $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t1, -3840($fp)
	lw $t2, -3980($fp)
	beq $t1, $t2, label1744
	j label1745
label1744:
	li $t0, 1
	sw $t0, -3836($fp)
label1745:
	lw $ra, -4($fp)
	lw $v0, -3836($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1735
label1737:
label1687:
	j label1674
label1676:
	lw $t0, -132($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -4020($fp)
	li $t0, 0
	sw $t0, -4024($fp)
	li $t0, 4
	lw $t1, -4024($fp)
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, 0($t0)
	sw $t1, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -4092($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -4112($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -4132($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -4152($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -4172($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -4192($fp)
	li $t0, 2
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
	lw $t0, -4208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4212($fp)
	li $t0, 3
	sw $t0, -4216($fp)
	li $t0, 4
	lw $t1, -4216($fp)
	mul $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	lw $t1, -4212($fp)
	add $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, 0($t0)
	sw $t1, -4228($fp)
	lw $t0, -4228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4232($fp)
	li $t0, 4
	sw $t0, -4236($fp)
	li $t0, 4
	lw $t1, -4236($fp)
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	lw $t1, -4232($fp)
	add $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	lw $t1, 0($t0)
	sw $t1, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4252($fp)
	li $t0, 5
	sw $t0, -4256($fp)
	li $t0, 4
	lw $t1, -4256($fp)
	mul $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, 0($t0)
	sw $t1, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4284($fp)
	li $t0, 0
	sw $t0, -4288($fp)
	li $t0, 4
	lw $t1, -4288($fp)
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	lw $t1, -4284($fp)
	add $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	lw $t1, 0($t0)
	sw $t1, -4300($fp)
	lw $t0, -4300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4304($fp)
	li $t0, 1
	sw $t0, -4308($fp)
	li $t0, 4
	lw $t1, -4308($fp)
	mul $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	lw $t1, 0($t0)
	sw $t1, -4320($fp)
	lw $t0, -4320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4324($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -4344($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -4364($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -4384($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -4404($fp)
	li $t0, 6
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
	addi $t0, $fp, -88
	sw $t0, -4424($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -4444($fp)
	li $t0, 1
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
	addi $t0, $fp, -88
	sw $t0, -4464($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -4484($fp)
	li $t0, 3
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
	lw $t0, -936($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4512($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -4532($fp)
	li $t0, 1
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
	addi $t0, $fp, -124
	sw $t0, -4552($fp)
	li $t0, 2
	sw $t0, -4556($fp)
	li $t0, 4
	lw $t1, -4556($fp)
	mul $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	lw $t1, -4552($fp)
	add $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	lw $t1, 0($t0)
	sw $t1, -4568($fp)
	lw $t0, -4568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4572($fp)
	li $t0, 3
	sw $t0, -4576($fp)
	li $t0, 4
	lw $t1, -4576($fp)
	mul $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	lw $t1, -4572($fp)
	add $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	lw $t1, 0($t0)
	sw $t1, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4592($fp)
	li $t0, 4
	sw $t0, -4596($fp)
	li $t0, 4
	lw $t1, -4596($fp)
	mul $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	lw $t1, -4592($fp)
	add $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	lw $t1, 0($t0)
	sw $t1, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4612($fp)
	li $t0, 5
	sw $t0, -4616($fp)
	li $t0, 4
	lw $t1, -4616($fp)
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	lw $t1, -4612($fp)
	add $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	lw $t1, 0($t0)
	sw $t1, -4628($fp)
	lw $t0, -4628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4632($fp)
	li $t0, 6
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
	lw $t0, -4648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4652($fp)
	li $t0, 7
	sw $t0, -4656($fp)
	li $t0, 4
	lw $t1, -4656($fp)
	mul $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	lw $t1, -4652($fp)
	add $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	lw $t1, 0($t0)
	sw $t1, -4668($fp)
	lw $t0, -4668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4672($fp)
	li $t0, 8
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
	lw $t0, -4688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 62046
	sw $t0, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 9585
	sw $t0, -4700($fp)
	li $t0, 0
	lw $t1, -4700($fp)
	sub $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t1, -4704($fp)
	li $t2, 0
	bne $t1, $t2, label1757
	j label1756
label1756:
	li $t0, 1
	sw $t0, -4696($fp)
label1757:
	lw $t0, -4692($fp)
	lw $t1, -4696($fp)
	mul $t0, $t0, $t1
	sw $t0, -4708($fp)
	li $t0, 0
	lw $t1, -4708($fp)
	sub $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $ra, -4($fp)
	lw $v0, -4712($fp)
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
	jal f13
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 38049
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
