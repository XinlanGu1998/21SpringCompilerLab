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
	addi $sp, $sp, -252
	li $t0, 34623
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
	li $t0, 7425
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
	li $t0, 40816
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
	li $t0, 43426
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
	li $t0, 55530
	sw $t0, -120($fp)
	addi $t0, $fp, -20
	sw $t0, -124($fp)
	li $t0, 0
	sw $t0, -128($fp)
	li $t0, 4
	lw $t1, -128($fp)
	mul $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, 0($t0)
	sw $t1, -140($fp)
	lw $t0, -140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -144($fp)
	li $t0, 1
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
	lw $t0, -160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -164($fp)
	li $t0, 2
	sw $t0, -168($fp)
	li $t0, 4
	lw $t1, -168($fp)
	mul $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t1, 0($t0)
	sw $t1, -180($fp)
	lw $t0, -180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -184($fp)
	li $t0, 3
	sw $t0, -188($fp)
	li $t0, 4
	lw $t1, -188($fp)
	mul $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, -184($fp)
	add $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	lw $t1, 0($t0)
	sw $t1, -200($fp)
	lw $t0, -200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	li $t0, 11579
	sw $t0, -212($fp)
	lw $t1, -212($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	lw $t0, 4($fp)
	sw $t0, -216($fp)
	lw $t1, -216($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -208($fp)
label122:
	li $t0, 4
	lw $t1, -208($fp)
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, 0($t0)
	sw $t1, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	li $t0, 41363
	sw $t0, -236($fp)
	li $t0, 62676
	sw $t0, -240($fp)
	lw $t1, -236($fp)
	lw $t2, -240($fp)
	beq $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -232($fp)
label125:
	addi $sp, $sp, -4
	lw $t0, -232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -244($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -228($fp)
	lw $t1, -248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -252($fp)
	li $t0, 0
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $ra, -4($fp)
	lw $v0, -256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -13496
	li $t0, 9881
	sw $t0, -312($fp)
	addi $t0, $fp, -24
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
	li $t0, 2845
	sw $t0, -336($fp)
	addi $t0, $fp, -24
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
	li $t0, 37619
	sw $t0, -360($fp)
	addi $t0, $fp, -24
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
	li $t0, 30752
	sw $t0, -384($fp)
	addi $t0, $fp, -24
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
	li $t0, 56752
	sw $t0, -408($fp)
	addi $t0, $fp, -24
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
	li $t0, 40824
	sw $t0, -432($fp)
	addi $t0, $fp, -52
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
	li $t0, 12683
	sw $t0, -456($fp)
	addi $t0, $fp, -52
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
	li $t0, 53621
	sw $t0, -480($fp)
	addi $t0, $fp, -52
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
	li $t0, 4510
	sw $t0, -504($fp)
	addi $t0, $fp, -52
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
	li $t0, 45351
	sw $t0, -528($fp)
	addi $t0, $fp, -52
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
	li $t0, 11447
	sw $t0, -552($fp)
	addi $t0, $fp, -52
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
	li $t0, 26661
	sw $t0, -576($fp)
	addi $t0, $fp, -52
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
	li $t0, 54025
	sw $t0, -600($fp)
	addi $t0, $fp, -92
	sw $t0, -604($fp)
	li $t0, 0
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
	li $t0, 62244
	sw $t0, -624($fp)
	addi $t0, $fp, -92
	sw $t0, -628($fp)
	li $t0, 1
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
	li $t0, 46070
	sw $t0, -648($fp)
	addi $t0, $fp, -92
	sw $t0, -652($fp)
	li $t0, 2
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
	li $t0, 6235
	sw $t0, -672($fp)
	addi $t0, $fp, -92
	sw $t0, -676($fp)
	li $t0, 3
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
	li $t0, 4887
	sw $t0, -696($fp)
	addi $t0, $fp, -92
	sw $t0, -700($fp)
	li $t0, 4
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
	li $t0, 18632
	sw $t0, -720($fp)
	addi $t0, $fp, -92
	sw $t0, -724($fp)
	li $t0, 5
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
	li $t0, 33833
	sw $t0, -744($fp)
	addi $t0, $fp, -92
	sw $t0, -748($fp)
	li $t0, 6
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
	li $t0, 14261
	sw $t0, -768($fp)
	addi $t0, $fp, -92
	sw $t0, -772($fp)
	li $t0, 7
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
	li $t0, 42069
	sw $t0, -792($fp)
	addi $t0, $fp, -92
	sw $t0, -796($fp)
	li $t0, 8
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
	li $t0, 1499
	sw $t0, -816($fp)
	addi $t0, $fp, -92
	sw $t0, -820($fp)
	li $t0, 9
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
	li $t0, 62834
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 11157
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 8925
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 38115
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 54583
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 64455
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 49694
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 30410
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 61595
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 59576
	sw $t0, -948($fp)
	addi $t0, $fp, -96
	sw $t0, -952($fp)
	li $t0, 0
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
	li $t0, 33256
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	li $t0, 33678
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 24792
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 24472
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	li $t0, 8966
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 37476
	sw $t0, -1032($fp)
	addi $t0, $fp, -100
	sw $t0, -1036($fp)
	li $t0, 0
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
	li $t0, 12558
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 13477
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 17291
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 24005
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 40138
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 5780
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 20714
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 20672
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 12016
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 25601
	sw $t0, -1164($fp)
	addi $t0, $fp, -112
	sw $t0, -1168($fp)
	li $t0, 0
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1168($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1164($fp)
	lw $t1, -1180($fp)
	sw $t0, 0($t1)
	lw $t0, -1180($fp)
	lw $t1, 0($t0)
	sw $t1, -1184($fp)
	li $t0, 39304
	sw $t0, -1188($fp)
	addi $t0, $fp, -112
	sw $t0, -1192($fp)
	li $t0, 1
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
	li $t0, 45849
	sw $t0, -1212($fp)
	addi $t0, $fp, -112
	sw $t0, -1216($fp)
	li $t0, 2
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
	li $t0, 39862
	sw $t0, -1236($fp)
	addi $t0, $fp, -152
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
	li $t0, 15838
	sw $t0, -1260($fp)
	addi $t0, $fp, -152
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
	li $t0, 47349
	sw $t0, -1284($fp)
	addi $t0, $fp, -152
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
	li $t0, 37161
	sw $t0, -1308($fp)
	addi $t0, $fp, -152
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
	li $t0, 26995
	sw $t0, -1332($fp)
	addi $t0, $fp, -152
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
	li $t0, 56274
	sw $t0, -1356($fp)
	addi $t0, $fp, -152
	sw $t0, -1360($fp)
	li $t0, 5
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1360($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1356($fp)
	lw $t1, -1372($fp)
	sw $t0, 0($t1)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
	li $t0, 9740
	sw $t0, -1380($fp)
	addi $t0, $fp, -152
	sw $t0, -1384($fp)
	li $t0, 6
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
	li $t0, 16042
	sw $t0, -1404($fp)
	addi $t0, $fp, -152
	sw $t0, -1408($fp)
	li $t0, 7
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
	li $t0, 55193
	sw $t0, -1428($fp)
	addi $t0, $fp, -152
	sw $t0, -1432($fp)
	li $t0, 8
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
	li $t0, 59434
	sw $t0, -1452($fp)
	addi $t0, $fp, -152
	sw $t0, -1456($fp)
	li $t0, 9
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
	li $t0, 46453
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	li $t0, 51253
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	li $t0, 53474
	sw $t0, -1500($fp)
	addi $t0, $fp, -192
	sw $t0, -1504($fp)
	li $t0, 0
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
	li $t0, 14173
	sw $t0, -1524($fp)
	addi $t0, $fp, -192
	sw $t0, -1528($fp)
	li $t0, 1
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
	li $t0, 19395
	sw $t0, -1548($fp)
	addi $t0, $fp, -192
	sw $t0, -1552($fp)
	li $t0, 2
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
	li $t0, 12731
	sw $t0, -1572($fp)
	addi $t0, $fp, -192
	sw $t0, -1576($fp)
	li $t0, 3
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
	li $t0, 38645
	sw $t0, -1596($fp)
	addi $t0, $fp, -192
	sw $t0, -1600($fp)
	li $t0, 4
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
	li $t0, 28362
	sw $t0, -1620($fp)
	addi $t0, $fp, -192
	sw $t0, -1624($fp)
	li $t0, 5
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
	li $t0, 50207
	sw $t0, -1644($fp)
	addi $t0, $fp, -192
	sw $t0, -1648($fp)
	li $t0, 6
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
	li $t0, 51203
	sw $t0, -1668($fp)
	addi $t0, $fp, -192
	sw $t0, -1672($fp)
	li $t0, 7
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
	li $t0, 41839
	sw $t0, -1692($fp)
	addi $t0, $fp, -192
	sw $t0, -1696($fp)
	li $t0, 8
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
	li $t0, 1962
	sw $t0, -1716($fp)
	addi $t0, $fp, -192
	sw $t0, -1720($fp)
	li $t0, 9
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
	li $t0, 9673
	sw $t0, -1740($fp)
	addi $t0, $fp, -224
	sw $t0, -1744($fp)
	li $t0, 0
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
	li $t0, 16441
	sw $t0, -1764($fp)
	addi $t0, $fp, -224
	sw $t0, -1768($fp)
	li $t0, 1
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
	li $t0, 7742
	sw $t0, -1788($fp)
	addi $t0, $fp, -224
	sw $t0, -1792($fp)
	li $t0, 2
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
	li $t0, 30387
	sw $t0, -1812($fp)
	addi $t0, $fp, -224
	sw $t0, -1816($fp)
	li $t0, 3
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
	li $t0, 37113
	sw $t0, -1836($fp)
	addi $t0, $fp, -224
	sw $t0, -1840($fp)
	li $t0, 4
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1840($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1836($fp)
	lw $t1, -1852($fp)
	sw $t0, 0($t1)
	lw $t0, -1852($fp)
	lw $t1, 0($t0)
	sw $t1, -1856($fp)
	li $t0, 19758
	sw $t0, -1860($fp)
	addi $t0, $fp, -224
	sw $t0, -1864($fp)
	li $t0, 5
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1864($fp)
	lw $t1, -1872($fp)
	add $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1860($fp)
	lw $t1, -1876($fp)
	sw $t0, 0($t1)
	lw $t0, -1876($fp)
	lw $t1, 0($t0)
	sw $t1, -1880($fp)
	li $t0, 55988
	sw $t0, -1884($fp)
	addi $t0, $fp, -224
	sw $t0, -1888($fp)
	li $t0, 6
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1888($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1884($fp)
	lw $t1, -1900($fp)
	sw $t0, 0($t1)
	lw $t0, -1900($fp)
	lw $t1, 0($t0)
	sw $t1, -1904($fp)
	li $t0, 10881
	sw $t0, -1908($fp)
	addi $t0, $fp, -224
	sw $t0, -1912($fp)
	li $t0, 7
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1912($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1908($fp)
	lw $t1, -1924($fp)
	sw $t0, 0($t1)
	lw $t0, -1924($fp)
	lw $t1, 0($t0)
	sw $t1, -1928($fp)
	li $t0, 72
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	li $t0, 30314
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	li $t0, 26719
	sw $t0, -1956($fp)
	addi $t0, $fp, -232
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
	li $t0, 47421
	sw $t0, -1980($fp)
	addi $t0, $fp, -232
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
	li $t0, 1939
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	li $t0, 53714
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	li $t0, 38159
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	li $t0, 11679
	sw $t0, -2040($fp)
	addi $t0, $fp, -248
	sw $t0, -2044($fp)
	li $t0, 0
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
	li $t0, 4221
	sw $t0, -2064($fp)
	addi $t0, $fp, -248
	sw $t0, -2068($fp)
	li $t0, 1
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
	li $t0, 27816
	sw $t0, -2088($fp)
	addi $t0, $fp, -248
	sw $t0, -2092($fp)
	li $t0, 2
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
	li $t0, 5578
	sw $t0, -2112($fp)
	addi $t0, $fp, -248
	sw $t0, -2116($fp)
	li $t0, 3
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
	li $t0, 50674
	sw $t0, -2136($fp)
	addi $t0, $fp, -260
	sw $t0, -2140($fp)
	li $t0, 0
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
	li $t0, 13533
	sw $t0, -2160($fp)
	addi $t0, $fp, -260
	sw $t0, -2164($fp)
	li $t0, 1
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
	li $t0, 59052
	sw $t0, -2184($fp)
	addi $t0, $fp, -260
	sw $t0, -2188($fp)
	li $t0, 2
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
	li $t0, 64847
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	li $t0, 32929
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	li $t0, 6247
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -2240($fp)
	li $t0, 37956
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	li $t0, 61291
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -2264($fp)
	li $t0, 56454
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	li $t0, 23624
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	li $t0, 37594
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	li $t0, 58416
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -2312($fp)
	li $t0, 33297
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	li $t0, 54035
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -2336($fp)
	li $t0, 623
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	li $t0, 63684
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	li $t0, 25612
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	li $t0, 20381
	sw $t0, -2376($fp)
	addi $t0, $fp, -280
	sw $t0, -2380($fp)
	li $t0, 0
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2380($fp)
	lw $t1, -2388($fp)
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2376($fp)
	lw $t1, -2392($fp)
	sw $t0, 0($t1)
	lw $t0, -2392($fp)
	lw $t1, 0($t0)
	sw $t1, -2396($fp)
	li $t0, 54136
	sw $t0, -2400($fp)
	addi $t0, $fp, -280
	sw $t0, -2404($fp)
	li $t0, 1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2404($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2400($fp)
	lw $t1, -2416($fp)
	sw $t0, 0($t1)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	li $t0, 36493
	sw $t0, -2424($fp)
	addi $t0, $fp, -280
	sw $t0, -2428($fp)
	li $t0, 2
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2428($fp)
	lw $t1, -2436($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2424($fp)
	lw $t1, -2440($fp)
	sw $t0, 0($t1)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	li $t0, 20453
	sw $t0, -2448($fp)
	addi $t0, $fp, -280
	sw $t0, -2452($fp)
	li $t0, 3
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2452($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2448($fp)
	lw $t1, -2464($fp)
	sw $t0, 0($t1)
	lw $t0, -2464($fp)
	lw $t1, 0($t0)
	sw $t1, -2468($fp)
	li $t0, 18914
	sw $t0, -2472($fp)
	addi $t0, $fp, -280
	sw $t0, -2476($fp)
	li $t0, 4
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
	li $t0, 63213
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	li $t0, 2338
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	li $t0, 20854
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	li $t0, 51391
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	li $t0, 40497
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	li $t0, 32533
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -2564($fp)
	li $t0, 55612
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	li $t0, 2778
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	li $t0, 38111
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -2600($fp)
	li $t0, 40750
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	sw $t0, -2612($fp)
	li $t0, 16311
	sw $t0, -2616($fp)
	addi $t0, $fp, -292
	sw $t0, -2620($fp)
	li $t0, 0
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2620($fp)
	lw $t1, -2628($fp)
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2616($fp)
	lw $t1, -2632($fp)
	sw $t0, 0($t1)
	lw $t0, -2632($fp)
	lw $t1, 0($t0)
	sw $t1, -2636($fp)
	li $t0, 31628
	sw $t0, -2640($fp)
	addi $t0, $fp, -292
	sw $t0, -2644($fp)
	li $t0, 1
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2644($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2640($fp)
	lw $t1, -2656($fp)
	sw $t0, 0($t1)
	lw $t0, -2656($fp)
	lw $t1, 0($t0)
	sw $t1, -2660($fp)
	li $t0, 40061
	sw $t0, -2664($fp)
	addi $t0, $fp, -292
	sw $t0, -2668($fp)
	li $t0, 2
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2668($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2664($fp)
	lw $t1, -2680($fp)
	sw $t0, 0($t1)
	lw $t0, -2680($fp)
	lw $t1, 0($t0)
	sw $t1, -2684($fp)
	li $t0, 49240
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -2696($fp)
	li $t0, 37875
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	li $t0, 12482
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	li $t0, 44995
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	li $t0, 28794
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	li $t0, 36106
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	li $t0, 17053
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -2768($fp)
	li $t0, 21674
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	sw $t0, -2780($fp)
	li $t0, 3867
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -2792($fp)
	li $t0, 5552
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	sw $t0, -2804($fp)
	li $t0, 22297
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -2816($fp)
	li $t0, 2015
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -2828($fp)
	li $t0, 31164
	sw $t0, -2832($fp)
	addi $t0, $fp, -308
	sw $t0, -2836($fp)
	li $t0, 0
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
	li $t0, 42679
	sw $t0, -2856($fp)
	addi $t0, $fp, -308
	sw $t0, -2860($fp)
	li $t0, 1
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
	li $t0, 56151
	sw $t0, -2880($fp)
	addi $t0, $fp, -308
	sw $t0, -2884($fp)
	li $t0, 2
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
	li $t0, 2122
	sw $t0, -2904($fp)
	addi $t0, $fp, -308
	sw $t0, -2908($fp)
	li $t0, 3
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
	li $t0, 63132
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	sw $t0, -2936($fp)
	addi $t0, $fp, -292
	sw $t0, -2940($fp)
	lw $t0, -1948($fp)
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2948($fp)
	li $t0, 4
	lw $t1, -2948($fp)
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	li $t0, 9529
	sw $t0, -2964($fp)
	li $t0, 65335
	sw $t0, -2968($fp)
	lw $t0, -2964($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t1, -2960($fp)
	lw $t2, -2972($fp)
	bge $t1, $t2, label129
	j label127
label129:
	addi $t0, $fp, -260
	sw $t0, -2976($fp)
	li $t0, 2
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
	li $t0, 51190
	sw $t0, -2996($fp)
	lw $t0, -2992($fp)
	lw $t1, -2996($fp)
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3004($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3004($fp)
	sub $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 40432
	sw $t0, -3032($fp)
	addi $t0, $fp, -3028
	sw $t0, -3036($fp)
	li $t0, 0
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
	li $t0, 62917
	sw $t0, -3056($fp)
	addi $t0, $fp, -3028
	sw $t0, -3060($fp)
	li $t0, 1
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
	li $t0, 41267
	sw $t0, -3080($fp)
	addi $t0, $fp, -3028
	sw $t0, -3084($fp)
	li $t0, 2
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
	li $t0, 43210
	sw $t0, -3104($fp)
	addi $t0, $fp, -3028
	sw $t0, -3108($fp)
	li $t0, 3
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
	li $t0, 35492
	sw $t0, -3128($fp)
	addi $t0, $fp, -3028
	sw $t0, -3132($fp)
	li $t0, 4
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
label130:
	li $t0, 16481
	sw $t0, -3152($fp)
	li $t0, 59522
	sw $t0, -3156($fp)
	lw $t0, -3152($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	li $t0, 0
	sw $t0, -3164($fp)
	li $t0, 43226
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label135:
	lw $t0, -2596($fp)
	sw $t0, -3172($fp)
	lw $t1, -3172($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -3164($fp)
label134:
	lw $t0, -1144($fp)
	sw $t0, -3176($fp)
	lw $t0, -2512($fp)
	sw $t0, -3180($fp)
	li $t0, 0
	sw $t0, -3184($fp)
	addi $t0, $fp, -24
	sw $t0, -3188($fp)
	lw $t0, -2224($fp)
	sw $t0, -3192($fp)
	li $t0, 4
	lw $t1, -3192($fp)
	mul $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, 0($t0)
	sw $t1, -3204($fp)
	lw $t0, -2260($fp)
	sw $t0, -3208($fp)
	lw $t1, -3204($fp)
	lw $t2, -3208($fp)
	ble $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -3184($fp)
label137:
	li $t0, 0
	sw $t0, -3212($fp)
	li $t0, 0
	sw $t0, -3216($fp)
	li $t0, 1584
	sw $t0, -3220($fp)
	li $t0, 56543
	sw $t0, -3224($fp)
	lw $t1, -3220($fp)
	lw $t2, -3224($fp)
	blt $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -3216($fp)
label141:
	lw $t0, -1072($fp)
	sw $t0, -3228($fp)
	lw $t1, -3216($fp)
	lw $t2, -3228($fp)
	beq $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -3212($fp)
label139:
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3232($fp)
	addi $sp, $sp, 24
	lw $t0, -3160($fp)
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 39460
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -3248($fp)
	li $t0, 3489
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	sw $t0, -3260($fp)
	li $t0, 0
	sw $t0, -3264($fp)
	li $t0, 0
	sw $t0, -3268($fp)
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 0
	sw $t0, -3276($fp)
	li $t0, 0
	sw $t0, -3280($fp)
	li $t0, 39595
	sw $t0, -3284($fp)
	lw $t0, -2332($fp)
	sw $t0, -3288($fp)
	lw $t1, -3284($fp)
	lw $t2, -3288($fp)
	ble $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -3280($fp)
label151:
	lw $t0, -2692($fp)
	sw $t0, -3292($fp)
	lw $t1, -3280($fp)
	lw $t2, -3292($fp)
	beq $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -3276($fp)
label149:
	lw $t0, -3256($fp)
	sw $t0, -3296($fp)
	li $t0, 2718
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3304($fp)
	li $t0, 0
	lw $t1, -3304($fp)
	sub $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -2008($fp)
	sw $t0, -3312($fp)
	li $t0, 0
	sw $t0, -3316($fp)
	li $t0, 0
	sw $t0, -3320($fp)
	lw $t0, -2524($fp)
	sw $t0, -3324($fp)
	lw $t0, -2536($fp)
	sw $t0, -3328($fp)
	lw $t1, -3324($fp)
	lw $t2, -3328($fp)
	beq $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -3320($fp)
label155:
	li $t0, 22686
	sw $t0, -3332($fp)
	lw $t1, -3320($fp)
	lw $t2, -3332($fp)
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -3316($fp)
label153:
	li $t0, 0
	sw $t0, -3336($fp)
	lw $t0, -2788($fp)
	sw $t0, -3340($fp)
	li $t0, 0
	lw $t1, -3340($fp)
	sub $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t1, -3344($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label156:
	li $t0, 1
	sw $t0, -3336($fp)
label157:
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3336($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3348($fp)
	addi $sp, $sp, 24
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -3272($fp)
label147:
	li $t0, 0
	lw $t1, -3272($fp)
	sub $t0, $t0, $t1
	sw $t0, -3352($fp)
	addi $t0, $fp, -3028
	sw $t0, -3356($fp)
	li $t0, 4
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
	lw $t0, -880($fp)
	sw $t0, -3376($fp)
	lw $t0, -3372($fp)
	lw $t1, -3376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3380($fp)
	lw $t1, -3352($fp)
	lw $t2, -3380($fp)
	bge $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -3268($fp)
label145:
	li $t0, 43462
	sw $t0, -3384($fp)
	lw $t1, -3268($fp)
	lw $t2, -3384($fp)
	beq $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -3264($fp)
label143:
	li $t0, 45292
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	sw $t0, -3428($fp)
	li $t0, 46690
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	sw $t0, -3440($fp)
	li $t0, 45477
	sw $t0, -3444($fp)
	addi $t0, $fp, -3416
	sw $t0, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3448($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3444($fp)
	lw $t1, -3460($fp)
	sw $t0, 0($t1)
	lw $t0, -3460($fp)
	lw $t1, 0($t0)
	sw $t1, -3464($fp)
	li $t0, 10920
	sw $t0, -3468($fp)
	addi $t0, $fp, -3416
	sw $t0, -3472($fp)
	li $t0, 1
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
	li $t0, 23833
	sw $t0, -3492($fp)
	addi $t0, $fp, -3416
	sw $t0, -3496($fp)
	li $t0, 2
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
	li $t0, 36092
	sw $t0, -3516($fp)
	addi $t0, $fp, -3416
	sw $t0, -3520($fp)
	li $t0, 3
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
	li $t0, 13042
	sw $t0, -3540($fp)
	addi $t0, $fp, -3416
	sw $t0, -3544($fp)
	li $t0, 4
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
	li $t0, 21429
	sw $t0, -3564($fp)
	addi $t0, $fp, -3416
	sw $t0, -3568($fp)
	li $t0, 5
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -3568($fp)
	lw $t1, -3576($fp)
	add $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3564($fp)
	lw $t1, -3580($fp)
	sw $t0, 0($t1)
	lw $t0, -3580($fp)
	lw $t1, 0($t0)
	sw $t1, -3584($fp)
	li $t0, 45621
	sw $t0, -3588($fp)
	addi $t0, $fp, -3416
	sw $t0, -3592($fp)
	li $t0, 6
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -3592($fp)
	lw $t1, -3600($fp)
	add $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3588($fp)
	lw $t1, -3604($fp)
	sw $t0, 0($t1)
	lw $t0, -3604($fp)
	lw $t1, 0($t0)
	sw $t1, -3608($fp)
	li $t0, 12841
	sw $t0, -3612($fp)
	addi $t0, $fp, -3416
	sw $t0, -3616($fp)
	li $t0, 7
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -3616($fp)
	lw $t1, -3624($fp)
	add $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3612($fp)
	lw $t1, -3628($fp)
	sw $t0, 0($t1)
	lw $t0, -3628($fp)
	lw $t1, 0($t0)
	sw $t1, -3632($fp)
	li $t0, 21364
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -3644($fp)
	li $t0, 10469
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	sw $t0, -3656($fp)
	li $t0, 64032
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	sw $t0, -3668($fp)
	li $t0, 61797
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	sw $t0, -3680($fp)
	li $t0, 7850
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	sw $t0, -3692($fp)
	li $t0, 39763
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	sw $t0, -3704($fp)
label158:
	lw $t0, -1120($fp)
	sw $t0, -3708($fp)
	lw $t0, -2692($fp)
	sw $t0, -3712($fp)
	lw $t0, -3708($fp)
	lw $t1, -3712($fp)
	mul $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -1108($fp)
	sw $t0, -3720($fp)
	lw $t0, -3716($fp)
	lw $t1, -3720($fp)
	add $t0, $t0, $t1
	sw $t0, -3724($fp)
	addi $sp, $sp, -4
	lw $t0, -3724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3728($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3732($fp)
	li $t0, 39471
	sw $t0, -3736($fp)
	lw $t1, -3736($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label162:
	li $t0, 1
	sw $t0, -3732($fp)
label163:
	lw $t1, -3728($fp)
	lw $t2, -3732($fp)
	bne $t1, $t2, label161
	j label160
label161:
	li $t0, 43342
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 56244
	sw $t0, -3744($fp)
	li $t0, 0
	sw $t0, -3748($fp)
	li $t0, 47251
	sw $t0, -3752($fp)
	lw $t0, -2368($fp)
	sw $t0, -3756($fp)
	lw $t0, -3752($fp)
	lw $t1, -3756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3760($fp)
	li $t0, 11148
	sw $t0, -3764($fp)
	lw $t0, -3760($fp)
	lw $t1, -3764($fp)
	mul $t0, $t0, $t1
	sw $t0, -3768($fp)
	li $t0, 0
	sw $t0, -3772($fp)
	lw $t0, -2560($fp)
	sw $t0, -3776($fp)
	lw $t1, -3776($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label166
label166:
	li $t0, 1
	sw $t0, -3772($fp)
label167:
	li $t0, 0
	lw $t1, -3772($fp)
	sub $t0, $t0, $t1
	sw $t0, -3780($fp)
	li $t0, 0
	sw $t0, -3784($fp)
	lw $t0, -1012($fp)
	sw $t0, -3788($fp)
	li $t0, 44927
	sw $t0, -3792($fp)
	lw $t1, -3788($fp)
	lw $t2, -3792($fp)
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -3784($fp)
label169:
	lw $t0, -1060($fp)
	sw $t0, -3796($fp)
	li $t0, 0
	sw $t0, -3800($fp)
	li $t0, 33457
	sw $t0, -3804($fp)
	lw $t0, -1012($fp)
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label172:
	lw $t0, -1012($fp)
	sw $t0, -3816($fp)
	lw $t1, -3816($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -3800($fp)
label171:
	addi $sp, $sp, -4
	lw $t0, -3768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3800($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3820($fp)
	addi $sp, $sp, 24
	lw $t1, -3820($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label164:
	li $t0, 1
	sw $t0, -3748($fp)
label165:
	lw $t0, -3744($fp)
	lw $t1, -3748($fp)
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $ra, -4($fp)
	lw $v0, -3824($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label158
label160:
label173:
	addi $t0, $fp, -280
	sw $t0, -3828($fp)
	lw $t0, -3664($fp)
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
	lw $t0, -2704($fp)
	sw $t0, -3848($fp)
	lw $t0, -3844($fp)
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -2788($fp)
	sw $t0, -3856($fp)
	li $t0, 21569
	sw $t0, -3860($fp)
	lw $t0, -3856($fp)
	lw $t1, -3860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3864($fp)
	lw $t0, -2716($fp)
	sw $t0, -3868($fp)
	lw $t0, -3864($fp)
	lw $t1, -3868($fp)
	sub $t0, $t0, $t1
	sw $t0, -3872($fp)
	li $t0, 0
	sw $t0, -3876($fp)
	lw $t0, -1060($fp)
	sw $t0, -3880($fp)
	lw $t0, -3244($fp)
	sw $t0, -3884($fp)
	lw $t1, -3880($fp)
	lw $t2, -3884($fp)
	ble $t1, $t2, label178
	j label177
label178:
	lw $t0, -1120($fp)
	sw $t0, -3888($fp)
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -3876($fp)
label177:
	li $t0, 33834
	sw $t0, -3892($fp)
	li $t0, 0
	lw $t1, -3892($fp)
	sub $t0, $t0, $t1
	sw $t0, -3896($fp)
	li $t0, 0
	sw $t0, -3900($fp)
	li $t0, 0
	sw $t0, -3904($fp)
	lw $t0, -868($fp)
	sw $t0, -3908($fp)
	li $t0, 50740
	sw $t0, -3912($fp)
	lw $t1, -3908($fp)
	lw $t2, -3912($fp)
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -3904($fp)
label182:
	lw $t0, -3640($fp)
	sw $t0, -3916($fp)
	lw $t1, -3904($fp)
	lw $t2, -3916($fp)
	beq $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -3900($fp)
label180:
	li $t0, 0
	sw $t0, -3920($fp)
	lw $t0, -2608($fp)
	sw $t0, -3924($fp)
	li $t0, 18851
	sw $t0, -3928($fp)
	lw $t0, -3924($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label185:
	lw $t0, -2500($fp)
	sw $t0, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -3920($fp)
label184:
	addi $sp, $sp, -4
	lw $t0, -3872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3940($fp)
	addi $sp, $sp, 24
	lw $t0, -3852($fp)
	lw $t1, -3940($fp)
	sub $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t1, -3944($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	lw $t0, -856($fp)
	sw $t0, -3948($fp)
	li $t0, 0
	sw $t0, -3952($fp)
	addi $t0, $fp, -112
	sw $t0, -3956($fp)
	lw $t0, -1000($fp)
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
	lw $t1, -3972($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label189:
	li $t0, 1
	sw $t0, -3952($fp)
label190:
	lw $t0, -2932($fp)
	sw $t0, -3976($fp)
	lw $t0, -3952($fp)
	lw $t1, -3976($fp)
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3948($fp)
	lw $t1, -3980($fp)
	add $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t1, -3984($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
label191:
	addi $t0, $fp, -292
	sw $t0, -3988($fp)
	li $t0, 64250
	sw $t0, -3992($fp)
	lw $t0, -2284($fp)
	sw $t0, -3996($fp)
	lw $t0, -3992($fp)
	lw $t1, -3996($fp)
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	addi $t0, $fp, -3028
	sw $t0, -4004($fp)
	li $t0, 4
	sw $t0, -4008($fp)
	li $t0, 4
	lw $t1, -4008($fp)
	mul $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	lw $t1, 0($t0)
	sw $t1, -4020($fp)
	li $t0, 0
	sw $t0, -4024($fp)
	li $t0, 2725
	sw $t0, -4028($fp)
	li $t0, 53329
	sw $t0, -4032($fp)
	lw $t0, -4028($fp)
	lw $t1, -4032($fp)
	add $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t1, -4036($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label197:
	lw $t0, -1084($fp)
	sw $t0, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -4024($fp)
label196:
	li $t0, 0
	sw $t0, -4044($fp)
	li $t0, 8037
	sw $t0, -4048($fp)
	lw $t1, -4048($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label201:
	li $t0, 45961
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label200
label200:
	lw $t0, -1480($fp)
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -4044($fp)
label199:
	li $t0, 0
	sw $t0, -4060($fp)
	lw $t0, -844($fp)
	sw $t0, -4064($fp)
	lw $t0, -2812($fp)
	sw $t0, -4068($fp)
	lw $t0, -4064($fp)
	lw $t1, -4068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label204:
	li $t0, 24799
	sw $t0, -4076($fp)
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -4060($fp)
label203:
	addi $sp, $sp, -4
	lw $t0, -4000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4060($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4080($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, -3988($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	lw $t1, 0($t0)
	sw $t1, -4092($fp)
	lw $t0, -2212($fp)
	sw $t0, -4096($fp)
	lw $t1, -4092($fp)
	lw $t2, -4096($fp)
	bge $t1, $t2, label192
	j label194
label194:
	li $t0, 50948
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
label205:
	li $t0, 0
	sw $t0, -4104($fp)
	li $t0, 18758
	sw $t0, -4108($fp)
	lw $t1, -4108($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label210
label210:
	li $t0, 11756
	sw $t0, -4112($fp)
	lw $t1, -4112($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -4104($fp)
label209:
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4116($fp)
	addi $sp, $sp, 8
	li $t0, 6842
	sw $t0, -4120($fp)
	li $t0, 0
	lw $t1, -4120($fp)
	sub $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4116($fp)
	lw $t1, -4124($fp)
	sub $t0, $t0, $t1
	sw $t0, -4128($fp)
	addi $t0, $fp, -24
	sw $t0, -4132($fp)
	lw $t0, -1108($fp)
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
	li $t0, 0
	lw $t1, -4148($fp)
	sub $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4128($fp)
	lw $t1, -4152($fp)
	add $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -1936($fp)
	sw $t0, -4160($fp)
	li $t0, 64380
	sw $t0, -4164($fp)
	lw $t0, -4160($fp)
	lw $t1, -4164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4168($fp)
	li $t0, 24598
	sw $t0, -4172($fp)
	lw $t0, -4168($fp)
	lw $t1, -4172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4176($fp)
	lw $t0, -4156($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t1, -4180($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	addi $t0, $fp, -92
	sw $t0, -4184($fp)
	addi $t0, $fp, -308
	sw $t0, -4188($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -4204($fp)
	sub $t0, $t0, $t1
	sw $t0, -4208($fp)
	li $t0, 4
	lw $t1, -4208($fp)
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, 0($t0)
	sw $t1, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
	addi $t0, $fp, -248
	sw $t0, -4224($fp)
	lw $t0, -988($fp)
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -4232($fp)
	li $t0, 4
	lw $t1, -4232($fp)
	mul $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	lw $t1, 0($t0)
	sw $t1, -4244($fp)
	li $t0, 23094
	sw $t0, -4248($fp)
	lw $t0, -4244($fp)
	lw $t1, -4248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4252($fp)
	li $t0, 0
	sw $t0, -4256($fp)
	li $t0, 24467
	sw $t0, -4260($fp)
	lw $t1, -4260($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label214:
	li $t0, 1
	sw $t0, -4256($fp)
label215:
	li $t0, 0
	lw $t1, -4256($fp)
	sub $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4252($fp)
	lw $t1, -4264($fp)
	mul $t0, $t0, $t1
	sw $t0, -4268($fp)
	j label213
label212:
	lw $t0, -904($fp)
	sw $t0, -4272($fp)
label213:
	j label205
label207:
	j label191
label193:
	j label188
label187:
	li $t0, 0
	sw $t0, -4276($fp)
	lw $t0, -1156($fp)
	sw $t0, -4280($fp)
	li $t0, 17163
	sw $t0, -4284($fp)
	lw $t0, -4280($fp)
	lw $t1, -4284($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t1, -4288($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label222:
	lw $t0, -892($fp)
	sw $t0, -4292($fp)
	lw $t1, -4292($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -4276($fp)
label221:
	addi $sp, $sp, -4
	lw $t0, -4276($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4296($fp)
	addi $sp, $sp, 8
	li $t0, 62857
	sw $t0, -4300($fp)
	lw $t0, -4296($fp)
	lw $t1, -4300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4304($fp)
	li $t0, 63939
	sw $t0, -4308($fp)
	lw $t0, -4304($fp)
	lw $t1, -4308($fp)
	mul $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -1936($fp)
	sw $t0, -4316($fp)
	lw $t0, -4312($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label219
label219:
	li $t0, 60505
	sw $t0, -4324($fp)
	lw $t0, -916($fp)
	sw $t0, -4328($fp)
	lw $t0, -2608($fp)
	sw $t0, -4332($fp)
	lw $t0, -4328($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t1, -4324($fp)
	lw $t2, -4336($fp)
	bgt $t1, $t2, label216
	j label217
label216:
	lw $t0, -2224($fp)
	sw $t0, -4340($fp)
	li $t0, 0
	lw $t1, -4340($fp)
	sub $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 0
	sw $t0, -4348($fp)
	li $t0, 0
	sw $t0, -4352($fp)
	lw $t0, -3436($fp)
	sw $t0, -4356($fp)
	lw $t1, -4356($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label229
label229:
	li $t0, 1
	sw $t0, -4352($fp)
label230:
	lw $t0, 16($fp)
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -4364($fp)
	addi $sp, $sp, -4
	lw $t0, -4364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4368($fp)
	addi $sp, $sp, 8
	lw $t0, -4352($fp)
	lw $t1, -4368($fp)
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	li $t0, 0
	lw $t1, -4372($fp)
	sub $t0, $t0, $t1
	sw $t0, -4376($fp)
	li $t0, 53565
	sw $t0, -4380($fp)
	lw $t0, -2020($fp)
	sw $t0, -4384($fp)
	lw $t0, -4380($fp)
	lw $t1, -4384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4388($fp)
	addi $sp, $sp, -4
	lw $t0, -4388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4392($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4392($fp)
	sub $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4376($fp)
	lw $t1, -4396($fp)
	sub $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t1, -4400($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label228:
	addi $t0, $fp, -3416
	sw $t0, -4404($fp)
	li $t0, 0
	sw $t0, -4408($fp)
	li $t0, 31860
	sw $t0, -4412($fp)
	li $t0, 39896
	sw $t0, -4416($fp)
	lw $t1, -4412($fp)
	lw $t2, -4416($fp)
	beq $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -4408($fp)
label232:
	li $t0, 4
	lw $t1, -4408($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -4348($fp)
label227:
	j label225
label224:
	li $t0, 0
	sw $t0, -4432($fp)
	li $t0, 20485
	sw $t0, -4436($fp)
	li $t0, 0
	sw $t0, -4440($fp)
	lw $t0, -3676($fp)
	sw $t0, -4444($fp)
	li $t0, 43008
	sw $t0, -4448($fp)
	lw $t0, -4444($fp)
	lw $t1, -4448($fp)
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	li $t0, 58747
	sw $t0, -4456($fp)
	lw $t1, -4452($fp)
	lw $t2, -4456($fp)
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -4440($fp)
label236:
	li $t0, 0
	sw $t0, -4460($fp)
	li $t0, 0
	sw $t0, -4464($fp)
	li $t0, 35281
	sw $t0, -4468($fp)
	lw $t1, -4468($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label239:
	li $t0, 1
	sw $t0, -4464($fp)
label240:
	lw $t0, -2812($fp)
	sw $t0, -4472($fp)
	lw $t1, -4464($fp)
	lw $t2, -4472($fp)
	beq $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -4460($fp)
label238:
	lw $t0, -1084($fp)
	sw $t0, -4476($fp)
	li $t0, 0
	sw $t0, -4480($fp)
	lw $t0, -2500($fp)
	sw $t0, -4484($fp)
	lw $t1, -4484($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -4480($fp)
label242:
	lw $t0, -2776($fp)
	sw $t0, -4488($fp)
	lw $t0, -4480($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	addi $sp, $sp, -4
	lw $t0, -4436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4496($fp)
	addi $sp, $sp, 24
	lw $t1, -4496($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -4432($fp)
label234:
label225:
	j label218
label217:
	li $t0, 0
	sw $t0, -4500($fp)
	li $t0, 0
	sw $t0, -4504($fp)
	li $t0, 11306
	sw $t0, -4508($fp)
	li $t0, 14780
	sw $t0, -4512($fp)
	lw $t1, -4508($fp)
	lw $t2, -4512($fp)
	bge $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -4504($fp)
label246:
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4516($fp)
	addi $sp, $sp, 8
	li $t0, 45285
	sw $t0, -4520($fp)
	li $t0, 19344
	sw $t0, -4524($fp)
	lw $t0, -4520($fp)
	lw $t1, -4524($fp)
	mul $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t1, -4516($fp)
	lw $t2, -4528($fp)
	blt $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -4500($fp)
label244:
label218:
label188:
	j label173
label175:
	addi $t0, $fp, -224
	sw $t0, -4532($fp)
	lw $t0, -3688($fp)
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
	li $t0, 60742
	sw $t0, -4552($fp)
	lw $t0, -4548($fp)
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	li $t0, 0
	sw $t0, -4560($fp)
	lw $t0, -3700($fp)
	sw $t0, -4564($fp)
	li $t0, 48010
	sw $t0, -4568($fp)
	lw $t0, -4564($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -2824($fp)
	sw $t0, -4576($fp)
	lw $t1, -4572($fp)
	lw $t2, -4576($fp)
	blt $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -4560($fp)
label251:
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4580($fp)
	addi $sp, $sp, 8
	lw $t0, -4556($fp)
	lw $t1, -4580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4584($fp)
	addi $t0, $fp, -100
	sw $t0, -4588($fp)
	li $t0, 0
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
	lw $t0, -4584($fp)
	lw $t1, -4604($fp)
	sub $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 5851
	sw $t0, -4612($fp)
	j label249
label248:
label252:
	lw $t0, -2728($fp)
	sw $t0, -4616($fp)
	lw $t1, -4616($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	addi $t0, $fp, -92
	sw $t0, -4620($fp)
	lw $t0, -3424($fp)
	sw $t0, -4624($fp)
	lw $t0, -1120($fp)
	sw $t0, -4628($fp)
	lw $t0, -4624($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	li $t0, 7734
	sw $t0, -4636($fp)
	lw $t0, -4632($fp)
	lw $t1, -4636($fp)
	sub $t0, $t0, $t1
	sw $t0, -4640($fp)
	li $t0, 4
	lw $t1, -4640($fp)
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	lw $t1, -4620($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, 0($t0)
	sw $t1, -4652($fp)
	li $t0, 0
	sw $t0, -4656($fp)
	lw $t0, -2344($fp)
	sw $t0, -4660($fp)
	li $t0, 0
	lw $t1, -4660($fp)
	sub $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t1, -4664($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label258
label258:
	li $t0, 1
	sw $t0, -4656($fp)
label259:
	lw $t0, -4652($fp)
	lw $t1, -4656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4668($fp)
	lw $t1, -4668($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
	addi $t0, $fp, -152
	sw $t0, -4672($fp)
	li $t0, 0
	sw $t0, -4676($fp)
	li $t0, 0
	sw $t0, -4680($fp)
	lw $t0, -1084($fp)
	sw $t0, -4684($fp)
	lw $t0, -2764($fp)
	sw $t0, -4688($fp)
	lw $t1, -4684($fp)
	lw $t2, -4688($fp)
	blt $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -4680($fp)
label263:
	lw $t0, -904($fp)
	sw $t0, -4692($fp)
	lw $t1, -4680($fp)
	lw $t2, -4692($fp)
	ble $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -4676($fp)
label261:
	li $t0, 4
	lw $t1, -4676($fp)
	mul $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	lw $t1, -4672($fp)
	add $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	lw $t1, 0($t0)
	sw $t1, -4704($fp)
	j label257
label256:
	li $t0, 0
	sw $t0, -4708($fp)
	addi $t0, $fp, -224
	sw $t0, -4712($fp)
	lw $t0, -1492($fp)
	sw $t0, -4716($fp)
	li $t0, 4
	lw $t1, -4716($fp)
	mul $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	lw $t1, -4712($fp)
	add $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	lw $t1, 0($t0)
	sw $t1, -4728($fp)
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4732($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4736($fp)
	li $t0, 0
	sw $t0, -4740($fp)
	li $t0, 0
	sw $t0, -4744($fp)
	li $t0, 42782
	sw $t0, -4748($fp)
	lw $t0, -2788($fp)
	sw $t0, -4752($fp)
	lw $t1, -4748($fp)
	lw $t2, -4752($fp)
	beq $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -4744($fp)
label271:
	lw $t0, -3640($fp)
	sw $t0, -4756($fp)
	lw $t1, -4744($fp)
	lw $t2, -4756($fp)
	beq $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -4740($fp)
label269:
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4760($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4764($fp)
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 48279
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -4768($fp)
label275:
	li $t0, 42206
	sw $t0, -4776($fp)
	lw $t1, -4768($fp)
	lw $t2, -4776($fp)
	bge $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -4764($fp)
label273:
	li $t0, 14576
	sw $t0, -4780($fp)
	addi $t0, $fp, -96
	sw $t0, -4784($fp)
	lw $t0, -3652($fp)
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
	addi $sp, $sp, -4
	lw $t0, -4800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4804($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4804($fp)
	sub $t0, $t0, $t1
	sw $t0, -4808($fp)
	addi $t0, $fp, -24
	sw $t0, -4812($fp)
	li $t0, 4
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
	addi $sp, $sp, -4
	lw $t0, -4760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4832($fp)
	addi $sp, $sp, 24
	lw $t1, -4832($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
	li $t0, 1
	sw $t0, -4736($fp)
label267:
	lw $t1, -4732($fp)
	lw $t2, -4736($fp)
	beq $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -4708($fp)
label265:
label257:
	j label252
label254:
label249:
	lw $t0, -3424($fp)
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3436($fp)
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -4844($fp)
	li $t0, 0
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
	lw $t0, -4860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -4864($fp)
	li $t0, 1
	sw $t0, -4868($fp)
	li $t0, 4
	lw $t1, -4868($fp)
	mul $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	lw $t1, -4864($fp)
	add $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	lw $t1, 0($t0)
	sw $t1, -4880($fp)
	lw $t0, -4880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -4884($fp)
	li $t0, 2
	sw $t0, -4888($fp)
	li $t0, 4
	lw $t1, -4888($fp)
	mul $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, -4884($fp)
	add $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	lw $t1, 0($t0)
	sw $t1, -4900($fp)
	lw $t0, -4900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -4904($fp)
	li $t0, 3
	sw $t0, -4908($fp)
	li $t0, 4
	lw $t1, -4908($fp)
	mul $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	lw $t1, -4904($fp)
	add $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	lw $t1, 0($t0)
	sw $t1, -4920($fp)
	lw $t0, -4920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -4924($fp)
	li $t0, 4
	sw $t0, -4928($fp)
	li $t0, 4
	lw $t1, -4928($fp)
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	lw $t1, -4924($fp)
	add $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	lw $t1, 0($t0)
	sw $t1, -4940($fp)
	lw $t0, -4940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -4944($fp)
	li $t0, 5
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
	lw $t0, -4960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -4964($fp)
	li $t0, 6
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
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -4984($fp)
	li $t0, 7
	sw $t0, -4988($fp)
	li $t0, 4
	lw $t1, -4988($fp)
	mul $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, -4984($fp)
	add $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, 0($t0)
	sw $t1, -5000($fp)
	lw $t0, -5000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3640($fp)
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3652($fp)
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3664($fp)
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3676($fp)
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3688($fp)
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3700($fp)
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 1714
	sw $t0, -5028($fp)
	li $t0, 0
	sw $t0, -5032($fp)
	li $t0, 57592
	sw $t0, -5036($fp)
	lw $t0, 8($fp)
	sw $t0, -5040($fp)
	lw $t0, -5036($fp)
	lw $t1, -5040($fp)
	sub $t0, $t0, $t1
	sw $t0, -5044($fp)
	li $t0, 65300
	sw $t0, -5048($fp)
	lw $t1, -5044($fp)
	lw $t2, -5048($fp)
	ble $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -5032($fp)
label277:
	li $t0, 0
	sw $t0, -5052($fp)
	lw $t0, -2548($fp)
	sw $t0, -5056($fp)
	lw $t1, -5056($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label278:
	li $t0, 1
	sw $t0, -5052($fp)
label279:
	lw $t0, -2800($fp)
	sw $t0, -5060($fp)
	lw $t0, -5052($fp)
	lw $t1, -5060($fp)
	mul $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -2596($fp)
	sw $t0, -5068($fp)
	lw $t0, -1096($fp)
	sw $t0, -5072($fp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5072($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5076($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -5080($fp)
	lw $t0, -940($fp)
	sw $t0, -5084($fp)
	addi $sp, $sp, -4
	lw $t0, -5084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5088($fp)
	addi $sp, $sp, 8
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -5080($fp)
label281:
	lw $t0, -5076($fp)
	lw $t1, -5080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5092($fp)
	lw $ra, -4($fp)
	lw $v0, -5092($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 9219
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	sw $t0, -5104($fp)
	li $t0, 62621
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	sw $t0, -5116($fp)
	li $t0, 117
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	li $t0, 4189
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -5140($fp)
	lw $t0, -940($fp)
	sw $t0, -5144($fp)
	lw $t1, -5144($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label285
label285:
	lw $t0, -2692($fp)
	sw $t0, -5148($fp)
	lw $t1, -5148($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
label286:
	addi $t0, $fp, -96
	sw $t0, -5152($fp)
	li $t0, 50650
	sw $t0, -5156($fp)
	lw $t0, -2344($fp)
	sw $t0, -5160($fp)
	lw $t0, -5156($fp)
	lw $t1, -5160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5164($fp)
	li $t0, 4
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, -5152($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, 0($t0)
	sw $t1, -5176($fp)
	addi $t0, $fp, -24
	sw $t0, -5180($fp)
	lw $t0, -3244($fp)
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
	li $t0, 31977
	sw $t0, -5200($fp)
	li $t0, 0
	lw $t1, -5200($fp)
	sub $t0, $t0, $t1
	sw $t0, -5204($fp)
	lw $t0, -5196($fp)
	lw $t1, -5204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5208($fp)
	lw $t0, -5176($fp)
	lw $t1, -5208($fp)
	sub $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t1, -5212($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	lw $t0, 16($fp)
	sw $t0, -5216($fp)
	li $t0, 44085
	sw $t0, -5220($fp)
	lw $t0, -5216($fp)
	lw $t1, -5220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5224($fp)
	lw $t0, -2800($fp)
	sw $t0, -5228($fp)
	lw $t0, -5224($fp)
	lw $t1, -5228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5232($fp)
	lw $t0, -976($fp)
	sw $t0, -5236($fp)
	li $t0, 0
	sw $t0, -5240($fp)
	lw $t0, -2356($fp)
	sw $t0, -5244($fp)
	lw $t1, -5244($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -5240($fp)
label293:
	lw $t0, -5236($fp)
	lw $t1, -5240($fp)
	mul $t0, $t0, $t1
	sw $t0, -5248($fp)
	li $t0, 0
	lw $t1, -5248($fp)
	sub $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5232($fp)
	lw $t1, -5252($fp)
	mul $t0, $t0, $t1
	sw $t0, -5256($fp)
	li $t0, 20395
	sw $t0, -5260($fp)
	lw $t0, -1492($fp)
	sw $t0, -5264($fp)
	lw $t0, -5260($fp)
	lw $t1, -5264($fp)
	add $t0, $t0, $t1
	sw $t0, -5268($fp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5272($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -5272($fp)
	sub $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t1, -5256($fp)
	lw $t2, -5276($fp)
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 0
	sw $t0, -5280($fp)
	li $t0, 0
	sw $t0, -5284($fp)
	li $t0, 0
	sw $t0, -5288($fp)
	li $t0, 9450
	sw $t0, -5292($fp)
	li $t0, 0
	sw $t0, -5296($fp)
	lw $t0, -2728($fp)
	sw $t0, -5300($fp)
	li $t0, 0
	lw $t1, -5300($fp)
	sub $t0, $t0, $t1
	sw $t0, -5304($fp)
	li $t0, 37297
	sw $t0, -5308($fp)
	lw $t1, -5304($fp)
	lw $t2, -5308($fp)
	blt $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -5296($fp)
label301:
	addi $sp, $sp, -4
	lw $t0, -5296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5312($fp)
	addi $sp, $sp, 8
	lw $t1, -5292($fp)
	lw $t2, -5312($fp)
	bge $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -5288($fp)
label299:
	lw $t0, -2320($fp)
	sw $t0, -5316($fp)
	li $t0, 40881
	sw $t0, -5320($fp)
	lw $t0, -5316($fp)
	lw $t1, -5320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5324($fp)
	lw $t0, -1072($fp)
	sw $t0, -5328($fp)
	lw $t0, -5324($fp)
	lw $t1, -5328($fp)
	sub $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t1, -5288($fp)
	lw $t2, -5332($fp)
	ble $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -5284($fp)
label297:
	addi $t0, $fp, -96
	sw $t0, -5336($fp)
	lw $t0, 8($fp)
	sw $t0, -5340($fp)
	li $t0, 4
	lw $t1, -5340($fp)
	mul $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	lw $t1, -5336($fp)
	add $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	lw $t1, 0($t0)
	sw $t1, -5352($fp)
	lw $t0, -1024($fp)
	sw $t0, -5356($fp)
	lw $t0, -2932($fp)
	sw $t0, -5360($fp)
	lw $t0, -5356($fp)
	lw $t1, -5360($fp)
	mul $t0, $t0, $t1
	sw $t0, -5364($fp)
	li $t0, 40100
	sw $t0, -5368($fp)
	lw $t0, -5364($fp)
	lw $t1, -5368($fp)
	mul $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -2500($fp)
	sw $t0, -5376($fp)
	li $t0, 20630
	sw $t0, -5380($fp)
	lw $t0, -5376($fp)
	lw $t1, -5380($fp)
	mul $t0, $t0, $t1
	sw $t0, -5384($fp)
	li $t0, 0
	lw $t1, -5384($fp)
	sub $t0, $t0, $t1
	sw $t0, -5388($fp)
	li $t0, 0
	sw $t0, -5392($fp)
	lw $t0, -5136($fp)
	sw $t0, -5396($fp)
	lw $t1, -5396($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label302:
	li $t0, 1
	sw $t0, -5392($fp)
label303:
	li $t0, 52077
	sw $t0, -5400($fp)
	lw $t0, -5392($fp)
	lw $t1, -5400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5404($fp)
	li $t0, 20756
	sw $t0, -5408($fp)
	addi $sp, $sp, -4
	lw $t0, -5352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5412($fp)
	addi $sp, $sp, 24
	lw $t1, -5284($fp)
	lw $t2, -5412($fp)
	ble $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -5280($fp)
label295:
	j label291
label290:
	li $t0, 47283
	sw $t0, -5416($fp)
label291:
	j label286
label288:
	j label284
label283:
	li $t0, 0
	sw $t0, -5420($fp)
	lw $t0, -2572($fp)
	sw $t0, -5424($fp)
	lw $t1, -5424($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label305
label307:
	addi $t0, $fp, -52
	sw $t0, -5428($fp)
	li $t0, 3
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
	lw $t1, -5444($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label306:
	li $t0, 4069
	sw $t0, -5448($fp)
	li $t0, 33781
	sw $t0, -5452($fp)
	lw $t0, -5448($fp)
	lw $t1, -5452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5456($fp)
	li $t0, 0
	lw $t1, -5456($fp)
	sub $t0, $t0, $t1
	sw $t0, -5460($fp)
	addi $sp, $sp, -4
	lw $t0, -5460($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5464($fp)
	addi $sp, $sp, 8
	li $t0, 53089
	sw $t0, -5468($fp)
	li $t0, 0
	lw $t1, -5468($fp)
	sub $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t1, -5464($fp)
	lw $t2, -5472($fp)
	bgt $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -5420($fp)
label305:
	lw $ra, -4($fp)
	lw $v0, -5420($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label284:
	lw $t0, -5100($fp)
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5112($fp)
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5124($fp)
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5136($fp)
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5492($fp)
	addi $t0, $fp, -92
	sw $t0, -5496($fp)
	li $t0, 7
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
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 1
	sw $t0, -5492($fp)
label309:
	lw $ra, -4($fp)
	lw $v0, -5492($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 5161
	sw $t0, -5516($fp)
	lw $t0, -2320($fp)
	sw $t0, -5520($fp)
	lw $t0, -5516($fp)
	lw $t1, -5520($fp)
	mul $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -2344($fp)
	sw $t0, -5528($fp)
	lw $t0, -5524($fp)
	lw $t1, -5528($fp)
	mul $t0, $t0, $t1
	sw $t0, -5532($fp)
	li $t0, 0
	lw $t1, -5532($fp)
	sub $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -5540($fp)
	lw $t0, -2332($fp)
	sw $t0, -5544($fp)
	addi $t0, $fp, -100
	sw $t0, -5548($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -5568($fp)
	li $t0, 0
	sw $t0, -5572($fp)
	li $t0, 0
	sw $t0, -5576($fp)
	lw $t0, -2788($fp)
	sw $t0, -5580($fp)
	li $t0, 49726
	sw $t0, -5584($fp)
	lw $t1, -5580($fp)
	lw $t2, -5584($fp)
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -5576($fp)
label315:
	lw $t0, -940($fp)
	sw $t0, -5588($fp)
	lw $t1, -5576($fp)
	lw $t2, -5588($fp)
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -5572($fp)
label313:
	li $t0, 0
	sw $t0, -5592($fp)
	lw $t0, -1120($fp)
	sw $t0, -5596($fp)
	li $t0, 0
	lw $t1, -5596($fp)
	sub $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t1, -5600($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label316:
	li $t0, 1
	sw $t0, -5592($fp)
label317:
	addi $t0, $fp, -24
	sw $t0, -5604($fp)
	li $t0, 4
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
	lw $t0, -2272($fp)
	sw $t0, -5624($fp)
	lw $t0, -5620($fp)
	lw $t1, -5624($fp)
	sub $t0, $t0, $t1
	sw $t0, -5628($fp)
	li $t0, 0
	sw $t0, -5632($fp)
	li $t0, 5456
	sw $t0, -5636($fp)
	li $t0, 5889
	sw $t0, -5640($fp)
	lw $t0, -5636($fp)
	lw $t1, -5640($fp)
	mul $t0, $t0, $t1
	sw $t0, -5644($fp)
	li $t0, 29331
	sw $t0, -5648($fp)
	lw $t1, -5644($fp)
	lw $t2, -5648($fp)
	blt $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -5632($fp)
label319:
	li $t0, 0
	sw $t0, -5652($fp)
	li $t0, 1700
	sw $t0, -5656($fp)
	lw $t1, -5656($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label323:
	lw $t0, -3256($fp)
	sw $t0, -5660($fp)
	lw $t1, -5660($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label322
label322:
	li $t0, 44216
	sw $t0, -5664($fp)
	lw $t1, -5664($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -5652($fp)
label321:
	li $t0, 0
	sw $t0, -5668($fp)
	addi $t0, $fp, -192
	sw $t0, -5672($fp)
	li $t0, 3
	sw $t0, -5676($fp)
	li $t0, 4
	lw $t1, -5676($fp)
	mul $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	lw $t1, -5672($fp)
	add $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	lw $t1, 0($t0)
	sw $t1, -5688($fp)
	lw $t0, -1132($fp)
	sw $t0, -5692($fp)
	lw $t1, -5688($fp)
	lw $t2, -5692($fp)
	blt $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -5668($fp)
label325:
	addi $sp, $sp, -4
	lw $t0, -5592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5668($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5696($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -92
	sw $t0, -5700($fp)
	lw $t0, -1120($fp)
	sw $t0, -5704($fp)
	li $t0, 4
	lw $t1, -5704($fp)
	mul $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	lw $t1, -5700($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	lw $t1, 0($t0)
	sw $t1, -5716($fp)
	li $t0, 58017
	sw $t0, -5720($fp)
	lw $t0, -5716($fp)
	lw $t1, -5720($fp)
	mul $t0, $t0, $t1
	sw $t0, -5724($fp)
	li $t0, 0
	sw $t0, -5728($fp)
	li $t0, 47367
	sw $t0, -5732($fp)
	li $t0, 3625
	sw $t0, -5736($fp)
	lw $t0, -5732($fp)
	lw $t1, -5736($fp)
	sub $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -1492($fp)
	sw $t0, -5744($fp)
	lw $t1, -5740($fp)
	lw $t2, -5744($fp)
	ble $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -5728($fp)
label327:
	li $t0, 0
	sw $t0, -5748($fp)
	lw $t0, -5124($fp)
	sw $t0, -5752($fp)
	lw $t0, -868($fp)
	sw $t0, -5756($fp)
	lw $t1, -5752($fp)
	lw $t2, -5756($fp)
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -5748($fp)
label329:
	addi $sp, $sp, -4
	lw $t0, -5572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5748($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5760($fp)
	addi $sp, $sp, 24
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label310:
	li $t0, 1
	sw $t0, -5568($fp)
label311:
	lw $t0, -5564($fp)
	lw $t1, -5568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5764($fp)
	li $t0, 0
	lw $t1, -5764($fp)
	sub $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5544($fp)
	lw $t1, -5768($fp)
	mul $t0, $t0, $t1
	sw $t0, -5772($fp)
	li $t0, 0
	sw $t0, -5776($fp)
	lw $t0, -940($fp)
	sw $t0, -5780($fp)
	lw $t1, -5780($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label332:
	lw $t0, -2236($fp)
	sw $t0, -5784($fp)
	lw $t0, -2824($fp)
	sw $t0, -5788($fp)
	lw $t1, -5784($fp)
	lw $t2, -5788($fp)
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -5776($fp)
label331:
	lw $ra, -4($fp)
	lw $v0, -5776($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 46884
	sw $t0, -5792($fp)
	li $t0, 0
	sw $t0, -5796($fp)
	li $t0, 45701
	sw $t0, -5800($fp)
	lw $t0, -2020($fp)
	sw $t0, -5804($fp)
	lw $t0, -5800($fp)
	lw $t1, -5804($fp)
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t1, -5808($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label337
label338:
	li $t0, 42205
	sw $t0, -5812($fp)
	lw $t1, -5812($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -5796($fp)
label337:
	li $t0, 0
	sw $t0, -5816($fp)
	lw $t0, -928($fp)
	sw $t0, -5820($fp)
	li $t0, 0
	lw $t1, -5820($fp)
	sub $t0, $t0, $t1
	sw $t0, -5824($fp)
	li $t0, 8277
	sw $t0, -5828($fp)
	lw $t1, -5824($fp)
	lw $t2, -5828($fp)
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -5816($fp)
label340:
	li $t0, 0
	sw $t0, -5832($fp)
	li $t0, 2104
	sw $t0, -5836($fp)
	lw $t1, -5836($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label343:
	lw $t0, -2236($fp)
	sw $t0, -5840($fp)
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -5832($fp)
label342:
	li $t0, 0
	sw $t0, -5844($fp)
	li $t0, 21736
	sw $t0, -5848($fp)
	lw $t1, -5848($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label344:
	li $t0, 1
	sw $t0, -5844($fp)
label345:
	li $t0, 25071
	sw $t0, -5852($fp)
	lw $t0, -5844($fp)
	lw $t1, -5852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5856($fp)
	lw $t0, -2248($fp)
	sw $t0, -5860($fp)
	li $t0, 0
	lw $t1, -5860($fp)
	sub $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -1108($fp)
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	addi $sp, $sp, -4
	lw $t0, -5796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5876($fp)
	addi $sp, $sp, 24
	li $t0, 55561
	sw $t0, -5880($fp)
	lw $t0, -5876($fp)
	lw $t1, -5880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5884($fp)
	addi $sp, $sp, -4
	lw $t0, -5884($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5888($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -5888($fp)
	sub $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t1, -5792($fp)
	lw $t2, -5892($fp)
	beq $t1, $t2, label333
	j label334
label333:
	li $t0, 0
	sw $t0, -5896($fp)
	lw $t0, -5100($fp)
	sw $t0, -5900($fp)
	li $t0, 48806
	sw $t0, -5904($fp)
	lw $t0, -5900($fp)
	lw $t1, -5904($fp)
	add $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -2020($fp)
	sw $t0, -5912($fp)
	lw $t0, -5908($fp)
	lw $t1, -5912($fp)
	add $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t1, -5916($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label348:
	li $t0, 23907
	sw $t0, -5920($fp)
	li $t0, 0
	lw $t1, -5920($fp)
	sub $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $t1, -5924($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -5896($fp)
label347:
	lw $t0, -5896($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -5928($fp)
	j label335
label334:
	lw $t0, -940($fp)
	sw $t0, -5932($fp)
	li $t0, 59630
	sw $t0, -5936($fp)
	addi $sp, $sp, -4
	lw $t0, -5936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5940($fp)
	addi $sp, $sp, 8
	lw $t0, -5932($fp)
	lw $t1, -5940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5944($fp)
	lw $t0, -5112($fp)
	sw $t0, -5948($fp)
	lw $t0, -5944($fp)
	lw $t1, -5948($fp)
	add $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $ra, -4($fp)
	lw $v0, -5952($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label335:
	j label130
label132:
	li $t0, 0
	sw $t0, -5956($fp)
	li $t0, 0
	sw $t0, -5960($fp)
	lw $t0, -2032($fp)
	sw $t0, -5964($fp)
	li $t0, 0
	sw $t0, -5968($fp)
	li $t0, 0
	sw $t0, -5972($fp)
	lw $t0, -988($fp)
	sw $t0, -5976($fp)
	lw $t1, -5976($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label356
label357:
	li $t0, 34732
	sw $t0, -5980($fp)
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -5972($fp)
label356:
	li $t0, 0
	sw $t0, -5984($fp)
	lw $t0, 12($fp)
	sw $t0, -5988($fp)
	lw $t0, -904($fp)
	sw $t0, -5992($fp)
	lw $t1, -5988($fp)
	lw $t2, -5992($fp)
	bgt $t1, $t2, label360
	j label359
label360:
	li $t0, 5897
	sw $t0, -5996($fp)
	lw $t1, -5996($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -5984($fp)
label359:
	li $t0, 11460
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -6004($fp)
	li $t0, 17051
	sw $t0, -6008($fp)
	addi $t0, $fp, -52
	sw $t0, -6012($fp)
	lw $t0, -2584($fp)
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
	addi $sp, $sp, -4
	lw $t0, -5972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6028($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6032($fp)
	addi $sp, $sp, 24
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -5968($fp)
label354:
	lw $t1, -5964($fp)
	lw $t2, -5968($fp)
	bge $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -5960($fp)
label352:
	addi $t0, $fp, -3028
	sw $t0, -6036($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -6056($fp)
	li $t0, 35157
	sw $t0, -6060($fp)
	lw $t1, -6060($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label361
label361:
	li $t0, 1
	sw $t0, -6056($fp)
label362:
	lw $t0, -6052($fp)
	lw $t1, -6056($fp)
	sub $t0, $t0, $t1
	sw $t0, -6064($fp)
	lw $t1, -5960($fp)
	lw $t2, -6064($fp)
	bgt $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -5956($fp)
label350:
	lw $ra, -4($fp)
	lw $v0, -5956($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6068($fp)
	addi $t0, $fp, -3028
	sw $t0, -6072($fp)
	li $t0, 0
	sw $t0, -6076($fp)
	lw $t0, -856($fp)
	sw $t0, -6080($fp)
	lw $t0, -2032($fp)
	sw $t0, -6084($fp)
	lw $t0, -6080($fp)
	lw $t1, -6084($fp)
	mul $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t1, -6088($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label368:
	li $t0, 63989
	sw $t0, -6092($fp)
	lw $t1, -6092($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -6076($fp)
label367:
	li $t0, 4
	lw $t1, -6076($fp)
	mul $t0, $t0, $t1
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	lw $t1, -6072($fp)
	add $t0, $t0, $t1
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	lw $t1, 0($t0)
	sw $t1, -6104($fp)
	lw $t1, -6104($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label365:
	li $t0, 35901
	sw $t0, -6108($fp)
	li $t0, 0
	sw $t0, -6112($fp)
	lw $t0, -1060($fp)
	sw $t0, -6116($fp)
	lw $t1, -6116($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label369
label369:
	li $t0, 1
	sw $t0, -6112($fp)
label370:
	lw $t1, -6108($fp)
	lw $t2, -6112($fp)
	blt $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -6068($fp)
label364:
	addi $t0, $fp, -3028
	sw $t0, -6120($fp)
	li $t0, 0
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
	addi $t0, $fp, -3028
	sw $t0, -6140($fp)
	li $t0, 1
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
	addi $t0, $fp, -3028
	sw $t0, -6160($fp)
	li $t0, 2
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
	addi $t0, $fp, -3028
	sw $t0, -6180($fp)
	li $t0, 3
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
	addi $t0, $fp, -3028
	sw $t0, -6200($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -6220($fp)
	addi $t0, $fp, -92
	sw $t0, -6224($fp)
	lw $t0, -2224($fp)
	sw $t0, -6228($fp)
	li $t0, 4
	lw $t1, -6228($fp)
	mul $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	lw $t1, -6224($fp)
	add $t0, $t0, $t1
	sw $t0, -6236($fp)
	lw $t0, -6236($fp)
	lw $t1, 0($t0)
	sw $t1, -6240($fp)
	lw $t1, -6240($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label373:
	lw $t0, -2284($fp)
	sw $t0, -6244($fp)
	lw $t0, -2296($fp)
	sw $t0, -6248($fp)
	lw $t1, -6244($fp)
	lw $t2, -6248($fp)
	bgt $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -6220($fp)
label372:
	lw $t0, -6220($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -6252($fp)
	lw $ra, -4($fp)
	lw $v0, -6252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label127:
	li $t0, 27638
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	sw $t0, -6264($fp)
	li $t0, 45585
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	sw $t0, -6272($fp)
	lw $t0, -6272($fp)
	sw $t0, -6276($fp)
	li $t0, 41241
	sw $t0, -6288($fp)
	lw $t0, -6288($fp)
	sw $t0, -6292($fp)
	lw $t0, -6292($fp)
	sw $t0, -6296($fp)
	li $t0, 29338
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	sw $t0, -6308($fp)
	li $t0, 24265
	sw $t0, -6312($fp)
	lw $t0, -6312($fp)
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	sw $t0, -6320($fp)
	li $t0, 46697
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	sw $t0, -6328($fp)
	lw $t0, -6328($fp)
	sw $t0, -6332($fp)
	li $t0, 35228
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	sw $t0, -6344($fp)
	li $t0, 53596
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	sw $t0, -6356($fp)
	li $t0, 18595
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	sw $t0, -6368($fp)
	li $t0, 19667
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	sw $t0, -6380($fp)
	li $t0, 37787
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	sw $t0, -6392($fp)
	li $t0, 65479
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	sw $t0, -6404($fp)
	li $t0, 41403
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	sw $t0, -6416($fp)
	li $t0, 62858
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	sw $t0, -6428($fp)
	li $t0, 2048
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	sw $t0, -6440($fp)
	li $t0, 49680
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	sw $t0, -6452($fp)
	li $t0, 43024
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	sw $t0, -6464($fp)
	li $t0, 44253
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	sw $t0, -6476($fp)
	li $t0, 39705
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	sw $t0, -6488($fp)
	li $t0, 26294
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	sw $t0, -6500($fp)
	li $t0, 2624
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	sw $t0, -6512($fp)
	li $t0, 33799
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	sw $t0, -6524($fp)
	li $t0, 43345
	sw $t0, -6528($fp)
	lw $t0, -6528($fp)
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	sw $t0, -6536($fp)
	li $t0, 14084
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	sw $t0, -6548($fp)
	li $t0, 39696
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	sw $t0, -6560($fp)
	li $t0, 12542
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	sw $t0, -6572($fp)
	li $t0, 30706
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	sw $t0, -6584($fp)
	li $t0, 6436
	sw $t0, -6588($fp)
	addi $t0, $fp, -6284
	sw $t0, -6592($fp)
	li $t0, 0
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
	li $t0, 47699
	sw $t0, -6612($fp)
	addi $t0, $fp, -6284
	sw $t0, -6616($fp)
	li $t0, 1
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
	li $t0, 29160
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	sw $t0, -6676($fp)
	li $t0, 42338
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	sw $t0, -6688($fp)
	li $t0, 9801
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	sw $t0, -6700($fp)
	li $t0, 9209
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	sw $t0, -6712($fp)
	li $t0, 18043
	sw $t0, -6716($fp)
	addi $t0, $fp, -6664
	sw $t0, -6720($fp)
	li $t0, 0
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6720($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6716($fp)
	lw $t1, -6732($fp)
	sw $t0, 0($t1)
	lw $t0, -6732($fp)
	lw $t1, 0($t0)
	sw $t1, -6736($fp)
	li $t0, 39139
	sw $t0, -6740($fp)
	addi $t0, $fp, -6664
	sw $t0, -6744($fp)
	li $t0, 1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t0, -6744($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6740($fp)
	lw $t1, -6756($fp)
	sw $t0, 0($t1)
	lw $t0, -6756($fp)
	lw $t1, 0($t0)
	sw $t1, -6760($fp)
	li $t0, 33474
	sw $t0, -6764($fp)
	addi $t0, $fp, -6664
	sw $t0, -6768($fp)
	li $t0, 2
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6776($fp)
	lw $t0, -6768($fp)
	lw $t1, -6776($fp)
	add $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t0, -6764($fp)
	lw $t1, -6780($fp)
	sw $t0, 0($t1)
	lw $t0, -6780($fp)
	lw $t1, 0($t0)
	sw $t1, -6784($fp)
	li $t0, 64740
	sw $t0, -6788($fp)
	addi $t0, $fp, -6664
	sw $t0, -6792($fp)
	li $t0, 3
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t0, -6792($fp)
	lw $t1, -6800($fp)
	add $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6788($fp)
	lw $t1, -6804($fp)
	sw $t0, 0($t1)
	lw $t0, -6804($fp)
	lw $t1, 0($t0)
	sw $t1, -6808($fp)
	li $t0, 8831
	sw $t0, -6812($fp)
	addi $t0, $fp, -6664
	sw $t0, -6816($fp)
	li $t0, 4
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6816($fp)
	lw $t1, -6824($fp)
	add $t0, $t0, $t1
	sw $t0, -6828($fp)
	lw $t0, -6812($fp)
	lw $t1, -6828($fp)
	sw $t0, 0($t1)
	lw $t0, -6828($fp)
	lw $t1, 0($t0)
	sw $t1, -6832($fp)
	li $t0, 21535
	sw $t0, -6836($fp)
	addi $t0, $fp, -6664
	sw $t0, -6840($fp)
	li $t0, 5
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t0, -6840($fp)
	lw $t1, -6848($fp)
	add $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t0, -6836($fp)
	lw $t1, -6852($fp)
	sw $t0, 0($t1)
	lw $t0, -6852($fp)
	lw $t1, 0($t0)
	sw $t1, -6856($fp)
	li $t0, 17800
	sw $t0, -6860($fp)
	addi $t0, $fp, -6664
	sw $t0, -6864($fp)
	li $t0, 6
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6864($fp)
	lw $t1, -6872($fp)
	add $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6860($fp)
	lw $t1, -6876($fp)
	sw $t0, 0($t1)
	lw $t0, -6876($fp)
	lw $t1, 0($t0)
	sw $t1, -6880($fp)
	li $t0, 28498
	sw $t0, -6884($fp)
	addi $t0, $fp, -6664
	sw $t0, -6888($fp)
	li $t0, 7
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6888($fp)
	lw $t1, -6896($fp)
	add $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6884($fp)
	lw $t1, -6900($fp)
	sw $t0, 0($t1)
	lw $t0, -6900($fp)
	lw $t1, 0($t0)
	sw $t1, -6904($fp)
	li $t0, 59322
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	sw $t0, -6916($fp)
	li $t0, 17743
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	sw $t0, -6928($fp)
	li $t0, 4365
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	sw $t0, -6940($fp)
	li $t0, 56644
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	sw $t0, -6952($fp)
	li $t0, 19791
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	sw $t0, -6964($fp)
	li $t0, 54046
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	sw $t0, -6976($fp)
	li $t0, 34132
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	sw $t0, -6988($fp)
	li $t0, 64044
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	sw $t0, -7000($fp)
	li $t0, 28215
	sw $t0, -7012($fp)
	lw $t0, -7012($fp)
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	sw $t0, -7020($fp)
	li $t0, 60426
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	sw $t0, -7032($fp)
	li $t0, 1132
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	sw $t0, -7044($fp)
	li $t0, 62015
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	sw $t0, -7056($fp)
	li $t0, 38236
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	sw $t0, -7068($fp)
	li $t0, 15217
	sw $t0, -7072($fp)
	addi $t0, $fp, -7008
	sw $t0, -7076($fp)
	li $t0, 0
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7084($fp)
	lw $t0, -7076($fp)
	lw $t1, -7084($fp)
	add $t0, $t0, $t1
	sw $t0, -7088($fp)
	lw $t0, -7072($fp)
	lw $t1, -7088($fp)
	sw $t0, 0($t1)
	lw $t0, -7088($fp)
	lw $t1, 0($t0)
	sw $t1, -7092($fp)
	li $t0, 36175
	sw $t0, -7096($fp)
	addi $t0, $fp, -7008
	sw $t0, -7100($fp)
	li $t0, 1
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -7100($fp)
	lw $t1, -7108($fp)
	add $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t0, -7096($fp)
	lw $t1, -7112($fp)
	sw $t0, 0($t1)
	lw $t0, -7112($fp)
	lw $t1, 0($t0)
	sw $t1, -7116($fp)
	li $t0, 50778
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	sw $t0, -7128($fp)
	li $t0, 0
	sw $t0, -7132($fp)
	li $t0, 45923
	sw $t0, -7136($fp)
	li $t0, 42612
	sw $t0, -7140($fp)
	li $t0, 32941
	sw $t0, -7144($fp)
	lw $t0, -7140($fp)
	lw $t1, -7144($fp)
	mul $t0, $t0, $t1
	sw $t0, -7148($fp)
	lw $t1, -7136($fp)
	lw $t2, -7148($fp)
	ble $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -7132($fp)
label375:
	li $t0, 0
	sw $t0, -7152($fp)
	li $t0, 9547
	sw $t0, -7156($fp)
	lw $t0, -6924($fp)
	sw $t0, -7160($fp)
	lw $t0, -7156($fp)
	lw $t1, -7160($fp)
	mul $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -940($fp)
	sw $t0, -7168($fp)
	lw $t0, -7164($fp)
	lw $t1, -7168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7172($fp)
	lw $t1, -7172($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label377
label378:
	li $t0, 19414
	sw $t0, -7176($fp)
	li $t0, 42742
	sw $t0, -7180($fp)
	lw $t0, -7176($fp)
	lw $t1, -7180($fp)
	add $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t1, -7184($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -7152($fp)
label377:
	lw $t0, -7152($fp)
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	sw $t0, -7188($fp)
	li $t0, 18756
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -7196($fp)
	addi $sp, $sp, -4
	lw $t0, -7196($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7200($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -7200($fp)
	sub $t0, $t0, $t1
	sw $t0, -7204($fp)
	li $t0, 0
	sw $t0, -7208($fp)
	li $t0, 37457
	sw $t0, -7212($fp)
	li $t0, 0
	lw $t1, -7212($fp)
	sub $t0, $t0, $t1
	sw $t0, -7216($fp)
	li $t0, 0
	lw $t1, -7216($fp)
	sub $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t1, -7220($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label379
label379:
	li $t0, 1
	sw $t0, -7208($fp)
label380:
	lw $t0, -7204($fp)
	lw $t1, -7208($fp)
	sub $t0, $t0, $t1
	sw $t0, -7224($fp)
	li $t0, 0
	sw $t0, -7228($fp)
	lw $t0, -880($fp)
	sw $t0, -7232($fp)
	li $t0, 0
	lw $t1, -7232($fp)
	sub $t0, $t0, $t1
	sw $t0, -7236($fp)
	li $t0, 25177
	sw $t0, -7240($fp)
	lw $t1, -7236($fp)
	lw $t2, -7240($fp)
	blt $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -7228($fp)
label382:
	li $t0, 0
	sw $t0, -7244($fp)
	li $t0, 0
	sw $t0, -7248($fp)
	lw $t0, -844($fp)
	sw $t0, -7252($fp)
	li $t0, 36661
	sw $t0, -7256($fp)
	lw $t1, -7252($fp)
	lw $t2, -7256($fp)
	ble $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -7248($fp)
label386:
	lw $t0, -6292($fp)
	sw $t0, -7260($fp)
	lw $t1, -7248($fp)
	lw $t2, -7260($fp)
	bne $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -7244($fp)
label384:
	li $t0, 52231
	sw $t0, -7264($fp)
	li $t0, 16345
	sw $t0, -7268($fp)
	li $t0, 0
	lw $t1, -7268($fp)
	sub $t0, $t0, $t1
	sw $t0, -7272($fp)
	li $t0, 0
	lw $t1, -7272($fp)
	sub $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t0, -868($fp)
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	sw $t0, -7284($fp)
	addi $sp, $sp, -4
	lw $t0, -7228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7284($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7288($fp)
	addi $sp, $sp, 24
	lw $t0, -1132($fp)
	sw $t0, -7292($fp)
	lw $t0, -7288($fp)
	lw $t1, -7292($fp)
	sub $t0, $t0, $t1
	sw $t0, -7296($fp)
	addi $sp, $sp, -4
	lw $t0, -7296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7300($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7304($fp)
	li $t0, 0
	sw $t0, -7308($fp)
	li $t0, 8230
	sw $t0, -7312($fp)
	li $t0, 54461
	sw $t0, -7316($fp)
	lw $t1, -7312($fp)
	lw $t2, -7316($fp)
	beq $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -7308($fp)
label390:
	lw $t0, -2548($fp)
	sw $t0, -7320($fp)
	lw $t1, -7308($fp)
	lw $t2, -7320($fp)
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -7304($fp)
label388:
	addi $sp, $sp, -4
	lw $t0, -7304($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7324($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7328($fp)
	li $t0, 0
	sw $t0, -7332($fp)
	li $t0, 0
	sw $t0, -7336($fp)
	li $t0, 53675
	sw $t0, -7340($fp)
	addi $sp, $sp, -4
	lw $t0, -7340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7344($fp)
	addi $sp, $sp, 8
	lw $t0, -2740($fp)
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -7352($fp)
	addi $sp, $sp, -4
	lw $t0, -7352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7356($fp)
	addi $sp, $sp, 8
	lw $t0, -7028($fp)
	sw $t0, -7360($fp)
	lw $t0, -7356($fp)
	lw $t1, -7360($fp)
	add $t0, $t0, $t1
	sw $t0, -7364($fp)
	li $t0, 0
	sw $t0, -7368($fp)
	lw $t0, -2692($fp)
	sw $t0, -7372($fp)
	lw $t0, -2572($fp)
	sw $t0, -7376($fp)
	lw $t0, -7372($fp)
	lw $t1, -7376($fp)
	add $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t1, -7380($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label399
label399:
	li $t0, 24969
	sw $t0, -7384($fp)
	lw $t1, -7384($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -7368($fp)
label398:
	lw $t0, -6532($fp)
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -7392($fp)
	li $t0, 0
	sw $t0, -7396($fp)
	li $t0, 0
	sw $t0, -7400($fp)
	lw $t0, -7124($fp)
	sw $t0, -7404($fp)
	lw $t1, -7404($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label402:
	li $t0, 1
	sw $t0, -7400($fp)
label403:
	li $t0, 27257
	sw $t0, -7408($fp)
	lw $t1, -7400($fp)
	lw $t2, -7408($fp)
	ble $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -7396($fp)
label401:
	li $t0, 0
	sw $t0, -7412($fp)
	li $t0, 26460
	sw $t0, -7416($fp)
	lw $t0, -6520($fp)
	sw $t0, -7420($fp)
	lw $t1, -7416($fp)
	lw $t2, -7420($fp)
	ble $t1, $t2, label404
	j label406
label406:
	li $t0, 46551
	sw $t0, -7424($fp)
	lw $t1, -7424($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -7412($fp)
label405:
	li $t0, 0
	sw $t0, -7428($fp)
	addi $t0, $fp, -6664
	sw $t0, -7432($fp)
	li $t0, 4
	sw $t0, -7436($fp)
	li $t0, 4
	lw $t1, -7436($fp)
	mul $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	lw $t1, -7432($fp)
	add $t0, $t0, $t1
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	lw $t1, 0($t0)
	sw $t1, -7448($fp)
	lw $t1, -7448($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label409
label409:
	lw $t0, -2608($fp)
	sw $t0, -7452($fp)
	lw $t1, -7452($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -7428($fp)
label408:
	addi $sp, $sp, -4
	lw $t0, -7428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7456($fp)
	addi $sp, $sp, 8
	li $t0, 6669
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -7464($fp)
	li $t0, 0
	sw $t0, -7468($fp)
	lw $t0, -2560($fp)
	sw $t0, -7472($fp)
	lw $t1, -7472($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label410:
	li $t0, 1
	sw $t0, -7468($fp)
label411:
	lw $t0, -6508($fp)
	sw $t0, -7476($fp)
	lw $t0, -7468($fp)
	lw $t1, -7476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7480($fp)
	addi $sp, $sp, -4
	lw $t0, -7396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7480($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7484($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -7488($fp)
	li $t0, 2016
	sw $t0, -7492($fp)
	li $t0, 0
	lw $t1, -7492($fp)
	sub $t0, $t0, $t1
	sw $t0, -7496($fp)
	lw $t1, -7496($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label412:
	li $t0, 1
	sw $t0, -7488($fp)
label413:
	addi $sp, $sp, -4
	lw $t0, -7364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7488($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7500($fp)
	addi $sp, $sp, 24
	lw $t1, -7344($fp)
	lw $t2, -7500($fp)
	ble $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -7336($fp)
label396:
	addi $t0, $fp, -52
	sw $t0, -7504($fp)
	lw $t0, -2260($fp)
	sw $t0, -7508($fp)
	li $t0, 4
	lw $t1, -7508($fp)
	mul $t0, $t0, $t1
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	lw $t1, -7504($fp)
	add $t0, $t0, $t1
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	lw $t1, 0($t0)
	sw $t1, -7520($fp)
	li $t0, 0
	lw $t1, -7520($fp)
	sub $t0, $t0, $t1
	sw $t0, -7524($fp)
	li $t0, 0
	sw $t0, -7528($fp)
	lw $t0, -2812($fp)
	sw $t0, -7532($fp)
	lw $t0, -2704($fp)
	sw $t0, -7536($fp)
	lw $t0, -7532($fp)
	lw $t1, -7536($fp)
	sub $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t1, -7540($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label416:
	li $t0, 35883
	sw $t0, -7544($fp)
	lw $t1, -7544($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -7528($fp)
label415:
	li $t0, 0
	sw $t0, -7548($fp)
	li $t0, 36705
	sw $t0, -7552($fp)
	li $t0, 46957
	sw $t0, -7556($fp)
	lw $t1, -7552($fp)
	lw $t2, -7556($fp)
	bgt $t1, $t2, label419
	j label418
label419:
	li $t0, 31759
	sw $t0, -7560($fp)
	lw $t1, -7560($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -7548($fp)
label418:
	li $t0, 0
	sw $t0, -7564($fp)
	lw $t0, -6340($fp)
	sw $t0, -7568($fp)
	li $t0, 10296
	sw $t0, -7572($fp)
	lw $t0, -7568($fp)
	lw $t1, -7572($fp)
	sub $t0, $t0, $t1
	sw $t0, -7576($fp)
	li $t0, 0
	sw $t0, -7580($fp)
	li $t0, 0
	sw $t0, -7584($fp)
	lw $t0, -6496($fp)
	sw $t0, -7588($fp)
	li $t0, 50010
	sw $t0, -7592($fp)
	lw $t1, -7588($fp)
	lw $t2, -7592($fp)
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -7584($fp)
label425:
	lw $t0, -2296($fp)
	sw $t0, -7596($fp)
	lw $t1, -7584($fp)
	lw $t2, -7596($fp)
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -7580($fp)
label423:
	li $t0, 0
	sw $t0, -7600($fp)
	li $t0, 31253
	sw $t0, -7604($fp)
	lw $t1, -7604($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label428
label429:
	li $t0, 38375
	sw $t0, -7608($fp)
	lw $t1, -7608($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label428
label428:
	li $t0, 55772
	sw $t0, -7612($fp)
	lw $t1, -7612($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -7600($fp)
label427:
	li $t0, 0
	sw $t0, -7616($fp)
	li $t0, 13030
	sw $t0, -7620($fp)
	lw $t0, -2272($fp)
	sw $t0, -7624($fp)
	lw $t0, -7620($fp)
	lw $t1, -7624($fp)
	mul $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -2284($fp)
	sw $t0, -7632($fp)
	lw $t1, -7628($fp)
	lw $t2, -7632($fp)
	bge $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -7616($fp)
label431:
	li $t0, 0
	sw $t0, -7636($fp)
	lw $t0, -6376($fp)
	sw $t0, -7640($fp)
	lw $t1, -7640($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -7636($fp)
label433:
	addi $sp, $sp, -4
	lw $t0, -7576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7636($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7644($fp)
	addi $sp, $sp, 24
	lw $t0, -7064($fp)
	sw $t0, -7648($fp)
	lw $t0, -7644($fp)
	lw $t1, -7648($fp)
	add $t0, $t0, $t1
	sw $t0, -7652($fp)
	li $t0, 0
	sw $t0, -7656($fp)
	lw $t0, -2344($fp)
	sw $t0, -7660($fp)
	lw $t1, -7660($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label435
label437:
	li $t0, 21706
	sw $t0, -7664($fp)
	lw $t1, -7664($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label436:
	li $t0, 18961
	sw $t0, -7668($fp)
	lw $t1, -7668($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -7656($fp)
label435:
	li $t0, 41885
	sw $t0, -7672($fp)
	lw $t0, -7052($fp)
	sw $t0, -7676($fp)
	lw $t0, -7672($fp)
	lw $t1, -7676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7680($fp)
	li $t0, 45625
	sw $t0, -7684($fp)
	lw $t0, -7680($fp)
	lw $t1, -7684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7688($fp)
	li $t0, 41318
	sw $t0, -7692($fp)
	li $t0, 60383
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -7700($fp)
	addi $sp, $sp, -4
	lw $t0, -7652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7700($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7704($fp)
	addi $sp, $sp, 24
	li $t0, 6582
	sw $t0, -7708($fp)
	lw $t1, -7704($fp)
	lw $t2, -7708($fp)
	bge $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -7564($fp)
label421:
	addi $t0, $fp, -152
	sw $t0, -7712($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -7732($fp)
	lw $t0, -2584($fp)
	sw $t0, -7736($fp)
	lw $t1, -7736($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label438:
	li $t0, 1
	sw $t0, -7732($fp)
label439:
	lw $t0, -6352($fp)
	sw $t0, -7740($fp)
	lw $t0, -7040($fp)
	sw $t0, -7744($fp)
	lw $t0, -7740($fp)
	lw $t1, -7744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7748($fp)
	lw $t0, -6316($fp)
	sw $t0, -7752($fp)
	lw $t0, -7748($fp)
	lw $t1, -7752($fp)
	sub $t0, $t0, $t1
	sw $t0, -7756($fp)
	addi $sp, $sp, -4
	lw $t0, -7548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7756($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7760($fp)
	addi $sp, $sp, 24
	li $t0, 44935
	sw $t0, -7764($fp)
	lw $t0, -7760($fp)
	lw $t1, -7764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7768($fp)
	li $t0, 0
	sw $t0, -7772($fp)
	lw $t0, -988($fp)
	sw $t0, -7776($fp)
	lw $t0, -892($fp)
	sw $t0, -7780($fp)
	lw $t0, -7776($fp)
	lw $t1, -7780($fp)
	sub $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t1, -7784($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label442
label442:
	lw $t0, -6304($fp)
	sw $t0, -7788($fp)
	lw $t1, -7788($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -7772($fp)
label441:
	li $t0, 0
	sw $t0, -7792($fp)
	li $t0, 0
	sw $t0, -7796($fp)
	li $t0, 9230
	sw $t0, -7800($fp)
	li $t0, 22147
	sw $t0, -7804($fp)
	lw $t1, -7800($fp)
	lw $t2, -7804($fp)
	blt $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -7796($fp)
label446:
	lw $t0, -880($fp)
	sw $t0, -7808($fp)
	lw $t1, -7796($fp)
	lw $t2, -7808($fp)
	blt $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -7792($fp)
label444:
	addi $sp, $sp, -4
	lw $t0, -7524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7792($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7812($fp)
	addi $sp, $sp, 24
	lw $t0, -6496($fp)
	sw $t0, -7816($fp)
	lw $t0, -7812($fp)
	lw $t1, -7816($fp)
	mul $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t1, -7336($fp)
	lw $t2, -7820($fp)
	ble $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -7332($fp)
label394:
	addi $t0, $fp, -7008
	sw $t0, -7824($fp)
	lw $t0, -1480($fp)
	sw $t0, -7828($fp)
	lw $t0, -2812($fp)
	sw $t0, -7832($fp)
	lw $t0, -7828($fp)
	lw $t1, -7832($fp)
	mul $t0, $t0, $t1
	sw $t0, -7836($fp)
	li $t0, 4
	lw $t1, -7836($fp)
	mul $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	lw $t1, -7824($fp)
	add $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	lw $t1, 0($t0)
	sw $t1, -7848($fp)
	lw $t1, -7332($fp)
	lw $t2, -7848($fp)
	blt $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -7328($fp)
label392:
label447:
	li $t0, 0
	sw $t0, -7852($fp)
	lw $t0, -6924($fp)
	sw $t0, -7856($fp)
	lw $t1, -7856($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label452:
	li $t0, 1
	sw $t0, -7852($fp)
label453:
	lw $t0, -2824($fp)
	sw $t0, -7860($fp)
	lw $t0, -7852($fp)
	lw $t1, -7860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7864($fp)
	li $t0, 0
	sw $t0, -7868($fp)
	li $t0, 0
	sw $t0, -7872($fp)
	li $t0, 28445
	sw $t0, -7876($fp)
	lw $t1, -7876($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label456
label456:
	li $t0, 1
	sw $t0, -7872($fp)
label457:
	li $t0, 2649
	sw $t0, -7880($fp)
	lw $t1, -7872($fp)
	lw $t2, -7880($fp)
	beq $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -7868($fp)
label455:
	li $t0, 58954
	sw $t0, -7884($fp)
	li $t0, 1796
	sw $t0, -7888($fp)
	lw $t0, -7884($fp)
	lw $t1, -7888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7892($fp)
	li $t0, 0
	lw $t1, -7892($fp)
	sub $t0, $t0, $t1
	sw $t0, -7896($fp)
	lw $t0, 4($fp)
	sw $t0, -7900($fp)
	lw $t0, -2344($fp)
	sw $t0, -7904($fp)
	lw $t0, -7900($fp)
	lw $t1, -7904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7908($fp)
	li $t0, 3476
	sw $t0, -7912($fp)
	lw $t0, -7908($fp)
	lw $t1, -7912($fp)
	add $t0, $t0, $t1
	sw $t0, -7916($fp)
	li $t0, 0
	sw $t0, -7920($fp)
	lw $t0, -2560($fp)
	sw $t0, -7924($fp)
	lw $t1, -7924($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label461
label461:
	li $t0, 40075
	sw $t0, -7928($fp)
	lw $t1, -7928($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label460
label460:
	lw $t0, -6912($fp)
	sw $t0, -7932($fp)
	lw $t1, -7932($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -7920($fp)
label459:
	addi $t0, $fp, -6664
	sw $t0, -7936($fp)
	lw $t0, -2692($fp)
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
	li $t0, 12403
	sw $t0, -7956($fp)
	lw $t0, -7952($fp)
	lw $t1, -7956($fp)
	add $t0, $t0, $t1
	sw $t0, -7960($fp)
	li $t0, 0
	sw $t0, -7964($fp)
	lw $t0, 8($fp)
	sw $t0, -7968($fp)
	li $t0, 46951
	sw $t0, -7972($fp)
	lw $t0, -7968($fp)
	lw $t1, -7972($fp)
	add $t0, $t0, $t1
	sw $t0, -7976($fp)
	li $t0, 42552
	sw $t0, -7980($fp)
	lw $t1, -7976($fp)
	lw $t2, -7980($fp)
	bge $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -7964($fp)
label463:
	addi $sp, $sp, -4
	lw $t0, -7896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7964($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7984($fp)
	addi $sp, $sp, 24
	lw $t0, -2272($fp)
	sw $t0, -7988($fp)
	lw $t0, -2332($fp)
	sw $t0, -7992($fp)
	lw $t0, -7988($fp)
	lw $t1, -7992($fp)
	sub $t0, $t0, $t1
	sw $t0, -7996($fp)
	li $t0, 0
	sw $t0, -8000($fp)
	li $t0, 19898
	sw $t0, -8004($fp)
	lw $t0, -1060($fp)
	sw $t0, -8008($fp)
	lw $t1, -8004($fp)
	lw $t2, -8008($fp)
	beq $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -8000($fp)
label465:
	addi $sp, $sp, -4
	lw $t0, -7864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8000($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8012($fp)
	addi $sp, $sp, 24
	lw $t1, -8012($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label449
label451:
	lw $t0, -6448($fp)
	sw $t0, -8016($fp)
	li $t0, 23944
	sw $t0, -8020($fp)
	lw $t0, -8016($fp)
	lw $t1, -8020($fp)
	add $t0, $t0, $t1
	sw $t0, -8024($fp)
	li $t0, 54547
	sw $t0, -8028($fp)
	lw $t1, -8024($fp)
	lw $t2, -8028($fp)
	bne $t1, $t2, label450
	j label449
label450:
	addi $t0, $fp, -308
	sw $t0, -8032($fp)
	li $t0, 3
	sw $t0, -8036($fp)
	li $t0, 4
	lw $t1, -8036($fp)
	mul $t0, $t0, $t1
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	lw $t1, -8032($fp)
	add $t0, $t0, $t1
	sw $t0, -8044($fp)
	lw $t0, -8044($fp)
	lw $t1, 0($t0)
	sw $t1, -8048($fp)
	lw $t1, -8048($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
label466:
	li $t0, 0
	sw $t0, -8052($fp)
	lw $t0, -2308($fp)
	sw $t0, -8056($fp)
	li $t0, 30329
	sw $t0, -8060($fp)
	li $t0, 0
	lw $t1, -8060($fp)
	sub $t0, $t0, $t1
	sw $t0, -8064($fp)
	lw $t0, -8056($fp)
	lw $t1, -8064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8068($fp)
	li $t0, 0
	lw $t1, -8068($fp)
	sub $t0, $t0, $t1
	sw $t0, -8072($fp)
	li $t0, 50243
	sw $t0, -8076($fp)
	li $t0, 1
	sw $t0, -8080($fp)
	lw $t0, -8076($fp)
	lw $t1, -8080($fp)
	mul $t0, $t0, $t1
	sw $t0, -8084($fp)
	lw $t1, -8072($fp)
	lw $t2, -8084($fp)
	bge $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -8052($fp)
label470:
	li $t0, 0
	sw $t0, -8088($fp)
	li $t0, 17753
	sw $t0, -8092($fp)
	lw $t1, -8092($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label473
label473:
	li $t0, 42043
	sw $t0, -8096($fp)
	lw $t1, -8096($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -8088($fp)
label472:
	li $t0, 11911
	sw $t0, -8100($fp)
	li $t0, 0
	lw $t1, -8100($fp)
	sub $t0, $t0, $t1
	sw $t0, -8104($fp)
	li $t0, 0
	lw $t1, -8104($fp)
	sub $t0, $t0, $t1
	sw $t0, -8108($fp)
	lw $t0, -904($fp)
	sw $t0, -8112($fp)
	lw $t0, -8112($fp)
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	sw $t0, -8116($fp)
	lw $t0, -1060($fp)
	sw $t0, -8120($fp)
	li $t0, 0
	sw $t0, -8124($fp)
	li $t0, 52035
	sw $t0, -8128($fp)
	lw $t1, -8128($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label474
label474:
	li $t0, 1
	sw $t0, -8124($fp)
label475:
	li $t0, 3668
	sw $t0, -8132($fp)
	lw $t0, -8124($fp)
	lw $t1, -8132($fp)
	add $t0, $t0, $t1
	sw $t0, -8136($fp)
	addi $sp, $sp, -4
	lw $t0, -8088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8136($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8140($fp)
	addi $sp, $sp, 24
	li $t0, 2148
	sw $t0, -8144($fp)
	lw $t0, -2932($fp)
	sw $t0, -8148($fp)
	lw $t0, -8144($fp)
	lw $t1, -8148($fp)
	mul $t0, $t0, $t1
	sw $t0, -8152($fp)
	lw $t0, -8140($fp)
	lw $t1, -8152($fp)
	add $t0, $t0, $t1
	sw $t0, -8156($fp)
	lw $t1, -8052($fp)
	lw $t2, -8156($fp)
	bgt $t1, $t2, label467
	j label468
label467:
label476:
	li $t0, 0
	sw $t0, -8160($fp)
	li $t0, 2227
	sw $t0, -8164($fp)
	lw $t1, -8164($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label479:
	li $t0, 1
	sw $t0, -8160($fp)
label480:
	li $t0, 52339
	sw $t0, -8168($fp)
	lw $t0, -8160($fp)
	lw $t1, -8168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8172($fp)
	li $t0, 0
	sw $t0, -8176($fp)
	lw $t0, -2344($fp)
	sw $t0, -8180($fp)
	lw $t1, -8180($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label481
label481:
	li $t0, 1
	sw $t0, -8176($fp)
label482:
	lw $t0, -8172($fp)
	lw $t1, -8176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8184($fp)
	li $t0, 0
	sw $t0, -8188($fp)
	li $t0, 8730
	sw $t0, -8192($fp)
	li $t0, 0
	lw $t1, -8192($fp)
	sub $t0, $t0, $t1
	sw $t0, -8196($fp)
	lw $t1, -8196($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label483
label483:
	li $t0, 1
	sw $t0, -8188($fp)
label484:
	lw $t0, -8184($fp)
	lw $t1, -8188($fp)
	mul $t0, $t0, $t1
	sw $t0, -8200($fp)
	addi $t0, $fp, -6284
	sw $t0, -8204($fp)
	li $t0, 1
	sw $t0, -8208($fp)
	li $t0, 4
	lw $t1, -8208($fp)
	mul $t0, $t0, $t1
	sw $t0, -8212($fp)
	lw $t0, -8212($fp)
	lw $t1, -8204($fp)
	add $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t0, -8216($fp)
	lw $t1, 0($t0)
	sw $t1, -8220($fp)
	lw $t0, -2716($fp)
	sw $t0, -8224($fp)
	lw $t0, -8220($fp)
	lw $t1, -8224($fp)
	mul $t0, $t0, $t1
	sw $t0, -8228($fp)
	addi $sp, $sp, -4
	lw $t0, -8228($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8232($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -8232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8236($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8240($fp)
	li $t0, 2057
	sw $t0, -8244($fp)
	lw $t0, -1108($fp)
	sw $t0, -8248($fp)
	lw $t0, -8244($fp)
	lw $t1, -8248($fp)
	sub $t0, $t0, $t1
	sw $t0, -8252($fp)
	lw $t0, -1492($fp)
	sw $t0, -8256($fp)
	lw $t1, -8252($fp)
	lw $t2, -8256($fp)
	beq $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -8240($fp)
label486:
	addi $t0, $fp, -92
	sw $t0, -8260($fp)
	lw $t0, -6972($fp)
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
	li $t0, 26
	sw $t0, -8280($fp)
	lw $t0, -8276($fp)
	lw $t1, -8280($fp)
	sub $t0, $t0, $t1
	sw $t0, -8284($fp)
	addi $sp, $sp, -4
	lw $t0, -8284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8288($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8292($fp)
	li $t0, 41618
	sw $t0, -8296($fp)
	li $t0, 13046
	sw $t0, -8300($fp)
	lw $t0, -8296($fp)
	lw $t1, -8300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8304($fp)
	lw $t1, -8304($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label489:
	li $t0, 3322
	sw $t0, -8308($fp)
	lw $t1, -8308($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -8292($fp)
label488:
	li $t0, 0
	sw $t0, -8312($fp)
	li $t0, 0
	sw $t0, -8316($fp)
	li $t0, 39821
	sw $t0, -8320($fp)
	li $t0, 50136
	sw $t0, -8324($fp)
	lw $t1, -8320($fp)
	lw $t2, -8324($fp)
	beq $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -8316($fp)
label493:
	li $t0, 673
	sw $t0, -8328($fp)
	lw $t1, -8316($fp)
	lw $t2, -8328($fp)
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -8312($fp)
label491:
	li $t0, 0
	sw $t0, -8332($fp)
	li $t0, 7255
	sw $t0, -8336($fp)
	li $t0, 0
	lw $t1, -8336($fp)
	sub $t0, $t0, $t1
	sw $t0, -8340($fp)
	lw $t0, -2812($fp)
	sw $t0, -8344($fp)
	lw $t1, -8340($fp)
	lw $t2, -8344($fp)
	ble $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -8332($fp)
label495:
	addi $sp, $sp, -4
	lw $t0, -8240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8332($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8348($fp)
	addi $sp, $sp, 24
	li $t0, 11681
	sw $t0, -8352($fp)
	lw $t0, -8348($fp)
	lw $t1, -8352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8356($fp)
	li $t0, 0
	sw $t0, -8360($fp)
	addi $t0, $fp, -92
	sw $t0, -8364($fp)
	li $t0, 8
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
	li $t0, 0
	lw $t1, -8380($fp)
	sub $t0, $t0, $t1
	sw $t0, -8384($fp)
	addi $sp, $sp, -4
	lw $t0, -8384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8388($fp)
	addi $sp, $sp, 8
	li $t0, 46660
	sw $t0, -8392($fp)
	lw $t1, -8388($fp)
	lw $t2, -8392($fp)
	ble $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -8360($fp)
label497:
	li $t0, 0
	sw $t0, -8396($fp)
	li $t0, 0
	sw $t0, -8400($fp)
	lw $t0, -6996($fp)
	sw $t0, -8404($fp)
	lw $t1, -8404($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label501
label503:
	li $t0, 4108
	sw $t0, -8408($fp)
	lw $t1, -8408($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -8400($fp)
label502:
	addi $sp, $sp, -4
	lw $t0, -8400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8412($fp)
	addi $sp, $sp, 8
	lw $t1, -8412($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label500
label500:
	lw $t0, 20($fp)
	sw $t0, -8416($fp)
	lw $t1, -8416($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -8396($fp)
label499:
	li $t0, 0
	sw $t0, -8420($fp)
	li $t0, 40489
	sw $t0, -8424($fp)
	li $t0, 0
	lw $t1, -8424($fp)
	sub $t0, $t0, $t1
	sw $t0, -8428($fp)
	li $t0, 18331
	sw $t0, -8432($fp)
	lw $t1, -8428($fp)
	lw $t2, -8432($fp)
	bge $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -8420($fp)
label505:
	addi $t0, $fp, -52
	sw $t0, -8436($fp)
	lw $t0, -868($fp)
	sw $t0, -8440($fp)
	li $t0, 4
	lw $t1, -8440($fp)
	mul $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t0, -8444($fp)
	lw $t1, -8436($fp)
	add $t0, $t0, $t1
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	lw $t1, 0($t0)
	sw $t1, -8452($fp)
	addi $sp, $sp, -4
	lw $t0, -8356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8452($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8456($fp)
	addi $sp, $sp, 24
	lw $t0, -8236($fp)
	lw $t1, -8456($fp)
	mul $t0, $t0, $t1
	sw $t0, -8460($fp)
	lw $t1, -8200($fp)
	lw $t2, -8460($fp)
	bne $t1, $t2, label477
	j label478
label477:
	addi $t0, $fp, -260
	sw $t0, -8464($fp)
	lw $t0, -2560($fp)
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	sw $t0, -8472($fp)
	li $t0, 4
	lw $t1, -8472($fp)
	mul $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	lw $t1, -8464($fp)
	add $t0, $t0, $t1
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	lw $t1, 0($t0)
	sw $t1, -8484($fp)
	li $t0, 0
	sw $t0, -8488($fp)
	li $t0, 18817
	sw $t0, -8492($fp)
	lw $t1, -8492($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -8488($fp)
label510:
	lw $t0, -844($fp)
	sw $t0, -8496($fp)
	li $t0, 32386
	sw $t0, -8500($fp)
	lw $t0, -8496($fp)
	lw $t1, -8500($fp)
	mul $t0, $t0, $t1
	sw $t0, -8504($fp)
	lw $t0, -8488($fp)
	lw $t1, -8504($fp)
	sub $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t1, -8484($fp)
	lw $t2, -8508($fp)
	ble $t1, $t2, label506
	j label507
label506:
label511:
	li $t0, 0
	sw $t0, -8512($fp)
	lw $t0, -2776($fp)
	sw $t0, -8516($fp)
	lw $t0, -8516($fp)
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	sw $t0, -8520($fp)
	li $t0, 0
	sw $t0, -8524($fp)
	li $t0, 0
	sw $t0, -8528($fp)
	li $t0, 29610
	sw $t0, -8532($fp)
	lw $t1, -8532($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label518
label518:
	li $t0, 1
	sw $t0, -8528($fp)
label519:
	lw $t0, -2764($fp)
	sw $t0, -8536($fp)
	lw $t1, -8528($fp)
	lw $t2, -8536($fp)
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -8524($fp)
label517:
	li $t0, 0
	sw $t0, -8540($fp)
	li $t0, 57
	sw $t0, -8544($fp)
	lw $t0, -2512($fp)
	sw $t0, -8548($fp)
	lw $t0, -8544($fp)
	lw $t1, -8548($fp)
	sub $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -6568($fp)
	sw $t0, -8556($fp)
	lw $t1, -8552($fp)
	lw $t2, -8556($fp)
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -8540($fp)
label521:
	li $t0, 0
	sw $t0, -8560($fp)
	lw $t0, -6672($fp)
	sw $t0, -8564($fp)
	li $t0, 17698
	sw $t0, -8568($fp)
	lw $t1, -8564($fp)
	lw $t2, -8568($fp)
	beq $t1, $t2, label522
	j label524
label524:
	li $t0, 18886
	sw $t0, -8572($fp)
	lw $t1, -8572($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -8560($fp)
label523:
	lw $t0, -2704($fp)
	sw $t0, -8576($fp)
	li $t0, 61924
	sw $t0, -8580($fp)
	lw $t0, -8576($fp)
	lw $t1, -8580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8584($fp)
	addi $sp, $sp, -4
	lw $t0, -8520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8584($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8588($fp)
	addi $sp, $sp, 24
	lw $t1, -8588($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -8512($fp)
label515:
	lw $t0, -8512($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -8592($fp)
	lw $t1, -8592($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 36639
	sw $t0, -8596($fp)
	addi $t0, $fp, -292
	sw $t0, -8600($fp)
	lw $t0, -2020($fp)
	sw $t0, -8604($fp)
	li $t0, 4
	lw $t1, -8604($fp)
	mul $t0, $t0, $t1
	sw $t0, -8608($fp)
	lw $t0, -8608($fp)
	lw $t1, -8600($fp)
	add $t0, $t0, $t1
	sw $t0, -8612($fp)
	lw $t0, -8612($fp)
	lw $t1, 0($t0)
	sw $t1, -8616($fp)
	li $t0, 0
	lw $t1, -8616($fp)
	sub $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t1, -8596($fp)
	lw $t2, -8620($fp)
	ble $t1, $t2, label525
	j label528
label528:
	li $t0, 0
	sw $t0, -8624($fp)
	li $t0, 42100
	sw $t0, -8628($fp)
	lw $t0, -6580($fp)
	sw $t0, -8632($fp)
	lw $t1, -8628($fp)
	lw $t2, -8632($fp)
	ble $t1, $t2, label531
	j label530
label531:
	lw $t0, -1120($fp)
	sw $t0, -8636($fp)
	lw $t1, -8636($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -8624($fp)
label530:
	addi $sp, $sp, -4
	lw $t0, -8624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8640($fp)
	addi $sp, $sp, 8
	lw $t0, -6948($fp)
	sw $t0, -8644($fp)
	lw $t0, -8640($fp)
	lw $t1, -8644($fp)
	add $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t1, -8648($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 28904
	sw $t0, -8652($fp)
	lw $t0, -8652($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -8656($fp)
	lw $t0, -6260($fp)
	sw $t0, -8660($fp)
	li $t0, 0
	sw $t0, -8664($fp)
	lw $t0, -6972($fp)
	sw $t0, -8668($fp)
	lw $t0, -8668($fp)
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	sw $t0, -8672($fp)
	addi $sp, $sp, -4
	lw $t0, -8672($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8676($fp)
	addi $sp, $sp, 8
	li $t0, 38866
	sw $t0, -8680($fp)
	lw $t1, -8676($fp)
	lw $t2, -8680($fp)
	bgt $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -8664($fp)
label533:
	lw $t0, -2524($fp)
	sw $t0, -8684($fp)
	li $t0, 0
	lw $t1, -8684($fp)
	sub $t0, $t0, $t1
	sw $t0, -8688($fp)
	li $t0, 0
	lw $t1, -8688($fp)
	sub $t0, $t0, $t1
	sw $t0, -8692($fp)
	li $t0, 31758
	sw $t0, -8696($fp)
	li $t0, 0
	lw $t1, -8696($fp)
	sub $t0, $t0, $t1
	sw $t0, -8700($fp)
	addi $sp, $sp, -4
	lw $t0, -8656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8700($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8704($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8708($fp)
	li $t0, 0
	sw $t0, -8712($fp)
	addi $t0, $fp, -100
	sw $t0, -8716($fp)
	li $t0, 0
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
	lw $t1, -8732($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label538
label539:
	lw $t0, -988($fp)
	sw $t0, -8736($fp)
	lw $t1, -8736($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
	li $t0, 1
	sw $t0, -8712($fp)
label538:
	li $t0, 0
	sw $t0, -8740($fp)
	lw $t0, -6388($fp)
	sw $t0, -8744($fp)
	lw $t1, -8744($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label540
label540:
	li $t0, 1
	sw $t0, -8740($fp)
label541:
	addi $t0, $fp, -224
	sw $t0, -8748($fp)
	li $t0, 1
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
	li $t0, 17547
	sw $t0, -8768($fp)
	lw $t0, -8764($fp)
	lw $t1, -8768($fp)
	add $t0, $t0, $t1
	sw $t0, -8772($fp)
	addi $t0, $fp, -280
	sw $t0, -8776($fp)
	lw $t0, -1024($fp)
	sw $t0, -8780($fp)
	li $t0, 4
	lw $t1, -8780($fp)
	mul $t0, $t0, $t1
	sw $t0, -8784($fp)
	lw $t0, -8784($fp)
	lw $t1, -8776($fp)
	add $t0, $t0, $t1
	sw $t0, -8788($fp)
	lw $t0, -8788($fp)
	lw $t1, 0($t0)
	sw $t1, -8792($fp)
	li $t0, 10292
	sw $t0, -8796($fp)
	lw $t0, -8792($fp)
	lw $t1, -8796($fp)
	sub $t0, $t0, $t1
	sw $t0, -8800($fp)
	lw $t0, -2812($fp)
	sw $t0, -8804($fp)
	li $t0, 30593
	sw $t0, -8808($fp)
	lw $t0, -8804($fp)
	lw $t1, -8808($fp)
	sub $t0, $t0, $t1
	sw $t0, -8812($fp)
	li $t0, 1237
	sw $t0, -8816($fp)
	lw $t0, -8812($fp)
	lw $t1, -8816($fp)
	add $t0, $t0, $t1
	sw $t0, -8820($fp)
	addi $sp, $sp, -4
	lw $t0, -8712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8820($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8824($fp)
	addi $sp, $sp, 24
	lw $t1, -8824($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label536
label536:
	li $t0, 18221
	sw $t0, -8828($fp)
	lw $t1, -8828($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -8708($fp)
label535:
	li $t0, 0
	sw $t0, -8832($fp)
	lw $t0, -6936($fp)
	sw $t0, -8836($fp)
	lw $t1, -8836($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label542:
	li $t0, 1
	sw $t0, -8832($fp)
label543:
	li $t0, 15441
	sw $t0, -8840($fp)
	lw $t0, -8832($fp)
	lw $t1, -8840($fp)
	sub $t0, $t0, $t1
	sw $t0, -8844($fp)
	li $t0, 62665
	sw $t0, -8848($fp)
	li $t0, 0
	sw $t0, -8852($fp)
	lw $t0, -1060($fp)
	sw $t0, -8856($fp)
	lw $t1, -8856($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label545
label547:
	li $t0, 12262
	sw $t0, -8860($fp)
	lw $t1, -8860($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label545
label546:
	lw $t0, -6364($fp)
	sw $t0, -8864($fp)
	lw $t1, -8864($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -8852($fp)
label545:
	li $t0, 0
	sw $t0, -8868($fp)
	li $t0, 0
	sw $t0, -8872($fp)
	lw $t0, -2800($fp)
	sw $t0, -8876($fp)
	li $t0, 40488
	sw $t0, -8880($fp)
	lw $t1, -8876($fp)
	lw $t2, -8880($fp)
	ble $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -8872($fp)
label551:
	lw $t0, -2572($fp)
	sw $t0, -8884($fp)
	lw $t1, -8872($fp)
	lw $t2, -8884($fp)
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -8868($fp)
label549:
	addi $sp, $sp, -4
	lw $t0, -8708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8868($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8888($fp)
	addi $sp, $sp, 24
	lw $t0, -8704($fp)
	lw $t1, -8888($fp)
	sub $t0, $t0, $t1
	sw $t0, -8892($fp)
	j label527
label526:
	li $t0, 46242
	sw $t0, -8896($fp)
	li $t0, 0
	lw $t1, -8896($fp)
	sub $t0, $t0, $t1
	sw $t0, -8900($fp)
	li $t0, 45543
	sw $t0, -8904($fp)
	lw $t0, -8900($fp)
	lw $t1, -8904($fp)
	sub $t0, $t0, $t1
	sw $t0, -8908($fp)
label527:
	j label511
label513:
	j label508
label507:
	li $t0, 0
	sw $t0, -8912($fp)
	li $t0, 0
	sw $t0, -8916($fp)
	li $t0, 0
	sw $t0, -8920($fp)
	li $t0, 21543
	sw $t0, -8924($fp)
	li $t0, 0
	lw $t1, -8924($fp)
	sub $t0, $t0, $t1
	sw $t0, -8928($fp)
	lw $t1, -8928($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label557:
	li $t0, 1
	sw $t0, -8920($fp)
label558:
	lw $t0, -1060($fp)
	sw $t0, -8932($fp)
	lw $t0, -6684($fp)
	sw $t0, -8936($fp)
	lw $t0, -8932($fp)
	lw $t1, -8936($fp)
	add $t0, $t0, $t1
	sw $t0, -8940($fp)
	lw $t1, -8920($fp)
	lw $t2, -8940($fp)
	bgt $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -8916($fp)
label556:
	li $t0, 46268
	sw $t0, -8944($fp)
	li $t0, 1
	sw $t0, -8948($fp)
	lw $t0, -8944($fp)
	lw $t1, -8948($fp)
	mul $t0, $t0, $t1
	sw $t0, -8952($fp)
	lw $t0, -1132($fp)
	sw $t0, -8956($fp)
	lw $t0, -8952($fp)
	lw $t1, -8956($fp)
	sub $t0, $t0, $t1
	sw $t0, -8960($fp)
	lw $t1, -8916($fp)
	lw $t2, -8960($fp)
	bge $t1, $t2, label554
	j label553
label554:
	li $t0, 33224
	sw $t0, -8964($fp)
	lw $t0, -1072($fp)
	sw $t0, -8968($fp)
	lw $t0, -8964($fp)
	lw $t1, -8968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8972($fp)
	li $t0, 65086
	sw $t0, -8976($fp)
	lw $t0, -8972($fp)
	lw $t1, -8976($fp)
	mul $t0, $t0, $t1
	sw $t0, -8980($fp)
	lw $t0, -2788($fp)
	sw $t0, -8984($fp)
	lw $t1, -8980($fp)
	lw $t2, -8984($fp)
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -8912($fp)
label553:
label508:
	j label476
label478:
	j label466
label468:
	j label447
label449:
	li $t0, 0
	sw $t0, -8988($fp)
	lw $t0, -6496($fp)
	sw $t0, -8992($fp)
	lw $t1, -8992($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -8988($fp)
label563:
	li $t0, 14451
	sw $t0, -8996($fp)
	lw $t0, -8988($fp)
	lw $t1, -8996($fp)
	mul $t0, $t0, $t1
	sw $t0, -9000($fp)
	lw $t0, -2788($fp)
	sw $t0, -9004($fp)
	lw $t0, -868($fp)
	sw $t0, -9008($fp)
	lw $t0, -9004($fp)
	lw $t1, -9008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9012($fp)
	addi $sp, $sp, -4
	lw $t0, -9012($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9016($fp)
	addi $sp, $sp, 8
	lw $t0, -9000($fp)
	lw $t1, -9016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9020($fp)
	lw $t1, -9020($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 0
	sw $t0, -9024($fp)
	lw $t0, -1084($fp)
	sw $t0, -9028($fp)
	li $t0, 29613
	sw $t0, -9032($fp)
	lw $t0, -9028($fp)
	lw $t1, -9032($fp)
	add $t0, $t0, $t1
	sw $t0, -9036($fp)
	lw $t1, -9036($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label566
label566:
	li $t0, 17248
	sw $t0, -9040($fp)
	lw $t1, -9040($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -9024($fp)
label565:
	addi $sp, $sp, -4
	lw $t0, -9024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9044($fp)
	addi $sp, $sp, 8
	li $t0, 33337
	sw $t0, -9048($fp)
	lw $t0, -9044($fp)
	lw $t1, -9048($fp)
	add $t0, $t0, $t1
	sw $t0, -9052($fp)
	li $t0, 29670
	sw $t0, -9056($fp)
	lw $t0, -9052($fp)
	lw $t1, -9056($fp)
	sub $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $ra, -4($fp)
	lw $v0, -9060($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label561
label560:
label567:
	lw $t0, -6948($fp)
	sw $t0, -9064($fp)
	lw $t0, -6696($fp)
	sw $t0, -9068($fp)
	lw $t0, -9064($fp)
	lw $t1, -9068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9072($fp)
	li $t0, 46858
	sw $t0, -9076($fp)
	lw $t0, -9072($fp)
	lw $t1, -9076($fp)
	mul $t0, $t0, $t1
	sw $t0, -9080($fp)
	li $t0, 4440
	sw $t0, -9084($fp)
	lw $t0, -9080($fp)
	lw $t1, -9084($fp)
	sub $t0, $t0, $t1
	sw $t0, -9088($fp)
	li $t0, 3473
	sw $t0, -9092($fp)
	addi $t0, $fp, -192
	sw $t0, -9096($fp)
	li $t0, 8
	sw $t0, -9100($fp)
	li $t0, 4
	lw $t1, -9100($fp)
	mul $t0, $t0, $t1
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	lw $t1, -9096($fp)
	add $t0, $t0, $t1
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	lw $t1, 0($t0)
	sw $t1, -9112($fp)
	li $t0, 32267
	sw $t0, -9116($fp)
	lw $t0, -9112($fp)
	lw $t1, -9116($fp)
	sub $t0, $t0, $t1
	sw $t0, -9120($fp)
	li $t0, 35138
	sw $t0, -9124($fp)
	li $t0, 43306
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	sw $t0, -9132($fp)
	addi $t0, $fp, -112
	sw $t0, -9136($fp)
	li $t0, 1
	sw $t0, -9140($fp)
	li $t0, 4
	lw $t1, -9140($fp)
	mul $t0, $t0, $t1
	sw $t0, -9144($fp)
	lw $t0, -9144($fp)
	lw $t1, -9136($fp)
	add $t0, $t0, $t1
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	lw $t1, 0($t0)
	sw $t1, -9152($fp)
	addi $sp, $sp, -4
	lw $t0, -9092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9152($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9156($fp)
	addi $sp, $sp, 24
	li $t0, 33505
	sw $t0, -9160($fp)
	lw $t0, -9156($fp)
	lw $t1, -9160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9164($fp)
	lw $t0, -9088($fp)
	lw $t1, -9164($fp)
	sub $t0, $t0, $t1
	sw $t0, -9168($fp)
	lw $t1, -9168($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 0
	sw $t0, -9172($fp)
	addi $t0, $fp, -224
	sw $t0, -9176($fp)
	lw $t0, -6520($fp)
	sw $t0, -9180($fp)
	li $t0, 4
	lw $t1, -9180($fp)
	mul $t0, $t0, $t1
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	lw $t1, -9176($fp)
	add $t0, $t0, $t1
	sw $t0, -9188($fp)
	lw $t0, -9188($fp)
	lw $t1, 0($t0)
	sw $t1, -9192($fp)
	lw $t0, -6948($fp)
	sw $t0, -9196($fp)
	lw $t0, -9192($fp)
	lw $t1, -9196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9200($fp)
	li $t0, 0
	lw $t1, -9200($fp)
	sub $t0, $t0, $t1
	sw $t0, -9204($fp)
	li $t0, 0
	lw $t1, -9204($fp)
	sub $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $t1, -9208($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label572
label572:
	li $t0, 13766
	sw $t0, -9212($fp)
	lw $t1, -9212($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -9172($fp)
label571:
	j label567
label569:
label561:
	li $t0, 50964
	sw $t0, -9216($fp)
	lw $ra, -4($fp)
	lw $v0, -9216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label573:
	li $t0, 15865
	sw $t0, -9220($fp)
	lw $t0, -1492($fp)
	sw $t0, -9224($fp)
	addi $t0, $fp, -292
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
	li $t0, 0
	lw $t1, -9244($fp)
	sub $t0, $t0, $t1
	sw $t0, -9248($fp)
	li $t0, 0
	sw $t0, -9252($fp)
	li $t0, 49534
	sw $t0, -9256($fp)
	lw $t1, -9256($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label576:
	li $t0, 1
	sw $t0, -9252($fp)
label577:
	li $t0, 0
	sw $t0, -9260($fp)
	lw $t0, -2368($fp)
	sw $t0, -9264($fp)
	lw $t1, -9264($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label579
label581:
	lw $t0, -2284($fp)
	sw $t0, -9268($fp)
	lw $t1, -9268($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label579
label580:
	lw $t0, -2500($fp)
	sw $t0, -9272($fp)
	lw $t1, -9272($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -9260($fp)
label579:
	li $t0, 0
	sw $t0, -9276($fp)
	li $t0, 0
	sw $t0, -9280($fp)
	li $t0, 31313
	sw $t0, -9284($fp)
	lw $t1, -9284($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label588:
	lw $t0, -844($fp)
	sw $t0, -9288($fp)
	lw $t1, -9288($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label587
label587:
	li $t0, 55588
	sw $t0, -9292($fp)
	lw $t1, -9292($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -9280($fp)
label586:
	addi $sp, $sp, -4
	lw $t0, -9280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9296($fp)
	addi $sp, $sp, 8
	lw $t1, -9296($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label584:
	li $t0, 48363
	sw $t0, -9300($fp)
	lw $t1, -9300($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -9276($fp)
label583:
	addi $sp, $sp, -4
	lw $t0, -9224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9276($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9304($fp)
	addi $sp, $sp, 24
	lw $t1, -9220($fp)
	lw $t2, -9304($fp)
	blt $t1, $t2, label574
	j label575
label574:
	li $t0, 0
	sw $t0, -9308($fp)
	li $t0, 5542
	sw $t0, -9312($fp)
	li $t0, 0
	lw $t1, -9312($fp)
	sub $t0, $t0, $t1
	sw $t0, -9316($fp)
	lw $t1, -9316($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label591
label591:
	li $t0, 17027
	sw $t0, -9320($fp)
	lw $t1, -9320($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -9308($fp)
label590:
	j label573
label575:
label592:
	li $t0, 0
	sw $t0, -9324($fp)
	lw $t0, -6400($fp)
	sw $t0, -9328($fp)
	lw $t1, -9328($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label595
label595:
	li $t0, 1
	sw $t0, -9324($fp)
label596:
	li $t0, 0
	sw $t0, -9332($fp)
	lw $t0, -1936($fp)
	sw $t0, -9336($fp)
	li $t0, 10435
	sw $t0, -9340($fp)
	lw $t0, -9336($fp)
	lw $t1, -9340($fp)
	sub $t0, $t0, $t1
	sw $t0, -9344($fp)
	lw $t0, -1144($fp)
	sw $t0, -9348($fp)
	lw $t1, -9344($fp)
	lw $t2, -9348($fp)
	bgt $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -9332($fp)
label598:
	addi $sp, $sp, -4
	lw $t0, -9332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9352($fp)
	addi $sp, $sp, 8
	lw $t0, -9324($fp)
	lw $t1, -9352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9356($fp)
	li $t0, 0
	sw $t0, -9360($fp)
	li $t0, 0
	sw $t0, -9364($fp)
	lw $t0, -6412($fp)
	sw $t0, -9368($fp)
	lw $t1, -9368($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label601:
	li $t0, 1
	sw $t0, -9364($fp)
label602:
	li $t0, 38766
	sw $t0, -9372($fp)
	lw $t1, -9364($fp)
	lw $t2, -9372($fp)
	ble $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -9360($fp)
label600:
	addi $sp, $sp, -4
	lw $t0, -9360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9376($fp)
	addi $sp, $sp, 8
	lw $t0, -9356($fp)
	lw $t1, -9376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9380($fp)
	lw $t1, -9380($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
label603:
	lw $t0, -6424($fp)
	sw $t0, -9384($fp)
	lw $t1, -9384($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label606
label606:
	addi $t0, $fp, -100
	sw $t0, -9388($fp)
	li $t0, 0
	sw $t0, -9392($fp)
	li $t0, 4
	lw $t1, -9392($fp)
	mul $t0, $t0, $t1
	sw $t0, -9396($fp)
	lw $t0, -9396($fp)
	lw $t1, -9388($fp)
	add $t0, $t0, $t1
	sw $t0, -9400($fp)
	lw $t0, -9400($fp)
	lw $t1, 0($t0)
	sw $t1, -9404($fp)
	li $t0, 2843
	sw $t0, -9408($fp)
	lw $t1, -9404($fp)
	lw $t2, -9408($fp)
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 0
	sw $t0, -9412($fp)
	li $t0, 33826
	sw $t0, -9416($fp)
	lw $t1, -9416($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label611
label611:
	li $t0, 1
	sw $t0, -9412($fp)
label612:
	li $t0, 0
	sw $t0, -9420($fp)
	li $t0, 58223
	sw $t0, -9424($fp)
	lw $t1, -9424($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label614
label613:
	li $t0, 1
	sw $t0, -9420($fp)
label614:
	lw $t0, -9412($fp)
	lw $t1, -9420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9428($fp)
	lw $t1, -9428($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label608
label610:
	lw $t0, -1948($fp)
	sw $t0, -9432($fp)
	li $t0, 32513
	sw $t0, -9436($fp)
	lw $t0, -9432($fp)
	lw $t1, -9436($fp)
	add $t0, $t0, $t1
	sw $t0, -9440($fp)
	lw $t0, -2932($fp)
	sw $t0, -9444($fp)
	lw $t0, -9440($fp)
	lw $t1, -9444($fp)
	add $t0, $t0, $t1
	sw $t0, -9448($fp)
	li $t0, 15148
	sw $t0, -9452($fp)
	lw $t1, -9448($fp)
	lw $t2, -9452($fp)
	bge $t1, $t2, label607
	j label608
label607:
	li $t0, 0
	sw $t0, -9456($fp)
	li $t0, 62663
	sw $t0, -9460($fp)
	li $t0, 0
	sw $t0, -9464($fp)
	li $t0, 38748
	sw $t0, -9468($fp)
	lw $t1, -9468($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -9464($fp)
label618:
	addi $sp, $sp, -4
	lw $t0, -9464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9472($fp)
	addi $sp, $sp, 8
	lw $t0, -9460($fp)
	lw $t1, -9472($fp)
	mul $t0, $t0, $t1
	sw $t0, -9476($fp)
	li $t0, 28229
	sw $t0, -9480($fp)
	lw $t1, -9476($fp)
	lw $t2, -9480($fp)
	ble $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -9456($fp)
label616:
	j label609
label608:
	li $t0, 48813
	sw $t0, -9484($fp)
	lw $t0, -9484($fp)
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	sw $t0, -9488($fp)
	addi $t0, $fp, -96
	sw $t0, -9492($fp)
	li $t0, 0
	sw $t0, -9496($fp)
	li $t0, 4
	lw $t1, -9496($fp)
	mul $t0, $t0, $t1
	sw $t0, -9500($fp)
	lw $t0, -9500($fp)
	lw $t1, -9492($fp)
	add $t0, $t0, $t1
	sw $t0, -9504($fp)
	lw $t0, -9504($fp)
	lw $t1, 0($t0)
	sw $t1, -9508($fp)
	li $t0, 0
	sw $t0, -9512($fp)
	lw $t0, -6328($fp)
	sw $t0, -9516($fp)
	lw $t1, -9516($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -9512($fp)
label620:
	lw $t0, -2824($fp)
	sw $t0, -9520($fp)
	li $t0, 0
	sw $t0, -9524($fp)
	lw $t0, -6484($fp)
	sw $t0, -9528($fp)
	li $t0, 0
	lw $t1, -9528($fp)
	sub $t0, $t0, $t1
	sw $t0, -9532($fp)
	lw $t0, -6460($fp)
	sw $t0, -9536($fp)
	lw $t1, -9532($fp)
	lw $t2, -9536($fp)
	beq $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -9524($fp)
label622:
	addi $sp, $sp, -4
	lw $t0, -9488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9540($fp)
	addi $sp, $sp, 24
	lw $t0, -2260($fp)
	sw $t0, -9544($fp)
	lw $t0, -9544($fp)
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	sw $t0, -9548($fp)
	lw $t0, -976($fp)
	sw $t0, -9552($fp)
	li $t0, 0
	sw $t0, -9556($fp)
	lw $t0, -6472($fp)
	sw $t0, -9560($fp)
	lw $t0, -2260($fp)
	sw $t0, -9564($fp)
	lw $t0, -9560($fp)
	lw $t1, -9564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9568($fp)
	lw $t0, -2812($fp)
	sw $t0, -9572($fp)
	lw $t1, -9568($fp)
	lw $t2, -9572($fp)
	beq $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -9556($fp)
label624:
	li $t0, 0
	sw $t0, -9576($fp)
	li $t0, 64814
	sw $t0, -9580($fp)
	lw $t1, -9580($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label627:
	lw $t0, -2500($fp)
	sw $t0, -9584($fp)
	lw $t1, -9584($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -9576($fp)
label626:
	addi $sp, $sp, -4
	lw $t0, -9576($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9588($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9592($fp)
	li $t0, 36518
	sw $t0, -9596($fp)
	lw $t0, -916($fp)
	sw $t0, -9600($fp)
	lw $t0, -9596($fp)
	lw $t1, -9600($fp)
	add $t0, $t0, $t1
	sw $t0, -9604($fp)
	lw $t1, -9604($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label630
label630:
	li $t0, 24452
	sw $t0, -9608($fp)
	lw $t1, -9608($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -9592($fp)
label629:
	li $t0, 8586
	sw $t0, -9612($fp)
	lw $t0, -6260($fp)
	sw $t0, -9616($fp)
	lw $t0, -9612($fp)
	lw $t1, -9616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9620($fp)
	li $t0, 33501
	sw $t0, -9624($fp)
	lw $t0, -9620($fp)
	lw $t1, -9624($fp)
	add $t0, $t0, $t1
	sw $t0, -9628($fp)
	li $t0, 51090
	sw $t0, -9632($fp)
	li $t0, 0
	lw $t1, -9632($fp)
	sub $t0, $t0, $t1
	sw $t0, -9636($fp)
	addi $t0, $fp, -260
	sw $t0, -9640($fp)
	lw $t0, -2764($fp)
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
	li $t0, 0
	sw $t0, -9660($fp)
	li $t0, 0
	sw $t0, -9664($fp)
	lw $t0, -6412($fp)
	sw $t0, -9668($fp)
	lw $t0, -2752($fp)
	sw $t0, -9672($fp)
	lw $t1, -9668($fp)
	lw $t2, -9672($fp)
	ble $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -9664($fp)
label634:
	li $t0, 19735
	sw $t0, -9676($fp)
	lw $t1, -9664($fp)
	lw $t2, -9676($fp)
	bgt $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -9660($fp)
label632:
	addi $sp, $sp, -4
	lw $t0, -9592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9660($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9680($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -9548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9680($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9684($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -9688($fp)
	li $t0, 0
	sw $t0, -9692($fp)
	lw $t0, -6436($fp)
	sw $t0, -9696($fp)
	lw $t1, -9696($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label637:
	li $t0, 1
	sw $t0, -9692($fp)
label638:
	lw $t0, -928($fp)
	sw $t0, -9700($fp)
	lw $t1, -9692($fp)
	lw $t2, -9700($fp)
	beq $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -9688($fp)
label636:
	li $t0, 0
	sw $t0, -9704($fp)
	addi $t0, $fp, -260
	sw $t0, -9708($fp)
	lw $t0, -1120($fp)
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
	lw $t1, -9724($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label639
label639:
	li $t0, 1
	sw $t0, -9704($fp)
label640:
	li $t0, 0
	sw $t0, -9728($fp)
	addi $t0, $fp, -52
	sw $t0, -9732($fp)
	lw $t0, -2248($fp)
	sw $t0, -9736($fp)
	li $t0, 4
	lw $t1, -9736($fp)
	mul $t0, $t0, $t1
	sw $t0, -9740($fp)
	lw $t0, -9740($fp)
	lw $t1, -9732($fp)
	add $t0, $t0, $t1
	sw $t0, -9744($fp)
	lw $t0, -9744($fp)
	lw $t1, 0($t0)
	sw $t1, -9748($fp)
	lw $t1, -9748($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label642
label643:
	lw $t0, -1492($fp)
	sw $t0, -9752($fp)
	lw $t1, -9752($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -9728($fp)
label642:
	li $t0, 0
	sw $t0, -9756($fp)
	li $t0, 30465
	sw $t0, -9760($fp)
	li $t0, 40618
	sw $t0, -9764($fp)
	lw $t1, -9760($fp)
	lw $t2, -9764($fp)
	bge $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -9756($fp)
label645:
	lw $t0, -2536($fp)
	sw $t0, -9768($fp)
	lw $t0, -9768($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -9772($fp)
	li $t0, 0
	sw $t0, -9776($fp)
	li $t0, 8350
	sw $t0, -9780($fp)
	lw $t0, -2236($fp)
	sw $t0, -9784($fp)
	lw $t0, -9780($fp)
	lw $t1, -9784($fp)
	add $t0, $t0, $t1
	sw $t0, -9788($fp)
	lw $t1, -9788($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label648:
	li $t0, 16261
	sw $t0, -9792($fp)
	lw $t1, -9792($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -9776($fp)
label647:
	addi $sp, $sp, -4
	lw $t0, -9704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9776($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9796($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -9796($fp)
	sub $t0, $t0, $t1
	sw $t0, -9800($fp)
	li $t0, 0
	sw $t0, -9804($fp)
	li $t0, 40433
	sw $t0, -9808($fp)
	lw $t1, -9808($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label649
label649:
	li $t0, 1
	sw $t0, -9804($fp)
label650:
	addi $sp, $sp, -4
	lw $t0, -9540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9804($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9812($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -9812($fp)
	sub $t0, $t0, $t1
	sw $t0, -9816($fp)
	lw $ra, -4($fp)
	lw $v0, -9816($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label609:
	j label603
label605:
	j label592
label594:
	li $t0, 62865
	sw $t0, -9820($fp)
	lw $t0, -9820($fp)
	sw $t0, -9824($fp)
	lw $t0, -9824($fp)
	sw $t0, -9828($fp)
	li $t0, 35649
	sw $t0, -9832($fp)
	lw $t0, -9832($fp)
	sw $t0, -9836($fp)
	lw $t0, -9836($fp)
	sw $t0, -9840($fp)
	li $t0, 54355
	sw $t0, -9844($fp)
	lw $t0, -9844($fp)
	sw $t0, -9848($fp)
	lw $t0, -9848($fp)
	sw $t0, -9852($fp)
	li $t0, 0
	sw $t0, -9856($fp)
	addi $t0, $fp, -112
	sw $t0, -9860($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -9876($fp)
	sub $t0, $t0, $t1
	sw $t0, -9880($fp)
	addi $t0, $fp, -232
	sw $t0, -9884($fp)
	lw $t0, -940($fp)
	sw $t0, -9888($fp)
	li $t0, 4
	lw $t1, -9888($fp)
	mul $t0, $t0, $t1
	sw $t0, -9892($fp)
	lw $t0, -9892($fp)
	lw $t1, -9884($fp)
	add $t0, $t0, $t1
	sw $t0, -9896($fp)
	lw $t0, -9896($fp)
	lw $t1, 0($t0)
	sw $t1, -9900($fp)
	lw $t1, -9880($fp)
	lw $t2, -9900($fp)
	blt $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -9856($fp)
label655:
	li $t0, 27585
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	sw $t0, -9824($fp)
	lw $t0, -9824($fp)
	sw $t0, -9908($fp)
	addi $sp, $sp, -4
	lw $t0, -9908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9912($fp)
	addi $sp, $sp, 8
	lw $t1, -9856($fp)
	lw $t2, -9912($fp)
	bne $t1, $t2, label651
	j label652
label651:
	lw $t0, -1000($fp)
	sw $t0, -9916($fp)
	lw $t0, -2368($fp)
	sw $t0, -9920($fp)
	lw $t0, -9916($fp)
	lw $t1, -9920($fp)
	mul $t0, $t0, $t1
	sw $t0, -9924($fp)
	li $t0, 0
	lw $t1, -9924($fp)
	sub $t0, $t0, $t1
	sw $t0, -9928($fp)
	addi $sp, $sp, -4
	lw $t0, -9928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9932($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -9932($fp)
	sub $t0, $t0, $t1
	sw $t0, -9936($fp)
	li $t0, 30934
	sw $t0, -9940($fp)
	li $t0, 0
	lw $t1, -9940($fp)
	sub $t0, $t0, $t1
	sw $t0, -9944($fp)
	lw $t0, -9936($fp)
	lw $t1, -9944($fp)
	sub $t0, $t0, $t1
	sw $t0, -9948($fp)
	li $t0, 5434
	sw $t0, -9952($fp)
	li $t0, 0
	lw $t1, -9952($fp)
	sub $t0, $t0, $t1
	sw $t0, -9956($fp)
	lw $t1, -9948($fp)
	lw $t2, -9956($fp)
	blt $t1, $t2, label656
	j label657
label656:
label659:
	lw $t0, -868($fp)
	sw $t0, -9960($fp)
	lw $t1, -9960($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label661
label660:
	lw $t0, -9848($fp)
	sw $t0, -9964($fp)
	li $t0, 14373
	sw $t0, -9968($fp)
	lw $t0, -9964($fp)
	lw $t1, -9968($fp)
	mul $t0, $t0, $t1
	sw $t0, -9972($fp)
	li $t0, 60784
	sw $t0, -9976($fp)
	lw $t0, -9972($fp)
	lw $t1, -9976($fp)
	mul $t0, $t0, $t1
	sw $t0, -9980($fp)
	li $t0, 0
	sw $t0, -9984($fp)
	li $t0, 62942
	sw $t0, -9988($fp)
	li $t0, 0
	lw $t1, -9988($fp)
	sub $t0, $t0, $t1
	sw $t0, -9992($fp)
	lw $t1, -9992($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label663
label664:
	lw $t0, -9836($fp)
	sw $t0, -9996($fp)
	lw $t1, -9996($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -9984($fp)
label663:
	li $t0, 63657
	sw $t0, -10000($fp)
	li $t0, 64760
	sw $t0, -10004($fp)
	li $t0, 0
	sw $t0, -10008($fp)
	lw $t0, -6532($fp)
	sw $t0, -10012($fp)
	lw $t0, -6520($fp)
	sw $t0, -10016($fp)
	lw $t0, -10012($fp)
	lw $t1, -10016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10020($fp)
	lw $t1, -10020($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label666
label667:
	li $t0, 30429
	sw $t0, -10024($fp)
	lw $t1, -10024($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -10008($fp)
label666:
	addi $sp, $sp, -4
	lw $t0, -9980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10028($fp)
	addi $sp, $sp, 24
	j label659
label661:
	j label658
label657:
label668:
	li $t0, 0
	sw $t0, -10032($fp)
	lw $t0, -1012($fp)
	sw $t0, -10036($fp)
	lw $t1, -10036($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label671:
	li $t0, 1
	sw $t0, -10032($fp)
label672:
	li $t0, 0
	sw $t0, -10040($fp)
	li $t0, 0
	sw $t0, -10044($fp)
	lw $t0, -2800($fp)
	sw $t0, -10048($fp)
	lw $t1, -10048($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -10044($fp)
label676:
	li $t0, 0
	sw $t0, -10052($fp)
	li $t0, 0
	sw $t0, -10056($fp)
	lw $t0, -1012($fp)
	sw $t0, -10060($fp)
	lw $t1, -10060($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label681
label681:
	lw $t0, -2728($fp)
	sw $t0, -10064($fp)
	lw $t1, -10064($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -10056($fp)
label680:
	addi $sp, $sp, -4
	lw $t0, -10056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10068($fp)
	addi $sp, $sp, 8
	li $t0, 35681
	sw $t0, -10072($fp)
	lw $t1, -10068($fp)
	lw $t2, -10072($fp)
	beq $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -10052($fp)
label678:
	lw $t0, -2224($fp)
	sw $t0, -10076($fp)
	li $t0, 42602
	sw $t0, -10080($fp)
	lw $t0, -10076($fp)
	lw $t1, -10080($fp)
	sub $t0, $t0, $t1
	sw $t0, -10084($fp)
	lw $t0, -6304($fp)
	sw $t0, -10088($fp)
	lw $t0, -10084($fp)
	lw $t1, -10088($fp)
	add $t0, $t0, $t1
	sw $t0, -10092($fp)
	li $t0, 0
	sw $t0, -10096($fp)
	li $t0, 0
	sw $t0, -10100($fp)
	lw $t0, -928($fp)
	sw $t0, -10104($fp)
	lw $t1, -10104($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label684
label684:
	li $t0, 1
	sw $t0, -10100($fp)
label685:
	li $t0, 36154
	sw $t0, -10108($fp)
	lw $t1, -10100($fp)
	lw $t2, -10108($fp)
	bge $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -10096($fp)
label683:
	lw $t0, -6352($fp)
	sw $t0, -10112($fp)
	li $t0, 0
	lw $t1, -10112($fp)
	sub $t0, $t0, $t1
	sw $t0, -10116($fp)
	addi $sp, $sp, -4
	lw $t0, -10044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10116($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10120($fp)
	addi $sp, $sp, 24
	lw $t1, -10120($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -10040($fp)
label674:
	lw $t1, -10032($fp)
	lw $t2, -10040($fp)
	blt $t1, $t2, label669
	j label670
label669:
	li $t0, 44505
	sw $t0, -10124($fp)
	lw $t0, -10124($fp)
	sw $t0, -10128($fp)
	lw $t0, -10128($fp)
	sw $t0, -10132($fp)
	lw $t0, -10128($fp)
	sw $t0, -10136($fp)
	lw $t0, -10136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -10140($fp)
	li $t0, 58863
	sw $t0, -10144($fp)
	lw $t1, -10144($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label686
label688:
	li $t0, 0
	sw $t0, -10148($fp)
	li $t0, 0
	sw $t0, -10152($fp)
	addi $t0, $fp, -112
	sw $t0, -10156($fp)
	li $t0, 1
	sw $t0, -10160($fp)
	li $t0, 4
	lw $t1, -10160($fp)
	mul $t0, $t0, $t1
	sw $t0, -10164($fp)
	lw $t0, -10164($fp)
	lw $t1, -10156($fp)
	add $t0, $t0, $t1
	sw $t0, -10168($fp)
	lw $t0, -10168($fp)
	lw $t1, 0($t0)
	sw $t1, -10172($fp)
	lw $t1, -10172($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label693
label693:
	li $t0, 46582
	sw $t0, -10176($fp)
	lw $t1, -10176($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -10152($fp)
label692:
	li $t0, 49253
	sw $t0, -10180($fp)
	lw $t0, -10180($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -10184($fp)
	lw $t0, -1132($fp)
	sw $t0, -10188($fp)
	lw $t0, -2284($fp)
	sw $t0, -10192($fp)
	lw $t0, -10188($fp)
	lw $t1, -10192($fp)
	mul $t0, $t0, $t1
	sw $t0, -10196($fp)
	lw $t0, -1144($fp)
	sw $t0, -10200($fp)
	lw $t0, -10196($fp)
	lw $t1, -10200($fp)
	add $t0, $t0, $t1
	sw $t0, -10204($fp)
	lw $t0, -6376($fp)
	sw $t0, -10208($fp)
	li $t0, 0
	lw $t1, -10208($fp)
	sub $t0, $t0, $t1
	sw $t0, -10212($fp)
	li $t0, 0
	sw $t0, -10216($fp)
	li $t0, 22682
	sw $t0, -10220($fp)
	li $t0, 52625
	sw $t0, -10224($fp)
	lw $t1, -10220($fp)
	lw $t2, -10224($fp)
	bgt $t1, $t2, label694
	j label696
label696:
	li $t0, 45842
	sw $t0, -10228($fp)
	lw $t1, -10228($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -10216($fp)
label695:
	li $t0, 0
	sw $t0, -10232($fp)
	li $t0, 28173
	sw $t0, -10236($fp)
	li $t0, 0
	lw $t1, -10236($fp)
	sub $t0, $t0, $t1
	sw $t0, -10240($fp)
	li $t0, 46563
	sw $t0, -10244($fp)
	lw $t1, -10240($fp)
	lw $t2, -10244($fp)
	bne $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -10232($fp)
label698:
	addi $sp, $sp, -4
	lw $t0, -10184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10248($fp)
	addi $sp, $sp, 24
	lw $t0, -10128($fp)
	sw $t0, -10252($fp)
	lw $t0, -10248($fp)
	lw $t1, -10252($fp)
	sub $t0, $t0, $t1
	sw $t0, -10256($fp)
	li $t0, 0
	sw $t0, -10260($fp)
	li $t0, 0
	sw $t0, -10264($fp)
	li $t0, 19587
	sw $t0, -10268($fp)
	li $t0, 13062
	sw $t0, -10272($fp)
	lw $t1, -10268($fp)
	lw $t2, -10272($fp)
	bne $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -10264($fp)
label702:
	li $t0, 51700
	sw $t0, -10276($fp)
	lw $t1, -10264($fp)
	lw $t2, -10276($fp)
	beq $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -10260($fp)
label700:
	li $t0, 0
	sw $t0, -10280($fp)
	lw $t0, -6292($fp)
	sw $t0, -10284($fp)
	li $t0, 0
	lw $t1, -10284($fp)
	sub $t0, $t0, $t1
	sw $t0, -10288($fp)
	li $t0, 610
	sw $t0, -10292($fp)
	lw $t1, -10288($fp)
	lw $t2, -10292($fp)
	beq $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -10280($fp)
label704:
	li $t0, 0
	sw $t0, -10296($fp)
	lw $t0, -2524($fp)
	sw $t0, -10300($fp)
	lw $t0, -6352($fp)
	sw $t0, -10304($fp)
	lw $t1, -10300($fp)
	lw $t2, -10304($fp)
	blt $t1, $t2, label705
	j label707
label707:
	lw $t0, -2032($fp)
	sw $t0, -10308($fp)
	lw $t1, -10308($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -10296($fp)
label706:
	addi $sp, $sp, -4
	lw $t0, -10152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10296($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10312($fp)
	addi $sp, $sp, 24
	lw $t1, -10312($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label689
label689:
	li $t0, 1
	sw $t0, -10148($fp)
label690:
	li $t0, 0
	lw $t1, -10148($fp)
	sub $t0, $t0, $t1
	sw $t0, -10316($fp)
	lw $t1, -10316($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -10140($fp)
label687:
	lw $ra, -4($fp)
	lw $v0, -10140($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -152
	sw $t0, -10320($fp)
	lw $t0, -2608($fp)
	sw $t0, -10324($fp)
	li $t0, 4
	lw $t1, -10324($fp)
	mul $t0, $t0, $t1
	sw $t0, -10328($fp)
	lw $t0, -10328($fp)
	lw $t1, -10320($fp)
	add $t0, $t0, $t1
	sw $t0, -10332($fp)
	lw $t0, -10332($fp)
	lw $t1, 0($t0)
	sw $t1, -10336($fp)
	lw $t0, -2236($fp)
	sw $t0, -10340($fp)
	lw $t0, -6568($fp)
	sw $t0, -10344($fp)
	lw $t0, -10340($fp)
	lw $t1, -10344($fp)
	mul $t0, $t0, $t1
	sw $t0, -10348($fp)
	li $t0, 30018
	sw $t0, -10352($fp)
	lw $t0, -10348($fp)
	lw $t1, -10352($fp)
	mul $t0, $t0, $t1
	sw $t0, -10356($fp)
	li $t0, 0
	lw $t1, -10356($fp)
	sub $t0, $t0, $t1
	sw $t0, -10360($fp)
	lw $t0, -10336($fp)
	lw $t1, -10360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10364($fp)
	li $t0, 17938
	sw $t0, -10368($fp)
	addi $t0, $fp, -52
	sw $t0, -10372($fp)
	addi $t0, $fp, -292
	sw $t0, -10376($fp)
	li $t0, 1
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
	li $t0, 4
	lw $t1, -10392($fp)
	mul $t0, $t0, $t1
	sw $t0, -10396($fp)
	lw $t0, -10396($fp)
	lw $t1, -10372($fp)
	add $t0, $t0, $t1
	sw $t0, -10400($fp)
	lw $t0, -10400($fp)
	lw $t1, 0($t0)
	sw $t1, -10404($fp)
	lw $t0, -10368($fp)
	lw $t1, -10404($fp)
	mul $t0, $t0, $t1
	sw $t0, -10408($fp)
	j label668
label670:
label658:
	j label653
label652:
	li $t0, 45523
	sw $t0, -10412($fp)
	lw $t0, -10412($fp)
	sw $t0, -10416($fp)
	lw $t0, -10416($fp)
	sw $t0, -10420($fp)
	li $t0, 26338
	sw $t0, -10424($fp)
	lw $t0, -10424($fp)
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	sw $t0, -10432($fp)
	li $t0, 16001
	sw $t0, -10436($fp)
	lw $t0, -10436($fp)
	sw $t0, -10440($fp)
	lw $t0, -10440($fp)
	sw $t0, -10444($fp)
	li $t0, 10416
	sw $t0, -10448($fp)
	lw $t0, -10448($fp)
	sw $t0, -10452($fp)
	lw $t0, -10452($fp)
	sw $t0, -10456($fp)
	lw $t0, -2692($fp)
	sw $t0, -10460($fp)
label708:
	li $t0, 0
	sw $t0, -10464($fp)
	lw $t0, -2260($fp)
	sw $t0, -10468($fp)
	lw $t0, -2560($fp)
	sw $t0, -10472($fp)
	lw $t1, -10468($fp)
	lw $t2, -10472($fp)
	bgt $t1, $t2, label711
	j label713
label713:
	lw $t0, -6508($fp)
	sw $t0, -10476($fp)
	lw $t1, -10476($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -10464($fp)
label712:
	li $t0, 0
	sw $t0, -10480($fp)
	lw $t0, -940($fp)
	sw $t0, -10484($fp)
	li $t0, 0
	lw $t1, -10484($fp)
	sub $t0, $t0, $t1
	sw $t0, -10488($fp)
	addi $sp, $sp, -4
	lw $t0, -10488($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10492($fp)
	addi $sp, $sp, 8
	lw $t1, -10492($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label715
label716:
	li $t0, 39935
	sw $t0, -10496($fp)
	lw $t1, -10496($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -10480($fp)
label715:
	lw $t0, -2344($fp)
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	sw $t0, -10504($fp)
	li $t0, 0
	sw $t0, -10508($fp)
	lw $t0, -1480($fp)
	sw $t0, -10512($fp)
	lw $t1, -10512($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label719
label720:
	lw $t0, -6388($fp)
	sw $t0, -10516($fp)
	lw $t1, -10516($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label719
label719:
	lw $t0, -10416($fp)
	sw $t0, -10520($fp)
	lw $t1, -10520($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -10508($fp)
label718:
	addi $sp, $sp, -4
	lw $t0, -10508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10524($fp)
	addi $sp, $sp, 8
	li $t0, 25562
	sw $t0, -10528($fp)
	li $t0, 14122
	sw $t0, -10532($fp)
	lw $t0, -10528($fp)
	lw $t1, -10532($fp)
	mul $t0, $t0, $t1
	sw $t0, -10536($fp)
	li $t0, 7823
	sw $t0, -10540($fp)
	lw $t0, -10536($fp)
	lw $t1, -10540($fp)
	add $t0, $t0, $t1
	sw $t0, -10544($fp)
	addi $sp, $sp, -4
	lw $t0, -10464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10544($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10548($fp)
	addi $sp, $sp, 24
	lw $t1, -10548($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 9371
	sw $t0, -10552($fp)
	lw $t1, -10552($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	li $t0, 43977
	sw $t0, -10556($fp)
	lw $t0, -10556($fp)
	sw $t0, -10560($fp)
	lw $t0, -10560($fp)
	sw $t0, -10564($fp)
	li $t0, 0
	sw $t0, -10568($fp)
	addi $t0, $fp, -24
	sw $t0, -10572($fp)
	li $t0, 0
	sw $t0, -10576($fp)
	addi $t0, $fp, -96
	sw $t0, -10580($fp)
	lw $t0, -988($fp)
	sw $t0, -10584($fp)
	li $t0, 4
	lw $t1, -10584($fp)
	mul $t0, $t0, $t1
	sw $t0, -10588($fp)
	lw $t0, -10588($fp)
	lw $t1, -10580($fp)
	add $t0, $t0, $t1
	sw $t0, -10592($fp)
	lw $t0, -10592($fp)
	lw $t1, 0($t0)
	sw $t1, -10596($fp)
	li $t0, 17001
	sw $t0, -10600($fp)
	lw $t1, -10596($fp)
	lw $t2, -10600($fp)
	bne $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -10576($fp)
label727:
	li $t0, 4
	lw $t1, -10576($fp)
	mul $t0, $t0, $t1
	sw $t0, -10604($fp)
	lw $t0, -10604($fp)
	lw $t1, -10572($fp)
	add $t0, $t0, $t1
	sw $t0, -10608($fp)
	lw $t0, -10608($fp)
	lw $t1, 0($t0)
	sw $t1, -10612($fp)
	li $t0, 0
	sw $t0, -10616($fp)
	lw $t0, -2584($fp)
	sw $t0, -10620($fp)
	lw $t1, -10620($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label730
label730:
	li $t0, 42533
	sw $t0, -10624($fp)
	lw $t1, -10624($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label729
label728:
	li $t0, 1
	sw $t0, -10616($fp)
label729:
	lw $t0, -6364($fp)
	sw $t0, -10628($fp)
	lw $t0, -10560($fp)
	sw $t0, -10632($fp)
	lw $t0, -10628($fp)
	lw $t1, -10632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10636($fp)
	lw $t0, -844($fp)
	sw $t0, -10640($fp)
	lw $t0, -10636($fp)
	lw $t1, -10640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10644($fp)
	li $t0, 45663
	sw $t0, -10648($fp)
	lw $t0, -10648($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -10652($fp)
	li $t0, 45052
	sw $t0, -10656($fp)
	li $t0, 22946
	sw $t0, -10660($fp)
	lw $t0, -10656($fp)
	lw $t1, -10660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10664($fp)
	li $t0, 10329
	sw $t0, -10668($fp)
	lw $t0, -10664($fp)
	lw $t1, -10668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10672($fp)
	lw $t0, -1120($fp)
	sw $t0, -10676($fp)
	addi $sp, $sp, -4
	lw $t0, -10616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10676($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10680($fp)
	addi $sp, $sp, 24
	lw $t0, -844($fp)
	sw $t0, -10684($fp)
	lw $t0, -10680($fp)
	lw $t1, -10684($fp)
	mul $t0, $t0, $t1
	sw $t0, -10688($fp)
	addi $t0, $fp, -112
	sw $t0, -10692($fp)
	li $t0, 2
	sw $t0, -10696($fp)
	li $t0, 4
	lw $t1, -10696($fp)
	mul $t0, $t0, $t1
	sw $t0, -10700($fp)
	lw $t0, -10700($fp)
	lw $t1, -10692($fp)
	add $t0, $t0, $t1
	sw $t0, -10704($fp)
	lw $t0, -10704($fp)
	lw $t1, 0($t0)
	sw $t1, -10708($fp)
	lw $t0, -6556($fp)
	sw $t0, -10712($fp)
	lw $t0, -10712($fp)
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	sw $t0, -10716($fp)
	lw $t0, -2032($fp)
	sw $t0, -10720($fp)
	lw $t0, -10720($fp)
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	sw $t0, -10724($fp)
	li $t0, 23391
	sw $t0, -10728($fp)
	lw $t0, -1120($fp)
	sw $t0, -10732($fp)
	lw $t0, -10728($fp)
	lw $t1, -10732($fp)
	sub $t0, $t0, $t1
	sw $t0, -10736($fp)
	li $t0, 31827
	sw $t0, -10740($fp)
	lw $t0, -10736($fp)
	lw $t1, -10740($fp)
	sub $t0, $t0, $t1
	sw $t0, -10744($fp)
	lw $t0, -2596($fp)
	sw $t0, -10748($fp)
	li $t0, 0
	lw $t1, -10748($fp)
	sub $t0, $t0, $t1
	sw $t0, -10752($fp)
	lw $t0, -6424($fp)
	sw $t0, -10756($fp)
	lw $t0, -10752($fp)
	lw $t1, -10756($fp)
	add $t0, $t0, $t1
	sw $t0, -10760($fp)
	addi $sp, $sp, -4
	lw $t0, -10708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10760($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10764($fp)
	addi $sp, $sp, 24
	lw $t0, -10688($fp)
	lw $t1, -10764($fp)
	mul $t0, $t0, $t1
	sw $t0, -10768($fp)
	lw $t1, -10612($fp)
	lw $t2, -10768($fp)
	blt $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -10568($fp)
label725:
	j label723
label722:
	li $t0, 0
	sw $t0, -10772($fp)
	addi $t0, $fp, -292
	sw $t0, -10776($fp)
	lw $t0, -1012($fp)
	sw $t0, -10780($fp)
	li $t0, 4
	lw $t1, -10780($fp)
	mul $t0, $t0, $t1
	sw $t0, -10784($fp)
	lw $t0, -10784($fp)
	lw $t1, -10776($fp)
	add $t0, $t0, $t1
	sw $t0, -10788($fp)
	lw $t0, -10788($fp)
	lw $t1, 0($t0)
	sw $t1, -10792($fp)
	li $t0, 0
	sw $t0, -10796($fp)
	lw $t0, -10440($fp)
	sw $t0, -10800($fp)
	lw $t1, -10800($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label733
label733:
	li $t0, 1
	sw $t0, -10796($fp)
label734:
	lw $t0, -2608($fp)
	sw $t0, -10804($fp)
	lw $t0, -10804($fp)
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	sw $t0, -10808($fp)
	li $t0, 0
	sw $t0, -10812($fp)
	lw $t0, -1948($fp)
	sw $t0, -10816($fp)
	li $t0, 38227
	sw $t0, -10820($fp)
	lw $t1, -10816($fp)
	lw $t2, -10820($fp)
	bge $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -10812($fp)
label736:
	li $t0, 0
	sw $t0, -10824($fp)
	addi $t0, $fp, -100
	sw $t0, -10828($fp)
	li $t0, 0
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
	li $t0, 50261
	sw $t0, -10848($fp)
	lw $t1, -10844($fp)
	lw $t2, -10848($fp)
	bge $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -10824($fp)
label738:
	addi $sp, $sp, -4
	lw $t0, -10792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10852($fp)
	addi $sp, $sp, 24
	lw $t1, -10852($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label731
label731:
	li $t0, 1
	sw $t0, -10772($fp)
label732:
	li $t0, 0
	sw $t0, -10856($fp)
	lw $t0, -2716($fp)
	sw $t0, -10860($fp)
	lw $t0, -928($fp)
	sw $t0, -10864($fp)
	lw $t0, -10860($fp)
	lw $t1, -10864($fp)
	mul $t0, $t0, $t1
	sw $t0, -10868($fp)
	li $t0, 16647
	sw $t0, -10872($fp)
	lw $t0, -10868($fp)
	lw $t1, -10872($fp)
	mul $t0, $t0, $t1
	sw $t0, -10876($fp)
	li $t0, 19273
	sw $t0, -10880($fp)
	lw $t0, -10880($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -10884($fp)
	li $t0, 0
	sw $t0, -10888($fp)
	lw $t0, -6376($fp)
	sw $t0, -10892($fp)
	lw $t0, -10452($fp)
	sw $t0, -10896($fp)
	lw $t1, -10892($fp)
	lw $t2, -10896($fp)
	bge $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -10888($fp)
label742:
	li $t0, 0
	sw $t0, -10900($fp)
	li $t0, 0
	sw $t0, -10904($fp)
	li $t0, 52165
	sw $t0, -10908($fp)
	lw $t0, -2692($fp)
	sw $t0, -10912($fp)
	lw $t1, -10908($fp)
	lw $t2, -10912($fp)
	bge $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -10904($fp)
label746:
	li $t0, 13844
	sw $t0, -10916($fp)
	lw $t1, -10904($fp)
	lw $t2, -10916($fp)
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -10900($fp)
label744:
	lw $t0, -2320($fp)
	sw $t0, -10920($fp)
	addi $sp, $sp, -4
	lw $t0, -10876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10920($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10924($fp)
	addi $sp, $sp, 24
	lw $t1, -10924($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label739
label739:
	li $t0, 1
	sw $t0, -10856($fp)
label740:
	lw $t0, -10772($fp)
	lw $t1, -10856($fp)
	add $t0, $t0, $t1
	sw $t0, -10928($fp)
label723:
	j label708
label710:
	li $t0, 0
	sw $t0, -10932($fp)
	li $t0, 43214
	sw $t0, -10936($fp)
	lw $t0, -10936($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -10940($fp)
	li $t0, 11769
	sw $t0, -10944($fp)
	li $t0, 41015
	sw $t0, -10948($fp)
	lw $t0, -10944($fp)
	lw $t1, -10948($fp)
	mul $t0, $t0, $t1
	sw $t0, -10952($fp)
	li $t0, 0
	lw $t1, -10952($fp)
	sub $t0, $t0, $t1
	sw $t0, -10956($fp)
	li $t0, 0
	sw $t0, -10960($fp)
	addi $t0, $fp, -92
	sw $t0, -10964($fp)
	li $t0, 3
	sw $t0, -10968($fp)
	li $t0, 4
	lw $t1, -10968($fp)
	mul $t0, $t0, $t1
	sw $t0, -10972($fp)
	lw $t0, -10972($fp)
	lw $t1, -10964($fp)
	add $t0, $t0, $t1
	sw $t0, -10976($fp)
	lw $t0, -10976($fp)
	lw $t1, 0($t0)
	sw $t1, -10980($fp)
	li $t0, 27213
	sw $t0, -10984($fp)
	lw $t1, -10980($fp)
	lw $t2, -10984($fp)
	ble $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -10960($fp)
label751:
	lw $t0, -1936($fp)
	sw $t0, -10988($fp)
	li $t0, 0
	sw $t0, -10992($fp)
	li $t0, 0
	sw $t0, -10996($fp)
	lw $t0, -2728($fp)
	sw $t0, -11000($fp)
	lw $t0, -6316($fp)
	sw $t0, -11004($fp)
	lw $t1, -11000($fp)
	lw $t2, -11004($fp)
	ble $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -10996($fp)
label755:
	lw $t0, -6436($fp)
	sw $t0, -11008($fp)
	lw $t1, -10996($fp)
	lw $t2, -11008($fp)
	blt $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -10992($fp)
label753:
	addi $sp, $sp, -4
	lw $t0, -10940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10992($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11012($fp)
	addi $sp, $sp, 24
	lw $t1, -11012($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label748
label749:
	lw $t0, -6448($fp)
	sw $t0, -11016($fp)
	lw $t1, -11016($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -10932($fp)
label748:
label653:
label756:
	li $t0, 22186
	sw $t0, -11020($fp)
	lw $t1, -11020($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label757
label757:
label759:
	li $t0, 1041
	sw $t0, -11024($fp)
	addi $t0, $fp, -232
	sw $t0, -11028($fp)
	li $t0, 1
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
	lw $t0, -11024($fp)
	lw $t1, -11044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11048($fp)
	li $t0, 40977
	sw $t0, -11052($fp)
	lw $t0, -11048($fp)
	lw $t1, -11052($fp)
	mul $t0, $t0, $t1
	sw $t0, -11056($fp)
	lw $t1, -11056($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label761
label760:
	li $t0, 1172
	sw $t0, -11060($fp)
	lw $t0, -11060($fp)
	sw $t0, -11064($fp)
	lw $t0, -11064($fp)
	sw $t0, -11068($fp)
	li $t0, 8450
	sw $t0, -11072($fp)
	lw $t0, -11072($fp)
	sw $t0, -11076($fp)
	lw $t0, -11076($fp)
	sw $t0, -11080($fp)
	li $t0, 0
	sw $t0, -11084($fp)
	li $t0, 57978
	sw $t0, -11088($fp)
	lw $t1, -11088($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label768
label768:
	lw $t0, -2020($fp)
	sw $t0, -11092($fp)
	lw $t1, -11092($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label766
label767:
	lw $t0, -2356($fp)
	sw $t0, -11096($fp)
	lw $t0, -2032($fp)
	sw $t0, -11100($fp)
	lw $t0, -11096($fp)
	lw $t1, -11100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11104($fp)
	lw $t1, -11104($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -11084($fp)
label766:
	lw $t0, -11084($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -11108($fp)
	lw $t1, -11108($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label763
label762:
label769:
	addi $t0, $fp, -248
	sw $t0, -11112($fp)
	li $t0, 0
	sw $t0, -11116($fp)
	lw $t0, -2260($fp)
	sw $t0, -11120($fp)
	li $t0, 46224
	sw $t0, -11124($fp)
	lw $t1, -11120($fp)
	lw $t2, -11124($fp)
	bne $t1, $t2, label774
	j label773
label774:
	lw $t0, -6460($fp)
	sw $t0, -11128($fp)
	lw $t0, -2296($fp)
	sw $t0, -11132($fp)
	lw $t1, -11128($fp)
	lw $t2, -11132($fp)
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -11116($fp)
label773:
	li $t0, 4
	lw $t1, -11116($fp)
	mul $t0, $t0, $t1
	sw $t0, -11136($fp)
	lw $t0, -11136($fp)
	lw $t1, -11112($fp)
	add $t0, $t0, $t1
	sw $t0, -11140($fp)
	lw $t0, -11140($fp)
	lw $t1, 0($t0)
	sw $t1, -11144($fp)
	lw $t1, -11144($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label771
label770:
label775:
	li $t0, 31397
	sw $t0, -11148($fp)
	li $t0, 0
	sw $t0, -11152($fp)
	li $t0, 26351
	sw $t0, -11156($fp)
	lw $t0, -1492($fp)
	sw $t0, -11160($fp)
	lw $t1, -11156($fp)
	lw $t2, -11160($fp)
	bne $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -11152($fp)
label779:
	addi $t0, $fp, -260
	sw $t0, -11164($fp)
	lw $t0, -2212($fp)
	sw $t0, -11168($fp)
	li $t0, 4
	lw $t1, -11168($fp)
	mul $t0, $t0, $t1
	sw $t0, -11172($fp)
	lw $t0, -11172($fp)
	lw $t1, -11164($fp)
	add $t0, $t0, $t1
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	lw $t1, 0($t0)
	sw $t1, -11180($fp)
	li $t0, 2771
	sw $t0, -11184($fp)
	lw $t0, -1120($fp)
	sw $t0, -11188($fp)
	lw $t0, -11076($fp)
	sw $t0, -11192($fp)
	lw $t0, -11188($fp)
	lw $t1, -11192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11196($fp)
	lw $t0, -11064($fp)
	sw $t0, -11200($fp)
	addi $sp, $sp, -4
	lw $t0, -11152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11200($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11204($fp)
	addi $sp, $sp, 24
	lw $t0, -11148($fp)
	lw $t1, -11204($fp)
	mul $t0, $t0, $t1
	sw $t0, -11208($fp)
	lw $t1, -11208($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 0
	sw $t0, -11212($fp)
	li $t0, 0
	sw $t0, -11216($fp)
	lw $t0, -2224($fp)
	sw $t0, -11220($fp)
	lw $t1, -11220($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label782
label782:
	li $t0, 1
	sw $t0, -11216($fp)
label783:
	li $t0, 0
	lw $t1, -11216($fp)
	sub $t0, $t0, $t1
	sw $t0, -11224($fp)
	addi $sp, $sp, -4
	lw $t0, -11224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11228($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -11228($fp)
	sub $t0, $t0, $t1
	sw $t0, -11232($fp)
	li $t0, 0
	sw $t0, -11236($fp)
	addi $t0, $fp, -24
	sw $t0, -11240($fp)
	li $t0, 3
	sw $t0, -11244($fp)
	li $t0, 4
	lw $t1, -11244($fp)
	mul $t0, $t0, $t1
	sw $t0, -11248($fp)
	lw $t0, -11248($fp)
	lw $t1, -11240($fp)
	add $t0, $t0, $t1
	sw $t0, -11252($fp)
	lw $t0, -11252($fp)
	lw $t1, 0($t0)
	sw $t1, -11256($fp)
	lw $t1, -11256($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label784
label784:
	li $t0, 1
	sw $t0, -11236($fp)
label785:
	addi $sp, $sp, -4
	lw $t0, -11236($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11260($fp)
	addi $sp, $sp, 8
	lw $t0, -11232($fp)
	lw $t1, -11260($fp)
	add $t0, $t0, $t1
	sw $t0, -11264($fp)
	lw $t0, -2260($fp)
	sw $t0, -11268($fp)
	lw $t1, -11264($fp)
	lw $t2, -11268($fp)
	ble $t1, $t2, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -11212($fp)
label781:
	j label775
label777:
	j label769
label771:
label763:
	li $t0, 58179
	sw $t0, -11272($fp)
	lw $t0, -11272($fp)
	sw $t0, -11276($fp)
	lw $t0, -11276($fp)
	sw $t0, -11280($fp)
	li $t0, 13565
	sw $t0, -11284($fp)
	lw $t0, -11284($fp)
	sw $t0, -11288($fp)
	lw $t0, -11288($fp)
	sw $t0, -11292($fp)
	li $t0, 0
	sw $t0, -11296($fp)
	li $t0, 30582
	sw $t0, -11300($fp)
	lw $t1, -11300($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label786
label788:
	lw $t0, -6508($fp)
	sw $t0, -11304($fp)
	lw $t0, -2032($fp)
	sw $t0, -11308($fp)
	lw $t0, -11304($fp)
	lw $t1, -11308($fp)
	mul $t0, $t0, $t1
	sw $t0, -11312($fp)
	li $t0, 47153
	sw $t0, -11316($fp)
	lw $t0, -11312($fp)
	lw $t1, -11316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11320($fp)
	lw $t0, -6400($fp)
	sw $t0, -11324($fp)
	li $t0, 5826
	sw $t0, -11328($fp)
	lw $t0, -11324($fp)
	lw $t1, -11328($fp)
	add $t0, $t0, $t1
	sw $t0, -11332($fp)
	lw $t1, -11320($fp)
	lw $t2, -11332($fp)
	blt $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -11296($fp)
label787:
	li $t0, 0
	sw $t0, -11336($fp)
	lw $t0, -880($fp)
	sw $t0, -11340($fp)
	lw $t1, -11340($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label790
label791:
	li $t0, 15307
	sw $t0, -11344($fp)
	li $t0, 19844
	sw $t0, -11348($fp)
	lw $t0, -11344($fp)
	lw $t1, -11348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11352($fp)
	li $t0, 57991
	sw $t0, -11356($fp)
	lw $t0, -11352($fp)
	lw $t1, -11356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11360($fp)
	addi $t0, $fp, -92
	sw $t0, -11364($fp)
	lw $t0, -2236($fp)
	sw $t0, -11368($fp)
	li $t0, 4
	lw $t1, -11368($fp)
	mul $t0, $t0, $t1
	sw $t0, -11372($fp)
	lw $t0, -11372($fp)
	lw $t1, -11364($fp)
	add $t0, $t0, $t1
	sw $t0, -11376($fp)
	lw $t0, -11376($fp)
	lw $t1, 0($t0)
	sw $t1, -11380($fp)
	lw $t0, -11360($fp)
	lw $t1, -11380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11384($fp)
	lw $t1, -11384($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label790
label789:
	li $t0, 1
	sw $t0, -11336($fp)
label790:
	lw $t0, -11276($fp)
	sw $t0, -11388($fp)
	lw $t0, -11388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11288($fp)
	sw $t0, -11392($fp)
	lw $t0, -11392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -11396($fp)
	lw $t0, -2260($fp)
	sw $t0, -11400($fp)
	lw $t1, -11400($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label792
label792:
	li $t0, 1
	sw $t0, -11396($fp)
label793:
	lw $ra, -4($fp)
	lw $v0, -11396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 29151
	sw $t0, -11404($fp)
	lw $t1, -11404($fp)
	li $t2, 0
	bne $t1, $t2, label794
	j label795
label794:
	li $t0, 0
	sw $t0, -11408($fp)
	li $t0, 0
	sw $t0, -11412($fp)
	lw $t0, -1492($fp)
	sw $t0, -11416($fp)
	li $t0, 0
	sw $t0, -11420($fp)
	li $t0, 9102
	sw $t0, -11424($fp)
	lw $t0, -11424($fp)
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	sw $t0, -11428($fp)
	li $t0, 0
	sw $t0, -11432($fp)
	li $t0, 39117
	sw $t0, -11436($fp)
	addi $sp, $sp, -4
	lw $t0, -11436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11440($fp)
	addi $sp, $sp, 8
	lw $t0, -6556($fp)
	sw $t0, -11444($fp)
	lw $t1, -11440($fp)
	lw $t2, -11444($fp)
	bne $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -11432($fp)
label804:
	addi $t0, $fp, -92
	sw $t0, -11448($fp)
	lw $t0, -11288($fp)
	sw $t0, -11452($fp)
	li $t0, 4
	lw $t1, -11452($fp)
	mul $t0, $t0, $t1
	sw $t0, -11456($fp)
	lw $t0, -11456($fp)
	lw $t1, -11448($fp)
	add $t0, $t0, $t1
	sw $t0, -11460($fp)
	lw $t0, -11460($fp)
	lw $t1, 0($t0)
	sw $t1, -11464($fp)
	lw $t0, -1060($fp)
	sw $t0, -11468($fp)
	lw $t0, -11464($fp)
	lw $t1, -11468($fp)
	add $t0, $t0, $t1
	sw $t0, -11472($fp)
	li $t0, 0
	sw $t0, -11476($fp)
	lw $t0, -11276($fp)
	sw $t0, -11480($fp)
	lw $t0, -6580($fp)
	sw $t0, -11484($fp)
	lw $t1, -11480($fp)
	lw $t2, -11484($fp)
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -11476($fp)
label806:
	addi $t0, $fp, -92
	sw $t0, -11488($fp)
	lw $t0, -2320($fp)
	sw $t0, -11492($fp)
	li $t0, 4
	lw $t1, -11492($fp)
	mul $t0, $t0, $t1
	sw $t0, -11496($fp)
	lw $t0, -11496($fp)
	lw $t1, -11488($fp)
	add $t0, $t0, $t1
	sw $t0, -11500($fp)
	lw $t0, -11500($fp)
	lw $t1, 0($t0)
	sw $t1, -11504($fp)
	addi $sp, $sp, -4
	lw $t0, -11428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11508($fp)
	addi $sp, $sp, 24
	li $t0, 60933
	sw $t0, -11512($fp)
	lw $t1, -11508($fp)
	lw $t2, -11512($fp)
	bge $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -11420($fp)
label802:
	lw $t1, -11416($fp)
	lw $t2, -11420($fp)
	bne $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -11412($fp)
label800:
	li $t0, 53794
	sw $t0, -11516($fp)
	addi $t0, $fp, -6284
	sw $t0, -11520($fp)
	lw $t0, -11288($fp)
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
	lw $t0, -11516($fp)
	lw $t1, -11536($fp)
	sub $t0, $t0, $t1
	sw $t0, -11540($fp)
	lw $t1, -11412($fp)
	lw $t2, -11540($fp)
	beq $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -11408($fp)
label798:
label795:
	j label759
label761:
	j label756
label758:
	lw $t0, -6260($fp)
	sw $t0, -11544($fp)
	lw $t0, -11544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6272($fp)
	sw $t0, -11548($fp)
	lw $t0, -11548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2260($fp)
	sw $t0, -11552($fp)
	li $t0, 0
	sw $t0, -11556($fp)
	lw $t0, -2524($fp)
	sw $t0, -11560($fp)
	lw $t0, -11560($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -11564($fp)
	li $t0, 0
	sw $t0, -11568($fp)
	li $t0, 13994
	sw $t0, -11572($fp)
	li $t0, 29352
	sw $t0, -11576($fp)
	lw $t0, -11572($fp)
	lw $t1, -11576($fp)
	add $t0, $t0, $t1
	sw $t0, -11580($fp)
	lw $t0, -1084($fp)
	sw $t0, -11584($fp)
	lw $t1, -11580($fp)
	lw $t2, -11584($fp)
	bne $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -11568($fp)
label810:
	lw $t0, -2716($fp)
	sw $t0, -11588($fp)
	li $t0, 29273
	sw $t0, -11592($fp)
	lw $t0, -11588($fp)
	lw $t1, -11592($fp)
	sub $t0, $t0, $t1
	sw $t0, -11596($fp)
	li $t0, 0
	sw $t0, -11600($fp)
	li $t0, 7166
	sw $t0, -11604($fp)
	lw $t0, -6260($fp)
	sw $t0, -11608($fp)
	lw $t1, -11604($fp)
	lw $t2, -11608($fp)
	ble $t1, $t2, label813
	j label812
label813:
	lw $t0, -6272($fp)
	sw $t0, -11612($fp)
	lw $t1, -11612($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label812
label811:
	li $t0, 1
	sw $t0, -11600($fp)
label812:
	li $t0, 36315
	sw $t0, -11616($fp)
	addi $sp, $sp, -4
	lw $t0, -11564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11620($fp)
	addi $sp, $sp, 24
	lw $t1, -11620($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label807
label807:
	li $t0, 1
	sw $t0, -11556($fp)
label808:
	addi $sp, $sp, -4
	lw $t0, -11556($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11624($fp)
	addi $sp, $sp, 8
	lw $t0, -11552($fp)
	lw $t1, -11624($fp)
	sub $t0, $t0, $t1
	sw $t0, -11628($fp)
	lw $t0, -11628($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -11632($fp)
	lw $ra, -4($fp)
	lw $v0, -11632($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -24
	sw $t0, -11636($fp)
	li $t0, 0
	sw $t0, -11640($fp)
	li $t0, 4
	lw $t1, -11640($fp)
	mul $t0, $t0, $t1
	sw $t0, -11644($fp)
	lw $t0, -11644($fp)
	lw $t1, -11636($fp)
	add $t0, $t0, $t1
	sw $t0, -11648($fp)
	lw $t0, -11648($fp)
	lw $t1, 0($t0)
	sw $t1, -11652($fp)
	lw $t0, -11652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	lw $t0, -11672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -11676($fp)
	li $t0, 2
	sw $t0, -11680($fp)
	li $t0, 4
	lw $t1, -11680($fp)
	mul $t0, $t0, $t1
	sw $t0, -11684($fp)
	lw $t0, -11684($fp)
	lw $t1, -11676($fp)
	add $t0, $t0, $t1
	sw $t0, -11688($fp)
	lw $t0, -11688($fp)
	lw $t1, 0($t0)
	sw $t1, -11692($fp)
	lw $t0, -11692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -11696($fp)
	li $t0, 3
	sw $t0, -11700($fp)
	li $t0, 4
	lw $t1, -11700($fp)
	mul $t0, $t0, $t1
	sw $t0, -11704($fp)
	lw $t0, -11704($fp)
	lw $t1, -11696($fp)
	add $t0, $t0, $t1
	sw $t0, -11708($fp)
	lw $t0, -11708($fp)
	lw $t1, 0($t0)
	sw $t1, -11712($fp)
	lw $t0, -11712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -11716($fp)
	li $t0, 4
	sw $t0, -11720($fp)
	li $t0, 4
	lw $t1, -11720($fp)
	mul $t0, $t0, $t1
	sw $t0, -11724($fp)
	lw $t0, -11724($fp)
	lw $t1, -11716($fp)
	add $t0, $t0, $t1
	sw $t0, -11728($fp)
	lw $t0, -11728($fp)
	lw $t1, 0($t0)
	sw $t1, -11732($fp)
	lw $t0, -11732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11736($fp)
	li $t0, 0
	sw $t0, -11740($fp)
	li $t0, 4
	lw $t1, -11740($fp)
	mul $t0, $t0, $t1
	sw $t0, -11744($fp)
	lw $t0, -11744($fp)
	lw $t1, -11736($fp)
	add $t0, $t0, $t1
	sw $t0, -11748($fp)
	lw $t0, -11748($fp)
	lw $t1, 0($t0)
	sw $t1, -11752($fp)
	lw $t0, -11752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11756($fp)
	li $t0, 1
	sw $t0, -11760($fp)
	li $t0, 4
	lw $t1, -11760($fp)
	mul $t0, $t0, $t1
	sw $t0, -11764($fp)
	lw $t0, -11764($fp)
	lw $t1, -11756($fp)
	add $t0, $t0, $t1
	sw $t0, -11768($fp)
	lw $t0, -11768($fp)
	lw $t1, 0($t0)
	sw $t1, -11772($fp)
	lw $t0, -11772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11776($fp)
	li $t0, 2
	sw $t0, -11780($fp)
	li $t0, 4
	lw $t1, -11780($fp)
	mul $t0, $t0, $t1
	sw $t0, -11784($fp)
	lw $t0, -11784($fp)
	lw $t1, -11776($fp)
	add $t0, $t0, $t1
	sw $t0, -11788($fp)
	lw $t0, -11788($fp)
	lw $t1, 0($t0)
	sw $t1, -11792($fp)
	lw $t0, -11792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11796($fp)
	li $t0, 3
	sw $t0, -11800($fp)
	li $t0, 4
	lw $t1, -11800($fp)
	mul $t0, $t0, $t1
	sw $t0, -11804($fp)
	lw $t0, -11804($fp)
	lw $t1, -11796($fp)
	add $t0, $t0, $t1
	sw $t0, -11808($fp)
	lw $t0, -11808($fp)
	lw $t1, 0($t0)
	sw $t1, -11812($fp)
	lw $t0, -11812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11816($fp)
	li $t0, 4
	sw $t0, -11820($fp)
	li $t0, 4
	lw $t1, -11820($fp)
	mul $t0, $t0, $t1
	sw $t0, -11824($fp)
	lw $t0, -11824($fp)
	lw $t1, -11816($fp)
	add $t0, $t0, $t1
	sw $t0, -11828($fp)
	lw $t0, -11828($fp)
	lw $t1, 0($t0)
	sw $t1, -11832($fp)
	lw $t0, -11832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11836($fp)
	li $t0, 5
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
	lw $t0, -11852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11856($fp)
	li $t0, 6
	sw $t0, -11860($fp)
	li $t0, 4
	lw $t1, -11860($fp)
	mul $t0, $t0, $t1
	sw $t0, -11864($fp)
	lw $t0, -11864($fp)
	lw $t1, -11856($fp)
	add $t0, $t0, $t1
	sw $t0, -11868($fp)
	lw $t0, -11868($fp)
	lw $t1, 0($t0)
	sw $t1, -11872($fp)
	lw $t0, -11872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -11876($fp)
	li $t0, 0
	sw $t0, -11880($fp)
	li $t0, 4
	lw $t1, -11880($fp)
	mul $t0, $t0, $t1
	sw $t0, -11884($fp)
	lw $t0, -11884($fp)
	lw $t1, -11876($fp)
	add $t0, $t0, $t1
	sw $t0, -11888($fp)
	lw $t0, -11888($fp)
	lw $t1, 0($t0)
	sw $t1, -11892($fp)
	lw $t0, -11892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -11896($fp)
	li $t0, 1
	sw $t0, -11900($fp)
	li $t0, 4
	lw $t1, -11900($fp)
	mul $t0, $t0, $t1
	sw $t0, -11904($fp)
	lw $t0, -11904($fp)
	lw $t1, -11896($fp)
	add $t0, $t0, $t1
	sw $t0, -11908($fp)
	lw $t0, -11908($fp)
	lw $t1, 0($t0)
	sw $t1, -11912($fp)
	lw $t0, -11912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -11916($fp)
	li $t0, 2
	sw $t0, -11920($fp)
	li $t0, 4
	lw $t1, -11920($fp)
	mul $t0, $t0, $t1
	sw $t0, -11924($fp)
	lw $t0, -11924($fp)
	lw $t1, -11916($fp)
	add $t0, $t0, $t1
	sw $t0, -11928($fp)
	lw $t0, -11928($fp)
	lw $t1, 0($t0)
	sw $t1, -11932($fp)
	lw $t0, -11932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -11936($fp)
	li $t0, 3
	sw $t0, -11940($fp)
	li $t0, 4
	lw $t1, -11940($fp)
	mul $t0, $t0, $t1
	sw $t0, -11944($fp)
	lw $t0, -11944($fp)
	lw $t1, -11936($fp)
	add $t0, $t0, $t1
	sw $t0, -11948($fp)
	lw $t0, -11948($fp)
	lw $t1, 0($t0)
	sw $t1, -11952($fp)
	lw $t0, -11952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -11956($fp)
	li $t0, 4
	sw $t0, -11960($fp)
	li $t0, 4
	lw $t1, -11960($fp)
	mul $t0, $t0, $t1
	sw $t0, -11964($fp)
	lw $t0, -11964($fp)
	lw $t1, -11956($fp)
	add $t0, $t0, $t1
	sw $t0, -11968($fp)
	lw $t0, -11968($fp)
	lw $t1, 0($t0)
	sw $t1, -11972($fp)
	lw $t0, -11972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -11976($fp)
	li $t0, 5
	sw $t0, -11980($fp)
	li $t0, 4
	lw $t1, -11980($fp)
	mul $t0, $t0, $t1
	sw $t0, -11984($fp)
	lw $t0, -11984($fp)
	lw $t1, -11976($fp)
	add $t0, $t0, $t1
	sw $t0, -11988($fp)
	lw $t0, -11988($fp)
	lw $t1, 0($t0)
	sw $t1, -11992($fp)
	lw $t0, -11992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -11996($fp)
	li $t0, 6
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
	lw $t0, -12012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -12016($fp)
	li $t0, 7
	sw $t0, -12020($fp)
	li $t0, 4
	lw $t1, -12020($fp)
	mul $t0, $t0, $t1
	sw $t0, -12024($fp)
	lw $t0, -12024($fp)
	lw $t1, -12016($fp)
	add $t0, $t0, $t1
	sw $t0, -12028($fp)
	lw $t0, -12028($fp)
	lw $t1, 0($t0)
	sw $t1, -12032($fp)
	lw $t0, -12032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -12036($fp)
	li $t0, 8
	sw $t0, -12040($fp)
	li $t0, 4
	lw $t1, -12040($fp)
	mul $t0, $t0, $t1
	sw $t0, -12044($fp)
	lw $t0, -12044($fp)
	lw $t1, -12036($fp)
	add $t0, $t0, $t1
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	lw $t1, 0($t0)
	sw $t1, -12052($fp)
	lw $t0, -12052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -12056($fp)
	li $t0, 9
	sw $t0, -12060($fp)
	li $t0, 4
	lw $t1, -12060($fp)
	mul $t0, $t0, $t1
	sw $t0, -12064($fp)
	lw $t0, -12064($fp)
	lw $t1, -12056($fp)
	add $t0, $t0, $t1
	sw $t0, -12068($fp)
	lw $t0, -12068($fp)
	lw $t1, 0($t0)
	sw $t1, -12072($fp)
	lw $t0, -12072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -12076($fp)
	lw $t0, -12076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -12080($fp)
	lw $t0, -12080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -868($fp)
	sw $t0, -12084($fp)
	lw $t0, -12084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -12088($fp)
	lw $t0, -12088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -12092($fp)
	lw $t0, -12092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -12096($fp)
	lw $t0, -12096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -12100($fp)
	lw $t0, -12100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -12104($fp)
	lw $t0, -12104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -12108($fp)
	lw $t0, -12108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -12112($fp)
	li $t0, 0
	sw $t0, -12116($fp)
	li $t0, 4
	lw $t1, -12116($fp)
	mul $t0, $t0, $t1
	sw $t0, -12120($fp)
	lw $t0, -12120($fp)
	lw $t1, -12112($fp)
	add $t0, $t0, $t1
	sw $t0, -12124($fp)
	lw $t0, -12124($fp)
	lw $t1, 0($t0)
	sw $t1, -12128($fp)
	lw $t0, -12128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -976($fp)
	sw $t0, -12132($fp)
	lw $t0, -12132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -12136($fp)
	lw $t0, -12136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -12140($fp)
	lw $t0, -12140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -12144($fp)
	lw $t0, -12144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -12148($fp)
	lw $t0, -12148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -12152($fp)
	li $t0, 0
	sw $t0, -12156($fp)
	li $t0, 4
	lw $t1, -12156($fp)
	mul $t0, $t0, $t1
	sw $t0, -12160($fp)
	lw $t0, -12160($fp)
	lw $t1, -12152($fp)
	add $t0, $t0, $t1
	sw $t0, -12164($fp)
	lw $t0, -12164($fp)
	lw $t1, 0($t0)
	sw $t1, -12168($fp)
	lw $t0, -12168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -12172($fp)
	lw $t0, -12172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -12176($fp)
	lw $t0, -12176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -12180($fp)
	lw $t0, -12180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -12184($fp)
	lw $t0, -12184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -12188($fp)
	lw $t0, -12188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -12192($fp)
	lw $t0, -12192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -12196($fp)
	lw $t0, -12196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -12200($fp)
	lw $t0, -12200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -12204($fp)
	lw $t0, -12204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -12208($fp)
	li $t0, 0
	sw $t0, -12212($fp)
	li $t0, 4
	lw $t1, -12212($fp)
	mul $t0, $t0, $t1
	sw $t0, -12216($fp)
	lw $t0, -12216($fp)
	lw $t1, -12208($fp)
	add $t0, $t0, $t1
	sw $t0, -12220($fp)
	lw $t0, -12220($fp)
	lw $t1, 0($t0)
	sw $t1, -12224($fp)
	lw $t0, -12224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -12228($fp)
	li $t0, 1
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
	lw $t0, -12244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -12248($fp)
	li $t0, 2
	sw $t0, -12252($fp)
	li $t0, 4
	lw $t1, -12252($fp)
	mul $t0, $t0, $t1
	sw $t0, -12256($fp)
	lw $t0, -12256($fp)
	lw $t1, -12248($fp)
	add $t0, $t0, $t1
	sw $t0, -12260($fp)
	lw $t0, -12260($fp)
	lw $t1, 0($t0)
	sw $t1, -12264($fp)
	lw $t0, -12264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12268($fp)
	li $t0, 0
	sw $t0, -12272($fp)
	li $t0, 4
	lw $t1, -12272($fp)
	mul $t0, $t0, $t1
	sw $t0, -12276($fp)
	lw $t0, -12276($fp)
	lw $t1, -12268($fp)
	add $t0, $t0, $t1
	sw $t0, -12280($fp)
	lw $t0, -12280($fp)
	lw $t1, 0($t0)
	sw $t1, -12284($fp)
	lw $t0, -12284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12288($fp)
	li $t0, 1
	sw $t0, -12292($fp)
	li $t0, 4
	lw $t1, -12292($fp)
	mul $t0, $t0, $t1
	sw $t0, -12296($fp)
	lw $t0, -12296($fp)
	lw $t1, -12288($fp)
	add $t0, $t0, $t1
	sw $t0, -12300($fp)
	lw $t0, -12300($fp)
	lw $t1, 0($t0)
	sw $t1, -12304($fp)
	lw $t0, -12304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12308($fp)
	li $t0, 2
	sw $t0, -12312($fp)
	li $t0, 4
	lw $t1, -12312($fp)
	mul $t0, $t0, $t1
	sw $t0, -12316($fp)
	lw $t0, -12316($fp)
	lw $t1, -12308($fp)
	add $t0, $t0, $t1
	sw $t0, -12320($fp)
	lw $t0, -12320($fp)
	lw $t1, 0($t0)
	sw $t1, -12324($fp)
	lw $t0, -12324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12328($fp)
	li $t0, 3
	sw $t0, -12332($fp)
	li $t0, 4
	lw $t1, -12332($fp)
	mul $t0, $t0, $t1
	sw $t0, -12336($fp)
	lw $t0, -12336($fp)
	lw $t1, -12328($fp)
	add $t0, $t0, $t1
	sw $t0, -12340($fp)
	lw $t0, -12340($fp)
	lw $t1, 0($t0)
	sw $t1, -12344($fp)
	lw $t0, -12344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12348($fp)
	li $t0, 4
	sw $t0, -12352($fp)
	li $t0, 4
	lw $t1, -12352($fp)
	mul $t0, $t0, $t1
	sw $t0, -12356($fp)
	lw $t0, -12356($fp)
	lw $t1, -12348($fp)
	add $t0, $t0, $t1
	sw $t0, -12360($fp)
	lw $t0, -12360($fp)
	lw $t1, 0($t0)
	sw $t1, -12364($fp)
	lw $t0, -12364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12368($fp)
	li $t0, 5
	sw $t0, -12372($fp)
	li $t0, 4
	lw $t1, -12372($fp)
	mul $t0, $t0, $t1
	sw $t0, -12376($fp)
	lw $t0, -12376($fp)
	lw $t1, -12368($fp)
	add $t0, $t0, $t1
	sw $t0, -12380($fp)
	lw $t0, -12380($fp)
	lw $t1, 0($t0)
	sw $t1, -12384($fp)
	lw $t0, -12384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12388($fp)
	li $t0, 6
	sw $t0, -12392($fp)
	li $t0, 4
	lw $t1, -12392($fp)
	mul $t0, $t0, $t1
	sw $t0, -12396($fp)
	lw $t0, -12396($fp)
	lw $t1, -12388($fp)
	add $t0, $t0, $t1
	sw $t0, -12400($fp)
	lw $t0, -12400($fp)
	lw $t1, 0($t0)
	sw $t1, -12404($fp)
	lw $t0, -12404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12408($fp)
	li $t0, 7
	sw $t0, -12412($fp)
	li $t0, 4
	lw $t1, -12412($fp)
	mul $t0, $t0, $t1
	sw $t0, -12416($fp)
	lw $t0, -12416($fp)
	lw $t1, -12408($fp)
	add $t0, $t0, $t1
	sw $t0, -12420($fp)
	lw $t0, -12420($fp)
	lw $t1, 0($t0)
	sw $t1, -12424($fp)
	lw $t0, -12424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12428($fp)
	li $t0, 8
	sw $t0, -12432($fp)
	li $t0, 4
	lw $t1, -12432($fp)
	mul $t0, $t0, $t1
	sw $t0, -12436($fp)
	lw $t0, -12436($fp)
	lw $t1, -12428($fp)
	add $t0, $t0, $t1
	sw $t0, -12440($fp)
	lw $t0, -12440($fp)
	lw $t1, 0($t0)
	sw $t1, -12444($fp)
	lw $t0, -12444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -12448($fp)
	li $t0, 9
	sw $t0, -12452($fp)
	li $t0, 4
	lw $t1, -12452($fp)
	mul $t0, $t0, $t1
	sw $t0, -12456($fp)
	lw $t0, -12456($fp)
	lw $t1, -12448($fp)
	add $t0, $t0, $t1
	sw $t0, -12460($fp)
	lw $t0, -12460($fp)
	lw $t1, 0($t0)
	sw $t1, -12464($fp)
	lw $t0, -12464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1480($fp)
	sw $t0, -12468($fp)
	lw $t0, -12468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1492($fp)
	sw $t0, -12472($fp)
	lw $t0, -12472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12476($fp)
	li $t0, 0
	sw $t0, -12480($fp)
	li $t0, 4
	lw $t1, -12480($fp)
	mul $t0, $t0, $t1
	sw $t0, -12484($fp)
	lw $t0, -12484($fp)
	lw $t1, -12476($fp)
	add $t0, $t0, $t1
	sw $t0, -12488($fp)
	lw $t0, -12488($fp)
	lw $t1, 0($t0)
	sw $t1, -12492($fp)
	lw $t0, -12492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12496($fp)
	li $t0, 1
	sw $t0, -12500($fp)
	li $t0, 4
	lw $t1, -12500($fp)
	mul $t0, $t0, $t1
	sw $t0, -12504($fp)
	lw $t0, -12504($fp)
	lw $t1, -12496($fp)
	add $t0, $t0, $t1
	sw $t0, -12508($fp)
	lw $t0, -12508($fp)
	lw $t1, 0($t0)
	sw $t1, -12512($fp)
	lw $t0, -12512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12516($fp)
	li $t0, 2
	sw $t0, -12520($fp)
	li $t0, 4
	lw $t1, -12520($fp)
	mul $t0, $t0, $t1
	sw $t0, -12524($fp)
	lw $t0, -12524($fp)
	lw $t1, -12516($fp)
	add $t0, $t0, $t1
	sw $t0, -12528($fp)
	lw $t0, -12528($fp)
	lw $t1, 0($t0)
	sw $t1, -12532($fp)
	lw $t0, -12532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12536($fp)
	li $t0, 3
	sw $t0, -12540($fp)
	li $t0, 4
	lw $t1, -12540($fp)
	mul $t0, $t0, $t1
	sw $t0, -12544($fp)
	lw $t0, -12544($fp)
	lw $t1, -12536($fp)
	add $t0, $t0, $t1
	sw $t0, -12548($fp)
	lw $t0, -12548($fp)
	lw $t1, 0($t0)
	sw $t1, -12552($fp)
	lw $t0, -12552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12556($fp)
	li $t0, 4
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
	lw $t0, -12572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12576($fp)
	li $t0, 5
	sw $t0, -12580($fp)
	li $t0, 4
	lw $t1, -12580($fp)
	mul $t0, $t0, $t1
	sw $t0, -12584($fp)
	lw $t0, -12584($fp)
	lw $t1, -12576($fp)
	add $t0, $t0, $t1
	sw $t0, -12588($fp)
	lw $t0, -12588($fp)
	lw $t1, 0($t0)
	sw $t1, -12592($fp)
	lw $t0, -12592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12596($fp)
	li $t0, 6
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
	lw $t0, -12612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12616($fp)
	li $t0, 7
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
	lw $t0, -12632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12636($fp)
	li $t0, 8
	sw $t0, -12640($fp)
	li $t0, 4
	lw $t1, -12640($fp)
	mul $t0, $t0, $t1
	sw $t0, -12644($fp)
	lw $t0, -12644($fp)
	lw $t1, -12636($fp)
	add $t0, $t0, $t1
	sw $t0, -12648($fp)
	lw $t0, -12648($fp)
	lw $t1, 0($t0)
	sw $t1, -12652($fp)
	lw $t0, -12652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12656($fp)
	li $t0, 9
	sw $t0, -12660($fp)
	li $t0, 4
	lw $t1, -12660($fp)
	mul $t0, $t0, $t1
	sw $t0, -12664($fp)
	lw $t0, -12664($fp)
	lw $t1, -12656($fp)
	add $t0, $t0, $t1
	sw $t0, -12668($fp)
	lw $t0, -12668($fp)
	lw $t1, 0($t0)
	sw $t1, -12672($fp)
	lw $t0, -12672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12676($fp)
	li $t0, 0
	sw $t0, -12680($fp)
	li $t0, 4
	lw $t1, -12680($fp)
	mul $t0, $t0, $t1
	sw $t0, -12684($fp)
	lw $t0, -12684($fp)
	lw $t1, -12676($fp)
	add $t0, $t0, $t1
	sw $t0, -12688($fp)
	lw $t0, -12688($fp)
	lw $t1, 0($t0)
	sw $t1, -12692($fp)
	lw $t0, -12692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12696($fp)
	li $t0, 1
	sw $t0, -12700($fp)
	li $t0, 4
	lw $t1, -12700($fp)
	mul $t0, $t0, $t1
	sw $t0, -12704($fp)
	lw $t0, -12704($fp)
	lw $t1, -12696($fp)
	add $t0, $t0, $t1
	sw $t0, -12708($fp)
	lw $t0, -12708($fp)
	lw $t1, 0($t0)
	sw $t1, -12712($fp)
	lw $t0, -12712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12716($fp)
	li $t0, 2
	sw $t0, -12720($fp)
	li $t0, 4
	lw $t1, -12720($fp)
	mul $t0, $t0, $t1
	sw $t0, -12724($fp)
	lw $t0, -12724($fp)
	lw $t1, -12716($fp)
	add $t0, $t0, $t1
	sw $t0, -12728($fp)
	lw $t0, -12728($fp)
	lw $t1, 0($t0)
	sw $t1, -12732($fp)
	lw $t0, -12732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12736($fp)
	li $t0, 3
	sw $t0, -12740($fp)
	li $t0, 4
	lw $t1, -12740($fp)
	mul $t0, $t0, $t1
	sw $t0, -12744($fp)
	lw $t0, -12744($fp)
	lw $t1, -12736($fp)
	add $t0, $t0, $t1
	sw $t0, -12748($fp)
	lw $t0, -12748($fp)
	lw $t1, 0($t0)
	sw $t1, -12752($fp)
	lw $t0, -12752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12756($fp)
	li $t0, 4
	sw $t0, -12760($fp)
	li $t0, 4
	lw $t1, -12760($fp)
	mul $t0, $t0, $t1
	sw $t0, -12764($fp)
	lw $t0, -12764($fp)
	lw $t1, -12756($fp)
	add $t0, $t0, $t1
	sw $t0, -12768($fp)
	lw $t0, -12768($fp)
	lw $t1, 0($t0)
	sw $t1, -12772($fp)
	lw $t0, -12772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12776($fp)
	li $t0, 5
	sw $t0, -12780($fp)
	li $t0, 4
	lw $t1, -12780($fp)
	mul $t0, $t0, $t1
	sw $t0, -12784($fp)
	lw $t0, -12784($fp)
	lw $t1, -12776($fp)
	add $t0, $t0, $t1
	sw $t0, -12788($fp)
	lw $t0, -12788($fp)
	lw $t1, 0($t0)
	sw $t1, -12792($fp)
	lw $t0, -12792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12796($fp)
	li $t0, 6
	sw $t0, -12800($fp)
	li $t0, 4
	lw $t1, -12800($fp)
	mul $t0, $t0, $t1
	sw $t0, -12804($fp)
	lw $t0, -12804($fp)
	lw $t1, -12796($fp)
	add $t0, $t0, $t1
	sw $t0, -12808($fp)
	lw $t0, -12808($fp)
	lw $t1, 0($t0)
	sw $t1, -12812($fp)
	lw $t0, -12812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12816($fp)
	li $t0, 7
	sw $t0, -12820($fp)
	li $t0, 4
	lw $t1, -12820($fp)
	mul $t0, $t0, $t1
	sw $t0, -12824($fp)
	lw $t0, -12824($fp)
	lw $t1, -12816($fp)
	add $t0, $t0, $t1
	sw $t0, -12828($fp)
	lw $t0, -12828($fp)
	lw $t1, 0($t0)
	sw $t1, -12832($fp)
	lw $t0, -12832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1936($fp)
	sw $t0, -12836($fp)
	lw $t0, -12836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1948($fp)
	sw $t0, -12840($fp)
	lw $t0, -12840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -12844($fp)
	li $t0, 0
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
	addi $t0, $fp, -232
	sw $t0, -12864($fp)
	li $t0, 1
	sw $t0, -12868($fp)
	li $t0, 4
	lw $t1, -12868($fp)
	mul $t0, $t0, $t1
	sw $t0, -12872($fp)
	lw $t0, -12872($fp)
	lw $t1, -12864($fp)
	add $t0, $t0, $t1
	sw $t0, -12876($fp)
	lw $t0, -12876($fp)
	lw $t1, 0($t0)
	sw $t1, -12880($fp)
	lw $t0, -12880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2008($fp)
	sw $t0, -12884($fp)
	lw $t0, -12884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2020($fp)
	sw $t0, -12888($fp)
	lw $t0, -12888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2032($fp)
	sw $t0, -12892($fp)
	lw $t0, -12892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -248
	sw $t0, -12896($fp)
	li $t0, 0
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
	addi $t0, $fp, -248
	sw $t0, -12916($fp)
	li $t0, 1
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
	addi $t0, $fp, -248
	sw $t0, -12936($fp)
	li $t0, 2
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
	lw $t0, -12952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -248
	sw $t0, -12956($fp)
	li $t0, 3
	sw $t0, -12960($fp)
	li $t0, 4
	lw $t1, -12960($fp)
	mul $t0, $t0, $t1
	sw $t0, -12964($fp)
	lw $t0, -12964($fp)
	lw $t1, -12956($fp)
	add $t0, $t0, $t1
	sw $t0, -12968($fp)
	lw $t0, -12968($fp)
	lw $t1, 0($t0)
	sw $t1, -12972($fp)
	lw $t0, -12972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -12976($fp)
	li $t0, 0
	sw $t0, -12980($fp)
	li $t0, 4
	lw $t1, -12980($fp)
	mul $t0, $t0, $t1
	sw $t0, -12984($fp)
	lw $t0, -12984($fp)
	lw $t1, -12976($fp)
	add $t0, $t0, $t1
	sw $t0, -12988($fp)
	lw $t0, -12988($fp)
	lw $t1, 0($t0)
	sw $t1, -12992($fp)
	lw $t0, -12992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -12996($fp)
	li $t0, 1
	sw $t0, -13000($fp)
	li $t0, 4
	lw $t1, -13000($fp)
	mul $t0, $t0, $t1
	sw $t0, -13004($fp)
	lw $t0, -13004($fp)
	lw $t1, -12996($fp)
	add $t0, $t0, $t1
	sw $t0, -13008($fp)
	lw $t0, -13008($fp)
	lw $t1, 0($t0)
	sw $t1, -13012($fp)
	lw $t0, -13012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -13016($fp)
	li $t0, 2
	sw $t0, -13020($fp)
	li $t0, 4
	lw $t1, -13020($fp)
	mul $t0, $t0, $t1
	sw $t0, -13024($fp)
	lw $t0, -13024($fp)
	lw $t1, -13016($fp)
	add $t0, $t0, $t1
	sw $t0, -13028($fp)
	lw $t0, -13028($fp)
	lw $t1, 0($t0)
	sw $t1, -13032($fp)
	lw $t0, -13032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2212($fp)
	sw $t0, -13036($fp)
	lw $t0, -13036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2224($fp)
	sw $t0, -13040($fp)
	lw $t0, -13040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2236($fp)
	sw $t0, -13044($fp)
	lw $t0, -13044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2248($fp)
	sw $t0, -13048($fp)
	lw $t0, -13048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2260($fp)
	sw $t0, -13052($fp)
	lw $t0, -13052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2272($fp)
	sw $t0, -13056($fp)
	lw $t0, -13056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2284($fp)
	sw $t0, -13060($fp)
	lw $t0, -13060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2296($fp)
	sw $t0, -13064($fp)
	lw $t0, -13064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2308($fp)
	sw $t0, -13068($fp)
	lw $t0, -13068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2320($fp)
	sw $t0, -13072($fp)
	lw $t0, -13072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2332($fp)
	sw $t0, -13076($fp)
	lw $t0, -13076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2344($fp)
	sw $t0, -13080($fp)
	lw $t0, -13080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2356($fp)
	sw $t0, -13084($fp)
	lw $t0, -13084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2368($fp)
	sw $t0, -13088($fp)
	lw $t0, -13088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -13092($fp)
	li $t0, 0
	sw $t0, -13096($fp)
	li $t0, 4
	lw $t1, -13096($fp)
	mul $t0, $t0, $t1
	sw $t0, -13100($fp)
	lw $t0, -13100($fp)
	lw $t1, -13092($fp)
	add $t0, $t0, $t1
	sw $t0, -13104($fp)
	lw $t0, -13104($fp)
	lw $t1, 0($t0)
	sw $t1, -13108($fp)
	lw $t0, -13108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -13112($fp)
	li $t0, 1
	sw $t0, -13116($fp)
	li $t0, 4
	lw $t1, -13116($fp)
	mul $t0, $t0, $t1
	sw $t0, -13120($fp)
	lw $t0, -13120($fp)
	lw $t1, -13112($fp)
	add $t0, $t0, $t1
	sw $t0, -13124($fp)
	lw $t0, -13124($fp)
	lw $t1, 0($t0)
	sw $t1, -13128($fp)
	lw $t0, -13128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -13132($fp)
	li $t0, 2
	sw $t0, -13136($fp)
	li $t0, 4
	lw $t1, -13136($fp)
	mul $t0, $t0, $t1
	sw $t0, -13140($fp)
	lw $t0, -13140($fp)
	lw $t1, -13132($fp)
	add $t0, $t0, $t1
	sw $t0, -13144($fp)
	lw $t0, -13144($fp)
	lw $t1, 0($t0)
	sw $t1, -13148($fp)
	lw $t0, -13148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -13152($fp)
	li $t0, 3
	sw $t0, -13156($fp)
	li $t0, 4
	lw $t1, -13156($fp)
	mul $t0, $t0, $t1
	sw $t0, -13160($fp)
	lw $t0, -13160($fp)
	lw $t1, -13152($fp)
	add $t0, $t0, $t1
	sw $t0, -13164($fp)
	lw $t0, -13164($fp)
	lw $t1, 0($t0)
	sw $t1, -13168($fp)
	lw $t0, -13168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -13172($fp)
	li $t0, 4
	sw $t0, -13176($fp)
	li $t0, 4
	lw $t1, -13176($fp)
	mul $t0, $t0, $t1
	sw $t0, -13180($fp)
	lw $t0, -13180($fp)
	lw $t1, -13172($fp)
	add $t0, $t0, $t1
	sw $t0, -13184($fp)
	lw $t0, -13184($fp)
	lw $t1, 0($t0)
	sw $t1, -13188($fp)
	lw $t0, -13188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2500($fp)
	sw $t0, -13192($fp)
	lw $t0, -13192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2512($fp)
	sw $t0, -13196($fp)
	lw $t0, -13196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2524($fp)
	sw $t0, -13200($fp)
	lw $t0, -13200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2536($fp)
	sw $t0, -13204($fp)
	lw $t0, -13204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2548($fp)
	sw $t0, -13208($fp)
	lw $t0, -13208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2560($fp)
	sw $t0, -13212($fp)
	lw $t0, -13212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2572($fp)
	sw $t0, -13216($fp)
	lw $t0, -13216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2584($fp)
	sw $t0, -13220($fp)
	lw $t0, -13220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2596($fp)
	sw $t0, -13224($fp)
	lw $t0, -13224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2608($fp)
	sw $t0, -13228($fp)
	lw $t0, -13228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
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
	addi $t0, $fp, -292
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
	addi $t0, $fp, -292
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
	lw $t0, -2692($fp)
	sw $t0, -13292($fp)
	lw $t0, -13292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2704($fp)
	sw $t0, -13296($fp)
	lw $t0, -13296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2716($fp)
	sw $t0, -13300($fp)
	lw $t0, -13300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2728($fp)
	sw $t0, -13304($fp)
	lw $t0, -13304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2740($fp)
	sw $t0, -13308($fp)
	lw $t0, -13308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2752($fp)
	sw $t0, -13312($fp)
	lw $t0, -13312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2764($fp)
	sw $t0, -13316($fp)
	lw $t0, -13316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2776($fp)
	sw $t0, -13320($fp)
	lw $t0, -13320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2788($fp)
	sw $t0, -13324($fp)
	lw $t0, -13324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2800($fp)
	sw $t0, -13328($fp)
	lw $t0, -13328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2812($fp)
	sw $t0, -13332($fp)
	lw $t0, -13332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2824($fp)
	sw $t0, -13336($fp)
	lw $t0, -13336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -13340($fp)
	li $t0, 0
	sw $t0, -13344($fp)
	li $t0, 4
	lw $t1, -13344($fp)
	mul $t0, $t0, $t1
	sw $t0, -13348($fp)
	lw $t0, -13348($fp)
	lw $t1, -13340($fp)
	add $t0, $t0, $t1
	sw $t0, -13352($fp)
	lw $t0, -13352($fp)
	lw $t1, 0($t0)
	sw $t1, -13356($fp)
	lw $t0, -13356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -13360($fp)
	li $t0, 1
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
	addi $t0, $fp, -308
	sw $t0, -13380($fp)
	li $t0, 2
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
	addi $t0, $fp, -308
	sw $t0, -13400($fp)
	li $t0, 3
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
	lw $t0, -2932($fp)
	sw $t0, -13420($fp)
	lw $t0, -13420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -13424($fp)
	li $t0, 0
	sw $t0, -13428($fp)
	li $t0, 0
	sw $t0, -13432($fp)
	li $t0, 0
	sw $t0, -13436($fp)
	addi $t0, $fp, -232
	sw $t0, -13440($fp)
	lw $t0, -2740($fp)
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
	lw $t1, -13456($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label820
label820:
	li $t0, 1
	sw $t0, -13436($fp)
label821:
	lw $t0, -2752($fp)
	sw $t0, -13460($fp)
	lw $t0, -1060($fp)
	sw $t0, -13464($fp)
	lw $t0, -13460($fp)
	lw $t1, -13464($fp)
	add $t0, $t0, $t1
	sw $t0, -13468($fp)
	lw $t1, -13436($fp)
	lw $t2, -13468($fp)
	bne $t1, $t2, label818
	j label819
label818:
	li $t0, 1
	sw $t0, -13432($fp)
label819:
	li $t0, 30315
	sw $t0, -13472($fp)
	lw $t1, -13432($fp)
	lw $t2, -13472($fp)
	beq $t1, $t2, label816
	j label817
label816:
	li $t0, 1
	sw $t0, -13428($fp)
label817:
	li $t0, 0
	sw $t0, -13476($fp)
	li $t0, 0
	sw $t0, -13480($fp)
	li $t0, 5795
	sw $t0, -13484($fp)
	lw $t0, -856($fp)
	sw $t0, -13488($fp)
	lw $t1, -13484($fp)
	lw $t2, -13488($fp)
	beq $t1, $t2, label824
	j label825
label824:
	li $t0, 1
	sw $t0, -13480($fp)
label825:
	li $t0, 59361
	sw $t0, -13492($fp)
	lw $t1, -13480($fp)
	lw $t2, -13492($fp)
	bne $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -13476($fp)
label823:
	addi $sp, $sp, -4
	lw $t0, -13476($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13496($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -13496($fp)
	sub $t0, $t0, $t1
	sw $t0, -13500($fp)
	lw $t1, -13428($fp)
	lw $t2, -13500($fp)
	bne $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -13424($fp)
label815:
	lw $ra, -4($fp)
	lw $v0, -13424($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5932
	li $t0, 5756
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 6967
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 2276
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 63734
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 53191
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 33673
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 970
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 14007
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 42067
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 27133
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 6650
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 55633
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 57715
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 53803
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 61459
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 7486
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 8111
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 53914
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 36637
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 47228
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 63016
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 32034
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 35487
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 33795
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 39200
	sw $t0, -400($fp)
	addi $t0, $fp, -12
	sw $t0, -404($fp)
	li $t0, 0
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
	li $t0, 64760
	sw $t0, -424($fp)
	addi $t0, $fp, -12
	sw $t0, -428($fp)
	li $t0, 1
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
	li $t0, 47789
	sw $t0, -448($fp)
	addi $t0, $fp, -52
	sw $t0, -452($fp)
	li $t0, 0
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
	li $t0, 3017
	sw $t0, -472($fp)
	addi $t0, $fp, -52
	sw $t0, -476($fp)
	li $t0, 1
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
	li $t0, 29539
	sw $t0, -496($fp)
	addi $t0, $fp, -52
	sw $t0, -500($fp)
	li $t0, 2
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
	li $t0, 53584
	sw $t0, -520($fp)
	addi $t0, $fp, -52
	sw $t0, -524($fp)
	li $t0, 3
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
	li $t0, 62378
	sw $t0, -544($fp)
	addi $t0, $fp, -52
	sw $t0, -548($fp)
	li $t0, 4
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
	li $t0, 35295
	sw $t0, -568($fp)
	addi $t0, $fp, -52
	sw $t0, -572($fp)
	li $t0, 5
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
	li $t0, 60551
	sw $t0, -592($fp)
	addi $t0, $fp, -52
	sw $t0, -596($fp)
	li $t0, 6
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
	li $t0, 64654
	sw $t0, -616($fp)
	addi $t0, $fp, -52
	sw $t0, -620($fp)
	li $t0, 7
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
	li $t0, 33494
	sw $t0, -640($fp)
	addi $t0, $fp, -52
	sw $t0, -644($fp)
	li $t0, 8
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
	li $t0, 48207
	sw $t0, -664($fp)
	addi $t0, $fp, -52
	sw $t0, -668($fp)
	li $t0, 9
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
	li $t0, 32791
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 34464
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 62214
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 9323
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 61597
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 3328
	sw $t0, -748($fp)
	addi $t0, $fp, -80
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
	li $t0, 64956
	sw $t0, -772($fp)
	addi $t0, $fp, -80
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
	li $t0, 53776
	sw $t0, -796($fp)
	addi $t0, $fp, -80
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
	li $t0, 57131
	sw $t0, -820($fp)
	addi $t0, $fp, -80
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
	li $t0, 60879
	sw $t0, -844($fp)
	addi $t0, $fp, -80
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
	li $t0, 61262
	sw $t0, -868($fp)
	addi $t0, $fp, -80
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
	li $t0, 65242
	sw $t0, -892($fp)
	addi $t0, $fp, -80
	sw $t0, -896($fp)
	li $t0, 6
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
	li $t0, 49257
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 32363
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 46934
	sw $t0, -940($fp)
	addi $t0, $fp, -88
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
	li $t0, 46737
	sw $t0, -964($fp)
	addi $t0, $fp, -88
	sw $t0, -968($fp)
	li $t0, 1
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
	li $t0, 64397
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 16885
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 14996
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 38061
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 16110
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 62786
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 41078
	sw $t0, -1060($fp)
	addi $t0, $fp, -108
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
	li $t0, 45649
	sw $t0, -1084($fp)
	addi $t0, $fp, -108
	sw $t0, -1088($fp)
	li $t0, 1
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
	li $t0, 50834
	sw $t0, -1108($fp)
	addi $t0, $fp, -108
	sw $t0, -1112($fp)
	li $t0, 2
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
	li $t0, 37921
	sw $t0, -1132($fp)
	addi $t0, $fp, -108
	sw $t0, -1136($fp)
	li $t0, 3
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
	li $t0, 15409
	sw $t0, -1156($fp)
	addi $t0, $fp, -108
	sw $t0, -1160($fp)
	li $t0, 4
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
	lw $t0, -704($fp)
	sw $t0, -1180($fp)
	li $t0, 45850
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	li $t0, 0
	lw $t1, -1188($fp)
	sub $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -116($fp)
	sw $t0, -1196($fp)
	li $t0, 0
	lw $t1, -1196($fp)
	sub $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1192($fp)
	lw $t1, -1200($fp)
	sub $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -116($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	addi $t0, $fp, -52
	sw $t0, -1484($fp)
	li $t0, 7
	sw $t0, -1488($fp)
	li $t0, 4
	lw $t1, -1488($fp)
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1504($fp)
	li $t0, 8
	sw $t0, -1508($fp)
	li $t0, 4
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1524($fp)
	li $t0, 9
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
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1564($fp)
	li $t0, 0
	sw $t0, -1568($fp)
	li $t0, 4
	lw $t1, -1568($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	lw $t0, -1580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1584($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1604($fp)
	li $t0, 2
	sw $t0, -1608($fp)
	li $t0, 4
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	lw $t0, -1620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1624($fp)
	li $t0, 3
	sw $t0, -1628($fp)
	li $t0, 4
	lw $t1, -1628($fp)
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	lw $t1, 0($t0)
	sw $t1, -1640($fp)
	lw $t0, -1640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1644($fp)
	li $t0, 4
	sw $t0, -1648($fp)
	li $t0, 4
	lw $t1, -1648($fp)
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, -1644($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, 0($t0)
	sw $t1, -1660($fp)
	lw $t0, -1660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1664($fp)
	li $t0, 5
	sw $t0, -1668($fp)
	li $t0, 4
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1684($fp)
	li $t0, 6
	sw $t0, -1688($fp)
	li $t0, 4
	lw $t1, -1688($fp)
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
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
	addi $t0, $fp, -88
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
	lw $t0, -992($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	li $t0, 4
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	lw $t1, 0($t0)
	sw $t1, -1792($fp)
	lw $t0, -1792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1796($fp)
	li $t0, 1
	sw $t0, -1800($fp)
	li $t0, 4
	lw $t1, -1800($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	lw $t1, 0($t0)
	sw $t1, -1812($fp)
	lw $t0, -1812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1816($fp)
	li $t0, 2
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
	lw $t0, -1832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1836($fp)
	li $t0, 3
	sw $t0, -1840($fp)
	li $t0, 4
	lw $t1, -1840($fp)
	mul $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	lw $t1, 0($t0)
	sw $t1, -1852($fp)
	lw $t0, -1852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1856($fp)
	li $t0, 4
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
	lw $t0, -1872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1876($fp)
	addi $t0, $fp, -12
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	li $t0, 37039
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label831
	j label830
label831:
	li $t0, 48903
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -1884($fp)
label830:
	li $t0, 4
	lw $t1, -1884($fp)
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, 0($t0)
	sw $t1, -1904($fp)
	lw $t0, -1016($fp)
	sw $t0, -1908($fp)
	lw $t0, -248($fp)
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t1, -1904($fp)
	lw $t2, -1916($fp)
	blt $t1, $t2, label826
	j label828
label828:
	li $t0, 0
	sw $t0, -1920($fp)
	li $t0, 25199
	sw $t0, -1924($fp)
	li $t0, 13618
	sw $t0, -1928($fp)
	lw $t0, -1924($fp)
	lw $t1, -1928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label834
label834:
	li $t0, 13892
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -1920($fp)
label833:
	lw $t0, -164($fp)
	sw $t0, -1940($fp)
	li $t0, 0
	lw $t1, -1940($fp)
	sub $t0, $t0, $t1
	sw $t0, -1944($fp)
	li $t0, 0
	lw $t1, -1944($fp)
	sub $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -176($fp)
	sw $t0, -1952($fp)
	li $t0, 17831
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1960($fp)
	addi $t0, $fp, -80
	sw $t0, -1964($fp)
	lw $t0, -728($fp)
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
	li $t0, 0
	lw $t1, -1980($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	addi $t0, $fp, -80
	sw $t0, -1988($fp)
	li $t0, 4
	sw $t0, -1992($fp)
	li $t0, 4
	lw $t1, -1992($fp)
	mul $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	lw $t1, -1988($fp)
	add $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	lw $t1, 0($t0)
	sw $t1, -2004($fp)
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2008($fp)
	addi $sp, $sp, 24
	li $t0, 28527
	sw $t0, -2012($fp)
	lw $t1, -2008($fp)
	lw $t2, -2012($fp)
	bne $t1, $t2, label826
	j label827
label826:
	li $t0, 1
	sw $t0, -1876($fp)
label827:
	lw $ra, -4($fp)
	lw $v0, -1876($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -116($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	lw $t0, -2128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -2132($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -2152($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -2172($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -2192($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -2212($fp)
	li $t0, 3
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
	lw $t0, -2228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2232($fp)
	li $t0, 4
	sw $t0, -2236($fp)
	li $t0, 4
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2252($fp)
	li $t0, 5
	sw $t0, -2256($fp)
	li $t0, 4
	lw $t1, -2256($fp)
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	lw $t0, -2268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2272($fp)
	li $t0, 6
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
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2292($fp)
	li $t0, 7
	sw $t0, -2296($fp)
	li $t0, 4
	lw $t1, -2296($fp)
	mul $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	lw $t1, 0($t0)
	sw $t1, -2308($fp)
	lw $t0, -2308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2312($fp)
	li $t0, 8
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
	lw $t0, -2328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2332($fp)
	li $t0, 9
	sw $t0, -2336($fp)
	li $t0, 4
	lw $t1, -2336($fp)
	mul $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	lw $t1, 0($t0)
	sw $t1, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2372($fp)
	li $t0, 0
	sw $t0, -2376($fp)
	li $t0, 4
	lw $t1, -2376($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	lw $t0, -2388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2392($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -2412($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -2432($fp)
	li $t0, 3
	sw $t0, -2436($fp)
	li $t0, 4
	lw $t1, -2436($fp)
	mul $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	lw $t1, 0($t0)
	sw $t1, -2448($fp)
	lw $t0, -2448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2452($fp)
	li $t0, 4
	sw $t0, -2456($fp)
	li $t0, 4
	lw $t1, -2456($fp)
	mul $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	lw $t1, 0($t0)
	sw $t1, -2468($fp)
	lw $t0, -2468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2472($fp)
	li $t0, 5
	sw $t0, -2476($fp)
	li $t0, 4
	lw $t1, -2476($fp)
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	lw $t1, 0($t0)
	sw $t1, -2488($fp)
	lw $t0, -2488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2492($fp)
	li $t0, 6
	sw $t0, -2496($fp)
	li $t0, 4
	lw $t1, -2496($fp)
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, 0($t0)
	sw $t1, -2508($fp)
	lw $t0, -2508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2520($fp)
	li $t0, 0
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
	li $t0, 1
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
	lw $t0, -992($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	addi $t0, $fp, -88
	sw $t0, -2692($fp)
	lw $t0, -272($fp)
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
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label837
label837:
	li $t0, 1
	sw $t0, -2688($fp)
label838:
	li $t0, 0
	lw $t1, -2688($fp)
	sub $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -2684($fp)
label836:
	lw $ra, -4($fp)
	lw $v0, -2684($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -176($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -2720($fp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2724($fp)
	addi $sp, $sp, 8
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label840
label839:
	li $t0, 0
	sw $t0, -2728($fp)
	li $t0, 13038
	sw $t0, -2732($fp)
	li $t0, 2132
	sw $t0, -2736($fp)
	lw $t1, -2732($fp)
	lw $t2, -2736($fp)
	beq $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -2728($fp)
label843:
	j label841
label840:
	li $t0, 0
	sw $t0, -2740($fp)
	li $t0, 0
	sw $t0, -2744($fp)
	addi $t0, $fp, -12
	sw $t0, -2748($fp)
	lw $t0, -932($fp)
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
	lw $t1, -2764($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label849
label849:
	li $t0, 1
	sw $t0, -2744($fp)
label850:
	addi $t0, $fp, -108
	sw $t0, -2768($fp)
	lw $t0, -248($fp)
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
	lw $t0, -2744($fp)
	lw $t1, -2784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, -152($fp)
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label851
label851:
	li $t0, 1
	sw $t0, -2792($fp)
label852:
	li $t0, 0
	lw $t1, -2792($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t1, -2788($fp)
	lw $t2, -2800($fp)
	blt $t1, $t2, label847
	j label848
label847:
	li $t0, 1
	sw $t0, -2740($fp)
label848:
	li $t0, 20122
	sw $t0, -2804($fp)
	li $t0, 0
	lw $t1, -2804($fp)
	sub $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t1, -2740($fp)
	lw $t2, -2808($fp)
	bge $t1, $t2, label844
	j label845
label844:
	li $t0, 8381
	sw $t0, -2832($fp)
	addi $t0, $fp, -2828
	sw $t0, -2836($fp)
	li $t0, 0
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
	li $t0, 63394
	sw $t0, -2856($fp)
	addi $t0, $fp, -2828
	sw $t0, -2860($fp)
	li $t0, 1
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
	li $t0, 19828
	sw $t0, -2880($fp)
	addi $t0, $fp, -2828
	sw $t0, -2884($fp)
	li $t0, 2
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
	li $t0, 57638
	sw $t0, -2904($fp)
	addi $t0, $fp, -2828
	sw $t0, -2908($fp)
	li $t0, 3
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
	li $t0, 30221
	sw $t0, -2928($fp)
	addi $t0, $fp, -2828
	sw $t0, -2932($fp)
	li $t0, 4
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2932($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2928($fp)
	lw $t1, -2944($fp)
	sw $t0, 0($t1)
	lw $t0, -2944($fp)
	lw $t1, 0($t0)
	sw $t1, -2948($fp)
	li $t0, 1226
	sw $t0, -2980($fp)
	addi $t0, $fp, -2976
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2984($fp)
	lw $t1, -2992($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2980($fp)
	lw $t1, -2996($fp)
	sw $t0, 0($t1)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	li $t0, 38839
	sw $t0, -3004($fp)
	addi $t0, $fp, -2976
	sw $t0, -3008($fp)
	li $t0, 1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3008($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3004($fp)
	lw $t1, -3020($fp)
	sw $t0, 0($t1)
	lw $t0, -3020($fp)
	lw $t1, 0($t0)
	sw $t1, -3024($fp)
	li $t0, 29082
	sw $t0, -3028($fp)
	addi $t0, $fp, -2976
	sw $t0, -3032($fp)
	li $t0, 2
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
	li $t0, 18112
	sw $t0, -3052($fp)
	addi $t0, $fp, -2976
	sw $t0, -3056($fp)
	li $t0, 3
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
	li $t0, 53835
	sw $t0, -3076($fp)
	addi $t0, $fp, -2976
	sw $t0, -3080($fp)
	li $t0, 4
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
	li $t0, 1607
	sw $t0, -3100($fp)
	addi $t0, $fp, -2976
	sw $t0, -3104($fp)
	li $t0, 5
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
	li $t0, 34222
	sw $t0, -3124($fp)
	addi $t0, $fp, -2976
	sw $t0, -3128($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -3148($fp)
	li $t0, 51085
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label855
label856:
	lw $t0, 12($fp)
	sw $t0, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label853
	j label855
label855:
	li $t0, 42686
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -3148($fp)
label854:
	addi $sp, $sp, -4
	lw $t0, -3148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3164($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -2976
	sw $t0, -3168($fp)
	lw $t0, -272($fp)
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
	li $t0, 0
	sw $t0, -3188($fp)
	lw $t0, -164($fp)
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label857
label857:
	li $t0, 1
	sw $t0, -3188($fp)
label858:
	lw $t0, -3184($fp)
	lw $t1, -3188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3196($fp)
	lw $t0, -3164($fp)
	lw $t1, -3196($fp)
	sub $t0, $t0, $t1
	sw $t0, -3200($fp)
label859:
	addi $t0, $fp, -80
	sw $t0, -3204($fp)
	lw $t0, -1052($fp)
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -3212($fp)
	li $t0, 4
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, 0($t0)
	sw $t1, -3224($fp)
	li $t0, 14335
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	sub $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label862
	j label861
label862:
	lw $t0, -1040($fp)
	sw $t0, -3236($fp)
	addi $t0, $fp, -2828
	sw $t0, -3240($fp)
	li $t0, 1
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
	lw $t0, -3236($fp)
	lw $t1, -3256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label861
label860:
	li $t0, 29744
	sw $t0, -3264($fp)
	addi $t0, $fp, -108
	sw $t0, -3268($fp)
	lw $t0, -992($fp)
	sw $t0, -3272($fp)
	li $t0, 4
	lw $t1, -3272($fp)
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	lw $t1, -3268($fp)
	add $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, 0($t0)
	sw $t1, -3284($fp)
	lw $t0, -3264($fp)
	lw $t1, -3284($fp)
	add $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -1016($fp)
	sw $t0, -3292($fp)
	lw $t0, -3288($fp)
	lw $t1, -3292($fp)
	sub $t0, $t0, $t1
	sw $t0, -3296($fp)
	j label859
label861:
	li $t0, 16698
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3308($fp)
	li $t0, 0
	sw $t0, -3312($fp)
	li $t0, 52110
	sw $t0, -3316($fp)
	lw $t0, -1004($fp)
	sw $t0, -3320($fp)
	lw $t0, -3316($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label865
	j label864
label865:
	li $t0, 0
	sw $t0, -3328($fp)
	lw $t0, -284($fp)
	sw $t0, -3332($fp)
	li $t0, 0
	lw $t1, -3332($fp)
	sub $t0, $t0, $t1
	sw $t0, -3336($fp)
	li $t0, 30942
	sw $t0, -3340($fp)
	lw $t1, -3336($fp)
	lw $t2, -3340($fp)
	bgt $t1, $t2, label866
	j label867
label866:
	li $t0, 1
	sw $t0, -3328($fp)
label867:
	li $t0, 0
	sw $t0, -3344($fp)
	li $t0, 0
	sw $t0, -3348($fp)
	lw $t0, -260($fp)
	sw $t0, -3352($fp)
	lw $t0, -1016($fp)
	sw $t0, -3356($fp)
	lw $t1, -3352($fp)
	lw $t2, -3356($fp)
	bge $t1, $t2, label870
	j label871
label870:
	li $t0, 1
	sw $t0, -3348($fp)
label871:
	li $t0, 56405
	sw $t0, -3360($fp)
	lw $t1, -3348($fp)
	lw $t2, -3360($fp)
	beq $t1, $t2, label868
	j label869
label868:
	li $t0, 1
	sw $t0, -3344($fp)
label869:
	li $t0, 0
	sw $t0, -3364($fp)
	addi $t0, $fp, -108
	sw $t0, -3368($fp)
	li $t0, 0
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
	lw $t0, -3304($fp)
	sw $t0, -3388($fp)
	lw $t1, -3384($fp)
	lw $t2, -3388($fp)
	beq $t1, $t2, label872
	j label873
label872:
	li $t0, 1
	sw $t0, -3364($fp)
label873:
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3364($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3392($fp)
	addi $sp, $sp, 16
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label863
label863:
	li $t0, 1
	sw $t0, -3312($fp)
label864:
	li $t0, 0
	sw $t0, -3396($fp)
	lw $t0, -368($fp)
	sw $t0, -3400($fp)
	li $t0, 4882
	sw $t0, -3404($fp)
	lw $t0, -3400($fp)
	lw $t1, -3404($fp)
	sub $t0, $t0, $t1
	sw $t0, -3408($fp)
	li $t0, 4487
	sw $t0, -3412($fp)
	lw $t0, -3408($fp)
	lw $t1, -3412($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t1, -3416($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label875
label878:
	li $t0, 44834
	sw $t0, -3420($fp)
	li $t0, 0
	lw $t1, -3420($fp)
	sub $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t1, -3424($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label875
label877:
	li $t0, 33409
	sw $t0, -3428($fp)
	lw $t0, -200($fp)
	sw $t0, -3432($fp)
	lw $t0, -3428($fp)
	lw $t1, -3432($fp)
	sub $t0, $t0, $t1
	sw $t0, -3436($fp)
	li $t0, 17525
	sw $t0, -3440($fp)
	lw $t0, -3436($fp)
	lw $t1, -3440($fp)
	add $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label875
label876:
	li $t0, 46966
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label874
label874:
	li $t0, 1
	sw $t0, -3396($fp)
label875:
	li $t0, 0
	sw $t0, -3452($fp)
	lw $t0, 8($fp)
	sw $t0, -3456($fp)
	lw $t0, -308($fp)
	sw $t0, -3460($fp)
	lw $t0, -3456($fp)
	lw $t1, -3460($fp)
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -1040($fp)
	sw $t0, -3468($fp)
	lw $t0, 4($fp)
	sw $t0, -3472($fp)
	lw $t0, -3468($fp)
	lw $t1, -3472($fp)
	mul $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -716($fp)
	sw $t0, -3480($fp)
	lw $t0, -3476($fp)
	lw $t1, -3480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3484($fp)
	lw $t0, -1016($fp)
	sw $t0, -3488($fp)
	lw $t0, -3484($fp)
	lw $t1, -3488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3492($fp)
	lw $t1, -3464($fp)
	lw $t2, -3492($fp)
	bge $t1, $t2, label879
	j label880
label879:
	li $t0, 1
	sw $t0, -3452($fp)
label880:
	j label846
label845:
	li $t0, 0
	sw $t0, -3496($fp)
	li $t0, 0
	sw $t0, -3500($fp)
	lw $t0, -1004($fp)
	sw $t0, -3504($fp)
	lw $t1, -3504($fp)
	li $t2, 0
	bne $t1, $t2, label887
	j label886
label886:
	li $t0, 1
	sw $t0, -3500($fp)
label887:
	li $t0, 53531
	sw $t0, -3508($fp)
	lw $t0, 12($fp)
	sw $t0, -3512($fp)
	lw $t0, -3508($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t1, -3500($fp)
	lw $t2, -3516($fp)
	bne $t1, $t2, label884
	j label885
label884:
	li $t0, 1
	sw $t0, -3496($fp)
label885:
	lw $t0, -3496($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -3520($fp)
	lw $t1, -3520($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label882
label881:
	li $t0, 25906
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label889
label888:
	li $t0, 0
	sw $t0, -3528($fp)
	lw $t0, -740($fp)
	sw $t0, -3532($fp)
	li $t0, 39927
	sw $t0, -3536($fp)
	lw $t1, -3532($fp)
	lw $t2, -3536($fp)
	beq $t1, $t2, label894
	j label895
label894:
	li $t0, 1
	sw $t0, -3528($fp)
label895:
	lw $t0, -380($fp)
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -3544($fp)
	lw $t0, -1052($fp)
	sw $t0, -3548($fp)
	lw $t0, -296($fp)
	sw $t0, -3552($fp)
	lw $t0, -3548($fp)
	lw $t1, -3552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3556($fp)
	li $t0, 32420
	sw $t0, -3560($fp)
	lw $t0, -3556($fp)
	lw $t1, -3560($fp)
	mul $t0, $t0, $t1
	sw $t0, -3564($fp)
	addi $sp, $sp, -4
	lw $t0, -3564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3568($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3572($fp)
	li $t0, 0
	sw $t0, -3576($fp)
	li $t0, 10183
	sw $t0, -3580($fp)
	lw $t0, -356($fp)
	sw $t0, -3584($fp)
	lw $t1, -3580($fp)
	lw $t2, -3584($fp)
	blt $t1, $t2, label898
	j label899
label898:
	li $t0, 1
	sw $t0, -3576($fp)
label899:
	li $t0, 1544
	sw $t0, -3588($fp)
	lw $t1, -3576($fp)
	lw $t2, -3588($fp)
	bgt $t1, $t2, label896
	j label897
label896:
	li $t0, 1
	sw $t0, -3572($fp)
label897:
	li $t0, 17349
	sw $t0, -3592($fp)
	li $t0, 0
	lw $t1, -3592($fp)
	sub $t0, $t0, $t1
	sw $t0, -3596($fp)
	li $t0, 0
	sw $t0, -3600($fp)
	lw $t0, 4($fp)
	sw $t0, -3604($fp)
	li $t0, 30696
	sw $t0, -3608($fp)
	lw $t0, -3604($fp)
	lw $t1, -3608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3612($fp)
	lw $t0, -1028($fp)
	sw $t0, -3616($fp)
	lw $t1, -3612($fp)
	lw $t2, -3616($fp)
	bne $t1, $t2, label900
	j label901
label900:
	li $t0, 1
	sw $t0, -3600($fp)
label901:
	addi $t0, $fp, -108
	sw $t0, -3620($fp)
	li $t0, 2
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
	lw $t0, -344($fp)
	sw $t0, -3640($fp)
	li $t0, 45147
	sw $t0, -3644($fp)
	lw $t0, -3640($fp)
	lw $t1, -3644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3648($fp)
	li $t0, 0
	sw $t0, -3652($fp)
	li $t0, 27161
	sw $t0, -3656($fp)
	lw $t1, -3656($fp)
	li $t2, 0
	bne $t1, $t2, label903
	j label902
label902:
	li $t0, 1
	sw $t0, -3652($fp)
label903:
	li $t0, 0
	lw $t1, -3652($fp)
	sub $t0, $t0, $t1
	sw $t0, -3660($fp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3660($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3664($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3664($fp)
	sub $t0, $t0, $t1
	sw $t0, -3668($fp)
	li $t0, 38591
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -3676($fp)
	addi $sp, $sp, -4
	lw $t0, -3544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3680($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3680($fp)
	sub $t0, $t0, $t1
	sw $t0, -3684($fp)
	li $t0, 9509
	sw $t0, -3688($fp)
	li $t0, 9049
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	li $t0, 1
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -248($fp)
	sw $t0, -3708($fp)
	li $t0, 18008
	sw $t0, -3712($fp)
	lw $t0, -3708($fp)
	lw $t1, -3712($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	li $t0, 7823
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -3724($fp)
	addi $sp, $sp, -4
	lw $t0, -3528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3724($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3728($fp)
	addi $sp, $sp, 24
	lw $t0, -1016($fp)
	sw $t0, -3732($fp)
	lw $t0, -3728($fp)
	lw $t1, -3732($fp)
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -380($fp)
	sw $t0, -3740($fp)
	li $t0, 44824
	sw $t0, -3744($fp)
	lw $t0, -3740($fp)
	lw $t1, -3744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3748($fp)
	li $t0, 0
	sw $t0, -3752($fp)
	lw $t0, -140($fp)
	sw $t0, -3756($fp)
	lw $t0, -1028($fp)
	sw $t0, -3760($fp)
	lw $t0, -3756($fp)
	lw $t1, -3760($fp)
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t1, -3764($fp)
	li $t2, 0
	bne $t1, $t2, label906
	j label905
label906:
	lw $t0, -212($fp)
	sw $t0, -3768($fp)
	lw $t1, -3768($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label905
label904:
	li $t0, 1
	sw $t0, -3752($fp)
label905:
	addi $sp, $sp, -4
	lw $t0, -3752($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3772($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -3736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3772($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3776($fp)
	addi $sp, $sp, 16
	lw $t0, -248($fp)
	sw $t0, -3780($fp)
	lw $t0, -3776($fp)
	lw $t1, -3780($fp)
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	li $t0, 18242
	sw $t0, -3788($fp)
	lw $t0, -3784($fp)
	lw $t1, -3788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3792($fp)
	lw $t0, -284($fp)
	sw $t0, -3796($fp)
	lw $t0, -3792($fp)
	lw $t1, -3796($fp)
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	li $t0, 0
	sw $t0, -3804($fp)
	lw $t0, -1016($fp)
	sw $t0, -3808($fp)
	lw $t1, -3808($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label908
label907:
	li $t0, 1
	sw $t0, -3804($fp)
label908:
	li $t0, 0
	lw $t1, -3804($fp)
	sub $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t1, -3800($fp)
	lw $t2, -3812($fp)
	bne $t1, $t2, label891
	j label892
label891:
	lw $t0, 8($fp)
	sw $t0, -3816($fp)
	j label893
label892:
label909:
	addi $t0, $fp, -52
	sw $t0, -3820($fp)
	li $t0, 0
	sw $t0, -3824($fp)
	li $t0, 0
	sw $t0, -3828($fp)
	lw $t0, -368($fp)
	sw $t0, -3832($fp)
	lw $t1, -3832($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label915
label917:
	lw $t0, -932($fp)
	sw $t0, -3836($fp)
	lw $t1, -3836($fp)
	li $t2, 0
	bne $t1, $t2, label916
	j label915
label916:
	lw $t0, -212($fp)
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label915
label914:
	li $t0, 1
	sw $t0, -3828($fp)
label915:
	addi $sp, $sp, -4
	lw $t0, -3828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3844($fp)
	addi $sp, $sp, 8
	lw $t1, -3844($fp)
	li $t2, 0
	bne $t1, $t2, label913
	j label912
label912:
	li $t0, 1
	sw $t0, -3824($fp)
label913:
	li $t0, 4
	lw $t1, -3824($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, -3820($fp)
	add $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, 0($t0)
	sw $t1, -3856($fp)
	lw $t1, -3856($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label911
label910:
	li $t0, 0
	sw $t0, -3860($fp)
	addi $t0, $fp, -108
	sw $t0, -3864($fp)
	lw $t0, -728($fp)
	sw $t0, -3868($fp)
	lw $t0, -200($fp)
	sw $t0, -3872($fp)
	lw $t0, -3868($fp)
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	li $t0, 18994
	sw $t0, -3880($fp)
	lw $t0, -3876($fp)
	lw $t1, -3880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3884($fp)
	li $t0, 4
	lw $t1, -3884($fp)
	mul $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, -3864($fp)
	add $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	lw $t1, 0($t0)
	sw $t1, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label919
	j label918
label918:
	li $t0, 1
	sw $t0, -3860($fp)
label919:
	j label909
label911:
label893:
	j label890
label889:
	addi $t0, $fp, -80
	sw $t0, -3900($fp)
	li $t0, 3
	sw $t0, -3904($fp)
	li $t0, 4
	lw $t1, -3904($fp)
	mul $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	lw $t1, -3900($fp)
	add $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	lw $t1, 0($t0)
	sw $t1, -3916($fp)
	lw $t0, -236($fp)
	sw $t0, -3920($fp)
	lw $t0, -116($fp)
	sw $t0, -3924($fp)
	lw $t0, -3920($fp)
	lw $t1, -3924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3928($fp)
	li $t0, 0
	lw $t1, -3928($fp)
	sub $t0, $t0, $t1
	sw $t0, -3932($fp)
	li $t0, 0
	sw $t0, -3936($fp)
	li $t0, 0
	sw $t0, -3940($fp)
	li $t0, 63461
	sw $t0, -3944($fp)
	lw $t0, -1016($fp)
	sw $t0, -3948($fp)
	lw $t1, -3944($fp)
	lw $t2, -3948($fp)
	bne $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -3940($fp)
label923:
	lw $t0, -368($fp)
	sw $t0, -3952($fp)
	lw $t1, -3940($fp)
	lw $t2, -3952($fp)
	beq $t1, $t2, label920
	j label921
label920:
	li $t0, 1
	sw $t0, -3936($fp)
label921:
	li $t0, 0
	sw $t0, -3956($fp)
	lw $t0, -164($fp)
	sw $t0, -3960($fp)
	lw $t0, -296($fp)
	sw $t0, -3964($fp)
	lw $t0, -3960($fp)
	lw $t1, -3964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3968($fp)
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label926
label926:
	li $t0, 53039
	sw $t0, -3972($fp)
	lw $t1, -3972($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label925
label924:
	li $t0, 1
	sw $t0, -3956($fp)
label925:
	li $t0, 0
	sw $t0, -3976($fp)
	lw $t0, -692($fp)
	sw $t0, -3980($fp)
	lw $t0, -200($fp)
	sw $t0, -3984($fp)
	lw $t0, -3980($fp)
	lw $t1, -3984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3988($fp)
	lw $t1, -3988($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label928
label929:
	lw $t0, -356($fp)
	sw $t0, -3992($fp)
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -3976($fp)
label928:
	addi $sp, $sp, -4
	lw $t0, -3936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3976($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3996($fp)
	addi $sp, $sp, 16
	li $t0, 9864
	sw $t0, -4000($fp)
	lw $t0, -3996($fp)
	lw $t1, -4000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4004($fp)
	lw $t0, -188($fp)
	sw $t0, -4008($fp)
	li $t0, 0
	sw $t0, -4012($fp)
	li $t0, 0
	sw $t0, -4016($fp)
	lw $t0, -248($fp)
	sw $t0, -4020($fp)
	lw $t0, -224($fp)
	sw $t0, -4024($fp)
	lw $t1, -4020($fp)
	lw $t2, -4024($fp)
	beq $t1, $t2, label932
	j label933
label932:
	li $t0, 1
	sw $t0, -4016($fp)
label933:
	lw $t0, -1028($fp)
	sw $t0, -4028($fp)
	lw $t1, -4016($fp)
	lw $t2, -4028($fp)
	bne $t1, $t2, label930
	j label931
label930:
	li $t0, 1
	sw $t0, -4012($fp)
label931:
	addi $sp, $sp, -4
	lw $t0, -3916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4012($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4032($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -4032($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label890:
	j label883
label882:
	lw $t0, -992($fp)
	sw $t0, -4036($fp)
	li $t0, 0
	sw $t0, -4040($fp)
	li $t0, 14351
	sw $t0, -4044($fp)
	li $t0, 0
	sw $t0, -4048($fp)
	lw $t0, -212($fp)
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label939
label939:
	li $t0, 63280
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label938
label938:
	lw $t0, -1028($fp)
	sw $t0, -4060($fp)
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label937
label936:
	li $t0, 1
	sw $t0, -4048($fp)
label937:
	addi $sp, $sp, -4
	lw $t0, -4048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4064($fp)
	addi $sp, $sp, 8
	li $t0, 36216
	sw $t0, -4068($fp)
	lw $t0, -4064($fp)
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t1, -4044($fp)
	lw $t2, -4072($fp)
	ble $t1, $t2, label934
	j label935
label934:
	li $t0, 1
	sw $t0, -4040($fp)
label935:
	li $t0, 0
	sw $t0, -4076($fp)
	li $t0, 0
	sw $t0, -4080($fp)
	li $t0, 31877
	sw $t0, -4084($fp)
	li $t0, 0
	lw $t1, -4084($fp)
	sub $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t1, -4088($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label942
label942:
	li $t0, 1
	sw $t0, -4080($fp)
label943:
	li $t0, 0
	lw $t1, -4080($fp)
	sub $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -344($fp)
	sw $t0, -4096($fp)
	lw $t0, -4092($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -1004($fp)
	sw $t0, -4104($fp)
	lw $t0, -248($fp)
	sw $t0, -4108($fp)
	lw $t0, -4104($fp)
	lw $t1, -4108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4112($fp)
	lw $t1, -4100($fp)
	lw $t2, -4112($fp)
	blt $t1, $t2, label940
	j label941
label940:
	li $t0, 1
	sw $t0, -4076($fp)
label941:
label883:
label846:
label841:
label944:
	li $t0, 0
	sw $t0, -4116($fp)
	li $t0, 0
	sw $t0, -4120($fp)
	li $t0, 44710
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label949
label949:
	li $t0, 1
	sw $t0, -4120($fp)
label950:
	li $t0, 0
	lw $t1, -4120($fp)
	sub $t0, $t0, $t1
	sw $t0, -4128($fp)
	li $t0, 0
	lw $t1, -4128($fp)
	sub $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label947
label947:
	li $t0, 1
	sw $t0, -4116($fp)
label948:
	li $t0, 0
	sw $t0, -4136($fp)
	li $t0, 0
	sw $t0, -4140($fp)
	addi $t0, $fp, -108
	sw $t0, -4144($fp)
	li $t0, 3
	sw $t0, -4148($fp)
	li $t0, 4
	lw $t1, -4148($fp)
	mul $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, 0($t0)
	sw $t1, -4160($fp)
	lw $t1, -4160($fp)
	li $t2, 0
	bne $t1, $t2, label954
	j label953
label953:
	li $t0, 1
	sw $t0, -4140($fp)
label954:
	lw $t0, -284($fp)
	sw $t0, -4164($fp)
	li $t0, 0
	lw $t1, -4164($fp)
	sub $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t1, -4140($fp)
	lw $t2, -4168($fp)
	ble $t1, $t2, label951
	j label952
label951:
	li $t0, 1
	sw $t0, -4136($fp)
label952:
	lw $t1, -4116($fp)
	lw $t2, -4136($fp)
	beq $t1, $t2, label945
	j label946
label945:
	li $t0, 23999
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	sw $t0, -4204($fp)
	li $t0, 32034
	sw $t0, -4208($fp)
	addi $t0, $fp, -4192
	sw $t0, -4212($fp)
	li $t0, 0
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
	li $t0, 10256
	sw $t0, -4232($fp)
	addi $t0, $fp, -4192
	sw $t0, -4236($fp)
	li $t0, 1
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
	li $t0, 33508
	sw $t0, -4256($fp)
	addi $t0, $fp, -4192
	sw $t0, -4260($fp)
	li $t0, 2
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
	li $t0, 41084
	sw $t0, -4280($fp)
	addi $t0, $fp, -4192
	sw $t0, -4284($fp)
	li $t0, 3
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
	li $t0, 1567
	sw $t0, -4304($fp)
	addi $t0, $fp, -4192
	sw $t0, -4308($fp)
	li $t0, 4
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
	li $t0, 6564
	sw $t0, -4328($fp)
	addi $t0, $fp, -4192
	sw $t0, -4332($fp)
	li $t0, 5
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
	li $t0, 2709
	sw $t0, -4352($fp)
	addi $t0, $fp, -4192
	sw $t0, -4356($fp)
	li $t0, 1
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
	lw $t0, -1004($fp)
	sw $t0, -4376($fp)
	addi $t0, $fp, -108
	sw $t0, -4380($fp)
	lw $t0, -4200($fp)
	sw $t0, -4384($fp)
	li $t0, 4
	lw $t1, -4384($fp)
	mul $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	lw $t1, 0($t0)
	sw $t1, -4396($fp)
	lw $t0, -4376($fp)
	lw $t1, -4396($fp)
	mul $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4372($fp)
	lw $t1, -4400($fp)
	sub $t0, $t0, $t1
	sw $t0, -4404($fp)
	li $t0, 64093
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	sw $t0, -4444($fp)
	li $t0, 11875
	sw $t0, -4448($fp)
	addi $t0, $fp, -4432
	sw $t0, -4452($fp)
	li $t0, 0
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
	li $t0, 64112
	sw $t0, -4472($fp)
	addi $t0, $fp, -4432
	sw $t0, -4476($fp)
	li $t0, 1
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
	li $t0, 8740
	sw $t0, -4496($fp)
	addi $t0, $fp, -4432
	sw $t0, -4500($fp)
	li $t0, 2
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
	li $t0, 13419
	sw $t0, -4520($fp)
	addi $t0, $fp, -4432
	sw $t0, -4524($fp)
	li $t0, 3
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
	li $t0, 30996
	sw $t0, -4544($fp)
	addi $t0, $fp, -4432
	sw $t0, -4548($fp)
	li $t0, 4
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
	li $t0, 48667
	sw $t0, -4568($fp)
	addi $t0, $fp, -4432
	sw $t0, -4572($fp)
	li $t0, 5
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
	li $t0, 31662
	sw $t0, -4592($fp)
	addi $t0, $fp, -4432
	sw $t0, -4596($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -4616($fp)
	li $t0, 49990
	sw $t0, -4620($fp)
	lw $t0, -248($fp)
	sw $t0, -4624($fp)
	lw $t0, -1016($fp)
	sw $t0, -4628($fp)
	lw $t0, -4624($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -332($fp)
	sw $t0, -4636($fp)
	lw $t0, -4632($fp)
	lw $t1, -4636($fp)
	sub $t0, $t0, $t1
	sw $t0, -4640($fp)
	li $t0, 0
	sw $t0, -4644($fp)
	li $t0, 59854
	sw $t0, -4648($fp)
	lw $t1, -4648($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label957
label959:
	li $t0, 54616
	sw $t0, -4652($fp)
	lw $t1, -4652($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label958
label957:
	li $t0, 1
	sw $t0, -4644($fp)
label958:
	lw $t0, -1040($fp)
	sw $t0, -4656($fp)
	li $t0, 36170
	sw $t0, -4660($fp)
	lw $t0, -4656($fp)
	lw $t1, -4660($fp)
	mul $t0, $t0, $t1
	sw $t0, -4664($fp)
	li $t0, 29587
	sw $t0, -4668($fp)
	lw $t0, -4664($fp)
	lw $t1, -4668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4672($fp)
	addi $sp, $sp, -4
	lw $t0, -4640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4676($fp)
	addi $sp, $sp, 16
	lw $t1, -4620($fp)
	lw $t2, -4676($fp)
	bge $t1, $t2, label955
	j label956
label955:
	li $t0, 1
	sw $t0, -4616($fp)
label956:
	li $t0, 0
	sw $t0, -4680($fp)
	li $t0, 0
	sw $t0, -4684($fp)
	lw $t0, -272($fp)
	sw $t0, -4688($fp)
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label964
	j label963
label963:
	li $t0, 1
	sw $t0, -4684($fp)
label964:
	li $t0, 0
	sw $t0, -4692($fp)
	lw $t0, -1052($fp)
	sw $t0, -4696($fp)
	lw $t1, -4696($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label965
label965:
	li $t0, 1
	sw $t0, -4692($fp)
label966:
	lw $t0, 12($fp)
	sw $t0, -4700($fp)
	lw $t0, -4692($fp)
	lw $t1, -4700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4704($fp)
	addi $sp, $sp, -4
	lw $t0, -4704($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4708($fp)
	addi $sp, $sp, 8
	lw $t0, -4684($fp)
	lw $t1, -4708($fp)
	mul $t0, $t0, $t1
	sw $t0, -4712($fp)
	li $t0, 0
	sw $t0, -4716($fp)
	addi $t0, $fp, -12
	sw $t0, -4720($fp)
	li $t0, 1
	sw $t0, -4724($fp)
	li $t0, 4
	lw $t1, -4724($fp)
	mul $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	lw $t1, -4720($fp)
	add $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	lw $t1, 0($t0)
	sw $t1, -4736($fp)
	lw $t0, -692($fp)
	sw $t0, -4740($fp)
	lw $t1, -4736($fp)
	lw $t2, -4740($fp)
	bne $t1, $t2, label967
	j label968
label967:
	li $t0, 1
	sw $t0, -4716($fp)
label968:
	li $t0, 0
	sw $t0, -4744($fp)
	li $t0, 3075
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label971
label971:
	li $t0, 40547
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label970
label969:
	li $t0, 1
	sw $t0, -4744($fp)
label970:
	li $t0, 0
	sw $t0, -4756($fp)
	addi $t0, $fp, -12
	sw $t0, -4760($fp)
	lw $t0, -1016($fp)
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
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label973
label974:
	li $t0, 52360
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label972
	j label973
label972:
	li $t0, 1
	sw $t0, -4756($fp)
label973:
	li $t0, 0
	sw $t0, -4784($fp)
	lw $t0, -296($fp)
	sw $t0, -4788($fp)
	li $t0, 8670
	sw $t0, -4792($fp)
	lw $t1, -4788($fp)
	lw $t2, -4792($fp)
	ble $t1, $t2, label975
	j label977
label977:
	lw $t0, -4440($fp)
	sw $t0, -4796($fp)
	lw $t1, -4796($fp)
	li $t2, 0
	bne $t1, $t2, label975
	j label976
label975:
	li $t0, 1
	sw $t0, -4784($fp)
label976:
	li $t0, 0
	sw $t0, -4800($fp)
	li $t0, 0
	sw $t0, -4804($fp)
	lw $t0, 12($fp)
	sw $t0, -4808($fp)
	lw $t0, -1004($fp)
	sw $t0, -4812($fp)
	lw $t1, -4808($fp)
	lw $t2, -4812($fp)
	ble $t1, $t2, label980
	j label981
label980:
	li $t0, 1
	sw $t0, -4804($fp)
label981:
	li $t0, 32395
	sw $t0, -4816($fp)
	lw $t1, -4804($fp)
	lw $t2, -4816($fp)
	bgt $t1, $t2, label978
	j label979
label978:
	li $t0, 1
	sw $t0, -4800($fp)
label979:
	addi $sp, $sp, -4
	lw $t0, -4716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4800($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4820($fp)
	addi $sp, $sp, 24
	lw $t0, -4712($fp)
	lw $t1, -4820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4824($fp)
	li $t0, 0
	lw $t1, -4824($fp)
	sub $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label960
	j label962
label962:
	li $t0, 0
	sw $t0, -4832($fp)
	addi $t0, $fp, -4432
	sw $t0, -4836($fp)
	lw $t0, -728($fp)
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
	li $t0, 32794
	sw $t0, -4856($fp)
	lw $t1, -4852($fp)
	lw $t2, -4856($fp)
	bne $t1, $t2, label982
	j label983
label982:
	li $t0, 1
	sw $t0, -4832($fp)
label983:
	lw $t0, -380($fp)
	sw $t0, -4860($fp)
	lw $t0, -920($fp)
	sw $t0, -4864($fp)
	lw $t0, -4860($fp)
	lw $t1, -4864($fp)
	add $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t1, -4832($fp)
	lw $t2, -4868($fp)
	bne $t1, $t2, label960
	j label961
label960:
	li $t0, 1
	sw $t0, -4680($fp)
label961:
	li $t0, 55533
	sw $t0, -4872($fp)
	li $t0, 0
	sw $t0, -4876($fp)
	li $t0, 44618
	sw $t0, -4880($fp)
	li $t0, 30070
	sw $t0, -4884($fp)
	lw $t1, -4880($fp)
	lw $t2, -4884($fp)
	bne $t1, $t2, label986
	j label985
label986:
	li $t0, 37579
	sw $t0, -4888($fp)
	lw $t1, -4888($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label985
label984:
	li $t0, 1
	sw $t0, -4876($fp)
label985:
	li $t0, 34869
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -4896($fp)
	li $t0, 0
	sw $t0, -4900($fp)
	lw $t0, -1016($fp)
	sw $t0, -4904($fp)
	lw $t1, -4904($fp)
	li $t2, 0
	bne $t1, $t2, label987
	j label990
label990:
	lw $t0, -920($fp)
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label987
	j label989
label989:
	li $t0, 23506
	sw $t0, -4912($fp)
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -4900($fp)
label988:
	li $t0, 0
	sw $t0, -4916($fp)
	addi $t0, $fp, -80
	sw $t0, -4920($fp)
	li $t0, 1
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
	lw $t1, -4936($fp)
	li $t2, 0
	bne $t1, $t2, label993
	j label992
label993:
	lw $t0, -260($fp)
	sw $t0, -4940($fp)
	lw $t1, -4940($fp)
	li $t2, 0
	bne $t1, $t2, label991
	j label992
label991:
	li $t0, 1
	sw $t0, -4916($fp)
label992:
	li $t0, 0
	sw $t0, -4944($fp)
	lw $t0, -380($fp)
	sw $t0, -4948($fp)
	lw $t0, -236($fp)
	sw $t0, -4952($fp)
	lw $t1, -4948($fp)
	lw $t2, -4952($fp)
	blt $t1, $t2, label994
	j label995
label994:
	li $t0, 1
	sw $t0, -4944($fp)
label995:
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4956($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -4960($fp)
	li $t0, 25796
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -4968($fp)
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4972($fp)
	addi $sp, $sp, 8
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label997
label998:
	lw $t0, -224($fp)
	sw $t0, -4976($fp)
	li $t0, 11297
	sw $t0, -4980($fp)
	lw $t0, -4976($fp)
	lw $t1, -4980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4984($fp)
	lw $t0, -272($fp)
	sw $t0, -4988($fp)
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4992($fp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4996($fp)
	addi $sp, $sp, 8
	lw $t1, -4996($fp)
	li $t2, 0
	bne $t1, $t2, label996
	j label997
label996:
	li $t0, 1
	sw $t0, -4960($fp)
label997:
	j label944
label946:
	lw $t0, -116($fp)
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -5068($fp)
	lw $t0, -5068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -5096($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -5116($fp)
	li $t0, 1
	sw $t0, -5120($fp)
	li $t0, 4
	lw $t1, -5120($fp)
	mul $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	lw $t1, -5116($fp)
	add $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	lw $t1, 0($t0)
	sw $t1, -5132($fp)
	lw $t0, -5132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5136($fp)
	li $t0, 0
	sw $t0, -5140($fp)
	li $t0, 4
	lw $t1, -5140($fp)
	mul $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	lw $t1, -5136($fp)
	add $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	lw $t1, 0($t0)
	sw $t1, -5152($fp)
	lw $t0, -5152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5156($fp)
	li $t0, 1
	sw $t0, -5160($fp)
	li $t0, 4
	lw $t1, -5160($fp)
	mul $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	lw $t1, -5156($fp)
	add $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, 0($t0)
	sw $t1, -5172($fp)
	lw $t0, -5172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5176($fp)
	li $t0, 2
	sw $t0, -5180($fp)
	li $t0, 4
	lw $t1, -5180($fp)
	mul $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	lw $t1, -5176($fp)
	add $t0, $t0, $t1
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	lw $t1, 0($t0)
	sw $t1, -5192($fp)
	lw $t0, -5192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5196($fp)
	li $t0, 3
	sw $t0, -5200($fp)
	li $t0, 4
	lw $t1, -5200($fp)
	mul $t0, $t0, $t1
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	lw $t1, -5196($fp)
	add $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	lw $t1, 0($t0)
	sw $t1, -5212($fp)
	lw $t0, -5212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5216($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -5236($fp)
	li $t0, 5
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
	addi $t0, $fp, -52
	sw $t0, -5256($fp)
	li $t0, 6
	sw $t0, -5260($fp)
	li $t0, 4
	lw $t1, -5260($fp)
	mul $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	lw $t1, -5256($fp)
	add $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	lw $t1, 0($t0)
	sw $t1, -5272($fp)
	lw $t0, -5272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5276($fp)
	li $t0, 7
	sw $t0, -5280($fp)
	li $t0, 4
	lw $t1, -5280($fp)
	mul $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	lw $t1, 0($t0)
	sw $t1, -5292($fp)
	lw $t0, -5292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5296($fp)
	li $t0, 8
	sw $t0, -5300($fp)
	li $t0, 4
	lw $t1, -5300($fp)
	mul $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	lw $t1, -5296($fp)
	add $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	lw $t1, 0($t0)
	sw $t1, -5312($fp)
	lw $t0, -5312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5316($fp)
	li $t0, 9
	sw $t0, -5320($fp)
	li $t0, 4
	lw $t1, -5320($fp)
	mul $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, -5316($fp)
	add $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	lw $t1, 0($t0)
	sw $t1, -5332($fp)
	lw $t0, -5332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5356($fp)
	li $t0, 0
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
	lw $t0, -5372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5376($fp)
	li $t0, 1
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
	lw $t0, -5392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5396($fp)
	li $t0, 2
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
	lw $t0, -5412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5416($fp)
	li $t0, 3
	sw $t0, -5420($fp)
	li $t0, 4
	lw $t1, -5420($fp)
	mul $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	lw $t1, -5416($fp)
	add $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	lw $t1, 0($t0)
	sw $t1, -5432($fp)
	lw $t0, -5432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5436($fp)
	li $t0, 4
	sw $t0, -5440($fp)
	li $t0, 4
	lw $t1, -5440($fp)
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	lw $t1, -5436($fp)
	add $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	lw $t1, 0($t0)
	sw $t1, -5452($fp)
	lw $t0, -5452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5456($fp)
	li $t0, 5
	sw $t0, -5460($fp)
	li $t0, 4
	lw $t1, -5460($fp)
	mul $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, -5456($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, 0($t0)
	sw $t1, -5472($fp)
	lw $t0, -5472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5476($fp)
	li $t0, 6
	sw $t0, -5480($fp)
	li $t0, 4
	lw $t1, -5480($fp)
	mul $t0, $t0, $t1
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	lw $t1, -5476($fp)
	add $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	lw $t1, 0($t0)
	sw $t1, -5492($fp)
	lw $t0, -5492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -5504($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -5524($fp)
	li $t0, 1
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
	lw $t0, -992($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -108
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
	addi $t0, $fp, -52
	sw $t0, -5668($fp)
	li $t0, 0
	sw $t0, -5672($fp)
	li $t0, 0
	sw $t0, -5676($fp)
	lw $t0, -716($fp)
	sw $t0, -5680($fp)
	li $t0, 0
	lw $t1, -5680($fp)
	sub $t0, $t0, $t1
	sw $t0, -5684($fp)
	li $t0, 36136
	sw $t0, -5688($fp)
	lw $t1, -5684($fp)
	lw $t2, -5688($fp)
	ble $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 1
	sw $t0, -5676($fp)
label1002:
	li $t0, 0
	sw $t0, -5692($fp)
	li $t0, 0
	sw $t0, -5696($fp)
	lw $t0, -392($fp)
	sw $t0, -5700($fp)
	li $t0, 28312
	sw $t0, -5704($fp)
	lw $t1, -5700($fp)
	lw $t2, -5704($fp)
	bgt $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -5696($fp)
label1006:
	lw $t0, -1040($fp)
	sw $t0, -5708($fp)
	lw $t1, -5696($fp)
	lw $t2, -5708($fp)
	blt $t1, $t2, label1003
	j label1004
label1003:
	li $t0, 1
	sw $t0, -5692($fp)
label1004:
	li $t0, 0
	sw $t0, -5712($fp)
	li $t0, 13663
	sw $t0, -5716($fp)
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1009
label1009:
	lw $t0, -920($fp)
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -5712($fp)
label1008:
	li $t0, 0
	sw $t0, -5724($fp)
	li $t0, 0
	sw $t0, -5728($fp)
	li $t0, 53258
	sw $t0, -5732($fp)
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label1013
	j label1012
label1012:
	li $t0, 1
	sw $t0, -5728($fp)
label1013:
	lw $t0, -308($fp)
	sw $t0, -5736($fp)
	lw $t1, -5728($fp)
	lw $t2, -5736($fp)
	beq $t1, $t2, label1010
	j label1011
label1010:
	li $t0, 1
	sw $t0, -5724($fp)
label1011:
	addi $t0, $fp, -12
	sw $t0, -5740($fp)
	li $t0, 0
	sw $t0, -5744($fp)
	li $t0, 4
	lw $t1, -5744($fp)
	mul $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	lw $t1, -5740($fp)
	add $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	lw $t1, 0($t0)
	sw $t1, -5756($fp)
	addi $t0, $fp, -80
	sw $t0, -5760($fp)
	lw $t0, -248($fp)
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
	lw $t0, -1016($fp)
	sw $t0, -5780($fp)
	lw $t0, -5776($fp)
	lw $t1, -5780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5784($fp)
	li $t0, 0
	sw $t0, -5788($fp)
	lw $t0, -320($fp)
	sw $t0, -5792($fp)
	lw $t0, -188($fp)
	sw $t0, -5796($fp)
	lw $t0, -5792($fp)
	lw $t1, -5796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5800($fp)
	lw $t0, -1028($fp)
	sw $t0, -5804($fp)
	lw $t1, -5800($fp)
	lw $t2, -5804($fp)
	blt $t1, $t2, label1014
	j label1015
label1014:
	li $t0, 1
	sw $t0, -5788($fp)
label1015:
	li $t0, 0
	sw $t0, -5808($fp)
	li $t0, 25323
	sw $t0, -5812($fp)
	lw $t0, -740($fp)
	sw $t0, -5816($fp)
	lw $t1, -5812($fp)
	lw $t2, -5816($fp)
	beq $t1, $t2, label1018
	j label1017
label1018:
	li $t0, 64178
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label1016
	j label1017
label1016:
	li $t0, 1
	sw $t0, -5808($fp)
label1017:
	lw $t0, -368($fp)
	sw $t0, -5824($fp)
	addi $sp, $sp, -4
	lw $t0, -5756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5828($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -5828($fp)
	sub $t0, $t0, $t1
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	lw $t0, -248($fp)
	sw $t0, -5840($fp)
	lw $t0, -248($fp)
	sw $t0, -5844($fp)
	lw $t1, -5840($fp)
	lw $t2, -5844($fp)
	bne $t1, $t2, label1019
	j label1020
label1019:
	li $t0, 1
	sw $t0, -5836($fp)
label1020:
	lw $t0, 12($fp)
	sw $t0, -5848($fp)
	li $t0, 17217
	sw $t0, -5852($fp)
	lw $t0, -5848($fp)
	lw $t1, -5852($fp)
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	addi $sp, $sp, -4
	lw $t0, -5712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5860($fp)
	addi $sp, $sp, 24
	li $t0, 28007
	sw $t0, -5864($fp)
	li $t0, 0
	sw $t0, -5868($fp)
	addi $t0, $fp, -108
	sw $t0, -5872($fp)
	li $t0, 3
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
	lw $t1, -5888($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1022
label1023:
	li $t0, 40869
	sw $t0, -5892($fp)
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label1021
	j label1022
label1021:
	li $t0, 1
	sw $t0, -5868($fp)
label1022:
	addi $t0, $fp, -108
	sw $t0, -5896($fp)
	li $t0, 3
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
	lw $t0, -1028($fp)
	sw $t0, -5916($fp)
	lw $t0, -5912($fp)
	lw $t1, -5916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5920($fp)
	addi $sp, $sp, -4
	lw $t0, -5692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5920($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5924($fp)
	addi $sp, $sp, 24
	lw $t1, -5676($fp)
	lw $t2, -5924($fp)
	bne $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -5672($fp)
label1000:
	li $t0, 4
	lw $t1, -5672($fp)
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5928($fp)
	lw $t1, -5668($fp)
	add $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	lw $t1, 0($t0)
	sw $t1, -5936($fp)
	lw $ra, -4($fp)
	lw $v0, -5936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1860
	li $t0, 40082
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
	li $t0, 16739
	sw $t0, -104($fp)
	addi $t0, $fp, -12
	sw $t0, -108($fp)
	li $t0, 0
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
	li $t0, 3323
	sw $t0, -128($fp)
	addi $t0, $fp, -40
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
	li $t0, 6080
	sw $t0, -152($fp)
	addi $t0, $fp, -40
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
	li $t0, 44026
	sw $t0, -176($fp)
	addi $t0, $fp, -40
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
	li $t0, 36117
	sw $t0, -200($fp)
	addi $t0, $fp, -40
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
	li $t0, 61614
	sw $t0, -224($fp)
	addi $t0, $fp, -40
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
	li $t0, 37811
	sw $t0, -248($fp)
	addi $t0, $fp, -40
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
	li $t0, 13632
	sw $t0, -272($fp)
	addi $t0, $fp, -40
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
	li $t0, 19584
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 7145
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 58250
	sw $t0, -320($fp)
	addi $t0, $fp, -76
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
	li $t0, 49654
	sw $t0, -344($fp)
	addi $t0, $fp, -76
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
	li $t0, 44724
	sw $t0, -368($fp)
	addi $t0, $fp, -76
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
	li $t0, 18510
	sw $t0, -392($fp)
	addi $t0, $fp, -76
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
	li $t0, 60951
	sw $t0, -416($fp)
	addi $t0, $fp, -76
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
	li $t0, 15324
	sw $t0, -440($fp)
	addi $t0, $fp, -76
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
	li $t0, 56182
	sw $t0, -464($fp)
	addi $t0, $fp, -76
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
	li $t0, 5288
	sw $t0, -488($fp)
	addi $t0, $fp, -76
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
	li $t0, 60200
	sw $t0, -512($fp)
	addi $t0, $fp, -76
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
	li $t0, 41737
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 46157
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	addi $t0, $fp, -8
	sw $t0, -560($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -580($fp)
	li $t0, 0
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
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -640($fp)
	li $t0, 2
	sw $t0, -644($fp)
	li $t0, 4
	lw $t1, -644($fp)
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	lw $t1, -640($fp)
	add $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	lw $t1, 0($t0)
	sw $t1, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -660($fp)
	li $t0, 3
	sw $t0, -664($fp)
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	lw $t0, -676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -680($fp)
	li $t0, 4
	sw $t0, -684($fp)
	li $t0, 4
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, 0($t0)
	sw $t1, -696($fp)
	lw $t0, -696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -700($fp)
	li $t0, 5
	sw $t0, -704($fp)
	li $t0, 4
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	lw $t1, -700($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	lw $t1, 0($t0)
	sw $t1, -716($fp)
	lw $t0, -716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -720($fp)
	li $t0, 6
	sw $t0, -724($fp)
	li $t0, 4
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	lw $t1, 0($t0)
	sw $t1, -736($fp)
	lw $t0, -736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
	sw $t0, -808($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -828($fp)
	li $t0, 4
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
	addi $t0, $fp, -76
	sw $t0, -848($fp)
	li $t0, 5
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
	addi $t0, $fp, -76
	sw $t0, -868($fp)
	li $t0, 6
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
	addi $t0, $fp, -76
	sw $t0, -888($fp)
	li $t0, 7
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
	addi $t0, $fp, -76
	sw $t0, -908($fp)
	li $t0, 8
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
	lw $t0, -540($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -936($fp)
	li $t0, 0
	sw $t0, -940($fp)
	addi $t0, $fp, -40
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	li $t0, 22671
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label1030
	j label1029
label1030:
	li $t0, 58954
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label1028
	j label1029
label1028:
	li $t0, 1
	sw $t0, -948($fp)
label1029:
	li $t0, 4
	lw $t1, -948($fp)
	mul $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	lw $t1, -944($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	lw $t1, 0($t0)
	sw $t1, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	lw $t0, -312($fp)
	sw $t0, -976($fp)
	li $t0, 5944
	sw $t0, -980($fp)
	lw $t0, -976($fp)
	lw $t1, -980($fp)
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	li $t0, 21313
	sw $t0, -988($fp)
	lw $t1, -984($fp)
	lw $t2, -988($fp)
	bgt $t1, $t2, label1031
	j label1032
label1031:
	li $t0, 1
	sw $t0, -972($fp)
label1032:
	lw $t1, -968($fp)
	lw $t2, -972($fp)
	bne $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 1
	sw $t0, -940($fp)
label1027:
	addi $t0, $fp, -40
	sw $t0, -992($fp)
	li $t0, 6
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
	lw $t1, -940($fp)
	lw $t2, -1008($fp)
	bne $t1, $t2, label1024
	j label1025
label1024:
	li $t0, 1
	sw $t0, -936($fp)
label1025:
	lw $ra, -4($fp)
	lw $v0, -936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1033:
	li $t0, 9035
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1035
label1034:
label1036:
	addi $t0, $fp, -40
	sw $t0, -1016($fp)
	li $t0, 1
	sw $t0, -1020($fp)
	li $t0, 4
	lw $t1, -1020($fp)
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, -1016($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	lw $t1, 0($t0)
	sw $t1, -1032($fp)
	lw $t0, 4($fp)
	sw $t0, -1036($fp)
	li $t0, 0
	lw $t1, -1036($fp)
	sub $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1032($fp)
	lw $t1, -1040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1038
label1037:
	li $t0, 0
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 57221
	sw $t0, -1060($fp)
	lw $t0, -312($fp)
	sw $t0, -1064($fp)
	lw $t0, -1060($fp)
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label1041
	j label1043
label1043:
	lw $t0, -552($fp)
	sw $t0, -1072($fp)
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label1041
	j label1042
label1041:
	li $t0, 1
	sw $t0, -1056($fp)
label1042:
	addi $t0, $fp, -8
	sw $t0, -1076($fp)
	lw $t0, -312($fp)
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
	lw $t0, -312($fp)
	sw $t0, -1096($fp)
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1100($fp)
	addi $t0, $fp, -12
	sw $t0, -1104($fp)
	lw $t0, 12($fp)
	sw $t0, -1108($fp)
	li $t0, 4
	lw $t1, -1108($fp)
	mul $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, 0($t0)
	sw $t1, -1120($fp)
	li $t0, 0
	lw $t1, -1120($fp)
	sub $t0, $t0, $t1
	sw $t0, -1124($fp)
	li $t0, 0
	sw $t0, -1128($fp)
	lw $t0, 12($fp)
	sw $t0, -1132($fp)
	li $t0, 0
	lw $t1, -1132($fp)
	sub $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label1045
	j label1044
label1044:
	li $t0, 1
	sw $t0, -1128($fp)
label1045:
	li $t0, 0
	sw $t0, -1140($fp)
	li $t0, 0
	sw $t0, -1144($fp)
	li $t0, 49117
	sw $t0, -1148($fp)
	lw $t0, 8($fp)
	sw $t0, -1152($fp)
	lw $t1, -1148($fp)
	lw $t2, -1152($fp)
	ble $t1, $t2, label1048
	j label1049
label1048:
	li $t0, 1
	sw $t0, -1144($fp)
label1049:
	li $t0, 5089
	sw $t0, -1156($fp)
	lw $t1, -1144($fp)
	lw $t2, -1156($fp)
	bgt $t1, $t2, label1046
	j label1047
label1046:
	li $t0, 1
	sw $t0, -1140($fp)
label1047:
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1160($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1164($fp)
	lw $t0, -300($fp)
	sw $t0, -1168($fp)
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label1051
	j label1050
label1050:
	li $t0, 1
	sw $t0, -1164($fp)
label1051:
	li $t0, 0
	lw $t1, -1164($fp)
	sub $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t1, -1160($fp)
	lw $t2, -1172($fp)
	bne $t1, $t2, label1039
	j label1040
label1039:
	li $t0, 1
	sw $t0, -1052($fp)
label1040:
	lw $ra, -4($fp)
	lw $v0, -1052($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1036
label1038:
	j label1033
label1035:
	addi $t0, $fp, -8
	sw $t0, -1176($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -1196($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
	sw $t0, -1236($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1256($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -1276($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -1296($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -1316($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -1336($fp)
	li $t0, 6
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
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1364($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -1384($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -1404($fp)
	li $t0, 2
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
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1444($fp)
	li $t0, 4
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
	addi $t0, $fp, -76
	sw $t0, -1464($fp)
	li $t0, 5
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
	addi $t0, $fp, -76
	sw $t0, -1484($fp)
	li $t0, 6
	sw $t0, -1488($fp)
	li $t0, 4
	lw $t1, -1488($fp)
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1504($fp)
	li $t0, 7
	sw $t0, -1508($fp)
	li $t0, 4
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1524($fp)
	li $t0, 8
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
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1552($fp)
	addi $t0, $fp, -40
	sw $t0, -1556($fp)
	li $t0, 0
	sw $t0, -1560($fp)
	li $t0, 55198
	sw $t0, -1564($fp)
	li $t0, 49115
	sw $t0, -1568($fp)
	lw $t1, -1564($fp)
	lw $t2, -1568($fp)
	bgt $t1, $t2, label1055
	j label1056
label1055:
	li $t0, 1
	sw $t0, -1560($fp)
label1056:
	li $t0, 4
	lw $t1, -1560($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	addi $t0, $fp, -8
	sw $t0, -1584($fp)
	li $t0, 0
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
	lw $t1, -1580($fp)
	lw $t2, -1600($fp)
	beq $t1, $t2, label1052
	j label1054
label1054:
	addi $t0, $fp, -40
	sw $t0, -1604($fp)
	lw $t0, -552($fp)
	sw $t0, -1608($fp)
	li $t0, 4
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	lw $t0, 20($fp)
	sw $t0, -1624($fp)
	li $t0, 0
	sw $t0, -1628($fp)
	li $t0, 0
	sw $t0, -1632($fp)
	lw $t0, 20($fp)
	sw $t0, -1636($fp)
	lw $t0, -312($fp)
	sw $t0, -1640($fp)
	lw $t1, -1636($fp)
	lw $t2, -1640($fp)
	ble $t1, $t2, label1059
	j label1060
label1059:
	li $t0, 1
	sw $t0, -1632($fp)
label1060:
	li $t0, 36302
	sw $t0, -1644($fp)
	lw $t1, -1632($fp)
	lw $t2, -1644($fp)
	bne $t1, $t2, label1057
	j label1058
label1057:
	li $t0, 1
	sw $t0, -1628($fp)
label1058:
	li $t0, 0
	sw $t0, -1648($fp)
	lw $t0, -312($fp)
	sw $t0, -1652($fp)
	li $t0, 17711
	sw $t0, -1656($fp)
	lw $t1, -1652($fp)
	lw $t2, -1656($fp)
	bgt $t1, $t2, label1061
	j label1063
label1063:
	li $t0, 19506
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -1648($fp)
label1062:
	addi $t0, $fp, -12
	sw $t0, -1664($fp)
	lw $t0, -312($fp)
	sw $t0, -1668($fp)
	li $t0, 4
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	li $t0, 0
	sw $t0, -1684($fp)
	addi $t0, $fp, -12
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
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label1066
	j label1065
label1066:
	li $t0, 55681
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label1064
	j label1065
label1064:
	li $t0, 1
	sw $t0, -1684($fp)
label1065:
	addi $t0, $fp, -12
	sw $t0, -1712($fp)
	lw $t0, -540($fp)
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
	lw $t0, 12($fp)
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	sub $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	li $t0, 52659
	sw $t0, -1744($fp)
	lw $t0, 12($fp)
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label1069
	j label1068
label1069:
	li $t0, 50393
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label1067
	j label1068
label1067:
	li $t0, 1
	sw $t0, -1740($fp)
label1068:
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1760($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1760($fp)
	sub $t0, $t0, $t1
	sw $t0, -1764($fp)
	li $t0, 0
	sw $t0, -1768($fp)
	addi $t0, $fp, -76
	sw $t0, -1772($fp)
	li $t0, 2
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
	bne $t1, $t2, label1072
	j label1071
label1072:
	li $t0, 7723
	sw $t0, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label1070
	j label1071
label1070:
	li $t0, 1
	sw $t0, -1768($fp)
label1071:
	li $t0, 28535
	sw $t0, -1796($fp)
	addi $t0, $fp, -40
	sw $t0, -1800($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	lw $t1, -1816($fp)
	sub $t0, $t0, $t1
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 5324
	sw $t0, -1828($fp)
	lw $t0, 4($fp)
	sw $t0, -1832($fp)
	lw $t1, -1828($fp)
	lw $t2, -1832($fp)
	bge $t1, $t2, label1073
	j label1075
label1075:
	lw $t0, 4($fp)
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label1073
	j label1074
label1073:
	li $t0, 1
	sw $t0, -1824($fp)
label1074:
	li $t0, 0
	sw $t0, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	li $t0, 21390
	sw $t0, -1848($fp)
	lw $t0, -300($fp)
	sw $t0, -1852($fp)
	lw $t1, -1848($fp)
	lw $t2, -1852($fp)
	bgt $t1, $t2, label1078
	j label1079
label1078:
	li $t0, 1
	sw $t0, -1844($fp)
label1079:
	li $t0, 41435
	sw $t0, -1856($fp)
	lw $t1, -1844($fp)
	lw $t2, -1856($fp)
	bgt $t1, $t2, label1076
	j label1077
label1076:
	li $t0, 1
	sw $t0, -1840($fp)
label1077:
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1860($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1864($fp)
	addi $sp, $sp, 24
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label1052
	j label1053
label1052:
	li $t0, 1
	sw $t0, -1552($fp)
label1053:
	lw $ra, -4($fp)
	lw $v0, -1552($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -748
	li $t0, 40383
	sw $t0, -52($fp)
	addi $t0, $fp, -24
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
	li $t0, 12924
	sw $t0, -76($fp)
	addi $t0, $fp, -24
	sw $t0, -80($fp)
	li $t0, 1
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
	li $t0, 42246
	sw $t0, -100($fp)
	addi $t0, $fp, -24
	sw $t0, -104($fp)
	li $t0, 2
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
	li $t0, 61696
	sw $t0, -124($fp)
	addi $t0, $fp, -24
	sw $t0, -128($fp)
	li $t0, 3
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
	li $t0, 53147
	sw $t0, -148($fp)
	addi $t0, $fp, -24
	sw $t0, -152($fp)
	li $t0, 4
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
	li $t0, 2297
	sw $t0, -172($fp)
	addi $t0, $fp, -48
	sw $t0, -176($fp)
	li $t0, 0
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
	li $t0, 5196
	sw $t0, -196($fp)
	addi $t0, $fp, -48
	sw $t0, -200($fp)
	li $t0, 1
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
	li $t0, 41497
	sw $t0, -220($fp)
	addi $t0, $fp, -48
	sw $t0, -224($fp)
	li $t0, 2
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
	li $t0, 56195
	sw $t0, -244($fp)
	addi $t0, $fp, -48
	sw $t0, -248($fp)
	li $t0, 3
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
	li $t0, 54313
	sw $t0, -268($fp)
	addi $t0, $fp, -48
	sw $t0, -272($fp)
	li $t0, 4
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
	li $t0, 46586
	sw $t0, -292($fp)
	addi $t0, $fp, -48
	sw $t0, -296($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	li $t0, 47881
	sw $t0, -324($fp)
	li $t0, 29715
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -332($fp)
	addi $t0, $fp, -48
	sw $t0, -336($fp)
	lw $t0, 8($fp)
	sw $t0, -340($fp)
	li $t0, 4
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t1, 0($t0)
	sw $t1, -352($fp)
	li $t0, 10148
	sw $t0, -356($fp)
	lw $t0, -352($fp)
	lw $t1, -356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -360($fp)
	lw $t0, 8($fp)
	sw $t0, -364($fp)
	li $t0, 43975
	sw $t0, -368($fp)
	lw $t0, -364($fp)
	lw $t1, -368($fp)
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	li $t0, 30165
	sw $t0, -376($fp)
	lw $t0, -372($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -384($fp)
	addi $sp, $sp, 16
	lw $t0, -324($fp)
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	li $t0, 0
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label1083
	j label1082
label1082:
	li $t0, 1
	sw $t0, -320($fp)
label1083:
	li $t0, 0
	sw $t0, -396($fp)
	addi $t0, $fp, -24
	sw $t0, -400($fp)
	li $t0, 0
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
	li $t0, 35039
	sw $t0, -420($fp)
	li $t0, 14555
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t1, -416($fp)
	lw $t2, -428($fp)
	blt $t1, $t2, label1084
	j label1085
label1084:
	li $t0, 1
	sw $t0, -396($fp)
label1085:
	lw $t1, -320($fp)
	lw $t2, -396($fp)
	bne $t1, $t2, label1080
	j label1081
label1080:
	li $t0, 1
	sw $t0, -316($fp)
label1081:
	li $t0, 0
	sw $t0, -432($fp)
	li $t0, 20196
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label1086
	j label1087
label1086:
	li $t0, 1
	sw $t0, -432($fp)
label1087:
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	addi $t0, $fp, -48
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
	li $t0, 0
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label1091
	j label1090
label1090:
	li $t0, 1
	sw $t0, -444($fp)
label1091:
	li $t0, 0
	lw $t1, -444($fp)
	sub $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, 8($fp)
	sw $t0, -476($fp)
	li $t0, 7319
	sw $t0, -480($fp)
	lw $t0, -476($fp)
	lw $t1, -480($fp)
	mul $t0, $t0, $t1
	sw $t0, -484($fp)
	li $t0, 0
	sw $t0, -488($fp)
	li $t0, 9338
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label1093
	j label1092
label1092:
	li $t0, 1
	sw $t0, -488($fp)
label1093:
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t1, -472($fp)
	lw $t2, -496($fp)
	bgt $t1, $t2, label1088
	j label1089
label1088:
	li $t0, 1
	sw $t0, -440($fp)
label1089:
	addi $t0, $fp, -24
	sw $t0, -500($fp)
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -540($fp)
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	addi $t0, $fp, -48
	sw $t0, -600($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -620($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -640($fp)
	li $t0, 2
	sw $t0, -644($fp)
	li $t0, 4
	lw $t1, -644($fp)
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	lw $t1, -640($fp)
	add $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	lw $t1, 0($t0)
	sw $t1, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -660($fp)
	li $t0, 3
	sw $t0, -664($fp)
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	lw $t0, -676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -680($fp)
	li $t0, 4
	sw $t0, -684($fp)
	li $t0, 4
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, 0($t0)
	sw $t1, -696($fp)
	lw $t0, -696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -700($fp)
	li $t0, 5
	sw $t0, -704($fp)
	li $t0, 4
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	lw $t1, -700($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	lw $t1, 0($t0)
	sw $t1, -716($fp)
	lw $t0, -716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -720($fp)
	li $t0, 45326
	sw $t0, -724($fp)
	lw $t0, 8($fp)
	sw $t0, -728($fp)
	lw $t0, -724($fp)
	lw $t1, -728($fp)
	sub $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label1097
	j label1095
label1097:
	li $t0, 50625
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label1096
	j label1095
label1096:
	lw $t0, 8($fp)
	sw $t0, -740($fp)
	li $t0, 65019
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t1, -748($fp)
	li $t2, 0
	bne $t1, $t2, label1094
	j label1095
label1094:
	li $t0, 1
	sw $t0, -720($fp)
label1095:
	lw $t0, -720($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -752($fp)
	lw $ra, -4($fp)
	lw $v0, -752($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -264
	li $t0, 63037
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
	li $t0, 4595
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
	li $t0, 35785
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
	li $t0, 37884
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
	li $t0, 17520
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -124($fp)
	sw $t0, -132($fp)
	lw $t0, -124($fp)
	sw $t0, -136($fp)
	lw $t0, -132($fp)
	lw $t1, -136($fp)
	mul $t0, $t0, $t1
	sw $t0, -140($fp)
	li $t0, 5131
	sw $t0, -144($fp)
	li $t0, 0
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -124($fp)
	sw $t0, -152($fp)
	lw $t0, -148($fp)
	lw $t1, -152($fp)
	sub $t0, $t0, $t1
	sw $t0, -156($fp)
	addi $t0, $fp, -20
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
	addi $sp, $sp, -4
	lw $t0, -140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -176($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -180($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -20
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	li $t0, 4
	lw $t1, -188($fp)
	mul $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, -184($fp)
	add $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	lw $t1, 0($t0)
	sw $t1, -200($fp)
	lw $t0, -200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -204($fp)
	li $t0, 1
	sw $t0, -208($fp)
	li $t0, 4
	lw $t1, -208($fp)
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	lw $t1, 0($t0)
	sw $t1, -220($fp)
	lw $t0, -220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -224($fp)
	li $t0, 2
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
	lw $t0, -240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -244($fp)
	li $t0, 3
	sw $t0, -248($fp)
	li $t0, 4
	lw $t1, -248($fp)
	mul $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, -244($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t1, 0($t0)
	sw $t1, -260($fp)
	lw $t0, -260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 14793
	sw $t0, -268($fp)
	lw $ra, -4($fp)
	lw $v0, -268($fp)
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
