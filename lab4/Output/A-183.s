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
	addi $sp, $sp, -68
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 52895
	sw $t0, -12($fp)
	li $t0, 0
	lw $t1, -12($fp)
	sub $t0, $t0, $t1
	sw $t0, -16($fp)
	li $t0, 0
	lw $t1, -16($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 53453
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -24($fp)
label125:
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	lw $t1, -32($fp)
	mul $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -20($fp)
	lw $t1, -36($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, 4($fp)
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -44($fp)
label127:
	lw $t0, 8($fp)
	sw $t0, -52($fp)
	lw $t0, -44($fp)
	lw $t1, -52($fp)
	sub $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, 8($fp)
	sw $t0, -60($fp)
	li $t0, 54303
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	mul $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -56($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t1, -72($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -8($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -14284
	li $t0, 39848
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 44974
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 55120
	sw $t0, -320($fp)
	addi $t0, $fp, -44
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
	li $t0, 11203
	sw $t0, -344($fp)
	addi $t0, $fp, -44
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
	li $t0, 58880
	sw $t0, -368($fp)
	addi $t0, $fp, -44
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
	li $t0, 19047
	sw $t0, -392($fp)
	addi $t0, $fp, -44
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
	li $t0, 36591
	sw $t0, -416($fp)
	addi $t0, $fp, -44
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
	li $t0, 5389
	sw $t0, -440($fp)
	addi $t0, $fp, -44
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
	li $t0, 6751
	sw $t0, -464($fp)
	addi $t0, $fp, -44
	sw $t0, -468($fp)
	li $t0, 6
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
	li $t0, 47027
	sw $t0, -488($fp)
	addi $t0, $fp, -44
	sw $t0, -492($fp)
	li $t0, 7
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
	li $t0, 56995
	sw $t0, -512($fp)
	addi $t0, $fp, -44
	sw $t0, -516($fp)
	li $t0, 8
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
	li $t0, 31863
	sw $t0, -536($fp)
	addi $t0, $fp, -44
	sw $t0, -540($fp)
	li $t0, 9
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
	li $t0, 27583
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 59460
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 31587
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 1777
	sw $t0, -596($fp)
	addi $t0, $fp, -68
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
	li $t0, 17443
	sw $t0, -620($fp)
	addi $t0, $fp, -68
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
	li $t0, 24534
	sw $t0, -644($fp)
	addi $t0, $fp, -68
	sw $t0, -648($fp)
	li $t0, 2
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
	li $t0, 51603
	sw $t0, -668($fp)
	addi $t0, $fp, -68
	sw $t0, -672($fp)
	li $t0, 3
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
	li $t0, 50948
	sw $t0, -692($fp)
	addi $t0, $fp, -68
	sw $t0, -696($fp)
	li $t0, 4
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
	li $t0, 53457
	sw $t0, -716($fp)
	addi $t0, $fp, -68
	sw $t0, -720($fp)
	li $t0, 5
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
	li $t0, 37403
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 51467
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 5959
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 40747
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 57768
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 52759
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 44436
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 45127
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 40677
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 33203
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 19439
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 20115
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	li $t0, 22787
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 30643
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 13459
	sw $t0, -908($fp)
	addi $t0, $fp, -100
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
	li $t0, 41835
	sw $t0, -932($fp)
	addi $t0, $fp, -100
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
	li $t0, 1698
	sw $t0, -956($fp)
	addi $t0, $fp, -100
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
	li $t0, 18848
	sw $t0, -980($fp)
	addi $t0, $fp, -100
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
	li $t0, 48586
	sw $t0, -1004($fp)
	addi $t0, $fp, -100
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
	li $t0, 48725
	sw $t0, -1028($fp)
	addi $t0, $fp, -100
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
	li $t0, 10307
	sw $t0, -1052($fp)
	addi $t0, $fp, -100
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
	li $t0, 14913
	sw $t0, -1076($fp)
	addi $t0, $fp, -100
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
	li $t0, 10772
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 4231
	sw $t0, -1112($fp)
	addi $t0, $fp, -104
	sw $t0, -1116($fp)
	li $t0, 0
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
	li $t0, 46500
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 12549
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	li $t0, 21674
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	li $t0, 5498
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 64152
	sw $t0, -1184($fp)
	addi $t0, $fp, -112
	sw $t0, -1188($fp)
	li $t0, 0
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
	li $t0, 7086
	sw $t0, -1208($fp)
	addi $t0, $fp, -112
	sw $t0, -1212($fp)
	li $t0, 1
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
	li $t0, 58955
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	li $t0, 36019
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 58554
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 64914
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 11230
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 50786
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 52138
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 55666
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 30377
	sw $t0, -1328($fp)
	addi $t0, $fp, -132
	sw $t0, -1332($fp)
	li $t0, 0
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
	li $t0, 27279
	sw $t0, -1352($fp)
	addi $t0, $fp, -132
	sw $t0, -1356($fp)
	li $t0, 1
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
	li $t0, 23334
	sw $t0, -1376($fp)
	addi $t0, $fp, -132
	sw $t0, -1380($fp)
	li $t0, 2
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
	li $t0, 49816
	sw $t0, -1400($fp)
	addi $t0, $fp, -132
	sw $t0, -1404($fp)
	li $t0, 3
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
	li $t0, 47394
	sw $t0, -1424($fp)
	addi $t0, $fp, -132
	sw $t0, -1428($fp)
	li $t0, 4
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
	li $t0, 46121
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	li $t0, 14923
	sw $t0, -1460($fp)
	addi $t0, $fp, -144
	sw $t0, -1464($fp)
	li $t0, 0
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
	li $t0, 60854
	sw $t0, -1484($fp)
	addi $t0, $fp, -144
	sw $t0, -1488($fp)
	li $t0, 1
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
	li $t0, 22420
	sw $t0, -1508($fp)
	addi $t0, $fp, -144
	sw $t0, -1512($fp)
	li $t0, 2
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
	li $t0, 16621
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	li $t0, 14166
	sw $t0, -1544($fp)
	addi $t0, $fp, -164
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1548($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1544($fp)
	lw $t1, -1560($fp)
	sw $t0, 0($t1)
	lw $t0, -1560($fp)
	lw $t1, 0($t0)
	sw $t1, -1564($fp)
	li $t0, 5471
	sw $t0, -1568($fp)
	addi $t0, $fp, -164
	sw $t0, -1572($fp)
	li $t0, 1
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
	li $t0, 65346
	sw $t0, -1592($fp)
	addi $t0, $fp, -164
	sw $t0, -1596($fp)
	li $t0, 2
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
	li $t0, 24474
	sw $t0, -1616($fp)
	addi $t0, $fp, -164
	sw $t0, -1620($fp)
	li $t0, 3
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
	li $t0, 20384
	sw $t0, -1640($fp)
	addi $t0, $fp, -164
	sw $t0, -1644($fp)
	li $t0, 4
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
	li $t0, 10582
	sw $t0, -1664($fp)
	addi $t0, $fp, -168
	sw $t0, -1668($fp)
	li $t0, 0
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
	li $t0, 28705
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	li $t0, 1349
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	li $t0, 23132
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	li $t0, 50380
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	li $t0, 6847
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 21748
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 57466
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	li $t0, 267
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	li $t0, 57768
	sw $t0, -1784($fp)
	addi $t0, $fp, -176
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1788($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1784($fp)
	lw $t1, -1800($fp)
	sw $t0, 0($t1)
	lw $t0, -1800($fp)
	lw $t1, 0($t0)
	sw $t1, -1804($fp)
	li $t0, 50484
	sw $t0, -1808($fp)
	addi $t0, $fp, -176
	sw $t0, -1812($fp)
	li $t0, 1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1812($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1808($fp)
	lw $t1, -1824($fp)
	sw $t0, 0($t1)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	li $t0, 65181
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	li $t0, 3462
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	li $t0, 35734
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	li $t0, 51783
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	li $t0, 59129
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	li $t0, 575
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	li $t0, 13526
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -1912($fp)
	li $t0, 16927
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	li $t0, 50392
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	li $t0, 60921
	sw $t0, -1940($fp)
	addi $t0, $fp, -212
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1944($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1940($fp)
	lw $t1, -1956($fp)
	sw $t0, 0($t1)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	li $t0, 63048
	sw $t0, -1964($fp)
	addi $t0, $fp, -212
	sw $t0, -1968($fp)
	li $t0, 1
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
	li $t0, 65315
	sw $t0, -1988($fp)
	addi $t0, $fp, -212
	sw $t0, -1992($fp)
	li $t0, 2
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
	li $t0, 56239
	sw $t0, -2012($fp)
	addi $t0, $fp, -212
	sw $t0, -2016($fp)
	li $t0, 3
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
	li $t0, 19933
	sw $t0, -2036($fp)
	addi $t0, $fp, -212
	sw $t0, -2040($fp)
	li $t0, 4
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
	li $t0, 16401
	sw $t0, -2060($fp)
	addi $t0, $fp, -212
	sw $t0, -2064($fp)
	li $t0, 5
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
	li $t0, 4869
	sw $t0, -2084($fp)
	addi $t0, $fp, -212
	sw $t0, -2088($fp)
	li $t0, 6
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
	li $t0, 25404
	sw $t0, -2108($fp)
	addi $t0, $fp, -212
	sw $t0, -2112($fp)
	li $t0, 7
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2112($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2108($fp)
	lw $t1, -2124($fp)
	sw $t0, 0($t1)
	lw $t0, -2124($fp)
	lw $t1, 0($t0)
	sw $t1, -2128($fp)
	li $t0, 16211
	sw $t0, -2132($fp)
	addi $t0, $fp, -212
	sw $t0, -2136($fp)
	li $t0, 8
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2136($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2132($fp)
	lw $t1, -2148($fp)
	sw $t0, 0($t1)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	li $t0, 29343
	sw $t0, -2156($fp)
	addi $t0, $fp, -248
	sw $t0, -2160($fp)
	li $t0, 0
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2160($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2156($fp)
	lw $t1, -2172($fp)
	sw $t0, 0($t1)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	li $t0, 45788
	sw $t0, -2180($fp)
	addi $t0, $fp, -248
	sw $t0, -2184($fp)
	li $t0, 1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2184($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2180($fp)
	lw $t1, -2196($fp)
	sw $t0, 0($t1)
	lw $t0, -2196($fp)
	lw $t1, 0($t0)
	sw $t1, -2200($fp)
	li $t0, 26794
	sw $t0, -2204($fp)
	addi $t0, $fp, -248
	sw $t0, -2208($fp)
	li $t0, 2
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2208($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2204($fp)
	lw $t1, -2220($fp)
	sw $t0, 0($t1)
	lw $t0, -2220($fp)
	lw $t1, 0($t0)
	sw $t1, -2224($fp)
	li $t0, 58049
	sw $t0, -2228($fp)
	addi $t0, $fp, -248
	sw $t0, -2232($fp)
	li $t0, 3
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
	li $t0, 47137
	sw $t0, -2252($fp)
	addi $t0, $fp, -248
	sw $t0, -2256($fp)
	li $t0, 4
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
	li $t0, 49926
	sw $t0, -2276($fp)
	addi $t0, $fp, -248
	sw $t0, -2280($fp)
	li $t0, 5
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
	li $t0, 42893
	sw $t0, -2300($fp)
	addi $t0, $fp, -248
	sw $t0, -2304($fp)
	li $t0, 6
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
	li $t0, 53985
	sw $t0, -2324($fp)
	addi $t0, $fp, -248
	sw $t0, -2328($fp)
	li $t0, 7
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
	li $t0, 6138
	sw $t0, -2348($fp)
	addi $t0, $fp, -248
	sw $t0, -2352($fp)
	li $t0, 8
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
	li $t0, 34823
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -2380($fp)
	li $t0, 54252
	sw $t0, -2384($fp)
	addi $t0, $fp, -276
	sw $t0, -2388($fp)
	li $t0, 0
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2388($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2384($fp)
	lw $t1, -2400($fp)
	sw $t0, 0($t1)
	lw $t0, -2400($fp)
	lw $t1, 0($t0)
	sw $t1, -2404($fp)
	li $t0, 63906
	sw $t0, -2408($fp)
	addi $t0, $fp, -276
	sw $t0, -2412($fp)
	li $t0, 1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2412($fp)
	lw $t1, -2420($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2408($fp)
	lw $t1, -2424($fp)
	sw $t0, 0($t1)
	lw $t0, -2424($fp)
	lw $t1, 0($t0)
	sw $t1, -2428($fp)
	li $t0, 19772
	sw $t0, -2432($fp)
	addi $t0, $fp, -276
	sw $t0, -2436($fp)
	li $t0, 2
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2436($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2432($fp)
	lw $t1, -2448($fp)
	sw $t0, 0($t1)
	lw $t0, -2448($fp)
	lw $t1, 0($t0)
	sw $t1, -2452($fp)
	li $t0, 53897
	sw $t0, -2456($fp)
	addi $t0, $fp, -276
	sw $t0, -2460($fp)
	li $t0, 3
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
	li $t0, 1833
	sw $t0, -2480($fp)
	addi $t0, $fp, -276
	sw $t0, -2484($fp)
	li $t0, 4
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
	li $t0, 55506
	sw $t0, -2504($fp)
	addi $t0, $fp, -276
	sw $t0, -2508($fp)
	li $t0, 5
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
	li $t0, 40145
	sw $t0, -2528($fp)
	addi $t0, $fp, -276
	sw $t0, -2532($fp)
	li $t0, 6
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
	li $t0, 60962
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	sw $t0, -2560($fp)
	li $t0, 56082
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	sw $t0, -2572($fp)
	li $t0, 53671
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -2584($fp)
	li $t0, 12353
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -2596($fp)
	li $t0, 40938
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	sw $t0, -2608($fp)
	li $t0, 49056
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	sw $t0, -2620($fp)
	li $t0, 9865
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	sw $t0, -2632($fp)
	li $t0, 40717
	sw $t0, -2636($fp)
	addi $t0, $fp, -284
	sw $t0, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2640($fp)
	lw $t1, -2648($fp)
	add $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2636($fp)
	lw $t1, -2652($fp)
	sw $t0, 0($t1)
	lw $t0, -2652($fp)
	lw $t1, 0($t0)
	sw $t1, -2656($fp)
	li $t0, 39759
	sw $t0, -2660($fp)
	addi $t0, $fp, -284
	sw $t0, -2664($fp)
	li $t0, 1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2664($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2660($fp)
	lw $t1, -2676($fp)
	sw $t0, 0($t1)
	lw $t0, -2676($fp)
	lw $t1, 0($t0)
	sw $t1, -2680($fp)
	li $t0, 29798
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -2692($fp)
	li $t0, 57118
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	li $t0, 44629
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -2716($fp)
	li $t0, 55202
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	li $t0, 7794
	sw $t0, -2732($fp)
	addi $t0, $fp, -292
	sw $t0, -2736($fp)
	li $t0, 0
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2736($fp)
	lw $t1, -2744($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2732($fp)
	lw $t1, -2748($fp)
	sw $t0, 0($t1)
	lw $t0, -2748($fp)
	lw $t1, 0($t0)
	sw $t1, -2752($fp)
	li $t0, 8436
	sw $t0, -2756($fp)
	addi $t0, $fp, -292
	sw $t0, -2760($fp)
	li $t0, 1
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2760($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2756($fp)
	lw $t1, -2772($fp)
	sw $t0, 0($t1)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	li $t0, 35455
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	sw $t0, -2788($fp)
	li $t0, 34588
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	sw $t0, -2800($fp)
	li $t0, 949
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	sw $t0, -2812($fp)
	li $t0, 17056
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	sw $t0, -2824($fp)
	li $t0, 18978
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	sw $t0, -2836($fp)
	li $t0, 43842
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	sw $t0, -2848($fp)
	li $t0, 5505
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	sw $t0, -2860($fp)
	li $t0, 25116
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -2872($fp)
	li $t0, 13130
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	sw $t0, -2884($fp)
	li $t0, 59757
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -2896($fp)
	li $t0, 23487
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -2908($fp)
	li $t0, 32902
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	sw $t0, -2920($fp)
	li $t0, 48119
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	sw $t0, -2932($fp)
	li $t0, 25320
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -2944($fp)
	li $t0, 22872
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	sw $t0, -2956($fp)
	li $t0, 22728
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	sw $t0, -2968($fp)
	li $t0, 20746
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	sw $t0, -2980($fp)
	li $t0, 13418
	sw $t0, -2984($fp)
	lw $t0, -780($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -2992($fp)
	li $t0, 0
	sw $t0, -2996($fp)
	li $t0, 10863
	sw $t0, -3000($fp)
	li $t0, 0
	lw $t1, -3000($fp)
	sub $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -1296($fp)
	sw $t0, -3008($fp)
	lw $t1, -3004($fp)
	lw $t2, -3008($fp)
	bge $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -2996($fp)
label132:
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3012($fp)
	addi $sp, $sp, 12
	lw $t0, -2984($fp)
	lw $t1, -3012($fp)
	sub $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 33099
	sw $t0, -3020($fp)
	li $t0, 54356
	sw $t0, -3024($fp)
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -1320($fp)
	sw $t0, -3032($fp)
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3036($fp)
	addi $sp, $sp, 12
	lw $t0, -2724($fp)
	sw $t0, -3040($fp)
	lw $t0, -3036($fp)
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	lw $t0, -1248($fp)
	sw $t0, -3052($fp)
	li $t0, 0
	lw $t1, -3052($fp)
	sub $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t1, -3056($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -3048($fp)
label137:
	li $t0, 0
	sw $t0, -3060($fp)
	li $t0, 0
	sw $t0, -3064($fp)
	li $t0, 7227
	sw $t0, -3068($fp)
	lw $t1, -3068($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -3064($fp)
label141:
	li $t0, 21120
	sw $t0, -3072($fp)
	lw $t1, -3064($fp)
	lw $t2, -3072($fp)
	bgt $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -3060($fp)
label139:
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3076($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3080($fp)
	li $t0, 34143
	sw $t0, -3084($fp)
	lw $t1, -3084($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label142:
	li $t0, 1
	sw $t0, -3080($fp)
label143:
	li $t0, 0
	lw $t1, -3080($fp)
	sub $t0, $t0, $t1
	sw $t0, -3088($fp)
	addi $t0, $fp, -100
	sw $t0, -3092($fp)
	lw $t0, -2604($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3112($fp)
	addi $sp, $sp, 12
	lw $t0, -828($fp)
	sw $t0, -3116($fp)
	lw $t0, -3112($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	li $t0, 29538
	sw $t0, -3124($fp)
	addi $t0, $fp, -132
	sw $t0, -3128($fp)
	lw $t0, 16($fp)
	sw $t0, -3132($fp)
	li $t0, 4
	lw $t1, -3132($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, 0($t0)
	sw $t1, -3144($fp)
	li $t0, 42964
	sw $t0, -3148($fp)
	lw $t0, -3144($fp)
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3152($fp)
	li $t0, 59920
	sw $t0, -3156($fp)
	lw $t0, -2868($fp)
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3168($fp)
	addi $sp, $sp, 24
	lw $t0, -3044($fp)
	lw $t1, -3168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3172($fp)
	addi $t0, $fp, -212
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
	lw $t0, -3172($fp)
	lw $t1, -3192($fp)
	mul $t0, $t0, $t1
	sw $t0, -3196($fp)
	addi $t0, $fp, -112
	sw $t0, -3200($fp)
	li $t0, 1
	sw $t0, -3204($fp)
	li $t0, 4
	lw $t1, -3204($fp)
	mul $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, -3200($fp)
	add $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, 0($t0)
	sw $t1, -3216($fp)
	lw $t0, -2568($fp)
	sw $t0, -3220($fp)
	lw $t0, -3216($fp)
	lw $t1, -3220($fp)
	mul $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t1, -3196($fp)
	lw $t2, -3224($fp)
	ble $t1, $t2, label133
	j label134
label133:
label144:
	li $t0, 0
	sw $t0, -3228($fp)
	addi $t0, $fp, -276
	sw $t0, -3232($fp)
	li $t0, 1
	sw $t0, -3236($fp)
	li $t0, 4
	lw $t1, -3236($fp)
	mul $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	lw $t1, -3232($fp)
	add $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	lw $t1, 0($t0)
	sw $t1, -3248($fp)
	lw $t0, -816($fp)
	sw $t0, -3252($fp)
	lw $t0, -1716($fp)
	sw $t0, -3256($fp)
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t1, -3248($fp)
	lw $t2, -3260($fp)
	bge $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -3228($fp)
label148:
	lw $t0, -3228($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 22622
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	sw $t0, -3368($fp)
	li $t0, 49405
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	sw $t0, -3380($fp)
	li $t0, 16944
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	sw $t0, -3392($fp)
	li $t0, 929
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	sw $t0, -3404($fp)
	li $t0, 54910
	sw $t0, -3408($fp)
	addi $t0, $fp, -3268
	sw $t0, -3412($fp)
	li $t0, 0
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3412($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3408($fp)
	lw $t1, -3424($fp)
	sw $t0, 0($t1)
	lw $t0, -3424($fp)
	lw $t1, 0($t0)
	sw $t1, -3428($fp)
	li $t0, 42061
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	sw $t0, -3440($fp)
	li $t0, 14059
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	sw $t0, -3452($fp)
	li $t0, 49132
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	sw $t0, -3464($fp)
	li $t0, 12
	sw $t0, -3468($fp)
	addi $t0, $fp, -3284
	sw $t0, -3472($fp)
	li $t0, 0
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3472($fp)
	lw $t1, -3480($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3468($fp)
	lw $t1, -3484($fp)
	sw $t0, 0($t1)
	lw $t0, -3484($fp)
	lw $t1, 0($t0)
	sw $t1, -3488($fp)
	li $t0, 46961
	sw $t0, -3492($fp)
	addi $t0, $fp, -3284
	sw $t0, -3496($fp)
	li $t0, 1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3496($fp)
	lw $t1, -3504($fp)
	add $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3492($fp)
	lw $t1, -3508($fp)
	sw $t0, 0($t1)
	lw $t0, -3508($fp)
	lw $t1, 0($t0)
	sw $t1, -3512($fp)
	li $t0, 31715
	sw $t0, -3516($fp)
	addi $t0, $fp, -3284
	sw $t0, -3520($fp)
	li $t0, 2
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3520($fp)
	lw $t1, -3528($fp)
	add $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3516($fp)
	lw $t1, -3532($fp)
	sw $t0, 0($t1)
	lw $t0, -3532($fp)
	lw $t1, 0($t0)
	sw $t1, -3536($fp)
	li $t0, 25332
	sw $t0, -3540($fp)
	addi $t0, $fp, -3284
	sw $t0, -3544($fp)
	li $t0, 3
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3544($fp)
	lw $t1, -3552($fp)
	add $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3540($fp)
	lw $t1, -3556($fp)
	sw $t0, 0($t1)
	lw $t0, -3556($fp)
	lw $t1, 0($t0)
	sw $t1, -3560($fp)
	li $t0, 4297
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	sw $t0, -3572($fp)
	li $t0, 54443
	sw $t0, -3576($fp)
	addi $t0, $fp, -3316
	sw $t0, -3580($fp)
	li $t0, 0
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3580($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3576($fp)
	lw $t1, -3592($fp)
	sw $t0, 0($t1)
	lw $t0, -3592($fp)
	lw $t1, 0($t0)
	sw $t1, -3596($fp)
	li $t0, 46078
	sw $t0, -3600($fp)
	addi $t0, $fp, -3316
	sw $t0, -3604($fp)
	li $t0, 1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3604($fp)
	lw $t1, -3612($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3600($fp)
	lw $t1, -3616($fp)
	sw $t0, 0($t1)
	lw $t0, -3616($fp)
	lw $t1, 0($t0)
	sw $t1, -3620($fp)
	li $t0, 17716
	sw $t0, -3624($fp)
	addi $t0, $fp, -3316
	sw $t0, -3628($fp)
	li $t0, 2
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3628($fp)
	lw $t1, -3636($fp)
	add $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3624($fp)
	lw $t1, -3640($fp)
	sw $t0, 0($t1)
	lw $t0, -3640($fp)
	lw $t1, 0($t0)
	sw $t1, -3644($fp)
	li $t0, 65306
	sw $t0, -3648($fp)
	addi $t0, $fp, -3316
	sw $t0, -3652($fp)
	li $t0, 3
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3652($fp)
	lw $t1, -3660($fp)
	add $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3648($fp)
	lw $t1, -3664($fp)
	sw $t0, 0($t1)
	lw $t0, -3664($fp)
	lw $t1, 0($t0)
	sw $t1, -3668($fp)
	li $t0, 13641
	sw $t0, -3672($fp)
	addi $t0, $fp, -3316
	sw $t0, -3676($fp)
	li $t0, 4
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3676($fp)
	lw $t1, -3684($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3672($fp)
	lw $t1, -3688($fp)
	sw $t0, 0($t1)
	lw $t0, -3688($fp)
	lw $t1, 0($t0)
	sw $t1, -3692($fp)
	li $t0, 6536
	sw $t0, -3696($fp)
	addi $t0, $fp, -3316
	sw $t0, -3700($fp)
	li $t0, 5
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3700($fp)
	lw $t1, -3708($fp)
	add $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3696($fp)
	lw $t1, -3712($fp)
	sw $t0, 0($t1)
	lw $t0, -3712($fp)
	lw $t1, 0($t0)
	sw $t1, -3716($fp)
	li $t0, 59690
	sw $t0, -3720($fp)
	addi $t0, $fp, -3316
	sw $t0, -3724($fp)
	li $t0, 6
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3724($fp)
	lw $t1, -3732($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3720($fp)
	lw $t1, -3736($fp)
	sw $t0, 0($t1)
	lw $t0, -3736($fp)
	lw $t1, 0($t0)
	sw $t1, -3740($fp)
	li $t0, 56605
	sw $t0, -3744($fp)
	addi $t0, $fp, -3316
	sw $t0, -3748($fp)
	li $t0, 7
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3748($fp)
	lw $t1, -3756($fp)
	add $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3744($fp)
	lw $t1, -3760($fp)
	sw $t0, 0($t1)
	lw $t0, -3760($fp)
	lw $t1, 0($t0)
	sw $t1, -3764($fp)
	li $t0, 36074
	sw $t0, -3768($fp)
	addi $t0, $fp, -3356
	sw $t0, -3772($fp)
	li $t0, 0
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3772($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3768($fp)
	lw $t1, -3784($fp)
	sw $t0, 0($t1)
	lw $t0, -3784($fp)
	lw $t1, 0($t0)
	sw $t1, -3788($fp)
	li $t0, 28298
	sw $t0, -3792($fp)
	addi $t0, $fp, -3356
	sw $t0, -3796($fp)
	li $t0, 1
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
	li $t0, 63832
	sw $t0, -3816($fp)
	addi $t0, $fp, -3356
	sw $t0, -3820($fp)
	li $t0, 2
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
	li $t0, 57195
	sw $t0, -3840($fp)
	addi $t0, $fp, -3356
	sw $t0, -3844($fp)
	li $t0, 3
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
	li $t0, 41534
	sw $t0, -3864($fp)
	addi $t0, $fp, -3356
	sw $t0, -3868($fp)
	li $t0, 4
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
	li $t0, 60726
	sw $t0, -3888($fp)
	addi $t0, $fp, -3356
	sw $t0, -3892($fp)
	li $t0, 5
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
	li $t0, 20573
	sw $t0, -3912($fp)
	addi $t0, $fp, -3356
	sw $t0, -3916($fp)
	li $t0, 6
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3916($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3912($fp)
	lw $t1, -3928($fp)
	sw $t0, 0($t1)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	li $t0, 63207
	sw $t0, -3936($fp)
	addi $t0, $fp, -3356
	sw $t0, -3940($fp)
	li $t0, 7
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3940($fp)
	lw $t1, -3948($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3936($fp)
	lw $t1, -3952($fp)
	sw $t0, 0($t1)
	lw $t0, -3952($fp)
	lw $t1, 0($t0)
	sw $t1, -3956($fp)
	li $t0, 27538
	sw $t0, -3960($fp)
	addi $t0, $fp, -3356
	sw $t0, -3964($fp)
	li $t0, 8
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3964($fp)
	lw $t1, -3972($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3960($fp)
	lw $t1, -3976($fp)
	sw $t0, 0($t1)
	lw $t0, -3976($fp)
	lw $t1, 0($t0)
	sw $t1, -3980($fp)
	li $t0, 18540
	sw $t0, -3984($fp)
	addi $t0, $fp, -3356
	sw $t0, -3988($fp)
	li $t0, 9
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3988($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -3984($fp)
	lw $t1, -4000($fp)
	sw $t0, 0($t1)
	lw $t0, -4000($fp)
	lw $t1, 0($t0)
	sw $t1, -4004($fp)
	li $t0, 20294
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -4016($fp)
	li $t0, 11407
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	sw $t0, -4028($fp)
	li $t0, 35484
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	sw $t0, -4040($fp)
	li $t0, 21223
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -4052($fp)
	lw $t0, -312($fp)
	sw $t0, -4056($fp)
	li $t0, 0
	sw $t0, -4060($fp)
	li $t0, 782
	sw $t0, -4064($fp)
	lw $t1, -4064($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -4060($fp)
label153:
	lw $t0, -4056($fp)
	lw $t1, -4060($fp)
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	li $t0, 0
	sw $t0, -4072($fp)
	li $t0, 35282
	sw $t0, -4076($fp)
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label155
label156:
	li $t0, 49914
	sw $t0, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -4072($fp)
label155:
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 12009
	sw $t0, -4088($fp)
	lw $t1, -4088($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label157
label157:
	li $t0, 1
	sw $t0, -4084($fp)
label158:
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4092($fp)
	addi $sp, $sp, 12
	lw $t1, -4068($fp)
	lw $t2, -4092($fp)
	bgt $t1, $t2, label149
	j label150
label149:
	li $t0, 12021
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	sw $t0, -4168($fp)
	li $t0, 16707
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	sw $t0, -4180($fp)
	li $t0, 16093
	sw $t0, -4184($fp)
	addi $t0, $fp, -4124
	sw $t0, -4188($fp)
	li $t0, 0
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4188($fp)
	lw $t1, -4196($fp)
	add $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4184($fp)
	lw $t1, -4200($fp)
	sw $t0, 0($t1)
	lw $t0, -4200($fp)
	lw $t1, 0($t0)
	sw $t1, -4204($fp)
	li $t0, 37353
	sw $t0, -4208($fp)
	addi $t0, $fp, -4124
	sw $t0, -4212($fp)
	li $t0, 1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4212($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4208($fp)
	lw $t1, -4224($fp)
	sw $t0, 0($t1)
	lw $t0, -4224($fp)
	lw $t1, 0($t0)
	sw $t1, -4228($fp)
	li $t0, 21004
	sw $t0, -4232($fp)
	addi $t0, $fp, -4124
	sw $t0, -4236($fp)
	li $t0, 2
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4236($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4232($fp)
	lw $t1, -4248($fp)
	sw $t0, 0($t1)
	lw $t0, -4248($fp)
	lw $t1, 0($t0)
	sw $t1, -4252($fp)
	li $t0, 5000
	sw $t0, -4256($fp)
	addi $t0, $fp, -4124
	sw $t0, -4260($fp)
	li $t0, 3
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4260($fp)
	lw $t1, -4268($fp)
	add $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4256($fp)
	lw $t1, -4272($fp)
	sw $t0, 0($t1)
	lw $t0, -4272($fp)
	lw $t1, 0($t0)
	sw $t1, -4276($fp)
	li $t0, 17895
	sw $t0, -4280($fp)
	addi $t0, $fp, -4124
	sw $t0, -4284($fp)
	li $t0, 4
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4284($fp)
	lw $t1, -4292($fp)
	add $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4280($fp)
	lw $t1, -4296($fp)
	sw $t0, 0($t1)
	lw $t0, -4296($fp)
	lw $t1, 0($t0)
	sw $t1, -4300($fp)
	li $t0, 38720
	sw $t0, -4304($fp)
	addi $t0, $fp, -4124
	sw $t0, -4308($fp)
	li $t0, 5
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4308($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4304($fp)
	lw $t1, -4320($fp)
	sw $t0, 0($t1)
	lw $t0, -4320($fp)
	lw $t1, 0($t0)
	sw $t1, -4324($fp)
	li $t0, 4770
	sw $t0, -4328($fp)
	addi $t0, $fp, -4124
	sw $t0, -4332($fp)
	li $t0, 6
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4332($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4328($fp)
	lw $t1, -4344($fp)
	sw $t0, 0($t1)
	lw $t0, -4344($fp)
	lw $t1, 0($t0)
	sw $t1, -4348($fp)
	li $t0, 31536
	sw $t0, -4352($fp)
	addi $t0, $fp, -4124
	sw $t0, -4356($fp)
	li $t0, 7
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4356($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4352($fp)
	lw $t1, -4368($fp)
	sw $t0, 0($t1)
	lw $t0, -4368($fp)
	lw $t1, 0($t0)
	sw $t1, -4372($fp)
	li $t0, 45257
	sw $t0, -4376($fp)
	addi $t0, $fp, -4156
	sw $t0, -4380($fp)
	li $t0, 0
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4380($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4376($fp)
	lw $t1, -4392($fp)
	sw $t0, 0($t1)
	lw $t0, -4392($fp)
	lw $t1, 0($t0)
	sw $t1, -4396($fp)
	li $t0, 64461
	sw $t0, -4400($fp)
	addi $t0, $fp, -4156
	sw $t0, -4404($fp)
	li $t0, 1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4404($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4400($fp)
	lw $t1, -4416($fp)
	sw $t0, 0($t1)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	li $t0, 22606
	sw $t0, -4424($fp)
	addi $t0, $fp, -4156
	sw $t0, -4428($fp)
	li $t0, 2
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4428($fp)
	lw $t1, -4436($fp)
	add $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4424($fp)
	lw $t1, -4440($fp)
	sw $t0, 0($t1)
	lw $t0, -4440($fp)
	lw $t1, 0($t0)
	sw $t1, -4444($fp)
	li $t0, 15795
	sw $t0, -4448($fp)
	addi $t0, $fp, -4156
	sw $t0, -4452($fp)
	li $t0, 3
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4452($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4448($fp)
	lw $t1, -4464($fp)
	sw $t0, 0($t1)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	li $t0, 27223
	sw $t0, -4472($fp)
	addi $t0, $fp, -4156
	sw $t0, -4476($fp)
	li $t0, 4
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4476($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4472($fp)
	lw $t1, -4488($fp)
	sw $t0, 0($t1)
	lw $t0, -4488($fp)
	lw $t1, 0($t0)
	sw $t1, -4492($fp)
	li $t0, 20902
	sw $t0, -4496($fp)
	addi $t0, $fp, -4156
	sw $t0, -4500($fp)
	li $t0, 5
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4500($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4496($fp)
	lw $t1, -4512($fp)
	sw $t0, 0($t1)
	lw $t0, -4512($fp)
	lw $t1, 0($t0)
	sw $t1, -4516($fp)
	li $t0, 7454
	sw $t0, -4520($fp)
	addi $t0, $fp, -4156
	sw $t0, -4524($fp)
	li $t0, 6
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4524($fp)
	lw $t1, -4532($fp)
	add $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4520($fp)
	lw $t1, -4536($fp)
	sw $t0, 0($t1)
	lw $t0, -4536($fp)
	lw $t1, 0($t0)
	sw $t1, -4540($fp)
	li $t0, 3221
	sw $t0, -4544($fp)
	addi $t0, $fp, -4156
	sw $t0, -4548($fp)
	li $t0, 7
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4548($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4544($fp)
	lw $t1, -4560($fp)
	sw $t0, 0($t1)
	lw $t0, -4560($fp)
	lw $t1, 0($t0)
	sw $t1, -4564($fp)
	li $t0, 0
	sw $t0, -4568($fp)
	li $t0, 0
	sw $t0, -4572($fp)
	addi $t0, $fp, -44
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
	lw $t0, -2904($fp)
	sw $t0, -4596($fp)
	li $t0, 0
	lw $t1, -4596($fp)
	sub $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4592($fp)
	lw $t1, -4600($fp)
	add $t0, $t0, $t1
	sw $t0, -4604($fp)
	li $t0, 0
	sw $t0, -4608($fp)
	lw $t0, -1152($fp)
	sw $t0, -4612($fp)
	lw $t1, -4612($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -4608($fp)
label164:
	li $t0, 0
	lw $t1, -4608($fp)
	sub $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t1, -4604($fp)
	lw $t2, -4616($fp)
	bgt $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -4572($fp)
label162:
	lw $t0, -2724($fp)
	sw $t0, -4620($fp)
	addi $t0, $fp, -168
	sw $t0, -4624($fp)
	li $t0, 0
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
	lw $t0, -4620($fp)
	lw $t1, -4640($fp)
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t1, -4572($fp)
	lw $t2, -4644($fp)
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -4568($fp)
label160:
	li $t0, 0
	sw $t0, -4648($fp)
	addi $t0, $fp, -100
	sw $t0, -4652($fp)
	lw $t0, -4164($fp)
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
	li $t0, 46568
	sw $t0, -4672($fp)
	lw $t0, -4668($fp)
	lw $t1, -4672($fp)
	add $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4176($fp)
	sw $t0, -4680($fp)
	li $t0, 21187
	sw $t0, -4684($fp)
	lw $t0, -4680($fp)
	lw $t1, -4684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4688($fp)
	lw $t1, -4676($fp)
	lw $t2, -4688($fp)
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -4648($fp)
label166:
	lw $t0, -4648($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	sw $t0, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 0
	sw $t0, -4700($fp)
	li $t0, 28863
	sw $t0, -4704($fp)
	lw $t1, -4704($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label169:
	li $t0, 1
	sw $t0, -4700($fp)
label170:
	li $t0, 56291
	sw $t0, -4708($fp)
	lw $t0, -4700($fp)
	lw $t1, -4708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4712($fp)
	li $t0, 40547
	sw $t0, -4716($fp)
	li $t0, 0
	sw $t0, -4720($fp)
	li $t0, 40198
	sw $t0, -4724($fp)
	li $t0, 0
	lw $t1, -4724($fp)
	sub $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t1, -4728($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -4720($fp)
label172:
	lw $t0, -792($fp)
	sw $t0, -4732($fp)
	lw $t0, -1872($fp)
	sw $t0, -4736($fp)
	lw $t0, -4732($fp)
	lw $t1, -4736($fp)
	sub $t0, $t0, $t1
	sw $t0, -4740($fp)
	li $t0, 0
	sw $t0, -4744($fp)
	li $t0, 28526
	sw $t0, -4748($fp)
	lw $t0, -2868($fp)
	sw $t0, -4752($fp)
	lw $t0, -4748($fp)
	lw $t1, -4752($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label174
label175:
	li $t0, 12156
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -4744($fp)
label174:
	li $t0, 55820
	sw $t0, -4764($fp)
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4768($fp)
	addi $sp, $sp, 12
	lw $t0, -2964($fp)
	sw $t0, -4772($fp)
	lw $t0, -4768($fp)
	lw $t1, -4772($fp)
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	li $t0, 0
	sw $t0, -4780($fp)
	lw $t0, -4048($fp)
	sw $t0, -4784($fp)
	li $t0, 42410
	sw $t0, -4788($fp)
	lw $t0, -4784($fp)
	lw $t1, -4788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4792($fp)
	lw $t0, -300($fp)
	sw $t0, -4796($fp)
	lw $t1, -4792($fp)
	lw $t2, -4796($fp)
	beq $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -4780($fp)
label177:
	lw $t0, -1236($fp)
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	sw $t0, -4804($fp)
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4804($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4808($fp)
	addi $sp, $sp, 24
	li $t0, 16516
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -4816($fp)
	li $t0, 0
	sw $t0, -4820($fp)
	lw $t0, -1848($fp)
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
	li $t0, 1
	sw $t0, -4820($fp)
label179:
	li $t0, 55038
	sw $t0, -4828($fp)
	lw $t0, -4820($fp)
	lw $t1, -4828($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	addi $sp, $sp, -4
	lw $t0, -4712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4836($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -4840($fp)
	addi $t0, $fp, -4156
	sw $t0, -4844($fp)
	li $t0, 3
	sw $t0, -4848($fp)
	li $t0, 4
	lw $t1, -4848($fp)
	mul $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, -4844($fp)
	add $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	lw $t1, 0($t0)
	sw $t1, -4860($fp)
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label180:
	li $t0, 1
	sw $t0, -4840($fp)
label181:
	lw $t0, -4836($fp)
	lw $t1, -4840($fp)
	mul $t0, $t0, $t1
	sw $t0, -4864($fp)
	li $t0, 0
	lw $t1, -4864($fp)
	sub $t0, $t0, $t1
	sw $t0, -4868($fp)
	li $t0, 0
	lw $t1, -4868($fp)
	sub $t0, $t0, $t1
	sw $t0, -4872($fp)
	addi $t0, $fp, -4124
	sw $t0, -4876($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -4896($fp)
	li $t0, 29895
	sw $t0, -4900($fp)
	li $t0, 55862
	sw $t0, -4904($fp)
	lw $t0, -4900($fp)
	lw $t1, -4904($fp)
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	li $t0, 54051
	sw $t0, -4912($fp)
	lw $t1, -4908($fp)
	lw $t2, -4912($fp)
	beq $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -4896($fp)
label183:
	li $t0, 0
	sw $t0, -4916($fp)
	addi $t0, $fp, -248
	sw $t0, -4920($fp)
	li $t0, 6
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
	li $t0, 26023
	sw $t0, -4940($fp)
	lw $t1, -4936($fp)
	lw $t2, -4940($fp)
	ble $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -4916($fp)
label185:
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 18568
	sw $t0, -4948($fp)
	lw $t0, -2844($fp)
	sw $t0, -4952($fp)
	lw $t1, -4948($fp)
	lw $t2, -4952($fp)
	bne $t1, $t2, label186
	j label188
label188:
	lw $t0, -1248($fp)
	sw $t0, -4956($fp)
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -4944($fp)
label187:
	li $t0, 0
	sw $t0, -4960($fp)
	addi $t0, $fp, -284
	sw $t0, -4964($fp)
	li $t0, 1
	sw $t0, -4968($fp)
	li $t0, 4
	lw $t1, -4968($fp)
	mul $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	lw $t1, 0($t0)
	sw $t1, -4980($fp)
	li $t0, 18867
	sw $t0, -4984($fp)
	lw $t1, -4980($fp)
	lw $t2, -4984($fp)
	blt $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -4960($fp)
label190:
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4960($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4988($fp)
	addi $sp, $sp, 24
	lw $t0, -1872($fp)
	sw $t0, -4992($fp)
	lw $t0, -4988($fp)
	lw $t1, -4992($fp)
	sub $t0, $t0, $t1
	sw $t0, -4996($fp)
	li $t0, 0
	sw $t0, -5000($fp)
	addi $t0, $fp, -4156
	sw $t0, -5004($fp)
	lw $t0, -2580($fp)
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
	bne $t1, $t2, label191
	j label193
label193:
	li $t0, 61797
	sw $t0, -5024($fp)
	lw $t1, -5024($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -5000($fp)
label192:
	li $t0, 526
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -5032($fp)
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 61291
	sw $t0, -5040($fp)
	li $t0, 30260
	sw $t0, -5044($fp)
	lw $t0, -5040($fp)
	lw $t1, -5044($fp)
	add $t0, $t0, $t1
	sw $t0, -5048($fp)
	li $t0, 23052
	sw $t0, -5052($fp)
	lw $t1, -5048($fp)
	lw $t2, -5052($fp)
	beq $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -5036($fp)
label195:
	lw $t0, -2580($fp)
	sw $t0, -5056($fp)
	addi $sp, $sp, -4
	lw $t0, -4996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5060($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -284
	sw $t0, -5064($fp)
	lw $t0, -2796($fp)
	sw $t0, -5068($fp)
	li $t0, 4
	lw $t1, -5068($fp)
	mul $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	lw $t1, -5064($fp)
	add $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	lw $t1, 0($t0)
	sw $t1, -5080($fp)
	lw $t0, -5060($fp)
	lw $t1, -5080($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t1, -4872($fp)
	lw $t2, -5084($fp)
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -4696($fp)
label168:
	j label151
label150:
label196:
	addi $t0, $fp, -248
	sw $t0, -5088($fp)
	li $t0, 0
	sw $t0, -5092($fp)
	addi $t0, $fp, -292
	sw $t0, -5096($fp)
	lw $t0, -2952($fp)
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
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label201
label201:
	lw $t0, -4024($fp)
	sw $t0, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -5092($fp)
label200:
	li $t0, 4
	lw $t1, -5092($fp)
	mul $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	lw $t1, -5088($fp)
	add $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	lw $t1, 0($t0)
	sw $t1, -5128($fp)
	lw $t0, -2964($fp)
	sw $t0, -5132($fp)
	lw $t0, -5128($fp)
	lw $t1, -5132($fp)
	add $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t1, -5136($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 35083
	sw $t0, -5140($fp)
	li $t0, 0
	sw $t0, -5144($fp)
	li $t0, 0
	sw $t0, -5148($fp)
	li $t0, 51975
	sw $t0, -5152($fp)
	lw $t0, -2916($fp)
	sw $t0, -5156($fp)
	lw $t1, -5152($fp)
	lw $t2, -5156($fp)
	bne $t1, $t2, label207
	j label209
label209:
	lw $t0, -2976($fp)
	sw $t0, -5160($fp)
	lw $t1, -5160($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -5148($fp)
label208:
	li $t0, 0
	sw $t0, -5164($fp)
	lw $t0, -2604($fp)
	sw $t0, -5168($fp)
	lw $t1, -5168($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label212
label212:
	lw $t0, -2928($fp)
	sw $t0, -5172($fp)
	lw $t1, -5172($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -5164($fp)
label211:
	addi $sp, $sp, -4
	lw $t0, -5148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5176($fp)
	addi $sp, $sp, 12
	lw $t1, -5176($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label205:
	li $t0, 1
	sw $t0, -5144($fp)
label206:
	lw $t1, -5140($fp)
	lw $t2, -5144($fp)
	ble $t1, $t2, label202
	j label203
label202:
	li $t0, 0
	sw $t0, -5180($fp)
	li $t0, 0
	sw $t0, -5184($fp)
	li $t0, 23459
	sw $t0, -5188($fp)
	li $t0, 51599
	sw $t0, -5192($fp)
	lw $t0, -5188($fp)
	lw $t1, -5192($fp)
	sub $t0, $t0, $t1
	sw $t0, -5196($fp)
	li $t0, 28849
	sw $t0, -5200($fp)
	lw $t1, -5196($fp)
	lw $t2, -5200($fp)
	ble $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -5184($fp)
label217:
	addi $t0, $fp, -3316
	sw $t0, -5204($fp)
	lw $t0, -2784($fp)
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
	li $t0, 13744
	sw $t0, -5224($fp)
	lw $t0, -5220($fp)
	lw $t1, -5224($fp)
	mul $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t1, -5184($fp)
	lw $t2, -5228($fp)
	beq $t1, $t2, label213
	j label215
label215:
	li $t0, 14589
	sw $t0, -5232($fp)
	lw $t1, -5232($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label214
label218:
	addi $t0, $fp, -3356
	sw $t0, -5236($fp)
	li $t0, 2
	sw $t0, -5240($fp)
	li $t0, 4
	lw $t1, -5240($fp)
	mul $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	lw $t1, -5236($fp)
	add $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	lw $t1, 0($t0)
	sw $t1, -5252($fp)
	lw $t1, -5252($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -5180($fp)
label214:
	j label204
label203:
	addi $t0, $fp, -168
	sw $t0, -5256($fp)
	li $t0, 0
	sw $t0, -5260($fp)
	li $t0, 55137
	sw $t0, -5264($fp)
	li $t0, 4332
	sw $t0, -5268($fp)
	lw $t0, -5264($fp)
	lw $t1, -5268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5272($fp)
	lw $t0, -1752($fp)
	sw $t0, -5276($fp)
	li $t0, 0
	lw $t1, -5276($fp)
	sub $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t1, -5272($fp)
	lw $t2, -5280($fp)
	blt $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -5260($fp)
label220:
	li $t0, 4
	lw $t1, -5260($fp)
	mul $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	lw $t1, -5256($fp)
	add $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	lw $t1, 0($t0)
	sw $t1, -5292($fp)
label204:
	j label196
label198:
label151:
	lw $t0, -3364($fp)
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3376($fp)
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3388($fp)
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3400($fp)
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3268
	sw $t0, -5312($fp)
	li $t0, 0
	sw $t0, -5316($fp)
	li $t0, 4
	lw $t1, -5316($fp)
	mul $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	lw $t1, -5312($fp)
	add $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, 0($t0)
	sw $t1, -5328($fp)
	lw $t0, -5328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3436($fp)
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3448($fp)
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3460($fp)
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3284
	sw $t0, -5344($fp)
	li $t0, 0
	sw $t0, -5348($fp)
	li $t0, 4
	lw $t1, -5348($fp)
	mul $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	lw $t1, 0($t0)
	sw $t1, -5360($fp)
	lw $t0, -5360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3284
	sw $t0, -5364($fp)
	li $t0, 1
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
	lw $t0, -5380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3284
	sw $t0, -5384($fp)
	li $t0, 2
	sw $t0, -5388($fp)
	li $t0, 4
	lw $t1, -5388($fp)
	mul $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, -5384($fp)
	add $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, 0($t0)
	sw $t1, -5400($fp)
	lw $t0, -5400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3284
	sw $t0, -5404($fp)
	li $t0, 3
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
	lw $t0, -5420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3568($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -5428($fp)
	li $t0, 0
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
	addi $t0, $fp, -3316
	sw $t0, -5448($fp)
	li $t0, 1
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
	lw $t0, -5464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -5468($fp)
	li $t0, 2
	sw $t0, -5472($fp)
	li $t0, 4
	lw $t1, -5472($fp)
	mul $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	lw $t1, 0($t0)
	sw $t1, -5484($fp)
	lw $t0, -5484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -5488($fp)
	li $t0, 3
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
	lw $t0, -5504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -5508($fp)
	li $t0, 4
	sw $t0, -5512($fp)
	li $t0, 4
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5508($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	lw $t0, -5524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -5528($fp)
	li $t0, 5
	sw $t0, -5532($fp)
	li $t0, 4
	lw $t1, -5532($fp)
	mul $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	lw $t1, -5528($fp)
	add $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	lw $t1, 0($t0)
	sw $t1, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -5548($fp)
	li $t0, 6
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
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -5568($fp)
	li $t0, 7
	sw $t0, -5572($fp)
	li $t0, 4
	lw $t1, -5572($fp)
	mul $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	lw $t1, -5568($fp)
	add $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	lw $t1, 0($t0)
	sw $t1, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5588($fp)
	li $t0, 0
	sw $t0, -5592($fp)
	li $t0, 4
	lw $t1, -5592($fp)
	mul $t0, $t0, $t1
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	lw $t1, 0($t0)
	sw $t1, -5604($fp)
	lw $t0, -5604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5608($fp)
	li $t0, 1
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
	lw $t0, -5624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5628($fp)
	li $t0, 2
	sw $t0, -5632($fp)
	li $t0, 4
	lw $t1, -5632($fp)
	mul $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, 0($t0)
	sw $t1, -5644($fp)
	lw $t0, -5644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5648($fp)
	li $t0, 3
	sw $t0, -5652($fp)
	li $t0, 4
	lw $t1, -5652($fp)
	mul $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	lw $t1, -5648($fp)
	add $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	lw $t1, 0($t0)
	sw $t1, -5664($fp)
	lw $t0, -5664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5668($fp)
	li $t0, 4
	sw $t0, -5672($fp)
	li $t0, 4
	lw $t1, -5672($fp)
	mul $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	lw $t1, -5668($fp)
	add $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	lw $t1, 0($t0)
	sw $t1, -5684($fp)
	lw $t0, -5684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5688($fp)
	li $t0, 5
	sw $t0, -5692($fp)
	li $t0, 4
	lw $t1, -5692($fp)
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, -5688($fp)
	add $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, 0($t0)
	sw $t1, -5704($fp)
	lw $t0, -5704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5708($fp)
	li $t0, 6
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
	lw $t0, -5724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5728($fp)
	li $t0, 7
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
	lw $t0, -5744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5748($fp)
	li $t0, 8
	sw $t0, -5752($fp)
	li $t0, 4
	lw $t1, -5752($fp)
	mul $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	lw $t1, -5748($fp)
	add $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, 0($t0)
	sw $t1, -5764($fp)
	lw $t0, -5764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -5768($fp)
	li $t0, 9
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
	lw $t0, -5784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4012($fp)
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4024($fp)
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4036($fp)
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4048($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5804($fp)
	li $t0, 11716
	sw $t0, -5808($fp)
	li $t0, 40979
	sw $t0, -5812($fp)
	lw $t0, -5808($fp)
	lw $t1, -5812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5816($fp)
	li $t0, 28487
	sw $t0, -5820($fp)
	lw $t0, -5816($fp)
	lw $t1, -5820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5824($fp)
	li $t0, 32226
	sw $t0, -5828($fp)
	li $t0, 0
	lw $t1, -5828($fp)
	sub $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -2628($fp)
	sw $t0, -5836($fp)
	lw $t0, -2880($fp)
	sw $t0, -5840($fp)
	lw $t0, -5836($fp)
	lw $t1, -5840($fp)
	mul $t0, $t0, $t1
	sw $t0, -5844($fp)
	li $t0, 40453
	sw $t0, -5848($fp)
	lw $t0, -5844($fp)
	lw $t1, -5848($fp)
	sub $t0, $t0, $t1
	sw $t0, -5852($fp)
	li $t0, 0
	sw $t0, -5856($fp)
	li $t0, 54200
	sw $t0, -5860($fp)
	lw $t1, -5860($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label224:
	li $t0, 1
	sw $t0, -5856($fp)
label225:
	li $t0, 0
	sw $t0, -5864($fp)
	li $t0, 44698
	sw $t0, -5868($fp)
	li $t0, 1966
	sw $t0, -5872($fp)
	lw $t1, -5868($fp)
	lw $t2, -5872($fp)
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -5864($fp)
label227:
	addi $sp, $sp, -4
	lw $t0, -5824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5864($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5876($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -5876($fp)
	sub $t0, $t0, $t1
	sw $t0, -5880($fp)
	li $t0, 0
	lw $t1, -5880($fp)
	sub $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label221
label223:
	lw $t0, -1884($fp)
	sw $t0, -5888($fp)
	lw $t1, -5888($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -5804($fp)
label222:
	lw $ra, -4($fp)
	lw $v0, -5804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2796($fp)
	sw $t0, -5892($fp)
	li $t0, 14489
	sw $t0, -5896($fp)
	lw $t0, -5892($fp)
	lw $t1, -5896($fp)
	add $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -792($fp)
	sw $t0, -5904($fp)
	lw $t0, -5900($fp)
	lw $t1, -5904($fp)
	sub $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -1764($fp)
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -5916($fp)
	addi $sp, $sp, -4
	lw $t0, -5908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5916($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5920($fp)
	addi $sp, $sp, 12
	lw $t1, -5920($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	addi $t0, $fp, -3284
	sw $t0, -5924($fp)
	li $t0, 0
	sw $t0, -5928($fp)
	lw $t0, -1692($fp)
	sw $t0, -5932($fp)
	li $t0, 0
	lw $t1, -5932($fp)
	sub $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t1, -5936($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label233:
	li $t0, 40430
	sw $t0, -5940($fp)
	lw $t1, -5940($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -5928($fp)
label232:
	li $t0, 4
	lw $t1, -5928($fp)
	mul $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	lw $t1, -5924($fp)
	add $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	lw $t1, 0($t0)
	sw $t1, -5952($fp)
	li $t0, 0
	sw $t0, -5956($fp)
	li $t0, 0
	sw $t0, -5960($fp)
	lw $t0, -4036($fp)
	sw $t0, -5964($fp)
	li $t0, 50643
	sw $t0, -5968($fp)
	lw $t0, -5964($fp)
	lw $t1, -5968($fp)
	mul $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -2688($fp)
	sw $t0, -5976($fp)
	lw $t1, -5972($fp)
	lw $t2, -5976($fp)
	bgt $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -5960($fp)
label237:
	addi $t0, $fp, -168
	sw $t0, -5980($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -5996($fp)
	sub $t0, $t0, $t1
	sw $t0, -6000($fp)
	lw $t0, -2928($fp)
	sw $t0, -6004($fp)
	li $t0, 5945
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	sw $t0, -6012($fp)
	li $t0, 0
	sw $t0, -6016($fp)
	li $t0, 17795
	sw $t0, -6020($fp)
	lw $t0, -2604($fp)
	sw $t0, -6024($fp)
	lw $t0, -6020($fp)
	lw $t1, -6024($fp)
	mul $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t1, -6028($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label240
label240:
	li $t0, 53011
	sw $t0, -6032($fp)
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -6016($fp)
label239:
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6016($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6036($fp)
	addi $sp, $sp, 24
	lw $t1, -6036($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -5956($fp)
label235:
	li $t0, 17538
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -6044($fp)
	li $t0, 0
	sw $t0, -6048($fp)
	li $t0, 0
	sw $t0, -6052($fp)
	li $t0, 3794
	sw $t0, -6056($fp)
	li $t0, 3206
	sw $t0, -6060($fp)
	lw $t1, -6056($fp)
	lw $t2, -6060($fp)
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -6052($fp)
label244:
	addi $t0, $fp, -292
	sw $t0, -6064($fp)
	lw $t0, -3568($fp)
	sw $t0, -6068($fp)
	li $t0, 4
	lw $t1, -6068($fp)
	mul $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	lw $t1, -6064($fp)
	add $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t0, -6076($fp)
	lw $t1, 0($t0)
	sw $t1, -6080($fp)
	lw $t0, -2928($fp)
	sw $t0, -6084($fp)
	lw $t0, -6080($fp)
	lw $t1, -6084($fp)
	mul $t0, $t0, $t1
	sw $t0, -6088($fp)
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6092($fp)
	addi $sp, $sp, 12
	li $t0, 12005
	sw $t0, -6096($fp)
	lw $t1, -6092($fp)
	lw $t2, -6096($fp)
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -6048($fp)
label242:
	li $t0, 0
	sw $t0, -6100($fp)
	li $t0, 48692
	sw $t0, -6104($fp)
	li $t0, 0
	lw $t1, -6104($fp)
	sub $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t1, -6108($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label245:
	li $t0, 1
	sw $t0, -6100($fp)
label246:
	addi $t0, $fp, -248
	sw $t0, -6112($fp)
	lw $t0, -2940($fp)
	sw $t0, -6116($fp)
	li $t0, 4
	lw $t1, -6116($fp)
	mul $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	lw $t1, -6112($fp)
	add $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	lw $t1, 0($t0)
	sw $t1, -6128($fp)
	lw $t0, -2592($fp)
	sw $t0, -6132($fp)
	lw $t0, -6128($fp)
	lw $t1, -6132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6136($fp)
	li $t0, 0
	sw $t0, -6140($fp)
	li $t0, 62252
	sw $t0, -6144($fp)
	li $t0, 45871
	sw $t0, -6148($fp)
	lw $t0, -6144($fp)
	lw $t1, -6148($fp)
	add $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t1, -6152($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label249
label249:
	li $t0, 17142
	sw $t0, -6156($fp)
	lw $t1, -6156($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -6140($fp)
label248:
	li $t0, 47595
	sw $t0, -6160($fp)
	li $t0, 0
	sw $t0, -6164($fp)
	li $t0, 11914
	sw $t0, -6168($fp)
	li $t0, 0
	lw $t1, -6168($fp)
	sub $t0, $t0, $t1
	sw $t0, -6172($fp)
	lw $t0, -2928($fp)
	sw $t0, -6176($fp)
	lw $t1, -6172($fp)
	lw $t2, -6176($fp)
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -6164($fp)
label251:
	lw $t0, -828($fp)
	sw $t0, -6180($fp)
	li $t0, 31464
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -6188($fp)
	li $t0, 0
	sw $t0, -6192($fp)
	lw $t0, -2904($fp)
	sw $t0, -6196($fp)
	lw $t0, -2796($fp)
	sw $t0, -6200($fp)
	lw $t1, -6196($fp)
	lw $t2, -6200($fp)
	bne $t1, $t2, label254
	j label253
label254:
	lw $t0, -564($fp)
	sw $t0, -6204($fp)
	lw $t1, -6204($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -6192($fp)
label253:
	li $t0, 0
	sw $t0, -6208($fp)
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 59080
	sw $t0, -6216($fp)
	lw $t0, -2592($fp)
	sw $t0, -6220($fp)
	lw $t1, -6216($fp)
	lw $t2, -6220($fp)
	beq $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -6212($fp)
label258:
	lw $t0, -1152($fp)
	sw $t0, -6224($fp)
	lw $t1, -6212($fp)
	lw $t2, -6224($fp)
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -6208($fp)
label256:
	addi $sp, $sp, -4
	lw $t0, -6164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6208($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6228($fp)
	addi $sp, $sp, 24
	li $t0, 21588
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -6236($fp)
	li $t0, 0
	sw $t0, -6240($fp)
	li $t0, 1568
	sw $t0, -6244($fp)
	lw $t0, -2832($fp)
	sw $t0, -6248($fp)
	lw $t1, -6244($fp)
	lw $t2, -6248($fp)
	bge $t1, $t2, label261
	j label260
label261:
	lw $t0, -2712($fp)
	sw $t0, -6252($fp)
	lw $t1, -6252($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -6240($fp)
label260:
	addi $sp, $sp, -4
	lw $t0, -6140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6256($fp)
	addi $sp, $sp, 24
	lw $t0, -1740($fp)
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -6264($fp)
	li $t0, 0
	sw $t0, -6268($fp)
	li $t0, 33057
	sw $t0, -6272($fp)
	lw $t1, -6272($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label262
label262:
	li $t0, 1
	sw $t0, -6268($fp)
label263:
	addi $sp, $sp, -4
	lw $t0, -6100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6276($fp)
	addi $sp, $sp, 24
	lw $t0, -1308($fp)
	sw $t0, -6280($fp)
	lw $t0, -6276($fp)
	lw $t1, -6280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6284($fp)
	li $t0, 47354
	sw $t0, -6288($fp)
	li $t0, 0
	lw $t1, -6288($fp)
	sub $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t0, -3364($fp)
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	sw $t0, -6300($fp)
	addi $sp, $sp, -4
	lw $t0, -6292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6304($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -6304($fp)
	sub $t0, $t0, $t1
	sw $t0, -6308($fp)
	addi $sp, $sp, -4
	lw $t0, -5956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6308($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6312($fp)
	addi $sp, $sp, 24
	lw $t0, -5952($fp)
	lw $t1, -6312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6316($fp)
	j label230
label229:
	lw $t0, -4048($fp)
	sw $t0, -6320($fp)
	li $t0, 0
	sw $t0, -6324($fp)
	li $t0, 9362
	sw $t0, -6328($fp)
	lw $t1, -6328($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -6324($fp)
label268:
	li $t0, 39734
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -6336($fp)
	li $t0, 0
	sw $t0, -6340($fp)
	li $t0, 0
	sw $t0, -6344($fp)
	lw $t0, -2712($fp)
	sw $t0, -6348($fp)
	lw $t0, -888($fp)
	sw $t0, -6352($fp)
	lw $t1, -6348($fp)
	lw $t2, -6352($fp)
	blt $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -6344($fp)
label272:
	li $t0, 51895
	sw $t0, -6356($fp)
	lw $t1, -6344($fp)
	lw $t2, -6356($fp)
	blt $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -6340($fp)
label270:
	li $t0, 0
	sw $t0, -6360($fp)
	li $t0, 6676
	sw $t0, -6364($fp)
	lw $t0, -780($fp)
	sw $t0, -6368($fp)
	lw $t1, -6364($fp)
	lw $t2, -6368($fp)
	bgt $t1, $t2, label273
	j label275
label275:
	li $t0, 41434
	sw $t0, -6372($fp)
	lw $t1, -6372($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -6360($fp)
label274:
	lw $t0, -1704($fp)
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	sw $t0, -6380($fp)
	li $t0, 0
	sw $t0, -6384($fp)
	li $t0, 1004
	sw $t0, -6388($fp)
	li $t0, 4540
	sw $t0, -6392($fp)
	lw $t1, -6388($fp)
	lw $t2, -6392($fp)
	bgt $t1, $t2, label278
	j label277
label278:
	lw $t0, -3376($fp)
	sw $t0, -6396($fp)
	lw $t1, -6396($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -6384($fp)
label277:
	lw $t0, -900($fp)
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -6404($fp)
	lw $t0, -756($fp)
	sw $t0, -6408($fp)
	li $t0, 0
	sw $t0, -6412($fp)
	li $t0, 41589
	sw $t0, -6416($fp)
	lw $t1, -6416($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label282:
	li $t0, 57723
	sw $t0, -6420($fp)
	lw $t1, -6420($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label281
label281:
	lw $t0, -1140($fp)
	sw $t0, -6424($fp)
	lw $t1, -6424($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -6412($fp)
label280:
	li $t0, 46007
	sw $t0, -6428($fp)
	lw $t0, -1236($fp)
	sw $t0, -6432($fp)
	lw $t0, -6428($fp)
	lw $t1, -6432($fp)
	sub $t0, $t0, $t1
	sw $t0, -6436($fp)
	li $t0, 25560
	sw $t0, -6440($fp)
	lw $t0, -6436($fp)
	lw $t1, -6440($fp)
	add $t0, $t0, $t1
	sw $t0, -6444($fp)
	addi $sp, $sp, -4
	lw $t0, -6384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6444($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6448($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -6336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6448($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6452($fp)
	addi $sp, $sp, 24
	lw $t0, -6324($fp)
	lw $t1, -6452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6456($fp)
	lw $t1, -6320($fp)
	lw $t2, -6456($fp)
	bgt $t1, $t2, label264
	j label265
label264:
	li $t0, 43003
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	sw $t0, -6468($fp)
	li $t0, 0
	sw $t0, -6472($fp)
	lw $t0, -768($fp)
	sw $t0, -6476($fp)
	lw $t1, -6476($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label283
label288:
	lw $t0, -792($fp)
	sw $t0, -6480($fp)
	lw $t1, -6480($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label287
label287:
	lw $t0, -792($fp)
	sw $t0, -6484($fp)
	li $t0, 7947
	sw $t0, -6488($fp)
	lw $t0, -6484($fp)
	lw $t1, -6488($fp)
	mul $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t1, -6492($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label286
label286:
	lw $t0, -6464($fp)
	sw $t0, -6496($fp)
	lw $t1, -6496($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label285
label285:
	addi $t0, $fp, -164
	sw $t0, -6500($fp)
	li $t0, 0
	sw $t0, -6504($fp)
	lw $t0, -2820($fp)
	sw $t0, -6508($fp)
	lw $t0, -2964($fp)
	sw $t0, -6512($fp)
	lw $t1, -6508($fp)
	lw $t2, -6512($fp)
	ble $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -6504($fp)
label290:
	li $t0, 4
	lw $t1, -6504($fp)
	mul $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	lw $t1, -6500($fp)
	add $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	lw $t1, 0($t0)
	sw $t1, -6524($fp)
	lw $t1, -6524($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -6472($fp)
label284:
	j label266
label265:
	addi $t0, $fp, -292
	sw $t0, -6528($fp)
	lw $t0, -1920($fp)
	sw $t0, -6532($fp)
	li $t0, 4
	lw $t1, -6532($fp)
	mul $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	lw $t1, -6528($fp)
	add $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	lw $t1, 0($t0)
	sw $t1, -6544($fp)
label266:
label230:
	lw $t0, -3364($fp)
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3376($fp)
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3388($fp)
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3400($fp)
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3268
	sw $t0, -6564($fp)
	li $t0, 0
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
	lw $t0, -3436($fp)
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3448($fp)
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3460($fp)
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3284
	sw $t0, -6596($fp)
	li $t0, 0
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
	addi $t0, $fp, -3284
	sw $t0, -6616($fp)
	li $t0, 1
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
	addi $t0, $fp, -3284
	sw $t0, -6636($fp)
	li $t0, 2
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
	addi $t0, $fp, -3284
	sw $t0, -6656($fp)
	li $t0, 3
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
	lw $t0, -3568($fp)
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
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
	addi $t0, $fp, -3316
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
	addi $t0, $fp, -3316
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
	addi $t0, $fp, -3316
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
	addi $t0, $fp, -3316
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
	addi $t0, $fp, -3316
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
	addi $t0, $fp, -3316
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
	addi $t0, $fp, -3316
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
	addi $t0, $fp, -3356
	sw $t0, -6840($fp)
	li $t0, 0
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
	addi $t0, $fp, -3356
	sw $t0, -6860($fp)
	li $t0, 1
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
	addi $t0, $fp, -3356
	sw $t0, -6880($fp)
	li $t0, 2
	sw $t0, -6884($fp)
	li $t0, 4
	lw $t1, -6884($fp)
	mul $t0, $t0, $t1
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	lw $t1, -6880($fp)
	add $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, 0($t0)
	sw $t1, -6896($fp)
	lw $t0, -6896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -6900($fp)
	li $t0, 3
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
	lw $t0, -6916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -6920($fp)
	li $t0, 4
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
	lw $t0, -6936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -6940($fp)
	li $t0, 5
	sw $t0, -6944($fp)
	li $t0, 4
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, -6940($fp)
	add $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	lw $t1, 0($t0)
	sw $t1, -6956($fp)
	lw $t0, -6956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -6960($fp)
	li $t0, 6
	sw $t0, -6964($fp)
	li $t0, 4
	lw $t1, -6964($fp)
	mul $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	lw $t1, -6960($fp)
	add $t0, $t0, $t1
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	lw $t1, 0($t0)
	sw $t1, -6976($fp)
	lw $t0, -6976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -6980($fp)
	li $t0, 7
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
	lw $t0, -6996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7000($fp)
	li $t0, 8
	sw $t0, -7004($fp)
	li $t0, 4
	lw $t1, -7004($fp)
	mul $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	lw $t1, -7000($fp)
	add $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $t0, -7012($fp)
	lw $t1, 0($t0)
	sw $t1, -7016($fp)
	lw $t0, -7016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7020($fp)
	li $t0, 9
	sw $t0, -7024($fp)
	li $t0, 4
	lw $t1, -7024($fp)
	mul $t0, $t0, $t1
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	lw $t1, -7020($fp)
	add $t0, $t0, $t1
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	lw $t1, 0($t0)
	sw $t1, -7036($fp)
	lw $t0, -7036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4012($fp)
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4024($fp)
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4036($fp)
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4048($fp)
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -7056($fp)
	lw $t0, -1164($fp)
	sw $t0, -7060($fp)
	lw $t0, -2796($fp)
	sw $t0, -7064($fp)
	lw $t0, -7060($fp)
	lw $t1, -7064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7068($fp)
	lw $t0, -1176($fp)
	sw $t0, -7072($fp)
	lw $t0, -7068($fp)
	lw $t1, -7072($fp)
	add $t0, $t0, $t1
	sw $t0, -7076($fp)
	li $t0, 0
	sw $t0, -7080($fp)
	li $t0, 15338
	sw $t0, -7084($fp)
	lw $t0, -1164($fp)
	sw $t0, -7088($fp)
	lw $t1, -7084($fp)
	lw $t2, -7088($fp)
	bne $t1, $t2, label291
	j label293
label293:
	li $t0, 5647
	sw $t0, -7092($fp)
	lw $t1, -7092($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -7080($fp)
label292:
	li $t0, 19861
	sw $t0, -7096($fp)
	li $t0, 0
	lw $t1, -7096($fp)
	sub $t0, $t0, $t1
	sw $t0, -7100($fp)
	li $t0, 0
	lw $t1, -7100($fp)
	sub $t0, $t0, $t1
	sw $t0, -7104($fp)
	li $t0, 0
	sw $t0, -7108($fp)
	li $t0, 0
	sw $t0, -7112($fp)
	lw $t0, -1152($fp)
	sw $t0, -7116($fp)
	li $t0, 8931
	sw $t0, -7120($fp)
	lw $t1, -7116($fp)
	lw $t2, -7120($fp)
	bge $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -7112($fp)
label297:
	lw $t0, -2688($fp)
	sw $t0, -7124($fp)
	lw $t1, -7112($fp)
	lw $t2, -7124($fp)
	bgt $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -7108($fp)
label295:
	li $t0, 0
	sw $t0, -7128($fp)
	li $t0, 0
	sw $t0, -7132($fp)
	lw $t0, -900($fp)
	sw $t0, -7136($fp)
	li $t0, 33278
	sw $t0, -7140($fp)
	lw $t1, -7136($fp)
	lw $t2, -7140($fp)
	beq $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -7132($fp)
label302:
	lw $t0, -3448($fp)
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -7148($fp)
	addi $sp, $sp, -4
	lw $t0, -7132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7152($fp)
	addi $sp, $sp, 12
	lw $t1, -7152($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label300
label300:
	lw $t0, -3460($fp)
	sw $t0, -7156($fp)
	lw $t1, -7156($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -7128($fp)
label299:
	addi $sp, $sp, -4
	lw $t0, -7076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7128($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7160($fp)
	addi $sp, $sp, 24
	lw $t0, -7056($fp)
	lw $t1, -7160($fp)
	sub $t0, $t0, $t1
	sw $t0, -7164($fp)
	li $t0, 0
	sw $t0, -7168($fp)
	li $t0, 0
	sw $t0, -7172($fp)
	li $t0, 54339
	sw $t0, -7176($fp)
	lw $t1, -7176($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label305:
	li $t0, 1
	sw $t0, -7172($fp)
label306:
	li $t0, 3990
	sw $t0, -7180($fp)
	lw $t0, -7172($fp)
	lw $t1, -7180($fp)
	sub $t0, $t0, $t1
	sw $t0, -7184($fp)
	li $t0, 0
	sw $t0, -7188($fp)
	li $t0, 0
	sw $t0, -7192($fp)
	lw $t0, -2928($fp)
	sw $t0, -7196($fp)
	li $t0, 196
	sw $t0, -7200($fp)
	lw $t1, -7196($fp)
	lw $t2, -7200($fp)
	beq $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -7192($fp)
label310:
	li $t0, 32480
	sw $t0, -7204($fp)
	lw $t1, -7192($fp)
	lw $t2, -7204($fp)
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -7188($fp)
label308:
	addi $sp, $sp, -4
	lw $t0, -7184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7208($fp)
	addi $sp, $sp, 12
	lw $t1, -7208($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -7168($fp)
label304:
	lw $t0, -7164($fp)
	lw $t1, -7168($fp)
	sub $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $ra, -4($fp)
	lw $v0, -7212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3364($fp)
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3376($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3388($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3400($fp)
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3268
	sw $t0, -7232($fp)
	li $t0, 0
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
	lw $t0, -7248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3436($fp)
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3448($fp)
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3460($fp)
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3284
	sw $t0, -7264($fp)
	li $t0, 0
	sw $t0, -7268($fp)
	li $t0, 4
	lw $t1, -7268($fp)
	mul $t0, $t0, $t1
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	lw $t1, -7264($fp)
	add $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	lw $t1, 0($t0)
	sw $t1, -7280($fp)
	lw $t0, -7280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3284
	sw $t0, -7284($fp)
	li $t0, 1
	sw $t0, -7288($fp)
	li $t0, 4
	lw $t1, -7288($fp)
	mul $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t0, -7292($fp)
	lw $t1, -7284($fp)
	add $t0, $t0, $t1
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	lw $t1, 0($t0)
	sw $t1, -7300($fp)
	lw $t0, -7300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3284
	sw $t0, -7304($fp)
	li $t0, 2
	sw $t0, -7308($fp)
	li $t0, 4
	lw $t1, -7308($fp)
	mul $t0, $t0, $t1
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	lw $t1, -7304($fp)
	add $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -7316($fp)
	lw $t1, 0($t0)
	sw $t1, -7320($fp)
	lw $t0, -7320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3284
	sw $t0, -7324($fp)
	li $t0, 3
	sw $t0, -7328($fp)
	li $t0, 4
	lw $t1, -7328($fp)
	mul $t0, $t0, $t1
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	lw $t1, -7324($fp)
	add $t0, $t0, $t1
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	lw $t1, 0($t0)
	sw $t1, -7340($fp)
	lw $t0, -7340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3568($fp)
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -7348($fp)
	li $t0, 0
	sw $t0, -7352($fp)
	li $t0, 4
	lw $t1, -7352($fp)
	mul $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	lw $t1, -7348($fp)
	add $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	lw $t1, 0($t0)
	sw $t1, -7364($fp)
	lw $t0, -7364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -7368($fp)
	li $t0, 1
	sw $t0, -7372($fp)
	li $t0, 4
	lw $t1, -7372($fp)
	mul $t0, $t0, $t1
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	lw $t1, -7368($fp)
	add $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t0, -7380($fp)
	lw $t1, 0($t0)
	sw $t1, -7384($fp)
	lw $t0, -7384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -7388($fp)
	li $t0, 2
	sw $t0, -7392($fp)
	li $t0, 4
	lw $t1, -7392($fp)
	mul $t0, $t0, $t1
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	lw $t1, -7388($fp)
	add $t0, $t0, $t1
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	lw $t1, 0($t0)
	sw $t1, -7404($fp)
	lw $t0, -7404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -7408($fp)
	li $t0, 3
	sw $t0, -7412($fp)
	li $t0, 4
	lw $t1, -7412($fp)
	mul $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7416($fp)
	lw $t1, -7408($fp)
	add $t0, $t0, $t1
	sw $t0, -7420($fp)
	lw $t0, -7420($fp)
	lw $t1, 0($t0)
	sw $t1, -7424($fp)
	lw $t0, -7424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -7428($fp)
	li $t0, 4
	sw $t0, -7432($fp)
	li $t0, 4
	lw $t1, -7432($fp)
	mul $t0, $t0, $t1
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	lw $t1, -7428($fp)
	add $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	lw $t1, 0($t0)
	sw $t1, -7444($fp)
	lw $t0, -7444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -7448($fp)
	li $t0, 5
	sw $t0, -7452($fp)
	li $t0, 4
	lw $t1, -7452($fp)
	mul $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	lw $t1, -7448($fp)
	add $t0, $t0, $t1
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	lw $t1, 0($t0)
	sw $t1, -7464($fp)
	lw $t0, -7464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -7468($fp)
	li $t0, 6
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
	lw $t0, -7484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3316
	sw $t0, -7488($fp)
	li $t0, 7
	sw $t0, -7492($fp)
	li $t0, 4
	lw $t1, -7492($fp)
	mul $t0, $t0, $t1
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	lw $t1, -7488($fp)
	add $t0, $t0, $t1
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	lw $t1, 0($t0)
	sw $t1, -7504($fp)
	lw $t0, -7504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7508($fp)
	li $t0, 0
	sw $t0, -7512($fp)
	li $t0, 4
	lw $t1, -7512($fp)
	mul $t0, $t0, $t1
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	lw $t1, -7508($fp)
	add $t0, $t0, $t1
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	lw $t1, 0($t0)
	sw $t1, -7524($fp)
	lw $t0, -7524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7528($fp)
	li $t0, 1
	sw $t0, -7532($fp)
	li $t0, 4
	lw $t1, -7532($fp)
	mul $t0, $t0, $t1
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	lw $t1, -7528($fp)
	add $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	lw $t1, 0($t0)
	sw $t1, -7544($fp)
	lw $t0, -7544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7548($fp)
	li $t0, 2
	sw $t0, -7552($fp)
	li $t0, 4
	lw $t1, -7552($fp)
	mul $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	lw $t1, -7548($fp)
	add $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -7560($fp)
	lw $t1, 0($t0)
	sw $t1, -7564($fp)
	lw $t0, -7564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7568($fp)
	li $t0, 3
	sw $t0, -7572($fp)
	li $t0, 4
	lw $t1, -7572($fp)
	mul $t0, $t0, $t1
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	lw $t1, -7568($fp)
	add $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	lw $t1, 0($t0)
	sw $t1, -7584($fp)
	lw $t0, -7584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7588($fp)
	li $t0, 4
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
	lw $t0, -7604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7608($fp)
	li $t0, 5
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
	addi $t0, $fp, -3356
	sw $t0, -7628($fp)
	li $t0, 6
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
	addi $t0, $fp, -3356
	sw $t0, -7648($fp)
	li $t0, 7
	sw $t0, -7652($fp)
	li $t0, 4
	lw $t1, -7652($fp)
	mul $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	lw $t1, -7648($fp)
	add $t0, $t0, $t1
	sw $t0, -7660($fp)
	lw $t0, -7660($fp)
	lw $t1, 0($t0)
	sw $t1, -7664($fp)
	lw $t0, -7664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7668($fp)
	li $t0, 8
	sw $t0, -7672($fp)
	li $t0, 4
	lw $t1, -7672($fp)
	mul $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	lw $t1, -7668($fp)
	add $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	lw $t1, 0($t0)
	sw $t1, -7684($fp)
	lw $t0, -7684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3356
	sw $t0, -7688($fp)
	li $t0, 9
	sw $t0, -7692($fp)
	li $t0, 4
	lw $t1, -7692($fp)
	mul $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	lw $t1, -7688($fp)
	add $t0, $t0, $t1
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	lw $t1, 0($t0)
	sw $t1, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4012($fp)
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4024($fp)
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4036($fp)
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4048($fp)
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 16($fp)
	sw $t0, -7724($fp)
	li $t0, 21529
	sw $t0, -7728($fp)
	lw $t0, -7724($fp)
	lw $t1, -7728($fp)
	mul $t0, $t0, $t1
	sw $t0, -7732($fp)
	li $t0, 0
	sw $t0, -7736($fp)
	li $t0, 809
	sw $t0, -7740($fp)
	lw $t1, -7740($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -7736($fp)
label312:
	li $t0, 0
	sw $t0, -7744($fp)
	li $t0, 0
	sw $t0, -7748($fp)
	li $t0, 35686
	sw $t0, -7752($fp)
	lw $t0, -816($fp)
	sw $t0, -7756($fp)
	lw $t1, -7752($fp)
	lw $t2, -7756($fp)
	ble $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -7748($fp)
label316:
	lw $t0, -792($fp)
	sw $t0, -7760($fp)
	lw $t1, -7748($fp)
	lw $t2, -7760($fp)
	beq $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -7744($fp)
label314:
	lw $t0, -2604($fp)
	sw $t0, -7764($fp)
	lw $t0, -804($fp)
	sw $t0, -7768($fp)
	addi $sp, $sp, -4
	lw $t0, -7732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7768($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7772($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -7772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label317:
	li $t0, 53482
	sw $t0, -7776($fp)
	li $t0, 0
	lw $t1, -7776($fp)
	sub $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $t1, -7780($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label320:
	li $t0, 0
	sw $t0, -7784($fp)
	lw $t0, -828($fp)
	sw $t0, -7788($fp)
	lw $t1, -7788($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label321
label321:
	li $t0, 1
	sw $t0, -7784($fp)
label322:
	lw $t0, -3388($fp)
	sw $t0, -7792($fp)
	lw $t0, -7784($fp)
	lw $t1, -7792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7796($fp)
	li $t0, 0
	sw $t0, -7800($fp)
	li $t0, 53820
	sw $t0, -7804($fp)
	li $t0, 27474
	sw $t0, -7808($fp)
	lw $t1, -7804($fp)
	lw $t2, -7808($fp)
	bne $t1, $t2, label325
	j label324
label325:
	li $t0, 60878
	sw $t0, -7812($fp)
	lw $t1, -7812($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -7800($fp)
label324:
	addi $sp, $sp, -4
	lw $t0, -7796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7816($fp)
	addi $sp, $sp, 12
	lw $t0, 16($fp)
	sw $t0, -7820($fp)
	lw $t0, -7816($fp)
	lw $t1, -7820($fp)
	add $t0, $t0, $t1
	sw $t0, -7824($fp)
	li $t0, 0
	sw $t0, -7828($fp)
	li $t0, 45627
	sw $t0, -7832($fp)
	lw $t1, -7832($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label326:
	li $t0, 1
	sw $t0, -7828($fp)
label327:
	lw $t1, -7824($fp)
	lw $t2, -7828($fp)
	blt $t1, $t2, label318
	j label319
label318:
	addi $t0, $fp, -168
	sw $t0, -7836($fp)
	li $t0, 0
	sw $t0, -7840($fp)
	lw $t0, -3400($fp)
	sw $t0, -7844($fp)
	addi $t0, $fp, -3268
	sw $t0, -7848($fp)
	lw $t0, -3436($fp)
	sw $t0, -7852($fp)
	li $t0, 4
	lw $t1, -7852($fp)
	mul $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7856($fp)
	lw $t1, -7848($fp)
	add $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	lw $t1, 0($t0)
	sw $t1, -7864($fp)
	lw $t1, -7844($fp)
	lw $t2, -7864($fp)
	bgt $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -7840($fp)
label329:
	li $t0, 4
	lw $t1, -7840($fp)
	mul $t0, $t0, $t1
	sw $t0, -7868($fp)
	lw $t0, -7868($fp)
	lw $t1, -7836($fp)
	add $t0, $t0, $t1
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	lw $t1, 0($t0)
	sw $t1, -7876($fp)
	lw $ra, -4($fp)
	lw $v0, -7876($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label317
label319:
	j label144
label146:
	j label135
label134:
label330:
	lw $t0, -1236($fp)
	sw $t0, -7880($fp)
	lw $t0, -1248($fp)
	sw $t0, -7884($fp)
	lw $t0, -7880($fp)
	lw $t1, -7884($fp)
	add $t0, $t0, $t1
	sw $t0, -7888($fp)
	lw $t1, -7888($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 0
	sw $t0, -7892($fp)
	li $t0, 12581
	sw $t0, -7896($fp)
	lw $t1, -7896($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -7892($fp)
label334:
	li $t0, 0
	lw $t1, -7892($fp)
	sub $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -7904($fp)
	j label330
label332:
label135:
	j label130
label129:
	li $t0, 4705
	sw $t0, -7908($fp)
	lw $t1, -7908($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 26099
	sw $t0, -7912($fp)
	li $t0, 38141
	sw $t0, -7916($fp)
	lw $t0, -7912($fp)
	lw $t1, -7916($fp)
	mul $t0, $t0, $t1
	sw $t0, -7920($fp)
	li $t0, 0
	sw $t0, -7924($fp)
	li $t0, 46294
	sw $t0, -7928($fp)
	lw $t1, -7928($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -7924($fp)
label342:
	lw $t0, -7920($fp)
	lw $t1, -7924($fp)
	sub $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t1, -7932($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 0
	sw $t0, -7936($fp)
	li $t0, 0
	sw $t0, -7940($fp)
	li $t0, 0
	sw $t0, -7944($fp)
	lw $t0, -2952($fp)
	sw $t0, -7948($fp)
	li $t0, 18286
	sw $t0, -7952($fp)
	lw $t1, -7948($fp)
	lw $t2, -7952($fp)
	ble $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -7944($fp)
label351:
	lw $t0, -1272($fp)
	sw $t0, -7956($fp)
	lw $t1, -7944($fp)
	lw $t2, -7956($fp)
	bge $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -7940($fp)
label349:
	li $t0, 39145
	sw $t0, -7960($fp)
	lw $t1, -7940($fp)
	lw $t2, -7960($fp)
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -7936($fp)
label347:
	lw $t0, -7936($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -7964($fp)
	lw $t1, -7964($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	lw $t0, -1140($fp)
	sw $t0, -7968($fp)
	lw $t1, -7968($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 58047
	sw $t0, -7972($fp)
	li $t0, 0
	lw $t1, -7972($fp)
	sub $t0, $t0, $t1
	sw $t0, -7976($fp)
	li $t0, 45140
	sw $t0, -7980($fp)
	lw $t0, -7976($fp)
	lw $t1, -7980($fp)
	add $t0, $t0, $t1
	sw $t0, -7984($fp)
	li $t0, 0
	sw $t0, -7988($fp)
	li $t0, 64697
	sw $t0, -7992($fp)
	lw $t1, -7992($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -7988($fp)
label356:
	addi $t0, $fp, -248
	sw $t0, -7996($fp)
	li $t0, 6
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
	lw $t0, -1716($fp)
	sw $t0, -8016($fp)
	lw $t0, -8012($fp)
	lw $t1, -8016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8020($fp)
	li $t0, 0
	sw $t0, -8024($fp)
	li $t0, 24963
	sw $t0, -8028($fp)
	lw $t0, -2880($fp)
	sw $t0, -8032($fp)
	lw $t1, -8028($fp)
	lw $t2, -8032($fp)
	bne $t1, $t2, label359
	j label358
label359:
	lw $t0, -1836($fp)
	sw $t0, -8036($fp)
	lw $t1, -8036($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -8024($fp)
label358:
	li $t0, 0
	sw $t0, -8040($fp)
	lw $t0, -1284($fp)
	sw $t0, -8044($fp)
	li $t0, 50834
	sw $t0, -8048($fp)
	lw $t1, -8044($fp)
	lw $t2, -8048($fp)
	blt $t1, $t2, label360
	j label362
label362:
	lw $t0, -1296($fp)
	sw $t0, -8052($fp)
	lw $t1, -8052($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -8040($fp)
label361:
	addi $sp, $sp, -4
	lw $t0, -7984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8040($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8056($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8060($fp)
	li $t0, 14722
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -8068($fp)
	li $t0, 0
	sw $t0, -8072($fp)
	li $t0, 7089
	sw $t0, -8076($fp)
	li $t0, 65197
	sw $t0, -8080($fp)
	lw $t1, -8076($fp)
	lw $t2, -8080($fp)
	beq $t1, $t2, label367
	j label366
label367:
	lw $t0, -1536($fp)
	sw $t0, -8084($fp)
	lw $t1, -8084($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -8072($fp)
label366:
	addi $t0, $fp, -248
	sw $t0, -8088($fp)
	li $t0, 4
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
	li $t0, 0
	lw $t1, -8104($fp)
	sub $t0, $t0, $t1
	sw $t0, -8108($fp)
	addi $t0, $fp, -212
	sw $t0, -8112($fp)
	lw $t0, -2880($fp)
	sw $t0, -8116($fp)
	li $t0, 4
	lw $t1, -8116($fp)
	mul $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t0, -8120($fp)
	lw $t1, -8112($fp)
	add $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	lw $t1, 0($t0)
	sw $t1, -8128($fp)
	li $t0, 0
	sw $t0, -8132($fp)
	li $t0, 32439
	sw $t0, -8136($fp)
	lw $t1, -8136($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label370
label370:
	li $t0, 1442
	sw $t0, -8140($fp)
	lw $t1, -8140($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -8132($fp)
label369:
	addi $sp, $sp, -4
	lw $t0, -8068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8132($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8144($fp)
	addi $sp, $sp, 24
	lw $t1, -8144($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -8060($fp)
label364:
	lw $t0, -8056($fp)
	lw $t1, -8060($fp)
	mul $t0, $t0, $t1
	sw $t0, -8148($fp)
	j label354
label353:
	li $t0, 0
	sw $t0, -8152($fp)
	lw $t0, -2904($fp)
	sw $t0, -8156($fp)
	lw $t1, -8156($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label377
label378:
	li $t0, 3652
	sw $t0, -8160($fp)
	lw $t1, -8160($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -8152($fp)
label377:
	li $t0, 0
	sw $t0, -8164($fp)
	li $t0, 61429
	sw $t0, -8168($fp)
	lw $t1, -8168($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label381:
	lw $t0, -2928($fp)
	sw $t0, -8172($fp)
	lw $t1, -8172($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -8164($fp)
label380:
	addi $sp, $sp, -4
	lw $t0, -8152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8176($fp)
	addi $sp, $sp, 12
	lw $t1, -8176($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label372
label375:
	lw $t0, -2376($fp)
	sw $t0, -8180($fp)
	lw $t1, -8180($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label374
label374:
	addi $t0, $fp, -276
	sw $t0, -8184($fp)
	lw $t0, -564($fp)
	sw $t0, -8188($fp)
	li $t0, 4
	lw $t1, -8188($fp)
	mul $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t0, -8192($fp)
	lw $t1, -8184($fp)
	add $t0, $t0, $t1
	sw $t0, -8196($fp)
	lw $t0, -8196($fp)
	lw $t1, 0($t0)
	sw $t1, -8200($fp)
	li $t0, 50408
	sw $t0, -8204($fp)
	li $t0, 62238
	sw $t0, -8208($fp)
	lw $t0, -8204($fp)
	lw $t1, -8208($fp)
	sub $t0, $t0, $t1
	sw $t0, -8212($fp)
	lw $t1, -8200($fp)
	lw $t2, -8212($fp)
	beq $t1, $t2, label371
	j label372
label371:
	li $t0, 0
	sw $t0, -8216($fp)
	li $t0, 0
	sw $t0, -8220($fp)
	lw $t0, -2604($fp)
	sw $t0, -8224($fp)
	lw $t1, -8224($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label386:
	li $t0, 1
	sw $t0, -8220($fp)
label387:
	addi $t0, $fp, -100
	sw $t0, -8228($fp)
	li $t0, 7
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
	li $t0, 0
	lw $t1, -8244($fp)
	sub $t0, $t0, $t1
	sw $t0, -8248($fp)
	addi $t0, $fp, -104
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
	addi $sp, $sp, -4
	lw $t0, -8248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8272($fp)
	addi $sp, $sp, 12
	lw $t0, -8220($fp)
	lw $t1, -8272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8276($fp)
	li $t0, 0
	lw $t1, -8276($fp)
	sub $t0, $t0, $t1
	sw $t0, -8280($fp)
	lw $t1, -8280($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label385:
	lw $t0, -576($fp)
	sw $t0, -8284($fp)
	li $t0, 33697
	sw $t0, -8288($fp)
	lw $t0, -8284($fp)
	lw $t1, -8288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8292($fp)
	lw $t1, -8292($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label384
label384:
	li $t0, 30613
	sw $t0, -8296($fp)
	lw $t1, -8296($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -8216($fp)
label383:
	lw $ra, -4($fp)
	lw $v0, -8216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label373
label372:
	li $t0, 65236
	sw $t0, -8300($fp)
	li $t0, 0
	lw $t1, -8300($fp)
	sub $t0, $t0, $t1
	sw $t0, -8304($fp)
	li $t0, 38402
	sw $t0, -8308($fp)
	lw $t1, -8304($fp)
	lw $t2, -8308($fp)
	bne $t1, $t2, label393
	j label391
label393:
	li $t0, 37841
	sw $t0, -8312($fp)
	lw $t0, -1308($fp)
	sw $t0, -8316($fp)
	lw $t0, -8312($fp)
	lw $t1, -8316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8320($fp)
	li $t0, 56712
	sw $t0, -8324($fp)
	addi $sp, $sp, -4
	lw $t0, -8320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8328($fp)
	addi $sp, $sp, 12
	lw $t1, -8328($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label391
label392:
	li $t0, 19160
	sw $t0, -8332($fp)
	lw $t0, -2892($fp)
	sw $t0, -8336($fp)
	lw $t0, -8332($fp)
	lw $t1, -8336($fp)
	add $t0, $t0, $t1
	sw $t0, -8340($fp)
	lw $t0, -2940($fp)
	sw $t0, -8344($fp)
	lw $t1, -8340($fp)
	lw $t2, -8344($fp)
	bne $t1, $t2, label388
	j label391
label391:
	li $t0, 0
	sw $t0, -8348($fp)
	lw $t0, -588($fp)
	sw $t0, -8352($fp)
	li $t0, 0
	lw $t1, -8352($fp)
	sub $t0, $t0, $t1
	sw $t0, -8356($fp)
	lw $t0, -1848($fp)
	sw $t0, -8360($fp)
	lw $t1, -8356($fp)
	lw $t2, -8360($fp)
	ble $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -8348($fp)
label395:
	li $t0, 9463
	sw $t0, -8364($fp)
	addi $sp, $sp, -4
	lw $t0, -8348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8368($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -68
	sw $t0, -8372($fp)
	lw $t0, -744($fp)
	sw $t0, -8376($fp)
	li $t0, 4
	lw $t1, -8376($fp)
	mul $t0, $t0, $t1
	sw $t0, -8380($fp)
	lw $t0, -8380($fp)
	lw $t1, -8372($fp)
	add $t0, $t0, $t1
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	lw $t1, 0($t0)
	sw $t1, -8388($fp)
	lw $t1, -8368($fp)
	lw $t2, -8388($fp)
	ble $t1, $t2, label388
	j label389
label388:
	li $t0, 0
	sw $t0, -8392($fp)
	li $t0, 0
	sw $t0, -8396($fp)
	li $t0, 0
	sw $t0, -8400($fp)
	lw $t0, -1884($fp)
	sw $t0, -8404($fp)
	li $t0, 47742
	sw $t0, -8408($fp)
	lw $t0, -8404($fp)
	lw $t1, -8408($fp)
	sub $t0, $t0, $t1
	sw $t0, -8412($fp)
	li $t0, 23804
	sw $t0, -8416($fp)
	lw $t1, -8412($fp)
	lw $t2, -8416($fp)
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -8400($fp)
label401:
	li $t0, 0
	sw $t0, -8420($fp)
	li $t0, 20205
	sw $t0, -8424($fp)
	li $t0, 3421
	sw $t0, -8428($fp)
	lw $t0, -8424($fp)
	lw $t1, -8428($fp)
	sub $t0, $t0, $t1
	sw $t0, -8432($fp)
	li $t0, 22071
	sw $t0, -8436($fp)
	lw $t1, -8432($fp)
	lw $t2, -8436($fp)
	bge $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -8420($fp)
label403:
	li $t0, 0
	sw $t0, -8440($fp)
	lw $t0, -2700($fp)
	sw $t0, -8444($fp)
	lw $t1, -8444($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label407
label407:
	lw $t0, -2712($fp)
	sw $t0, -8448($fp)
	lw $t1, -8448($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label406
label406:
	lw $t0, -2808($fp)
	sw $t0, -8452($fp)
	lw $t1, -8452($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -8440($fp)
label405:
	addi $sp, $sp, -4
	lw $t0, -8420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8440($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8456($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -8460($fp)
	li $t0, 0
	sw $t0, -8464($fp)
	li $t0, 48235
	sw $t0, -8468($fp)
	lw $t1, -8468($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label413:
	li $t0, 39339
	sw $t0, -8472($fp)
	lw $t1, -8472($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -8464($fp)
label412:
	li $t0, 0
	sw $t0, -8476($fp)
	li $t0, 0
	sw $t0, -8480($fp)
	li $t0, 38848
	sw $t0, -8484($fp)
	li $t0, 65293
	sw $t0, -8488($fp)
	lw $t1, -8484($fp)
	lw $t2, -8488($fp)
	ble $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -8480($fp)
label417:
	lw $t0, -1704($fp)
	sw $t0, -8492($fp)
	lw $t1, -8480($fp)
	lw $t2, -8492($fp)
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -8476($fp)
label415:
	li $t0, 0
	sw $t0, -8496($fp)
	li $t0, 46287
	sw $t0, -8500($fp)
	lw $t1, -8500($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -8496($fp)
label419:
	li $t0, 0
	sw $t0, -8504($fp)
	li $t0, 0
	sw $t0, -8508($fp)
	li $t0, 50862
	sw $t0, -8512($fp)
	lw $t1, -8512($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label422:
	li $t0, 1
	sw $t0, -8508($fp)
label423:
	li $t0, 5261
	sw $t0, -8516($fp)
	lw $t1, -8508($fp)
	lw $t2, -8516($fp)
	ble $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -8504($fp)
label421:
	addi $t0, $fp, -292
	sw $t0, -8520($fp)
	li $t0, 0
	sw $t0, -8524($fp)
	li $t0, 4
	lw $t1, -8524($fp)
	mul $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	lw $t1, -8520($fp)
	add $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8532($fp)
	lw $t1, 0($t0)
	sw $t1, -8536($fp)
	li $t0, 0
	sw $t0, -8540($fp)
	li $t0, 27244
	sw $t0, -8544($fp)
	li $t0, 26908
	sw $t0, -8548($fp)
	lw $t0, -8544($fp)
	lw $t1, -8548($fp)
	add $t0, $t0, $t1
	sw $t0, -8552($fp)
	li $t0, 8341
	sw $t0, -8556($fp)
	lw $t1, -8552($fp)
	lw $t2, -8556($fp)
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -8540($fp)
label425:
	li $t0, 0
	sw $t0, -8560($fp)
	li $t0, 35732
	sw $t0, -8564($fp)
	lw $t0, -1164($fp)
	sw $t0, -8568($fp)
	lw $t0, -8564($fp)
	lw $t1, -8568($fp)
	add $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t1, -8572($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label428:
	li $t0, 36035
	sw $t0, -8576($fp)
	lw $t1, -8576($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -8560($fp)
label427:
	li $t0, 36335
	sw $t0, -8580($fp)
	li $t0, 54378
	sw $t0, -8584($fp)
	lw $t0, -8580($fp)
	lw $t1, -8584($fp)
	mul $t0, $t0, $t1
	sw $t0, -8588($fp)
	li $t0, 0
	sw $t0, -8592($fp)
	li $t0, 49216
	sw $t0, -8596($fp)
	li $t0, 20681
	sw $t0, -8600($fp)
	lw $t0, -8596($fp)
	lw $t1, -8600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8604($fp)
	li $t0, 5118
	sw $t0, -8608($fp)
	lw $t1, -8604($fp)
	lw $t2, -8608($fp)
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -8592($fp)
label430:
	li $t0, 0
	sw $t0, -8612($fp)
	li $t0, 0
	sw $t0, -8616($fp)
	li $t0, 24035
	sw $t0, -8620($fp)
	li $t0, 47862
	sw $t0, -8624($fp)
	lw $t1, -8620($fp)
	lw $t2, -8624($fp)
	bgt $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -8616($fp)
label434:
	li $t0, 20132
	sw $t0, -8628($fp)
	lw $t1, -8616($fp)
	lw $t2, -8628($fp)
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -8612($fp)
label432:
	li $t0, 0
	sw $t0, -8632($fp)
	li $t0, 23430
	sw $t0, -8636($fp)
	lw $t1, -8636($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label435:
	li $t0, 1
	sw $t0, -8632($fp)
label436:
	li $t0, 62990
	sw $t0, -8640($fp)
	addi $sp, $sp, -4
	lw $t0, -8588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8640($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8644($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -284
	sw $t0, -8648($fp)
	lw $t0, -2688($fp)
	sw $t0, -8652($fp)
	li $t0, 4
	lw $t1, -8652($fp)
	mul $t0, $t0, $t1
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	lw $t1, -8648($fp)
	add $t0, $t0, $t1
	sw $t0, -8660($fp)
	lw $t0, -8660($fp)
	lw $t1, 0($t0)
	sw $t1, -8664($fp)
	lw $t0, -828($fp)
	sw $t0, -8668($fp)
	li $t0, 0
	sw $t0, -8672($fp)
	li $t0, 0
	sw $t0, -8676($fp)
	li $t0, 27537
	sw $t0, -8680($fp)
	li $t0, 20383
	sw $t0, -8684($fp)
	lw $t1, -8680($fp)
	lw $t2, -8684($fp)
	beq $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -8676($fp)
label440:
	lw $t0, -2928($fp)
	sw $t0, -8688($fp)
	lw $t1, -8676($fp)
	lw $t2, -8688($fp)
	bne $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -8672($fp)
label438:
	lw $t0, -1716($fp)
	sw $t0, -8692($fp)
	addi $t0, $fp, -292
	sw $t0, -8696($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -8716($fp)
	li $t0, 20448
	sw $t0, -8720($fp)
	lw $t1, -8720($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -8716($fp)
label442:
	addi $sp, $sp, -4
	lw $t0, -8668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8716($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8724($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -8540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8724($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8728($fp)
	addi $sp, $sp, 24
	li $t0, 46404
	sw $t0, -8732($fp)
	lw $t0, -8728($fp)
	lw $t1, -8732($fp)
	mul $t0, $t0, $t1
	sw $t0, -8736($fp)
	li $t0, 490
	sw $t0, -8740($fp)
	addi $sp, $sp, -4
	lw $t0, -8496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8740($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8744($fp)
	addi $sp, $sp, 24
	li $t0, 26978
	sw $t0, -8748($fp)
	lw $t0, -8744($fp)
	lw $t1, -8748($fp)
	sub $t0, $t0, $t1
	sw $t0, -8752($fp)
	li $t0, 0
	sw $t0, -8756($fp)
	lw $t0, -840($fp)
	sw $t0, -8760($fp)
	li $t0, 0
	lw $t1, -8760($fp)
	sub $t0, $t0, $t1
	sw $t0, -8764($fp)
	lw $t1, -8764($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label445
label445:
	lw $t0, -852($fp)
	sw $t0, -8768($fp)
	lw $t1, -8768($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -8756($fp)
label444:
	li $t0, 0
	sw $t0, -8772($fp)
	li $t0, 0
	sw $t0, -8776($fp)
	lw $t0, -2616($fp)
	sw $t0, -8780($fp)
	li $t0, 19006
	sw $t0, -8784($fp)
	lw $t1, -8780($fp)
	lw $t2, -8784($fp)
	bge $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -8776($fp)
label449:
	li $t0, 21256
	sw $t0, -8788($fp)
	lw $t1, -8776($fp)
	lw $t2, -8788($fp)
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -8772($fp)
label447:
	addi $sp, $sp, -4
	lw $t0, -8464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8772($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8792($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8796($fp)
	lw $t0, -1776($fp)
	sw $t0, -8800($fp)
	li $t0, 41652
	sw $t0, -8804($fp)
	lw $t1, -8800($fp)
	lw $t2, -8804($fp)
	bne $t1, $t2, label452
	j label451
label452:
	li $t0, 33587
	sw $t0, -8808($fp)
	lw $t1, -8808($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -8796($fp)
label451:
	li $t0, 0
	sw $t0, -8812($fp)
	lw $t0, -852($fp)
	sw $t0, -8816($fp)
	lw $t0, -2592($fp)
	sw $t0, -8820($fp)
	lw $t0, -8816($fp)
	lw $t1, -8820($fp)
	add $t0, $t0, $t1
	sw $t0, -8824($fp)
	lw $t0, -1764($fp)
	sw $t0, -8828($fp)
	lw $t1, -8824($fp)
	lw $t2, -8828($fp)
	bge $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -8812($fp)
label454:
	lw $t0, -2940($fp)
	sw $t0, -8832($fp)
	li $t0, 0
	sw $t0, -8836($fp)
	li $t0, 34426
	sw $t0, -8840($fp)
	li $t0, 26495
	sw $t0, -8844($fp)
	lw $t0, -8840($fp)
	lw $t1, -8844($fp)
	mul $t0, $t0, $t1
	sw $t0, -8848($fp)
	lw $t0, -1140($fp)
	sw $t0, -8852($fp)
	lw $t1, -8848($fp)
	lw $t2, -8852($fp)
	beq $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -8836($fp)
label456:
	addi $sp, $sp, -4
	lw $t0, -8792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8836($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8856($fp)
	addi $sp, $sp, 24
	lw $t1, -8856($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label409
label410:
	lw $t0, -2688($fp)
	sw $t0, -8860($fp)
	lw $t1, -8860($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -8460($fp)
label409:
	lw $t0, -2940($fp)
	sw $t0, -8864($fp)
	li $t0, 4458
	sw $t0, -8868($fp)
	lw $t0, -8864($fp)
	lw $t1, -8868($fp)
	mul $t0, $t0, $t1
	sw $t0, -8872($fp)
	lw $t0, -1140($fp)
	sw $t0, -8876($fp)
	li $t0, 11451
	sw $t0, -8880($fp)
	lw $t0, -8876($fp)
	lw $t1, -8880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8884($fp)
	lw $t0, -1692($fp)
	sw $t0, -8888($fp)
	lw $t0, -8884($fp)
	lw $t1, -8888($fp)
	sub $t0, $t0, $t1
	sw $t0, -8892($fp)
	addi $sp, $sp, -4
	lw $t0, -8400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8892($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8896($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -8896($fp)
	sub $t0, $t0, $t1
	sw $t0, -8900($fp)
	lw $t1, -8900($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label398
label398:
	li $t0, 1
	sw $t0, -8396($fp)
label399:
	li $t0, 38618
	sw $t0, -8904($fp)
	li $t0, 0
	sw $t0, -8908($fp)
	li $t0, 1084
	sw $t0, -8912($fp)
	lw $t0, -2568($fp)
	sw $t0, -8916($fp)
	lw $t0, -8912($fp)
	lw $t1, -8916($fp)
	sub $t0, $t0, $t1
	sw $t0, -8920($fp)
	li $t0, 38355
	sw $t0, -8924($fp)
	lw $t1, -8920($fp)
	lw $t2, -8924($fp)
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -8908($fp)
label458:
	addi $t0, $fp, -168
	sw $t0, -8928($fp)
	lw $t0, -1452($fp)
	sw $t0, -8932($fp)
	li $t0, 4
	lw $t1, -8932($fp)
	mul $t0, $t0, $t1
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	lw $t1, -8928($fp)
	add $t0, $t0, $t1
	sw $t0, -8940($fp)
	lw $t0, -8940($fp)
	lw $t1, 0($t0)
	sw $t1, -8944($fp)
	lw $t0, -768($fp)
	sw $t0, -8948($fp)
	lw $t0, -8944($fp)
	lw $t1, -8948($fp)
	mul $t0, $t0, $t1
	sw $t0, -8952($fp)
	lw $t0, -1728($fp)
	sw $t0, -8956($fp)
	li $t0, 0
	sw $t0, -8960($fp)
	lw $t0, -2568($fp)
	sw $t0, -8964($fp)
	li $t0, 11374
	sw $t0, -8968($fp)
	lw $t0, -8964($fp)
	lw $t1, -8968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8972($fp)
	lw $t0, -2568($fp)
	sw $t0, -8976($fp)
	lw $t1, -8972($fp)
	lw $t2, -8976($fp)
	beq $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -8960($fp)
label460:
	lw $t0, -2556($fp)
	sw $t0, -8980($fp)
	lw $t0, -1140($fp)
	sw $t0, -8984($fp)
	lw $t0, -8980($fp)
	lw $t1, -8984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8988($fp)
	li $t0, 2320
	sw $t0, -8992($fp)
	lw $t0, -8988($fp)
	lw $t1, -8992($fp)
	mul $t0, $t0, $t1
	sw $t0, -8996($fp)
	addi $sp, $sp, -4
	lw $t0, -8908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8996($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9000($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -9000($fp)
	sub $t0, $t0, $t1
	sw $t0, -9004($fp)
	li $t0, 0
	sw $t0, -9008($fp)
	li $t0, 22532
	sw $t0, -9012($fp)
	li $t0, 30888
	sw $t0, -9016($fp)
	lw $t0, -9012($fp)
	lw $t1, -9016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9020($fp)
	lw $t0, -1764($fp)
	sw $t0, -9024($fp)
	lw $t1, -9020($fp)
	lw $t2, -9024($fp)
	bgt $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -9008($fp)
label462:
	lw $t0, -2784($fp)
	sw $t0, -9028($fp)
	li $t0, 31520
	sw $t0, -9032($fp)
	li $t0, 0
	lw $t1, -9032($fp)
	sub $t0, $t0, $t1
	sw $t0, -9036($fp)
	li $t0, 0
	lw $t1, -9036($fp)
	sub $t0, $t0, $t1
	sw $t0, -9040($fp)
	li $t0, 0
	sw $t0, -9044($fp)
	li $t0, 0
	sw $t0, -9048($fp)
	li $t0, 1851
	sw $t0, -9052($fp)
	li $t0, 25769
	sw $t0, -9056($fp)
	lw $t1, -9052($fp)
	lw $t2, -9056($fp)
	beq $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -9048($fp)
label466:
	lw $t0, -2964($fp)
	sw $t0, -9060($fp)
	lw $t1, -9048($fp)
	lw $t2, -9060($fp)
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -9044($fp)
label464:
	addi $sp, $sp, -4
	lw $t0, -9004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9044($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9064($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -9068($fp)
	li $t0, 47840
	sw $t0, -9072($fp)
	lw $t1, -9072($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label467
label467:
	li $t0, 1
	sw $t0, -9068($fp)
label468:
	li $t0, 0
	lw $t1, -9068($fp)
	sub $t0, $t0, $t1
	sw $t0, -9076($fp)
	lw $t0, -2688($fp)
	sw $t0, -9080($fp)
	li $t0, 5637
	sw $t0, -9084($fp)
	lw $t0, -9080($fp)
	lw $t1, -9084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9088($fp)
	li $t0, 19525
	sw $t0, -9092($fp)
	lw $t0, -9092($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -9096($fp)
	addi $sp, $sp, -4
	lw $t0, -8904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9096($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9100($fp)
	addi $sp, $sp, 24
	lw $t0, -8396($fp)
	lw $t1, -9100($fp)
	add $t0, $t0, $t1
	sw $t0, -9104($fp)
	addi $t0, $fp, -284
	sw $t0, -9108($fp)
	addi $t0, $fp, -144
	sw $t0, -9112($fp)
	lw $t0, -1140($fp)
	sw $t0, -9116($fp)
	li $t0, 4
	lw $t1, -9116($fp)
	mul $t0, $t0, $t1
	sw $t0, -9120($fp)
	lw $t0, -9120($fp)
	lw $t1, -9112($fp)
	add $t0, $t0, $t1
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	lw $t1, 0($t0)
	sw $t1, -9128($fp)
	li $t0, 4
	lw $t1, -9128($fp)
	mul $t0, $t0, $t1
	sw $t0, -9132($fp)
	lw $t0, -9132($fp)
	lw $t1, -9108($fp)
	add $t0, $t0, $t1
	sw $t0, -9136($fp)
	lw $t0, -9136($fp)
	lw $t1, 0($t0)
	sw $t1, -9140($fp)
	lw $t1, -9104($fp)
	lw $t2, -9140($fp)
	blt $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -8392($fp)
label397:
	lw $ra, -4($fp)
	lw $v0, -8392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label390
label389:
	li $t0, 0
	sw $t0, -9144($fp)
	lw $t0, -1536($fp)
	sw $t0, -9148($fp)
	addi $t0, $fp, -164
	sw $t0, -9152($fp)
	li $t0, 3
	sw $t0, -9156($fp)
	li $t0, 4
	lw $t1, -9156($fp)
	mul $t0, $t0, $t1
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	lw $t1, -9152($fp)
	add $t0, $t0, $t1
	sw $t0, -9164($fp)
	lw $t0, -9164($fp)
	lw $t1, 0($t0)
	sw $t1, -9168($fp)
	lw $t1, -9148($fp)
	lw $t2, -9168($fp)
	bgt $t1, $t2, label471
	j label470
label471:
	li $t0, 19486
	sw $t0, -9172($fp)
	li $t0, 64364
	sw $t0, -9176($fp)
	lw $t0, -9172($fp)
	lw $t1, -9176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9180($fp)
	li $t0, 0
	lw $t1, -9180($fp)
	sub $t0, $t0, $t1
	sw $t0, -9184($fp)
	li $t0, 952
	sw $t0, -9188($fp)
	li $t0, 4813
	sw $t0, -9192($fp)
	lw $t0, -9188($fp)
	lw $t1, -9192($fp)
	mul $t0, $t0, $t1
	sw $t0, -9196($fp)
	lw $t0, -9184($fp)
	lw $t1, -9196($fp)
	sub $t0, $t0, $t1
	sw $t0, -9200($fp)
	lw $t1, -9200($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -9144($fp)
label470:
	lw $ra, -4($fp)
	lw $v0, -9144($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label390:
label373:
label354:
	j label345
label344:
label472:
	lw $t0, -2688($fp)
	sw $t0, -9204($fp)
	lw $t0, -2880($fp)
	sw $t0, -9208($fp)
	lw $t0, -9204($fp)
	lw $t1, -9208($fp)
	sub $t0, $t0, $t1
	sw $t0, -9212($fp)
	lw $t0, -312($fp)
	sw $t0, -9216($fp)
	lw $t0, -9212($fp)
	lw $t1, -9216($fp)
	sub $t0, $t0, $t1
	sw $t0, -9220($fp)
	addi $t0, $fp, -168
	sw $t0, -9224($fp)
	li $t0, 0
	sw $t0, -9228($fp)
	li $t0, 4
	lw $t1, -9228($fp)
	mul $t0, $t0, $t1
	sw $t0, -9232($fp)
	lw $t0, -9232($fp)
	lw $t1, -9224($fp)
	add $t0, $t0, $t1
	sw $t0, -9236($fp)
	lw $t0, -9236($fp)
	lw $t1, 0($t0)
	sw $t1, -9240($fp)
	lw $t0, -9220($fp)
	lw $t1, -9240($fp)
	sub $t0, $t0, $t1
	sw $t0, -9244($fp)
	lw $t1, -9244($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label476:
	li $t0, 31791
	sw $t0, -9248($fp)
	li $t0, 42938
	sw $t0, -9252($fp)
	lw $t0, -9248($fp)
	lw $t1, -9252($fp)
	mul $t0, $t0, $t1
	sw $t0, -9256($fp)
	li $t0, 46996
	sw $t0, -9260($fp)
	lw $t0, -9256($fp)
	lw $t1, -9260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9264($fp)
	lw $t1, -9264($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label475
label475:
	li $t0, 0
	sw $t0, -9268($fp)
	li $t0, 41716
	sw $t0, -9272($fp)
	li $t0, 1
	sw $t0, -9276($fp)
	lw $t0, -9272($fp)
	lw $t1, -9276($fp)
	mul $t0, $t0, $t1
	sw $t0, -9280($fp)
	li $t0, 38812
	sw $t0, -9284($fp)
	lw $t0, -1728($fp)
	sw $t0, -9288($fp)
	lw $t0, -9284($fp)
	lw $t1, -9288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9292($fp)
	li $t0, 49408
	sw $t0, -9296($fp)
	lw $t0, -9292($fp)
	lw $t1, -9296($fp)
	sub $t0, $t0, $t1
	sw $t0, -9300($fp)
	li $t0, 17911
	sw $t0, -9304($fp)
	lw $t0, -1716($fp)
	sw $t0, -9308($fp)
	lw $t0, -9304($fp)
	lw $t1, -9308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9312($fp)
	lw $t0, -1152($fp)
	sw $t0, -9316($fp)
	li $t0, 1665
	sw $t0, -9320($fp)
	lw $t0, -9316($fp)
	lw $t1, -9320($fp)
	add $t0, $t0, $t1
	sw $t0, -9324($fp)
	lw $t0, -1704($fp)
	sw $t0, -9328($fp)
	lw $t0, -9324($fp)
	lw $t1, -9328($fp)
	sub $t0, $t0, $t1
	sw $t0, -9332($fp)
	li $t0, 0
	sw $t0, -9336($fp)
	li $t0, 14490
	sw $t0, -9340($fp)
	li $t0, 16741
	sw $t0, -9344($fp)
	lw $t0, -9340($fp)
	lw $t1, -9344($fp)
	add $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t1, -9348($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label481
label481:
	lw $t0, -1692($fp)
	sw $t0, -9352($fp)
	lw $t1, -9352($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -9336($fp)
label480:
	li $t0, 0
	sw $t0, -9356($fp)
	lw $t0, -1740($fp)
	sw $t0, -9360($fp)
	lw $t1, -9360($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -9356($fp)
label483:
	addi $sp, $sp, -4
	lw $t0, -9336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9364($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -9364($fp)
	sub $t0, $t0, $t1
	sw $t0, -9368($fp)
	addi $sp, $sp, -4
	lw $t0, -9280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9368($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9372($fp)
	addi $sp, $sp, 24
	lw $t1, -9372($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label477:
	li $t0, 1
	sw $t0, -9268($fp)
label478:
	li $t0, 0
	lw $t1, -9268($fp)
	sub $t0, $t0, $t1
	sw $t0, -9376($fp)
	lw $t1, -9376($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 55045
	sw $t0, -9380($fp)
	li $t0, 0
	sw $t0, -9384($fp)
	li $t0, 46166
	sw $t0, -9388($fp)
	lw $t1, -9388($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -9384($fp)
label488:
	lw $t0, -2688($fp)
	sw $t0, -9392($fp)
	lw $t0, -9392($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -9396($fp)
	li $t0, 0
	sw $t0, -9400($fp)
	lw $t0, -1152($fp)
	sw $t0, -9404($fp)
	lw $t0, -1740($fp)
	sw $t0, -9408($fp)
	lw $t0, -9404($fp)
	lw $t1, -9408($fp)
	add $t0, $t0, $t1
	sw $t0, -9412($fp)
	lw $t0, -1716($fp)
	sw $t0, -9416($fp)
	lw $t1, -9412($fp)
	lw $t2, -9416($fp)
	beq $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -9400($fp)
label490:
	li $t0, 0
	sw $t0, -9420($fp)
	li $t0, 0
	sw $t0, -9424($fp)
	li $t0, 0
	sw $t0, -9428($fp)
	lw $t0, 12($fp)
	sw $t0, -9432($fp)
	li $t0, 55540
	sw $t0, -9436($fp)
	lw $t1, -9432($fp)
	lw $t2, -9436($fp)
	ble $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -9428($fp)
label497:
	lw $t0, -864($fp)
	sw $t0, -9440($fp)
	lw $t1, -9428($fp)
	lw $t2, -9440($fp)
	bne $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -9424($fp)
label495:
	li $t0, 0
	sw $t0, -9444($fp)
	li $t0, 24020
	sw $t0, -9448($fp)
	lw $t1, -9448($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label499
label501:
	li $t0, 60188
	sw $t0, -9452($fp)
	lw $t1, -9452($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label500:
	li $t0, 15278
	sw $t0, -9456($fp)
	lw $t1, -9456($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -9444($fp)
label499:
	addi $sp, $sp, -4
	lw $t0, -9424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9460($fp)
	addi $sp, $sp, 12
	lw $t1, -9460($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label493
label493:
	li $t0, 17185
	sw $t0, -9464($fp)
	lw $t1, -9464($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -9420($fp)
label492:
	li $t0, 0
	sw $t0, -9468($fp)
	lw $t0, 8($fp)
	sw $t0, -9472($fp)
	lw $t1, -9472($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label502
label502:
	li $t0, 1
	sw $t0, -9468($fp)
label503:
	addi $sp, $sp, -4
	lw $t0, -9384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9468($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9476($fp)
	addi $sp, $sp, 24
	lw $t0, -9380($fp)
	lw $t1, -9476($fp)
	sub $t0, $t0, $t1
	sw $t0, -9480($fp)
	lw $t1, -9480($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label485
label484:
label504:
	li $t0, 57860
	sw $t0, -9484($fp)
	lw $t1, -9484($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label508
label509:
	li $t0, 28559
	sw $t0, -9488($fp)
	lw $t1, -9488($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label508
label508:
	lw $t0, -1836($fp)
	sw $t0, -9492($fp)
	li $t0, 47250
	sw $t0, -9496($fp)
	lw $t0, -9492($fp)
	lw $t1, -9496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9500($fp)
	lw $t0, -2616($fp)
	sw $t0, -9504($fp)
	lw $t1, -9500($fp)
	lw $t2, -9504($fp)
	ble $t1, $t2, label505
	j label507
label507:
	li $t0, 0
	sw $t0, -9508($fp)
	li $t0, 60032
	sw $t0, -9512($fp)
	li $t0, 57733
	sw $t0, -9516($fp)
	lw $t0, -9512($fp)
	lw $t1, -9516($fp)
	sub $t0, $t0, $t1
	sw $t0, -9520($fp)
	lw $t1, -9520($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label512
label512:
	li $t0, 55562
	sw $t0, -9524($fp)
	lw $t1, -9524($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -9508($fp)
label511:
	li $t0, 0
	sw $t0, -9528($fp)
	addi $t0, $fp, -104
	sw $t0, -9532($fp)
	lw $t0, -2976($fp)
	sw $t0, -9536($fp)
	li $t0, 4
	lw $t1, -9536($fp)
	mul $t0, $t0, $t1
	sw $t0, -9540($fp)
	lw $t0, -9540($fp)
	lw $t1, -9532($fp)
	add $t0, $t0, $t1
	sw $t0, -9544($fp)
	lw $t0, -9544($fp)
	lw $t1, 0($t0)
	sw $t1, -9548($fp)
	li $t0, 12624
	sw $t0, -9552($fp)
	lw $t1, -9548($fp)
	lw $t2, -9552($fp)
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -9528($fp)
label514:
	li $t0, 0
	sw $t0, -9556($fp)
	li $t0, 12793
	sw $t0, -9560($fp)
	li $t0, 0
	lw $t1, -9560($fp)
	sub $t0, $t0, $t1
	sw $t0, -9564($fp)
	lw $t1, -9564($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label517
label517:
	li $t0, 25941
	sw $t0, -9568($fp)
	lw $t1, -9568($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -9556($fp)
label516:
	addi $sp, $sp, -4
	lw $t0, -9528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9556($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9572($fp)
	addi $sp, $sp, 12
	li $t0, 8535
	sw $t0, -9576($fp)
	lw $t0, -9576($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -9580($fp)
	li $t0, 0
	sw $t0, -9584($fp)
	addi $t0, $fp, -100
	sw $t0, -9588($fp)
	lw $t0, -2928($fp)
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
	lw $t0, -1104($fp)
	sw $t0, -9608($fp)
	lw $t1, -9604($fp)
	lw $t2, -9608($fp)
	bgt $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -9584($fp)
label519:
	li $t0, 0
	sw $t0, -9612($fp)
	lw $t0, -2916($fp)
	sw $t0, -9616($fp)
	li $t0, 0
	lw $t1, -9616($fp)
	sub $t0, $t0, $t1
	sw $t0, -9620($fp)
	li $t0, 21128
	sw $t0, -9624($fp)
	lw $t1, -9620($fp)
	lw $t2, -9624($fp)
	ble $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -9612($fp)
label521:
	addi $sp, $sp, -4
	lw $t0, -9508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9612($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9628($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -9632($fp)
	lw $t0, -1152($fp)
	sw $t0, -9636($fp)
	li $t0, 0
	lw $t1, -9636($fp)
	sub $t0, $t0, $t1
	sw $t0, -9640($fp)
	lw $t0, -900($fp)
	sw $t0, -9644($fp)
	lw $t1, -9640($fp)
	lw $t2, -9644($fp)
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -9632($fp)
label523:
	li $t0, 9707
	sw $t0, -9648($fp)
	li $t0, 11840
	sw $t0, -9652($fp)
	lw $t0, -9648($fp)
	lw $t1, -9652($fp)
	add $t0, $t0, $t1
	sw $t0, -9656($fp)
	addi $sp, $sp, -4
	lw $t0, -9632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9660($fp)
	addi $sp, $sp, 12
	lw $t0, -2724($fp)
	sw $t0, -9664($fp)
	li $t0, 1642
	sw $t0, -9668($fp)
	li $t0, 0
	sw $t0, -9672($fp)
	lw $t0, -888($fp)
	sw $t0, -9676($fp)
	lw $t1, -9676($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label526
label526:
	li $t0, 30680
	sw $t0, -9680($fp)
	lw $t1, -9680($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -9672($fp)
label525:
	addi $sp, $sp, -4
	lw $t0, -9628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9672($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9684($fp)
	addi $sp, $sp, 24
	lw $t1, -9684($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 41493
	sw $t0, -9688($fp)
	li $t0, 0
	lw $t1, -9688($fp)
	sub $t0, $t0, $t1
	sw $t0, -9692($fp)
	lw $t0, -1860($fp)
	sw $t0, -9696($fp)
	li $t0, 0
	lw $t1, -9696($fp)
	sub $t0, $t0, $t1
	sw $t0, -9700($fp)
	li $t0, 0
	lw $t1, -9700($fp)
	sub $t0, $t0, $t1
	sw $t0, -9704($fp)
	lw $t0, -9692($fp)
	lw $t1, -9704($fp)
	add $t0, $t0, $t1
	sw $t0, -9708($fp)
	lw $t1, -9708($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label530
label530:
	li $t0, 24799
	sw $t0, -9712($fp)
	li $t0, 0
	sw $t0, -9716($fp)
	li $t0, 38380
	sw $t0, -9720($fp)
	lw $t0, 4($fp)
	sw $t0, -9724($fp)
	lw $t0, -9720($fp)
	lw $t1, -9724($fp)
	add $t0, $t0, $t1
	sw $t0, -9728($fp)
	li $t0, 16539
	sw $t0, -9732($fp)
	lw $t1, -9728($fp)
	lw $t2, -9732($fp)
	ble $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -9716($fp)
label532:
	li $t0, 0
	sw $t0, -9736($fp)
	li $t0, 45579
	sw $t0, -9740($fp)
	li $t0, 27030
	sw $t0, -9744($fp)
	lw $t1, -9740($fp)
	lw $t2, -9744($fp)
	blt $t1, $t2, label535
	j label534
label535:
	li $t0, 779
	sw $t0, -9748($fp)
	lw $t1, -9748($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -9736($fp)
label534:
	li $t0, 0
	sw $t0, -9752($fp)
	li $t0, 0
	sw $t0, -9756($fp)
	lw $t0, -2580($fp)
	sw $t0, -9760($fp)
	li $t0, 24599
	sw $t0, -9764($fp)
	lw $t1, -9760($fp)
	lw $t2, -9764($fp)
	ble $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -9756($fp)
label539:
	lw $t0, -1152($fp)
	sw $t0, -9768($fp)
	lw $t1, -9756($fp)
	lw $t2, -9768($fp)
	ble $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -9752($fp)
label537:
	li $t0, 0
	sw $t0, -9772($fp)
	li $t0, 0
	sw $t0, -9776($fp)
	li $t0, 0
	sw $t0, -9780($fp)
	li $t0, 43158
	sw $t0, -9784($fp)
	lw $t0, -2592($fp)
	sw $t0, -9788($fp)
	lw $t1, -9784($fp)
	lw $t2, -9788($fp)
	bge $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -9780($fp)
label546:
	lw $t0, -2976($fp)
	sw $t0, -9792($fp)
	lw $t1, -9780($fp)
	lw $t2, -9792($fp)
	beq $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -9776($fp)
label544:
	li $t0, 0
	sw $t0, -9796($fp)
	li $t0, 0
	sw $t0, -9800($fp)
	lw $t0, -1140($fp)
	sw $t0, -9804($fp)
	li $t0, 6687
	sw $t0, -9808($fp)
	lw $t1, -9804($fp)
	lw $t2, -9808($fp)
	beq $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -9800($fp)
label550:
	li $t0, 6767
	sw $t0, -9812($fp)
	lw $t1, -9800($fp)
	lw $t2, -9812($fp)
	beq $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -9796($fp)
label548:
	addi $sp, $sp, -4
	lw $t0, -9776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9816($fp)
	addi $sp, $sp, 12
	lw $t1, -9816($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label542
label542:
	lw $t0, -2712($fp)
	sw $t0, -9820($fp)
	lw $t1, -9820($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -9772($fp)
label541:
	addi $sp, $sp, -4
	lw $t0, -9712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9772($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9824($fp)
	addi $sp, $sp, 24
	li $t0, 33033
	sw $t0, -9828($fp)
	lw $t0, -9824($fp)
	lw $t1, -9828($fp)
	add $t0, $t0, $t1
	sw $t0, -9832($fp)
	lw $t1, -9832($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 31818
	sw $t0, -9836($fp)
	j label529
label528:
	li $t0, 0
	sw $t0, -9840($fp)
	li $t0, 14803
	sw $t0, -9844($fp)
	lw $t0, -2580($fp)
	sw $t0, -9848($fp)
	lw $t0, -9844($fp)
	lw $t1, -9848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9852($fp)
	li $t0, 50218
	sw $t0, -9856($fp)
	lw $t0, -1164($fp)
	sw $t0, -9860($fp)
	lw $t0, -9856($fp)
	lw $t1, -9860($fp)
	mul $t0, $t0, $t1
	sw $t0, -9864($fp)
	li $t0, 12448
	sw $t0, -9868($fp)
	lw $t0, -9864($fp)
	lw $t1, -9868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9872($fp)
	li $t0, 13242
	sw $t0, -9876($fp)
	lw $t0, -9872($fp)
	lw $t1, -9876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9880($fp)
	lw $t1, -9852($fp)
	lw $t2, -9880($fp)
	bge $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -9840($fp)
label552:
	lw $ra, -4($fp)
	lw $v0, -9840($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label529:
	j label504
label506:
	j label486
label485:
label553:
	addi $t0, $fp, -168
	sw $t0, -9884($fp)
	li $t0, 0
	sw $t0, -9888($fp)
	lw $t0, 8($fp)
	sw $t0, -9892($fp)
	lw $t1, -9892($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label556
label556:
	li $t0, 1
	sw $t0, -9888($fp)
label557:
	li $t0, 4
	lw $t1, -9888($fp)
	mul $t0, $t0, $t1
	sw $t0, -9896($fp)
	lw $t0, -9896($fp)
	lw $t1, -9884($fp)
	add $t0, $t0, $t1
	sw $t0, -9900($fp)
	lw $t0, -9900($fp)
	lw $t1, 0($t0)
	sw $t1, -9904($fp)
	lw $t0, -2928($fp)
	sw $t0, -9908($fp)
	li $t0, 0
	sw $t0, -9912($fp)
	li $t0, 12405
	sw $t0, -9916($fp)
	lw $t1, -9916($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label558
label558:
	li $t0, 1
	sw $t0, -9912($fp)
label559:
	lw $t0, -1776($fp)
	sw $t0, -9920($fp)
	lw $t0, -9912($fp)
	lw $t1, -9920($fp)
	sub $t0, $t0, $t1
	sw $t0, -9924($fp)
	li $t0, 0
	sw $t0, -9928($fp)
	li $t0, 36012
	sw $t0, -9932($fp)
	li $t0, 0
	lw $t1, -9932($fp)
	sub $t0, $t0, $t1
	sw $t0, -9936($fp)
	lw $t1, -9936($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label560:
	li $t0, 1
	sw $t0, -9928($fp)
label561:
	li $t0, 0
	sw $t0, -9940($fp)
	addi $t0, $fp, -168
	sw $t0, -9944($fp)
	lw $t0, 16($fp)
	sw $t0, -9948($fp)
	li $t0, 4
	lw $t1, -9948($fp)
	mul $t0, $t0, $t1
	sw $t0, -9952($fp)
	lw $t0, -9952($fp)
	lw $t1, -9944($fp)
	add $t0, $t0, $t1
	sw $t0, -9956($fp)
	lw $t0, -9956($fp)
	lw $t1, 0($t0)
	sw $t1, -9960($fp)
	lw $t1, -9960($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label564
label564:
	li $t0, 49648
	sw $t0, -9964($fp)
	lw $t1, -9964($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -9940($fp)
label563:
	li $t0, 3870
	sw $t0, -9968($fp)
	lw $t0, -9968($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -9972($fp)
	li $t0, 0
	sw $t0, -9976($fp)
	li $t0, 59699
	sw $t0, -9980($fp)
	lw $t1, -9980($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label568:
	li $t0, 37808
	sw $t0, -9984($fp)
	lw $t1, -9984($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label567
label567:
	li $t0, 14883
	sw $t0, -9988($fp)
	lw $t1, -9988($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -9976($fp)
label566:
	addi $sp, $sp, -4
	lw $t0, -9924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9976($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9992($fp)
	addi $sp, $sp, 24
	lw $t0, -9908($fp)
	lw $t1, -9992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9996($fp)
	lw $t0, -9904($fp)
	lw $t1, -9996($fp)
	add $t0, $t0, $t1
	sw $t0, -10000($fp)
	lw $t1, -10000($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label555
label554:
	lw $t0, -1272($fp)
	sw $t0, -10004($fp)
	lw $t0, 20($fp)
	sw $t0, -10008($fp)
	lw $t0, -10004($fp)
	lw $t1, -10008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10012($fp)
	li $t0, 0
	lw $t1, -10012($fp)
	sub $t0, $t0, $t1
	sw $t0, -10016($fp)
	li $t0, 0
	sw $t0, -10020($fp)
	lw $t0, 12($fp)
	sw $t0, -10024($fp)
	lw $t0, -1932($fp)
	sw $t0, -10028($fp)
	lw $t1, -10024($fp)
	lw $t2, -10028($fp)
	bgt $t1, $t2, label569
	j label571
label571:
	lw $t0, 16($fp)
	sw $t0, -10032($fp)
	lw $t1, -10032($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -10020($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -10016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10036($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -10036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label553
label555:
label486:
	j label472
label474:
label345:
	j label340
label339:
	li $t0, 62441
	sw $t0, -10072($fp)
	addi $t0, $fp, -10068
	sw $t0, -10076($fp)
	li $t0, 0
	sw $t0, -10080($fp)
	lw $t0, -10080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10084($fp)
	lw $t0, -10076($fp)
	lw $t1, -10084($fp)
	add $t0, $t0, $t1
	sw $t0, -10088($fp)
	lw $t0, -10072($fp)
	lw $t1, -10088($fp)
	sw $t0, 0($t1)
	lw $t0, -10088($fp)
	lw $t1, 0($t0)
	sw $t1, -10092($fp)
	li $t0, 61953
	sw $t0, -10096($fp)
	addi $t0, $fp, -10068
	sw $t0, -10100($fp)
	li $t0, 1
	sw $t0, -10104($fp)
	lw $t0, -10104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10108($fp)
	lw $t0, -10100($fp)
	lw $t1, -10108($fp)
	add $t0, $t0, $t1
	sw $t0, -10112($fp)
	lw $t0, -10096($fp)
	lw $t1, -10112($fp)
	sw $t0, 0($t1)
	lw $t0, -10112($fp)
	lw $t1, 0($t0)
	sw $t1, -10116($fp)
	li $t0, 25029
	sw $t0, -10120($fp)
	addi $t0, $fp, -10068
	sw $t0, -10124($fp)
	li $t0, 2
	sw $t0, -10128($fp)
	lw $t0, -10128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10132($fp)
	lw $t0, -10124($fp)
	lw $t1, -10132($fp)
	add $t0, $t0, $t1
	sw $t0, -10136($fp)
	lw $t0, -10120($fp)
	lw $t1, -10136($fp)
	sw $t0, 0($t1)
	lw $t0, -10136($fp)
	lw $t1, 0($t0)
	sw $t1, -10140($fp)
	li $t0, 56938
	sw $t0, -10144($fp)
	addi $t0, $fp, -10068
	sw $t0, -10148($fp)
	li $t0, 3
	sw $t0, -10152($fp)
	lw $t0, -10152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10156($fp)
	lw $t0, -10148($fp)
	lw $t1, -10156($fp)
	add $t0, $t0, $t1
	sw $t0, -10160($fp)
	lw $t0, -10144($fp)
	lw $t1, -10160($fp)
	sw $t0, 0($t1)
	lw $t0, -10160($fp)
	lw $t1, 0($t0)
	sw $t1, -10164($fp)
	li $t0, 54150
	sw $t0, -10168($fp)
	addi $t0, $fp, -10068
	sw $t0, -10172($fp)
	li $t0, 4
	sw $t0, -10176($fp)
	lw $t0, -10176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10180($fp)
	lw $t0, -10172($fp)
	lw $t1, -10180($fp)
	add $t0, $t0, $t1
	sw $t0, -10184($fp)
	lw $t0, -10168($fp)
	lw $t1, -10184($fp)
	sw $t0, 0($t1)
	lw $t0, -10184($fp)
	lw $t1, 0($t0)
	sw $t1, -10188($fp)
	li $t0, 15056
	sw $t0, -10192($fp)
	addi $t0, $fp, -10068
	sw $t0, -10196($fp)
	li $t0, 5
	sw $t0, -10200($fp)
	lw $t0, -10200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10204($fp)
	lw $t0, -10196($fp)
	lw $t1, -10204($fp)
	add $t0, $t0, $t1
	sw $t0, -10208($fp)
	lw $t0, -10192($fp)
	lw $t1, -10208($fp)
	sw $t0, 0($t1)
	lw $t0, -10208($fp)
	lw $t1, 0($t0)
	sw $t1, -10212($fp)
	li $t0, 32895
	sw $t0, -10216($fp)
	addi $t0, $fp, -10068
	sw $t0, -10220($fp)
	li $t0, 6
	sw $t0, -10224($fp)
	lw $t0, -10224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10228($fp)
	lw $t0, -10220($fp)
	lw $t1, -10228($fp)
	add $t0, $t0, $t1
	sw $t0, -10232($fp)
	lw $t0, -10216($fp)
	lw $t1, -10232($fp)
	sw $t0, 0($t1)
	lw $t0, -10232($fp)
	lw $t1, 0($t0)
	sw $t1, -10236($fp)
	li $t0, 60838
	sw $t0, -10240($fp)
	addi $t0, $fp, -10068
	sw $t0, -10244($fp)
	li $t0, 7
	sw $t0, -10248($fp)
	lw $t0, -10248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10252($fp)
	lw $t0, -10244($fp)
	lw $t1, -10252($fp)
	add $t0, $t0, $t1
	sw $t0, -10256($fp)
	lw $t0, -10240($fp)
	lw $t1, -10256($fp)
	sw $t0, 0($t1)
	lw $t0, -10256($fp)
	lw $t1, 0($t0)
	sw $t1, -10260($fp)
	li $t0, 21823
	sw $t0, -10264($fp)
	lw $t0, -10264($fp)
	sw $t0, -10268($fp)
	lw $t0, -10268($fp)
	sw $t0, -10272($fp)
	addi $t0, $fp, -10068
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
	addi $t0, $fp, -10068
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
	addi $t0, $fp, -10068
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
	addi $t0, $fp, -10068
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
	addi $t0, $fp, -10068
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
	addi $t0, $fp, -10068
	sw $t0, -10376($fp)
	li $t0, 5
	sw $t0, -10380($fp)
	li $t0, 4
	lw $t1, -10380($fp)
	mul $t0, $t0, $t1
	sw $t0, -10384($fp)
	lw $t0, -10384($fp)
	lw $t1, -10376($fp)
	add $t0, $t0, $t1
	sw $t0, -10388($fp)
	lw $t0, -10388($fp)
	lw $t1, 0($t0)
	sw $t1, -10392($fp)
	lw $t0, -10392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -10396($fp)
	li $t0, 6
	sw $t0, -10400($fp)
	li $t0, 4
	lw $t1, -10400($fp)
	mul $t0, $t0, $t1
	sw $t0, -10404($fp)
	lw $t0, -10404($fp)
	lw $t1, -10396($fp)
	add $t0, $t0, $t1
	sw $t0, -10408($fp)
	lw $t0, -10408($fp)
	lw $t1, 0($t0)
	sw $t1, -10412($fp)
	lw $t0, -10412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -10416($fp)
	li $t0, 7
	sw $t0, -10420($fp)
	li $t0, 4
	lw $t1, -10420($fp)
	mul $t0, $t0, $t1
	sw $t0, -10424($fp)
	lw $t0, -10424($fp)
	lw $t1, -10416($fp)
	add $t0, $t0, $t1
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	lw $t1, 0($t0)
	sw $t1, -10432($fp)
	lw $t0, -10432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10268($fp)
	sw $t0, -10436($fp)
	lw $t0, -10436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -10440($fp)
	li $t0, 5
	sw $t0, -10444($fp)
	li $t0, 4
	lw $t1, -10444($fp)
	mul $t0, $t0, $t1
	sw $t0, -10448($fp)
	lw $t0, -10448($fp)
	lw $t1, -10440($fp)
	add $t0, $t0, $t1
	sw $t0, -10452($fp)
	lw $t0, -10452($fp)
	lw $t1, 0($t0)
	sw $t1, -10456($fp)
	li $t0, 0
	lw $t1, -10456($fp)
	sub $t0, $t0, $t1
	sw $t0, -10460($fp)
	li $t0, 0
	lw $t1, -10460($fp)
	sub $t0, $t0, $t1
	sw $t0, -10464($fp)
	li $t0, 0
	lw $t1, -10464($fp)
	sub $t0, $t0, $t1
	sw $t0, -10468($fp)
	lw $ra, -4($fp)
	lw $v0, -10468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 1867
	sw $t0, -10520($fp)
	lw $t0, -10520($fp)
	sw $t0, -10524($fp)
	lw $t0, -10524($fp)
	sw $t0, -10528($fp)
	li $t0, 37548
	sw $t0, -10532($fp)
	lw $t0, -10532($fp)
	sw $t0, -10536($fp)
	lw $t0, -10536($fp)
	sw $t0, -10540($fp)
	li $t0, 20680
	sw $t0, -10544($fp)
	lw $t0, -10544($fp)
	sw $t0, -10548($fp)
	lw $t0, -10548($fp)
	sw $t0, -10552($fp)
	li $t0, 40247
	sw $t0, -10556($fp)
	lw $t0, -10556($fp)
	sw $t0, -10560($fp)
	lw $t0, -10560($fp)
	sw $t0, -10564($fp)
	li $t0, 54087
	sw $t0, -10568($fp)
	lw $t0, -10568($fp)
	sw $t0, -10572($fp)
	lw $t0, -10572($fp)
	sw $t0, -10576($fp)
	li $t0, 45479
	sw $t0, -10580($fp)
	lw $t0, -10580($fp)
	sw $t0, -10584($fp)
	lw $t0, -10584($fp)
	sw $t0, -10588($fp)
	li $t0, 7744
	sw $t0, -10592($fp)
	lw $t0, -10592($fp)
	sw $t0, -10596($fp)
	lw $t0, -10596($fp)
	sw $t0, -10600($fp)
	li $t0, 20369
	sw $t0, -10604($fp)
	addi $t0, $fp, -10504
	sw $t0, -10608($fp)
	li $t0, 0
	sw $t0, -10612($fp)
	lw $t0, -10612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10616($fp)
	lw $t0, -10608($fp)
	lw $t1, -10616($fp)
	add $t0, $t0, $t1
	sw $t0, -10620($fp)
	lw $t0, -10604($fp)
	lw $t1, -10620($fp)
	sw $t0, 0($t1)
	lw $t0, -10620($fp)
	lw $t1, 0($t0)
	sw $t1, -10624($fp)
	li $t0, 60282
	sw $t0, -10628($fp)
	addi $t0, $fp, -10504
	sw $t0, -10632($fp)
	li $t0, 1
	sw $t0, -10636($fp)
	lw $t0, -10636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10640($fp)
	lw $t0, -10632($fp)
	lw $t1, -10640($fp)
	add $t0, $t0, $t1
	sw $t0, -10644($fp)
	lw $t0, -10628($fp)
	lw $t1, -10644($fp)
	sw $t0, 0($t1)
	lw $t0, -10644($fp)
	lw $t1, 0($t0)
	sw $t1, -10648($fp)
	li $t0, 57962
	sw $t0, -10652($fp)
	addi $t0, $fp, -10504
	sw $t0, -10656($fp)
	li $t0, 2
	sw $t0, -10660($fp)
	lw $t0, -10660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10664($fp)
	lw $t0, -10656($fp)
	lw $t1, -10664($fp)
	add $t0, $t0, $t1
	sw $t0, -10668($fp)
	lw $t0, -10652($fp)
	lw $t1, -10668($fp)
	sw $t0, 0($t1)
	lw $t0, -10668($fp)
	lw $t1, 0($t0)
	sw $t1, -10672($fp)
	li $t0, 32818
	sw $t0, -10676($fp)
	addi $t0, $fp, -10504
	sw $t0, -10680($fp)
	li $t0, 3
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
	li $t0, 1874
	sw $t0, -10700($fp)
	addi $t0, $fp, -10504
	sw $t0, -10704($fp)
	li $t0, 4
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
	li $t0, 5668
	sw $t0, -10724($fp)
	addi $t0, $fp, -10504
	sw $t0, -10728($fp)
	li $t0, 5
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
	li $t0, 26981
	sw $t0, -10748($fp)
	addi $t0, $fp, -10504
	sw $t0, -10752($fp)
	li $t0, 6
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
	li $t0, 39682
	sw $t0, -10772($fp)
	addi $t0, $fp, -10504
	sw $t0, -10776($fp)
	li $t0, 7
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
	li $t0, 20551
	sw $t0, -10796($fp)
	addi $t0, $fp, -10504
	sw $t0, -10800($fp)
	li $t0, 8
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
	li $t0, 30851
	sw $t0, -10820($fp)
	lw $t0, -10820($fp)
	sw $t0, -10824($fp)
	lw $t0, -10824($fp)
	sw $t0, -10828($fp)
	li $t0, 23795
	sw $t0, -10832($fp)
	lw $t0, -10832($fp)
	sw $t0, -10836($fp)
	lw $t0, -10836($fp)
	sw $t0, -10840($fp)
	li $t0, 56563
	sw $t0, -10844($fp)
	addi $t0, $fp, -10516
	sw $t0, -10848($fp)
	li $t0, 0
	sw $t0, -10852($fp)
	lw $t0, -10852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10856($fp)
	lw $t0, -10848($fp)
	lw $t1, -10856($fp)
	add $t0, $t0, $t1
	sw $t0, -10860($fp)
	lw $t0, -10844($fp)
	lw $t1, -10860($fp)
	sw $t0, 0($t1)
	lw $t0, -10860($fp)
	lw $t1, 0($t0)
	sw $t1, -10864($fp)
	li $t0, 43256
	sw $t0, -10868($fp)
	addi $t0, $fp, -10516
	sw $t0, -10872($fp)
	li $t0, 1
	sw $t0, -10876($fp)
	lw $t0, -10876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10880($fp)
	lw $t0, -10872($fp)
	lw $t1, -10880($fp)
	add $t0, $t0, $t1
	sw $t0, -10884($fp)
	lw $t0, -10868($fp)
	lw $t1, -10884($fp)
	sw $t0, 0($t1)
	lw $t0, -10884($fp)
	lw $t1, 0($t0)
	sw $t1, -10888($fp)
	li $t0, 20700
	sw $t0, -10892($fp)
	addi $t0, $fp, -10516
	sw $t0, -10896($fp)
	li $t0, 2
	sw $t0, -10900($fp)
	lw $t0, -10900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10904($fp)
	lw $t0, -10896($fp)
	lw $t1, -10904($fp)
	add $t0, $t0, $t1
	sw $t0, -10908($fp)
	lw $t0, -10892($fp)
	lw $t1, -10908($fp)
	sw $t0, 0($t1)
	lw $t0, -10908($fp)
	lw $t1, 0($t0)
	sw $t1, -10912($fp)
	li $t0, 0
	sw $t0, -10916($fp)
	li $t0, 2749
	sw $t0, -10920($fp)
	li $t0, 52981
	sw $t0, -10924($fp)
	li $t0, 0
	lw $t1, -10924($fp)
	sub $t0, $t0, $t1
	sw $t0, -10928($fp)
	addi $sp, $sp, -4
	lw $t0, -10920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10932($fp)
	addi $sp, $sp, 12
	li $t0, 12102
	sw $t0, -10936($fp)
	lw $t0, -1152($fp)
	sw $t0, -10940($fp)
	lw $t0, -10936($fp)
	lw $t1, -10940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10944($fp)
	lw $t1, -10932($fp)
	lw $t2, -10944($fp)
	bgt $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -10916($fp)
label573:
	lw $t0, -10916($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -10948($fp)
	li $t0, 0
	sw $t0, -10952($fp)
	li $t0, 0
	sw $t0, -10956($fp)
	lw $t0, -1284($fp)
	sw $t0, -10960($fp)
	lw $t0, -10824($fp)
	sw $t0, -10964($fp)
	lw $t0, -10960($fp)
	lw $t1, -10964($fp)
	sub $t0, $t0, $t1
	sw $t0, -10968($fp)
	li $t0, 41595
	sw $t0, -10972($fp)
	lw $t1, -10968($fp)
	lw $t2, -10972($fp)
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -10956($fp)
label579:
	li $t0, 0
	sw $t0, -10976($fp)
	lw $t0, -2856($fp)
	sw $t0, -10980($fp)
	lw $t0, -1764($fp)
	sw $t0, -10984($fp)
	lw $t1, -10980($fp)
	lw $t2, -10984($fp)
	bgt $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -10976($fp)
label581:
	lw $t1, -10956($fp)
	lw $t2, -10976($fp)
	beq $t1, $t2, label577
	j label575
label577:
	lw $t0, -1236($fp)
	sw $t0, -10988($fp)
	li $t0, 17805
	sw $t0, -10992($fp)
	lw $t1, -10988($fp)
	lw $t2, -10992($fp)
	ble $t1, $t2, label576
	j label575
label576:
	li $t0, 44997
	sw $t0, -10996($fp)
	li $t0, 36897
	sw $t0, -11000($fp)
	lw $t0, -10996($fp)
	lw $t1, -11000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11004($fp)
	li $t0, 39629
	sw $t0, -11008($fp)
	lw $t0, -11004($fp)
	lw $t1, -11008($fp)
	sub $t0, $t0, $t1
	sw $t0, -11012($fp)
	lw $t0, -1932($fp)
	sw $t0, -11016($fp)
	lw $t1, -11012($fp)
	lw $t2, -11016($fp)
	ble $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -10952($fp)
label575:
	lw $t0, -10836($fp)
	sw $t0, -11020($fp)
	li $t0, 36448
	sw $t0, -11024($fp)
	lw $t0, -11020($fp)
	lw $t1, -11024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11028($fp)
	li $t0, 52168
	sw $t0, -11032($fp)
	lw $t0, -11028($fp)
	lw $t1, -11032($fp)
	mul $t0, $t0, $t1
	sw $t0, -11036($fp)
	li $t0, 23952
	sw $t0, -11040($fp)
	lw $t0, -11040($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -11044($fp)
	li $t0, 0
	sw $t0, -11048($fp)
	lw $t0, -2892($fp)
	sw $t0, -11052($fp)
	lw $t0, -1752($fp)
	sw $t0, -11056($fp)
	lw $t0, -11052($fp)
	lw $t1, -11056($fp)
	mul $t0, $t0, $t1
	sw $t0, -11060($fp)
	lw $t1, -11060($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label584:
	lw $t0, -2904($fp)
	sw $t0, -11064($fp)
	lw $t1, -11064($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -11048($fp)
label583:
	li $t0, 0
	sw $t0, -11068($fp)
	li $t0, 57421
	sw $t0, -11072($fp)
	li $t0, 16078
	sw $t0, -11076($fp)
	lw $t0, -11076($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -11080($fp)
	li $t0, 0
	sw $t0, -11084($fp)
	lw $t0, -2880($fp)
	sw $t0, -11088($fp)
	li $t0, 16207
	sw $t0, -11092($fp)
	lw $t1, -11088($fp)
	lw $t2, -11092($fp)
	beq $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -11084($fp)
label588:
	lw $t0, -2880($fp)
	sw $t0, -11096($fp)
	li $t0, 0
	lw $t1, -11096($fp)
	sub $t0, $t0, $t1
	sw $t0, -11100($fp)
	li $t0, 0
	sw $t0, -11104($fp)
	li $t0, 0
	sw $t0, -11108($fp)
	lw $t0, -1152($fp)
	sw $t0, -11112($fp)
	lw $t1, -11112($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label594
label595:
	li $t0, 27527
	sw $t0, -11116($fp)
	lw $t1, -11116($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label594
label594:
	lw $t0, -1452($fp)
	sw $t0, -11120($fp)
	lw $t1, -11120($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -11108($fp)
label593:
	li $t0, 0
	sw $t0, -11124($fp)
	lw $t0, -2820($fp)
	sw $t0, -11128($fp)
	lw $t1, -11128($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label596:
	li $t0, 1
	sw $t0, -11124($fp)
label597:
	lw $t0, -2868($fp)
	sw $t0, -11132($fp)
	lw $t0, -11124($fp)
	lw $t1, -11132($fp)
	sub $t0, $t0, $t1
	sw $t0, -11136($fp)
	addi $sp, $sp, -4
	lw $t0, -11108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11136($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11140($fp)
	addi $sp, $sp, 12
	lw $t1, -11140($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label591
label591:
	li $t0, 11942
	sw $t0, -11144($fp)
	lw $t1, -11144($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -11104($fp)
label590:
	li $t0, 41496
	sw $t0, -11148($fp)
	lw $t0, -11148($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -11152($fp)
	addi $sp, $sp, -4
	lw $t0, -11080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11152($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11156($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -11072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11156($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11160($fp)
	addi $sp, $sp, 12
	lw $t1, -11160($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label585:
	li $t0, 1
	sw $t0, -11068($fp)
label586:
	lw $t0, -1272($fp)
	sw $t0, -11164($fp)
	li $t0, 55515
	sw $t0, -11168($fp)
	lw $t0, -11164($fp)
	lw $t1, -11168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11172($fp)
	li $t0, 56798
	sw $t0, -11176($fp)
	lw $t0, -11172($fp)
	lw $t1, -11176($fp)
	add $t0, $t0, $t1
	sw $t0, -11180($fp)
	addi $sp, $sp, -4
	lw $t0, -11036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11180($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11184($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -11188($fp)
	li $t0, 0
	sw $t0, -11192($fp)
	lw $t0, -804($fp)
	sw $t0, -11196($fp)
	lw $t1, -11196($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label600
label600:
	li $t0, 1
	sw $t0, -11192($fp)
label601:
	li $t0, 18893
	sw $t0, -11200($fp)
	lw $t1, -11192($fp)
	lw $t2, -11200($fp)
	bge $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -11188($fp)
label599:
	li $t0, 0
	sw $t0, -11204($fp)
	li $t0, 0
	sw $t0, -11208($fp)
	li $t0, 33676
	sw $t0, -11212($fp)
	lw $t0, -11208($fp)
	lw $t1, -11212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11216($fp)
	lw $t0, 4($fp)
	sw $t0, -11220($fp)
	lw $t1, -11216($fp)
	lw $t2, -11220($fp)
	beq $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -11204($fp)
label603:
	lw $t0, -2808($fp)
	sw $t0, -11224($fp)
	lw $t0, -1152($fp)
	sw $t0, -11228($fp)
	addi $sp, $sp, -4
	lw $t0, -11224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11228($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11232($fp)
	addi $sp, $sp, 12
	lw $t0, -1932($fp)
	sw $t0, -11236($fp)
	lw $t0, -11232($fp)
	lw $t1, -11236($fp)
	add $t0, $t0, $t1
	sw $t0, -11240($fp)
	lw $t0, -10596($fp)
	sw $t0, -11244($fp)
	lw $t0, -816($fp)
	sw $t0, -11248($fp)
	li $t0, 0
	sw $t0, -11252($fp)
	lw $t0, -2688($fp)
	sw $t0, -11256($fp)
	lw $t0, -2796($fp)
	sw $t0, -11260($fp)
	lw $t1, -11256($fp)
	lw $t2, -11260($fp)
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -11252($fp)
label605:
	lw $t0, -1764($fp)
	sw $t0, -11264($fp)
	lw $t0, -11264($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -11268($fp)
	li $t0, 0
	sw $t0, -11272($fp)
	li $t0, 0
	sw $t0, -11276($fp)
	li $t0, 22938
	sw $t0, -11280($fp)
	lw $t0, -2784($fp)
	sw $t0, -11284($fp)
	lw $t0, -11280($fp)
	lw $t1, -11284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11288($fp)
	lw $t1, -11288($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label609
label610:
	li $t0, 37650
	sw $t0, -11292($fp)
	lw $t1, -11292($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -11276($fp)
label609:
	lw $t0, -888($fp)
	sw $t0, -11296($fp)
	li $t0, 0
	lw $t1, -11296($fp)
	sub $t0, $t0, $t1
	sw $t0, -11300($fp)
	li $t0, 0
	sw $t0, -11304($fp)
	lw $t0, -10572($fp)
	sw $t0, -11308($fp)
	li $t0, 4256
	sw $t0, -11312($fp)
	lw $t0, -11308($fp)
	lw $t1, -11312($fp)
	add $t0, $t0, $t1
	sw $t0, -11316($fp)
	lw $t0, -10584($fp)
	sw $t0, -11320($fp)
	lw $t1, -11316($fp)
	lw $t2, -11320($fp)
	beq $t1, $t2, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -11304($fp)
label612:
	lw $t0, -10824($fp)
	sw $t0, -11324($fp)
	li $t0, 0
	sw $t0, -11328($fp)
	lw $t0, -1716($fp)
	sw $t0, -11332($fp)
	li $t0, 0
	lw $t1, -11332($fp)
	sub $t0, $t0, $t1
	sw $t0, -11336($fp)
	li $t0, 6939
	sw $t0, -11340($fp)
	lw $t1, -11336($fp)
	lw $t2, -11340($fp)
	beq $t1, $t2, label613
	j label614
label613:
	li $t0, 1
	sw $t0, -11328($fp)
label614:
	addi $sp, $sp, -4
	lw $t0, -11276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11328($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11344($fp)
	addi $sp, $sp, 24
	li $t0, 32445
	sw $t0, -11348($fp)
	lw $t1, -11344($fp)
	lw $t2, -11348($fp)
	ble $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -11272($fp)
label607:
	li $t0, 0
	sw $t0, -11352($fp)
	li $t0, 0
	sw $t0, -11356($fp)
	li $t0, 0
	sw $t0, -11360($fp)
	li $t0, 892
	sw $t0, -11364($fp)
	lw $t0, -10560($fp)
	sw $t0, -11368($fp)
	lw $t1, -11364($fp)
	lw $t2, -11368($fp)
	bne $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -11360($fp)
label620:
	lw $t0, -1932($fp)
	sw $t0, -11372($fp)
	lw $t1, -11360($fp)
	lw $t2, -11372($fp)
	beq $t1, $t2, label617
	j label618
label617:
	li $t0, 1
	sw $t0, -11356($fp)
label618:
	lw $t0, -2832($fp)
	sw $t0, -11376($fp)
	lw $t0, -1920($fp)
	sw $t0, -11380($fp)
	lw $t0, -10584($fp)
	sw $t0, -11384($fp)
	lw $t0, -11380($fp)
	lw $t1, -11384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11388($fp)
	li $t0, 15750
	sw $t0, -11392($fp)
	lw $t0, -11388($fp)
	lw $t1, -11392($fp)
	add $t0, $t0, $t1
	sw $t0, -11396($fp)
	li $t0, 3209
	sw $t0, -11400($fp)
	lw $t0, -11400($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -11404($fp)
	lw $t0, -1896($fp)
	sw $t0, -11408($fp)
	addi $sp, $sp, -4
	lw $t0, -11356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11408($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11412($fp)
	addi $sp, $sp, 24
	lw $t1, -11412($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label615
label615:
	li $t0, 1
	sw $t0, -11352($fp)
label616:
	li $t0, 0
	sw $t0, -11416($fp)
	li $t0, 0
	sw $t0, -11420($fp)
	li $t0, 29118
	sw $t0, -11424($fp)
	lw $t0, -10548($fp)
	sw $t0, -11428($fp)
	lw $t1, -11424($fp)
	lw $t2, -11428($fp)
	ble $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -11420($fp)
label624:
	li $t0, 50049
	sw $t0, -11432($fp)
	lw $t1, -11420($fp)
	lw $t2, -11432($fp)
	bgt $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -11416($fp)
label622:
	li $t0, 0
	sw $t0, -11436($fp)
	li $t0, 0
	sw $t0, -11440($fp)
	li $t0, 37232
	sw $t0, -11444($fp)
	li $t0, 26097
	sw $t0, -11448($fp)
	lw $t1, -11444($fp)
	lw $t2, -11448($fp)
	bge $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -11440($fp)
label628:
	lw $t0, -2628($fp)
	sw $t0, -11452($fp)
	lw $t0, -11452($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	sw $t0, -11456($fp)
	lw $t0, -10536($fp)
	sw $t0, -11460($fp)
	lw $t0, -10824($fp)
	sw $t0, -11464($fp)
	lw $t0, -11460($fp)
	lw $t1, -11464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11468($fp)
	lw $t0, -2628($fp)
	sw $t0, -11472($fp)
	lw $t0, -11468($fp)
	lw $t1, -11472($fp)
	add $t0, $t0, $t1
	sw $t0, -11476($fp)
	li $t0, 0
	sw $t0, -11480($fp)
	lw $t0, -1716($fp)
	sw $t0, -11484($fp)
	lw $t0, -1884($fp)
	sw $t0, -11488($fp)
	lw $t1, -11484($fp)
	lw $t2, -11488($fp)
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -11480($fp)
label630:
	li $t0, 9890
	sw $t0, -11492($fp)
	li $t0, 16218
	sw $t0, -11496($fp)
	lw $t0, -11492($fp)
	lw $t1, -11496($fp)
	sub $t0, $t0, $t1
	sw $t0, -11500($fp)
	addi $sp, $sp, -4
	lw $t0, -11440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11500($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11504($fp)
	addi $sp, $sp, 24
	li $t0, 32297
	sw $t0, -11508($fp)
	lw $t1, -11504($fp)
	lw $t2, -11508($fp)
	ble $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -11436($fp)
label626:
	addi $sp, $sp, -4
	lw $t0, -11416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11512($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -11512($fp)
	sub $t0, $t0, $t1
	sw $t0, -11516($fp)
	lw $t0, -2688($fp)
	sw $t0, -11520($fp)
	li $t0, 0
	sw $t0, -11524($fp)
	li $t0, 54227
	sw $t0, -11528($fp)
	li $t0, 0
	sw $t0, -11532($fp)
	li $t0, 33930
	sw $t0, -11536($fp)
	lw $t1, -11536($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label634
label636:
	lw $t0, -1872($fp)
	sw $t0, -11540($fp)
	lw $t1, -11540($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label635
label634:
	li $t0, 1
	sw $t0, -11532($fp)
label635:
	addi $sp, $sp, -4
	lw $t0, -11528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11544($fp)
	addi $sp, $sp, 12
	lw $t1, -11544($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label633
label633:
	li $t0, 25290
	sw $t0, -11548($fp)
	lw $t1, -11548($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -11524($fp)
label632:
	li $t0, 34027
	sw $t0, -11552($fp)
	lw $t0, -11552($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -11556($fp)
	addi $sp, $sp, -4
	lw $t0, -11352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11556($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11560($fp)
	addi $sp, $sp, 24
	li $t0, 64248
	sw $t0, -11564($fp)
	addi $sp, $sp, -4
	lw $t0, -11252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11564($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11568($fp)
	addi $sp, $sp, 24
	lw $t0, -1848($fp)
	sw $t0, -11572($fp)
	lw $t0, -11568($fp)
	lw $t1, -11572($fp)
	mul $t0, $t0, $t1
	sw $t0, -11576($fp)
	addi $t0, $fp, -292
	sw $t0, -11580($fp)
	lw $t0, -1860($fp)
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
	li $t0, 59837
	sw $t0, -11600($fp)
	lw $t0, -11596($fp)
	lw $t1, -11600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11604($fp)
	lw $t0, -1260($fp)
	sw $t0, -11608($fp)
	li $t0, 62666
	sw $t0, -11612($fp)
	lw $t0, -11608($fp)
	lw $t1, -11612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11616($fp)
	li $t0, 0
	sw $t0, -11620($fp)
	li $t0, 0
	sw $t0, -11624($fp)
	lw $t0, -2592($fp)
	sw $t0, -11628($fp)
	lw $t1, -11628($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label641
label642:
	lw $t0, -1872($fp)
	sw $t0, -11632($fp)
	lw $t1, -11632($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label641
label641:
	li $t0, 19251
	sw $t0, -11636($fp)
	lw $t1, -11636($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -11624($fp)
label640:
	lw $t0, -1848($fp)
	sw $t0, -11640($fp)
	addi $t0, $fp, -168
	sw $t0, -11644($fp)
	li $t0, 0
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
	li $t0, 7148
	sw $t0, -11664($fp)
	lw $t0, -11664($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -11668($fp)
	li $t0, 0
	sw $t0, -11672($fp)
	lw $t0, -1752($fp)
	sw $t0, -11676($fp)
	lw $t1, -11676($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label643
label643:
	li $t0, 1
	sw $t0, -11672($fp)
label644:
	lw $t0, -2796($fp)
	sw $t0, -11680($fp)
	lw $t0, -11672($fp)
	lw $t1, -11680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11684($fp)
	addi $sp, $sp, -4
	lw $t0, -11624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11684($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11688($fp)
	addi $sp, $sp, 24
	lw $t1, -11688($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label637:
	li $t0, 1
	sw $t0, -11620($fp)
label638:
	li $t0, 0
	sw $t0, -11692($fp)
	li $t0, 33625
	sw $t0, -11696($fp)
	lw $t1, -11696($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label645
label647:
	li $t0, 39282
	sw $t0, -11700($fp)
	lw $t1, -11700($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -11692($fp)
label646:
	li $t0, 0
	sw $t0, -11704($fp)
	li $t0, 51984
	sw $t0, -11708($fp)
	lw $t1, -11708($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -11704($fp)
label649:
	lw $t0, -1536($fp)
	sw $t0, -11712($fp)
	lw $t0, -10524($fp)
	sw $t0, -11716($fp)
	li $t0, 0
	lw $t1, -11716($fp)
	sub $t0, $t0, $t1
	sw $t0, -11720($fp)
	li $t0, 0
	sw $t0, -11724($fp)
	li $t0, 42598
	sw $t0, -11728($fp)
	lw $t1, -11728($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label653:
	lw $t0, -1152($fp)
	sw $t0, -11732($fp)
	lw $t1, -11732($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label652
label652:
	li $t0, 61562
	sw $t0, -11736($fp)
	lw $t1, -11736($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label651
label650:
	li $t0, 1
	sw $t0, -11724($fp)
label651:
	addi $t0, $fp, -10516
	sw $t0, -11740($fp)
	li $t0, 2
	sw $t0, -11744($fp)
	li $t0, 4
	lw $t1, -11744($fp)
	mul $t0, $t0, $t1
	sw $t0, -11748($fp)
	lw $t0, -11748($fp)
	lw $t1, -11740($fp)
	add $t0, $t0, $t1
	sw $t0, -11752($fp)
	lw $t0, -11752($fp)
	lw $t1, 0($t0)
	sw $t1, -11756($fp)
	li $t0, 28189
	sw $t0, -11760($fp)
	lw $t0, -11756($fp)
	lw $t1, -11760($fp)
	sub $t0, $t0, $t1
	sw $t0, -11764($fp)
	addi $sp, $sp, -4
	lw $t0, -11704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11764($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11768($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -11772($fp)
	lw $t0, -756($fp)
	sw $t0, -11776($fp)
	lw $t0, -2916($fp)
	sw $t0, -11780($fp)
	lw $t0, -11776($fp)
	lw $t1, -11780($fp)
	add $t0, $t0, $t1
	sw $t0, -11784($fp)
	lw $t1, -11784($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label655
label656:
	lw $t0, -756($fp)
	sw $t0, -11788($fp)
	lw $t1, -11788($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -11772($fp)
label655:
	addi $sp, $sp, -4
	lw $t0, -11616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11772($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11792($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -11796($fp)
	addi $t0, $fp, -168
	sw $t0, -11800($fp)
	li $t0, 0
	sw $t0, -11804($fp)
	li $t0, 4
	lw $t1, -11804($fp)
	mul $t0, $t0, $t1
	sw $t0, -11808($fp)
	lw $t0, -11808($fp)
	lw $t1, -11800($fp)
	add $t0, $t0, $t1
	sw $t0, -11812($fp)
	lw $t0, -11812($fp)
	lw $t1, 0($t0)
	sw $t1, -11816($fp)
	lw $t1, -11816($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label657
label657:
	li $t0, 1
	sw $t0, -11796($fp)
label658:
	li $t0, 16378
	sw $t0, -11820($fp)
	lw $t0, -11820($fp)
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	sw $t0, -11824($fp)
	addi $sp, $sp, -4
	lw $t0, -11796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11828($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -11248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11832($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -11832($fp)
	sub $t0, $t0, $t1
	sw $t0, -11836($fp)
	addi $sp, $sp, -4
	lw $t0, -11188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11836($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11840($fp)
	addi $sp, $sp, 24
	lw $t0, -11184($fp)
	lw $t1, -11840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11844($fp)
	li $t0, 0
	sw $t0, -11848($fp)
	li $t0, 0
	sw $t0, -11852($fp)
	li $t0, 0
	sw $t0, -11856($fp)
	li $t0, 33626
	sw $t0, -11860($fp)
	li $t0, 7422
	sw $t0, -11864($fp)
	li $t0, 26042
	sw $t0, -11868($fp)
	lw $t0, -11864($fp)
	lw $t1, -11868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11872($fp)
	lw $t1, -11860($fp)
	lw $t2, -11872($fp)
	bgt $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -11856($fp)
label664:
	lw $t0, -1140($fp)
	sw $t0, -11876($fp)
	li $t0, 0
	lw $t1, -11876($fp)
	sub $t0, $t0, $t1
	sw $t0, -11880($fp)
	lw $t1, -11856($fp)
	lw $t2, -11880($fp)
	bgt $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -11852($fp)
label662:
	addi $t0, $fp, -10504
	sw $t0, -11884($fp)
	lw $t0, -1140($fp)
	sw $t0, -11888($fp)
	li $t0, 4
	lw $t1, -11888($fp)
	mul $t0, $t0, $t1
	sw $t0, -11892($fp)
	lw $t0, -11892($fp)
	lw $t1, -11884($fp)
	add $t0, $t0, $t1
	sw $t0, -11896($fp)
	lw $t0, -11896($fp)
	lw $t1, 0($t0)
	sw $t1, -11900($fp)
	li $t0, 0
	lw $t1, -11900($fp)
	sub $t0, $t0, $t1
	sw $t0, -11904($fp)
	lw $t1, -11852($fp)
	lw $t2, -11904($fp)
	bgt $t1, $t2, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -11848($fp)
label660:
label665:
	li $t0, 54696
	sw $t0, -11908($fp)
	lw $t0, -2820($fp)
	sw $t0, -11912($fp)
	lw $t1, -11908($fp)
	lw $t2, -11912($fp)
	ble $t1, $t2, label666
	j label668
label668:
	li $t0, 0
	sw $t0, -11916($fp)
	lw $t0, -2832($fp)
	sw $t0, -11920($fp)
	lw $t1, -11920($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label669
label669:
	li $t0, 1
	sw $t0, -11916($fp)
label670:
	li $t0, 49453
	sw $t0, -11924($fp)
	lw $t0, -11916($fp)
	lw $t1, -11924($fp)
	add $t0, $t0, $t1
	sw $t0, -11928($fp)
	li $t0, 0
	sw $t0, -11932($fp)
	lw $t0, -756($fp)
	sw $t0, -11936($fp)
	lw $t1, -11936($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label674
label674:
	lw $t0, -564($fp)
	sw $t0, -11940($fp)
	lw $t1, -11940($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label673
label673:
	lw $t0, -1836($fp)
	sw $t0, -11944($fp)
	lw $t1, -11944($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -11932($fp)
label672:
	li $t0, 45608
	sw $t0, -11948($fp)
	lw $t0, -11948($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -11952($fp)
	addi $sp, $sp, -4
	lw $t0, -11932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11956($fp)
	addi $sp, $sp, 12
	li $t0, 22038
	sw $t0, -11960($fp)
	lw $t0, -11956($fp)
	lw $t1, -11960($fp)
	sub $t0, $t0, $t1
	sw $t0, -11964($fp)
	li $t0, 0
	sw $t0, -11968($fp)
	lw $t0, -312($fp)
	sw $t0, -11972($fp)
	lw $t0, -792($fp)
	sw $t0, -11976($fp)
	lw $t1, -11972($fp)
	lw $t2, -11976($fp)
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -11968($fp)
label676:
	li $t0, 0
	sw $t0, -11980($fp)
	lw $t0, 12($fp)
	sw $t0, -11984($fp)
	lw $t1, -11984($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label679
label679:
	li $t0, 32697
	sw $t0, -11988($fp)
	lw $t1, -11988($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -11980($fp)
label678:
	li $t0, 0
	sw $t0, -11992($fp)
	lw $t0, 12($fp)
	sw $t0, -11996($fp)
	lw $t1, -11996($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label682
label682:
	lw $t0, -2592($fp)
	sw $t0, -12000($fp)
	lw $t1, -12000($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -11992($fp)
label681:
	li $t0, 0
	sw $t0, -12004($fp)
	li $t0, 20318
	sw $t0, -12008($fp)
	li $t0, 12148
	sw $t0, -12012($fp)
	lw $t0, -12008($fp)
	lw $t1, -12012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12016($fp)
	lw $t0, -2856($fp)
	sw $t0, -12020($fp)
	lw $t1, -12016($fp)
	lw $t2, -12020($fp)
	bge $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -12004($fp)
label684:
	lw $t0, -2892($fp)
	sw $t0, -12024($fp)
	lw $t0, -2844($fp)
	sw $t0, -12028($fp)
	addi $sp, $sp, -4
	lw $t0, -11980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12028($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12032($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -12036($fp)
	li $t0, 43754
	sw $t0, -12040($fp)
	li $t0, 44005
	sw $t0, -12044($fp)
	lw $t1, -12040($fp)
	lw $t2, -12044($fp)
	beq $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -12036($fp)
label686:
	li $t0, 45293
	sw $t0, -12048($fp)
	li $t0, 51826
	sw $t0, -12052($fp)
	lw $t0, -12048($fp)
	lw $t1, -12052($fp)
	add $t0, $t0, $t1
	sw $t0, -12056($fp)
	addi $sp, $sp, -4
	lw $t0, -11964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12056($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12060($fp)
	addi $sp, $sp, 24
	lw $t0, -11928($fp)
	lw $t1, -12060($fp)
	add $t0, $t0, $t1
	sw $t0, -12064($fp)
	lw $t1, -12064($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label667
label666:
label687:
	lw $t0, -816($fp)
	sw $t0, -12068($fp)
	lw $t0, -12068($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -12072($fp)
	li $t0, 48915
	sw $t0, -12076($fp)
	lw $t0, -12076($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -12080($fp)
	addi $sp, $sp, -4
	lw $t0, -12072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12084($fp)
	addi $sp, $sp, 12
	lw $t0, -2844($fp)
	sw $t0, -12088($fp)
	lw $t0, -12084($fp)
	lw $t1, -12088($fp)
	mul $t0, $t0, $t1
	sw $t0, -12092($fp)
	lw $t0, -1764($fp)
	sw $t0, -12096($fp)
	li $t0, 0
	sw $t0, -12100($fp)
	li $t0, 18885
	sw $t0, -12104($fp)
	lw $t0, -768($fp)
	sw $t0, -12108($fp)
	lw $t0, -12104($fp)
	lw $t1, -12108($fp)
	add $t0, $t0, $t1
	sw $t0, -12112($fp)
	li $t0, 62172
	sw $t0, -12116($fp)
	lw $t1, -12112($fp)
	lw $t2, -12116($fp)
	bge $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -12100($fp)
label691:
	li $t0, 0
	sw $t0, -12120($fp)
	lw $t0, -1752($fp)
	sw $t0, -12124($fp)
	li $t0, 15676
	sw $t0, -12128($fp)
	lw $t0, -12124($fp)
	lw $t1, -12128($fp)
	sub $t0, $t0, $t1
	sw $t0, -12132($fp)
	lw $t1, -12132($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label694:
	li $t0, 46422
	sw $t0, -12136($fp)
	lw $t1, -12136($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -12120($fp)
label693:
	li $t0, 48136
	sw $t0, -12140($fp)
	lw $t0, -12140($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -12144($fp)
	addi $sp, $sp, -4
	lw $t0, -12120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12148($fp)
	addi $sp, $sp, 12
	li $t0, 32649
	sw $t0, -12152($fp)
	lw $t0, -12148($fp)
	lw $t1, -12152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12156($fp)
	li $t0, 0
	sw $t0, -12160($fp)
	lw $t0, -10268($fp)
	sw $t0, -12164($fp)
	lw $t1, -12164($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label696
label697:
	lw $t0, -1740($fp)
	sw $t0, -12168($fp)
	lw $t1, -12168($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label696
label695:
	li $t0, 1
	sw $t0, -12160($fp)
label696:
	li $t0, 17304
	sw $t0, -12172($fp)
	lw $t0, -1836($fp)
	sw $t0, -12176($fp)
	lw $t0, -12172($fp)
	lw $t1, -12176($fp)
	mul $t0, $t0, $t1
	sw $t0, -12180($fp)
	addi $sp, $sp, -4
	lw $t0, -12096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12180($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12184($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -12184($fp)
	sub $t0, $t0, $t1
	sw $t0, -12188($fp)
	li $t0, 0
	lw $t1, -12188($fp)
	sub $t0, $t0, $t1
	sw $t0, -12192($fp)
	lw $t1, -12092($fp)
	lw $t2, -12192($fp)
	ble $t1, $t2, label688
	j label689
label688:
	li $t0, 0
	sw $t0, -12196($fp)
	li $t0, 33541
	sw $t0, -12200($fp)
	addi $t0, $fp, -168
	sw $t0, -12204($fp)
	lw $t0, -2616($fp)
	sw $t0, -12208($fp)
	li $t0, 4
	lw $t1, -12208($fp)
	mul $t0, $t0, $t1
	sw $t0, -12212($fp)
	lw $t0, -12212($fp)
	lw $t1, -12204($fp)
	add $t0, $t0, $t1
	sw $t0, -12216($fp)
	lw $t0, -12216($fp)
	lw $t1, 0($t0)
	sw $t1, -12220($fp)
	li $t0, 25824
	sw $t0, -12224($fp)
	addi $sp, $sp, -4
	lw $t0, -12220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12228($fp)
	addi $sp, $sp, 12
	lw $t1, -12200($fp)
	lw $t2, -12228($fp)
	beq $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -12196($fp)
label699:
	j label687
label689:
	j label665
label667:
	addi $t0, $fp, -10068
	sw $t0, -12232($fp)
	li $t0, 0
	sw $t0, -12236($fp)
	li $t0, 4
	lw $t1, -12236($fp)
	mul $t0, $t0, $t1
	sw $t0, -12240($fp)
	lw $t0, -12240($fp)
	lw $t1, -12232($fp)
	add $t0, $t0, $t1
	sw $t0, -12244($fp)
	lw $t0, -12244($fp)
	lw $t1, 0($t0)
	sw $t1, -12248($fp)
	lw $t0, -12248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -12252($fp)
	li $t0, 1
	sw $t0, -12256($fp)
	li $t0, 4
	lw $t1, -12256($fp)
	mul $t0, $t0, $t1
	sw $t0, -12260($fp)
	lw $t0, -12260($fp)
	lw $t1, -12252($fp)
	add $t0, $t0, $t1
	sw $t0, -12264($fp)
	lw $t0, -12264($fp)
	lw $t1, 0($t0)
	sw $t1, -12268($fp)
	lw $t0, -12268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -12272($fp)
	li $t0, 2
	sw $t0, -12276($fp)
	li $t0, 4
	lw $t1, -12276($fp)
	mul $t0, $t0, $t1
	sw $t0, -12280($fp)
	lw $t0, -12280($fp)
	lw $t1, -12272($fp)
	add $t0, $t0, $t1
	sw $t0, -12284($fp)
	lw $t0, -12284($fp)
	lw $t1, 0($t0)
	sw $t1, -12288($fp)
	lw $t0, -12288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -12292($fp)
	li $t0, 3
	sw $t0, -12296($fp)
	li $t0, 4
	lw $t1, -12296($fp)
	mul $t0, $t0, $t1
	sw $t0, -12300($fp)
	lw $t0, -12300($fp)
	lw $t1, -12292($fp)
	add $t0, $t0, $t1
	sw $t0, -12304($fp)
	lw $t0, -12304($fp)
	lw $t1, 0($t0)
	sw $t1, -12308($fp)
	lw $t0, -12308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -12312($fp)
	li $t0, 4
	sw $t0, -12316($fp)
	li $t0, 4
	lw $t1, -12316($fp)
	mul $t0, $t0, $t1
	sw $t0, -12320($fp)
	lw $t0, -12320($fp)
	lw $t1, -12312($fp)
	add $t0, $t0, $t1
	sw $t0, -12324($fp)
	lw $t0, -12324($fp)
	lw $t1, 0($t0)
	sw $t1, -12328($fp)
	lw $t0, -12328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -12332($fp)
	li $t0, 5
	sw $t0, -12336($fp)
	li $t0, 4
	lw $t1, -12336($fp)
	mul $t0, $t0, $t1
	sw $t0, -12340($fp)
	lw $t0, -12340($fp)
	lw $t1, -12332($fp)
	add $t0, $t0, $t1
	sw $t0, -12344($fp)
	lw $t0, -12344($fp)
	lw $t1, 0($t0)
	sw $t1, -12348($fp)
	lw $t0, -12348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -12352($fp)
	li $t0, 6
	sw $t0, -12356($fp)
	li $t0, 4
	lw $t1, -12356($fp)
	mul $t0, $t0, $t1
	sw $t0, -12360($fp)
	lw $t0, -12360($fp)
	lw $t1, -12352($fp)
	add $t0, $t0, $t1
	sw $t0, -12364($fp)
	lw $t0, -12364($fp)
	lw $t1, 0($t0)
	sw $t1, -12368($fp)
	lw $t0, -12368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10068
	sw $t0, -12372($fp)
	li $t0, 7
	sw $t0, -12376($fp)
	li $t0, 4
	lw $t1, -12376($fp)
	mul $t0, $t0, $t1
	sw $t0, -12380($fp)
	lw $t0, -12380($fp)
	lw $t1, -12372($fp)
	add $t0, $t0, $t1
	sw $t0, -12384($fp)
	lw $t0, -12384($fp)
	lw $t1, 0($t0)
	sw $t1, -12388($fp)
	lw $t0, -12388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10268($fp)
	sw $t0, -12392($fp)
	lw $t0, -12392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12396($fp)
	lw $t0, -1752($fp)
	sw $t0, -12400($fp)
	lw $t0, -2628($fp)
	sw $t0, -12404($fp)
	lw $t0, -12400($fp)
	lw $t1, -12404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12408($fp)
	li $t0, 0
	lw $t1, -12408($fp)
	sub $t0, $t0, $t1
	sw $t0, -12412($fp)
	lw $t1, -12412($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label701
label702:
	li $t0, 0
	sw $t0, -12416($fp)
	lw $t0, -1776($fp)
	sw $t0, -12420($fp)
	lw $t1, -12420($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label703
label703:
	li $t0, 1
	sw $t0, -12416($fp)
label704:
	li $t0, 56480
	sw $t0, -12424($fp)
	lw $t0, -12416($fp)
	lw $t1, -12424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12428($fp)
	li $t0, 0
	sw $t0, -12432($fp)
	lw $t0, -1284($fp)
	sw $t0, -12436($fp)
	lw $t0, -1764($fp)
	sw $t0, -12440($fp)
	lw $t0, -12436($fp)
	lw $t1, -12440($fp)
	sub $t0, $t0, $t1
	sw $t0, -12444($fp)
	lw $t1, -12444($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label707
label707:
	li $t0, 893
	sw $t0, -12448($fp)
	lw $t1, -12448($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -12432($fp)
label706:
	addi $sp, $sp, -4
	lw $t0, -12428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12432($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12452($fp)
	addi $sp, $sp, 12
	lw $t0, -2628($fp)
	sw $t0, -12456($fp)
	lw $t0, -12452($fp)
	lw $t1, -12456($fp)
	mul $t0, $t0, $t1
	sw $t0, -12460($fp)
	lw $t0, -2592($fp)
	sw $t0, -12464($fp)
	lw $t0, -1836($fp)
	sw $t0, -12468($fp)
	lw $t0, -12464($fp)
	lw $t1, -12468($fp)
	sub $t0, $t0, $t1
	sw $t0, -12472($fp)
	lw $t1, -12460($fp)
	lw $t2, -12472($fp)
	bne $t1, $t2, label700
	j label701
label700:
	li $t0, 1
	sw $t0, -12396($fp)
label701:
	lw $ra, -4($fp)
	lw $v0, -12396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label340:
	j label337
label336:
	li $t0, 0
	sw $t0, -12476($fp)
	addi $t0, $fp, -176
	sw $t0, -12480($fp)
	addi $t0, $fp, -44
	sw $t0, -12484($fp)
	lw $t0, -576($fp)
	sw $t0, -12488($fp)
	li $t0, 4
	lw $t1, -12488($fp)
	mul $t0, $t0, $t1
	sw $t0, -12492($fp)
	lw $t0, -12492($fp)
	lw $t1, -12484($fp)
	add $t0, $t0, $t1
	sw $t0, -12496($fp)
	lw $t0, -12496($fp)
	lw $t1, 0($t0)
	sw $t1, -12500($fp)
	li $t0, 0
	lw $t1, -12500($fp)
	sub $t0, $t0, $t1
	sw $t0, -12504($fp)
	li $t0, 4
	lw $t1, -12504($fp)
	mul $t0, $t0, $t1
	sw $t0, -12508($fp)
	lw $t0, -12508($fp)
	lw $t1, -12480($fp)
	add $t0, $t0, $t1
	sw $t0, -12512($fp)
	lw $t0, -12512($fp)
	lw $t1, 0($t0)
	sw $t1, -12516($fp)
	li $t0, 63474
	sw $t0, -12520($fp)
	lw $t1, -12516($fp)
	lw $t2, -12520($fp)
	ble $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -12476($fp)
label709:
label337:
label130:
	lw $t0, -300($fp)
	sw $t0, -12524($fp)
	lw $t0, -12524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -12528($fp)
	lw $t0, -12528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12532($fp)
	li $t0, 0
	sw $t0, -12536($fp)
	li $t0, 4
	lw $t1, -12536($fp)
	mul $t0, $t0, $t1
	sw $t0, -12540($fp)
	lw $t0, -12540($fp)
	lw $t1, -12532($fp)
	add $t0, $t0, $t1
	sw $t0, -12544($fp)
	lw $t0, -12544($fp)
	lw $t1, 0($t0)
	sw $t1, -12548($fp)
	lw $t0, -12548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12552($fp)
	li $t0, 1
	sw $t0, -12556($fp)
	li $t0, 4
	lw $t1, -12556($fp)
	mul $t0, $t0, $t1
	sw $t0, -12560($fp)
	lw $t0, -12560($fp)
	lw $t1, -12552($fp)
	add $t0, $t0, $t1
	sw $t0, -12564($fp)
	lw $t0, -12564($fp)
	lw $t1, 0($t0)
	sw $t1, -12568($fp)
	lw $t0, -12568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12572($fp)
	li $t0, 2
	sw $t0, -12576($fp)
	li $t0, 4
	lw $t1, -12576($fp)
	mul $t0, $t0, $t1
	sw $t0, -12580($fp)
	lw $t0, -12580($fp)
	lw $t1, -12572($fp)
	add $t0, $t0, $t1
	sw $t0, -12584($fp)
	lw $t0, -12584($fp)
	lw $t1, 0($t0)
	sw $t1, -12588($fp)
	lw $t0, -12588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12592($fp)
	li $t0, 3
	sw $t0, -12596($fp)
	li $t0, 4
	lw $t1, -12596($fp)
	mul $t0, $t0, $t1
	sw $t0, -12600($fp)
	lw $t0, -12600($fp)
	lw $t1, -12592($fp)
	add $t0, $t0, $t1
	sw $t0, -12604($fp)
	lw $t0, -12604($fp)
	lw $t1, 0($t0)
	sw $t1, -12608($fp)
	lw $t0, -12608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12612($fp)
	li $t0, 4
	sw $t0, -12616($fp)
	li $t0, 4
	lw $t1, -12616($fp)
	mul $t0, $t0, $t1
	sw $t0, -12620($fp)
	lw $t0, -12620($fp)
	lw $t1, -12612($fp)
	add $t0, $t0, $t1
	sw $t0, -12624($fp)
	lw $t0, -12624($fp)
	lw $t1, 0($t0)
	sw $t1, -12628($fp)
	lw $t0, -12628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12632($fp)
	li $t0, 5
	sw $t0, -12636($fp)
	li $t0, 4
	lw $t1, -12636($fp)
	mul $t0, $t0, $t1
	sw $t0, -12640($fp)
	lw $t0, -12640($fp)
	lw $t1, -12632($fp)
	add $t0, $t0, $t1
	sw $t0, -12644($fp)
	lw $t0, -12644($fp)
	lw $t1, 0($t0)
	sw $t1, -12648($fp)
	lw $t0, -12648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12652($fp)
	li $t0, 6
	sw $t0, -12656($fp)
	li $t0, 4
	lw $t1, -12656($fp)
	mul $t0, $t0, $t1
	sw $t0, -12660($fp)
	lw $t0, -12660($fp)
	lw $t1, -12652($fp)
	add $t0, $t0, $t1
	sw $t0, -12664($fp)
	lw $t0, -12664($fp)
	lw $t1, 0($t0)
	sw $t1, -12668($fp)
	lw $t0, -12668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12672($fp)
	li $t0, 7
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
	lw $t0, -12688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12692($fp)
	li $t0, 8
	sw $t0, -12696($fp)
	li $t0, 4
	lw $t1, -12696($fp)
	mul $t0, $t0, $t1
	sw $t0, -12700($fp)
	lw $t0, -12700($fp)
	lw $t1, -12692($fp)
	add $t0, $t0, $t1
	sw $t0, -12704($fp)
	lw $t0, -12704($fp)
	lw $t1, 0($t0)
	sw $t1, -12708($fp)
	lw $t0, -12708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -12712($fp)
	li $t0, 9
	sw $t0, -12716($fp)
	li $t0, 4
	lw $t1, -12716($fp)
	mul $t0, $t0, $t1
	sw $t0, -12720($fp)
	lw $t0, -12720($fp)
	lw $t1, -12712($fp)
	add $t0, $t0, $t1
	sw $t0, -12724($fp)
	lw $t0, -12724($fp)
	lw $t1, 0($t0)
	sw $t1, -12728($fp)
	lw $t0, -12728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -12732($fp)
	lw $t0, -12732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -12736($fp)
	lw $t0, -12736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -12740($fp)
	lw $t0, -12740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -12744($fp)
	li $t0, 0
	sw $t0, -12748($fp)
	li $t0, 4
	lw $t1, -12748($fp)
	mul $t0, $t0, $t1
	sw $t0, -12752($fp)
	lw $t0, -12752($fp)
	lw $t1, -12744($fp)
	add $t0, $t0, $t1
	sw $t0, -12756($fp)
	lw $t0, -12756($fp)
	lw $t1, 0($t0)
	sw $t1, -12760($fp)
	lw $t0, -12760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -12764($fp)
	li $t0, 1
	sw $t0, -12768($fp)
	li $t0, 4
	lw $t1, -12768($fp)
	mul $t0, $t0, $t1
	sw $t0, -12772($fp)
	lw $t0, -12772($fp)
	lw $t1, -12764($fp)
	add $t0, $t0, $t1
	sw $t0, -12776($fp)
	lw $t0, -12776($fp)
	lw $t1, 0($t0)
	sw $t1, -12780($fp)
	lw $t0, -12780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -12784($fp)
	li $t0, 2
	sw $t0, -12788($fp)
	li $t0, 4
	lw $t1, -12788($fp)
	mul $t0, $t0, $t1
	sw $t0, -12792($fp)
	lw $t0, -12792($fp)
	lw $t1, -12784($fp)
	add $t0, $t0, $t1
	sw $t0, -12796($fp)
	lw $t0, -12796($fp)
	lw $t1, 0($t0)
	sw $t1, -12800($fp)
	lw $t0, -12800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -12804($fp)
	li $t0, 3
	sw $t0, -12808($fp)
	li $t0, 4
	lw $t1, -12808($fp)
	mul $t0, $t0, $t1
	sw $t0, -12812($fp)
	lw $t0, -12812($fp)
	lw $t1, -12804($fp)
	add $t0, $t0, $t1
	sw $t0, -12816($fp)
	lw $t0, -12816($fp)
	lw $t1, 0($t0)
	sw $t1, -12820($fp)
	lw $t0, -12820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -12824($fp)
	li $t0, 4
	sw $t0, -12828($fp)
	li $t0, 4
	lw $t1, -12828($fp)
	mul $t0, $t0, $t1
	sw $t0, -12832($fp)
	lw $t0, -12832($fp)
	lw $t1, -12824($fp)
	add $t0, $t0, $t1
	sw $t0, -12836($fp)
	lw $t0, -12836($fp)
	lw $t1, 0($t0)
	sw $t1, -12840($fp)
	lw $t0, -12840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -12844($fp)
	li $t0, 5
	sw $t0, -12848($fp)
	li $t0, 4
	lw $t1, -12848($fp)
	mul $t0, $t0, $t1
	sw $t0, -12852($fp)
	lw $t0, -12852($fp)
	lw $t1, -12844($fp)
	add $t0, $t0, $t1
	sw $t0, -12856($fp)
	lw $t0, -12856($fp)
	lw $t1, 0($t0)
	sw $t1, -12860($fp)
	lw $t0, -12860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -12864($fp)
	lw $t0, -12864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -12868($fp)
	lw $t0, -12868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -12872($fp)
	lw $t0, -12872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -12876($fp)
	lw $t0, -12876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -12880($fp)
	lw $t0, -12880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -12884($fp)
	lw $t0, -12884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -12888($fp)
	lw $t0, -12888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -12892($fp)
	lw $t0, -12892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -12896($fp)
	lw $t0, -12896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -12900($fp)
	lw $t0, -12900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -12904($fp)
	lw $t0, -12904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -12908($fp)
	lw $t0, -12908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -12912($fp)
	lw $t0, -12912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -12916($fp)
	lw $t0, -12916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -12920($fp)
	li $t0, 0
	sw $t0, -12924($fp)
	li $t0, 4
	lw $t1, -12924($fp)
	mul $t0, $t0, $t1
	sw $t0, -12928($fp)
	lw $t0, -12928($fp)
	lw $t1, -12920($fp)
	add $t0, $t0, $t1
	sw $t0, -12932($fp)
	lw $t0, -12932($fp)
	lw $t1, 0($t0)
	sw $t1, -12936($fp)
	lw $t0, -12936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -12940($fp)
	li $t0, 1
	sw $t0, -12944($fp)
	li $t0, 4
	lw $t1, -12944($fp)
	mul $t0, $t0, $t1
	sw $t0, -12948($fp)
	lw $t0, -12948($fp)
	lw $t1, -12940($fp)
	add $t0, $t0, $t1
	sw $t0, -12952($fp)
	lw $t0, -12952($fp)
	lw $t1, 0($t0)
	sw $t1, -12956($fp)
	lw $t0, -12956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -12960($fp)
	li $t0, 2
	sw $t0, -12964($fp)
	li $t0, 4
	lw $t1, -12964($fp)
	mul $t0, $t0, $t1
	sw $t0, -12968($fp)
	lw $t0, -12968($fp)
	lw $t1, -12960($fp)
	add $t0, $t0, $t1
	sw $t0, -12972($fp)
	lw $t0, -12972($fp)
	lw $t1, 0($t0)
	sw $t1, -12976($fp)
	lw $t0, -12976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -12980($fp)
	li $t0, 3
	sw $t0, -12984($fp)
	li $t0, 4
	lw $t1, -12984($fp)
	mul $t0, $t0, $t1
	sw $t0, -12988($fp)
	lw $t0, -12988($fp)
	lw $t1, -12980($fp)
	add $t0, $t0, $t1
	sw $t0, -12992($fp)
	lw $t0, -12992($fp)
	lw $t1, 0($t0)
	sw $t1, -12996($fp)
	lw $t0, -12996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -13000($fp)
	li $t0, 4
	sw $t0, -13004($fp)
	li $t0, 4
	lw $t1, -13004($fp)
	mul $t0, $t0, $t1
	sw $t0, -13008($fp)
	lw $t0, -13008($fp)
	lw $t1, -13000($fp)
	add $t0, $t0, $t1
	sw $t0, -13012($fp)
	lw $t0, -13012($fp)
	lw $t1, 0($t0)
	sw $t1, -13016($fp)
	lw $t0, -13016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -13020($fp)
	li $t0, 5
	sw $t0, -13024($fp)
	li $t0, 4
	lw $t1, -13024($fp)
	mul $t0, $t0, $t1
	sw $t0, -13028($fp)
	lw $t0, -13028($fp)
	lw $t1, -13020($fp)
	add $t0, $t0, $t1
	sw $t0, -13032($fp)
	lw $t0, -13032($fp)
	lw $t1, 0($t0)
	sw $t1, -13036($fp)
	lw $t0, -13036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -13040($fp)
	li $t0, 6
	sw $t0, -13044($fp)
	li $t0, 4
	lw $t1, -13044($fp)
	mul $t0, $t0, $t1
	sw $t0, -13048($fp)
	lw $t0, -13048($fp)
	lw $t1, -13040($fp)
	add $t0, $t0, $t1
	sw $t0, -13052($fp)
	lw $t0, -13052($fp)
	lw $t1, 0($t0)
	sw $t1, -13056($fp)
	lw $t0, -13056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -13060($fp)
	li $t0, 7
	sw $t0, -13064($fp)
	li $t0, 4
	lw $t1, -13064($fp)
	mul $t0, $t0, $t1
	sw $t0, -13068($fp)
	lw $t0, -13068($fp)
	lw $t1, -13060($fp)
	add $t0, $t0, $t1
	sw $t0, -13072($fp)
	lw $t0, -13072($fp)
	lw $t1, 0($t0)
	sw $t1, -13076($fp)
	lw $t0, -13076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -13080($fp)
	lw $t0, -13080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -13084($fp)
	li $t0, 0
	sw $t0, -13088($fp)
	li $t0, 4
	lw $t1, -13088($fp)
	mul $t0, $t0, $t1
	sw $t0, -13092($fp)
	lw $t0, -13092($fp)
	lw $t1, -13084($fp)
	add $t0, $t0, $t1
	sw $t0, -13096($fp)
	lw $t0, -13096($fp)
	lw $t1, 0($t0)
	sw $t1, -13100($fp)
	lw $t0, -13100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -13104($fp)
	lw $t0, -13104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -13108($fp)
	lw $t0, -13108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -13112($fp)
	lw $t0, -13112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -13116($fp)
	lw $t0, -13116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -13120($fp)
	li $t0, 0
	sw $t0, -13124($fp)
	li $t0, 4
	lw $t1, -13124($fp)
	mul $t0, $t0, $t1
	sw $t0, -13128($fp)
	lw $t0, -13128($fp)
	lw $t1, -13120($fp)
	add $t0, $t0, $t1
	sw $t0, -13132($fp)
	lw $t0, -13132($fp)
	lw $t1, 0($t0)
	sw $t1, -13136($fp)
	lw $t0, -13136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -13140($fp)
	li $t0, 1
	sw $t0, -13144($fp)
	li $t0, 4
	lw $t1, -13144($fp)
	mul $t0, $t0, $t1
	sw $t0, -13148($fp)
	lw $t0, -13148($fp)
	lw $t1, -13140($fp)
	add $t0, $t0, $t1
	sw $t0, -13152($fp)
	lw $t0, -13152($fp)
	lw $t1, 0($t0)
	sw $t1, -13156($fp)
	lw $t0, -13156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1236($fp)
	sw $t0, -13160($fp)
	lw $t0, -13160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -13164($fp)
	lw $t0, -13164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -13168($fp)
	lw $t0, -13168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -13172($fp)
	lw $t0, -13172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -13176($fp)
	lw $t0, -13176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -13180($fp)
	lw $t0, -13180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -13184($fp)
	lw $t0, -13184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -13188($fp)
	lw $t0, -13188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
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
	addi $t0, $fp, -132
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
	addi $t0, $fp, -132
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
	addi $t0, $fp, -132
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
	addi $t0, $fp, -132
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
	lw $t0, -1452($fp)
	sw $t0, -13292($fp)
	lw $t0, -13292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -13296($fp)
	li $t0, 0
	sw $t0, -13300($fp)
	li $t0, 4
	lw $t1, -13300($fp)
	mul $t0, $t0, $t1
	sw $t0, -13304($fp)
	lw $t0, -13304($fp)
	lw $t1, -13296($fp)
	add $t0, $t0, $t1
	sw $t0, -13308($fp)
	lw $t0, -13308($fp)
	lw $t1, 0($t0)
	sw $t1, -13312($fp)
	lw $t0, -13312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -13316($fp)
	li $t0, 1
	sw $t0, -13320($fp)
	li $t0, 4
	lw $t1, -13320($fp)
	mul $t0, $t0, $t1
	sw $t0, -13324($fp)
	lw $t0, -13324($fp)
	lw $t1, -13316($fp)
	add $t0, $t0, $t1
	sw $t0, -13328($fp)
	lw $t0, -13328($fp)
	lw $t1, 0($t0)
	sw $t1, -13332($fp)
	lw $t0, -13332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -13336($fp)
	li $t0, 2
	sw $t0, -13340($fp)
	li $t0, 4
	lw $t1, -13340($fp)
	mul $t0, $t0, $t1
	sw $t0, -13344($fp)
	lw $t0, -13344($fp)
	lw $t1, -13336($fp)
	add $t0, $t0, $t1
	sw $t0, -13348($fp)
	lw $t0, -13348($fp)
	lw $t1, 0($t0)
	sw $t1, -13352($fp)
	lw $t0, -13352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1536($fp)
	sw $t0, -13356($fp)
	lw $t0, -13356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -13360($fp)
	li $t0, 0
	sw $t0, -13364($fp)
	li $t0, 4
	lw $t1, -13364($fp)
	mul $t0, $t0, $t1
	sw $t0, -13368($fp)
	lw $t0, -13368($fp)
	lw $t1, -13360($fp)
	add $t0, $t0, $t1
	sw $t0, -13372($fp)
	lw $t0, -13372($fp)
	lw $t1, 0($t0)
	sw $t1, -13376($fp)
	lw $t0, -13376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -13380($fp)
	li $t0, 1
	sw $t0, -13384($fp)
	li $t0, 4
	lw $t1, -13384($fp)
	mul $t0, $t0, $t1
	sw $t0, -13388($fp)
	lw $t0, -13388($fp)
	lw $t1, -13380($fp)
	add $t0, $t0, $t1
	sw $t0, -13392($fp)
	lw $t0, -13392($fp)
	lw $t1, 0($t0)
	sw $t1, -13396($fp)
	lw $t0, -13396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -13400($fp)
	li $t0, 2
	sw $t0, -13404($fp)
	li $t0, 4
	lw $t1, -13404($fp)
	mul $t0, $t0, $t1
	sw $t0, -13408($fp)
	lw $t0, -13408($fp)
	lw $t1, -13400($fp)
	add $t0, $t0, $t1
	sw $t0, -13412($fp)
	lw $t0, -13412($fp)
	lw $t1, 0($t0)
	sw $t1, -13416($fp)
	lw $t0, -13416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -13420($fp)
	li $t0, 3
	sw $t0, -13424($fp)
	li $t0, 4
	lw $t1, -13424($fp)
	mul $t0, $t0, $t1
	sw $t0, -13428($fp)
	lw $t0, -13428($fp)
	lw $t1, -13420($fp)
	add $t0, $t0, $t1
	sw $t0, -13432($fp)
	lw $t0, -13432($fp)
	lw $t1, 0($t0)
	sw $t1, -13436($fp)
	lw $t0, -13436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -13440($fp)
	li $t0, 4
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
	addi $t0, $fp, -168
	sw $t0, -13460($fp)
	li $t0, 0
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
	lw $t0, -1692($fp)
	sw $t0, -13480($fp)
	lw $t0, -13480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1704($fp)
	sw $t0, -13484($fp)
	lw $t0, -13484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1716($fp)
	sw $t0, -13488($fp)
	lw $t0, -13488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1728($fp)
	sw $t0, -13492($fp)
	lw $t0, -13492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1740($fp)
	sw $t0, -13496($fp)
	lw $t0, -13496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -13500($fp)
	lw $t0, -13500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1764($fp)
	sw $t0, -13504($fp)
	lw $t0, -13504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1776($fp)
	sw $t0, -13508($fp)
	lw $t0, -13508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -13512($fp)
	li $t0, 0
	sw $t0, -13516($fp)
	li $t0, 4
	lw $t1, -13516($fp)
	mul $t0, $t0, $t1
	sw $t0, -13520($fp)
	lw $t0, -13520($fp)
	lw $t1, -13512($fp)
	add $t0, $t0, $t1
	sw $t0, -13524($fp)
	lw $t0, -13524($fp)
	lw $t1, 0($t0)
	sw $t1, -13528($fp)
	lw $t0, -13528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -13532($fp)
	li $t0, 1
	sw $t0, -13536($fp)
	li $t0, 4
	lw $t1, -13536($fp)
	mul $t0, $t0, $t1
	sw $t0, -13540($fp)
	lw $t0, -13540($fp)
	lw $t1, -13532($fp)
	add $t0, $t0, $t1
	sw $t0, -13544($fp)
	lw $t0, -13544($fp)
	lw $t1, 0($t0)
	sw $t1, -13548($fp)
	lw $t0, -13548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1836($fp)
	sw $t0, -13552($fp)
	lw $t0, -13552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1848($fp)
	sw $t0, -13556($fp)
	lw $t0, -13556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1860($fp)
	sw $t0, -13560($fp)
	lw $t0, -13560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1872($fp)
	sw $t0, -13564($fp)
	lw $t0, -13564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1884($fp)
	sw $t0, -13568($fp)
	lw $t0, -13568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1896($fp)
	sw $t0, -13572($fp)
	lw $t0, -13572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1908($fp)
	sw $t0, -13576($fp)
	lw $t0, -13576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1920($fp)
	sw $t0, -13580($fp)
	lw $t0, -13580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1932($fp)
	sw $t0, -13584($fp)
	lw $t0, -13584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -13588($fp)
	li $t0, 0
	sw $t0, -13592($fp)
	li $t0, 4
	lw $t1, -13592($fp)
	mul $t0, $t0, $t1
	sw $t0, -13596($fp)
	lw $t0, -13596($fp)
	lw $t1, -13588($fp)
	add $t0, $t0, $t1
	sw $t0, -13600($fp)
	lw $t0, -13600($fp)
	lw $t1, 0($t0)
	sw $t1, -13604($fp)
	lw $t0, -13604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -13608($fp)
	li $t0, 1
	sw $t0, -13612($fp)
	li $t0, 4
	lw $t1, -13612($fp)
	mul $t0, $t0, $t1
	sw $t0, -13616($fp)
	lw $t0, -13616($fp)
	lw $t1, -13608($fp)
	add $t0, $t0, $t1
	sw $t0, -13620($fp)
	lw $t0, -13620($fp)
	lw $t1, 0($t0)
	sw $t1, -13624($fp)
	lw $t0, -13624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -13628($fp)
	li $t0, 2
	sw $t0, -13632($fp)
	li $t0, 4
	lw $t1, -13632($fp)
	mul $t0, $t0, $t1
	sw $t0, -13636($fp)
	lw $t0, -13636($fp)
	lw $t1, -13628($fp)
	add $t0, $t0, $t1
	sw $t0, -13640($fp)
	lw $t0, -13640($fp)
	lw $t1, 0($t0)
	sw $t1, -13644($fp)
	lw $t0, -13644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -13648($fp)
	li $t0, 3
	sw $t0, -13652($fp)
	li $t0, 4
	lw $t1, -13652($fp)
	mul $t0, $t0, $t1
	sw $t0, -13656($fp)
	lw $t0, -13656($fp)
	lw $t1, -13648($fp)
	add $t0, $t0, $t1
	sw $t0, -13660($fp)
	lw $t0, -13660($fp)
	lw $t1, 0($t0)
	sw $t1, -13664($fp)
	lw $t0, -13664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -13668($fp)
	li $t0, 4
	sw $t0, -13672($fp)
	li $t0, 4
	lw $t1, -13672($fp)
	mul $t0, $t0, $t1
	sw $t0, -13676($fp)
	lw $t0, -13676($fp)
	lw $t1, -13668($fp)
	add $t0, $t0, $t1
	sw $t0, -13680($fp)
	lw $t0, -13680($fp)
	lw $t1, 0($t0)
	sw $t1, -13684($fp)
	lw $t0, -13684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -13688($fp)
	li $t0, 5
	sw $t0, -13692($fp)
	li $t0, 4
	lw $t1, -13692($fp)
	mul $t0, $t0, $t1
	sw $t0, -13696($fp)
	lw $t0, -13696($fp)
	lw $t1, -13688($fp)
	add $t0, $t0, $t1
	sw $t0, -13700($fp)
	lw $t0, -13700($fp)
	lw $t1, 0($t0)
	sw $t1, -13704($fp)
	lw $t0, -13704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -13708($fp)
	li $t0, 6
	sw $t0, -13712($fp)
	li $t0, 4
	lw $t1, -13712($fp)
	mul $t0, $t0, $t1
	sw $t0, -13716($fp)
	lw $t0, -13716($fp)
	lw $t1, -13708($fp)
	add $t0, $t0, $t1
	sw $t0, -13720($fp)
	lw $t0, -13720($fp)
	lw $t1, 0($t0)
	sw $t1, -13724($fp)
	lw $t0, -13724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -13728($fp)
	li $t0, 7
	sw $t0, -13732($fp)
	li $t0, 4
	lw $t1, -13732($fp)
	mul $t0, $t0, $t1
	sw $t0, -13736($fp)
	lw $t0, -13736($fp)
	lw $t1, -13728($fp)
	add $t0, $t0, $t1
	sw $t0, -13740($fp)
	lw $t0, -13740($fp)
	lw $t1, 0($t0)
	sw $t1, -13744($fp)
	lw $t0, -13744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -13748($fp)
	li $t0, 8
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
	addi $t0, $fp, -248
	sw $t0, -13768($fp)
	li $t0, 0
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
	addi $t0, $fp, -248
	sw $t0, -13788($fp)
	li $t0, 1
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
	addi $t0, $fp, -248
	sw $t0, -13808($fp)
	li $t0, 2
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
	addi $t0, $fp, -248
	sw $t0, -13828($fp)
	li $t0, 3
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
	addi $t0, $fp, -248
	sw $t0, -13848($fp)
	li $t0, 4
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
	addi $t0, $fp, -248
	sw $t0, -13868($fp)
	li $t0, 5
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
	addi $t0, $fp, -248
	sw $t0, -13888($fp)
	li $t0, 6
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
	addi $t0, $fp, -248
	sw $t0, -13908($fp)
	li $t0, 7
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
	addi $t0, $fp, -248
	sw $t0, -13928($fp)
	li $t0, 8
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
	lw $t0, -2376($fp)
	sw $t0, -13948($fp)
	lw $t0, -13948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -13952($fp)
	li $t0, 0
	sw $t0, -13956($fp)
	li $t0, 4
	lw $t1, -13956($fp)
	mul $t0, $t0, $t1
	sw $t0, -13960($fp)
	lw $t0, -13960($fp)
	lw $t1, -13952($fp)
	add $t0, $t0, $t1
	sw $t0, -13964($fp)
	lw $t0, -13964($fp)
	lw $t1, 0($t0)
	sw $t1, -13968($fp)
	lw $t0, -13968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -13972($fp)
	li $t0, 1
	sw $t0, -13976($fp)
	li $t0, 4
	lw $t1, -13976($fp)
	mul $t0, $t0, $t1
	sw $t0, -13980($fp)
	lw $t0, -13980($fp)
	lw $t1, -13972($fp)
	add $t0, $t0, $t1
	sw $t0, -13984($fp)
	lw $t0, -13984($fp)
	lw $t1, 0($t0)
	sw $t1, -13988($fp)
	lw $t0, -13988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -13992($fp)
	li $t0, 2
	sw $t0, -13996($fp)
	li $t0, 4
	lw $t1, -13996($fp)
	mul $t0, $t0, $t1
	sw $t0, -14000($fp)
	lw $t0, -14000($fp)
	lw $t1, -13992($fp)
	add $t0, $t0, $t1
	sw $t0, -14004($fp)
	lw $t0, -14004($fp)
	lw $t1, 0($t0)
	sw $t1, -14008($fp)
	lw $t0, -14008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -14012($fp)
	li $t0, 3
	sw $t0, -14016($fp)
	li $t0, 4
	lw $t1, -14016($fp)
	mul $t0, $t0, $t1
	sw $t0, -14020($fp)
	lw $t0, -14020($fp)
	lw $t1, -14012($fp)
	add $t0, $t0, $t1
	sw $t0, -14024($fp)
	lw $t0, -14024($fp)
	lw $t1, 0($t0)
	sw $t1, -14028($fp)
	lw $t0, -14028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -14032($fp)
	li $t0, 4
	sw $t0, -14036($fp)
	li $t0, 4
	lw $t1, -14036($fp)
	mul $t0, $t0, $t1
	sw $t0, -14040($fp)
	lw $t0, -14040($fp)
	lw $t1, -14032($fp)
	add $t0, $t0, $t1
	sw $t0, -14044($fp)
	lw $t0, -14044($fp)
	lw $t1, 0($t0)
	sw $t1, -14048($fp)
	lw $t0, -14048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -14052($fp)
	li $t0, 5
	sw $t0, -14056($fp)
	li $t0, 4
	lw $t1, -14056($fp)
	mul $t0, $t0, $t1
	sw $t0, -14060($fp)
	lw $t0, -14060($fp)
	lw $t1, -14052($fp)
	add $t0, $t0, $t1
	sw $t0, -14064($fp)
	lw $t0, -14064($fp)
	lw $t1, 0($t0)
	sw $t1, -14068($fp)
	lw $t0, -14068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -14072($fp)
	li $t0, 6
	sw $t0, -14076($fp)
	li $t0, 4
	lw $t1, -14076($fp)
	mul $t0, $t0, $t1
	sw $t0, -14080($fp)
	lw $t0, -14080($fp)
	lw $t1, -14072($fp)
	add $t0, $t0, $t1
	sw $t0, -14084($fp)
	lw $t0, -14084($fp)
	lw $t1, 0($t0)
	sw $t1, -14088($fp)
	lw $t0, -14088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2556($fp)
	sw $t0, -14092($fp)
	lw $t0, -14092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2568($fp)
	sw $t0, -14096($fp)
	lw $t0, -14096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2580($fp)
	sw $t0, -14100($fp)
	lw $t0, -14100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2592($fp)
	sw $t0, -14104($fp)
	lw $t0, -14104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2604($fp)
	sw $t0, -14108($fp)
	lw $t0, -14108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2616($fp)
	sw $t0, -14112($fp)
	lw $t0, -14112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2628($fp)
	sw $t0, -14116($fp)
	lw $t0, -14116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -14120($fp)
	li $t0, 0
	sw $t0, -14124($fp)
	li $t0, 4
	lw $t1, -14124($fp)
	mul $t0, $t0, $t1
	sw $t0, -14128($fp)
	lw $t0, -14128($fp)
	lw $t1, -14120($fp)
	add $t0, $t0, $t1
	sw $t0, -14132($fp)
	lw $t0, -14132($fp)
	lw $t1, 0($t0)
	sw $t1, -14136($fp)
	lw $t0, -14136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -14140($fp)
	li $t0, 1
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
	lw $t0, -2688($fp)
	sw $t0, -14160($fp)
	lw $t0, -14160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2700($fp)
	sw $t0, -14164($fp)
	lw $t0, -14164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2712($fp)
	sw $t0, -14168($fp)
	lw $t0, -14168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2724($fp)
	sw $t0, -14172($fp)
	lw $t0, -14172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -14176($fp)
	li $t0, 0
	sw $t0, -14180($fp)
	li $t0, 4
	lw $t1, -14180($fp)
	mul $t0, $t0, $t1
	sw $t0, -14184($fp)
	lw $t0, -14184($fp)
	lw $t1, -14176($fp)
	add $t0, $t0, $t1
	sw $t0, -14188($fp)
	lw $t0, -14188($fp)
	lw $t1, 0($t0)
	sw $t1, -14192($fp)
	lw $t0, -14192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -14196($fp)
	li $t0, 1
	sw $t0, -14200($fp)
	li $t0, 4
	lw $t1, -14200($fp)
	mul $t0, $t0, $t1
	sw $t0, -14204($fp)
	lw $t0, -14204($fp)
	lw $t1, -14196($fp)
	add $t0, $t0, $t1
	sw $t0, -14208($fp)
	lw $t0, -14208($fp)
	lw $t1, 0($t0)
	sw $t1, -14212($fp)
	lw $t0, -14212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2784($fp)
	sw $t0, -14216($fp)
	lw $t0, -14216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2796($fp)
	sw $t0, -14220($fp)
	lw $t0, -14220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2808($fp)
	sw $t0, -14224($fp)
	lw $t0, -14224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2820($fp)
	sw $t0, -14228($fp)
	lw $t0, -14228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2832($fp)
	sw $t0, -14232($fp)
	lw $t0, -14232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2844($fp)
	sw $t0, -14236($fp)
	lw $t0, -14236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2856($fp)
	sw $t0, -14240($fp)
	lw $t0, -14240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2868($fp)
	sw $t0, -14244($fp)
	lw $t0, -14244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2880($fp)
	sw $t0, -14248($fp)
	lw $t0, -14248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2892($fp)
	sw $t0, -14252($fp)
	lw $t0, -14252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2904($fp)
	sw $t0, -14256($fp)
	lw $t0, -14256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2916($fp)
	sw $t0, -14260($fp)
	lw $t0, -14260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2928($fp)
	sw $t0, -14264($fp)
	lw $t0, -14264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2940($fp)
	sw $t0, -14268($fp)
	lw $t0, -14268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2952($fp)
	sw $t0, -14272($fp)
	lw $t0, -14272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2964($fp)
	sw $t0, -14276($fp)
	lw $t0, -14276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2976($fp)
	sw $t0, -14280($fp)
	lw $t0, -14280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 33338
	sw $t0, -14284($fp)
	li $t0, 0
	lw $t1, -14284($fp)
	sub $t0, $t0, $t1
	sw $t0, -14288($fp)
	lw $ra, -4($fp)
	lw $v0, -14288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6880
	li $t0, 56480
	sw $t0, -216($fp)
	addi $t0, $fp, -40
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
	li $t0, 31614
	sw $t0, -240($fp)
	addi $t0, $fp, -40
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
	li $t0, 52232
	sw $t0, -264($fp)
	addi $t0, $fp, -40
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
	li $t0, 24570
	sw $t0, -288($fp)
	addi $t0, $fp, -40
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
	li $t0, 39036
	sw $t0, -312($fp)
	addi $t0, $fp, -40
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
	li $t0, 12738
	sw $t0, -336($fp)
	addi $t0, $fp, -40
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
	li $t0, 13731
	sw $t0, -360($fp)
	addi $t0, $fp, -40
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
	li $t0, 22954
	sw $t0, -384($fp)
	addi $t0, $fp, -40
	sw $t0, -388($fp)
	li $t0, 7
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
	li $t0, 58031
	sw $t0, -408($fp)
	addi $t0, $fp, -40
	sw $t0, -412($fp)
	li $t0, 8
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
	li $t0, 21
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 1172
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 36500
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 20339
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 13321
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 3661
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 411
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 35359
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 52577
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 17716
	sw $t0, -540($fp)
	addi $t0, $fp, -44
	sw $t0, -544($fp)
	li $t0, 0
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
	li $t0, 17959
	sw $t0, -564($fp)
	addi $t0, $fp, -56
	sw $t0, -568($fp)
	li $t0, 0
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
	li $t0, 2717
	sw $t0, -588($fp)
	addi $t0, $fp, -56
	sw $t0, -592($fp)
	li $t0, 1
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
	li $t0, 64138
	sw $t0, -612($fp)
	addi $t0, $fp, -56
	sw $t0, -616($fp)
	li $t0, 2
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
	li $t0, 50609
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 21603
	sw $t0, -648($fp)
	addi $t0, $fp, -96
	sw $t0, -652($fp)
	li $t0, 0
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
	li $t0, 60775
	sw $t0, -672($fp)
	addi $t0, $fp, -96
	sw $t0, -676($fp)
	li $t0, 1
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
	li $t0, 18614
	sw $t0, -696($fp)
	addi $t0, $fp, -96
	sw $t0, -700($fp)
	li $t0, 2
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
	li $t0, 47427
	sw $t0, -720($fp)
	addi $t0, $fp, -96
	sw $t0, -724($fp)
	li $t0, 3
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
	li $t0, 61668
	sw $t0, -744($fp)
	addi $t0, $fp, -96
	sw $t0, -748($fp)
	li $t0, 4
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
	li $t0, 9558
	sw $t0, -768($fp)
	addi $t0, $fp, -96
	sw $t0, -772($fp)
	li $t0, 5
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
	li $t0, 45366
	sw $t0, -792($fp)
	addi $t0, $fp, -96
	sw $t0, -796($fp)
	li $t0, 6
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
	li $t0, 29470
	sw $t0, -816($fp)
	addi $t0, $fp, -96
	sw $t0, -820($fp)
	li $t0, 7
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
	li $t0, 503
	sw $t0, -840($fp)
	addi $t0, $fp, -96
	sw $t0, -844($fp)
	li $t0, 8
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
	li $t0, 11444
	sw $t0, -864($fp)
	addi $t0, $fp, -96
	sw $t0, -868($fp)
	li $t0, 9
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
	li $t0, 16166
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 25073
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 50481
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 28904
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 38804
	sw $t0, -936($fp)
	addi $t0, $fp, -136
	sw $t0, -940($fp)
	li $t0, 0
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
	li $t0, 7899
	sw $t0, -960($fp)
	addi $t0, $fp, -136
	sw $t0, -964($fp)
	li $t0, 1
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
	li $t0, 21399
	sw $t0, -984($fp)
	addi $t0, $fp, -136
	sw $t0, -988($fp)
	li $t0, 2
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
	li $t0, 38826
	sw $t0, -1008($fp)
	addi $t0, $fp, -136
	sw $t0, -1012($fp)
	li $t0, 3
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
	li $t0, 9071
	sw $t0, -1032($fp)
	addi $t0, $fp, -136
	sw $t0, -1036($fp)
	li $t0, 4
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
	li $t0, 57900
	sw $t0, -1056($fp)
	addi $t0, $fp, -136
	sw $t0, -1060($fp)
	li $t0, 5
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
	li $t0, 59165
	sw $t0, -1080($fp)
	addi $t0, $fp, -136
	sw $t0, -1084($fp)
	li $t0, 6
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
	li $t0, 22392
	sw $t0, -1104($fp)
	addi $t0, $fp, -136
	sw $t0, -1108($fp)
	li $t0, 7
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
	li $t0, 61561
	sw $t0, -1128($fp)
	addi $t0, $fp, -136
	sw $t0, -1132($fp)
	li $t0, 8
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
	li $t0, 59577
	sw $t0, -1152($fp)
	addi $t0, $fp, -136
	sw $t0, -1156($fp)
	li $t0, 9
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
	li $t0, 57752
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 48602
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 11757
	sw $t0, -1200($fp)
	addi $t0, $fp, -164
	sw $t0, -1204($fp)
	li $t0, 0
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
	li $t0, 10175
	sw $t0, -1224($fp)
	addi $t0, $fp, -164
	sw $t0, -1228($fp)
	li $t0, 1
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
	li $t0, 51320
	sw $t0, -1248($fp)
	addi $t0, $fp, -164
	sw $t0, -1252($fp)
	li $t0, 2
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
	li $t0, 10359
	sw $t0, -1272($fp)
	addi $t0, $fp, -164
	sw $t0, -1276($fp)
	li $t0, 3
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
	li $t0, 60784
	sw $t0, -1296($fp)
	addi $t0, $fp, -164
	sw $t0, -1300($fp)
	li $t0, 4
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
	li $t0, 7387
	sw $t0, -1320($fp)
	addi $t0, $fp, -164
	sw $t0, -1324($fp)
	li $t0, 5
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
	li $t0, 5598
	sw $t0, -1344($fp)
	addi $t0, $fp, -164
	sw $t0, -1348($fp)
	li $t0, 6
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
	li $t0, 13863
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 54814
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 1730
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	li $t0, 23421
	sw $t0, -1404($fp)
	addi $t0, $fp, -196
	sw $t0, -1408($fp)
	li $t0, 0
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
	li $t0, 34644
	sw $t0, -1428($fp)
	addi $t0, $fp, -196
	sw $t0, -1432($fp)
	li $t0, 1
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
	li $t0, 31201
	sw $t0, -1452($fp)
	addi $t0, $fp, -196
	sw $t0, -1456($fp)
	li $t0, 2
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
	li $t0, 23924
	sw $t0, -1476($fp)
	addi $t0, $fp, -196
	sw $t0, -1480($fp)
	li $t0, 3
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
	li $t0, 46089
	sw $t0, -1500($fp)
	addi $t0, $fp, -196
	sw $t0, -1504($fp)
	li $t0, 4
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
	li $t0, 47367
	sw $t0, -1524($fp)
	addi $t0, $fp, -196
	sw $t0, -1528($fp)
	li $t0, 5
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
	li $t0, 48998
	sw $t0, -1548($fp)
	addi $t0, $fp, -196
	sw $t0, -1552($fp)
	li $t0, 6
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
	li $t0, 31034
	sw $t0, -1572($fp)
	addi $t0, $fp, -196
	sw $t0, -1576($fp)
	li $t0, 7
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
	li $t0, 10736
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	li $t0, 22266
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	li $t0, 38933
	sw $t0, -1620($fp)
	addi $t0, $fp, -212
	sw $t0, -1624($fp)
	li $t0, 0
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
	li $t0, 32135
	sw $t0, -1644($fp)
	addi $t0, $fp, -212
	sw $t0, -1648($fp)
	li $t0, 1
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
	li $t0, 61092
	sw $t0, -1668($fp)
	addi $t0, $fp, -212
	sw $t0, -1672($fp)
	li $t0, 2
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
	li $t0, 48004
	sw $t0, -1692($fp)
	addi $t0, $fp, -212
	sw $t0, -1696($fp)
	li $t0, 3
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
	li $t0, 24499
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 54722
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	li $t0, 4861
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	li $t0, 20525
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	li $t0, 48763
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	li $t0, 62613
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	li $t0, 3591
	sw $t0, -1788($fp)
	addi $t0, $fp, -196
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
	li $t0, 54911
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	addi $t0, $fp, -136
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
	lw $t0, -1816($fp)
	lw $t1, -1836($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t1, -1788($fp)
	lw $t2, -1840($fp)
	ble $t1, $t2, label710
	j label711
label710:
	li $t0, 0
	sw $t0, -1844($fp)
	addi $t0, $fp, -136
	sw $t0, -1848($fp)
	li $t0, 0
	sw $t0, -1852($fp)
	li $t0, 62298
	sw $t0, -1856($fp)
	li $t0, 0
	lw $t1, -1856($fp)
	sub $t0, $t0, $t1
	sw $t0, -1860($fp)
	li $t0, 10942
	sw $t0, -1864($fp)
	lw $t1, -1860($fp)
	lw $t2, -1864($fp)
	ble $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -1852($fp)
label716:
	li $t0, 4
	lw $t1, -1852($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	li $t0, 0
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	lw $t0, -436($fp)
	sw $t0, -1888($fp)
	li $t0, 0
	lw $t1, -1888($fp)
	sub $t0, $t0, $t1
	sw $t0, -1892($fp)
	li $t0, 16364
	sw $t0, -1896($fp)
	lw $t1, -1892($fp)
	lw $t2, -1896($fp)
	ble $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -1884($fp)
label720:
	li $t0, 51577
	sw $t0, -1900($fp)
	lw $t1, -1884($fp)
	lw $t2, -1900($fp)
	bge $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -1880($fp)
label718:
	lw $t1, -1876($fp)
	lw $t2, -1880($fp)
	beq $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -1844($fp)
label714:
	lw $ra, -4($fp)
	lw $v0, -1844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label711:
	li $t0, 12672
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -1912($fp)
	li $t0, 39785
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	lw $t0, -1612($fp)
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	lw $t0, -928($fp)
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label724
label724:
	li $t0, 1
	sw $t0, -1936($fp)
label725:
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1944($fp)
	addi $t0, $fp, -96
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	li $t0, 20685
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label727
label728:
	lw $t0, -1908($fp)
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -1952($fp)
label727:
	li $t0, 4
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	lw $t0, -1944($fp)
	lw $t1, -1972($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	j label723
label722:
label729:
	li $t0, 43873
	sw $t0, -1980($fp)
	addi $t0, $fp, -212
	sw $t0, -1984($fp)
	li $t0, 0
	sw $t0, -1988($fp)
	li $t0, 63710
	sw $t0, -1992($fp)
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label734
label734:
	li $t0, 1238
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -1988($fp)
label733:
	li $t0, 4
	lw $t1, -1988($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	lw $t1, -1984($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	lw $t0, -1980($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label731
label730:
	li $t0, 0
	sw $t0, -2016($fp)
	li $t0, 0
	sw $t0, -2020($fp)
	li $t0, 0
	sw $t0, -2024($fp)
	lw $t0, -640($fp)
	sw $t0, -2028($fp)
	lw $t0, -1756($fp)
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -1756($fp)
	sw $t0, -2040($fp)
	lw $t1, -2036($fp)
	lw $t2, -2040($fp)
	bge $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -2024($fp)
label740:
	li $t0, 0
	sw $t0, -2044($fp)
	lw $t0, -1768($fp)
	sw $t0, -2048($fp)
	li $t0, 25705
	sw $t0, -2052($fp)
	lw $t1, -2048($fp)
	lw $t2, -2052($fp)
	beq $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -2044($fp)
label742:
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2056($fp)
	addi $sp, $sp, 12
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label737
label737:
	li $t0, 1
	sw $t0, -2020($fp)
label738:
	addi $t0, $fp, -164
	sw $t0, -2060($fp)
	li $t0, 0
	sw $t0, -2064($fp)
	li $t0, 47172
	sw $t0, -2068($fp)
	lw $t0, -520($fp)
	sw $t0, -2072($fp)
	lw $t1, -2068($fp)
	lw $t2, -2072($fp)
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -2064($fp)
label744:
	li $t0, 4
	lw $t1, -2064($fp)
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	lw $t1, -2020($fp)
	lw $t2, -2084($fp)
	ble $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -2016($fp)
label736:
	j label729
label731:
label723:
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 32272
	sw $t0, -2092($fp)
	li $t0, 0
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	li $t0, 0
	sw $t0, -2100($fp)
	li $t0, 36441
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label750
label750:
	li $t0, 1
	sw $t0, -2100($fp)
label751:
	lw $t1, -2096($fp)
	lw $t2, -2100($fp)
	bge $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -2088($fp)
label749:
	li $t0, 3902
	sw $t0, -2108($fp)
	lw $t0, -1732($fp)
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -1600($fp)
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -928($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t1, -2088($fp)
	lw $t2, -2132($fp)
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 0
	sw $t0, -2136($fp)
	li $t0, 5669
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label753
	j label752
label752:
	li $t0, 1
	sw $t0, -2136($fp)
label753:
	lw $ra, -4($fp)
	lw $v0, -2136($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label747
label746:
	li $t0, 3040
	sw $t0, -2152($fp)
	addi $t0, $fp, -2148
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
	li $t0, 64995
	sw $t0, -2176($fp)
	addi $t0, $fp, -2148
	sw $t0, -2180($fp)
	li $t0, 1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2180($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2176($fp)
	lw $t1, -2192($fp)
	sw $t0, 0($t1)
	lw $t0, -2192($fp)
	lw $t1, 0($t0)
	sw $t1, -2196($fp)
	addi $t0, $fp, -2148
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
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2148
	sw $t0, -2220($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -2240($fp)
	lw $t0, -928($fp)
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
	addi $t0, $fp, -2148
	sw $t0, -2260($fp)
	lw $t0, -928($fp)
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
	lw $t0, -2256($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	li $t0, 53674
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	li $t0, 27540
	sw $t0, -2292($fp)
	lw $t0, -2288($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $ra, -4($fp)
	lw $v0, -2296($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label747:
	lw $t0, -1908($fp)
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 54181
	sw $t0, -2308($fp)
	li $t0, 0
	sw $t0, -2312($fp)
	li $t0, 58535
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label756
label756:
	li $t0, 1
	sw $t0, -2312($fp)
label757:
	lw $t1, -2308($fp)
	lw $t2, -2312($fp)
	bge $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -2304($fp)
label755:
	lw $ra, -4($fp)
	lw $v0, -2304($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label758:
	addi $t0, $fp, -96
	sw $t0, -2320($fp)
	lw $t0, -484($fp)
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
	lw $t0, -1756($fp)
	sw $t0, -2340($fp)
	li $t0, 0
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
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
	sw $t0, -2356($fp)
	li $t0, 37408
	sw $t0, -2360($fp)
	li $t0, 0
	lw $t1, -2360($fp)
	sub $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t1, -2364($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label761
label761:
	li $t0, 1
	sw $t0, -2356($fp)
label762:
	li $t0, 0
	sw $t0, -2368($fp)
	li $t0, 48065
	sw $t0, -2372($fp)
	li $t0, 0
	lw $t1, -2372($fp)
	sub $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -1600($fp)
	sw $t0, -2380($fp)
	lw $t1, -2376($fp)
	lw $t2, -2380($fp)
	bne $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -2368($fp)
label764:
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2384($fp)
	addi $sp, $sp, 12
	lw $t1, -2352($fp)
	lw $t2, -2384($fp)
	bne $t1, $t2, label759
	j label760
label759:
	li $t0, 55612
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	li $t0, 51656
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	li $t0, 32392
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	li $t0, 62864
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	li $t0, 41032
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	li $t0, 37735
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	li $t0, 65365
	sw $t0, -2472($fp)
	addi $t0, $fp, -2456
	sw $t0, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2476($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2472($fp)
	lw $t1, -2488($fp)
	sw $t0, 0($t1)
	lw $t0, -2488($fp)
	lw $t1, 0($t0)
	sw $t1, -2492($fp)
	li $t0, 37794
	sw $t0, -2496($fp)
	addi $t0, $fp, -2456
	sw $t0, -2500($fp)
	li $t0, 1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2500($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2496($fp)
	lw $t1, -2512($fp)
	sw $t0, 0($t1)
	lw $t0, -2512($fp)
	lw $t1, 0($t0)
	sw $t1, -2516($fp)
	li $t0, 48677
	sw $t0, -2520($fp)
	addi $t0, $fp, -2456
	sw $t0, -2524($fp)
	li $t0, 2
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2524($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2520($fp)
	lw $t1, -2536($fp)
	sw $t0, 0($t1)
	lw $t0, -2536($fp)
	lw $t1, 0($t0)
	sw $t1, -2540($fp)
	li $t0, 0
	sw $t0, -2544($fp)
	addi $t0, $fp, -196
	sw $t0, -2548($fp)
	lw $t0, -1612($fp)
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
	li $t0, 0
	lw $t1, -2564($fp)
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	addi $sp, $sp, -4
	lw $t0, -2568($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2572($fp)
	addi $sp, $sp, 8
	lw $t0, -1600($fp)
	sw $t0, -2576($fp)
	lw $t0, -2572($fp)
	lw $t1, -2576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2580($fp)
	li $t0, 0
	sw $t0, -2584($fp)
	li $t0, 23835
	sw $t0, -2588($fp)
	li $t0, 61350
	sw $t0, -2592($fp)
	lw $t0, -2588($fp)
	lw $t1, -2592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2596($fp)
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label769
label769:
	lw $t0, 4($fp)
	sw $t0, -2600($fp)
	lw $t1, -2600($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label768
label767:
	li $t0, 1
	sw $t0, -2584($fp)
label768:
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, -916($fp)
	sw $t0, -2608($fp)
	li $t0, 0
	lw $t1, -2608($fp)
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label771
	j label770
label770:
	li $t0, 1
	sw $t0, -2604($fp)
label771:
	li $t0, 16193
	sw $t0, -2616($fp)
	li $t0, 0
	sw $t0, -2620($fp)
	lw $t0, -1612($fp)
	sw $t0, -2624($fp)
	lw $t0, -928($fp)
	sw $t0, -2628($fp)
	lw $t0, -2624($fp)
	lw $t1, -2628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2632($fp)
	lw $t0, -1192($fp)
	sw $t0, -2636($fp)
	lw $t1, -2632($fp)
	lw $t2, -2636($fp)
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -2620($fp)
label773:
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2640($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2640($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2644($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -2644($fp)
	sub $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t1, -2648($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label765
label765:
	li $t0, 1
	sw $t0, -2544($fp)
label766:
	lw $t0, -1612($fp)
	sw $t0, -2652($fp)
	lw $t0, -2544($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	li $t0, 0
	sw $t0, -2660($fp)
	li $t0, 55979
	sw $t0, -2664($fp)
	li $t0, 0
	sw $t0, -2668($fp)
	lw $t0, -2464($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -2676($fp)
	li $t0, 0
	sw $t0, -2680($fp)
	li $t0, 54153
	sw $t0, -2684($fp)
	lw $t0, -460($fp)
	sw $t0, -2688($fp)
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	sub $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -1732($fp)
	sw $t0, -2696($fp)
	lw $t1, -2692($fp)
	lw $t2, -2696($fp)
	bne $t1, $t2, label779
	j label780
label779:
	li $t0, 1
	sw $t0, -2680($fp)
label780:
	addi $sp, $sp, -4
	lw $t0, -2676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2700($fp)
	addi $sp, $sp, 12
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label778
label778:
	lw $t0, -928($fp)
	sw $t0, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -2668($fp)
label777:
	addi $t0, $fp, -56
	sw $t0, -2708($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2728($fp)
	addi $sp, $sp, 12
	lw $t0, -2664($fp)
	lw $t1, -2728($fp)
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	li $t0, 45759
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label781
label781:
	li $t0, 1
	sw $t0, -2736($fp)
label782:
	lw $t1, -2732($fp)
	lw $t2, -2736($fp)
	bge $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -2660($fp)
label775:
	addi $t0, $fp, -96
	sw $t0, -2744($fp)
	lw $t0, -532($fp)
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
	addi $t0, $fp, -2456
	sw $t0, -2764($fp)
	lw $t0, -2416($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2772($fp)
	li $t0, 4
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	lw $t0, -2760($fp)
	lw $t1, -2784($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label784
label783:
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, -1396($fp)
	sw $t0, -2796($fp)
	li $t0, 65392
	sw $t0, -2800($fp)
	lw $t0, -1780($fp)
	sw $t0, -2804($fp)
	lw $t0, -2800($fp)
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2796($fp)
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	li $t0, 35789
	sw $t0, -2816($fp)
	lw $t0, -2812($fp)
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label787
label788:
	addi $t0, $fp, -136
	sw $t0, -2824($fp)
	lw $t0, -1384($fp)
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
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	li $t0, 0
	lw $t1, -2844($fp)
	sub $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -2792($fp)
label787:
label784:
	lw $t0, -2392($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2404($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2416($fp)
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2428($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2440($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	li $t0, 4259
	sw $t0, -2884($fp)
	li $t0, 52072
	sw $t0, -2888($fp)
	lw $t0, -2884($fp)
	lw $t1, -2888($fp)
	sub $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -1756($fp)
	sw $t0, -2896($fp)
	lw $t1, -2892($fp)
	lw $t2, -2896($fp)
	beq $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -2880($fp)
label795:
	li $t0, 0
	sw $t0, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	li $t0, 52243
	sw $t0, -2908($fp)
	li $t0, 11023
	sw $t0, -2912($fp)
	lw $t1, -2908($fp)
	lw $t2, -2912($fp)
	beq $t1, $t2, label798
	j label799
label798:
	li $t0, 1
	sw $t0, -2904($fp)
label799:
	lw $t0, -1384($fp)
	sw $t0, -2916($fp)
	lw $t1, -2904($fp)
	lw $t2, -2916($fp)
	bne $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -2900($fp)
label797:
	li $t0, 0
	sw $t0, -2920($fp)
	lw $t0, -2404($fp)
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label800
label802:
	lw $t0, -928($fp)
	sw $t0, -2928($fp)
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label801
label800:
	li $t0, 1
	sw $t0, -2920($fp)
label801:
	li $t0, 0
	sw $t0, -2932($fp)
	li $t0, 32059
	sw $t0, -2936($fp)
	li $t0, 0
	lw $t1, -2936($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -892($fp)
	sw $t0, -2944($fp)
	lw $t1, -2940($fp)
	lw $t2, -2944($fp)
	bgt $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -2932($fp)
label804:
	li $t0, 0
	sw $t0, -2948($fp)
	lw $t0, -904($fp)
	sw $t0, -2952($fp)
	lw $t0, -2392($fp)
	sw $t0, -2956($fp)
	lw $t1, -2952($fp)
	lw $t2, -2956($fp)
	beq $t1, $t2, label807
	j label806
label807:
	li $t0, 35527
	sw $t0, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -2948($fp)
label806:
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2964($fp)
	addi $sp, $sp, 24
	li $t0, 48818
	sw $t0, -2968($fp)
	lw $t0, -2964($fp)
	lw $t1, -2968($fp)
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 0
	sw $t0, -2980($fp)
	lw $t0, -1768($fp)
	sw $t0, -2984($fp)
	li $t0, 54914
	sw $t0, -2988($fp)
	lw $t0, -2984($fp)
	lw $t1, -2988($fp)
	sub $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -1744($fp)
	sw $t0, -2996($fp)
	lw $t1, -2992($fp)
	lw $t2, -2996($fp)
	bne $t1, $t2, label810
	j label811
label810:
	li $t0, 1
	sw $t0, -2980($fp)
label811:
	lw $t0, -496($fp)
	sw $t0, -3000($fp)
	li $t0, 65203
	sw $t0, -3004($fp)
	lw $t0, -3000($fp)
	lw $t1, -3004($fp)
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	li $t0, 64838
	sw $t0, -3012($fp)
	lw $t0, -1396($fp)
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	li $t0, 49407
	sw $t0, -3024($fp)
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	li $t0, 0
	sw $t0, -3032($fp)
	li $t0, 27795
	sw $t0, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label813
	j label812
label812:
	li $t0, 1
	sw $t0, -3032($fp)
label813:
	lw $t0, -1384($fp)
	sw $t0, -3040($fp)
	lw $t0, -3032($fp)
	lw $t1, -3040($fp)
	sub $t0, $t0, $t1
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 6303
	sw $t0, -3052($fp)
	lw $t0, -916($fp)
	sw $t0, -3056($fp)
	lw $t0, -3052($fp)
	lw $t1, -3056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3060($fp)
	li $t0, 1342
	sw $t0, -3064($fp)
	lw $t1, -3060($fp)
	lw $t2, -3064($fp)
	bgt $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -3048($fp)
label815:
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3068($fp)
	addi $sp, $sp, 24
	lw $t0, -460($fp)
	sw $t0, -3072($fp)
	lw $t1, -3068($fp)
	lw $t2, -3072($fp)
	blt $t1, $t2, label808
	j label809
label808:
	li $t0, 1
	sw $t0, -2976($fp)
label809:
	lw $t0, -532($fp)
	sw $t0, -3076($fp)
	lw $t0, -1612($fp)
	sw $t0, -3080($fp)
	lw $t0, -3076($fp)
	lw $t1, -3080($fp)
	sub $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -2428($fp)
	sw $t0, -3088($fp)
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	li $t0, 0
	sw $t0, -3096($fp)
	li $t0, 18165
	sw $t0, -3100($fp)
	lw $t0, -1372($fp)
	sw $t0, -3104($fp)
	lw $t0, -3100($fp)
	lw $t1, -3104($fp)
	sub $t0, $t0, $t1
	sw $t0, -3108($fp)
	li $t0, 39338
	sw $t0, -3112($fp)
	lw $t1, -3108($fp)
	lw $t2, -3112($fp)
	bne $t1, $t2, label816
	j label817
label816:
	li $t0, 1
	sw $t0, -3096($fp)
label817:
	addi $sp, $sp, -4
	lw $t0, -3092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3116($fp)
	addi $sp, $sp, 12
	li $t0, 39150
	sw $t0, -3120($fp)
	lw $t0, -3116($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	li $t0, 12496
	sw $t0, -3136($fp)
	li $t0, 36297
	sw $t0, -3140($fp)
	lw $t1, -3136($fp)
	lw $t2, -3140($fp)
	bne $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -3132($fp)
label821:
	li $t0, 39691
	sw $t0, -3144($fp)
	lw $t1, -3132($fp)
	lw $t2, -3144($fp)
	bne $t1, $t2, label818
	j label819
label818:
	li $t0, 1
	sw $t0, -3128($fp)
label819:
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3148($fp)
	addi $sp, $sp, 24
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label792
label792:
	li $t0, 1
	sw $t0, -2876($fp)
label793:
	li $t0, 52936
	sw $t0, -3152($fp)
	li $t0, 0
	lw $t1, -3152($fp)
	sub $t0, $t0, $t1
	sw $t0, -3156($fp)
	li $t0, 0
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t1, -2876($fp)
	lw $t2, -3160($fp)
	bne $t1, $t2, label791
	j label790
label791:
	li $t0, 0
	sw $t0, -3164($fp)
	lw $t0, -2440($fp)
	sw $t0, -3168($fp)
	li $t0, 48750
	sw $t0, -3172($fp)
	lw $t1, -3168($fp)
	lw $t2, -3172($fp)
	bne $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -3164($fp)
label823:
	li $t0, 2730
	sw $t0, -3176($fp)
	li $t0, 0
	lw $t1, -3176($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	li $t0, 7117
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	add $t0, $t0, $t1
	sw $t0, -3188($fp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3192($fp)
	addi $sp, $sp, 12
	lw $t0, -532($fp)
	sw $t0, -3196($fp)
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -1720($fp)
	sw $t0, -3204($fp)
	li $t0, 22758
	sw $t0, -3208($fp)
	lw $t0, -3204($fp)
	lw $t1, -3208($fp)
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -1396($fp)
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	add $t0, $t0, $t1
	sw $t0, -3220($fp)
	li $t0, 0
	sw $t0, -3224($fp)
	lw $t0, -1780($fp)
	sw $t0, -3228($fp)
	li $t0, 31862
	sw $t0, -3232($fp)
	lw $t0, -3228($fp)
	lw $t1, -3232($fp)
	mul $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -928($fp)
	sw $t0, -3240($fp)
	lw $t1, -3236($fp)
	lw $t2, -3240($fp)
	bne $t1, $t2, label824
	j label825
label824:
	li $t0, 1
	sw $t0, -3224($fp)
label825:
	li $t0, 0
	sw $t0, -3244($fp)
	li $t0, 51638
	sw $t0, -3248($fp)
	li $t0, 22902
	sw $t0, -3252($fp)
	lw $t0, -3248($fp)
	lw $t1, -3252($fp)
	sub $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t1, -3256($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label827
label828:
	li $t0, 47326
	sw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label827
label826:
	li $t0, 1
	sw $t0, -3244($fp)
label827:
	addi $sp, $sp, -4
	lw $t0, -3244($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3264($fp)
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -3268($fp)
	lw $t0, -3264($fp)
	lw $t1, -3268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3272($fp)
	li $t0, 0
	sw $t0, -3276($fp)
	lw $t0, -928($fp)
	sw $t0, -3280($fp)
	lw $t0, -1384($fp)
	sw $t0, -3284($fp)
	lw $t0, -3280($fp)
	lw $t1, -3284($fp)
	add $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label831
label831:
	lw $t0, -2416($fp)
	sw $t0, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -3276($fp)
label830:
	li $t0, 58709
	sw $t0, -3296($fp)
	lw $t0, -928($fp)
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3308($fp)
	addi $sp, $sp, 24
	lw $t1, -3200($fp)
	lw $t2, -3308($fp)
	ble $t1, $t2, label789
	j label790
label789:
	li $t0, 1
	sw $t0, -2872($fp)
label790:
	lw $ra, -4($fp)
	lw $v0, -2872($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label758
label760:
	addi $t0, $fp, -40
	sw $t0, -3312($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -3332($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -3352($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -3372($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -3392($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -3412($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -3432($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -3452($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -3472($fp)
	li $t0, 8
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
	lw $t0, -436($fp)
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3528($fp)
	li $t0, 0
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
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -3588($fp)
	li $t0, 2
	sw $t0, -3592($fp)
	li $t0, 4
	lw $t1, -3592($fp)
	mul $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	lw $t1, 0($t0)
	sw $t1, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
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
	lw $t0, -3628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3632($fp)
	li $t0, 1
	sw $t0, -3636($fp)
	li $t0, 4
	lw $t1, -3636($fp)
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	lw $t1, -3632($fp)
	add $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	lw $t1, 0($t0)
	sw $t1, -3648($fp)
	lw $t0, -3648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3652($fp)
	li $t0, 2
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
	lw $t0, -3668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3672($fp)
	li $t0, 3
	sw $t0, -3676($fp)
	li $t0, 4
	lw $t1, -3676($fp)
	mul $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	lw $t1, -3672($fp)
	add $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	lw $t1, 0($t0)
	sw $t1, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3692($fp)
	li $t0, 4
	sw $t0, -3696($fp)
	li $t0, 4
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	lw $t1, -3692($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, 0($t0)
	sw $t1, -3708($fp)
	lw $t0, -3708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3712($fp)
	li $t0, 5
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
	lw $t0, -3728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3732($fp)
	li $t0, 6
	sw $t0, -3736($fp)
	li $t0, 4
	lw $t1, -3736($fp)
	mul $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	lw $t1, -3732($fp)
	add $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	lw $t1, 0($t0)
	sw $t1, -3748($fp)
	lw $t0, -3748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3752($fp)
	li $t0, 7
	sw $t0, -3756($fp)
	li $t0, 4
	lw $t1, -3756($fp)
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	lw $t1, 0($t0)
	sw $t1, -3768($fp)
	lw $t0, -3768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3772($fp)
	li $t0, 8
	sw $t0, -3776($fp)
	li $t0, 4
	lw $t1, -3776($fp)
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, 0($t0)
	sw $t1, -3788($fp)
	lw $t0, -3788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3792($fp)
	li $t0, 9
	sw $t0, -3796($fp)
	li $t0, 4
	lw $t1, -3796($fp)
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, -3792($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	lw $t1, 0($t0)
	sw $t1, -3808($fp)
	lw $t0, -3808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3828($fp)
	li $t0, 0
	sw $t0, -3832($fp)
	li $t0, 4
	lw $t1, -3832($fp)
	mul $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	lw $t1, -3828($fp)
	add $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	lw $t1, 0($t0)
	sw $t1, -3844($fp)
	lw $t0, -3844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3848($fp)
	li $t0, 1
	sw $t0, -3852($fp)
	li $t0, 4
	lw $t1, -3852($fp)
	mul $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, -3848($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, 0($t0)
	sw $t1, -3864($fp)
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3868($fp)
	li $t0, 2
	sw $t0, -3872($fp)
	li $t0, 4
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, 0($t0)
	sw $t1, -3884($fp)
	lw $t0, -3884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3888($fp)
	li $t0, 3
	sw $t0, -3892($fp)
	li $t0, 4
	lw $t1, -3892($fp)
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	lw $t1, 0($t0)
	sw $t1, -3904($fp)
	lw $t0, -3904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3908($fp)
	li $t0, 4
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
	lw $t0, -3924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3928($fp)
	li $t0, 5
	sw $t0, -3932($fp)
	li $t0, 4
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	lw $t1, 0($t0)
	sw $t1, -3944($fp)
	lw $t0, -3944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3948($fp)
	li $t0, 6
	sw $t0, -3952($fp)
	li $t0, 4
	lw $t1, -3952($fp)
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, -3948($fp)
	add $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	lw $t1, 0($t0)
	sw $t1, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3968($fp)
	li $t0, 7
	sw $t0, -3972($fp)
	li $t0, 4
	lw $t1, -3972($fp)
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, -3968($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	lw $t1, 0($t0)
	sw $t1, -3984($fp)
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3988($fp)
	li $t0, 8
	sw $t0, -3992($fp)
	li $t0, 4
	lw $t1, -3992($fp)
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	lw $t1, -3988($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	lw $t1, 0($t0)
	sw $t1, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4008($fp)
	li $t0, 9
	sw $t0, -4012($fp)
	li $t0, 4
	lw $t1, -4012($fp)
	mul $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	lw $t1, -4008($fp)
	add $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	lw $t1, 0($t0)
	sw $t1, -4024($fp)
	lw $t0, -4024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4036($fp)
	li $t0, 0
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
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4056($fp)
	li $t0, 1
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
	lw $t0, -4072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4076($fp)
	li $t0, 2
	sw $t0, -4080($fp)
	li $t0, 4
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, -4076($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	lw $t1, 0($t0)
	sw $t1, -4092($fp)
	lw $t0, -4092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4096($fp)
	li $t0, 3
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
	lw $t0, -4112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4116($fp)
	li $t0, 4
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
	lw $t0, -4132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4136($fp)
	li $t0, 5
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
	lw $t0, -4152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4156($fp)
	li $t0, 6
	sw $t0, -4160($fp)
	li $t0, 4
	lw $t1, -4160($fp)
	mul $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	lw $t1, -4156($fp)
	add $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	lw $t1, 0($t0)
	sw $t1, -4172($fp)
	lw $t0, -4172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -4188($fp)
	li $t0, 0
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
	addi $t0, $fp, -196
	sw $t0, -4208($fp)
	li $t0, 1
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
	addi $t0, $fp, -196
	sw $t0, -4228($fp)
	li $t0, 2
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
	addi $t0, $fp, -196
	sw $t0, -4248($fp)
	li $t0, 3
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
	addi $t0, $fp, -196
	sw $t0, -4268($fp)
	li $t0, 4
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
	addi $t0, $fp, -196
	sw $t0, -4288($fp)
	li $t0, 5
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
	addi $t0, $fp, -196
	sw $t0, -4308($fp)
	li $t0, 6
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
	addi $t0, $fp, -196
	sw $t0, -4328($fp)
	li $t0, 7
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
	lw $t0, -1600($fp)
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1612($fp)
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -4356($fp)
	li $t0, 0
	sw $t0, -4360($fp)
	li $t0, 4
	lw $t1, -4360($fp)
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	lw $t1, 0($t0)
	sw $t1, -4372($fp)
	lw $t0, -4372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -4376($fp)
	li $t0, 1
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
	lw $t0, -4392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -4396($fp)
	li $t0, 2
	sw $t0, -4400($fp)
	li $t0, 4
	lw $t1, -4400($fp)
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	lw $t1, -4396($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	lw $t1, 0($t0)
	sw $t1, -4412($fp)
	lw $t0, -4412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -4416($fp)
	li $t0, 3
	sw $t0, -4420($fp)
	li $t0, 4
	lw $t1, -4420($fp)
	mul $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, -4416($fp)
	add $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, 0($t0)
	sw $t1, -4432($fp)
	lw $t0, -4432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1756($fp)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1768($fp)
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1780($fp)
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4460($fp)
	addi $t0, $fp, -40
	sw $t0, -4464($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -4480($fp)
	sub $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -1180($fp)
	sw $t0, -4488($fp)
	lw $t0, -4484($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	li $t0, 0
	sw $t0, -4496($fp)
	li $t0, 59056
	sw $t0, -4500($fp)
	lw $t1, -4500($fp)
	li $t2, 0
	bne $t1, $t2, label835
	j label834
label834:
	li $t0, 1
	sw $t0, -4496($fp)
label835:
	lw $t0, 4($fp)
	sw $t0, -4504($fp)
	lw $t0, -4496($fp)
	lw $t1, -4504($fp)
	mul $t0, $t0, $t1
	sw $t0, -4508($fp)
	addi $t0, $fp, -40
	sw $t0, -4512($fp)
	li $t0, 1
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
	lw $t0, -4508($fp)
	lw $t1, -4528($fp)
	add $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t1, -4492($fp)
	lw $t2, -4532($fp)
	beq $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -4460($fp)
label833:
	lw $ra, -4($fp)
	lw $v0, -4460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label836:
	li $t0, 0
	sw $t0, -4536($fp)
	lw $t0, -436($fp)
	sw $t0, -4540($fp)
	lw $t1, -4540($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label840
label842:
	lw $t0, -1768($fp)
	sw $t0, -4544($fp)
	lw $t1, -4544($fp)
	li $t2, 0
	bne $t1, $t2, label841
	j label840
label841:
	li $t0, 53598
	sw $t0, -4548($fp)
	lw $t1, -4548($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label840
label839:
	li $t0, 1
	sw $t0, -4536($fp)
label840:
	addi $sp, $sp, -4
	lw $t0, -4536($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4552($fp)
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -4556($fp)
	lw $t0, -4552($fp)
	lw $t1, -4556($fp)
	mul $t0, $t0, $t1
	sw $t0, -4560($fp)
	li $t0, 58348
	sw $t0, -4564($fp)
	li $t0, 57508
	sw $t0, -4568($fp)
	lw $t0, -4564($fp)
	lw $t1, -4568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4572($fp)
	lw $t0, -532($fp)
	sw $t0, -4576($fp)
	lw $t0, -4572($fp)
	lw $t1, -4576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4580($fp)
	li $t0, 0
	sw $t0, -4584($fp)
	lw $t0, -1372($fp)
	sw $t0, -4588($fp)
	lw $t1, -4588($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label846
label846:
	li $t0, 2593
	sw $t0, -4592($fp)
	lw $t1, -4592($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label845
label845:
	li $t0, 18071
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -4584($fp)
label844:
	li $t0, 0
	sw $t0, -4600($fp)
	lw $t0, -448($fp)
	sw $t0, -4604($fp)
	lw $t1, -4604($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label850
label850:
	li $t0, 34200
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label849
label849:
	li $t0, 58680
	sw $t0, -4612($fp)
	lw $t1, -4612($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label848
label847:
	li $t0, 1
	sw $t0, -4600($fp)
label848:
	li $t0, 0
	sw $t0, -4616($fp)
	lw $t0, -1600($fp)
	sw $t0, -4620($fp)
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label854
label854:
	lw $t0, -1612($fp)
	sw $t0, -4624($fp)
	lw $t1, -4624($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label853
label853:
	lw $t0, -904($fp)
	sw $t0, -4628($fp)
	lw $t1, -4628($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label852
label851:
	li $t0, 1
	sw $t0, -4616($fp)
label852:
	li $t0, 0
	sw $t0, -4632($fp)
	addi $t0, $fp, -212
	sw $t0, -4636($fp)
	li $t0, 1
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
	lw $t1, -4652($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label856
label857:
	li $t0, 3291
	sw $t0, -4656($fp)
	lw $t1, -4656($fp)
	li $t2, 0
	bne $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -4632($fp)
label856:
	addi $sp, $sp, -4
	lw $t0, -4616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4632($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4660($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4660($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4664($fp)
	addi $sp, $sp, 24
	lw $t0, -892($fp)
	sw $t0, -4668($fp)
	li $t0, 0
	lw $t1, -4668($fp)
	sub $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4664($fp)
	lw $t1, -4672($fp)
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t1, -4676($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label838
label837:
	addi $t0, $fp, -96
	sw $t0, -4680($fp)
	li $t0, 5
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
	li $t0, 64622
	sw $t0, -4700($fp)
	lw $t0, -4696($fp)
	lw $t1, -4700($fp)
	mul $t0, $t0, $t1
	sw $t0, -4704($fp)
	li $t0, 29130
	sw $t0, -4708($fp)
	lw $t0, -4704($fp)
	lw $t1, -4708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4712($fp)
	lw $t0, -1756($fp)
	sw $t0, -4716($fp)
	lw $t0, -4712($fp)
	lw $t1, -4716($fp)
	add $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t1, -4720($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label859
label858:
	li $t0, 30751
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -4732($fp)
	li $t0, 47904
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	sw $t0, -4744($fp)
	li $t0, 16531
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	sw $t0, -4756($fp)
	li $t0, 33481
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	sw $t0, -4768($fp)
	lw $t0, -4728($fp)
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4740($fp)
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4752($fp)
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4764($fp)
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4788($fp)
	li $t0, 0
	sw $t0, -4792($fp)
	li $t0, 0
	sw $t0, -4796($fp)
	li $t0, 0
	sw $t0, -4800($fp)
	lw $t0, -1744($fp)
	sw $t0, -4804($fp)
	lw $t1, -4804($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -4800($fp)
label868:
	li $t0, 0
	sw $t0, -4808($fp)
	addi $t0, $fp, -212
	sw $t0, -4812($fp)
	lw $t0, -1384($fp)
	sw $t0, -4816($fp)
	li $t0, 4
	lw $t1, -4816($fp)
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, 0($t0)
	sw $t1, -4828($fp)
	lw $t0, -1780($fp)
	sw $t0, -4832($fp)
	lw $t1, -4828($fp)
	lw $t2, -4832($fp)
	bgt $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -4808($fp)
label870:
	li $t0, 51808
	sw $t0, -4836($fp)
	li $t0, 0
	lw $t1, -4836($fp)
	sub $t0, $t0, $t1
	sw $t0, -4840($fp)
	li $t0, 0
	lw $t1, -4840($fp)
	sub $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -4764($fp)
	sw $t0, -4848($fp)
	li $t0, 0
	sw $t0, -4852($fp)
	li $t0, 0
	sw $t0, -4856($fp)
	li $t0, 45406
	sw $t0, -4860($fp)
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label873
label873:
	li $t0, 1
	sw $t0, -4856($fp)
label874:
	li $t0, 26023
	sw $t0, -4864($fp)
	lw $t1, -4856($fp)
	lw $t2, -4864($fp)
	blt $t1, $t2, label871
	j label872
label871:
	li $t0, 1
	sw $t0, -4852($fp)
label872:
	lw $t0, -916($fp)
	sw $t0, -4868($fp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4868($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4872($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4872($fp)
	sub $t0, $t0, $t1
	sw $t0, -4876($fp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4880($fp)
	addi $sp, $sp, 8
	lw $t0, -1756($fp)
	sw $t0, -4884($fp)
	lw $t0, -4880($fp)
	lw $t1, -4884($fp)
	sub $t0, $t0, $t1
	sw $t0, -4888($fp)
	li $t0, 0
	sw $t0, -4892($fp)
	li $t0, 0
	sw $t0, -4896($fp)
	li $t0, 7450
	sw $t0, -4900($fp)
	lw $t0, -916($fp)
	sw $t0, -4904($fp)
	lw $t1, -4900($fp)
	lw $t2, -4904($fp)
	ble $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -4896($fp)
label878:
	lw $t0, -484($fp)
	sw $t0, -4908($fp)
	lw $t1, -4896($fp)
	lw $t2, -4908($fp)
	bgt $t1, $t2, label875
	j label876
label875:
	li $t0, 1
	sw $t0, -4892($fp)
label876:
	li $t0, 0
	sw $t0, -4912($fp)
	li $t0, 41124
	sw $t0, -4916($fp)
	lw $t0, -1600($fp)
	sw $t0, -4920($fp)
	lw $t0, -4916($fp)
	lw $t1, -4920($fp)
	sub $t0, $t0, $t1
	sw $t0, -4924($fp)
	li $t0, 22647
	sw $t0, -4928($fp)
	lw $t0, -4924($fp)
	lw $t1, -4928($fp)
	sub $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -1732($fp)
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -4940($fp)
	addi $sp, $sp, -4
	lw $t0, -4932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4944($fp)
	addi $sp, $sp, 12
	lw $t1, -4944($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label879
label879:
	li $t0, 1
	sw $t0, -4912($fp)
label880:
	addi $t0, $fp, -136
	sw $t0, -4948($fp)
	li $t0, 4
	sw $t0, -4952($fp)
	li $t0, 4
	lw $t1, -4952($fp)
	mul $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, -4948($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	lw $t1, 0($t0)
	sw $t1, -4964($fp)
	addi $sp, $sp, -4
	lw $t0, -4912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4968($fp)
	addi $sp, $sp, 12
	li $t0, 8444
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4976($fp)
	li $t0, 0
	sw $t0, -4980($fp)
	li $t0, 55021
	sw $t0, -4984($fp)
	lw $t0, -928($fp)
	sw $t0, -4988($fp)
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4740($fp)
	sw $t0, -4996($fp)
	lw $t1, -4992($fp)
	lw $t2, -4996($fp)
	ble $t1, $t2, label881
	j label882
label881:
	li $t0, 1
	sw $t0, -4980($fp)
label882:
	li $t0, 0
	sw $t0, -5000($fp)
	lw $t0, -1732($fp)
	sw $t0, -5004($fp)
	li $t0, 0
	lw $t1, -5004($fp)
	sub $t0, $t0, $t1
	sw $t0, -5008($fp)
	lw $t1, -5008($fp)
	li $t2, 0
	bne $t1, $t2, label884
	j label883
label883:
	li $t0, 1
	sw $t0, -5000($fp)
label884:
	addi $sp, $sp, -4
	lw $t0, -4888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5000($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5012($fp)
	addi $sp, $sp, 24
	lw $t1, -4800($fp)
	lw $t2, -5012($fp)
	bge $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -4796($fp)
label866:
	li $t0, 0
	sw $t0, -5016($fp)
	li $t0, 0
	sw $t0, -5020($fp)
	li $t0, 38926
	sw $t0, -5024($fp)
	li $t0, 17758
	sw $t0, -5028($fp)
	lw $t1, -5024($fp)
	lw $t2, -5028($fp)
	ble $t1, $t2, label887
	j label888
label887:
	li $t0, 1
	sw $t0, -5020($fp)
label888:
	li $t0, 48795
	sw $t0, -5032($fp)
	lw $t1, -5020($fp)
	lw $t2, -5032($fp)
	blt $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -5016($fp)
label886:
	lw $t1, -4796($fp)
	lw $t2, -5016($fp)
	bne $t1, $t2, label863
	j label864
label863:
	li $t0, 1
	sw $t0, -4792($fp)
label864:
	li $t0, 0
	sw $t0, -5036($fp)
	lw $t0, -1720($fp)
	sw $t0, -5040($fp)
	lw $t0, -460($fp)
	sw $t0, -5044($fp)
	lw $t1, -5040($fp)
	lw $t2, -5044($fp)
	bge $t1, $t2, label889
	j label891
label891:
	lw $t0, -1756($fp)
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label890
label889:
	li $t0, 1
	sw $t0, -5036($fp)
label890:
	li $t0, 52086
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	sw $t0, -5056($fp)
	li $t0, 48643
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -5064($fp)
	li $t0, 0
	sw $t0, -5068($fp)
	li $t0, 0
	sw $t0, -5072($fp)
	lw $t0, -1192($fp)
	sw $t0, -5076($fp)
	lw $t1, -5076($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label894
label894:
	li $t0, 1
	sw $t0, -5072($fp)
label895:
	lw $t0, -4728($fp)
	sw $t0, -5080($fp)
	lw $t1, -5072($fp)
	lw $t2, -5080($fp)
	bgt $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -5068($fp)
label893:
	li $t0, 0
	sw $t0, -5084($fp)
	li $t0, 6248
	sw $t0, -5088($fp)
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label898
label898:
	lw $t0, -1744($fp)
	sw $t0, -5092($fp)
	lw $t1, -5092($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label897
label896:
	li $t0, 1
	sw $t0, -5084($fp)
label897:
	addi $sp, $sp, -4
	lw $t0, -5036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5084($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5096($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -5096($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5100($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -5100($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5104($fp)
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -5108($fp)
	lw $t0, -5104($fp)
	lw $t1, -5108($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -1612($fp)
	sw $t0, -5116($fp)
	lw $t0, -4740($fp)
	sw $t0, -5120($fp)
	lw $t0, -5116($fp)
	lw $t1, -5120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5124($fp)
	lw $t0, -5112($fp)
	lw $t1, -5124($fp)
	add $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t1, -4792($fp)
	lw $t2, -5128($fp)
	bne $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -4788($fp)
label862:
	lw $ra, -4($fp)
	lw $v0, -4788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -5132($fp)
	lw $t0, -460($fp)
	sw $t0, -5136($fp)
	lw $t1, -5136($fp)
	li $t2, 0
	bne $t1, $t2, label900
	j label899
label899:
	li $t0, 1
	sw $t0, -5132($fp)
label900:
	li $t0, 40448
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	sw $t0, -5148($fp)
	li $t0, 41787
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	sw $t0, -5160($fp)
	li $t0, 54680
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	sw $t0, -5172($fp)
	lw $t0, 4($fp)
	sw $t0, -5176($fp)
	lw $t0, -928($fp)
	sw $t0, -5180($fp)
	lw $t0, -5176($fp)
	lw $t1, -5180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5184($fp)
	li $t0, 0
	sw $t0, -5188($fp)
	li $t0, 58519
	sw $t0, -5192($fp)
	lw $t1, -5192($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label904
label904:
	li $t0, 1
	sw $t0, -5188($fp)
label905:
	lw $t0, -5184($fp)
	lw $t1, -5188($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	li $t0, 0
	lw $t1, -5196($fp)
	sub $t0, $t0, $t1
	sw $t0, -5200($fp)
	addi $t0, $fp, -136
	sw $t0, -5204($fp)
	li $t0, 0
	sw $t0, -5208($fp)
	li $t0, 34599
	sw $t0, -5212($fp)
	li $t0, 46652
	sw $t0, -5216($fp)
	lw $t1, -5212($fp)
	lw $t2, -5216($fp)
	beq $t1, $t2, label906
	j label907
label906:
	li $t0, 1
	sw $t0, -5208($fp)
label907:
	li $t0, 4
	lw $t1, -5208($fp)
	mul $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	lw $t1, -5204($fp)
	add $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, 0($t0)
	sw $t1, -5228($fp)
	lw $t1, -5200($fp)
	lw $t2, -5228($fp)
	blt $t1, $t2, label901
	j label902
label901:
	li $t0, 0
	sw $t0, -5232($fp)
	lw $t0, -1756($fp)
	sw $t0, -5236($fp)
	li $t0, 59471
	sw $t0, -5240($fp)
	lw $t0, -5236($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -520($fp)
	sw $t0, -5248($fp)
	lw $t0, -5244($fp)
	lw $t1, -5248($fp)
	sub $t0, $t0, $t1
	sw $t0, -5252($fp)
	li $t0, 0
	sw $t0, -5256($fp)
	li $t0, 0
	sw $t0, -5260($fp)
	lw $t0, -5168($fp)
	sw $t0, -5264($fp)
	li $t0, 46581
	sw $t0, -5268($fp)
	lw $t1, -5264($fp)
	lw $t2, -5268($fp)
	ble $t1, $t2, label912
	j label913
label912:
	li $t0, 1
	sw $t0, -5260($fp)
label913:
	lw $t0, 4($fp)
	sw $t0, -5272($fp)
	lw $t1, -5260($fp)
	lw $t2, -5272($fp)
	ble $t1, $t2, label910
	j label911
label910:
	li $t0, 1
	sw $t0, -5256($fp)
label911:
	addi $sp, $sp, -4
	lw $t0, -5252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5276($fp)
	addi $sp, $sp, 12
	lw $t1, -5276($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label908
label908:
	li $t0, 1
	sw $t0, -5232($fp)
label909:
	lw $t0, -5232($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -5280($fp)
	j label903
label902:
	li $t0, 0
	sw $t0, -5284($fp)
	lw $t0, -1372($fp)
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	sw $t0, -5292($fp)
	addi $sp, $sp, -4
	lw $t0, -5292($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5296($fp)
	addi $sp, $sp, 8
	lw $t1, -5296($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label916
label916:
	li $t0, 28035
	sw $t0, -5300($fp)
	lw $t1, -5300($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label915
label914:
	li $t0, 1
	sw $t0, -5284($fp)
label915:
	li $t0, 0
	sw $t0, -5304($fp)
	lw $t0, -1756($fp)
	sw $t0, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label920
label920:
	lw $t0, -916($fp)
	sw $t0, -5312($fp)
	lw $t1, -5312($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label919
label919:
	li $t0, 56082
	sw $t0, -5316($fp)
	lw $t1, -5316($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label918
label917:
	li $t0, 1
	sw $t0, -5304($fp)
label918:
	lw $t0, -520($fp)
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -5324($fp)
	li $t0, 0
	sw $t0, -5328($fp)
	lw $t0, -1756($fp)
	sw $t0, -5332($fp)
	lw $t0, -5156($fp)
	sw $t0, -5336($fp)
	lw $t1, -5332($fp)
	lw $t2, -5336($fp)
	bne $t1, $t2, label923
	j label922
label923:
	li $t0, 23065
	sw $t0, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 0
	bne $t1, $t2, label921
	j label922
label921:
	li $t0, 1
	sw $t0, -5328($fp)
label922:
	addi $t0, $fp, -56
	sw $t0, -5344($fp)
	li $t0, 1
	sw $t0, -5348($fp)
	li $t0, 4
	lw $t1, -5348($fp)
	mul $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	lw $t1, 0($t0)
	sw $t1, -5360($fp)
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5364($fp)
	addi $sp, $sp, 24
	li $t0, 39596
	sw $t0, -5368($fp)
	lw $t0, -5364($fp)
	lw $t1, -5368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5372($fp)
label903:
	j label860
label859:
	addi $t0, $fp, -96
	sw $t0, -5376($fp)
	addi $t0, $fp, -96
	sw $t0, -5380($fp)
	li $t0, 0
	sw $t0, -5384($fp)
	li $t0, 24028
	sw $t0, -5388($fp)
	lw $t1, -5388($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label928
label929:
	li $t0, 17521
	sw $t0, -5392($fp)
	lw $t1, -5392($fp)
	li $t2, 0
	bne $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -5384($fp)
label928:
	li $t0, 4
	lw $t1, -5384($fp)
	mul $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, -5380($fp)
	add $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, 0($t0)
	sw $t1, -5404($fp)
	li $t0, 4
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, 0($t0)
	sw $t1, -5416($fp)
	lw $t1, -5416($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label925
label924:
	li $t0, 39342
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	sw $t0, -5428($fp)
	li $t0, 50682
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	sw $t0, -5440($fp)
	li $t0, 58645
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	sw $t0, -5452($fp)
	li $t0, 0
	sw $t0, -5456($fp)
	addi $t0, $fp, -136
	sw $t0, -5460($fp)
	lw $t0, -904($fp)
	sw $t0, -5464($fp)
	li $t0, 4
	lw $t1, -5464($fp)
	mul $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, -5460($fp)
	add $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	lw $t1, 0($t0)
	sw $t1, -5476($fp)
	lw $t1, -5476($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label932
label932:
	li $t0, 0
	sw $t0, -5480($fp)
	li $t0, 61989
	sw $t0, -5484($fp)
	lw $t1, -5484($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label933
label933:
	li $t0, 1
	sw $t0, -5480($fp)
label934:
	li $t0, 59127
	sw $t0, -5488($fp)
	lw $t0, -5480($fp)
	lw $t1, -5488($fp)
	mul $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label931
label930:
	li $t0, 1
	sw $t0, -5456($fp)
label931:
	addi $t0, $fp, -96
	sw $t0, -5496($fp)
	li $t0, 0
	sw $t0, -5500($fp)
	lw $t0, -5424($fp)
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label937
label937:
	lw $t0, -5436($fp)
	sw $t0, -5508($fp)
	lw $t1, -5508($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -5500($fp)
label936:
	lw $t0, -5500($fp)
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	sw $t0, -5512($fp)
	li $t0, 4
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5496($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	li $t0, 0
	sw $t0, -5528($fp)
	addi $t0, $fp, -196
	sw $t0, -5532($fp)
	li $t0, 3
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
	bne $t1, $t2, label939
	j label938
label938:
	li $t0, 1
	sw $t0, -5528($fp)
label939:
	li $t0, 0
	sw $t0, -5552($fp)
	li $t0, 19614
	sw $t0, -5556($fp)
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label941
	j label940
label940:
	li $t0, 1
	sw $t0, -5552($fp)
label941:
	li $t0, 0
	lw $t1, -5552($fp)
	sub $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5528($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5564($fp)
	j label926
label925:
	li $t0, 52367
	sw $t0, -5568($fp)
	li $t0, 0
	sw $t0, -5572($fp)
	li $t0, 0
	sw $t0, -5576($fp)
	lw $t0, -1780($fp)
	sw $t0, -5580($fp)
	lw $t1, -5580($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label944
label944:
	li $t0, 1
	sw $t0, -5576($fp)
label945:
	li $t0, 0
	lw $t1, -5576($fp)
	sub $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $t1, -5584($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label942
label942:
	li $t0, 1
	sw $t0, -5572($fp)
label943:
	lw $t0, -5568($fp)
	lw $t1, -5572($fp)
	add $t0, $t0, $t1
	sw $t0, -5588($fp)
	li $t0, 15249
	sw $t0, -5592($fp)
label926:
label860:
	j label836
label838:
	addi $t0, $fp, -40
	sw $t0, -5596($fp)
	li $t0, 0
	sw $t0, -5600($fp)
	li $t0, 4
	lw $t1, -5600($fp)
	mul $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, -5596($fp)
	add $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	lw $t1, 0($t0)
	sw $t1, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5616($fp)
	li $t0, 1
	sw $t0, -5620($fp)
	li $t0, 4
	lw $t1, -5620($fp)
	mul $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	lw $t1, -5616($fp)
	add $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	lw $t1, 0($t0)
	sw $t1, -5632($fp)
	lw $t0, -5632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5636($fp)
	li $t0, 2
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
	lw $t0, -5652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5656($fp)
	li $t0, 3
	sw $t0, -5660($fp)
	li $t0, 4
	lw $t1, -5660($fp)
	mul $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	lw $t1, -5656($fp)
	add $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, 0($t0)
	sw $t1, -5672($fp)
	lw $t0, -5672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5676($fp)
	li $t0, 4
	sw $t0, -5680($fp)
	li $t0, 4
	lw $t1, -5680($fp)
	mul $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	lw $t1, -5676($fp)
	add $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	lw $t1, 0($t0)
	sw $t1, -5692($fp)
	lw $t0, -5692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5696($fp)
	li $t0, 5
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
	lw $t0, -5712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5716($fp)
	li $t0, 6
	sw $t0, -5720($fp)
	li $t0, 4
	lw $t1, -5720($fp)
	mul $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	lw $t1, -5716($fp)
	add $t0, $t0, $t1
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	lw $t1, 0($t0)
	sw $t1, -5732($fp)
	lw $t0, -5732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5736($fp)
	li $t0, 7
	sw $t0, -5740($fp)
	li $t0, 4
	lw $t1, -5740($fp)
	mul $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	lw $t1, -5736($fp)
	add $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	lw $t1, 0($t0)
	sw $t1, -5752($fp)
	lw $t0, -5752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5756($fp)
	li $t0, 8
	sw $t0, -5760($fp)
	li $t0, 4
	lw $t1, -5760($fp)
	mul $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	lw $t1, -5756($fp)
	add $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, 0($t0)
	sw $t1, -5772($fp)
	lw $t0, -5772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -5828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	li $t0, 4
	lw $t1, -5836($fp)
	mul $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	lw $t1, -5832($fp)
	add $t0, $t0, $t1
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	lw $t1, 0($t0)
	sw $t1, -5848($fp)
	lw $t0, -5848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5852($fp)
	li $t0, 1
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
	lw $t0, -5868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5872($fp)
	li $t0, 2
	sw $t0, -5876($fp)
	li $t0, 4
	lw $t1, -5876($fp)
	mul $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	lw $t1, -5872($fp)
	add $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	lw $t1, 0($t0)
	sw $t1, -5888($fp)
	lw $t0, -5888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5896($fp)
	li $t0, 0
	sw $t0, -5900($fp)
	li $t0, 4
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, -5896($fp)
	add $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5908($fp)
	lw $t1, 0($t0)
	sw $t1, -5912($fp)
	lw $t0, -5912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5916($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -5936($fp)
	li $t0, 2
	sw $t0, -5940($fp)
	li $t0, 4
	lw $t1, -5940($fp)
	mul $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	lw $t1, -5936($fp)
	add $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	lw $t1, 0($t0)
	sw $t1, -5952($fp)
	lw $t0, -5952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5956($fp)
	li $t0, 3
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
	lw $t0, -5972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5976($fp)
	li $t0, 4
	sw $t0, -5980($fp)
	li $t0, 4
	lw $t1, -5980($fp)
	mul $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	lw $t1, -5976($fp)
	add $t0, $t0, $t1
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	lw $t1, 0($t0)
	sw $t1, -5992($fp)
	lw $t0, -5992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5996($fp)
	li $t0, 5
	sw $t0, -6000($fp)
	li $t0, 4
	lw $t1, -6000($fp)
	mul $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	lw $t1, -5996($fp)
	add $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	lw $t1, 0($t0)
	sw $t1, -6012($fp)
	lw $t0, -6012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6016($fp)
	li $t0, 6
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
	lw $t0, -6032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6036($fp)
	li $t0, 7
	sw $t0, -6040($fp)
	li $t0, 4
	lw $t1, -6040($fp)
	mul $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	lw $t1, -6036($fp)
	add $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	lw $t1, 0($t0)
	sw $t1, -6052($fp)
	lw $t0, -6052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6056($fp)
	li $t0, 8
	sw $t0, -6060($fp)
	li $t0, 4
	lw $t1, -6060($fp)
	mul $t0, $t0, $t1
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	lw $t1, -6056($fp)
	add $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	lw $t1, 0($t0)
	sw $t1, -6072($fp)
	lw $t0, -6072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6076($fp)
	li $t0, 9
	sw $t0, -6080($fp)
	li $t0, 4
	lw $t1, -6080($fp)
	mul $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	lw $t1, -6076($fp)
	add $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	lw $t1, 0($t0)
	sw $t1, -6092($fp)
	lw $t0, -6092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6112($fp)
	li $t0, 0
	sw $t0, -6116($fp)
	li $t0, 4
	lw $t1, -6116($fp)
	mul $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	lw $t1, -6112($fp)
	add $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	lw $t1, 0($t0)
	sw $t1, -6128($fp)
	lw $t0, -6128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6132($fp)
	li $t0, 1
	sw $t0, -6136($fp)
	li $t0, 4
	lw $t1, -6136($fp)
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	lw $t1, -6132($fp)
	add $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	lw $t1, 0($t0)
	sw $t1, -6148($fp)
	lw $t0, -6148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6152($fp)
	li $t0, 2
	sw $t0, -6156($fp)
	li $t0, 4
	lw $t1, -6156($fp)
	mul $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	lw $t1, -6152($fp)
	add $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	lw $t1, 0($t0)
	sw $t1, -6168($fp)
	lw $t0, -6168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6172($fp)
	li $t0, 3
	sw $t0, -6176($fp)
	li $t0, 4
	lw $t1, -6176($fp)
	mul $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	lw $t1, -6172($fp)
	add $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	lw $t1, 0($t0)
	sw $t1, -6188($fp)
	lw $t0, -6188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6192($fp)
	li $t0, 4
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
	lw $t0, -6208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6212($fp)
	li $t0, 5
	sw $t0, -6216($fp)
	li $t0, 4
	lw $t1, -6216($fp)
	mul $t0, $t0, $t1
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	lw $t1, -6212($fp)
	add $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	lw $t1, 0($t0)
	sw $t1, -6228($fp)
	lw $t0, -6228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6232($fp)
	li $t0, 6
	sw $t0, -6236($fp)
	li $t0, 4
	lw $t1, -6236($fp)
	mul $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6240($fp)
	lw $t1, -6232($fp)
	add $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	lw $t1, 0($t0)
	sw $t1, -6248($fp)
	lw $t0, -6248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6252($fp)
	li $t0, 7
	sw $t0, -6256($fp)
	li $t0, 4
	lw $t1, -6256($fp)
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	lw $t1, -6252($fp)
	add $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	lw $t1, 0($t0)
	sw $t1, -6268($fp)
	lw $t0, -6268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6272($fp)
	li $t0, 8
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
	lw $t0, -6288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -6292($fp)
	li $t0, 9
	sw $t0, -6296($fp)
	li $t0, 4
	lw $t1, -6296($fp)
	mul $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	lw $t1, -6292($fp)
	add $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	lw $t1, 0($t0)
	sw $t1, -6308($fp)
	lw $t0, -6308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -6312($fp)
	lw $t0, -6312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6320($fp)
	li $t0, 0
	sw $t0, -6324($fp)
	li $t0, 4
	lw $t1, -6324($fp)
	mul $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -6328($fp)
	lw $t1, -6320($fp)
	add $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	lw $t1, 0($t0)
	sw $t1, -6336($fp)
	lw $t0, -6336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6340($fp)
	li $t0, 1
	sw $t0, -6344($fp)
	li $t0, 4
	lw $t1, -6344($fp)
	mul $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	lw $t1, -6340($fp)
	add $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	lw $t1, 0($t0)
	sw $t1, -6356($fp)
	lw $t0, -6356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6360($fp)
	li $t0, 2
	sw $t0, -6364($fp)
	li $t0, 4
	lw $t1, -6364($fp)
	mul $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	lw $t1, -6360($fp)
	add $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	lw $t1, 0($t0)
	sw $t1, -6376($fp)
	lw $t0, -6376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6380($fp)
	li $t0, 3
	sw $t0, -6384($fp)
	li $t0, 4
	lw $t1, -6384($fp)
	mul $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	lw $t1, -6380($fp)
	add $t0, $t0, $t1
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	lw $t1, 0($t0)
	sw $t1, -6396($fp)
	lw $t0, -6396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6400($fp)
	li $t0, 4
	sw $t0, -6404($fp)
	li $t0, 4
	lw $t1, -6404($fp)
	mul $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	lw $t1, -6400($fp)
	add $t0, $t0, $t1
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	lw $t1, 0($t0)
	sw $t1, -6416($fp)
	lw $t0, -6416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6420($fp)
	li $t0, 5
	sw $t0, -6424($fp)
	li $t0, 4
	lw $t1, -6424($fp)
	mul $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	lw $t1, -6420($fp)
	add $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	lw $t1, 0($t0)
	sw $t1, -6436($fp)
	lw $t0, -6436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6440($fp)
	li $t0, 6
	sw $t0, -6444($fp)
	li $t0, 4
	lw $t1, -6444($fp)
	mul $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	lw $t1, -6440($fp)
	add $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	lw $t1, 0($t0)
	sw $t1, -6456($fp)
	lw $t0, -6456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -6472($fp)
	li $t0, 0
	sw $t0, -6476($fp)
	li $t0, 4
	lw $t1, -6476($fp)
	mul $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	lw $t1, -6472($fp)
	add $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	lw $t1, 0($t0)
	sw $t1, -6488($fp)
	lw $t0, -6488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -6492($fp)
	li $t0, 1
	sw $t0, -6496($fp)
	li $t0, 4
	lw $t1, -6496($fp)
	mul $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	lw $t1, -6492($fp)
	add $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	lw $t1, 0($t0)
	sw $t1, -6508($fp)
	lw $t0, -6508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -6512($fp)
	li $t0, 2
	sw $t0, -6516($fp)
	li $t0, 4
	lw $t1, -6516($fp)
	mul $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	lw $t1, -6512($fp)
	add $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	lw $t1, 0($t0)
	sw $t1, -6528($fp)
	lw $t0, -6528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -6532($fp)
	li $t0, 3
	sw $t0, -6536($fp)
	li $t0, 4
	lw $t1, -6536($fp)
	mul $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	lw $t1, -6532($fp)
	add $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	lw $t1, 0($t0)
	sw $t1, -6548($fp)
	lw $t0, -6548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -6552($fp)
	li $t0, 4
	sw $t0, -6556($fp)
	li $t0, 4
	lw $t1, -6556($fp)
	mul $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	lw $t1, -6552($fp)
	add $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	lw $t1, 0($t0)
	sw $t1, -6568($fp)
	lw $t0, -6568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -6572($fp)
	li $t0, 5
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
	lw $t0, -6588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -6592($fp)
	li $t0, 6
	sw $t0, -6596($fp)
	li $t0, 4
	lw $t1, -6596($fp)
	mul $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, -6592($fp)
	add $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, 0($t0)
	sw $t1, -6608($fp)
	lw $t0, -6608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -6612($fp)
	li $t0, 7
	sw $t0, -6616($fp)
	li $t0, 4
	lw $t1, -6616($fp)
	mul $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	lw $t1, -6612($fp)
	add $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	lw $t1, 0($t0)
	sw $t1, -6628($fp)
	lw $t0, -6628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1600($fp)
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1612($fp)
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6640($fp)
	li $t0, 0
	sw $t0, -6644($fp)
	li $t0, 4
	lw $t1, -6644($fp)
	mul $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	lw $t1, -6640($fp)
	add $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	lw $t1, 0($t0)
	sw $t1, -6656($fp)
	lw $t0, -6656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6660($fp)
	li $t0, 1
	sw $t0, -6664($fp)
	li $t0, 4
	lw $t1, -6664($fp)
	mul $t0, $t0, $t1
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	lw $t1, -6660($fp)
	add $t0, $t0, $t1
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	lw $t1, 0($t0)
	sw $t1, -6676($fp)
	lw $t0, -6676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -6680($fp)
	li $t0, 2
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
	addi $t0, $fp, -212
	sw $t0, -6700($fp)
	li $t0, 3
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
	lw $t0, -1720($fp)
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1756($fp)
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1768($fp)
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1780($fp)
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6744($fp)
	li $t0, 0
	sw $t0, -6748($fp)
	addi $t0, $fp, -44
	sw $t0, -6752($fp)
	li $t0, 0
	sw $t0, -6756($fp)
	li $t0, 4
	lw $t1, -6756($fp)
	mul $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, 0($t0)
	sw $t1, -6768($fp)
	li $t0, 61945
	sw $t0, -6772($fp)
	lw $t1, -6768($fp)
	lw $t2, -6772($fp)
	bge $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -6748($fp)
label951:
	li $t0, 21497
	sw $t0, -6776($fp)
	lw $t0, -1372($fp)
	sw $t0, -6780($fp)
	lw $t0, -6776($fp)
	lw $t1, -6780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6784($fp)
	li $t0, 0
	sw $t0, -6788($fp)
	li $t0, 35626
	sw $t0, -6792($fp)
	lw $t1, -6792($fp)
	li $t2, 0
	bne $t1, $t2, label952
	j label953
label952:
	li $t0, 1
	sw $t0, -6788($fp)
label953:
	addi $t0, $fp, -164
	sw $t0, -6796($fp)
	lw $t0, -892($fp)
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
	lw $t0, -472($fp)
	sw $t0, -6816($fp)
	lw $t0, -6812($fp)
	lw $t1, -6816($fp)
	sub $t0, $t0, $t1
	sw $t0, -6820($fp)
	li $t0, 0
	sw $t0, -6824($fp)
	li $t0, 37372
	sw $t0, -6828($fp)
	lw $t1, -6828($fp)
	li $t2, 0
	bne $t1, $t2, label955
	j label956
label956:
	lw $t0, -1612($fp)
	sw $t0, -6832($fp)
	lw $t1, -6832($fp)
	li $t2, 0
	bne $t1, $t2, label954
	j label955
label954:
	li $t0, 1
	sw $t0, -6824($fp)
label955:
	addi $sp, $sp, -4
	lw $t0, -6748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6836($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -6836($fp)
	sub $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t1, -6840($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label948
label949:
	li $t0, 0
	sw $t0, -6844($fp)
	lw $t0, -460($fp)
	sw $t0, -6848($fp)
	lw $t1, -6848($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label957
label957:
	li $t0, 1
	sw $t0, -6844($fp)
label958:
	li $t0, 0
	lw $t1, -6844($fp)
	sub $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t1, -6852($fp)
	li $t2, 0
	bne $t1, $t2, label946
	j label948
label948:
	li $t0, 62267
	sw $t0, -6856($fp)
	lw $t0, -1780($fp)
	sw $t0, -6860($fp)
	lw $t0, -6856($fp)
	lw $t1, -6860($fp)
	add $t0, $t0, $t1
	sw $t0, -6864($fp)
	li $t0, 11321
	sw $t0, -6868($fp)
	lw $t0, -6864($fp)
	lw $t1, -6868($fp)
	sub $t0, $t0, $t1
	sw $t0, -6872($fp)
	li $t0, 0
	sw $t0, -6876($fp)
	li $t0, 54928
	sw $t0, -6880($fp)
	lw $t1, -6880($fp)
	li $t2, 0
	bne $t1, $t2, label960
	j label959
label959:
	li $t0, 1
	sw $t0, -6876($fp)
label960:
	lw $t0, -6872($fp)
	lw $t1, -6876($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t1, -6884($fp)
	li $t2, 0
	bne $t1, $t2, label946
	j label947
label946:
	li $t0, 1
	sw $t0, -6744($fp)
label947:
	lw $ra, -4($fp)
	lw $v0, -6744($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -124
	li $t0, 31330
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 57973
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	li $t0, 35974
	sw $t0, -40($fp)
	li $t0, 0
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -36($fp)
	lw $t1, -44($fp)
	mul $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label964
	j label963
label964:
	li $t0, 25265
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label961
	j label963
label963:
	jal f9
	sw $v0, -56($fp)
	addi $sp, $sp, 4
	lw $t1, -56($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label961
label961:
	li $t0, 1
	sw $t0, -32($fp)
label962:
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -68($fp)
	li $t0, 0
	sw $t0, -72($fp)
	lw $t0, -24($fp)
	sw $t0, -76($fp)
	lw $t0, -24($fp)
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -84($fp)
	li $t0, 48331
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	li $t0, 0
	sw $t0, -96($fp)
	li $t0, 17768
	sw $t0, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label970
	j label969
label969:
	li $t0, 1
	sw $t0, -96($fp)
label970:
	li $t0, 16105
	sw $t0, -104($fp)
	lw $t0, -96($fp)
	lw $t1, -104($fp)
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	addi $sp, $sp, -4
	lw $t0, -92($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -112($fp)
	addi $sp, $sp, 12
	lw $t1, -112($fp)
	li $t2, 0
	bne $t1, $t2, label968
	j label967
label967:
	li $t0, 1
	sw $t0, -72($fp)
label968:
	li $t0, 0
	sw $t0, -116($fp)
	li $t0, 8314
	sw $t0, -120($fp)
	lw $t0, -24($fp)
	sw $t0, -124($fp)
	lw $t1, -120($fp)
	lw $t2, -124($fp)
	bge $t1, $t2, label971
	j label972
label971:
	li $t0, 1
	sw $t0, -116($fp)
label972:
	lw $t1, -72($fp)
	lw $t2, -116($fp)
	bne $t1, $t2, label965
	j label966
label965:
	li $t0, 1
	sw $t0, -68($fp)
label966:
	lw $t0, -68($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -128($fp)
	lw $ra, -4($fp)
	lw $v0, -128($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -184
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, 4($fp)
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label981
	j label980
label980:
	li $t0, 1
	sw $t0, -20($fp)
label981:
	li $t0, 30694
	sw $t0, -28($fp)
	lw $t1, -20($fp)
	lw $t2, -28($fp)
	bne $t1, $t2, label978
	j label979
label978:
	li $t0, 1
	sw $t0, -16($fp)
label979:
	li $t0, 11080
	sw $t0, -32($fp)
	li $t0, 55330
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	mul $t0, $t0, $t1
	sw $t0, -40($fp)
	li $t0, 1
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	lw $t1, -44($fp)
	mul $t0, $t0, $t1
	sw $t0, -48($fp)
	li $t0, 0
	sw $t0, -52($fp)
	li $t0, 54771
	sw $t0, -56($fp)
	lw $t0, 4($fp)
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	mul $t0, $t0, $t1
	sw $t0, -64($fp)
	li $t0, 58187
	sw $t0, -68($fp)
	lw $t1, -64($fp)
	lw $t2, -68($fp)
	blt $t1, $t2, label982
	j label983
label982:
	li $t0, 1
	sw $t0, -52($fp)
label983:
	lw $t0, 4($fp)
	sw $t0, -72($fp)
	li $t0, 0
	sw $t0, -76($fp)
	li $t0, 17489
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label985
	j label984
label984:
	li $t0, 1
	sw $t0, -76($fp)
label985:
	addi $sp, $sp, -4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
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
	jal f7
	sw $v0, -84($fp)
	addi $sp, $sp, 24
	lw $t0, 4($fp)
	sw $t0, -88($fp)
	lw $t1, -84($fp)
	lw $t2, -88($fp)
	blt $t1, $t2, label976
	j label977
label976:
	li $t0, 1
	sw $t0, -12($fp)
label977:
	lw $t0, 8($fp)
	sw $t0, -92($fp)
	li $t0, 61733
	sw $t0, -96($fp)
	lw $t0, -92($fp)
	lw $t1, -96($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -100($fp)
	lw $t0, 12($fp)
	sw $t0, -104($fp)
	lw $t0, -100($fp)
	lw $t1, -104($fp)
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	li $t0, 0
	sw $t0, -112($fp)
	li $t0, 22391
	sw $t0, -116($fp)
	li $t0, 32342
	sw $t0, -120($fp)
	lw $t0, -116($fp)
	lw $t1, -120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -124($fp)
	lw $t1, -124($fp)
	li $t2, 0
	bne $t1, $t2, label988
	j label987
label988:
	li $t0, 61662
	sw $t0, -128($fp)
	lw $t1, -128($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label987
label986:
	li $t0, 1
	sw $t0, -112($fp)
label987:
	lw $t0, 4($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -136($fp)
	lw $t0, 8($fp)
	sw $t0, -140($fp)
	lw $t0, 4($fp)
	sw $t0, -144($fp)
	lw $t0, -140($fp)
	lw $t1, -144($fp)
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	li $t0, 44141
	sw $t0, -152($fp)
	lw $t0, -148($fp)
	lw $t1, -152($fp)
	mul $t0, $t0, $t1
	sw $t0, -156($fp)
	addi $sp, $sp, -4
	lw $t0, -12($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -160($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t1, -164($fp)
	li $t2, 0
	bne $t1, $t2, label975
	j label973
label975:
	li $t0, 42161
	sw $t0, -168($fp)
	li $t0, 49760
	sw $t0, -172($fp)
	lw $t0, -168($fp)
	lw $t1, -172($fp)
	mul $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, 4($fp)
	sw $t0, -180($fp)
	lw $t0, -176($fp)
	lw $t1, -180($fp)
	sub $t0, $t0, $t1
	sw $t0, -184($fp)
	li $t0, 2531
	sw $t0, -188($fp)
	lw $t1, -184($fp)
	lw $t2, -188($fp)
	ble $t1, $t2, label973
	j label974
label973:
	li $t0, 1
	sw $t0, -8($fp)
label974:
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -256
	li $t0, 12251
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 5721
	sw $t0, -36($fp)
	addi $t0, $fp, -20
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
	li $t0, 23010
	sw $t0, -60($fp)
	addi $t0, $fp, -20
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
	li $t0, 34428
	sw $t0, -84($fp)
	addi $t0, $fp, -20
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
	li $t0, 2131
	sw $t0, -108($fp)
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
	sw $t0, -132($fp)
	li $t0, 3
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
	lw $t0, -28($fp)
	sw $t0, -152($fp)
	lw $t0, -148($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	lw $t0, -28($fp)
	sw $t0, -164($fp)
	li $t0, 19741
	sw $t0, -168($fp)
	lw $t1, -164($fp)
	lw $t2, -168($fp)
	bne $t1, $t2, label989
	j label990
label989:
	li $t0, 1
	sw $t0, -160($fp)
label990:
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -172($fp)
	addi $sp, $sp, 12
	lw $t0, -28($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	li $t0, 51072
	sw $t0, -260($fp)
	lw $ra, -4($fp)
	lw $v0, -260($fp)
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
	jal f11
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
