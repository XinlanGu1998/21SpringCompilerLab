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
	addi $sp, $sp, -288
	li $t0, 38272
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
	li $t0, 42152
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
	li $t0, 23977
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
	li $t0, 59698
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
	li $t0, 54671
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
	addi $t0, $fp, -24
	sw $t0, -148($fp)
	li $t0, 0
	sw $t0, -152($fp)
	li $t0, 4
	lw $t1, -152($fp)
	mul $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t1, 0($t0)
	sw $t1, -164($fp)
	lw $t0, -164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -168($fp)
	li $t0, 1
	sw $t0, -172($fp)
	li $t0, 4
	lw $t1, -172($fp)
	mul $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, 0($t0)
	sw $t1, -184($fp)
	lw $t0, -184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -188($fp)
	li $t0, 2
	sw $t0, -192($fp)
	li $t0, 4
	lw $t1, -192($fp)
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	lw $t1, -188($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, 0($t0)
	sw $t1, -204($fp)
	lw $t0, -204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -208($fp)
	li $t0, 3
	sw $t0, -212($fp)
	li $t0, 4
	lw $t1, -212($fp)
	mul $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	lw $t1, 0($t0)
	sw $t1, -224($fp)
	lw $t0, -224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -228($fp)
	li $t0, 4
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
	lw $t0, -244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -248($fp)
	addi $t0, $fp, -24
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
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, 8($fp)
	sw $t0, -280($fp)
	lw $t0, 8($fp)
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t1, -276($fp)
	lw $t2, -288($fp)
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -248($fp)
label122:
	lw $t0, -248($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -292($fp)
	lw $ra, -4($fp)
	lw $v0, -292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2160
	li $t0, 33153
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 14489
	sw $t0, -80($fp)
	addi $t0, $fp, -24
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
	li $t0, 24471
	sw $t0, -104($fp)
	addi $t0, $fp, -24
	sw $t0, -108($fp)
	li $t0, 1
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
	li $t0, 49146
	sw $t0, -128($fp)
	addi $t0, $fp, -24
	sw $t0, -132($fp)
	li $t0, 2
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
	li $t0, 38625
	sw $t0, -152($fp)
	addi $t0, $fp, -24
	sw $t0, -156($fp)
	li $t0, 3
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
	li $t0, 6430
	sw $t0, -176($fp)
	addi $t0, $fp, -24
	sw $t0, -180($fp)
	li $t0, 4
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
	li $t0, 21105
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 72
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 23445
	sw $t0, -224($fp)
	addi $t0, $fp, -64
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
	li $t0, 40430
	sw $t0, -248($fp)
	addi $t0, $fp, -64
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
	li $t0, 63950
	sw $t0, -272($fp)
	addi $t0, $fp, -64
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
	li $t0, 9251
	sw $t0, -296($fp)
	addi $t0, $fp, -64
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
	li $t0, 703
	sw $t0, -320($fp)
	addi $t0, $fp, -64
	sw $t0, -324($fp)
	li $t0, 4
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
	li $t0, 46081
	sw $t0, -344($fp)
	addi $t0, $fp, -64
	sw $t0, -348($fp)
	li $t0, 5
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
	li $t0, 19938
	sw $t0, -368($fp)
	addi $t0, $fp, -64
	sw $t0, -372($fp)
	li $t0, 6
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
	li $t0, 65427
	sw $t0, -392($fp)
	addi $t0, $fp, -64
	sw $t0, -396($fp)
	li $t0, 7
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
	li $t0, 5200
	sw $t0, -416($fp)
	addi $t0, $fp, -64
	sw $t0, -420($fp)
	li $t0, 8
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
	li $t0, 57513
	sw $t0, -440($fp)
	addi $t0, $fp, -64
	sw $t0, -444($fp)
	li $t0, 9
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
	li $t0, 27572
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 33954
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 43377
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 2916
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 47924
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 49335
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -72($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -540($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -560($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -580($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -600($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -620($fp)
	li $t0, 4
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
	lw $t0, -204($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -648($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -668($fp)
	li $t0, 1
	sw $t0, -672($fp)
	li $t0, 4
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -688($fp)
	li $t0, 2
	sw $t0, -692($fp)
	li $t0, 4
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, -688($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	lw $t0, -704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -708($fp)
	li $t0, 3
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
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -728($fp)
	li $t0, 4
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
	lw $t0, -744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -748($fp)
	li $t0, 5
	sw $t0, -752($fp)
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, 0($t0)
	sw $t1, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -768($fp)
	li $t0, 6
	sw $t0, -772($fp)
	li $t0, 4
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, 0($t0)
	sw $t1, -784($fp)
	lw $t0, -784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -788($fp)
	li $t0, 7
	sw $t0, -792($fp)
	li $t0, 4
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	lw $t1, 0($t0)
	sw $t1, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -808($fp)
	li $t0, 8
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
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -828($fp)
	li $t0, 9
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
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 20839
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -876($fp)
	lw $ra, -4($fp)
	lw $v0, -876($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -880($fp)
	li $t0, 0
	sw $t0, -884($fp)
	lw $t0, -492($fp)
	sw $t0, -888($fp)
	li $t0, 0
	lw $t1, -888($fp)
	sub $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label125:
	li $t0, 1
	sw $t0, -884($fp)
label126:
	addi $t0, $fp, -24
	sw $t0, -896($fp)
	lw $t0, -204($fp)
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
	li $t0, 41604
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	sub $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t1, -884($fp)
	lw $t2, -920($fp)
	bgt $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -880($fp)
label124:
	lw $t0, -72($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -928($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -948($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -968($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -988($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1008($fp)
	li $t0, 4
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
	lw $t0, -204($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1036($fp)
	li $t0, 0
	sw $t0, -1040($fp)
	li $t0, 4
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1056($fp)
	li $t0, 1
	sw $t0, -1060($fp)
	li $t0, 4
	lw $t1, -1060($fp)
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t1, -1056($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	lw $t1, 0($t0)
	sw $t1, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1076($fp)
	li $t0, 2
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
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1096($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -1116($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -1136($fp)
	li $t0, 5
	sw $t0, -1140($fp)
	li $t0, 4
	lw $t1, -1140($fp)
	mul $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	lw $t1, -1136($fp)
	add $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	lw $t1, 0($t0)
	sw $t1, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1156($fp)
	li $t0, 6
	sw $t0, -1160($fp)
	li $t0, 4
	lw $t1, -1160($fp)
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	lw $t1, -1156($fp)
	add $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, 0($t0)
	sw $t1, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1176($fp)
	li $t0, 7
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
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1196($fp)
	li $t0, 8
	sw $t0, -1200($fp)
	li $t0, 4
	lw $t1, -1200($fp)
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	lw $t1, -1196($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t1, 0($t0)
	sw $t1, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1216($fp)
	li $t0, 9
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
	lw $t0, -468($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 22071
	sw $t0, -1260($fp)
	addi $t0, $fp, -24
	sw $t0, -1264($fp)
	li $t0, 62991
	sw $t0, -1268($fp)
	lw $t0, -204($fp)
	sw $t0, -1272($fp)
	lw $t0, -1268($fp)
	lw $t1, -1272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1276($fp)
	li $t0, 4
	lw $t1, -1276($fp)
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t1, -1264($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	lw $t1, 0($t0)
	sw $t1, -1288($fp)
	lw $t0, -1260($fp)
	lw $t1, -1288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1292($fp)
	lw $ra, -4($fp)
	lw $v0, -1292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label127:
	li $t0, 0
	sw $t0, -1296($fp)
	li $t0, 45
	sw $t0, -1300($fp)
	li $t0, 16233
	sw $t0, -1304($fp)
	lw $t0, -1300($fp)
	lw $t1, -1304($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	li $t0, 52127
	sw $t0, -1312($fp)
	lw $t0, -1308($fp)
	lw $t1, -1312($fp)
	sub $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t1, -1316($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label131
label132:
	addi $t0, $fp, -64
	sw $t0, -1320($fp)
	li $t0, 6
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
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -1296($fp)
label131:
	lw $t0, -1296($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 0
	sw $t0, -1344($fp)
	lw $t0, 8($fp)
	sw $t0, -1348($fp)
	li $t0, 0
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label135:
	li $t0, 3811
	sw $t0, -1356($fp)
	addi $t0, $fp, -64
	sw $t0, -1360($fp)
	lw $t0, -72($fp)
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
	li $t0, 16809
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -1384($fp)
	li $t0, 11062
	sw $t0, -1388($fp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1392($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1396($fp)
	lw $t0, -204($fp)
	sw $t0, -1400($fp)
	li $t0, 3883
	sw $t0, -1404($fp)
	lw $t1, -1400($fp)
	lw $t2, -1404($fp)
	bge $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -1396($fp)
label137:
	li $t0, 37914
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	lw $t0, -480($fp)
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label141:
	lw $t0, -492($fp)
	sw $t0, -1420($fp)
	lw $t1, -1420($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label140
label140:
	li $t0, 17492
	sw $t0, -1424($fp)
	lw $t1, -1424($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -1412($fp)
label139:
	lw $t0, -480($fp)
	sw $t0, -1428($fp)
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1432($fp)
	addi $sp, $sp, 20
	lw $t1, -1392($fp)
	lw $t2, -1432($fp)
	ble $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -1344($fp)
label134:
	lw $ra, -4($fp)
	lw $v0, -1344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label127
label129:
label142:
	li $t0, 40937
	sw $t0, -1436($fp)
	li $t0, 12808
	sw $t0, -1440($fp)
	lw $t0, -1436($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 2298
	sw $t0, -1456($fp)
	li $t0, 0
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	li $t0, 0
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	li $t0, 0
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -1472($fp)
	j label142
label144:
	lw $t0, -72($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1480($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -1500($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -1520($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -1540($fp)
	li $t0, 3
	sw $t0, -1544($fp)
	li $t0, 4
	lw $t1, -1544($fp)
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	lw $t1, 0($t0)
	sw $t1, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1560($fp)
	li $t0, 4
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
	lw $t0, -204($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1588($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -1608($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -1628($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -1648($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -1668($fp)
	li $t0, 4
	sw $t0, -1672($fp)
	li $t0, 4
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, -1668($fp)
	add $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	lw $t1, 0($t0)
	sw $t1, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1688($fp)
	li $t0, 5
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
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1708($fp)
	li $t0, 6
	sw $t0, -1712($fp)
	li $t0, 4
	lw $t1, -1712($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1728($fp)
	li $t0, 7
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
	lw $t0, -1744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1748($fp)
	li $t0, 8
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
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1768($fp)
	li $t0, 9
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
	lw $t0, -1784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1812($fp)
	li $t0, 0
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	li $t0, 62186
	sw $t0, -1824($fp)
	li $t0, 46036
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1832($fp)
	li $t0, 62049
	sw $t0, -1836($fp)
	lw $t1, -1832($fp)
	lw $t2, -1836($fp)
	ble $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -1820($fp)
label150:
	li $t0, 45991
	sw $t0, -1840($fp)
	li $t0, 45815
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -72($fp)
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	lw $t0, -492($fp)
	sw $t0, -1864($fp)
	li $t0, 64730
	sw $t0, -1868($fp)
	lw $t1, -1864($fp)
	lw $t2, -1868($fp)
	bgt $t1, $t2, label153
	j label152
label153:
	lw $t0, 16($fp)
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -1860($fp)
label152:
	li $t0, 0
	sw $t0, -1876($fp)
	lw $t0, 12($fp)
	sw $t0, -1880($fp)
	li $t0, 0
	lw $t1, -1880($fp)
	sub $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -204($fp)
	sw $t0, -1888($fp)
	lw $t1, -1884($fp)
	lw $t2, -1888($fp)
	blt $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -1876($fp)
label155:
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1892($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1892($fp)
	sub $t0, $t0, $t1
	sw $t0, -1896($fp)
	li $t0, 0
	sw $t0, -1900($fp)
	li $t0, 4386
	sw $t0, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label157
label158:
	li $t0, 23744
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -1900($fp)
label157:
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 43891
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -1912($fp)
label160:
	li $t0, 0
	sw $t0, -1920($fp)
	li $t0, 0
	sw $t0, -1924($fp)
	lw $t0, 8($fp)
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -1924($fp)
label164:
	li $t0, 39945
	sw $t0, -1932($fp)
	lw $t1, -1924($fp)
	lw $t2, -1932($fp)
	blt $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -1920($fp)
label162:
	lw $t0, -216($fp)
	sw $t0, -1936($fp)
	li $t0, 21998
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 40975
	sw $t0, -1952($fp)
	lw $t0, -528($fp)
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	li $t0, 0
	lw $t1, -1960($fp)
	sub $t0, $t0, $t1
	sw $t0, -1964($fp)
	addi $t0, $fp, -64
	sw $t0, -1968($fp)
	lw $t0, -72($fp)
	sw $t0, -1972($fp)
	li $t0, 4
	lw $t1, -1972($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	li $t0, 62104
	sw $t0, -1988($fp)
	lw $t0, -1984($fp)
	lw $t1, -1988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1992($fp)
	li $t0, 0
	sw $t0, -1996($fp)
	lw $t0, -204($fp)
	sw $t0, -2000($fp)
	lw $t0, -516($fp)
	sw $t0, -2004($fp)
	lw $t1, -2000($fp)
	lw $t2, -2004($fp)
	blt $t1, $t2, label167
	j label169
label169:
	li $t0, 53580
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -1996($fp)
label168:
	li $t0, 13403
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -2016($fp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2020($fp)
	addi $sp, $sp, 20
	lw $t0, -204($fp)
	sw $t0, -2024($fp)
	lw $t1, -2020($fp)
	lw $t2, -2024($fp)
	beq $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -1948($fp)
label166:
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2028($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2032($fp)
	addi $sp, $sp, 20
	lw $t0, -528($fp)
	sw $t0, -2036($fp)
	lw $t1, -2032($fp)
	lw $t2, -2036($fp)
	ble $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -1816($fp)
label148:
	li $t0, 0
	sw $t0, -2040($fp)
	lw $t0, -72($fp)
	sw $t0, -2044($fp)
	li $t0, 0
	lw $t1, -2044($fp)
	sub $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -2040($fp)
label171:
	li $t0, 0
	sw $t0, -2052($fp)
	li $t0, 0
	sw $t0, -2056($fp)
	li $t0, 48379
	sw $t0, -2060($fp)
	lw $t0, -504($fp)
	sw $t0, -2064($fp)
	lw $t1, -2060($fp)
	lw $t2, -2064($fp)
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -2056($fp)
label175:
	li $t0, 4591
	sw $t0, -2068($fp)
	lw $t1, -2056($fp)
	lw $t2, -2068($fp)
	beq $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -2052($fp)
label173:
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 50188
	sw $t0, -2076($fp)
	li $t0, 13512
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label178:
	lw $t0, -528($fp)
	sw $t0, -2088($fp)
	lw $t1, -2088($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -2072($fp)
label177:
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2092($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	li $t0, 0
	sw $t0, -2100($fp)
	li $t0, 27235
	sw $t0, -2104($fp)
	li $t0, 0
	sw $t0, -2108($fp)
	lw $t0, 8($fp)
	sw $t0, -2112($fp)
	li $t0, 0
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -2108($fp)
label182:
	li $t0, 0
	sw $t0, -2120($fp)
	li $t0, 13699
	sw $t0, -2124($fp)
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -2120($fp)
label184:
	li $t0, 0
	sw $t0, -2128($fp)
	lw $t0, -204($fp)
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label186
label188:
	li $t0, 48777
	sw $t0, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label187:
	lw $t0, -204($fp)
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -2128($fp)
label186:
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2128($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2144($fp)
	addi $sp, $sp, 20
	li $t0, 59839
	sw $t0, -2148($fp)
	lw $t0, -2144($fp)
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -480($fp)
	sw $t0, -2156($fp)
	lw $t0, -528($fp)
	sw $t0, -2160($fp)
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t1, -2152($fp)
	lw $t2, -2164($fp)
	ble $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -2100($fp)
label180:
	lw $t1, -2096($fp)
	lw $t2, -2100($fp)
	beq $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -1812($fp)
label146:
	lw $ra, -4($fp)
	lw $v0, -1812($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -16116
	li $t0, 30509
	sw $t0, -436($fp)
	addi $t0, $fp, -44
	sw $t0, -440($fp)
	li $t0, 0
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
	li $t0, 31047
	sw $t0, -460($fp)
	addi $t0, $fp, -44
	sw $t0, -464($fp)
	li $t0, 1
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
	li $t0, 11795
	sw $t0, -484($fp)
	addi $t0, $fp, -44
	sw $t0, -488($fp)
	li $t0, 2
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
	li $t0, 2887
	sw $t0, -508($fp)
	addi $t0, $fp, -44
	sw $t0, -512($fp)
	li $t0, 3
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
	li $t0, 34930
	sw $t0, -532($fp)
	addi $t0, $fp, -44
	sw $t0, -536($fp)
	li $t0, 4
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
	li $t0, 52732
	sw $t0, -556($fp)
	addi $t0, $fp, -44
	sw $t0, -560($fp)
	li $t0, 5
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
	li $t0, 15696
	sw $t0, -580($fp)
	addi $t0, $fp, -44
	sw $t0, -584($fp)
	li $t0, 6
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
	li $t0, 37228
	sw $t0, -604($fp)
	addi $t0, $fp, -44
	sw $t0, -608($fp)
	li $t0, 7
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
	li $t0, 37385
	sw $t0, -628($fp)
	addi $t0, $fp, -44
	sw $t0, -632($fp)
	li $t0, 8
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
	li $t0, 29208
	sw $t0, -652($fp)
	addi $t0, $fp, -44
	sw $t0, -656($fp)
	li $t0, 9
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
	li $t0, 20072
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 41976
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 42611
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 8116
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 38544
	sw $t0, -724($fp)
	addi $t0, $fp, -72
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
	li $t0, 18050
	sw $t0, -748($fp)
	addi $t0, $fp, -72
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
	li $t0, 30114
	sw $t0, -772($fp)
	addi $t0, $fp, -72
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
	li $t0, 12953
	sw $t0, -796($fp)
	addi $t0, $fp, -72
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
	li $t0, 61941
	sw $t0, -820($fp)
	addi $t0, $fp, -72
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
	li $t0, 34500
	sw $t0, -844($fp)
	addi $t0, $fp, -72
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
	li $t0, 36698
	sw $t0, -868($fp)
	addi $t0, $fp, -72
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
	li $t0, 61135
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 14955
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 16977
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 57785
	sw $t0, -928($fp)
	addi $t0, $fp, -108
	sw $t0, -932($fp)
	li $t0, 0
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
	li $t0, 60992
	sw $t0, -952($fp)
	addi $t0, $fp, -108
	sw $t0, -956($fp)
	li $t0, 1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -956($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -952($fp)
	lw $t1, -968($fp)
	sw $t0, 0($t1)
	lw $t0, -968($fp)
	lw $t1, 0($t0)
	sw $t1, -972($fp)
	li $t0, 13490
	sw $t0, -976($fp)
	addi $t0, $fp, -108
	sw $t0, -980($fp)
	li $t0, 2
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -980($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -976($fp)
	lw $t1, -992($fp)
	sw $t0, 0($t1)
	lw $t0, -992($fp)
	lw $t1, 0($t0)
	sw $t1, -996($fp)
	li $t0, 41026
	sw $t0, -1000($fp)
	addi $t0, $fp, -108
	sw $t0, -1004($fp)
	li $t0, 3
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
	li $t0, 9155
	sw $t0, -1024($fp)
	addi $t0, $fp, -108
	sw $t0, -1028($fp)
	li $t0, 4
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
	li $t0, 40726
	sw $t0, -1048($fp)
	addi $t0, $fp, -108
	sw $t0, -1052($fp)
	li $t0, 5
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
	li $t0, 35329
	sw $t0, -1072($fp)
	addi $t0, $fp, -108
	sw $t0, -1076($fp)
	li $t0, 6
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
	li $t0, 39664
	sw $t0, -1096($fp)
	addi $t0, $fp, -108
	sw $t0, -1100($fp)
	li $t0, 7
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
	li $t0, 6237
	sw $t0, -1120($fp)
	addi $t0, $fp, -108
	sw $t0, -1124($fp)
	li $t0, 8
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
	li $t0, 47124
	sw $t0, -1144($fp)
	addi $t0, $fp, -124
	sw $t0, -1148($fp)
	li $t0, 0
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
	li $t0, 42552
	sw $t0, -1168($fp)
	addi $t0, $fp, -124
	sw $t0, -1172($fp)
	li $t0, 1
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
	li $t0, 41167
	sw $t0, -1192($fp)
	addi $t0, $fp, -124
	sw $t0, -1196($fp)
	li $t0, 2
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
	li $t0, 34321
	sw $t0, -1216($fp)
	addi $t0, $fp, -124
	sw $t0, -1220($fp)
	li $t0, 3
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
	li $t0, 58248
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 12860
	sw $t0, -1252($fp)
	addi $t0, $fp, -132
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
	li $t0, 6170
	sw $t0, -1276($fp)
	addi $t0, $fp, -132
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
	li $t0, 21920
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 32932
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 48146
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	li $t0, 64531
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 41048
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	li $t0, 21154
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	li $t0, 17045
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 5626
	sw $t0, -1384($fp)
	addi $t0, $fp, -144
	sw $t0, -1388($fp)
	li $t0, 0
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
	li $t0, 34107
	sw $t0, -1408($fp)
	addi $t0, $fp, -144
	sw $t0, -1412($fp)
	li $t0, 1
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1412($fp)
	lw $t1, -1420($fp)
	add $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1408($fp)
	lw $t1, -1424($fp)
	sw $t0, 0($t1)
	lw $t0, -1424($fp)
	lw $t1, 0($t0)
	sw $t1, -1428($fp)
	li $t0, 13450
	sw $t0, -1432($fp)
	addi $t0, $fp, -144
	sw $t0, -1436($fp)
	li $t0, 2
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
	li $t0, 40126
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 5269
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 9049
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	li $t0, 55082
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 22247
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 1299
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 50538
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	li $t0, 35737
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	li $t0, 42325
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 59693
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 10927
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 12119
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 33822
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	li $t0, 17164
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	li $t0, 59243
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	li $t0, 10838
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 58332
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	li $t0, 28028
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	li $t0, 3550
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 5656
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	li $t0, 34198
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	li $t0, 25470
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	li $t0, 38588
	sw $t0, -1720($fp)
	addi $t0, $fp, -176
	sw $t0, -1724($fp)
	li $t0, 0
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
	li $t0, 16808
	sw $t0, -1744($fp)
	addi $t0, $fp, -176
	sw $t0, -1748($fp)
	li $t0, 1
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
	li $t0, 24465
	sw $t0, -1768($fp)
	addi $t0, $fp, -176
	sw $t0, -1772($fp)
	li $t0, 2
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
	li $t0, 14100
	sw $t0, -1792($fp)
	addi $t0, $fp, -176
	sw $t0, -1796($fp)
	li $t0, 3
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
	li $t0, 37962
	sw $t0, -1816($fp)
	addi $t0, $fp, -176
	sw $t0, -1820($fp)
	li $t0, 4
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
	li $t0, 41510
	sw $t0, -1840($fp)
	addi $t0, $fp, -176
	sw $t0, -1844($fp)
	li $t0, 5
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
	li $t0, 19726
	sw $t0, -1864($fp)
	addi $t0, $fp, -176
	sw $t0, -1868($fp)
	li $t0, 6
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
	li $t0, 6534
	sw $t0, -1888($fp)
	addi $t0, $fp, -176
	sw $t0, -1892($fp)
	li $t0, 7
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
	li $t0, 54960
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	li $t0, 59852
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 11803
	sw $t0, -1936($fp)
	addi $t0, $fp, -204
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
	li $t0, 64009
	sw $t0, -1960($fp)
	addi $t0, $fp, -204
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
	li $t0, 49398
	sw $t0, -1984($fp)
	addi $t0, $fp, -204
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
	li $t0, 34050
	sw $t0, -2008($fp)
	addi $t0, $fp, -204
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
	li $t0, 65308
	sw $t0, -2032($fp)
	addi $t0, $fp, -204
	sw $t0, -2036($fp)
	li $t0, 4
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
	li $t0, 34400
	sw $t0, -2056($fp)
	addi $t0, $fp, -204
	sw $t0, -2060($fp)
	li $t0, 5
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
	li $t0, 4252
	sw $t0, -2080($fp)
	addi $t0, $fp, -204
	sw $t0, -2084($fp)
	li $t0, 6
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
	li $t0, 42098
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 28558
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 15179
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	li $t0, 54217
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -2148($fp)
	li $t0, 62380
	sw $t0, -2152($fp)
	addi $t0, $fp, -228
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
	li $t0, 32344
	sw $t0, -2176($fp)
	addi $t0, $fp, -228
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
	li $t0, 47924
	sw $t0, -2200($fp)
	addi $t0, $fp, -228
	sw $t0, -2204($fp)
	li $t0, 2
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2204($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2200($fp)
	lw $t1, -2216($fp)
	sw $t0, 0($t1)
	lw $t0, -2216($fp)
	lw $t1, 0($t0)
	sw $t1, -2220($fp)
	li $t0, 7682
	sw $t0, -2224($fp)
	addi $t0, $fp, -228
	sw $t0, -2228($fp)
	li $t0, 3
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2228($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2224($fp)
	lw $t1, -2240($fp)
	sw $t0, 0($t1)
	lw $t0, -2240($fp)
	lw $t1, 0($t0)
	sw $t1, -2244($fp)
	li $t0, 25140
	sw $t0, -2248($fp)
	addi $t0, $fp, -228
	sw $t0, -2252($fp)
	li $t0, 4
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2252($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2248($fp)
	lw $t1, -2264($fp)
	sw $t0, 0($t1)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	li $t0, 10417
	sw $t0, -2272($fp)
	addi $t0, $fp, -228
	sw $t0, -2276($fp)
	li $t0, 5
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2276($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2272($fp)
	lw $t1, -2288($fp)
	sw $t0, 0($t1)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	li $t0, 11232
	sw $t0, -2296($fp)
	addi $t0, $fp, -264
	sw $t0, -2300($fp)
	li $t0, 0
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2300($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2296($fp)
	lw $t1, -2312($fp)
	sw $t0, 0($t1)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	li $t0, 30796
	sw $t0, -2320($fp)
	addi $t0, $fp, -264
	sw $t0, -2324($fp)
	li $t0, 1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2324($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2320($fp)
	lw $t1, -2336($fp)
	sw $t0, 0($t1)
	lw $t0, -2336($fp)
	lw $t1, 0($t0)
	sw $t1, -2340($fp)
	li $t0, 44615
	sw $t0, -2344($fp)
	addi $t0, $fp, -264
	sw $t0, -2348($fp)
	li $t0, 2
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2348($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2344($fp)
	lw $t1, -2360($fp)
	sw $t0, 0($t1)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	li $t0, 36702
	sw $t0, -2368($fp)
	addi $t0, $fp, -264
	sw $t0, -2372($fp)
	li $t0, 3
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2372($fp)
	lw $t1, -2380($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2368($fp)
	lw $t1, -2384($fp)
	sw $t0, 0($t1)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	li $t0, 3848
	sw $t0, -2392($fp)
	addi $t0, $fp, -264
	sw $t0, -2396($fp)
	li $t0, 4
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2396($fp)
	lw $t1, -2404($fp)
	add $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2392($fp)
	lw $t1, -2408($fp)
	sw $t0, 0($t1)
	lw $t0, -2408($fp)
	lw $t1, 0($t0)
	sw $t1, -2412($fp)
	li $t0, 61424
	sw $t0, -2416($fp)
	addi $t0, $fp, -264
	sw $t0, -2420($fp)
	li $t0, 5
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2420($fp)
	lw $t1, -2428($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2416($fp)
	lw $t1, -2432($fp)
	sw $t0, 0($t1)
	lw $t0, -2432($fp)
	lw $t1, 0($t0)
	sw $t1, -2436($fp)
	li $t0, 61167
	sw $t0, -2440($fp)
	addi $t0, $fp, -264
	sw $t0, -2444($fp)
	li $t0, 6
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2444($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2440($fp)
	lw $t1, -2456($fp)
	sw $t0, 0($t1)
	lw $t0, -2456($fp)
	lw $t1, 0($t0)
	sw $t1, -2460($fp)
	li $t0, 17948
	sw $t0, -2464($fp)
	addi $t0, $fp, -264
	sw $t0, -2468($fp)
	li $t0, 7
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2468($fp)
	lw $t1, -2476($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2464($fp)
	lw $t1, -2480($fp)
	sw $t0, 0($t1)
	lw $t0, -2480($fp)
	lw $t1, 0($t0)
	sw $t1, -2484($fp)
	li $t0, 33850
	sw $t0, -2488($fp)
	addi $t0, $fp, -264
	sw $t0, -2492($fp)
	li $t0, 8
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
	li $t0, 37141
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	li $t0, 37674
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	li $t0, 40384
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	li $t0, 26565
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -2556($fp)
	li $t0, 31990
	sw $t0, -2560($fp)
	addi $t0, $fp, -288
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
	li $t0, 52188
	sw $t0, -2584($fp)
	addi $t0, $fp, -288
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
	li $t0, 25038
	sw $t0, -2608($fp)
	addi $t0, $fp, -288
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
	li $t0, 15853
	sw $t0, -2632($fp)
	addi $t0, $fp, -288
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
	li $t0, 20702
	sw $t0, -2656($fp)
	addi $t0, $fp, -288
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
	li $t0, 24811
	sw $t0, -2680($fp)
	addi $t0, $fp, -288
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
	li $t0, 50253
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -2712($fp)
	li $t0, 24954
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	li $t0, 1373
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -2736($fp)
	li $t0, 13275
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	sw $t0, -2748($fp)
	li $t0, 40134
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	sw $t0, -2760($fp)
	li $t0, 55590
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	sw $t0, -2772($fp)
	li $t0, 10119
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -2784($fp)
	li $t0, 6942
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -2796($fp)
	li $t0, 37978
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	sw $t0, -2808($fp)
	li $t0, 17801
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2820($fp)
	li $t0, 32082
	sw $t0, -2824($fp)
	addi $t0, $fp, -316
	sw $t0, -2828($fp)
	li $t0, 0
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
	li $t0, 48395
	sw $t0, -2848($fp)
	addi $t0, $fp, -316
	sw $t0, -2852($fp)
	li $t0, 1
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
	li $t0, 29033
	sw $t0, -2872($fp)
	addi $t0, $fp, -316
	sw $t0, -2876($fp)
	li $t0, 2
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
	li $t0, 62878
	sw $t0, -2896($fp)
	addi $t0, $fp, -316
	sw $t0, -2900($fp)
	li $t0, 3
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
	li $t0, 27475
	sw $t0, -2920($fp)
	addi $t0, $fp, -316
	sw $t0, -2924($fp)
	li $t0, 4
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2924($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2920($fp)
	lw $t1, -2936($fp)
	sw $t0, 0($t1)
	lw $t0, -2936($fp)
	lw $t1, 0($t0)
	sw $t1, -2940($fp)
	li $t0, 199
	sw $t0, -2944($fp)
	addi $t0, $fp, -316
	sw $t0, -2948($fp)
	li $t0, 5
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2948($fp)
	lw $t1, -2956($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2944($fp)
	lw $t1, -2960($fp)
	sw $t0, 0($t1)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	li $t0, 1190
	sw $t0, -2968($fp)
	addi $t0, $fp, -316
	sw $t0, -2972($fp)
	li $t0, 6
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2972($fp)
	lw $t1, -2980($fp)
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2968($fp)
	lw $t1, -2984($fp)
	sw $t0, 0($t1)
	lw $t0, -2984($fp)
	lw $t1, 0($t0)
	sw $t1, -2988($fp)
	li $t0, 23363
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, -3000($fp)
	li $t0, 61366
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	sw $t0, -3012($fp)
	li $t0, 19138
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	sw $t0, -3024($fp)
	li $t0, 57213
	sw $t0, -3028($fp)
	addi $t0, $fp, -320
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
	li $t0, 32971
	sw $t0, -3052($fp)
	addi $t0, $fp, -344
	sw $t0, -3056($fp)
	li $t0, 0
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3056($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3052($fp)
	lw $t1, -3068($fp)
	sw $t0, 0($t1)
	lw $t0, -3068($fp)
	lw $t1, 0($t0)
	sw $t1, -3072($fp)
	li $t0, 56812
	sw $t0, -3076($fp)
	addi $t0, $fp, -344
	sw $t0, -3080($fp)
	li $t0, 1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3080($fp)
	lw $t1, -3088($fp)
	add $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3076($fp)
	lw $t1, -3092($fp)
	sw $t0, 0($t1)
	lw $t0, -3092($fp)
	lw $t1, 0($t0)
	sw $t1, -3096($fp)
	li $t0, 32062
	sw $t0, -3100($fp)
	addi $t0, $fp, -344
	sw $t0, -3104($fp)
	li $t0, 2
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
	li $t0, 59536
	sw $t0, -3124($fp)
	addi $t0, $fp, -344
	sw $t0, -3128($fp)
	li $t0, 3
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
	li $t0, 23266
	sw $t0, -3148($fp)
	addi $t0, $fp, -344
	sw $t0, -3152($fp)
	li $t0, 4
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
	li $t0, 18714
	sw $t0, -3172($fp)
	addi $t0, $fp, -344
	sw $t0, -3176($fp)
	li $t0, 5
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
	li $t0, 19039
	sw $t0, -3196($fp)
	addi $t0, $fp, -356
	sw $t0, -3200($fp)
	li $t0, 0
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
	li $t0, 39119
	sw $t0, -3220($fp)
	addi $t0, $fp, -356
	sw $t0, -3224($fp)
	li $t0, 1
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
	li $t0, 39416
	sw $t0, -3244($fp)
	addi $t0, $fp, -356
	sw $t0, -3248($fp)
	li $t0, 2
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3248($fp)
	lw $t1, -3256($fp)
	add $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3244($fp)
	lw $t1, -3260($fp)
	sw $t0, 0($t1)
	lw $t0, -3260($fp)
	lw $t1, 0($t0)
	sw $t1, -3264($fp)
	li $t0, 43850
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -3276($fp)
	li $t0, 23837
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -3288($fp)
	li $t0, 64371
	sw $t0, -3292($fp)
	addi $t0, $fp, -368
	sw $t0, -3296($fp)
	li $t0, 0
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3296($fp)
	lw $t1, -3304($fp)
	add $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3292($fp)
	lw $t1, -3308($fp)
	sw $t0, 0($t1)
	lw $t0, -3308($fp)
	lw $t1, 0($t0)
	sw $t1, -3312($fp)
	li $t0, 45223
	sw $t0, -3316($fp)
	addi $t0, $fp, -368
	sw $t0, -3320($fp)
	li $t0, 1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3320($fp)
	lw $t1, -3328($fp)
	add $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3316($fp)
	lw $t1, -3332($fp)
	sw $t0, 0($t1)
	lw $t0, -3332($fp)
	lw $t1, 0($t0)
	sw $t1, -3336($fp)
	li $t0, 37112
	sw $t0, -3340($fp)
	addi $t0, $fp, -368
	sw $t0, -3344($fp)
	li $t0, 2
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3344($fp)
	lw $t1, -3352($fp)
	add $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3340($fp)
	lw $t1, -3356($fp)
	sw $t0, 0($t1)
	lw $t0, -3356($fp)
	lw $t1, 0($t0)
	sw $t1, -3360($fp)
	li $t0, 38969
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	sw $t0, -3372($fp)
	li $t0, 35277
	sw $t0, -3376($fp)
	addi $t0, $fp, -384
	sw $t0, -3380($fp)
	li $t0, 0
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
	li $t0, 47232
	sw $t0, -3400($fp)
	addi $t0, $fp, -384
	sw $t0, -3404($fp)
	li $t0, 1
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
	li $t0, 45911
	sw $t0, -3424($fp)
	addi $t0, $fp, -384
	sw $t0, -3428($fp)
	li $t0, 2
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
	li $t0, 7719
	sw $t0, -3448($fp)
	addi $t0, $fp, -384
	sw $t0, -3452($fp)
	li $t0, 3
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
	li $t0, 65033
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	sw $t0, -3480($fp)
	li $t0, 12457
	sw $t0, -3484($fp)
	addi $t0, $fp, -400
	sw $t0, -3488($fp)
	li $t0, 0
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3488($fp)
	lw $t1, -3496($fp)
	add $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3484($fp)
	lw $t1, -3500($fp)
	sw $t0, 0($t1)
	lw $t0, -3500($fp)
	lw $t1, 0($t0)
	sw $t1, -3504($fp)
	li $t0, 56115
	sw $t0, -3508($fp)
	addi $t0, $fp, -400
	sw $t0, -3512($fp)
	li $t0, 1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3512($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3508($fp)
	lw $t1, -3524($fp)
	sw $t0, 0($t1)
	lw $t0, -3524($fp)
	lw $t1, 0($t0)
	sw $t1, -3528($fp)
	li $t0, 28531
	sw $t0, -3532($fp)
	addi $t0, $fp, -400
	sw $t0, -3536($fp)
	li $t0, 2
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3536($fp)
	lw $t1, -3544($fp)
	add $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3532($fp)
	lw $t1, -3548($fp)
	sw $t0, 0($t1)
	lw $t0, -3548($fp)
	lw $t1, 0($t0)
	sw $t1, -3552($fp)
	li $t0, 9799
	sw $t0, -3556($fp)
	addi $t0, $fp, -400
	sw $t0, -3560($fp)
	li $t0, 3
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3560($fp)
	lw $t1, -3568($fp)
	add $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3556($fp)
	lw $t1, -3572($fp)
	sw $t0, 0($t1)
	lw $t0, -3572($fp)
	lw $t1, 0($t0)
	sw $t1, -3576($fp)
	li $t0, 18054
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	sw $t0, -3588($fp)
	li $t0, 28730
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -3600($fp)
	li $t0, 10989
	sw $t0, -3604($fp)
	addi $t0, $fp, -404
	sw $t0, -3608($fp)
	li $t0, 0
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3608($fp)
	lw $t1, -3616($fp)
	add $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, -3604($fp)
	lw $t1, -3620($fp)
	sw $t0, 0($t1)
	lw $t0, -3620($fp)
	lw $t1, 0($t0)
	sw $t1, -3624($fp)
	li $t0, 41417
	sw $t0, -3628($fp)
	addi $t0, $fp, -420
	sw $t0, -3632($fp)
	li $t0, 0
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3632($fp)
	lw $t1, -3640($fp)
	add $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3628($fp)
	lw $t1, -3644($fp)
	sw $t0, 0($t1)
	lw $t0, -3644($fp)
	lw $t1, 0($t0)
	sw $t1, -3648($fp)
	li $t0, 24561
	sw $t0, -3652($fp)
	addi $t0, $fp, -420
	sw $t0, -3656($fp)
	li $t0, 1
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3656($fp)
	lw $t1, -3664($fp)
	add $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3652($fp)
	lw $t1, -3668($fp)
	sw $t0, 0($t1)
	lw $t0, -3668($fp)
	lw $t1, 0($t0)
	sw $t1, -3672($fp)
	li $t0, 30127
	sw $t0, -3676($fp)
	addi $t0, $fp, -420
	sw $t0, -3680($fp)
	li $t0, 2
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
	li $t0, 33094
	sw $t0, -3700($fp)
	addi $t0, $fp, -420
	sw $t0, -3704($fp)
	li $t0, 3
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3704($fp)
	lw $t1, -3712($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3700($fp)
	lw $t1, -3716($fp)
	sw $t0, 0($t1)
	lw $t0, -3716($fp)
	lw $t1, 0($t0)
	sw $t1, -3720($fp)
	li $t0, 57532
	sw $t0, -3724($fp)
	addi $t0, $fp, -432
	sw $t0, -3728($fp)
	li $t0, 0
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3728($fp)
	lw $t1, -3736($fp)
	add $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3724($fp)
	lw $t1, -3740($fp)
	sw $t0, 0($t1)
	lw $t0, -3740($fp)
	lw $t1, 0($t0)
	sw $t1, -3744($fp)
	li $t0, 21403
	sw $t0, -3748($fp)
	addi $t0, $fp, -432
	sw $t0, -3752($fp)
	li $t0, 1
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3752($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3748($fp)
	lw $t1, -3764($fp)
	sw $t0, 0($t1)
	lw $t0, -3764($fp)
	lw $t1, 0($t0)
	sw $t1, -3768($fp)
	li $t0, 65156
	sw $t0, -3772($fp)
	addi $t0, $fp, -432
	sw $t0, -3776($fp)
	li $t0, 2
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3776($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3772($fp)
	lw $t1, -3788($fp)
	sw $t0, 0($t1)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	li $t0, 51533
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -3804($fp)
	li $t0, 44669
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3816($fp)
	li $t0, 18334
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	sw $t0, -3828($fp)
	li $t0, 5036
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	sw $t0, -3840($fp)
	li $t0, 18253
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	sw $t0, -3852($fp)
	li $t0, 57751
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	sw $t0, -3864($fp)
	li $t0, 48886
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	sw $t0, -3876($fp)
	li $t0, 42090
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	sw $t0, -3888($fp)
	li $t0, 56586
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	sw $t0, -3900($fp)
	li $t0, 28573
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	sw $t0, -3912($fp)
	li $t0, 13666
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	sw $t0, -3924($fp)
	li $t0, 30019
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -3936($fp)
	li $t0, 63850
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	sw $t0, -3948($fp)
	li $t0, 60898
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	sw $t0, -3960($fp)
	li $t0, 10394
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	sw $t0, -3972($fp)
	li $t0, 6033
	sw $t0, -4008($fp)
	addi $t0, $fp, -4004
	sw $t0, -4012($fp)
	li $t0, 0
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4012($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4008($fp)
	lw $t1, -4024($fp)
	sw $t0, 0($t1)
	lw $t0, -4024($fp)
	lw $t1, 0($t0)
	sw $t1, -4028($fp)
	li $t0, 60396
	sw $t0, -4032($fp)
	addi $t0, $fp, -4004
	sw $t0, -4036($fp)
	li $t0, 1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4036($fp)
	lw $t1, -4044($fp)
	add $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4032($fp)
	lw $t1, -4048($fp)
	sw $t0, 0($t1)
	lw $t0, -4048($fp)
	lw $t1, 0($t0)
	sw $t1, -4052($fp)
	li $t0, 22851
	sw $t0, -4056($fp)
	addi $t0, $fp, -4004
	sw $t0, -4060($fp)
	li $t0, 2
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4060($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4056($fp)
	lw $t1, -4072($fp)
	sw $t0, 0($t1)
	lw $t0, -4072($fp)
	lw $t1, 0($t0)
	sw $t1, -4076($fp)
	li $t0, 62148
	sw $t0, -4080($fp)
	addi $t0, $fp, -4004
	sw $t0, -4084($fp)
	li $t0, 3
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4084($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4080($fp)
	lw $t1, -4096($fp)
	sw $t0, 0($t1)
	lw $t0, -4096($fp)
	lw $t1, 0($t0)
	sw $t1, -4100($fp)
	li $t0, 23391
	sw $t0, -4104($fp)
	addi $t0, $fp, -4004
	sw $t0, -4108($fp)
	li $t0, 4
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4108($fp)
	lw $t1, -4116($fp)
	add $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4104($fp)
	lw $t1, -4120($fp)
	sw $t0, 0($t1)
	lw $t0, -4120($fp)
	lw $t1, 0($t0)
	sw $t1, -4124($fp)
	li $t0, 32650
	sw $t0, -4128($fp)
	addi $t0, $fp, -4004
	sw $t0, -4132($fp)
	li $t0, 5
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4132($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4128($fp)
	lw $t1, -4144($fp)
	sw $t0, 0($t1)
	lw $t0, -4144($fp)
	lw $t1, 0($t0)
	sw $t1, -4148($fp)
	li $t0, 14666
	sw $t0, -4152($fp)
	addi $t0, $fp, -4004
	sw $t0, -4156($fp)
	li $t0, 6
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4156($fp)
	lw $t1, -4164($fp)
	add $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4152($fp)
	lw $t1, -4168($fp)
	sw $t0, 0($t1)
	lw $t0, -4168($fp)
	lw $t1, 0($t0)
	sw $t1, -4172($fp)
	li $t0, 52121
	sw $t0, -4176($fp)
	addi $t0, $fp, -4004
	sw $t0, -4180($fp)
	li $t0, 7
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4180($fp)
	lw $t1, -4188($fp)
	add $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4176($fp)
	lw $t1, -4192($fp)
	sw $t0, 0($t1)
	lw $t0, -4192($fp)
	lw $t1, 0($t0)
	sw $t1, -4196($fp)
	li $t0, 43639
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	sw $t0, -4208($fp)
label189:
	li $t0, 0
	sw $t0, -4212($fp)
	li $t0, 0
	sw $t0, -4216($fp)
	addi $t0, $fp, -4004
	sw $t0, -4220($fp)
	li $t0, 2
	sw $t0, -4224($fp)
	li $t0, 4
	lw $t1, -4224($fp)
	mul $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, 0($t0)
	sw $t1, -4236($fp)
	lw $t1, -4236($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label194:
	li $t0, 1
	sw $t0, -4216($fp)
label195:
	li $t0, 0
	lw $t1, -4216($fp)
	sub $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t1, -4240($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -4212($fp)
label193:
	li $t0, 0
	lw $t1, -4212($fp)
	sub $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t1, -4244($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
	li $t0, 0
	sw $t0, -4248($fp)
	addi $t0, $fp, -44
	sw $t0, -4252($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -4272($fp)
	li $t0, 3143
	sw $t0, -4276($fp)
	lw $t1, -4276($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label198:
	li $t0, 1
	sw $t0, -4272($fp)
label199:
	lw $t0, -4268($fp)
	lw $t1, -4272($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	li $t0, 0
	lw $t1, -4280($fp)
	sub $t0, $t0, $t1
	sw $t0, -4284($fp)
	li $t0, 29633
	sw $t0, -4288($fp)
	lw $t0, -4284($fp)
	lw $t1, -4288($fp)
	sub $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, 4($fp)
	sw $t0, -4296($fp)
	lw $t1, -4292($fp)
	lw $t2, -4296($fp)
	blt $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -4248($fp)
label197:
	lw $ra, -4($fp)
	lw $v0, -4248($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label189
label191:
	lw $t0, -1700($fp)
	sw $t0, -4300($fp)
	li $t0, 27019
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -4308($fp)
	addi $t0, $fp, -228
	sw $t0, -4312($fp)
	li $t0, 2
	sw $t0, -4316($fp)
	li $t0, 4
	lw $t1, -4316($fp)
	mul $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	lw $t1, -4312($fp)
	add $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, 0($t0)
	sw $t1, -4328($fp)
	li $t0, 8766
	sw $t0, -4332($fp)
	lw $t0, -3596($fp)
	sw $t0, -4336($fp)
	li $t0, 23262
	sw $t0, -4340($fp)
	lw $t0, -4336($fp)
	lw $t1, -4340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4344($fp)
	li $t0, 54676
	sw $t0, -4348($fp)
	lw $t0, -4344($fp)
	lw $t1, -4348($fp)
	sub $t0, $t0, $t1
	sw $t0, -4352($fp)
	addi $sp, $sp, -4
	lw $t0, -4308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4356($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4360($fp)
	li $t0, 17240
	sw $t0, -4364($fp)
	lw $t1, -4364($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label206:
	lw $t0, -4204($fp)
	sw $t0, -4368($fp)
	lw $t1, -4368($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label205
label205:
	li $t0, 54881
	sw $t0, -4372($fp)
	lw $t1, -4372($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -4360($fp)
label204:
	li $t0, 0
	sw $t0, -4376($fp)
	lw $t0, -704($fp)
	sw $t0, -4380($fp)
	li $t0, 0
	lw $t1, -4380($fp)
	sub $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t1, -4384($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label209
label209:
	li $t0, 6099
	sw $t0, -4388($fp)
	lw $t1, -4388($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -4376($fp)
label208:
	li $t0, 0
	sw $t0, -4392($fp)
	li $t0, 24862
	sw $t0, -4396($fp)
	lw $t0, -680($fp)
	sw $t0, -4400($fp)
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4404($fp)
	lw $t0, -692($fp)
	sw $t0, -4408($fp)
	lw $t1, -4404($fp)
	lw $t2, -4408($fp)
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -4392($fp)
label211:
	li $t0, 0
	sw $t0, -4412($fp)
	li $t0, 33812
	sw $t0, -4416($fp)
	li $t0, 43062
	sw $t0, -4420($fp)
	lw $t1, -4416($fp)
	lw $t2, -4420($fp)
	blt $t1, $t2, label212
	j label214
label214:
	li $t0, 3573
	sw $t0, -4424($fp)
	lw $t1, -4424($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -4412($fp)
label213:
	addi $sp, $sp, -4
	lw $t0, -4360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4412($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4428($fp)
	addi $sp, $sp, 20
	lw $t0, -4356($fp)
	lw $t1, -4428($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	addi $t0, $fp, -432
	sw $t0, -4436($fp)
	li $t0, 2
	sw $t0, -4440($fp)
	li $t0, 4
	lw $t1, -4440($fp)
	mul $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	lw $t1, -4436($fp)
	add $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, 0($t0)
	sw $t1, -4452($fp)
	lw $t0, -4432($fp)
	lw $t1, -4452($fp)
	sub $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 65275
	sw $t0, -4496($fp)
	addi $t0, $fp, -4492
	sw $t0, -4500($fp)
	li $t0, 0
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
	li $t0, 10446
	sw $t0, -4520($fp)
	addi $t0, $fp, -4492
	sw $t0, -4524($fp)
	li $t0, 1
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
	li $t0, 7462
	sw $t0, -4544($fp)
	addi $t0, $fp, -4492
	sw $t0, -4548($fp)
	li $t0, 2
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
	li $t0, 22590
	sw $t0, -4568($fp)
	addi $t0, $fp, -4492
	sw $t0, -4572($fp)
	li $t0, 3
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4572($fp)
	lw $t1, -4580($fp)
	add $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4568($fp)
	lw $t1, -4584($fp)
	sw $t0, 0($t1)
	lw $t0, -4584($fp)
	lw $t1, 0($t0)
	sw $t1, -4588($fp)
	li $t0, 7059
	sw $t0, -4592($fp)
	addi $t0, $fp, -4492
	sw $t0, -4596($fp)
	li $t0, 4
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4596($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4592($fp)
	lw $t1, -4608($fp)
	sw $t0, 0($t1)
	lw $t0, -4608($fp)
	lw $t1, 0($t0)
	sw $t1, -4612($fp)
	li $t0, 30853
	sw $t0, -4616($fp)
	addi $t0, $fp, -4492
	sw $t0, -4620($fp)
	li $t0, 5
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4620($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4616($fp)
	lw $t1, -4632($fp)
	sw $t0, 0($t1)
	lw $t0, -4632($fp)
	lw $t1, 0($t0)
	sw $t1, -4636($fp)
	li $t0, 55240
	sw $t0, -4640($fp)
	addi $t0, $fp, -4492
	sw $t0, -4644($fp)
	li $t0, 6
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4644($fp)
	lw $t1, -4652($fp)
	add $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4640($fp)
	lw $t1, -4656($fp)
	sw $t0, 0($t1)
	lw $t0, -4656($fp)
	lw $t1, 0($t0)
	sw $t1, -4660($fp)
	li $t0, 21725
	sw $t0, -4664($fp)
	addi $t0, $fp, -4492
	sw $t0, -4668($fp)
	li $t0, 7
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4668($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4664($fp)
	lw $t1, -4680($fp)
	sw $t0, 0($t1)
	lw $t0, -4680($fp)
	lw $t1, 0($t0)
	sw $t1, -4684($fp)
	li $t0, 17439
	sw $t0, -4688($fp)
	addi $t0, $fp, -4492
	sw $t0, -4692($fp)
	li $t0, 8
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4692($fp)
	lw $t1, -4700($fp)
	add $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4688($fp)
	lw $t1, -4704($fp)
	sw $t0, 0($t1)
	lw $t0, -4704($fp)
	lw $t1, 0($t0)
	sw $t1, -4708($fp)
	li $t0, 33343
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -4720($fp)
	li $t0, 12273
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -4732($fp)
	addi $t0, $fp, -4492
	sw $t0, -4736($fp)
	li $t0, 0
	sw $t0, -4740($fp)
	li $t0, 4
	lw $t1, -4740($fp)
	mul $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	lw $t1, -4736($fp)
	add $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	lw $t1, 0($t0)
	sw $t1, -4752($fp)
	lw $t0, -4752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4492
	sw $t0, -4756($fp)
	li $t0, 1
	sw $t0, -4760($fp)
	li $t0, 4
	lw $t1, -4760($fp)
	mul $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	lw $t1, -4756($fp)
	add $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	lw $t1, 0($t0)
	sw $t1, -4772($fp)
	lw $t0, -4772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4492
	sw $t0, -4776($fp)
	li $t0, 2
	sw $t0, -4780($fp)
	li $t0, 4
	lw $t1, -4780($fp)
	mul $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, 0($t0)
	sw $t1, -4792($fp)
	lw $t0, -4792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4492
	sw $t0, -4796($fp)
	li $t0, 3
	sw $t0, -4800($fp)
	li $t0, 4
	lw $t1, -4800($fp)
	mul $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	lw $t1, -4796($fp)
	add $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, 0($t0)
	sw $t1, -4812($fp)
	lw $t0, -4812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4492
	sw $t0, -4816($fp)
	li $t0, 4
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
	lw $t0, -4832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4492
	sw $t0, -4836($fp)
	li $t0, 5
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
	lw $t0, -4852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4492
	sw $t0, -4856($fp)
	li $t0, 6
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
	lw $t0, -4872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4492
	sw $t0, -4876($fp)
	li $t0, 7
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
	lw $t0, -4892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4492
	sw $t0, -4896($fp)
	li $t0, 8
	sw $t0, -4900($fp)
	li $t0, 4
	lw $t1, -4900($fp)
	mul $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	lw $t1, -4896($fp)
	add $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	lw $t1, 0($t0)
	sw $t1, -4912($fp)
	lw $t0, -4912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4716($fp)
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4728($fp)
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -4924($fp)
	li $t0, 0
	lw $t1, -4924($fp)
	sub $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $ra, -4($fp)
	lw $v0, -4928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4932($fp)
	li $t0, 0
	sw $t0, -4936($fp)
	lw $t0, -3932($fp)
	sw $t0, -4940($fp)
	lw $t1, -4940($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label217:
	li $t0, 1
	sw $t0, -4936($fp)
label218:
	addi $t0, $fp, -356
	sw $t0, -4944($fp)
	lw $t0, -908($fp)
	sw $t0, -4948($fp)
	li $t0, 4
	lw $t1, -4948($fp)
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, -4944($fp)
	add $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, 0($t0)
	sw $t1, -4960($fp)
	lw $t0, -4936($fp)
	lw $t1, -4960($fp)
	mul $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t0, -1532($fp)
	sw $t0, -4968($fp)
	li $t0, 28585
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	mul $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -1604($fp)
	sw $t0, -4980($fp)
	li $t0, 0
	lw $t1, -4980($fp)
	sub $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4976($fp)
	lw $t1, -4984($fp)
	mul $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t1, -4964($fp)
	lw $t2, -4988($fp)
	blt $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -4932($fp)
label216:
	addi $t0, $fp, -132
	sw $t0, -4992($fp)
	lw $t0, -1712($fp)
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
	lw $t0, -3596($fp)
	sw $t0, -5012($fp)
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	sub $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, -4728($fp)
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -5024($fp)
	li $t0, 0
	sw $t0, -5028($fp)
	addi $t0, $fp, -432
	sw $t0, -5032($fp)
	lw $t0, -1340($fp)
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
	li $t0, 35915
	sw $t0, -5052($fp)
	lw $t1, -5048($fp)
	lw $t2, -5052($fp)
	bge $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -5028($fp)
label220:
	li $t0, 0
	sw $t0, -5056($fp)
	lw $t0, -1328($fp)
	sw $t0, -5060($fp)
	li $t0, 41573
	sw $t0, -5064($fp)
	lw $t1, -5060($fp)
	lw $t2, -5064($fp)
	bge $t1, $t2, label221
	j label223
label223:
	lw $t0, -1472($fp)
	sw $t0, -5068($fp)
	lw $t1, -5068($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -5056($fp)
label222:
	addi $sp, $sp, -4
	lw $t0, -5016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5072($fp)
	addi $sp, $sp, 20
	lw $t0, -5072($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -5076($fp)
	li $t0, 31728
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	sw $t0, -5088($fp)
	li $t0, 5670
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	sw $t0, -5100($fp)
	li $t0, 59177
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	sw $t0, -5112($fp)
	li $t0, 20868
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	sw $t0, -5124($fp)
	li $t0, 14436
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	sw $t0, -5136($fp)
	li $t0, 35238
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	sw $t0, -5148($fp)
label224:
	lw $t0, -1628($fp)
	sw $t0, -5152($fp)
	lw $t1, -5152($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 0
	sw $t0, -5156($fp)
	lw $t0, -2816($fp)
	sw $t0, -5160($fp)
	lw $t0, -5084($fp)
	sw $t0, -5164($fp)
	lw $t0, -5160($fp)
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t1, -5168($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label232:
	addi $t0, $fp, -404
	sw $t0, -5172($fp)
	lw $t0, -704($fp)
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
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -5156($fp)
label231:
	lw $t0, -5156($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -5192($fp)
	lw $t1, -5192($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 0
	sw $t0, -5196($fp)
	li $t0, 3514
	sw $t0, -5200($fp)
	lw $t1, -5200($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label236:
	li $t0, 1
	sw $t0, -5196($fp)
label237:
	li $t0, 0
	sw $t0, -5204($fp)
	lw $t0, -2552($fp)
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -5212($fp)
	li $t0, 0
	sw $t0, -5216($fp)
	lw $t0, -1364($fp)
	sw $t0, -5220($fp)
	li $t0, 41456
	sw $t0, -5224($fp)
	lw $t1, -5220($fp)
	lw $t2, -5224($fp)
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -5216($fp)
label241:
	li $t0, 0
	sw $t0, -5228($fp)
	addi $t0, $fp, -432
	sw $t0, -5232($fp)
	lw $t0, -5096($fp)
	sw $t0, -5236($fp)
	li $t0, 4
	lw $t1, -5236($fp)
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, -5232($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	lw $t1, 0($t0)
	sw $t1, -5248($fp)
	li $t0, 15044
	sw $t0, -5252($fp)
	lw $t1, -5248($fp)
	lw $t2, -5252($fp)
	ble $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -5228($fp)
label243:
	lw $t0, 8($fp)
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -5260($fp)
	addi $sp, $sp, -4
	lw $t0, -5212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5264($fp)
	addi $sp, $sp, 20
	lw $t0, 4($fp)
	sw $t0, -5268($fp)
	lw $t1, -5264($fp)
	lw $t2, -5268($fp)
	beq $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -5204($fp)
label239:
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5204($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5272($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5272($fp)
	sub $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t1, -5276($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 28376
	sw $t0, -5280($fp)
	li $t0, 64205
	sw $t0, -5284($fp)
	lw $t0, -5280($fp)
	lw $t1, -5284($fp)
	mul $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -3932($fp)
	sw $t0, -5292($fp)
	lw $t0, -5288($fp)
	lw $t1, -5292($fp)
	sub $t0, $t0, $t1
	sw $t0, -5296($fp)
	addi $t0, $fp, -356
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
	addi $sp, $sp, -4
	lw $t0, -5296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5316($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5320($fp)
	addi $sp, $sp, 12
	j label235
label234:
	lw $t0, -5108($fp)
	sw $t0, -5324($fp)
label235:
	j label229
label228:
	li $t0, 0
	sw $t0, -5328($fp)
	li $t0, 0
	sw $t0, -5332($fp)
	li $t0, 62269
	sw $t0, -5336($fp)
	lw $t0, -896($fp)
	sw $t0, -5340($fp)
	lw $t0, -5336($fp)
	lw $t1, -5340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5344($fp)
	li $t0, 17721
	sw $t0, -5348($fp)
	lw $t0, -5344($fp)
	lw $t1, -5348($fp)
	sub $t0, $t0, $t1
	sw $t0, -5352($fp)
	addi $t0, $fp, -432
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
	lw $t0, -5352($fp)
	lw $t1, -5372($fp)
	add $t0, $t0, $t1
	sw $t0, -5376($fp)
	li $t0, 20588
	sw $t0, -5380($fp)
	li $t0, 47652
	sw $t0, -5384($fp)
	lw $t0, -5380($fp)
	lw $t1, -5384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5388($fp)
	li $t0, 29754
	sw $t0, -5392($fp)
	lw $t0, -5388($fp)
	lw $t1, -5392($fp)
	sub $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5144($fp)
	sw $t0, -5400($fp)
	li $t0, 40050
	sw $t0, -5404($fp)
	lw $t0, -5400($fp)
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	li $t0, 0
	lw $t1, -5408($fp)
	sub $t0, $t0, $t1
	sw $t0, -5412($fp)
	li $t0, 0
	sw $t0, -5416($fp)
	lw $t0, -5120($fp)
	sw $t0, -5420($fp)
	lw $t0, -5132($fp)
	sw $t0, -5424($fp)
	lw $t1, -5420($fp)
	lw $t2, -5424($fp)
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -5416($fp)
label249:
	li $t0, 0
	sw $t0, -5428($fp)
	li $t0, 17460
	sw $t0, -5432($fp)
	li $t0, 13529
	sw $t0, -5436($fp)
	lw $t0, -5432($fp)
	lw $t1, -5436($fp)
	mul $t0, $t0, $t1
	sw $t0, -5440($fp)
	li $t0, 16798
	sw $t0, -5444($fp)
	lw $t1, -5440($fp)
	lw $t2, -5444($fp)
	ble $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -5428($fp)
label251:
	addi $sp, $sp, -4
	lw $t0, -5396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5448($fp)
	addi $sp, $sp, 20
	lw $t1, -5376($fp)
	lw $t2, -5448($fp)
	blt $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -5332($fp)
label247:
	lw $t0, -2768($fp)
	sw $t0, -5452($fp)
	lw $t0, -1352($fp)
	sw $t0, -5456($fp)
	lw $t0, -5452($fp)
	lw $t1, -5456($fp)
	mul $t0, $t0, $t1
	sw $t0, -5460($fp)
	li $t0, 42313
	sw $t0, -5464($fp)
	lw $t0, -5460($fp)
	lw $t1, -5464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5468($fp)
	li $t0, 65091
	sw $t0, -5472($fp)
	li $t0, 0
	lw $t1, -5472($fp)
	sub $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5468($fp)
	lw $t1, -5476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5480($fp)
	lw $t1, -5332($fp)
	lw $t2, -5480($fp)
	bgt $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -5328($fp)
label245:
label229:
	j label224
label226:
	lw $t0, -1568($fp)
	sw $t0, -5484($fp)
	lw $t0, -2792($fp)
	sw $t0, -5488($fp)
	lw $t0, -5484($fp)
	lw $t1, -5488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5492($fp)
	li $t0, 0
	sw $t0, -5496($fp)
	li $t0, 54586
	sw $t0, -5500($fp)
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label255
label255:
	li $t0, 28140
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label254
label254:
	lw $t0, -3812($fp)
	sw $t0, -5508($fp)
	lw $t1, -5508($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -5496($fp)
label253:
	li $t0, 0
	sw $t0, -5512($fp)
	li $t0, 63097
	sw $t0, -5516($fp)
	lw $t0, -3800($fp)
	sw $t0, -5520($fp)
	lw $t1, -5516($fp)
	lw $t2, -5520($fp)
	bne $t1, $t2, label258
	j label257
label258:
	lw $t0, -3968($fp)
	sw $t0, -5524($fp)
	lw $t1, -5524($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -5512($fp)
label257:
	li $t0, 0
	sw $t0, -5528($fp)
	lw $t0, -1616($fp)
	sw $t0, -5532($fp)
	lw $t1, -5532($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label261:
	lw $t0, -3932($fp)
	sw $t0, -5536($fp)
	lw $t1, -5536($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -5528($fp)
label260:
	addi $sp, $sp, -4
	lw $t0, -5492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5540($fp)
	addi $sp, $sp, 20
label262:
	addi $t0, $fp, -432
	sw $t0, -5544($fp)
	li $t0, 0
	sw $t0, -5548($fp)
	li $t0, 4
	lw $t1, -5548($fp)
	mul $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	lw $t1, -5544($fp)
	add $t0, $t0, $t1
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	lw $t1, 0($t0)
	sw $t1, -5560($fp)
	addi $t0, $fp, -432
	sw $t0, -5564($fp)
	lw $t0, -1688($fp)
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -5572($fp)
	li $t0, 4
	lw $t1, -5572($fp)
	mul $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	lw $t1, -5564($fp)
	add $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	lw $t1, 0($t0)
	sw $t1, -5584($fp)
	lw $t0, -5560($fp)
	lw $t1, -5584($fp)
	add $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t1, -5588($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 59869
	sw $t0, -5592($fp)
	lw $t1, -5592($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 44804
	sw $t0, -5616($fp)
	addi $t0, $fp, -5612
	sw $t0, -5620($fp)
	li $t0, 0
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5620($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5616($fp)
	lw $t1, -5632($fp)
	sw $t0, 0($t1)
	lw $t0, -5632($fp)
	lw $t1, 0($t0)
	sw $t1, -5636($fp)
	li $t0, 18607
	sw $t0, -5640($fp)
	addi $t0, $fp, -5612
	sw $t0, -5644($fp)
	li $t0, 1
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5644($fp)
	lw $t1, -5652($fp)
	add $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5640($fp)
	lw $t1, -5656($fp)
	sw $t0, 0($t1)
	lw $t0, -5656($fp)
	lw $t1, 0($t0)
	sw $t1, -5660($fp)
	li $t0, 15201
	sw $t0, -5664($fp)
	addi $t0, $fp, -5612
	sw $t0, -5668($fp)
	li $t0, 2
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5668($fp)
	lw $t1, -5676($fp)
	add $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5664($fp)
	lw $t1, -5680($fp)
	sw $t0, 0($t1)
	lw $t0, -5680($fp)
	lw $t1, 0($t0)
	sw $t1, -5684($fp)
	li $t0, 59241
	sw $t0, -5688($fp)
	addi $t0, $fp, -5612
	sw $t0, -5692($fp)
	li $t0, 3
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5692($fp)
	lw $t1, -5700($fp)
	add $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5688($fp)
	lw $t1, -5704($fp)
	sw $t0, 0($t1)
	lw $t0, -5704($fp)
	lw $t1, 0($t0)
	sw $t1, -5708($fp)
	li $t0, 53845
	sw $t0, -5712($fp)
	addi $t0, $fp, -5612
	sw $t0, -5716($fp)
	li $t0, 4
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5716($fp)
	lw $t1, -5724($fp)
	add $t0, $t0, $t1
	sw $t0, -5728($fp)
	lw $t0, -5712($fp)
	lw $t1, -5728($fp)
	sw $t0, 0($t1)
	lw $t0, -5728($fp)
	lw $t1, 0($t0)
	sw $t1, -5732($fp)
	li $t0, 30246
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	sw $t0, -5744($fp)
	li $t0, 0
	sw $t0, -5748($fp)
	li $t0, 0
	sw $t0, -5752($fp)
	li $t0, 20200
	sw $t0, -5756($fp)
	lw $t0, -3824($fp)
	sw $t0, -5760($fp)
	lw $t0, -5756($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	li $t0, 21486
	sw $t0, -5768($fp)
	lw $t0, -5764($fp)
	lw $t1, -5768($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5740($fp)
	sw $t0, -5776($fp)
	li $t0, 0
	lw $t1, -5776($fp)
	sub $t0, $t0, $t1
	sw $t0, -5780($fp)
	li $t0, 57360
	sw $t0, -5784($fp)
	li $t0, 22816
	sw $t0, -5788($fp)
	lw $t0, -5784($fp)
	lw $t1, -5788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5792($fp)
	li $t0, 14654
	sw $t0, -5796($fp)
	lw $t0, -5792($fp)
	lw $t1, -5796($fp)
	add $t0, $t0, $t1
	sw $t0, -5800($fp)
	li $t0, 0
	sw $t0, -5804($fp)
	lw $t0, -3872($fp)
	sw $t0, -5808($fp)
	li $t0, 35161
	sw $t0, -5812($fp)
	lw $t0, -5808($fp)
	lw $t1, -5812($fp)
	sub $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t1, -5816($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label274:
	lw $t0, -3020($fp)
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -5804($fp)
label273:
	addi $sp, $sp, -4
	lw $t0, -5772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5804($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5824($fp)
	addi $sp, $sp, 20
	lw $t1, -5824($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -5752($fp)
label271:
	li $t0, 0
	lw $t1, -5752($fp)
	sub $t0, $t0, $t1
	sw $t0, -5828($fp)
	lw $t1, -5828($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -5748($fp)
label269:
	li $t0, 0
	lw $t1, -5748($fp)
	sub $t0, $t0, $t1
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	li $t0, 0
	sw $t0, -5840($fp)
	li $t0, 0
	sw $t0, -5844($fp)
	li $t0, 0
	sw $t0, -5848($fp)
	lw $t0, -3368($fp)
	sw $t0, -5852($fp)
	lw $t0, -1508($fp)
	sw $t0, -5856($fp)
	lw $t1, -5852($fp)
	lw $t2, -5856($fp)
	beq $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -5848($fp)
label283:
	lw $t0, -704($fp)
	sw $t0, -5860($fp)
	lw $t1, -5848($fp)
	lw $t2, -5860($fp)
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -5844($fp)
label281:
	li $t0, 11388
	sw $t0, -5864($fp)
	lw $t0, -3272($fp)
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
	lw $t1, -5844($fp)
	lw $t2, -5872($fp)
	bne $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -5840($fp)
label279:
	lw $t0, -3008($fp)
	sw $t0, -5876($fp)
	li $t0, 37922
	sw $t0, -5880($fp)
	lw $t0, -5876($fp)
	lw $t1, -5880($fp)
	add $t0, $t0, $t1
	sw $t0, -5884($fp)
	li $t0, 24568
	sw $t0, -5888($fp)
	lw $t0, -5884($fp)
	lw $t1, -5888($fp)
	sub $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t1, -5840($fp)
	lw $t2, -5892($fp)
	bne $t1, $t2, label275
	j label277
label277:
	li $t0, 20724
	sw $t0, -5896($fp)
	lw $t0, -1556($fp)
	sw $t0, -5900($fp)
	li $t0, 0
	lw $t1, -5900($fp)
	sub $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5896($fp)
	lw $t1, -5904($fp)
	mul $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -5836($fp)
label276:
	li $t0, 0
	sw $t0, -5912($fp)
	li $t0, 0
	sw $t0, -5916($fp)
	li $t0, 55382
	sw $t0, -5920($fp)
	li $t0, 38097
	sw $t0, -5924($fp)
	lw $t0, -5920($fp)
	lw $t1, -5924($fp)
	add $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -716($fp)
	sw $t0, -5932($fp)
	addi $sp, $sp, -4
	lw $t0, -5928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5936($fp)
	addi $sp, $sp, 12
	lw $t1, -5936($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -5916($fp)
label289:
	li $t0, 0
	sw $t0, -5940($fp)
	li $t0, 58685
	sw $t0, -5944($fp)
	lw $t0, -920($fp)
	sw $t0, -5948($fp)
	lw $t0, -5944($fp)
	lw $t1, -5948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5952($fp)
	lw $t1, -5952($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label292
label292:
	lw $t0, -2756($fp)
	sw $t0, -5956($fp)
	lw $t1, -5956($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -5940($fp)
label291:
	addi $t0, $fp, -5612
	sw $t0, -5960($fp)
	lw $t0, -1580($fp)
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
	li $t0, 37522
	sw $t0, -5980($fp)
	addi $sp, $sp, -4
	lw $t0, -5976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5984($fp)
	addi $sp, $sp, 12
	li $t0, 29897
	sw $t0, -5988($fp)
	lw $t0, -5984($fp)
	lw $t1, -5988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5992($fp)
	lw $t0, -1712($fp)
	sw $t0, -5996($fp)
	li $t0, 0
	sw $t0, -6000($fp)
	li $t0, 0
	sw $t0, -6004($fp)
	lw $t0, -3920($fp)
	sw $t0, -6008($fp)
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -6004($fp)
label296:
	lw $t0, -1592($fp)
	sw $t0, -6012($fp)
	lw $t1, -6004($fp)
	lw $t2, -6012($fp)
	bgt $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -6000($fp)
label294:
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6000($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6016($fp)
	addi $sp, $sp, 20
	lw $t0, -5916($fp)
	lw $t1, -6016($fp)
	mul $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t1, -6020($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label287
label287:
	addi $t0, $fp, -204
	sw $t0, -6024($fp)
	lw $t0, -3884($fp)
	sw $t0, -6028($fp)
	li $t0, 4
	lw $t1, -6028($fp)
	mul $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	lw $t1, -6024($fp)
	add $t0, $t0, $t1
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	lw $t1, 0($t0)
	sw $t1, -6040($fp)
	lw $t0, -3836($fp)
	sw $t0, -6044($fp)
	lw $t0, -6040($fp)
	lw $t1, -6044($fp)
	mul $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t1, -6048($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label286
label286:
	lw $t0, -1568($fp)
	sw $t0, -6052($fp)
	li $t0, 19638
	sw $t0, -6056($fp)
	lw $t0, -6052($fp)
	lw $t1, -6056($fp)
	mul $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t1, -6060($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -5912($fp)
label285:
	j label267
label266:
	lw $t0, -2708($fp)
	sw $t0, -6064($fp)
	lw $t0, -908($fp)
	sw $t0, -6068($fp)
	lw $t0, -6064($fp)
	lw $t1, -6068($fp)
	sub $t0, $t0, $t1
	sw $t0, -6072($fp)
	li $t0, 0
	sw $t0, -6076($fp)
	addi $t0, $fp, -72
	sw $t0, -6080($fp)
	li $t0, 2
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
	li $t0, 19193
	sw $t0, -6100($fp)
	lw $t0, -6096($fp)
	lw $t1, -6100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6104($fp)
	li $t0, 57213
	sw $t0, -6108($fp)
	li $t0, 24513
	sw $t0, -6112($fp)
	lw $t0, -6108($fp)
	lw $t1, -6112($fp)
	sub $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t1, -6104($fp)
	lw $t2, -6116($fp)
	bge $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -6076($fp)
label301:
	lw $t1, -6072($fp)
	lw $t2, -6076($fp)
	beq $t1, $t2, label297
	j label298
label297:
	li $t0, 0
	sw $t0, -6120($fp)
	li $t0, 41667
	sw $t0, -6124($fp)
	lw $t1, -6124($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label304
label304:
	lw $t0, -920($fp)
	sw $t0, -6128($fp)
	lw $t1, -6128($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -6120($fp)
label303:
	li $t0, 0
	sw $t0, -6132($fp)
	lw $t0, -1616($fp)
	sw $t0, -6136($fp)
	lw $t1, -6136($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label308:
	li $t0, 30811
	sw $t0, -6140($fp)
	lw $t1, -6140($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label307
label307:
	li $t0, 49479
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -6132($fp)
label306:
	addi $t0, $fp, -44
	sw $t0, -6148($fp)
	lw $t0, -896($fp)
	sw $t0, -6152($fp)
	li $t0, 4
	lw $t1, -6152($fp)
	mul $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	lw $t1, -6148($fp)
	add $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	lw $t1, 0($t0)
	sw $t1, -6164($fp)
	lw $t0, -908($fp)
	sw $t0, -6168($fp)
	lw $t0, -6164($fp)
	lw $t1, -6168($fp)
	add $t0, $t0, $t1
	sw $t0, -6172($fp)
	li $t0, 47334
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -6180($fp)
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6180($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6184($fp)
	addi $sp, $sp, 20
	j label299
label298:
	addi $t0, $fp, -108
	sw $t0, -6188($fp)
	li $t0, 0
	sw $t0, -6192($fp)
	addi $t0, $fp, -4492
	sw $t0, -6196($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -6216($fp)
	lw $t0, 4($fp)
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
	lw $t0, -692($fp)
	sw $t0, -6236($fp)
	li $t0, 0
	lw $t1, -6236($fp)
	sub $t0, $t0, $t1
	sw $t0, -6240($fp)
	li $t0, 56868
	sw $t0, -6244($fp)
	lw $t0, -6240($fp)
	lw $t1, -6244($fp)
	add $t0, $t0, $t1
	sw $t0, -6248($fp)
	addi $sp, $sp, -4
	lw $t0, -6232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6248($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6252($fp)
	addi $sp, $sp, 12
	lw $t1, -6212($fp)
	lw $t2, -6252($fp)
	beq $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -6192($fp)
label310:
	li $t0, 4
	lw $t1, -6192($fp)
	mul $t0, $t0, $t1
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	lw $t1, -6188($fp)
	add $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	lw $t1, 0($t0)
	sw $t1, -6264($fp)
label299:
label267:
	j label262
label264:
label201:
	addi $t0, $fp, -124
	sw $t0, -6268($fp)
	li $t0, 0
	sw $t0, -6272($fp)
	li $t0, 345
	sw $t0, -6276($fp)
	lw $t0, -2708($fp)
	sw $t0, -6280($fp)
	lw $t0, -6276($fp)
	lw $t1, -6280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6284($fp)
	lw $t0, -3956($fp)
	sw $t0, -6288($fp)
	lw $t1, -6284($fp)
	lw $t2, -6288($fp)
	blt $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -6272($fp)
label315:
	li $t0, 0
	sw $t0, -6292($fp)
	li $t0, 0
	sw $t0, -6296($fp)
	li $t0, 53600
	sw $t0, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label321
label321:
	li $t0, 2884
	sw $t0, -6304($fp)
	lw $t1, -6304($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label320
label320:
	lw $t0, -1652($fp)
	sw $t0, -6308($fp)
	lw $t1, -6308($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -6296($fp)
label319:
	lw $t0, -908($fp)
	sw $t0, -6312($fp)
	lw $t0, -1628($fp)
	sw $t0, -6316($fp)
	lw $t0, -6312($fp)
	lw $t1, -6316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6320($fp)
	lw $t0, -2780($fp)
	sw $t0, -6324($fp)
	lw $t0, -6320($fp)
	lw $t1, -6324($fp)
	mul $t0, $t0, $t1
	sw $t0, -6328($fp)
	li $t0, 0
	sw $t0, -6332($fp)
	lw $t0, -1640($fp)
	sw $t0, -6336($fp)
	lw $t1, -6336($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label322:
	li $t0, 1
	sw $t0, -6332($fp)
label323:
	li $t0, 44395
	sw $t0, -6340($fp)
	lw $t0, -6332($fp)
	lw $t1, -6340($fp)
	mul $t0, $t0, $t1
	sw $t0, -6344($fp)
	li $t0, 0
	sw $t0, -6348($fp)
	lw $t0, -1364($fp)
	sw $t0, -6352($fp)
	li $t0, 48219
	sw $t0, -6356($fp)
	lw $t0, -6352($fp)
	lw $t1, -6356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6360($fp)
	lw $t0, -1628($fp)
	sw $t0, -6364($fp)
	lw $t1, -6360($fp)
	lw $t2, -6364($fp)
	blt $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -6348($fp)
label325:
	addi $sp, $sp, -4
	lw $t0, -6296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6368($fp)
	addi $sp, $sp, 20
	lw $t1, -6368($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label316:
	li $t0, 1
	sw $t0, -6292($fp)
label317:
	li $t0, 38946
	sw $t0, -6372($fp)
	lw $t0, -1616($fp)
	sw $t0, -6376($fp)
	addi $t0, $fp, -204
	sw $t0, -6380($fp)
	lw $t0, -1604($fp)
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
	li $t0, 21578
	sw $t0, -6400($fp)
	lw $t0, -6396($fp)
	lw $t1, -6400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6404($fp)
	li $t0, 56395
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -6412($fp)
	li $t0, 0
	sw $t0, -6416($fp)
	li $t0, 3785
	sw $t0, -6420($fp)
	lw $t1, -6420($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -6416($fp)
label327:
	addi $sp, $sp, -4
	lw $t0, -6376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6416($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6424($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -6272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6424($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6428($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -6428($fp)
	mul $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	lw $t1, -6268($fp)
	add $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	lw $t1, 0($t0)
	sw $t1, -6440($fp)
	li $t0, 0
	sw $t0, -6444($fp)
	li $t0, 64988
	sw $t0, -6448($fp)
	lw $t1, -6448($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label328:
	li $t0, 1
	sw $t0, -6444($fp)
label329:
	lw $t0, -1664($fp)
	sw $t0, -6452($fp)
	lw $t0, -6444($fp)
	lw $t1, -6452($fp)
	mul $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t1, -6440($fp)
	lw $t2, -6456($fp)
	bgt $t1, $t2, label311
	j label312
label311:
	addi $t0, $fp, -204
	sw $t0, -6460($fp)
	li $t0, 0
	sw $t0, -6464($fp)
	lw $t0, -1244($fp)
	sw $t0, -6468($fp)
	lw $t1, -6468($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label335
label335:
	li $t0, 40806
	sw $t0, -6472($fp)
	li $t0, 24913
	sw $t0, -6476($fp)
	lw $t1, -6472($fp)
	lw $t2, -6476($fp)
	bge $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -6464($fp)
label334:
	li $t0, 4
	lw $t1, -6464($fp)
	mul $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	lw $t1, -6460($fp)
	add $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	lw $t1, 0($t0)
	sw $t1, -6488($fp)
	lw $t1, -6488($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 0
	sw $t0, -6492($fp)
	li $t0, 0
	sw $t0, -6496($fp)
	lw $t0, -1676($fp)
	sw $t0, -6500($fp)
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label339
label339:
	li $t0, 1
	sw $t0, -6496($fp)
label340:
	li $t0, 0
	lw $t1, -6496($fp)
	sub $t0, $t0, $t1
	sw $t0, -6504($fp)
	li $t0, 0
	lw $t1, -6504($fp)
	sub $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t1, -6508($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label337
label338:
	li $t0, 20176
	sw $t0, -6512($fp)
	lw $t0, -3872($fp)
	sw $t0, -6516($fp)
	lw $t0, -6512($fp)
	lw $t1, -6516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6520($fp)
	lw $t0, -1604($fp)
	sw $t0, -6524($fp)
	lw $t0, -1688($fp)
	sw $t0, -6528($fp)
	lw $t0, -6524($fp)
	lw $t1, -6528($fp)
	sub $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t1, -6520($fp)
	lw $t2, -6532($fp)
	ble $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -6492($fp)
label337:
	j label332
label331:
	li $t0, 30652
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	sw $t0, -6588($fp)
	li $t0, 63011
	sw $t0, -6592($fp)
	addi $t0, $fp, -6552
	sw $t0, -6596($fp)
	li $t0, 0
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6596($fp)
	lw $t1, -6604($fp)
	add $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t0, -6592($fp)
	lw $t1, -6608($fp)
	sw $t0, 0($t1)
	lw $t0, -6608($fp)
	lw $t1, 0($t0)
	sw $t1, -6612($fp)
	li $t0, 57699
	sw $t0, -6616($fp)
	addi $t0, $fp, -6552
	sw $t0, -6620($fp)
	li $t0, 1
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -6620($fp)
	lw $t1, -6628($fp)
	add $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6616($fp)
	lw $t1, -6632($fp)
	sw $t0, 0($t1)
	lw $t0, -6632($fp)
	lw $t1, 0($t0)
	sw $t1, -6636($fp)
	li $t0, 60549
	sw $t0, -6640($fp)
	addi $t0, $fp, -6552
	sw $t0, -6644($fp)
	li $t0, 2
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -6644($fp)
	lw $t1, -6652($fp)
	add $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t0, -6640($fp)
	lw $t1, -6656($fp)
	sw $t0, 0($t1)
	lw $t0, -6656($fp)
	lw $t1, 0($t0)
	sw $t1, -6660($fp)
	li $t0, 56160
	sw $t0, -6664($fp)
	addi $t0, $fp, -6552
	sw $t0, -6668($fp)
	li $t0, 3
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t0, -6668($fp)
	lw $t1, -6676($fp)
	add $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6664($fp)
	lw $t1, -6680($fp)
	sw $t0, 0($t1)
	lw $t0, -6680($fp)
	lw $t1, 0($t0)
	sw $t1, -6684($fp)
	li $t0, 11801
	sw $t0, -6688($fp)
	addi $t0, $fp, -6552
	sw $t0, -6692($fp)
	li $t0, 4
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6692($fp)
	lw $t1, -6700($fp)
	add $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6688($fp)
	lw $t1, -6704($fp)
	sw $t0, 0($t1)
	lw $t0, -6704($fp)
	lw $t1, 0($t0)
	sw $t1, -6708($fp)
	li $t0, 54665
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	sw $t0, -6720($fp)
	li $t0, 26087
	sw $t0, -6724($fp)
	addi $t0, $fp, -6576
	sw $t0, -6728($fp)
	li $t0, 0
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
	li $t0, 30995
	sw $t0, -6748($fp)
	addi $t0, $fp, -6576
	sw $t0, -6752($fp)
	li $t0, 1
	sw $t0, -6756($fp)
	lw $t0, -6756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6752($fp)
	lw $t1, -6760($fp)
	add $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6748($fp)
	lw $t1, -6764($fp)
	sw $t0, 0($t1)
	lw $t0, -6764($fp)
	lw $t1, 0($t0)
	sw $t1, -6768($fp)
	li $t0, 46342
	sw $t0, -6772($fp)
	addi $t0, $fp, -6576
	sw $t0, -6776($fp)
	li $t0, 2
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6776($fp)
	lw $t1, -6784($fp)
	add $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t0, -6772($fp)
	lw $t1, -6788($fp)
	sw $t0, 0($t1)
	lw $t0, -6788($fp)
	lw $t1, 0($t0)
	sw $t1, -6792($fp)
	li $t0, 50601
	sw $t0, -6796($fp)
	addi $t0, $fp, -6576
	sw $t0, -6800($fp)
	li $t0, 3
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6808($fp)
	lw $t0, -6800($fp)
	lw $t1, -6808($fp)
	add $t0, $t0, $t1
	sw $t0, -6812($fp)
	lw $t0, -6796($fp)
	lw $t1, -6812($fp)
	sw $t0, 0($t1)
	lw $t0, -6812($fp)
	lw $t1, 0($t0)
	sw $t1, -6816($fp)
	li $t0, 12793
	sw $t0, -6820($fp)
	addi $t0, $fp, -6576
	sw $t0, -6824($fp)
	li $t0, 4
	sw $t0, -6828($fp)
	lw $t0, -6828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t0, -6824($fp)
	lw $t1, -6832($fp)
	add $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6820($fp)
	lw $t1, -6836($fp)
	sw $t0, 0($t1)
	lw $t0, -6836($fp)
	lw $t1, 0($t0)
	sw $t1, -6840($fp)
	li $t0, 11617
	sw $t0, -6844($fp)
	addi $t0, $fp, -6576
	sw $t0, -6848($fp)
	li $t0, 5
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6848($fp)
	lw $t1, -6856($fp)
	add $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6844($fp)
	lw $t1, -6860($fp)
	sw $t0, 0($t1)
	lw $t0, -6860($fp)
	lw $t1, 0($t0)
	sw $t1, -6864($fp)
	li $t0, 34544
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	sw $t0, -6876($fp)
	lw $t0, -1712($fp)
	sw $t0, -6880($fp)
	lw $t0, -1700($fp)
	sw $t0, -6884($fp)
	lw $t0, -6880($fp)
	lw $t1, -6884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6888($fp)
	li $t0, 0
	lw $t1, -6888($fp)
	sub $t0, $t0, $t1
	sw $t0, -6892($fp)
	li $t0, 54460
	sw $t0, -6896($fp)
	lw $t0, -1628($fp)
	sw $t0, -6900($fp)
	lw $t0, -6896($fp)
	lw $t1, -6900($fp)
	mul $t0, $t0, $t1
	sw $t0, -6904($fp)
	li $t0, 0
	lw $t1, -6904($fp)
	sub $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6892($fp)
	lw $t1, -6908($fp)
	sub $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t1, -6912($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label342
label344:
	li $t0, 21697
	sw $t0, -6916($fp)
	lw $t1, -6916($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
label345:
	addi $t0, $fp, -176
	sw $t0, -6920($fp)
	lw $t0, -1916($fp)
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
	li $t0, 0
	sw $t0, -6940($fp)
	lw $t0, -6584($fp)
	sw $t0, -6944($fp)
	lw $t1, -6944($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label348:
	li $t0, 1
	sw $t0, -6940($fp)
label349:
	li $t0, 25482
	sw $t0, -6948($fp)
	lw $t0, -6940($fp)
	lw $t1, -6948($fp)
	sub $t0, $t0, $t1
	sw $t0, -6952($fp)
	li $t0, 45792
	sw $t0, -6956($fp)
	lw $t0, -1712($fp)
	sw $t0, -6960($fp)
	lw $t0, -6956($fp)
	lw $t1, -6960($fp)
	mul $t0, $t0, $t1
	sw $t0, -6964($fp)
	li $t0, 0
	lw $t1, -6964($fp)
	sub $t0, $t0, $t1
	sw $t0, -6968($fp)
	li $t0, 37094
	sw $t0, -6972($fp)
	addi $sp, $sp, -4
	lw $t0, -6936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6972($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6976($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -6980($fp)
	lw $t0, -3932($fp)
	sw $t0, -6984($fp)
	li $t0, 52493
	sw $t0, -6988($fp)
	lw $t0, -6984($fp)
	lw $t1, -6988($fp)
	add $t0, $t0, $t1
	sw $t0, -6992($fp)
	addi $t0, $fp, -6552
	sw $t0, -6996($fp)
	lw $t0, -1520($fp)
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
	li $t0, 0
	sw $t0, -7016($fp)
	li $t0, 0
	sw $t0, -7020($fp)
	lw $t0, -1580($fp)
	sw $t0, -7024($fp)
	li $t0, 64428
	sw $t0, -7028($fp)
	lw $t1, -7024($fp)
	lw $t2, -7028($fp)
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -7020($fp)
label355:
	li $t0, 10637
	sw $t0, -7032($fp)
	lw $t1, -7020($fp)
	lw $t2, -7032($fp)
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -7016($fp)
label353:
	li $t0, 0
	sw $t0, -7036($fp)
	addi $t0, $fp, -404
	sw $t0, -7040($fp)
	lw $t0, -1928($fp)
	sw $t0, -7044($fp)
	li $t0, 4
	lw $t1, -7044($fp)
	mul $t0, $t0, $t1
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	lw $t1, -7040($fp)
	add $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	lw $t1, 0($t0)
	sw $t1, -7056($fp)
	li $t0, 1835
	sw $t0, -7060($fp)
	lw $t1, -7056($fp)
	lw $t2, -7060($fp)
	beq $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -7036($fp)
label357:
	li $t0, 0
	sw $t0, -7064($fp)
	lw $t0, -1652($fp)
	sw $t0, -7068($fp)
	li $t0, 27953
	sw $t0, -7072($fp)
	lw $t1, -7068($fp)
	lw $t2, -7072($fp)
	beq $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -7064($fp)
label359:
	addi $sp, $sp, -4
	lw $t0, -7012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7076($fp)
	addi $sp, $sp, 20
	li $t0, 46230
	sw $t0, -7080($fp)
	lw $t0, -7076($fp)
	lw $t1, -7080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7084($fp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7084($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7088($fp)
	addi $sp, $sp, 12
	lw $t1, -7088($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -6980($fp)
label351:
	lw $t0, -6976($fp)
	lw $t1, -6980($fp)
	mul $t0, $t0, $t1
	sw $t0, -7092($fp)
	lw $t1, -7092($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 0
	sw $t0, -7096($fp)
	addi $t0, $fp, -176
	sw $t0, -7100($fp)
	lw $t0, -2708($fp)
	sw $t0, -7104($fp)
	li $t0, 13521
	sw $t0, -7108($fp)
	lw $t0, -7104($fp)
	lw $t1, -7108($fp)
	mul $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t0, -6716($fp)
	sw $t0, -7116($fp)
	lw $t0, -7112($fp)
	lw $t1, -7116($fp)
	mul $t0, $t0, $t1
	sw $t0, -7120($fp)
	li $t0, 4
	lw $t1, -7120($fp)
	mul $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	lw $t1, -7100($fp)
	add $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	lw $t1, 0($t0)
	sw $t1, -7132($fp)
	lw $t1, -7132($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label361
label362:
	addi $t0, $fp, -368
	sw $t0, -7136($fp)
	lw $t0, -2804($fp)
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
	li $t0, 46575
	sw $t0, -7156($fp)
	li $t0, 0
	lw $t1, -7156($fp)
	sub $t0, $t0, $t1
	sw $t0, -7160($fp)
	lw $t0, -7152($fp)
	lw $t1, -7160($fp)
	add $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t1, -7164($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -7096($fp)
label361:
	j label345
label347:
	j label343
label342:
label363:
	addi $t0, $fp, -6576
	sw $t0, -7168($fp)
	li $t0, 0
	sw $t0, -7172($fp)
	lw $t0, -1604($fp)
	sw $t0, -7176($fp)
	lw $t1, -7176($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label368
label369:
	lw $t0, -716($fp)
	sw $t0, -7180($fp)
	lw $t1, -7180($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label368
label368:
	lw $t0, -3368($fp)
	sw $t0, -7184($fp)
	lw $t1, -7184($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -7172($fp)
label367:
	li $t0, 4
	lw $t1, -7172($fp)
	mul $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	lw $t1, -7168($fp)
	add $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	lw $t1, 0($t0)
	sw $t1, -7196($fp)
	li $t0, 51945
	sw $t0, -7200($fp)
	lw $t1, -7196($fp)
	lw $t2, -7200($fp)
	ble $t1, $t2, label364
	j label365
label364:
	lw $t0, -6872($fp)
	sw $t0, -7204($fp)
	li $t0, 0
	lw $t1, -7204($fp)
	sub $t0, $t0, $t1
	sw $t0, -7208($fp)
	li $t0, 0
	lw $t1, -7208($fp)
	sub $t0, $t0, $t1
	sw $t0, -7212($fp)
	addi $t0, $fp, -432
	sw $t0, -7216($fp)
	lw $t0, -3908($fp)
	sw $t0, -7220($fp)
	li $t0, 54327
	sw $t0, -7224($fp)
	lw $t0, -7220($fp)
	lw $t1, -7224($fp)
	sub $t0, $t0, $t1
	sw $t0, -7228($fp)
	li $t0, 4
	lw $t1, -7228($fp)
	mul $t0, $t0, $t1
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	lw $t1, -7216($fp)
	add $t0, $t0, $t1
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	lw $t1, 0($t0)
	sw $t1, -7240($fp)
	lw $t0, -7212($fp)
	lw $t1, -7240($fp)
	add $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $ra, -4($fp)
	lw $v0, -7244($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label363
label365:
label343:
label332:
	j label313
label312:
	addi $t0, $fp, -384
	sw $t0, -7248($fp)
	li $t0, 2
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
	addi $t0, $fp, -400
	sw $t0, -7268($fp)
	lw $t0, -1460($fp)
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
	lw $t0, -7264($fp)
	lw $t1, -7284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7288($fp)
	lw $t1, -7288($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label371
label373:
	li $t0, 19443
	sw $t0, -7292($fp)
	addi $t0, $fp, -108
	sw $t0, -7296($fp)
	li $t0, 8
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
	lw $t0, -7292($fp)
	lw $t1, -7312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7316($fp)
	lw $t1, -7316($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 0
	sw $t0, -7320($fp)
	li $t0, 14457
	sw $t0, -7324($fp)
	lw $t1, -7324($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label374:
	li $t0, 1
	sw $t0, -7320($fp)
label375:
	li $t0, 59588
	sw $t0, -7328($fp)
	lw $t0, -7320($fp)
	lw $t1, -7328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7332($fp)
	j label372
label371:
	li $t0, 0
	sw $t0, -7336($fp)
	lw $t0, -3596($fp)
	sw $t0, -7340($fp)
	lw $t0, -1604($fp)
	sw $t0, -7344($fp)
	lw $t1, -7340($fp)
	lw $t2, -7344($fp)
	bge $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -7336($fp)
label377:
	lw $t0, -7336($fp)
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	sw $t0, -7352($fp)
label372:
label313:
	li $t0, 10550
	sw $t0, -7356($fp)
	addi $t0, $fp, -288
	sw $t0, -7360($fp)
	lw $t0, -3584($fp)
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
	lw $t0, -7356($fp)
	lw $t1, -7376($fp)
	mul $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t1, -7380($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 0
	sw $t0, -7384($fp)
	li $t0, 0
	sw $t0, -7388($fp)
	addi $t0, $fp, -420
	sw $t0, -7392($fp)
	lw $t0, 4($fp)
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
	lw $t1, -7408($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label385
label386:
	li $t0, 49928
	sw $t0, -7412($fp)
	lw $t1, -7412($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -7388($fp)
label385:
	addi $t0, $fp, -404
	sw $t0, -7416($fp)
	lw $t0, -3812($fp)
	sw $t0, -7420($fp)
	li $t0, 4
	lw $t1, -7420($fp)
	mul $t0, $t0, $t1
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	lw $t1, -7416($fp)
	add $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, 0($t0)
	sw $t1, -7432($fp)
	li $t0, 41545
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	sw $t0, -7440($fp)
	li $t0, 0
	sw $t0, -7444($fp)
	li $t0, 3586
	sw $t0, -7448($fp)
	li $t0, 0
	lw $t1, -7448($fp)
	sub $t0, $t0, $t1
	sw $t0, -7452($fp)
	li $t0, 20139
	sw $t0, -7456($fp)
	lw $t1, -7452($fp)
	lw $t2, -7456($fp)
	ble $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -7444($fp)
label388:
	addi $sp, $sp, -4
	lw $t0, -7388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7444($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7460($fp)
	addi $sp, $sp, 20
	lw $t1, -7460($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label382
label383:
	addi $t0, $fp, -264
	sw $t0, -7464($fp)
	li $t0, 1
	sw $t0, -7468($fp)
	li $t0, 4
	lw $t1, -7468($fp)
	mul $t0, $t0, $t1
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	lw $t1, -7464($fp)
	add $t0, $t0, $t1
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	lw $t1, 0($t0)
	sw $t1, -7480($fp)
	lw $t0, -1508($fp)
	sw $t0, -7484($fp)
	li $t0, 0
	lw $t1, -7484($fp)
	sub $t0, $t0, $t1
	sw $t0, -7488($fp)
	lw $t0, -7480($fp)
	lw $t1, -7488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7492($fp)
	li $t0, 0
	lw $t1, -7492($fp)
	sub $t0, $t0, $t1
	sw $t0, -7496($fp)
	lw $t1, -7496($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -7384($fp)
label382:
	lw $ra, -4($fp)
	lw $v0, -7384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label380
label379:
	li $t0, 11306
	sw $t0, -7500($fp)
	lw $t0, -2552($fp)
	sw $t0, -7504($fp)
	lw $t0, -7500($fp)
	lw $t1, -7504($fp)
	add $t0, $t0, $t1
	sw $t0, -7508($fp)
	lw $t0, -1580($fp)
	sw $t0, -7512($fp)
	lw $t0, -7508($fp)
	lw $t1, -7512($fp)
	sub $t0, $t0, $t1
	sw $t0, -7516($fp)
	li $t0, 0
	sw $t0, -7520($fp)
	li $t0, 17707
	sw $t0, -7524($fp)
	lw $t0, -2540($fp)
	sw $t0, -7528($fp)
	lw $t0, -7524($fp)
	lw $t1, -7528($fp)
	sub $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t0, -3920($fp)
	sw $t0, -7536($fp)
	lw $t1, -7532($fp)
	lw $t2, -7536($fp)
	beq $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -7520($fp)
label393:
	lw $t0, -2516($fp)
	sw $t0, -7540($fp)
	lw $t0, -2528($fp)
	sw $t0, -7544($fp)
	lw $t0, -7540($fp)
	lw $t1, -7544($fp)
	mul $t0, $t0, $t1
	sw $t0, -7548($fp)
	li $t0, 43262
	sw $t0, -7552($fp)
	lw $t0, -7548($fp)
	lw $t1, -7552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7556($fp)
	lw $t0, -1472($fp)
	sw $t0, -7560($fp)
	li $t0, 0
	lw $t1, -7560($fp)
	sub $t0, $t0, $t1
	sw $t0, -7564($fp)
	li $t0, 39748
	sw $t0, -7568($fp)
	lw $t0, -7564($fp)
	lw $t1, -7568($fp)
	add $t0, $t0, $t1
	sw $t0, -7572($fp)
	addi $sp, $sp, -4
	lw $t0, -7516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7576($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -7580($fp)
	li $t0, 61545
	sw $t0, -7584($fp)
	lw $t0, -3800($fp)
	sw $t0, -7588($fp)
	lw $t0, -7584($fp)
	lw $t1, -7588($fp)
	sub $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t1, -7592($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label396:
	lw $t0, -896($fp)
	sw $t0, -7596($fp)
	lw $t1, -7596($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -7580($fp)
label395:
	addi $sp, $sp, -4
	lw $t0, -7576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7580($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7600($fp)
	addi $sp, $sp, 12
	li $t0, 23519
	sw $t0, -7604($fp)
	lw $t0, -7600($fp)
	lw $t1, -7604($fp)
	mul $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t1, -7608($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label390
label389:
	li $t0, 43189
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	sw $t0, -7620($fp)
	li $t0, 39260
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	sw $t0, -7632($fp)
	addi $t0, $fp, -144
	sw $t0, -7636($fp)
	lw $t0, -1340($fp)
	sw $t0, -7640($fp)
	lw $t0, -7616($fp)
	sw $t0, -7644($fp)
	lw $t0, -7640($fp)
	lw $t1, -7644($fp)
	sub $t0, $t0, $t1
	sw $t0, -7648($fp)
	li $t0, 4
	lw $t1, -7648($fp)
	mul $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	lw $t1, -7636($fp)
	add $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	lw $t1, 0($t0)
	sw $t1, -7660($fp)
	lw $t1, -7660($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	addi $t0, $fp, -356
	sw $t0, -7664($fp)
	lw $t0, -2780($fp)
	sw $t0, -7668($fp)
	li $t0, 49897
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -7676($fp)
	li $t0, 0
	sw $t0, -7680($fp)
	li $t0, 42082
	sw $t0, -7684($fp)
	lw $t0, -2108($fp)
	sw $t0, -7688($fp)
	lw $t1, -7684($fp)
	lw $t2, -7688($fp)
	bne $t1, $t2, label403
	j label405
label405:
	lw $t0, -1580($fp)
	sw $t0, -7692($fp)
	lw $t1, -7692($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -7680($fp)
label404:
	li $t0, 0
	sw $t0, -7696($fp)
	li $t0, 25354
	sw $t0, -7700($fp)
	lw $t1, -7700($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label406:
	li $t0, 1
	sw $t0, -7696($fp)
label407:
	lw $t0, -7628($fp)
	sw $t0, -7704($fp)
	lw $t0, -7696($fp)
	lw $t1, -7704($fp)
	mul $t0, $t0, $t1
	sw $t0, -7708($fp)
	addi $sp, $sp, -4
	lw $t0, -7668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7712($fp)
	addi $sp, $sp, 20
	li $t0, 6048
	sw $t0, -7716($fp)
	lw $t0, -7712($fp)
	lw $t1, -7716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7720($fp)
	li $t0, 0
	sw $t0, -7724($fp)
	li $t0, 29039
	sw $t0, -7728($fp)
	lw $t1, -7728($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label408:
	li $t0, 1
	sw $t0, -7724($fp)
label409:
	lw $t0, -7720($fp)
	lw $t1, -7724($fp)
	add $t0, $t0, $t1
	sw $t0, -7732($fp)
	li $t0, 4
	lw $t1, -7732($fp)
	mul $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	lw $t1, -7664($fp)
	add $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, 0($t0)
	sw $t1, -7744($fp)
	lw $t1, -7744($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 0
	sw $t0, -7748($fp)
	lw $t0, -3800($fp)
	sw $t0, -7752($fp)
	addi $t0, $fp, -288
	sw $t0, -7756($fp)
	li $t0, 5
	sw $t0, -7760($fp)
	li $t0, 4
	lw $t1, -7760($fp)
	mul $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	lw $t1, -7756($fp)
	add $t0, $t0, $t1
	sw $t0, -7768($fp)
	lw $t0, -7768($fp)
	lw $t1, 0($t0)
	sw $t1, -7772($fp)
	li $t0, 0
	sw $t0, -7776($fp)
	li $t0, 15448
	sw $t0, -7780($fp)
	lw $t1, -7780($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label412:
	li $t0, 1
	sw $t0, -7776($fp)
label413:
	lw $t0, -7772($fp)
	lw $t1, -7776($fp)
	add $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t1, -7752($fp)
	lw $t2, -7784($fp)
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -7748($fp)
label411:
	li $t0, 0
	sw $t0, -7788($fp)
	li $t0, 0
	sw $t0, -7792($fp)
	addi $t0, $fp, -288
	sw $t0, -7796($fp)
	li $t0, 0
	sw $t0, -7800($fp)
	li $t0, 52209
	sw $t0, -7804($fp)
	li $t0, 58575
	sw $t0, -7808($fp)
	lw $t1, -7804($fp)
	lw $t2, -7808($fp)
	beq $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -7800($fp)
label419:
	li $t0, 4
	lw $t1, -7800($fp)
	mul $t0, $t0, $t1
	sw $t0, -7812($fp)
	lw $t0, -7812($fp)
	lw $t1, -7796($fp)
	add $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	lw $t1, 0($t0)
	sw $t1, -7820($fp)
	lw $t0, -1928($fp)
	sw $t0, -7824($fp)
	lw $t1, -7820($fp)
	lw $t2, -7824($fp)
	blt $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -7792($fp)
label417:
	li $t0, 0
	sw $t0, -7828($fp)
	lw $t0, -2708($fp)
	sw $t0, -7832($fp)
	lw $t1, -7832($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label420
label420:
	li $t0, 1
	sw $t0, -7828($fp)
label421:
	lw $t1, -7792($fp)
	lw $t2, -7828($fp)
	blt $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -7788($fp)
label415:
	li $t0, 0
	sw $t0, -7836($fp)
	li $t0, 0
	sw $t0, -7840($fp)
	li $t0, 0
	sw $t0, -7844($fp)
	li $t0, 22034
	sw $t0, -7848($fp)
	lw $t1, -7848($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label426:
	li $t0, 1
	sw $t0, -7844($fp)
label427:
	li $t0, 0
	lw $t1, -7844($fp)
	sub $t0, $t0, $t1
	sw $t0, -7852($fp)
	li $t0, 6116
	sw $t0, -7856($fp)
	lw $t1, -7852($fp)
	lw $t2, -7856($fp)
	bge $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -7840($fp)
label425:
	lw $t0, -3020($fp)
	sw $t0, -7860($fp)
	li $t0, 0
	lw $t1, -7860($fp)
	sub $t0, $t0, $t1
	sw $t0, -7864($fp)
	lw $t1, -7840($fp)
	lw $t2, -7864($fp)
	bge $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -7836($fp)
label423:
	j label402
label401:
	li $t0, 62003
	sw $t0, -7868($fp)
	lw $t0, -7868($fp)
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	sw $t0, -7876($fp)
	li $t0, 20783
	sw $t0, -7880($fp)
	lw $t0, -7880($fp)
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	sw $t0, -7888($fp)
	li $t0, 0
	sw $t0, -7892($fp)
	li $t0, 20573
	sw $t0, -7896($fp)
	li $t0, 56055
	sw $t0, -7900($fp)
	lw $t0, -7896($fp)
	lw $t1, -7900($fp)
	add $t0, $t0, $t1
	sw $t0, -7904($fp)
	li $t0, 31334
	sw $t0, -7908($fp)
	lw $t0, -3848($fp)
	sw $t0, -7912($fp)
	lw $t0, -7908($fp)
	lw $t1, -7912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7916($fp)
	lw $t1, -7904($fp)
	lw $t2, -7916($fp)
	beq $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -7892($fp)
label429:
	lw $t0, -7892($fp)
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	sw $t0, -7920($fp)
	li $t0, 0
	sw $t0, -7924($fp)
	lw $t0, -3944($fp)
	sw $t0, -7928($fp)
	lw $t0, -7928($fp)
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -7932($fp)
	addi $t0, $fp, -432
	sw $t0, -7936($fp)
	lw $t0, -2744($fp)
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
	lw $t0, -2108($fp)
	sw $t0, -7956($fp)
	lw $t0, -7952($fp)
	lw $t1, -7956($fp)
	mul $t0, $t0, $t1
	sw $t0, -7960($fp)
	lw $t0, -2744($fp)
	sw $t0, -7964($fp)
	lw $t0, -2732($fp)
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -7972($fp)
	addi $sp, $sp, -4
	lw $t0, -7932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7976($fp)
	addi $sp, $sp, 20
	lw $t0, -7884($fp)
	sw $t0, -7980($fp)
	li $t0, 24159
	sw $t0, -7984($fp)
	lw $t0, -7980($fp)
	lw $t1, -7984($fp)
	mul $t0, $t0, $t1
	sw $t0, -7988($fp)
	lw $t0, -7976($fp)
	lw $t1, -7988($fp)
	add $t0, $t0, $t1
	sw $t0, -7992($fp)
	li $t0, 10658
	sw $t0, -7996($fp)
	lw $t1, -7992($fp)
	lw $t2, -7996($fp)
	beq $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -7924($fp)
label431:
label402:
label398:
	li $t0, 7343
	sw $t0, -8000($fp)
	li $t0, 0
	lw $t1, -8000($fp)
	sub $t0, $t0, $t1
	sw $t0, -8004($fp)
	lw $t1, -8004($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label433
label435:
	addi $t0, $fp, -344
	sw $t0, -8008($fp)
	li $t0, 1
	sw $t0, -8012($fp)
	li $t0, 4
	lw $t1, -8012($fp)
	mul $t0, $t0, $t1
	sw $t0, -8016($fp)
	lw $t0, -8016($fp)
	lw $t1, -8008($fp)
	add $t0, $t0, $t1
	sw $t0, -8020($fp)
	lw $t0, -8020($fp)
	lw $t1, 0($t0)
	sw $t1, -8024($fp)
	addi $t0, $fp, -404
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
	lw $t1, -8024($fp)
	lw $t2, -8044($fp)
	blt $t1, $t2, label432
	j label433
label432:
	li $t0, 55611
	sw $t0, -8048($fp)
	lw $t0, -3956($fp)
	sw $t0, -8052($fp)
	li $t0, 0
	lw $t1, -8052($fp)
	sub $t0, $t0, $t1
	sw $t0, -8056($fp)
	addi $t0, $fp, -228
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
	lw $t0, -1496($fp)
	sw $t0, -8080($fp)
	li $t0, 0
	sw $t0, -8084($fp)
	lw $t0, -1652($fp)
	sw $t0, -8088($fp)
	li $t0, 0
	lw $t1, -8088($fp)
	sub $t0, $t0, $t1
	sw $t0, -8092($fp)
	lw $t1, -8092($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label436
label436:
	li $t0, 1
	sw $t0, -8084($fp)
label437:
	addi $sp, $sp, -4
	lw $t0, -8056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8084($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8096($fp)
	addi $sp, $sp, 20
	lw $t0, -8048($fp)
	lw $t1, -8096($fp)
	mul $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $ra, -4($fp)
	lw $v0, -8100($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label433:
	lw $t0, -7616($fp)
	sw $t0, -8104($fp)
	lw $t0, -8104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7628($fp)
	sw $t0, -8108($fp)
	lw $t0, -8108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8112($fp)
	lw $t0, -3860($fp)
	sw $t0, -8116($fp)
	lw $t1, -8116($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label438:
	li $t0, 1
	sw $t0, -8112($fp)
label439:
	addi $t0, $fp, -44
	sw $t0, -8120($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -8136($fp)
	sub $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8112($fp)
	lw $t1, -8140($fp)
	mul $t0, $t0, $t1
	sw $t0, -8144($fp)
	lw $ra, -4($fp)
	lw $v0, -8144($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 65457
	sw $t0, -8148($fp)
	lw $ra, -4($fp)
	lw $v0, -8148($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -8152($fp)
	li $t0, 22885
	sw $t0, -8156($fp)
	lw $t1, -8156($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 1
	sw $t0, -8152($fp)
label444:
	li $t0, 0
	lw $t1, -8152($fp)
	sub $t0, $t0, $t1
	sw $t0, -8160($fp)
	li $t0, 0
	sw $t0, -8164($fp)
	addi $t0, $fp, -320
	sw $t0, -8168($fp)
	lw $t0, -1508($fp)
	sw $t0, -8172($fp)
	li $t0, 4
	lw $t1, -8172($fp)
	mul $t0, $t0, $t1
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	lw $t1, -8168($fp)
	add $t0, $t0, $t1
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	lw $t1, 0($t0)
	sw $t1, -8184($fp)
	lw $t1, -8184($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -8164($fp)
label446:
	li $t0, 0
	sw $t0, -8188($fp)
	li $t0, 25003
	sw $t0, -8192($fp)
	li $t0, 28793
	sw $t0, -8196($fp)
	lw $t1, -8192($fp)
	lw $t2, -8196($fp)
	blt $t1, $t2, label449
	j label448
label449:
	li $t0, 5506
	sw $t0, -8200($fp)
	lw $t1, -8200($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -8188($fp)
label448:
	li $t0, 0
	sw $t0, -8204($fp)
	li $t0, 40642
	sw $t0, -8208($fp)
	li $t0, 22745
	sw $t0, -8212($fp)
	lw $t0, -8208($fp)
	lw $t1, -8212($fp)
	sub $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t1, -8216($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label451
label452:
	li $t0, 42003
	sw $t0, -8220($fp)
	lw $t1, -8220($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -8204($fp)
label451:
	addi $sp, $sp, -4
	lw $t0, -8160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8224($fp)
	addi $sp, $sp, 20
	lw $t1, -8224($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label440:
label453:
	li $t0, 15880
	sw $t0, -8228($fp)
	lw $t1, -8228($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	addi $t0, $fp, -108
	sw $t0, -8232($fp)
	li $t0, 0
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
	li $t0, 8920
	sw $t0, -8252($fp)
	lw $t0, -8248($fp)
	lw $t1, -8252($fp)
	mul $t0, $t0, $t1
	sw $t0, -8256($fp)
	li $t0, 0
	sw $t0, -8260($fp)
	li $t0, 42989
	sw $t0, -8264($fp)
	lw $t1, -8264($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -8260($fp)
label457:
	lw $t0, -8256($fp)
	lw $t1, -8260($fp)
	mul $t0, $t0, $t1
	sw $t0, -8268($fp)
	li $t0, 0
	sw $t0, -8272($fp)
	li $t0, 15674
	sw $t0, -8276($fp)
	lw $t1, -8276($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label458:
	li $t0, 1
	sw $t0, -8272($fp)
label459:
	lw $t0, -8268($fp)
	lw $t1, -8272($fp)
	mul $t0, $t0, $t1
	sw $t0, -8280($fp)
	lw $ra, -4($fp)
	lw $v0, -8280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label453
label455:
label441:
	j label391
label390:
	li $t0, 5387
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	sw $t0, -8296($fp)
	li $t0, 63773
	sw $t0, -8300($fp)
	addi $t0, $fp, -8284
	sw $t0, -8304($fp)
	li $t0, 0
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8312($fp)
	lw $t0, -8304($fp)
	lw $t1, -8312($fp)
	add $t0, $t0, $t1
	sw $t0, -8316($fp)
	lw $t0, -8300($fp)
	lw $t1, -8316($fp)
	sw $t0, 0($t1)
	lw $t0, -8316($fp)
	lw $t1, 0($t0)
	sw $t1, -8320($fp)
	li $t0, 36248
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	sw $t0, -8332($fp)
	li $t0, 0
	sw $t0, -8336($fp)
	addi $t0, $fp, -288
	sw $t0, -8340($fp)
	li $t0, 1
	sw $t0, -8344($fp)
	li $t0, 4
	lw $t1, -8344($fp)
	mul $t0, $t0, $t1
	sw $t0, -8348($fp)
	lw $t0, -8348($fp)
	lw $t1, -8340($fp)
	add $t0, $t0, $t1
	sw $t0, -8352($fp)
	lw $t0, -8352($fp)
	lw $t1, 0($t0)
	sw $t1, -8356($fp)
	li $t0, 6564
	sw $t0, -8360($fp)
	lw $t1, -8356($fp)
	lw $t2, -8360($fp)
	bge $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -8336($fp)
label461:
	addi $t0, $fp, -44
	sw $t0, -8364($fp)
	addi $t0, $fp, -432
	sw $t0, -8368($fp)
	lw $t0, -3908($fp)
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
	li $t0, 4
	lw $t1, -8384($fp)
	mul $t0, $t0, $t1
	sw $t0, -8388($fp)
	lw $t0, -8388($fp)
	lw $t1, -8364($fp)
	add $t0, $t0, $t1
	sw $t0, -8392($fp)
	lw $t0, -8392($fp)
	lw $t1, 0($t0)
	sw $t1, -8396($fp)
	li $t0, 0
	sw $t0, -8400($fp)
	li $t0, 36914
	sw $t0, -8404($fp)
	li $t0, 22428
	sw $t0, -8408($fp)
	lw $t0, -8404($fp)
	lw $t1, -8408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8412($fp)
	li $t0, 0
	lw $t1, -8412($fp)
	sub $t0, $t0, $t1
	sw $t0, -8416($fp)
	lw $t1, -8416($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -8400($fp)
label463:
	lw $t0, -8396($fp)
	lw $t1, -8400($fp)
	sub $t0, $t0, $t1
	sw $t0, -8420($fp)
label464:
	li $t0, 0
	sw $t0, -8424($fp)
	li $t0, 33060
	sw $t0, -8428($fp)
	lw $t1, -8428($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -8424($fp)
label468:
	li $t0, 0
	sw $t0, -8432($fp)
	li $t0, 6641
	sw $t0, -8436($fp)
	lw $t0, -3968($fp)
	sw $t0, -8440($fp)
	lw $t0, -8436($fp)
	lw $t1, -8440($fp)
	mul $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t0, -1328($fp)
	sw $t0, -8448($fp)
	lw $t1, -8444($fp)
	lw $t2, -8448($fp)
	ble $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -8432($fp)
label470:
	li $t0, 0
	sw $t0, -8452($fp)
	li $t0, 54527
	sw $t0, -8456($fp)
	li $t0, 27070
	sw $t0, -8460($fp)
	lw $t1, -8456($fp)
	lw $t2, -8460($fp)
	beq $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -8452($fp)
label472:
	li $t0, 0
	sw $t0, -8464($fp)
	li $t0, 30173
	sw $t0, -8468($fp)
	lw $t0, -2708($fp)
	sw $t0, -8472($fp)
	lw $t1, -8468($fp)
	lw $t2, -8472($fp)
	bgt $t1, $t2, label473
	j label475
label475:
	lw $t0, -3800($fp)
	sw $t0, -8476($fp)
	lw $t1, -8476($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -8464($fp)
label474:
	li $t0, 4324
	sw $t0, -8480($fp)
	addi $t0, $fp, -288
	sw $t0, -8484($fp)
	lw $t0, -1484($fp)
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
	addi $t0, $fp, -204
	sw $t0, -8504($fp)
	li $t0, 1
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
	li $t0, 13885
	sw $t0, -8524($fp)
	lw $t0, -8520($fp)
	lw $t1, -8524($fp)
	mul $t0, $t0, $t1
	sw $t0, -8528($fp)
	addi $sp, $sp, -4
	lw $t0, -8464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8528($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8532($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -8532($fp)
	sub $t0, $t0, $t1
	sw $t0, -8536($fp)
	addi $t0, $fp, -432
	sw $t0, -8540($fp)
	li $t0, 2
	sw $t0, -8544($fp)
	li $t0, 4
	lw $t1, -8544($fp)
	mul $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	lw $t1, -8540($fp)
	add $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8552($fp)
	lw $t1, 0($t0)
	sw $t1, -8556($fp)
	addi $sp, $sp, -4
	lw $t0, -8432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8556($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8560($fp)
	addi $sp, $sp, 20
	lw $t0, -8424($fp)
	lw $t1, -8560($fp)
	mul $t0, $t0, $t1
	sw $t0, -8564($fp)
	lw $t0, -1700($fp)
	sw $t0, -8568($fp)
	lw $t0, -8564($fp)
	lw $t1, -8568($fp)
	sub $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -3944($fp)
	sw $t0, -8576($fp)
	lw $t0, -8576($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -8580($fp)
	li $t0, 36879
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -8588($fp)
	li $t0, 0
	sw $t0, -8592($fp)
	li $t0, 0
	sw $t0, -8596($fp)
	li $t0, 55863
	sw $t0, -8600($fp)
	lw $t0, -3848($fp)
	sw $t0, -8604($fp)
	lw $t1, -8600($fp)
	lw $t2, -8604($fp)
	ble $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -8596($fp)
label479:
	li $t0, 12147
	sw $t0, -8608($fp)
	lw $t1, -8596($fp)
	lw $t2, -8608($fp)
	ble $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -8592($fp)
label477:
	li $t0, 13994
	sw $t0, -8612($fp)
	lw $t0, -8612($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -8616($fp)
	addi $sp, $sp, -4
	lw $t0, -8580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8620($fp)
	addi $sp, $sp, 20
	lw $t0, -8572($fp)
	lw $t1, -8620($fp)
	sub $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t1, -8624($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 6208
	sw $t0, -8652($fp)
	addi $t0, $fp, -8648
	sw $t0, -8656($fp)
	li $t0, 0
	sw $t0, -8660($fp)
	lw $t0, -8660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8664($fp)
	lw $t0, -8656($fp)
	lw $t1, -8664($fp)
	add $t0, $t0, $t1
	sw $t0, -8668($fp)
	lw $t0, -8652($fp)
	lw $t1, -8668($fp)
	sw $t0, 0($t1)
	lw $t0, -8668($fp)
	lw $t1, 0($t0)
	sw $t1, -8672($fp)
	li $t0, 33102
	sw $t0, -8676($fp)
	addi $t0, $fp, -8648
	sw $t0, -8680($fp)
	li $t0, 1
	sw $t0, -8684($fp)
	lw $t0, -8684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8688($fp)
	lw $t0, -8680($fp)
	lw $t1, -8688($fp)
	add $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t0, -8676($fp)
	lw $t1, -8692($fp)
	sw $t0, 0($t1)
	lw $t0, -8692($fp)
	lw $t1, 0($t0)
	sw $t1, -8696($fp)
	li $t0, 46437
	sw $t0, -8700($fp)
	addi $t0, $fp, -8648
	sw $t0, -8704($fp)
	li $t0, 2
	sw $t0, -8708($fp)
	lw $t0, -8708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t0, -8704($fp)
	lw $t1, -8712($fp)
	add $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8700($fp)
	lw $t1, -8716($fp)
	sw $t0, 0($t1)
	lw $t0, -8716($fp)
	lw $t1, 0($t0)
	sw $t1, -8720($fp)
	li $t0, 15128
	sw $t0, -8724($fp)
	addi $t0, $fp, -8648
	sw $t0, -8728($fp)
	li $t0, 3
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8736($fp)
	lw $t0, -8728($fp)
	lw $t1, -8736($fp)
	add $t0, $t0, $t1
	sw $t0, -8740($fp)
	lw $t0, -8724($fp)
	lw $t1, -8740($fp)
	sw $t0, 0($t1)
	lw $t0, -8740($fp)
	lw $t1, 0($t0)
	sw $t1, -8744($fp)
	li $t0, 10556
	sw $t0, -8748($fp)
	addi $t0, $fp, -8648
	sw $t0, -8752($fp)
	li $t0, 4
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8760($fp)
	lw $t0, -8752($fp)
	lw $t1, -8760($fp)
	add $t0, $t0, $t1
	sw $t0, -8764($fp)
	lw $t0, -8748($fp)
	lw $t1, -8764($fp)
	sw $t0, 0($t1)
	lw $t0, -8764($fp)
	lw $t1, 0($t0)
	sw $t1, -8768($fp)
	li $t0, 62111
	sw $t0, -8772($fp)
	addi $t0, $fp, -8648
	sw $t0, -8776($fp)
	li $t0, 5
	sw $t0, -8780($fp)
	lw $t0, -8780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8784($fp)
	lw $t0, -8776($fp)
	lw $t1, -8784($fp)
	add $t0, $t0, $t1
	sw $t0, -8788($fp)
	lw $t0, -8772($fp)
	lw $t1, -8788($fp)
	sw $t0, 0($t1)
	lw $t0, -8788($fp)
	lw $t1, 0($t0)
	sw $t1, -8792($fp)
	li $t0, 20515
	sw $t0, -8796($fp)
	lw $t0, -8796($fp)
	sw $t0, -8800($fp)
	lw $t0, -8800($fp)
	sw $t0, -8804($fp)
	li $t0, 0
	sw $t0, -8808($fp)
	li $t0, 0
	sw $t0, -8812($fp)
	li $t0, 0
	sw $t0, -8816($fp)
	li $t0, 39102
	sw $t0, -8820($fp)
	li $t0, 1
	sw $t0, -8824($fp)
	lw $t0, -8820($fp)
	lw $t1, -8824($fp)
	mul $t0, $t0, $t1
	sw $t0, -8828($fp)
	lw $t0, -3800($fp)
	sw $t0, -8832($fp)
	lw $t1, -8828($fp)
	lw $t2, -8832($fp)
	beq $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -8816($fp)
label487:
	li $t0, 31118
	sw $t0, -8836($fp)
	li $t0, 45413
	sw $t0, -8840($fp)
	lw $t0, -8836($fp)
	lw $t1, -8840($fp)
	sub $t0, $t0, $t1
	sw $t0, -8844($fp)
	li $t0, 42803
	sw $t0, -8848($fp)
	lw $t0, -8844($fp)
	lw $t1, -8848($fp)
	sub $t0, $t0, $t1
	sw $t0, -8852($fp)
	addi $sp, $sp, -4
	lw $t0, -8816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8852($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8856($fp)
	addi $sp, $sp, 12
	lw $t1, -8856($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label485
label485:
	lw $t0, -1652($fp)
	sw $t0, -8860($fp)
	lw $t1, -8860($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -8812($fp)
label484:
	li $t0, 0
	sw $t0, -8864($fp)
	addi $t0, $fp, -8648
	sw $t0, -8868($fp)
	li $t0, 3
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
	li $t0, 9742
	sw $t0, -8888($fp)
	lw $t1, -8884($fp)
	lw $t2, -8888($fp)
	beq $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -8864($fp)
label489:
	li $t0, 0
	sw $t0, -8892($fp)
	li $t0, 16421
	sw $t0, -8896($fp)
	lw $t1, -8896($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label493
label493:
	lw $t0, -2996($fp)
	sw $t0, -8900($fp)
	lw $t1, -8900($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label492
label492:
	li $t0, 38364
	sw $t0, -8904($fp)
	lw $t1, -8904($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -8892($fp)
label491:
	li $t0, 0
	sw $t0, -8908($fp)
	li $t0, 8793
	sw $t0, -8912($fp)
	li $t0, 0
	lw $t1, -8912($fp)
	sub $t0, $t0, $t1
	sw $t0, -8916($fp)
	li $t0, 32823
	sw $t0, -8920($fp)
	lw $t1, -8916($fp)
	lw $t2, -8920($fp)
	bgt $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -8908($fp)
label495:
	addi $sp, $sp, -4
	lw $t0, -8812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8924($fp)
	addi $sp, $sp, 20
	lw $t0, -8800($fp)
	sw $t0, -8928($fp)
	lw $t0, -8924($fp)
	lw $t1, -8928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8932($fp)
	lw $t1, -8932($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label481
label482:
	li $t0, 49736
	sw $t0, -8936($fp)
	li $t0, 0
	lw $t1, -8936($fp)
	sub $t0, $t0, $t1
	sw $t0, -8940($fp)
	lw $t1, -8940($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -8808($fp)
label481:
	lw $t0, -8808($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -8944($fp)
	j label464
label466:
	li $t0, 0
	sw $t0, -8948($fp)
	addi $t0, $fp, -316
	sw $t0, -8952($fp)
	lw $t0, -3860($fp)
	sw $t0, -8956($fp)
	li $t0, 4
	lw $t1, -8956($fp)
	mul $t0, $t0, $t1
	sw $t0, -8960($fp)
	lw $t0, -8960($fp)
	lw $t1, -8952($fp)
	add $t0, $t0, $t1
	sw $t0, -8964($fp)
	lw $t0, -8964($fp)
	lw $t1, 0($t0)
	sw $t1, -8968($fp)
	li $t0, 0
	sw $t0, -8972($fp)
	li $t0, 54060
	sw $t0, -8976($fp)
	li $t0, 0
	lw $t1, -8976($fp)
	sub $t0, $t0, $t1
	sw $t0, -8980($fp)
	lw $t1, -8980($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label502
label503:
	li $t0, 33991
	sw $t0, -8984($fp)
	lw $t1, -8984($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -8972($fp)
label502:
	li $t0, 0
	sw $t0, -8988($fp)
	li $t0, 6265
	sw $t0, -8992($fp)
	lw $t1, -8992($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label506
label506:
	lw $t0, -1544($fp)
	sw $t0, -8996($fp)
	lw $t1, -8996($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -8988($fp)
label505:
	li $t0, 0
	sw $t0, -9000($fp)
	li $t0, 3818
	sw $t0, -9004($fp)
	lw $t1, -9004($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label509:
	lw $t0, -1532($fp)
	sw $t0, -9008($fp)
	lw $t1, -9008($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -9000($fp)
label508:
	addi $sp, $sp, -4
	lw $t0, -8968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9012($fp)
	addi $sp, $sp, 20
	lw $t1, -9012($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label499:
	li $t0, 1
	sw $t0, -8948($fp)
label500:
	li $t0, 0
	sw $t0, -9016($fp)
	li $t0, 60792
	sw $t0, -9020($fp)
	li $t0, 0
	lw $t1, -9020($fp)
	sub $t0, $t0, $t1
	sw $t0, -9024($fp)
	li $t0, 0
	lw $t1, -9024($fp)
	sub $t0, $t0, $t1
	sw $t0, -9028($fp)
	lw $t1, -9028($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label510
label510:
	li $t0, 1
	sw $t0, -9016($fp)
label511:
	lw $t0, -8948($fp)
	lw $t1, -9016($fp)
	mul $t0, $t0, $t1
	sw $t0, -9032($fp)
	lw $t1, -9032($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 0
	sw $t0, -9036($fp)
	lw $t0, -2732($fp)
	sw $t0, -9040($fp)
	li $t0, 40632
	sw $t0, -9044($fp)
	lw $t0, -9040($fp)
	lw $t1, -9044($fp)
	add $t0, $t0, $t1
	sw $t0, -9048($fp)
	lw $t0, -1556($fp)
	sw $t0, -9052($fp)
	lw $t1, -9048($fp)
	lw $t2, -9052($fp)
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -9036($fp)
label513:
	addi $t0, $fp, -288
	sw $t0, -9056($fp)
	lw $t0, -1556($fp)
	sw $t0, -9060($fp)
	li $t0, 4
	lw $t1, -9060($fp)
	mul $t0, $t0, $t1
	sw $t0, -9064($fp)
	lw $t0, -9064($fp)
	lw $t1, -9056($fp)
	add $t0, $t0, $t1
	sw $t0, -9068($fp)
	lw $t0, -9068($fp)
	lw $t1, 0($t0)
	sw $t1, -9072($fp)
	li $t0, 15594
	sw $t0, -9076($fp)
	lw $t0, -9072($fp)
	lw $t1, -9076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9080($fp)
	addi $sp, $sp, -4
	lw $t0, -9036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9080($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9084($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -9084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label498
label497:
	li $t0, 9250
	sw $t0, -9088($fp)
	lw $t1, -9088($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label515
label514:
label517:
	li $t0, 0
	sw $t0, -9092($fp)
	addi $t0, $fp, -432
	sw $t0, -9096($fp)
	li $t0, 0
	sw $t0, -9100($fp)
	lw $t0, -908($fp)
	sw $t0, -9104($fp)
	lw $t1, -9104($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label524
label524:
	lw $t0, -1676($fp)
	sw $t0, -9108($fp)
	lw $t1, -9108($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -9100($fp)
label523:
	li $t0, 4
	lw $t1, -9100($fp)
	mul $t0, $t0, $t1
	sw $t0, -9112($fp)
	lw $t0, -9112($fp)
	lw $t1, -9096($fp)
	add $t0, $t0, $t1
	sw $t0, -9116($fp)
	lw $t0, -9116($fp)
	lw $t1, 0($t0)
	sw $t1, -9120($fp)
	li $t0, 0
	sw $t0, -9124($fp)
	addi $t0, $fp, -44
	sw $t0, -9128($fp)
	li $t0, 8
	sw $t0, -9132($fp)
	li $t0, 4
	lw $t1, -9132($fp)
	mul $t0, $t0, $t1
	sw $t0, -9136($fp)
	lw $t0, -9136($fp)
	lw $t1, -9128($fp)
	add $t0, $t0, $t1
	sw $t0, -9140($fp)
	lw $t0, -9140($fp)
	lw $t1, 0($t0)
	sw $t1, -9144($fp)
	lw $t1, -9144($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label525
label525:
	li $t0, 1
	sw $t0, -9124($fp)
label526:
	lw $t1, -9120($fp)
	lw $t2, -9124($fp)
	blt $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -9092($fp)
label521:
	li $t0, 0
	sw $t0, -9148($fp)
	addi $t0, $fp, -176
	sw $t0, -9152($fp)
	li $t0, 2
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
	li $t0, 20346
	sw $t0, -9172($fp)
	lw $t0, -9168($fp)
	lw $t1, -9172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9176($fp)
	li $t0, 27030
	sw $t0, -9180($fp)
	li $t0, 27258
	sw $t0, -9184($fp)
	lw $t0, -9180($fp)
	lw $t1, -9184($fp)
	sub $t0, $t0, $t1
	sw $t0, -9188($fp)
	lw $t1, -9176($fp)
	lw $t2, -9188($fp)
	blt $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -9148($fp)
label528:
	lw $t1, -9092($fp)
	lw $t2, -9148($fp)
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 0
	sw $t0, -9192($fp)
	lw $t0, -8292($fp)
	sw $t0, -9196($fp)
	li $t0, 0
	lw $t1, -9196($fp)
	sub $t0, $t0, $t1
	sw $t0, -9200($fp)
	li $t0, 0
	sw $t0, -9204($fp)
	lw $t0, -1568($fp)
	sw $t0, -9208($fp)
	lw $t0, -2516($fp)
	sw $t0, -9212($fp)
	lw $t0, -9208($fp)
	lw $t1, -9212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9216($fp)
	lw $t1, -9216($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label534
label534:
	lw $t0, -2108($fp)
	sw $t0, -9220($fp)
	lw $t1, -9220($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -9204($fp)
label533:
	li $t0, 0
	sw $t0, -9224($fp)
	li $t0, 0
	sw $t0, -9228($fp)
	lw $t0, -2516($fp)
	sw $t0, -9232($fp)
	lw $t1, -9232($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -9228($fp)
label538:
	li $t0, 47773
	sw $t0, -9236($fp)
	lw $t1, -9228($fp)
	lw $t2, -9236($fp)
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -9224($fp)
label536:
	addi $t0, $fp, -404
	sw $t0, -9240($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -9200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9256($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9260($fp)
	addi $sp, $sp, 20
	li $t0, 39695
	sw $t0, -9264($fp)
	li $t0, 1
	sw $t0, -9268($fp)
	lw $t0, -9264($fp)
	lw $t1, -9268($fp)
	mul $t0, $t0, $t1
	sw $t0, -9272($fp)
	lw $t0, -1352($fp)
	sw $t0, -9276($fp)
	lw $t0, -9272($fp)
	lw $t1, -9276($fp)
	mul $t0, $t0, $t1
	sw $t0, -9280($fp)
	lw $t0, -1472($fp)
	sw $t0, -9284($fp)
	addi $sp, $sp, -4
	lw $t0, -9280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9284($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9288($fp)
	addi $sp, $sp, 12
	lw $t0, -9260($fp)
	lw $t1, -9288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9292($fp)
	li $t0, 0
	lw $t1, -9292($fp)
	sub $t0, $t0, $t1
	sw $t0, -9296($fp)
	lw $t1, -9296($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label531:
	li $t0, 0
	sw $t0, -9300($fp)
	li $t0, 0
	sw $t0, -9304($fp)
	lw $t0, -1580($fp)
	sw $t0, -9308($fp)
	li $t0, 64194
	sw $t0, -9312($fp)
	lw $t1, -9308($fp)
	lw $t2, -9312($fp)
	bge $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -9304($fp)
label542:
	lw $t0, -3800($fp)
	sw $t0, -9316($fp)
	lw $t1, -9304($fp)
	lw $t2, -9316($fp)
	bgt $t1, $t2, label539
	j label540
label539:
	li $t0, 1
	sw $t0, -9300($fp)
label540:
	lw $t0, -1532($fp)
	sw $t0, -9320($fp)
	lw $t1, -9300($fp)
	lw $t2, -9320($fp)
	ble $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -9192($fp)
label530:
	j label517
label519:
	j label516
label515:
	li $t0, 0
	sw $t0, -9324($fp)
	lw $t0, -3920($fp)
	sw $t0, -9328($fp)
	lw $t1, -9328($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label545:
	lw $t0, -1592($fp)
	sw $t0, -9332($fp)
	li $t0, 0
	lw $t1, -9332($fp)
	sub $t0, $t0, $t1
	sw $t0, -9336($fp)
	li $t0, 0
	lw $t1, -9336($fp)
	sub $t0, $t0, $t1
	sw $t0, -9340($fp)
	li $t0, 12523
	sw $t0, -9344($fp)
	li $t0, 0
	lw $t1, -9344($fp)
	sub $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t0, -9340($fp)
	lw $t1, -9348($fp)
	sub $t0, $t0, $t1
	sw $t0, -9352($fp)
	lw $t1, -9352($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -9324($fp)
label544:
label516:
label498:
	lw $t0, -8292($fp)
	sw $t0, -9356($fp)
	lw $t0, -9356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8284
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
	lw $t0, -8328($fp)
	sw $t0, -9380($fp)
	lw $t0, -9380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9384($fp)
	li $t0, 18588
	sw $t0, -9388($fp)
	li $t0, 21643
	sw $t0, -9392($fp)
	lw $t0, -9388($fp)
	lw $t1, -9392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9396($fp)
	li $t0, 0
	lw $t1, -9396($fp)
	sub $t0, $t0, $t1
	sw $t0, -9400($fp)
	li $t0, 0
	lw $t1, -9400($fp)
	sub $t0, $t0, $t1
	sw $t0, -9404($fp)
	lw $t1, -9404($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label547
label548:
	lw $t0, -2996($fp)
	sw $t0, -9408($fp)
	li $t0, 22266
	sw $t0, -9412($fp)
	lw $t0, -9408($fp)
	lw $t1, -9412($fp)
	mul $t0, $t0, $t1
	sw $t0, -9416($fp)
	lw $t0, -3272($fp)
	sw $t0, -9420($fp)
	lw $t0, -9416($fp)
	lw $t1, -9420($fp)
	add $t0, $t0, $t1
	sw $t0, -9424($fp)
	lw $t0, -3272($fp)
	sw $t0, -9428($fp)
	li $t0, 0
	lw $t1, -9428($fp)
	sub $t0, $t0, $t1
	sw $t0, -9432($fp)
	lw $t1, -9424($fp)
	lw $t2, -9432($fp)
	blt $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -9384($fp)
label547:
	lw $ra, -4($fp)
	lw $v0, -9384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -204
	sw $t0, -9436($fp)
	li $t0, 0
	sw $t0, -9440($fp)
	lw $t0, -3920($fp)
	sw $t0, -9444($fp)
	lw $t0, -1472($fp)
	sw $t0, -9448($fp)
	lw $t1, -9444($fp)
	lw $t2, -9448($fp)
	bgt $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -9440($fp)
label553:
	li $t0, 4
	lw $t1, -9440($fp)
	mul $t0, $t0, $t1
	sw $t0, -9452($fp)
	lw $t0, -9452($fp)
	lw $t1, -9436($fp)
	add $t0, $t0, $t1
	sw $t0, -9456($fp)
	lw $t0, -9456($fp)
	lw $t1, 0($t0)
	sw $t1, -9460($fp)
	li $t0, 1521
	sw $t0, -9464($fp)
	lw $t0, -9460($fp)
	lw $t1, -9464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9468($fp)
	addi $t0, $fp, -8284
	sw $t0, -9472($fp)
	li $t0, 0
	sw $t0, -9476($fp)
	li $t0, 4
	lw $t1, -9476($fp)
	mul $t0, $t0, $t1
	sw $t0, -9480($fp)
	lw $t0, -9480($fp)
	lw $t1, -9472($fp)
	add $t0, $t0, $t1
	sw $t0, -9484($fp)
	lw $t0, -9484($fp)
	lw $t1, 0($t0)
	sw $t1, -9488($fp)
	li $t0, 0
	lw $t1, -9488($fp)
	sub $t0, $t0, $t1
	sw $t0, -9492($fp)
	lw $t0, -9468($fp)
	lw $t1, -9492($fp)
	mul $t0, $t0, $t1
	sw $t0, -9496($fp)
	lw $t1, -9496($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 59436
	sw $t0, -9500($fp)
	lw $t0, -9500($fp)
	sw $t0, -9504($fp)
	lw $t0, -9504($fp)
	sw $t0, -9508($fp)
	li $t0, 49269
	sw $t0, -9512($fp)
	lw $t0, -9512($fp)
	sw $t0, -9516($fp)
	lw $t0, -9516($fp)
	sw $t0, -9520($fp)
	li $t0, 0
	sw $t0, -9524($fp)
	li $t0, 27090
	sw $t0, -9528($fp)
	addi $t0, $fp, -344
	sw $t0, -9532($fp)
	lw $t0, -1628($fp)
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
	li $t0, 37793
	sw $t0, -9552($fp)
	lw $t0, -9552($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -9556($fp)
	lw $t0, -2516($fp)
	sw $t0, -9560($fp)
	lw $t0, -9560($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -9564($fp)
	li $t0, 165
	sw $t0, -9568($fp)
	lw $t0, -9568($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	sw $t0, -9572($fp)
	addi $sp, $sp, -4
	lw $t0, -9548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9576($fp)
	addi $sp, $sp, 20
	lw $t0, -9528($fp)
	lw $t1, -9576($fp)
	mul $t0, $t0, $t1
	sw $t0, -9580($fp)
	lw $t1, -9580($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label556
label556:
	li $t0, 0
	sw $t0, -9584($fp)
	lw $t0, -2120($fp)
	sw $t0, -9588($fp)
	lw $t1, -9588($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label557:
	li $t0, 1
	sw $t0, -9584($fp)
label558:
	li $t0, 0
	lw $t1, -9584($fp)
	sub $t0, $t0, $t1
	sw $t0, -9592($fp)
	lw $t1, -9592($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -9524($fp)
label555:
	lw $t0, -9504($fp)
	sw $t0, -9596($fp)
	li $t0, 0
	sw $t0, -9600($fp)
	li $t0, 0
	sw $t0, -9604($fp)
	li $t0, 61081
	sw $t0, -9608($fp)
	lw $t1, -9608($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -9604($fp)
label563:
	li $t0, 60957
	sw $t0, -9612($fp)
	lw $t0, -9604($fp)
	lw $t1, -9612($fp)
	sub $t0, $t0, $t1
	sw $t0, -9616($fp)
	li $t0, 0
	sw $t0, -9620($fp)
	lw $t0, -2996($fp)
	sw $t0, -9624($fp)
	lw $t0, -2540($fp)
	sw $t0, -9628($fp)
	lw $t0, -9624($fp)
	lw $t1, -9628($fp)
	mul $t0, $t0, $t1
	sw $t0, -9632($fp)
	lw $t0, -9516($fp)
	sw $t0, -9636($fp)
	lw $t1, -9632($fp)
	lw $t2, -9636($fp)
	blt $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -9620($fp)
label565:
	lw $t1, -9616($fp)
	lw $t2, -9620($fp)
	bne $t1, $t2, label561
	j label560
label561:
	addi $t0, $fp, -204
	sw $t0, -9640($fp)
	li $t0, 0
	sw $t0, -9644($fp)
	lw $t0, -3896($fp)
	sw $t0, -9648($fp)
	lw $t1, -9648($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label568
label568:
	lw $t0, -920($fp)
	sw $t0, -9652($fp)
	lw $t1, -9652($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -9644($fp)
label567:
	li $t0, 4
	lw $t1, -9644($fp)
	mul $t0, $t0, $t1
	sw $t0, -9656($fp)
	lw $t0, -9656($fp)
	lw $t1, -9640($fp)
	add $t0, $t0, $t1
	sw $t0, -9660($fp)
	lw $t0, -9660($fp)
	lw $t1, 0($t0)
	sw $t1, -9664($fp)
	lw $t1, -9664($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -9600($fp)
label560:
	j label551
label550:
	li $t0, 0
	sw $t0, -9668($fp)
	li $t0, 23422
	sw $t0, -9672($fp)
	li $t0, 50800
	sw $t0, -9676($fp)
	lw $t0, -9672($fp)
	lw $t1, -9676($fp)
	mul $t0, $t0, $t1
	sw $t0, -9680($fp)
	lw $t0, -8328($fp)
	sw $t0, -9684($fp)
	lw $t0, -9680($fp)
	lw $t1, -9684($fp)
	mul $t0, $t0, $t1
	sw $t0, -9688($fp)
	li $t0, 0
	sw $t0, -9692($fp)
	li $t0, 36178
	sw $t0, -9696($fp)
	lw $t1, -9696($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label572
label574:
	li $t0, 4671
	sw $t0, -9700($fp)
	lw $t1, -9700($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label573:
	li $t0, 59310
	sw $t0, -9704($fp)
	lw $t1, -9704($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -9692($fp)
label572:
	lw $t0, -2132($fp)
	sw $t0, -9708($fp)
	lw $t0, -9708($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -9712($fp)
	li $t0, 53388
	sw $t0, -9716($fp)
	addi $sp, $sp, -4
	lw $t0, -9688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9716($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9720($fp)
	addi $sp, $sp, 20
	lw $t1, -9720($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label569
label569:
	li $t0, 1
	sw $t0, -9668($fp)
label570:
	lw $ra, -4($fp)
	lw $v0, -9668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label551:
	lw $t0, -8292($fp)
	sw $t0, -9724($fp)
	lw $t0, -9724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8284
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
	lw $t0, -9744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8328($fp)
	sw $t0, -9748($fp)
	lw $t0, -9748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9752($fp)
	li $t0, 5904
	sw $t0, -9756($fp)
	li $t0, 43768
	sw $t0, -9760($fp)
	lw $t1, -9756($fp)
	lw $t2, -9760($fp)
	ble $t1, $t2, label577
	j label576
label577:
	lw $t0, -3368($fp)
	sw $t0, -9764($fp)
	lw $t1, -9764($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -9752($fp)
label576:
	lw $t0, -9752($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -9768($fp)
	lw $ra, -4($fp)
	lw $v0, -9768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -8292($fp)
	sw $t0, -9772($fp)
	lw $t0, -9772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8284
	sw $t0, -9776($fp)
	li $t0, 0
	sw $t0, -9780($fp)
	li $t0, 4
	lw $t1, -9780($fp)
	mul $t0, $t0, $t1
	sw $t0, -9784($fp)
	lw $t0, -9784($fp)
	lw $t1, -9776($fp)
	add $t0, $t0, $t1
	sw $t0, -9788($fp)
	lw $t0, -9788($fp)
	lw $t1, 0($t0)
	sw $t1, -9792($fp)
	lw $t0, -9792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8328($fp)
	sw $t0, -9796($fp)
	lw $t0, -9796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9800($fp)
	lw $t0, -1304($fp)
	sw $t0, -9804($fp)
	li $t0, 0
	lw $t1, -9804($fp)
	sub $t0, $t0, $t1
	sw $t0, -9808($fp)
	addi $t0, $fp, -404
	sw $t0, -9812($fp)
	lw $t0, -1460($fp)
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
	lw $t0, -9808($fp)
	lw $t1, -9828($fp)
	add $t0, $t0, $t1
	sw $t0, -9832($fp)
	li $t0, 0
	sw $t0, -9836($fp)
	li $t0, 12294
	sw $t0, -9840($fp)
	lw $t1, -9840($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -9836($fp)
label581:
	lw $t0, -920($fp)
	sw $t0, -9844($fp)
	lw $t0, -9836($fp)
	lw $t1, -9844($fp)
	mul $t0, $t0, $t1
	sw $t0, -9848($fp)
	li $t0, 33162
	sw $t0, -9852($fp)
	li $t0, 0
	lw $t1, -9852($fp)
	sub $t0, $t0, $t1
	sw $t0, -9856($fp)
	lw $t0, -9848($fp)
	lw $t1, -9856($fp)
	mul $t0, $t0, $t1
	sw $t0, -9860($fp)
	lw $t1, -9832($fp)
	lw $t2, -9860($fp)
	bge $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -9800($fp)
label579:
	lw $ra, -4($fp)
	lw $v0, -9800($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label391:
label380:
	li $t0, 9135
	sw $t0, -9916($fp)
	addi $t0, $fp, -9900
	sw $t0, -9920($fp)
	li $t0, 0
	sw $t0, -9924($fp)
	lw $t0, -9924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9928($fp)
	lw $t0, -9920($fp)
	lw $t1, -9928($fp)
	add $t0, $t0, $t1
	sw $t0, -9932($fp)
	lw $t0, -9916($fp)
	lw $t1, -9932($fp)
	sw $t0, 0($t1)
	lw $t0, -9932($fp)
	lw $t1, 0($t0)
	sw $t1, -9936($fp)
	li $t0, 35900
	sw $t0, -9940($fp)
	addi $t0, $fp, -9900
	sw $t0, -9944($fp)
	li $t0, 1
	sw $t0, -9948($fp)
	lw $t0, -9948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9952($fp)
	lw $t0, -9944($fp)
	lw $t1, -9952($fp)
	add $t0, $t0, $t1
	sw $t0, -9956($fp)
	lw $t0, -9940($fp)
	lw $t1, -9956($fp)
	sw $t0, 0($t1)
	lw $t0, -9956($fp)
	lw $t1, 0($t0)
	sw $t1, -9960($fp)
	li $t0, 15399
	sw $t0, -9964($fp)
	addi $t0, $fp, -9900
	sw $t0, -9968($fp)
	li $t0, 2
	sw $t0, -9972($fp)
	lw $t0, -9972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9976($fp)
	lw $t0, -9968($fp)
	lw $t1, -9976($fp)
	add $t0, $t0, $t1
	sw $t0, -9980($fp)
	lw $t0, -9964($fp)
	lw $t1, -9980($fp)
	sw $t0, 0($t1)
	lw $t0, -9980($fp)
	lw $t1, 0($t0)
	sw $t1, -9984($fp)
	li $t0, 48830
	sw $t0, -9988($fp)
	addi $t0, $fp, -9900
	sw $t0, -9992($fp)
	li $t0, 3
	sw $t0, -9996($fp)
	lw $t0, -9996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10000($fp)
	lw $t0, -9992($fp)
	lw $t1, -10000($fp)
	add $t0, $t0, $t1
	sw $t0, -10004($fp)
	lw $t0, -9988($fp)
	lw $t1, -10004($fp)
	sw $t0, 0($t1)
	lw $t0, -10004($fp)
	lw $t1, 0($t0)
	sw $t1, -10008($fp)
	li $t0, 26793
	sw $t0, -10012($fp)
	addi $t0, $fp, -9900
	sw $t0, -10016($fp)
	li $t0, 4
	sw $t0, -10020($fp)
	lw $t0, -10020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10024($fp)
	lw $t0, -10016($fp)
	lw $t1, -10024($fp)
	add $t0, $t0, $t1
	sw $t0, -10028($fp)
	lw $t0, -10012($fp)
	lw $t1, -10028($fp)
	sw $t0, 0($t1)
	lw $t0, -10028($fp)
	lw $t1, 0($t0)
	sw $t1, -10032($fp)
	li $t0, 14057
	sw $t0, -10036($fp)
	addi $t0, $fp, -9900
	sw $t0, -10040($fp)
	li $t0, 5
	sw $t0, -10044($fp)
	lw $t0, -10044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10048($fp)
	lw $t0, -10040($fp)
	lw $t1, -10048($fp)
	add $t0, $t0, $t1
	sw $t0, -10052($fp)
	lw $t0, -10036($fp)
	lw $t1, -10052($fp)
	sw $t0, 0($t1)
	lw $t0, -10052($fp)
	lw $t1, 0($t0)
	sw $t1, -10056($fp)
	li $t0, 61354
	sw $t0, -10060($fp)
	addi $t0, $fp, -9900
	sw $t0, -10064($fp)
	li $t0, 6
	sw $t0, -10068($fp)
	lw $t0, -10068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10072($fp)
	lw $t0, -10064($fp)
	lw $t1, -10072($fp)
	add $t0, $t0, $t1
	sw $t0, -10076($fp)
	lw $t0, -10060($fp)
	lw $t1, -10076($fp)
	sw $t0, 0($t1)
	lw $t0, -10076($fp)
	lw $t1, 0($t0)
	sw $t1, -10080($fp)
	li $t0, 45381
	sw $t0, -10084($fp)
	addi $t0, $fp, -9900
	sw $t0, -10088($fp)
	li $t0, 7
	sw $t0, -10092($fp)
	lw $t0, -10092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10096($fp)
	lw $t0, -10088($fp)
	lw $t1, -10096($fp)
	add $t0, $t0, $t1
	sw $t0, -10100($fp)
	lw $t0, -10084($fp)
	lw $t1, -10100($fp)
	sw $t0, 0($t1)
	lw $t0, -10100($fp)
	lw $t1, 0($t0)
	sw $t1, -10104($fp)
	li $t0, 35700
	sw $t0, -10108($fp)
	addi $t0, $fp, -9900
	sw $t0, -10112($fp)
	li $t0, 8
	sw $t0, -10116($fp)
	lw $t0, -10116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10120($fp)
	lw $t0, -10112($fp)
	lw $t1, -10120($fp)
	add $t0, $t0, $t1
	sw $t0, -10124($fp)
	lw $t0, -10108($fp)
	lw $t1, -10124($fp)
	sw $t0, 0($t1)
	lw $t0, -10124($fp)
	lw $t1, 0($t0)
	sw $t1, -10128($fp)
	li $t0, 18084
	sw $t0, -10132($fp)
	addi $t0, $fp, -9900
	sw $t0, -10136($fp)
	li $t0, 9
	sw $t0, -10140($fp)
	lw $t0, -10140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10144($fp)
	lw $t0, -10136($fp)
	lw $t1, -10144($fp)
	add $t0, $t0, $t1
	sw $t0, -10148($fp)
	lw $t0, -10132($fp)
	lw $t1, -10148($fp)
	sw $t0, 0($t1)
	lw $t0, -10148($fp)
	lw $t1, 0($t0)
	sw $t1, -10152($fp)
	li $t0, 29551
	sw $t0, -10156($fp)
	lw $t0, -10156($fp)
	sw $t0, -10160($fp)
	lw $t0, -10160($fp)
	sw $t0, -10164($fp)
	li $t0, 37221
	sw $t0, -10168($fp)
	lw $t0, -10168($fp)
	sw $t0, -10172($fp)
	lw $t0, -10172($fp)
	sw $t0, -10176($fp)
	li $t0, 17617
	sw $t0, -10180($fp)
	lw $t0, -10180($fp)
	sw $t0, -10184($fp)
	lw $t0, -10184($fp)
	sw $t0, -10188($fp)
	li $t0, 52823
	sw $t0, -10192($fp)
	lw $t0, -10192($fp)
	sw $t0, -10196($fp)
	lw $t0, -10196($fp)
	sw $t0, -10200($fp)
	li $t0, 31121
	sw $t0, -10204($fp)
	lw $t0, -10204($fp)
	sw $t0, -10208($fp)
	lw $t0, -10208($fp)
	sw $t0, -10212($fp)
	li $t0, 1350
	sw $t0, -10216($fp)
	addi $t0, $fp, -9912
	sw $t0, -10220($fp)
	li $t0, 0
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
	li $t0, 14377
	sw $t0, -10240($fp)
	addi $t0, $fp, -9912
	sw $t0, -10244($fp)
	li $t0, 1
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
	li $t0, 31287
	sw $t0, -10264($fp)
	addi $t0, $fp, -9912
	sw $t0, -10268($fp)
	li $t0, 2
	sw $t0, -10272($fp)
	lw $t0, -10272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10276($fp)
	lw $t0, -10268($fp)
	lw $t1, -10276($fp)
	add $t0, $t0, $t1
	sw $t0, -10280($fp)
	lw $t0, -10264($fp)
	lw $t1, -10280($fp)
	sw $t0, 0($t1)
	lw $t0, -10280($fp)
	lw $t1, 0($t0)
	sw $t1, -10284($fp)
label582:
	addi $t0, $fp, -228
	sw $t0, -10288($fp)
	li $t0, 4
	sw $t0, -10292($fp)
	li $t0, 4
	lw $t1, -10292($fp)
	mul $t0, $t0, $t1
	sw $t0, -10296($fp)
	lw $t0, -10296($fp)
	lw $t1, -10288($fp)
	add $t0, $t0, $t1
	sw $t0, -10300($fp)
	lw $t0, -10300($fp)
	lw $t1, 0($t0)
	sw $t1, -10304($fp)
	li $t0, 0
	lw $t1, -10304($fp)
	sub $t0, $t0, $t1
	sw $t0, -10308($fp)
	li $t0, 0
	lw $t1, -10308($fp)
	sub $t0, $t0, $t1
	sw $t0, -10312($fp)
	lw $t1, -10312($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label585:
	li $t0, 26708
	sw $t0, -10316($fp)
	lw $t0, -2132($fp)
	sw $t0, -10320($fp)
	lw $t0, -10316($fp)
	lw $t1, -10320($fp)
	sub $t0, $t0, $t1
	sw $t0, -10324($fp)
	li $t0, 26995
	sw $t0, -10328($fp)
	lw $t0, -10324($fp)
	lw $t1, -10328($fp)
	sub $t0, $t0, $t1
	sw $t0, -10332($fp)
	li $t0, 46100
	sw $t0, -10336($fp)
	lw $t0, -10332($fp)
	lw $t1, -10336($fp)
	sub $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t1, -10340($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 31380
	sw $t0, -10352($fp)
	lw $t0, -10352($fp)
	sw $t0, -10356($fp)
	lw $t0, -10356($fp)
	sw $t0, -10360($fp)
	li $t0, 20769
	sw $t0, -10364($fp)
	lw $t0, -10364($fp)
	sw $t0, -10368($fp)
	lw $t0, -10368($fp)
	sw $t0, -10372($fp)
	li $t0, 3986
	sw $t0, -10376($fp)
	addi $t0, $fp, -10348
	sw $t0, -10380($fp)
	li $t0, 0
	sw $t0, -10384($fp)
	lw $t0, -10384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10388($fp)
	lw $t0, -10380($fp)
	lw $t1, -10388($fp)
	add $t0, $t0, $t1
	sw $t0, -10392($fp)
	lw $t0, -10376($fp)
	lw $t1, -10392($fp)
	sw $t0, 0($t1)
	lw $t0, -10392($fp)
	lw $t1, 0($t0)
	sw $t1, -10396($fp)
	li $t0, 16644
	sw $t0, -10400($fp)
	addi $t0, $fp, -10348
	sw $t0, -10404($fp)
	li $t0, 1
	sw $t0, -10408($fp)
	lw $t0, -10408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10412($fp)
	lw $t0, -10404($fp)
	lw $t1, -10412($fp)
	add $t0, $t0, $t1
	sw $t0, -10416($fp)
	lw $t0, -10400($fp)
	lw $t1, -10416($fp)
	sw $t0, 0($t1)
	lw $t0, -10416($fp)
	lw $t1, 0($t0)
	sw $t1, -10420($fp)
	li $t0, 26673
	sw $t0, -10424($fp)
	lw $t0, -10424($fp)
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	sw $t0, -10432($fp)
	li $t0, 47755
	sw $t0, -10436($fp)
	lw $t0, -10436($fp)
	sw $t0, -10440($fp)
	lw $t0, -10440($fp)
	sw $t0, -10444($fp)
	li $t0, 28939
	sw $t0, -10448($fp)
	lw $t0, -10448($fp)
	sw $t0, -10452($fp)
	lw $t0, -10452($fp)
	sw $t0, -10456($fp)
	li $t0, 59835
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	sw $t0, -10468($fp)
	li $t0, 56890
	sw $t0, -10472($fp)
	lw $t0, -10472($fp)
	sw $t0, -10476($fp)
	lw $t0, -10476($fp)
	sw $t0, -10480($fp)
	li $t0, 64839
	sw $t0, -10484($fp)
	lw $t0, -10484($fp)
	sw $t0, -10488($fp)
	lw $t0, -10488($fp)
	sw $t0, -10492($fp)
	li $t0, 9698
	sw $t0, -10496($fp)
	lw $t0, -10496($fp)
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	sw $t0, -10504($fp)
	li $t0, 40184
	sw $t0, -10508($fp)
	lw $t0, -10508($fp)
	sw $t0, -10512($fp)
	lw $t0, -10512($fp)
	sw $t0, -10516($fp)
	li $t0, 26096
	sw $t0, -10520($fp)
	lw $t0, -10520($fp)
	sw $t0, -10524($fp)
	lw $t0, -10524($fp)
	sw $t0, -10528($fp)
	li $t0, 23755
	sw $t0, -10532($fp)
	lw $t0, -10532($fp)
	sw $t0, -10536($fp)
	lw $t0, -10536($fp)
	sw $t0, -10540($fp)
	li $t0, 36002
	sw $t0, -10544($fp)
	lw $t0, -10544($fp)
	sw $t0, -10548($fp)
	lw $t0, -10548($fp)
	sw $t0, -10552($fp)
	li $t0, 5941
	sw $t0, -10556($fp)
	lw $t0, -10556($fp)
	sw $t0, -10560($fp)
	lw $t0, -10560($fp)
	sw $t0, -10564($fp)
	li $t0, 59456
	sw $t0, -10568($fp)
	lw $t0, -10568($fp)
	sw $t0, -10572($fp)
	lw $t0, -10572($fp)
	sw $t0, -10576($fp)
	li $t0, 54086
	sw $t0, -10580($fp)
	lw $t0, -10580($fp)
	sw $t0, -10584($fp)
	lw $t0, -10584($fp)
	sw $t0, -10588($fp)
	li $t0, 35492
	sw $t0, -10592($fp)
	lw $t0, -10592($fp)
	sw $t0, -10596($fp)
	lw $t0, -10596($fp)
	sw $t0, -10600($fp)
	li $t0, 31141
	sw $t0, -10604($fp)
	lw $t0, -10604($fp)
	sw $t0, -10608($fp)
	lw $t0, -10608($fp)
	sw $t0, -10612($fp)
	li $t0, 0
	sw $t0, -10616($fp)
	addi $t0, $fp, -368
	sw $t0, -10620($fp)
	li $t0, 0
	sw $t0, -10624($fp)
	li $t0, 6167
	sw $t0, -10628($fp)
	li $t0, 22779
	sw $t0, -10632($fp)
	lw $t0, -10628($fp)
	lw $t1, -10632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10636($fp)
	lw $t1, -10636($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label590:
	li $t0, 62262
	sw $t0, -10640($fp)
	lw $t1, -10640($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -10624($fp)
label589:
	li $t0, 4
	lw $t1, -10624($fp)
	mul $t0, $t0, $t1
	sw $t0, -10644($fp)
	lw $t0, -10644($fp)
	lw $t1, -10620($fp)
	add $t0, $t0, $t1
	sw $t0, -10648($fp)
	lw $t0, -10648($fp)
	lw $t1, 0($t0)
	sw $t1, -10652($fp)
	li $t0, 7517
	sw $t0, -10656($fp)
	li $t0, 37156
	sw $t0, -10660($fp)
	lw $t0, -10656($fp)
	lw $t1, -10660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10664($fp)
	addi $t0, $fp, -432
	sw $t0, -10668($fp)
	lw $t0, -908($fp)
	sw $t0, -10672($fp)
	li $t0, 4
	lw $t1, -10672($fp)
	mul $t0, $t0, $t1
	sw $t0, -10676($fp)
	lw $t0, -10676($fp)
	lw $t1, -10668($fp)
	add $t0, $t0, $t1
	sw $t0, -10680($fp)
	lw $t0, -10680($fp)
	lw $t1, 0($t0)
	sw $t1, -10684($fp)
	lw $t0, -10664($fp)
	lw $t1, -10684($fp)
	mul $t0, $t0, $t1
	sw $t0, -10688($fp)
	li $t0, 0
	lw $t1, -10688($fp)
	sub $t0, $t0, $t1
	sw $t0, -10692($fp)
	lw $t1, -10652($fp)
	lw $t2, -10692($fp)
	beq $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -10616($fp)
label587:
	li $t0, 28013
	sw $t0, -10696($fp)
	li $t0, 0
	sw $t0, -10700($fp)
	lw $t0, -10476($fp)
	sw $t0, -10704($fp)
	lw $t1, -10704($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label593
label593:
	lw $t0, -10440($fp)
	sw $t0, -10708($fp)
	li $t0, 46661
	sw $t0, -10712($fp)
	lw $t0, -10708($fp)
	lw $t1, -10712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10716($fp)
	lw $t0, -10608($fp)
	sw $t0, -10720($fp)
	lw $t0, -10716($fp)
	lw $t1, -10720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10724($fp)
	li $t0, 47078
	sw $t0, -10728($fp)
	lw $t0, -1712($fp)
	sw $t0, -10732($fp)
	lw $t0, -10728($fp)
	lw $t1, -10732($fp)
	add $t0, $t0, $t1
	sw $t0, -10736($fp)
	lw $t1, -10724($fp)
	lw $t2, -10736($fp)
	ble $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -10700($fp)
label592:
	li $t0, 0
	sw $t0, -10740($fp)
	addi $t0, $fp, -144
	sw $t0, -10744($fp)
	li $t0, 2
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
	lw $t1, -10760($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -10740($fp)
label598:
	li $t0, 0
	lw $t1, -10740($fp)
	sub $t0, $t0, $t1
	sw $t0, -10764($fp)
	lw $t1, -10764($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 0
	sw $t0, -10768($fp)
	li $t0, 0
	sw $t0, -10772($fp)
	li $t0, 28890
	sw $t0, -10776($fp)
	li $t0, 31629
	sw $t0, -10780($fp)
	lw $t0, -10776($fp)
	lw $t1, -10780($fp)
	mul $t0, $t0, $t1
	sw $t0, -10784($fp)
	lw $t0, -10196($fp)
	sw $t0, -10788($fp)
	lw $t0, -10784($fp)
	lw $t1, -10788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10792($fp)
	li $t0, 0
	sw $t0, -10796($fp)
	li $t0, 27643
	sw $t0, -10800($fp)
	lw $t1, -10800($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label608:
	li $t0, 20566
	sw $t0, -10804($fp)
	lw $t1, -10804($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -10796($fp)
label607:
	li $t0, 0
	sw $t0, -10808($fp)
	addi $t0, $fp, -9900
	sw $t0, -10812($fp)
	lw $t0, -3932($fp)
	sw $t0, -10816($fp)
	li $t0, 4
	lw $t1, -10816($fp)
	mul $t0, $t0, $t1
	sw $t0, -10820($fp)
	lw $t0, -10820($fp)
	lw $t1, -10812($fp)
	add $t0, $t0, $t1
	sw $t0, -10824($fp)
	lw $t0, -10824($fp)
	lw $t1, 0($t0)
	sw $t1, -10828($fp)
	lw $t0, -1484($fp)
	sw $t0, -10832($fp)
	lw $t1, -10828($fp)
	lw $t2, -10832($fp)
	bge $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -10808($fp)
label610:
	lw $t0, -10356($fp)
	sw $t0, -10836($fp)
	li $t0, 0
	sw $t0, -10840($fp)
	lw $t0, -1460($fp)
	sw $t0, -10844($fp)
	lw $t0, -2744($fp)
	sw $t0, -10848($fp)
	lw $t0, -10844($fp)
	lw $t1, -10848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10852($fp)
	lw $t1, -10852($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label612
label613:
	lw $t0, -1472($fp)
	sw $t0, -10856($fp)
	lw $t1, -10856($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -10840($fp)
label612:
	addi $sp, $sp, -4
	lw $t0, -10796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10840($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10860($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -10792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10860($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10864($fp)
	addi $sp, $sp, 12
	lw $t1, -10864($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label604
label604:
	li $t0, 1
	sw $t0, -10772($fp)
label605:
	li $t0, 0
	sw $t0, -10868($fp)
	li $t0, 13848
	sw $t0, -10872($fp)
	li $t0, 0
	lw $t1, -10872($fp)
	sub $t0, $t0, $t1
	sw $t0, -10876($fp)
	li $t0, 613
	sw $t0, -10880($fp)
	lw $t1, -10876($fp)
	lw $t2, -10880($fp)
	blt $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -10868($fp)
label615:
	addi $t0, $fp, -10348
	sw $t0, -10884($fp)
	li $t0, 1
	sw $t0, -10888($fp)
	li $t0, 4
	lw $t1, -10888($fp)
	mul $t0, $t0, $t1
	sw $t0, -10892($fp)
	lw $t0, -10892($fp)
	lw $t1, -10884($fp)
	add $t0, $t0, $t1
	sw $t0, -10896($fp)
	lw $t0, -10896($fp)
	lw $t1, 0($t0)
	sw $t1, -10900($fp)
	addi $t0, $fp, -204
	sw $t0, -10904($fp)
	lw $t0, -1496($fp)
	sw $t0, -10908($fp)
	li $t0, 4
	lw $t1, -10908($fp)
	mul $t0, $t0, $t1
	sw $t0, -10912($fp)
	lw $t0, -10912($fp)
	lw $t1, -10904($fp)
	add $t0, $t0, $t1
	sw $t0, -10916($fp)
	lw $t0, -10916($fp)
	lw $t1, 0($t0)
	sw $t1, -10920($fp)
	lw $t0, -10368($fp)
	sw $t0, -10924($fp)
	lw $t0, -10924($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -10928($fp)
	addi $sp, $sp, -4
	lw $t0, -10868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10928($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10932($fp)
	addi $sp, $sp, 20
	lw $t0, -10772($fp)
	lw $t1, -10932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10936($fp)
	li $t0, 0
	sw $t0, -10940($fp)
	li $t0, 45387
	sw $t0, -10944($fp)
	lw $t1, -10944($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label619
label619:
	li $t0, 26012
	sw $t0, -10948($fp)
	lw $t1, -10948($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label618
label618:
	lw $t0, -1928($fp)
	sw $t0, -10952($fp)
	lw $t1, -10952($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -10940($fp)
label617:
	li $t0, 0
	sw $t0, -10956($fp)
	li $t0, 0
	sw $t0, -10960($fp)
	lw $t0, -1700($fp)
	sw $t0, -10964($fp)
	lw $t1, -10964($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label622
label622:
	li $t0, 1
	sw $t0, -10960($fp)
label623:
	lw $t0, -3272($fp)
	sw $t0, -10968($fp)
	lw $t1, -10960($fp)
	lw $t2, -10968($fp)
	bgt $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -10956($fp)
label621:
	addi $sp, $sp, -4
	lw $t0, -10940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10956($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10972($fp)
	addi $sp, $sp, 12
	li $t0, 59561
	sw $t0, -10976($fp)
	lw $t0, -1472($fp)
	sw $t0, -10980($fp)
	lw $t0, -10976($fp)
	lw $t1, -10980($fp)
	add $t0, $t0, $t1
	sw $t0, -10984($fp)
	lw $t0, -3824($fp)
	sw $t0, -10988($fp)
	lw $t0, -10984($fp)
	lw $t1, -10988($fp)
	add $t0, $t0, $t1
	sw $t0, -10992($fp)
	li $t0, 0
	sw $t0, -10996($fp)
	lw $t0, -1352($fp)
	sw $t0, -11000($fp)
	lw $t0, -3008($fp)
	sw $t0, -11004($fp)
	lw $t0, -11000($fp)
	lw $t1, -11004($fp)
	sub $t0, $t0, $t1
	sw $t0, -11008($fp)
	lw $t1, -11008($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label625
label626:
	li $t0, 65452
	sw $t0, -11012($fp)
	lw $t1, -11012($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -10996($fp)
label625:
	li $t0, 0
	sw $t0, -11016($fp)
	li $t0, 0
	sw $t0, -11020($fp)
	lw $t0, -10428($fp)
	sw $t0, -11024($fp)
	li $t0, 49863
	sw $t0, -11028($fp)
	lw $t1, -11024($fp)
	lw $t2, -11028($fp)
	bge $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -11020($fp)
label630:
	li $t0, 5202
	sw $t0, -11032($fp)
	lw $t1, -11020($fp)
	lw $t2, -11032($fp)
	ble $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -11016($fp)
label628:
	addi $sp, $sp, -4
	lw $t0, -10972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11016($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11036($fp)
	addi $sp, $sp, 20
	lw $t1, -10936($fp)
	lw $t2, -11036($fp)
	bge $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -10768($fp)
label603:
	li $t0, 0
	sw $t0, -11040($fp)
	li $t0, 0
	sw $t0, -11044($fp)
	lw $t0, -3020($fp)
	sw $t0, -11048($fp)
	lw $t1, -11048($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label633
label633:
	li $t0, 1
	sw $t0, -11044($fp)
label634:
	li $t0, 0
	lw $t1, -11044($fp)
	sub $t0, $t0, $t1
	sw $t0, -11052($fp)
	li $t0, 15853
	sw $t0, -11056($fp)
	li $t0, 17781
	sw $t0, -11060($fp)
	addi $sp, $sp, -4
	lw $t0, -11056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11060($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11064($fp)
	addi $sp, $sp, 12
	lw $t1, -11052($fp)
	lw $t2, -11064($fp)
	ble $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -11040($fp)
label632:
	lw $t1, -10768($fp)
	lw $t2, -11040($fp)
	beq $t1, $t2, label599
	j label600
label599:
label635:
	lw $t0, -1508($fp)
	sw $t0, -11068($fp)
	lw $t1, -11068($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label637
label636:
	li $t0, 0
	sw $t0, -11072($fp)
	lw $t0, -680($fp)
	sw $t0, -11076($fp)
	li $t0, 0
	lw $t1, -11076($fp)
	sub $t0, $t0, $t1
	sw $t0, -11080($fp)
	lw $t1, -11080($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label638
label638:
	li $t0, 1
	sw $t0, -11072($fp)
label639:
	li $t0, 31953
	sw $t0, -11084($fp)
	lw $t0, -11072($fp)
	lw $t1, -11084($fp)
	add $t0, $t0, $t1
	sw $t0, -11088($fp)
	j label635
label637:
	j label601
label600:
	li $t0, 0
	sw $t0, -11092($fp)
	li $t0, 42842
	sw $t0, -11096($fp)
	lw $t0, -11096($fp)
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	sw $t0, -11100($fp)
	li $t0, 0
	sw $t0, -11104($fp)
	li $t0, 11701
	sw $t0, -11108($fp)
	li $t0, 4404
	sw $t0, -11112($fp)
	lw $t1, -11108($fp)
	lw $t2, -11112($fp)
	ble $t1, $t2, label644
	j label643
label644:
	li $t0, 1909
	sw $t0, -11116($fp)
	lw $t1, -11116($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -11104($fp)
label643:
	addi $sp, $sp, -4
	lw $t0, -11100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11104($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11120($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -11120($fp)
	sub $t0, $t0, $t1
	sw $t0, -11124($fp)
	li $t0, 0
	sw $t0, -11128($fp)
	li $t0, 10571
	sw $t0, -11132($fp)
	li $t0, 0
	lw $t1, -11132($fp)
	sub $t0, $t0, $t1
	sw $t0, -11136($fp)
	lw $t1, -11136($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -11128($fp)
label646:
	lw $t1, -11124($fp)
	lw $t2, -11128($fp)
	bgt $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -11092($fp)
label641:
label601:
	j label596
label595:
	li $t0, 24688
	sw $t0, -11140($fp)
label596:
	lw $t0, -10440($fp)
	sw $t0, -11144($fp)
	lw $t1, -11144($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label648
label647:
	addi $t0, $fp, -320
	sw $t0, -11148($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -11168($fp)
	li $t0, 61844
	sw $t0, -11172($fp)
	li $t0, 2046
	sw $t0, -11176($fp)
	lw $t1, -11172($fp)
	lw $t2, -11176($fp)
	beq $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -11168($fp)
label655:
	li $t0, 18089
	sw $t0, -11180($fp)
	li $t0, 0
	sw $t0, -11184($fp)
	li $t0, 0
	sw $t0, -11188($fp)
	li $t0, 39568
	sw $t0, -11192($fp)
	lw $t0, -1352($fp)
	sw $t0, -11196($fp)
	lw $t1, -11192($fp)
	lw $t2, -11196($fp)
	beq $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -11188($fp)
label659:
	lw $t0, -10452($fp)
	sw $t0, -11200($fp)
	lw $t1, -11188($fp)
	lw $t2, -11200($fp)
	beq $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -11184($fp)
label657:
	addi $sp, $sp, -4
	lw $t0, -11164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11204($fp)
	addi $sp, $sp, 20
	lw $t1, -11204($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label653
label653:
	addi $t0, $fp, -432
	sw $t0, -11208($fp)
	li $t0, 1
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
	lw $t1, -11224($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label651
label650:
label660:
	li $t0, 0
	sw $t0, -11228($fp)
	li $t0, 11798
	sw $t0, -11232($fp)
	lw $t1, -11232($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -11228($fp)
label664:
	lw $t0, -1520($fp)
	sw $t0, -11236($fp)
	lw $t1, -11228($fp)
	lw $t2, -11236($fp)
	blt $t1, $t2, label661
	j label662
label661:
	li $t0, 0
	sw $t0, -11240($fp)
	li $t0, 0
	sw $t0, -11244($fp)
	li $t0, 0
	sw $t0, -11248($fp)
	li $t0, 36224
	sw $t0, -11252($fp)
	lw $t0, -1352($fp)
	sw $t0, -11256($fp)
	lw $t1, -11252($fp)
	lw $t2, -11256($fp)
	ble $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -11248($fp)
label671:
	lw $t0, -10464($fp)
	sw $t0, -11260($fp)
	lw $t1, -11248($fp)
	lw $t2, -11260($fp)
	bge $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -11244($fp)
label669:
	lw $t0, -2768($fp)
	sw $t0, -11264($fp)
	li $t0, 37123
	sw $t0, -11268($fp)
	lw $t0, -11264($fp)
	lw $t1, -11268($fp)
	sub $t0, $t0, $t1
	sw $t0, -11272($fp)
	li $t0, 49008
	sw $t0, -11276($fp)
	lw $t0, -11272($fp)
	lw $t1, -11276($fp)
	sub $t0, $t0, $t1
	sw $t0, -11280($fp)
	lw $t1, -11244($fp)
	lw $t2, -11280($fp)
	bne $t1, $t2, label667
	j label666
label667:
	lw $t0, -3884($fp)
	sw $t0, -11284($fp)
	lw $t1, -11284($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -11240($fp)
label666:
	j label660
label662:
	j label652
label651:
	li $t0, 0
	sw $t0, -11288($fp)
	addi $t0, $fp, -108
	sw $t0, -11292($fp)
	lw $t0, -2132($fp)
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
	lw $t1, -11308($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label674
label674:
	li $t0, 49538
	sw $t0, -11312($fp)
	lw $t0, -11312($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -11316($fp)
	li $t0, 0
	sw $t0, -11320($fp)
	li $t0, 0
	sw $t0, -11324($fp)
	li $t0, 56174
	sw $t0, -11328($fp)
	lw $t1, -11328($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label677:
	li $t0, 1
	sw $t0, -11324($fp)
label678:
	lw $t0, -2780($fp)
	sw $t0, -11332($fp)
	lw $t1, -11324($fp)
	lw $t2, -11332($fp)
	beq $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -11320($fp)
label676:
	li $t0, 0
	sw $t0, -11336($fp)
	li $t0, 49622
	sw $t0, -11340($fp)
	lw $t1, -11340($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label682
label682:
	li $t0, 10579
	sw $t0, -11344($fp)
	lw $t1, -11344($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label681
label681:
	lw $t0, -3800($fp)
	sw $t0, -11348($fp)
	lw $t1, -11348($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -11336($fp)
label680:
	lw $t0, -704($fp)
	sw $t0, -11352($fp)
	lw $t0, -11352($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	sw $t0, -11356($fp)
	addi $sp, $sp, -4
	lw $t0, -11316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11360($fp)
	addi $sp, $sp, 20
	lw $t0, -1712($fp)
	sw $t0, -11364($fp)
	li $t0, 0
	lw $t1, -11364($fp)
	sub $t0, $t0, $t1
	sw $t0, -11368($fp)
	li $t0, 0
	sw $t0, -11372($fp)
	lw $t0, -3008($fp)
	sw $t0, -11376($fp)
	li $t0, 26252
	sw $t0, -11380($fp)
	lw $t1, -11376($fp)
	lw $t2, -11380($fp)
	ble $t1, $t2, label683
	j label685
label685:
	li $t0, 50972
	sw $t0, -11384($fp)
	lw $t1, -11384($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -11372($fp)
label684:
	lw $t0, -10488($fp)
	sw $t0, -11388($fp)
	lw $t0, -11388($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	sw $t0, -11392($fp)
	addi $sp, $sp, -4
	lw $t0, -11360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11392($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11396($fp)
	addi $sp, $sp, 20
	lw $t1, -11396($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -11288($fp)
label673:
label652:
	j label649
label648:
	li $t0, 0
	sw $t0, -11400($fp)
	lw $t0, -10596($fp)
	sw $t0, -11404($fp)
	li $t0, 11392
	sw $t0, -11408($fp)
	lw $t0, -11408($fp)
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	sw $t0, -11412($fp)
	lw $t0, -1580($fp)
	sw $t0, -11416($fp)
	li $t0, 43878
	sw $t0, -11420($fp)
	lw $t0, -11416($fp)
	lw $t1, -11420($fp)
	mul $t0, $t0, $t1
	sw $t0, -11424($fp)
	lw $t0, -3800($fp)
	sw $t0, -11428($fp)
	lw $t0, -2996($fp)
	sw $t0, -11432($fp)
	lw $t0, -11428($fp)
	lw $t1, -11432($fp)
	mul $t0, $t0, $t1
	sw $t0, -11436($fp)
	lw $t0, -10512($fp)
	sw $t0, -11440($fp)
	lw $t0, -11436($fp)
	lw $t1, -11440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11444($fp)
	addi $sp, $sp, -4
	lw $t0, -11404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11444($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11448($fp)
	addi $sp, $sp, 20
	lw $t1, -11448($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label691
label691:
	lw $t0, -10596($fp)
	sw $t0, -11452($fp)
	lw $t1, -11452($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label690
label689:
	li $t0, 1
	sw $t0, -11400($fp)
label690:
	li $t0, 0
	sw $t0, -11456($fp)
	addi $t0, $fp, -316
	sw $t0, -11460($fp)
	li $t0, 0
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
	lw $t1, -11476($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label694
label694:
	li $t0, 56283
	sw $t0, -11480($fp)
	lw $t1, -11480($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -11456($fp)
label693:
	lw $t0, -10512($fp)
	sw $t0, -11484($fp)
	lw $t0, -11484($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -11488($fp)
	li $t0, 51879
	sw $t0, -11492($fp)
	lw $t0, -11492($fp)
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	sw $t0, -11496($fp)
	addi $sp, $sp, -4
	lw $t0, -11400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11496($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11500($fp)
	addi $sp, $sp, 20
	li $t0, 22385
	sw $t0, -11504($fp)
	lw $t0, -11504($fp)
	sw $t0, -10160($fp)
	lw $t0, -10160($fp)
	sw $t0, -11508($fp)
	addi $sp, $sp, -4
	lw $t0, -11500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11508($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11512($fp)
	addi $sp, $sp, 12
	lw $t0, -1496($fp)
	sw $t0, -11516($fp)
	lw $t0, -11512($fp)
	lw $t1, -11516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11520($fp)
	li $t0, 10015
	sw $t0, -11524($fp)
	lw $t0, -11524($fp)
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	sw $t0, -11528($fp)
	li $t0, 0
	sw $t0, -11532($fp)
	addi $t0, $fp, -204
	sw $t0, -11536($fp)
	lw $t0, -2792($fp)
	sw $t0, -11540($fp)
	li $t0, 4
	lw $t1, -11540($fp)
	mul $t0, $t0, $t1
	sw $t0, -11544($fp)
	lw $t0, -11544($fp)
	lw $t1, -11536($fp)
	add $t0, $t0, $t1
	sw $t0, -11548($fp)
	lw $t0, -11548($fp)
	lw $t1, 0($t0)
	sw $t1, -11552($fp)
	li $t0, 36025
	sw $t0, -11556($fp)
	lw $t1, -11552($fp)
	lw $t2, -11556($fp)
	bne $t1, $t2, label695
	j label696
label695:
	li $t0, 1
	sw $t0, -11532($fp)
label696:
	li $t0, 0
	sw $t0, -11560($fp)
	li $t0, 0
	sw $t0, -11564($fp)
	lw $t0, -10476($fp)
	sw $t0, -11568($fp)
	li $t0, 4604
	sw $t0, -11572($fp)
	lw $t1, -11568($fp)
	lw $t2, -11572($fp)
	beq $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -11564($fp)
label700:
	lw $t0, -3020($fp)
	sw $t0, -11576($fp)
	lw $t1, -11564($fp)
	lw $t2, -11576($fp)
	beq $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -11560($fp)
label698:
	addi $sp, $sp, -4
	lw $t0, -11520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11580($fp)
	addi $sp, $sp, 20
	li $t0, 1318
	sw $t0, -11584($fp)
	lw $t0, -11580($fp)
	lw $t1, -11584($fp)
	mul $t0, $t0, $t1
	sw $t0, -11588($fp)
	lw $t1, -11588($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label687
label686:
	lw $t0, -1532($fp)
	sw $t0, -11592($fp)
	j label688
label687:
	li $t0, 0
	sw $t0, -11596($fp)
	lw $t0, -1916($fp)
	sw $t0, -11600($fp)
	lw $t0, -10548($fp)
	sw $t0, -11604($fp)
	lw $t0, -11600($fp)
	lw $t1, -11604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11608($fp)
	li $t0, 0
	sw $t0, -11612($fp)
	lw $t0, -3872($fp)
	sw $t0, -11616($fp)
	lw $t1, -11616($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label706
label706:
	lw $t0, -3836($fp)
	sw $t0, -11620($fp)
	lw $t1, -11620($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label705
label705:
	lw $t0, -1568($fp)
	sw $t0, -11624($fp)
	lw $t1, -11624($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -11612($fp)
label704:
	li $t0, 0
	sw $t0, -11628($fp)
	lw $t0, -3368($fp)
	sw $t0, -11632($fp)
	lw $t1, -11632($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label709
label709:
	lw $t0, 8($fp)
	sw $t0, -11636($fp)
	lw $t1, -11636($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -11628($fp)
label708:
	lw $t0, -3920($fp)
	sw $t0, -11640($fp)
	lw $t0, -11640($fp)
	sw $t0, -10536($fp)
	lw $t0, -10536($fp)
	sw $t0, -11644($fp)
	li $t0, 0
	sw $t0, -11648($fp)
	lw $t0, -10524($fp)
	sw $t0, -11652($fp)
	lw $t0, -2120($fp)
	sw $t0, -11656($fp)
	lw $t0, -11652($fp)
	lw $t1, -11656($fp)
	mul $t0, $t0, $t1
	sw $t0, -11660($fp)
	lw $t0, -1616($fp)
	sw $t0, -11664($fp)
	lw $t1, -11660($fp)
	lw $t2, -11664($fp)
	bge $t1, $t2, label710
	j label711
label710:
	li $t0, 1
	sw $t0, -11648($fp)
label711:
	addi $t0, $fp, -432
	sw $t0, -11668($fp)
	li $t0, 0
	sw $t0, -11672($fp)
	li $t0, 4
	lw $t1, -11672($fp)
	mul $t0, $t0, $t1
	sw $t0, -11676($fp)
	lw $t0, -11676($fp)
	lw $t1, -11668($fp)
	add $t0, $t0, $t1
	sw $t0, -11680($fp)
	lw $t0, -11680($fp)
	lw $t1, 0($t0)
	sw $t1, -11684($fp)
	li $t0, 53007
	sw $t0, -11688($fp)
	lw $t0, -11684($fp)
	lw $t1, -11688($fp)
	mul $t0, $t0, $t1
	sw $t0, -11692($fp)
	li $t0, 0
	sw $t0, -11696($fp)
	li $t0, 3030
	sw $t0, -11700($fp)
	li $t0, 50961
	sw $t0, -11704($fp)
	lw $t1, -11700($fp)
	lw $t2, -11704($fp)
	ble $t1, $t2, label714
	j label713
label714:
	lw $t0, -1328($fp)
	sw $t0, -11708($fp)
	lw $t1, -11708($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -11696($fp)
label713:
	addi $sp, $sp, -4
	lw $t0, -11644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11696($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11712($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -11608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11712($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11716($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -11720($fp)
	lw $t0, -3932($fp)
	sw $t0, -11724($fp)
	lw $t1, -11724($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label715
label715:
	li $t0, 1
	sw $t0, -11720($fp)
label716:
	lw $t1, -11716($fp)
	lw $t2, -11720($fp)
	bgt $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -11596($fp)
label702:
	lw $t0, -11596($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	sw $t0, -11728($fp)
label688:
label649:
	li $t0, 18621
	sw $t0, -11732($fp)
	lw $t1, -11732($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
label720:
	li $t0, 42726
	sw $t0, -11736($fp)
	lw $t0, -3800($fp)
	sw $t0, -11740($fp)
	li $t0, 0
	lw $t1, -11740($fp)
	sub $t0, $t0, $t1
	sw $t0, -11744($fp)
	li $t0, 0
	lw $t1, -11744($fp)
	sub $t0, $t0, $t1
	sw $t0, -11748($fp)
	lw $t0, -11736($fp)
	lw $t1, -11748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11752($fp)
	lw $t1, -11752($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	lw $t0, -3848($fp)
	sw $t0, -11756($fp)
	lw $t1, -11756($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label724
label723:
	li $t0, 0
	sw $t0, -11760($fp)
	li $t0, 0
	sw $t0, -11764($fp)
	addi $t0, $fp, -356
	sw $t0, -11768($fp)
	li $t0, 0
	sw $t0, -11772($fp)
	li $t0, 44239
	sw $t0, -11776($fp)
	li $t0, 25956
	sw $t0, -11780($fp)
	lw $t1, -11776($fp)
	lw $t2, -11780($fp)
	ble $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -11772($fp)
label731:
	li $t0, 4
	lw $t1, -11772($fp)
	mul $t0, $t0, $t1
	sw $t0, -11784($fp)
	lw $t0, -11784($fp)
	lw $t1, -11768($fp)
	add $t0, $t0, $t1
	sw $t0, -11788($fp)
	lw $t0, -11788($fp)
	lw $t1, 0($t0)
	sw $t1, -11792($fp)
	li $t0, 0
	sw $t0, -11796($fp)
	lw $t0, -3860($fp)
	sw $t0, -11800($fp)
	li $t0, 0
	lw $t1, -11800($fp)
	sub $t0, $t0, $t1
	sw $t0, -11804($fp)
	lw $t1, -11804($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label732
label732:
	li $t0, 1
	sw $t0, -11796($fp)
label733:
	lw $t1, -11792($fp)
	lw $t2, -11796($fp)
	beq $t1, $t2, label728
	j label729
label728:
	li $t0, 1
	sw $t0, -11764($fp)
label729:
	addi $t0, $fp, -344
	sw $t0, -11808($fp)
	li $t0, 48220
	sw $t0, -11812($fp)
	lw $t0, -10560($fp)
	sw $t0, -11816($fp)
	lw $t0, -11812($fp)
	lw $t1, -11816($fp)
	sub $t0, $t0, $t1
	sw $t0, -11820($fp)
	li $t0, 4
	lw $t1, -11820($fp)
	mul $t0, $t0, $t1
	sw $t0, -11824($fp)
	lw $t0, -11824($fp)
	lw $t1, -11808($fp)
	add $t0, $t0, $t1
	sw $t0, -11828($fp)
	lw $t0, -11828($fp)
	lw $t1, 0($t0)
	sw $t1, -11832($fp)
	lw $t1, -11764($fp)
	lw $t2, -11832($fp)
	bne $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -11760($fp)
label727:
	j label725
label724:
	li $t0, 0
	sw $t0, -11836($fp)
	li $t0, 56037
	sw $t0, -11840($fp)
	li $t0, 0
	sw $t0, -11844($fp)
	li $t0, 62180
	sw $t0, -11848($fp)
	lw $t1, -11848($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label737
label737:
	li $t0, 1
	sw $t0, -11844($fp)
label738:
	lw $t0, -11840($fp)
	lw $t1, -11844($fp)
	add $t0, $t0, $t1
	sw $t0, -11852($fp)
	lw $t0, -3800($fp)
	sw $t0, -11856($fp)
	li $t0, 0
	lw $t1, -11856($fp)
	sub $t0, $t0, $t1
	sw $t0, -11860($fp)
	lw $t0, -11852($fp)
	lw $t1, -11860($fp)
	sub $t0, $t0, $t1
	sw $t0, -11864($fp)
	lw $t1, -11864($fp)
	li $t2, 0
	bne $t1, $t2, label736
	j label735
label736:
	li $t0, 0
	sw $t0, -11868($fp)
	li $t0, 0
	sw $t0, -11872($fp)
	li $t0, 19807
	sw $t0, -11876($fp)
	li $t0, 39509
	sw $t0, -11880($fp)
	lw $t1, -11876($fp)
	lw $t2, -11880($fp)
	bge $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -11872($fp)
label742:
	li $t0, 22896
	sw $t0, -11884($fp)
	lw $t1, -11872($fp)
	lw $t2, -11884($fp)
	bgt $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -11868($fp)
label740:
	li $t0, 0
	sw $t0, -11888($fp)
	li $t0, 23595
	sw $t0, -11892($fp)
	li $t0, 33475
	sw $t0, -11896($fp)
	lw $t0, -11892($fp)
	lw $t1, -11896($fp)
	sub $t0, $t0, $t1
	sw $t0, -11900($fp)
	li $t0, 61418
	sw $t0, -11904($fp)
	lw $t1, -11900($fp)
	lw $t2, -11904($fp)
	bge $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -11888($fp)
label744:
	li $t0, 0
	sw $t0, -11908($fp)
	lw $t0, -10572($fp)
	sw $t0, -11912($fp)
	lw $t1, -11912($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -11908($fp)
label746:
	li $t0, 0
	sw $t0, -11916($fp)
	lw $t0, -3968($fp)
	sw $t0, -11920($fp)
	lw $t1, -11920($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label748
label750:
	lw $t0, -3872($fp)
	sw $t0, -11924($fp)
	lw $t1, -11924($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label748
label749:
	lw $t0, -3956($fp)
	sw $t0, -11928($fp)
	lw $t1, -11928($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -11916($fp)
label748:
	li $t0, 0
	sw $t0, -11932($fp)
	lw $t0, -2708($fp)
	sw $t0, -11936($fp)
	lw $t1, -11936($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label753
label754:
	li $t0, 5243
	sw $t0, -11940($fp)
	lw $t1, -11940($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label753
label753:
	lw $t0, -10548($fp)
	sw $t0, -11944($fp)
	lw $t1, -11944($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -11932($fp)
label752:
	addi $sp, $sp, -4
	lw $t0, -11888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11948($fp)
	addi $sp, $sp, 20
	lw $t1, -11868($fp)
	lw $t2, -11948($fp)
	ble $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -11836($fp)
label735:
label725:
	j label720
label722:
label718:
	lw $t0, -10356($fp)
	sw $t0, -11952($fp)
	lw $t0, -11952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10368($fp)
	sw $t0, -11956($fp)
	lw $t0, -11956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10348
	sw $t0, -11960($fp)
	li $t0, 0
	sw $t0, -11964($fp)
	li $t0, 4
	lw $t1, -11964($fp)
	mul $t0, $t0, $t1
	sw $t0, -11968($fp)
	lw $t0, -11968($fp)
	lw $t1, -11960($fp)
	add $t0, $t0, $t1
	sw $t0, -11972($fp)
	lw $t0, -11972($fp)
	lw $t1, 0($t0)
	sw $t1, -11976($fp)
	lw $t0, -11976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10348
	sw $t0, -11980($fp)
	li $t0, 1
	sw $t0, -11984($fp)
	li $t0, 4
	lw $t1, -11984($fp)
	mul $t0, $t0, $t1
	sw $t0, -11988($fp)
	lw $t0, -11988($fp)
	lw $t1, -11980($fp)
	add $t0, $t0, $t1
	sw $t0, -11992($fp)
	lw $t0, -11992($fp)
	lw $t1, 0($t0)
	sw $t1, -11996($fp)
	lw $t0, -11996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10428($fp)
	sw $t0, -12000($fp)
	lw $t0, -12000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10440($fp)
	sw $t0, -12004($fp)
	lw $t0, -12004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10452($fp)
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10464($fp)
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10476($fp)
	sw $t0, -12016($fp)
	lw $t0, -12016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10488($fp)
	sw $t0, -12020($fp)
	lw $t0, -12020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10500($fp)
	sw $t0, -12024($fp)
	lw $t0, -12024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10512($fp)
	sw $t0, -12028($fp)
	lw $t0, -12028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10524($fp)
	sw $t0, -12032($fp)
	lw $t0, -12032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10536($fp)
	sw $t0, -12036($fp)
	lw $t0, -12036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10548($fp)
	sw $t0, -12040($fp)
	lw $t0, -12040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10560($fp)
	sw $t0, -12044($fp)
	lw $t0, -12044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10572($fp)
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10584($fp)
	sw $t0, -12052($fp)
	lw $t0, -12052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10596($fp)
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2768($fp)
	sw $t0, -12060($fp)
	lw $t0, -12060($fp)
	sw $t0, -10584($fp)
	lw $t0, -10584($fp)
	sw $t0, -12064($fp)
	lw $ra, -4($fp)
	lw $v0, -12064($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label755:
	lw $t0, 4($fp)
	sw $t0, -12068($fp)
	lw $t1, -12068($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label758
label758:
	lw $t0, -3884($fp)
	sw $t0, -12072($fp)
	lw $t0, -3920($fp)
	sw $t0, -12076($fp)
	li $t0, 0
	lw $t1, -12076($fp)
	sub $t0, $t0, $t1
	sw $t0, -12080($fp)
	lw $t0, -12072($fp)
	lw $t1, -12080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12084($fp)
	lw $t1, -12084($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label757
label756:
	li $t0, 7598
	sw $t0, -12088($fp)
	lw $t0, -12088($fp)
	sw $t0, -12092($fp)
	lw $t0, -12092($fp)
	sw $t0, -12096($fp)
	addi $t0, $fp, -420
	sw $t0, -12100($fp)
	li $t0, 0
	sw $t0, -12104($fp)
	li $t0, 0
	sw $t0, -12108($fp)
	lw $t0, -3596($fp)
	sw $t0, -12112($fp)
	lw $t0, -1604($fp)
	sw $t0, -12116($fp)
	lw $t0, -12112($fp)
	lw $t1, -12116($fp)
	add $t0, $t0, $t1
	sw $t0, -12120($fp)
	li $t0, 38080
	sw $t0, -12124($fp)
	lw $t1, -12120($fp)
	lw $t2, -12124($fp)
	bgt $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -12108($fp)
label762:
	lw $t0, -2144($fp)
	sw $t0, -12128($fp)
	li $t0, 31907
	sw $t0, -12132($fp)
	lw $t0, -12128($fp)
	lw $t1, -12132($fp)
	add $t0, $t0, $t1
	sw $t0, -12136($fp)
	lw $t1, -12108($fp)
	lw $t2, -12136($fp)
	blt $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -12104($fp)
label760:
	li $t0, 4
	lw $t1, -12104($fp)
	mul $t0, $t0, $t1
	sw $t0, -12140($fp)
	lw $t0, -12140($fp)
	lw $t1, -12100($fp)
	add $t0, $t0, $t1
	sw $t0, -12144($fp)
	lw $t0, -12144($fp)
	lw $t1, 0($t0)
	sw $t1, -12148($fp)
	lw $t0, -3896($fp)
	sw $t0, -12152($fp)
	li $t0, 0
	sw $t0, -12156($fp)
	li $t0, 0
	sw $t0, -12160($fp)
	lw $t0, -12092($fp)
	sw $t0, -12164($fp)
	lw $t1, -12164($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label766
label766:
	li $t0, 1
	sw $t0, -12160($fp)
label767:
	lw $t0, -3908($fp)
	sw $t0, -12168($fp)
	lw $t0, -1508($fp)
	sw $t0, -12172($fp)
	lw $t0, -12168($fp)
	lw $t1, -12172($fp)
	sub $t0, $t0, $t1
	sw $t0, -12176($fp)
	li $t0, 0
	sw $t0, -12180($fp)
	li $t0, 40408
	sw $t0, -12184($fp)
	lw $t1, -12184($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label770
label770:
	lw $t0, -2768($fp)
	sw $t0, -12188($fp)
	lw $t1, -12188($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -12180($fp)
label769:
	li $t0, 0
	sw $t0, -12192($fp)
	li $t0, 8997
	sw $t0, -12196($fp)
	lw $t1, -12196($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label771
label771:
	li $t0, 1
	sw $t0, -12192($fp)
label772:
	li $t0, 37923
	sw $t0, -12200($fp)
	lw $t0, -12192($fp)
	lw $t1, -12200($fp)
	add $t0, $t0, $t1
	sw $t0, -12204($fp)
	addi $sp, $sp, -4
	lw $t0, -12160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12208($fp)
	addi $sp, $sp, 20
	lw $t1, -12208($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label765
label765:
	li $t0, 10316
	sw $t0, -12212($fp)
	lw $t1, -12212($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -12156($fp)
label764:
	li $t0, 0
	sw $t0, -12216($fp)
	li $t0, 18250
	sw $t0, -12220($fp)
	li $t0, 59581
	sw $t0, -12224($fp)
	lw $t0, -12220($fp)
	lw $t1, -12224($fp)
	mul $t0, $t0, $t1
	sw $t0, -12228($fp)
	lw $t1, -12228($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label775
label775:
	li $t0, 29016
	sw $t0, -12232($fp)
	lw $t1, -12232($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label774
label773:
	li $t0, 1
	sw $t0, -12216($fp)
label774:
	addi $t0, $fp, -288
	sw $t0, -12236($fp)
	lw $t0, -10596($fp)
	sw $t0, -12240($fp)
	li $t0, 4
	lw $t1, -12240($fp)
	mul $t0, $t0, $t1
	sw $t0, -12244($fp)
	lw $t0, -12244($fp)
	lw $t1, -12236($fp)
	add $t0, $t0, $t1
	sw $t0, -12248($fp)
	lw $t0, -12248($fp)
	lw $t1, 0($t0)
	sw $t1, -12252($fp)
	li $t0, 0
	lw $t1, -12252($fp)
	sub $t0, $t0, $t1
	sw $t0, -12256($fp)
	li $t0, 0
	sw $t0, -12260($fp)
	li $t0, 0
	sw $t0, -12264($fp)
	li $t0, 17613
	sw $t0, -12268($fp)
	lw $t0, -10208($fp)
	sw $t0, -12272($fp)
	lw $t1, -12268($fp)
	lw $t2, -12272($fp)
	bge $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -12264($fp)
label779:
	li $t0, 60465
	sw $t0, -12276($fp)
	lw $t1, -12264($fp)
	lw $t2, -12276($fp)
	bgt $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -12260($fp)
label777:
	addi $sp, $sp, -4
	lw $t0, -12156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12260($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12280($fp)
	addi $sp, $sp, 20
	lw $t0, -12152($fp)
	lw $t1, -12280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12284($fp)
	lw $t0, -1916($fp)
	sw $t0, -12288($fp)
	li $t0, 0
	lw $t1, -12288($fp)
	sub $t0, $t0, $t1
	sw $t0, -12292($fp)
	lw $t0, -12284($fp)
	lw $t1, -12292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12296($fp)
	j label755
label757:
	j label582
label584:
	addi $t0, $fp, -9900
	sw $t0, -12300($fp)
	li $t0, 0
	sw $t0, -12304($fp)
	li $t0, 4
	lw $t1, -12304($fp)
	mul $t0, $t0, $t1
	sw $t0, -12308($fp)
	lw $t0, -12308($fp)
	lw $t1, -12300($fp)
	add $t0, $t0, $t1
	sw $t0, -12312($fp)
	lw $t0, -12312($fp)
	lw $t1, 0($t0)
	sw $t1, -12316($fp)
	lw $t0, -12316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9900
	sw $t0, -12320($fp)
	li $t0, 1
	sw $t0, -12324($fp)
	li $t0, 4
	lw $t1, -12324($fp)
	mul $t0, $t0, $t1
	sw $t0, -12328($fp)
	lw $t0, -12328($fp)
	lw $t1, -12320($fp)
	add $t0, $t0, $t1
	sw $t0, -12332($fp)
	lw $t0, -12332($fp)
	lw $t1, 0($t0)
	sw $t1, -12336($fp)
	lw $t0, -12336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9900
	sw $t0, -12340($fp)
	li $t0, 2
	sw $t0, -12344($fp)
	li $t0, 4
	lw $t1, -12344($fp)
	mul $t0, $t0, $t1
	sw $t0, -12348($fp)
	lw $t0, -12348($fp)
	lw $t1, -12340($fp)
	add $t0, $t0, $t1
	sw $t0, -12352($fp)
	lw $t0, -12352($fp)
	lw $t1, 0($t0)
	sw $t1, -12356($fp)
	lw $t0, -12356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9900
	sw $t0, -12360($fp)
	li $t0, 3
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
	lw $t0, -12376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9900
	sw $t0, -12380($fp)
	li $t0, 4
	sw $t0, -12384($fp)
	li $t0, 4
	lw $t1, -12384($fp)
	mul $t0, $t0, $t1
	sw $t0, -12388($fp)
	lw $t0, -12388($fp)
	lw $t1, -12380($fp)
	add $t0, $t0, $t1
	sw $t0, -12392($fp)
	lw $t0, -12392($fp)
	lw $t1, 0($t0)
	sw $t1, -12396($fp)
	lw $t0, -12396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9900
	sw $t0, -12400($fp)
	li $t0, 5
	sw $t0, -12404($fp)
	li $t0, 4
	lw $t1, -12404($fp)
	mul $t0, $t0, $t1
	sw $t0, -12408($fp)
	lw $t0, -12408($fp)
	lw $t1, -12400($fp)
	add $t0, $t0, $t1
	sw $t0, -12412($fp)
	lw $t0, -12412($fp)
	lw $t1, 0($t0)
	sw $t1, -12416($fp)
	lw $t0, -12416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9900
	sw $t0, -12420($fp)
	li $t0, 6
	sw $t0, -12424($fp)
	li $t0, 4
	lw $t1, -12424($fp)
	mul $t0, $t0, $t1
	sw $t0, -12428($fp)
	lw $t0, -12428($fp)
	lw $t1, -12420($fp)
	add $t0, $t0, $t1
	sw $t0, -12432($fp)
	lw $t0, -12432($fp)
	lw $t1, 0($t0)
	sw $t1, -12436($fp)
	lw $t0, -12436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9900
	sw $t0, -12440($fp)
	li $t0, 7
	sw $t0, -12444($fp)
	li $t0, 4
	lw $t1, -12444($fp)
	mul $t0, $t0, $t1
	sw $t0, -12448($fp)
	lw $t0, -12448($fp)
	lw $t1, -12440($fp)
	add $t0, $t0, $t1
	sw $t0, -12452($fp)
	lw $t0, -12452($fp)
	lw $t1, 0($t0)
	sw $t1, -12456($fp)
	lw $t0, -12456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9900
	sw $t0, -12460($fp)
	li $t0, 8
	sw $t0, -12464($fp)
	li $t0, 4
	lw $t1, -12464($fp)
	mul $t0, $t0, $t1
	sw $t0, -12468($fp)
	lw $t0, -12468($fp)
	lw $t1, -12460($fp)
	add $t0, $t0, $t1
	sw $t0, -12472($fp)
	lw $t0, -12472($fp)
	lw $t1, 0($t0)
	sw $t1, -12476($fp)
	lw $t0, -12476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9900
	sw $t0, -12480($fp)
	li $t0, 9
	sw $t0, -12484($fp)
	li $t0, 4
	lw $t1, -12484($fp)
	mul $t0, $t0, $t1
	sw $t0, -12488($fp)
	lw $t0, -12488($fp)
	lw $t1, -12480($fp)
	add $t0, $t0, $t1
	sw $t0, -12492($fp)
	lw $t0, -12492($fp)
	lw $t1, 0($t0)
	sw $t1, -12496($fp)
	lw $t0, -12496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10160($fp)
	sw $t0, -12500($fp)
	lw $t0, -12500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10172($fp)
	sw $t0, -12504($fp)
	lw $t0, -12504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10184($fp)
	sw $t0, -12508($fp)
	lw $t0, -12508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10196($fp)
	sw $t0, -12512($fp)
	lw $t0, -12512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10208($fp)
	sw $t0, -12516($fp)
	lw $t0, -12516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9912
	sw $t0, -12520($fp)
	li $t0, 0
	sw $t0, -12524($fp)
	li $t0, 4
	lw $t1, -12524($fp)
	mul $t0, $t0, $t1
	sw $t0, -12528($fp)
	lw $t0, -12528($fp)
	lw $t1, -12520($fp)
	add $t0, $t0, $t1
	sw $t0, -12532($fp)
	lw $t0, -12532($fp)
	lw $t1, 0($t0)
	sw $t1, -12536($fp)
	lw $t0, -12536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9912
	sw $t0, -12540($fp)
	li $t0, 1
	sw $t0, -12544($fp)
	li $t0, 4
	lw $t1, -12544($fp)
	mul $t0, $t0, $t1
	sw $t0, -12548($fp)
	lw $t0, -12548($fp)
	lw $t1, -12540($fp)
	add $t0, $t0, $t1
	sw $t0, -12552($fp)
	lw $t0, -12552($fp)
	lw $t1, 0($t0)
	sw $t1, -12556($fp)
	lw $t0, -12556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -9912
	sw $t0, -12560($fp)
	li $t0, 2
	sw $t0, -12564($fp)
	li $t0, 4
	lw $t1, -12564($fp)
	mul $t0, $t0, $t1
	sw $t0, -12568($fp)
	lw $t0, -12568($fp)
	lw $t1, -12560($fp)
	add $t0, $t0, $t1
	sw $t0, -12572($fp)
	lw $t0, -12572($fp)
	lw $t1, 0($t0)
	sw $t1, -12576($fp)
	lw $t0, -12576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12580($fp)
	li $t0, 0
	sw $t0, -12584($fp)
	addi $t0, $fp, -9912
	sw $t0, -12588($fp)
	li $t0, 0
	sw $t0, -12592($fp)
	li $t0, 4
	lw $t1, -12592($fp)
	mul $t0, $t0, $t1
	sw $t0, -12596($fp)
	lw $t0, -12596($fp)
	lw $t1, -12588($fp)
	add $t0, $t0, $t1
	sw $t0, -12600($fp)
	lw $t0, -12600($fp)
	lw $t1, 0($t0)
	sw $t1, -12604($fp)
	li $t0, 0
	lw $t1, -12604($fp)
	sub $t0, $t0, $t1
	sw $t0, -12608($fp)
	li $t0, 29723
	sw $t0, -12612($fp)
	lw $t0, -12608($fp)
	lw $t1, -12612($fp)
	sub $t0, $t0, $t1
	sw $t0, -12616($fp)
	li $t0, 40293
	sw $t0, -12620($fp)
	li $t0, 13304
	sw $t0, -12624($fp)
	lw $t0, -12620($fp)
	lw $t1, -12624($fp)
	mul $t0, $t0, $t1
	sw $t0, -12628($fp)
	lw $t1, -12616($fp)
	lw $t2, -12628($fp)
	bge $t1, $t2, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -12584($fp)
label783:
	lw $t0, -10208($fp)
	sw $t0, -12632($fp)
	lw $t0, -12632($fp)
	sw $t0, -10172($fp)
	lw $t0, -10172($fp)
	sw $t0, -12636($fp)
	li $t0, 0
	sw $t0, -12640($fp)
	addi $t0, $fp, -9900
	sw $t0, -12644($fp)
	li $t0, 3
	sw $t0, -12648($fp)
	li $t0, 4
	lw $t1, -12648($fp)
	mul $t0, $t0, $t1
	sw $t0, -12652($fp)
	lw $t0, -12652($fp)
	lw $t1, -12644($fp)
	add $t0, $t0, $t1
	sw $t0, -12656($fp)
	lw $t0, -12656($fp)
	lw $t1, 0($t0)
	sw $t1, -12660($fp)
	li $t0, 8765
	sw $t0, -12664($fp)
	lw $t1, -12660($fp)
	lw $t2, -12664($fp)
	bge $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -12640($fp)
label785:
	li $t0, 0
	sw $t0, -12668($fp)
	li $t0, 0
	sw $t0, -12672($fp)
	li $t0, 48345
	sw $t0, -12676($fp)
	lw $t0, -10196($fp)
	sw $t0, -12680($fp)
	lw $t1, -12676($fp)
	lw $t2, -12680($fp)
	beq $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -12672($fp)
label789:
	lw $t0, -3008($fp)
	sw $t0, -12684($fp)
	lw $t1, -12672($fp)
	lw $t2, -12684($fp)
	bne $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -12668($fp)
label787:
	lw $t0, -1244($fp)
	sw $t0, -12688($fp)
	lw $t0, -3920($fp)
	sw $t0, -12692($fp)
	lw $t0, -12688($fp)
	lw $t1, -12692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12696($fp)
	addi $sp, $sp, -4
	lw $t0, -12636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12696($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12700($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -12700($fp)
	sub $t0, $t0, $t1
	sw $t0, -12704($fp)
	lw $t1, -12584($fp)
	lw $t2, -12704($fp)
	bne $t1, $t2, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -12580($fp)
label781:
	lw $ra, -4($fp)
	lw $v0, -12580($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label790:
	addi $t0, $fp, -344
	sw $t0, -12708($fp)
	lw $t0, -3956($fp)
	sw $t0, -12712($fp)
	li $t0, 0
	lw $t1, -12712($fp)
	sub $t0, $t0, $t1
	sw $t0, -12716($fp)
	li $t0, 4
	lw $t1, -12716($fp)
	mul $t0, $t0, $t1
	sw $t0, -12720($fp)
	lw $t0, -12720($fp)
	lw $t1, -12708($fp)
	add $t0, $t0, $t1
	sw $t0, -12724($fp)
	lw $t0, -12724($fp)
	lw $t1, 0($t0)
	sw $t1, -12728($fp)
	li $t0, 0
	sw $t0, -12732($fp)
	lw $t0, -3020($fp)
	sw $t0, -12736($fp)
	li $t0, 167
	sw $t0, -12740($fp)
	lw $t0, -12736($fp)
	lw $t1, -12740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12744($fp)
	li $t0, 48044
	sw $t0, -12748($fp)
	lw $t1, -12744($fp)
	lw $t2, -12748($fp)
	bge $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -12732($fp)
label795:
	lw $t1, -12728($fp)
	lw $t2, -12732($fp)
	bne $t1, $t2, label791
	j label793
label793:
	li $t0, 5409
	sw $t0, -12752($fp)
	lw $t1, -12752($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label792
label791:
label796:
	li $t0, 0
	sw $t0, -12756($fp)
	li $t0, 19974
	sw $t0, -12760($fp)
	lw $t1, -12760($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label799
label799:
	li $t0, 1
	sw $t0, -12756($fp)
label800:
	lw $t0, -12756($fp)
	sw $t0, -10184($fp)
	lw $t0, -10184($fp)
	sw $t0, -12764($fp)
	lw $t1, -12764($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label798
label797:
	li $t0, 22018
	sw $t0, -12768($fp)
	lw $t0, -12768($fp)
	sw $t0, -12772($fp)
	lw $t0, -12772($fp)
	sw $t0, -12776($fp)
	li $t0, 28306
	sw $t0, -12780($fp)
	lw $t0, -12780($fp)
	sw $t0, -12784($fp)
	lw $t0, -12784($fp)
	sw $t0, -12788($fp)
	li $t0, 25218
	sw $t0, -12792($fp)
	lw $t0, -12792($fp)
	sw $t0, -12796($fp)
	lw $t0, -12796($fp)
	sw $t0, -12800($fp)
	li $t0, 0
	sw $t0, -12804($fp)
	addi $t0, $fp, -368
	sw $t0, -12808($fp)
	lw $t0, -1628($fp)
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
	li $t0, 0
	lw $t1, -12824($fp)
	sub $t0, $t0, $t1
	sw $t0, -12828($fp)
	addi $t0, $fp, -320
	sw $t0, -12832($fp)
	li $t0, 0
	sw $t0, -12836($fp)
	li $t0, 4
	lw $t1, -12836($fp)
	mul $t0, $t0, $t1
	sw $t0, -12840($fp)
	lw $t0, -12840($fp)
	lw $t1, -12832($fp)
	add $t0, $t0, $t1
	sw $t0, -12844($fp)
	lw $t0, -12844($fp)
	lw $t1, 0($t0)
	sw $t1, -12848($fp)
	lw $t0, -12828($fp)
	lw $t1, -12848($fp)
	add $t0, $t0, $t1
	sw $t0, -12852($fp)
	lw $t1, -12852($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label804
label804:
	addi $t0, $fp, -344
	sw $t0, -12856($fp)
	lw $t0, -3272($fp)
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
	lw $t1, -12872($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label803
label803:
	li $t0, 21100
	sw $t0, -12876($fp)
	lw $t1, -12876($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -12804($fp)
label802:
	addi $t0, $fp, -356
	sw $t0, -12880($fp)
	li $t0, 0
	sw $t0, -12884($fp)
	lw $t0, -12772($fp)
	sw $t0, -12888($fp)
	lw $t1, -12888($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label810
label810:
	lw $t0, -3272($fp)
	sw $t0, -12892($fp)
	lw $t1, -12892($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label809
label808:
	li $t0, 1
	sw $t0, -12884($fp)
label809:
	lw $t0, -12884($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -12896($fp)
	li $t0, 4
	lw $t1, -12896($fp)
	mul $t0, $t0, $t1
	sw $t0, -12900($fp)
	lw $t0, -12900($fp)
	lw $t1, -12880($fp)
	add $t0, $t0, $t1
	sw $t0, -12904($fp)
	lw $t0, -12904($fp)
	lw $t1, 0($t0)
	sw $t1, -12908($fp)
	lw $t1, -12908($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 0
	sw $t0, -12912($fp)
	lw $t0, -1376($fp)
	sw $t0, -12916($fp)
	lw $t0, -10196($fp)
	sw $t0, -12920($fp)
	lw $t0, -12916($fp)
	lw $t1, -12920($fp)
	mul $t0, $t0, $t1
	sw $t0, -12924($fp)
	li $t0, 53211
	sw $t0, -12928($fp)
	lw $t0, -12924($fp)
	lw $t1, -12928($fp)
	mul $t0, $t0, $t1
	sw $t0, -12932($fp)
	addi $t0, $fp, -132
	sw $t0, -12936($fp)
	lw $t0, -2540($fp)
	sw $t0, -12940($fp)
	li $t0, 4
	lw $t1, -12940($fp)
	mul $t0, $t0, $t1
	sw $t0, -12944($fp)
	lw $t0, -12944($fp)
	lw $t1, -12936($fp)
	add $t0, $t0, $t1
	sw $t0, -12948($fp)
	lw $t0, -12948($fp)
	lw $t1, 0($t0)
	sw $t1, -12952($fp)
	lw $t1, -12932($fp)
	lw $t2, -12952($fp)
	beq $t1, $t2, label811
	j label812
label811:
	li $t0, 1
	sw $t0, -12912($fp)
label812:
	lw $t0, -12912($fp)
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	sw $t0, -12956($fp)
label806:
	li $t0, 0
	sw $t0, -12960($fp)
	li $t0, 64870
	sw $t0, -12964($fp)
	lw $t0, -12784($fp)
	sw $t0, -12968($fp)
	lw $t0, -12964($fp)
	lw $t1, -12968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12972($fp)
	lw $t1, -12972($fp)
	li $t2, 0
	bne $t1, $t2, label816
	j label818
label818:
	li $t0, 58271
	sw $t0, -12976($fp)
	lw $t1, -12976($fp)
	li $t2, 0
	bne $t1, $t2, label816
	j label817
label816:
	li $t0, 1
	sw $t0, -12960($fp)
label817:
	li $t0, 0
	sw $t0, -12980($fp)
	li $t0, 29255
	sw $t0, -12984($fp)
	lw $t0, 8($fp)
	sw $t0, -12988($fp)
	lw $t0, -12984($fp)
	lw $t1, -12988($fp)
	sub $t0, $t0, $t1
	sw $t0, -12992($fp)
	li $t0, 5722
	sw $t0, -12996($fp)
	lw $t1, -12992($fp)
	lw $t2, -12996($fp)
	bge $t1, $t2, label819
	j label820
label819:
	li $t0, 1
	sw $t0, -12980($fp)
label820:
	li $t0, 0
	sw $t0, -13000($fp)
	lw $t0, -1628($fp)
	sw $t0, -13004($fp)
	lw $t1, -13004($fp)
	li $t2, 0
	bne $t1, $t2, label824
	j label823
label824:
	li $t0, 5288
	sw $t0, -13008($fp)
	lw $t1, -13008($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label823
label823:
	lw $t0, -1376($fp)
	sw $t0, -13012($fp)
	lw $t1, -13012($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label822
label821:
	li $t0, 1
	sw $t0, -13000($fp)
label822:
	li $t0, 0
	sw $t0, -13016($fp)
	lw $t0, -1532($fp)
	sw $t0, -13020($fp)
	li $t0, 34325
	sw $t0, -13024($fp)
	lw $t0, -13020($fp)
	lw $t1, -13024($fp)
	add $t0, $t0, $t1
	sw $t0, -13028($fp)
	li $t0, 53007
	sw $t0, -13032($fp)
	lw $t1, -13028($fp)
	lw $t2, -13032($fp)
	bge $t1, $t2, label825
	j label826
label825:
	li $t0, 1
	sw $t0, -13016($fp)
label826:
	addi $sp, $sp, -4
	lw $t0, -12960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13036($fp)
	addi $sp, $sp, 20
	lw $t0, -2528($fp)
	sw $t0, -13040($fp)
	lw $t0, -13036($fp)
	lw $t1, -13040($fp)
	mul $t0, $t0, $t1
	sw $t0, -13044($fp)
	li $t0, 0
	sw $t0, -13048($fp)
	addi $t0, $fp, -320
	sw $t0, -13052($fp)
	lw $t0, -12796($fp)
	sw $t0, -13056($fp)
	li $t0, 4
	lw $t1, -13056($fp)
	mul $t0, $t0, $t1
	sw $t0, -13060($fp)
	lw $t0, -13060($fp)
	lw $t1, -13052($fp)
	add $t0, $t0, $t1
	sw $t0, -13064($fp)
	lw $t0, -13064($fp)
	lw $t1, 0($t0)
	sw $t1, -13068($fp)
	li $t0, 0
	lw $t1, -13068($fp)
	sub $t0, $t0, $t1
	sw $t0, -13072($fp)
	lw $t1, -13072($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label827
label827:
	li $t0, 1
	sw $t0, -13048($fp)
label828:
	lw $t0, -13044($fp)
	lw $t1, -13048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13076($fp)
	lw $t1, -13076($fp)
	li $t2, 0
	bne $t1, $t2, label813
	j label814
label813:
label829:
	li $t0, 0
	sw $t0, -13080($fp)
	li $t0, 0
	sw $t0, -13084($fp)
	li $t0, 4915
	sw $t0, -13088($fp)
	li $t0, 0
	lw $t1, -13088($fp)
	sub $t0, $t0, $t1
	sw $t0, -13092($fp)
	lw $t0, -1532($fp)
	sw $t0, -13096($fp)
	lw $t1, -13092($fp)
	lw $t2, -13096($fp)
	blt $t1, $t2, label834
	j label835
label834:
	li $t0, 1
	sw $t0, -13084($fp)
label835:
	addi $t0, $fp, -108
	sw $t0, -13100($fp)
	lw $t0, -3284($fp)
	sw $t0, -13104($fp)
	li $t0, 4
	lw $t1, -13104($fp)
	mul $t0, $t0, $t1
	sw $t0, -13108($fp)
	lw $t0, -13108($fp)
	lw $t1, -13100($fp)
	add $t0, $t0, $t1
	sw $t0, -13112($fp)
	lw $t0, -13112($fp)
	lw $t1, 0($t0)
	sw $t1, -13116($fp)
	li $t0, 0
	sw $t0, -13120($fp)
	li $t0, 6745
	sw $t0, -13124($fp)
	lw $t0, -10196($fp)
	sw $t0, -13128($fp)
	lw $t0, -13124($fp)
	lw $t1, -13128($fp)
	mul $t0, $t0, $t1
	sw $t0, -13132($fp)
	lw $t1, -13132($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label837
label838:
	li $t0, 37568
	sw $t0, -13136($fp)
	lw $t1, -13136($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label837
label836:
	li $t0, 1
	sw $t0, -13120($fp)
label837:
	li $t0, 0
	sw $t0, -13140($fp)
	li $t0, 0
	sw $t0, -13144($fp)
	lw $t0, -3008($fp)
	sw $t0, -13148($fp)
	lw $t1, -13148($fp)
	li $t2, 0
	bne $t1, $t2, label841
	j label842
label841:
	li $t0, 1
	sw $t0, -13144($fp)
label842:
	li $t0, 0
	sw $t0, -13152($fp)
	li $t0, 58977
	sw $t0, -13156($fp)
	li $t0, 54759
	sw $t0, -13160($fp)
	lw $t1, -13156($fp)
	lw $t2, -13160($fp)
	blt $t1, $t2, label843
	j label845
label845:
	lw $t0, -10160($fp)
	sw $t0, -13164($fp)
	lw $t1, -13164($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -13152($fp)
label844:
	addi $sp, $sp, -4
	lw $t0, -13144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13152($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -13168($fp)
	addi $sp, $sp, 12
	li $t0, 52968
	sw $t0, -13172($fp)
	lw $t1, -13168($fp)
	lw $t2, -13172($fp)
	blt $t1, $t2, label839
	j label840
label839:
	li $t0, 1
	sw $t0, -13140($fp)
label840:
	addi $sp, $sp, -4
	lw $t0, -13084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13140($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -13176($fp)
	addi $sp, $sp, 20
	lw $t0, -3812($fp)
	sw $t0, -13180($fp)
	lw $t1, -13176($fp)
	lw $t2, -13180($fp)
	bne $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -13080($fp)
label833:
	li $t0, 0
	sw $t0, -13184($fp)
	li $t0, 33143
	sw $t0, -13188($fp)
	li $t0, 25035
	sw $t0, -13192($fp)
	lw $t1, -13188($fp)
	lw $t2, -13192($fp)
	bgt $t1, $t2, label848
	j label847
label848:
	li $t0, 12675
	sw $t0, -13196($fp)
	lw $t1, -13196($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -13184($fp)
label847:
	li $t0, 37257
	sw $t0, -13200($fp)
	li $t0, 0
	lw $t1, -13200($fp)
	sub $t0, $t0, $t1
	sw $t0, -13204($fp)
	li $t0, 0
	lw $t1, -13204($fp)
	sub $t0, $t0, $t1
	sw $t0, -13208($fp)
	li $t0, 14719
	sw $t0, -13212($fp)
	addi $sp, $sp, -4
	lw $t0, -13080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -13216($fp)
	addi $sp, $sp, 20
	lw $t0, -3908($fp)
	sw $t0, -13220($fp)
	li $t0, 0
	sw $t0, -13224($fp)
	lw $t0, -2120($fp)
	sw $t0, -13228($fp)
	lw $t1, -13228($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label849
label849:
	li $t0, 1
	sw $t0, -13224($fp)
label850:
	lw $t0, -13220($fp)
	lw $t1, -13224($fp)
	mul $t0, $t0, $t1
	sw $t0, -13232($fp)
	li $t0, 0
	lw $t1, -13232($fp)
	sub $t0, $t0, $t1
	sw $t0, -13236($fp)
	lw $t0, -13216($fp)
	lw $t1, -13236($fp)
	sub $t0, $t0, $t1
	sw $t0, -13240($fp)
	lw $t1, -13240($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 64289
	sw $t0, -13244($fp)
	li $t0, 46333
	sw $t0, -13248($fp)
	lw $t0, -13244($fp)
	lw $t1, -13248($fp)
	add $t0, $t0, $t1
	sw $t0, -13252($fp)
	j label829
label831:
	j label815
label814:
	lw $t0, -1352($fp)
	sw $t0, -13256($fp)
	li $t0, 25057
	sw $t0, -13260($fp)
	lw $t0, -13256($fp)
	lw $t1, -13260($fp)
	mul $t0, $t0, $t1
	sw $t0, -13264($fp)
	li $t0, 0
	lw $t1, -13264($fp)
	sub $t0, $t0, $t1
	sw $t0, -13268($fp)
	li $t0, 0
	sw $t0, -13272($fp)
	lw $t0, -1376($fp)
	sw $t0, -13276($fp)
	lw $t1, -13276($fp)
	li $t2, 0
	bne $t1, $t2, label853
	j label852
label853:
	lw $t0, -2780($fp)
	sw $t0, -13280($fp)
	lw $t1, -13280($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label852
label851:
	li $t0, 1
	sw $t0, -13272($fp)
label852:
	lw $t0, -1472($fp)
	sw $t0, -13284($fp)
	li $t0, 0
	sw $t0, -13288($fp)
	addi $t0, $fp, -132
	sw $t0, -13292($fp)
	li $t0, 1
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
	lw $t1, -13308($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label855
label856:
	li $t0, 51742
	sw $t0, -13312($fp)
	lw $t1, -13312($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label855
label854:
	li $t0, 1
	sw $t0, -13288($fp)
label855:
	addi $sp, $sp, -4
	lw $t0, -13268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13288($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13316($fp)
	addi $sp, $sp, 20
label815:
	lw $t0, -12772($fp)
	sw $t0, -13320($fp)
	lw $t0, -13320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12784($fp)
	sw $t0, -13324($fp)
	lw $t0, -13324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12796($fp)
	sw $t0, -13328($fp)
	lw $t0, -13328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -13332($fp)
	lw $ra, -4($fp)
	lw $v0, -13332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -13336($fp)
	li $t0, 0
	sw $t0, -13340($fp)
	li $t0, 0
	sw $t0, -13344($fp)
	lw $t0, -3272($fp)
	sw $t0, -13348($fp)
	lw $t1, -13348($fp)
	li $t2, 0
	bne $t1, $t2, label862
	j label861
label861:
	li $t0, 1
	sw $t0, -13344($fp)
label862:
	lw $t0, -2780($fp)
	sw $t0, -13352($fp)
	lw $t0, -13344($fp)
	lw $t1, -13352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13356($fp)
	li $t0, 3279
	sw $t0, -13360($fp)
	li $t0, 0
	lw $t1, -13360($fp)
	sub $t0, $t0, $t1
	sw $t0, -13364($fp)
	lw $t0, -13356($fp)
	lw $t1, -13364($fp)
	mul $t0, $t0, $t1
	sw $t0, -13368($fp)
	addi $t0, $fp, -404
	sw $t0, -13372($fp)
	lw $t0, -1244($fp)
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
	lw $t1, -13368($fp)
	lw $t2, -13388($fp)
	blt $t1, $t2, label859
	j label860
label859:
	li $t0, 1
	sw $t0, -13340($fp)
label860:
	li $t0, 0
	sw $t0, -13392($fp)
	li $t0, 14512
	sw $t0, -13396($fp)
	lw $t1, -13396($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label863
label863:
	li $t0, 1
	sw $t0, -13392($fp)
label864:
	lw $t1, -13340($fp)
	lw $t2, -13392($fp)
	bge $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -13336($fp)
label858:
label865:
	li $t0, 0
	sw $t0, -13400($fp)
	lw $t0, -3920($fp)
	sw $t0, -13404($fp)
	lw $t1, -13404($fp)
	li $t2, 0
	bne $t1, $t2, label870
	j label869
label870:
	li $t0, 36568
	sw $t0, -13408($fp)
	lw $t1, -13408($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label869
label868:
	li $t0, 1
	sw $t0, -13400($fp)
label869:
	lw $t0, -2132($fp)
	sw $t0, -13412($fp)
	li $t0, 0
	sw $t0, -13416($fp)
	li $t0, 10758
	sw $t0, -13420($fp)
	li $t0, 5839
	sw $t0, -13424($fp)
	lw $t0, -13420($fp)
	lw $t1, -13424($fp)
	add $t0, $t0, $t1
	sw $t0, -13428($fp)
	lw $t1, -13428($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label872
label873:
	lw $t0, -10208($fp)
	sw $t0, -13432($fp)
	lw $t1, -13432($fp)
	li $t2, 0
	bne $t1, $t2, label871
	j label872
label871:
	li $t0, 1
	sw $t0, -13416($fp)
label872:
	addi $t0, $fp, -72
	sw $t0, -13436($fp)
	li $t0, 0
	sw $t0, -13440($fp)
	li $t0, 4
	lw $t1, -13440($fp)
	mul $t0, $t0, $t1
	sw $t0, -13444($fp)
	lw $t0, -13444($fp)
	lw $t1, -13436($fp)
	add $t0, $t0, $t1
	sw $t0, -13448($fp)
	lw $t0, -13448($fp)
	lw $t1, 0($t0)
	sw $t1, -13452($fp)
	addi $sp, $sp, -4
	lw $t0, -13400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13456($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -13456($fp)
	sub $t0, $t0, $t1
	sw $t0, -13460($fp)
	lw $t1, -13460($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label867
label866:
	li $t0, 0
	sw $t0, -13464($fp)
	li $t0, 45083
	sw $t0, -13468($fp)
	lw $t1, -13468($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label876
label876:
	addi $t0, $fp, -432
	sw $t0, -13472($fp)
	lw $t0, -3920($fp)
	sw $t0, -13476($fp)
	li $t0, 4
	lw $t1, -13476($fp)
	mul $t0, $t0, $t1
	sw $t0, -13480($fp)
	lw $t0, -13480($fp)
	lw $t1, -13472($fp)
	add $t0, $t0, $t1
	sw $t0, -13484($fp)
	lw $t0, -13484($fp)
	lw $t1, 0($t0)
	sw $t1, -13488($fp)
	li $t0, 0
	lw $t1, -13488($fp)
	sub $t0, $t0, $t1
	sw $t0, -13492($fp)
	lw $t1, -13492($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label874
label874:
	li $t0, 1
	sw $t0, -13464($fp)
label875:
	j label865
label867:
	j label796
label798:
	j label790
label792:
label877:
	addi $t0, $fp, -132
	sw $t0, -13496($fp)
	li $t0, 64568
	sw $t0, -13500($fp)
	lw $t0, -13500($fp)
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	sw $t0, -13504($fp)
	lw $t0, -1928($fp)
	sw $t0, -13508($fp)
	lw $t0, -13508($fp)
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -13512($fp)
	li $t0, 0
	sw $t0, -13516($fp)
	li $t0, 8802
	sw $t0, -13520($fp)
	lw $t0, -1544($fp)
	sw $t0, -13524($fp)
	lw $t1, -13520($fp)
	lw $t2, -13524($fp)
	bne $t1, $t2, label880
	j label882
label882:
	lw $t0, -1244($fp)
	sw $t0, -13528($fp)
	lw $t1, -13528($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label881
label880:
	li $t0, 1
	sw $t0, -13516($fp)
label881:
	li $t0, 0
	sw $t0, -13532($fp)
	lw $t0, -1568($fp)
	sw $t0, -13536($fp)
	li $t0, 58846
	sw $t0, -13540($fp)
	lw $t0, -13536($fp)
	lw $t1, -13540($fp)
	mul $t0, $t0, $t1
	sw $t0, -13544($fp)
	li $t0, 41857
	sw $t0, -13548($fp)
	lw $t1, -13544($fp)
	lw $t2, -13548($fp)
	blt $t1, $t2, label883
	j label884
label883:
	li $t0, 1
	sw $t0, -13532($fp)
label884:
	addi $sp, $sp, -4
	lw $t0, -13504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13552($fp)
	addi $sp, $sp, 20
	lw $t0, -2540($fp)
	sw $t0, -13556($fp)
	lw $t0, -13552($fp)
	lw $t1, -13556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13560($fp)
	li $t0, 4
	lw $t1, -13560($fp)
	mul $t0, $t0, $t1
	sw $t0, -13564($fp)
	lw $t0, -13564($fp)
	lw $t1, -13496($fp)
	add $t0, $t0, $t1
	sw $t0, -13568($fp)
	lw $t0, -13568($fp)
	lw $t1, 0($t0)
	sw $t1, -13572($fp)
	addi $t0, $fp, -320
	sw $t0, -13576($fp)
	li $t0, 0
	sw $t0, -13580($fp)
	li $t0, 4
	lw $t1, -13580($fp)
	mul $t0, $t0, $t1
	sw $t0, -13584($fp)
	lw $t0, -13584($fp)
	lw $t1, -13576($fp)
	add $t0, $t0, $t1
	sw $t0, -13588($fp)
	lw $t0, -13588($fp)
	lw $t1, 0($t0)
	sw $t1, -13592($fp)
	addi $t0, $fp, -108
	sw $t0, -13596($fp)
	li $t0, 0
	sw $t0, -13600($fp)
	li $t0, 4
	lw $t1, -13600($fp)
	mul $t0, $t0, $t1
	sw $t0, -13604($fp)
	lw $t0, -13604($fp)
	lw $t1, -13596($fp)
	add $t0, $t0, $t1
	sw $t0, -13608($fp)
	lw $t0, -13608($fp)
	lw $t1, 0($t0)
	sw $t1, -13612($fp)
	lw $t0, -13592($fp)
	lw $t1, -13612($fp)
	mul $t0, $t0, $t1
	sw $t0, -13616($fp)
	lw $t1, -13572($fp)
	lw $t2, -13616($fp)
	blt $t1, $t2, label878
	j label879
label878:
	lw $t0, -1916($fp)
	sw $t0, -13620($fp)
	lw $t0, -13620($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -13624($fp)
	j label877
label879:
	addi $t0, $fp, -44
	sw $t0, -13628($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -13648($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -13668($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -13688($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -13708($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -13728($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -13748($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -13768($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -13788($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -13808($fp)
	li $t0, 9
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
	lw $t0, -680($fp)
	sw $t0, -13828($fp)
	lw $t0, -13828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -13832($fp)
	lw $t0, -13832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -13836($fp)
	lw $t0, -13836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -13840($fp)
	lw $t0, -13840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -13844($fp)
	li $t0, 0
	sw $t0, -13848($fp)
	li $t0, 4
	lw $t1, -13848($fp)
	mul $t0, $t0, $t1
	sw $t0, -13852($fp)
	lw $t0, -13852($fp)
	lw $t1, -13844($fp)
	add $t0, $t0, $t1
	sw $t0, -13856($fp)
	lw $t0, -13856($fp)
	lw $t1, 0($t0)
	sw $t1, -13860($fp)
	lw $t0, -13860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -13864($fp)
	li $t0, 1
	sw $t0, -13868($fp)
	li $t0, 4
	lw $t1, -13868($fp)
	mul $t0, $t0, $t1
	sw $t0, -13872($fp)
	lw $t0, -13872($fp)
	lw $t1, -13864($fp)
	add $t0, $t0, $t1
	sw $t0, -13876($fp)
	lw $t0, -13876($fp)
	lw $t1, 0($t0)
	sw $t1, -13880($fp)
	lw $t0, -13880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -13884($fp)
	li $t0, 2
	sw $t0, -13888($fp)
	li $t0, 4
	lw $t1, -13888($fp)
	mul $t0, $t0, $t1
	sw $t0, -13892($fp)
	lw $t0, -13892($fp)
	lw $t1, -13884($fp)
	add $t0, $t0, $t1
	sw $t0, -13896($fp)
	lw $t0, -13896($fp)
	lw $t1, 0($t0)
	sw $t1, -13900($fp)
	lw $t0, -13900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -13904($fp)
	li $t0, 3
	sw $t0, -13908($fp)
	li $t0, 4
	lw $t1, -13908($fp)
	mul $t0, $t0, $t1
	sw $t0, -13912($fp)
	lw $t0, -13912($fp)
	lw $t1, -13904($fp)
	add $t0, $t0, $t1
	sw $t0, -13916($fp)
	lw $t0, -13916($fp)
	lw $t1, 0($t0)
	sw $t1, -13920($fp)
	lw $t0, -13920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -13924($fp)
	li $t0, 4
	sw $t0, -13928($fp)
	li $t0, 4
	lw $t1, -13928($fp)
	mul $t0, $t0, $t1
	sw $t0, -13932($fp)
	lw $t0, -13932($fp)
	lw $t1, -13924($fp)
	add $t0, $t0, $t1
	sw $t0, -13936($fp)
	lw $t0, -13936($fp)
	lw $t1, 0($t0)
	sw $t1, -13940($fp)
	lw $t0, -13940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -13944($fp)
	li $t0, 5
	sw $t0, -13948($fp)
	li $t0, 4
	lw $t1, -13948($fp)
	mul $t0, $t0, $t1
	sw $t0, -13952($fp)
	lw $t0, -13952($fp)
	lw $t1, -13944($fp)
	add $t0, $t0, $t1
	sw $t0, -13956($fp)
	lw $t0, -13956($fp)
	lw $t1, 0($t0)
	sw $t1, -13960($fp)
	lw $t0, -13960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -13964($fp)
	li $t0, 6
	sw $t0, -13968($fp)
	li $t0, 4
	lw $t1, -13968($fp)
	mul $t0, $t0, $t1
	sw $t0, -13972($fp)
	lw $t0, -13972($fp)
	lw $t1, -13964($fp)
	add $t0, $t0, $t1
	sw $t0, -13976($fp)
	lw $t0, -13976($fp)
	lw $t1, 0($t0)
	sw $t1, -13980($fp)
	lw $t0, -13980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -13984($fp)
	lw $t0, -13984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -13988($fp)
	lw $t0, -13988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -13992($fp)
	lw $t0, -13992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -13996($fp)
	li $t0, 0
	sw $t0, -14000($fp)
	li $t0, 4
	lw $t1, -14000($fp)
	mul $t0, $t0, $t1
	sw $t0, -14004($fp)
	lw $t0, -14004($fp)
	lw $t1, -13996($fp)
	add $t0, $t0, $t1
	sw $t0, -14008($fp)
	lw $t0, -14008($fp)
	lw $t1, 0($t0)
	sw $t1, -14012($fp)
	lw $t0, -14012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -14016($fp)
	li $t0, 1
	sw $t0, -14020($fp)
	li $t0, 4
	lw $t1, -14020($fp)
	mul $t0, $t0, $t1
	sw $t0, -14024($fp)
	lw $t0, -14024($fp)
	lw $t1, -14016($fp)
	add $t0, $t0, $t1
	sw $t0, -14028($fp)
	lw $t0, -14028($fp)
	lw $t1, 0($t0)
	sw $t1, -14032($fp)
	lw $t0, -14032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -14036($fp)
	li $t0, 2
	sw $t0, -14040($fp)
	li $t0, 4
	lw $t1, -14040($fp)
	mul $t0, $t0, $t1
	sw $t0, -14044($fp)
	lw $t0, -14044($fp)
	lw $t1, -14036($fp)
	add $t0, $t0, $t1
	sw $t0, -14048($fp)
	lw $t0, -14048($fp)
	lw $t1, 0($t0)
	sw $t1, -14052($fp)
	lw $t0, -14052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -14056($fp)
	li $t0, 3
	sw $t0, -14060($fp)
	li $t0, 4
	lw $t1, -14060($fp)
	mul $t0, $t0, $t1
	sw $t0, -14064($fp)
	lw $t0, -14064($fp)
	lw $t1, -14056($fp)
	add $t0, $t0, $t1
	sw $t0, -14068($fp)
	lw $t0, -14068($fp)
	lw $t1, 0($t0)
	sw $t1, -14072($fp)
	lw $t0, -14072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -14076($fp)
	li $t0, 4
	sw $t0, -14080($fp)
	li $t0, 4
	lw $t1, -14080($fp)
	mul $t0, $t0, $t1
	sw $t0, -14084($fp)
	lw $t0, -14084($fp)
	lw $t1, -14076($fp)
	add $t0, $t0, $t1
	sw $t0, -14088($fp)
	lw $t0, -14088($fp)
	lw $t1, 0($t0)
	sw $t1, -14092($fp)
	lw $t0, -14092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -14096($fp)
	li $t0, 5
	sw $t0, -14100($fp)
	li $t0, 4
	lw $t1, -14100($fp)
	mul $t0, $t0, $t1
	sw $t0, -14104($fp)
	lw $t0, -14104($fp)
	lw $t1, -14096($fp)
	add $t0, $t0, $t1
	sw $t0, -14108($fp)
	lw $t0, -14108($fp)
	lw $t1, 0($t0)
	sw $t1, -14112($fp)
	lw $t0, -14112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -14116($fp)
	li $t0, 6
	sw $t0, -14120($fp)
	li $t0, 4
	lw $t1, -14120($fp)
	mul $t0, $t0, $t1
	sw $t0, -14124($fp)
	lw $t0, -14124($fp)
	lw $t1, -14116($fp)
	add $t0, $t0, $t1
	sw $t0, -14128($fp)
	lw $t0, -14128($fp)
	lw $t1, 0($t0)
	sw $t1, -14132($fp)
	lw $t0, -14132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -14136($fp)
	li $t0, 7
	sw $t0, -14140($fp)
	li $t0, 4
	lw $t1, -14140($fp)
	mul $t0, $t0, $t1
	sw $t0, -14144($fp)
	lw $t0, -14144($fp)
	lw $t1, -14136($fp)
	add $t0, $t0, $t1
	sw $t0, -14148($fp)
	lw $t0, -14148($fp)
	lw $t1, 0($t0)
	sw $t1, -14152($fp)
	lw $t0, -14152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -14156($fp)
	li $t0, 8
	sw $t0, -14160($fp)
	li $t0, 4
	lw $t1, -14160($fp)
	mul $t0, $t0, $t1
	sw $t0, -14164($fp)
	lw $t0, -14164($fp)
	lw $t1, -14156($fp)
	add $t0, $t0, $t1
	sw $t0, -14168($fp)
	lw $t0, -14168($fp)
	lw $t1, 0($t0)
	sw $t1, -14172($fp)
	lw $t0, -14172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
	sw $t0, -14216($fp)
	li $t0, 2
	sw $t0, -14220($fp)
	li $t0, 4
	lw $t1, -14220($fp)
	mul $t0, $t0, $t1
	sw $t0, -14224($fp)
	lw $t0, -14224($fp)
	lw $t1, -14216($fp)
	add $t0, $t0, $t1
	sw $t0, -14228($fp)
	lw $t0, -14228($fp)
	lw $t1, 0($t0)
	sw $t1, -14232($fp)
	lw $t0, -14232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -14236($fp)
	li $t0, 3
	sw $t0, -14240($fp)
	li $t0, 4
	lw $t1, -14240($fp)
	mul $t0, $t0, $t1
	sw $t0, -14244($fp)
	lw $t0, -14244($fp)
	lw $t1, -14236($fp)
	add $t0, $t0, $t1
	sw $t0, -14248($fp)
	lw $t0, -14248($fp)
	lw $t1, 0($t0)
	sw $t1, -14252($fp)
	lw $t0, -14252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -14256($fp)
	lw $t0, -14256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -14260($fp)
	li $t0, 0
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
	addi $t0, $fp, -132
	sw $t0, -14280($fp)
	li $t0, 1
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
	lw $t0, -1304($fp)
	sw $t0, -14300($fp)
	lw $t0, -14300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -14304($fp)
	lw $t0, -14304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1328($fp)
	sw $t0, -14308($fp)
	lw $t0, -14308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1340($fp)
	sw $t0, -14312($fp)
	lw $t0, -14312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1352($fp)
	sw $t0, -14316($fp)
	lw $t0, -14316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1364($fp)
	sw $t0, -14320($fp)
	lw $t0, -14320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1376($fp)
	sw $t0, -14324($fp)
	lw $t0, -14324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -14328($fp)
	li $t0, 0
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
	addi $t0, $fp, -144
	sw $t0, -14348($fp)
	li $t0, 1
	sw $t0, -14352($fp)
	li $t0, 4
	lw $t1, -14352($fp)
	mul $t0, $t0, $t1
	sw $t0, -14356($fp)
	lw $t0, -14356($fp)
	lw $t1, -14348($fp)
	add $t0, $t0, $t1
	sw $t0, -14360($fp)
	lw $t0, -14360($fp)
	lw $t1, 0($t0)
	sw $t1, -14364($fp)
	lw $t0, -14364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -14368($fp)
	li $t0, 2
	sw $t0, -14372($fp)
	li $t0, 4
	lw $t1, -14372($fp)
	mul $t0, $t0, $t1
	sw $t0, -14376($fp)
	lw $t0, -14376($fp)
	lw $t1, -14368($fp)
	add $t0, $t0, $t1
	sw $t0, -14380($fp)
	lw $t0, -14380($fp)
	lw $t1, 0($t0)
	sw $t1, -14384($fp)
	lw $t0, -14384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -14388($fp)
	lw $t0, -14388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -14392($fp)
	lw $t0, -14392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -14396($fp)
	lw $t0, -14396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -14400($fp)
	lw $t0, -14400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -14404($fp)
	lw $t0, -14404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1520($fp)
	sw $t0, -14408($fp)
	lw $t0, -14408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1532($fp)
	sw $t0, -14412($fp)
	lw $t0, -14412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1544($fp)
	sw $t0, -14416($fp)
	lw $t0, -14416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -14420($fp)
	lw $t0, -14420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -14424($fp)
	lw $t0, -14424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -14428($fp)
	lw $t0, -14428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -14432($fp)
	lw $t0, -14432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -14436($fp)
	lw $t0, -14436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1616($fp)
	sw $t0, -14440($fp)
	lw $t0, -14440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1628($fp)
	sw $t0, -14444($fp)
	lw $t0, -14444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -14448($fp)
	lw $t0, -14448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1652($fp)
	sw $t0, -14452($fp)
	lw $t0, -14452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -14456($fp)
	lw $t0, -14456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1676($fp)
	sw $t0, -14460($fp)
	lw $t0, -14460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -14464($fp)
	lw $t0, -14464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1700($fp)
	sw $t0, -14468($fp)
	lw $t0, -14468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1712($fp)
	sw $t0, -14472($fp)
	lw $t0, -14472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -14476($fp)
	li $t0, 0
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
	addi $t0, $fp, -176
	sw $t0, -14496($fp)
	li $t0, 1
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
	addi $t0, $fp, -176
	sw $t0, -14516($fp)
	li $t0, 2
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
	addi $t0, $fp, -176
	sw $t0, -14536($fp)
	li $t0, 3
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
	addi $t0, $fp, -176
	sw $t0, -14556($fp)
	li $t0, 4
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
	addi $t0, $fp, -176
	sw $t0, -14576($fp)
	li $t0, 5
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
	addi $t0, $fp, -176
	sw $t0, -14596($fp)
	li $t0, 6
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
	addi $t0, $fp, -176
	sw $t0, -14616($fp)
	li $t0, 7
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
	lw $t0, -1916($fp)
	sw $t0, -14636($fp)
	lw $t0, -14636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -14640($fp)
	lw $t0, -14640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -14644($fp)
	li $t0, 0
	sw $t0, -14648($fp)
	li $t0, 4
	lw $t1, -14648($fp)
	mul $t0, $t0, $t1
	sw $t0, -14652($fp)
	lw $t0, -14652($fp)
	lw $t1, -14644($fp)
	add $t0, $t0, $t1
	sw $t0, -14656($fp)
	lw $t0, -14656($fp)
	lw $t1, 0($t0)
	sw $t1, -14660($fp)
	lw $t0, -14660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -14664($fp)
	li $t0, 1
	sw $t0, -14668($fp)
	li $t0, 4
	lw $t1, -14668($fp)
	mul $t0, $t0, $t1
	sw $t0, -14672($fp)
	lw $t0, -14672($fp)
	lw $t1, -14664($fp)
	add $t0, $t0, $t1
	sw $t0, -14676($fp)
	lw $t0, -14676($fp)
	lw $t1, 0($t0)
	sw $t1, -14680($fp)
	lw $t0, -14680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -14684($fp)
	li $t0, 2
	sw $t0, -14688($fp)
	li $t0, 4
	lw $t1, -14688($fp)
	mul $t0, $t0, $t1
	sw $t0, -14692($fp)
	lw $t0, -14692($fp)
	lw $t1, -14684($fp)
	add $t0, $t0, $t1
	sw $t0, -14696($fp)
	lw $t0, -14696($fp)
	lw $t1, 0($t0)
	sw $t1, -14700($fp)
	lw $t0, -14700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -14704($fp)
	li $t0, 3
	sw $t0, -14708($fp)
	li $t0, 4
	lw $t1, -14708($fp)
	mul $t0, $t0, $t1
	sw $t0, -14712($fp)
	lw $t0, -14712($fp)
	lw $t1, -14704($fp)
	add $t0, $t0, $t1
	sw $t0, -14716($fp)
	lw $t0, -14716($fp)
	lw $t1, 0($t0)
	sw $t1, -14720($fp)
	lw $t0, -14720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -14724($fp)
	li $t0, 4
	sw $t0, -14728($fp)
	li $t0, 4
	lw $t1, -14728($fp)
	mul $t0, $t0, $t1
	sw $t0, -14732($fp)
	lw $t0, -14732($fp)
	lw $t1, -14724($fp)
	add $t0, $t0, $t1
	sw $t0, -14736($fp)
	lw $t0, -14736($fp)
	lw $t1, 0($t0)
	sw $t1, -14740($fp)
	lw $t0, -14740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -14744($fp)
	li $t0, 5
	sw $t0, -14748($fp)
	li $t0, 4
	lw $t1, -14748($fp)
	mul $t0, $t0, $t1
	sw $t0, -14752($fp)
	lw $t0, -14752($fp)
	lw $t1, -14744($fp)
	add $t0, $t0, $t1
	sw $t0, -14756($fp)
	lw $t0, -14756($fp)
	lw $t1, 0($t0)
	sw $t1, -14760($fp)
	lw $t0, -14760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -14764($fp)
	li $t0, 6
	sw $t0, -14768($fp)
	li $t0, 4
	lw $t1, -14768($fp)
	mul $t0, $t0, $t1
	sw $t0, -14772($fp)
	lw $t0, -14772($fp)
	lw $t1, -14764($fp)
	add $t0, $t0, $t1
	sw $t0, -14776($fp)
	lw $t0, -14776($fp)
	lw $t1, 0($t0)
	sw $t1, -14780($fp)
	lw $t0, -14780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2108($fp)
	sw $t0, -14784($fp)
	lw $t0, -14784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2120($fp)
	sw $t0, -14788($fp)
	lw $t0, -14788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2132($fp)
	sw $t0, -14792($fp)
	lw $t0, -14792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2144($fp)
	sw $t0, -14796($fp)
	lw $t0, -14796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -14800($fp)
	li $t0, 0
	sw $t0, -14804($fp)
	li $t0, 4
	lw $t1, -14804($fp)
	mul $t0, $t0, $t1
	sw $t0, -14808($fp)
	lw $t0, -14808($fp)
	lw $t1, -14800($fp)
	add $t0, $t0, $t1
	sw $t0, -14812($fp)
	lw $t0, -14812($fp)
	lw $t1, 0($t0)
	sw $t1, -14816($fp)
	lw $t0, -14816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -14820($fp)
	li $t0, 1
	sw $t0, -14824($fp)
	li $t0, 4
	lw $t1, -14824($fp)
	mul $t0, $t0, $t1
	sw $t0, -14828($fp)
	lw $t0, -14828($fp)
	lw $t1, -14820($fp)
	add $t0, $t0, $t1
	sw $t0, -14832($fp)
	lw $t0, -14832($fp)
	lw $t1, 0($t0)
	sw $t1, -14836($fp)
	lw $t0, -14836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -14840($fp)
	li $t0, 2
	sw $t0, -14844($fp)
	li $t0, 4
	lw $t1, -14844($fp)
	mul $t0, $t0, $t1
	sw $t0, -14848($fp)
	lw $t0, -14848($fp)
	lw $t1, -14840($fp)
	add $t0, $t0, $t1
	sw $t0, -14852($fp)
	lw $t0, -14852($fp)
	lw $t1, 0($t0)
	sw $t1, -14856($fp)
	lw $t0, -14856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -14860($fp)
	li $t0, 3
	sw $t0, -14864($fp)
	li $t0, 4
	lw $t1, -14864($fp)
	mul $t0, $t0, $t1
	sw $t0, -14868($fp)
	lw $t0, -14868($fp)
	lw $t1, -14860($fp)
	add $t0, $t0, $t1
	sw $t0, -14872($fp)
	lw $t0, -14872($fp)
	lw $t1, 0($t0)
	sw $t1, -14876($fp)
	lw $t0, -14876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -14880($fp)
	li $t0, 4
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
	addi $t0, $fp, -228
	sw $t0, -14900($fp)
	li $t0, 5
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
	addi $t0, $fp, -264
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
	addi $t0, $fp, -264
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
	addi $t0, $fp, -264
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
	addi $t0, $fp, -264
	sw $t0, -14980($fp)
	li $t0, 3
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
	addi $t0, $fp, -264
	sw $t0, -15000($fp)
	li $t0, 4
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
	addi $t0, $fp, -264
	sw $t0, -15020($fp)
	li $t0, 5
	sw $t0, -15024($fp)
	li $t0, 4
	lw $t1, -15024($fp)
	mul $t0, $t0, $t1
	sw $t0, -15028($fp)
	lw $t0, -15028($fp)
	lw $t1, -15020($fp)
	add $t0, $t0, $t1
	sw $t0, -15032($fp)
	lw $t0, -15032($fp)
	lw $t1, 0($t0)
	sw $t1, -15036($fp)
	lw $t0, -15036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15040($fp)
	li $t0, 6
	sw $t0, -15044($fp)
	li $t0, 4
	lw $t1, -15044($fp)
	mul $t0, $t0, $t1
	sw $t0, -15048($fp)
	lw $t0, -15048($fp)
	lw $t1, -15040($fp)
	add $t0, $t0, $t1
	sw $t0, -15052($fp)
	lw $t0, -15052($fp)
	lw $t1, 0($t0)
	sw $t1, -15056($fp)
	lw $t0, -15056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15060($fp)
	li $t0, 7
	sw $t0, -15064($fp)
	li $t0, 4
	lw $t1, -15064($fp)
	mul $t0, $t0, $t1
	sw $t0, -15068($fp)
	lw $t0, -15068($fp)
	lw $t1, -15060($fp)
	add $t0, $t0, $t1
	sw $t0, -15072($fp)
	lw $t0, -15072($fp)
	lw $t1, 0($t0)
	sw $t1, -15076($fp)
	lw $t0, -15076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15080($fp)
	li $t0, 8
	sw $t0, -15084($fp)
	li $t0, 4
	lw $t1, -15084($fp)
	mul $t0, $t0, $t1
	sw $t0, -15088($fp)
	lw $t0, -15088($fp)
	lw $t1, -15080($fp)
	add $t0, $t0, $t1
	sw $t0, -15092($fp)
	lw $t0, -15092($fp)
	lw $t1, 0($t0)
	sw $t1, -15096($fp)
	lw $t0, -15096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2516($fp)
	sw $t0, -15100($fp)
	lw $t0, -15100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2528($fp)
	sw $t0, -15104($fp)
	lw $t0, -15104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2540($fp)
	sw $t0, -15108($fp)
	lw $t0, -15108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2552($fp)
	sw $t0, -15112($fp)
	lw $t0, -15112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -288
	sw $t0, -15116($fp)
	li $t0, 0
	sw $t0, -15120($fp)
	li $t0, 4
	lw $t1, -15120($fp)
	mul $t0, $t0, $t1
	sw $t0, -15124($fp)
	lw $t0, -15124($fp)
	lw $t1, -15116($fp)
	add $t0, $t0, $t1
	sw $t0, -15128($fp)
	lw $t0, -15128($fp)
	lw $t1, 0($t0)
	sw $t1, -15132($fp)
	lw $t0, -15132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -288
	sw $t0, -15136($fp)
	li $t0, 1
	sw $t0, -15140($fp)
	li $t0, 4
	lw $t1, -15140($fp)
	mul $t0, $t0, $t1
	sw $t0, -15144($fp)
	lw $t0, -15144($fp)
	lw $t1, -15136($fp)
	add $t0, $t0, $t1
	sw $t0, -15148($fp)
	lw $t0, -15148($fp)
	lw $t1, 0($t0)
	sw $t1, -15152($fp)
	lw $t0, -15152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -288
	sw $t0, -15156($fp)
	li $t0, 2
	sw $t0, -15160($fp)
	li $t0, 4
	lw $t1, -15160($fp)
	mul $t0, $t0, $t1
	sw $t0, -15164($fp)
	lw $t0, -15164($fp)
	lw $t1, -15156($fp)
	add $t0, $t0, $t1
	sw $t0, -15168($fp)
	lw $t0, -15168($fp)
	lw $t1, 0($t0)
	sw $t1, -15172($fp)
	lw $t0, -15172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -288
	sw $t0, -15176($fp)
	li $t0, 3
	sw $t0, -15180($fp)
	li $t0, 4
	lw $t1, -15180($fp)
	mul $t0, $t0, $t1
	sw $t0, -15184($fp)
	lw $t0, -15184($fp)
	lw $t1, -15176($fp)
	add $t0, $t0, $t1
	sw $t0, -15188($fp)
	lw $t0, -15188($fp)
	lw $t1, 0($t0)
	sw $t1, -15192($fp)
	lw $t0, -15192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -288
	sw $t0, -15196($fp)
	li $t0, 4
	sw $t0, -15200($fp)
	li $t0, 4
	lw $t1, -15200($fp)
	mul $t0, $t0, $t1
	sw $t0, -15204($fp)
	lw $t0, -15204($fp)
	lw $t1, -15196($fp)
	add $t0, $t0, $t1
	sw $t0, -15208($fp)
	lw $t0, -15208($fp)
	lw $t1, 0($t0)
	sw $t1, -15212($fp)
	lw $t0, -15212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -288
	sw $t0, -15216($fp)
	li $t0, 5
	sw $t0, -15220($fp)
	li $t0, 4
	lw $t1, -15220($fp)
	mul $t0, $t0, $t1
	sw $t0, -15224($fp)
	lw $t0, -15224($fp)
	lw $t1, -15216($fp)
	add $t0, $t0, $t1
	sw $t0, -15228($fp)
	lw $t0, -15228($fp)
	lw $t1, 0($t0)
	sw $t1, -15232($fp)
	lw $t0, -15232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2708($fp)
	sw $t0, -15236($fp)
	lw $t0, -15236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2720($fp)
	sw $t0, -15240($fp)
	lw $t0, -15240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2732($fp)
	sw $t0, -15244($fp)
	lw $t0, -15244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2744($fp)
	sw $t0, -15248($fp)
	lw $t0, -15248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2756($fp)
	sw $t0, -15252($fp)
	lw $t0, -15252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2768($fp)
	sw $t0, -15256($fp)
	lw $t0, -15256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2780($fp)
	sw $t0, -15260($fp)
	lw $t0, -15260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2792($fp)
	sw $t0, -15264($fp)
	lw $t0, -15264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2804($fp)
	sw $t0, -15268($fp)
	lw $t0, -15268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2816($fp)
	sw $t0, -15272($fp)
	lw $t0, -15272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
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
	addi $t0, $fp, -316
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
	addi $t0, $fp, -316
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
	addi $t0, $fp, -316
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
	addi $t0, $fp, -316
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
	addi $t0, $fp, -316
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
	addi $t0, $fp, -316
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
	lw $t0, -2996($fp)
	sw $t0, -15416($fp)
	lw $t0, -15416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3008($fp)
	sw $t0, -15420($fp)
	lw $t0, -15420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3020($fp)
	sw $t0, -15424($fp)
	lw $t0, -15424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -320
	sw $t0, -15428($fp)
	li $t0, 0
	sw $t0, -15432($fp)
	li $t0, 4
	lw $t1, -15432($fp)
	mul $t0, $t0, $t1
	sw $t0, -15436($fp)
	lw $t0, -15436($fp)
	lw $t1, -15428($fp)
	add $t0, $t0, $t1
	sw $t0, -15440($fp)
	lw $t0, -15440($fp)
	lw $t1, 0($t0)
	sw $t1, -15444($fp)
	lw $t0, -15444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -15448($fp)
	li $t0, 0
	sw $t0, -15452($fp)
	li $t0, 4
	lw $t1, -15452($fp)
	mul $t0, $t0, $t1
	sw $t0, -15456($fp)
	lw $t0, -15456($fp)
	lw $t1, -15448($fp)
	add $t0, $t0, $t1
	sw $t0, -15460($fp)
	lw $t0, -15460($fp)
	lw $t1, 0($t0)
	sw $t1, -15464($fp)
	lw $t0, -15464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -15468($fp)
	li $t0, 1
	sw $t0, -15472($fp)
	li $t0, 4
	lw $t1, -15472($fp)
	mul $t0, $t0, $t1
	sw $t0, -15476($fp)
	lw $t0, -15476($fp)
	lw $t1, -15468($fp)
	add $t0, $t0, $t1
	sw $t0, -15480($fp)
	lw $t0, -15480($fp)
	lw $t1, 0($t0)
	sw $t1, -15484($fp)
	lw $t0, -15484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -15488($fp)
	li $t0, 2
	sw $t0, -15492($fp)
	li $t0, 4
	lw $t1, -15492($fp)
	mul $t0, $t0, $t1
	sw $t0, -15496($fp)
	lw $t0, -15496($fp)
	lw $t1, -15488($fp)
	add $t0, $t0, $t1
	sw $t0, -15500($fp)
	lw $t0, -15500($fp)
	lw $t1, 0($t0)
	sw $t1, -15504($fp)
	lw $t0, -15504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -15508($fp)
	li $t0, 3
	sw $t0, -15512($fp)
	li $t0, 4
	lw $t1, -15512($fp)
	mul $t0, $t0, $t1
	sw $t0, -15516($fp)
	lw $t0, -15516($fp)
	lw $t1, -15508($fp)
	add $t0, $t0, $t1
	sw $t0, -15520($fp)
	lw $t0, -15520($fp)
	lw $t1, 0($t0)
	sw $t1, -15524($fp)
	lw $t0, -15524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -15528($fp)
	li $t0, 4
	sw $t0, -15532($fp)
	li $t0, 4
	lw $t1, -15532($fp)
	mul $t0, $t0, $t1
	sw $t0, -15536($fp)
	lw $t0, -15536($fp)
	lw $t1, -15528($fp)
	add $t0, $t0, $t1
	sw $t0, -15540($fp)
	lw $t0, -15540($fp)
	lw $t1, 0($t0)
	sw $t1, -15544($fp)
	lw $t0, -15544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -344
	sw $t0, -15548($fp)
	li $t0, 5
	sw $t0, -15552($fp)
	li $t0, 4
	lw $t1, -15552($fp)
	mul $t0, $t0, $t1
	sw $t0, -15556($fp)
	lw $t0, -15556($fp)
	lw $t1, -15548($fp)
	add $t0, $t0, $t1
	sw $t0, -15560($fp)
	lw $t0, -15560($fp)
	lw $t1, 0($t0)
	sw $t1, -15564($fp)
	lw $t0, -15564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -15568($fp)
	li $t0, 0
	sw $t0, -15572($fp)
	li $t0, 4
	lw $t1, -15572($fp)
	mul $t0, $t0, $t1
	sw $t0, -15576($fp)
	lw $t0, -15576($fp)
	lw $t1, -15568($fp)
	add $t0, $t0, $t1
	sw $t0, -15580($fp)
	lw $t0, -15580($fp)
	lw $t1, 0($t0)
	sw $t1, -15584($fp)
	lw $t0, -15584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -15588($fp)
	li $t0, 1
	sw $t0, -15592($fp)
	li $t0, 4
	lw $t1, -15592($fp)
	mul $t0, $t0, $t1
	sw $t0, -15596($fp)
	lw $t0, -15596($fp)
	lw $t1, -15588($fp)
	add $t0, $t0, $t1
	sw $t0, -15600($fp)
	lw $t0, -15600($fp)
	lw $t1, 0($t0)
	sw $t1, -15604($fp)
	lw $t0, -15604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -15608($fp)
	li $t0, 2
	sw $t0, -15612($fp)
	li $t0, 4
	lw $t1, -15612($fp)
	mul $t0, $t0, $t1
	sw $t0, -15616($fp)
	lw $t0, -15616($fp)
	lw $t1, -15608($fp)
	add $t0, $t0, $t1
	sw $t0, -15620($fp)
	lw $t0, -15620($fp)
	lw $t1, 0($t0)
	sw $t1, -15624($fp)
	lw $t0, -15624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3272($fp)
	sw $t0, -15628($fp)
	lw $t0, -15628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3284($fp)
	sw $t0, -15632($fp)
	lw $t0, -15632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -368
	sw $t0, -15636($fp)
	li $t0, 0
	sw $t0, -15640($fp)
	li $t0, 4
	lw $t1, -15640($fp)
	mul $t0, $t0, $t1
	sw $t0, -15644($fp)
	lw $t0, -15644($fp)
	lw $t1, -15636($fp)
	add $t0, $t0, $t1
	sw $t0, -15648($fp)
	lw $t0, -15648($fp)
	lw $t1, 0($t0)
	sw $t1, -15652($fp)
	lw $t0, -15652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -368
	sw $t0, -15656($fp)
	li $t0, 1
	sw $t0, -15660($fp)
	li $t0, 4
	lw $t1, -15660($fp)
	mul $t0, $t0, $t1
	sw $t0, -15664($fp)
	lw $t0, -15664($fp)
	lw $t1, -15656($fp)
	add $t0, $t0, $t1
	sw $t0, -15668($fp)
	lw $t0, -15668($fp)
	lw $t1, 0($t0)
	sw $t1, -15672($fp)
	lw $t0, -15672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -368
	sw $t0, -15676($fp)
	li $t0, 2
	sw $t0, -15680($fp)
	li $t0, 4
	lw $t1, -15680($fp)
	mul $t0, $t0, $t1
	sw $t0, -15684($fp)
	lw $t0, -15684($fp)
	lw $t1, -15676($fp)
	add $t0, $t0, $t1
	sw $t0, -15688($fp)
	lw $t0, -15688($fp)
	lw $t1, 0($t0)
	sw $t1, -15692($fp)
	lw $t0, -15692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3368($fp)
	sw $t0, -15696($fp)
	lw $t0, -15696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -15700($fp)
	li $t0, 0
	sw $t0, -15704($fp)
	li $t0, 4
	lw $t1, -15704($fp)
	mul $t0, $t0, $t1
	sw $t0, -15708($fp)
	lw $t0, -15708($fp)
	lw $t1, -15700($fp)
	add $t0, $t0, $t1
	sw $t0, -15712($fp)
	lw $t0, -15712($fp)
	lw $t1, 0($t0)
	sw $t1, -15716($fp)
	lw $t0, -15716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -15720($fp)
	li $t0, 1
	sw $t0, -15724($fp)
	li $t0, 4
	lw $t1, -15724($fp)
	mul $t0, $t0, $t1
	sw $t0, -15728($fp)
	lw $t0, -15728($fp)
	lw $t1, -15720($fp)
	add $t0, $t0, $t1
	sw $t0, -15732($fp)
	lw $t0, -15732($fp)
	lw $t1, 0($t0)
	sw $t1, -15736($fp)
	lw $t0, -15736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -15740($fp)
	li $t0, 2
	sw $t0, -15744($fp)
	li $t0, 4
	lw $t1, -15744($fp)
	mul $t0, $t0, $t1
	sw $t0, -15748($fp)
	lw $t0, -15748($fp)
	lw $t1, -15740($fp)
	add $t0, $t0, $t1
	sw $t0, -15752($fp)
	lw $t0, -15752($fp)
	lw $t1, 0($t0)
	sw $t1, -15756($fp)
	lw $t0, -15756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -384
	sw $t0, -15760($fp)
	li $t0, 3
	sw $t0, -15764($fp)
	li $t0, 4
	lw $t1, -15764($fp)
	mul $t0, $t0, $t1
	sw $t0, -15768($fp)
	lw $t0, -15768($fp)
	lw $t1, -15760($fp)
	add $t0, $t0, $t1
	sw $t0, -15772($fp)
	lw $t0, -15772($fp)
	lw $t1, 0($t0)
	sw $t1, -15776($fp)
	lw $t0, -15776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3476($fp)
	sw $t0, -15780($fp)
	lw $t0, -15780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -15784($fp)
	li $t0, 0
	sw $t0, -15788($fp)
	li $t0, 4
	lw $t1, -15788($fp)
	mul $t0, $t0, $t1
	sw $t0, -15792($fp)
	lw $t0, -15792($fp)
	lw $t1, -15784($fp)
	add $t0, $t0, $t1
	sw $t0, -15796($fp)
	lw $t0, -15796($fp)
	lw $t1, 0($t0)
	sw $t1, -15800($fp)
	lw $t0, -15800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -15804($fp)
	li $t0, 1
	sw $t0, -15808($fp)
	li $t0, 4
	lw $t1, -15808($fp)
	mul $t0, $t0, $t1
	sw $t0, -15812($fp)
	lw $t0, -15812($fp)
	lw $t1, -15804($fp)
	add $t0, $t0, $t1
	sw $t0, -15816($fp)
	lw $t0, -15816($fp)
	lw $t1, 0($t0)
	sw $t1, -15820($fp)
	lw $t0, -15820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -15824($fp)
	li $t0, 2
	sw $t0, -15828($fp)
	li $t0, 4
	lw $t1, -15828($fp)
	mul $t0, $t0, $t1
	sw $t0, -15832($fp)
	lw $t0, -15832($fp)
	lw $t1, -15824($fp)
	add $t0, $t0, $t1
	sw $t0, -15836($fp)
	lw $t0, -15836($fp)
	lw $t1, 0($t0)
	sw $t1, -15840($fp)
	lw $t0, -15840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -15844($fp)
	li $t0, 3
	sw $t0, -15848($fp)
	li $t0, 4
	lw $t1, -15848($fp)
	mul $t0, $t0, $t1
	sw $t0, -15852($fp)
	lw $t0, -15852($fp)
	lw $t1, -15844($fp)
	add $t0, $t0, $t1
	sw $t0, -15856($fp)
	lw $t0, -15856($fp)
	lw $t1, 0($t0)
	sw $t1, -15860($fp)
	lw $t0, -15860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3584($fp)
	sw $t0, -15864($fp)
	lw $t0, -15864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3596($fp)
	sw $t0, -15868($fp)
	lw $t0, -15868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -404
	sw $t0, -15872($fp)
	li $t0, 0
	sw $t0, -15876($fp)
	li $t0, 4
	lw $t1, -15876($fp)
	mul $t0, $t0, $t1
	sw $t0, -15880($fp)
	lw $t0, -15880($fp)
	lw $t1, -15872($fp)
	add $t0, $t0, $t1
	sw $t0, -15884($fp)
	lw $t0, -15884($fp)
	lw $t1, 0($t0)
	sw $t1, -15888($fp)
	lw $t0, -15888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -15892($fp)
	li $t0, 0
	sw $t0, -15896($fp)
	li $t0, 4
	lw $t1, -15896($fp)
	mul $t0, $t0, $t1
	sw $t0, -15900($fp)
	lw $t0, -15900($fp)
	lw $t1, -15892($fp)
	add $t0, $t0, $t1
	sw $t0, -15904($fp)
	lw $t0, -15904($fp)
	lw $t1, 0($t0)
	sw $t1, -15908($fp)
	lw $t0, -15908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -15912($fp)
	li $t0, 1
	sw $t0, -15916($fp)
	li $t0, 4
	lw $t1, -15916($fp)
	mul $t0, $t0, $t1
	sw $t0, -15920($fp)
	lw $t0, -15920($fp)
	lw $t1, -15912($fp)
	add $t0, $t0, $t1
	sw $t0, -15924($fp)
	lw $t0, -15924($fp)
	lw $t1, 0($t0)
	sw $t1, -15928($fp)
	lw $t0, -15928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -15932($fp)
	li $t0, 2
	sw $t0, -15936($fp)
	li $t0, 4
	lw $t1, -15936($fp)
	mul $t0, $t0, $t1
	sw $t0, -15940($fp)
	lw $t0, -15940($fp)
	lw $t1, -15932($fp)
	add $t0, $t0, $t1
	sw $t0, -15944($fp)
	lw $t0, -15944($fp)
	lw $t1, 0($t0)
	sw $t1, -15948($fp)
	lw $t0, -15948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -15952($fp)
	li $t0, 3
	sw $t0, -15956($fp)
	li $t0, 4
	lw $t1, -15956($fp)
	mul $t0, $t0, $t1
	sw $t0, -15960($fp)
	lw $t0, -15960($fp)
	lw $t1, -15952($fp)
	add $t0, $t0, $t1
	sw $t0, -15964($fp)
	lw $t0, -15964($fp)
	lw $t1, 0($t0)
	sw $t1, -15968($fp)
	lw $t0, -15968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -432
	sw $t0, -15972($fp)
	li $t0, 0
	sw $t0, -15976($fp)
	li $t0, 4
	lw $t1, -15976($fp)
	mul $t0, $t0, $t1
	sw $t0, -15980($fp)
	lw $t0, -15980($fp)
	lw $t1, -15972($fp)
	add $t0, $t0, $t1
	sw $t0, -15984($fp)
	lw $t0, -15984($fp)
	lw $t1, 0($t0)
	sw $t1, -15988($fp)
	lw $t0, -15988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -432
	sw $t0, -15992($fp)
	li $t0, 1
	sw $t0, -15996($fp)
	li $t0, 4
	lw $t1, -15996($fp)
	mul $t0, $t0, $t1
	sw $t0, -16000($fp)
	lw $t0, -16000($fp)
	lw $t1, -15992($fp)
	add $t0, $t0, $t1
	sw $t0, -16004($fp)
	lw $t0, -16004($fp)
	lw $t1, 0($t0)
	sw $t1, -16008($fp)
	lw $t0, -16008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -432
	sw $t0, -16012($fp)
	li $t0, 2
	sw $t0, -16016($fp)
	li $t0, 4
	lw $t1, -16016($fp)
	mul $t0, $t0, $t1
	sw $t0, -16020($fp)
	lw $t0, -16020($fp)
	lw $t1, -16012($fp)
	add $t0, $t0, $t1
	sw $t0, -16024($fp)
	lw $t0, -16024($fp)
	lw $t1, 0($t0)
	sw $t1, -16028($fp)
	lw $t0, -16028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3800($fp)
	sw $t0, -16032($fp)
	lw $t0, -16032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3812($fp)
	sw $t0, -16036($fp)
	lw $t0, -16036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3824($fp)
	sw $t0, -16040($fp)
	lw $t0, -16040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3836($fp)
	sw $t0, -16044($fp)
	lw $t0, -16044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3848($fp)
	sw $t0, -16048($fp)
	lw $t0, -16048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3860($fp)
	sw $t0, -16052($fp)
	lw $t0, -16052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3872($fp)
	sw $t0, -16056($fp)
	lw $t0, -16056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3884($fp)
	sw $t0, -16060($fp)
	lw $t0, -16060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3896($fp)
	sw $t0, -16064($fp)
	lw $t0, -16064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3908($fp)
	sw $t0, -16068($fp)
	lw $t0, -16068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3920($fp)
	sw $t0, -16072($fp)
	lw $t0, -16072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3932($fp)
	sw $t0, -16076($fp)
	lw $t0, -16076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3944($fp)
	sw $t0, -16080($fp)
	lw $t0, -16080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3956($fp)
	sw $t0, -16084($fp)
	lw $t0, -16084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3968($fp)
	sw $t0, -16088($fp)
	lw $t0, -16088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -16092($fp)
	li $t0, 34681
	sw $t0, -16096($fp)
	addi $t0, $fp, -384
	sw $t0, -16100($fp)
	lw $t0, -1316($fp)
	sw $t0, -16104($fp)
	li $t0, 0
	lw $t1, -16104($fp)
	sub $t0, $t0, $t1
	sw $t0, -16108($fp)
	li $t0, 4
	lw $t1, -16108($fp)
	mul $t0, $t0, $t1
	sw $t0, -16112($fp)
	lw $t0, -16112($fp)
	lw $t1, -16100($fp)
	add $t0, $t0, $t1
	sw $t0, -16116($fp)
	lw $t0, -16116($fp)
	lw $t1, 0($t0)
	sw $t1, -16120($fp)
	lw $t1, -16096($fp)
	lw $t2, -16120($fp)
	bne $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -16092($fp)
label886:
	lw $ra, -4($fp)
	lw $v0, -16092($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6164
	li $t0, 38787
	sw $t0, -232($fp)
	addi $t0, $fp, -12
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
	li $t0, 25588
	sw $t0, -256($fp)
	addi $t0, $fp, -12
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
	li $t0, 28122
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 28010
	sw $t0, -292($fp)
	addi $t0, $fp, -16
	sw $t0, -296($fp)
	li $t0, 0
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
	li $t0, 13020
	sw $t0, -316($fp)
	addi $t0, $fp, -48
	sw $t0, -320($fp)
	li $t0, 0
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
	li $t0, 34867
	sw $t0, -340($fp)
	addi $t0, $fp, -48
	sw $t0, -344($fp)
	li $t0, 1
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
	li $t0, 42
	sw $t0, -364($fp)
	addi $t0, $fp, -48
	sw $t0, -368($fp)
	li $t0, 2
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
	li $t0, 17936
	sw $t0, -388($fp)
	addi $t0, $fp, -48
	sw $t0, -392($fp)
	li $t0, 3
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
	li $t0, 33620
	sw $t0, -412($fp)
	addi $t0, $fp, -48
	sw $t0, -416($fp)
	li $t0, 4
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
	li $t0, 46375
	sw $t0, -436($fp)
	addi $t0, $fp, -48
	sw $t0, -440($fp)
	li $t0, 5
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
	li $t0, 23018
	sw $t0, -460($fp)
	addi $t0, $fp, -48
	sw $t0, -464($fp)
	li $t0, 6
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
	li $t0, 14882
	sw $t0, -484($fp)
	addi $t0, $fp, -48
	sw $t0, -488($fp)
	li $t0, 7
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
	li $t0, 32582
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 48075
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 18161
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 47094
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 32814
	sw $t0, -556($fp)
	addi $t0, $fp, -80
	sw $t0, -560($fp)
	li $t0, 0
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
	li $t0, 1518
	sw $t0, -580($fp)
	addi $t0, $fp, -80
	sw $t0, -584($fp)
	li $t0, 1
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
	li $t0, 57852
	sw $t0, -604($fp)
	addi $t0, $fp, -80
	sw $t0, -608($fp)
	li $t0, 2
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
	li $t0, 38653
	sw $t0, -628($fp)
	addi $t0, $fp, -80
	sw $t0, -632($fp)
	li $t0, 3
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
	li $t0, 38087
	sw $t0, -652($fp)
	addi $t0, $fp, -80
	sw $t0, -656($fp)
	li $t0, 4
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
	li $t0, 37400
	sw $t0, -676($fp)
	addi $t0, $fp, -80
	sw $t0, -680($fp)
	li $t0, 5
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
	li $t0, 31964
	sw $t0, -700($fp)
	addi $t0, $fp, -80
	sw $t0, -704($fp)
	li $t0, 6
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
	li $t0, 14408
	sw $t0, -724($fp)
	addi $t0, $fp, -80
	sw $t0, -728($fp)
	li $t0, 7
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
	li $t0, 46202
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 30996
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 55599
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 47740
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 44748
	sw $t0, -796($fp)
	addi $t0, $fp, -100
	sw $t0, -800($fp)
	li $t0, 0
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
	li $t0, 2975
	sw $t0, -820($fp)
	addi $t0, $fp, -100
	sw $t0, -824($fp)
	li $t0, 1
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
	li $t0, 16885
	sw $t0, -844($fp)
	addi $t0, $fp, -100
	sw $t0, -848($fp)
	li $t0, 2
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
	li $t0, 18000
	sw $t0, -868($fp)
	addi $t0, $fp, -100
	sw $t0, -872($fp)
	li $t0, 3
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
	li $t0, 28563
	sw $t0, -892($fp)
	addi $t0, $fp, -100
	sw $t0, -896($fp)
	li $t0, 4
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
	li $t0, 45007
	sw $t0, -916($fp)
	addi $t0, $fp, -132
	sw $t0, -920($fp)
	li $t0, 0
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
	li $t0, 46010
	sw $t0, -940($fp)
	addi $t0, $fp, -132
	sw $t0, -944($fp)
	li $t0, 1
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
	li $t0, 41584
	sw $t0, -964($fp)
	addi $t0, $fp, -132
	sw $t0, -968($fp)
	li $t0, 2
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
	li $t0, 14338
	sw $t0, -988($fp)
	addi $t0, $fp, -132
	sw $t0, -992($fp)
	li $t0, 3
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
	li $t0, 46053
	sw $t0, -1012($fp)
	addi $t0, $fp, -132
	sw $t0, -1016($fp)
	li $t0, 4
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
	li $t0, 59520
	sw $t0, -1036($fp)
	addi $t0, $fp, -132
	sw $t0, -1040($fp)
	li $t0, 5
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
	li $t0, 47959
	sw $t0, -1060($fp)
	addi $t0, $fp, -132
	sw $t0, -1064($fp)
	li $t0, 6
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
	li $t0, 26892
	sw $t0, -1084($fp)
	addi $t0, $fp, -132
	sw $t0, -1088($fp)
	li $t0, 7
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
	li $t0, 17002
	sw $t0, -1108($fp)
	addi $t0, $fp, -156
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
	li $t0, 62841
	sw $t0, -1132($fp)
	addi $t0, $fp, -156
	sw $t0, -1136($fp)
	li $t0, 1
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
	li $t0, 59474
	sw $t0, -1156($fp)
	addi $t0, $fp, -156
	sw $t0, -1160($fp)
	li $t0, 2
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
	li $t0, 65078
	sw $t0, -1180($fp)
	addi $t0, $fp, -156
	sw $t0, -1184($fp)
	li $t0, 3
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
	li $t0, 15466
	sw $t0, -1204($fp)
	addi $t0, $fp, -156
	sw $t0, -1208($fp)
	li $t0, 4
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
	li $t0, 41033
	sw $t0, -1228($fp)
	addi $t0, $fp, -156
	sw $t0, -1232($fp)
	li $t0, 5
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
	li $t0, 32356
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 16985
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 33349
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 5474
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 55072
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 5213
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 37438
	sw $t0, -1324($fp)
	addi $t0, $fp, -196
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
	li $t0, 3944
	sw $t0, -1348($fp)
	addi $t0, $fp, -196
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
	li $t0, 51416
	sw $t0, -1372($fp)
	addi $t0, $fp, -196
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
	li $t0, 2898
	sw $t0, -1396($fp)
	addi $t0, $fp, -196
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
	li $t0, 59543
	sw $t0, -1420($fp)
	addi $t0, $fp, -196
	sw $t0, -1424($fp)
	li $t0, 4
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1424($fp)
	lw $t1, -1432($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1420($fp)
	lw $t1, -1436($fp)
	sw $t0, 0($t1)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	li $t0, 33620
	sw $t0, -1444($fp)
	addi $t0, $fp, -196
	sw $t0, -1448($fp)
	li $t0, 5
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1448($fp)
	lw $t1, -1456($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1444($fp)
	lw $t1, -1460($fp)
	sw $t0, 0($t1)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	li $t0, 47647
	sw $t0, -1468($fp)
	addi $t0, $fp, -196
	sw $t0, -1472($fp)
	li $t0, 6
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
	li $t0, 62518
	sw $t0, -1492($fp)
	addi $t0, $fp, -196
	sw $t0, -1496($fp)
	li $t0, 7
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
	li $t0, 50505
	sw $t0, -1516($fp)
	addi $t0, $fp, -196
	sw $t0, -1520($fp)
	li $t0, 8
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
	li $t0, 111
	sw $t0, -1540($fp)
	addi $t0, $fp, -196
	sw $t0, -1544($fp)
	li $t0, 9
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
	li $t0, 25546
	sw $t0, -1564($fp)
	addi $t0, $fp, -228
	sw $t0, -1568($fp)
	li $t0, 0
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
	li $t0, 29976
	sw $t0, -1588($fp)
	addi $t0, $fp, -228
	sw $t0, -1592($fp)
	li $t0, 1
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
	li $t0, 46121
	sw $t0, -1612($fp)
	addi $t0, $fp, -228
	sw $t0, -1616($fp)
	li $t0, 2
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
	li $t0, 1594
	sw $t0, -1636($fp)
	addi $t0, $fp, -228
	sw $t0, -1640($fp)
	li $t0, 3
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
	li $t0, 44314
	sw $t0, -1660($fp)
	addi $t0, $fp, -228
	sw $t0, -1664($fp)
	li $t0, 4
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
	li $t0, 26638
	sw $t0, -1684($fp)
	addi $t0, $fp, -228
	sw $t0, -1688($fp)
	li $t0, 5
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
	li $t0, 61114
	sw $t0, -1708($fp)
	addi $t0, $fp, -228
	sw $t0, -1712($fp)
	li $t0, 6
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
	li $t0, 26737
	sw $t0, -1732($fp)
	addi $t0, $fp, -228
	sw $t0, -1736($fp)
	li $t0, 7
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
	li $t0, 53531
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 12580
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 24042
	sw $t0, -1880($fp)
	addi $t0, $fp, -1816
	sw $t0, -1884($fp)
	li $t0, 0
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
	li $t0, 47469
	sw $t0, -1904($fp)
	addi $t0, $fp, -1816
	sw $t0, -1908($fp)
	li $t0, 1
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
	li $t0, 12122
	sw $t0, -1928($fp)
	addi $t0, $fp, -1816
	sw $t0, -1932($fp)
	li $t0, 2
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
	li $t0, 39509
	sw $t0, -1952($fp)
	addi $t0, $fp, -1816
	sw $t0, -1956($fp)
	li $t0, 3
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
	li $t0, 22966
	sw $t0, -1976($fp)
	addi $t0, $fp, -1816
	sw $t0, -1980($fp)
	li $t0, 4
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
	li $t0, 44479
	sw $t0, -2000($fp)
	addi $t0, $fp, -1816
	sw $t0, -2004($fp)
	li $t0, 5
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
	li $t0, 56494
	sw $t0, -2024($fp)
	addi $t0, $fp, -1816
	sw $t0, -2028($fp)
	li $t0, 6
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
	li $t0, 56316
	sw $t0, -2048($fp)
	addi $t0, $fp, -1816
	sw $t0, -2052($fp)
	li $t0, 7
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
	li $t0, 49953
	sw $t0, -2072($fp)
	addi $t0, $fp, -1816
	sw $t0, -2076($fp)
	li $t0, 8
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
	li $t0, 46030
	sw $t0, -2096($fp)
	addi $t0, $fp, -1816
	sw $t0, -2100($fp)
	li $t0, 9
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
	li $t0, 61529
	sw $t0, -2120($fp)
	addi $t0, $fp, -1832
	sw $t0, -2124($fp)
	li $t0, 0
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
	li $t0, 21855
	sw $t0, -2144($fp)
	addi $t0, $fp, -1832
	sw $t0, -2148($fp)
	li $t0, 1
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
	li $t0, 49974
	sw $t0, -2168($fp)
	addi $t0, $fp, -1832
	sw $t0, -2172($fp)
	li $t0, 2
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
	li $t0, 47409
	sw $t0, -2192($fp)
	addi $t0, $fp, -1832
	sw $t0, -2196($fp)
	li $t0, 3
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
	li $t0, 24753
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	li $t0, 43981
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -2236($fp)
	li $t0, 15493
	sw $t0, -2240($fp)
	addi $t0, $fp, -1836
	sw $t0, -2244($fp)
	li $t0, 0
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
	li $t0, 6864
	sw $t0, -2264($fp)
	addi $t0, $fp, -1876
	sw $t0, -2268($fp)
	li $t0, 0
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
	li $t0, 40963
	sw $t0, -2288($fp)
	addi $t0, $fp, -1876
	sw $t0, -2292($fp)
	li $t0, 1
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
	li $t0, 462
	sw $t0, -2312($fp)
	addi $t0, $fp, -1876
	sw $t0, -2316($fp)
	li $t0, 2
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
	li $t0, 6975
	sw $t0, -2336($fp)
	addi $t0, $fp, -1876
	sw $t0, -2340($fp)
	li $t0, 3
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2340($fp)
	lw $t1, -2348($fp)
	add $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2336($fp)
	lw $t1, -2352($fp)
	sw $t0, 0($t1)
	lw $t0, -2352($fp)
	lw $t1, 0($t0)
	sw $t1, -2356($fp)
	li $t0, 973
	sw $t0, -2360($fp)
	addi $t0, $fp, -1876
	sw $t0, -2364($fp)
	li $t0, 4
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
	li $t0, 30438
	sw $t0, -2384($fp)
	addi $t0, $fp, -1876
	sw $t0, -2388($fp)
	li $t0, 5
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
	li $t0, 53097
	sw $t0, -2408($fp)
	addi $t0, $fp, -1876
	sw $t0, -2412($fp)
	li $t0, 6
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
	li $t0, 2567
	sw $t0, -2432($fp)
	addi $t0, $fp, -1876
	sw $t0, -2436($fp)
	li $t0, 7
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
	li $t0, 9217
	sw $t0, -2456($fp)
	addi $t0, $fp, -1876
	sw $t0, -2460($fp)
	li $t0, 8
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
	li $t0, 14199
	sw $t0, -2480($fp)
	addi $t0, $fp, -1876
	sw $t0, -2484($fp)
	li $t0, 9
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
	li $t0, 63681
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	li $t0, 35954
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	li $t0, 2194
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	sw $t0, -2536($fp)
	li $t0, 10726
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -2548($fp)
	addi $t0, $fp, -1816
	sw $t0, -2552($fp)
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 4
	lw $t1, -2556($fp)
	mul $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, -2552($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	lw $t1, 0($t0)
	sw $t1, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1816
	sw $t0, -2572($fp)
	li $t0, 1
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
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1816
	sw $t0, -2592($fp)
	li $t0, 2
	sw $t0, -2596($fp)
	li $t0, 4
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1816
	sw $t0, -2612($fp)
	li $t0, 3
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
	addi $t0, $fp, -1816
	sw $t0, -2632($fp)
	li $t0, 4
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
	addi $t0, $fp, -1816
	sw $t0, -2652($fp)
	li $t0, 5
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
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1816
	sw $t0, -2672($fp)
	li $t0, 6
	sw $t0, -2676($fp)
	li $t0, 4
	lw $t1, -2676($fp)
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	lw $t0, -2688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1816
	sw $t0, -2692($fp)
	li $t0, 7
	sw $t0, -2696($fp)
	li $t0, 4
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, 0($t0)
	sw $t1, -2708($fp)
	lw $t0, -2708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1816
	sw $t0, -2712($fp)
	li $t0, 8
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
	lw $t0, -2728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1816
	sw $t0, -2732($fp)
	li $t0, 9
	sw $t0, -2736($fp)
	li $t0, 4
	lw $t1, -2736($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, 0($t0)
	sw $t1, -2748($fp)
	lw $t0, -2748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1832
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
	lw $t0, -2768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1832
	sw $t0, -2772($fp)
	li $t0, 1
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
	addi $t0, $fp, -1832
	sw $t0, -2792($fp)
	li $t0, 2
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
	addi $t0, $fp, -1832
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
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2220($fp)
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2232($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1836
	sw $t0, -2840($fp)
	li $t0, 0
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
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1876
	sw $t0, -2860($fp)
	li $t0, 0
	sw $t0, -2864($fp)
	li $t0, 4
	lw $t1, -2864($fp)
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	lw $t1, 0($t0)
	sw $t1, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1876
	sw $t0, -2880($fp)
	li $t0, 1
	sw $t0, -2884($fp)
	li $t0, 4
	lw $t1, -2884($fp)
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1876
	sw $t0, -2900($fp)
	li $t0, 2
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
	addi $t0, $fp, -1876
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
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1876
	sw $t0, -2940($fp)
	li $t0, 4
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
	addi $t0, $fp, -1876
	sw $t0, -2960($fp)
	li $t0, 5
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
	addi $t0, $fp, -1876
	sw $t0, -2980($fp)
	li $t0, 6
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
	addi $t0, $fp, -1876
	sw $t0, -3000($fp)
	li $t0, 7
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
	addi $t0, $fp, -1876
	sw $t0, -3020($fp)
	li $t0, 8
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
	addi $t0, $fp, -1876
	sw $t0, -3040($fp)
	li $t0, 9
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
	lw $t0, -2508($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2520($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2532($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2544($fp)
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1816
	sw $t0, -3076($fp)
	li $t0, 0
	sw $t0, -3080($fp)
	li $t0, 59997
	sw $t0, -3084($fp)
	lw $t0, -1280($fp)
	sw $t0, -3088($fp)
	lw $t1, -3084($fp)
	lw $t2, -3088($fp)
	beq $t1, $t2, label887
	j label888
label887:
	li $t0, 1
	sw $t0, -3080($fp)
label888:
	li $t0, 4
	lw $t1, -3080($fp)
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, 0($t0)
	sw $t1, -3100($fp)
	lw $t0, -3100($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -3104($fp)
	lw $ra, -4($fp)
	lw $v0, -3104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -1816
	sw $t0, -3108($fp)
	lw $t0, -1280($fp)
	sw $t0, -3112($fp)
	li $t0, 49664
	sw $t0, -3116($fp)
	lw $t0, -3112($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	li $t0, 4
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label892
label893:
	lw $t0, -1772($fp)
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label892
label892:
	li $t0, 22848
	sw $t0, -3140($fp)
	li $t0, 0
	sw $t0, -3144($fp)
	li $t0, 51744
	sw $t0, -3148($fp)
	lw $t0, -1772($fp)
	sw $t0, -3152($fp)
	lw $t0, -3148($fp)
	lw $t1, -3152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label894
	j label896
label896:
	li $t0, 5422
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label894
	j label895
label894:
	li $t0, 1
	sw $t0, -3144($fp)
label895:
	li $t0, 0
	sw $t0, -3164($fp)
	addi $t0, $fp, -16
	sw $t0, -3168($fp)
	lw $t0, -788($fp)
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
	li $t0, 63410
	sw $t0, -3188($fp)
	lw $t1, -3184($fp)
	lw $t2, -3188($fp)
	bgt $t1, $t2, label897
	j label898
label897:
	li $t0, 1
	sw $t0, -3164($fp)
label898:
	li $t0, 0
	sw $t0, -3192($fp)
	lw $t0, -1304($fp)
	sw $t0, -3196($fp)
	li $t0, 1791
	sw $t0, -3200($fp)
	lw $t1, -3196($fp)
	lw $t2, -3200($fp)
	bge $t1, $t2, label899
	j label901
label901:
	li $t0, 24928
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -3192($fp)
label900:
	li $t0, 0
	sw $t0, -3208($fp)
	lw $t0, -2508($fp)
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -3216($fp)
	li $t0, 0
	sw $t0, -3220($fp)
	lw $t0, -2544($fp)
	sw $t0, -3224($fp)
	lw $t1, -3224($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label907
label908:
	lw $t0, -1772($fp)
	sw $t0, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label907
label907:
	lw $t0, -524($fp)
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label906
label905:
	li $t0, 1
	sw $t0, -3220($fp)
label906:
	li $t0, 33970
	sw $t0, -3236($fp)
	li $t0, 7094
	sw $t0, -3240($fp)
	lw $t0, -3236($fp)
	lw $t1, -3240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3244($fp)
	lw $t0, -536($fp)
	sw $t0, -3248($fp)
	lw $t0, -3244($fp)
	lw $t1, -3248($fp)
	sub $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -764($fp)
	sw $t0, -3256($fp)
	addi $sp, $sp, -4
	lw $t0, -3216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3260($fp)
	addi $sp, $sp, 20
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label903
label904:
	lw $t0, -2532($fp)
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label903
label902:
	li $t0, 1
	sw $t0, -3208($fp)
label903:
	addi $sp, $sp, -4
	lw $t0, -3144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3208($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3268($fp)
	addi $sp, $sp, 20
	lw $t1, -3140($fp)
	lw $t2, -3268($fp)
	bgt $t1, $t2, label889
	j label890
label889:
	li $t0, 59404
	sw $t0, -3280($fp)
	addi $t0, $fp, -3276
	sw $t0, -3284($fp)
	li $t0, 0
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
	li $t0, 8063
	sw $t0, -3304($fp)
	addi $t0, $fp, -3276
	sw $t0, -3308($fp)
	li $t0, 1
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
	li $t0, 55396
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -3336($fp)
	li $t0, 0
	sw $t0, -3340($fp)
	lw $t0, -3332($fp)
	sw $t0, -3344($fp)
	lw $t0, -1292($fp)
	sw $t0, -3348($fp)
	lw $t0, -3344($fp)
	lw $t1, -3348($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	li $t0, 0
	lw $t1, -3352($fp)
	sub $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label911
label911:
	lw $t0, -1256($fp)
	sw $t0, -3360($fp)
	lw $t1, -3360($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label910
label909:
	li $t0, 1
	sw $t0, -3340($fp)
label910:
	lw $t0, -3340($fp)
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -3364($fp)
	li $t0, 0
	sw $t0, -3368($fp)
	lw $t0, -1280($fp)
	sw $t0, -3372($fp)
	lw $t0, -548($fp)
	sw $t0, -3376($fp)
	lw $t0, -3372($fp)
	lw $t1, -3376($fp)
	sub $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label914
label915:
	lw $t0, -1292($fp)
	sw $t0, -3384($fp)
	lw $t1, -3384($fp)
	li $t2, 0
	bne $t1, $t2, label912
	j label914
label914:
	li $t0, 41277
	sw $t0, -3388($fp)
	li $t0, 32817
	sw $t0, -3392($fp)
	lw $t1, -3388($fp)
	lw $t2, -3392($fp)
	beq $t1, $t2, label912
	j label913
label912:
	li $t0, 1
	sw $t0, -3368($fp)
label913:
	lw $t0, -3368($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -3396($fp)
	addi $t0, $fp, -80
	sw $t0, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	li $t0, 0
	sw $t0, -3408($fp)
	li $t0, 56771
	sw $t0, -3412($fp)
	li $t0, 39681
	sw $t0, -3416($fp)
	lw $t1, -3412($fp)
	lw $t2, -3416($fp)
	blt $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -3408($fp)
label919:
	lw $t0, -1280($fp)
	sw $t0, -3420($fp)
	lw $t1, -3408($fp)
	lw $t2, -3420($fp)
	beq $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -3404($fp)
label917:
	lw $t0, -1316($fp)
	sw $t0, -3424($fp)
	li $t0, 33841
	sw $t0, -3428($fp)
	lw $t0, -3424($fp)
	lw $t1, -3428($fp)
	sub $t0, $t0, $t1
	sw $t0, -3432($fp)
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3436($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -3436($fp)
	mul $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	lw $t1, -3400($fp)
	add $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, 0($t0)
	sw $t1, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	addi $t0, $fp, -3276
	sw $t0, -3456($fp)
	lw $t0, 4($fp)
	sw $t0, -3460($fp)
	li $t0, 4
	lw $t1, -3460($fp)
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, 0($t0)
	sw $t1, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label921
label922:
	lw $t0, -512($fp)
	sw $t0, -3476($fp)
	lw $t1, -3476($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label921
label920:
	li $t0, 1
	sw $t0, -3452($fp)
label921:
	li $t0, 0
	sw $t0, -3480($fp)
	lw $t0, -1280($fp)
	sw $t0, -3484($fp)
	li $t0, 9268
	sw $t0, -3488($fp)
	lw $t0, -3484($fp)
	lw $t1, -3488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3492($fp)
	lw $t0, -536($fp)
	sw $t0, -3496($fp)
	lw $t1, -3492($fp)
	lw $t2, -3496($fp)
	blt $t1, $t2, label923
	j label924
label923:
	li $t0, 1
	sw $t0, -3480($fp)
label924:
	lw $t0, -1280($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -3504($fp)
	li $t0, 0
	sw $t0, -3508($fp)
	addi $t0, $fp, -16
	sw $t0, -3512($fp)
	lw $t0, -1268($fp)
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
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label927
label927:
	lw $t0, -2508($fp)
	sw $t0, -3532($fp)
	lw $t1, -3532($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label926
label925:
	li $t0, 1
	sw $t0, -3508($fp)
label926:
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3536($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3540($fp)
	li $t0, 10955
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -3548($fp)
	li $t0, 12809
	sw $t0, -3552($fp)
	li $t0, 31353
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	li $t0, 48417
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3568($fp)
	li $t0, 0
	sw $t0, -3572($fp)
	li $t0, 10242
	sw $t0, -3576($fp)
	li $t0, 22136
	sw $t0, -3580($fp)
	lw $t1, -3576($fp)
	lw $t2, -3580($fp)
	bne $t1, $t2, label930
	j label929
label930:
	li $t0, 34218
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label929
label928:
	li $t0, 1
	sw $t0, -3572($fp)
label929:
	li $t0, 0
	sw $t0, -3588($fp)
	lw $t0, -1760($fp)
	sw $t0, -3592($fp)
	li $t0, 57233
	sw $t0, -3596($fp)
	lw $t0, -3592($fp)
	lw $t1, -3596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3600($fp)
	li $t0, 46657
	sw $t0, -3604($fp)
	lw $t1, -3600($fp)
	lw $t2, -3604($fp)
	bne $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -3588($fp)
label932:
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3608($fp)
	addi $sp, $sp, 20
	lw $t0, -3540($fp)
	lw $t1, -3608($fp)
	sub $t0, $t0, $t1
	sw $t0, -3612($fp)
	li $t0, 0
	sw $t0, -3616($fp)
	li $t0, 0
	sw $t0, -3620($fp)
	li $t0, 0
	sw $t0, -3624($fp)
	lw $t0, -2232($fp)
	sw $t0, -3628($fp)
	lw $t0, -548($fp)
	sw $t0, -3632($fp)
	lw $t1, -3628($fp)
	lw $t2, -3632($fp)
	bgt $t1, $t2, label938
	j label939
label938:
	li $t0, 1
	sw $t0, -3624($fp)
label939:
	lw $t0, -1280($fp)
	sw $t0, -3636($fp)
	lw $t1, -3624($fp)
	lw $t2, -3636($fp)
	beq $t1, $t2, label936
	j label937
label936:
	li $t0, 1
	sw $t0, -3620($fp)
label937:
	li $t0, 0
	sw $t0, -3640($fp)
	li $t0, 21681
	sw $t0, -3644($fp)
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label942
	j label940
label942:
	lw $t0, -1292($fp)
	sw $t0, -3648($fp)
	lw $t1, -3648($fp)
	li $t2, 0
	bne $t1, $t2, label940
	j label941
label940:
	li $t0, 1
	sw $t0, -3640($fp)
label941:
	li $t0, 0
	sw $t0, -3652($fp)
	li $t0, 50612
	sw $t0, -3656($fp)
	lw $t0, -1292($fp)
	sw $t0, -3660($fp)
	lw $t1, -3656($fp)
	lw $t2, -3660($fp)
	beq $t1, $t2, label943
	j label944
label943:
	li $t0, 1
	sw $t0, -3652($fp)
label944:
	li $t0, 1771
	sw $t0, -3664($fp)
	lw $t0, -524($fp)
	sw $t0, -3668($fp)
	lw $t0, -3664($fp)
	lw $t1, -3668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3672($fp)
	lw $t0, -1772($fp)
	sw $t0, -3676($fp)
	lw $t0, -3672($fp)
	lw $t1, -3676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3680($fp)
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3680($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3684($fp)
	addi $sp, $sp, 20
	li $t0, 61768
	sw $t0, -3688($fp)
	lw $t0, -752($fp)
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3696($fp)
	li $t0, 34740
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3704($fp)
	lw $t0, -3684($fp)
	lw $t1, -3704($fp)
	sub $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t1, -3708($fp)
	li $t2, 0
	bne $t1, $t2, label933
	j label935
label935:
	addi $t0, $fp, -16
	sw $t0, -3712($fp)
	lw $t0, -764($fp)
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
	li $t0, 0
	lw $t1, -3728($fp)
	sub $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t1, -3732($fp)
	li $t2, 0
	bne $t1, $t2, label933
	j label934
label933:
	li $t0, 1
	sw $t0, -3616($fp)
label934:
	j label891
label890:
	li $t0, 0
	sw $t0, -3736($fp)
	li $t0, 60552
	sw $t0, -3740($fp)
	li $t0, 0
	sw $t0, -3744($fp)
	li $t0, 39709
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label952
label953:
	li $t0, 32529
	sw $t0, -3752($fp)
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label952
label952:
	lw $t0, -548($fp)
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -3744($fp)
label951:
	addi $sp, $sp, -4
	lw $t0, -3740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3744($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3760($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -1816
	sw $t0, -3764($fp)
	lw $t0, -752($fp)
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
	lw $t0, -764($fp)
	sw $t0, -3784($fp)
	lw $t0, -3780($fp)
	lw $t1, -3784($fp)
	sub $t0, $t0, $t1
	sw $t0, -3788($fp)
	li $t0, 41834
	sw $t0, -3792($fp)
	li $t0, 46321
	sw $t0, -3796($fp)
	lw $t0, -3792($fp)
	lw $t1, -3796($fp)
	sub $t0, $t0, $t1
	sw $t0, -3800($fp)
	li $t0, 55130
	sw $t0, -3804($fp)
	lw $t0, -3800($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3808($fp)
	li $t0, 0
	sw $t0, -3812($fp)
	lw $t0, -788($fp)
	sw $t0, -3816($fp)
	lw $t1, -3816($fp)
	li $t2, 0
	bne $t1, $t2, label954
	j label957
label957:
	li $t0, 44529
	sw $t0, -3820($fp)
	lw $t1, -3820($fp)
	li $t2, 0
	bne $t1, $t2, label954
	j label956
label956:
	li $t0, 30202
	sw $t0, -3824($fp)
	lw $t1, -3824($fp)
	li $t2, 0
	bne $t1, $t2, label954
	j label955
label954:
	li $t0, 1
	sw $t0, -3812($fp)
label955:
	addi $sp, $sp, -4
	lw $t0, -3760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3812($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3828($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3828($fp)
	sub $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t1, -3832($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label948
label948:
	li $t0, 1
	sw $t0, -3736($fp)
label949:
	lw $t0, 4($fp)
	sw $t0, -3836($fp)
	lw $t0, -3736($fp)
	lw $t1, -3836($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	li $t0, 33577
	sw $t0, -3844($fp)
	addi $t0, $fp, -1832
	sw $t0, -3848($fp)
	lw $t0, -524($fp)
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
	li $t0, 0
	lw $t1, -3864($fp)
	sub $t0, $t0, $t1
	sw $t0, -3868($fp)
	addi $sp, $sp, -4
	lw $t0, -3868($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3872($fp)
	addi $sp, $sp, 8
	lw $t0, -3844($fp)
	lw $t1, -3872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3876($fp)
	li $t0, 0
	lw $t1, -3876($fp)
	sub $t0, $t0, $t1
	sw $t0, -3880($fp)
	li $t0, 0
	lw $t1, -3880($fp)
	sub $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t1, -3840($fp)
	lw $t2, -3884($fp)
	blt $t1, $t2, label945
	j label946
label945:
	lw $t0, -764($fp)
	sw $t0, -3888($fp)
	li $t0, 0
	sw $t0, -3892($fp)
	li $t0, 18717
	sw $t0, -3896($fp)
	li $t0, 553
	sw $t0, -3900($fp)
	lw $t0, -3896($fp)
	lw $t1, -3900($fp)
	sub $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label962
label963:
	li $t0, 47555
	sw $t0, -3908($fp)
	lw $t1, -3908($fp)
	li $t2, 0
	bne $t1, $t2, label961
	j label962
label961:
	li $t0, 1
	sw $t0, -3892($fp)
label962:
	li $t0, 0
	sw $t0, -3912($fp)
	li $t0, 7874
	sw $t0, -3916($fp)
	lw $t0, -2544($fp)
	sw $t0, -3920($fp)
	lw $t0, -3916($fp)
	lw $t1, -3920($fp)
	sub $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -1316($fp)
	sw $t0, -3928($fp)
	lw $t1, -3924($fp)
	lw $t2, -3928($fp)
	bne $t1, $t2, label964
	j label965
label964:
	li $t0, 1
	sw $t0, -3912($fp)
label965:
	lw $t0, -1256($fp)
	sw $t0, -3932($fp)
	lw $t0, -1772($fp)
	sw $t0, -3936($fp)
	lw $t0, -3932($fp)
	lw $t1, -3936($fp)
	mul $t0, $t0, $t1
	sw $t0, -3940($fp)
	li $t0, 9318
	sw $t0, -3944($fp)
	lw $t0, -3940($fp)
	lw $t1, -3944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3948($fp)
	li $t0, 0
	sw $t0, -3952($fp)
	li $t0, 0
	sw $t0, -3956($fp)
	li $t0, 50412
	sw $t0, -3960($fp)
	li $t0, 0
	lw $t1, -3960($fp)
	sub $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -284($fp)
	sw $t0, -3968($fp)
	lw $t1, -3964($fp)
	lw $t2, -3968($fp)
	bne $t1, $t2, label968
	j label969
label968:
	li $t0, 1
	sw $t0, -3956($fp)
label969:
	lw $t0, -1280($fp)
	sw $t0, -3972($fp)
	li $t0, 40593
	sw $t0, -3976($fp)
	lw $t0, -3972($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	addi $sp, $sp, -4
	lw $t0, -3956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3980($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3984($fp)
	addi $sp, $sp, 12
	lw $t0, -1268($fp)
	sw $t0, -3988($fp)
	lw $t1, -3984($fp)
	lw $t2, -3988($fp)
	bne $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -3952($fp)
label967:
	addi $sp, $sp, -4
	lw $t0, -3892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3992($fp)
	addi $sp, $sp, 20
	lw $t0, -3888($fp)
	lw $t1, -3992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3996($fp)
	lw $t1, -3996($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label959
label958:
	li $t0, 0
	sw $t0, -4000($fp)
	li $t0, 27986
	sw $t0, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label970
label970:
	li $t0, 1
	sw $t0, -4000($fp)
label971:
	j label960
label959:
label972:
	li $t0, 0
	sw $t0, -4008($fp)
	li $t0, 0
	sw $t0, -4012($fp)
	lw $t0, -1316($fp)
	sw $t0, -4016($fp)
	li $t0, 0
	lw $t1, -4016($fp)
	sub $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t1, -4020($fp)
	li $t2, 0
	bne $t1, $t2, label978
	j label977
label977:
	li $t0, 1
	sw $t0, -4012($fp)
label978:
	addi $sp, $sp, -4
	lw $t0, -4012($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4024($fp)
	addi $sp, $sp, 8
	lw $t1, -4024($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label975
label975:
	li $t0, 1
	sw $t0, -4008($fp)
label976:
	li $t0, 0
	lw $t1, -4008($fp)
	sub $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t1, -4028($fp)
	li $t2, 0
	bne $t1, $t2, label973
	j label974
label973:
	addi $t0, $fp, -1836
	sw $t0, -4032($fp)
	addi $t0, $fp, -12
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
	li $t0, 14387
	sw $t0, -4056($fp)
	lw $t0, -4052($fp)
	lw $t1, -4056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4060($fp)
	li $t0, 0
	sw $t0, -4064($fp)
	li $t0, 57787
	sw $t0, -4068($fp)
	li $t0, 0
	lw $t1, -4068($fp)
	sub $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label980
	j label979
label979:
	li $t0, 1
	sw $t0, -4064($fp)
label980:
	lw $t0, -2232($fp)
	sw $t0, -4076($fp)
	lw $t0, -2220($fp)
	sw $t0, -4080($fp)
	lw $t0, -4076($fp)
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -548($fp)
	sw $t0, -4088($fp)
	lw $t0, -4084($fp)
	lw $t1, -4088($fp)
	sub $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -788($fp)
	sw $t0, -4096($fp)
	addi $sp, $sp, -4
	lw $t0, -4060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4100($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -4100($fp)
	mul $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, -4032($fp)
	add $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	lw $t1, 0($t0)
	sw $t1, -4112($fp)
	j label972
label974:
label960:
	j label947
label946:
	li $t0, 0
	sw $t0, -4116($fp)
	li $t0, 51037
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -4124($fp)
	li $t0, 0
	sw $t0, -4128($fp)
	li $t0, 62894
	sw $t0, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label983
label983:
	li $t0, 1
	sw $t0, -4128($fp)
label984:
	lw $t0, -2520($fp)
	sw $t0, -4136($fp)
	lw $t0, -4128($fp)
	lw $t1, -4136($fp)
	sub $t0, $t0, $t1
	sw $t0, -4140($fp)
	addi $sp, $sp, -4
	lw $t0, -4124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4140($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4144($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4144($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4148($fp)
	addi $sp, $sp, 8
	li $t0, 45740
	sw $t0, -4152($fp)
	li $t0, 0
	lw $t1, -4152($fp)
	sub $t0, $t0, $t1
	sw $t0, -4156($fp)
	li $t0, 0
	lw $t1, -4156($fp)
	sub $t0, $t0, $t1
	sw $t0, -4160($fp)
	li $t0, 45776
	sw $t0, -4164($fp)
	lw $t0, -4160($fp)
	lw $t1, -4164($fp)
	add $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t1, -4148($fp)
	lw $t2, -4168($fp)
	bge $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -4116($fp)
label982:
	lw $ra, -4($fp)
	lw $v0, -4116($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label947:
label891:
label985:
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, -1280($fp)
	sw $t0, -4176($fp)
	lw $t1, -4176($fp)
	li $t2, 0
	bne $t1, $t2, label989
	j label988
label988:
	li $t0, 1
	sw $t0, -4172($fp)
label989:
	li $t0, 61992
	sw $t0, -4180($fp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4184($fp)
	addi $sp, $sp, 8
	lw $t0, -4172($fp)
	lw $t1, -4184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4188($fp)
	addi $t0, $fp, -1876
	sw $t0, -4192($fp)
	lw $t0, -284($fp)
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
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4212($fp)
	addi $sp, $sp, 8
	lw $t0, -4188($fp)
	lw $t1, -4212($fp)
	add $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t1, -4216($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label987
label986:
	addi $t0, $fp, -228
	sw $t0, -4220($fp)
	li $t0, 0
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	li $t0, 47511
	sw $t0, -4232($fp)
	lw $t1, -4232($fp)
	li $t2, 0
	bne $t1, $t2, label993
	j label992
label992:
	li $t0, 1
	sw $t0, -4228($fp)
label993:
	li $t0, 0
	lw $t1, -4228($fp)
	sub $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -524($fp)
	sw $t0, -4240($fp)
	lw $t1, -4236($fp)
	lw $t2, -4240($fp)
	beq $t1, $t2, label990
	j label991
label990:
	li $t0, 1
	sw $t0, -4224($fp)
label991:
	li $t0, 4
	lw $t1, -4224($fp)
	mul $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	lw $t1, 0($t0)
	sw $t1, -4252($fp)
	j label985
label987:
	li $t0, 30852
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -4264($fp)
label994:
	li $t0, 18137
	sw $t0, -4268($fp)
	addi $t0, $fp, -228
	sw $t0, -4272($fp)
	lw $t0, -1268($fp)
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
	li $t0, 0
	lw $t1, -4288($fp)
	sub $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4268($fp)
	lw $t1, -4292($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	li $t0, 0
	sw $t0, -4300($fp)
	addi $t0, $fp, -80
	sw $t0, -4304($fp)
	li $t0, 3
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
	lw $t0, -788($fp)
	sw $t0, -4324($fp)
	lw $t0, -4320($fp)
	lw $t1, -4324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4328($fp)
	li $t0, 43744
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -4336($fp)
	addi $sp, $sp, -4
	lw $t0, -4328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4336($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4340($fp)
	addi $sp, $sp, 12
	lw $t1, -4340($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label997
label997:
	li $t0, 1
	sw $t0, -4300($fp)
label998:
	lw $t1, -4296($fp)
	lw $t2, -4300($fp)
	bne $t1, $t2, label995
	j label996
label995:
	li $t0, 0
	sw $t0, -4344($fp)
	li $t0, 8410
	sw $t0, -4348($fp)
	li $t0, 0
	lw $t1, -4348($fp)
	sub $t0, $t0, $t1
	sw $t0, -4352($fp)
	addi $t0, $fp, -196
	sw $t0, -4356($fp)
	li $t0, 6
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
	lw $t0, -4352($fp)
	lw $t1, -4372($fp)
	sub $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t1, -4376($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label1001
label1001:
	li $t0, 0
	sw $t0, -4380($fp)
	li $t0, 0
	sw $t0, -4384($fp)
	lw $t0, -1772($fp)
	sw $t0, -4388($fp)
	lw $t1, -4388($fp)
	li $t2, 0
	bne $t1, $t2, label1005
	j label1004
label1004:
	li $t0, 1
	sw $t0, -4384($fp)
label1005:
	lw $t0, -1292($fp)
	sw $t0, -4392($fp)
	lw $t0, -4384($fp)
	lw $t1, -4392($fp)
	sub $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, 4($fp)
	sw $t0, -4400($fp)
	li $t0, 16063
	sw $t0, -4404($fp)
	lw $t0, -4400($fp)
	lw $t1, -4404($fp)
	sub $t0, $t0, $t1
	sw $t0, -4408($fp)
	li $t0, 10445
	sw $t0, -4412($fp)
	lw $t0, -4408($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	li $t0, 0
	sw $t0, -4420($fp)
	li $t0, 63541
	sw $t0, -4424($fp)
	lw $t0, -1316($fp)
	sw $t0, -4428($fp)
	lw $t0, -4424($fp)
	lw $t1, -4428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4432($fp)
	lw $t1, -4432($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1008
label1008:
	lw $t0, -752($fp)
	sw $t0, -4436($fp)
	lw $t1, -4436($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1007
label1006:
	li $t0, 1
	sw $t0, -4420($fp)
label1007:
	li $t0, 0
	sw $t0, -4440($fp)
	li $t0, 0
	sw $t0, -4444($fp)
	lw $t0, -4260($fp)
	sw $t0, -4448($fp)
	lw $t1, -4448($fp)
	li $t2, 0
	bne $t1, $t2, label1012
	j label1011
label1011:
	li $t0, 1
	sw $t0, -4444($fp)
label1012:
	lw $t0, -776($fp)
	sw $t0, -4452($fp)
	lw $t1, -4444($fp)
	lw $t2, -4452($fp)
	ble $t1, $t2, label1009
	j label1010
label1009:
	li $t0, 1
	sw $t0, -4440($fp)
label1010:
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4440($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4456($fp)
	addi $sp, $sp, 20
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label1003
	j label1002
label1002:
	li $t0, 1
	sw $t0, -4380($fp)
label1003:
	addi $t0, $fp, -16
	sw $t0, -4460($fp)
	li $t0, 0
	sw $t0, -4464($fp)
	li $t0, 4
	lw $t1, -4464($fp)
	mul $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, 0($t0)
	sw $t1, -4476($fp)
	lw $t0, -4380($fp)
	lw $t1, -4476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -4344($fp)
label1000:
	j label994
label996:
	lw $t0, -4260($fp)
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -4488($fp)
	li $t0, 2
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
	lw $ra, -4($fp)
	lw $v0, -4504($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4508($fp)
	lw $t0, -284($fp)
	sw $t0, -4512($fp)
	lw $t0, -1280($fp)
	sw $t0, -4516($fp)
	lw $t0, -4512($fp)
	lw $t1, -4516($fp)
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	addi $t0, $fp, -48
	sw $t0, -4524($fp)
	lw $t0, -524($fp)
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
	lw $t0, -4520($fp)
	lw $t1, -4540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4544($fp)
	li $t0, 0
	sw $t0, -4548($fp)
	lw $t0, -1256($fp)
	sw $t0, -4552($fp)
	lw $t1, -4552($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1016
label1016:
	li $t0, 1
	sw $t0, -4548($fp)
label1017:
	lw $t0, -1268($fp)
	sw $t0, -4556($fp)
	lw $t0, -4548($fp)
	lw $t1, -4556($fp)
	mul $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t1, -4544($fp)
	lw $t2, -4560($fp)
	beq $t1, $t2, label1013
	j label1015
label1015:
	li $t0, 0
	sw $t0, -4564($fp)
	li $t0, 62151
	sw $t0, -4568($fp)
	li $t0, 1
	sw $t0, -4572($fp)
	lw $t0, -4568($fp)
	lw $t1, -4572($fp)
	mul $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -1292($fp)
	sw $t0, -4580($fp)
	lw $t1, -4576($fp)
	lw $t2, -4580($fp)
	bne $t1, $t2, label1018
	j label1019
label1018:
	li $t0, 1
	sw $t0, -4564($fp)
label1019:
	li $t0, 0
	sw $t0, -4584($fp)
	addi $t0, $fp, -12
	sw $t0, -4588($fp)
	lw $t0, -776($fp)
	sw $t0, -4592($fp)
	li $t0, 4
	lw $t1, -4592($fp)
	mul $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	lw $t1, -4588($fp)
	add $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	lw $t1, 0($t0)
	sw $t1, -4604($fp)
	li $t0, 58912
	sw $t0, -4608($fp)
	lw $t1, -4604($fp)
	lw $t2, -4608($fp)
	bge $t1, $t2, label1020
	j label1021
label1020:
	li $t0, 1
	sw $t0, -4584($fp)
label1021:
	li $t0, 0
	sw $t0, -4612($fp)
	addi $t0, $fp, -228
	sw $t0, -4616($fp)
	lw $t0, -1760($fp)
	sw $t0, -4620($fp)
	li $t0, 4
	lw $t1, -4620($fp)
	mul $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	lw $t1, -4616($fp)
	add $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	lw $t1, 0($t0)
	sw $t1, -4632($fp)
	lw $t1, -4632($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1022
label1022:
	li $t0, 1
	sw $t0, -4612($fp)
label1023:
	li $t0, 0
	sw $t0, -4636($fp)
	li $t0, 58959
	sw $t0, -4640($fp)
	lw $t1, -4640($fp)
	li $t2, 0
	bne $t1, $t2, label1025
	j label1024
label1024:
	li $t0, 1
	sw $t0, -4636($fp)
label1025:
	li $t0, 0
	lw $t1, -4636($fp)
	sub $t0, $t0, $t1
	sw $t0, -4644($fp)
	addi $sp, $sp, -4
	lw $t0, -4564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4644($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4648($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -196
	sw $t0, -4652($fp)
	li $t0, 3
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
	lw $t0, -4648($fp)
	lw $t1, -4668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label1013
	j label1014
label1013:
	li $t0, 1
	sw $t0, -4508($fp)
label1014:
	li $t0, 51763
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	sw $t0, -4684($fp)
	li $t0, 4072
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	sw $t0, -4696($fp)
	li $t0, 62829
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -4708($fp)
	li $t0, 614
	sw $t0, -4712($fp)
	li $t0, 1431
	sw $t0, -4716($fp)
	lw $t0, -4712($fp)
	lw $t1, -4716($fp)
	mul $t0, $t0, $t1
	sw $t0, -4720($fp)
	li $t0, 48331
	sw $t0, -4724($fp)
	lw $t0, -4720($fp)
	lw $t1, -4724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4728($fp)
	li $t0, 46354
	sw $t0, -4732($fp)
	lw $t0, -4728($fp)
	lw $t1, -4732($fp)
	mul $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4692($fp)
	sw $t0, -4740($fp)
	lw $t0, -4736($fp)
	lw $t1, -4740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4744($fp)
	lw $t0, -764($fp)
	sw $t0, -4748($fp)
	lw $t0, -4744($fp)
	lw $t1, -4748($fp)
	add $t0, $t0, $t1
	sw $t0, -4752($fp)
	li $t0, 0
	sw $t0, -4756($fp)
	li $t0, 0
	sw $t0, -4760($fp)
	lw $t0, -1304($fp)
	sw $t0, -4764($fp)
	lw $t0, -512($fp)
	sw $t0, -4768($fp)
	lw $t0, -4764($fp)
	lw $t1, -4768($fp)
	add $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4704($fp)
	sw $t0, -4776($fp)
	lw $t1, -4772($fp)
	lw $t2, -4776($fp)
	beq $t1, $t2, label1029
	j label1030
label1029:
	li $t0, 1
	sw $t0, -4760($fp)
label1030:
	addi $sp, $sp, -4
	lw $t0, -4760($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4780($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4784($fp)
	lw $t0, -4704($fp)
	sw $t0, -4788($fp)
	lw $t1, -4788($fp)
	li $t2, 0
	bne $t1, $t2, label1032
	j label1031
label1031:
	li $t0, 1
	sw $t0, -4784($fp)
label1032:
	lw $t0, -4780($fp)
	lw $t1, -4784($fp)
	add $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -1316($fp)
	sw $t0, -4796($fp)
	lw $t0, -4680($fp)
	sw $t0, -4800($fp)
	lw $t0, -4796($fp)
	lw $t1, -4800($fp)
	mul $t0, $t0, $t1
	sw $t0, -4804($fp)
	li $t0, 12523
	sw $t0, -4808($fp)
	lw $t0, -4804($fp)
	lw $t1, -4808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4812($fp)
	li $t0, 28330
	sw $t0, -4816($fp)
	lw $t0, -1772($fp)
	sw $t0, -4820($fp)
	lw $t0, -4816($fp)
	lw $t1, -4820($fp)
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	li $t0, 0
	lw $t1, -4824($fp)
	sub $t0, $t0, $t1
	sw $t0, -4828($fp)
	li $t0, 0
	sw $t0, -4832($fp)
	li $t0, 47207
	sw $t0, -4836($fp)
	li $t0, 44787
	sw $t0, -4840($fp)
	lw $t1, -4836($fp)
	lw $t2, -4840($fp)
	bgt $t1, $t2, label1033
	j label1035
label1035:
	lw $t0, -788($fp)
	sw $t0, -4844($fp)
	lw $t1, -4844($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1034
label1033:
	li $t0, 1
	sw $t0, -4832($fp)
label1034:
	li $t0, 0
	sw $t0, -4848($fp)
	addi $t0, $fp, -228
	sw $t0, -4852($fp)
	lw $t0, -1280($fp)
	sw $t0, -4856($fp)
	li $t0, 4
	lw $t1, -4856($fp)
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, -4852($fp)
	add $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, 0($t0)
	sw $t1, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1036
label1036:
	li $t0, 1
	sw $t0, -4848($fp)
label1037:
	addi $sp, $sp, -4
	lw $t0, -4812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4872($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4876($fp)
	addi $sp, $sp, 8
	lw $t0, -4792($fp)
	lw $t1, -4876($fp)
	sub $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t1, -4880($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1028
label1028:
	li $t0, 62925
	sw $t0, -4884($fp)
	lw $t1, -4884($fp)
	li $t2, 0
	bne $t1, $t2, label1038
	j label1027
label1038:
	li $t0, 6538
	sw $t0, -4888($fp)
	lw $t1, -4888($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 1
	sw $t0, -4756($fp)
label1027:
	addi $t0, $fp, -12
	sw $t0, -4892($fp)
	li $t0, 0
	sw $t0, -4896($fp)
	li $t0, 4
	lw $t1, -4896($fp)
	mul $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	lw $t1, -4892($fp)
	add $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	lw $t1, 0($t0)
	sw $t1, -4908($fp)
	lw $t0, -4908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -4912($fp)
	li $t0, 1
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
	lw $t0, -4928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4936($fp)
	li $t0, 0
	sw $t0, -4940($fp)
	li $t0, 4
	lw $t1, -4940($fp)
	mul $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	lw $t1, -4936($fp)
	add $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	lw $t1, 0($t0)
	sw $t1, -4952($fp)
	lw $t0, -4952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4956($fp)
	li $t0, 0
	sw $t0, -4960($fp)
	li $t0, 4
	lw $t1, -4960($fp)
	mul $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	lw $t1, -4956($fp)
	add $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	lw $t1, 0($t0)
	sw $t1, -4972($fp)
	lw $t0, -4972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4976($fp)
	li $t0, 1
	sw $t0, -4980($fp)
	li $t0, 4
	lw $t1, -4980($fp)
	mul $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	lw $t1, -4976($fp)
	add $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	lw $t1, 0($t0)
	sw $t1, -4992($fp)
	lw $t0, -4992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4996($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -5016($fp)
	li $t0, 3
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
	addi $t0, $fp, -48
	sw $t0, -5036($fp)
	li $t0, 4
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
	addi $t0, $fp, -48
	sw $t0, -5056($fp)
	li $t0, 5
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
	addi $t0, $fp, -48
	sw $t0, -5076($fp)
	li $t0, 6
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
	addi $t0, $fp, -48
	sw $t0, -5096($fp)
	li $t0, 7
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
	lw $t0, -512($fp)
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5132($fp)
	li $t0, 0
	sw $t0, -5136($fp)
	li $t0, 4
	lw $t1, -5136($fp)
	mul $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	lw $t1, -5132($fp)
	add $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	lw $t1, 0($t0)
	sw $t1, -5148($fp)
	lw $t0, -5148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5152($fp)
	li $t0, 1
	sw $t0, -5156($fp)
	li $t0, 4
	lw $t1, -5156($fp)
	mul $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	lw $t1, -5152($fp)
	add $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	lw $t1, 0($t0)
	sw $t1, -5168($fp)
	lw $t0, -5168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5172($fp)
	li $t0, 2
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
	lw $t0, -5188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5192($fp)
	li $t0, 3
	sw $t0, -5196($fp)
	li $t0, 4
	lw $t1, -5196($fp)
	mul $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	lw $t1, -5192($fp)
	add $t0, $t0, $t1
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	lw $t1, 0($t0)
	sw $t1, -5208($fp)
	lw $t0, -5208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5212($fp)
	li $t0, 4
	sw $t0, -5216($fp)
	li $t0, 4
	lw $t1, -5216($fp)
	mul $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	lw $t1, -5212($fp)
	add $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, 0($t0)
	sw $t1, -5228($fp)
	lw $t0, -5228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5232($fp)
	li $t0, 5
	sw $t0, -5236($fp)
	li $t0, 4
	lw $t1, -5236($fp)
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, -5232($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	lw $t1, 0($t0)
	sw $t1, -5248($fp)
	lw $t0, -5248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5252($fp)
	li $t0, 6
	sw $t0, -5256($fp)
	li $t0, 4
	lw $t1, -5256($fp)
	mul $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	lw $t1, -5252($fp)
	add $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	lw $t1, 0($t0)
	sw $t1, -5268($fp)
	lw $t0, -5268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5272($fp)
	li $t0, 7
	sw $t0, -5276($fp)
	li $t0, 4
	lw $t1, -5276($fp)
	mul $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	lw $t1, -5272($fp)
	add $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	lw $t1, 0($t0)
	sw $t1, -5288($fp)
	lw $t0, -5288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5308($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -5328($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -5348($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -5368($fp)
	li $t0, 3
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
	addi $t0, $fp, -100
	sw $t0, -5388($fp)
	li $t0, 4
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
	addi $t0, $fp, -132
	sw $t0, -5408($fp)
	li $t0, 0
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
	addi $t0, $fp, -132
	sw $t0, -5428($fp)
	li $t0, 1
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
	addi $t0, $fp, -132
	sw $t0, -5448($fp)
	li $t0, 2
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
	addi $t0, $fp, -132
	sw $t0, -5468($fp)
	li $t0, 3
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
	addi $t0, $fp, -132
	sw $t0, -5488($fp)
	li $t0, 4
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
	addi $t0, $fp, -132
	sw $t0, -5508($fp)
	li $t0, 5
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
	addi $t0, $fp, -132
	sw $t0, -5528($fp)
	li $t0, 6
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
	addi $t0, $fp, -132
	sw $t0, -5548($fp)
	li $t0, 7
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
	addi $t0, $fp, -156
	sw $t0, -5568($fp)
	li $t0, 0
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
	addi $t0, $fp, -156
	sw $t0, -5588($fp)
	li $t0, 1
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
	addi $t0, $fp, -156
	sw $t0, -5608($fp)
	li $t0, 2
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
	addi $t0, $fp, -156
	sw $t0, -5628($fp)
	li $t0, 3
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
	addi $t0, $fp, -156
	sw $t0, -5648($fp)
	li $t0, 4
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
	addi $t0, $fp, -156
	sw $t0, -5668($fp)
	li $t0, 5
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
	lw $t0, -1256($fp)
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -196
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
	addi $t0, $fp, -228
	sw $t0, -5912($fp)
	li $t0, 0
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
	addi $t0, $fp, -228
	sw $t0, -5932($fp)
	li $t0, 1
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
	addi $t0, $fp, -228
	sw $t0, -5952($fp)
	li $t0, 2
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
	addi $t0, $fp, -228
	sw $t0, -5972($fp)
	li $t0, 3
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
	addi $t0, $fp, -228
	sw $t0, -5992($fp)
	li $t0, 4
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
	addi $t0, $fp, -228
	sw $t0, -6012($fp)
	li $t0, 5
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
	addi $t0, $fp, -228
	sw $t0, -6032($fp)
	li $t0, 6
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
	addi $t0, $fp, -228
	sw $t0, -6052($fp)
	li $t0, 7
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
	lw $t0, -1760($fp)
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -6076($fp)
	lw $t0, -6076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -6080($fp)
	lw $t0, -548($fp)
	sw $t0, -6084($fp)
	lw $t0, -6080($fp)
	lw $t1, -6084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6088($fp)
	addi $t0, $fp, -156
	sw $t0, -6092($fp)
	lw $t0, -764($fp)
	sw $t0, -6096($fp)
	li $t0, 4
	lw $t1, -6096($fp)
	mul $t0, $t0, $t1
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	lw $t1, -6092($fp)
	add $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	lw $t1, 0($t0)
	sw $t1, -6108($fp)
	lw $t0, -6088($fp)
	lw $t1, -6108($fp)
	mul $t0, $t0, $t1
	sw $t0, -6112($fp)
	addi $t0, $fp, -100
	sw $t0, -6116($fp)
	lw $t0, -1316($fp)
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
	lw $t0, -6112($fp)
	lw $t1, -6132($fp)
	mul $t0, $t0, $t1
	sw $t0, -6136($fp)
	addi $t0, $fp, -132
	sw $t0, -6140($fp)
	li $t0, 0
	sw $t0, -6144($fp)
	lw $t0, -536($fp)
	sw $t0, -6148($fp)
	lw $t1, -6148($fp)
	li $t2, 0
	bne $t1, $t2, label1039
	j label1041
label1041:
	li $t0, 12579
	sw $t0, -6152($fp)
	lw $t1, -6152($fp)
	li $t2, 0
	bne $t1, $t2, label1039
	j label1040
label1039:
	li $t0, 1
	sw $t0, -6144($fp)
label1040:
	li $t0, 4
	lw $t1, -6144($fp)
	mul $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	lw $t1, -6140($fp)
	add $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	lw $t1, 0($t0)
	sw $t1, -6164($fp)
	lw $t0, -6136($fp)
	lw $t1, -6164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6168($fp)
	lw $ra, -4($fp)
	lw $v0, -6168($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3520
	li $t0, 60056
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 14948
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 54469
	sw $t0, -116($fp)
	addi $t0, $fp, -16
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
	li $t0, 37972
	sw $t0, -140($fp)
	addi $t0, $fp, -16
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
	li $t0, 12953
	sw $t0, -164($fp)
	addi $t0, $fp, -16
	sw $t0, -168($fp)
	li $t0, 2
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
	li $t0, 4997
	sw $t0, -188($fp)
	addi $t0, $fp, -24
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
	li $t0, 48417
	sw $t0, -212($fp)
	addi $t0, $fp, -24
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
	li $t0, 5975
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 54637
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 33920
	sw $t0, -260($fp)
	addi $t0, $fp, -52
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
	li $t0, 49409
	sw $t0, -284($fp)
	addi $t0, $fp, -52
	sw $t0, -288($fp)
	li $t0, 1
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
	li $t0, 48060
	sw $t0, -308($fp)
	addi $t0, $fp, -52
	sw $t0, -312($fp)
	li $t0, 2
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
	li $t0, 27296
	sw $t0, -332($fp)
	addi $t0, $fp, -52
	sw $t0, -336($fp)
	li $t0, 3
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
	li $t0, 46024
	sw $t0, -356($fp)
	addi $t0, $fp, -52
	sw $t0, -360($fp)
	li $t0, 4
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
	li $t0, 42037
	sw $t0, -380($fp)
	addi $t0, $fp, -52
	sw $t0, -384($fp)
	li $t0, 5
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
	li $t0, 2692
	sw $t0, -404($fp)
	addi $t0, $fp, -52
	sw $t0, -408($fp)
	li $t0, 6
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
	li $t0, 5090
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 28264
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 6765
	sw $t0, -452($fp)
	addi $t0, $fp, -60
	sw $t0, -456($fp)
	li $t0, 0
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
	li $t0, 2383
	sw $t0, -476($fp)
	addi $t0, $fp, -60
	sw $t0, -480($fp)
	li $t0, 1
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
	li $t0, 28879
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 8196
	sw $t0, -512($fp)
	addi $t0, $fp, -88
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
	li $t0, 50714
	sw $t0, -536($fp)
	addi $t0, $fp, -88
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
	li $t0, 9697
	sw $t0, -560($fp)
	addi $t0, $fp, -88
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
	li $t0, 55403
	sw $t0, -584($fp)
	addi $t0, $fp, -88
	sw $t0, -588($fp)
	li $t0, 3
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
	li $t0, 29966
	sw $t0, -608($fp)
	addi $t0, $fp, -88
	sw $t0, -612($fp)
	li $t0, 4
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
	li $t0, 38027
	sw $t0, -632($fp)
	addi $t0, $fp, -88
	sw $t0, -636($fp)
	li $t0, 5
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
	li $t0, 2390
	sw $t0, -656($fp)
	addi $t0, $fp, -88
	sw $t0, -660($fp)
	li $t0, 6
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
	li $t0, 27355
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 44565
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 14969
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 21875
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 59514
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -96($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -748($fp)
	li $t0, 0
	sw $t0, -752($fp)
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, 0($t0)
	sw $t1, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -768($fp)
	li $t0, 1
	sw $t0, -772($fp)
	li $t0, 4
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, 0($t0)
	sw $t1, -784($fp)
	lw $t0, -784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -788($fp)
	li $t0, 2
	sw $t0, -792($fp)
	li $t0, 4
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	lw $t1, 0($t0)
	sw $t1, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -808($fp)
	li $t0, 0
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
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -828($fp)
	li $t0, 1
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
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	li $t0, 4
	lw $t1, -860($fp)
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, 0($t0)
	sw $t1, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -876($fp)
	li $t0, 1
	sw $t0, -880($fp)
	li $t0, 4
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	lw $t0, -892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -896($fp)
	li $t0, 2
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
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -916($fp)
	li $t0, 3
	sw $t0, -920($fp)
	li $t0, 4
	lw $t1, -920($fp)
	mul $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	lw $t1, 0($t0)
	sw $t1, -932($fp)
	lw $t0, -932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -936($fp)
	li $t0, 4
	sw $t0, -940($fp)
	li $t0, 4
	lw $t1, -940($fp)
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t1, 0($t0)
	sw $t1, -952($fp)
	lw $t0, -952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -956($fp)
	li $t0, 5
	sw $t0, -960($fp)
	li $t0, 4
	lw $t1, -960($fp)
	mul $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	lw $t1, 0($t0)
	sw $t1, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -976($fp)
	li $t0, 6
	sw $t0, -980($fp)
	li $t0, 4
	lw $t1, -980($fp)
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	lw $t1, 0($t0)
	sw $t1, -992($fp)
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1004($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -1024($fp)
	li $t0, 1
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
	lw $t0, -504($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
	sw $t0, -1168($fp)
	li $t0, 6
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
	lw $t0, -684($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1208($fp)
	li $t0, 3902
	sw $t0, -1212($fp)
	lw $t0, -432($fp)
	sw $t0, -1216($fp)
	lw $t0, -108($fp)
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1224($fp)
	lw $t1, -1212($fp)
	lw $t2, -1224($fp)
	bge $t1, $t2, label1042
	j label1043
label1042:
	li $t0, 1
	sw $t0, -1208($fp)
label1043:
	lw $ra, -4($fp)
	lw $v0, -1208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -96($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1236($fp)
	li $t0, 0
	sw $t0, -1240($fp)
	li $t0, 4
	lw $t1, -1240($fp)
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, 0($t0)
	sw $t1, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1256($fp)
	li $t0, 1
	sw $t0, -1260($fp)
	li $t0, 4
	lw $t1, -1260($fp)
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, 0($t0)
	sw $t1, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1276($fp)
	li $t0, 2
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
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	lw $t0, -240($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1344($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -1364($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -1384($fp)
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -1464($fp)
	li $t0, 6
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
	lw $t0, -432($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	li $t0, 4
	lw $t1, -1496($fp)
	mul $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t1, -1492($fp)
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	lw $t1, 0($t0)
	sw $t1, -1508($fp)
	lw $t0, -1508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1512($fp)
	li $t0, 1
	sw $t0, -1516($fp)
	li $t0, 4
	lw $t1, -1516($fp)
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
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
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -1556($fp)
	li $t0, 1
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
	addi $t0, $fp, -88
	sw $t0, -1576($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -1596($fp)
	li $t0, 3
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
	addi $t0, $fp, -88
	sw $t0, -1616($fp)
	li $t0, 4
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
	addi $t0, $fp, -88
	sw $t0, -1636($fp)
	li $t0, 5
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
	addi $t0, $fp, -88
	sw $t0, -1656($fp)
	li $t0, 6
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
	lw $t0, -684($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1696($fp)
	addi $t0, $fp, -24
	sw $t0, -1700($fp)
	li $t0, 0
	sw $t0, -1704($fp)
	li $t0, 59847
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label1049
	j label1048
label1049:
	li $t0, 6931
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -1704($fp)
label1048:
	li $t0, 4
	lw $t1, -1704($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	lw $t1, -1724($fp)
	li $t2, 0
	bne $t1, $t2, label1046
	j label1045
label1046:
	li $t0, 8899
	sw $t0, -1728($fp)
	li $t0, 0
	lw $t1, -1728($fp)
	sub $t0, $t0, $t1
	sw $t0, -1732($fp)
	li $t0, 0
	lw $t1, -1732($fp)
	sub $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	li $t0, 42728
	sw $t0, -1744($fp)
	lw $t1, -1744($fp)
	li $t2, 0
	bne $t1, $t2, label1051
	j label1050
label1050:
	li $t0, 1
	sw $t0, -1740($fp)
label1051:
	lw $t0, -1736($fp)
	lw $t1, -1740($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1045
label1044:
	li $t0, 1
	sw $t0, -1696($fp)
label1045:
	lw $ra, -4($fp)
	lw $v0, -1696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 12906
	sw $t0, -1752($fp)
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label1052
	j label1053
label1052:
	li $t0, 0
	sw $t0, -1756($fp)
	li $t0, 63537
	sw $t0, -1760($fp)
	li $t0, 11112
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1768($fp)
	li $t0, 62315
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	sub $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label1060
	j label1059
label1060:
	lw $t0, -108($fp)
	sw $t0, -1780($fp)
	lw $t0, -684($fp)
	sw $t0, -1784($fp)
	lw $t1, -1780($fp)
	lw $t2, -1784($fp)
	blt $t1, $t2, label1058
	j label1059
label1058:
	li $t0, 1
	sw $t0, -1756($fp)
label1059:
	lw $t0, -1756($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label1055
	j label1056
label1055:
	li $t0, 0
	sw $t0, -1792($fp)
	jal f10
	sw $v0, -1796($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1796($fp)
	sub $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label1063
	j label1061
label1063:
	li $t0, 46061
	sw $t0, -1804($fp)
	lw $t0, -684($fp)
	sw $t0, -1808($fp)
	lw $t0, -1804($fp)
	lw $t1, -1808($fp)
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	addi $t0, $fp, -52
	sw $t0, -1816($fp)
	lw $t0, -252($fp)
	sw $t0, -1820($fp)
	li $t0, 4
	lw $t1, -1820($fp)
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	lw $t1, 0($t0)
	sw $t1, -1832($fp)
	lw $t0, -1812($fp)
	lw $t1, -1832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -1792($fp)
label1062:
	lw $ra, -4($fp)
	lw $v0, -1792($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1057
label1056:
	li $t0, 38409
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label1064
	j label1065
label1064:
	addi $t0, $fp, -16
	sw $t0, -1844($fp)
	li $t0, 0
	sw $t0, -1848($fp)
	lw $t0, -732($fp)
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label1072
	j label1071
label1072:
	li $t0, 42804
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label1070
	j label1071
label1070:
	li $t0, 1
	sw $t0, -1848($fp)
label1071:
	li $t0, 4
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	lw $t0, -432($fp)
	sw $t0, -1872($fp)
	lw $t0, -108($fp)
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 22562
	sw $t0, -1884($fp)
	lw $t0, -1880($fp)
	lw $t1, -1884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1888($fp)
	lw $t0, -1868($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -708($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -1900($fp)
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 0
	sw $t0, -1908($fp)
	li $t0, 41101
	sw $t0, -1912($fp)
	lw $t0, -732($fp)
	sw $t0, -1916($fp)
	lw $t1, -1912($fp)
	lw $t2, -1916($fp)
	bgt $t1, $t2, label1075
	j label1076
label1075:
	li $t0, 1
	sw $t0, -1908($fp)
label1076:
	li $t0, 47894
	sw $t0, -1920($fp)
	lw $t1, -1908($fp)
	lw $t2, -1920($fp)
	bne $t1, $t2, label1073
	j label1074
label1073:
	li $t0, 1
	sw $t0, -1904($fp)
label1074:
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1924($fp)
	addi $sp, $sp, 12
	lw $t0, -1892($fp)
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label1067
	j label1068
label1067:
	li $t0, 0
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	lw $t0, -732($fp)
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label1082
	j label1081
label1081:
	li $t0, 1
	sw $t0, -1936($fp)
label1082:
	li $t0, 50827
	sw $t0, -1944($fp)
	lw $t0, -1936($fp)
	lw $t1, -1944($fp)
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	lw $t0, -696($fp)
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label1084
	j label1083
label1083:
	li $t0, 1
	sw $t0, -1952($fp)
label1084:
	lw $t1, -1948($fp)
	lw $t2, -1952($fp)
	bne $t1, $t2, label1077
	j label1080
label1080:
	jal f10
	sw $v0, -1960($fp)
	addi $sp, $sp, 4
	li $t0, 47866
	sw $t0, -1964($fp)
	lw $t1, -1960($fp)
	lw $t2, -1964($fp)
	bne $t1, $t2, label1077
	j label1079
label1079:
	lw $t0, -444($fp)
	sw $t0, -1968($fp)
	li $t0, 50277
	sw $t0, -1972($fp)
	lw $t1, -1968($fp)
	lw $t2, -1972($fp)
	blt $t1, $t2, label1086
	j label1078
label1086:
	li $t0, 14170
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label1085
	j label1078
label1085:
	lw $t0, -720($fp)
	sw $t0, -1980($fp)
	lw $t1, -1980($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1078
label1077:
	li $t0, 1
	sw $t0, -1932($fp)
label1078:
	j label1069
label1068:
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 56062
	sw $t0, -1988($fp)
	addi $t0, $fp, -16
	sw $t0, -1992($fp)
	li $t0, 2
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
	lw $t1, -1988($fp)
	lw $t2, -2008($fp)
	bgt $t1, $t2, label1087
	j label1088
label1087:
	li $t0, 1
	sw $t0, -1984($fp)
label1088:
label1069:
	j label1066
label1065:
	li $t0, 0
	sw $t0, -2012($fp)
	lw $t0, -504($fp)
	sw $t0, -2016($fp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2020($fp)
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -2024($fp)
	lw $t0, -2020($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	lw $t0, -252($fp)
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label1092
	j label1091
label1091:
	li $t0, 1
	sw $t0, -2032($fp)
label1092:
	li $t0, 0
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2028($fp)
	lw $t1, -2040($fp)
	sub $t0, $t0, $t1
	sw $t0, -2044($fp)
	addi $t0, $fp, -16
	sw $t0, -2048($fp)
	li $t0, 2
	sw $t0, -2052($fp)
	li $t0, 4
	lw $t1, -2052($fp)
	mul $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, 0($t0)
	sw $t1, -2064($fp)
	li $t0, 48320
	sw $t0, -2068($fp)
	lw $t0, -2064($fp)
	lw $t1, -2068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2072($fp)
	lw $t1, -2044($fp)
	lw $t2, -2072($fp)
	blt $t1, $t2, label1089
	j label1090
label1089:
	li $t0, 1
	sw $t0, -2012($fp)
label1090:
label1066:
label1057:
	j label1054
label1053:
	li $t0, 0
	sw $t0, -2076($fp)
	li $t0, 0
	sw $t0, -2080($fp)
	addi $t0, $fp, -88
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 27241
	sw $t0, -2092($fp)
	li $t0, 40924
	sw $t0, -2096($fp)
	lw $t1, -2092($fp)
	lw $t2, -2096($fp)
	beq $t1, $t2, label1097
	j label1098
label1097:
	li $t0, 1
	sw $t0, -2088($fp)
label1098:
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
	lw $t1, -2108($fp)
	li $t2, 0
	bne $t1, $t2, label1096
	j label1095
label1095:
	li $t0, 1
	sw $t0, -2080($fp)
label1096:
	addi $t0, $fp, -60
	sw $t0, -2112($fp)
	li $t0, 0
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
	lw $t1, -2080($fp)
	lw $t2, -2128($fp)
	bne $t1, $t2, label1093
	j label1094
label1093:
	li $t0, 1
	sw $t0, -2076($fp)
label1094:
label1054:
	lw $t0, -96($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 4
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2160($fp)
	li $t0, 1
	sw $t0, -2164($fp)
	li $t0, 4
	lw $t1, -2164($fp)
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	lw $t0, -2176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2180($fp)
	li $t0, 2
	sw $t0, -2184($fp)
	li $t0, 4
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, -2180($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	lw $t1, 0($t0)
	sw $t1, -2196($fp)
	lw $t0, -2196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	lw $t0, -240($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2248($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -2268($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -2288($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -2308($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -2328($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -2348($fp)
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -2368($fp)
	li $t0, 6
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
	lw $t0, -432($fp)
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	li $t0, 4
	lw $t1, -2400($fp)
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	lw $t1, 0($t0)
	sw $t1, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2416($fp)
	li $t0, 1
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
	lw $t0, -504($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2440($fp)
	li $t0, 0
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
	lw $t0, -2456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2460($fp)
	li $t0, 1
	sw $t0, -2464($fp)
	li $t0, 4
	lw $t1, -2464($fp)
	mul $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, 0($t0)
	sw $t1, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2480($fp)
	li $t0, 2
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
	lw $t0, -2496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2500($fp)
	li $t0, 3
	sw $t0, -2504($fp)
	li $t0, 4
	lw $t1, -2504($fp)
	mul $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	lw $t1, -2500($fp)
	add $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	lw $t1, 0($t0)
	sw $t1, -2516($fp)
	lw $t0, -2516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2520($fp)
	li $t0, 4
	sw $t0, -2524($fp)
	li $t0, 4
	lw $t1, -2524($fp)
	mul $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, 0($t0)
	sw $t1, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2540($fp)
	li $t0, 5
	sw $t0, -2544($fp)
	li $t0, 4
	lw $t1, -2544($fp)
	mul $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	lw $t1, 0($t0)
	sw $t1, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2560($fp)
	li $t0, 6
	sw $t0, -2564($fp)
	li $t0, 4
	lw $t1, -2564($fp)
	mul $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	lw $t1, 0($t0)
	sw $t1, -2576($fp)
	lw $t0, -2576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2600($fp)
	lw $t0, -252($fp)
	sw $t0, -2604($fp)
	lw $t1, -2604($fp)
	li $t2, 0
	bne $t1, $t2, label1100
	j label1099
label1099:
	li $t0, 1
	sw $t0, -2600($fp)
label1100:
	lw $ra, -4($fp)
	lw $v0, -2600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 34902
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -2616($fp)
	li $t0, 1655
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	sw $t0, -2628($fp)
	li $t0, 43427
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	addi $t0, $fp, -60
	sw $t0, -2648($fp)
	li $t0, 0
	sw $t0, -2652($fp)
	addi $t0, $fp, -52
	sw $t0, -2656($fp)
	li $t0, 3
	sw $t0, -2660($fp)
	li $t0, 4
	lw $t1, -2660($fp)
	mul $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	lw $t1, 0($t0)
	sw $t1, -2672($fp)
	lw $t0, -444($fp)
	sw $t0, -2676($fp)
	lw $t1, -2672($fp)
	lw $t2, -2676($fp)
	beq $t1, $t2, label1104
	j label1105
label1104:
	li $t0, 1
	sw $t0, -2652($fp)
label1105:
	li $t0, 4
	lw $t1, -2652($fp)
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	lw $t1, -2648($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	lw $t1, -2688($fp)
	li $t2, 0
	bne $t1, $t2, label1103
	j label1102
label1103:
	li $t0, 20619
	sw $t0, -2692($fp)
	lw $t1, -2692($fp)
	li $t2, 0
	bne $t1, $t2, label1101
	j label1102
label1101:
	li $t0, 1
	sw $t0, -2644($fp)
label1102:
	addi $t0, $fp, -52
	sw $t0, -2696($fp)
	lw $t0, -708($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2716($fp)
	addi $sp, $sp, 8
	lw $t1, -2716($fp)
	li $t2, 0
	bne $t1, $t2, label1106
	j label1109
label1109:
	addi $t0, $fp, -16
	sw $t0, -2720($fp)
	li $t0, 54740
	sw $t0, -2724($fp)
	lw $t0, -96($fp)
	sw $t0, -2728($fp)
	lw $t0, -2724($fp)
	lw $t1, -2728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2732($fp)
	li $t0, 4
	lw $t1, -2732($fp)
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, 0($t0)
	sw $t1, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label1106
	j label1107
label1106:
	lw $t0, -2612($fp)
	sw $t0, -2748($fp)
	lw $t0, -504($fp)
	sw $t0, -2752($fp)
	li $t0, 0
	lw $t1, -2752($fp)
	sub $t0, $t0, $t1
	sw $t0, -2756($fp)
	li $t0, 0
	lw $t1, -2756($fp)
	sub $t0, $t0, $t1
	sw $t0, -2760($fp)
	li $t0, 0
	lw $t1, -2760($fp)
	sub $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2748($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	j label1108
label1107:
	li $t0, 0
	sw $t0, -2772($fp)
	li $t0, 0
	sw $t0, -2776($fp)
	lw $t0, -2636($fp)
	sw $t0, -2780($fp)
	lw $t1, -2780($fp)
	li $t2, 0
	bne $t1, $t2, label1113
	j label1112
label1112:
	li $t0, 1
	sw $t0, -2776($fp)
label1113:
	lw $t0, -444($fp)
	sw $t0, -2784($fp)
	li $t0, 8555
	sw $t0, -2788($fp)
	lw $t0, -2784($fp)
	lw $t1, -2788($fp)
	mul $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -504($fp)
	sw $t0, -2796($fp)
	lw $t0, -2792($fp)
	lw $t1, -2796($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	li $t0, 0
	sw $t0, -2804($fp)
	addi $t0, $fp, -60
	sw $t0, -2808($fp)
	li $t0, 1
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
	lw $t0, -432($fp)
	sw $t0, -2828($fp)
	lw $t1, -2824($fp)
	lw $t2, -2828($fp)
	bge $t1, $t2, label1114
	j label1115
label1114:
	li $t0, 1
	sw $t0, -2804($fp)
label1115:
	li $t0, 0
	sw $t0, -2832($fp)
	li $t0, 31732
	sw $t0, -2836($fp)
	lw $t0, -444($fp)
	sw $t0, -2840($fp)
	lw $t0, -2836($fp)
	lw $t1, -2840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2844($fp)
	li $t0, 51520
	sw $t0, -2848($fp)
	lw $t1, -2844($fp)
	lw $t2, -2848($fp)
	ble $t1, $t2, label1116
	j label1117
label1116:
	li $t0, 1
	sw $t0, -2832($fp)
label1117:
	li $t0, 0
	sw $t0, -2852($fp)
	lw $t0, -252($fp)
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label1118
	j label1119
label1118:
	li $t0, 1
	sw $t0, -2852($fp)
label1119:
	lw $t0, -2612($fp)
	sw $t0, -2860($fp)
	lw $t0, -2624($fp)
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	addi $sp, $sp, -4
	lw $t0, -2804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2872($fp)
	addi $sp, $sp, 20
	lw $t0, -2800($fp)
	lw $t1, -2872($fp)
	sub $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t1, -2776($fp)
	lw $t2, -2876($fp)
	ble $t1, $t2, label1110
	j label1111
label1110:
	li $t0, 1
	sw $t0, -2772($fp)
label1111:
label1108:
label1120:
	lw $t0, -708($fp)
	sw $t0, -2880($fp)
	lw $t0, -444($fp)
	sw $t0, -2884($fp)
	li $t0, 0
	lw $t1, -2884($fp)
	sub $t0, $t0, $t1
	sw $t0, -2888($fp)
	li $t0, 0
	lw $t1, -2888($fp)
	sub $t0, $t0, $t1
	sw $t0, -2892($fp)
	li $t0, 0
	lw $t1, -2892($fp)
	sub $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t1, -2880($fp)
	lw $t2, -2896($fp)
	bne $t1, $t2, label1121
	j label1122
label1121:
	li $t0, 0
	sw $t0, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	lw $t0, -732($fp)
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label1126
	j label1125
label1125:
	li $t0, 1
	sw $t0, -2904($fp)
label1126:
	lw $t0, -2624($fp)
	sw $t0, -2912($fp)
	lw $t0, -444($fp)
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2920($fp)
	lw $t1, -2904($fp)
	lw $t2, -2920($fp)
	bgt $t1, $t2, label1123
	j label1124
label1123:
	li $t0, 1
	sw $t0, -2900($fp)
label1124:
	j label1120
label1122:
	li $t0, 0
	sw $t0, -2924($fp)
	li $t0, 0
	sw $t0, -2928($fp)
	li $t0, 28788
	sw $t0, -2932($fp)
	addi $t0, $fp, -24
	sw $t0, -2936($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t1, -2932($fp)
	lw $t2, -2956($fp)
	bge $t1, $t2, label1129
	j label1130
label1129:
	li $t0, 1
	sw $t0, -2928($fp)
label1130:
	li $t0, 11146
	sw $t0, -2960($fp)
	lw $t1, -2928($fp)
	lw $t2, -2960($fp)
	bge $t1, $t2, label1127
	j label1128
label1127:
	li $t0, 1
	sw $t0, -2924($fp)
label1128:
	lw $t0, -96($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 4
	lw $t1, -2976($fp)
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	lw $t1, -2972($fp)
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	lw $t1, 0($t0)
	sw $t1, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2992($fp)
	li $t0, 1
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
	lw $t0, -3008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -3012($fp)
	li $t0, 2
	sw $t0, -3016($fp)
	li $t0, 4
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, -3012($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, 0($t0)
	sw $t1, -3028($fp)
	lw $t0, -3028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	lw $t0, -240($fp)
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3080($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -3100($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -3120($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -3140($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -3160($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -3180($fp)
	li $t0, 5
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
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3200($fp)
	li $t0, 6
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
	lw $t0, -3216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3228($fp)
	li $t0, 0
	sw $t0, -3232($fp)
	li $t0, 4
	lw $t1, -3232($fp)
	mul $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	lw $t1, -3228($fp)
	add $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	lw $t1, 0($t0)
	sw $t1, -3244($fp)
	lw $t0, -3244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3248($fp)
	li $t0, 1
	sw $t0, -3252($fp)
	li $t0, 4
	lw $t1, -3252($fp)
	mul $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	lw $t1, -3248($fp)
	add $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	lw $t1, 0($t0)
	sw $t1, -3264($fp)
	lw $t0, -3264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -3272($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -3292($fp)
	li $t0, 1
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
	addi $t0, $fp, -88
	sw $t0, -3312($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -3332($fp)
	li $t0, 3
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
	addi $t0, $fp, -88
	sw $t0, -3352($fp)
	li $t0, 4
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
	addi $t0, $fp, -88
	sw $t0, -3372($fp)
	li $t0, 5
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
	addi $t0, $fp, -88
	sw $t0, -3392($fp)
	li $t0, 6
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
	lw $t0, -684($fp)
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -3432($fp)
	li $t0, 62470
	sw $t0, -3436($fp)
	lw $t0, -3432($fp)
	lw $t1, -3436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3440($fp)
	li $t0, 28037
	sw $t0, -3444($fp)
	lw $t0, -3440($fp)
	lw $t1, -3444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3448($fp)
	lw $t0, -252($fp)
	sw $t0, -3452($fp)
	li $t0, 61423
	sw $t0, -3456($fp)
	lw $t0, -3452($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	li $t0, 11104
	sw $t0, -3464($fp)
	lw $t0, -3460($fp)
	lw $t1, -3464($fp)
	sub $t0, $t0, $t1
	sw $t0, -3468($fp)
	li $t0, 0
	sw $t0, -3472($fp)
	lw $t0, -252($fp)
	sw $t0, -3476($fp)
	li $t0, 0
	lw $t1, -3476($fp)
	sub $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label1132
	j label1131
label1131:
	li $t0, 1
	sw $t0, -3472($fp)
label1132:
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3472($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3484($fp)
	addi $sp, $sp, 12
	lw $t0, -3448($fp)
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -732($fp)
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	addi $t0, $fp, -60
	sw $t0, -3500($fp)
	lw $t0, -504($fp)
	sw $t0, -3504($fp)
	li $t0, 4
	lw $t1, -3504($fp)
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	lw $t1, -3500($fp)
	add $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	lw $t1, 0($t0)
	sw $t1, -3516($fp)
	li $t0, 0
	lw $t1, -3516($fp)
	sub $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3496($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $ra, -4($fp)
	lw $v0, -3524($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -812
	li $t0, 18563
	sw $t0, -52($fp)
	addi $t0, $fp, -8
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
	li $t0, 31343
	sw $t0, -76($fp)
	addi $t0, $fp, -48
	sw $t0, -80($fp)
	li $t0, 0
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
	li $t0, 34972
	sw $t0, -100($fp)
	addi $t0, $fp, -48
	sw $t0, -104($fp)
	li $t0, 1
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
	li $t0, 64493
	sw $t0, -124($fp)
	addi $t0, $fp, -48
	sw $t0, -128($fp)
	li $t0, 2
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
	li $t0, 31229
	sw $t0, -148($fp)
	addi $t0, $fp, -48
	sw $t0, -152($fp)
	li $t0, 3
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
	li $t0, 31331
	sw $t0, -172($fp)
	addi $t0, $fp, -48
	sw $t0, -176($fp)
	li $t0, 4
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
	li $t0, 47276
	sw $t0, -196($fp)
	addi $t0, $fp, -48
	sw $t0, -200($fp)
	li $t0, 5
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
	li $t0, 58470
	sw $t0, -220($fp)
	addi $t0, $fp, -48
	sw $t0, -224($fp)
	li $t0, 6
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
	li $t0, 6719
	sw $t0, -244($fp)
	addi $t0, $fp, -48
	sw $t0, -248($fp)
	li $t0, 7
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
	li $t0, 45029
	sw $t0, -268($fp)
	addi $t0, $fp, -48
	sw $t0, -272($fp)
	li $t0, 8
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
	li $t0, 42050
	sw $t0, -292($fp)
	addi $t0, $fp, -48
	sw $t0, -296($fp)
	li $t0, 9
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
	li $t0, 41622
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 46684
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label1134
	j label1133
label1133:
	li $t0, 1
	sw $t0, -328($fp)
label1134:
	lw $t0, 12($fp)
	sw $t0, -336($fp)
	lw $t0, -328($fp)
	lw $t1, -336($fp)
	sub $t0, $t0, $t1
	sw $t0, -340($fp)
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 4($fp)
	sw $t0, -348($fp)
	addi $t0, $fp, -48
	sw $t0, -352($fp)
	li $t0, 8
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
	lw $t0, -348($fp)
	lw $t1, -368($fp)
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, 4($fp)
	sw $t0, -376($fp)
	lw $t0, 12($fp)
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 57238
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -392($fp)
	lw $t0, -372($fp)
	lw $t1, -392($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	li $t0, 0
	sw $t0, -400($fp)
	li $t0, 40561
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label1138
	j label1137
label1137:
	li $t0, 1
	sw $t0, -400($fp)
label1138:
	lw $t1, -396($fp)
	lw $t2, -400($fp)
	bgt $t1, $t2, label1135
	j label1136
label1135:
	li $t0, 1
	sw $t0, -344($fp)
label1136:
	li $t0, 0
	sw $t0, -408($fp)
	li $t0, 7124
	sw $t0, -412($fp)
	addi $t0, $fp, -8
	sw $t0, -416($fp)
	li $t0, 0
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
	lw $t0, -412($fp)
	lw $t1, -432($fp)
	sub $t0, $t0, $t1
	sw $t0, -436($fp)
	addi $t0, $fp, -48
	sw $t0, -440($fp)
	lw $t0, 8($fp)
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
	lw $t0, 12($fp)
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	mul $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -436($fp)
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	li $t0, 0
	sw $t0, -472($fp)
	li $t0, 0
	sw $t0, -476($fp)
	addi $t0, $fp, -48
	sw $t0, -480($fp)
	li $t0, 9
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
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label1144
	j label1143
label1143:
	li $t0, 1
	sw $t0, -476($fp)
label1144:
	li $t0, 0
	sw $t0, -500($fp)
	li $t0, 11362
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label1146
	j label1145
label1145:
	li $t0, 1
	sw $t0, -500($fp)
label1146:
	lw $t1, -476($fp)
	lw $t2, -500($fp)
	bge $t1, $t2, label1141
	j label1142
label1141:
	li $t0, 1
	sw $t0, -472($fp)
label1142:
	lw $t1, -468($fp)
	lw $t2, -472($fp)
	beq $t1, $t2, label1139
	j label1140
label1139:
	li $t0, 1
	sw $t0, -408($fp)
label1140:
	addi $t0, $fp, -8
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
	lw $t0, -524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -528($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -548($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -568($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -588($fp)
	li $t0, 3
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
	addi $t0, $fp, -48
	sw $t0, -608($fp)
	li $t0, 4
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
	addi $t0, $fp, -48
	sw $t0, -628($fp)
	li $t0, 5
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
	addi $t0, $fp, -48
	sw $t0, -648($fp)
	li $t0, 6
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
	addi $t0, $fp, -48
	sw $t0, -668($fp)
	li $t0, 7
	sw $t0, -672($fp)
	li $t0, 4
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -688($fp)
	li $t0, 8
	sw $t0, -692($fp)
	li $t0, 4
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, -688($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	lw $t0, -704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -708($fp)
	li $t0, 9
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
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -732($fp)
	lw $t0, 12($fp)
	sw $t0, -736($fp)
	li $t0, 63453
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	li $t0, 19569
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	mul $t0, $t0, $t1
	sw $t0, -752($fp)
	li $t0, 0
	sw $t0, -756($fp)
	li $t0, 33042
	sw $t0, -760($fp)
	li $t0, 0
	lw $t1, -760($fp)
	sub $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, 8($fp)
	sw $t0, -768($fp)
	lw $t1, -764($fp)
	lw $t2, -768($fp)
	ble $t1, $t2, label1149
	j label1150
label1149:
	li $t0, 1
	sw $t0, -756($fp)
label1150:
	addi $t0, $fp, -8
	sw $t0, -772($fp)
	li $t0, 0
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
	li $t0, 21896
	sw $t0, -792($fp)
	li $t0, 0
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -320($fp)
	sw $t0, -800($fp)
	lw $t0, -796($fp)
	lw $t1, -800($fp)
	sub $t0, $t0, $t1
	sw $t0, -804($fp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -808($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -808($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -812($fp)
	addi $sp, $sp, 20
	lw $t0, 12($fp)
	sw $t0, -816($fp)
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	blt $t1, $t2, label1147
	j label1148
label1147:
	li $t0, 1
	sw $t0, -732($fp)
label1148:
	lw $ra, -4($fp)
	lw $v0, -732($fp)
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
	li $t0, 28930
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	li $t0, 9021
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	mul $t0, $t0, $t1
	sw $t0, -28($fp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -32($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 38133
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
