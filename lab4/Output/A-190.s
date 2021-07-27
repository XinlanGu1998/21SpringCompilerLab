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
	addi $sp, $sp, -912
	li $t0, 38929
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 1519
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 57391
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 35169
	sw $t0, -72($fp)
	addi $t0, $fp, -20
	sw $t0, -76($fp)
	li $t0, 0
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
	li $t0, 34101
	sw $t0, -96($fp)
	addi $t0, $fp, -20
	sw $t0, -100($fp)
	li $t0, 1
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
	li $t0, 15210
	sw $t0, -120($fp)
	addi $t0, $fp, -20
	sw $t0, -124($fp)
	li $t0, 2
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
	li $t0, 48366
	sw $t0, -144($fp)
	addi $t0, $fp, -20
	sw $t0, -148($fp)
	li $t0, 3
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
	li $t0, 39815
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 612
	sw $t0, -180($fp)
	addi $t0, $fp, -32
	sw $t0, -184($fp)
	li $t0, 0
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
	li $t0, 36331
	sw $t0, -204($fp)
	addi $t0, $fp, -32
	sw $t0, -208($fp)
	li $t0, 1
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
	li $t0, 47422
	sw $t0, -228($fp)
	addi $t0, $fp, -32
	sw $t0, -232($fp)
	li $t0, 2
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
	li $t0, 44847
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	addi $t0, $fp, -20
	sw $t0, -264($fp)
	li $t0, 0
	sw $t0, -268($fp)
	lw $t0, -52($fp)
	sw $t0, -272($fp)
	lw $t0, -172($fp)
	sw $t0, -276($fp)
	lw $t0, -272($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t1, -280($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label126:
	lw $t0, -256($fp)
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -268($fp)
label125:
	li $t0, 4
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, 0($t0)
	sw $t1, -296($fp)
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	jal f6
	sw $v0, -300($fp)
	addi $sp, $sp, 4
	li $t0, 22675
	sw $t0, -304($fp)
	lw $t0, -300($fp)
	lw $t1, -304($fp)
	mul $t0, $t0, $t1
	sw $t0, -308($fp)
	li $t0, 0
	lw $t1, -308($fp)
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	jal f6
	sw $v0, -316($fp)
	addi $sp, $sp, 4
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
	jal f6
	sw $v0, -324($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -324($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label129
label128:
	addi $t0, $fp, -20
	sw $t0, -328($fp)
	li $t0, 0
	sw $t0, -332($fp)
	jal f6
	sw $v0, -336($fp)
	addi $sp, $sp, 4
	lw $t0, -64($fp)
	sw $t0, -340($fp)
	lw $t1, -336($fp)
	lw $t2, -340($fp)
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -332($fp)
label131:
	li $t0, 4
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t1, 0($t0)
	sw $t1, -352($fp)
	li $t0, 0
	sw $t0, -356($fp)
	lw $t0, -52($fp)
	sw $t0, -360($fp)
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -356($fp)
label133:
	li $t0, 0
	sw $t0, -364($fp)
	lw $t0, -64($fp)
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label134:
	li $t0, 1
	sw $t0, -364($fp)
label135:
	lw $t0, -356($fp)
	lw $t1, -364($fp)
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -352($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	addi $t0, $fp, -32
	sw $t0, -384($fp)
	li $t0, 0
	sw $t0, -388($fp)
	lw $t0, -256($fp)
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label140
label140:
	lw $t0, -40($fp)
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -388($fp)
label139:
	li $t0, 4
	lw $t1, -388($fp)
	mul $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	lw $t1, -384($fp)
	add $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	lw $t1, 0($t0)
	sw $t1, -408($fp)
	li $t0, 0
	lw $t1, -408($fp)
	sub $t0, $t0, $t1
	sw $t0, -412($fp)
	li $t0, 22533
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	blt $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -380($fp)
label137:
label129:
label122:
label141:
	addi $t0, $fp, -32
	sw $t0, -420($fp)
	li $t0, 1
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
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	li $t0, 47141
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -448($fp)
label149:
	addi $t0, $fp, -32
	sw $t0, -456($fp)
	li $t0, 2
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
	lw $t0, -448($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	li $t0, 29557
	sw $t0, -480($fp)
	lw $t1, -476($fp)
	lw $t2, -480($fp)
	ble $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -444($fp)
label147:
	li $t0, 28204
	sw $t0, -484($fp)
	lw $t1, -444($fp)
	lw $t2, -484($fp)
	beq $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -440($fp)
label145:
	addi $t0, $fp, -32
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	lw $t0, -256($fp)
	sw $t0, -496($fp)
	lw $t0, -64($fp)
	sw $t0, -500($fp)
	lw $t1, -496($fp)
	lw $t2, -500($fp)
	beq $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -492($fp)
label151:
	lw $t0, -492($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -504($fp)
	li $t0, 4
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	lw $t1, -488($fp)
	add $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	lw $t1, 0($t0)
	sw $t1, -516($fp)
	li $t0, 38901
	sw $t0, -520($fp)
	addi $t0, $fp, -20
	sw $t0, -524($fp)
	li $t0, 0
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
	lw $t0, -520($fp)
	lw $t1, -540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -544($fp)
	lw $t0, -172($fp)
	sw $t0, -548($fp)
	lw $t0, -544($fp)
	lw $t1, -548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -552($fp)
	j label141
label143:
	li $t0, 54500
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 6386
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 31191
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -560($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 50158
	sw $t0, -604($fp)
	lw $ra, -4($fp)
	lw $v0, -604($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -560($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -620($fp)
	jal f6
	sw $v0, -624($fp)
	addi $sp, $sp, 4
	li $t0, 40338
	sw $t0, -628($fp)
	lw $t0, -624($fp)
	lw $t1, -628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -632($fp)
	lw $t0, -40($fp)
	sw $t0, -636($fp)
	li $t0, 0
	lw $t1, -636($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -632($fp)
	lw $t1, -640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -644($fp)
	lw $t0, -620($fp)
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $ra, -4($fp)
	lw $v0, -648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	jal f6
	sw $v0, -652($fp)
	addi $sp, $sp, 4
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 0
	sw $t0, -656($fp)
	addi $t0, $fp, -32
	sw $t0, -660($fp)
	lw $t0, -560($fp)
	sw $t0, -664($fp)
	li $t0, 38307
	sw $t0, -668($fp)
	lw $t0, -664($fp)
	lw $t1, -668($fp)
	sub $t0, $t0, $t1
	sw $t0, -672($fp)
	li $t0, 4
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	addi $t0, $fp, -20
	sw $t0, -688($fp)
	lw $t0, -572($fp)
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
	lw $t0, -684($fp)
	lw $t1, -704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -708($fp)
	li $t0, 0
	sw $t0, -712($fp)
	jal f6
	sw $v0, -716($fp)
	addi $sp, $sp, 4
	li $t0, 28872
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -584($fp)
	sw $t0, -728($fp)
	lw $t0, -256($fp)
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	sub $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t1, -724($fp)
	lw $t2, -736($fp)
	bge $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -712($fp)
label158:
	lw $t1, -708($fp)
	lw $t2, -712($fp)
	beq $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -656($fp)
label156:
label153:
	li $t0, 13731
	sw $t0, -740($fp)
	lw $t0, -172($fp)
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -40($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	lw $t0, -172($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
	sw $t0, -868($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -888($fp)
	li $t0, 2
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
	lw $t0, -256($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -912($fp)
	li $t0, 39826
	sw $t0, -916($fp)
	lw $t1, -916($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label159
label159:
	li $t0, 1
	sw $t0, -912($fp)
label160:
	lw $ra, -4($fp)
	lw $v0, -912($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1184
	li $t0, 20727
	sw $t0, -84($fp)
	addi $t0, $fp, -16
	sw $t0, -88($fp)
	li $t0, 0
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
	li $t0, 48900
	sw $t0, -108($fp)
	addi $t0, $fp, -16
	sw $t0, -112($fp)
	li $t0, 1
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
	li $t0, 8391
	sw $t0, -132($fp)
	addi $t0, $fp, -16
	sw $t0, -136($fp)
	li $t0, 2
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
	li $t0, 35937
	sw $t0, -156($fp)
	addi $t0, $fp, -48
	sw $t0, -160($fp)
	li $t0, 0
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
	li $t0, 31730
	sw $t0, -180($fp)
	addi $t0, $fp, -48
	sw $t0, -184($fp)
	li $t0, 1
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
	li $t0, 48206
	sw $t0, -204($fp)
	addi $t0, $fp, -48
	sw $t0, -208($fp)
	li $t0, 2
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
	li $t0, 36549
	sw $t0, -228($fp)
	addi $t0, $fp, -48
	sw $t0, -232($fp)
	li $t0, 3
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
	li $t0, 2525
	sw $t0, -252($fp)
	addi $t0, $fp, -48
	sw $t0, -256($fp)
	li $t0, 4
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
	li $t0, 30092
	sw $t0, -276($fp)
	addi $t0, $fp, -48
	sw $t0, -280($fp)
	li $t0, 5
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
	li $t0, 15861
	sw $t0, -300($fp)
	addi $t0, $fp, -48
	sw $t0, -304($fp)
	li $t0, 6
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
	li $t0, 25201
	sw $t0, -324($fp)
	addi $t0, $fp, -48
	sw $t0, -328($fp)
	li $t0, 7
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
	li $t0, 52625
	sw $t0, -348($fp)
	addi $t0, $fp, -80
	sw $t0, -352($fp)
	li $t0, 0
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
	li $t0, 26598
	sw $t0, -372($fp)
	addi $t0, $fp, -80
	sw $t0, -376($fp)
	li $t0, 1
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
	li $t0, 28664
	sw $t0, -396($fp)
	addi $t0, $fp, -80
	sw $t0, -400($fp)
	li $t0, 2
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
	li $t0, 34230
	sw $t0, -420($fp)
	addi $t0, $fp, -80
	sw $t0, -424($fp)
	li $t0, 3
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -424($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -420($fp)
	lw $t1, -436($fp)
	sw $t0, 0($t1)
	lw $t0, -436($fp)
	lw $t1, 0($t0)
	sw $t1, -440($fp)
	li $t0, 13096
	sw $t0, -444($fp)
	addi $t0, $fp, -80
	sw $t0, -448($fp)
	li $t0, 4
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -448($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -444($fp)
	lw $t1, -460($fp)
	sw $t0, 0($t1)
	lw $t0, -460($fp)
	lw $t1, 0($t0)
	sw $t1, -464($fp)
	li $t0, 41339
	sw $t0, -468($fp)
	addi $t0, $fp, -80
	sw $t0, -472($fp)
	li $t0, 5
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -472($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -468($fp)
	lw $t1, -484($fp)
	sw $t0, 0($t1)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	li $t0, 63788
	sw $t0, -492($fp)
	addi $t0, $fp, -80
	sw $t0, -496($fp)
	li $t0, 6
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -496($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -492($fp)
	lw $t1, -508($fp)
	sw $t0, 0($t1)
	lw $t0, -508($fp)
	lw $t1, 0($t0)
	sw $t1, -512($fp)
	li $t0, 41300
	sw $t0, -516($fp)
	addi $t0, $fp, -80
	sw $t0, -520($fp)
	li $t0, 7
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -520($fp)
	lw $t1, -528($fp)
	add $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -516($fp)
	lw $t1, -532($fp)
	sw $t0, 0($t1)
	lw $t0, -532($fp)
	lw $t1, 0($t0)
	sw $t1, -536($fp)
	li $t0, 0
	sw $t0, -540($fp)
	li $t0, 0
	sw $t0, -544($fp)
	addi $t0, $fp, -80
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
	li $t0, 41973
	sw $t0, -568($fp)
	lw $t1, -564($fp)
	lw $t2, -568($fp)
	bgt $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -544($fp)
label164:
	lw $t0, 8($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -576($fp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -576($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -580($fp)
	addi $sp, $sp, 12
	li $t0, 3669
	sw $t0, -584($fp)
	lw $t0, -580($fp)
	lw $t1, -584($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	addi $t0, $fp, -16
	sw $t0, -592($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -608($fp)
	sub $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t1, -588($fp)
	lw $t2, -612($fp)
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -540($fp)
label162:
	li $t0, 53827
	sw $t0, -616($fp)
	jal f6
	sw $v0, -620($fp)
	addi $sp, $sp, 4
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -624($fp)
	addi $t0, $fp, -48
	sw $t0, -628($fp)
	addi $t0, $fp, -16
	sw $t0, -632($fp)
	lw $t0, 8($fp)
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
	li $t0, 4
	lw $t1, -648($fp)
	mul $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, 0($t0)
	sw $t1, -660($fp)
	lw $t0, -624($fp)
	lw $t1, -660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	addi $t0, $fp, -16
	sw $t0, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	li $t0, 2637
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label170:
	lw $t0, 8($fp)
	sw $t0, -680($fp)
	li $t0, 45935
	sw $t0, -684($fp)
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -672($fp)
label169:
	li $t0, 4
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, 0($t0)
	sw $t1, -700($fp)
	j label167
label166:
	li $t0, 0
	sw $t0, -704($fp)
	li $t0, 17163
	sw $t0, -708($fp)
	lw $t0, 8($fp)
	sw $t0, -712($fp)
	lw $t0, -708($fp)
	lw $t1, -712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -716($fp)
	li $t0, 0
	sw $t0, -720($fp)
	addi $t0, $fp, -80
	sw $t0, -724($fp)
	lw $t0, 8($fp)
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
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -720($fp)
label174:
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	li $t0, 0
	sw $t0, -748($fp)
	jal f6
	sw $v0, -752($fp)
	addi $sp, $sp, 4
	lw $t1, -752($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -748($fp)
label176:
	li $t0, 0
	lw $t1, -748($fp)
	sub $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t1, -744($fp)
	lw $t2, -756($fp)
	blt $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -704($fp)
label172:
label167:
	addi $t0, $fp, -16
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 4
	lw $t1, -764($fp)
	mul $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, 0($t0)
	sw $t1, -776($fp)
	lw $t0, -776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -780($fp)
	li $t0, 1
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
	lw $t0, -796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -800($fp)
	li $t0, 2
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
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -820($fp)
	li $t0, 0
	sw $t0, -824($fp)
	li $t0, 4
	lw $t1, -824($fp)
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, 0($t0)
	sw $t1, -836($fp)
	lw $t0, -836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -840($fp)
	li $t0, 1
	sw $t0, -844($fp)
	li $t0, 4
	lw $t1, -844($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	lw $t0, -856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -860($fp)
	li $t0, 2
	sw $t0, -864($fp)
	li $t0, 4
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, 0($t0)
	sw $t1, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -880($fp)
	li $t0, 3
	sw $t0, -884($fp)
	li $t0, 4
	lw $t1, -884($fp)
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -900($fp)
	li $t0, 4
	sw $t0, -904($fp)
	li $t0, 4
	lw $t1, -904($fp)
	mul $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	lw $t1, 0($t0)
	sw $t1, -916($fp)
	lw $t0, -916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -920($fp)
	li $t0, 5
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
	lw $t0, -936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -940($fp)
	li $t0, 6
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
	lw $t0, -956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -960($fp)
	li $t0, 7
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
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 4
	lw $t1, -984($fp)
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	lw $t1, 0($t0)
	sw $t1, -996($fp)
	lw $t0, -996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1000($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -1020($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -1040($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -1060($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -1080($fp)
	li $t0, 5
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
	addi $t0, $fp, -80
	sw $t0, -1100($fp)
	li $t0, 6
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
	addi $t0, $fp, -80
	sw $t0, -1120($fp)
	li $t0, 7
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
	li $t0, 16368
	sw $t0, -1140($fp)
	lw $t0, 8($fp)
	sw $t0, -1144($fp)
	lw $t0, -1140($fp)
	lw $t1, -1144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1148($fp)
	li $t0, 20225
	sw $t0, -1152($fp)
	lw $t0, -1148($fp)
	lw $t1, -1152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1156($fp)
	lw $t0, 8($fp)
	sw $t0, -1160($fp)
	li $t0, 0
	lw $t1, -1160($fp)
	sub $t0, $t0, $t1
	sw $t0, -1164($fp)
	li $t0, 65268
	sw $t0, -1168($fp)
	li $t0, 37890
	sw $t0, -1172($fp)
	addi $sp, $sp, -4
	lw $t0, -1168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1172($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1176($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -1164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1180($fp)
	addi $sp, $sp, 12
	lw $t0, -1156($fp)
	lw $t1, -1180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1184($fp)
	li $t0, 0
	lw $t1, -1184($fp)
	sub $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $ra, -4($fp)
	lw $v0, -1188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -16
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 28616
	sw $t0, -12($fp)
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label179
label179:
	li $t0, 8292
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -8($fp)
label178:
	lw $t0, -8($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -20($fp)
	lw $ra, -4($fp)
	lw $v0, -20($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7332
	li $t0, 31462
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 11286
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 44841
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 33988
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 41378
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 60702
	sw $t0, -192($fp)
	addi $t0, $fp, -8
	sw $t0, -196($fp)
	li $t0, 0
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
	li $t0, 59189
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 28468
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 21765
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 22317
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 62698
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 34861
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 63656
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 60950
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 10625
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 12825
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 16863
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 52598
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 16494
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 44699
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 60227
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 4785
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 47336
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 40626
	sw $t0, -420($fp)
	addi $t0, $fp, -24
	sw $t0, -424($fp)
	li $t0, 0
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -424($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -420($fp)
	lw $t1, -436($fp)
	sw $t0, 0($t1)
	lw $t0, -436($fp)
	lw $t1, 0($t0)
	sw $t1, -440($fp)
	li $t0, 21948
	sw $t0, -444($fp)
	addi $t0, $fp, -24
	sw $t0, -448($fp)
	li $t0, 1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -448($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -444($fp)
	lw $t1, -460($fp)
	sw $t0, 0($t1)
	lw $t0, -460($fp)
	lw $t1, 0($t0)
	sw $t1, -464($fp)
	li $t0, 63705
	sw $t0, -468($fp)
	addi $t0, $fp, -24
	sw $t0, -472($fp)
	li $t0, 2
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -472($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -468($fp)
	lw $t1, -484($fp)
	sw $t0, 0($t1)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	li $t0, 60852
	sw $t0, -492($fp)
	addi $t0, $fp, -24
	sw $t0, -496($fp)
	li $t0, 3
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -496($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -492($fp)
	lw $t1, -508($fp)
	sw $t0, 0($t1)
	lw $t0, -508($fp)
	lw $t1, 0($t0)
	sw $t1, -512($fp)
	li $t0, 59838
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 63437
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 23932
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 2594
	sw $t0, -552($fp)
	addi $t0, $fp, -40
	sw $t0, -556($fp)
	li $t0, 0
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
	li $t0, 29364
	sw $t0, -576($fp)
	addi $t0, $fp, -40
	sw $t0, -580($fp)
	li $t0, 1
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
	li $t0, 35219
	sw $t0, -600($fp)
	addi $t0, $fp, -40
	sw $t0, -604($fp)
	li $t0, 2
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
	li $t0, 47436
	sw $t0, -624($fp)
	addi $t0, $fp, -40
	sw $t0, -628($fp)
	li $t0, 3
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
	li $t0, 63352
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 11061
	sw $t0, -660($fp)
	addi $t0, $fp, -64
	sw $t0, -664($fp)
	li $t0, 0
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
	li $t0, 42602
	sw $t0, -684($fp)
	addi $t0, $fp, -64
	sw $t0, -688($fp)
	li $t0, 1
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
	li $t0, 57005
	sw $t0, -708($fp)
	addi $t0, $fp, -64
	sw $t0, -712($fp)
	li $t0, 2
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
	li $t0, 39529
	sw $t0, -732($fp)
	addi $t0, $fp, -64
	sw $t0, -736($fp)
	li $t0, 3
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
	li $t0, 64367
	sw $t0, -756($fp)
	addi $t0, $fp, -64
	sw $t0, -760($fp)
	li $t0, 4
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
	li $t0, 13786
	sw $t0, -780($fp)
	addi $t0, $fp, -64
	sw $t0, -784($fp)
	li $t0, 5
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
	li $t0, 36692
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 33692
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 11906
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 32106
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 44318
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 24731
	sw $t0, -864($fp)
	addi $t0, $fp, -68
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
	li $t0, 48970
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 31380
	sw $t0, -900($fp)
	addi $t0, $fp, -104
	sw $t0, -904($fp)
	li $t0, 0
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
	li $t0, 41225
	sw $t0, -924($fp)
	addi $t0, $fp, -104
	sw $t0, -928($fp)
	li $t0, 1
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
	li $t0, 28133
	sw $t0, -948($fp)
	addi $t0, $fp, -104
	sw $t0, -952($fp)
	li $t0, 2
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
	li $t0, 26071
	sw $t0, -972($fp)
	addi $t0, $fp, -104
	sw $t0, -976($fp)
	li $t0, 3
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -976($fp)
	lw $t1, -984($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -972($fp)
	lw $t1, -988($fp)
	sw $t0, 0($t1)
	lw $t0, -988($fp)
	lw $t1, 0($t0)
	sw $t1, -992($fp)
	li $t0, 46010
	sw $t0, -996($fp)
	addi $t0, $fp, -104
	sw $t0, -1000($fp)
	li $t0, 4
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1000($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -996($fp)
	lw $t1, -1012($fp)
	sw $t0, 0($t1)
	lw $t0, -1012($fp)
	lw $t1, 0($t0)
	sw $t1, -1016($fp)
	li $t0, 9933
	sw $t0, -1020($fp)
	addi $t0, $fp, -104
	sw $t0, -1024($fp)
	li $t0, 5
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1024($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1020($fp)
	lw $t1, -1036($fp)
	sw $t0, 0($t1)
	lw $t0, -1036($fp)
	lw $t1, 0($t0)
	sw $t1, -1040($fp)
	li $t0, 1162
	sw $t0, -1044($fp)
	addi $t0, $fp, -104
	sw $t0, -1048($fp)
	li $t0, 6
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
	li $t0, 2422
	sw $t0, -1068($fp)
	addi $t0, $fp, -104
	sw $t0, -1072($fp)
	li $t0, 7
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
	li $t0, 8102
	sw $t0, -1092($fp)
	addi $t0, $fp, -104
	sw $t0, -1096($fp)
	li $t0, 8
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
	li $t0, 62014
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 62261
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 6004
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 20410
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 64855
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 35368
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 55629
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 46755
	sw $t0, -1200($fp)
	addi $t0, $fp, -128
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
	li $t0, 33184
	sw $t0, -1224($fp)
	addi $t0, $fp, -128
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
	li $t0, 1155
	sw $t0, -1248($fp)
	addi $t0, $fp, -128
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
	li $t0, 23822
	sw $t0, -1272($fp)
	addi $t0, $fp, -128
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
	li $t0, 24653
	sw $t0, -1296($fp)
	addi $t0, $fp, -128
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
	li $t0, 40684
	sw $t0, -1320($fp)
	addi $t0, $fp, -128
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
	li $t0, 22653
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -256($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -1360($fp)
	li $t0, 0
	sw $t0, -1364($fp)
	lw $t0, -244($fp)
	sw $t0, -1368($fp)
	lw $t1, -1368($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -1364($fp)
label186:
	li $t0, 38439
	sw $t0, -1372($fp)
	lw $t0, -1364($fp)
	lw $t1, -1372($fp)
	sub $t0, $t0, $t1
	sw $t0, -1376($fp)
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1380($fp)
	addi $sp, $sp, 12
	jal f6
	sw $v0, -1384($fp)
	addi $sp, $sp, 4
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label181
label184:
	li $t0, 11840
	sw $t0, -1392($fp)
	li $t0, 0
	lw $t1, -1392($fp)
	sub $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label181
label183:
	li $t0, 56346
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
label187:
	lw $t0, -412($fp)
	sw $t0, -1404($fp)
	lw $t0, -1120($fp)
	sw $t0, -1408($fp)
	li $t0, 0
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	li $t0, 0
	lw $t1, -1412($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	li $t0, 35128
	sw $t0, -1420($fp)
	li $t0, 0
	sw $t0, -1424($fp)
	lw $t0, -1348($fp)
	sw $t0, -1428($fp)
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label192:
	lw $t0, -364($fp)
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -1424($fp)
label191:
	lw $t0, -304($fp)
	sw $t0, -1436($fp)
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	li $t0, 50345
	sw $t0, -1448($fp)
	li $t0, 43947
	sw $t0, -1452($fp)
	lw $t1, -1448($fp)
	lw $t2, -1452($fp)
	ble $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -1444($fp)
label196:
	lw $t0, -808($fp)
	sw $t0, -1456($fp)
	lw $t1, -1444($fp)
	lw $t2, -1456($fp)
	ble $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1440($fp)
label194:
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1440($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1460($fp)
	addi $sp, $sp, 24
	lw $t0, -1404($fp)
	lw $t1, -1460($fp)
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	lw $t0, -184($fp)
	sw $t0, -1468($fp)
	lw $ra, -4($fp)
	lw $v0, -1468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label187
label189:
	j label182
label181:
	li $t0, 9541
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	li $t0, 27381
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 972
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	li $t0, 50766
	sw $t0, -1568($fp)
	addi $t0, $fp, -1488
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
	li $t0, 55514
	sw $t0, -1592($fp)
	addi $t0, $fp, -1488
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
	li $t0, 27044
	sw $t0, -1616($fp)
	addi $t0, $fp, -1488
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
	li $t0, 31241
	sw $t0, -1640($fp)
	addi $t0, $fp, -1488
	sw $t0, -1644($fp)
	li $t0, 3
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
	li $t0, 65447
	sw $t0, -1664($fp)
	addi $t0, $fp, -1488
	sw $t0, -1668($fp)
	li $t0, 4
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
	li $t0, 28206
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	li $t0, 33663
	sw $t0, -1700($fp)
	addi $t0, $fp, -1528
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
	li $t0, 8014
	sw $t0, -1724($fp)
	addi $t0, $fp, -1528
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
	li $t0, 24684
	sw $t0, -1748($fp)
	addi $t0, $fp, -1528
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
	li $t0, 30388
	sw $t0, -1772($fp)
	addi $t0, $fp, -1528
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
	li $t0, 14018
	sw $t0, -1796($fp)
	addi $t0, $fp, -1528
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
	li $t0, 45094
	sw $t0, -1820($fp)
	addi $t0, $fp, -1528
	sw $t0, -1824($fp)
	li $t0, 5
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
	li $t0, 29708
	sw $t0, -1844($fp)
	addi $t0, $fp, -1528
	sw $t0, -1848($fp)
	li $t0, 6
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
	li $t0, 49386
	sw $t0, -1868($fp)
	addi $t0, $fp, -1528
	sw $t0, -1872($fp)
	li $t0, 7
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
	li $t0, 35188
	sw $t0, -1892($fp)
	addi $t0, $fp, -1528
	sw $t0, -1896($fp)
	li $t0, 8
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1896($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1892($fp)
	lw $t1, -1908($fp)
	sw $t0, 0($t1)
	lw $t0, -1908($fp)
	lw $t1, 0($t0)
	sw $t1, -1912($fp)
	li $t0, 10927
	sw $t0, -1916($fp)
	addi $t0, $fp, -1528
	sw $t0, -1920($fp)
	li $t0, 9
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1920($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1916($fp)
	lw $t1, -1932($fp)
	sw $t0, 0($t1)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	li $t0, 17034
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -1948($fp)
	li $t0, 36343
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1960($fp)
	li $t0, 34749
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
	lw $t0, -1144($fp)
	sw $t0, -1976($fp)
	li $t0, 41687
	sw $t0, -1980($fp)
	li $t0, 0
	lw $t1, -1980($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1976($fp)
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -1992($fp)
	li $t0, 0
	sw $t0, -1996($fp)
	lw $t0, -832($fp)
	sw $t0, -2000($fp)
	lw $t0, -1968($fp)
	sw $t0, -2004($fp)
	lw $t1, -2000($fp)
	lw $t2, -2004($fp)
	ble $t1, $t2, label202
	j label201
label202:
	li $t0, 8940
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -1996($fp)
label201:
	li $t0, 17805
	sw $t0, -2012($fp)
	lw $t0, -328($fp)
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	li $t0, 0
	sw $t0, -2024($fp)
	li $t0, 64935
	sw $t0, -2028($fp)
	lw $t0, -1168($fp)
	sw $t0, -2032($fp)
	lw $t1, -2028($fp)
	lw $t2, -2032($fp)
	bge $t1, $t2, label203
	j label205
label205:
	li $t0, 1743
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -2024($fp)
label204:
	li $t0, 0
	sw $t0, -2040($fp)
	lw $t0, -388($fp)
	sw $t0, -2044($fp)
	li $t0, 23332
	sw $t0, -2048($fp)
	lw $t1, -2044($fp)
	lw $t2, -2048($fp)
	beq $t1, $t2, label206
	j label208
label208:
	li $t0, 48213
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -2040($fp)
label207:
	li $t0, 0
	sw $t0, -2056($fp)
	li $t0, 11491
	sw $t0, -2060($fp)
	li $t0, 57403
	sw $t0, -2064($fp)
	lw $t1, -2060($fp)
	lw $t2, -2064($fp)
	blt $t1, $t2, label209
	j label211
label211:
	li $t0, 14590
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -2056($fp)
label210:
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2072($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -128
	sw $t0, -2076($fp)
	li $t0, 0
	sw $t0, -2080($fp)
	li $t0, 29124
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label214
label214:
	li $t0, 18777
	sw $t0, -2088($fp)
	lw $t1, -2088($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -2080($fp)
label213:
	li $t0, 4
	lw $t1, -2080($fp)
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	lw $t1, -2072($fp)
	lw $t2, -2100($fp)
	beq $t1, $t2, label197
	j label198
label197:
	li $t0, 0
	sw $t0, -2104($fp)
	li $t0, 8491
	sw $t0, -2108($fp)
	lw $t0, -652($fp)
	sw $t0, -2112($fp)
	lw $t1, -2108($fp)
	lw $t2, -2112($fp)
	beq $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -2104($fp)
label219:
	li $t0, 0
	sw $t0, -2116($fp)
	li $t0, 0
	sw $t0, -2120($fp)
	li $t0, 19013
	sw $t0, -2124($fp)
	lw $t0, -1536($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -184($fp)
	sw $t0, -2136($fp)
	lw $t1, -2132($fp)
	lw $t2, -2136($fp)
	beq $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -2120($fp)
label223:
	li $t0, 0
	sw $t0, -2140($fp)
	lw $t0, -652($fp)
	sw $t0, -2144($fp)
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label227:
	li $t0, 25412
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label226
label226:
	lw $t0, -328($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -2140($fp)
label225:
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2156($fp)
	addi $sp, $sp, 12
	lw $t0, -1144($fp)
	sw $t0, -2160($fp)
	lw $t1, -2156($fp)
	lw $t2, -2160($fp)
	beq $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -2116($fp)
label221:
	li $t0, 0
	sw $t0, -2164($fp)
	jal f6
	sw $v0, -2168($fp)
	addi $sp, $sp, 4
	lw $t0, -304($fp)
	sw $t0, -2172($fp)
	lw $t1, -2168($fp)
	lw $t2, -2172($fp)
	beq $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -2164($fp)
label229:
	addi $sp, $sp, -4
	lw $t0, -2116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2164($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2176($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2176($fp)
	sub $t0, $t0, $t1
	sw $t0, -2180($fp)
	li $t0, 0
	sw $t0, -2184($fp)
	addi $t0, $fp, -68
	sw $t0, -2188($fp)
	lw $t0, -148($fp)
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
	bne $t1, $t2, label230
	j label232
label232:
	li $t0, 45821
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -2184($fp)
label231:
	addi $t0, $fp, -104
	sw $t0, -2212($fp)
	li $t0, 7
	sw $t0, -2216($fp)
	li $t0, 4
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	lw $t1, 0($t0)
	sw $t1, -2228($fp)
	lw $t0, -304($fp)
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -2236($fp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2240($fp)
	addi $sp, $sp, 24
	lw $t1, -2240($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 59075
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -2248($fp)
	lw $t0, -244($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -2256($fp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2260($fp)
	addi $sp, $sp, 12
	lw $t0, -856($fp)
	sw $t0, -2264($fp)
	lw $t0, -2260($fp)
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -1944($fp)
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	addi $t0, $fp, -8
	sw $t0, -2280($fp)
	li $t0, 0
	sw $t0, -2284($fp)
	lw $t0, -220($fp)
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -2284($fp)
label234:
	li $t0, 4
	lw $t1, -2284($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t0, -2276($fp)
	lw $t1, -2300($fp)
	sub $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $ra, -4($fp)
	lw $v0, -2304($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label217
label216:
	li $t0, 27027
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	li $t0, 33175
	sw $t0, -2328($fp)
	addi $t0, $fp, -2312
	sw $t0, -2332($fp)
	li $t0, 0
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
	li $t0, 23928
	sw $t0, -2352($fp)
	addi $t0, $fp, -2312
	sw $t0, -2356($fp)
	li $t0, 1
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
	li $t0, 41045
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	lw $t0, -2320($fp)
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2312
	sw $t0, -2392($fp)
	li $t0, 0
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
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2312
	sw $t0, -2412($fp)
	li $t0, 1
	sw $t0, -2416($fp)
	li $t0, 4
	lw $t1, -2416($fp)
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	lw $t1, 0($t0)
	sw $t1, -2428($fp)
	lw $t0, -2428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2380($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -2436($fp)
	lw $t0, -304($fp)
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	sub $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -2448($fp)
	lw $ra, -4($fp)
	lw $v0, -2448($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2320($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2312
	sw $t0, -2456($fp)
	li $t0, 0
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
	addi $t0, $fp, -2312
	sw $t0, -2476($fp)
	li $t0, 1
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
	lw $t0, -2380($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2500($fp)
	li $t0, 0
	sw $t0, -2504($fp)
	li $t0, 12734
	sw $t0, -2508($fp)
	li $t0, 53636
	sw $t0, -2512($fp)
	lw $t0, -2508($fp)
	lw $t1, -2512($fp)
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	li $t0, 24895
	sw $t0, -2520($fp)
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	li $t0, 47922
	sw $t0, -2528($fp)
	lw $t1, -2524($fp)
	lw $t2, -2528($fp)
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -2504($fp)
label239:
	li $t0, 0
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	addi $t0, $fp, -2312
	sw $t0, -2540($fp)
	lw $t0, -652($fp)
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
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label244
label244:
	lw $t0, -2320($fp)
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -2536($fp)
label243:
	li $t0, 0
	sw $t0, -2564($fp)
	lw $t0, -292($fp)
	sw $t0, -2568($fp)
	lw $t0, -244($fp)
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label247:
	li $t0, 64563
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -2564($fp)
label246:
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2584($fp)
	addi $sp, $sp, 12
	li $t0, 41929
	sw $t0, -2588($fp)
	lw $t1, -2584($fp)
	lw $t2, -2588($fp)
	bgt $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -2532($fp)
label241:
	lw $t1, -2504($fp)
	lw $t2, -2532($fp)
	beq $t1, $t2, label237
	j label236
label237:
	li $t0, 18729
	sw $t0, -2592($fp)
	lw $t0, -2380($fp)
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -1144($fp)
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -892($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -2616($fp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2620($fp)
	addi $sp, $sp, 12
	lw $t1, -2620($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -2500($fp)
label236:
	lw $ra, -4($fp)
	lw $v0, -2500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2320($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2312
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
	addi $t0, $fp, -2312
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
	lw $t0, -2380($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f6
	sw $v0, -2672($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2676($fp)
	jal f6
	sw $v0, -2680($fp)
	addi $sp, $sp, 4
	lw $t0, -400($fp)
	sw $t0, -2684($fp)
	lw $t1, -2680($fp)
	lw $t2, -2684($fp)
	beq $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -2676($fp)
label249:
	li $t0, 0
	sw $t0, -2688($fp)
	li $t0, 25644
	sw $t0, -2692($fp)
	lw $t1, -2692($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label251
label252:
	lw $t0, -388($fp)
	sw $t0, -2696($fp)
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -2688($fp)
label251:
	li $t0, 30220
	sw $t0, -2700($fp)
	lw $t0, -532($fp)
	sw $t0, -2704($fp)
	lw $t0, -2700($fp)
	lw $t1, -2704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2708($fp)
	lw $t0, -544($fp)
	sw $t0, -2712($fp)
	lw $t0, -2708($fp)
	lw $t1, -2712($fp)
	sub $t0, $t0, $t1
	sw $t0, -2716($fp)
	li $t0, 18080
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -2724($fp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2728($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	lw $t0, -352($fp)
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -2736($fp)
label256:
	li $t0, 33777
	sw $t0, -2744($fp)
	lw $t1, -2736($fp)
	lw $t2, -2744($fp)
	beq $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -2732($fp)
label254:
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2748($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -2748($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label217:
	j label199
label198:
label257:
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 0
	sw $t0, -2756($fp)
	li $t0, 8321
	sw $t0, -2760($fp)
	lw $t0, -244($fp)
	sw $t0, -2764($fp)
	lw $t0, -2760($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	li $t0, 32070
	sw $t0, -2772($fp)
	lw $t1, -2768($fp)
	lw $t2, -2772($fp)
	beq $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -2756($fp)
label264:
	lw $t0, -304($fp)
	sw $t0, -2776($fp)
	lw $t0, -1168($fp)
	sw $t0, -2780($fp)
	lw $t0, -2776($fp)
	lw $t1, -2780($fp)
	mul $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -292($fp)
	sw $t0, -2788($fp)
	lw $t0, -2784($fp)
	lw $t1, -2788($fp)
	sub $t0, $t0, $t1
	sw $t0, -2792($fp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2796($fp)
	addi $sp, $sp, 12
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label262
label262:
	li $t0, 55295
	sw $t0, -2800($fp)
	lw $t1, -2800($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -2752($fp)
label261:
	li $t0, 0
	sw $t0, -2804($fp)
	lw $t0, -136($fp)
	sw $t0, -2808($fp)
	li $t0, 32670
	sw $t0, -2812($fp)
	lw $t1, -2808($fp)
	lw $t2, -2812($fp)
	beq $t1, $t2, label265
	j label267
label267:
	li $t0, 53552
	sw $t0, -2816($fp)
	lw $t1, -2816($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -2804($fp)
label266:
	addi $sp, $sp, -4
	lw $t0, -2752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2804($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2820($fp)
	addi $sp, $sp, 12
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 0
	sw $t0, -2824($fp)
	li $t0, 26126
	sw $t0, -2828($fp)
	lw $t0, -304($fp)
	sw $t0, -2832($fp)
	lw $t1, -2828($fp)
	lw $t2, -2832($fp)
	beq $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -2824($fp)
label272:
	lw $t0, -2824($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -2840($fp)
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 0
	sw $t0, -2844($fp)
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, 4($fp)
	sw $t0, -2852($fp)
	li $t0, 56999
	sw $t0, -2856($fp)
	lw $t1, -2852($fp)
	lw $t2, -2856($fp)
	blt $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -2848($fp)
label279:
	li $t0, 33680
	sw $t0, -2860($fp)
	lw $t1, -2848($fp)
	lw $t2, -2860($fp)
	bge $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -2844($fp)
label277:
	li $t0, 0
	sw $t0, -2864($fp)
	lw $t0, -136($fp)
	sw $t0, -2868($fp)
	li $t0, 60593
	sw $t0, -2872($fp)
	lw $t1, -2868($fp)
	lw $t2, -2872($fp)
	beq $t1, $t2, label280
	j label282
label282:
	lw $t0, -304($fp)
	sw $t0, -2876($fp)
	lw $t1, -2876($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -2864($fp)
label281:
	li $t0, 0
	sw $t0, -2880($fp)
	li $t0, 25189
	sw $t0, -2884($fp)
	lw $t1, -2884($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label285
label285:
	lw $t0, -364($fp)
	sw $t0, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -2880($fp)
label284:
	li $t0, 37985
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -2896($fp)
	lw $t0, -268($fp)
	sw $t0, -2900($fp)
	li $t0, 35181
	sw $t0, -2904($fp)
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -340($fp)
	sw $t0, -2912($fp)
	lw $t0, -2908($fp)
	lw $t1, -2912($fp)
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	li $t0, 0
	sw $t0, -2920($fp)
	li $t0, 41010
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label289
label289:
	li $t0, 18883
	sw $t0, -2928($fp)
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label288
label288:
	li $t0, 44903
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -2920($fp)
label287:
	addi $sp, $sp, -4
	lw $t0, -2916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2936($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -2844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2936($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2940($fp)
	addi $sp, $sp, 24
	lw $t0, -820($fp)
	sw $t0, -2944($fp)
	lw $t0, -2940($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 54133
	sw $t0, -2952($fp)
	li $t0, 18490
	sw $t0, -2956($fp)
	lw $t0, -2952($fp)
	lw $t1, -2956($fp)
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	lw $t0, -304($fp)
	sw $t0, -2968($fp)
	li $t0, 1320
	sw $t0, -2972($fp)
	lw $t0, -2968($fp)
	lw $t1, -2972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2976($fp)
	lw $t0, -376($fp)
	sw $t0, -2980($fp)
	lw $t0, -2976($fp)
	lw $t1, -2980($fp)
	sub $t0, $t0, $t1
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	li $t0, 12525
	sw $t0, -2992($fp)
	li $t0, 59536
	sw $t0, -2996($fp)
	lw $t1, -2992($fp)
	lw $t2, -2996($fp)
	bge $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -2988($fp)
label293:
	lw $t1, -2984($fp)
	lw $t2, -2988($fp)
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -2964($fp)
label291:
	lw $t0, -2964($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -3000($fp)
label294:
	li $t0, 0
	sw $t0, -3004($fp)
	li $t0, 14054
	sw $t0, -3008($fp)
	lw $t0, -520($fp)
	sw $t0, -3012($fp)
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	sub $t0, $t0, $t1
	sw $t0, -3016($fp)
	li $t0, 625
	sw $t0, -3020($fp)
	lw $t0, -3016($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	li $t0, 18895
	sw $t0, -3028($fp)
	lw $t1, -3024($fp)
	lw $t2, -3028($fp)
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -3004($fp)
label298:
	lw $t0, -3004($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -3032($fp)
	lw $t1, -3032($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 0
	sw $t0, -3036($fp)
	addi $t0, $fp, -64
	sw $t0, -3040($fp)
	li $t0, 3
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
	lw $t1, -3056($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -3036($fp)
label300:
	li $t0, 0
	sw $t0, -3060($fp)
	lw $t0, -400($fp)
	sw $t0, -3064($fp)
	li $t0, 61976
	sw $t0, -3068($fp)
	lw $t0, -3064($fp)
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label303:
	lw $t0, -1692($fp)
	sw $t0, -3076($fp)
	lw $t1, -3076($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -3060($fp)
label302:
	addi $sp, $sp, -4
	lw $t0, -3036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3080($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3080($fp)
	sub $t0, $t0, $t1
	sw $t0, -3084($fp)
	j label294
label296:
	li $t0, 0
	sw $t0, -3088($fp)
	li $t0, 15169
	sw $t0, -3092($fp)
	li $t0, 0
	lw $t1, -3092($fp)
	sub $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label304:
	li $t0, 1
	sw $t0, -3088($fp)
label305:
	lw $t0, -1560($fp)
	sw $t0, -3100($fp)
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3104($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3104($fp)
	sub $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $ra, -4($fp)
	lw $v0, -3108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label275
label274:
	li $t0, 0
	sw $t0, -3112($fp)
	lw $t0, -1156($fp)
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label311:
	lw $t0, -1192($fp)
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -3112($fp)
label310:
	lw $t0, -328($fp)
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -3128($fp)
	addi $sp, $sp, -4
	lw $t0, -3112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3132($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3132($fp)
	sub $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 33429
	sw $t0, -3140($fp)
	li $t0, 13369
	sw $t0, -3144($fp)
	lw $t0, -3140($fp)
	lw $t1, -3144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
label315:
	addi $t0, $fp, -24
	sw $t0, -3152($fp)
	li $t0, 1
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
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 0
	sw $t0, -3172($fp)
	li $t0, 46040
	sw $t0, -3176($fp)
	lw $t1, -3176($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label320
label320:
	li $t0, 33406
	sw $t0, -3180($fp)
	lw $t1, -3180($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -3172($fp)
label319:
	j label315
label317:
	j label314
label313:
	li $t0, 0
	sw $t0, -3184($fp)
	addi $t0, $fp, -8
	sw $t0, -3188($fp)
	li $t0, 1858
	sw $t0, -3192($fp)
	lw $t0, -1132($fp)
	sw $t0, -3196($fp)
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3200($fp)
	li $t0, 4
	lw $t1, -3200($fp)
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, 0($t0)
	sw $t1, -3212($fp)
	li $t0, 12574
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3220($fp)
	li $t0, 0
	sw $t0, -3224($fp)
	li $t0, 27984
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -3232($fp)
	lw $t0, -1144($fp)
	sw $t0, -3236($fp)
	li $t0, 0
	lw $t1, -3236($fp)
	sub $t0, $t0, $t1
	sw $t0, -3240($fp)
	li $t0, 23165
	sw $t0, -3244($fp)
	lw $t0, -3240($fp)
	lw $t1, -3244($fp)
	sub $t0, $t0, $t1
	sw $t0, -3248($fp)
	addi $sp, $sp, -4
	lw $t0, -3232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3252($fp)
	addi $sp, $sp, 12
	li $t0, 53584
	sw $t0, -3256($fp)
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, 8($fp)
	sw $t0, -3264($fp)
	li $t0, 42049
	sw $t0, -3268($fp)
	lw $t0, -3264($fp)
	lw $t1, -3268($fp)
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t1, -3260($fp)
	lw $t2, -3272($fp)
	bgt $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -3224($fp)
label324:
	lw $t1, -3220($fp)
	lw $t2, -3224($fp)
	bne $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -3184($fp)
label322:
	lw $ra, -4($fp)
	lw $v0, -3184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label314:
	j label308
label307:
	li $t0, 0
	sw $t0, -3276($fp)
	addi $t0, $fp, -68
	sw $t0, -3280($fp)
	li $t0, 0
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
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label325:
	li $t0, 1
	sw $t0, -3276($fp)
label326:
	li $t0, 32542
	sw $t0, -3300($fp)
	lw $t0, -3276($fp)
	lw $t1, -3300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3304($fp)
	lw $t0, -136($fp)
	sw $t0, -3308($fp)
	lw $t0, -3304($fp)
	lw $t1, -3308($fp)
	mul $t0, $t0, $t1
	sw $t0, -3312($fp)
label308:
label275:
	j label270
label269:
	li $t0, 18287
	sw $t0, -3316($fp)
	lw $t0, -412($fp)
	sw $t0, -3320($fp)
	lw $t0, -3316($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $ra, -4($fp)
	lw $v0, -3324($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label270:
	j label257
label259:
label199:
	li $t0, 0
	sw $t0, -3328($fp)
	li $t0, 0
	sw $t0, -3332($fp)
	li $t0, 5961
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label331:
	li $t0, 1
	sw $t0, -3332($fp)
label332:
	li $t0, 685
	sw $t0, -3340($fp)
	lw $t0, -3332($fp)
	lw $t1, -3340($fp)
	mul $t0, $t0, $t1
	sw $t0, -3344($fp)
	li $t0, 0
	sw $t0, -3348($fp)
	li $t0, 0
	sw $t0, -3352($fp)
	li $t0, 0
	sw $t0, -3356($fp)
	lw $t0, -1168($fp)
	sw $t0, -3360($fp)
	li $t0, 24452
	sw $t0, -3364($fp)
	lw $t1, -3360($fp)
	lw $t2, -3364($fp)
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -3356($fp)
label339:
	li $t0, 2005
	sw $t0, -3368($fp)
	lw $t1, -3356($fp)
	lw $t2, -3368($fp)
	beq $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -3352($fp)
label337:
	li $t0, 0
	sw $t0, -3372($fp)
	li $t0, 6884
	sw $t0, -3376($fp)
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label340:
	li $t0, 1
	sw $t0, -3372($fp)
label341:
	addi $sp, $sp, -4
	lw $t0, -3352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3380($fp)
	addi $sp, $sp, 12
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label335
label335:
	li $t0, 19409
	sw $t0, -3384($fp)
	lw $t1, -3384($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -3348($fp)
label334:
	li $t0, 0
	sw $t0, -3388($fp)
	addi $t0, $fp, -1488
	sw $t0, -3392($fp)
	lw $t0, -316($fp)
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
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label344:
	lw $t0, -1560($fp)
	sw $t0, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -3388($fp)
label343:
	addi $sp, $sp, -4
	lw $t0, -3348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3416($fp)
	addi $sp, $sp, 12
	lw $t0, -3344($fp)
	lw $t1, -3416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label330:
	addi $t0, $fp, -1528
	sw $t0, -3424($fp)
	li $t0, 5
	sw $t0, -3428($fp)
	li $t0, 4
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	lw $t1, -3440($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label329
label329:
	li $t0, 0
	sw $t0, -3444($fp)
	lw $t0, -220($fp)
	sw $t0, -3448($fp)
	li $t0, 20034
	sw $t0, -3452($fp)
	lw $t0, -3448($fp)
	lw $t1, -3452($fp)
	sub $t0, $t0, $t1
	sw $t0, -3456($fp)
	li $t0, 37347
	sw $t0, -3460($fp)
	lw $t1, -3456($fp)
	lw $t2, -3460($fp)
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -3444($fp)
label346:
	lw $t0, -304($fp)
	sw $t0, -3464($fp)
	lw $t0, -1692($fp)
	sw $t0, -3468($fp)
	lw $t0, -3464($fp)
	lw $t1, -3468($fp)
	sub $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t1, -3444($fp)
	lw $t2, -3472($fp)
	beq $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -3328($fp)
label328:
	li $t0, 0
	sw $t0, -3476($fp)
	li $t0, 12499
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label347:
	li $t0, 1
	sw $t0, -3476($fp)
label348:
	li $t0, 19687
	sw $t0, -3484($fp)
	lw $t0, -3476($fp)
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	li $t0, 32636
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -3500($fp)
label182:
	li $t0, 27668
	sw $t0, -3504($fp)
	li $t0, 53116
	sw $t0, -3508($fp)
	li $t0, 0
	sw $t0, -3512($fp)
	lw $t0, -1168($fp)
	sw $t0, -3516($fp)
	lw $t1, -3516($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label352:
	li $t0, 1
	sw $t0, -3512($fp)
label353:
	lw $t0, -3508($fp)
	lw $t1, -3512($fp)
	mul $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3504($fp)
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 0
	sw $t0, -3528($fp)
	lw $t0, -844($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -3536($fp)
	addi $t0, $fp, -40
	sw $t0, -3540($fp)
	lw $t0, -400($fp)
	sw $t0, -3544($fp)
	li $t0, 4
	lw $t1, -3544($fp)
	mul $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, -3540($fp)
	add $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	lw $t1, 0($t0)
	sw $t1, -3556($fp)
	li $t0, 0
	sw $t0, -3560($fp)
	li $t0, 46654
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label357
label357:
	li $t0, 1
	sw $t0, -3560($fp)
label358:
	li $t0, 7522
	sw $t0, -3568($fp)
	li $t0, 0
	lw $t1, -3568($fp)
	sub $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -304($fp)
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	sub $t0, $t0, $t1
	sw $t0, -3580($fp)
	addi $sp, $sp, -4
	lw $t0, -3560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3584($fp)
	addi $sp, $sp, 12
	li $t0, 46006
	sw $t0, -3588($fp)
	lw $t0, -400($fp)
	sw $t0, -3592($fp)
	lw $t0, -3588($fp)
	lw $t1, -3592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3596($fp)
	lw $t0, -1180($fp)
	sw $t0, -3600($fp)
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -232($fp)
	sw $t0, -3608($fp)
	addi $sp, $sp, -4
	lw $t0, -3536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3608($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3612($fp)
	addi $sp, $sp, 24
	lw $t1, -3612($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label356
label356:
	lw $t0, -160($fp)
	sw $t0, -3616($fp)
	li $t0, 26510
	sw $t0, -3620($fp)
	lw $t0, -3616($fp)
	lw $t1, -3620($fp)
	add $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t1, -3624($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -3528($fp)
label355:
	lw $t0, -3528($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -3628($fp)
	j label351
label350:
	li $t0, 0
	sw $t0, -3632($fp)
	jal f6
	sw $v0, -3636($fp)
	addi $sp, $sp, 4
	lw $t0, -172($fp)
	sw $t0, -3640($fp)
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3640($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3644($fp)
	addi $sp, $sp, 12
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label359:
	li $t0, 1
	sw $t0, -3632($fp)
label360:
label351:
	li $t0, 40928
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	sw $t0, -3712($fp)
	li $t0, 48512
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	sw $t0, -3724($fp)
	li $t0, 39084
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	sw $t0, -3736($fp)
	li $t0, 64093
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	sw $t0, -3748($fp)
	li $t0, 10961
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	sw $t0, -3760($fp)
	li $t0, 27132
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	sw $t0, -3772($fp)
	li $t0, 40606
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	sw $t0, -3784($fp)
	li $t0, 18313
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	sw $t0, -3796($fp)
	li $t0, 50362
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	sw $t0, -3808($fp)
	li $t0, 55105
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3820($fp)
	li $t0, 50854
	sw $t0, -3824($fp)
	addi $t0, $fp, -3660
	sw $t0, -3828($fp)
	li $t0, 0
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
	li $t0, 3114
	sw $t0, -3848($fp)
	addi $t0, $fp, -3660
	sw $t0, -3852($fp)
	li $t0, 1
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
	li $t0, 61066
	sw $t0, -3872($fp)
	addi $t0, $fp, -3660
	sw $t0, -3876($fp)
	li $t0, 2
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
	li $t0, 51539
	sw $t0, -3896($fp)
	addi $t0, $fp, -3660
	sw $t0, -3900($fp)
	li $t0, 3
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
	li $t0, 9998
	sw $t0, -3920($fp)
	addi $t0, $fp, -3700
	sw $t0, -3924($fp)
	li $t0, 0
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
	li $t0, 19982
	sw $t0, -3944($fp)
	addi $t0, $fp, -3700
	sw $t0, -3948($fp)
	li $t0, 1
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
	li $t0, 53545
	sw $t0, -3968($fp)
	addi $t0, $fp, -3700
	sw $t0, -3972($fp)
	li $t0, 2
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
	li $t0, 29408
	sw $t0, -3992($fp)
	addi $t0, $fp, -3700
	sw $t0, -3996($fp)
	li $t0, 3
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -3996($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -3992($fp)
	lw $t1, -4008($fp)
	sw $t0, 0($t1)
	lw $t0, -4008($fp)
	lw $t1, 0($t0)
	sw $t1, -4012($fp)
	li $t0, 38434
	sw $t0, -4016($fp)
	addi $t0, $fp, -3700
	sw $t0, -4020($fp)
	li $t0, 4
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4020($fp)
	lw $t1, -4028($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4016($fp)
	lw $t1, -4032($fp)
	sw $t0, 0($t1)
	lw $t0, -4032($fp)
	lw $t1, 0($t0)
	sw $t1, -4036($fp)
	li $t0, 4068
	sw $t0, -4040($fp)
	addi $t0, $fp, -3700
	sw $t0, -4044($fp)
	li $t0, 5
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4044($fp)
	lw $t1, -4052($fp)
	add $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4040($fp)
	lw $t1, -4056($fp)
	sw $t0, 0($t1)
	lw $t0, -4056($fp)
	lw $t1, 0($t0)
	sw $t1, -4060($fp)
	li $t0, 49442
	sw $t0, -4064($fp)
	addi $t0, $fp, -3700
	sw $t0, -4068($fp)
	li $t0, 6
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4068($fp)
	lw $t1, -4076($fp)
	add $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4064($fp)
	lw $t1, -4080($fp)
	sw $t0, 0($t1)
	lw $t0, -4080($fp)
	lw $t1, 0($t0)
	sw $t1, -4084($fp)
	li $t0, 10246
	sw $t0, -4088($fp)
	addi $t0, $fp, -3700
	sw $t0, -4092($fp)
	li $t0, 7
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4092($fp)
	lw $t1, -4100($fp)
	add $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4088($fp)
	lw $t1, -4104($fp)
	sw $t0, 0($t1)
	lw $t0, -4104($fp)
	lw $t1, 0($t0)
	sw $t1, -4108($fp)
	li $t0, 16568
	sw $t0, -4112($fp)
	addi $t0, $fp, -3700
	sw $t0, -4116($fp)
	li $t0, 8
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4116($fp)
	lw $t1, -4124($fp)
	add $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4112($fp)
	lw $t1, -4128($fp)
	sw $t0, 0($t1)
	lw $t0, -4128($fp)
	lw $t1, 0($t0)
	sw $t1, -4132($fp)
	li $t0, 3593
	sw $t0, -4136($fp)
	addi $t0, $fp, -3700
	sw $t0, -4140($fp)
	li $t0, 9
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4140($fp)
	lw $t1, -4148($fp)
	add $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4136($fp)
	lw $t1, -4152($fp)
	sw $t0, 0($t1)
	lw $t0, -4152($fp)
	lw $t1, 0($t0)
	sw $t1, -4156($fp)
label361:
	addi $t0, $fp, -3700
	sw $t0, -4160($fp)
	li $t0, 0
	sw $t0, -4164($fp)
	li $t0, 0
	sw $t0, -4168($fp)
	lw $t0, -1144($fp)
	sw $t0, -4172($fp)
	lw $t0, -3720($fp)
	sw $t0, -4176($fp)
	lw $t1, -4172($fp)
	lw $t2, -4176($fp)
	blt $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -4168($fp)
label367:
	lw $t0, -1180($fp)
	sw $t0, -4180($fp)
	lw $t1, -4168($fp)
	lw $t2, -4180($fp)
	ble $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -4164($fp)
label365:
	li $t0, 0
	sw $t0, -4184($fp)
	lw $t0, -1156($fp)
	sw $t0, -4188($fp)
	lw $t0, -376($fp)
	sw $t0, -4192($fp)
	lw $t1, -4188($fp)
	lw $t2, -4192($fp)
	beq $t1, $t2, label368
	j label370
label370:
	lw $t0, -304($fp)
	sw $t0, -4196($fp)
	lw $t1, -4196($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -4184($fp)
label369:
	lw $t0, -832($fp)
	sw $t0, -4200($fp)
	li $t0, 0
	lw $t1, -4200($fp)
	sub $t0, $t0, $t1
	sw $t0, -4204($fp)
	li $t0, 44236
	sw $t0, -4208($fp)
	li $t0, 42882
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -4216($fp)
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4216($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4220($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -4220($fp)
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, 0($t0)
	sw $t1, -4232($fp)
	lw $t0, -3768($fp)
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -4240($fp)
	li $t0, 56710
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -4248($fp)
	addi $sp, $sp, -4
	lw $t0, -4240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4248($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4252($fp)
	addi $sp, $sp, 12
	lw $t0, -328($fp)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	li $t0, 0
	sw $t0, -4268($fp)
	lw $t0, -148($fp)
	sw $t0, -4272($fp)
	lw $t1, -4272($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label373
label373:
	li $t0, 1
	sw $t0, -4268($fp)
label374:
	li $t0, 23352
	sw $t0, -4276($fp)
	lw $t1, -4268($fp)
	lw $t2, -4276($fp)
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -4264($fp)
label372:
	addi $sp, $sp, -4
	lw $t0, -4260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4264($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4280($fp)
	addi $sp, $sp, 12
	lw $t0, -4252($fp)
	lw $t1, -4280($fp)
	sub $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t1, -4232($fp)
	lw $t2, -4284($fp)
	bge $t1, $t2, label362
	j label363
label362:
	addi $t0, $fp, -3700
	sw $t0, -4288($fp)
	li $t0, 0
	sw $t0, -4292($fp)
	addi $t0, $fp, -68
	sw $t0, -4296($fp)
	lw $t0, -3804($fp)
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
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label378:
	li $t0, 1
	sw $t0, -4292($fp)
label379:
	li $t0, 4
	lw $t1, -4292($fp)
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	lw $t1, -4288($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	lw $t1, 0($t0)
	sw $t1, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
	addi $t0, $fp, -3660
	sw $t0, -4328($fp)
	li $t0, 51758
	sw $t0, -4332($fp)
	lw $t0, -304($fp)
	sw $t0, -4336($fp)
	lw $t0, -4332($fp)
	lw $t1, -4336($fp)
	sub $t0, $t0, $t1
	sw $t0, -4340($fp)
	li $t0, 37828
	sw $t0, -4344($fp)
	lw $t0, -4340($fp)
	lw $t1, -4344($fp)
	add $t0, $t0, $t1
	sw $t0, -4348($fp)
	li $t0, 49862
	sw $t0, -4352($fp)
	li $t0, 27150
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4360($fp)
	lw $t0, -4348($fp)
	lw $t1, -4360($fp)
	sub $t0, $t0, $t1
	sw $t0, -4364($fp)
	li $t0, 4
	lw $t1, -4364($fp)
	mul $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	lw $t1, -4328($fp)
	add $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	lw $t1, 0($t0)
	sw $t1, -4376($fp)
	j label377
label376:
	li $t0, 0
	sw $t0, -4380($fp)
	lw $t0, -520($fp)
	sw $t0, -4384($fp)
	lw $t0, -3756($fp)
	sw $t0, -4388($fp)
	lw $t0, -304($fp)
	sw $t0, -4392($fp)
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4396($fp)
	li $t0, 25708
	sw $t0, -4400($fp)
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	sub $t0, $t0, $t1
	sw $t0, -4404($fp)
	li $t0, 0
	sw $t0, -4408($fp)
	li $t0, 20804
	sw $t0, -4412($fp)
	li $t0, 23410
	sw $t0, -4416($fp)
	lw $t1, -4412($fp)
	lw $t2, -4416($fp)
	bgt $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -4408($fp)
label384:
	addi $sp, $sp, -4
	lw $t0, -4404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4420($fp)
	addi $sp, $sp, 12
	lw $t1, -4384($fp)
	lw $t2, -4420($fp)
	beq $t1, $t2, label380
	j label382
label382:
	li $t0, 31765
	sw $t0, -4424($fp)
	lw $t1, -4424($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -4380($fp)
label381:
label377:
	j label361
label363:
	li $t0, 50543
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	sw $t0, -4452($fp)
	li $t0, 778
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	sw $t0, -4464($fp)
	li $t0, 50078
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	sw $t0, -4476($fp)
	li $t0, 35369
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	sw $t0, -4488($fp)
	li $t0, 55883
	sw $t0, -4492($fp)
	addi $t0, $fp, -4440
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4496($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4492($fp)
	lw $t1, -4508($fp)
	sw $t0, 0($t1)
	lw $t0, -4508($fp)
	lw $t1, 0($t0)
	sw $t1, -4512($fp)
	li $t0, 35396
	sw $t0, -4516($fp)
	addi $t0, $fp, -4440
	sw $t0, -4520($fp)
	li $t0, 1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4520($fp)
	lw $t1, -4528($fp)
	add $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4516($fp)
	lw $t1, -4532($fp)
	sw $t0, 0($t1)
	lw $t0, -4532($fp)
	lw $t1, 0($t0)
	sw $t1, -4536($fp)
	li $t0, 38483
	sw $t0, -4540($fp)
	addi $t0, $fp, -4440
	sw $t0, -4544($fp)
	li $t0, 2
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4544($fp)
	lw $t1, -4552($fp)
	add $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4540($fp)
	lw $t1, -4556($fp)
	sw $t0, 0($t1)
	lw $t0, -4556($fp)
	lw $t1, 0($t0)
	sw $t1, -4560($fp)
	li $t0, 51414
	sw $t0, -4564($fp)
	addi $t0, $fp, -4440
	sw $t0, -4568($fp)
	li $t0, 3
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4568($fp)
	lw $t1, -4576($fp)
	add $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4564($fp)
	lw $t1, -4580($fp)
	sw $t0, 0($t1)
	lw $t0, -4580($fp)
	lw $t1, 0($t0)
	sw $t1, -4584($fp)
label385:
	lw $t0, -4484($fp)
	sw $t0, -4588($fp)
	lw $t1, -4588($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label387
label386:
	lw $t0, -4448($fp)
	sw $t0, -4592($fp)
	jal f6
	sw $v0, -4596($fp)
	addi $sp, $sp, 4
	lw $t0, -4592($fp)
	lw $t1, -4596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4600($fp)
	lw $ra, -4($fp)
	lw $v0, -4600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label385
label387:
	li $t0, 0
	sw $t0, -4604($fp)
	lw $t0, -244($fp)
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label390
label390:
	lw $t0, -544($fp)
	sw $t0, -4612($fp)
	lw $t0, -412($fp)
	sw $t0, -4616($fp)
	lw $t0, -412($fp)
	sw $t0, -4620($fp)
	lw $t0, -4616($fp)
	lw $t1, -4620($fp)
	sub $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t1, -4612($fp)
	lw $t2, -4624($fp)
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -4604($fp)
label389:
	li $t0, 0
	sw $t0, -4628($fp)
	li $t0, 21400
	sw $t0, -4632($fp)
	lw $t0, -244($fp)
	sw $t0, -4636($fp)
	li $t0, 0
	lw $t1, -4636($fp)
	sub $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4632($fp)
	lw $t1, -4640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4644($fp)
	li $t0, 48482
	sw $t0, -4648($fp)
	addi $t0, $fp, -4440
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
	lw $t0, -4648($fp)
	lw $t1, -4668($fp)
	sub $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t1, -4644($fp)
	lw $t2, -4672($fp)
	ble $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -4628($fp)
label392:
	lw $t0, -3732($fp)
	sw $t0, -4676($fp)
	li $t0, 0
	sw $t0, -4680($fp)
	li $t0, 44295
	sw $t0, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label397
label399:
	li $t0, 13477
	sw $t0, -4688($fp)
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label397
label398:
	li $t0, 61796
	sw $t0, -4692($fp)
	lw $t1, -4692($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -4680($fp)
label397:
	li $t0, 0
	sw $t0, -4696($fp)
	lw $t0, -4472($fp)
	sw $t0, -4700($fp)
	li $t0, 0
	lw $t1, -4700($fp)
	sub $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -328($fp)
	sw $t0, -4708($fp)
	lw $t1, -4704($fp)
	lw $t2, -4708($fp)
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -4696($fp)
label401:
	li $t0, 0
	sw $t0, -4712($fp)
	li $t0, 0
	sw $t0, -4716($fp)
	li $t0, 12354
	sw $t0, -4720($fp)
	lw $t0, -148($fp)
	sw $t0, -4724($fp)
	lw $t1, -4720($fp)
	lw $t2, -4724($fp)
	beq $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -4716($fp)
label405:
	lw $t0, -364($fp)
	sw $t0, -4728($fp)
	lw $t1, -4716($fp)
	lw $t2, -4728($fp)
	beq $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -4712($fp)
label403:
	lw $t0, -1120($fp)
	sw $t0, -4732($fp)
	lw $t0, -4460($fp)
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -4740($fp)
	li $t0, 0
	sw $t0, -4744($fp)
	lw $t0, -304($fp)
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label406:
	li $t0, 1
	sw $t0, -4744($fp)
label407:
	li $t0, 0
	lw $t1, -4744($fp)
	sub $t0, $t0, $t1
	sw $t0, -4752($fp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4752($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4756($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4756($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4760($fp)
	addi $sp, $sp, 24
	lw $t0, -4676($fp)
	lw $t1, -4760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4764($fp)
	lw $t1, -4764($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	lw $t0, -3792($fp)
	sw $t0, -4768($fp)
	lw $ra, -4($fp)
	lw $v0, -4768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label395
label394:
label408:
	lw $t0, -844($fp)
	sw $t0, -4772($fp)
	li $t0, 0
	sw $t0, -4776($fp)
	li $t0, 54541
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -4776($fp)
label412:
	li $t0, 0
	lw $t1, -4776($fp)
	sub $t0, $t0, $t1
	sw $t0, -4784($fp)
	li $t0, 0
	lw $t1, -4784($fp)
	sub $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t1, -4772($fp)
	lw $t2, -4788($fp)
	blt $t1, $t2, label409
	j label410
label409:
	lw $t0, -1348($fp)
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -4796($fp)
	j label408
label410:
label395:
	li $t0, 30045
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	sw $t0, -4808($fp)
	li $t0, 65390
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	sw $t0, -4820($fp)
	li $t0, 31887
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label413
label413:
	jal f6
	sw $v0, -4828($fp)
	addi $sp, $sp, 4
	j label415
label414:
	addi $t0, $fp, -40
	sw $t0, -4832($fp)
	li $t0, 0
	sw $t0, -4836($fp)
	jal f6
	sw $v0, -4840($fp)
	addi $sp, $sp, 4
	lw $t0, -304($fp)
	sw $t0, -4844($fp)
	lw $t0, -4840($fp)
	lw $t1, -4844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4848($fp)
	lw $t0, -652($fp)
	sw $t0, -4852($fp)
	lw $t1, -4848($fp)
	lw $t2, -4852($fp)
	bge $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -4836($fp)
label417:
	li $t0, 4
	lw $t1, -4836($fp)
	mul $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	lw $t1, -4832($fp)
	add $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, 0($t0)
	sw $t1, -4864($fp)
label415:
	lw $t0, -4804($fp)
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4816($fp)
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f6
	sw $v0, -4876($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -4876($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label418:
	addi $t0, $fp, -68
	sw $t0, -4880($fp)
	lw $t0, -148($fp)
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
	li $t0, 56564
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4904($fp)
	addi $t0, $fp, -8
	sw $t0, -4908($fp)
	lw $t0, -3816($fp)
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
	li $t0, 8746
	sw $t0, -4928($fp)
	lw $t0, -4924($fp)
	lw $t1, -4928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4932($fp)
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4936($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -104
	sw $t0, -4940($fp)
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 55240
	sw $t0, -4948($fp)
	lw $t1, -4948($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label423
label423:
	li $t0, 60504
	sw $t0, -4952($fp)
	lw $t1, -4952($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -4944($fp)
label422:
	li $t0, 4
	lw $t1, -4944($fp)
	mul $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	lw $t1, 0($t0)
	sw $t1, -4964($fp)
	lw $t1, -4936($fp)
	lw $t2, -4964($fp)
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 0
	sw $t0, -4968($fp)
	lw $t0, -3732($fp)
	sw $t0, -4972($fp)
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label427
label427:
	li $t0, 39247
	sw $t0, -4976($fp)
	li $t0, 0
	sw $t0, -4980($fp)
	lw $t0, -652($fp)
	sw $t0, -4984($fp)
	li $t0, 24831
	sw $t0, -4988($fp)
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	mul $t0, $t0, $t1
	sw $t0, -4992($fp)
	li $t0, 57229
	sw $t0, -4996($fp)
	lw $t0, -4992($fp)
	lw $t1, -4996($fp)
	mul $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -148($fp)
	sw $t0, -5004($fp)
	li $t0, 56301
	sw $t0, -5008($fp)
	lw $t0, -5004($fp)
	lw $t1, -5008($fp)
	sub $t0, $t0, $t1
	sw $t0, -5012($fp)
	li $t0, 35829
	sw $t0, -5016($fp)
	addi $sp, $sp, -4
	lw $t0, -5012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5016($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5020($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5024($fp)
	addi $sp, $sp, 12
	lw $t0, -1144($fp)
	sw $t0, -5028($fp)
	li $t0, 0
	sw $t0, -5032($fp)
	lw $t0, -1120($fp)
	sw $t0, -5036($fp)
	lw $t0, -412($fp)
	sw $t0, -5040($fp)
	lw $t1, -5036($fp)
	lw $t2, -5040($fp)
	beq $t1, $t2, label433
	j label432
label433:
	li $t0, 38953
	sw $t0, -5044($fp)
	lw $t1, -5044($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -5032($fp)
label432:
	li $t0, 0
	sw $t0, -5048($fp)
	addi $t0, $fp, -104
	sw $t0, -5052($fp)
	li $t0, 5
	sw $t0, -5056($fp)
	li $t0, 4
	lw $t1, -5056($fp)
	mul $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	lw $t1, -5052($fp)
	add $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	lw $t1, 0($t0)
	sw $t1, -5068($fp)
	lw $t1, -5068($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label436:
	li $t0, 17817
	sw $t0, -5072($fp)
	lw $t1, -5072($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -5048($fp)
label435:
	li $t0, 0
	sw $t0, -5076($fp)
	li $t0, 0
	sw $t0, -5080($fp)
	addi $t0, $fp, -104
	sw $t0, -5084($fp)
	li $t0, 2
	sw $t0, -5088($fp)
	li $t0, 4
	lw $t1, -5088($fp)
	mul $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	lw $t1, -5084($fp)
	add $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	lw $t1, 0($t0)
	sw $t1, -5100($fp)
	lw $t1, -5100($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label441:
	li $t0, 47984
	sw $t0, -5104($fp)
	lw $t1, -5104($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -5080($fp)
label440:
	lw $t0, -4484($fp)
	sw $t0, -5108($fp)
	addi $sp, $sp, -4
	lw $t0, -5080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5112($fp)
	addi $sp, $sp, 12
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -5076($fp)
label438:
	lw $t0, -316($fp)
	sw $t0, -5116($fp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5116($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5120($fp)
	addi $sp, $sp, 24
	li $t0, 62977
	sw $t0, -5124($fp)
	lw $t0, -304($fp)
	sw $t0, -5128($fp)
	lw $t0, -5124($fp)
	lw $t1, -5128($fp)
	mul $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -1168($fp)
	sw $t0, -5136($fp)
	lw $t0, -5132($fp)
	lw $t1, -5136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5140($fp)
	li $t0, 22119
	sw $t0, -5144($fp)
	li $t0, 49660
	sw $t0, -5148($fp)
	lw $t0, -5144($fp)
	lw $t1, -5148($fp)
	mul $t0, $t0, $t1
	sw $t0, -5152($fp)
	li $t0, 0
	lw $t1, -5152($fp)
	sub $t0, $t0, $t1
	sw $t0, -5156($fp)
	li $t0, 39566
	sw $t0, -5160($fp)
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5160($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5164($fp)
	addi $sp, $sp, 24
	lw $t1, -5164($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label430
label430:
	lw $t0, -268($fp)
	sw $t0, -5168($fp)
	lw $t1, -5168($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -4980($fp)
label429:
	lw $t0, -4804($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -5176($fp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5176($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5180($fp)
	addi $sp, $sp, 12
	lw $t0, -3792($fp)
	sw $t0, -5184($fp)
	li $t0, 0
	lw $t1, -5184($fp)
	sub $t0, $t0, $t1
	sw $t0, -5188($fp)
	addi $t0, $fp, -128
	sw $t0, -5192($fp)
	lw $t0, -4816($fp)
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
	li $t0, 28856
	sw $t0, -5212($fp)
	li $t0, 0
	lw $t1, -5212($fp)
	sub $t0, $t0, $t1
	sw $t0, -5216($fp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5216($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5220($fp)
	addi $sp, $sp, 24
	lw $t1, -5220($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label426
label426:
	li $t0, 30691
	sw $t0, -5224($fp)
	li $t0, 0
	lw $t1, -5224($fp)
	sub $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t1, -5228($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -4968($fp)
label425:
	j label418
label420:
	lw $t0, -4804($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4816($fp)
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5240($fp)
	li $t0, 3
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
	lw $ra, -4($fp)
	lw $v0, -5256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -5260($fp)
	lw $t0, -808($fp)
	sw $t0, -5264($fp)
	lw $t1, -5264($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label442
label442:
	li $t0, 1
	sw $t0, -5260($fp)
label443:
	addi $t0, $fp, -104
	sw $t0, -5268($fp)
	li $t0, 5
	sw $t0, -5272($fp)
	li $t0, 4
	lw $t1, -5272($fp)
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, -5268($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	lw $t1, 0($t0)
	sw $t1, -5284($fp)
	li $t0, 0
	sw $t0, -5288($fp)
	lw $t0, -3792($fp)
	sw $t0, -5292($fp)
	li $t0, 0
	lw $t1, -5292($fp)
	sub $t0, $t0, $t1
	sw $t0, -5296($fp)
	li $t0, 9450
	sw $t0, -5300($fp)
	lw $t1, -5296($fp)
	lw $t2, -5300($fp)
	ble $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -5288($fp)
label449:
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5288($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5304($fp)
	addi $sp, $sp, 12
	lw $t1, -5304($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label447
label447:
	lw $t0, -3720($fp)
	sw $t0, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
label450:
	li $t0, 0
	sw $t0, -5312($fp)
	li $t0, 63991
	sw $t0, -5316($fp)
	lw $t1, -5316($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label454
label454:
	li $t0, 1
	sw $t0, -5312($fp)
label455:
	li $t0, 44625
	sw $t0, -5320($fp)
	li $t0, 0
	lw $t1, -5320($fp)
	sub $t0, $t0, $t1
	sw $t0, -5324($fp)
	li $t0, 0
	lw $t1, -5324($fp)
	sub $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5312($fp)
	lw $t1, -5328($fp)
	sub $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t1, -5332($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label453:
	li $t0, 0
	sw $t0, -5336($fp)
	li $t0, 47715
	sw $t0, -5340($fp)
	lw $t0, -4460($fp)
	sw $t0, -5344($fp)
	lw $t1, -5340($fp)
	lw $t2, -5344($fp)
	bgt $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -5336($fp)
label457:
	jal f6
	sw $v0, -5348($fp)
	addi $sp, $sp, 4
	lw $t1, -5336($fp)
	lw $t2, -5348($fp)
	bgt $t1, $t2, label451
	j label452
label451:
	li $t0, 30343
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	sw $t0, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	li $t0, 0
	sw $t0, -5368($fp)
	li $t0, 0
	sw $t0, -5372($fp)
	addi $t0, $fp, -68
	sw $t0, -5376($fp)
	li $t0, 0
	sw $t0, -5380($fp)
	li $t0, 4
	lw $t1, -5380($fp)
	mul $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, 0($t0)
	sw $t1, -5392($fp)
	lw $t1, -5392($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -5372($fp)
label463:
	addi $t0, $fp, -8
	sw $t0, -5396($fp)
	lw $t0, -544($fp)
	sw $t0, -5400($fp)
	li $t0, 4
	lw $t1, -5400($fp)
	mul $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	lw $t1, -5396($fp)
	add $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	lw $t1, 0($t0)
	sw $t1, -5412($fp)
	li $t0, 20047
	sw $t0, -5416($fp)
	lw $t0, -5412($fp)
	lw $t1, -5416($fp)
	sub $t0, $t0, $t1
	sw $t0, -5420($fp)
	lw $t1, -5372($fp)
	lw $t2, -5420($fp)
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -5368($fp)
label461:
	li $t0, 0
	sw $t0, -5424($fp)
	li $t0, 51724
	sw $t0, -5428($fp)
	li $t0, 0
	sw $t0, -5432($fp)
	li $t0, 59613
	sw $t0, -5436($fp)
	li $t0, 4922
	sw $t0, -5440($fp)
	lw $t1, -5436($fp)
	lw $t2, -5440($fp)
	bgt $t1, $t2, label468
	j label467
label468:
	lw $t0, -412($fp)
	sw $t0, -5444($fp)
	lw $t1, -5444($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -5432($fp)
label467:
	li $t0, 0
	sw $t0, -5448($fp)
	li $t0, 48339
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label471
label471:
	li $t0, 2063
	sw $t0, -5456($fp)
	lw $t1, -5456($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -5448($fp)
label470:
	lw $t0, -328($fp)
	sw $t0, -5460($fp)
	lw $t0, -820($fp)
	sw $t0, -5464($fp)
	lw $t0, -5460($fp)
	lw $t1, -5464($fp)
	mul $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -1156($fp)
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -5476($fp)
	addi $sp, $sp, -4
	lw $t0, -5428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5480($fp)
	addi $sp, $sp, 24
	lw $t0, -1192($fp)
	sw $t0, -5484($fp)
	lw $t0, -5480($fp)
	lw $t1, -5484($fp)
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	li $t0, 0
	sw $t0, -5492($fp)
	li $t0, 57054
	sw $t0, -5496($fp)
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -5492($fp)
label473:
	lw $t1, -5488($fp)
	lw $t2, -5492($fp)
	blt $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -5424($fp)
label465:
	lw $t1, -5368($fp)
	lw $t2, -5424($fp)
	beq $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -5364($fp)
label459:
	lw $t0, -3780($fp)
	sw $t0, -5500($fp)
	li $t0, 0
	sw $t0, -5504($fp)
	li $t0, 0
	sw $t0, -5508($fp)
	li $t0, 0
	sw $t0, -5512($fp)
	lw $t0, -5356($fp)
	sw $t0, -5516($fp)
	li $t0, 35819
	sw $t0, -5520($fp)
	lw $t1, -5516($fp)
	lw $t2, -5520($fp)
	ble $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -5512($fp)
label479:
	lw $t0, -136($fp)
	sw $t0, -5524($fp)
	lw $t1, -5512($fp)
	lw $t2, -5524($fp)
	beq $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -5508($fp)
label477:
	li $t0, 0
	sw $t0, -5528($fp)
	li $t0, 2078
	sw $t0, -5532($fp)
	li $t0, 39502
	sw $t0, -5536($fp)
	lw $t1, -5532($fp)
	lw $t2, -5536($fp)
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -5528($fp)
label481:
	addi $sp, $sp, -4
	lw $t0, -5508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5540($fp)
	addi $sp, $sp, 12
	lw $t0, -364($fp)
	sw $t0, -5544($fp)
	lw $t1, -5540($fp)
	lw $t2, -5544($fp)
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -5504($fp)
label475:
	li $t0, 52749
	sw $t0, -5548($fp)
	addi $sp, $sp, -4
	lw $t0, -5504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5548($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5552($fp)
	addi $sp, $sp, 12
	lw $t0, -5552($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -5556($fp)
	li $t0, 0
	sw $t0, -5560($fp)
	addi $t0, $fp, -40
	sw $t0, -5564($fp)
	li $t0, 0
	sw $t0, -5568($fp)
	li $t0, 4
	lw $t1, -5568($fp)
	mul $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	lw $t1, -5564($fp)
	add $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	lw $t1, 0($t0)
	sw $t1, -5580($fp)
	li $t0, 0
	lw $t1, -5580($fp)
	sub $t0, $t0, $t1
	sw $t0, -5584($fp)
	li $t0, 0
	lw $t1, -5584($fp)
	sub $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t1, -5588($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -5560($fp)
label483:
	j label450
label452:
label445:
	li $t0, 9236
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	sw $t0, -5600($fp)
	jal f6
	sw $v0, -5604($fp)
	addi $sp, $sp, 4
	lw $t0, -5604($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -5608($fp)
	lw $t1, -5608($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label485
label484:
	li $t0, 38339
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	sw $t0, -5620($fp)
	lw $t0, -5616($fp)
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5628($fp)
	addi $t0, $fp, -64
	sw $t0, -5632($fp)
	lw $t0, -544($fp)
	sw $t0, -5636($fp)
	li $t0, 4
	lw $t1, -5636($fp)
	mul $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, -5632($fp)
	add $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	lw $t1, 0($t0)
	sw $t1, -5648($fp)
	li $t0, 0
	sw $t0, -5652($fp)
	li $t0, 31134
	sw $t0, -5656($fp)
	li $t0, 0
	sw $t0, -5660($fp)
	li $t0, 21796
	sw $t0, -5664($fp)
	lw $t1, -5664($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label493
label494:
	lw $t0, -1180($fp)
	sw $t0, -5668($fp)
	lw $t1, -5668($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label493
label493:
	li $t0, 64758
	sw $t0, -5672($fp)
	lw $t1, -5672($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -5660($fp)
label492:
	li $t0, 34067
	sw $t0, -5676($fp)
	lw $t0, -328($fp)
	sw $t0, -5680($fp)
	lw $t0, -5676($fp)
	lw $t1, -5680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5684($fp)
	li $t0, 30032
	sw $t0, -5688($fp)
	lw $t0, -5684($fp)
	lw $t1, -5688($fp)
	mul $t0, $t0, $t1
	sw $t0, -5692($fp)
	li $t0, 0
	sw $t0, -5696($fp)
	lw $t0, -3732($fp)
	sw $t0, -5700($fp)
	lw $t0, -136($fp)
	sw $t0, -5704($fp)
	lw $t0, -5700($fp)
	lw $t1, -5704($fp)
	mul $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t1, -5708($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label496
label497:
	lw $t0, -148($fp)
	sw $t0, -5712($fp)
	lw $t1, -5712($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -5696($fp)
label496:
	li $t0, 0
	sw $t0, -5716($fp)
	lw $t0, -3732($fp)
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label498
label498:
	li $t0, 1
	sw $t0, -5716($fp)
label499:
	li $t0, 48085
	sw $t0, -5724($fp)
	lw $t0, -5716($fp)
	lw $t1, -5724($fp)
	sub $t0, $t0, $t1
	sw $t0, -5728($fp)
	addi $sp, $sp, -4
	lw $t0, -5656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5728($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5732($fp)
	addi $sp, $sp, 24
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label489
label489:
	li $t0, 1
	sw $t0, -5652($fp)
label490:
	lw $t0, -5648($fp)
	lw $t1, -5652($fp)
	mul $t0, $t0, $t1
	sw $t0, -5736($fp)
	li $t0, 0
	lw $t1, -5736($fp)
	sub $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t1, -5740($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label487
label487:
	li $t0, 1
	sw $t0, -5628($fp)
label488:
	lw $ra, -4($fp)
	lw $v0, -5628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 7861
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	sw $t0, -5768($fp)
	li $t0, 8673
	sw $t0, -5772($fp)
	addi $t0, $fp, -5756
	sw $t0, -5776($fp)
	li $t0, 0
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5776($fp)
	lw $t1, -5784($fp)
	add $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5772($fp)
	lw $t1, -5788($fp)
	sw $t0, 0($t1)
	lw $t0, -5788($fp)
	lw $t1, 0($t0)
	sw $t1, -5792($fp)
	li $t0, 45714
	sw $t0, -5796($fp)
	addi $t0, $fp, -5756
	sw $t0, -5800($fp)
	li $t0, 1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5800($fp)
	lw $t1, -5808($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5796($fp)
	lw $t1, -5812($fp)
	sw $t0, 0($t1)
	lw $t0, -5812($fp)
	lw $t1, 0($t0)
	sw $t1, -5816($fp)
	li $t0, 55722
	sw $t0, -5820($fp)
	addi $t0, $fp, -5756
	sw $t0, -5824($fp)
	li $t0, 2
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
	li $t0, 7128
	sw $t0, -5844($fp)
	addi $t0, $fp, -5756
	sw $t0, -5848($fp)
	li $t0, 3
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
	lw $t0, -292($fp)
	sw $t0, -5868($fp)
	addi $t0, $fp, -104
	sw $t0, -5872($fp)
	lw $t0, -5764($fp)
	sw $t0, -5876($fp)
	li $t0, 24803
	sw $t0, -5880($fp)
	lw $t0, -5876($fp)
	lw $t1, -5880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5884($fp)
	li $t0, 37902
	sw $t0, -5888($fp)
	lw $t0, -5884($fp)
	lw $t1, -5888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5892($fp)
	li $t0, 0
	lw $t1, -5892($fp)
	sub $t0, $t0, $t1
	sw $t0, -5896($fp)
	li $t0, 4
	lw $t1, -5896($fp)
	mul $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	lw $t1, -5872($fp)
	add $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, 0($t0)
	sw $t1, -5908($fp)
	li $t0, 0
	sw $t0, -5912($fp)
	lw $t0, -1168($fp)
	sw $t0, -5916($fp)
	li $t0, 0
	sw $t0, -5920($fp)
	lw $t0, -352($fp)
	sw $t0, -5924($fp)
	lw $t1, -5924($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label504:
	li $t0, 1
	sw $t0, -5920($fp)
label505:
	lw $t0, -5916($fp)
	lw $t1, -5920($fp)
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t1, -5928($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label502
label503:
	addi $t0, $fp, -40
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
	li $t0, 11109
	sw $t0, -5952($fp)
	lw $t0, -5948($fp)
	lw $t1, -5952($fp)
	sub $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t1, -5956($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label502
label502:
	addi $t0, $fp, -5756
	sw $t0, -5960($fp)
	li $t0, 0
	sw $t0, -5964($fp)
	li $t0, 57518
	sw $t0, -5968($fp)
	lw $t0, -832($fp)
	sw $t0, -5972($fp)
	lw $t1, -5968($fp)
	lw $t2, -5972($fp)
	bge $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -5964($fp)
label507:
	li $t0, 4
	lw $t1, -5964($fp)
	mul $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	lw $t1, -5960($fp)
	add $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	lw $t1, 0($t0)
	sw $t1, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -5912($fp)
label501:
	li $t0, 60977
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	sw $t0, -5996($fp)
	lw $t0, -244($fp)
	sw $t0, -6000($fp)
	li $t0, 13173
	sw $t0, -6004($fp)
	lw $t0, -6000($fp)
	lw $t1, -6004($fp)
	mul $t0, $t0, $t1
	sw $t0, -6008($fp)
	li $t0, 0
	sw $t0, -6012($fp)
	addi $t0, $fp, -68
	sw $t0, -6016($fp)
	li $t0, 0
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
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label510
label510:
	lw $t0, -892($fp)
	sw $t0, -6036($fp)
	lw $t1, -6036($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -6012($fp)
label509:
	lw $t0, -6012($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -6040($fp)
	li $t0, 0
	sw $t0, -6044($fp)
	lw $t0, -520($fp)
	sw $t0, -6048($fp)
	li $t0, 0
	sw $t0, -6052($fp)
	li $t0, 64897
	sw $t0, -6056($fp)
	lw $t1, -6056($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -6052($fp)
label514:
	lw $t0, -6048($fp)
	lw $t1, -6052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6060($fp)
	lw $t0, -5992($fp)
	sw $t0, -6064($fp)
	lw $t1, -6060($fp)
	lw $t2, -6064($fp)
	bge $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -6044($fp)
label512:
label515:
	li $t0, 0
	sw $t0, -6068($fp)
	li $t0, 43114
	sw $t0, -6072($fp)
	lw $t1, -6072($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label518
label518:
	li $t0, 1
	sw $t0, -6068($fp)
label519:
	li $t0, 0
	sw $t0, -6076($fp)
	li $t0, 3949
	sw $t0, -6080($fp)
	lw $t1, -6080($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label520
label520:
	li $t0, 1
	sw $t0, -6076($fp)
label521:
	lw $t0, -5616($fp)
	sw $t0, -6084($fp)
	lw $t0, -6076($fp)
	lw $t1, -6084($fp)
	mul $t0, $t0, $t1
	sw $t0, -6088($fp)
	li $t0, 23396
	sw $t0, -6092($fp)
	li $t0, 0
	lw $t1, -6092($fp)
	sub $t0, $t0, $t1
	sw $t0, -6096($fp)
	li $t0, 0
	sw $t0, -6100($fp)
	lw $t0, -3792($fp)
	sw $t0, -6104($fp)
	li $t0, 0
	sw $t0, -6108($fp)
	lw $t0, -3708($fp)
	sw $t0, -6112($fp)
	lw $t1, -6112($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label526
label526:
	li $t0, 1439
	sw $t0, -6116($fp)
	lw $t1, -6116($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -6108($fp)
label525:
	addi $sp, $sp, -4
	lw $t0, -6104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6108($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6120($fp)
	addi $sp, $sp, 12
	li $t0, 17081
	sw $t0, -6124($fp)
	lw $t1, -6120($fp)
	lw $t2, -6124($fp)
	beq $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -6100($fp)
label523:
	li $t0, 53113
	sw $t0, -6128($fp)
	li $t0, 0
	lw $t1, -6128($fp)
	sub $t0, $t0, $t1
	sw $t0, -6132($fp)
	li $t0, 0
	sw $t0, -6136($fp)
	lw $t0, -136($fp)
	sw $t0, -6140($fp)
	lw $t1, -6140($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label527
label527:
	li $t0, 1
	sw $t0, -6136($fp)
label528:
	li $t0, 0
	lw $t1, -6136($fp)
	sub $t0, $t0, $t1
	sw $t0, -6144($fp)
	addi $sp, $sp, -4
	lw $t0, -6088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6144($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6148($fp)
	addi $sp, $sp, 24
	lw $t0, -6068($fp)
	lw $t1, -6148($fp)
	add $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -6156($fp)
	lw $t1, -6156($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 8865
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	sw $t0, -6168($fp)
	li $t0, 0
	sw $t0, -6172($fp)
	jal f6
	sw $v0, -6176($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -6180($fp)
	addi $t0, $fp, -24
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
	lw $t1, -6200($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label531
label531:
	li $t0, 1
	sw $t0, -6180($fp)
label532:
	lw $t1, -6176($fp)
	lw $t2, -6180($fp)
	bge $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -6172($fp)
label530:
	li $t0, 0
	sw $t0, -6204($fp)
	li $t0, 0
	sw $t0, -6208($fp)
	li $t0, 6785
	sw $t0, -6212($fp)
	li $t0, 0
	lw $t1, -6212($fp)
	sub $t0, $t0, $t1
	sw $t0, -6216($fp)
	li $t0, 13210
	sw $t0, -6220($fp)
	lw $t1, -6216($fp)
	lw $t2, -6220($fp)
	bge $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -6208($fp)
label537:
	li $t0, 0
	sw $t0, -6224($fp)
	li $t0, 56950
	sw $t0, -6228($fp)
	li $t0, 0
	lw $t1, -6228($fp)
	sub $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t1, -6232($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label540:
	li $t0, 1163
	sw $t0, -6236($fp)
	lw $t1, -6236($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -6224($fp)
label539:
	addi $sp, $sp, -4
	lw $t0, -6208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6224($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6240($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -6240($fp)
	sub $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t1, -6244($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label535
label535:
	lw $t0, -3792($fp)
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label534
label541:
	lw $t0, -6164($fp)
	sw $t0, -6252($fp)
	lw $t1, -6252($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -6204($fp)
label534:
	lw $t0, -6204($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -6256($fp)
	j label515
label517:
	j label486
label485:
	li $t0, 16187
	sw $t0, -6260($fp)
	lw $t0, -148($fp)
	sw $t0, -6264($fp)
	lw $t0, -6260($fp)
	lw $t1, -6264($fp)
	mul $t0, $t0, $t1
	sw $t0, -6268($fp)
	li $t0, 0
	sw $t0, -6272($fp)
	li $t0, 0
	sw $t0, -6276($fp)
	li $t0, 18098
	sw $t0, -6280($fp)
	li $t0, 11257
	sw $t0, -6284($fp)
	lw $t1, -6280($fp)
	lw $t2, -6284($fp)
	bge $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -6276($fp)
label548:
	lw $t0, -340($fp)
	sw $t0, -6288($fp)
	lw $t1, -6276($fp)
	lw $t2, -6288($fp)
	bgt $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -6272($fp)
label546:
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6272($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6292($fp)
	addi $sp, $sp, 12
	li $t0, 9059
	sw $t0, -6296($fp)
	li $t0, 0
	sw $t0, -6300($fp)
	li $t0, 21071
	sw $t0, -6304($fp)
	li $t0, 0
	lw $t1, -6304($fp)
	sub $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t1, -6308($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label550
label551:
	lw $t0, -3816($fp)
	sw $t0, -6312($fp)
	lw $t1, -6312($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -6300($fp)
label550:
	li $t0, 0
	sw $t0, -6316($fp)
	addi $t0, $fp, -8
	sw $t0, -6320($fp)
	lw $t0, -5596($fp)
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
	lw $t1, -6336($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label552:
	li $t0, 1
	sw $t0, -6316($fp)
label553:
	li $t0, 386
	sw $t0, -6340($fp)
	lw $t0, -1132($fp)
	sw $t0, -6344($fp)
	lw $t0, -6340($fp)
	lw $t1, -6344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6348($fp)
	li $t0, 37920
	sw $t0, -6352($fp)
	lw $t0, -6348($fp)
	lw $t1, -6352($fp)
	add $t0, $t0, $t1
	sw $t0, -6356($fp)
	addi $sp, $sp, -4
	lw $t0, -6292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6356($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6360($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -3660
	sw $t0, -6364($fp)
	li $t0, 3
	sw $t0, -6368($fp)
	li $t0, 4
	lw $t1, -6368($fp)
	mul $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	lw $t1, -6364($fp)
	add $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	lw $t1, 0($t0)
	sw $t1, -6380($fp)
	li $t0, 0
	lw $t1, -6380($fp)
	sub $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6360($fp)
	lw $t1, -6384($fp)
	mul $t0, $t0, $t1
	sw $t0, -6388($fp)
	li $t0, 0
	sw $t0, -6392($fp)
	li $t0, 53659
	sw $t0, -6396($fp)
	lw $t1, -6396($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label554
label554:
	li $t0, 1
	sw $t0, -6392($fp)
label555:
	li $t0, 0
	lw $t1, -6392($fp)
	sub $t0, $t0, $t1
	sw $t0, -6400($fp)
	li $t0, 55539
	sw $t0, -6404($fp)
	lw $t0, -6400($fp)
	lw $t1, -6404($fp)
	add $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t1, -6388($fp)
	lw $t2, -6408($fp)
	ble $t1, $t2, label542
	j label543
label542:
	lw $t0, -388($fp)
	sw $t0, -6412($fp)
	li $t0, 0
	lw $t1, -6412($fp)
	sub $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $ra, -4($fp)
	lw $v0, -6416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label544
label543:
	lw $t0, -1348($fp)
	sw $t0, -6420($fp)
	li $t0, 0
	lw $t1, -6420($fp)
	sub $t0, $t0, $t1
	sw $t0, -6424($fp)
label544:
label486:
	li $t0, 0
	sw $t0, -6428($fp)
	li $t0, 0
	sw $t0, -6432($fp)
	li $t0, 60269
	sw $t0, -6436($fp)
	lw $t1, -6436($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label558
label558:
	li $t0, 1
	sw $t0, -6432($fp)
label559:
	addi $t0, $fp, -8
	sw $t0, -6440($fp)
	lw $t0, -244($fp)
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
	lw $t0, -6432($fp)
	lw $t1, -6456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6460($fp)
	li $t0, 0
	lw $t1, -6460($fp)
	sub $t0, $t0, $t1
	sw $t0, -6464($fp)
	lw $t0, -220($fp)
	sw $t0, -6468($fp)
	lw $t0, -280($fp)
	sw $t0, -6472($fp)
	lw $t0, -6468($fp)
	lw $t1, -6472($fp)
	add $t0, $t0, $t1
	sw $t0, -6476($fp)
	li $t0, 45641
	sw $t0, -6480($fp)
	lw $t0, -6476($fp)
	lw $t1, -6480($fp)
	sub $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t1, -6464($fp)
	lw $t2, -6484($fp)
	ble $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -6428($fp)
label557:
	li $t0, 0
	sw $t0, -6488($fp)
	li $t0, 50980
	sw $t0, -6492($fp)
	li $t0, 0
	lw $t1, -6492($fp)
	sub $t0, $t0, $t1
	sw $t0, -6496($fp)
	li $t0, 0
	lw $t1, -6496($fp)
	sub $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label562:
	lw $t0, -304($fp)
	sw $t0, -6504($fp)
	lw $t1, -6504($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -6488($fp)
label561:
	lw $t0, -3744($fp)
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -6520($fp)
	lw $t0, -136($fp)
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -6528($fp)
	lw $t0, -6528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -6544($fp)
	li $t0, 0
	sw $t0, -6548($fp)
	li $t0, 4
	lw $t1, -6548($fp)
	mul $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	lw $t1, -6544($fp)
	add $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	lw $t1, 0($t0)
	sw $t1, -6560($fp)
	lw $t0, -6560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -6632($fp)
	li $t0, 0
	sw $t0, -6636($fp)
	li $t0, 4
	lw $t1, -6636($fp)
	mul $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	lw $t1, -6632($fp)
	add $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	lw $t1, 0($t0)
	sw $t1, -6648($fp)
	lw $t0, -6648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -6652($fp)
	li $t0, 1
	sw $t0, -6656($fp)
	li $t0, 4
	lw $t1, -6656($fp)
	mul $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	lw $t1, -6652($fp)
	add $t0, $t0, $t1
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	lw $t1, 0($t0)
	sw $t1, -6668($fp)
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -6672($fp)
	li $t0, 2
	sw $t0, -6676($fp)
	li $t0, 4
	lw $t1, -6676($fp)
	mul $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	lw $t1, -6672($fp)
	add $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	lw $t1, 0($t0)
	sw $t1, -6688($fp)
	lw $t0, -6688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -6692($fp)
	li $t0, 3
	sw $t0, -6696($fp)
	li $t0, 4
	lw $t1, -6696($fp)
	mul $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	lw $t1, -6692($fp)
	add $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, 0($t0)
	sw $t1, -6708($fp)
	lw $t0, -6708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6724($fp)
	li $t0, 0
	sw $t0, -6728($fp)
	li $t0, 4
	lw $t1, -6728($fp)
	mul $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	lw $t1, -6724($fp)
	add $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	lw $t1, 0($t0)
	sw $t1, -6740($fp)
	lw $t0, -6740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6744($fp)
	li $t0, 1
	sw $t0, -6748($fp)
	li $t0, 4
	lw $t1, -6748($fp)
	mul $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	lw $t1, -6744($fp)
	add $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6756($fp)
	lw $t1, 0($t0)
	sw $t1, -6760($fp)
	lw $t0, -6760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6764($fp)
	li $t0, 2
	sw $t0, -6768($fp)
	li $t0, 4
	lw $t1, -6768($fp)
	mul $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, -6764($fp)
	add $t0, $t0, $t1
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	lw $t1, 0($t0)
	sw $t1, -6780($fp)
	lw $t0, -6780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6784($fp)
	li $t0, 3
	sw $t0, -6788($fp)
	li $t0, 4
	lw $t1, -6788($fp)
	mul $t0, $t0, $t1
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	lw $t1, -6784($fp)
	add $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	lw $t1, 0($t0)
	sw $t1, -6800($fp)
	lw $t0, -6800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6808($fp)
	li $t0, 0
	sw $t0, -6812($fp)
	li $t0, 4
	lw $t1, -6812($fp)
	mul $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	lw $t1, -6808($fp)
	add $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	lw $t1, 0($t0)
	sw $t1, -6824($fp)
	lw $t0, -6824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6828($fp)
	li $t0, 1
	sw $t0, -6832($fp)
	li $t0, 4
	lw $t1, -6832($fp)
	mul $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	lw $t1, -6828($fp)
	add $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	lw $t1, 0($t0)
	sw $t1, -6844($fp)
	lw $t0, -6844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6848($fp)
	li $t0, 2
	sw $t0, -6852($fp)
	li $t0, 4
	lw $t1, -6852($fp)
	mul $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	lw $t1, -6848($fp)
	add $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	lw $t1, 0($t0)
	sw $t1, -6864($fp)
	lw $t0, -6864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6868($fp)
	li $t0, 3
	sw $t0, -6872($fp)
	li $t0, 4
	lw $t1, -6872($fp)
	mul $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	lw $t1, -6868($fp)
	add $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, 0($t0)
	sw $t1, -6884($fp)
	lw $t0, -6884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6888($fp)
	li $t0, 4
	sw $t0, -6892($fp)
	li $t0, 4
	lw $t1, -6892($fp)
	mul $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, -6888($fp)
	add $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, 0($t0)
	sw $t1, -6904($fp)
	lw $t0, -6904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6908($fp)
	li $t0, 5
	sw $t0, -6912($fp)
	li $t0, 4
	lw $t1, -6912($fp)
	mul $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	lw $t1, -6908($fp)
	add $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	lw $t1, 0($t0)
	sw $t1, -6924($fp)
	lw $t0, -6924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -6948($fp)
	li $t0, 0
	sw $t0, -6952($fp)
	li $t0, 4
	lw $t1, -6952($fp)
	mul $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	lw $t1, -6948($fp)
	add $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	lw $t1, 0($t0)
	sw $t1, -6964($fp)
	lw $t0, -6964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6972($fp)
	li $t0, 0
	sw $t0, -6976($fp)
	li $t0, 4
	lw $t1, -6976($fp)
	mul $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	lw $t1, -6972($fp)
	add $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	lw $t1, 0($t0)
	sw $t1, -6988($fp)
	lw $t0, -6988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -6992($fp)
	li $t0, 1
	sw $t0, -6996($fp)
	li $t0, 4
	lw $t1, -6996($fp)
	mul $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	lw $t1, -6992($fp)
	add $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	lw $t1, 0($t0)
	sw $t1, -7008($fp)
	lw $t0, -7008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -7012($fp)
	li $t0, 2
	sw $t0, -7016($fp)
	li $t0, 4
	lw $t1, -7016($fp)
	mul $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, -7012($fp)
	add $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	lw $t1, 0($t0)
	sw $t1, -7028($fp)
	lw $t0, -7028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -7032($fp)
	li $t0, 3
	sw $t0, -7036($fp)
	li $t0, 4
	lw $t1, -7036($fp)
	mul $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	lw $t1, -7032($fp)
	add $t0, $t0, $t1
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	lw $t1, 0($t0)
	sw $t1, -7048($fp)
	lw $t0, -7048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -7052($fp)
	li $t0, 4
	sw $t0, -7056($fp)
	li $t0, 4
	lw $t1, -7056($fp)
	mul $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	lw $t1, -7052($fp)
	add $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	lw $t1, 0($t0)
	sw $t1, -7068($fp)
	lw $t0, -7068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -7072($fp)
	li $t0, 5
	sw $t0, -7076($fp)
	li $t0, 4
	lw $t1, -7076($fp)
	mul $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	lw $t1, -7072($fp)
	add $t0, $t0, $t1
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	lw $t1, 0($t0)
	sw $t1, -7088($fp)
	lw $t0, -7088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -7092($fp)
	li $t0, 6
	sw $t0, -7096($fp)
	li $t0, 4
	lw $t1, -7096($fp)
	mul $t0, $t0, $t1
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	lw $t1, -7092($fp)
	add $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	lw $t1, 0($t0)
	sw $t1, -7108($fp)
	lw $t0, -7108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -7112($fp)
	li $t0, 7
	sw $t0, -7116($fp)
	li $t0, 4
	lw $t1, -7116($fp)
	mul $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	lw $t1, -7112($fp)
	add $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	lw $t1, 0($t0)
	sw $t1, -7128($fp)
	lw $t0, -7128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -7132($fp)
	li $t0, 8
	sw $t0, -7136($fp)
	li $t0, 4
	lw $t1, -7136($fp)
	mul $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	lw $t1, -7132($fp)
	add $t0, $t0, $t1
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	lw $t1, 0($t0)
	sw $t1, -7148($fp)
	lw $t0, -7148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -7160($fp)
	lw $t0, -7160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7180($fp)
	li $t0, 0
	sw $t0, -7184($fp)
	li $t0, 4
	lw $t1, -7184($fp)
	mul $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	lw $t1, -7180($fp)
	add $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	lw $t1, 0($t0)
	sw $t1, -7196($fp)
	lw $t0, -7196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7200($fp)
	li $t0, 1
	sw $t0, -7204($fp)
	li $t0, 4
	lw $t1, -7204($fp)
	mul $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	lw $t1, -7200($fp)
	add $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	lw $t1, 0($t0)
	sw $t1, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7220($fp)
	li $t0, 2
	sw $t0, -7224($fp)
	li $t0, 4
	lw $t1, -7224($fp)
	mul $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	lw $t1, -7220($fp)
	add $t0, $t0, $t1
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	lw $t1, 0($t0)
	sw $t1, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7240($fp)
	li $t0, 3
	sw $t0, -7244($fp)
	li $t0, 4
	lw $t1, -7244($fp)
	mul $t0, $t0, $t1
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	lw $t1, -7240($fp)
	add $t0, $t0, $t1
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	lw $t1, 0($t0)
	sw $t1, -7256($fp)
	lw $t0, -7256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7260($fp)
	li $t0, 4
	sw $t0, -7264($fp)
	li $t0, 4
	lw $t1, -7264($fp)
	mul $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	lw $t1, -7260($fp)
	add $t0, $t0, $t1
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	lw $t1, 0($t0)
	sw $t1, -7276($fp)
	lw $t0, -7276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7280($fp)
	li $t0, 5
	sw $t0, -7284($fp)
	li $t0, 4
	lw $t1, -7284($fp)
	mul $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	lw $t1, -7280($fp)
	add $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t0, -7292($fp)
	lw $t1, 0($t0)
	sw $t1, -7296($fp)
	lw $t0, -7296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7304($fp)
	li $t0, 1
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
	lw $t0, -856($fp)
	sw $t0, -7324($fp)
	li $t0, 0
	lw $t1, -7324($fp)
	sub $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7320($fp)
	lw $t1, -7328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7332($fp)
	lw $t0, -7332($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -7336($fp)
	lw $ra, -4($fp)
	lw $v0, -7336($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -440
	li $t0, 51344
	sw $t0, -36($fp)
	addi $t0, $fp, -32
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
	li $t0, 7267
	sw $t0, -60($fp)
	addi $t0, $fp, -32
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
	li $t0, 9280
	sw $t0, -84($fp)
	addi $t0, $fp, -32
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
	li $t0, 38922
	sw $t0, -108($fp)
	addi $t0, $fp, -32
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
	li $t0, 8706
	sw $t0, -132($fp)
	addi $t0, $fp, -32
	sw $t0, -136($fp)
	li $t0, 4
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
	li $t0, 26361
	sw $t0, -156($fp)
	addi $t0, $fp, -32
	sw $t0, -160($fp)
	li $t0, 5
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
	li $t0, 62318
	sw $t0, -180($fp)
	addi $t0, $fp, -32
	sw $t0, -184($fp)
	li $t0, 6
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
	li $t0, 12655
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	addi $t0, $fp, -32
	sw $t0, -216($fp)
	li $t0, 5
	sw $t0, -220($fp)
	li $t0, 4
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, 0($t0)
	sw $t1, -232($fp)
	li $t0, 0
	lw $t1, -232($fp)
	sub $t0, $t0, $t1
	sw $t0, -236($fp)
	li $t0, 0
	sw $t0, -240($fp)
	li $t0, 61730
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label563
label563:
	li $t0, 1
	sw $t0, -240($fp)
label564:
	li $t0, 0
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 26640
	sw $t0, -256($fp)
	lw $t1, -256($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -252($fp)
label568:
	li $t0, 30578
	sw $t0, -260($fp)
	lw $t1, -252($fp)
	lw $t2, -260($fp)
	blt $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -248($fp)
label566:
	li $t0, 29415
	sw $t0, -264($fp)
	li $t0, 54944
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -272($fp)
	li $t0, 0
	sw $t0, -276($fp)
	lw $t0, -208($fp)
	sw $t0, -280($fp)
	lw $t0, -208($fp)
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	li $t0, 35226
	sw $t0, -292($fp)
	lw $t1, -288($fp)
	lw $t2, -292($fp)
	bgt $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -276($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -296($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -32
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 4
	lw $t1, -304($fp)
	mul $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, 0($t0)
	sw $t1, -316($fp)
	lw $t0, -316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -320($fp)
	li $t0, 1
	sw $t0, -324($fp)
	li $t0, 4
	lw $t1, -324($fp)
	mul $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t1, 0($t0)
	sw $t1, -336($fp)
	lw $t0, -336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -340($fp)
	li $t0, 2
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
	lw $t0, -356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -360($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -380($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -400($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -420($fp)
	li $t0, 6
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
	lw $t0, -208($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 34114
	sw $t0, -444($fp)
	lw $ra, -4($fp)
	lw $v0, -444($fp)
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
	jal f10
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
