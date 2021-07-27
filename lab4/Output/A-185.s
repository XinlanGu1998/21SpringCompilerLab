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
	addi $sp, $sp, -416
	li $t0, 36199
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 18728
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 17190
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 24665
	sw $t0, -48($fp)
	addi $t0, $fp, -8
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
	lw $t0, -16($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -40($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -84($fp)
	li $t0, 0
	sw $t0, -88($fp)
	li $t0, 4
	lw $t1, -88($fp)
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, 0($t0)
	sw $t1, -100($fp)
	lw $t0, -100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 4
	lw $t1, -108($fp)
	mul $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	lw $t1, -104($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	lw $t1, 0($t0)
	sw $t1, -120($fp)
	lw $ra, -4($fp)
	lw $v0, -120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -16($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -40($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -136($fp)
	li $t0, 0
	sw $t0, -140($fp)
	li $t0, 4
	lw $t1, -140($fp)
	mul $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	lw $t1, 0($t0)
	sw $t1, -152($fp)
	lw $t0, -152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -156($fp)
	lw $t0, -40($fp)
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
	lw $t0, 8($fp)
	sw $t0, -176($fp)
	lw $t0, -172($fp)
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	li $t0, 62922
	sw $t0, -184($fp)
	lw $t0, -180($fp)
	lw $t1, -184($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	li $t0, 0
	sw $t0, -192($fp)
	li $t0, 41924
	sw $t0, -196($fp)
	li $t0, 47133
	sw $t0, -200($fp)
	lw $t1, -196($fp)
	lw $t2, -200($fp)
	bne $t1, $t2, label121
	j label123
label123:
	lw $t0, -16($fp)
	sw $t0, -204($fp)
	lw $t1, -204($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -192($fp)
label122:
	lw $t0, 4($fp)
	sw $t0, -208($fp)
	li $t0, 0
	lw $t1, -208($fp)
	sub $t0, $t0, $t1
	sw $t0, -212($fp)
	li $t0, 0
	lw $t1, -212($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	addi $sp, $sp, -4
	lw $t0, -192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -220($fp)
	addi $sp, $sp, 12
	lw $t0, -188($fp)
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $ra, -4($fp)
	lw $v0, -224($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -8
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	li $t0, 4
	lw $t1, -232($fp)
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, -228($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, 0($t0)
	sw $t1, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	lw $t0, -28($fp)
	sw $t0, -248($fp)
label125:
	li $t0, 58157
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	sw $t0, -264($fp)
	lw $t0, -256($fp)
	sw $t0, -268($fp)
	li $t0, 0
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -264($fp)
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	li $t0, 0
	sw $t0, -280($fp)
	lw $t0, 4($fp)
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label127:
	li $t0, 1
	sw $t0, -280($fp)
label128:
	li $t0, 0
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -276($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -256($fp)
	sw $t0, -296($fp)
	lw $t0, -292($fp)
	lw $t1, -296($fp)
	sub $t0, $t0, $t1
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 13259
	sw $t0, -308($fp)
	li $t0, 0
	lw $t1, -308($fp)
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	li $t0, 0
	sw $t0, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	lw $t0, -16($fp)
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -320($fp)
label134:
	lw $t0, -40($fp)
	sw $t0, -328($fp)
	lw $t0, -320($fp)
	lw $t1, -328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -332($fp)
	lw $t0, -16($fp)
	sw $t0, -336($fp)
	li $t0, 0
	lw $t1, -336($fp)
	sub $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t1, -332($fp)
	lw $t2, -340($fp)
	blt $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -316($fp)
label132:
	lw $t1, -312($fp)
	lw $t2, -316($fp)
	beq $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -304($fp)
label130:
	li $t0, 46269
	sw $t0, -344($fp)
	lw $t0, -16($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -40($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
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
	li $t0, 0
	sw $t0, -380($fp)
	lw $t0, -16($fp)
	sw $t0, -384($fp)
	li $t0, 0
	sw $t0, -388($fp)
	lw $t0, -16($fp)
	sw $t0, -392($fp)
	li $t0, 32793
	sw $t0, -396($fp)
	lw $t0, -392($fp)
	lw $t1, -396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -400($fp)
	lw $t0, -16($fp)
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	mul $t0, $t0, $t1
	sw $t0, -408($fp)
	li $t0, 26130
	sw $t0, -412($fp)
	li $t0, 0
	lw $t1, -412($fp)
	sub $t0, $t0, $t1
	sw $t0, -416($fp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -420($fp)
	addi $sp, $sp, 12
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label137:
	li $t0, 1
	sw $t0, -388($fp)
label138:
	lw $t1, -384($fp)
	lw $t2, -388($fp)
	beq $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -380($fp)
label136:
	lw $ra, -4($fp)
	lw $v0, -380($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -276
	li $t0, 10958
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
	li $t0, 37043
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
	li $t0, 20186
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
	li $t0, 8531
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
	li $t0, 4
	lw $t1, -124($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, 0($t0)
	sw $t1, -136($fp)
	lw $t0, -136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -140($fp)
	li $t0, 1
	sw $t0, -144($fp)
	li $t0, 4
	lw $t1, -144($fp)
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t1, 0($t0)
	sw $t1, -156($fp)
	lw $t0, -156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -160($fp)
	li $t0, 2
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
	lw $t0, -176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -180($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -200($fp)
	lw $t0, 8($fp)
	sw $t0, -204($fp)
	li $t0, 43524
	sw $t0, -208($fp)
	lw $t0, 8($fp)
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -216($fp)
	lw $t0, -204($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label142
label142:
	li $t0, 13359
	sw $t0, -224($fp)
	li $t0, 0
	lw $t1, -224($fp)
	sub $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t1, -228($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label141
label143:
	li $t0, 54436
	sw $t0, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label141
label141:
	li $t0, 0
	sw $t0, -236($fp)
	li $t0, 1223
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label145
label145:
	li $t0, 1
	sw $t0, -236($fp)
label146:
	lw $t0, 8($fp)
	sw $t0, -244($fp)
	lw $t0, -236($fp)
	lw $t1, -244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label140
label144:
	addi $t0, $fp, -20
	sw $t0, -252($fp)
	lw $t0, 8($fp)
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
	lw $t0, -272($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -276($fp)
	addi $sp, $sp, -4
	lw $t0, -268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -280($fp)
	addi $sp, $sp, 12
	lw $t1, -280($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -200($fp)
label140:
	lw $ra, -4($fp)
	lw $v0, -200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -11120
	li $t0, 23308
	sw $t0, -272($fp)
	addi $t0, $fp, -12
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
	li $t0, 27008
	sw $t0, -296($fp)
	addi $t0, $fp, -12
	sw $t0, -300($fp)
	li $t0, 1
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
	li $t0, 52310
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 60362
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 38046
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 7905
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 34938
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 8709
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 26633
	sw $t0, -392($fp)
	addi $t0, $fp, -28
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
	li $t0, 52128
	sw $t0, -416($fp)
	addi $t0, $fp, -28
	sw $t0, -420($fp)
	li $t0, 1
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
	li $t0, 33374
	sw $t0, -440($fp)
	addi $t0, $fp, -28
	sw $t0, -444($fp)
	li $t0, 2
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
	li $t0, 46981
	sw $t0, -464($fp)
	addi $t0, $fp, -28
	sw $t0, -468($fp)
	li $t0, 3
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
	li $t0, 23703
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 30760
	sw $t0, -500($fp)
	addi $t0, $fp, -32
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
	li $t0, 23370
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 5300
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 56181
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 45406
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 63457
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 3904
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 26139
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 24051
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 36697
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 37097
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 61094
	sw $t0, -644($fp)
	addi $t0, $fp, -56
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
	li $t0, 56883
	sw $t0, -668($fp)
	addi $t0, $fp, -56
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
	li $t0, 45628
	sw $t0, -692($fp)
	addi $t0, $fp, -56
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
	li $t0, 39082
	sw $t0, -716($fp)
	addi $t0, $fp, -56
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
	li $t0, 4706
	sw $t0, -740($fp)
	addi $t0, $fp, -56
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
	li $t0, 34529
	sw $t0, -764($fp)
	addi $t0, $fp, -56
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
	li $t0, 40305
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 28014
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 61537
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 27080
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 22841
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 34047
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 34985
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 57779
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	li $t0, 42756
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 61619
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 44371
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	li $t0, 10595
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 43064
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	li $t0, 2538
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 41355
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	li $t0, 898
	sw $t0, -968($fp)
	addi $t0, $fp, -72
	sw $t0, -972($fp)
	li $t0, 0
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
	li $t0, 7838
	sw $t0, -992($fp)
	addi $t0, $fp, -72
	sw $t0, -996($fp)
	li $t0, 1
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
	li $t0, 32000
	sw $t0, -1016($fp)
	addi $t0, $fp, -72
	sw $t0, -1020($fp)
	li $t0, 2
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
	li $t0, 46304
	sw $t0, -1040($fp)
	addi $t0, $fp, -72
	sw $t0, -1044($fp)
	li $t0, 3
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
	li $t0, 5759
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 35905
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 6907
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 29810
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 7066
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 44005
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 25368
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 63950
	sw $t0, -1148($fp)
	addi $t0, $fp, -112
	sw $t0, -1152($fp)
	li $t0, 0
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
	li $t0, 24097
	sw $t0, -1172($fp)
	addi $t0, $fp, -112
	sw $t0, -1176($fp)
	li $t0, 1
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1176($fp)
	lw $t1, -1184($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1172($fp)
	lw $t1, -1188($fp)
	sw $t0, 0($t1)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	li $t0, 64450
	sw $t0, -1196($fp)
	addi $t0, $fp, -112
	sw $t0, -1200($fp)
	li $t0, 2
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1200($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1196($fp)
	lw $t1, -1212($fp)
	sw $t0, 0($t1)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	li $t0, 3120
	sw $t0, -1220($fp)
	addi $t0, $fp, -112
	sw $t0, -1224($fp)
	li $t0, 3
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1224($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1220($fp)
	lw $t1, -1236($fp)
	sw $t0, 0($t1)
	lw $t0, -1236($fp)
	lw $t1, 0($t0)
	sw $t1, -1240($fp)
	li $t0, 58626
	sw $t0, -1244($fp)
	addi $t0, $fp, -112
	sw $t0, -1248($fp)
	li $t0, 4
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1248($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1244($fp)
	lw $t1, -1260($fp)
	sw $t0, 0($t1)
	lw $t0, -1260($fp)
	lw $t1, 0($t0)
	sw $t1, -1264($fp)
	li $t0, 39219
	sw $t0, -1268($fp)
	addi $t0, $fp, -112
	sw $t0, -1272($fp)
	li $t0, 5
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1272($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1268($fp)
	lw $t1, -1284($fp)
	sw $t0, 0($t1)
	lw $t0, -1284($fp)
	lw $t1, 0($t0)
	sw $t1, -1288($fp)
	li $t0, 31135
	sw $t0, -1292($fp)
	addi $t0, $fp, -112
	sw $t0, -1296($fp)
	li $t0, 6
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1296($fp)
	lw $t1, -1304($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1292($fp)
	lw $t1, -1308($fp)
	sw $t0, 0($t1)
	lw $t0, -1308($fp)
	lw $t1, 0($t0)
	sw $t1, -1312($fp)
	li $t0, 54627
	sw $t0, -1316($fp)
	addi $t0, $fp, -112
	sw $t0, -1320($fp)
	li $t0, 7
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1320($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1316($fp)
	lw $t1, -1332($fp)
	sw $t0, 0($t1)
	lw $t0, -1332($fp)
	lw $t1, 0($t0)
	sw $t1, -1336($fp)
	li $t0, 763
	sw $t0, -1340($fp)
	addi $t0, $fp, -112
	sw $t0, -1344($fp)
	li $t0, 8
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1344($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1340($fp)
	lw $t1, -1356($fp)
	sw $t0, 0($t1)
	lw $t0, -1356($fp)
	lw $t1, 0($t0)
	sw $t1, -1360($fp)
	li $t0, 53976
	sw $t0, -1364($fp)
	addi $t0, $fp, -112
	sw $t0, -1368($fp)
	li $t0, 9
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1368($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1364($fp)
	lw $t1, -1380($fp)
	sw $t0, 0($t1)
	lw $t0, -1380($fp)
	lw $t1, 0($t0)
	sw $t1, -1384($fp)
	li $t0, 23138
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 35749
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	li $t0, 46219
	sw $t0, -1412($fp)
	addi $t0, $fp, -124
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
	li $t0, 359
	sw $t0, -1436($fp)
	addi $t0, $fp, -124
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
	li $t0, 31832
	sw $t0, -1460($fp)
	addi $t0, $fp, -124
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
	li $t0, 25054
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	li $t0, 10954
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	li $t0, 9360
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	li $t0, 27592
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	li $t0, 52309
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	li $t0, 10259
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 35430
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	li $t0, 18774
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	li $t0, 56563
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
	li $t0, 41189
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	li $t0, 54679
	sw $t0, -1604($fp)
	addi $t0, $fp, -148
	sw $t0, -1608($fp)
	li $t0, 0
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
	li $t0, 63471
	sw $t0, -1628($fp)
	addi $t0, $fp, -148
	sw $t0, -1632($fp)
	li $t0, 1
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
	li $t0, 5463
	sw $t0, -1652($fp)
	addi $t0, $fp, -148
	sw $t0, -1656($fp)
	li $t0, 2
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
	li $t0, 61745
	sw $t0, -1676($fp)
	addi $t0, $fp, -148
	sw $t0, -1680($fp)
	li $t0, 3
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
	li $t0, 41940
	sw $t0, -1700($fp)
	addi $t0, $fp, -148
	sw $t0, -1704($fp)
	li $t0, 4
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
	li $t0, 30831
	sw $t0, -1724($fp)
	addi $t0, $fp, -148
	sw $t0, -1728($fp)
	li $t0, 5
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
	li $t0, 60159
	sw $t0, -1748($fp)
	addi $t0, $fp, -172
	sw $t0, -1752($fp)
	li $t0, 0
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
	li $t0, 501
	sw $t0, -1772($fp)
	addi $t0, $fp, -172
	sw $t0, -1776($fp)
	li $t0, 1
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
	li $t0, 29745
	sw $t0, -1796($fp)
	addi $t0, $fp, -172
	sw $t0, -1800($fp)
	li $t0, 2
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
	li $t0, 63280
	sw $t0, -1820($fp)
	addi $t0, $fp, -172
	sw $t0, -1824($fp)
	li $t0, 3
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1824($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1820($fp)
	lw $t1, -1836($fp)
	sw $t0, 0($t1)
	lw $t0, -1836($fp)
	lw $t1, 0($t0)
	sw $t1, -1840($fp)
	li $t0, 59128
	sw $t0, -1844($fp)
	addi $t0, $fp, -172
	sw $t0, -1848($fp)
	li $t0, 4
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1848($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1844($fp)
	lw $t1, -1860($fp)
	sw $t0, 0($t1)
	lw $t0, -1860($fp)
	lw $t1, 0($t0)
	sw $t1, -1864($fp)
	li $t0, 3428
	sw $t0, -1868($fp)
	addi $t0, $fp, -172
	sw $t0, -1872($fp)
	li $t0, 5
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1872($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1868($fp)
	lw $t1, -1884($fp)
	sw $t0, 0($t1)
	lw $t0, -1884($fp)
	lw $t1, 0($t0)
	sw $t1, -1888($fp)
	li $t0, 28879
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	li $t0, 48219
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -1912($fp)
	li $t0, 4192
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	li $t0, 17319
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	li $t0, 5822
	sw $t0, -1940($fp)
	addi $t0, $fp, -196
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
	li $t0, 39941
	sw $t0, -1964($fp)
	addi $t0, $fp, -196
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
	li $t0, 63538
	sw $t0, -1988($fp)
	addi $t0, $fp, -196
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
	li $t0, 6181
	sw $t0, -2012($fp)
	addi $t0, $fp, -196
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
	li $t0, 6237
	sw $t0, -2036($fp)
	addi $t0, $fp, -196
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
	li $t0, 23056
	sw $t0, -2060($fp)
	addi $t0, $fp, -196
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
	li $t0, 17135
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	li $t0, 15597
	sw $t0, -2096($fp)
	addi $t0, $fp, -236
	sw $t0, -2100($fp)
	li $t0, 0
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
	li $t0, 50648
	sw $t0, -2120($fp)
	addi $t0, $fp, -236
	sw $t0, -2124($fp)
	li $t0, 1
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
	li $t0, 3908
	sw $t0, -2144($fp)
	addi $t0, $fp, -236
	sw $t0, -2148($fp)
	li $t0, 2
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
	li $t0, 25856
	sw $t0, -2168($fp)
	addi $t0, $fp, -236
	sw $t0, -2172($fp)
	li $t0, 3
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
	li $t0, 20542
	sw $t0, -2192($fp)
	addi $t0, $fp, -236
	sw $t0, -2196($fp)
	li $t0, 4
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
	li $t0, 22682
	sw $t0, -2216($fp)
	addi $t0, $fp, -236
	sw $t0, -2220($fp)
	li $t0, 5
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
	li $t0, 16884
	sw $t0, -2240($fp)
	addi $t0, $fp, -236
	sw $t0, -2244($fp)
	li $t0, 6
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
	li $t0, 61731
	sw $t0, -2264($fp)
	addi $t0, $fp, -236
	sw $t0, -2268($fp)
	li $t0, 7
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
	li $t0, 11825
	sw $t0, -2288($fp)
	addi $t0, $fp, -236
	sw $t0, -2292($fp)
	li $t0, 8
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2292($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2288($fp)
	lw $t1, -2304($fp)
	sw $t0, 0($t1)
	lw $t0, -2304($fp)
	lw $t1, 0($t0)
	sw $t1, -2308($fp)
	li $t0, 14819
	sw $t0, -2312($fp)
	addi $t0, $fp, -236
	sw $t0, -2316($fp)
	li $t0, 9
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2316($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2312($fp)
	lw $t1, -2328($fp)
	sw $t0, 0($t1)
	lw $t0, -2328($fp)
	lw $t1, 0($t0)
	sw $t1, -2332($fp)
	li $t0, 1658
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, -2344($fp)
	li $t0, 8035
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -2356($fp)
	li $t0, 56759
	sw $t0, -2360($fp)
	addi $t0, $fp, -268
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2364($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2360($fp)
	lw $t1, -2376($fp)
	sw $t0, 0($t1)
	lw $t0, -2376($fp)
	lw $t1, 0($t0)
	sw $t1, -2380($fp)
	li $t0, 32489
	sw $t0, -2384($fp)
	addi $t0, $fp, -268
	sw $t0, -2388($fp)
	li $t0, 1
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
	li $t0, 2658
	sw $t0, -2408($fp)
	addi $t0, $fp, -268
	sw $t0, -2412($fp)
	li $t0, 2
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
	li $t0, 57260
	sw $t0, -2432($fp)
	addi $t0, $fp, -268
	sw $t0, -2436($fp)
	li $t0, 3
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
	li $t0, 62234
	sw $t0, -2456($fp)
	addi $t0, $fp, -268
	sw $t0, -2460($fp)
	li $t0, 4
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
	li $t0, 402
	sw $t0, -2480($fp)
	addi $t0, $fp, -268
	sw $t0, -2484($fp)
	li $t0, 5
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
	li $t0, 50852
	sw $t0, -2504($fp)
	addi $t0, $fp, -268
	sw $t0, -2508($fp)
	li $t0, 6
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
	li $t0, 126
	sw $t0, -2528($fp)
	addi $t0, $fp, -268
	sw $t0, -2532($fp)
	li $t0, 7
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
	li $t0, 29281
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	sw $t0, -2560($fp)
	li $t0, 33536
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	sw $t0, -2572($fp)
label147:
	addi $t0, $fp, -32
	sw $t0, -2576($fp)
	li $t0, 0
	sw $t0, -2580($fp)
	li $t0, 4318
	sw $t0, -2584($fp)
	li $t0, 46600
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	sub $t0, $t0, $t1
	sw $t0, -2592($fp)
	li $t0, 39358
	sw $t0, -2596($fp)
	li $t0, 44259
	sw $t0, -2600($fp)
	lw $t0, -2596($fp)
	lw $t1, -2600($fp)
	sub $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t1, -2592($fp)
	lw $t2, -2604($fp)
	beq $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -2580($fp)
label151:
	li $t0, 4
	lw $t1, -2580($fp)
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	lw $t1, 0($t0)
	sw $t1, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 0
	sw $t0, -2620($fp)
	addi $t0, $fp, -172
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	lw $t0, -588($fp)
	sw $t0, -2632($fp)
	li $t0, 44602
	sw $t0, -2636($fp)
	lw $t1, -2632($fp)
	lw $t2, -2636($fp)
	bge $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -2628($fp)
label156:
	li $t0, 4
	lw $t1, -2628($fp)
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, 0($t0)
	sw $t1, -2648($fp)
	lw $t1, -2648($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label154
label154:
	addi $t0, $fp, -112
	sw $t0, -2652($fp)
	li $t0, 2
	sw $t0, -2656($fp)
	li $t0, 4
	lw $t1, -2656($fp)
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	lw $t1, 0($t0)
	sw $t1, -2668($fp)
	lw $t1, -2668($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -2620($fp)
label153:
	lw $ra, -4($fp)
	lw $v0, -2620($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label147
label149:
	li $t0, 62674
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -2680($fp)
	li $t0, 558
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -2692($fp)
	li $t0, 52770
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	lw $t0, -2676($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2688($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2700($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2720($fp)
	addi $t0, $fp, -56
	sw $t0, -2724($fp)
	lw $t0, -1584($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -2732($fp)
	li $t0, 4
	lw $t1, -2732($fp)
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, 0($t0)
	sw $t1, -2744($fp)
	li $t0, 0
	sw $t0, -2748($fp)
	li $t0, 1046
	sw $t0, -2752($fp)
	lw $t0, -552($fp)
	sw $t0, -2756($fp)
	lw $t0, -2752($fp)
	lw $t1, -2756($fp)
	mul $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -360($fp)
	sw $t0, -2764($fp)
	lw $t0, -2760($fp)
	lw $t1, -2764($fp)
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -1080($fp)
	sw $t0, -2772($fp)
	lw $t1, -2768($fp)
	lw $t2, -2772($fp)
	blt $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -2748($fp)
label160:
	lw $t1, -2744($fp)
	lw $t2, -2748($fp)
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -2720($fp)
label158:
	lw $ra, -4($fp)
	lw $v0, -2720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2676($fp)
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2688($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2700($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2788($fp)
	addi $t0, $fp, -28
	sw $t0, -2792($fp)
	lw $t0, -540($fp)
	sw $t0, -2796($fp)
	lw $t0, -564($fp)
	sw $t0, -2800($fp)
	lw $t0, -2796($fp)
	lw $t1, -2800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2804($fp)
	li $t0, 26414
	sw $t0, -2808($fp)
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	li $t0, 4
	lw $t1, -2812($fp)
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, 0($t0)
	sw $t1, -2824($fp)
	li $t0, 0
	sw $t0, -2828($fp)
	lw $t0, -1584($fp)
	sw $t0, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -2828($fp)
label164:
	lw $t1, -2824($fp)
	lw $t2, -2828($fp)
	ble $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -2788($fp)
label162:
	lw $ra, -4($fp)
	lw $v0, -2788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label165:
	li $t0, 0
	sw $t0, -2836($fp)
	addi $t0, $fp, -72
	sw $t0, -2840($fp)
	lw $t0, -1500($fp)
	sw $t0, -2844($fp)
	li $t0, 4
	lw $t1, -2844($fp)
	mul $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, 0($t0)
	sw $t1, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label171:
	lw $t0, -2688($fp)
	sw $t0, -2860($fp)
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -2836($fp)
label170:
	li $t0, 7776
	sw $t0, -2864($fp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2868($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2868($fp)
	sub $t0, $t0, $t1
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	li $t0, 35554
	sw $t0, -2880($fp)
	li $t0, 58117
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label174:
	li $t0, 5629
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -2876($fp)
label173:
	li $t0, 0
	sw $t0, -2896($fp)
	addi $t0, $fp, -72
	sw $t0, -2900($fp)
	lw $t0, -936($fp)
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
	lw $t0, -2700($fp)
	sw $t0, -2920($fp)
	lw $t1, -2916($fp)
	lw $t2, -2920($fp)
	bge $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -2896($fp)
label176:
	li $t0, 0
	sw $t0, -2924($fp)
	lw $t0, -624($fp)
	sw $t0, -2928($fp)
	li $t0, 43298
	sw $t0, -2932($fp)
	lw $t0, -2928($fp)
	lw $t1, -2932($fp)
	sub $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label179
label179:
	li $t0, 3971
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2924($fp)
label178:
	li $t0, 23729
	sw $t0, -2944($fp)
	lw $t0, -2676($fp)
	sw $t0, -2948($fp)
	lw $t0, -2944($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2952($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2956($fp)
	addi $sp, $sp, 20
	lw $t1, -2872($fp)
	lw $t2, -2956($fp)
	ble $t1, $t2, label166
	j label168
label168:
	addi $t0, $fp, -56
	sw $t0, -2960($fp)
	lw $t0, -528($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -2968($fp)
	li $t0, 4
	lw $t1, -2968($fp)
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	lw $t1, 0($t0)
	sw $t1, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
label180:
	li $t0, 43589
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 0
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 0
	sw $t0, -2996($fp)
	lw $t0, -828($fp)
	sw $t0, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label188
label190:
	li $t0, 38118
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -2996($fp)
label189:
	lw $t0, -828($fp)
	sw $t0, -3008($fp)
	lw $t0, -1140($fp)
	sw $t0, -3012($fp)
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	li $t0, 0
	sw $t0, -3020($fp)
	addi $t0, $fp, -148
	sw $t0, -3024($fp)
	lw $t0, -2340($fp)
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
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label193
label193:
	lw $t0, -576($fp)
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -3020($fp)
label192:
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 49340
	sw $t0, -3052($fp)
	lw $t0, -888($fp)
	sw $t0, -3056($fp)
	lw $t1, -3052($fp)
	lw $t2, -3056($fp)
	beq $t1, $t2, label194
	j label196
label196:
	lw $t0, -324($fp)
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -3048($fp)
label195:
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3064($fp)
	addi $sp, $sp, 20
	li $t0, 46248
	sw $t0, -3068($fp)
	lw $t0, -600($fp)
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t1, -3064($fp)
	lw $t2, -3076($fp)
	blt $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -2992($fp)
label187:
	li $t0, 26381
	sw $t0, -3080($fp)
	lw $t0, -828($fp)
	sw $t0, -3084($fp)
	lw $t0, -3080($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3088($fp)
	li $t0, 34943
	sw $t0, -3092($fp)
	lw $t0, -3088($fp)
	lw $t1, -3092($fp)
	sub $t0, $t0, $t1
	sw $t0, -3096($fp)
	li $t0, 0
	sw $t0, -3100($fp)
	li $t0, 46650
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label197
label199:
	lw $t0, -492($fp)
	sw $t0, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -3100($fp)
label198:
	li $t0, 0
	sw $t0, -3112($fp)
	li $t0, 34816
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label202
label202:
	lw $t0, -1932($fp)
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -3112($fp)
label201:
	li $t0, 0
	sw $t0, -3124($fp)
	lw $t0, -360($fp)
	sw $t0, -3128($fp)
	lw $t0, -1536($fp)
	sw $t0, -3132($fp)
	lw $t0, -3128($fp)
	lw $t1, -3132($fp)
	sub $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label205:
	li $t0, 41065
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -3124($fp)
label204:
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3144($fp)
	addi $sp, $sp, 20
	lw $t1, -2992($fp)
	lw $t2, -3144($fp)
	bne $t1, $t2, label183
	j label185
label185:
	li $t0, 0
	sw $t0, -3148($fp)
	addi $t0, $fp, -56
	sw $t0, -3152($fp)
	lw $t0, -912($fp)
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
	li $t0, 59917
	sw $t0, -3172($fp)
	lw $t1, -3168($fp)
	lw $t2, -3172($fp)
	ble $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -3148($fp)
label207:
	addi $t0, $fp, -196
	sw $t0, -3176($fp)
	lw $t0, -828($fp)
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
	li $t0, 10396
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -3200($fp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3204($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -3148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3208($fp)
	addi $sp, $sp, 12
	lw $t0, -1392($fp)
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3216($fp)
	lw $t0, -324($fp)
	sw $t0, -3220($fp)
	lw $t0, -3216($fp)
	lw $t1, -3220($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t1, -3224($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -2988($fp)
label184:
	j label180
label182:
label208:
	li $t0, 0
	sw $t0, -3228($fp)
	lw $t0, -1068($fp)
	sw $t0, -3232($fp)
	lw $t0, -1092($fp)
	sw $t0, -3236($fp)
	lw $t0, -3232($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	li $t0, 39261
	sw $t0, -3248($fp)
	lw $t0, -876($fp)
	sw $t0, -3252($fp)
	lw $t1, -3248($fp)
	lw $t2, -3252($fp)
	blt $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -3244($fp)
label214:
	lw $t1, -3240($fp)
	lw $t2, -3244($fp)
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -3228($fp)
label212:
	lw $t0, -3228($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -3256($fp)
	lw $t1, -3256($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 0
	sw $t0, -3260($fp)
	lw $t0, -936($fp)
	sw $t0, -3264($fp)
	lw $t0, -1404($fp)
	sw $t0, -3268($fp)
	lw $t0, -3264($fp)
	lw $t1, -3268($fp)
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	li $t0, 0
	lw $t1, -3272($fp)
	sub $t0, $t0, $t1
	sw $t0, -3276($fp)
	li $t0, 56996
	sw $t0, -3280($fp)
	li $t0, 33739
	sw $t0, -3284($fp)
	lw $t0, -3280($fp)
	lw $t1, -3284($fp)
	sub $t0, $t0, $t1
	sw $t0, -3288($fp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3288($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3292($fp)
	addi $sp, $sp, 12
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label215:
	li $t0, 1
	sw $t0, -3260($fp)
label216:
	j label208
label210:
label217:
	addi $t0, $fp, -124
	sw $t0, -3296($fp)
	li $t0, 1
	sw $t0, -3300($fp)
	li $t0, 4
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	lw $t1, -3296($fp)
	add $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	lw $t1, 0($t0)
	sw $t1, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label220:
	li $t0, 13742
	sw $t0, -3316($fp)
	li $t0, 0
	sw $t0, -3320($fp)
	lw $t0, -528($fp)
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label221:
	li $t0, 1
	sw $t0, -3320($fp)
label222:
	lw $t0, -1572($fp)
	sw $t0, -3328($fp)
	lw $t0, -3320($fp)
	lw $t1, -3328($fp)
	sub $t0, $t0, $t1
	sw $t0, -3332($fp)
	li $t0, 2945
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -3340($fp)
	addi $sp, $sp, -4
	lw $t0, -3332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3344($fp)
	addi $sp, $sp, 12
	lw $t1, -3316($fp)
	lw $t2, -3344($fp)
	blt $t1, $t2, label218
	j label219
label218:
label223:
	li $t0, 0
	sw $t0, -3348($fp)
	li $t0, 0
	sw $t0, -3352($fp)
	li $t0, 38185
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label229
label229:
	li $t0, 1
	sw $t0, -3352($fp)
label230:
	lw $t0, -1908($fp)
	sw $t0, -3360($fp)
	addi $sp, $sp, -4
	lw $t0, -3352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3364($fp)
	addi $sp, $sp, 12
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label227:
	li $t0, 1
	sw $t0, -3348($fp)
label228:
	li $t0, 10880
	sw $t0, -3368($fp)
	lw $t1, -3348($fp)
	lw $t2, -3368($fp)
	bne $t1, $t2, label224
	j label226
label226:
	li $t0, 3503
	sw $t0, -3372($fp)
	li $t0, 0
	lw $t1, -3372($fp)
	sub $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label225
label224:
	lw $t0, -960($fp)
	sw $t0, -3380($fp)
	j label223
label225:
	j label217
label219:
	j label165
label167:
	lw $t0, -1920($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	sw $t0, -3388($fp)
label231:
	li $t0, 25420
	sw $t0, -3392($fp)
	li $t0, 11927
	sw $t0, -3396($fp)
	lw $t0, -3392($fp)
	lw $t1, -3396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3400($fp)
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	addi $t0, $fp, -172
	sw $t0, -3404($fp)
	lw $t0, -876($fp)
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
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label235
label234:
	li $t0, 0
	sw $t0, -3424($fp)
	lw $t0, -2352($fp)
	sw $t0, -3428($fp)
	addi $t0, $fp, -268
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
	li $t0, 0
	sw $t0, -3452($fp)
	lw $t0, 16($fp)
	sw $t0, -3456($fp)
	lw $t1, -3456($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label239:
	li $t0, 1
	sw $t0, -3452($fp)
label240:
	lw $t0, -3448($fp)
	lw $t1, -3452($fp)
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t1, -3428($fp)
	lw $t2, -3460($fp)
	beq $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -3424($fp)
label238:
	lw $ra, -4($fp)
	lw $v0, -3424($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label236
label235:
	li $t0, 35656
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	sw $t0, -3472($fp)
	li $t0, 7680
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	sw $t0, -3484($fp)
	li $t0, 15380
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -3492($fp)
	lw $t0, -804($fp)
	sw $t0, -3496($fp)
	li $t0, 49602
	sw $t0, -3500($fp)
	li $t0, 0
	lw $t1, -3500($fp)
	sub $t0, $t0, $t1
	sw $t0, -3504($fp)
	li $t0, 0
	sw $t0, -3508($fp)
	addi $t0, $fp, -28
	sw $t0, -3512($fp)
	li $t0, 1
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
	lw $t0, -828($fp)
	sw $t0, -3532($fp)
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3536($fp)
	li $t0, 0
	sw $t0, -3540($fp)
	li $t0, 0
	sw $t0, -3544($fp)
	li $t0, 37168
	sw $t0, -3548($fp)
	li $t0, 5674
	sw $t0, -3552($fp)
	lw $t1, -3548($fp)
	lw $t2, -3552($fp)
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -3544($fp)
label247:
	lw $t0, 8($fp)
	sw $t0, -3556($fp)
	lw $t1, -3544($fp)
	lw $t2, -3556($fp)
	beq $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -3540($fp)
label245:
	lw $t0, -948($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -3564($fp)
	li $t0, 0
	sw $t0, -3568($fp)
	lw $t0, -3468($fp)
	sw $t0, -3572($fp)
	li $t0, 0
	lw $t1, -3572($fp)
	sub $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label248:
	li $t0, 1
	sw $t0, -3568($fp)
label249:
	addi $sp, $sp, -4
	lw $t0, -3536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3580($fp)
	addi $sp, $sp, 20
	lw $t1, -3580($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label243
label243:
	li $t0, 49264
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3508($fp)
label242:
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3508($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3588($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3592($fp)
	lw $t0, -492($fp)
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label251
label252:
	lw $t0, -3468($fp)
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -3592($fp)
label251:
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3604($fp)
	addi $sp, $sp, 20
	lw $t0, -828($fp)
	sw $t0, -3608($fp)
	lw $t0, -3604($fp)
	lw $t1, -3608($fp)
	add $t0, $t0, $t1
	sw $t0, -3612($fp)
	li $t0, 0
	sw $t0, -3616($fp)
	li $t0, 29976
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -3616($fp)
label254:
	li $t0, 0
	lw $t1, -3616($fp)
	sub $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -3612($fp)
	lw $t1, -3624($fp)
	add $t0, $t0, $t1
	sw $t0, -3628($fp)
	li $t0, 0
	sw $t0, -3632($fp)
	li $t0, 25131
	sw $t0, -3636($fp)
	li $t0, 0
	sw $t0, -3640($fp)
	lw $t0, -876($fp)
	sw $t0, -3644($fp)
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -3640($fp)
label258:
	li $t0, 0
	lw $t1, -3640($fp)
	sub $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3636($fp)
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	li $t0, 50196
	sw $t0, -3656($fp)
	lw $t1, -3652($fp)
	lw $t2, -3656($fp)
	bgt $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -3632($fp)
label256:
	li $t0, 0
	sw $t0, -3660($fp)
	li $t0, 0
	sw $t0, -3664($fp)
	addi $t0, $fp, -32
	sw $t0, -3668($fp)
	li $t0, 0
	sw $t0, -3672($fp)
	li $t0, 11090
	sw $t0, -3676($fp)
	lw $t1, -3676($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label264
label265:
	lw $t0, -1548($fp)
	sw $t0, -3680($fp)
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -3672($fp)
label264:
	li $t0, 4
	lw $t1, -3672($fp)
	mul $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	lw $t1, -3668($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	lw $t1, 0($t0)
	sw $t1, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label261:
	li $t0, 1
	sw $t0, -3664($fp)
label262:
	lw $t0, -624($fp)
	sw $t0, -3696($fp)
	li $t0, 51513
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	sub $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3480($fp)
	sw $t0, -3708($fp)
	lw $t0, -3704($fp)
	lw $t1, -3708($fp)
	sub $t0, $t0, $t1
	sw $t0, -3712($fp)
	li $t0, 0
	sw $t0, -3716($fp)
	li $t0, 19603
	sw $t0, -3720($fp)
	lw $t1, -3720($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
	li $t0, 1
	sw $t0, -3716($fp)
label267:
	lw $t0, -3712($fp)
	lw $t1, -3716($fp)
	add $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t1, -3664($fp)
	lw $t2, -3724($fp)
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -3660($fp)
label260:
	li $t0, 0
	sw $t0, -3728($fp)
	addi $t0, $fp, -72
	sw $t0, -3732($fp)
	lw $t0, -900($fp)
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -3740($fp)
	li $t0, 4
	lw $t1, -3740($fp)
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	lw $t1, -3732($fp)
	add $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	lw $t1, 0($t0)
	sw $t1, -3752($fp)
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -3728($fp)
label269:
	lw $t0, -564($fp)
	sw $t0, -3756($fp)
	lw $t0, -3728($fp)
	lw $t1, -3756($fp)
	sub $t0, $t0, $t1
	sw $t0, -3760($fp)
label236:
	j label231
label233:
	addi $t0, $fp, -172
	sw $t0, -3764($fp)
	lw $t0, -2352($fp)
	sw $t0, -3768($fp)
	lw $t0, -900($fp)
	sw $t0, -3772($fp)
	lw $t0, -3768($fp)
	lw $t1, -3772($fp)
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	li $t0, 0
	lw $t1, -3776($fp)
	sub $t0, $t0, $t1
	sw $t0, -3780($fp)
	addi $t0, $fp, -56
	sw $t0, -3784($fp)
	li $t0, 2
	sw $t0, -3788($fp)
	li $t0, 4
	lw $t1, -3788($fp)
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, 0($t0)
	sw $t1, -3800($fp)
	lw $t0, -3780($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	li $t0, 4
	lw $t1, -3804($fp)
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, -3764($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
label270:
	li $t0, 58865
	sw $t0, -3820($fp)
	li $t0, 0
	sw $t0, -3824($fp)
	li $t0, 12947
	sw $t0, -3828($fp)
	lw $t1, -3828($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label273:
	li $t0, 1
	sw $t0, -3824($fp)
label274:
	lw $t0, -3820($fp)
	lw $t1, -3824($fp)
	sub $t0, $t0, $t1
	sw $t0, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	addi $t0, $fp, -12
	sw $t0, -3840($fp)
	lw $t0, -336($fp)
	sw $t0, -3844($fp)
	li $t0, 4
	lw $t1, -3844($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, -3840($fp)
	add $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, 0($t0)
	sw $t1, -3856($fp)
	lw $t1, -3856($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label275
label275:
	li $t0, 1
	sw $t0, -3836($fp)
label276:
	lw $t0, -3832($fp)
	lw $t1, -3836($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	li $t0, 0
	sw $t0, -3864($fp)
	addi $t0, $fp, -72
	sw $t0, -3868($fp)
	lw $t0, -2340($fp)
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
	lw $t1, -3884($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -3864($fp)
label278:
	lw $t1, -3860($fp)
	lw $t2, -3864($fp)
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 0
	sw $t0, -3888($fp)
	li $t0, 11314
	sw $t0, -3892($fp)
	li $t0, 0
	lw $t1, -3892($fp)
	sub $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label279:
	li $t0, 1
	sw $t0, -3888($fp)
label280:
	li $t0, 0
	sw $t0, -3900($fp)
	lw $t0, -2568($fp)
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label283
label283:
	li $t0, 14098
	sw $t0, -3908($fp)
	lw $t1, -3908($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -3900($fp)
label282:
	addi $sp, $sp, -4
	lw $t0, -3888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3900($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3912($fp)
	addi $sp, $sp, 12
	j label270
label272:
	addi $t0, $fp, -28
	sw $t0, -3916($fp)
	li $t0, 0
	sw $t0, -3920($fp)
	li $t0, 0
	sw $t0, -3924($fp)
	li $t0, 49010
	sw $t0, -3928($fp)
	li $t0, 27840
	sw $t0, -3932($fp)
	lw $t1, -3928($fp)
	lw $t2, -3932($fp)
	blt $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -3924($fp)
label291:
	li $t0, 14259
	sw $t0, -3936($fp)
	lw $t1, -3924($fp)
	lw $t2, -3936($fp)
	bge $t1, $t2, label287
	j label289
label289:
	li $t0, 21659
	sw $t0, -3940($fp)
	li $t0, 38721
	sw $t0, -3944($fp)
	lw $t0, -3940($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t1, -3948($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -3920($fp)
label288:
	li $t0, 4
	lw $t1, -3920($fp)
	mul $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, 0($t0)
	sw $t1, -3960($fp)
	lw $t1, -3960($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	lw $t0, -1104($fp)
	sw $t0, -3964($fp)
	li $t0, 0
	lw $t1, -3964($fp)
	sub $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $ra, -4($fp)
	lw $v0, -3968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label286
label285:
	li $t0, 17763
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	sw $t0, -3980($fp)
	li $t0, 47079
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	sw $t0, -3992($fp)
	li $t0, 50648
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	sw $t0, -4004($fp)
	li $t0, 47681
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -4016($fp)
	li $t0, 0
	sw $t0, -4020($fp)
	lw $t0, -2340($fp)
	sw $t0, -4024($fp)
	addi $t0, $fp, -124
	sw $t0, -4028($fp)
	lw $t0, -792($fp)
	sw $t0, -4032($fp)
	li $t0, 4
	lw $t1, -4032($fp)
	mul $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, -4028($fp)
	add $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, 0($t0)
	sw $t1, -4044($fp)
	addi $t0, $fp, -28
	sw $t0, -4048($fp)
	lw $t0, -936($fp)
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
	lw $t0, -4044($fp)
	lw $t1, -4064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4068($fp)
	li $t0, 0
	lw $t1, -4068($fp)
	sub $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t1, -4024($fp)
	lw $t2, -4072($fp)
	beq $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -4020($fp)
label293:
	li $t0, 14740
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	sw $t0, -4084($fp)
	li $t0, 20768
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	sw $t0, -4096($fp)
	li $t0, 55361
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	sw $t0, -4108($fp)
	li $t0, 51908
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	sw $t0, -4120($fp)
	li $t0, 0
	sw $t0, -4124($fp)
	lw $t0, -912($fp)
	sw $t0, -4128($fp)
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 26442
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -4132($fp)
label297:
	li $t0, 55623
	sw $t0, -4140($fp)
	lw $t0, -4132($fp)
	lw $t1, -4140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4144($fp)
	li $t0, 29169
	sw $t0, -4148($fp)
	lw $t0, -4144($fp)
	lw $t1, -4148($fp)
	add $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t1, -4128($fp)
	lw $t2, -4152($fp)
	bge $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -4124($fp)
label295:
	li $t0, 0
	sw $t0, -4156($fp)
	addi $t0, $fp, -12
	sw $t0, -4160($fp)
	lw $t0, -876($fp)
	sw $t0, -4164($fp)
	lw $t0, -888($fp)
	sw $t0, -4168($fp)
	lw $t0, -4164($fp)
	lw $t1, -4168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4172($fp)
	li $t0, 4
	lw $t1, -4172($fp)
	mul $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, 0($t0)
	sw $t1, -4184($fp)
	li $t0, 0
	sw $t0, -4188($fp)
	li $t0, 0
	sw $t0, -4192($fp)
	lw $t0, -624($fp)
	sw $t0, -4196($fp)
	li $t0, 19943
	sw $t0, -4200($fp)
	lw $t1, -4196($fp)
	lw $t2, -4200($fp)
	bgt $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -4192($fp)
label304:
	li $t0, 6811
	sw $t0, -4204($fp)
	lw $t1, -4192($fp)
	lw $t2, -4204($fp)
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -4188($fp)
label302:
	li $t0, 0
	sw $t0, -4208($fp)
	lw $t0, -528($fp)
	sw $t0, -4212($fp)
	lw $t0, -888($fp)
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -540($fp)
	sw $t0, -4224($fp)
	lw $t1, -4220($fp)
	lw $t2, -4224($fp)
	beq $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -4208($fp)
label306:
	li $t0, 0
	sw $t0, -4228($fp)
	li $t0, 25268
	sw $t0, -4232($fp)
	li $t0, 46280
	sw $t0, -4236($fp)
	lw $t0, -4232($fp)
	lw $t1, -4236($fp)
	sub $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t1, -4240($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label309:
	lw $t0, -4080($fp)
	sw $t0, -4244($fp)
	lw $t1, -4244($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -4228($fp)
label308:
	li $t0, 0
	sw $t0, -4248($fp)
	li $t0, 0
	sw $t0, -4252($fp)
	lw $t0, -1104($fp)
	sw $t0, -4256($fp)
	li $t0, 7559
	sw $t0, -4260($fp)
	lw $t0, -4256($fp)
	lw $t1, -4260($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t1, -4264($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label314
label315:
	lw $t0, -564($fp)
	sw $t0, -4268($fp)
	lw $t1, -4268($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -4252($fp)
label314:
	addi $t0, $fp, -56
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
	lw $t0, -876($fp)
	sw $t0, -4292($fp)
	lw $t0, -4288($fp)
	lw $t1, -4292($fp)
	mul $t0, $t0, $t1
	sw $t0, -4296($fp)
	li $t0, 0
	sw $t0, -4300($fp)
	li $t0, 20134
	sw $t0, -4304($fp)
	lw $t0, -4116($fp)
	sw $t0, -4308($fp)
	lw $t0, -4304($fp)
	lw $t1, -4308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4312($fp)
	li $t0, 45255
	sw $t0, -4316($fp)
	lw $t1, -4312($fp)
	lw $t2, -4316($fp)
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -4300($fp)
label317:
	li $t0, 0
	sw $t0, -4320($fp)
	li $t0, 0
	sw $t0, -4324($fp)
	lw $t0, -1932($fp)
	sw $t0, -4328($fp)
	li $t0, 7187
	sw $t0, -4332($fp)
	lw $t0, -4328($fp)
	lw $t1, -4332($fp)
	mul $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t1, -4336($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label323
label323:
	li $t0, 31157
	sw $t0, -4340($fp)
	lw $t1, -4340($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -4324($fp)
label322:
	li $t0, 0
	sw $t0, -4344($fp)
	lw $t0, -4104($fp)
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -4352($fp)
	li $t0, 29210
	sw $t0, -4356($fp)
	li $t0, 51237
	sw $t0, -4360($fp)
	lw $t0, -4356($fp)
	lw $t1, -4360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4364($fp)
	li $t0, 50798
	sw $t0, -4368($fp)
	lw $t0, -4364($fp)
	lw $t1, -4368($fp)
	add $t0, $t0, $t1
	sw $t0, -4372($fp)
	addi $sp, $sp, -4
	lw $t0, -4352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4376($fp)
	addi $sp, $sp, 12
	lw $t1, -4376($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label326:
	li $t0, 48813
	sw $t0, -4380($fp)
	lw $t1, -4380($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -4344($fp)
label325:
	li $t0, 40146
	sw $t0, -4384($fp)
	li $t0, 1
	sw $t0, -4388($fp)
	lw $t0, -4384($fp)
	lw $t1, -4388($fp)
	mul $t0, $t0, $t1
	sw $t0, -4392($fp)
	li $t0, 0
	sw $t0, -4396($fp)
	lw $t0, -924($fp)
	sw $t0, -4400($fp)
	lw $t1, -4400($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label328
label330:
	li $t0, 44549
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label329:
	lw $t0, -1908($fp)
	sw $t0, -4408($fp)
	lw $t1, -4408($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -4396($fp)
label328:
	addi $sp, $sp, -4
	lw $t0, -4324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4412($fp)
	addi $sp, $sp, 20
	lw $t1, -4412($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label320
label320:
	li $t0, 42142
	sw $t0, -4416($fp)
	lw $t1, -4416($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -4320($fp)
label319:
	addi $sp, $sp, -4
	lw $t0, -4252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4420($fp)
	addi $sp, $sp, 20
	lw $t1, -4420($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label312
label312:
	li $t0, 2180
	sw $t0, -4424($fp)
	lw $t1, -4424($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -4248($fp)
label311:
	addi $sp, $sp, -4
	lw $t0, -4228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4248($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4428($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -172
	sw $t0, -4432($fp)
	lw $t0, -588($fp)
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
	li $t0, 0
	sw $t0, -4452($fp)
	lw $t0, 4($fp)
	sw $t0, -4456($fp)
	li $t0, 10170
	sw $t0, -4460($fp)
	lw $t0, -4456($fp)
	lw $t1, -4460($fp)
	mul $t0, $t0, $t1
	sw $t0, -4464($fp)
	li $t0, 39690
	sw $t0, -4468($fp)
	lw $t1, -4464($fp)
	lw $t2, -4468($fp)
	beq $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -4452($fp)
label332:
	addi $sp, $sp, -4
	lw $t0, -4448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4472($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4472($fp)
	sub $t0, $t0, $t1
	sw $t0, -4476($fp)
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4480($fp)
	addi $sp, $sp, 20
	lw $t0, 8($fp)
	sw $t0, -4484($fp)
	lw $t0, -4480($fp)
	lw $t1, -4484($fp)
	mul $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t1, -4184($fp)
	lw $t2, -4488($fp)
	bgt $t1, $t2, label300
	j label299
label300:
	li $t0, 31392
	sw $t0, -4492($fp)
	lw $t0, -792($fp)
	sw $t0, -4496($fp)
	lw $t0, -4492($fp)
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -960($fp)
	sw $t0, -4504($fp)
	li $t0, 0
	lw $t1, -4504($fp)
	sub $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4500($fp)
	lw $t1, -4508($fp)
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	li $t0, 0
	lw $t1, -4512($fp)
	sub $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -4156($fp)
label299:
	addi $t0, $fp, -32
	sw $t0, -4520($fp)
	li $t0, 0
	sw $t0, -4524($fp)
	lw $t0, -876($fp)
	sw $t0, -4528($fp)
	li $t0, 2088
	sw $t0, -4532($fp)
	lw $t1, -4528($fp)
	lw $t2, -4532($fp)
	ble $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -4524($fp)
label334:
	lw $t0, -4524($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -4536($fp)
	li $t0, 4
	lw $t1, -4536($fp)
	mul $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	lw $t1, -4520($fp)
	add $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	lw $t1, 0($t0)
	sw $t1, -4548($fp)
	li $t0, 0
	sw $t0, -4552($fp)
	addi $t0, $fp, -172
	sw $t0, -4556($fp)
	li $t0, 0
	sw $t0, -4560($fp)
	li $t0, 21551
	sw $t0, -4564($fp)
	lw $t1, -4564($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label339
label339:
	li $t0, 1
	sw $t0, -4560($fp)
label340:
	li $t0, 4
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, 0($t0)
	sw $t1, -4576($fp)
	lw $t1, -4576($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label337
label338:
	li $t0, 0
	sw $t0, -4580($fp)
	lw $t0, -636($fp)
	sw $t0, -4584($fp)
	lw $t1, -4584($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -4580($fp)
label342:
	lw $t0, -900($fp)
	sw $t0, -4588($fp)
	lw $t1, -4580($fp)
	lw $t2, -4588($fp)
	bge $t1, $t2, label335
	j label337
label337:
	li $t0, 0
	sw $t0, -4592($fp)
	li $t0, 13067
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label343:
	li $t0, 1
	sw $t0, -4592($fp)
label344:
	lw $t0, -816($fp)
	sw $t0, -4600($fp)
	lw $t0, -4592($fp)
	lw $t1, -4600($fp)
	sub $t0, $t0, $t1
	sw $t0, -4604($fp)
	li $t0, 0
	sw $t0, -4608($fp)
	li $t0, 0
	sw $t0, -4612($fp)
	li $t0, 7923
	sw $t0, -4616($fp)
	lw $t1, -4616($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label347:
	li $t0, 1
	sw $t0, -4612($fp)
label348:
	lw $t0, -864($fp)
	sw $t0, -4620($fp)
	lw $t1, -4612($fp)
	lw $t2, -4620($fp)
	blt $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -4608($fp)
label346:
	addi $sp, $sp, -4
	lw $t0, -4604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4608($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4624($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4628($fp)
	li $t0, 0
	sw $t0, -4632($fp)
	li $t0, 52160
	sw $t0, -4636($fp)
	lw $t0, -588($fp)
	sw $t0, -4640($fp)
	lw $t1, -4636($fp)
	lw $t2, -4640($fp)
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -4632($fp)
label352:
	li $t0, 57449
	sw $t0, -4644($fp)
	lw $t1, -4632($fp)
	lw $t2, -4644($fp)
	beq $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -4628($fp)
label350:
	addi $sp, $sp, -4
	lw $t0, -4624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4628($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4648($fp)
	addi $sp, $sp, 12
	lw $t1, -4648($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -4552($fp)
label336:
	addi $t0, $fp, -112
	sw $t0, -4652($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -4668($fp)
	sub $t0, $t0, $t1
	sw $t0, -4672($fp)
	li $t0, 0
	sw $t0, -4676($fp)
	addi $t0, $fp, -268
	sw $t0, -4680($fp)
	li $t0, 2
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
	addi $t0, $fp, -172
	sw $t0, -4700($fp)
	lw $t0, -360($fp)
	sw $t0, -4704($fp)
	li $t0, 4
	lw $t1, -4704($fp)
	mul $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, -4700($fp)
	add $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, 0($t0)
	sw $t1, -4716($fp)
	lw $t0, -828($fp)
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -4724($fp)
	addi $sp, $sp, -4
	lw $t0, -4716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4728($fp)
	addi $sp, $sp, 12
	lw $t0, -1140($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	sw $t0, -4736($fp)
	li $t0, 0
	sw $t0, -4740($fp)
	li $t0, 23237
	sw $t0, -4744($fp)
	lw $t1, -4744($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label355:
	li $t0, 1
	sw $t0, -4740($fp)
label356:
	lw $t0, -384($fp)
	sw $t0, -4748($fp)
	lw $t0, -4740($fp)
	lw $t1, -4748($fp)
	sub $t0, $t0, $t1
	sw $t0, -4752($fp)
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4752($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4756($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4756($fp)
	sub $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -4676($fp)
label354:
label357:
	li $t0, 63384
	sw $t0, -4764($fp)
	lw $t0, -2352($fp)
	sw $t0, -4768($fp)
	lw $t1, -4764($fp)
	lw $t2, -4768($fp)
	bgt $t1, $t2, label358
	j label359
label358:
	li $t0, 0
	sw $t0, -4772($fp)
	li $t0, 0
	sw $t0, -4776($fp)
	lw $t0, -1068($fp)
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -4776($fp)
label363:
	lw $t0, -540($fp)
	sw $t0, -4784($fp)
	lw $t1, -4776($fp)
	lw $t2, -4784($fp)
	blt $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -4772($fp)
label361:
	lw $t0, -1392($fp)
	sw $t0, -4788($fp)
	li $t0, 0
	lw $t1, -4788($fp)
	sub $t0, $t0, $t1
	sw $t0, -4792($fp)
	addi $sp, $sp, -4
	lw $t0, -4772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4796($fp)
	addi $sp, $sp, 12
	li $t0, 45316
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -4804($fp)
	li $t0, 20976
	sw $t0, -4808($fp)
	addi $sp, $sp, -4
	lw $t0, -4804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4812($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4812($fp)
	sub $t0, $t0, $t1
	sw $t0, -4816($fp)
	li $t0, 0
	lw $t1, -4816($fp)
	sub $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4796($fp)
	lw $t1, -4820($fp)
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	j label357
label359:
label364:
	addi $t0, $fp, -56
	sw $t0, -4828($fp)
	li $t0, 28594
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -4836($fp)
	li $t0, 49085
	sw $t0, -4840($fp)
	lw $t0, -3976($fp)
	sw $t0, -4844($fp)
	lw $t0, -4840($fp)
	lw $t1, -4844($fp)
	add $t0, $t0, $t1
	sw $t0, -4848($fp)
	li $t0, 6239
	sw $t0, -4852($fp)
	lw $t0, -4848($fp)
	lw $t1, -4852($fp)
	add $t0, $t0, $t1
	sw $t0, -4856($fp)
	addi $sp, $sp, -4
	lw $t0, -4836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4860($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -4860($fp)
	mul $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, -4828($fp)
	add $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	lw $t1, 0($t0)
	sw $t1, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	lw $t0, 8($fp)
	sw $t0, -4876($fp)
	lw $t1, -4876($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label371
label371:
	addi $t0, $fp, -236
	sw $t0, -4880($fp)
	li $t0, 4
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
	li $t0, 5200
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4904($fp)
	lw $t1, -4904($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label370
label370:
	lw $t0, 12($fp)
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	addi $t0, $fp, -12
	sw $t0, -4912($fp)
	lw $t0, 16($fp)
	sw $t0, -4916($fp)
	li $t0, 4
	lw $t1, -4916($fp)
	mul $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	lw $t1, -4912($fp)
	add $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	lw $t1, 0($t0)
	sw $t1, -4928($fp)
	li $t0, 0
	lw $t1, -4928($fp)
	sub $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -4936($fp)
	lw $ra, -4($fp)
	lw $v0, -4936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -28
	sw $t0, -4940($fp)
	lw $t0, -840($fp)
	sw $t0, -4944($fp)
	lw $t0, -852($fp)
	sw $t0, -4948($fp)
	lw $t0, -4944($fp)
	lw $t1, -4948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4952($fp)
	li $t0, 4
	lw $t1, -4952($fp)
	mul $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	lw $t1, 0($t0)
	sw $t1, -4964($fp)
	li $t0, 0
	lw $t1, -4964($fp)
	sub $t0, $t0, $t1
	sw $t0, -4968($fp)
	li $t0, 10871
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	lw $t0, -1116($fp)
	sw $t0, -4980($fp)
	li $t0, 0
	lw $t1, -4980($fp)
	sub $t0, $t0, $t1
	sw $t0, -4984($fp)
	j label374
label373:
	addi $t0, $fp, -172
	sw $t0, -4988($fp)
	li $t0, 0
	sw $t0, -4992($fp)
	li $t0, 17115
	sw $t0, -4996($fp)
	lw $t1, -4996($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label375
label375:
	li $t0, 1
	sw $t0, -4992($fp)
label376:
	lw $t0, -492($fp)
	sw $t0, -5000($fp)
	lw $t0, -4992($fp)
	lw $t1, -5000($fp)
	add $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -1512($fp)
	sw $t0, -5008($fp)
	li $t0, 58657
	sw $t0, -5012($fp)
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5016($fp)
	lw $t0, -5004($fp)
	lw $t1, -5016($fp)
	sub $t0, $t0, $t1
	sw $t0, -5020($fp)
	li $t0, 4
	lw $t1, -5020($fp)
	mul $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	lw $t1, 0($t0)
	sw $t1, -5032($fp)
label374:
	j label369
label368:
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 0
	sw $t0, -5040($fp)
	li $t0, 0
	sw $t0, -5044($fp)
	li $t0, 46559
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label381:
	li $t0, 1
	sw $t0, -5044($fp)
label382:
	lw $t0, -372($fp)
	sw $t0, -5052($fp)
	lw $t1, -5044($fp)
	lw $t2, -5052($fp)
	beq $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -5040($fp)
label380:
	li $t0, 0
	sw $t0, -5056($fp)
	lw $t0, 4($fp)
	sw $t0, -5060($fp)
	lw $t1, -5060($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label386
label386:
	li $t0, 5419
	sw $t0, -5064($fp)
	lw $t1, -5064($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label385
label385:
	li $t0, 15244
	sw $t0, -5068($fp)
	lw $t1, -5068($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -5056($fp)
label384:
	li $t0, 0
	sw $t0, -5072($fp)
	lw $t0, -936($fp)
	sw $t0, -5076($fp)
	li $t0, 60837
	sw $t0, -5080($fp)
	lw $t0, -5076($fp)
	lw $t1, -5080($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t1, -5084($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label388
label389:
	li $t0, 39747
	sw $t0, -5088($fp)
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -5072($fp)
label388:
	li $t0, 0
	sw $t0, -5092($fp)
	li $t0, 14479
	sw $t0, -5096($fp)
	lw $t0, -1596($fp)
	sw $t0, -5100($fp)
	lw $t0, -5096($fp)
	lw $t1, -5100($fp)
	add $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t1, -5104($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label391
label392:
	li $t0, 24674
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -5092($fp)
label391:
	addi $sp, $sp, -4
	lw $t0, -5040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5092($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5112($fp)
	addi $sp, $sp, 20
	li $t0, 36811
	sw $t0, -5116($fp)
	li $t0, 17332
	sw $t0, -5120($fp)
	lw $t0, -5116($fp)
	lw $t1, -5120($fp)
	add $t0, $t0, $t1
	sw $t0, -5124($fp)
	li $t0, 2574
	sw $t0, -5128($fp)
	li $t0, 0
	lw $t1, -5128($fp)
	sub $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5124($fp)
	lw $t1, -5132($fp)
	sub $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t1, -5112($fp)
	lw $t2, -5136($fp)
	blt $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -5036($fp)
label378:
	lw $t0, -852($fp)
	sw $t0, -5140($fp)
	lw $t0, -1560($fp)
	sw $t0, -5144($fp)
label369:
	j label364
label366:
	li $t0, 0
	sw $t0, -5148($fp)
	li $t0, 0
	sw $t0, -5152($fp)
	lw $t0, -3988($fp)
	sw $t0, -5156($fp)
	li $t0, 23436
	sw $t0, -5160($fp)
	lw $t0, -5156($fp)
	lw $t1, -5160($fp)
	mul $t0, $t0, $t1
	sw $t0, -5164($fp)
	li $t0, 9245
	sw $t0, -5168($fp)
	lw $t1, -5164($fp)
	lw $t2, -5168($fp)
	blt $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -5152($fp)
label396:
	lw $t0, -4000($fp)
	sw $t0, -5172($fp)
	lw $t0, -4012($fp)
	sw $t0, -5176($fp)
	lw $t0, -5172($fp)
	lw $t1, -5176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5180($fp)
	addi $t0, $fp, -28
	sw $t0, -5184($fp)
	li $t0, 3
	sw $t0, -5188($fp)
	li $t0, 4
	lw $t1, -5188($fp)
	mul $t0, $t0, $t1
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	lw $t1, -5184($fp)
	add $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, 0($t0)
	sw $t1, -5200($fp)
	addi $sp, $sp, -4
	lw $t0, -5180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5200($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5204($fp)
	addi $sp, $sp, 12
	lw $t1, -5152($fp)
	lw $t2, -5204($fp)
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -5148($fp)
label394:
	li $t0, 56782
	sw $t0, -5208($fp)
	li $t0, 0
	lw $t1, -5208($fp)
	sub $t0, $t0, $t1
	sw $t0, -5212($fp)
label286:
	addi $t0, $fp, -12
	sw $t0, -5216($fp)
	li $t0, 0
	sw $t0, -5220($fp)
	li $t0, 4
	lw $t1, -5220($fp)
	mul $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	lw $t1, 0($t0)
	sw $t1, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -5236($fp)
	li $t0, 1
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
	lw $t0, -5252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -5280($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -5300($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -5320($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -5340($fp)
	li $t0, 3
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
	lw $t0, -492($fp)
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5364($fp)
	li $t0, 0
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
	lw $t0, -528($fp)
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5424($fp)
	li $t0, 0
	sw $t0, -5428($fp)
	li $t0, 4
	lw $t1, -5428($fp)
	mul $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, -5424($fp)
	add $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, 0($t0)
	sw $t1, -5440($fp)
	lw $t0, -5440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5444($fp)
	li $t0, 1
	sw $t0, -5448($fp)
	li $t0, 4
	lw $t1, -5448($fp)
	mul $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	lw $t1, -5444($fp)
	add $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	lw $t1, 0($t0)
	sw $t1, -5460($fp)
	lw $t0, -5460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5464($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -5484($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -5504($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -5524($fp)
	li $t0, 5
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
	lw $t0, -5540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -912($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -5604($fp)
	li $t0, 0
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
	lw $t0, -5620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -5624($fp)
	li $t0, 1
	sw $t0, -5628($fp)
	li $t0, 4
	lw $t1, -5628($fp)
	mul $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	lw $t1, -5624($fp)
	add $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, 0($t0)
	sw $t1, -5640($fp)
	lw $t0, -5640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -5644($fp)
	li $t0, 2
	sw $t0, -5648($fp)
	li $t0, 4
	lw $t1, -5648($fp)
	mul $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	lw $t1, -5644($fp)
	add $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	lw $t1, 0($t0)
	sw $t1, -5660($fp)
	lw $t0, -5660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -5664($fp)
	li $t0, 3
	sw $t0, -5668($fp)
	li $t0, 4
	lw $t1, -5668($fp)
	mul $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, -5664($fp)
	add $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	lw $t1, 0($t0)
	sw $t1, -5680($fp)
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5712($fp)
	li $t0, 0
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
	lw $t0, -5728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5732($fp)
	li $t0, 1
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
	lw $t0, -5748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5752($fp)
	li $t0, 2
	sw $t0, -5756($fp)
	li $t0, 4
	lw $t1, -5756($fp)
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, -5752($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	lw $t1, 0($t0)
	sw $t1, -5768($fp)
	lw $t0, -5768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5772($fp)
	li $t0, 3
	sw $t0, -5776($fp)
	li $t0, 4
	lw $t1, -5776($fp)
	mul $t0, $t0, $t1
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	lw $t1, -5772($fp)
	add $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	lw $t1, 0($t0)
	sw $t1, -5788($fp)
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5792($fp)
	li $t0, 4
	sw $t0, -5796($fp)
	li $t0, 4
	lw $t1, -5796($fp)
	mul $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	lw $t1, 0($t0)
	sw $t1, -5808($fp)
	lw $t0, -5808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5812($fp)
	li $t0, 5
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
	addi $t0, $fp, -112
	sw $t0, -5832($fp)
	li $t0, 6
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
	addi $t0, $fp, -112
	sw $t0, -5852($fp)
	li $t0, 7
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
	addi $t0, $fp, -112
	sw $t0, -5872($fp)
	li $t0, 8
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
	addi $t0, $fp, -112
	sw $t0, -5892($fp)
	li $t0, 9
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
	lw $t0, -1392($fp)
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1404($fp)
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	lw $t0, -1488($fp)
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1500($fp)
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1512($fp)
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1524($fp)
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1536($fp)
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1548($fp)
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1560($fp)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1572($fp)
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1584($fp)
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1596($fp)
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -6020($fp)
	li $t0, 0
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
	addi $t0, $fp, -148
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
	lw $t0, -6056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -6060($fp)
	li $t0, 2
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
	addi $t0, $fp, -148
	sw $t0, -6080($fp)
	li $t0, 3
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
	addi $t0, $fp, -148
	sw $t0, -6100($fp)
	li $t0, 4
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
	addi $t0, $fp, -148
	sw $t0, -6120($fp)
	li $t0, 5
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
	addi $t0, $fp, -172
	sw $t0, -6140($fp)
	li $t0, 0
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
	addi $t0, $fp, -172
	sw $t0, -6160($fp)
	li $t0, 1
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
	addi $t0, $fp, -172
	sw $t0, -6180($fp)
	li $t0, 2
	sw $t0, -6184($fp)
	li $t0, 4
	lw $t1, -6184($fp)
	mul $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	lw $t1, -6180($fp)
	add $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	lw $t1, 0($t0)
	sw $t1, -6196($fp)
	lw $t0, -6196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -6200($fp)
	li $t0, 3
	sw $t0, -6204($fp)
	li $t0, 4
	lw $t1, -6204($fp)
	mul $t0, $t0, $t1
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	lw $t1, -6200($fp)
	add $t0, $t0, $t1
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	lw $t1, 0($t0)
	sw $t1, -6216($fp)
	lw $t0, -6216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -6220($fp)
	li $t0, 4
	sw $t0, -6224($fp)
	li $t0, 4
	lw $t1, -6224($fp)
	mul $t0, $t0, $t1
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	lw $t1, -6220($fp)
	add $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	lw $t1, 0($t0)
	sw $t1, -6236($fp)
	lw $t0, -6236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -6240($fp)
	li $t0, 5
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
	lw $t0, -6256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1896($fp)
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1908($fp)
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1920($fp)
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1932($fp)
	sw $t0, -6272($fp)
	lw $t0, -6272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -6276($fp)
	li $t0, 0
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
	addi $t0, $fp, -196
	sw $t0, -6296($fp)
	li $t0, 1
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
	addi $t0, $fp, -196
	sw $t0, -6316($fp)
	li $t0, 2
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
	addi $t0, $fp, -196
	sw $t0, -6336($fp)
	li $t0, 3
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
	addi $t0, $fp, -196
	sw $t0, -6356($fp)
	li $t0, 4
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
	addi $t0, $fp, -196
	sw $t0, -6376($fp)
	li $t0, 5
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
	lw $t0, -2088($fp)
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -6400($fp)
	li $t0, 0
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
	addi $t0, $fp, -236
	sw $t0, -6420($fp)
	li $t0, 1
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
	addi $t0, $fp, -236
	sw $t0, -6440($fp)
	li $t0, 2
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
	addi $t0, $fp, -236
	sw $t0, -6460($fp)
	li $t0, 3
	sw $t0, -6464($fp)
	li $t0, 4
	lw $t1, -6464($fp)
	mul $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	lw $t1, -6460($fp)
	add $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	lw $t1, 0($t0)
	sw $t1, -6476($fp)
	lw $t0, -6476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -6480($fp)
	li $t0, 4
	sw $t0, -6484($fp)
	li $t0, 4
	lw $t1, -6484($fp)
	mul $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	lw $t1, -6480($fp)
	add $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	lw $t1, 0($t0)
	sw $t1, -6496($fp)
	lw $t0, -6496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -6500($fp)
	li $t0, 5
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
	lw $t0, -6516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -6520($fp)
	li $t0, 6
	sw $t0, -6524($fp)
	li $t0, 4
	lw $t1, -6524($fp)
	mul $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -6528($fp)
	lw $t1, -6520($fp)
	add $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	lw $t1, 0($t0)
	sw $t1, -6536($fp)
	lw $t0, -6536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -6540($fp)
	li $t0, 7
	sw $t0, -6544($fp)
	li $t0, 4
	lw $t1, -6544($fp)
	mul $t0, $t0, $t1
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	lw $t1, -6540($fp)
	add $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	lw $t1, 0($t0)
	sw $t1, -6556($fp)
	lw $t0, -6556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -6560($fp)
	li $t0, 8
	sw $t0, -6564($fp)
	li $t0, 4
	lw $t1, -6564($fp)
	mul $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	lw $t1, -6560($fp)
	add $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	lw $t1, 0($t0)
	sw $t1, -6576($fp)
	lw $t0, -6576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -6580($fp)
	li $t0, 9
	sw $t0, -6584($fp)
	li $t0, 4
	lw $t1, -6584($fp)
	mul $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	lw $t1, -6580($fp)
	add $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	lw $t1, 0($t0)
	sw $t1, -6596($fp)
	lw $t0, -6596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2340($fp)
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2352($fp)
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -6608($fp)
	li $t0, 0
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
	addi $t0, $fp, -268
	sw $t0, -6628($fp)
	li $t0, 1
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
	addi $t0, $fp, -268
	sw $t0, -6648($fp)
	li $t0, 2
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
	addi $t0, $fp, -268
	sw $t0, -6668($fp)
	li $t0, 3
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
	addi $t0, $fp, -268
	sw $t0, -6688($fp)
	li $t0, 4
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
	addi $t0, $fp, -268
	sw $t0, -6708($fp)
	li $t0, 5
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
	addi $t0, $fp, -268
	sw $t0, -6728($fp)
	li $t0, 6
	sw $t0, -6732($fp)
	li $t0, 4
	lw $t1, -6732($fp)
	mul $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	lw $t1, 0($t0)
	sw $t1, -6744($fp)
	lw $t0, -6744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -6748($fp)
	li $t0, 7
	sw $t0, -6752($fp)
	li $t0, 4
	lw $t1, -6752($fp)
	mul $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6756($fp)
	lw $t1, -6748($fp)
	add $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	lw $t1, 0($t0)
	sw $t1, -6764($fp)
	lw $t0, -6764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6768($fp)
	lw $t0, -1140($fp)
	sw $t0, -6772($fp)
	lw $t0, -1068($fp)
	sw $t0, -6776($fp)
	lw $t1, -6772($fp)
	lw $t2, -6776($fp)
	ble $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -6768($fp)
label398:
	lw $ra, -4($fp)
	lw $v0, -6768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label399:
	li $t0, 47591
	sw $t0, -6780($fp)
	lw $t1, -6780($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 59740
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	sw $t0, -6800($fp)
	li $t0, 12937
	sw $t0, -6804($fp)
	addi $t0, $fp, -6788
	sw $t0, -6808($fp)
	li $t0, 0
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -6808($fp)
	lw $t1, -6816($fp)
	add $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6804($fp)
	lw $t1, -6820($fp)
	sw $t0, 0($t1)
	lw $t0, -6820($fp)
	lw $t1, 0($t0)
	sw $t1, -6824($fp)
	li $t0, 63697
	sw $t0, -6828($fp)
	addi $t0, $fp, -6788
	sw $t0, -6832($fp)
	li $t0, 1
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6832($fp)
	lw $t1, -6840($fp)
	add $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6828($fp)
	lw $t1, -6844($fp)
	sw $t0, 0($t1)
	lw $t0, -6844($fp)
	lw $t1, 0($t0)
	sw $t1, -6848($fp)
	li $t0, 57588
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	sw $t0, -6860($fp)
	li $t0, 33914
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	sw $t0, -6872($fp)
	li $t0, 43478
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	sw $t0, -6884($fp)
	li $t0, 41137
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	sw $t0, -6896($fp)
	li $t0, 40153
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	sw $t0, -6908($fp)
	li $t0, 6536
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	sw $t0, -6920($fp)
	li $t0, 31874
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	sw $t0, -6932($fp)
	li $t0, 12013
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	sw $t0, -6944($fp)
	li $t0, 11736
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	sw $t0, -6956($fp)
	li $t0, 42745
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	sw $t0, -6964($fp)
	lw $t0, -6964($fp)
	sw $t0, -6968($fp)
	li $t0, 29128
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	sw $t0, -6980($fp)
	li $t0, 4857
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	sw $t0, -6992($fp)
	li $t0, 57224
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	sw $t0, -7004($fp)
	li $t0, 53802
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	sw $t0, -7012($fp)
	lw $t0, -7012($fp)
	sw $t0, -7016($fp)
	li $t0, 158
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	sw $t0, -7028($fp)
	li $t0, 31436
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	sw $t0, -7040($fp)
	li $t0, 59221
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	sw $t0, -7052($fp)
	li $t0, 15402
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	sw $t0, -7064($fp)
	li $t0, 0
	sw $t0, -7068($fp)
	lw $t0, -564($fp)
	sw $t0, -7072($fp)
	li $t0, 32734
	sw $t0, -7076($fp)
	lw $t0, -7072($fp)
	lw $t1, -7076($fp)
	sub $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -6976($fp)
	sw $t0, -7084($fp)
	lw $t1, -7080($fp)
	lw $t2, -7084($fp)
	ble $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -7068($fp)
label407:
	li $t0, 0
	sw $t0, -7088($fp)
	lw $t0, -876($fp)
	sw $t0, -7092($fp)
	lw $t1, -7092($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label408:
	li $t0, 1
	sw $t0, -7088($fp)
label409:
	lw $t0, -1512($fp)
	sw $t0, -7096($fp)
	lw $t0, -7088($fp)
	lw $t1, -7096($fp)
	sub $t0, $t0, $t1
	sw $t0, -7100($fp)
	li $t0, 12459
	sw $t0, -7104($fp)
	li $t0, 30497
	sw $t0, -7108($fp)
	lw $t0, -7104($fp)
	lw $t1, -7108($fp)
	add $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t0, -924($fp)
	sw $t0, -7116($fp)
	lw $t0, -7112($fp)
	lw $t1, -7116($fp)
	add $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t0, -552($fp)
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	sw $t0, -7128($fp)
	addi $sp, $sp, -4
	lw $t0, -7068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7128($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7132($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -7136($fp)
	li $t0, 53933
	sw $t0, -7140($fp)
	li $t0, 15033
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -7148($fp)
	lw $t0, -7036($fp)
	sw $t0, -7152($fp)
	li $t0, 0
	lw $t1, -7152($fp)
	sub $t0, $t0, $t1
	sw $t0, -7156($fp)
	li $t0, 0
	lw $t1, -7156($fp)
	sub $t0, $t0, $t1
	sw $t0, -7160($fp)
	lw $t0, -876($fp)
	sw $t0, -7164($fp)
	lw $t0, -936($fp)
	sw $t0, -7168($fp)
	lw $t0, -7164($fp)
	lw $t1, -7168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7172($fp)
	addi $t0, $fp, -124
	sw $t0, -7176($fp)
	lw $t0, -924($fp)
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
	addi $sp, $sp, -4
	lw $t0, -7148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7192($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7196($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -7140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7196($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7200($fp)
	addi $sp, $sp, 12
	lw $t1, -7200($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label410:
	li $t0, 1
	sw $t0, -7136($fp)
label411:
	lw $t1, -7132($fp)
	lw $t2, -7136($fp)
	ble $t1, $t2, label402
	j label405
label405:
	lw $t0, -1920($fp)
	sw $t0, -7204($fp)
	li $t0, 0
	sw $t0, -7208($fp)
	li $t0, 41980
	sw $t0, -7212($fp)
	lw $t1, -7212($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label414
label414:
	li $t0, 25531
	sw $t0, -7216($fp)
	lw $t1, -7216($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -7208($fp)
label413:
	lw $t0, -1584($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	sw $t0, -7224($fp)
	addi $sp, $sp, -4
	lw $t0, -7208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7228($fp)
	addi $sp, $sp, 12
	lw $t1, -7204($fp)
	lw $t2, -7228($fp)
	beq $t1, $t2, label402
	j label403
label402:
	addi $t0, $fp, -172
	sw $t0, -7232($fp)
	lw $t0, -1932($fp)
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
	lw $t0, -7036($fp)
	sw $t0, -7252($fp)
	lw $t0, -7248($fp)
	lw $t1, -7252($fp)
	add $t0, $t0, $t1
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -7260($fp)
label403:
	addi $t0, $fp, -268
	sw $t0, -7264($fp)
	li $t0, 0
	sw $t0, -7268($fp)
	lw $t0, -7024($fp)
	sw $t0, -7272($fp)
	li $t0, 24900
	sw $t0, -7276($fp)
	lw $t1, -7272($fp)
	lw $t2, -7276($fp)
	bne $t1, $t2, label418
	j label421
label421:
	li $t0, 33226
	sw $t0, -7280($fp)
	lw $t1, -7280($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label420
label420:
	lw $t0, -1536($fp)
	sw $t0, -7284($fp)
	lw $t0, -804($fp)
	sw $t0, -7288($fp)
	lw $t0, -7284($fp)
	lw $t1, -7288($fp)
	add $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t1, -7292($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -7268($fp)
label419:
	li $t0, 4
	lw $t1, -7268($fp)
	mul $t0, $t0, $t1
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	lw $t1, -7264($fp)
	add $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	lw $t1, 0($t0)
	sw $t1, -7304($fp)
	lw $t1, -7304($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label416
label415:
	li $t0, 7586
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	sw $t0, -7316($fp)
	li $t0, 19104
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	sw $t0, -7328($fp)
	li $t0, 46164
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	sw $t0, -7340($fp)
	li $t0, 5748
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	sw $t0, -7352($fp)
	li $t0, 11157
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	sw $t0, -7364($fp)
	li $t0, 54695
	sw $t0, -7368($fp)
	li $t0, 0
	lw $t1, -7368($fp)
	sub $t0, $t0, $t1
	sw $t0, -7372($fp)
	li $t0, 0
	sw $t0, -7376($fp)
	li $t0, 0
	sw $t0, -7380($fp)
	lw $t0, -336($fp)
	sw $t0, -7384($fp)
	lw $t0, -360($fp)
	sw $t0, -7388($fp)
	lw $t1, -7384($fp)
	lw $t2, -7388($fp)
	ble $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -7380($fp)
label425:
	li $t0, 52294
	sw $t0, -7392($fp)
	lw $t1, -7380($fp)
	lw $t2, -7392($fp)
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -7376($fp)
label423:
	addi $sp, $sp, -4
	lw $t0, -7372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7396($fp)
	addi $sp, $sp, 12
	lw $t0, -372($fp)
	sw $t0, -7400($fp)
	lw $t0, -7396($fp)
	lw $t1, -7400($fp)
	mul $t0, $t0, $t1
	sw $t0, -7404($fp)
	li $t0, 0
	sw $t0, -7408($fp)
	li $t0, 14542
	sw $t0, -7412($fp)
	lw $t0, -6880($fp)
	sw $t0, -7416($fp)
	lw $t0, -7412($fp)
	lw $t1, -7416($fp)
	sub $t0, $t0, $t1
	sw $t0, -7420($fp)
	li $t0, 49226
	sw $t0, -7424($fp)
	lw $t1, -7420($fp)
	lw $t2, -7424($fp)
	bgt $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -7408($fp)
label427:
	addi $sp, $sp, -4
	lw $t0, -7404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7428($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -7432($fp)
	lw $t0, -6892($fp)
	sw $t0, -7436($fp)
	lw $t1, -7436($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label431
label431:
	li $t0, 0
	sw $t0, -7440($fp)
	lw $t0, -900($fp)
	sw $t0, -7444($fp)
	lw $t1, -7444($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label433
label435:
	li $t0, 30300
	sw $t0, -7448($fp)
	lw $t1, -7448($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label434:
	li $t0, 6820
	sw $t0, -7452($fp)
	lw $t1, -7452($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -7440($fp)
label433:
	li $t0, 0
	sw $t0, -7456($fp)
	li $t0, 1962
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -7464($fp)
	li $t0, 0
	sw $t0, -7468($fp)
	li $t0, 18632
	sw $t0, -7472($fp)
	li $t0, 1172
	sw $t0, -7476($fp)
	lw $t1, -7472($fp)
	lw $t2, -7476($fp)
	blt $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -7468($fp)
label439:
	addi $t0, $fp, -32
	sw $t0, -7480($fp)
	lw $t0, -1596($fp)
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
	lw $t0, -7348($fp)
	sw $t0, -7500($fp)
	addi $sp, $sp, -4
	lw $t0, -7464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7500($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7504($fp)
	addi $sp, $sp, 20
	li $t0, 61377
	sw $t0, -7508($fp)
	lw $t1, -7504($fp)
	lw $t2, -7508($fp)
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -7456($fp)
label437:
	lw $t0, -6976($fp)
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -7516($fp)
	addi $sp, $sp, -4
	lw $t0, -7456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7520($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -7440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7524($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -7524($fp)
	sub $t0, $t0, $t1
	sw $t0, -7528($fp)
	li $t0, 55762
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	sw $t0, -7536($fp)
	addi $sp, $sp, -4
	lw $t0, -7528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7536($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7540($fp)
	addi $sp, $sp, 12
	lw $t1, -7540($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label430
label430:
	li $t0, 0
	sw $t0, -7544($fp)
	li $t0, 0
	sw $t0, -7548($fp)
	li $t0, 53066
	sw $t0, -7552($fp)
	lw $t0, -7024($fp)
	sw $t0, -7556($fp)
	lw $t1, -7552($fp)
	lw $t2, -7556($fp)
	bgt $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -7548($fp)
label443:
	lw $t0, -1524($fp)
	sw $t0, -7560($fp)
	lw $t1, -7548($fp)
	lw $t2, -7560($fp)
	blt $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -7544($fp)
label441:
	lw $t0, -7024($fp)
	sw $t0, -7564($fp)
	lw $t1, -7544($fp)
	lw $t2, -7564($fp)
	beq $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -7432($fp)
label429:
	lw $t0, -7036($fp)
	sw $t0, -7568($fp)
	lw $t0, -1536($fp)
	sw $t0, -7572($fp)
	lw $t0, -7568($fp)
	lw $t1, -7572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7576($fp)
	lw $t0, -1584($fp)
	sw $t0, -7580($fp)
	lw $t0, -7576($fp)
	lw $t1, -7580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7584($fp)
	lw $t0, -7584($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -7588($fp)
	lw $t1, -7588($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	addi $t0, $fp, -268
	sw $t0, -7592($fp)
	lw $t0, -7348($fp)
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
	li $t0, 0
	lw $t1, -7608($fp)
	sub $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -1596($fp)
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	sw $t0, -7620($fp)
	addi $sp, $sp, -4
	lw $t0, -7612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7620($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7624($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -7624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label446
label445:
	li $t0, 0
	sw $t0, -7628($fp)
	li $t0, 18966
	sw $t0, -7632($fp)
	lw $t1, -7632($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label449:
	li $t0, 12252
	sw $t0, -7636($fp)
	lw $t1, -7636($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -7628($fp)
label448:
	li $t0, 0
	sw $t0, -7640($fp)
	li $t0, 18566
	sw $t0, -7644($fp)
	lw $t0, -7360($fp)
	sw $t0, -7648($fp)
	lw $t0, -7644($fp)
	lw $t1, -7648($fp)
	mul $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t1, -7652($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label452
label452:
	li $t0, 6978
	sw $t0, -7656($fp)
	lw $t1, -7656($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -7640($fp)
label451:
	addi $sp, $sp, -4
	lw $t0, -7628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7660($fp)
	addi $sp, $sp, 12
label446:
	lw $t0, -7312($fp)
	sw $t0, -7664($fp)
	lw $t0, -7664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7324($fp)
	sw $t0, -7668($fp)
	lw $t0, -7668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7336($fp)
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7348($fp)
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7360($fp)
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -7684($fp)
	li $t0, 0
	sw $t0, -7688($fp)
	li $t0, 55115
	sw $t0, -7692($fp)
	lw $t0, -1488($fp)
	sw $t0, -7696($fp)
	lw $t1, -7692($fp)
	lw $t2, -7696($fp)
	beq $t1, $t2, label453
	j label455
label455:
	lw $t0, -7324($fp)
	sw $t0, -7700($fp)
	lw $t1, -7700($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -7688($fp)
label454:
	li $t0, 0
	sw $t0, -7704($fp)
	lw $t0, -816($fp)
	sw $t0, -7708($fp)
	lw $t0, -1404($fp)
	sw $t0, -7712($fp)
	lw $t1, -7708($fp)
	lw $t2, -7712($fp)
	bne $t1, $t2, label458
	j label457
label458:
	lw $t0, -828($fp)
	sw $t0, -7716($fp)
	lw $t1, -7716($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -7704($fp)
label457:
	li $t0, 0
	sw $t0, -7720($fp)
	li $t0, 0
	sw $t0, -7724($fp)
	li $t0, 31425
	sw $t0, -7728($fp)
	lw $t0, -528($fp)
	sw $t0, -7732($fp)
	lw $t1, -7728($fp)
	lw $t2, -7732($fp)
	bge $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -7724($fp)
label462:
	li $t0, 42749
	sw $t0, -7736($fp)
	lw $t1, -7724($fp)
	lw $t2, -7736($fp)
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -7720($fp)
label460:
	li $t0, 22381
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	sw $t0, -7744($fp)
	addi $sp, $sp, -4
	lw $t0, -7688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7744($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7748($fp)
	addi $sp, $sp, 20
	lw $t0, -7684($fp)
	lw $t1, -7748($fp)
	mul $t0, $t0, $t1
	sw $t0, -7752($fp)
	lw $ra, -4($fp)
	lw $v0, -7752($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 46458
	sw $t0, -7756($fp)
	li $t0, 31146
	sw $t0, -7760($fp)
	li $t0, 0
	lw $t1, -7760($fp)
	sub $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7756($fp)
	lw $t1, -7764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7768($fp)
	addi $t0, $fp, -12
	sw $t0, -7772($fp)
	lw $t0, -600($fp)
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
	lw $t0, -576($fp)
	sw $t0, -7792($fp)
	lw $t0, -7788($fp)
	lw $t1, -7792($fp)
	mul $t0, $t0, $t1
	sw $t0, -7796($fp)
	lw $t0, -1116($fp)
	sw $t0, -7800($fp)
	lw $t0, -7796($fp)
	lw $t1, -7800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7804($fp)
	lw $t0, -7768($fp)
	lw $t1, -7804($fp)
	sub $t0, $t0, $t1
	sw $t0, -7808($fp)
	li $t0, 0
	sw $t0, -7812($fp)
	li $t0, 0
	sw $t0, -7816($fp)
	li $t0, 31559
	sw $t0, -7820($fp)
	li $t0, 6454
	sw $t0, -7824($fp)
	lw $t0, -7820($fp)
	lw $t1, -7824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7828($fp)
	addi $t0, $fp, -12
	sw $t0, -7832($fp)
	li $t0, 0
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
	lw $t1, -7828($fp)
	lw $t2, -7848($fp)
	blt $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -7816($fp)
label467:
	lw $t0, -1128($fp)
	sw $t0, -7852($fp)
	lw $t1, -7816($fp)
	lw $t2, -7852($fp)
	beq $t1, $t2, label465
	j label464
label465:
	addi $t0, $fp, -236
	sw $t0, -7856($fp)
	li $t0, 14040
	sw $t0, -7860($fp)
	li $t0, 9614
	sw $t0, -7864($fp)
	lw $t0, -7860($fp)
	lw $t1, -7864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7868($fp)
	li $t0, 4
	lw $t1, -7868($fp)
	mul $t0, $t0, $t1
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	lw $t1, -7856($fp)
	add $t0, $t0, $t1
	sw $t0, -7876($fp)
	lw $t0, -7876($fp)
	lw $t1, 0($t0)
	sw $t1, -7880($fp)
	lw $t1, -7880($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -7812($fp)
label464:
	j label417
label416:
	li $t0, 0
	sw $t0, -7884($fp)
	li $t0, 45414
	sw $t0, -7888($fp)
	li $t0, 0
	lw $t1, -7888($fp)
	sub $t0, $t0, $t1
	sw $t0, -7892($fp)
	lw $t1, -7892($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label473:
	lw $t0, -6988($fp)
	sw $t0, -7896($fp)
	lw $t1, -7896($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -7884($fp)
label472:
	lw $t0, -6868($fp)
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	sw $t0, -7904($fp)
	addi $sp, $sp, -4
	lw $t0, -7884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7904($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7908($fp)
	addi $sp, $sp, 12
	lw $t1, -7908($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label468:
label474:
	li $t0, 19788
	sw $t0, -7912($fp)
	lw $t1, -7912($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label476
label475:
	li $t0, 0
	sw $t0, -7916($fp)
	lw $t0, -1584($fp)
	sw $t0, -7920($fp)
	li $t0, 0
	sw $t0, -7924($fp)
	li $t0, 20771
	sw $t0, -7928($fp)
	lw $t1, -7928($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label479:
	li $t0, 1
	sw $t0, -7924($fp)
label480:
	lw $t0, -7920($fp)
	lw $t1, -7924($fp)
	add $t0, $t0, $t1
	sw $t0, -7932($fp)
	addi $t0, $fp, -172
	sw $t0, -7936($fp)
	li $t0, 4
	sw $t0, -7940($fp)
	li $t0, 4
	lw $t1, -7940($fp)
	mul $t0, $t0, $t1
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	lw $t1, -7936($fp)
	add $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	lw $t1, 0($t0)
	sw $t1, -7952($fp)
	lw $t0, -492($fp)
	sw $t0, -7956($fp)
	lw $t0, -7952($fp)
	lw $t1, -7956($fp)
	sub $t0, $t0, $t1
	sw $t0, -7960($fp)
	lw $t0, -348($fp)
	sw $t0, -7964($fp)
	li $t0, 0
	lw $t1, -7964($fp)
	sub $t0, $t0, $t1
	sw $t0, -7968($fp)
	addi $t0, $fp, -56
	sw $t0, -7972($fp)
	lw $t0, -492($fp)
	sw $t0, -7976($fp)
	li $t0, 4
	lw $t1, -7976($fp)
	mul $t0, $t0, $t1
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	lw $t1, -7972($fp)
	add $t0, $t0, $t1
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	lw $t1, 0($t0)
	sw $t1, -7988($fp)
	li $t0, 59956
	sw $t0, -7992($fp)
	lw $t0, -7988($fp)
	lw $t1, -7992($fp)
	sub $t0, $t0, $t1
	sw $t0, -7996($fp)
	lw $t0, -2340($fp)
	sw $t0, -8000($fp)
	lw $t0, -8000($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -8004($fp)
	addi $sp, $sp, -4
	lw $t0, -7960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8004($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8008($fp)
	addi $sp, $sp, 20
	lw $t0, -7932($fp)
	lw $t1, -8008($fp)
	add $t0, $t0, $t1
	sw $t0, -8012($fp)
	addi $t0, $fp, -32
	sw $t0, -8016($fp)
	li $t0, 0
	sw $t0, -8020($fp)
	li $t0, 4
	lw $t1, -8020($fp)
	mul $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	lw $t1, -8016($fp)
	add $t0, $t0, $t1
	sw $t0, -8028($fp)
	lw $t0, -8028($fp)
	lw $t1, 0($t0)
	sw $t1, -8032($fp)
	li $t0, 0
	sw $t0, -8036($fp)
	lw $t0, -6796($fp)
	sw $t0, -8040($fp)
	lw $t1, -8040($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label481
label481:
	li $t0, 1
	sw $t0, -8036($fp)
label482:
	lw $t0, -8032($fp)
	lw $t1, -8036($fp)
	add $t0, $t0, $t1
	sw $t0, -8044($fp)
	lw $t1, -8012($fp)
	lw $t2, -8044($fp)
	bge $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -7916($fp)
label478:
	lw $ra, -4($fp)
	lw $v0, -7916($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label474
label476:
	j label470
label469:
label483:
	li $t0, 26162
	sw $t0, -8048($fp)
	addi $t0, $fp, -6788
	sw $t0, -8052($fp)
	li $t0, 0
	sw $t0, -8056($fp)
	li $t0, 4
	lw $t1, -8056($fp)
	mul $t0, $t0, $t1
	sw $t0, -8060($fp)
	lw $t0, -8060($fp)
	lw $t1, -8052($fp)
	add $t0, $t0, $t1
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	lw $t1, 0($t0)
	sw $t1, -8068($fp)
	lw $t1, -8048($fp)
	lw $t2, -8068($fp)
	ble $t1, $t2, label484
	j label485
label484:
label486:
	addi $t0, $fp, -72
	sw $t0, -8072($fp)
	li $t0, 0
	sw $t0, -8076($fp)
	li $t0, 0
	sw $t0, -8080($fp)
	li $t0, 15051
	sw $t0, -8084($fp)
	li $t0, 2487
	sw $t0, -8088($fp)
	lw $t1, -8084($fp)
	lw $t2, -8088($fp)
	bgt $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -8080($fp)
label492:
	lw $t0, -6856($fp)
	sw $t0, -8092($fp)
	lw $t1, -8080($fp)
	lw $t2, -8092($fp)
	blt $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -8076($fp)
label490:
	li $t0, 4
	lw $t1, -8076($fp)
	mul $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8096($fp)
	lw $t1, -8072($fp)
	add $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	lw $t1, 0($t0)
	sw $t1, -8104($fp)
	li $t0, 9534
	sw $t0, -8108($fp)
	lw $t0, -8104($fp)
	lw $t1, -8108($fp)
	add $t0, $t0, $t1
	sw $t0, -8112($fp)
	lw $t1, -8112($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 0
	sw $t0, -8116($fp)
	li $t0, 33617
	sw $t0, -8120($fp)
	lw $t1, -8120($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label497
label497:
	li $t0, 1
	sw $t0, -8116($fp)
label498:
	li $t0, 0
	lw $t1, -8116($fp)
	sub $t0, $t0, $t1
	sw $t0, -8124($fp)
	addi $t0, $fp, -12
	sw $t0, -8128($fp)
	li $t0, 0
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
	lw $t1, -8124($fp)
	lw $t2, -8144($fp)
	blt $t1, $t2, label496
	j label494
label496:
	addi $t0, $fp, -56
	sw $t0, -8148($fp)
	li $t0, 0
	sw $t0, -8152($fp)
	li $t0, 45869
	sw $t0, -8156($fp)
	lw $t0, -6868($fp)
	sw $t0, -8160($fp)
	lw $t1, -8156($fp)
	lw $t2, -8160($fp)
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -8152($fp)
label500:
	li $t0, 4
	lw $t1, -8152($fp)
	mul $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	lw $t1, -8148($fp)
	add $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	lw $t1, 0($t0)
	sw $t1, -8172($fp)
	lw $t1, -8172($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 0
	sw $t0, -8176($fp)
	li $t0, 0
	sw $t0, -8180($fp)
	li $t0, 0
	sw $t0, -8184($fp)
	li $t0, 0
	sw $t0, -8188($fp)
	lw $t0, -1080($fp)
	sw $t0, -8192($fp)
	li $t0, 0
	sw $t0, -8196($fp)
	li $t0, 0
	sw $t0, -8200($fp)
	li $t0, 21426
	sw $t0, -8204($fp)
	lw $t0, -1092($fp)
	sw $t0, -8208($fp)
	lw $t1, -8204($fp)
	lw $t2, -8208($fp)
	bge $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -8200($fp)
label512:
	lw $t0, -960($fp)
	sw $t0, -8212($fp)
	lw $t1, -8200($fp)
	lw $t2, -8212($fp)
	bge $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -8196($fp)
label510:
	li $t0, 0
	sw $t0, -8216($fp)
	lw $t0, -900($fp)
	sw $t0, -8220($fp)
	lw $t0, -6916($fp)
	sw $t0, -8224($fp)
	li $t0, 0
	sw $t0, -8228($fp)
	lw $t0, -348($fp)
	sw $t0, -8232($fp)
	lw $t1, -8232($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label517
label518:
	li $t0, 23082
	sw $t0, -8236($fp)
	lw $t1, -8236($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -8228($fp)
label517:
	li $t0, 0
	sw $t0, -8240($fp)
	li $t0, 31846
	sw $t0, -8244($fp)
	li $t0, 0
	lw $t1, -8244($fp)
	sub $t0, $t0, $t1
	sw $t0, -8248($fp)
	li $t0, 59925
	sw $t0, -8252($fp)
	lw $t1, -8248($fp)
	lw $t2, -8252($fp)
	ble $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -8240($fp)
label520:
	addi $sp, $sp, -4
	lw $t0, -8220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8240($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8256($fp)
	addi $sp, $sp, 20
	lw $t1, -8256($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label515
label515:
	lw $t0, -852($fp)
	sw $t0, -8260($fp)
	lw $t1, -8260($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -8216($fp)
label514:
	addi $sp, $sp, -4
	lw $t0, -8196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8264($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -8192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8264($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8268($fp)
	addi $sp, $sp, 12
	li $t0, 40847
	sw $t0, -8272($fp)
	lw $t1, -8268($fp)
	lw $t2, -8272($fp)
	bge $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -8188($fp)
label508:
	lw $t0, -2088($fp)
	sw $t0, -8276($fp)
	li $t0, 54228
	sw $t0, -8280($fp)
	lw $t0, -8276($fp)
	lw $t1, -8280($fp)
	add $t0, $t0, $t1
	sw $t0, -8284($fp)
	lw $t1, -8188($fp)
	lw $t2, -8284($fp)
	bge $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -8184($fp)
label506:
	addi $t0, $fp, -196
	sw $t0, -8288($fp)
	li $t0, 5
	sw $t0, -8292($fp)
	li $t0, 4
	lw $t1, -8292($fp)
	mul $t0, $t0, $t1
	sw $t0, -8296($fp)
	lw $t0, -8296($fp)
	lw $t1, -8288($fp)
	add $t0, $t0, $t1
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	lw $t1, 0($t0)
	sw $t1, -8304($fp)
	lw $t1, -8184($fp)
	lw $t2, -8304($fp)
	bge $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -8180($fp)
label504:
	li $t0, 0
	sw $t0, -8308($fp)
	addi $t0, $fp, -268
	sw $t0, -8312($fp)
	lw $t0, -2088($fp)
	sw $t0, -8316($fp)
	li $t0, 4
	lw $t1, -8316($fp)
	mul $t0, $t0, $t1
	sw $t0, -8320($fp)
	lw $t0, -8320($fp)
	lw $t1, -8312($fp)
	add $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	lw $t1, 0($t0)
	sw $t1, -8328($fp)
	lw $t1, -8328($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label521
label521:
	li $t0, 1
	sw $t0, -8308($fp)
label522:
	lw $t1, -8180($fp)
	lw $t2, -8308($fp)
	blt $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -8176($fp)
label502:
	lw $ra, -4($fp)
	lw $v0, -8176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label495
label494:
label523:
	addi $t0, $fp, -268
	sw $t0, -8332($fp)
	li $t0, 3
	sw $t0, -8336($fp)
	li $t0, 4
	lw $t1, -8336($fp)
	mul $t0, $t0, $t1
	sw $t0, -8340($fp)
	lw $t0, -8340($fp)
	lw $t1, -8332($fp)
	add $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	lw $t1, 0($t0)
	sw $t1, -8348($fp)
	lw $t0, -1572($fp)
	sw $t0, -8352($fp)
	lw $t0, -8348($fp)
	lw $t1, -8352($fp)
	sub $t0, $t0, $t1
	sw $t0, -8356($fp)
	addi $t0, $fp, -172
	sw $t0, -8360($fp)
	lw $t0, 4($fp)
	sw $t0, -8364($fp)
	li $t0, 4
	lw $t1, -8364($fp)
	mul $t0, $t0, $t1
	sw $t0, -8368($fp)
	lw $t0, -8368($fp)
	lw $t1, -8360($fp)
	add $t0, $t0, $t1
	sw $t0, -8372($fp)
	lw $t0, -8372($fp)
	lw $t1, 0($t0)
	sw $t1, -8376($fp)
	lw $t0, -8356($fp)
	lw $t1, -8376($fp)
	sub $t0, $t0, $t1
	sw $t0, -8380($fp)
	lw $t1, -8380($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label526
label526:
	addi $t0, $fp, -148
	sw $t0, -8384($fp)
	li $t0, 1
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
	lw $t1, -8400($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 0
	sw $t0, -8404($fp)
	li $t0, 0
	sw $t0, -8408($fp)
	lw $t0, -1068($fp)
	sw $t0, -8412($fp)
	lw $t1, -8412($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label530:
	li $t0, 1
	sw $t0, -8408($fp)
label531:
	lw $t0, -636($fp)
	sw $t0, -8416($fp)
	lw $t0, -8408($fp)
	lw $t1, -8416($fp)
	add $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t1, -8420($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label529:
	li $t0, 32113
	sw $t0, -8424($fp)
	li $t0, 15594
	sw $t0, -8428($fp)
	lw $t0, -8424($fp)
	lw $t1, -8428($fp)
	mul $t0, $t0, $t1
	sw $t0, -8432($fp)
	lw $t1, -8432($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -8404($fp)
label528:
	lw $t0, -8404($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -8436($fp)
	j label523
label525:
label495:
	j label486
label488:
	j label483
label485:
label470:
label417:
	li $t0, 9588
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	sw $t0, -8444($fp)
	lw $t0, -8444($fp)
	sw $t0, -8448($fp)
	li $t0, 26533
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	sw $t0, -8460($fp)
	li $t0, 19073
	sw $t0, -8464($fp)
	lw $t0, -8464($fp)
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	sw $t0, -8472($fp)
	li $t0, 17118
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	sw $t0, -8484($fp)
	li $t0, 0
	sw $t0, -8488($fp)
	lw $t0, -6976($fp)
	sw $t0, -8492($fp)
	lw $t1, -8492($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label535
label535:
	li $t0, 1
	sw $t0, -8488($fp)
label536:
	li $t0, 0
	lw $t1, -8488($fp)
	sub $t0, $t0, $t1
	sw $t0, -8496($fp)
	li $t0, 10112
	sw $t0, -8500($fp)
	lw $t1, -8496($fp)
	lw $t2, -8500($fp)
	bgt $t1, $t2, label532
	j label533
label532:
	li $t0, 12777
	sw $t0, -8504($fp)
	lw $t1, -8504($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
	addi $t0, $fp, -268
	sw $t0, -8508($fp)
	addi $t0, $fp, -236
	sw $t0, -8512($fp)
	li $t0, 0
	sw $t0, -8516($fp)
	lw $t0, 8($fp)
	sw $t0, -8520($fp)
	lw $t0, -1548($fp)
	sw $t0, -8524($fp)
	lw $t1, -8520($fp)
	lw $t2, -8524($fp)
	beq $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -8516($fp)
label541:
	li $t0, 4
	lw $t1, -8516($fp)
	mul $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	lw $t1, -8512($fp)
	add $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8532($fp)
	lw $t1, 0($t0)
	sw $t1, -8536($fp)
	li $t0, 4
	lw $t1, -8536($fp)
	mul $t0, $t0, $t1
	sw $t0, -8540($fp)
	lw $t0, -8540($fp)
	lw $t1, -8508($fp)
	add $t0, $t0, $t1
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	lw $t1, 0($t0)
	sw $t1, -8548($fp)
	j label539
label538:
	li $t0, 43281
	sw $t0, -8552($fp)
	lw $t0, -8552($fp)
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	sw $t0, -8560($fp)
	li $t0, 0
	sw $t0, -8564($fp)
	addi $t0, $fp, -172
	sw $t0, -8568($fp)
	li $t0, 0
	sw $t0, -8572($fp)
	lw $t0, -1104($fp)
	sw $t0, -8576($fp)
	lw $t1, -8576($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label547
label547:
	li $t0, 60399
	sw $t0, -8580($fp)
	lw $t1, -8580($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -8572($fp)
label546:
	li $t0, 4
	lw $t1, -8572($fp)
	mul $t0, $t0, $t1
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	lw $t1, -8568($fp)
	add $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	lw $t1, 0($t0)
	sw $t1, -8592($fp)
	lw $t1, -8592($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label544:
	li $t0, 8444
	sw $t0, -8596($fp)
	lw $t1, -8596($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -8564($fp)
label543:
	lw $t0, -7024($fp)
	sw $t0, -8600($fp)
	lw $t0, -8600($fp)
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	sw $t0, -8604($fp)
	li $t0, 0
	sw $t0, -8608($fp)
	addi $t0, $fp, -268
	sw $t0, -8612($fp)
	li $t0, 2
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
	lw $t0, -7060($fp)
	sw $t0, -8632($fp)
	lw $t1, -8628($fp)
	lw $t2, -8632($fp)
	bge $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -8608($fp)
label549:
	addi $sp, $sp, -4
	lw $t0, -8604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8608($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8636($fp)
	addi $sp, $sp, 12
label539:
	j label534
label533:
	li $t0, 0
	sw $t0, -8640($fp)
	li $t0, 43532
	sw $t0, -8644($fp)
	lw $t1, -8644($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label550
label550:
	li $t0, 1
	sw $t0, -8640($fp)
label551:
	lw $t0, -1584($fp)
	sw $t0, -8648($fp)
	lw $t0, -8640($fp)
	lw $t1, -8648($fp)
	add $t0, $t0, $t1
	sw $t0, -8652($fp)
	li $t0, 0
	sw $t0, -8656($fp)
	li $t0, 10931
	sw $t0, -8660($fp)
	li $t0, 9283
	sw $t0, -8664($fp)
	lw $t0, -8660($fp)
	lw $t1, -8664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8668($fp)
	lw $t0, -8468($fp)
	sw $t0, -8672($fp)
	lw $t1, -8668($fp)
	lw $t2, -8672($fp)
	bge $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -8656($fp)
label553:
	addi $sp, $sp, -4
	lw $t0, -8652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8656($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8676($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -8676($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label534:
	li $t0, 0
	sw $t0, -8680($fp)
	li $t0, 37783
	sw $t0, -8684($fp)
	li $t0, 23865
	sw $t0, -8688($fp)
	lw $t0, -8684($fp)
	lw $t1, -8688($fp)
	mul $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t1, -8692($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label556
label556:
	lw $t0, -924($fp)
	sw $t0, -8696($fp)
	lw $t1, -8696($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -8680($fp)
label555:
	li $t0, 0
	sw $t0, -8700($fp)
	li $t0, 0
	sw $t0, -8704($fp)
	li $t0, 20397
	sw $t0, -8708($fp)
	lw $t1, -8708($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label559
label559:
	li $t0, 1
	sw $t0, -8704($fp)
label560:
	lw $t0, -924($fp)
	sw $t0, -8712($fp)
	lw $t1, -8704($fp)
	lw $t2, -8712($fp)
	bgt $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -8700($fp)
label558:
	lw $t0, -1560($fp)
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	sw $t0, -8720($fp)
	addi $t0, $fp, -28
	sw $t0, -8724($fp)
	lw $t0, -1584($fp)
	sw $t0, -8728($fp)
	li $t0, 4
	lw $t1, -8728($fp)
	mul $t0, $t0, $t1
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	lw $t1, -8724($fp)
	add $t0, $t0, $t1
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	lw $t1, 0($t0)
	sw $t1, -8740($fp)
	addi $sp, $sp, -4
	lw $t0, -8680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8740($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8744($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -8744($fp)
	sub $t0, $t0, $t1
	sw $t0, -8748($fp)
	lw $t0, -8444($fp)
	sw $t0, -8752($fp)
	li $t0, 52243
	sw $t0, -8756($fp)
	lw $t0, -8752($fp)
	lw $t1, -8756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8760($fp)
	lw $t0, -8748($fp)
	lw $t1, -8760($fp)
	sub $t0, $t0, $t1
	sw $t0, -8764($fp)
	li $t0, 32172
	sw $t0, -8768($fp)
	lw $t0, -8764($fp)
	lw $t1, -8768($fp)
	sub $t0, $t0, $t1
	sw $t0, -8772($fp)
	li $t0, 46948
	sw $t0, -8776($fp)
	lw $t0, -8776($fp)
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	sw $t0, -8780($fp)
	li $t0, 0
	sw $t0, -8784($fp)
	li $t0, 0
	sw $t0, -8788($fp)
	lw $t0, -1584($fp)
	sw $t0, -8792($fp)
	lw $t0, -8456($fp)
	sw $t0, -8796($fp)
	lw $t1, -8792($fp)
	lw $t2, -8796($fp)
	bgt $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -8788($fp)
label567:
	lw $t0, -384($fp)
	sw $t0, -8800($fp)
	lw $t1, -8788($fp)
	lw $t2, -8800($fp)
	bgt $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -8784($fp)
label565:
	addi $sp, $sp, -4
	lw $t0, -8780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8784($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8804($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -8808($fp)
	li $t0, 8133
	sw $t0, -8812($fp)
	lw $t1, -8812($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label568:
	li $t0, 1
	sw $t0, -8808($fp)
label569:
	lw $t0, -8804($fp)
	lw $t1, -8808($fp)
	mul $t0, $t0, $t1
	sw $t0, -8816($fp)
	addi $t0, $fp, -28
	sw $t0, -8820($fp)
	li $t0, 0
	sw $t0, -8824($fp)
	lw $t0, -6856($fp)
	sw $t0, -8828($fp)
	lw $t1, -8828($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label572
label572:
	li $t0, 7483
	sw $t0, -8832($fp)
	lw $t1, -8832($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -8824($fp)
label571:
	li $t0, 4
	lw $t1, -8824($fp)
	mul $t0, $t0, $t1
	sw $t0, -8836($fp)
	lw $t0, -8836($fp)
	lw $t1, -8820($fp)
	add $t0, $t0, $t1
	sw $t0, -8840($fp)
	lw $t0, -8840($fp)
	lw $t1, 0($t0)
	sw $t1, -8844($fp)
	lw $t0, -8816($fp)
	lw $t1, -8844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8848($fp)
	li $t0, 0
	lw $t1, -8848($fp)
	sub $t0, $t0, $t1
	sw $t0, -8852($fp)
	lw $t1, -8852($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 35640
	sw $t0, -8856($fp)
	li $t0, 1
	sw $t0, -8860($fp)
	lw $t0, -8856($fp)
	lw $t1, -8860($fp)
	mul $t0, $t0, $t1
	sw $t0, -8864($fp)
	li $t0, 0
	lw $t1, -8864($fp)
	sub $t0, $t0, $t1
	sw $t0, -8868($fp)
	j label563
label562:
	li $t0, 0
	sw $t0, -8872($fp)
	lw $t0, -492($fp)
	sw $t0, -8876($fp)
	li $t0, 0
	lw $t1, -8876($fp)
	sub $t0, $t0, $t1
	sw $t0, -8880($fp)
	li $t0, 0
	lw $t1, -8880($fp)
	sub $t0, $t0, $t1
	sw $t0, -8884($fp)
	li $t0, 0
	lw $t1, -8884($fp)
	sub $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t1, -8888($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -8872($fp)
label574:
label563:
	lw $t0, -8444($fp)
	sw $t0, -8892($fp)
	lw $t0, -8892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8456($fp)
	sw $t0, -8896($fp)
	lw $t0, -8896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8468($fp)
	sw $t0, -8900($fp)
	lw $t0, -8900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8480($fp)
	sw $t0, -8904($fp)
	lw $t0, -8904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8908($fp)
	li $t0, 0
	sw $t0, -8912($fp)
	li $t0, 54785
	sw $t0, -8916($fp)
	lw $t1, -8916($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label577
label577:
	lw $t0, -6964($fp)
	sw $t0, -8920($fp)
	lw $t1, -8920($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -8912($fp)
label576:
	li $t0, 4
	lw $t1, -8912($fp)
	mul $t0, $t0, $t1
	sw $t0, -8924($fp)
	lw $t0, -8924($fp)
	lw $t1, -8908($fp)
	add $t0, $t0, $t1
	sw $t0, -8928($fp)
	lw $t0, -8928($fp)
	lw $t1, 0($t0)
	sw $t1, -8932($fp)
	lw $t0, -8932($fp)
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	sw $t0, -8936($fp)
	lw $ra, -4($fp)
	lw $v0, -8936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -6880($fp)
	sw $t0, -8940($fp)
	li $t0, 0
	sw $t0, -8944($fp)
	lw $t0, -1500($fp)
	sw $t0, -8948($fp)
	lw $t1, -8948($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label581
label581:
	li $t0, 1
	sw $t0, -8944($fp)
label582:
	li $t0, 649
	sw $t0, -8952($fp)
	lw $t0, -8944($fp)
	lw $t1, -8952($fp)
	mul $t0, $t0, $t1
	sw $t0, -8956($fp)
	li $t0, 0
	sw $t0, -8960($fp)
	li $t0, 0
	sw $t0, -8964($fp)
	li $t0, 0
	sw $t0, -8968($fp)
	li $t0, 14396
	sw $t0, -8972($fp)
	lw $t1, -8972($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label587:
	li $t0, 1
	sw $t0, -8968($fp)
label588:
	lw $t0, -324($fp)
	sw $t0, -8976($fp)
	lw $t1, -8968($fp)
	lw $t2, -8976($fp)
	bge $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -8964($fp)
label586:
	li $t0, 0
	sw $t0, -8980($fp)
	li $t0, 0
	sw $t0, -8984($fp)
	li $t0, 50591
	sw $t0, -8988($fp)
	li $t0, 3660
	sw $t0, -8992($fp)
	lw $t1, -8988($fp)
	lw $t2, -8992($fp)
	bge $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -8984($fp)
label592:
	lw $t0, -876($fp)
	sw $t0, -8996($fp)
	lw $t1, -8984($fp)
	lw $t2, -8996($fp)
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -8980($fp)
label590:
	addi $sp, $sp, -4
	lw $t0, -8964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9000($fp)
	addi $sp, $sp, 12
	lw $t1, -9000($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label583:
	li $t0, 1
	sw $t0, -8960($fp)
label584:
	li $t0, 0
	sw $t0, -9004($fp)
	lw $t0, -1116($fp)
	sw $t0, -9008($fp)
	li $t0, 0
	lw $t1, -9008($fp)
	sub $t0, $t0, $t1
	sw $t0, -9012($fp)
	lw $t1, -9012($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label595
label595:
	lw $t0, -360($fp)
	sw $t0, -9016($fp)
	lw $t1, -9016($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -9004($fp)
label594:
	lw $t0, -876($fp)
	sw $t0, -9020($fp)
	li $t0, 0
	lw $t1, -9020($fp)
	sub $t0, $t0, $t1
	sw $t0, -9024($fp)
	addi $t0, $fp, -112
	sw $t0, -9028($fp)
	li $t0, 0
	sw $t0, -9032($fp)
	li $t0, 4
	lw $t1, -9032($fp)
	mul $t0, $t0, $t1
	sw $t0, -9036($fp)
	lw $t0, -9036($fp)
	lw $t1, -9028($fp)
	add $t0, $t0, $t1
	sw $t0, -9040($fp)
	lw $t0, -9040($fp)
	lw $t1, 0($t0)
	sw $t1, -9044($fp)
	li $t0, 0
	lw $t1, -9044($fp)
	sub $t0, $t0, $t1
	sw $t0, -9048($fp)
	addi $sp, $sp, -4
	lw $t0, -8960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9048($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9052($fp)
	addi $sp, $sp, 20
	lw $t0, -1392($fp)
	sw $t0, -9056($fp)
	lw $t0, -9052($fp)
	lw $t1, -9056($fp)
	add $t0, $t0, $t1
	sw $t0, -9060($fp)
	addi $t0, $fp, -72
	sw $t0, -9064($fp)
	lw $t0, -7012($fp)
	sw $t0, -9068($fp)
	li $t0, 4
	lw $t1, -9068($fp)
	mul $t0, $t0, $t1
	sw $t0, -9072($fp)
	lw $t0, -9072($fp)
	lw $t1, -9064($fp)
	add $t0, $t0, $t1
	sw $t0, -9076($fp)
	lw $t0, -9076($fp)
	lw $t1, 0($t0)
	sw $t1, -9080($fp)
	addi $sp, $sp, -4
	lw $t0, -8940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9080($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9084($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -9088($fp)
	lw $t0, -6964($fp)
	sw $t0, -9092($fp)
	lw $t1, -9092($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label596:
	li $t0, 1
	sw $t0, -9088($fp)
label597:
	li $t0, 0
	lw $t1, -9088($fp)
	sub $t0, $t0, $t1
	sw $t0, -9096($fp)
	lw $t1, -9084($fp)
	lw $t2, -9096($fp)
	beq $t1, $t2, label578
	j label579
label578:
	li $t0, 0
	sw $t0, -9100($fp)
	li $t0, 0
	sw $t0, -9104($fp)
	li $t0, 0
	sw $t0, -9108($fp)
	lw $t0, -1920($fp)
	sw $t0, -9112($fp)
	lw $t0, -888($fp)
	sw $t0, -9116($fp)
	lw $t1, -9112($fp)
	lw $t2, -9116($fp)
	bne $t1, $t2, label604
	j label603
label604:
	li $t0, 30367
	sw $t0, -9120($fp)
	lw $t1, -9120($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -9108($fp)
label603:
	li $t0, 13248
	sw $t0, -9124($fp)
	li $t0, 40929
	sw $t0, -9128($fp)
	lw $t0, -9124($fp)
	lw $t1, -9128($fp)
	mul $t0, $t0, $t1
	sw $t0, -9132($fp)
	li $t0, 19722
	sw $t0, -9136($fp)
	lw $t0, -9132($fp)
	lw $t1, -9136($fp)
	add $t0, $t0, $t1
	sw $t0, -9140($fp)
	addi $sp, $sp, -4
	lw $t0, -9108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9140($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9144($fp)
	addi $sp, $sp, 12
	lw $t1, -9144($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label600
label600:
	li $t0, 1
	sw $t0, -9104($fp)
label601:
	li $t0, 0
	sw $t0, -9148($fp)
	li $t0, 0
	sw $t0, -9152($fp)
	lw $t0, -6928($fp)
	sw $t0, -9156($fp)
	lw $t1, -9156($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label607:
	li $t0, 1
	sw $t0, -9152($fp)
label608:
	lw $t0, -1524($fp)
	sw $t0, -9160($fp)
	lw $t0, -9152($fp)
	lw $t1, -9160($fp)
	add $t0, $t0, $t1
	sw $t0, -9164($fp)
	li $t0, 0
	sw $t0, -9168($fp)
	li $t0, 51042
	sw $t0, -9172($fp)
	lw $t1, -9172($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label609
label609:
	li $t0, 1
	sw $t0, -9168($fp)
label610:
	lw $t1, -9164($fp)
	lw $t2, -9168($fp)
	ble $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -9148($fp)
label606:
	lw $t1, -9104($fp)
	lw $t2, -9148($fp)
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -9100($fp)
label599:
	j label580
label579:
	addi $t0, $fp, -56
	sw $t0, -9176($fp)
	lw $t0, -6892($fp)
	sw $t0, -9180($fp)
	li $t0, 32500
	sw $t0, -9184($fp)
	lw $t0, -9180($fp)
	lw $t1, -9184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9188($fp)
	lw $t0, -792($fp)
	sw $t0, -9192($fp)
	lw $t0, -9188($fp)
	lw $t1, -9192($fp)
	sub $t0, $t0, $t1
	sw $t0, -9196($fp)
	addi $t0, $fp, -56
	sw $t0, -9200($fp)
	lw $t0, -6940($fp)
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
	lw $t0, -9196($fp)
	lw $t1, -9216($fp)
	sub $t0, $t0, $t1
	sw $t0, -9220($fp)
	li $t0, 4
	lw $t1, -9220($fp)
	mul $t0, $t0, $t1
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	lw $t1, -9176($fp)
	add $t0, $t0, $t1
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	lw $t1, 0($t0)
	sw $t1, -9232($fp)
	lw $t1, -9232($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	lw $t0, -6952($fp)
	sw $t0, -9236($fp)
	li $t0, 0
	lw $t1, -9236($fp)
	sub $t0, $t0, $t1
	sw $t0, -9240($fp)
	j label613
label612:
label614:
	li $t0, 8112
	sw $t0, -9244($fp)
	li $t0, 0
	lw $t1, -9244($fp)
	sub $t0, $t0, $t1
	sw $t0, -9248($fp)
	lw $t0, -6952($fp)
	sw $t0, -9252($fp)
	lw $t0, -804($fp)
	sw $t0, -9256($fp)
	lw $t0, -9252($fp)
	lw $t1, -9256($fp)
	mul $t0, $t0, $t1
	sw $t0, -9260($fp)
	lw $t0, -840($fp)
	sw $t0, -9264($fp)
	lw $t0, -9260($fp)
	lw $t1, -9264($fp)
	mul $t0, $t0, $t1
	sw $t0, -9268($fp)
	lw $t0, -9248($fp)
	lw $t1, -9268($fp)
	add $t0, $t0, $t1
	sw $t0, -9272($fp)
	li $t0, 0
	sw $t0, -9276($fp)
	li $t0, 0
	sw $t0, -9280($fp)
	li $t0, 45905
	sw $t0, -9284($fp)
	lw $t1, -9284($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label619
label619:
	li $t0, 1
	sw $t0, -9280($fp)
label620:
	li $t0, 0
	lw $t1, -9280($fp)
	sub $t0, $t0, $t1
	sw $t0, -9288($fp)
	lw $t1, -9288($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -9276($fp)
label618:
	lw $t0, -9272($fp)
	lw $t1, -9276($fp)
	add $t0, $t0, $t1
	sw $t0, -9292($fp)
	lw $t1, -9292($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 40944
	sw $t0, -9296($fp)
	lw $t1, -9296($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label622
label621:
	li $t0, 0
	sw $t0, -9300($fp)
	li $t0, 7861
	sw $t0, -9304($fp)
	lw $t0, -6988($fp)
	sw $t0, -9308($fp)
	lw $t0, -9304($fp)
	lw $t1, -9308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9312($fp)
	lw $t1, -9312($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label625
label627:
	lw $t0, -948($fp)
	sw $t0, -9316($fp)
	lw $t0, -1920($fp)
	sw $t0, -9320($fp)
	lw $t1, -9316($fp)
	lw $t2, -9320($fp)
	beq $t1, $t2, label626
	j label625
label626:
	li $t0, 0
	sw $t0, -9324($fp)
	li $t0, 55820
	sw $t0, -9328($fp)
	lw $t1, -9328($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -9324($fp)
label629:
	lw $t0, -912($fp)
	sw $t0, -9332($fp)
	li $t0, 0
	lw $t1, -9332($fp)
	sub $t0, $t0, $t1
	sw $t0, -9336($fp)
	lw $t0, -9324($fp)
	lw $t1, -9336($fp)
	mul $t0, $t0, $t1
	sw $t0, -9340($fp)
	lw $t1, -9340($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -9300($fp)
label625:
	j label623
label622:
	li $t0, 0
	sw $t0, -9344($fp)
	li $t0, 0
	sw $t0, -9348($fp)
	li $t0, 51876
	sw $t0, -9352($fp)
	li $t0, 17144
	sw $t0, -9356($fp)
	lw $t0, -9352($fp)
	lw $t1, -9356($fp)
	sub $t0, $t0, $t1
	sw $t0, -9360($fp)
	li $t0, 33816
	sw $t0, -9364($fp)
	lw $t1, -9360($fp)
	lw $t2, -9364($fp)
	ble $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -9348($fp)
label633:
	lw $t0, -336($fp)
	sw $t0, -9368($fp)
	addi $sp, $sp, -4
	lw $t0, -9348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9368($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9372($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -9376($fp)
	lw $t0, -492($fp)
	sw $t0, -9380($fp)
	lw $t1, -9380($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label634
label634:
	li $t0, 1
	sw $t0, -9376($fp)
label635:
	lw $t0, -876($fp)
	sw $t0, -9384($fp)
	lw $t0, -9376($fp)
	lw $t1, -9384($fp)
	add $t0, $t0, $t1
	sw $t0, -9388($fp)
	addi $sp, $sp, -4
	lw $t0, -9372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9392($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -32
	sw $t0, -9396($fp)
	lw $t0, -7048($fp)
	sw $t0, -9400($fp)
	li $t0, 4
	lw $t1, -9400($fp)
	mul $t0, $t0, $t1
	sw $t0, -9404($fp)
	lw $t0, -9404($fp)
	lw $t1, -9396($fp)
	add $t0, $t0, $t1
	sw $t0, -9408($fp)
	lw $t0, -9408($fp)
	lw $t1, 0($t0)
	sw $t1, -9412($fp)
	lw $t0, -9392($fp)
	lw $t1, -9412($fp)
	mul $t0, $t0, $t1
	sw $t0, -9416($fp)
	addi $t0, $fp, -148
	sw $t0, -9420($fp)
	li $t0, 5
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
	lw $t0, -9416($fp)
	lw $t1, -9436($fp)
	mul $t0, $t0, $t1
	sw $t0, -9440($fp)
	li $t0, 0
	lw $t1, -9440($fp)
	sub $t0, $t0, $t1
	sw $t0, -9444($fp)
	li $t0, 57681
	sw $t0, -9448($fp)
	lw $t1, -9444($fp)
	lw $t2, -9448($fp)
	bne $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -9344($fp)
label631:
label623:
	j label614
label616:
label613:
label580:
	j label399
label401:
	li $t0, 0
	sw $t0, -9452($fp)
	li $t0, 39093
	sw $t0, -9456($fp)
	addi $t0, $fp, -172
	sw $t0, -9460($fp)
	li $t0, 5
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
	addi $sp, $sp, -4
	lw $t0, -9456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9480($fp)
	addi $sp, $sp, 12
	lw $t1, -9480($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label638:
	li $t0, 0
	sw $t0, -9484($fp)
	lw $t0, 8($fp)
	sw $t0, -9488($fp)
	li $t0, 29046
	sw $t0, -9492($fp)
	lw $t0, -9488($fp)
	lw $t1, -9492($fp)
	sub $t0, $t0, $t1
	sw $t0, -9496($fp)
	lw $t1, -9496($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label640
label641:
	li $t0, 9198
	sw $t0, -9500($fp)
	lw $t1, -9500($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -9484($fp)
label640:
	lw $t0, -888($fp)
	sw $t0, -9504($fp)
	li $t0, 1578
	sw $t0, -9508($fp)
	lw $t0, -9504($fp)
	lw $t1, -9508($fp)
	mul $t0, $t0, $t1
	sw $t0, -9512($fp)
	li $t0, 0
	lw $t1, -9512($fp)
	sub $t0, $t0, $t1
	sw $t0, -9516($fp)
	addi $sp, $sp, -4
	lw $t0, -9484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9516($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9520($fp)
	addi $sp, $sp, 12
	lw $t0, -564($fp)
	sw $t0, -9524($fp)
	lw $t0, -1896($fp)
	sw $t0, -9528($fp)
	lw $t0, -9524($fp)
	lw $t1, -9528($fp)
	sub $t0, $t0, $t1
	sw $t0, -9532($fp)
	lw $t1, -9520($fp)
	lw $t2, -9532($fp)
	ble $t1, $t2, label636
	j label637
label636:
	li $t0, 1
	sw $t0, -9452($fp)
label637:
	addi $t0, $fp, -12
	sw $t0, -9536($fp)
	li $t0, 0
	sw $t0, -9540($fp)
	li $t0, 4
	lw $t1, -9540($fp)
	mul $t0, $t0, $t1
	sw $t0, -9544($fp)
	lw $t0, -9544($fp)
	lw $t1, -9536($fp)
	add $t0, $t0, $t1
	sw $t0, -9548($fp)
	lw $t0, -9548($fp)
	lw $t1, 0($t0)
	sw $t1, -9552($fp)
	lw $t0, -9552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -9556($fp)
	li $t0, 1
	sw $t0, -9560($fp)
	li $t0, 4
	lw $t1, -9560($fp)
	mul $t0, $t0, $t1
	sw $t0, -9564($fp)
	lw $t0, -9564($fp)
	lw $t1, -9556($fp)
	add $t0, $t0, $t1
	sw $t0, -9568($fp)
	lw $t0, -9568($fp)
	lw $t1, 0($t0)
	sw $t1, -9572($fp)
	lw $t0, -9572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -9576($fp)
	lw $t0, -9576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -9580($fp)
	lw $t0, -9580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -9584($fp)
	lw $t0, -9584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -9588($fp)
	lw $t0, -9588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -9592($fp)
	lw $t0, -9592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -9596($fp)
	lw $t0, -9596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -9600($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -9620($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -9640($fp)
	li $t0, 2
	sw $t0, -9644($fp)
	li $t0, 4
	lw $t1, -9644($fp)
	mul $t0, $t0, $t1
	sw $t0, -9648($fp)
	lw $t0, -9648($fp)
	lw $t1, -9640($fp)
	add $t0, $t0, $t1
	sw $t0, -9652($fp)
	lw $t0, -9652($fp)
	lw $t1, 0($t0)
	sw $t1, -9656($fp)
	lw $t0, -9656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -9660($fp)
	li $t0, 3
	sw $t0, -9664($fp)
	li $t0, 4
	lw $t1, -9664($fp)
	mul $t0, $t0, $t1
	sw $t0, -9668($fp)
	lw $t0, -9668($fp)
	lw $t1, -9660($fp)
	add $t0, $t0, $t1
	sw $t0, -9672($fp)
	lw $t0, -9672($fp)
	lw $t1, 0($t0)
	sw $t1, -9676($fp)
	lw $t0, -9676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -9680($fp)
	lw $t0, -9680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -9684($fp)
	li $t0, 0
	sw $t0, -9688($fp)
	li $t0, 4
	lw $t1, -9688($fp)
	mul $t0, $t0, $t1
	sw $t0, -9692($fp)
	lw $t0, -9692($fp)
	lw $t1, -9684($fp)
	add $t0, $t0, $t1
	sw $t0, -9696($fp)
	lw $t0, -9696($fp)
	lw $t1, 0($t0)
	sw $t1, -9700($fp)
	lw $t0, -9700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -9704($fp)
	lw $t0, -9704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -9708($fp)
	lw $t0, -9708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -9712($fp)
	lw $t0, -9712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -9716($fp)
	lw $t0, -9716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -9720($fp)
	lw $t0, -9720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -9724($fp)
	lw $t0, -9724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -9728($fp)
	lw $t0, -9728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -9732($fp)
	lw $t0, -9732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -9736($fp)
	lw $t0, -9736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -9740($fp)
	lw $t0, -9740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -9744($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -9764($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -9784($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -9804($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -9824($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -9844($fp)
	li $t0, 5
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
	lw $t0, -792($fp)
	sw $t0, -9864($fp)
	lw $t0, -9864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -9868($fp)
	lw $t0, -9868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -9872($fp)
	lw $t0, -9872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -9876($fp)
	lw $t0, -9876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -9880($fp)
	lw $t0, -9880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -9884($fp)
	lw $t0, -9884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -9892($fp)
	lw $t0, -9892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -9896($fp)
	lw $t0, -9896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -9900($fp)
	lw $t0, -9900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -912($fp)
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -9908($fp)
	lw $t0, -9908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -9912($fp)
	lw $t0, -9912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -9916($fp)
	lw $t0, -9916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	sw $t0, -9920($fp)
	lw $t0, -9920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -9924($fp)
	li $t0, 0
	sw $t0, -9928($fp)
	li $t0, 4
	lw $t1, -9928($fp)
	mul $t0, $t0, $t1
	sw $t0, -9932($fp)
	lw $t0, -9932($fp)
	lw $t1, -9924($fp)
	add $t0, $t0, $t1
	sw $t0, -9936($fp)
	lw $t0, -9936($fp)
	lw $t1, 0($t0)
	sw $t1, -9940($fp)
	lw $t0, -9940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -9944($fp)
	li $t0, 1
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
	lw $t0, -9960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -9964($fp)
	li $t0, 2
	sw $t0, -9968($fp)
	li $t0, 4
	lw $t1, -9968($fp)
	mul $t0, $t0, $t1
	sw $t0, -9972($fp)
	lw $t0, -9972($fp)
	lw $t1, -9964($fp)
	add $t0, $t0, $t1
	sw $t0, -9976($fp)
	lw $t0, -9976($fp)
	lw $t1, 0($t0)
	sw $t1, -9980($fp)
	lw $t0, -9980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -9984($fp)
	li $t0, 3
	sw $t0, -9988($fp)
	li $t0, 4
	lw $t1, -9988($fp)
	mul $t0, $t0, $t1
	sw $t0, -9992($fp)
	lw $t0, -9992($fp)
	lw $t1, -9984($fp)
	add $t0, $t0, $t1
	sw $t0, -9996($fp)
	lw $t0, -9996($fp)
	lw $t1, 0($t0)
	sw $t1, -10000($fp)
	lw $t0, -10000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -10004($fp)
	lw $t0, -10004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -10008($fp)
	lw $t0, -10008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -10012($fp)
	lw $t0, -10012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -10016($fp)
	lw $t0, -10016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -10020($fp)
	lw $t0, -10020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -10024($fp)
	lw $t0, -10024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -10028($fp)
	lw $t0, -10028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10032($fp)
	li $t0, 0
	sw $t0, -10036($fp)
	li $t0, 4
	lw $t1, -10036($fp)
	mul $t0, $t0, $t1
	sw $t0, -10040($fp)
	lw $t0, -10040($fp)
	lw $t1, -10032($fp)
	add $t0, $t0, $t1
	sw $t0, -10044($fp)
	lw $t0, -10044($fp)
	lw $t1, 0($t0)
	sw $t1, -10048($fp)
	lw $t0, -10048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10052($fp)
	li $t0, 1
	sw $t0, -10056($fp)
	li $t0, 4
	lw $t1, -10056($fp)
	mul $t0, $t0, $t1
	sw $t0, -10060($fp)
	lw $t0, -10060($fp)
	lw $t1, -10052($fp)
	add $t0, $t0, $t1
	sw $t0, -10064($fp)
	lw $t0, -10064($fp)
	lw $t1, 0($t0)
	sw $t1, -10068($fp)
	lw $t0, -10068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10072($fp)
	li $t0, 2
	sw $t0, -10076($fp)
	li $t0, 4
	lw $t1, -10076($fp)
	mul $t0, $t0, $t1
	sw $t0, -10080($fp)
	lw $t0, -10080($fp)
	lw $t1, -10072($fp)
	add $t0, $t0, $t1
	sw $t0, -10084($fp)
	lw $t0, -10084($fp)
	lw $t1, 0($t0)
	sw $t1, -10088($fp)
	lw $t0, -10088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10092($fp)
	li $t0, 3
	sw $t0, -10096($fp)
	li $t0, 4
	lw $t1, -10096($fp)
	mul $t0, $t0, $t1
	sw $t0, -10100($fp)
	lw $t0, -10100($fp)
	lw $t1, -10092($fp)
	add $t0, $t0, $t1
	sw $t0, -10104($fp)
	lw $t0, -10104($fp)
	lw $t1, 0($t0)
	sw $t1, -10108($fp)
	lw $t0, -10108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10112($fp)
	li $t0, 4
	sw $t0, -10116($fp)
	li $t0, 4
	lw $t1, -10116($fp)
	mul $t0, $t0, $t1
	sw $t0, -10120($fp)
	lw $t0, -10120($fp)
	lw $t1, -10112($fp)
	add $t0, $t0, $t1
	sw $t0, -10124($fp)
	lw $t0, -10124($fp)
	lw $t1, 0($t0)
	sw $t1, -10128($fp)
	lw $t0, -10128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10132($fp)
	li $t0, 5
	sw $t0, -10136($fp)
	li $t0, 4
	lw $t1, -10136($fp)
	mul $t0, $t0, $t1
	sw $t0, -10140($fp)
	lw $t0, -10140($fp)
	lw $t1, -10132($fp)
	add $t0, $t0, $t1
	sw $t0, -10144($fp)
	lw $t0, -10144($fp)
	lw $t1, 0($t0)
	sw $t1, -10148($fp)
	lw $t0, -10148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10152($fp)
	li $t0, 6
	sw $t0, -10156($fp)
	li $t0, 4
	lw $t1, -10156($fp)
	mul $t0, $t0, $t1
	sw $t0, -10160($fp)
	lw $t0, -10160($fp)
	lw $t1, -10152($fp)
	add $t0, $t0, $t1
	sw $t0, -10164($fp)
	lw $t0, -10164($fp)
	lw $t1, 0($t0)
	sw $t1, -10168($fp)
	lw $t0, -10168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10172($fp)
	li $t0, 7
	sw $t0, -10176($fp)
	li $t0, 4
	lw $t1, -10176($fp)
	mul $t0, $t0, $t1
	sw $t0, -10180($fp)
	lw $t0, -10180($fp)
	lw $t1, -10172($fp)
	add $t0, $t0, $t1
	sw $t0, -10184($fp)
	lw $t0, -10184($fp)
	lw $t1, 0($t0)
	sw $t1, -10188($fp)
	lw $t0, -10188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10192($fp)
	li $t0, 8
	sw $t0, -10196($fp)
	li $t0, 4
	lw $t1, -10196($fp)
	mul $t0, $t0, $t1
	sw $t0, -10200($fp)
	lw $t0, -10200($fp)
	lw $t1, -10192($fp)
	add $t0, $t0, $t1
	sw $t0, -10204($fp)
	lw $t0, -10204($fp)
	lw $t1, 0($t0)
	sw $t1, -10208($fp)
	lw $t0, -10208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10212($fp)
	li $t0, 9
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
	lw $t0, -1392($fp)
	sw $t0, -10232($fp)
	lw $t0, -10232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1404($fp)
	sw $t0, -10236($fp)
	lw $t0, -10236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -10240($fp)
	li $t0, 0
	sw $t0, -10244($fp)
	li $t0, 4
	lw $t1, -10244($fp)
	mul $t0, $t0, $t1
	sw $t0, -10248($fp)
	lw $t0, -10248($fp)
	lw $t1, -10240($fp)
	add $t0, $t0, $t1
	sw $t0, -10252($fp)
	lw $t0, -10252($fp)
	lw $t1, 0($t0)
	sw $t1, -10256($fp)
	lw $t0, -10256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -10260($fp)
	li $t0, 1
	sw $t0, -10264($fp)
	li $t0, 4
	lw $t1, -10264($fp)
	mul $t0, $t0, $t1
	sw $t0, -10268($fp)
	lw $t0, -10268($fp)
	lw $t1, -10260($fp)
	add $t0, $t0, $t1
	sw $t0, -10272($fp)
	lw $t0, -10272($fp)
	lw $t1, 0($t0)
	sw $t1, -10276($fp)
	lw $t0, -10276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -10280($fp)
	li $t0, 2
	sw $t0, -10284($fp)
	li $t0, 4
	lw $t1, -10284($fp)
	mul $t0, $t0, $t1
	sw $t0, -10288($fp)
	lw $t0, -10288($fp)
	lw $t1, -10280($fp)
	add $t0, $t0, $t1
	sw $t0, -10292($fp)
	lw $t0, -10292($fp)
	lw $t1, 0($t0)
	sw $t1, -10296($fp)
	lw $t0, -10296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1488($fp)
	sw $t0, -10300($fp)
	lw $t0, -10300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1500($fp)
	sw $t0, -10304($fp)
	lw $t0, -10304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1512($fp)
	sw $t0, -10308($fp)
	lw $t0, -10308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1524($fp)
	sw $t0, -10312($fp)
	lw $t0, -10312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1536($fp)
	sw $t0, -10316($fp)
	lw $t0, -10316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1548($fp)
	sw $t0, -10320($fp)
	lw $t0, -10320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1560($fp)
	sw $t0, -10324($fp)
	lw $t0, -10324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1572($fp)
	sw $t0, -10328($fp)
	lw $t0, -10328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1584($fp)
	sw $t0, -10332($fp)
	lw $t0, -10332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1596($fp)
	sw $t0, -10336($fp)
	lw $t0, -10336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -10340($fp)
	li $t0, 0
	sw $t0, -10344($fp)
	li $t0, 4
	lw $t1, -10344($fp)
	mul $t0, $t0, $t1
	sw $t0, -10348($fp)
	lw $t0, -10348($fp)
	lw $t1, -10340($fp)
	add $t0, $t0, $t1
	sw $t0, -10352($fp)
	lw $t0, -10352($fp)
	lw $t1, 0($t0)
	sw $t1, -10356($fp)
	lw $t0, -10356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -10360($fp)
	li $t0, 1
	sw $t0, -10364($fp)
	li $t0, 4
	lw $t1, -10364($fp)
	mul $t0, $t0, $t1
	sw $t0, -10368($fp)
	lw $t0, -10368($fp)
	lw $t1, -10360($fp)
	add $t0, $t0, $t1
	sw $t0, -10372($fp)
	lw $t0, -10372($fp)
	lw $t1, 0($t0)
	sw $t1, -10376($fp)
	lw $t0, -10376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -10380($fp)
	li $t0, 2
	sw $t0, -10384($fp)
	li $t0, 4
	lw $t1, -10384($fp)
	mul $t0, $t0, $t1
	sw $t0, -10388($fp)
	lw $t0, -10388($fp)
	lw $t1, -10380($fp)
	add $t0, $t0, $t1
	sw $t0, -10392($fp)
	lw $t0, -10392($fp)
	lw $t1, 0($t0)
	sw $t1, -10396($fp)
	lw $t0, -10396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -10400($fp)
	li $t0, 3
	sw $t0, -10404($fp)
	li $t0, 4
	lw $t1, -10404($fp)
	mul $t0, $t0, $t1
	sw $t0, -10408($fp)
	lw $t0, -10408($fp)
	lw $t1, -10400($fp)
	add $t0, $t0, $t1
	sw $t0, -10412($fp)
	lw $t0, -10412($fp)
	lw $t1, 0($t0)
	sw $t1, -10416($fp)
	lw $t0, -10416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -10420($fp)
	li $t0, 4
	sw $t0, -10424($fp)
	li $t0, 4
	lw $t1, -10424($fp)
	mul $t0, $t0, $t1
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	lw $t1, -10420($fp)
	add $t0, $t0, $t1
	sw $t0, -10432($fp)
	lw $t0, -10432($fp)
	lw $t1, 0($t0)
	sw $t1, -10436($fp)
	lw $t0, -10436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
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
	lw $t0, -10456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -10460($fp)
	li $t0, 0
	sw $t0, -10464($fp)
	li $t0, 4
	lw $t1, -10464($fp)
	mul $t0, $t0, $t1
	sw $t0, -10468($fp)
	lw $t0, -10468($fp)
	lw $t1, -10460($fp)
	add $t0, $t0, $t1
	sw $t0, -10472($fp)
	lw $t0, -10472($fp)
	lw $t1, 0($t0)
	sw $t1, -10476($fp)
	lw $t0, -10476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -10480($fp)
	li $t0, 1
	sw $t0, -10484($fp)
	li $t0, 4
	lw $t1, -10484($fp)
	mul $t0, $t0, $t1
	sw $t0, -10488($fp)
	lw $t0, -10488($fp)
	lw $t1, -10480($fp)
	add $t0, $t0, $t1
	sw $t0, -10492($fp)
	lw $t0, -10492($fp)
	lw $t1, 0($t0)
	sw $t1, -10496($fp)
	lw $t0, -10496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -10500($fp)
	li $t0, 2
	sw $t0, -10504($fp)
	li $t0, 4
	lw $t1, -10504($fp)
	mul $t0, $t0, $t1
	sw $t0, -10508($fp)
	lw $t0, -10508($fp)
	lw $t1, -10500($fp)
	add $t0, $t0, $t1
	sw $t0, -10512($fp)
	lw $t0, -10512($fp)
	lw $t1, 0($t0)
	sw $t1, -10516($fp)
	lw $t0, -10516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -10520($fp)
	li $t0, 3
	sw $t0, -10524($fp)
	li $t0, 4
	lw $t1, -10524($fp)
	mul $t0, $t0, $t1
	sw $t0, -10528($fp)
	lw $t0, -10528($fp)
	lw $t1, -10520($fp)
	add $t0, $t0, $t1
	sw $t0, -10532($fp)
	lw $t0, -10532($fp)
	lw $t1, 0($t0)
	sw $t1, -10536($fp)
	lw $t0, -10536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -10540($fp)
	li $t0, 4
	sw $t0, -10544($fp)
	li $t0, 4
	lw $t1, -10544($fp)
	mul $t0, $t0, $t1
	sw $t0, -10548($fp)
	lw $t0, -10548($fp)
	lw $t1, -10540($fp)
	add $t0, $t0, $t1
	sw $t0, -10552($fp)
	lw $t0, -10552($fp)
	lw $t1, 0($t0)
	sw $t1, -10556($fp)
	lw $t0, -10556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -10560($fp)
	li $t0, 5
	sw $t0, -10564($fp)
	li $t0, 4
	lw $t1, -10564($fp)
	mul $t0, $t0, $t1
	sw $t0, -10568($fp)
	lw $t0, -10568($fp)
	lw $t1, -10560($fp)
	add $t0, $t0, $t1
	sw $t0, -10572($fp)
	lw $t0, -10572($fp)
	lw $t1, 0($t0)
	sw $t1, -10576($fp)
	lw $t0, -10576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1896($fp)
	sw $t0, -10580($fp)
	lw $t0, -10580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1908($fp)
	sw $t0, -10584($fp)
	lw $t0, -10584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1920($fp)
	sw $t0, -10588($fp)
	lw $t0, -10588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1932($fp)
	sw $t0, -10592($fp)
	lw $t0, -10592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10596($fp)
	li $t0, 0
	sw $t0, -10600($fp)
	li $t0, 4
	lw $t1, -10600($fp)
	mul $t0, $t0, $t1
	sw $t0, -10604($fp)
	lw $t0, -10604($fp)
	lw $t1, -10596($fp)
	add $t0, $t0, $t1
	sw $t0, -10608($fp)
	lw $t0, -10608($fp)
	lw $t1, 0($t0)
	sw $t1, -10612($fp)
	lw $t0, -10612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10616($fp)
	li $t0, 1
	sw $t0, -10620($fp)
	li $t0, 4
	lw $t1, -10620($fp)
	mul $t0, $t0, $t1
	sw $t0, -10624($fp)
	lw $t0, -10624($fp)
	lw $t1, -10616($fp)
	add $t0, $t0, $t1
	sw $t0, -10628($fp)
	lw $t0, -10628($fp)
	lw $t1, 0($t0)
	sw $t1, -10632($fp)
	lw $t0, -10632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10636($fp)
	li $t0, 2
	sw $t0, -10640($fp)
	li $t0, 4
	lw $t1, -10640($fp)
	mul $t0, $t0, $t1
	sw $t0, -10644($fp)
	lw $t0, -10644($fp)
	lw $t1, -10636($fp)
	add $t0, $t0, $t1
	sw $t0, -10648($fp)
	lw $t0, -10648($fp)
	lw $t1, 0($t0)
	sw $t1, -10652($fp)
	lw $t0, -10652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10656($fp)
	li $t0, 3
	sw $t0, -10660($fp)
	li $t0, 4
	lw $t1, -10660($fp)
	mul $t0, $t0, $t1
	sw $t0, -10664($fp)
	lw $t0, -10664($fp)
	lw $t1, -10656($fp)
	add $t0, $t0, $t1
	sw $t0, -10668($fp)
	lw $t0, -10668($fp)
	lw $t1, 0($t0)
	sw $t1, -10672($fp)
	lw $t0, -10672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10676($fp)
	li $t0, 4
	sw $t0, -10680($fp)
	li $t0, 4
	lw $t1, -10680($fp)
	mul $t0, $t0, $t1
	sw $t0, -10684($fp)
	lw $t0, -10684($fp)
	lw $t1, -10676($fp)
	add $t0, $t0, $t1
	sw $t0, -10688($fp)
	lw $t0, -10688($fp)
	lw $t1, 0($t0)
	sw $t1, -10692($fp)
	lw $t0, -10692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -10696($fp)
	li $t0, 5
	sw $t0, -10700($fp)
	li $t0, 4
	lw $t1, -10700($fp)
	mul $t0, $t0, $t1
	sw $t0, -10704($fp)
	lw $t0, -10704($fp)
	lw $t1, -10696($fp)
	add $t0, $t0, $t1
	sw $t0, -10708($fp)
	lw $t0, -10708($fp)
	lw $t1, 0($t0)
	sw $t1, -10712($fp)
	lw $t0, -10712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2088($fp)
	sw $t0, -10716($fp)
	lw $t0, -10716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10720($fp)
	li $t0, 0
	sw $t0, -10724($fp)
	li $t0, 4
	lw $t1, -10724($fp)
	mul $t0, $t0, $t1
	sw $t0, -10728($fp)
	lw $t0, -10728($fp)
	lw $t1, -10720($fp)
	add $t0, $t0, $t1
	sw $t0, -10732($fp)
	lw $t0, -10732($fp)
	lw $t1, 0($t0)
	sw $t1, -10736($fp)
	lw $t0, -10736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10740($fp)
	li $t0, 1
	sw $t0, -10744($fp)
	li $t0, 4
	lw $t1, -10744($fp)
	mul $t0, $t0, $t1
	sw $t0, -10748($fp)
	lw $t0, -10748($fp)
	lw $t1, -10740($fp)
	add $t0, $t0, $t1
	sw $t0, -10752($fp)
	lw $t0, -10752($fp)
	lw $t1, 0($t0)
	sw $t1, -10756($fp)
	lw $t0, -10756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10760($fp)
	li $t0, 2
	sw $t0, -10764($fp)
	li $t0, 4
	lw $t1, -10764($fp)
	mul $t0, $t0, $t1
	sw $t0, -10768($fp)
	lw $t0, -10768($fp)
	lw $t1, -10760($fp)
	add $t0, $t0, $t1
	sw $t0, -10772($fp)
	lw $t0, -10772($fp)
	lw $t1, 0($t0)
	sw $t1, -10776($fp)
	lw $t0, -10776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10780($fp)
	li $t0, 3
	sw $t0, -10784($fp)
	li $t0, 4
	lw $t1, -10784($fp)
	mul $t0, $t0, $t1
	sw $t0, -10788($fp)
	lw $t0, -10788($fp)
	lw $t1, -10780($fp)
	add $t0, $t0, $t1
	sw $t0, -10792($fp)
	lw $t0, -10792($fp)
	lw $t1, 0($t0)
	sw $t1, -10796($fp)
	lw $t0, -10796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10800($fp)
	li $t0, 4
	sw $t0, -10804($fp)
	li $t0, 4
	lw $t1, -10804($fp)
	mul $t0, $t0, $t1
	sw $t0, -10808($fp)
	lw $t0, -10808($fp)
	lw $t1, -10800($fp)
	add $t0, $t0, $t1
	sw $t0, -10812($fp)
	lw $t0, -10812($fp)
	lw $t1, 0($t0)
	sw $t1, -10816($fp)
	lw $t0, -10816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10820($fp)
	li $t0, 5
	sw $t0, -10824($fp)
	li $t0, 4
	lw $t1, -10824($fp)
	mul $t0, $t0, $t1
	sw $t0, -10828($fp)
	lw $t0, -10828($fp)
	lw $t1, -10820($fp)
	add $t0, $t0, $t1
	sw $t0, -10832($fp)
	lw $t0, -10832($fp)
	lw $t1, 0($t0)
	sw $t1, -10836($fp)
	lw $t0, -10836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10840($fp)
	li $t0, 6
	sw $t0, -10844($fp)
	li $t0, 4
	lw $t1, -10844($fp)
	mul $t0, $t0, $t1
	sw $t0, -10848($fp)
	lw $t0, -10848($fp)
	lw $t1, -10840($fp)
	add $t0, $t0, $t1
	sw $t0, -10852($fp)
	lw $t0, -10852($fp)
	lw $t1, 0($t0)
	sw $t1, -10856($fp)
	lw $t0, -10856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10860($fp)
	li $t0, 7
	sw $t0, -10864($fp)
	li $t0, 4
	lw $t1, -10864($fp)
	mul $t0, $t0, $t1
	sw $t0, -10868($fp)
	lw $t0, -10868($fp)
	lw $t1, -10860($fp)
	add $t0, $t0, $t1
	sw $t0, -10872($fp)
	lw $t0, -10872($fp)
	lw $t1, 0($t0)
	sw $t1, -10876($fp)
	lw $t0, -10876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10880($fp)
	li $t0, 8
	sw $t0, -10884($fp)
	li $t0, 4
	lw $t1, -10884($fp)
	mul $t0, $t0, $t1
	sw $t0, -10888($fp)
	lw $t0, -10888($fp)
	lw $t1, -10880($fp)
	add $t0, $t0, $t1
	sw $t0, -10892($fp)
	lw $t0, -10892($fp)
	lw $t1, 0($t0)
	sw $t1, -10896($fp)
	lw $t0, -10896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -10900($fp)
	li $t0, 9
	sw $t0, -10904($fp)
	li $t0, 4
	lw $t1, -10904($fp)
	mul $t0, $t0, $t1
	sw $t0, -10908($fp)
	lw $t0, -10908($fp)
	lw $t1, -10900($fp)
	add $t0, $t0, $t1
	sw $t0, -10912($fp)
	lw $t0, -10912($fp)
	lw $t1, 0($t0)
	sw $t1, -10916($fp)
	lw $t0, -10916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2340($fp)
	sw $t0, -10920($fp)
	lw $t0, -10920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2352($fp)
	sw $t0, -10924($fp)
	lw $t0, -10924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -10928($fp)
	li $t0, 0
	sw $t0, -10932($fp)
	li $t0, 4
	lw $t1, -10932($fp)
	mul $t0, $t0, $t1
	sw $t0, -10936($fp)
	lw $t0, -10936($fp)
	lw $t1, -10928($fp)
	add $t0, $t0, $t1
	sw $t0, -10940($fp)
	lw $t0, -10940($fp)
	lw $t1, 0($t0)
	sw $t1, -10944($fp)
	lw $t0, -10944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -10948($fp)
	li $t0, 1
	sw $t0, -10952($fp)
	li $t0, 4
	lw $t1, -10952($fp)
	mul $t0, $t0, $t1
	sw $t0, -10956($fp)
	lw $t0, -10956($fp)
	lw $t1, -10948($fp)
	add $t0, $t0, $t1
	sw $t0, -10960($fp)
	lw $t0, -10960($fp)
	lw $t1, 0($t0)
	sw $t1, -10964($fp)
	lw $t0, -10964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -10968($fp)
	li $t0, 2
	sw $t0, -10972($fp)
	li $t0, 4
	lw $t1, -10972($fp)
	mul $t0, $t0, $t1
	sw $t0, -10976($fp)
	lw $t0, -10976($fp)
	lw $t1, -10968($fp)
	add $t0, $t0, $t1
	sw $t0, -10980($fp)
	lw $t0, -10980($fp)
	lw $t1, 0($t0)
	sw $t1, -10984($fp)
	lw $t0, -10984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -10988($fp)
	li $t0, 3
	sw $t0, -10992($fp)
	li $t0, 4
	lw $t1, -10992($fp)
	mul $t0, $t0, $t1
	sw $t0, -10996($fp)
	lw $t0, -10996($fp)
	lw $t1, -10988($fp)
	add $t0, $t0, $t1
	sw $t0, -11000($fp)
	lw $t0, -11000($fp)
	lw $t1, 0($t0)
	sw $t1, -11004($fp)
	lw $t0, -11004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -11008($fp)
	li $t0, 4
	sw $t0, -11012($fp)
	li $t0, 4
	lw $t1, -11012($fp)
	mul $t0, $t0, $t1
	sw $t0, -11016($fp)
	lw $t0, -11016($fp)
	lw $t1, -11008($fp)
	add $t0, $t0, $t1
	sw $t0, -11020($fp)
	lw $t0, -11020($fp)
	lw $t1, 0($t0)
	sw $t1, -11024($fp)
	lw $t0, -11024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -11028($fp)
	li $t0, 5
	sw $t0, -11032($fp)
	li $t0, 4
	lw $t1, -11032($fp)
	mul $t0, $t0, $t1
	sw $t0, -11036($fp)
	lw $t0, -11036($fp)
	lw $t1, -11028($fp)
	add $t0, $t0, $t1
	sw $t0, -11040($fp)
	lw $t0, -11040($fp)
	lw $t1, 0($t0)
	sw $t1, -11044($fp)
	lw $t0, -11044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -11048($fp)
	li $t0, 6
	sw $t0, -11052($fp)
	li $t0, 4
	lw $t1, -11052($fp)
	mul $t0, $t0, $t1
	sw $t0, -11056($fp)
	lw $t0, -11056($fp)
	lw $t1, -11048($fp)
	add $t0, $t0, $t1
	sw $t0, -11060($fp)
	lw $t0, -11060($fp)
	lw $t1, 0($t0)
	sw $t1, -11064($fp)
	lw $t0, -11064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -11068($fp)
	li $t0, 7
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
	lw $t0, -1524($fp)
	sw $t0, -11088($fp)
	li $t0, 62697
	sw $t0, -11092($fp)
	lw $t0, -11088($fp)
	lw $t1, -11092($fp)
	mul $t0, $t0, $t1
	sw $t0, -11096($fp)
	lw $t0, -1920($fp)
	sw $t0, -11100($fp)
	lw $t0, -11096($fp)
	lw $t1, -11100($fp)
	mul $t0, $t0, $t1
	sw $t0, -11104($fp)
	lw $t0, -348($fp)
	sw $t0, -11108($fp)
	li $t0, 18295
	sw $t0, -11112($fp)
	lw $t0, -11108($fp)
	lw $t1, -11112($fp)
	mul $t0, $t0, $t1
	sw $t0, -11116($fp)
	lw $t0, -11104($fp)
	lw $t1, -11116($fp)
	sub $t0, $t0, $t1
	sw $t0, -11120($fp)
	lw $t0, -11120($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -11124($fp)
	lw $ra, -4($fp)
	lw $v0, -11124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -952
	li $t0, 24041
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 44979
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 3350
	sw $t0, -96($fp)
	addi $t0, $fp, -36
	sw $t0, -100($fp)
	li $t0, 0
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
	li $t0, 27701
	sw $t0, -120($fp)
	addi $t0, $fp, -36
	sw $t0, -124($fp)
	li $t0, 1
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
	li $t0, 59375
	sw $t0, -144($fp)
	addi $t0, $fp, -36
	sw $t0, -148($fp)
	li $t0, 2
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
	li $t0, 4000
	sw $t0, -168($fp)
	addi $t0, $fp, -36
	sw $t0, -172($fp)
	li $t0, 3
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
	li $t0, 40949
	sw $t0, -192($fp)
	addi $t0, $fp, -36
	sw $t0, -196($fp)
	li $t0, 4
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
	li $t0, 34769
	sw $t0, -216($fp)
	addi $t0, $fp, -36
	sw $t0, -220($fp)
	li $t0, 5
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
	li $t0, 23722
	sw $t0, -240($fp)
	addi $t0, $fp, -36
	sw $t0, -244($fp)
	li $t0, 6
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
	li $t0, 5780
	sw $t0, -264($fp)
	addi $t0, $fp, -36
	sw $t0, -268($fp)
	li $t0, 7
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
	li $t0, 20275
	sw $t0, -288($fp)
	addi $t0, $fp, -68
	sw $t0, -292($fp)
	li $t0, 0
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
	li $t0, 56222
	sw $t0, -312($fp)
	addi $t0, $fp, -68
	sw $t0, -316($fp)
	li $t0, 1
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
	li $t0, 13892
	sw $t0, -336($fp)
	addi $t0, $fp, -68
	sw $t0, -340($fp)
	li $t0, 2
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
	li $t0, 644
	sw $t0, -360($fp)
	addi $t0, $fp, -68
	sw $t0, -364($fp)
	li $t0, 3
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
	li $t0, 31631
	sw $t0, -384($fp)
	addi $t0, $fp, -68
	sw $t0, -388($fp)
	li $t0, 4
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
	li $t0, 21753
	sw $t0, -408($fp)
	addi $t0, $fp, -68
	sw $t0, -412($fp)
	li $t0, 5
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
	li $t0, 56464
	sw $t0, -432($fp)
	addi $t0, $fp, -68
	sw $t0, -436($fp)
	li $t0, 6
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
	li $t0, 17971
	sw $t0, -456($fp)
	addi $t0, $fp, -68
	sw $t0, -460($fp)
	li $t0, 7
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
label642:
	li $t0, 38897
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	addi $t0, $fp, -68
	sw $t0, -488($fp)
	lw $t0, 4($fp)
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
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label645
label645:
	li $t0, 1
	sw $t0, -484($fp)
label646:
	li $t0, 0
	sw $t0, -508($fp)
	lw $t0, -88($fp)
	sw $t0, -512($fp)
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label647:
	li $t0, 1
	sw $t0, -508($fp)
label648:
	lw $t0, -484($fp)
	lw $t1, -508($fp)
	mul $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t1, -480($fp)
	lw $t2, -516($fp)
	bgt $t1, $t2, label643
	j label644
label643:
	li $t0, 0
	sw $t0, -520($fp)
	li $t0, 0
	sw $t0, -524($fp)
	addi $t0, $fp, -68
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
	lw $t1, -544($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label653:
	li $t0, 1
	sw $t0, -524($fp)
label654:
	addi $sp, $sp, -4
	lw $t0, -524($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -548($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -552($fp)
	lw $t0, -548($fp)
	lw $t1, -552($fp)
	sub $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label652
label652:
	addi $t0, $fp, -36
	sw $t0, -560($fp)
	li $t0, 2
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
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label649
label651:
	li $t0, 18152
	sw $t0, -580($fp)
	li $t0, 49851
	sw $t0, -584($fp)
	lw $t1, -580($fp)
	lw $t2, -584($fp)
	blt $t1, $t2, label655
	j label650
label655:
	lw $t0, -76($fp)
	sw $t0, -588($fp)
	lw $t0, -76($fp)
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	blt $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -520($fp)
label650:
	j label642
label644:
	lw $t0, -76($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -604($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -664($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -684($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -704($fp)
	li $t0, 5
	sw $t0, -708($fp)
	li $t0, 4
	lw $t1, -708($fp)
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	lw $t1, -704($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	lw $t1, 0($t0)
	sw $t1, -720($fp)
	lw $t0, -720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -724($fp)
	li $t0, 6
	sw $t0, -728($fp)
	li $t0, 4
	lw $t1, -728($fp)
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, 0($t0)
	sw $t1, -740($fp)
	lw $t0, -740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -744($fp)
	li $t0, 7
	sw $t0, -748($fp)
	li $t0, 4
	lw $t1, -748($fp)
	mul $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	lw $t1, -744($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, 0($t0)
	sw $t1, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -764($fp)
	li $t0, 0
	sw $t0, -768($fp)
	li $t0, 4
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	lw $t0, -780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -784($fp)
	li $t0, 1
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
	lw $t0, -800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -804($fp)
	li $t0, 2
	sw $t0, -808($fp)
	li $t0, 4
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -824($fp)
	li $t0, 3
	sw $t0, -828($fp)
	li $t0, 4
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, -824($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, 0($t0)
	sw $t1, -840($fp)
	lw $t0, -840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -844($fp)
	li $t0, 4
	sw $t0, -848($fp)
	li $t0, 4
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	lw $t1, 0($t0)
	sw $t1, -860($fp)
	lw $t0, -860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -864($fp)
	li $t0, 5
	sw $t0, -868($fp)
	li $t0, 4
	lw $t1, -868($fp)
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	lw $t1, 0($t0)
	sw $t1, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -884($fp)
	li $t0, 6
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
	addi $t0, $fp, -68
	sw $t0, -904($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	lw $t0, -76($fp)
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label658
label658:
	li $t0, 1
	sw $t0, -928($fp)
label659:
	li $t0, 55983
	sw $t0, -936($fp)
	lw $t0, -928($fp)
	lw $t1, -936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -940($fp)
	lw $t0, -76($fp)
	sw $t0, -944($fp)
	lw $t0, -88($fp)
	sw $t0, -948($fp)
	lw $t0, -944($fp)
	lw $t1, -948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -952($fp)
	lw $t1, -940($fp)
	lw $t2, -952($fp)
	bgt $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -924($fp)
label657:
	lw $t0, -924($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -956($fp)
	lw $ra, -4($fp)
	lw $v0, -956($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -36
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 19730
	sw $t0, -12($fp)
	li $t0, 13362
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -20($fp)
	lw $t1, -20($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label661
label663:
	lw $t0, 4($fp)
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label661
label662:
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	sub $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label661
label660:
	li $t0, 1
	sw $t0, -8($fp)
label661:
	lw $t0, -8($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -40($fp)
	lw $ra, -4($fp)
	lw $v0, -40($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2980
	li $t0, 65181
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 16891
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 31657
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 23686
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 61871
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 35008
	sw $t0, -128($fp)
	addi $t0, $fp, -12
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
	li $t0, 51387
	sw $t0, -152($fp)
	addi $t0, $fp, -12
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
	li $t0, 55710
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 39008
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 26801
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 24943
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 62730
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 32581
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 45218
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 53417
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 46474
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 45863
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 19512
	sw $t0, -296($fp)
	addi $t0, $fp, -36
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
	li $t0, 2691
	sw $t0, -320($fp)
	addi $t0, $fp, -36
	sw $t0, -324($fp)
	li $t0, 1
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
	li $t0, 36791
	sw $t0, -344($fp)
	addi $t0, $fp, -36
	sw $t0, -348($fp)
	li $t0, 2
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
	li $t0, 37483
	sw $t0, -368($fp)
	addi $t0, $fp, -36
	sw $t0, -372($fp)
	li $t0, 3
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
	li $t0, 41589
	sw $t0, -392($fp)
	addi $t0, $fp, -36
	sw $t0, -396($fp)
	li $t0, 4
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
	li $t0, 61536
	sw $t0, -416($fp)
	addi $t0, $fp, -36
	sw $t0, -420($fp)
	li $t0, 5
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
	li $t0, 62191
	sw $t0, -440($fp)
	addi $t0, $fp, -64
	sw $t0, -444($fp)
	li $t0, 0
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
	li $t0, 4341
	sw $t0, -464($fp)
	addi $t0, $fp, -64
	sw $t0, -468($fp)
	li $t0, 1
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
	li $t0, 12890
	sw $t0, -488($fp)
	addi $t0, $fp, -64
	sw $t0, -492($fp)
	li $t0, 2
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
	li $t0, 14807
	sw $t0, -512($fp)
	addi $t0, $fp, -64
	sw $t0, -516($fp)
	li $t0, 3
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
	li $t0, 54193
	sw $t0, -536($fp)
	addi $t0, $fp, -64
	sw $t0, -540($fp)
	li $t0, 4
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
	li $t0, 3337
	sw $t0, -560($fp)
	addi $t0, $fp, -64
	sw $t0, -564($fp)
	li $t0, 5
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
	li $t0, 34538
	sw $t0, -584($fp)
	addi $t0, $fp, -64
	sw $t0, -588($fp)
	li $t0, 6
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
	li $t0, 2019
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 2983
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 0
	sw $t0, -632($fp)
	addi $t0, $fp, -12
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
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label667
label667:
	li $t0, 1
	sw $t0, -632($fp)
label668:
	li $t0, 47764
	sw $t0, -656($fp)
	lw $t0, -252($fp)
	sw $t0, -660($fp)
	li $t0, 26669
	sw $t0, -664($fp)
	lw $t0, -660($fp)
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	addi $sp, $sp, -4
	lw $t0, -656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -672($fp)
	addi $sp, $sp, 12
	lw $t0, -632($fp)
	lw $t1, -672($fp)
	sub $t0, $t0, $t1
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	li $t0, 0
	sw $t0, -684($fp)
	li $t0, 37939
	sw $t0, -688($fp)
	lw $t0, -84($fp)
	sw $t0, -692($fp)
	lw $t0, -688($fp)
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, 16($fp)
	sw $t0, -700($fp)
	lw $t1, -696($fp)
	lw $t2, -700($fp)
	beq $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -684($fp)
label672:
	addi $t0, $fp, -64
	sw $t0, -704($fp)
	li $t0, 3
	sw $t0, -708($fp)
	li $t0, 4
	lw $t1, -708($fp)
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	lw $t1, -704($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	lw $t1, 0($t0)
	sw $t1, -720($fp)
	addi $sp, $sp, -4
	lw $t0, -684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -720($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -724($fp)
	addi $sp, $sp, 12
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label669
label669:
	li $t0, 1
	sw $t0, -680($fp)
label670:
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 42156
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 39322
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 62882
	sw $t0, -784($fp)
	addi $t0, $fp, -756
	sw $t0, -788($fp)
	li $t0, 0
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
	li $t0, 39351
	sw $t0, -808($fp)
	addi $t0, $fp, -756
	sw $t0, -812($fp)
	li $t0, 1
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
	li $t0, 6367
	sw $t0, -832($fp)
	addi $t0, $fp, -756
	sw $t0, -836($fp)
	li $t0, 2
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
	li $t0, 42565
	sw $t0, -856($fp)
	addi $t0, $fp, -756
	sw $t0, -860($fp)
	li $t0, 3
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
	li $t0, 27232
	sw $t0, -880($fp)
	addi $t0, $fp, -756
	sw $t0, -884($fp)
	li $t0, 4
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
	li $t0, 52841
	sw $t0, -904($fp)
	addi $t0, $fp, -756
	sw $t0, -908($fp)
	li $t0, 5
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
	li $t0, 22892
	sw $t0, -928($fp)
	addi $t0, $fp, -756
	sw $t0, -932($fp)
	li $t0, 6
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
	li $t0, 46744
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -264($fp)
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 55533
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label676
label676:
	li $t0, 1
	sw $t0, -968($fp)
label677:
	li $t0, 0
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -964($fp)
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t1, -980($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label674
label673:
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 59683
	sw $t0, -988($fp)
	lw $t0, -180($fp)
	sw $t0, -992($fp)
	li $t0, 0
	lw $t1, -992($fp)
	sub $t0, $t0, $t1
	sw $t0, -996($fp)
	li $t0, 18691
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	sub $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -108($fp)
	sw $t0, -1008($fp)
	lw $t0, -1004($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t1, -988($fp)
	lw $t2, -1012($fp)
	bgt $t1, $t2, label678
	j label679
label678:
	li $t0, 1
	sw $t0, -984($fp)
label679:
	j label675
label674:
	li $t0, 0
	sw $t0, -1016($fp)
	addi $t0, $fp, -12
	sw $t0, -1020($fp)
	addi $t0, $fp, -756
	sw $t0, -1024($fp)
	lw $t0, -240($fp)
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
	li $t0, 55683
	sw $t0, -1044($fp)
	lw $t0, -624($fp)
	sw $t0, -1048($fp)
	lw $t0, -1044($fp)
	lw $t1, -1048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1052($fp)
	addi $sp, $sp, -4
	lw $t0, -1040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1056($fp)
	addi $sp, $sp, 12
	lw $t0, -96($fp)
	sw $t0, -1060($fp)
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	li $t0, 31586
	sw $t0, -1068($fp)
	li $t0, 0
	sw $t0, -1072($fp)
	addi $t0, $fp, -64
	sw $t0, -1076($fp)
	lw $t0, -108($fp)
	sw $t0, -1080($fp)
	li $t0, 4
	lw $t1, -1080($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	lw $t1, 0($t0)
	sw $t1, -1092($fp)
	lw $t0, 12($fp)
	sw $t0, -1096($fp)
	lw $t1, -1092($fp)
	lw $t2, -1096($fp)
	beq $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -1072($fp)
label684:
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1100($fp)
	addi $sp, $sp, 16
	lw $t0, -276($fp)
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1108($fp)
	li $t0, 4
	lw $t1, -1108($fp)
	mul $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, 0($t0)
	sw $t1, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label681
label682:
	li $t0, 30153
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1128($fp)
	lw $t0, -192($fp)
	sw $t0, -1132($fp)
	lw $t0, -956($fp)
	sw $t0, -1136($fp)
	lw $t0, -776($fp)
	sw $t0, -1140($fp)
	lw $t0, -1136($fp)
	lw $t1, -1140($fp)
	sub $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -276($fp)
	sw $t0, -1148($fp)
	lw $t0, -1144($fp)
	lw $t1, -1148($fp)
	sub $t0, $t0, $t1
	sw $t0, -1152($fp)
	li $t0, 0
	sw $t0, -1156($fp)
	li $t0, 35927
	sw $t0, -1160($fp)
	li $t0, 3037
	sw $t0, -1164($fp)
	lw $t1, -1160($fp)
	lw $t2, -1164($fp)
	beq $t1, $t2, label687
	j label686
label687:
	lw $t0, -764($fp)
	sw $t0, -1168($fp)
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -1156($fp)
label686:
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1172($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1176($fp)
	lw $t0, -276($fp)
	sw $t0, -1180($fp)
	li $t0, 15346
	sw $t0, -1184($fp)
	lw $t1, -1180($fp)
	lw $t2, -1184($fp)
	bne $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -1176($fp)
label689:
	addi $sp, $sp, -4
	lw $t0, -1172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1188($fp)
	addi $sp, $sp, 12
	lw $t1, -1188($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -1016($fp)
label681:
label675:
	li $t0, 0
	sw $t0, -1192($fp)
	lw $t0, 16($fp)
	sw $t0, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label691
label692:
	lw $t0, -276($fp)
	sw $t0, -1200($fp)
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -1192($fp)
label691:
	j label666
label665:
	lw $t0, -120($fp)
	sw $t0, -1204($fp)
	li $t0, 0
	lw $t1, -1204($fp)
	sub $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label693
	j label694
label693:
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 64691
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label696
label696:
	li $t0, 1
	sw $t0, -1212($fp)
label697:
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1220($fp)
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -1224($fp)
	addi $t0, $fp, -12
	sw $t0, -1228($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -1220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1248($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	j label695
label694:
	li $t0, 0
	sw $t0, -1256($fp)
	lw $t0, -216($fp)
	sw $t0, -1260($fp)
	lw $t1, -1260($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label698
label698:
	li $t0, 1
	sw $t0, -1256($fp)
label699:
	li $t0, 26603
	sw $t0, -1264($fp)
	lw $t0, -1256($fp)
	lw $t1, -1264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1268($fp)
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	li $t0, 0
	lw $t1, -1272($fp)
	sub $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -180($fp)
	sw $t0, -1280($fp)
	lw $t0, -1276($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
label695:
label666:
label700:
	addi $t0, $fp, -64
	sw $t0, -1288($fp)
	lw $t0, -228($fp)
	sw $t0, -1292($fp)
	lw $t0, -276($fp)
	sw $t0, -1296($fp)
	lw $t0, -1292($fp)
	lw $t1, -1296($fp)
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	li $t0, 4
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, 0($t0)
	sw $t1, -1312($fp)
	li $t0, 0
	sw $t0, -1316($fp)
	lw $t0, -612($fp)
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label706
label706:
	li $t0, 50585
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label705
label705:
	lw $t0, -72($fp)
	sw $t0, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -1316($fp)
label704:
	li $t0, 9358
	sw $t0, -1332($fp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1336($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1312($fp)
	lw $t1, -1340($fp)
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, 8($fp)
	sw $t0, -1348($fp)
	lw $t0, -1344($fp)
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label702
label701:
	li $t0, 60280
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 36027
	sw $t0, -1392($fp)
	addi $t0, $fp, -1376
	sw $t0, -1396($fp)
	li $t0, 0
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
	li $t0, 32813
	sw $t0, -1416($fp)
	addi $t0, $fp, -1376
	sw $t0, -1420($fp)
	li $t0, 1
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
	li $t0, 63428
	sw $t0, -1440($fp)
	addi $t0, $fp, -1376
	sw $t0, -1444($fp)
	li $t0, 2
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
	li $t0, 48548
	sw $t0, -1464($fp)
	addi $t0, $fp, -1376
	sw $t0, -1468($fp)
	li $t0, 3
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
	li $t0, 5216
	sw $t0, -1488($fp)
	addi $t0, $fp, -1376
	sw $t0, -1492($fp)
	li $t0, 4
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1492($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1488($fp)
	lw $t1, -1504($fp)
	sw $t0, 0($t1)
	lw $t0, -1504($fp)
	lw $t1, 0($t0)
	sw $t1, -1508($fp)
	li $t0, 40049
	sw $t0, -1512($fp)
	addi $t0, $fp, -1376
	sw $t0, -1516($fp)
	li $t0, 5
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1516($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1512($fp)
	lw $t1, -1528($fp)
	sw $t0, 0($t1)
	lw $t0, -1528($fp)
	lw $t1, 0($t0)
	sw $t1, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	li $t0, 22334
	sw $t0, -1540($fp)
	lw $t0, -276($fp)
	sw $t0, -1544($fp)
	lw $t1, -1540($fp)
	lw $t2, -1544($fp)
	bne $t1, $t2, label710
	j label711
label710:
	li $t0, 1
	sw $t0, -1536($fp)
label711:
	lw $t0, -1536($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
label712:
	lw $t0, -240($fp)
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label715
	j label714
label715:
	li $t0, 2563
	sw $t0, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label713
	j label714
label713:
	li $t0, 0
	sw $t0, -1564($fp)
	li $t0, 13864
	sw $t0, -1568($fp)
	li $t0, 0
	sw $t0, -1572($fp)
	addi $t0, $fp, -12
	sw $t0, -1576($fp)
	li $t0, 0
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
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label719
label719:
	li $t0, 1
	sw $t0, -1572($fp)
label720:
	lw $t1, -1568($fp)
	lw $t2, -1572($fp)
	beq $t1, $t2, label716
	j label718
label718:
	lw $t0, -276($fp)
	sw $t0, -1596($fp)
	li $t0, 2484
	sw $t0, -1600($fp)
	li $t0, 16007
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -1608($fp)
	li $t0, 0
	sw $t0, -1612($fp)
	lw $t0, -1384($fp)
	sw $t0, -1616($fp)
	li $t0, 0
	lw $t1, -1616($fp)
	sub $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label723
label723:
	lw $t0, -624($fp)
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -1612($fp)
label722:
	li $t0, 0
	sw $t0, -1628($fp)
	lw $t0, -276($fp)
	sw $t0, -1632($fp)
	lw $t0, -72($fp)
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	li $t0, 41096
	sw $t0, -1644($fp)
	lw $t1, -1640($fp)
	lw $t2, -1644($fp)
	beq $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -1628($fp)
label725:
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1648($fp)
	addi $sp, $sp, 20
	lw $t1, -1596($fp)
	lw $t2, -1648($fp)
	beq $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -1564($fp)
label717:
	j label712
label714:
	j label709
label708:
	li $t0, 0
	sw $t0, -1652($fp)
	li $t0, 22304
	sw $t0, -1656($fp)
	addi $t0, $fp, -64
	sw $t0, -1660($fp)
	lw $t0, 8($fp)
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
	lw $t0, -1656($fp)
	lw $t1, -1676($fp)
	sub $t0, $t0, $t1
	sw $t0, -1680($fp)
	addi $t0, $fp, -1376
	sw $t0, -1684($fp)
	lw $t0, -276($fp)
	sw $t0, -1688($fp)
	lw $t0, -264($fp)
	sw $t0, -1692($fp)
	lw $t0, -1688($fp)
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	li $t0, 4
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, 0($t0)
	sw $t1, -1708($fp)
	lw $t1, -1680($fp)
	lw $t2, -1708($fp)
	blt $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -1652($fp)
label727:
label709:
	j label700
label702:
	lw $t0, -72($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1732($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -1752($fp)
	li $t0, 1
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
	lw $t0, -180($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
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
	lw $t0, -1828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1832($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -1852($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -1872($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -1892($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -1912($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -1932($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -1952($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -1972($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -1992($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -2012($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -2032($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -2052($fp)
	li $t0, 6
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
	lw $t0, -612($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -2080($fp)
	addi $t0, $fp, -64
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 6004
	sw $t0, -2092($fp)
	li $t0, 62167
	sw $t0, -2096($fp)
	lw $t1, -2092($fp)
	lw $t2, -2096($fp)
	bgt $t1, $t2, label728
	j label729
label728:
	li $t0, 1
	sw $t0, -2088($fp)
label729:
	li $t0, 4
	lw $t1, -2088($fp)
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, 0($t0)
	sw $t1, -2108($fp)
	lw $t0, -2080($fp)
	lw $t1, -2108($fp)
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	li $t0, 0
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $ra, -4($fp)
	lw $v0, -2116($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label730:
	li $t0, 0
	sw $t0, -2120($fp)
	addi $t0, $fp, -64
	sw $t0, -2124($fp)
	lw $t0, -204($fp)
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
	addi $t0, $fp, -36
	sw $t0, -2144($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2164($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -2168($fp)
	lw $t0, -204($fp)
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
	li $t0, 0
	lw $t1, -2184($fp)
	sub $t0, $t0, $t1
	sw $t0, -2188($fp)
	li $t0, 0
	sw $t0, -2192($fp)
	li $t0, 40995
	sw $t0, -2196($fp)
	lw $t0, -240($fp)
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	mul $t0, $t0, $t1
	sw $t0, -2204($fp)
	li $t0, 37590
	sw $t0, -2208($fp)
	lw $t1, -2204($fp)
	lw $t2, -2208($fp)
	ble $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -2192($fp)
label736:
	lw $t0, -276($fp)
	sw $t0, -2212($fp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2216($fp)
	addi $sp, $sp, 16
	lw $t0, -216($fp)
	sw $t0, -2220($fp)
	lw $t0, -2216($fp)
	lw $t1, -2220($fp)
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	addi $sp, $sp, -4
	lw $t0, -2164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2228($fp)
	addi $sp, $sp, 12
	lw $t1, -2140($fp)
	lw $t2, -2228($fp)
	beq $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -2120($fp)
label734:
	lw $t0, -2120($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	lw $t0, 8($fp)
	sw $t0, -2248($fp)
	lw $t0, -192($fp)
	sw $t0, -2252($fp)
	lw $t0, -2248($fp)
	lw $t1, -2252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2256($fp)
	li $t0, 7982
	sw $t0, -2260($fp)
	li $t0, 0
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t1, -2256($fp)
	lw $t2, -2264($fp)
	ble $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -2244($fp)
label742:
	li $t0, 0
	sw $t0, -2268($fp)
	lw $t0, -180($fp)
	sw $t0, -2272($fp)
	lw $t0, -288($fp)
	sw $t0, -2276($fp)
	lw $t0, -2272($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	li $t0, 32566
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
	li $t0, 0
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t0, -276($fp)
	sw $t0, -2300($fp)
	li $t0, 55352
	sw $t0, -2304($fp)
	lw $t1, -2300($fp)
	lw $t2, -2304($fp)
	bge $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -2296($fp)
label748:
	li $t0, 20958
	sw $t0, -2308($fp)
	lw $t1, -2296($fp)
	lw $t2, -2308($fp)
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -2292($fp)
label746:
	addi $sp, $sp, -4
	lw $t0, -2288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2312($fp)
	addi $sp, $sp, 12
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label743
label743:
	li $t0, 1
	sw $t0, -2268($fp)
label744:
	lw $t1, -2244($fp)
	lw $t2, -2268($fp)
	ble $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -2240($fp)
label740:
	li $t0, 0
	sw $t0, -2316($fp)
	li $t0, 61727
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label749
label749:
	li $t0, 1
	sw $t0, -2316($fp)
label750:
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 0
	sw $t0, -2328($fp)
	li $t0, 51806
	sw $t0, -2332($fp)
	li $t0, 24589
	sw $t0, -2336($fp)
	lw $t1, -2332($fp)
	lw $t2, -2336($fp)
	blt $t1, $t2, label753
	j label754
label753:
	li $t0, 1
	sw $t0, -2328($fp)
label754:
	lw $t0, -72($fp)
	sw $t0, -2340($fp)
	lw $t1, -2328($fp)
	lw $t2, -2340($fp)
	beq $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -2324($fp)
label752:
	li $t0, 0
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	lw $t0, -108($fp)
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label761
label761:
	lw $t0, 8($fp)
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label760
label760:
	li $t0, 37976
	sw $t0, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -2348($fp)
label759:
	li $t0, 53914
	sw $t0, -2364($fp)
	li $t0, 41577
	sw $t0, -2368($fp)
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2372($fp)
	lw $t0, 16($fp)
	sw $t0, -2376($fp)
	lw $t0, -2372($fp)
	lw $t1, -2376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2380($fp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2384($fp)
	addi $sp, $sp, 12
	lw $t1, -2384($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label756
label757:
	lw $t0, -72($fp)
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -2344($fp)
label756:
	li $t0, 5549
	sw $t0, -2392($fp)
	li $t0, 5163
	sw $t0, -2396($fp)
	lw $t0, -2392($fp)
	lw $t1, -2396($fp)
	sub $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -72($fp)
	sw $t0, -2404($fp)
	lw $t0, -2400($fp)
	lw $t1, -2404($fp)
	add $t0, $t0, $t1
	sw $t0, -2408($fp)
	li $t0, 20114
	sw $t0, -2412($fp)
	li $t0, 59170
	sw $t0, -2416($fp)
	lw $t0, -2412($fp)
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2424($fp)
	addi $sp, $sp, 20
	lw $t0, -2316($fp)
	lw $t1, -2424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2428($fp)
	lw $t1, -2240($fp)
	lw $t2, -2428($fp)
	bne $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -2236($fp)
label738:
	j label730
label732:
	li $t0, 0
	sw $t0, -2432($fp)
	li $t0, 43193
	sw $t0, -2436($fp)
	li $t0, 0
	sw $t0, -2440($fp)
	lw $t0, -72($fp)
	sw $t0, -2444($fp)
	li $t0, 26319
	sw $t0, -2448($fp)
	lw $t0, 8($fp)
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t1, -2444($fp)
	lw $t2, -2456($fp)
	bgt $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -2440($fp)
label765:
	lw $t1, -2436($fp)
	lw $t2, -2440($fp)
	bne $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -2432($fp)
label763:
	lw $t0, -276($fp)
	sw $t0, -2460($fp)
	lw $t0, 16($fp)
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2468($fp)
	li $t0, 0
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -624($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 46924
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label768
label769:
	li $t0, 45756
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label768
label768:
	lw $t0, -72($fp)
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -2484($fp)
label767:
	li $t0, 0
	sw $t0, -2500($fp)
	lw $t0, -204($fp)
	sw $t0, -2504($fp)
	lw $t0, 4($fp)
	sw $t0, -2508($fp)
	lw $t0, -2504($fp)
	lw $t1, -2508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2512($fp)
	lw $t0, -240($fp)
	sw $t0, -2516($fp)
	lw $t1, -2512($fp)
	lw $t2, -2516($fp)
	bne $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -2500($fp)
label771:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2520($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2520($fp)
	sub $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $ra, -4($fp)
	lw $v0, -2524($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -72($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -2548($fp)
	li $t0, 0
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
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -2568($fp)
	li $t0, 1
	sw $t0, -2572($fp)
	li $t0, 4
	lw $t1, -2572($fp)
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	lw $t1, -2568($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, 0($t0)
	sw $t1, -2584($fp)
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2628($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -2648($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -2668($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -2688($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -2708($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -2728($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -2748($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -2768($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -2788($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -2808($fp)
	li $t0, 3
	sw $t0, -2812($fp)
	li $t0, 4
	lw $t1, -2812($fp)
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, -2808($fp)
	add $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, 0($t0)
	sw $t1, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2828($fp)
	li $t0, 4
	sw $t0, -2832($fp)
	li $t0, 4
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, 0($t0)
	sw $t1, -2844($fp)
	lw $t0, -2844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2848($fp)
	li $t0, 5
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
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2868($fp)
	li $t0, 6
	sw $t0, -2872($fp)
	li $t0, 4
	lw $t1, -2872($fp)
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, 0($t0)
	sw $t1, -2884($fp)
	lw $t0, -2884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2896($fp)
	li $t0, 0
	sw $t0, -2900($fp)
	addi $t0, $fp, -64
	sw $t0, -2904($fp)
	lw $t0, -240($fp)
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
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label776
label776:
	li $t0, 1
	sw $t0, -2900($fp)
label777:
	li $t0, 0
	sw $t0, -2924($fp)
	li $t0, 40183
	sw $t0, -2928($fp)
	li $t0, 10090
	sw $t0, -2932($fp)
	lw $t1, -2928($fp)
	lw $t2, -2932($fp)
	bgt $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -2924($fp)
label779:
	lw $t1, -2900($fp)
	lw $t2, -2924($fp)
	beq $t1, $t2, label775
	j label774
label775:
	li $t0, 0
	sw $t0, -2936($fp)
	li $t0, 25348
	sw $t0, -2940($fp)
	li $t0, 15743
	sw $t0, -2944($fp)
	lw $t1, -2940($fp)
	lw $t2, -2944($fp)
	blt $t1, $t2, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -2936($fp)
label781:
	li $t0, 26097
	sw $t0, -2948($fp)
	lw $t1, -2936($fp)
	lw $t2, -2948($fp)
	bgt $t1, $t2, label772
	j label774
label774:
	addi $t0, $fp, -64
	sw $t0, -2952($fp)
	li $t0, 0
	sw $t0, -2956($fp)
	li $t0, 0
	sw $t0, -2960($fp)
	lw $t0, -228($fp)
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label784
label784:
	li $t0, 1
	sw $t0, -2960($fp)
label785:
	li $t0, 27832
	sw $t0, -2968($fp)
	lw $t1, -2960($fp)
	lw $t2, -2968($fp)
	bgt $t1, $t2, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -2956($fp)
label783:
	addi $sp, $sp, -4
	lw $t0, -2956($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2972($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	lw $t1, -2952($fp)
	add $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	lw $t1, 0($t0)
	sw $t1, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -2896($fp)
label773:
	lw $ra, -4($fp)
	lw $v0, -2896($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -152
	li $t0, 38047
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 32102
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 24463
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 0
	sw $t0, -48($fp)
	lw $t0, -36($fp)
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label788
label788:
	li $t0, 1
	sw $t0, -48($fp)
label789:
	li $t0, 12138
	sw $t0, -56($fp)
	lw $t0, -48($fp)
	lw $t1, -56($fp)
	mul $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	li $t0, 4311
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	mul $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -24($fp)
	sw $t0, -76($fp)
	li $t0, 11242
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -84($fp)
	li $t0, 0
	sw $t0, -88($fp)
	lw $t0, -24($fp)
	sw $t0, -92($fp)
	lw $t0, -24($fp)
	sw $t0, -96($fp)
	lw $t0, -92($fp)
	lw $t1, -96($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label792
label792:
	li $t0, 4156
	sw $t0, -104($fp)
	lw $t1, -104($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label791
label790:
	li $t0, 1
	sw $t0, -88($fp)
label791:
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -84($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -88($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -108($fp)
	addi $sp, $sp, 20
	lw $t1, -108($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label786
label786:
	li $t0, 1
	sw $t0, -44($fp)
label787:
	li $t0, 0
	sw $t0, -112($fp)
	lw $t0, -36($fp)
	sw $t0, -116($fp)
	lw $t1, -116($fp)
	li $t2, 0
	bne $t1, $t2, label794
	j label793
label793:
	li $t0, 1
	sw $t0, -112($fp)
label794:
	li $t0, 0
	sw $t0, -120($fp)
	lw $t0, -12($fp)
	sw $t0, -124($fp)
	lw $t0, -36($fp)
	sw $t0, -128($fp)
	lw $t0, -124($fp)
	lw $t1, -128($fp)
	sub $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t1, -132($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label797
label797:
	li $t0, 13506
	sw $t0, -136($fp)
	lw $t1, -136($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label796
label795:
	li $t0, 1
	sw $t0, -120($fp)
label796:
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -120($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -140($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 1059
	sw $t0, -156($fp)
	lw $ra, -4($fp)
	lw $v0, -156($fp)
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
