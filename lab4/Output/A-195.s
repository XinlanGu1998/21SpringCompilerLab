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
	addi $sp, $sp, -656
	li $t0, 61747
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 35678
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 38827
	sw $t0, -72($fp)
	addi $t0, $fp, -44
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
	li $t0, 32418
	sw $t0, -96($fp)
	addi $t0, $fp, -44
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
	li $t0, 19123
	sw $t0, -120($fp)
	addi $t0, $fp, -44
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
	li $t0, 23319
	sw $t0, -144($fp)
	addi $t0, $fp, -44
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
	li $t0, 54993
	sw $t0, -168($fp)
	addi $t0, $fp, -44
	sw $t0, -172($fp)
	li $t0, 4
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
	li $t0, 5730
	sw $t0, -192($fp)
	addi $t0, $fp, -44
	sw $t0, -196($fp)
	li $t0, 5
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
	li $t0, 44985
	sw $t0, -216($fp)
	addi $t0, $fp, -44
	sw $t0, -220($fp)
	li $t0, 6
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
	li $t0, 47593
	sw $t0, -240($fp)
	addi $t0, $fp, -44
	sw $t0, -244($fp)
	li $t0, 7
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
	li $t0, 38258
	sw $t0, -264($fp)
	addi $t0, $fp, -44
	sw $t0, -268($fp)
	li $t0, 8
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
	li $t0, 59526
	sw $t0, -288($fp)
	addi $t0, $fp, -44
	sw $t0, -292($fp)
	li $t0, 9
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
	li $t0, 56847
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	li $t0, 63053
	sw $t0, -328($fp)
	li $t0, 0
	sw $t0, -332($fp)
	jal f6
	sw $v0, -336($fp)
	addi $sp, $sp, 4
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -332($fp)
label124:
	lw $t1, -328($fp)
	lw $t2, -332($fp)
	bgt $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -324($fp)
label122:
	li $t0, 0
	sw $t0, -340($fp)
	jal f6
	sw $v0, -344($fp)
	addi $sp, $sp, 4
	li $t0, 30289
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label127:
	lw $t0, -52($fp)
	sw $t0, -356($fp)
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label125:
	li $t0, 1
	sw $t0, -340($fp)
label126:
	lw $t0, -340($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	lw $t0, -64($fp)
	sw $t0, -368($fp)
	lw $t0, -64($fp)
	sw $t0, -372($fp)
	lw $t0, -368($fp)
	lw $t1, -372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label129
label131:
	addi $t0, $fp, -44
	sw $t0, -380($fp)
	lw $t0, -316($fp)
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
	lw $t0, -316($fp)
	sw $t0, -400($fp)
	lw $t0, -396($fp)
	lw $t1, -400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label130:
	jal f6
	sw $v0, -408($fp)
	addi $sp, $sp, 4
	li $t0, 3900
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	li $t0, 13672
	sw $t0, -420($fp)
	lw $t0, -416($fp)
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -364($fp)
label129:
	lw $t0, -52($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	lw $t0, -316($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -640($fp)
	jal f6
	sw $v0, -644($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -64($fp)
	sw $t0, -652($fp)
	lw $t0, -316($fp)
	sw $t0, -656($fp)
	lw $t0, -652($fp)
	lw $t1, -656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -660($fp)
	lw $t1, -648($fp)
	lw $t2, -660($fp)
	beq $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -640($fp)
label133:
	lw $ra, -4($fp)
	lw $v0, -640($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -48
	li $t0, 54308
	sw $t0, -8($fp)
	li $t0, 0
	lw $t1, -8($fp)
	sub $t0, $t0, $t1
	sw $t0, -12($fp)
	lw $ra, -4($fp)
	lw $v0, -12($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -16($fp)
	li $t0, 12487
	sw $t0, -20($fp)
	lw $t1, -20($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label136:
	lw $t0, 4($fp)
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -16($fp)
label135:
	addi $sp, $sp, -4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -28($fp)
	addi $sp, $sp, 8
	jal f6
	sw $v0, -32($fp)
	addi $sp, $sp, 4
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	mul $t0, $t0, $t1
	sw $t0, -36($fp)
	li $t0, 9880
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -44($fp)
	li $t0, 0
	lw $t1, -44($fp)
	sub $t0, $t0, $t1
	sw $t0, -48($fp)
	li $t0, 0
	lw $t1, -48($fp)
	sub $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $ra, -4($fp)
	lw $v0, -52($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2292
	li $t0, 19055
	sw $t0, -116($fp)
	addi $t0, $fp, -36
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
	li $t0, 45370
	sw $t0, -140($fp)
	addi $t0, $fp, -36
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
	li $t0, 41165
	sw $t0, -164($fp)
	addi $t0, $fp, -36
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
	li $t0, 5657
	sw $t0, -188($fp)
	addi $t0, $fp, -36
	sw $t0, -192($fp)
	li $t0, 3
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
	li $t0, 2807
	sw $t0, -212($fp)
	addi $t0, $fp, -36
	sw $t0, -216($fp)
	li $t0, 4
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
	li $t0, 61152
	sw $t0, -236($fp)
	addi $t0, $fp, -36
	sw $t0, -240($fp)
	li $t0, 5
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
	li $t0, 37228
	sw $t0, -260($fp)
	addi $t0, $fp, -36
	sw $t0, -264($fp)
	li $t0, 6
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
	li $t0, 26957
	sw $t0, -284($fp)
	addi $t0, $fp, -36
	sw $t0, -288($fp)
	li $t0, 7
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
	li $t0, 43879
	sw $t0, -308($fp)
	addi $t0, $fp, -56
	sw $t0, -312($fp)
	li $t0, 0
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
	li $t0, 5777
	sw $t0, -332($fp)
	addi $t0, $fp, -56
	sw $t0, -336($fp)
	li $t0, 1
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
	li $t0, 48535
	sw $t0, -356($fp)
	addi $t0, $fp, -56
	sw $t0, -360($fp)
	li $t0, 2
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
	li $t0, 40091
	sw $t0, -380($fp)
	addi $t0, $fp, -56
	sw $t0, -384($fp)
	li $t0, 3
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
	li $t0, 41455
	sw $t0, -404($fp)
	addi $t0, $fp, -56
	sw $t0, -408($fp)
	li $t0, 4
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
	li $t0, 21826
	sw $t0, -428($fp)
	addi $t0, $fp, -76
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
	li $t0, 6973
	sw $t0, -452($fp)
	addi $t0, $fp, -76
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
	li $t0, 60578
	sw $t0, -476($fp)
	addi $t0, $fp, -76
	sw $t0, -480($fp)
	li $t0, 2
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
	li $t0, 45145
	sw $t0, -500($fp)
	addi $t0, $fp, -76
	sw $t0, -504($fp)
	li $t0, 3
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
	li $t0, 61966
	sw $t0, -524($fp)
	addi $t0, $fp, -76
	sw $t0, -528($fp)
	li $t0, 4
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
	li $t0, 772
	sw $t0, -548($fp)
	addi $t0, $fp, -112
	sw $t0, -552($fp)
	li $t0, 0
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
	li $t0, 24594
	sw $t0, -572($fp)
	addi $t0, $fp, -112
	sw $t0, -576($fp)
	li $t0, 1
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
	li $t0, 44024
	sw $t0, -596($fp)
	addi $t0, $fp, -112
	sw $t0, -600($fp)
	li $t0, 2
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
	li $t0, 39031
	sw $t0, -620($fp)
	addi $t0, $fp, -112
	sw $t0, -624($fp)
	li $t0, 3
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
	li $t0, 18584
	sw $t0, -644($fp)
	addi $t0, $fp, -112
	sw $t0, -648($fp)
	li $t0, 4
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
	li $t0, 35335
	sw $t0, -668($fp)
	addi $t0, $fp, -112
	sw $t0, -672($fp)
	li $t0, 5
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
	li $t0, 36548
	sw $t0, -692($fp)
	addi $t0, $fp, -112
	sw $t0, -696($fp)
	li $t0, 6
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
	li $t0, 48873
	sw $t0, -716($fp)
	addi $t0, $fp, -112
	sw $t0, -720($fp)
	li $t0, 7
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
	li $t0, 39235
	sw $t0, -740($fp)
	addi $t0, $fp, -112
	sw $t0, -744($fp)
	li $t0, 8
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
	li $t0, 50220
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 37646
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 0
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, 8($fp)
	sw $t0, -796($fp)
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label139:
	li $t0, 1
	sw $t0, -792($fp)
label140:
	lw $t0, -780($fp)
	sw $t0, -800($fp)
	li $t0, 51722
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	li $t0, 0
	lw $t1, -808($fp)
	sub $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -792($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	addi $t0, $fp, -36
	sw $t0, -820($fp)
	li $t0, 5
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
	lw $t0, -780($fp)
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -844($fp)
	lw $t1, -816($fp)
	lw $t2, -844($fp)
	beq $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -788($fp)
label138:
label141:
	jal f6
	sw $v0, -848($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -852($fp)
	li $t0, 0
	sw $t0, -856($fp)
	li $t0, 31556
	sw $t0, -860($fp)
	li $t0, 0
	lw $t1, -860($fp)
	sub $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t1, -864($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -856($fp)
label147:
	lw $t0, -780($fp)
	sw $t0, -868($fp)
	li $t0, 35730
	sw $t0, -872($fp)
	lw $t0, -868($fp)
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t1, -856($fp)
	lw $t2, -876($fp)
	blt $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -852($fp)
label145:
	lw $t1, -848($fp)
	lw $t2, -852($fp)
	beq $t1, $t2, label142
	j label143
label142:
	lw $t0, 4($fp)
	sw $t0, -880($fp)
	li $t0, 0
	lw $t1, -880($fp)
	sub $t0, $t0, $t1
	sw $t0, -884($fp)
	li $t0, 0
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	jal f6
	sw $v0, -892($fp)
	addi $sp, $sp, 4
	li $t0, 61320
	sw $t0, -896($fp)
	lw $t0, -892($fp)
	lw $t1, -896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -900($fp)
	addi $t0, $fp, -36
	sw $t0, -904($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -924($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -36
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
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -948($fp)
	addi $sp, $sp, 12
	lw $t0, -888($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
label151:
	addi $t0, $fp, -112
	sw $t0, -956($fp)
	li $t0, 0
	sw $t0, -960($fp)
	lw $t0, -768($fp)
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label155
label156:
	li $t0, 9689
	sw $t0, -968($fp)
	lw $t1, -968($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -960($fp)
label155:
	li $t0, 4
	lw $t1, -960($fp)
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	lw $t1, 0($t0)
	sw $t1, -980($fp)
	lw $t1, -980($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 39828
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label157
label157:
	li $t0, 1
	sw $t0, -984($fp)
label158:
	j label151
label153:
	j label150
label149:
	li $t0, 0
	sw $t0, -992($fp)
	li $t0, 44319
	sw $t0, -996($fp)
	lw $t1, -996($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -992($fp)
label160:
label150:
	j label141
label143:
	addi $t0, $fp, -36
	sw $t0, -1000($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -1020($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -1040($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -1060($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -1080($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -1100($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -1120($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -1140($fp)
	li $t0, 7
	sw $t0, -1144($fp)
	li $t0, 4
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	lw $t1, 0($t0)
	sw $t1, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1160($fp)
	li $t0, 0
	sw $t0, -1164($fp)
	li $t0, 4
	lw $t1, -1164($fp)
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, 0($t0)
	sw $t1, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1180($fp)
	li $t0, 1
	sw $t0, -1184($fp)
	li $t0, 4
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	lw $t1, 0($t0)
	sw $t1, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1200($fp)
	li $t0, 2
	sw $t0, -1204($fp)
	li $t0, 4
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1220($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -1240($fp)
	li $t0, 4
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -112
	sw $t0, -1360($fp)
	li $t0, 0
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
	addi $t0, $fp, -112
	sw $t0, -1380($fp)
	li $t0, 1
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
	addi $t0, $fp, -112
	sw $t0, -1400($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -1420($fp)
	li $t0, 3
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
	addi $t0, $fp, -112
	sw $t0, -1440($fp)
	li $t0, 4
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
	addi $t0, $fp, -112
	sw $t0, -1460($fp)
	li $t0, 5
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
	addi $t0, $fp, -112
	sw $t0, -1480($fp)
	li $t0, 6
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
	addi $t0, $fp, -112
	sw $t0, -1500($fp)
	li $t0, 7
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
	addi $t0, $fp, -112
	sw $t0, -1520($fp)
	li $t0, 8
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
	lw $t0, -768($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	addi $t0, $fp, -76
	sw $t0, -1556($fp)
	lw $t0, 8($fp)
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
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label164:
	li $t0, 1
	sw $t0, -1552($fp)
label165:
	li $t0, 49780
	sw $t0, -1576($fp)
	lw $t0, -780($fp)
	sw $t0, -1580($fp)
	lw $t0, -1576($fp)
	lw $t1, -1580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1584($fp)
	lw $t0, -1552($fp)
	lw $t1, -1584($fp)
	sub $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label163:
	li $t0, 15747
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -1596($fp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1600($fp)
	addi $sp, $sp, 8
	li $t0, 609
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1608($fp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1612($fp)
	addi $sp, $sp, 8
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -1548($fp)
label162:
	lw $ra, -4($fp)
	lw $v0, -1548($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1616($fp)
	lw $t0, 4($fp)
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label171:
	li $t0, 56753
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -1616($fp)
label170:
	lw $t0, -1616($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	addi $t0, $fp, -76
	sw $t0, -1636($fp)
	li $t0, 4
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
	li $t0, 11562
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	sub $t0, $t0, $t1
	sw $t0, -1660($fp)
	addi $t0, $fp, -36
	sw $t0, -1664($fp)
	li $t0, 0
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
	lw $t0, -1660($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $ra, -4($fp)
	lw $v0, -1684($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label168
label167:
label172:
	li $t0, 0
	sw $t0, -1688($fp)
	lw $t0, -780($fp)
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label176:
	li $t0, 1
	sw $t0, -1688($fp)
label177:
	li $t0, 0
	lw $t1, -1688($fp)
	sub $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label174
label175:
	lw $t0, 4($fp)
	sw $t0, -1700($fp)
	li $t0, 50593
	sw $t0, -1704($fp)
	li $t0, 23397
	sw $t0, -1708($fp)
	lw $t0, -1704($fp)
	lw $t1, -1708($fp)
	sub $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t1, -1700($fp)
	lw $t2, -1712($fp)
	beq $t1, $t2, label173
	j label174
label173:
	li $t0, 0
	sw $t0, -1716($fp)
	addi $t0, $fp, -56
	sw $t0, -1720($fp)
	li $t0, 3
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
	jal f6
	sw $v0, -1740($fp)
	addi $sp, $sp, 4
	lw $t1, -1736($fp)
	lw $t2, -1740($fp)
	bgt $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -1716($fp)
label179:
	j label172
label174:
label168:
	addi $t0, $fp, -36
	sw $t0, -1744($fp)
	li $t0, 0
	sw $t0, -1748($fp)
	li $t0, 4
	lw $t1, -1748($fp)
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	lw $t1, 0($t0)
	sw $t1, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1764($fp)
	li $t0, 1
	sw $t0, -1768($fp)
	li $t0, 4
	lw $t1, -1768($fp)
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1784($fp)
	li $t0, 2
	sw $t0, -1788($fp)
	li $t0, 4
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	lw $t1, -1784($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	lw $t1, 0($t0)
	sw $t1, -1800($fp)
	lw $t0, -1800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1804($fp)
	li $t0, 3
	sw $t0, -1808($fp)
	li $t0, 4
	lw $t1, -1808($fp)
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	lw $t1, 0($t0)
	sw $t1, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1824($fp)
	li $t0, 4
	sw $t0, -1828($fp)
	li $t0, 4
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, 0($t0)
	sw $t1, -1840($fp)
	lw $t0, -1840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1844($fp)
	li $t0, 5
	sw $t0, -1848($fp)
	li $t0, 4
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	lw $t1, 0($t0)
	sw $t1, -1860($fp)
	lw $t0, -1860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1864($fp)
	li $t0, 6
	sw $t0, -1868($fp)
	li $t0, 4
	lw $t1, -1868($fp)
	mul $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, 0($t0)
	sw $t1, -1880($fp)
	lw $t0, -1880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1884($fp)
	li $t0, 7
	sw $t0, -1888($fp)
	li $t0, 4
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	lw $t1, 0($t0)
	sw $t1, -1900($fp)
	lw $t0, -1900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1904($fp)
	li $t0, 0
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
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1924($fp)
	li $t0, 1
	sw $t0, -1928($fp)
	li $t0, 4
	lw $t1, -1928($fp)
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, 0($t0)
	sw $t1, -1940($fp)
	lw $t0, -1940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1944($fp)
	li $t0, 2
	sw $t0, -1948($fp)
	li $t0, 4
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	lw $t0, -1960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1964($fp)
	li $t0, 3
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
	lw $t0, -1980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1984($fp)
	li $t0, 4
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
	addi $t0, $fp, -76
	sw $t0, -2004($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -2024($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -2044($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -2064($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -2084($fp)
	li $t0, 4
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
	addi $t0, $fp, -112
	sw $t0, -2104($fp)
	li $t0, 0
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
	addi $t0, $fp, -112
	sw $t0, -2124($fp)
	li $t0, 1
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
	addi $t0, $fp, -112
	sw $t0, -2144($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -2164($fp)
	li $t0, 3
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
	addi $t0, $fp, -112
	sw $t0, -2184($fp)
	li $t0, 4
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
	addi $t0, $fp, -112
	sw $t0, -2204($fp)
	li $t0, 5
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
	addi $t0, $fp, -112
	sw $t0, -2224($fp)
	li $t0, 6
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
	addi $t0, $fp, -112
	sw $t0, -2244($fp)
	li $t0, 7
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
	addi $t0, $fp, -112
	sw $t0, -2264($fp)
	li $t0, 8
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
	lw $t0, -768($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f6
	sw $v0, -2292($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2296($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -2296($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -564
	li $t0, 6734
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 40706
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
	li $t0, 6290
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
	li $t0, 44380
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
	li $t0, 26892
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
	li $t0, 855
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
	li $t0, 35546
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
	li $t0, 58448
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
	li $t0, 36585
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
	li $t0, 32369
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
	li $t0, 27276
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
	li $t0, 0
	sw $t0, -300($fp)
	addi $t0, $fp, -44
	sw $t0, -304($fp)
	li $t0, 0
	sw $t0, -308($fp)
	li $t0, 4
	lw $t1, -308($fp)
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, 0($t0)
	sw $t1, -320($fp)
	li $t0, 0
	lw $t1, -320($fp)
	sub $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label180:
	li $t0, 1
	sw $t0, -300($fp)
label181:
	lw $t0, -52($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -332($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -352($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -372($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -392($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -412($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -432($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -452($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -472($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -492($fp)
	li $t0, 8
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
	li $t0, 9
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
	li $t0, 0
	sw $t0, -532($fp)
	addi $t0, $fp, -44
	sw $t0, -536($fp)
	lw $t0, -52($fp)
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
	li $t0, 0
	sw $t0, -556($fp)
	li $t0, 12084
	sw $t0, -560($fp)
	li $t0, 0
	lw $t1, -560($fp)
	sub $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label184:
	li $t0, 1
	sw $t0, -556($fp)
label185:
	li $t0, 0
	lw $t1, -556($fp)
	sub $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t1, -552($fp)
	lw $t2, -568($fp)
	beq $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -532($fp)
label183:
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
	addi $sp, $sp, -236
	li $t0, 40712
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
	li $t0, 1844
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
	li $t0, 61865
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
	li $t0, 56459
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
	lw $t0, 4($fp)
	sw $t0, -204($fp)
	lw $t0, 4($fp)
	sw $t0, -208($fp)
	lw $t0, -204($fp)
	lw $t1, -208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -212($fp)
	addi $t0, $fp, -20
	sw $t0, -216($fp)
	li $t0, 0
	sw $t0, -220($fp)
	li $t0, 2453
	sw $t0, -224($fp)
	li $t0, 53082
	sw $t0, -228($fp)
	lw $t1, -224($fp)
	lw $t2, -228($fp)
	bgt $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -220($fp)
label189:
	li $t0, 4
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, 0($t0)
	sw $t1, -240($fp)
	lw $t1, -212($fp)
	lw $t2, -240($fp)
	beq $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -200($fp)
label187:
	lw $ra, -4($fp)
	lw $v0, -200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -768
	li $t0, 1713
	sw $t0, -32($fp)
	addi $t0, $fp, -8
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
	li $t0, 48208
	sw $t0, -56($fp)
	addi $t0, $fp, -28
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
	li $t0, 40730
	sw $t0, -80($fp)
	addi $t0, $fp, -28
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
	li $t0, 13276
	sw $t0, -104($fp)
	addi $t0, $fp, -28
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
	li $t0, 53020
	sw $t0, -128($fp)
	addi $t0, $fp, -28
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
	li $t0, 6866
	sw $t0, -152($fp)
	addi $t0, $fp, -28
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
	li $t0, 0
	sw $t0, -176($fp)
	li $t0, 0
	sw $t0, -180($fp)
	lw $t0, 12($fp)
	sw $t0, -184($fp)
	lw $t0, 8($fp)
	sw $t0, -188($fp)
	lw $t1, -184($fp)
	lw $t2, -188($fp)
	blt $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -180($fp)
label193:
	li $t0, 63869
	sw $t0, -192($fp)
	lw $t1, -180($fp)
	lw $t2, -192($fp)
	beq $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -176($fp)
label191:
	addi $sp, $sp, -4
	lw $t0, -176($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -196($fp)
	addi $sp, $sp, 8
	li $t0, 10881
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -204($fp)
	addi $t0, $fp, -8
	sw $t0, -208($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
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
	lw $t0, -244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -248($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -268($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -288($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -308($fp)
	li $t0, 4
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
	addi $t0, $fp, -8
	sw $t0, -332($fp)
	lw $t0, 12($fp)
	sw $t0, -336($fp)
	li $t0, 8337
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	li $t0, 4
	lw $t1, -344($fp)
	mul $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t1, 0($t0)
	sw $t1, -356($fp)
	addi $t0, $fp, -28
	sw $t0, -360($fp)
	lw $t0, 12($fp)
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
	li $t0, 0
	lw $t1, -376($fp)
	sub $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -356($fp)
	lw $t1, -380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label196:
	li $t0, 0
	sw $t0, -388($fp)
	li $t0, 49043
	sw $t0, -392($fp)
	li $t0, 26230
	sw $t0, -396($fp)
	lw $t1, -392($fp)
	lw $t2, -396($fp)
	bge $t1, $t2, label197
	j label199
label199:
	li $t0, 61996
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -388($fp)
label198:
	li $t0, 0
	sw $t0, -404($fp)
	lw $t0, 12($fp)
	sw $t0, -408($fp)
	li $t0, 17616
	sw $t0, -412($fp)
	lw $t1, -408($fp)
	lw $t2, -412($fp)
	bge $t1, $t2, label202
	j label201
label202:
	lw $t0, 12($fp)
	sw $t0, -416($fp)
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -404($fp)
label201:
	li $t0, 0
	sw $t0, -420($fp)
	li $t0, 19939
	sw $t0, -424($fp)
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label203:
	li $t0, 1
	sw $t0, -420($fp)
label204:
	lw $t0, 4($fp)
	sw $t0, -428($fp)
	lw $t0, -420($fp)
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -432($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -436($fp)
	addi $sp, $sp, 16
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -328($fp)
label195:
	lw $ra, -4($fp)
	lw $v0, -328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -8
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	li $t0, 0
	sw $t0, -560($fp)
	jal f6
	sw $v0, -564($fp)
	addi $sp, $sp, 4
	li $t0, 10399
	sw $t0, -568($fp)
	lw $t0, 4($fp)
	sw $t0, -572($fp)
	lw $t0, -568($fp)
	lw $t1, -572($fp)
	sub $t0, $t0, $t1
	sw $t0, -576($fp)
	li $t0, 27085
	sw $t0, -580($fp)
	lw $t0, 8($fp)
	sw $t0, -584($fp)
	lw $t0, -580($fp)
	lw $t1, -584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -588($fp)
	lw $t0, -576($fp)
	lw $t1, -588($fp)
	add $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t1, -564($fp)
	lw $t2, -592($fp)
	blt $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -560($fp)
label206:
	lw $ra, -4($fp)
	lw $v0, -560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -596($fp)
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 32006
	sw $t0, -604($fp)
	lw $t1, -604($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 1
	sw $t0, -600($fp)
label211:
	lw $t0, 8($fp)
	sw $t0, -608($fp)
	li $t0, 3312
	sw $t0, -612($fp)
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -616($fp)
	lw $t0, 8($fp)
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -600($fp)
	lw $t1, -624($fp)
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label208
label209:
	lw $t0, 12($fp)
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -596($fp)
label208:
	addi $t0, $fp, -8
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
	addi $t0, $fp, -28
	sw $t0, -656($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -676($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -696($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -716($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -736($fp)
	li $t0, 4
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
	jal f9
	sw $v0, -756($fp)
	addi $sp, $sp, 4
	li $t0, 64376
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -764($fp)
	jal f6
	sw $v0, -768($fp)
	addi $sp, $sp, 4
	lw $t0, -764($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $ra, -4($fp)
	lw $v0, -772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2828
	li $t0, 30588
	sw $t0, -112($fp)
	addi $t0, $fp, -44
	sw $t0, -116($fp)
	li $t0, 0
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
	li $t0, 529
	sw $t0, -136($fp)
	addi $t0, $fp, -44
	sw $t0, -140($fp)
	li $t0, 1
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
	li $t0, 65259
	sw $t0, -160($fp)
	addi $t0, $fp, -44
	sw $t0, -164($fp)
	li $t0, 2
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
	li $t0, 53648
	sw $t0, -184($fp)
	addi $t0, $fp, -44
	sw $t0, -188($fp)
	li $t0, 3
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
	li $t0, 12613
	sw $t0, -208($fp)
	addi $t0, $fp, -44
	sw $t0, -212($fp)
	li $t0, 4
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
	li $t0, 40435
	sw $t0, -232($fp)
	addi $t0, $fp, -44
	sw $t0, -236($fp)
	li $t0, 5
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
	li $t0, 55492
	sw $t0, -256($fp)
	addi $t0, $fp, -44
	sw $t0, -260($fp)
	li $t0, 6
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
	li $t0, 8942
	sw $t0, -280($fp)
	addi $t0, $fp, -44
	sw $t0, -284($fp)
	li $t0, 7
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
	li $t0, 31359
	sw $t0, -304($fp)
	addi $t0, $fp, -44
	sw $t0, -308($fp)
	li $t0, 8
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
	li $t0, 57946
	sw $t0, -328($fp)
	addi $t0, $fp, -44
	sw $t0, -332($fp)
	li $t0, 9
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
	li $t0, 62025
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 33072
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 40618
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 37219
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 46348
	sw $t0, -400($fp)
	addi $t0, $fp, -56
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
	li $t0, 28102
	sw $t0, -424($fp)
	addi $t0, $fp, -56
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
	li $t0, 44086
	sw $t0, -448($fp)
	addi $t0, $fp, -56
	sw $t0, -452($fp)
	li $t0, 2
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
	li $t0, 44682
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 38984
	sw $t0, -484($fp)
	addi $t0, $fp, -80
	sw $t0, -488($fp)
	li $t0, 0
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
	li $t0, 52423
	sw $t0, -508($fp)
	addi $t0, $fp, -80
	sw $t0, -512($fp)
	li $t0, 1
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
	li $t0, 64621
	sw $t0, -532($fp)
	addi $t0, $fp, -80
	sw $t0, -536($fp)
	li $t0, 2
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
	li $t0, 56600
	sw $t0, -556($fp)
	addi $t0, $fp, -80
	sw $t0, -560($fp)
	li $t0, 3
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
	li $t0, 35931
	sw $t0, -580($fp)
	addi $t0, $fp, -80
	sw $t0, -584($fp)
	li $t0, 4
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
	li $t0, 25315
	sw $t0, -604($fp)
	addi $t0, $fp, -80
	sw $t0, -608($fp)
	li $t0, 5
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
	li $t0, 53060
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 46330
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 52400
	sw $t0, -652($fp)
	addi $t0, $fp, -108
	sw $t0, -656($fp)
	li $t0, 0
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
	li $t0, 19531
	sw $t0, -676($fp)
	addi $t0, $fp, -108
	sw $t0, -680($fp)
	li $t0, 1
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
	li $t0, 49642
	sw $t0, -700($fp)
	addi $t0, $fp, -108
	sw $t0, -704($fp)
	li $t0, 2
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
	li $t0, 50534
	sw $t0, -724($fp)
	addi $t0, $fp, -108
	sw $t0, -728($fp)
	li $t0, 3
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
	li $t0, 18370
	sw $t0, -748($fp)
	addi $t0, $fp, -108
	sw $t0, -752($fp)
	li $t0, 4
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
	li $t0, 14694
	sw $t0, -772($fp)
	addi $t0, $fp, -108
	sw $t0, -776($fp)
	li $t0, 5
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
	li $t0, 51063
	sw $t0, -796($fp)
	addi $t0, $fp, -108
	sw $t0, -800($fp)
	li $t0, 6
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
	li $t0, 18094
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 2807
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 63677
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
label212:
	addi $t0, $fp, -56
	sw $t0, -856($fp)
	addi $t0, $fp, -56
	sw $t0, -860($fp)
	li $t0, 0
	sw $t0, -864($fp)
	lw $t0, -392($fp)
	sw $t0, -868($fp)
	li $t0, 58529
	sw $t0, -872($fp)
	lw $t1, -868($fp)
	lw $t2, -872($fp)
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -864($fp)
label216:
	li $t0, 4
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	lw $t1, 0($t0)
	sw $t1, -884($fp)
	li $t0, 4
	lw $t1, -884($fp)
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	lw $t1, -896($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
label217:
	jal f6
	sw $v0, -900($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -904($fp)
	addi $sp, $sp, 8
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 58299
	sw $t0, -908($fp)
	li $t0, 7083
	sw $t0, -912($fp)
	lw $t1, -908($fp)
	lw $t2, -912($fp)
	blt $t1, $t2, label220
	j label221
label220:
	li $t0, 0
	sw $t0, -916($fp)
	li $t0, 24352
	sw $t0, -920($fp)
	lw $t1, -920($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label225:
	jal f6
	sw $v0, -924($fp)
	addi $sp, $sp, 4
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -916($fp)
label224:
	lw $ra, -4($fp)
	lw $v0, -916($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label222
label221:
	li $t0, 50709
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 3572
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 57425
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 0
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 25791
	sw $t0, -980($fp)
	li $t0, 40792
	sw $t0, -984($fp)
	lw $t1, -980($fp)
	lw $t2, -984($fp)
	bge $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -976($fp)
label234:
	li $t0, 38237
	sw $t0, -988($fp)
	lw $t1, -976($fp)
	lw $t2, -988($fp)
	blt $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -972($fp)
label232:
	li $t0, 53894
	sw $t0, -992($fp)
	lw $t1, -972($fp)
	lw $t2, -992($fp)
	bgt $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -968($fp)
label230:
	lw $t0, -956($fp)
	sw $t0, -996($fp)
	lw $t1, -968($fp)
	lw $t2, -996($fp)
	beq $t1, $t2, label228
	j label227
label228:
	lw $t0, -356($fp)
	sw $t0, -1000($fp)
	li $t0, 19342
	sw $t0, -1004($fp)
	lw $t0, -476($fp)
	sw $t0, -1008($fp)
	lw $t0, -1004($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t1, -1000($fp)
	lw $t2, -1012($fp)
	blt $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -964($fp)
label227:
	li $t0, 17383
	sw $t0, -1016($fp)
	addi $t0, $fp, -80
	sw $t0, -1020($fp)
	li $t0, 0
	sw $t0, -1024($fp)
	lw $t0, -932($fp)
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label237:
	li $t0, 27342
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -1024($fp)
label236:
	li $t0, 4
	lw $t1, -1024($fp)
	mul $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	lw $t1, 0($t0)
	sw $t1, -1044($fp)
	lw $t0, -1016($fp)
	lw $t1, -1044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1048($fp)
	lw $t0, -932($fp)
	sw $t0, -1052($fp)
	lw $t0, -392($fp)
	sw $t0, -1056($fp)
	lw $t0, -644($fp)
	sw $t0, -1060($fp)
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1068($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1068($fp)
	sub $t0, $t0, $t1
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	li $t0, 0
	sw $t0, -1080($fp)
	li $t0, 6229
	sw $t0, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -1080($fp)
label242:
	li $t0, 16469
	sw $t0, -1088($fp)
	lw $t1, -1080($fp)
	lw $t2, -1088($fp)
	beq $t1, $t2, label238
	j label240
label240:
	lw $t0, -944($fp)
	sw $t0, -1092($fp)
	lw $t0, -836($fp)
	sw $t0, -1096($fp)
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1100($fp)
	lw $t0, -392($fp)
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, 8($fp)
	sw $t0, -1112($fp)
	lw $t1, -1108($fp)
	lw $t2, -1112($fp)
	beq $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -1076($fp)
label239:
	li $t0, 0
	sw $t0, -1116($fp)
	li $t0, 18406
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label245
label245:
	li $t0, 0
	sw $t0, -1124($fp)
	li $t0, 0
	sw $t0, -1128($fp)
	li $t0, 0
	sw $t0, -1132($fp)
	lw $t0, -632($fp)
	sw $t0, -1136($fp)
	li $t0, 22955
	sw $t0, -1140($fp)
	lw $t0, -1136($fp)
	lw $t1, -1140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1144($fp)
	lw $t0, -824($fp)
	sw $t0, -1148($fp)
	lw $t1, -1144($fp)
	lw $t2, -1148($fp)
	beq $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -1132($fp)
label252:
	li $t0, 0
	sw $t0, -1152($fp)
	li $t0, 5930
	sw $t0, -1156($fp)
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label253
label253:
	li $t0, 1
	sw $t0, -1152($fp)
label254:
	li $t0, 41784
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -1164($fp)
	addi $t0, $fp, -44
	sw $t0, -1168($fp)
	lw $t0, -848($fp)
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
	li $t0, 42160
	sw $t0, -1188($fp)
	lw $t0, -1184($fp)
	lw $t1, -1188($fp)
	mul $t0, $t0, $t1
	sw $t0, -1192($fp)
	addi $sp, $sp, -4
	lw $t0, -1132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1192($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1196($fp)
	addi $sp, $sp, 20
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label250
label250:
	lw $t0, -368($fp)
	sw $t0, -1200($fp)
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -1128($fp)
label249:
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1204($fp)
	addi $sp, $sp, 8
	lw $t1, -1204($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -1124($fp)
label247:
	lw $t0, -848($fp)
	sw $t0, -1208($fp)
	lw $t0, -392($fp)
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t1, -1124($fp)
	lw $t2, -1216($fp)
	bge $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -1116($fp)
label244:
label222:
	j label217
label219:
	j label212
label214:
label255:
	li $t0, 28649
	sw $t0, -1220($fp)
	li $t0, 7062
	sw $t0, -1224($fp)
	lw $t0, -1220($fp)
	lw $t1, -1224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1228($fp)
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 13647
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
label258:
	lw $t0, -1236($fp)
	sw $t0, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label261
label261:
	lw $t0, -392($fp)
	sw $t0, -1248($fp)
	li $t0, 21756
	sw $t0, -1252($fp)
	lw $t0, -1248($fp)
	lw $t1, -1252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1256($fp)
	li $t0, 64711
	sw $t0, -1260($fp)
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	li $t0, 43832
	sw $t0, -1268($fp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1268($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1272($fp)
	addi $sp, $sp, 12
	jal f6
	sw $v0, -1276($fp)
	addi $sp, $sp, 4
	lw $t1, -1272($fp)
	lw $t2, -1276($fp)
	ble $t1, $t2, label259
	j label260
label259:
label262:
	li $t0, 61926
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	lw $t0, -392($fp)
	sw $t0, -1288($fp)
	lw $t0, -368($fp)
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1296($fp)
	lw $t0, -368($fp)
	sw $t0, -1300($fp)
	lw $t1, -1296($fp)
	lw $t2, -1300($fp)
	ble $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -1284($fp)
label266:
	li $t0, 24563
	sw $t0, -1304($fp)
	li $t0, 62852
	sw $t0, -1308($fp)
	lw $t0, -1304($fp)
	lw $t1, -1308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1312($fp)
	lw $t0, -824($fp)
	sw $t0, -1316($fp)
	lw $t0, -1312($fp)
	lw $t1, -1316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1320($fp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1324($fp)
	addi $sp, $sp, 12
	lw $t0, -1280($fp)
	lw $t1, -1324($fp)
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
label267:
	addi $t0, $fp, -108
	sw $t0, -1332($fp)
	li $t0, 0
	sw $t0, -1336($fp)
	li $t0, 54919
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label272
label272:
	li $t0, 17326
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -1336($fp)
label271:
	li $t0, 4
	lw $t1, -1336($fp)
	mul $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t1, -1332($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, 0($t0)
	sw $t1, -1356($fp)
	li $t0, 0
	lw $t1, -1356($fp)
	sub $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	addi $t0, $fp, -44
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	li $t0, 4399
	sw $t0, -1372($fp)
	li $t0, 13736
	sw $t0, -1376($fp)
	lw $t1, -1372($fp)
	lw $t2, -1376($fp)
	blt $t1, $t2, label275
	j label274
label275:
	li $t0, 2500
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -1368($fp)
label274:
	li $t0, 4
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, 0($t0)
	sw $t1, -1392($fp)
	li $t0, 0
	lw $t1, -1392($fp)
	sub $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $ra, -4($fp)
	lw $v0, -1396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label267
label269:
	j label262
label264:
	j label258
label260:
	j label255
label257:
	li $t0, 7972
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	li $t0, 5625
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	li $t0, 28291
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 48764
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 43862
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	li $t0, 16649
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	lw $t0, -476($fp)
	sw $t0, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label277
label279:
	addi $t0, $fp, -44
	sw $t0, -1476($fp)
	lw $t0, -1416($fp)
	sw $t0, -1480($fp)
	li $t0, 4
	lw $t1, -1480($fp)
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	addi $t0, $fp, -44
	sw $t0, -1496($fp)
	lw $t0, 16($fp)
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
	lw $t0, -1492($fp)
	lw $t1, -1512($fp)
	sub $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 0
	sw $t0, -1520($fp)
	addi $t0, $fp, -108
	sw $t0, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 2570
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -1528($fp)
label283:
	li $t0, 4
	lw $t1, -1528($fp)
	mul $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, 0($t0)
	sw $t1, -1544($fp)
	jal f6
	sw $v0, -1548($fp)
	addi $sp, $sp, 4
	lw $t1, -1544($fp)
	lw $t2, -1548($fp)
	ble $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -1520($fp)
label281:
	lw $ra, -4($fp)
	lw $v0, -1520($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1552($fp)
	addi $t0, $fp, -80
	sw $t0, -1556($fp)
	li $t0, 0
	sw $t0, -1560($fp)
	jal f9
	sw $v0, -1564($fp)
	addi $sp, $sp, 4
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label288
label288:
	lw $t0, -476($fp)
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -1560($fp)
label287:
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
	lw $t0, -392($fp)
	sw $t0, -1584($fp)
	jal f9
	sw $v0, -1588($fp)
	addi $sp, $sp, 4
	lw $t0, -1584($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t1, -1580($fp)
	lw $t2, -1592($fp)
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -1552($fp)
label285:
	j label278
label277:
	lw $t0, -392($fp)
	sw $t0, -1596($fp)
	lw $t0, -1464($fp)
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	li $t0, 0
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1608($fp)
	li $t0, 0
	lw $t1, -1608($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $ra, -4($fp)
	lw $v0, -1612($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label278:
label289:
	jal f9
	sw $v0, -1616($fp)
	addi $sp, $sp, 4
	li $t0, 12179
	sw $t0, -1620($fp)
	li $t0, 62397
	sw $t0, -1624($fp)
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1628($fp)
	li $t0, 50960
	sw $t0, -1632($fp)
	lw $t0, -1628($fp)
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	lw $t0, -644($fp)
	sw $t0, -1644($fp)
	li $t0, 43991
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label294
label294:
	li $t0, 8799
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -1640($fp)
label293:
	li $t0, 0
	sw $t0, -1660($fp)
	lw $t0, -368($fp)
	sw $t0, -1664($fp)
	li $t0, 61246
	sw $t0, -1668($fp)
	lw $t1, -1664($fp)
	lw $t2, -1668($fp)
	ble $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -1660($fp)
label296:
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1672($fp)
	addi $sp, $sp, 16
	lw $t0, -1616($fp)
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1452($fp)
	sw $t0, -1680($fp)
	lw $t0, -1676($fp)
	lw $t1, -1680($fp)
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	li $t0, 53963
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -1404($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label297:
	li $t0, 1
	sw $t0, -1692($fp)
label298:
	lw $t0, -1688($fp)
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t1, -1684($fp)
	lw $t2, -1700($fp)
	bne $t1, $t2, label290
	j label291
label290:
	lw $t0, -836($fp)
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 0
	sw $t0, -1708($fp)
	li $t0, 0
	sw $t0, -1712($fp)
	addi $t0, $fp, -108
	sw $t0, -1716($fp)
	li $t0, 4
	sw $t0, -1720($fp)
	li $t0, 4
	lw $t1, -1720($fp)
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	lw $t1, 0($t0)
	sw $t1, -1732($fp)
	li $t0, 17076
	sw $t0, -1736($fp)
	lw $t0, -1732($fp)
	lw $t1, -1736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1740($fp)
	lw $t0, -1452($fp)
	sw $t0, -1744($fp)
	li $t0, 28253
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1752($fp)
	lw $t0, -1740($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -836($fp)
	sw $t0, -1760($fp)
	li $t0, 29899
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1768($fp)
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 30724
	sw $t0, -1776($fp)
	li $t0, 6549
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label308
label308:
	li $t0, 37196
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -1772($fp)
label307:
	li $t0, 15440
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	jal f9
	sw $v0, -1800($fp)
	addi $sp, $sp, 4
	lw $t0, -848($fp)
	sw $t0, -1804($fp)
	lw $t1, -1800($fp)
	lw $t2, -1804($fp)
	blt $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -1796($fp)
label310:
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1808($fp)
	addi $sp, $sp, 20
	lw $t1, -1756($fp)
	lw $t2, -1808($fp)
	ble $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -1712($fp)
label305:
	jal f9
	sw $v0, -1812($fp)
	addi $sp, $sp, 4
	lw $t1, -1712($fp)
	lw $t2, -1812($fp)
	blt $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -1708($fp)
label303:
	j label301
label300:
	addi $t0, $fp, -44
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	lw $t0, -392($fp)
	sw $t0, -1824($fp)
	li $t0, 0
	sw $t0, -1828($fp)
	li $t0, 2939
	sw $t0, -1832($fp)
	li $t0, 61759
	sw $t0, -1836($fp)
	lw $t1, -1832($fp)
	lw $t2, -1836($fp)
	blt $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -1828($fp)
label314:
	lw $t1, -1824($fp)
	lw $t2, -1828($fp)
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -1820($fp)
label312:
	li $t0, 4
	lw $t1, -1820($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
label301:
	j label289
label291:
	li $t0, 0
	sw $t0, -1852($fp)
	addi $t0, $fp, -56
	sw $t0, -1856($fp)
	li $t0, 2
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
	li $t0, 31614
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	lw $t0, 8($fp)
	sw $t0, -1888($fp)
	li $t0, 27215
	sw $t0, -1892($fp)
	lw $t0, -1888($fp)
	lw $t1, -1892($fp)
	add $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -368($fp)
	sw $t0, -1900($fp)
	lw $t1, -1896($fp)
	lw $t2, -1900($fp)
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -1884($fp)
label319:
	li $t0, 0
	sw $t0, -1904($fp)
	lw $t0, -1440($fp)
	sw $t0, -1908($fp)
	lw $t0, -632($fp)
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1440($fp)
	sw $t0, -1920($fp)
	lw $t1, -1916($fp)
	lw $t2, -1920($fp)
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -1904($fp)
label321:
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1924($fp)
	addi $sp, $sp, 16
	lw $t0, -368($fp)
	sw $t0, -1928($fp)
	lw $t0, -1924($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	li $t0, 6059
	sw $t0, -1936($fp)
	lw $t0, -1404($fp)
	sw $t0, -1940($fp)
	lw $t0, -1936($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	li $t0, 16050
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t1, -1932($fp)
	lw $t2, -1952($fp)
	bgt $t1, $t2, label317
	j label316
label317:
	lw $t0, -1440($fp)
	sw $t0, -1956($fp)
	li $t0, 39586
	sw $t0, -1960($fp)
	lw $t0, -1956($fp)
	lw $t1, -1960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1964($fp)
	lw $t0, 12($fp)
	sw $t0, -1968($fp)
	lw $t0, -1964($fp)
	lw $t1, -1968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1972($fp)
	lw $t0, -1428($fp)
	sw $t0, -1976($fp)
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1980($fp)
	lw $t1, -1980($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -1852($fp)
label316:
	lw $t0, -1404($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1416($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1428($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1440($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1464($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2008($fp)
	li $t0, 55546
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label324:
	li $t0, 60991
	sw $t0, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -2008($fp)
label323:
	lw $t0, -1428($fp)
	sw $t0, -2020($fp)
	li $t0, 22814
	sw $t0, -2024($fp)
	lw $t0, -2020($fp)
	lw $t1, -2024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	lw $t0, -356($fp)
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label325
label327:
	li $t0, 44341
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -2032($fp)
label326:
	li $t0, 11684
	sw $t0, -2044($fp)
	li $t0, 0
	lw $t1, -2044($fp)
	sub $t0, $t0, $t1
	sw $t0, -2048($fp)
	li $t0, 0
	lw $t1, -2048($fp)
	sub $t0, $t0, $t1
	sw $t0, -2052($fp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2056($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -2056($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -80
	sw $t0, -2060($fp)
	li $t0, 0
	sw $t0, -2064($fp)
	li $t0, 25384
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label330:
	lw $t0, -392($fp)
	sw $t0, -2072($fp)
	lw $t1, -2072($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -2064($fp)
label329:
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
	lw $t0, 12($fp)
	sw $t0, -2088($fp)
	lw $t0, -2084($fp)
	lw $t1, -2088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	jal f9
	sw $v0, -2100($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2100($fp)
	sub $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label331:
	li $t0, 1
	sw $t0, -2096($fp)
label332:
	lw $t0, -2092($fp)
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2108($fp)
label333:
	addi $t0, $fp, -44
	sw $t0, -2112($fp)
	li $t0, 0
	sw $t0, -2116($fp)
	li $t0, 51256
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label336:
	li $t0, 1
	sw $t0, -2116($fp)
label337:
	li $t0, 39446
	sw $t0, -2124($fp)
	lw $t0, -368($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2132($fp)
	lw $t0, -2116($fp)
	lw $t1, -2132($fp)
	add $t0, $t0, $t1
	sw $t0, -2136($fp)
	li $t0, 4
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, 0($t0)
	sw $t1, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
label338:
	lw $t0, 12($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	lw $t0, -380($fp)
	sw $t0, -2156($fp)
	lw $ra, -4($fp)
	lw $v0, -2156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label338
label340:
	j label333
label335:
	lw $t0, -368($fp)
	sw $t0, -2160($fp)
	addi $t0, $fp, -44
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
	lw $t0, -2160($fp)
	lw $t1, -2180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2184($fp)
	addi $t0, $fp, -108
	sw $t0, -2188($fp)
	lw $t0, -368($fp)
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
	lw $t0, -2184($fp)
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	li $t0, 0
	sw $t0, -2212($fp)
	li $t0, 0
	sw $t0, -2216($fp)
	li $t0, 19608
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label346
label346:
	lw $t0, 8($fp)
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label345
label345:
	li $t0, 51863
	sw $t0, -2228($fp)
	lw $t1, -2228($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -2216($fp)
label344:
	li $t0, 0
	sw $t0, -2232($fp)
	lw $t0, -368($fp)
	sw $t0, -2236($fp)
	lw $t1, -2236($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label349
label349:
	lw $t0, -476($fp)
	sw $t0, -2240($fp)
	lw $t1, -2240($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -2232($fp)
label348:
	li $t0, 0
	sw $t0, -2244($fp)
	li $t0, 0
	sw $t0, -2248($fp)
	lw $t0, 4($fp)
	sw $t0, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label352:
	li $t0, 1
	sw $t0, -2248($fp)
label353:
	li $t0, 36308
	sw $t0, -2256($fp)
	lw $t1, -2248($fp)
	lw $t2, -2256($fp)
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -2244($fp)
label351:
	addi $sp, $sp, -4
	lw $t0, -2216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2244($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2260($fp)
	addi $sp, $sp, 16
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -2212($fp)
label342:
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	addi $t0, $fp, -44
	sw $t0, -2268($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -2288($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -2308($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -2328($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -2348($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -2368($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -2388($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -2408($fp)
	li $t0, 7
	sw $t0, -2412($fp)
	li $t0, 4
	lw $t1, -2412($fp)
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	lw $t1, 0($t0)
	sw $t1, -2424($fp)
	lw $t0, -2424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2428($fp)
	li $t0, 8
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
	lw $t0, -2444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2448($fp)
	li $t0, 9
	sw $t0, -2452($fp)
	li $t0, 4
	lw $t1, -2452($fp)
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, 0($t0)
	sw $t1, -2464($fp)
	lw $t0, -2464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2484($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -2504($fp)
	li $t0, 1
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
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2524($fp)
	li $t0, 2
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
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
	sw $t0, -2588($fp)
	li $t0, 2
	sw $t0, -2592($fp)
	li $t0, 4
	lw $t1, -2592($fp)
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, 0($t0)
	sw $t1, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2608($fp)
	li $t0, 3
	sw $t0, -2612($fp)
	li $t0, 4
	lw $t1, -2612($fp)
	mul $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, 0($t0)
	sw $t1, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2628($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -2648($fp)
	li $t0, 5
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
	lw $t0, -632($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2676($fp)
	li $t0, 0
	sw $t0, -2680($fp)
	li $t0, 4
	lw $t1, -2680($fp)
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, 0($t0)
	sw $t1, -2692($fp)
	lw $t0, -2692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2696($fp)
	li $t0, 1
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
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2716($fp)
	li $t0, 2
	sw $t0, -2720($fp)
	li $t0, 4
	lw $t1, -2720($fp)
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	lw $t0, -2732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2736($fp)
	li $t0, 3
	sw $t0, -2740($fp)
	li $t0, 4
	lw $t1, -2740($fp)
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, -2736($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, 0($t0)
	sw $t1, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2756($fp)
	li $t0, 4
	sw $t0, -2760($fp)
	li $t0, 4
	lw $t1, -2760($fp)
	mul $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	lw $t1, -2756($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	lw $t1, 0($t0)
	sw $t1, -2772($fp)
	lw $t0, -2772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2776($fp)
	li $t0, 5
	sw $t0, -2780($fp)
	li $t0, 4
	lw $t1, -2780($fp)
	mul $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, 0($t0)
	sw $t1, -2792($fp)
	lw $t0, -2792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2796($fp)
	li $t0, 6
	sw $t0, -2800($fp)
	li $t0, 4
	lw $t1, -2800($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	lw $t1, -2796($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, 0($t0)
	sw $t1, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f9
	sw $v0, -2828($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $ra, -4($fp)
	lw $v0, -2832($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -9216
	li $t0, 39100
	sw $t0, -280($fp)
	addi $t0, $fp, -28
	sw $t0, -284($fp)
	li $t0, 0
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
	li $t0, 27987
	sw $t0, -304($fp)
	addi $t0, $fp, -28
	sw $t0, -308($fp)
	li $t0, 1
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
	li $t0, 3403
	sw $t0, -328($fp)
	addi $t0, $fp, -28
	sw $t0, -332($fp)
	li $t0, 2
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
	li $t0, 1817
	sw $t0, -352($fp)
	addi $t0, $fp, -28
	sw $t0, -356($fp)
	li $t0, 3
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
	li $t0, 43427
	sw $t0, -376($fp)
	addi $t0, $fp, -28
	sw $t0, -380($fp)
	li $t0, 4
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
	li $t0, 34127
	sw $t0, -400($fp)
	addi $t0, $fp, -28
	sw $t0, -404($fp)
	li $t0, 5
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
	li $t0, 8367
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 15088
	sw $t0, -436($fp)
	addi $t0, $fp, -36
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
	li $t0, 64026
	sw $t0, -460($fp)
	addi $t0, $fp, -36
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
	li $t0, 11306
	sw $t0, -484($fp)
	addi $t0, $fp, -44
	sw $t0, -488($fp)
	li $t0, 0
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
	li $t0, 11311
	sw $t0, -508($fp)
	addi $t0, $fp, -44
	sw $t0, -512($fp)
	li $t0, 1
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
	li $t0, 25705
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 3629
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 24861
	sw $t0, -556($fp)
	addi $t0, $fp, -48
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
	li $t0, 57320
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 9688
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 40911
	sw $t0, -604($fp)
	addi $t0, $fp, -88
	sw $t0, -608($fp)
	li $t0, 0
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
	li $t0, 31370
	sw $t0, -628($fp)
	addi $t0, $fp, -88
	sw $t0, -632($fp)
	li $t0, 1
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
	li $t0, 21372
	sw $t0, -652($fp)
	addi $t0, $fp, -88
	sw $t0, -656($fp)
	li $t0, 2
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
	li $t0, 19717
	sw $t0, -676($fp)
	addi $t0, $fp, -88
	sw $t0, -680($fp)
	li $t0, 3
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
	li $t0, 54185
	sw $t0, -700($fp)
	addi $t0, $fp, -88
	sw $t0, -704($fp)
	li $t0, 4
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
	li $t0, 11383
	sw $t0, -724($fp)
	addi $t0, $fp, -88
	sw $t0, -728($fp)
	li $t0, 5
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
	li $t0, 15172
	sw $t0, -748($fp)
	addi $t0, $fp, -88
	sw $t0, -752($fp)
	li $t0, 6
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
	li $t0, 14033
	sw $t0, -772($fp)
	addi $t0, $fp, -88
	sw $t0, -776($fp)
	li $t0, 7
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
	li $t0, 62639
	sw $t0, -796($fp)
	addi $t0, $fp, -88
	sw $t0, -800($fp)
	li $t0, 8
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
	li $t0, 54618
	sw $t0, -820($fp)
	addi $t0, $fp, -88
	sw $t0, -824($fp)
	li $t0, 9
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
	li $t0, 48217
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 60539
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 25390
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 2289
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 46866
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 64490
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 30276
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 50269
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 772
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 8168
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 18861
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 9139
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 23256
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 17351
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 20445
	sw $t0, -1012($fp)
	addi $t0, $fp, -104
	sw $t0, -1016($fp)
	li $t0, 0
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
	li $t0, 34567
	sw $t0, -1036($fp)
	addi $t0, $fp, -104
	sw $t0, -1040($fp)
	li $t0, 1
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
	li $t0, 43057
	sw $t0, -1060($fp)
	addi $t0, $fp, -104
	sw $t0, -1064($fp)
	li $t0, 2
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
	li $t0, 24075
	sw $t0, -1084($fp)
	addi $t0, $fp, -104
	sw $t0, -1088($fp)
	li $t0, 3
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
	li $t0, 59429
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	li $t0, 34841
	sw $t0, -1120($fp)
	addi $t0, $fp, -116
	sw $t0, -1124($fp)
	li $t0, 0
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
	li $t0, 33763
	sw $t0, -1144($fp)
	addi $t0, $fp, -116
	sw $t0, -1148($fp)
	li $t0, 1
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
	li $t0, 34804
	sw $t0, -1168($fp)
	addi $t0, $fp, -116
	sw $t0, -1172($fp)
	li $t0, 2
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
	li $t0, 675
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 55136
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 54521
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 54860
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 983
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 4157
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
	li $t0, 3358
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
	li $t0, 63622
	sw $t0, -1300($fp)
	addi $t0, $fp, -132
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
	li $t0, 58776
	sw $t0, -1324($fp)
	addi $t0, $fp, -132
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
	li $t0, 51575
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	li $t0, 58625
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	li $t0, 18630
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 53865
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 39955
	sw $t0, -1396($fp)
	addi $t0, $fp, -172
	sw $t0, -1400($fp)
	li $t0, 0
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
	li $t0, 17585
	sw $t0, -1420($fp)
	addi $t0, $fp, -172
	sw $t0, -1424($fp)
	li $t0, 1
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
	li $t0, 18605
	sw $t0, -1444($fp)
	addi $t0, $fp, -172
	sw $t0, -1448($fp)
	li $t0, 2
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
	li $t0, 24689
	sw $t0, -1468($fp)
	addi $t0, $fp, -172
	sw $t0, -1472($fp)
	li $t0, 3
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
	li $t0, 18357
	sw $t0, -1492($fp)
	addi $t0, $fp, -172
	sw $t0, -1496($fp)
	li $t0, 4
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
	li $t0, 26773
	sw $t0, -1516($fp)
	addi $t0, $fp, -172
	sw $t0, -1520($fp)
	li $t0, 5
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
	li $t0, 43550
	sw $t0, -1540($fp)
	addi $t0, $fp, -172
	sw $t0, -1544($fp)
	li $t0, 6
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
	li $t0, 27496
	sw $t0, -1564($fp)
	addi $t0, $fp, -172
	sw $t0, -1568($fp)
	li $t0, 7
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
	li $t0, 50029
	sw $t0, -1588($fp)
	addi $t0, $fp, -172
	sw $t0, -1592($fp)
	li $t0, 8
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
	li $t0, 60901
	sw $t0, -1612($fp)
	addi $t0, $fp, -172
	sw $t0, -1616($fp)
	li $t0, 9
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
	li $t0, 47941
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 19061
	sw $t0, -1648($fp)
	addi $t0, $fp, -192
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
	li $t0, 38422
	sw $t0, -1672($fp)
	addi $t0, $fp, -192
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
	li $t0, 6480
	sw $t0, -1696($fp)
	addi $t0, $fp, -192
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
	li $t0, 12954
	sw $t0, -1720($fp)
	addi $t0, $fp, -192
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
	li $t0, 7727
	sw $t0, -1744($fp)
	addi $t0, $fp, -192
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
	li $t0, 40244
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 47758
	sw $t0, -1780($fp)
	addi $t0, $fp, -220
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1784($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1780($fp)
	lw $t1, -1796($fp)
	sw $t0, 0($t1)
	lw $t0, -1796($fp)
	lw $t1, 0($t0)
	sw $t1, -1800($fp)
	li $t0, 8403
	sw $t0, -1804($fp)
	addi $t0, $fp, -220
	sw $t0, -1808($fp)
	li $t0, 1
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1808($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1804($fp)
	lw $t1, -1820($fp)
	sw $t0, 0($t1)
	lw $t0, -1820($fp)
	lw $t1, 0($t0)
	sw $t1, -1824($fp)
	li $t0, 29844
	sw $t0, -1828($fp)
	addi $t0, $fp, -220
	sw $t0, -1832($fp)
	li $t0, 2
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1832($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1828($fp)
	lw $t1, -1844($fp)
	sw $t0, 0($t1)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
	li $t0, 36744
	sw $t0, -1852($fp)
	addi $t0, $fp, -220
	sw $t0, -1856($fp)
	li $t0, 3
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1856($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1852($fp)
	lw $t1, -1868($fp)
	sw $t0, 0($t1)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	li $t0, 63263
	sw $t0, -1876($fp)
	addi $t0, $fp, -220
	sw $t0, -1880($fp)
	li $t0, 4
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1880($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1876($fp)
	lw $t1, -1892($fp)
	sw $t0, 0($t1)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	li $t0, 30827
	sw $t0, -1900($fp)
	addi $t0, $fp, -220
	sw $t0, -1904($fp)
	li $t0, 5
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1904($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1900($fp)
	lw $t1, -1916($fp)
	sw $t0, 0($t1)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	li $t0, 40901
	sw $t0, -1924($fp)
	addi $t0, $fp, -220
	sw $t0, -1928($fp)
	li $t0, 6
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1928($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1924($fp)
	lw $t1, -1940($fp)
	sw $t0, 0($t1)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	li $t0, 1085
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	li $t0, 28913
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	li $t0, 34141
	sw $t0, -1972($fp)
	addi $t0, $fp, -240
	sw $t0, -1976($fp)
	li $t0, 0
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1976($fp)
	lw $t1, -1984($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1972($fp)
	lw $t1, -1988($fp)
	sw $t0, 0($t1)
	lw $t0, -1988($fp)
	lw $t1, 0($t0)
	sw $t1, -1992($fp)
	li $t0, 52661
	sw $t0, -1996($fp)
	addi $t0, $fp, -240
	sw $t0, -2000($fp)
	li $t0, 1
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2000($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -1996($fp)
	lw $t1, -2012($fp)
	sw $t0, 0($t1)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	li $t0, 22003
	sw $t0, -2020($fp)
	addi $t0, $fp, -240
	sw $t0, -2024($fp)
	li $t0, 2
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2024($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2020($fp)
	lw $t1, -2036($fp)
	sw $t0, 0($t1)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	li $t0, 52772
	sw $t0, -2044($fp)
	addi $t0, $fp, -240
	sw $t0, -2048($fp)
	li $t0, 3
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2048($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2044($fp)
	lw $t1, -2060($fp)
	sw $t0, 0($t1)
	lw $t0, -2060($fp)
	lw $t1, 0($t0)
	sw $t1, -2064($fp)
	li $t0, 40990
	sw $t0, -2068($fp)
	addi $t0, $fp, -240
	sw $t0, -2072($fp)
	li $t0, 4
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2072($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2068($fp)
	lw $t1, -2084($fp)
	sw $t0, 0($t1)
	lw $t0, -2084($fp)
	lw $t1, 0($t0)
	sw $t1, -2088($fp)
	li $t0, 61958
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	li $t0, 4821
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 59595
	sw $t0, -2116($fp)
	addi $t0, $fp, -260
	sw $t0, -2120($fp)
	li $t0, 0
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2120($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2116($fp)
	lw $t1, -2132($fp)
	sw $t0, 0($t1)
	lw $t0, -2132($fp)
	lw $t1, 0($t0)
	sw $t1, -2136($fp)
	li $t0, 21111
	sw $t0, -2140($fp)
	addi $t0, $fp, -260
	sw $t0, -2144($fp)
	li $t0, 1
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
	li $t0, 23178
	sw $t0, -2164($fp)
	addi $t0, $fp, -260
	sw $t0, -2168($fp)
	li $t0, 2
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
	li $t0, 20833
	sw $t0, -2188($fp)
	addi $t0, $fp, -260
	sw $t0, -2192($fp)
	li $t0, 3
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
	li $t0, 64661
	sw $t0, -2212($fp)
	addi $t0, $fp, -260
	sw $t0, -2216($fp)
	li $t0, 4
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
	li $t0, 50674
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	sw $t0, -2244($fp)
	li $t0, 5326
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	sw $t0, -2256($fp)
	li $t0, 60027
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	sw $t0, -2268($fp)
	li $t0, 33079
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	sw $t0, -2280($fp)
	li $t0, 24387
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -2292($fp)
	li $t0, 32913
	sw $t0, -2296($fp)
	addi $t0, $fp, -276
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
	li $t0, 39560
	sw $t0, -2320($fp)
	addi $t0, $fp, -276
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
	li $t0, 37341
	sw $t0, -2344($fp)
	addi $t0, $fp, -276
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
	li $t0, 40641
	sw $t0, -2368($fp)
	addi $t0, $fp, -276
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
	li $t0, 14268
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 19564
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
label354:
	li $t0, 49044
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -2420($fp)
	li $t0, 0
	sw $t0, -2424($fp)
	lw $t0, -860($fp)
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label357
label357:
	li $t0, 1
	sw $t0, -2424($fp)
label358:
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2424($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2432($fp)
	addi $sp, $sp, 12
	lw $t0, -1232($fp)
	sw $t0, -2436($fp)
	lw $t1, -2432($fp)
	lw $t2, -2436($fp)
	bne $t1, $t2, label355
	j label356
label355:
label359:
	addi $t0, $fp, -116
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	lw $t0, -2240($fp)
	sw $t0, -2448($fp)
	li $t0, 44112
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label365:
	li $t0, 56308
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -2444($fp)
label364:
	li $t0, 4
	lw $t1, -2444($fp)
	mul $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	lw $t1, 0($t0)
	sw $t1, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label362
label362:
	li $t0, 0
	sw $t0, -2476($fp)
	lw $t0, -1964($fp)
	sw $t0, -2480($fp)
	li $t0, 9403
	sw $t0, -2484($fp)
	lw $t0, -2480($fp)
	lw $t1, -2484($fp)
	sub $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, 4($fp)
	sw $t0, -2492($fp)
	lw $t1, -2488($fp)
	lw $t2, -2492($fp)
	beq $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -2476($fp)
label367:
	li $t0, 46771
	sw $t0, -2496($fp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2500($fp)
	addi $sp, $sp, 12
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 31673
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	li $t0, 47857
	sw $t0, -2520($fp)
	addi $t0, $fp, -2504
	sw $t0, -2524($fp)
	li $t0, 0
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
	li $t0, 38316
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	lw $t0, -2512($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2504
	sw $t0, -2560($fp)
	li $t0, 0
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
	lw $t0, -2548($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2584($fp)
	li $t0, 0
	sw $t0, -2588($fp)
	jal f6
	sw $v0, -2592($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2596($fp)
	lw $t0, -1640($fp)
	sw $t0, -2600($fp)
	lw $t1, -2600($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label372:
	li $t0, 1
	sw $t0, -2596($fp)
label373:
	lw $t1, -2592($fp)
	lw $t2, -2596($fp)
	blt $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -2588($fp)
label371:
	li $t0, 0
	sw $t0, -2604($fp)
	li $t0, 60319
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label376
label376:
	lw $t0, -2548($fp)
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -2604($fp)
label375:
	li $t0, 34982
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2620($fp)
	lw $t0, -848($fp)
	sw $t0, -2624($fp)
	li $t0, 279
	sw $t0, -2628($fp)
	lw $t0, -2624($fp)
	lw $t1, -2628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2632($fp)
	addi $sp, $sp, -4
	lw $t0, -2604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2632($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2636($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -2504
	sw $t0, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	li $t0, 4
	lw $t1, -2644($fp)
	mul $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	lw $t1, -2640($fp)
	add $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	lw $t1, 0($t0)
	sw $t1, -2656($fp)
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2660($fp)
	addi $sp, $sp, 8
	lw $t0, -2636($fp)
	lw $t1, -2660($fp)
	add $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t1, -2588($fp)
	lw $t2, -2664($fp)
	ble $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -2584($fp)
label369:
	lw $ra, -4($fp)
	lw $v0, -2584($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2512($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2504
	sw $t0, -2672($fp)
	li $t0, 0
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
	lw $t0, -2548($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2696($fp)
	li $t0, 0
	sw $t0, -2700($fp)
	addi $t0, $fp, -44
	sw $t0, -2704($fp)
	lw $t0, -2288($fp)
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
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -2700($fp)
label380:
	lw $t0, -1772($fp)
	sw $t0, -2724($fp)
	li $t0, 56742
	sw $t0, -2728($fp)
	lw $t0, -2724($fp)
	lw $t1, -2728($fp)
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -1244($fp)
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	sub $t0, $t0, $t1
	sw $t0, -2740($fp)
	jal f9
	sw $v0, -2744($fp)
	addi $sp, $sp, 4
	lw $t0, -2740($fp)
	lw $t1, -2744($fp)
	sub $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t1, -2700($fp)
	lw $t2, -2748($fp)
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -2696($fp)
label378:
	lw $ra, -4($fp)
	lw $v0, -2696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 57872
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	sw $t0, -2760($fp)
	li $t0, 4495
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	sw $t0, -2772($fp)
	li $t0, 12317
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -2784($fp)
	li $t0, 15514
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -2796($fp)
	li $t0, 25328
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	sw $t0, -2808($fp)
	li $t0, 11443
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2820($fp)
label381:
	li $t0, 0
	sw $t0, -2824($fp)
	li $t0, 652
	sw $t0, -2828($fp)
	lw $t0, -2792($fp)
	sw $t0, -2832($fp)
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2396($fp)
	sw $t0, -2840($fp)
	lw $t0, -2836($fp)
	lw $t1, -2840($fp)
	mul $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2804($fp)
	sw $t0, -2848($fp)
	li $t0, 30655
	sw $t0, -2852($fp)
	lw $t0, -2848($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t1, -2844($fp)
	lw $t2, -2856($fp)
	beq $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -2824($fp)
label385:
	lw $t0, -2824($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2860($fp)
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	addi $t0, $fp, -172
	sw $t0, -2864($fp)
	li $t0, 0
	sw $t0, -2868($fp)
	lw $t0, 16($fp)
	sw $t0, -2872($fp)
	li $t0, 5934
	sw $t0, -2876($fp)
	lw $t0, -2872($fp)
	lw $t1, -2876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2880($fp)
	li $t0, 33731
	sw $t0, -2884($fp)
	lw $t1, -2880($fp)
	lw $t2, -2884($fp)
	bge $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -2868($fp)
label387:
	li $t0, 4
	lw $t1, -2868($fp)
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	addi $t0, $fp, -28
	sw $t0, -2900($fp)
	li $t0, 55042
	sw $t0, -2904($fp)
	lw $t0, -536($fp)
	sw $t0, -2908($fp)
	lw $t0, -2904($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	li $t0, 4
	lw $t1, -2912($fp)
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	lw $t1, 0($t0)
	sw $t1, -2924($fp)
	lw $t0, -2896($fp)
	lw $t1, -2924($fp)
	mul $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $ra, -4($fp)
	lw $v0, -2928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label381
label383:
	lw $t0, -548($fp)
	sw $t0, -2932($fp)
	lw $t0, -584($fp)
	sw $t0, -2936($fp)
	lw $t0, -2932($fp)
	lw $t1, -2936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2940($fp)
	li $t0, 38847
	sw $t0, -2944($fp)
	lw $t0, -2940($fp)
	lw $t1, -2944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2948($fp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2952($fp)
	addi $sp, $sp, 8
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 7755
	sw $t0, -2956($fp)
	j label390
label389:
	li $t0, 0
	sw $t0, -2960($fp)
	lw $t0, -2252($fp)
	sw $t0, -2964($fp)
	li $t0, 26848
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -2972($fp)
	lw $t0, -932($fp)
	sw $t0, -2976($fp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2980($fp)
	addi $sp, $sp, 12
	lw $t0, -2964($fp)
	lw $t1, -2980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2984($fp)
	addi $t0, $fp, -192
	sw $t0, -2988($fp)
	li $t0, 4
	sw $t0, -2992($fp)
	li $t0, 4
	lw $t1, -2992($fp)
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, -2988($fp)
	add $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	lw $t1, 0($t0)
	sw $t1, -3004($fp)
	lw $t0, -2984($fp)
	lw $t1, -3004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3008($fp)
	li $t0, 0
	sw $t0, -3012($fp)
	lw $t0, -2756($fp)
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label393
label393:
	li $t0, 1
	sw $t0, -3012($fp)
label394:
	lw $t1, -3008($fp)
	lw $t2, -3012($fp)
	beq $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -2960($fp)
label392:
	lw $ra, -4($fp)
	lw $v0, -2960($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label390:
	lw $t0, -2768($fp)
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	li $t0, 44232
	sw $t0, -3028($fp)
	li $t0, 0
	lw $t1, -3028($fp)
	sub $t0, $t0, $t1
	sw $t0, -3032($fp)
	li $t0, 10002
	sw $t0, -3036($fp)
	lw $t1, -3032($fp)
	lw $t2, -3036($fp)
	beq $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -3024($fp)
label399:
	li $t0, 37184
	sw $t0, -3040($fp)
	li $t0, 0
	lw $t1, -3040($fp)
	sub $t0, $t0, $t1
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 62996
	sw $t0, -3052($fp)
	li $t0, 599
	sw $t0, -3056($fp)
	lw $t0, -3052($fp)
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label402
label402:
	lw $t0, -2252($fp)
	sw $t0, -3064($fp)
	lw $t1, -3064($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -3048($fp)
label401:
	addi $sp, $sp, -4
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3068($fp)
	addi $sp, $sp, 16
	lw $t0, -2780($fp)
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	sw $t0, -3076($fp)
	lw $t0, -2108($fp)
	sw $t0, -3080($fp)
	lw $t0, -2756($fp)
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	li $t0, 46412
	sw $t0, -3092($fp)
	lw $t0, -944($fp)
	sw $t0, -3096($fp)
	lw $t1, -3092($fp)
	lw $t2, -3096($fp)
	blt $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -3088($fp)
label404:
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -3100($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t1, -3020($fp)
	lw $t2, -3104($fp)
	blt $t1, $t2, label395
	j label396
label395:
label405:
	li $t0, 3321
	sw $t0, -3108($fp)
	addi $t0, $fp, -88
	sw $t0, -3112($fp)
	lw $t0, -1952($fp)
	sw $t0, -3116($fp)
	lw $t0, -596($fp)
	sw $t0, -3120($fp)
	lw $t0, -3116($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	li $t0, 4
	lw $t1, -3124($fp)
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	lw $t0, -3108($fp)
	lw $t1, -3136($fp)
	add $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
label408:
	lw $t0, -2252($fp)
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	lw $t0, 8($fp)
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -3156($fp)
	lw $t1, -3156($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 0
	sw $t0, -3160($fp)
	lw $t0, -884($fp)
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label416:
	li $t0, 26553
	sw $t0, -3168($fp)
	li $t0, 48319
	sw $t0, -3172($fp)
	lw $t0, -3168($fp)
	lw $t1, -3172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3176($fp)
	lw $t1, -3176($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -3160($fp)
label415:
	lw $ra, -4($fp)
	lw $v0, -3160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label413
label412:
	li $t0, 0
	sw $t0, -3180($fp)
	lw $t0, 16($fp)
	sw $t0, -3184($fp)
	li $t0, 10930
	sw $t0, -3188($fp)
	lw $t0, -3184($fp)
	lw $t1, -3188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3192($fp)
	lw $t0, 20($fp)
	sw $t0, -3196($fp)
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	sub $t0, $t0, $t1
	sw $t0, -3200($fp)
	li $t0, 0
	sw $t0, -3204($fp)
	addi $t0, $fp, -172
	sw $t0, -3208($fp)
	li $t0, 6
	sw $t0, -3212($fp)
	li $t0, 4
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, -3208($fp)
	add $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, 0($t0)
	sw $t1, -3224($fp)
	li $t0, 48987
	sw $t0, -3228($fp)
	lw $t1, -3224($fp)
	lw $t2, -3228($fp)
	bgt $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -3204($fp)
label421:
	addi $t0, $fp, -116
	sw $t0, -3232($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -3248($fp)
	sub $t0, $t0, $t1
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -908($fp)
	sw $t0, -3260($fp)
	lw $t0, -1112($fp)
	sw $t0, -3264($fp)
	lw $t1, -3260($fp)
	lw $t2, -3264($fp)
	blt $t1, $t2, label424
	j label423
label424:
	li $t0, 61535
	sw $t0, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -3256($fp)
label423:
	li $t0, 3600
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -3276($fp)
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -3280($fp)
	addi $sp, $sp, 24
	li $t0, 46626
	sw $t0, -3284($fp)
	lw $t0, -3280($fp)
	lw $t1, -3284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3288($fp)
	lw $t0, -956($fp)
	sw $t0, -3292($fp)
	lw $t0, -3288($fp)
	lw $t1, -3292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3296($fp)
	li $t0, 0
	sw $t0, -3300($fp)
	lw $t0, -980($fp)
	sw $t0, -3304($fp)
	lw $t0, -536($fp)
	sw $t0, -3308($fp)
	lw $t1, -3304($fp)
	lw $t2, -3308($fp)
	beq $t1, $t2, label427
	j label426
label427:
	li $t0, 58069
	sw $t0, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -3300($fp)
label426:
	li $t0, 0
	sw $t0, -3316($fp)
	lw $t0, -968($fp)
	sw $t0, -3320($fp)
	lw $t0, 4($fp)
	sw $t0, -3324($fp)
	lw $t0, -3320($fp)
	lw $t1, -3324($fp)
	sub $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label430:
	li $t0, 36259
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -3316($fp)
label429:
	lw $t0, -956($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -3340($fp)
	addi $t0, $fp, -172
	sw $t0, -3344($fp)
	lw $t0, 12($fp)
	sw $t0, -3348($fp)
	li $t0, 4
	lw $t1, -3348($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	lw $t1, 0($t0)
	sw $t1, -3360($fp)
	lw $t0, 4($fp)
	sw $t0, -3364($fp)
	lw $t0, -536($fp)
	sw $t0, -3368($fp)
	lw $t0, -3364($fp)
	lw $t1, -3368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3372($fp)
	li $t0, 64501
	sw $t0, -3376($fp)
	lw $t0, -3372($fp)
	lw $t1, -3376($fp)
	sub $t0, $t0, $t1
	sw $t0, -3380($fp)
	addi $sp, $sp, -4
	lw $t0, -3300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -3384($fp)
	addi $sp, $sp, 24
	lw $t0, -3296($fp)
	lw $t1, -3384($fp)
	sub $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t1, -3388($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label419
label419:
	lw $t0, -896($fp)
	sw $t0, -3392($fp)
	lw $t0, -1964($fp)
	sw $t0, -3396($fp)
	li $t0, 65153
	sw $t0, -3400($fp)
	lw $t0, -3396($fp)
	lw $t1, -3400($fp)
	sub $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t1, -3392($fp)
	lw $t2, -3404($fp)
	blt $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -3180($fp)
label418:
	lw $ra, -4($fp)
	lw $v0, -3180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label413:
	j label408
label410:
	j label405
label407:
label396:
	li $t0, 0
	sw $t0, -3408($fp)
	li $t0, 1378
	sw $t0, -3412($fp)
	li $t0, 64003
	sw $t0, -3416($fp)
	lw $t0, -2240($fp)
	sw $t0, -3420($fp)
	lw $t0, -3416($fp)
	lw $t1, -3420($fp)
	mul $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3412($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label434:
	lw $t0, -968($fp)
	sw $t0, -3432($fp)
	li $t0, 33349
	sw $t0, -3436($fp)
	lw $t0, -3432($fp)
	lw $t1, -3436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3440($fp)
	li $t0, 56420
	sw $t0, -3444($fp)
	lw $t1, -3440($fp)
	lw $t2, -3444($fp)
	ble $t1, $t2, label431
	j label433
label433:
	li $t0, 37314
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -3408($fp)
label432:
	j label359
label361:
	li $t0, 0
	sw $t0, -3452($fp)
	li $t0, 0
	sw $t0, -3456($fp)
	addi $t0, $fp, -172
	sw $t0, -3460($fp)
	li $t0, 6
	sw $t0, -3464($fp)
	li $t0, 4
	lw $t1, -3464($fp)
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	lw $t1, 0($t0)
	sw $t1, -3476($fp)
	lw $t1, -3476($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label438:
	li $t0, 1
	sw $t0, -3456($fp)
label439:
	lw $t0, -2108($fp)
	sw $t0, -3480($fp)
	lw $t0, -3456($fp)
	lw $t1, -3480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3484($fp)
	lw $t0, -1964($fp)
	sw $t0, -3488($fp)
	lw $t0, -3484($fp)
	lw $t1, -3488($fp)
	add $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t1, -3492($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label437
label437:
	li $t0, 51267
	sw $t0, -3496($fp)
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -3452($fp)
label436:
	j label354
label356:
	lw $t0, -1208($fp)
	sw $t0, -3500($fp)
	li $t0, 63128
	sw $t0, -3504($fp)
	lw $t0, -3500($fp)
	lw $t1, -3504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3508($fp)
	lw $t0, -1364($fp)
	sw $t0, -3512($fp)
	lw $t0, -3508($fp)
	lw $t1, -3512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3516($fp)
	lw $t1, -3516($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label440:
label443:
	li $t0, 0
	sw $t0, -3520($fp)
	li $t0, 64144
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label446:
	li $t0, 1
	sw $t0, -3520($fp)
label447:
	li $t0, 48727
	sw $t0, -3528($fp)
	lw $t0, -1772($fp)
	sw $t0, -3532($fp)
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -2108($fp)
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	li $t0, 63727
	sw $t0, -3548($fp)
	li $t0, 0
	lw $t1, -3548($fp)
	sub $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3544($fp)
	lw $t1, -3552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3556($fp)
	lw $t1, -3520($fp)
	lw $t2, -3556($fp)
	beq $t1, $t2, label444
	j label445
label444:
	li $t0, 0
	sw $t0, -3560($fp)
	li $t0, 0
	sw $t0, -3564($fp)
	li $t0, 0
	sw $t0, -3568($fp)
	lw $t0, -2240($fp)
	sw $t0, -3572($fp)
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label452:
	li $t0, 1
	sw $t0, -3568($fp)
label453:
	li $t0, 0
	lw $t1, -3568($fp)
	sub $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label450
label450:
	li $t0, 1
	sw $t0, -3564($fp)
label451:
	li $t0, 35792
	sw $t0, -3580($fp)
	lw $t1, -3564($fp)
	lw $t2, -3580($fp)
	bgt $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -3560($fp)
label449:
	j label443
label445:
	j label442
label441:
	addi $t0, $fp, -172
	sw $t0, -3584($fp)
	lw $t0, -992($fp)
	sw $t0, -3588($fp)
	li $t0, 4
	lw $t1, -3588($fp)
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, 0($t0)
	sw $t1, -3600($fp)
	lw $t0, -1388($fp)
	sw $t0, -3604($fp)
	lw $t0, -3600($fp)
	lw $t1, -3604($fp)
	mul $t0, $t0, $t1
	sw $t0, -3608($fp)
	li $t0, 27423
	sw $t0, -3612($fp)
	li $t0, 0
	lw $t1, -3612($fp)
	sub $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3608($fp)
	lw $t1, -3616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3620($fp)
	lw $t0, -3620($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -3624($fp)
	lw $t1, -3624($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	lw $t0, -1232($fp)
	sw $t0, -3628($fp)
	li $t0, 0
	lw $t1, -3628($fp)
	sub $t0, $t0, $t1
	sw $t0, -3632($fp)
	j label456
label455:
	li $t0, 8194
	sw $t0, -3644($fp)
	addi $t0, $fp, -3640
	sw $t0, -3648($fp)
	li $t0, 0
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3648($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3644($fp)
	lw $t1, -3660($fp)
	sw $t0, 0($t1)
	lw $t0, -3660($fp)
	lw $t1, 0($t0)
	sw $t1, -3664($fp)
	li $t0, 39114
	sw $t0, -3668($fp)
	addi $t0, $fp, -3640
	sw $t0, -3672($fp)
	li $t0, 1
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3672($fp)
	lw $t1, -3680($fp)
	add $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3668($fp)
	lw $t1, -3684($fp)
	sw $t0, 0($t1)
	lw $t0, -3684($fp)
	lw $t1, 0($t0)
	sw $t1, -3688($fp)
	li $t0, 53976
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	sw $t0, -3700($fp)
	li $t0, 56513
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	sw $t0, -3712($fp)
	li $t0, 42714
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	sw $t0, -3724($fp)
	li $t0, 49975
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	sw $t0, -3736($fp)
	li $t0, 0
	sw $t0, -3740($fp)
	lw $t0, -980($fp)
	sw $t0, -3744($fp)
	li $t0, 0
	sw $t0, -3748($fp)
	jal f6
	sw $v0, -3752($fp)
	addi $sp, $sp, 4
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 1
	sw $t0, -3748($fp)
label460:
	lw $t1, -3744($fp)
	lw $t2, -3748($fp)
	bge $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -3740($fp)
label458:
	addi $t0, $fp, -3640
	sw $t0, -3756($fp)
	li $t0, 0
	sw $t0, -3760($fp)
	li $t0, 4
	lw $t1, -3760($fp)
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	lw $t1, -3756($fp)
	add $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	lw $t1, 0($t0)
	sw $t1, -3772($fp)
	lw $t0, -3772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -3776($fp)
	li $t0, 1
	sw $t0, -3780($fp)
	li $t0, 4
	lw $t1, -3780($fp)
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, -3776($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	lw $t0, -3792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3696($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3708($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3720($fp)
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3732($fp)
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3812($fp)
	lw $t0, -1208($fp)
	sw $t0, -3816($fp)
	li $t0, 34079
	sw $t0, -3820($fp)
	lw $t1, -3816($fp)
	lw $t2, -3820($fp)
	beq $t1, $t2, label463
	j label462
label463:
	jal f6
	sw $v0, -3824($fp)
	addi $sp, $sp, 4
	li $t0, 49478
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	li $t0, 1805
	sw $t0, -3840($fp)
	lw $t0, -2108($fp)
	sw $t0, -3844($fp)
	lw $t0, -3840($fp)
	lw $t1, -3844($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -860($fp)
	sw $t0, -3852($fp)
	lw $t1, -3848($fp)
	lw $t2, -3852($fp)
	bgt $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -3836($fp)
label465:
	li $t0, 0
	sw $t0, -3856($fp)
	addi $t0, $fp, -260
	sw $t0, -3860($fp)
	li $t0, 3
	sw $t0, -3864($fp)
	li $t0, 4
	lw $t1, -3864($fp)
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	lw $t1, -3860($fp)
	add $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, 0($t0)
	sw $t1, -3876($fp)
	li $t0, 17281
	sw $t0, -3880($fp)
	lw $t1, -3876($fp)
	lw $t2, -3880($fp)
	beq $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -3856($fp)
label467:
	li $t0, 33830
	sw $t0, -3884($fp)
	addi $sp, $sp, -4
	lw $t0, -3832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3888($fp)
	addi $sp, $sp, 20
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -3812($fp)
label462:
	lw $t0, -3812($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -3892($fp)
	lw $ra, -4($fp)
	lw $v0, -3892($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 16247
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	sw $t0, -3904($fp)
	li $t0, 38064
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	sw $t0, -3916($fp)
	li $t0, 42011
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	sw $t0, -3928($fp)
	li $t0, 15864
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	sw $t0, -3940($fp)
	li $t0, 0
	sw $t0, -3944($fp)
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 0
	sw $t0, -3952($fp)
	li $t0, 0
	sw $t0, -3956($fp)
	li $t0, 39442
	sw $t0, -3960($fp)
	lw $t0, -3936($fp)
	sw $t0, -3964($fp)
	lw $t1, -3960($fp)
	lw $t2, -3964($fp)
	bgt $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -3956($fp)
label475:
	li $t0, 0
	sw $t0, -3968($fp)
	lw $t0, -3924($fp)
	sw $t0, -3972($fp)
	lw $t1, -3972($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label476
label476:
	li $t0, 1
	sw $t0, -3968($fp)
label477:
	lw $t1, -3956($fp)
	lw $t2, -3968($fp)
	ble $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -3952($fp)
label473:
	lw $t0, -2276($fp)
	sw $t0, -3976($fp)
	li $t0, 0
	lw $t1, -3976($fp)
	sub $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t1, -3952($fp)
	lw $t2, -3980($fp)
	ble $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -3948($fp)
label471:
	li $t0, 0
	sw $t0, -3984($fp)
	addi $t0, $fp, -36
	sw $t0, -3988($fp)
	lw $t0, -1364($fp)
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
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label478:
	li $t0, 1
	sw $t0, -3984($fp)
label479:
	li $t0, 0
	lw $t1, -3984($fp)
	sub $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t1, -3948($fp)
	lw $t2, -4008($fp)
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -3944($fp)
label469:
	li $t0, 0
	sw $t0, -4012($fp)
	li $t0, 40478
	sw $t0, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label480
label480:
	li $t0, 1
	sw $t0, -4012($fp)
label481:
	li $t0, 0
	sw $t0, -4020($fp)
	lw $t0, -536($fp)
	sw $t0, -4024($fp)
	lw $t1, -4024($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -4020($fp)
label483:
	lw $t0, -4012($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	li $t0, 0
	sw $t0, -4032($fp)
	li $t0, 63523
	sw $t0, -4036($fp)
	lw $t0, -548($fp)
	sw $t0, -4040($fp)
	lw $t0, -4036($fp)
	lw $t1, -4040($fp)
	sub $t0, $t0, $t1
	sw $t0, -4044($fp)
	li $t0, 22374
	sw $t0, -4048($fp)
	lw $t1, -4044($fp)
	lw $t2, -4048($fp)
	ble $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -4032($fp)
label485:
	li $t0, 48059
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -4056($fp)
	li $t0, 0
	sw $t0, -4060($fp)
	li $t0, 12256
	sw $t0, -4064($fp)
	lw $t1, -4064($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label489:
	li $t0, 24782
	sw $t0, -4068($fp)
	lw $t1, -4068($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label488
label488:
	lw $t0, -3912($fp)
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -4060($fp)
label487:
	li $t0, 0
	sw $t0, -4076($fp)
	addi $t0, $fp, -28
	sw $t0, -4080($fp)
	lw $t0, -3900($fp)
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
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label492:
	li $t0, 30326
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -4076($fp)
label491:
	li $t0, 49213
	sw $t0, -4104($fp)
	addi $sp, $sp, -4
	lw $t0, -4032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -4108($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4108($fp)
	sub $t0, $t0, $t1
	sw $t0, -4112($fp)
	li $t0, 46667
	sw $t0, -4116($fp)
	lw $ra, -4($fp)
	lw $v0, -4116($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 46715
	sw $t0, -4120($fp)
	li $t0, 0
	lw $t1, -4120($fp)
	sub $t0, $t0, $t1
	sw $t0, -4124($fp)
label493:
	lw $t0, -968($fp)
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label495
label494:
	addi $t0, $fp, -260
	sw $t0, -4132($fp)
	li $t0, 0
	sw $t0, -4136($fp)
	li $t0, 20565
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label500
label500:
	li $t0, 1
	sw $t0, -4136($fp)
label501:
	li $t0, 4
	lw $t1, -4136($fp)
	mul $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	lw $t1, -4132($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	lw $t1, 0($t0)
	sw $t1, -4152($fp)
	li $t0, 0
	sw $t0, -4156($fp)
	li $t0, 0
	sw $t0, -4160($fp)
	li $t0, 28759
	sw $t0, -4164($fp)
	lw $t0, -1004($fp)
	sw $t0, -4168($fp)
	lw $t1, -4164($fp)
	lw $t2, -4168($fp)
	bgt $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -4160($fp)
label505:
	li $t0, 56038
	sw $t0, -4172($fp)
	lw $t1, -4160($fp)
	lw $t2, -4172($fp)
	ble $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -4156($fp)
label503:
	li $t0, 0
	sw $t0, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	lw $t0, -2252($fp)
	sw $t0, -4184($fp)
	li $t0, 16924
	sw $t0, -4188($fp)
	lw $t1, -4184($fp)
	lw $t2, -4188($fp)
	bne $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -4180($fp)
label509:
	li $t0, 8602
	sw $t0, -4192($fp)
	lw $t1, -4180($fp)
	lw $t2, -4192($fp)
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -4176($fp)
label507:
	addi $sp, $sp, -4
	lw $t0, -4156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4176($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4196($fp)
	addi $sp, $sp, 12
	li $t0, 62579
	sw $t0, -4200($fp)
	lw $t0, -4196($fp)
	lw $t1, -4200($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t1, -4152($fp)
	lw $t2, -4204($fp)
	bgt $t1, $t2, label496
	j label499
label499:
	li $t0, 0
	sw $t0, -4208($fp)
	lw $t0, -1388($fp)
	sw $t0, -4212($fp)
	lw $t1, -4212($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label510
label510:
	li $t0, 1
	sw $t0, -4208($fp)
label511:
	li $t0, 19736
	sw $t0, -4216($fp)
	lw $t0, -4208($fp)
	lw $t1, -4216($fp)
	mul $t0, $t0, $t1
	sw $t0, -4220($fp)
	addi $t0, $fp, -44
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	li $t0, 4
	lw $t1, -4228($fp)
	mul $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, 0($t0)
	sw $t1, -4240($fp)
	addi $sp, $sp, -4
	lw $t0, -4240($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4244($fp)
	addi $sp, $sp, 8
	lw $t0, -4220($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t1, -4248($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	addi $t0, $fp, -28
	sw $t0, -4252($fp)
	addi $t0, $fp, -3640
	sw $t0, -4256($fp)
	lw $t0, -2408($fp)
	sw $t0, -4260($fp)
	li $t0, 4
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, -4256($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, 0($t0)
	sw $t1, -4272($fp)
	li $t0, 0
	lw $t1, -4272($fp)
	sub $t0, $t0, $t1
	sw $t0, -4276($fp)
	li $t0, 4
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, 0($t0)
	sw $t1, -4288($fp)
	j label498
label497:
	addi $t0, $fp, -48
	sw $t0, -4292($fp)
	addi $t0, $fp, -192
	sw $t0, -4296($fp)
	lw $t0, -584($fp)
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
	li $t0, 53816
	sw $t0, -4316($fp)
	lw $t0, -4312($fp)
	lw $t1, -4316($fp)
	mul $t0, $t0, $t1
	sw $t0, -4320($fp)
	li $t0, 4
	lw $t1, -4320($fp)
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, -4292($fp)
	add $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	lw $t1, 0($t0)
	sw $t1, -4332($fp)
	lw $t1, -4332($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	addi $t0, $fp, -172
	sw $t0, -4336($fp)
	lw $t0, -428($fp)
	sw $t0, -4340($fp)
	li $t0, 4
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	lw $t1, 0($t0)
	sw $t1, -4352($fp)
	li $t0, 0
	lw $t1, -4352($fp)
	sub $t0, $t0, $t1
	sw $t0, -4356($fp)
	jal f6
	sw $v0, -4360($fp)
	addi $sp, $sp, 4
	lw $t0, -872($fp)
	sw $t0, -4364($fp)
	lw $t0, -4360($fp)
	lw $t1, -4364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4368($fp)
	lw $t0, -4356($fp)
	lw $t1, -4368($fp)
	sub $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t1, -4372($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label516
label518:
	li $t0, 1510
	sw $t0, -4376($fp)
	lw $t0, -968($fp)
	sw $t0, -4380($fp)
	lw $t0, -4376($fp)
	lw $t1, -4380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4384($fp)
	lw $t1, -4384($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	lw $t0, -2288($fp)
	sw $t0, -4388($fp)
	j label517
label516:
	lw $t0, -3696($fp)
	sw $t0, -4392($fp)
label517:
	j label514
label513:
	lw $t0, -860($fp)
	sw $t0, -4396($fp)
	lw $t0, -1772($fp)
	sw $t0, -4400($fp)
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label522
label525:
	lw $t0, -3708($fp)
	sw $t0, -4408($fp)
	lw $t1, -4408($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label522
label524:
	li $t0, 37893
	sw $t0, -4412($fp)
	lw $t1, -4412($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label523:
	li $t0, 0
	sw $t0, -4416($fp)
	li $t0, 56668
	sw $t0, -4420($fp)
	lw $t1, -4420($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label526
label526:
	li $t0, 1
	sw $t0, -4416($fp)
label527:
	li $t0, 18792
	sw $t0, -4424($fp)
	lw $t0, -4416($fp)
	lw $t1, -4424($fp)
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label522
label522:
	lw $t0, -1376($fp)
	sw $t0, -4432($fp)
	li $t0, 39698
	sw $t0, -4436($fp)
	lw $t0, -4432($fp)
	lw $t1, -4436($fp)
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	li $t0, 40610
	sw $t0, -4444($fp)
	lw $t0, -4440($fp)
	lw $t1, -4444($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t1, -4448($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	addi $t0, $fp, -172
	sw $t0, -4452($fp)
	li $t0, 0
	sw $t0, -4456($fp)
	li $t0, 0
	sw $t0, -4460($fp)
	lw $t0, -3720($fp)
	sw $t0, -4464($fp)
	li $t0, 35039
	sw $t0, -4468($fp)
	lw $t1, -4464($fp)
	lw $t2, -4468($fp)
	ble $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -4460($fp)
label531:
	lw $t0, -3732($fp)
	sw $t0, -4472($fp)
	lw $t1, -4460($fp)
	lw $t2, -4472($fp)
	ble $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -4456($fp)
label529:
	li $t0, 4
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, 0($t0)
	sw $t1, -4484($fp)
	lw $t0, -1196($fp)
	sw $t0, -4488($fp)
	lw $t0, -1772($fp)
	sw $t0, -4492($fp)
	li $t0, 0
	lw $t1, -4492($fp)
	sub $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4488($fp)
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4484($fp)
	lw $t1, -4500($fp)
	sub $t0, $t0, $t1
	sw $t0, -4504($fp)
	j label521
label520:
	lw $t0, -1376($fp)
	sw $t0, -4508($fp)
label521:
label514:
label498:
	j label493
label495:
	li $t0, 0
	sw $t0, -4512($fp)
	addi $t0, $fp, -132
	sw $t0, -4516($fp)
	li $t0, 1
	sw $t0, -4520($fp)
	li $t0, 4
	lw $t1, -4520($fp)
	mul $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, -4516($fp)
	add $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	lw $t1, 0($t0)
	sw $t1, -4532($fp)
	lw $t1, -4532($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label533
label534:
	lw $t0, -872($fp)
	sw $t0, -4536($fp)
	li $t0, 0
	lw $t1, -4536($fp)
	sub $t0, $t0, $t1
	sw $t0, -4540($fp)
	li $t0, 50903
	sw $t0, -4544($fp)
	lw $t0, -1772($fp)
	sw $t0, -4548($fp)
	lw $t0, -4544($fp)
	lw $t1, -4548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4552($fp)
	lw $t0, -4540($fp)
	lw $t1, -4552($fp)
	sub $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t1, -4556($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -4512($fp)
label533:
	addi $t0, $fp, -3640
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
	lw $t0, -4576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3640
	sw $t0, -4580($fp)
	li $t0, 1
	sw $t0, -4584($fp)
	li $t0, 4
	lw $t1, -4584($fp)
	mul $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	lw $t1, -4580($fp)
	add $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	lw $t1, 0($t0)
	sw $t1, -4596($fp)
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3696($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3708($fp)
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3720($fp)
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3732($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -4616($fp)
	addi $t0, $fp, -172
	sw $t0, -4620($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -4636($fp)
	sub $t0, $t0, $t1
	sw $t0, -4640($fp)
	li $t0, 0
	lw $t1, -4640($fp)
	sub $t0, $t0, $t1
	sw $t0, -4644($fp)
	li $t0, 4
	lw $t1, -4644($fp)
	mul $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, -4616($fp)
	add $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	lw $t1, 0($t0)
	sw $t1, -4656($fp)
	lw $ra, -4($fp)
	lw $v0, -4656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label456:
label442:
	addi $t0, $fp, -276
	sw $t0, -4660($fp)
	li $t0, 0
	sw $t0, -4664($fp)
	li $t0, 34581
	sw $t0, -4668($fp)
	lw $t0, -2252($fp)
	sw $t0, -4672($fp)
	lw $t0, -4668($fp)
	lw $t1, -4672($fp)
	sub $t0, $t0, $t1
	sw $t0, -4676($fp)
	li $t0, 16458
	sw $t0, -4680($fp)
	lw $t0, -4676($fp)
	lw $t1, -4680($fp)
	add $t0, $t0, $t1
	sw $t0, -4684($fp)
	addi $t0, $fp, -104
	sw $t0, -4688($fp)
	lw $t0, -872($fp)
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
	lw $t1, -4684($fp)
	lw $t2, -4704($fp)
	bge $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -4664($fp)
label539:
	li $t0, 4
	lw $t1, -4664($fp)
	mul $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, -4660($fp)
	add $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, 0($t0)
	sw $t1, -4716($fp)
	lw $t1, -4716($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 0
	sw $t0, -4720($fp)
	li $t0, 0
	sw $t0, -4724($fp)
	li $t0, 57588
	sw $t0, -4728($fp)
	li $t0, 65526
	sw $t0, -4732($fp)
	lw $t1, -4728($fp)
	lw $t2, -4732($fp)
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -4724($fp)
label546:
	li $t0, 53075
	sw $t0, -4736($fp)
	lw $t1, -4724($fp)
	lw $t2, -4736($fp)
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -4720($fp)
label544:
	addi $t0, $fp, -240
	sw $t0, -4740($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -4756($fp)
	sub $t0, $t0, $t1
	sw $t0, -4760($fp)
	li $t0, 0
	sw $t0, -4764($fp)
	lw $t0, -908($fp)
	sw $t0, -4768($fp)
	lw $t1, -4768($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label549:
	lw $t0, -1772($fp)
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -4764($fp)
label548:
	li $t0, 0
	sw $t0, -4776($fp)
	lw $t0, -872($fp)
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label552:
	lw $t0, -1952($fp)
	sw $t0, -4784($fp)
	lw $t1, -4784($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -4776($fp)
label551:
	li $t0, 0
	sw $t0, -4788($fp)
	li $t0, 45649
	sw $t0, -4792($fp)
	li $t0, 48986
	sw $t0, -4796($fp)
	lw $t0, -4792($fp)
	lw $t1, -4796($fp)
	sub $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -2252($fp)
	sw $t0, -4804($fp)
	lw $t1, -4800($fp)
	lw $t2, -4804($fp)
	beq $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -4788($fp)
label554:
	li $t0, 16201
	sw $t0, -4808($fp)
	lw $t0, 20($fp)
	sw $t0, -4812($fp)
	lw $t0, -4808($fp)
	lw $t1, -4812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4816($fp)
	addi $sp, $sp, -4
	lw $t0, -4760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -4820($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -4824($fp)
	li $t0, 2271
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label555:
	li $t0, 1
	sw $t0, -4824($fp)
label556:
	li $t0, 0
	lw $t1, -4824($fp)
	sub $t0, $t0, $t1
	sw $t0, -4832($fp)
	li $t0, 64517
	sw $t0, -4836($fp)
	addi $t0, $fp, -172
	sw $t0, -4840($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -4860($fp)
	addi $sp, $sp, 24
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 54631
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	sw $t0, -4876($fp)
	li $t0, 19726
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	sw $t0, -4888($fp)
	li $t0, 20755
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	sw $t0, -4900($fp)
	li $t0, 36114
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	sw $t0, -4912($fp)
	li $t0, 8006
	sw $t0, -4916($fp)
	addi $t0, $fp, -4864
	sw $t0, -4920($fp)
	li $t0, 0
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4920($fp)
	lw $t1, -4928($fp)
	add $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4916($fp)
	lw $t1, -4932($fp)
	sw $t0, 0($t1)
	lw $t0, -4932($fp)
	lw $t1, 0($t0)
	sw $t1, -4936($fp)
	li $t0, 22266
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	sw $t0, -4948($fp)
	li $t0, 8471
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	sw $t0, -4960($fp)
	li $t0, 64674
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	sw $t0, -4972($fp)
	li $t0, 41058
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	sw $t0, -4984($fp)
	li $t0, 0
	sw $t0, -4988($fp)
	li $t0, 0
	sw $t0, -4992($fp)
	lw $t0, -1964($fp)
	sw $t0, -4996($fp)
	jal f9
	sw $v0, -5000($fp)
	addi $sp, $sp, 4
	lw $t1, -4996($fp)
	lw $t2, -5000($fp)
	beq $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -4992($fp)
label560:
	lw $t0, -4968($fp)
	sw $t0, -5004($fp)
	lw $t1, -4992($fp)
	lw $t2, -5004($fp)
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -4988($fp)
label558:
	lw $t0, -1772($fp)
	sw $t0, -5008($fp)
	li $t0, 0
	sw $t0, -5012($fp)
	jal f9
	sw $v0, -5016($fp)
	addi $sp, $sp, 4
	lw $t1, -5016($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label564
label564:
	li $t0, 1
	sw $t0, -5012($fp)
label565:
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5020($fp)
	lw $t0, -968($fp)
	sw $t0, -5024($fp)
	addi $t0, $fp, -172
	sw $t0, -5028($fp)
	lw $t0, 20($fp)
	sw $t0, -5032($fp)
	li $t0, 4
	lw $t1, -5032($fp)
	mul $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	lw $t1, -5028($fp)
	add $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	lw $t1, 0($t0)
	sw $t1, -5044($fp)
	lw $t0, -5024($fp)
	lw $t1, -5044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5048($fp)
	lw $t0, -5020($fp)
	lw $t1, -5048($fp)
	sub $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t1, -5052($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 48169
	sw $t0, -5056($fp)
	addi $t0, $fp, -260
	sw $t0, -5060($fp)
	lw $t0, 4($fp)
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
	lw $t0, -5056($fp)
	lw $t1, -5076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5080($fp)
	lw $t0, -5080($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -5084($fp)
	j label563
label562:
	li $t0, 39748
	sw $t0, -5088($fp)
	li $t0, 10561
	sw $t0, -5092($fp)
	lw $t0, -4980($fp)
	sw $t0, -5096($fp)
	lw $t0, -5092($fp)
	lw $t1, -5096($fp)
	add $t0, $t0, $t1
	sw $t0, -5100($fp)
	li $t0, 0
	sw $t0, -5104($fp)
	li $t0, 60395
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label569
label569:
	li $t0, 1
	sw $t0, -5104($fp)
label570:
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t1, -5088($fp)
	lw $t2, -5112($fp)
	ble $t1, $t2, label566
	j label567
label566:
	li $t0, 56833
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	sw $t0, -5124($fp)
	li $t0, 61464
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	sw $t0, -5136($fp)
	li $t0, 46527
	sw $t0, -5140($fp)
label571:
	addi $t0, $fp, -48
	sw $t0, -5144($fp)
	li $t0, 0
	sw $t0, -5148($fp)
	li $t0, 4
	lw $t1, -5148($fp)
	mul $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	lw $t1, -5144($fp)
	add $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	lw $t1, 0($t0)
	sw $t1, -5160($fp)
	li $t0, 53144
	sw $t0, -5164($fp)
	li $t0, 0
	lw $t1, -5164($fp)
	sub $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5160($fp)
	lw $t1, -5168($fp)
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	li $t0, 0
	sw $t0, -5176($fp)
	li $t0, 0
	sw $t0, -5180($fp)
	li $t0, 0
	sw $t0, -5184($fp)
	li $t0, 11768
	sw $t0, -5188($fp)
	lw $t1, -5188($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label579
label579:
	li $t0, 1
	sw $t0, -5184($fp)
label580:
	li $t0, 39117
	sw $t0, -5192($fp)
	lw $t1, -5184($fp)
	lw $t2, -5192($fp)
	ble $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -5180($fp)
label578:
	li $t0, 0
	sw $t0, -5196($fp)
	lw $t0, -2108($fp)
	sw $t0, -5200($fp)
	lw $t0, -944($fp)
	sw $t0, -5204($fp)
	lw $t0, -5200($fp)
	lw $t1, -5204($fp)
	mul $t0, $t0, $t1
	sw $t0, -5208($fp)
	li $t0, 38865
	sw $t0, -5212($fp)
	lw $t1, -5208($fp)
	lw $t2, -5212($fp)
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -5196($fp)
label582:
	li $t0, 0
	sw $t0, -5216($fp)
	li $t0, 40537
	sw $t0, -5220($fp)
	lw $t1, -5220($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label586:
	lw $t0, -908($fp)
	sw $t0, -5224($fp)
	lw $t1, -5224($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label585
label585:
	li $t0, 42080
	sw $t0, -5228($fp)
	lw $t1, -5228($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -5216($fp)
label584:
	li $t0, 61967
	sw $t0, -5232($fp)
	lw $t0, -596($fp)
	sw $t0, -5236($fp)
	lw $t0, -5232($fp)
	lw $t1, -5236($fp)
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	li $t0, 55415
	sw $t0, -5244($fp)
	lw $t0, -5240($fp)
	lw $t1, -5244($fp)
	add $t0, $t0, $t1
	sw $t0, -5248($fp)
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5252($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -5180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5252($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5256($fp)
	addi $sp, $sp, 12
	lw $t1, -5256($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label576:
	lw $t0, -872($fp)
	sw $t0, -5260($fp)
	lw $t1, -5260($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -5176($fp)
label575:
	li $t0, 0
	sw $t0, -5264($fp)
	lw $t0, -1376($fp)
	sw $t0, -5268($fp)
	lw $t1, -5268($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label590
label590:
	li $t0, 24336
	sw $t0, -5272($fp)
	lw $t1, -5272($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label589
label589:
	lw $t0, -5132($fp)
	sw $t0, -5276($fp)
	lw $t1, -5276($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -5264($fp)
label588:
	addi $sp, $sp, -4
	lw $t0, -5176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5280($fp)
	addi $sp, $sp, 12
	jal f6
	sw $v0, -5284($fp)
	addi $sp, $sp, 4
	lw $t0, -5280($fp)
	lw $t1, -5284($fp)
	sub $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t1, -5172($fp)
	lw $t2, -5288($fp)
	beq $t1, $t2, label572
	j label573
label572:
	li $t0, 30917
	sw $t0, -5292($fp)
	j label571
label573:
	li $t0, 0
	sw $t0, -5296($fp)
	addi $t0, $fp, -172
	sw $t0, -5300($fp)
	li $t0, 8
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
	lw $t1, -5316($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label594
label594:
	li $t0, 1
	sw $t0, -5296($fp)
label595:
	li $t0, 0
	lw $t1, -5296($fp)
	sub $t0, $t0, $t1
	sw $t0, -5320($fp)
	addi $t0, $fp, -88
	sw $t0, -5324($fp)
	li $t0, 0
	sw $t0, -5328($fp)
	lw $t0, -872($fp)
	sw $t0, -5332($fp)
	lw $t0, -848($fp)
	sw $t0, -5336($fp)
	lw $t1, -5332($fp)
	lw $t2, -5336($fp)
	beq $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -5328($fp)
label597:
	li $t0, 4
	lw $t1, -5328($fp)
	mul $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, -5324($fp)
	add $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	lw $t1, 0($t0)
	sw $t1, -5348($fp)
	lw $t0, -5320($fp)
	lw $t1, -5348($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t1, -5352($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label592
label591:
	li $t0, 0
	sw $t0, -5356($fp)
	li $t0, 0
	sw $t0, -5360($fp)
	jal f9
	sw $v0, -5364($fp)
	addi $sp, $sp, 4
	lw $t1, -5364($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label602:
	li $t0, 47411
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -5360($fp)
label601:
	li $t0, 0
	sw $t0, -5372($fp)
	lw $t0, -860($fp)
	sw $t0, -5376($fp)
	lw $t1, -5376($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label604
label606:
	li $t0, 20013
	sw $t0, -5380($fp)
	lw $t1, -5380($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label604
label605:
	li $t0, 31484
	sw $t0, -5384($fp)
	lw $t1, -5384($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -5372($fp)
label604:
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5372($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5388($fp)
	addi $sp, $sp, 12
	lw $t1, -5388($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label598
label598:
	li $t0, 1
	sw $t0, -5356($fp)
label599:
	addi $t0, $fp, -28
	sw $t0, -5392($fp)
	lw $t0, 16($fp)
	sw $t0, -5396($fp)
	li $t0, 56127
	sw $t0, -5400($fp)
	lw $t0, -5396($fp)
	lw $t1, -5400($fp)
	sub $t0, $t0, $t1
	sw $t0, -5404($fp)
	li $t0, 4
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	lw $t1, -5392($fp)
	add $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, 0($t0)
	sw $t1, -5416($fp)
	lw $t0, -5356($fp)
	lw $t1, -5416($fp)
	mul $t0, $t0, $t1
	sw $t0, -5420($fp)
label592:
	lw $t0, -5120($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5132($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5432($fp)
	lw $t0, -2096($fp)
	sw $t0, -5436($fp)
	lw $t0, -4944($fp)
	sw $t0, -5440($fp)
	lw $t0, -5436($fp)
	lw $t1, -5440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5444($fp)
	li $t0, 0
	lw $t1, -5444($fp)
	sub $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label608
label609:
	li $t0, 39491
	sw $t0, -5452($fp)
	lw $t0, -5120($fp)
	sw $t0, -5456($fp)
	lw $t1, -5452($fp)
	lw $t2, -5456($fp)
	ble $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -5432($fp)
label608:
	lw $t0, -5432($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -5460($fp)
	lw $ra, -4($fp)
	lw $v0, -5460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label567:
label563:
	li $t0, 0
	sw $t0, -5464($fp)
	lw $t0, -4956($fp)
	sw $t0, -5468($fp)
	lw $t0, -968($fp)
	sw $t0, -5472($fp)
	lw $t0, -5468($fp)
	lw $t1, -5472($fp)
	add $t0, $t0, $t1
	sw $t0, -5476($fp)
	li $t0, 38629
	sw $t0, -5480($fp)
	lw $t1, -5476($fp)
	lw $t2, -5480($fp)
	bne $t1, $t2, label613
	j label614
label613:
	li $t0, 1
	sw $t0, -5464($fp)
label614:
	addi $t0, $fp, -36
	sw $t0, -5484($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -5464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5500($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5504($fp)
	addi $sp, $sp, 12
	jal f9
	sw $v0, -5508($fp)
	addi $sp, $sp, 4
	lw $t0, -5504($fp)
	lw $t1, -5508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5512($fp)
	li $t0, 0
	lw $t1, -5512($fp)
	sub $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t1, -5516($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 0
	sw $t0, -5520($fp)
	li $t0, 0
	sw $t0, -5524($fp)
	addi $t0, $fp, -116
	sw $t0, -5528($fp)
	lw $t0, -4884($fp)
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
	lw $t0, -2276($fp)
	sw $t0, -5548($fp)
	lw $t1, -5544($fp)
	lw $t2, -5548($fp)
	blt $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -5524($fp)
label620:
	li $t0, 45199
	sw $t0, -5552($fp)
	lw $t1, -5524($fp)
	lw $t2, -5552($fp)
	beq $t1, $t2, label618
	j label616
label618:
	li $t0, 47231
	sw $t0, -5556($fp)
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label616
label617:
	lw $t0, -4896($fp)
	sw $t0, -5560($fp)
	lw $t1, -5560($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -5520($fp)
label616:
	j label612
label611:
	lw $t0, -1196($fp)
	sw $t0, -5564($fp)
	li $t0, 0
	sw $t0, -5568($fp)
	li $t0, 12842
	sw $t0, -5572($fp)
	lw $t1, -5572($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -5568($fp)
label622:
	lw $t0, -5564($fp)
	lw $t1, -5568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5576($fp)
	addi $t0, $fp, -240
	sw $t0, -5580($fp)
	li $t0, 3
	sw $t0, -5584($fp)
	li $t0, 4
	lw $t1, -5584($fp)
	mul $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	lw $t1, -5580($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	lw $t1, 0($t0)
	sw $t1, -5596($fp)
	li $t0, 4139
	sw $t0, -5600($fp)
	lw $t0, -5596($fp)
	lw $t1, -5600($fp)
	mul $t0, $t0, $t1
	sw $t0, -5604($fp)
	addi $t0, $fp, -172
	sw $t0, -5608($fp)
	lw $t0, -848($fp)
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
	lw $t0, -5604($fp)
	lw $t1, -5624($fp)
	mul $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5576($fp)
	lw $t1, -5628($fp)
	sub $t0, $t0, $t1
	sw $t0, -5632($fp)
label612:
label623:
	li $t0, 0
	sw $t0, -5636($fp)
	li $t0, 51689
	sw $t0, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label626
label626:
	li $t0, 1
	sw $t0, -5636($fp)
label627:
	li $t0, 0
	lw $t1, -5636($fp)
	sub $t0, $t0, $t1
	sw $t0, -5644($fp)
	li $t0, 0
	sw $t0, -5648($fp)
	li $t0, 0
	sw $t0, -5652($fp)
	lw $t0, -4968($fp)
	sw $t0, -5656($fp)
	lw $t0, -428($fp)
	sw $t0, -5660($fp)
	lw $t1, -5656($fp)
	lw $t2, -5660($fp)
	bgt $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -5652($fp)
label631:
	lw $t0, -4908($fp)
	sw $t0, -5664($fp)
	lw $t1, -5652($fp)
	lw $t2, -5664($fp)
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -5648($fp)
label629:
	addi $sp, $sp, -4
	lw $t0, -5644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5648($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5668($fp)
	addi $sp, $sp, 12
	lw $t1, -5668($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label625
label624:
label632:
	li $t0, 23081
	sw $t0, -5672($fp)
	addi $t0, $fp, -4864
	sw $t0, -5676($fp)
	li $t0, 0
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
	lw $t1, -5672($fp)
	lw $t2, -5692($fp)
	blt $t1, $t2, label633
	j label634
label633:
label635:
	addi $t0, $fp, -132
	sw $t0, -5696($fp)
	addi $t0, $fp, -240
	sw $t0, -5700($fp)
	li $t0, 2
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
	li $t0, 4
	lw $t1, -5716($fp)
	mul $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, -5696($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	lw $t1, 0($t0)
	sw $t1, -5728($fp)
	lw $t1, -5728($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label637
label636:
	li $t0, 16961
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	sw $t0, -5752($fp)
	li $t0, 30487
	sw $t0, -5756($fp)
	addi $t0, $fp, -5740
	sw $t0, -5760($fp)
	li $t0, 0
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5760($fp)
	lw $t1, -5768($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5756($fp)
	lw $t1, -5772($fp)
	sw $t0, 0($t1)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	li $t0, 16000
	sw $t0, -5780($fp)
	addi $t0, $fp, -5740
	sw $t0, -5784($fp)
	li $t0, 1
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5784($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5780($fp)
	lw $t1, -5796($fp)
	sw $t0, 0($t1)
	lw $t0, -5796($fp)
	lw $t1, 0($t0)
	sw $t1, -5800($fp)
	li $t0, 59041
	sw $t0, -5804($fp)
	addi $t0, $fp, -5740
	sw $t0, -5808($fp)
	li $t0, 2
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5808($fp)
	lw $t1, -5816($fp)
	add $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5804($fp)
	lw $t1, -5820($fp)
	sw $t0, 0($t1)
	lw $t0, -5820($fp)
	lw $t1, 0($t0)
	sw $t1, -5824($fp)
	li $t0, 3816
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	sw $t0, -5836($fp)
	li $t0, 0
	sw $t0, -5840($fp)
	li $t0, 27768
	sw $t0, -5844($fp)
	li $t0, 0
	lw $t1, -5844($fp)
	sub $t0, $t0, $t1
	sw $t0, -5848($fp)
	li $t0, 32622
	sw $t0, -5852($fp)
	lw $t0, -1352($fp)
	sw $t0, -5856($fp)
	lw $t0, -5852($fp)
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5848($fp)
	lw $t1, -5860($fp)
	add $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -1364($fp)
	sw $t0, -5868($fp)
	li $t0, 0
	lw $t1, -5868($fp)
	sub $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5864($fp)
	lw $t1, -5872($fp)
	sub $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t1, -5876($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label639
label640:
	lw $t0, -1772($fp)
	sw $t0, -5880($fp)
	lw $t0, -2276($fp)
	sw $t0, -5884($fp)
	lw $t0, -5880($fp)
	lw $t1, -5884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5888($fp)
	lw $t0, -5748($fp)
	sw $t0, -5892($fp)
	lw $t0, -5888($fp)
	lw $t1, -5892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5896($fp)
	lw $t0, -884($fp)
	sw $t0, -5900($fp)
	lw $t1, -5896($fp)
	lw $t2, -5900($fp)
	ble $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -5840($fp)
label639:
	li $t0, 0
	sw $t0, -5904($fp)
	addi $t0, $fp, -260
	sw $t0, -5908($fp)
	addi $t0, $fp, -132
	sw $t0, -5912($fp)
	lw $t0, -872($fp)
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
	li $t0, 34733
	sw $t0, -5932($fp)
	lw $t0, -5928($fp)
	lw $t1, -5932($fp)
	mul $t0, $t0, $t1
	sw $t0, -5936($fp)
	li $t0, 4
	lw $t1, -5936($fp)
	mul $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	lw $t1, -5908($fp)
	add $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	lw $t1, 0($t0)
	sw $t1, -5948($fp)
	lw $t1, -5948($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label642
label643:
	li $t0, 39526
	sw $t0, -5952($fp)
	lw $t1, -5952($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -5904($fp)
label642:
	li $t0, 0
	sw $t0, -5956($fp)
	li $t0, 0
	sw $t0, -5960($fp)
	li $t0, 0
	sw $t0, -5964($fp)
	li $t0, 59278
	sw $t0, -5968($fp)
	lw $t1, -5968($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -5964($fp)
label649:
	li $t0, 0
	lw $t1, -5964($fp)
	sub $t0, $t0, $t1
	sw $t0, -5972($fp)
	li $t0, 0
	sw $t0, -5976($fp)
	li $t0, 45337
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -5984($fp)
	li $t0, 41154
	sw $t0, -5988($fp)
	li $t0, 0
	lw $t1, -5988($fp)
	sub $t0, $t0, $t1
	sw $t0, -5992($fp)
	lw $t0, -956($fp)
	sw $t0, -5996($fp)
	lw $t0, -5992($fp)
	lw $t1, -5996($fp)
	sub $t0, $t0, $t1
	sw $t0, -6000($fp)
	li $t0, 0
	sw $t0, -6004($fp)
	li $t0, 54746
	sw $t0, -6008($fp)
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label652:
	li $t0, 1
	sw $t0, -6004($fp)
label653:
	li $t0, 5475
	sw $t0, -6012($fp)
	lw $t0, -6004($fp)
	lw $t1, -6012($fp)
	sub $t0, $t0, $t1
	sw $t0, -6016($fp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6016($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6020($fp)
	addi $sp, $sp, 16
	lw $t1, -6020($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label650:
	li $t0, 1
	sw $t0, -5976($fp)
label651:
	lw $t1, -5972($fp)
	lw $t2, -5976($fp)
	blt $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -5960($fp)
label647:
	li $t0, 44966
	sw $t0, -6024($fp)
	lw $t1, -5960($fp)
	lw $t2, -6024($fp)
	bgt $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -5956($fp)
label645:
	li $t0, 45295
	sw $t0, -6028($fp)
	addi $t0, $fp, -5740
	sw $t0, -6032($fp)
	li $t0, 30901
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -6040($fp)
	li $t0, 0
	sw $t0, -6044($fp)
	lw $t0, 4($fp)
	sw $t0, -6048($fp)
	lw $t1, -6048($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label656
label656:
	lw $t0, -896($fp)
	sw $t0, -6052($fp)
	lw $t1, -6052($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -6044($fp)
label655:
	li $t0, 0
	sw $t0, -6056($fp)
	li $t0, 26094
	sw $t0, -6060($fp)
	lw $t1, -6060($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label659
label659:
	lw $t0, -1772($fp)
	sw $t0, -6064($fp)
	lw $t1, -6064($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -6056($fp)
label658:
	li $t0, 18059
	sw $t0, -6068($fp)
	li $t0, 24959
	sw $t0, -6072($fp)
	lw $t0, -6068($fp)
	lw $t1, -6072($fp)
	sub $t0, $t0, $t1
	sw $t0, -6076($fp)
	li $t0, 44399
	sw $t0, -6080($fp)
	lw $t0, -5832($fp)
	sw $t0, -6084($fp)
	lw $t0, -6080($fp)
	lw $t1, -6084($fp)
	add $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -1208($fp)
	sw $t0, -6092($fp)
	lw $t0, -6088($fp)
	lw $t1, -6092($fp)
	add $t0, $t0, $t1
	sw $t0, -6096($fp)
	addi $sp, $sp, -4
	lw $t0, -6040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6096($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -6100($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -6100($fp)
	mul $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	lw $t1, -6032($fp)
	add $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	lw $t1, 0($t0)
	sw $t1, -6112($fp)
	j label635
label637:
	j label632
label634:
	j label623
label625:
label660:
	li $t0, 0
	sw $t0, -6116($fp)
	li $t0, 0
	sw $t0, -6120($fp)
	li $t0, 0
	sw $t0, -6124($fp)
	lw $t0, -956($fp)
	sw $t0, -6128($fp)
	li $t0, 15183
	sw $t0, -6132($fp)
	lw $t1, -6128($fp)
	lw $t2, -6132($fp)
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -6124($fp)
label668:
	li $t0, 2648
	sw $t0, -6136($fp)
	lw $t1, -6124($fp)
	lw $t2, -6136($fp)
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -6120($fp)
label666:
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6140($fp)
	addi $sp, $sp, 8
	li $t0, 35041
	sw $t0, -6144($fp)
	lw $t1, -6140($fp)
	lw $t2, -6144($fp)
	blt $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -6116($fp)
label664:
	lw $t0, -6116($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -6148($fp)
	lw $t1, -6148($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label662
label661:
	li $t0, 0
	sw $t0, -6152($fp)
	addi $t0, $fp, -192
	sw $t0, -6156($fp)
	lw $t0, -1232($fp)
	sw $t0, -6160($fp)
	li $t0, 4
	lw $t1, -6160($fp)
	mul $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	lw $t1, -6156($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	lw $t1, 0($t0)
	sw $t1, -6172($fp)
	jal f6
	sw $v0, -6176($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -6172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6176($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6180($fp)
	addi $sp, $sp, 12
	li $t0, 1336
	sw $t0, -6184($fp)
	lw $t1, -6180($fp)
	lw $t2, -6184($fp)
	blt $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -6152($fp)
label670:
	lw $ra, -4($fp)
	lw $v0, -6152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label660
label662:
	li $t0, 25729
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	sw $t0, -6196($fp)
	li $t0, 22505
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	sw $t0, -6208($fp)
	li $t0, 17999
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	sw $t0, -6220($fp)
label671:
	li $t0, 46260
	sw $t0, -6224($fp)
	li $t0, 1
	sw $t0, -6228($fp)
	lw $t0, -6224($fp)
	lw $t1, -6228($fp)
	mul $t0, $t0, $t1
	sw $t0, -6232($fp)
	li $t0, 0
	lw $t1, -6232($fp)
	sub $t0, $t0, $t1
	sw $t0, -6236($fp)
	addi $t0, $fp, -172
	sw $t0, -6240($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -6260($fp)
	li $t0, 28064
	sw $t0, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label674
label674:
	li $t0, 1
	sw $t0, -6260($fp)
label675:
	lw $t0, -6256($fp)
	lw $t1, -6260($fp)
	mul $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -6236($fp)
	lw $t1, -6268($fp)
	add $t0, $t0, $t1
	sw $t0, -6272($fp)
	lw $t1, -6272($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label673
label672:
	li $t0, 0
	sw $t0, -6276($fp)
	li $t0, 0
	sw $t0, -6280($fp)
	li $t0, 31880
	sw $t0, -6284($fp)
	li $t0, 37231
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t0, -1376($fp)
	sw $t0, -6296($fp)
	lw $t1, -6292($fp)
	lw $t2, -6296($fp)
	beq $t1, $t2, label678
	j label679
label678:
	li $t0, 1
	sw $t0, -6280($fp)
label679:
	li $t0, 56727
	sw $t0, -6300($fp)
	lw $t0, -6204($fp)
	sw $t0, -6304($fp)
	lw $t0, -6300($fp)
	lw $t1, -6304($fp)
	add $t0, $t0, $t1
	sw $t0, -6308($fp)
	li $t0, 9462
	sw $t0, -6312($fp)
	addi $sp, $sp, -4
	lw $t0, -6280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6312($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6316($fp)
	addi $sp, $sp, 16
	lw $t1, -6316($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -6276($fp)
label677:
	li $t0, 23813
	sw $t0, -6320($fp)
	lw $t0, -6276($fp)
	lw $t1, -6320($fp)
	mul $t0, $t0, $t1
	sw $t0, -6324($fp)
	lw $ra, -4($fp)
	lw $v0, -6324($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label671
label673:
	li $t0, 0
	sw $t0, -6328($fp)
	li $t0, 1077
	sw $t0, -6332($fp)
	lw $t1, -6332($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label683
label683:
	li $t0, 1
	sw $t0, -6328($fp)
label684:
	li $t0, 11221
	sw $t0, -6336($fp)
	lw $t0, -968($fp)
	sw $t0, -6340($fp)
	lw $t0, -6336($fp)
	lw $t1, -6340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6344($fp)
	lw $t0, -2108($fp)
	sw $t0, -6348($fp)
	lw $t0, -6344($fp)
	lw $t1, -6348($fp)
	add $t0, $t0, $t1
	sw $t0, -6352($fp)
	li $t0, 17556
	sw $t0, -6356($fp)
	lw $t0, 20($fp)
	sw $t0, -6360($fp)
	lw $t0, -6356($fp)
	lw $t1, -6360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6364($fp)
	lw $t0, -6352($fp)
	lw $t1, -6364($fp)
	add $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $t1, -6328($fp)
	lw $t2, -6368($fp)
	bne $t1, $t2, label680
	j label681
label680:
	li $t0, 55824
	sw $t0, -6372($fp)
	lw $t0, 20($fp)
	sw $t0, -6376($fp)
	lw $t0, -6372($fp)
	lw $t1, -6376($fp)
	mul $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -2396($fp)
	sw $t0, -6384($fp)
	lw $t0, -6380($fp)
	lw $t1, -6384($fp)
	mul $t0, $t0, $t1
	sw $t0, -6388($fp)
	li $t0, 0
	sw $t0, -6392($fp)
	lw $t0, -6216($fp)
	sw $t0, -6396($fp)
	lw $t1, -6396($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label688
label688:
	li $t0, 1
	sw $t0, -6392($fp)
label689:
	lw $t0, -6388($fp)
	lw $t1, -6392($fp)
	mul $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t0, -2408($fp)
	sw $t0, -6404($fp)
	lw $t0, -6400($fp)
	lw $t1, -6404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6408($fp)
	addi $t0, $fp, -132
	sw $t0, -6412($fp)
	li $t0, 0
	sw $t0, -6416($fp)
	lw $t0, -596($fp)
	sw $t0, -6420($fp)
	lw $t1, -6420($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label690
label690:
	li $t0, 1
	sw $t0, -6416($fp)
label691:
	li $t0, 4
	lw $t1, -6416($fp)
	mul $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	lw $t1, -6412($fp)
	add $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	lw $t1, 0($t0)
	sw $t1, -6432($fp)
	lw $t0, -6408($fp)
	lw $t1, -6432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6436($fp)
	lw $t1, -6436($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label686
label685:
label692:
	li $t0, 16696
	sw $t0, -6440($fp)
	lw $t1, -6440($fp)
	li $t2, 0
	bne $t1, $t2, label693
	j label694
label693:
	lw $t0, -896($fp)
	sw $t0, -6444($fp)
	j label692
label694:
	j label687
label686:
	li $t0, 0
	sw $t0, -6448($fp)
	lw $t0, -944($fp)
	sw $t0, -6452($fp)
	li $t0, 0
	lw $t1, -6452($fp)
	sub $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t1, -6456($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -6448($fp)
label696:
label687:
	j label682
label681:
	li $t0, 0
	sw $t0, -6460($fp)
	lw $t0, -428($fp)
	sw $t0, -6464($fp)
	lw $t1, -6464($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label703
label703:
	lw $t0, -6192($fp)
	sw $t0, -6468($fp)
	lw $t1, -6468($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label702
label702:
	lw $t0, 8($fp)
	sw $t0, -6472($fp)
	lw $t1, -6472($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label701
label700:
	li $t0, 1
	sw $t0, -6460($fp)
label701:
	addi $sp, $sp, -4
	lw $t0, -6460($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6476($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -6476($fp)
	sub $t0, $t0, $t1
	sw $t0, -6480($fp)
	li $t0, 0
	lw $t1, -6480($fp)
	sub $t0, $t0, $t1
	sw $t0, -6484($fp)
	li $t0, 0
	sw $t0, -6488($fp)
	lw $t0, -932($fp)
	sw $t0, -6492($fp)
	lw $t1, -6492($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label705
label704:
	li $t0, 1
	sw $t0, -6488($fp)
label705:
	lw $t0, -6484($fp)
	lw $t1, -6488($fp)
	add $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -908($fp)
	sw $t0, -6500($fp)
	li $t0, 0
	lw $t1, -6500($fp)
	sub $t0, $t0, $t1
	sw $t0, -6504($fp)
	li $t0, 58710
	sw $t0, -6508($fp)
	lw $t0, -6504($fp)
	lw $t1, -6508($fp)
	add $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -920($fp)
	sw $t0, -6516($fp)
	li $t0, 0
	lw $t1, -6516($fp)
	sub $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6512($fp)
	lw $t1, -6520($fp)
	add $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t1, -6496($fp)
	lw $t2, -6524($fp)
	blt $t1, $t2, label697
	j label698
label697:
	li $t0, 0
	sw $t0, -6528($fp)
	lw $t0, -2252($fp)
	sw $t0, -6532($fp)
	li $t0, 35625
	sw $t0, -6536($fp)
	addi $sp, $sp, -4
	lw $t0, -6536($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6540($fp)
	addi $sp, $sp, 8
	lw $t0, -6532($fp)
	lw $t1, -6540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6544($fp)
	addi $t0, $fp, -220
	sw $t0, -6548($fp)
	addi $t0, $fp, -44
	sw $t0, -6552($fp)
	lw $t0, -2288($fp)
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
	li $t0, 4
	lw $t1, -6568($fp)
	mul $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	lw $t1, -6548($fp)
	add $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	lw $t1, 0($t0)
	sw $t1, -6580($fp)
	lw $t1, -6544($fp)
	lw $t2, -6580($fp)
	bge $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -6528($fp)
label707:
	j label699
label698:
	li $t0, 0
	sw $t0, -6584($fp)
	jal f6
	sw $v0, -6588($fp)
	addi $sp, $sp, 4
	li $t0, 61662
	sw $t0, -6592($fp)
	lw $t0, -1388($fp)
	sw $t0, -6596($fp)
	lw $t0, -6592($fp)
	lw $t1, -6596($fp)
	sub $t0, $t0, $t1
	sw $t0, -6600($fp)
	li $t0, 38469
	sw $t0, -6604($fp)
	lw $t0, -6600($fp)
	lw $t1, -6604($fp)
	sub $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t1, -6588($fp)
	lw $t2, -6608($fp)
	bne $t1, $t2, label708
	j label710
label710:
	li $t0, 0
	sw $t0, -6612($fp)
	lw $t0, -1640($fp)
	sw $t0, -6616($fp)
	lw $t0, -1232($fp)
	sw $t0, -6620($fp)
	lw $t1, -6616($fp)
	lw $t2, -6620($fp)
	beq $t1, $t2, label711
	j label713
label713:
	lw $t0, -1244($fp)
	sw $t0, -6624($fp)
	lw $t1, -6624($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -6612($fp)
label712:
	addi $t0, $fp, -172
	sw $t0, -6628($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -6644($fp)
	sub $t0, $t0, $t1
	sw $t0, -6648($fp)
	addi $sp, $sp, -4
	lw $t0, -6612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6648($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6652($fp)
	addi $sp, $sp, 12
	li $t0, 63428
	sw $t0, -6656($fp)
	lw $t0, -6652($fp)
	lw $t1, -6656($fp)
	sub $t0, $t0, $t1
	sw $t0, -6660($fp)
	li $t0, 40583
	sw $t0, -6664($fp)
	lw $t1, -6660($fp)
	lw $t2, -6664($fp)
	beq $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -6584($fp)
label709:
label699:
label682:
	li $t0, 0
	sw $t0, -6668($fp)
	lw $t0, -848($fp)
	sw $t0, -6672($fp)
	li $t0, 45087
	sw $t0, -6676($fp)
	lw $t1, -6672($fp)
	lw $t2, -6676($fp)
	bne $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -6668($fp)
label715:
	li $t0, 0
	sw $t0, -6680($fp)
	li $t0, 62738
	sw $t0, -6684($fp)
	lw $t0, -1952($fp)
	sw $t0, -6688($fp)
	lw $t0, -6684($fp)
	lw $t1, -6688($fp)
	mul $t0, $t0, $t1
	sw $t0, -6692($fp)
	li $t0, 0
	sw $t0, -6696($fp)
	li $t0, 0
	sw $t0, -6700($fp)
	li $t0, 47371
	sw $t0, -6704($fp)
	lw $t1, -6704($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label720
label720:
	li $t0, 1
	sw $t0, -6700($fp)
label721:
	lw $t0, -548($fp)
	sw $t0, -6708($fp)
	lw $t1, -6700($fp)
	lw $t2, -6708($fp)
	bge $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -6696($fp)
label719:
	lw $t0, -4908($fp)
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -6716($fp)
	li $t0, 0
	sw $t0, -6720($fp)
	li $t0, 34674
	sw $t0, -6724($fp)
	lw $t0, -2408($fp)
	sw $t0, -6728($fp)
	lw $t1, -6724($fp)
	lw $t2, -6728($fp)
	bgt $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -6720($fp)
label723:
	addi $t0, $fp, -36
	sw $t0, -6732($fp)
	lw $t0, -1112($fp)
	sw $t0, -6736($fp)
	li $t0, 4
	lw $t1, -6736($fp)
	mul $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	lw $t1, -6732($fp)
	add $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, 0($t0)
	sw $t1, -6748($fp)
	lw $t0, -1388($fp)
	sw $t0, -6752($fp)
	lw $t0, -6748($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6756($fp)
	li $t0, 0
	sw $t0, -6760($fp)
	li $t0, 32411
	sw $t0, -6764($fp)
	li $t0, 49685
	sw $t0, -6768($fp)
	lw $t1, -6764($fp)
	lw $t2, -6768($fp)
	bne $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -6760($fp)
label725:
	li $t0, 0
	sw $t0, -6772($fp)
	li $t0, 37097
	sw $t0, -6776($fp)
	lw $t0, -428($fp)
	sw $t0, -6780($fp)
	lw $t1, -6776($fp)
	lw $t2, -6780($fp)
	blt $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -6772($fp)
label727:
	addi $t0, $fp, -44
	sw $t0, -6784($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -6760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6800($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6804($fp)
	addi $sp, $sp, 16
	lw $t0, -4872($fp)
	sw $t0, -6808($fp)
	lw $t0, -6804($fp)
	lw $t1, -6808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6812($fp)
	addi $sp, $sp, -4
	lw $t0, -6716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6812($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6816($fp)
	addi $sp, $sp, 20
	li $t0, 25873
	sw $t0, -6820($fp)
	lw $t0, -6816($fp)
	lw $t1, -6820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6824($fp)
	li $t0, 0
	sw $t0, -6828($fp)
	lw $t0, -4944($fp)
	sw $t0, -6832($fp)
	lw $t1, -6832($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label729
label730:
	li $t0, 14592
	sw $t0, -6836($fp)
	lw $t1, -6836($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label729
label728:
	li $t0, 1
	sw $t0, -6828($fp)
label729:
	lw $t0, -2288($fp)
	sw $t0, -6840($fp)
	li $t0, 0
	lw $t1, -6840($fp)
	sub $t0, $t0, $t1
	sw $t0, -6844($fp)
	li $t0, 43232
	sw $t0, -6848($fp)
	lw $t0, -6844($fp)
	lw $t1, -6848($fp)
	sub $t0, $t0, $t1
	sw $t0, -6852($fp)
	addi $sp, $sp, -4
	lw $t0, -6828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6852($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6856($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -6860($fp)
	lw $t0, 16($fp)
	sw $t0, -6864($fp)
	lw $t1, -6864($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label731
label733:
	li $t0, 13076
	sw $t0, -6868($fp)
	lw $t1, -6868($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -6860($fp)
label732:
	li $t0, 0
	sw $t0, -6872($fp)
	lw $t0, -428($fp)
	sw $t0, -6876($fp)
	lw $t1, -6876($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label734
label734:
	li $t0, 1
	sw $t0, -6872($fp)
label735:
	addi $sp, $sp, -4
	lw $t0, -6860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6872($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6880($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -6692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6880($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -6884($fp)
	addi $sp, $sp, 24
	li $t0, 35336
	sw $t0, -6888($fp)
	li $t0, 38562
	sw $t0, -6892($fp)
	lw $t0, -6888($fp)
	lw $t1, -6892($fp)
	mul $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -2288($fp)
	sw $t0, -6900($fp)
	lw $t0, -6896($fp)
	lw $t1, -6900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6904($fp)
	lw $t0, -2108($fp)
	sw $t0, -6908($fp)
	li $t0, 29082
	sw $t0, -6912($fp)
	lw $t0, -6908($fp)
	lw $t1, -6912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6916($fp)
	lw $t0, -6904($fp)
	lw $t1, -6916($fp)
	sub $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t1, -6884($fp)
	lw $t2, -6920($fp)
	blt $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -6680($fp)
label717:
	j label542
label541:
	lw $t0, -536($fp)
	sw $t0, -6924($fp)
	li $t0, 0
	lw $t1, -6924($fp)
	sub $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $ra, -4($fp)
	lw $v0, -6928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label542:
	j label537
label536:
	li $t0, 0
	sw $t0, -6932($fp)
	li $t0, 7031
	sw $t0, -6936($fp)
	lw $t0, -1220($fp)
	sw $t0, -6940($fp)
	li $t0, 0
	lw $t1, -6940($fp)
	sub $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6936($fp)
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6948($fp)
	li $t0, 0
	sw $t0, -6952($fp)
	lw $t0, -1376($fp)
	sw $t0, -6956($fp)
	lw $t1, -6956($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label738
label738:
	li $t0, 1
	sw $t0, -6952($fp)
label739:
	li $t0, 0
	lw $t1, -6952($fp)
	sub $t0, $t0, $t1
	sw $t0, -6960($fp)
	addi $t0, $fp, -172
	sw $t0, -6964($fp)
	li $t0, 8
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
	addi $sp, $sp, -4
	lw $t0, -6960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6980($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6984($fp)
	addi $sp, $sp, 12
	li $t0, 18252
	sw $t0, -6988($fp)
	lw $t0, -6984($fp)
	lw $t1, -6988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6992($fp)
	addi $t0, $fp, -172
	sw $t0, -6996($fp)
	lw $t0, -1196($fp)
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
	lw $t0, -6992($fp)
	lw $t1, -7012($fp)
	mul $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t1, -6948($fp)
	lw $t2, -7016($fp)
	bge $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -6932($fp)
label737:
	lw $ra, -4($fp)
	lw $v0, -6932($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 14395
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	sw $t0, -7028($fp)
	li $t0, 20448
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	sw $t0, -7040($fp)
	li $t0, 0
	sw $t0, -7044($fp)
	lw $t0, -536($fp)
	sw $t0, -7048($fp)
	addi $t0, $fp, -172
	sw $t0, -7052($fp)
	li $t0, 0
	sw $t0, -7056($fp)
	lw $t0, -1004($fp)
	sw $t0, -7060($fp)
	lw $t1, -7060($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label744
label744:
	li $t0, 34949
	sw $t0, -7064($fp)
	lw $t1, -7064($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label743
label742:
	li $t0, 1
	sw $t0, -7056($fp)
label743:
	li $t0, 4
	lw $t1, -7056($fp)
	mul $t0, $t0, $t1
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	lw $t1, -7052($fp)
	add $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	lw $t1, 0($t0)
	sw $t1, -7076($fp)
	lw $t1, -7048($fp)
	lw $t2, -7076($fp)
	bne $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -7044($fp)
label741:
	lw $ra, -4($fp)
	lw $v0, -7044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -7080($fp)
	addi $t0, $fp, -192
	sw $t0, -7084($fp)
	li $t0, 0
	sw $t0, -7088($fp)
	li $t0, 7569
	sw $t0, -7092($fp)
	lw $t1, -7092($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label748
label749:
	li $t0, 56073
	sw $t0, -7096($fp)
	lw $t1, -7096($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -7088($fp)
label748:
	li $t0, 4
	lw $t1, -7088($fp)
	mul $t0, $t0, $t1
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	lw $t1, -7084($fp)
	add $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	lw $t1, 0($t0)
	sw $t1, -7108($fp)
	li $t0, 0
	lw $t1, -7108($fp)
	sub $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t0, -860($fp)
	sw $t0, -7116($fp)
	lw $t1, -7112($fp)
	lw $t2, -7116($fp)
	beq $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -7080($fp)
label746:
	lw $ra, -4($fp)
	lw $v0, -7080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 31075
	sw $t0, -7132($fp)
	addi $t0, $fp, -7128
	sw $t0, -7136($fp)
	li $t0, 0
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7144($fp)
	lw $t0, -7136($fp)
	lw $t1, -7144($fp)
	add $t0, $t0, $t1
	sw $t0, -7148($fp)
	lw $t0, -7132($fp)
	lw $t1, -7148($fp)
	sw $t0, 0($t1)
	lw $t0, -7148($fp)
	lw $t1, 0($t0)
	sw $t1, -7152($fp)
	li $t0, 46039
	sw $t0, -7156($fp)
	addi $t0, $fp, -7128
	sw $t0, -7160($fp)
	li $t0, 1
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7160($fp)
	lw $t1, -7168($fp)
	add $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t0, -7156($fp)
	lw $t1, -7172($fp)
	sw $t0, 0($t1)
	lw $t0, -7172($fp)
	lw $t1, 0($t0)
	sw $t1, -7176($fp)
	li $t0, 5026
	sw $t0, -7180($fp)
	addi $t0, $fp, -7128
	sw $t0, -7184($fp)
	li $t0, 2
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -7184($fp)
	lw $t1, -7192($fp)
	add $t0, $t0, $t1
	sw $t0, -7196($fp)
	lw $t0, -7180($fp)
	lw $t1, -7196($fp)
	sw $t0, 0($t1)
	lw $t0, -7196($fp)
	lw $t1, 0($t0)
	sw $t1, -7200($fp)
	li $t0, 0
	sw $t0, -7204($fp)
	li $t0, 0
	sw $t0, -7208($fp)
	addi $t0, $fp, -172
	sw $t0, -7212($fp)
	lw $t0, -2096($fp)
	sw $t0, -7216($fp)
	li $t0, 4
	lw $t1, -7216($fp)
	mul $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, -7212($fp)
	add $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	lw $t1, 0($t0)
	sw $t1, -7228($fp)
	li $t0, 0
	lw $t1, -7228($fp)
	sub $t0, $t0, $t1
	sw $t0, -7232($fp)
	li $t0, 45261
	sw $t0, -7236($fp)
	lw $t0, -1772($fp)
	sw $t0, -7240($fp)
	lw $t0, -7236($fp)
	lw $t1, -7240($fp)
	mul $t0, $t0, $t1
	sw $t0, -7244($fp)
	li $t0, 0
	lw $t1, -7244($fp)
	sub $t0, $t0, $t1
	sw $t0, -7248($fp)
	lw $t1, -7232($fp)
	lw $t2, -7248($fp)
	blt $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -7208($fp)
label753:
	addi $t0, $fp, -220
	sw $t0, -7252($fp)
	lw $t0, -2108($fp)
	sw $t0, -7256($fp)
	li $t0, 0
	lw $t1, -7256($fp)
	sub $t0, $t0, $t1
	sw $t0, -7260($fp)
	li $t0, 4
	lw $t1, -7260($fp)
	mul $t0, $t0, $t1
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	lw $t1, -7252($fp)
	add $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	lw $t1, 0($t0)
	sw $t1, -7272($fp)
	lw $t1, -7208($fp)
	lw $t2, -7272($fp)
	blt $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -7204($fp)
label751:
	li $t0, 0
	sw $t0, -7276($fp)
	li $t0, 43931
	sw $t0, -7280($fp)
	li $t0, 45610
	sw $t0, -7284($fp)
	lw $t0, -7280($fp)
	lw $t1, -7284($fp)
	mul $t0, $t0, $t1
	sw $t0, -7288($fp)
	li $t0, 24813
	sw $t0, -7292($fp)
	lw $t0, -7288($fp)
	lw $t1, -7292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7296($fp)
	li $t0, 57007
	sw $t0, -7300($fp)
	lw $t0, -7296($fp)
	lw $t1, -7300($fp)
	add $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t1, -7304($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label756
label757:
	li $t0, 23306
	sw $t0, -7308($fp)
	lw $t1, -7308($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label756
label756:
	li $t0, 39405
	sw $t0, -7312($fp)
	li $t0, 5884
	sw $t0, -7316($fp)
	lw $t0, -7312($fp)
	lw $t1, -7316($fp)
	mul $t0, $t0, $t1
	sw $t0, -7320($fp)
	addi $t0, $fp, -240
	sw $t0, -7324($fp)
	lw $t0, -2252($fp)
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
	lw $t0, -7320($fp)
	lw $t1, -7340($fp)
	mul $t0, $t0, $t1
	sw $t0, -7344($fp)
	li $t0, 0
	lw $t1, -7344($fp)
	sub $t0, $t0, $t1
	sw $t0, -7348($fp)
	lw $t1, -7348($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -7276($fp)
label755:
	li $t0, 0
	sw $t0, -7352($fp)
	lw $t0, -1964($fp)
	sw $t0, -7356($fp)
	li $t0, 26731
	sw $t0, -7360($fp)
	lw $t0, -7356($fp)
	lw $t1, -7360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7364($fp)
	lw $t1, -7364($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label763:
	li $t0, 10967
	sw $t0, -7368($fp)
	lw $t1, -7368($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -7352($fp)
label762:
	addi $sp, $sp, -4
	lw $t0, -7352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7372($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -7372($fp)
	sub $t0, $t0, $t1
	sw $t0, -7376($fp)
	lw $t1, -7376($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label759
label758:
	li $t0, 0
	sw $t0, -7380($fp)
	addi $t0, $fp, -7128
	sw $t0, -7384($fp)
	li $t0, 2
	sw $t0, -7388($fp)
	li $t0, 4
	lw $t1, -7388($fp)
	mul $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	lw $t1, -7384($fp)
	add $t0, $t0, $t1
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	lw $t1, 0($t0)
	sw $t1, -7400($fp)
	lw $t1, -7400($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label764
label764:
	li $t0, 1
	sw $t0, -7380($fp)
label765:
	li $t0, 0
	lw $t1, -7380($fp)
	sub $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t0, -2264($fp)
	sw $t0, -7408($fp)
	lw $t0, -7404($fp)
	lw $t1, -7408($fp)
	sub $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $ra, -4($fp)
	lw $v0, -7412($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label759:
	addi $t0, $fp, -36
	sw $t0, -7416($fp)
	jal f6
	sw $v0, -7420($fp)
	addi $sp, $sp, 4
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
	lw $t1, -7432($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label767
label766:
	lw $t0, -1952($fp)
	sw $t0, -7436($fp)
	li $t0, 0
	lw $t1, -7436($fp)
	sub $t0, $t0, $t1
	sw $t0, -7440($fp)
label767:
	lw $t0, -7024($fp)
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7036($fp)
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7452($fp)
	addi $t0, $fp, -260
	sw $t0, -7456($fp)
	li $t0, 45641
	sw $t0, -7460($fp)
	lw $t0, -1352($fp)
	sw $t0, -7464($fp)
	lw $t0, -7460($fp)
	lw $t1, -7464($fp)
	add $t0, $t0, $t1
	sw $t0, -7468($fp)
	li $t0, 4
	lw $t1, -7468($fp)
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
	li $t0, 6390
	sw $t0, -7488($fp)
	lw $t1, -7488($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label775
label775:
	li $t0, 41000
	sw $t0, -7492($fp)
	lw $t1, -7492($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label774
label774:
	lw $t0, -872($fp)
	sw $t0, -7496($fp)
	lw $t1, -7496($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -7484($fp)
label773:
	li $t0, 0
	sw $t0, -7500($fp)
	li $t0, 31278
	sw $t0, -7504($fp)
	lw $t1, -7504($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label778
label778:
	lw $t0, -980($fp)
	sw $t0, -7508($fp)
	lw $t1, -7508($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -7500($fp)
label777:
	li $t0, 0
	sw $t0, -7512($fp)
	li $t0, 42844
	sw $t0, -7516($fp)
	li $t0, 33969
	sw $t0, -7520($fp)
	lw $t1, -7516($fp)
	lw $t2, -7520($fp)
	bgt $t1, $t2, label779
	j label780
label779:
	li $t0, 1
	sw $t0, -7512($fp)
label780:
	lw $t0, -2288($fp)
	sw $t0, -7524($fp)
	li $t0, 58252
	sw $t0, -7528($fp)
	lw $t0, -7524($fp)
	lw $t1, -7528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7532($fp)
	jal f6
	sw $v0, -7536($fp)
	addi $sp, $sp, 4
	lw $t0, -2276($fp)
	sw $t0, -7540($fp)
	lw $t0, -7536($fp)
	lw $t1, -7540($fp)
	add $t0, $t0, $t1
	sw $t0, -7544($fp)
	addi $sp, $sp, -4
	lw $t0, -7484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7544($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -7548($fp)
	addi $sp, $sp, 24
	li $t0, 28117
	sw $t0, -7552($fp)
	lw $t0, -7548($fp)
	lw $t1, -7552($fp)
	mul $t0, $t0, $t1
	sw $t0, -7556($fp)
	li $t0, 64169
	sw $t0, -7560($fp)
	lw $t0, -968($fp)
	sw $t0, -7564($fp)
	lw $t0, -7560($fp)
	lw $t1, -7564($fp)
	mul $t0, $t0, $t1
	sw $t0, -7568($fp)
	addi $sp, $sp, -4
	lw $t0, -7556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7568($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7572($fp)
	addi $sp, $sp, 12
	lw $t0, -7480($fp)
	lw $t1, -7572($fp)
	add $t0, $t0, $t1
	sw $t0, -7576($fp)
	lw $t1, -7576($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label771
label771:
	li $t0, 36550
	sw $t0, -7580($fp)
	li $t0, 0
	lw $t1, -7580($fp)
	sub $t0, $t0, $t1
	sw $t0, -7584($fp)
	li $t0, 59252
	sw $t0, -7588($fp)
	li $t0, 42513
	sw $t0, -7592($fp)
	lw $t0, -7588($fp)
	lw $t1, -7592($fp)
	add $t0, $t0, $t1
	sw $t0, -7596($fp)
	lw $t1, -7584($fp)
	lw $t2, -7596($fp)
	blt $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -7452($fp)
label770:
	lw $ra, -4($fp)
	lw $v0, -7452($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -7600($fp)
	li $t0, 0
	sw $t0, -7604($fp)
	lw $t0, -1352($fp)
	sw $t0, -7608($fp)
	li $t0, 0
	lw $t1, -7608($fp)
	sub $t0, $t0, $t1
	sw $t0, -7612($fp)
	li $t0, 50082
	sw $t0, -7616($fp)
	lw $t1, -7612($fp)
	lw $t2, -7616($fp)
	beq $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -7604($fp)
label785:
	lw $t0, -7036($fp)
	sw $t0, -7620($fp)
	li $t0, 0
	sw $t0, -7624($fp)
	li $t0, 0
	sw $t0, -7628($fp)
	lw $t0, -7024($fp)
	sw $t0, -7632($fp)
	lw $t0, -968($fp)
	sw $t0, -7636($fp)
	lw $t1, -7632($fp)
	lw $t2, -7636($fp)
	bgt $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -7628($fp)
label789:
	li $t0, 28665
	sw $t0, -7640($fp)
	lw $t1, -7628($fp)
	lw $t2, -7640($fp)
	beq $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -7624($fp)
label787:
	li $t0, 0
	sw $t0, -7644($fp)
	li $t0, 56998
	sw $t0, -7648($fp)
	lw $t1, -7648($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label790
label790:
	li $t0, 1
	sw $t0, -7644($fp)
label791:
	lw $t0, -860($fp)
	sw $t0, -7652($fp)
	lw $t0, -7644($fp)
	lw $t1, -7652($fp)
	sub $t0, $t0, $t1
	sw $t0, -7656($fp)
	addi $sp, $sp, -4
	lw $t0, -7604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7656($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -7660($fp)
	addi $sp, $sp, 20
	lw $t1, -7660($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label782
label783:
	li $t0, 47536
	sw $t0, -7664($fp)
	li $t0, 0
	lw $t1, -7664($fp)
	sub $t0, $t0, $t1
	sw $t0, -7668($fp)
	li $t0, 0
	lw $t1, -7668($fp)
	sub $t0, $t0, $t1
	sw $t0, -7672($fp)
	lw $t1, -7672($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -7600($fp)
label782:
	li $t0, 0
	sw $t0, -7676($fp)
	li $t0, 59741
	sw $t0, -7680($fp)
	lw $t1, -7680($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -7676($fp)
label793:
label537:
	addi $t0, $fp, -28
	sw $t0, -7684($fp)
	li $t0, 0
	sw $t0, -7688($fp)
	li $t0, 4
	lw $t1, -7688($fp)
	mul $t0, $t0, $t1
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	lw $t1, -7684($fp)
	add $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	lw $t1, 0($t0)
	sw $t1, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -7704($fp)
	li $t0, 1
	sw $t0, -7708($fp)
	li $t0, 4
	lw $t1, -7708($fp)
	mul $t0, $t0, $t1
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	lw $t1, -7704($fp)
	add $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	lw $t1, 0($t0)
	sw $t1, -7720($fp)
	lw $t0, -7720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -7724($fp)
	li $t0, 2
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
	lw $t0, -7740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -7744($fp)
	li $t0, 3
	sw $t0, -7748($fp)
	li $t0, 4
	lw $t1, -7748($fp)
	mul $t0, $t0, $t1
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	lw $t1, -7744($fp)
	add $t0, $t0, $t1
	sw $t0, -7756($fp)
	lw $t0, -7756($fp)
	lw $t1, 0($t0)
	sw $t1, -7760($fp)
	lw $t0, -7760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -7764($fp)
	li $t0, 4
	sw $t0, -7768($fp)
	li $t0, 4
	lw $t1, -7768($fp)
	mul $t0, $t0, $t1
	sw $t0, -7772($fp)
	lw $t0, -7772($fp)
	lw $t1, -7764($fp)
	add $t0, $t0, $t1
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	lw $t1, 0($t0)
	sw $t1, -7780($fp)
	lw $t0, -7780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -7784($fp)
	li $t0, 5
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
	lw $t0, -7800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -7808($fp)
	li $t0, 0
	sw $t0, -7812($fp)
	li $t0, 4
	lw $t1, -7812($fp)
	mul $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	lw $t1, -7808($fp)
	add $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t0, -7820($fp)
	lw $t1, 0($t0)
	sw $t1, -7824($fp)
	lw $t0, -7824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -7828($fp)
	li $t0, 1
	sw $t0, -7832($fp)
	li $t0, 4
	lw $t1, -7832($fp)
	mul $t0, $t0, $t1
	sw $t0, -7836($fp)
	lw $t0, -7836($fp)
	lw $t1, -7828($fp)
	add $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	lw $t1, 0($t0)
	sw $t1, -7844($fp)
	lw $t0, -7844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -7848($fp)
	li $t0, 0
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
	lw $t0, -7864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -7868($fp)
	li $t0, 1
	sw $t0, -7872($fp)
	li $t0, 4
	lw $t1, -7872($fp)
	mul $t0, $t0, $t1
	sw $t0, -7876($fp)
	lw $t0, -7876($fp)
	lw $t1, -7868($fp)
	add $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -7880($fp)
	lw $t1, 0($t0)
	sw $t1, -7884($fp)
	lw $t0, -7884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -7888($fp)
	lw $t0, -7888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -7896($fp)
	li $t0, 0
	sw $t0, -7900($fp)
	li $t0, 4
	lw $t1, -7900($fp)
	mul $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	lw $t1, -7896($fp)
	add $t0, $t0, $t1
	sw $t0, -7908($fp)
	lw $t0, -7908($fp)
	lw $t1, 0($t0)
	sw $t1, -7912($fp)
	lw $t0, -7912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -7924($fp)
	li $t0, 0
	sw $t0, -7928($fp)
	li $t0, 4
	lw $t1, -7928($fp)
	mul $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	lw $t1, -7924($fp)
	add $t0, $t0, $t1
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	lw $t1, 0($t0)
	sw $t1, -7940($fp)
	lw $t0, -7940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -7944($fp)
	li $t0, 1
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
	addi $t0, $fp, -88
	sw $t0, -7964($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -7984($fp)
	li $t0, 3
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
	addi $t0, $fp, -88
	sw $t0, -8004($fp)
	li $t0, 4
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
	addi $t0, $fp, -88
	sw $t0, -8024($fp)
	li $t0, 5
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
	addi $t0, $fp, -88
	sw $t0, -8044($fp)
	li $t0, 6
	sw $t0, -8048($fp)
	li $t0, 4
	lw $t1, -8048($fp)
	mul $t0, $t0, $t1
	sw $t0, -8052($fp)
	lw $t0, -8052($fp)
	lw $t1, -8044($fp)
	add $t0, $t0, $t1
	sw $t0, -8056($fp)
	lw $t0, -8056($fp)
	lw $t1, 0($t0)
	sw $t1, -8060($fp)
	lw $t0, -8060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8064($fp)
	li $t0, 7
	sw $t0, -8068($fp)
	li $t0, 4
	lw $t1, -8068($fp)
	mul $t0, $t0, $t1
	sw $t0, -8072($fp)
	lw $t0, -8072($fp)
	lw $t1, -8064($fp)
	add $t0, $t0, $t1
	sw $t0, -8076($fp)
	lw $t0, -8076($fp)
	lw $t1, 0($t0)
	sw $t1, -8080($fp)
	lw $t0, -8080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8084($fp)
	li $t0, 8
	sw $t0, -8088($fp)
	li $t0, 4
	lw $t1, -8088($fp)
	mul $t0, $t0, $t1
	sw $t0, -8092($fp)
	lw $t0, -8092($fp)
	lw $t1, -8084($fp)
	add $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8096($fp)
	lw $t1, 0($t0)
	sw $t1, -8100($fp)
	lw $t0, -8100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -8104($fp)
	li $t0, 9
	sw $t0, -8108($fp)
	li $t0, 4
	lw $t1, -8108($fp)
	mul $t0, $t0, $t1
	sw $t0, -8112($fp)
	lw $t0, -8112($fp)
	lw $t1, -8104($fp)
	add $t0, $t0, $t1
	sw $t0, -8116($fp)
	lw $t0, -8116($fp)
	lw $t1, 0($t0)
	sw $t1, -8120($fp)
	lw $t0, -8120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -8128($fp)
	lw $t0, -8128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -8132($fp)
	lw $t0, -8132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -8152($fp)
	lw $t0, -8152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -8172($fp)
	lw $t0, -8172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -8180($fp)
	li $t0, 0
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
	addi $t0, $fp, -104
	sw $t0, -8200($fp)
	li $t0, 1
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
	addi $t0, $fp, -104
	sw $t0, -8220($fp)
	li $t0, 2
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
	addi $t0, $fp, -104
	sw $t0, -8240($fp)
	li $t0, 3
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
	lw $t0, -1112($fp)
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -8264($fp)
	li $t0, 0
	sw $t0, -8268($fp)
	li $t0, 4
	lw $t1, -8268($fp)
	mul $t0, $t0, $t1
	sw $t0, -8272($fp)
	lw $t0, -8272($fp)
	lw $t1, -8264($fp)
	add $t0, $t0, $t1
	sw $t0, -8276($fp)
	lw $t0, -8276($fp)
	lw $t1, 0($t0)
	sw $t1, -8280($fp)
	lw $t0, -8280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -8284($fp)
	li $t0, 1
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
	addi $t0, $fp, -116
	sw $t0, -8304($fp)
	li $t0, 2
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
	lw $t0, -1196($fp)
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -8332($fp)
	lw $t0, -8332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -8336($fp)
	lw $t0, -8336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -8340($fp)
	lw $t0, -8340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -8344($fp)
	li $t0, 0
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
	addi $t0, $fp, -132
	sw $t0, -8364($fp)
	li $t0, 1
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
	addi $t0, $fp, -132
	sw $t0, -8384($fp)
	li $t0, 2
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
	addi $t0, $fp, -132
	sw $t0, -8404($fp)
	li $t0, 3
	sw $t0, -8408($fp)
	li $t0, 4
	lw $t1, -8408($fp)
	mul $t0, $t0, $t1
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	lw $t1, -8404($fp)
	add $t0, $t0, $t1
	sw $t0, -8416($fp)
	lw $t0, -8416($fp)
	lw $t1, 0($t0)
	sw $t1, -8420($fp)
	lw $t0, -8420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1352($fp)
	sw $t0, -8424($fp)
	lw $t0, -8424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1364($fp)
	sw $t0, -8428($fp)
	lw $t0, -8428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1376($fp)
	sw $t0, -8432($fp)
	lw $t0, -8432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1388($fp)
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8440($fp)
	li $t0, 0
	sw $t0, -8444($fp)
	li $t0, 4
	lw $t1, -8444($fp)
	mul $t0, $t0, $t1
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	lw $t1, -8440($fp)
	add $t0, $t0, $t1
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	lw $t1, 0($t0)
	sw $t1, -8456($fp)
	lw $t0, -8456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8460($fp)
	li $t0, 1
	sw $t0, -8464($fp)
	li $t0, 4
	lw $t1, -8464($fp)
	mul $t0, $t0, $t1
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	lw $t1, -8460($fp)
	add $t0, $t0, $t1
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	lw $t1, 0($t0)
	sw $t1, -8476($fp)
	lw $t0, -8476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8480($fp)
	li $t0, 2
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
	lw $t0, -8496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
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
	lw $t0, -8516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8520($fp)
	li $t0, 4
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
	lw $t0, -8536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8540($fp)
	li $t0, 5
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
	lw $t0, -8556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8560($fp)
	li $t0, 6
	sw $t0, -8564($fp)
	li $t0, 4
	lw $t1, -8564($fp)
	mul $t0, $t0, $t1
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	lw $t1, -8560($fp)
	add $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	lw $t1, 0($t0)
	sw $t1, -8576($fp)
	lw $t0, -8576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8580($fp)
	li $t0, 7
	sw $t0, -8584($fp)
	li $t0, 4
	lw $t1, -8584($fp)
	mul $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	lw $t1, -8580($fp)
	add $t0, $t0, $t1
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	lw $t1, 0($t0)
	sw $t1, -8596($fp)
	lw $t0, -8596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8600($fp)
	li $t0, 8
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
	lw $t0, -8616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8620($fp)
	li $t0, 9
	sw $t0, -8624($fp)
	li $t0, 4
	lw $t1, -8624($fp)
	mul $t0, $t0, $t1
	sw $t0, -8628($fp)
	lw $t0, -8628($fp)
	lw $t1, -8620($fp)
	add $t0, $t0, $t1
	sw $t0, -8632($fp)
	lw $t0, -8632($fp)
	lw $t1, 0($t0)
	sw $t1, -8636($fp)
	lw $t0, -8636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -8644($fp)
	li $t0, 0
	sw $t0, -8648($fp)
	li $t0, 4
	lw $t1, -8648($fp)
	mul $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t0, -8652($fp)
	lw $t1, -8644($fp)
	add $t0, $t0, $t1
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	lw $t1, 0($t0)
	sw $t1, -8660($fp)
	lw $t0, -8660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -8664($fp)
	li $t0, 1
	sw $t0, -8668($fp)
	li $t0, 4
	lw $t1, -8668($fp)
	mul $t0, $t0, $t1
	sw $t0, -8672($fp)
	lw $t0, -8672($fp)
	lw $t1, -8664($fp)
	add $t0, $t0, $t1
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	lw $t1, 0($t0)
	sw $t1, -8680($fp)
	lw $t0, -8680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -8684($fp)
	li $t0, 2
	sw $t0, -8688($fp)
	li $t0, 4
	lw $t1, -8688($fp)
	mul $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t0, -8692($fp)
	lw $t1, -8684($fp)
	add $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8696($fp)
	lw $t1, 0($t0)
	sw $t1, -8700($fp)
	lw $t0, -8700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -8704($fp)
	li $t0, 3
	sw $t0, -8708($fp)
	li $t0, 4
	lw $t1, -8708($fp)
	mul $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	lw $t1, -8704($fp)
	add $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, 0($t0)
	sw $t1, -8720($fp)
	lw $t0, -8720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -8724($fp)
	li $t0, 4
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
	lw $t0, -8740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -8744($fp)
	lw $t0, -8744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8748($fp)
	li $t0, 0
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
	addi $t0, $fp, -220
	sw $t0, -8768($fp)
	li $t0, 1
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
	addi $t0, $fp, -220
	sw $t0, -8788($fp)
	li $t0, 2
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
	addi $t0, $fp, -220
	sw $t0, -8808($fp)
	li $t0, 3
	sw $t0, -8812($fp)
	li $t0, 4
	lw $t1, -8812($fp)
	mul $t0, $t0, $t1
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	lw $t1, -8808($fp)
	add $t0, $t0, $t1
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	lw $t1, 0($t0)
	sw $t1, -8824($fp)
	lw $t0, -8824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8828($fp)
	li $t0, 4
	sw $t0, -8832($fp)
	li $t0, 4
	lw $t1, -8832($fp)
	mul $t0, $t0, $t1
	sw $t0, -8836($fp)
	lw $t0, -8836($fp)
	lw $t1, -8828($fp)
	add $t0, $t0, $t1
	sw $t0, -8840($fp)
	lw $t0, -8840($fp)
	lw $t1, 0($t0)
	sw $t1, -8844($fp)
	lw $t0, -8844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8848($fp)
	li $t0, 5
	sw $t0, -8852($fp)
	li $t0, 4
	lw $t1, -8852($fp)
	mul $t0, $t0, $t1
	sw $t0, -8856($fp)
	lw $t0, -8856($fp)
	lw $t1, -8848($fp)
	add $t0, $t0, $t1
	sw $t0, -8860($fp)
	lw $t0, -8860($fp)
	lw $t1, 0($t0)
	sw $t1, -8864($fp)
	lw $t0, -8864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8868($fp)
	li $t0, 6
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
	lw $t0, -8884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1952($fp)
	sw $t0, -8888($fp)
	lw $t0, -8888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1964($fp)
	sw $t0, -8892($fp)
	lw $t0, -8892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -8896($fp)
	li $t0, 0
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
	addi $t0, $fp, -240
	sw $t0, -8916($fp)
	li $t0, 1
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
	addi $t0, $fp, -240
	sw $t0, -8936($fp)
	li $t0, 2
	sw $t0, -8940($fp)
	li $t0, 4
	lw $t1, -8940($fp)
	mul $t0, $t0, $t1
	sw $t0, -8944($fp)
	lw $t0, -8944($fp)
	lw $t1, -8936($fp)
	add $t0, $t0, $t1
	sw $t0, -8948($fp)
	lw $t0, -8948($fp)
	lw $t1, 0($t0)
	sw $t1, -8952($fp)
	lw $t0, -8952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -8956($fp)
	li $t0, 3
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
	addi $t0, $fp, -240
	sw $t0, -8976($fp)
	li $t0, 4
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
	lw $t0, -2096($fp)
	sw $t0, -8996($fp)
	lw $t0, -8996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2108($fp)
	sw $t0, -9000($fp)
	lw $t0, -9000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -9004($fp)
	li $t0, 0
	sw $t0, -9008($fp)
	li $t0, 4
	lw $t1, -9008($fp)
	mul $t0, $t0, $t1
	sw $t0, -9012($fp)
	lw $t0, -9012($fp)
	lw $t1, -9004($fp)
	add $t0, $t0, $t1
	sw $t0, -9016($fp)
	lw $t0, -9016($fp)
	lw $t1, 0($t0)
	sw $t1, -9020($fp)
	lw $t0, -9020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -9024($fp)
	li $t0, 1
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
	addi $t0, $fp, -260
	sw $t0, -9044($fp)
	li $t0, 2
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
	addi $t0, $fp, -260
	sw $t0, -9064($fp)
	li $t0, 3
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
	lw $t0, -9080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -9084($fp)
	li $t0, 4
	sw $t0, -9088($fp)
	li $t0, 4
	lw $t1, -9088($fp)
	mul $t0, $t0, $t1
	sw $t0, -9092($fp)
	lw $t0, -9092($fp)
	lw $t1, -9084($fp)
	add $t0, $t0, $t1
	sw $t0, -9096($fp)
	lw $t0, -9096($fp)
	lw $t1, 0($t0)
	sw $t1, -9100($fp)
	lw $t0, -9100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2240($fp)
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2252($fp)
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2264($fp)
	sw $t0, -9112($fp)
	lw $t0, -9112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2276($fp)
	sw $t0, -9116($fp)
	lw $t0, -9116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2288($fp)
	sw $t0, -9120($fp)
	lw $t0, -9120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -9124($fp)
	li $t0, 0
	sw $t0, -9128($fp)
	li $t0, 4
	lw $t1, -9128($fp)
	mul $t0, $t0, $t1
	sw $t0, -9132($fp)
	lw $t0, -9132($fp)
	lw $t1, -9124($fp)
	add $t0, $t0, $t1
	sw $t0, -9136($fp)
	lw $t0, -9136($fp)
	lw $t1, 0($t0)
	sw $t1, -9140($fp)
	lw $t0, -9140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -9144($fp)
	li $t0, 1
	sw $t0, -9148($fp)
	li $t0, 4
	lw $t1, -9148($fp)
	mul $t0, $t0, $t1
	sw $t0, -9152($fp)
	lw $t0, -9152($fp)
	lw $t1, -9144($fp)
	add $t0, $t0, $t1
	sw $t0, -9156($fp)
	lw $t0, -9156($fp)
	lw $t1, 0($t0)
	sw $t1, -9160($fp)
	lw $t0, -9160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -9164($fp)
	li $t0, 2
	sw $t0, -9168($fp)
	li $t0, 4
	lw $t1, -9168($fp)
	mul $t0, $t0, $t1
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	lw $t1, -9164($fp)
	add $t0, $t0, $t1
	sw $t0, -9176($fp)
	lw $t0, -9176($fp)
	lw $t1, 0($t0)
	sw $t1, -9180($fp)
	lw $t0, -9180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -276
	sw $t0, -9184($fp)
	li $t0, 3
	sw $t0, -9188($fp)
	li $t0, 4
	lw $t1, -9188($fp)
	mul $t0, $t0, $t1
	sw $t0, -9192($fp)
	lw $t0, -9192($fp)
	lw $t1, -9184($fp)
	add $t0, $t0, $t1
	sw $t0, -9196($fp)
	lw $t0, -9196($fp)
	lw $t1, 0($t0)
	sw $t1, -9200($fp)
	lw $t0, -9200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -9204($fp)
	lw $t0, -9204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -9208($fp)
	lw $t0, -9208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9212($fp)
	lw $t0, -860($fp)
	sw $t0, -9216($fp)
	lw $t1, -9216($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label794
label794:
	li $t0, 1
	sw $t0, -9212($fp)
label795:
	li $t0, 0
	lw $t1, -9212($fp)
	sub $t0, $t0, $t1
	sw $t0, -9220($fp)
	lw $ra, -4($fp)
	lw $v0, -9220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1624
	li $t0, 30585
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 52562
	sw $t0, -60($fp)
	addi $t0, $fp, -12
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
	li $t0, 39466
	sw $t0, -84($fp)
	addi $t0, $fp, -12
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
	li $t0, 8981
	sw $t0, -108($fp)
	addi $t0, $fp, -44
	sw $t0, -112($fp)
	li $t0, 0
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
	li $t0, 32636
	sw $t0, -132($fp)
	addi $t0, $fp, -44
	sw $t0, -136($fp)
	li $t0, 1
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
	li $t0, 64279
	sw $t0, -156($fp)
	addi $t0, $fp, -44
	sw $t0, -160($fp)
	li $t0, 2
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
	li $t0, 452
	sw $t0, -180($fp)
	addi $t0, $fp, -44
	sw $t0, -184($fp)
	li $t0, 3
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
	li $t0, 55942
	sw $t0, -204($fp)
	addi $t0, $fp, -44
	sw $t0, -208($fp)
	li $t0, 4
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
	li $t0, 38149
	sw $t0, -228($fp)
	addi $t0, $fp, -44
	sw $t0, -232($fp)
	li $t0, 5
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
	li $t0, 6336
	sw $t0, -252($fp)
	addi $t0, $fp, -44
	sw $t0, -256($fp)
	li $t0, 6
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
	li $t0, 17138
	sw $t0, -276($fp)
	addi $t0, $fp, -44
	sw $t0, -280($fp)
	li $t0, 7
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
	li $t0, 49116
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 44632
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 28019
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 0
	sw $t0, -336($fp)
	li $t0, 0
	sw $t0, -340($fp)
	li $t0, 29221
	sw $t0, -344($fp)
	li $t0, 0
	lw $t1, -344($fp)
	sub $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label798
label798:
	li $t0, 1
	sw $t0, -340($fp)
label799:
	lw $t0, -52($fp)
	sw $t0, -352($fp)
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -340($fp)
	lw $t1, -356($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -316($fp)
	sw $t0, -364($fp)
	li $t0, 0
	lw $t1, -364($fp)
	sub $t0, $t0, $t1
	sw $t0, -368($fp)
	li $t0, 43265
	sw $t0, -372($fp)
	lw $t0, -368($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	li $t0, 20735
	sw $t0, -380($fp)
	li $t0, 0
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -376($fp)
	lw $t1, -384($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t1, -360($fp)
	lw $t2, -388($fp)
	beq $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -336($fp)
label797:
	li $t0, 6529
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 11698
	sw $t0, -440($fp)
	addi $t0, $fp, -424
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
	li $t0, 52013
	sw $t0, -464($fp)
	addi $t0, $fp, -424
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
	li $t0, 12920
	sw $t0, -488($fp)
	addi $t0, $fp, -424
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
	li $t0, 52698
	sw $t0, -512($fp)
	addi $t0, $fp, -424
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
	li $t0, 14594
	sw $t0, -536($fp)
	addi $t0, $fp, -424
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
	li $t0, 49470
	sw $t0, -560($fp)
	addi $t0, $fp, -424
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
	li $t0, 46414
	sw $t0, -584($fp)
	addi $t0, $fp, -424
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
	li $t0, 57107
	sw $t0, -608($fp)
	addi $t0, $fp, -424
	sw $t0, -612($fp)
	li $t0, 7
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
	li $t0, 40933
	sw $t0, -632($fp)
	addi $t0, $fp, -424
	sw $t0, -636($fp)
	li $t0, 8
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
	li $t0, 9544
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 41654
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -304($fp)
	sw $t0, -680($fp)
	li $t0, 3749
	sw $t0, -684($fp)
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -688($fp)
	lw $t0, -328($fp)
	sw $t0, -692($fp)
	lw $t0, -688($fp)
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	li $t0, 22933
	sw $t0, -700($fp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -700($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -704($fp)
	addi $sp, $sp, 12
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label800
	j label801
label800:
	li $t0, 0
	sw $t0, -708($fp)
	li $t0, 0
	sw $t0, -712($fp)
	addi $t0, $fp, -12
	sw $t0, -716($fp)
	li $t0, 1
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
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label808
label808:
	li $t0, 1
	sw $t0, -712($fp)
label809:
	li $t0, 43215
	sw $t0, -736($fp)
	li $t0, 0
	lw $t1, -736($fp)
	sub $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t1, -712($fp)
	lw $t2, -740($fp)
	blt $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -708($fp)
label807:
	lw $t0, -672($fp)
	sw $t0, -744($fp)
	lw $t0, -660($fp)
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	mul $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t1, -708($fp)
	lw $t2, -752($fp)
	bge $t1, $t2, label803
	j label804
label803:
	li $t0, 15684
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 42596
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 41959
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 16137
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 33002
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label810
	j label812
label812:
	li $t0, 0
	sw $t0, -812($fp)
	lw $t0, -672($fp)
	sw $t0, -816($fp)
	li $t0, 63688
	sw $t0, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label814
label815:
	li $t0, 1569
	sw $t0, -828($fp)
	lw $t1, -828($fp)
	li $t2, 0
	bne $t1, $t2, label813
	j label814
label813:
	li $t0, 1
	sw $t0, -812($fp)
label814:
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 22473
	sw $t0, -836($fp)
	li $t0, 50140
	sw $t0, -840($fp)
	lw $t1, -836($fp)
	lw $t2, -840($fp)
	bgt $t1, $t2, label818
	j label817
label818:
	lw $t0, -316($fp)
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label816
	j label817
label816:
	li $t0, 1
	sw $t0, -832($fp)
label817:
	addi $t0, $fp, -44
	sw $t0, -848($fp)
	lw $t0, -316($fp)
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
	li $t0, 14572
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -876($fp)
	addi $sp, $sp, 16
	lw $t1, -876($fp)
	li $t2, 0
	bne $t1, $t2, label810
	j label811
label810:
	li $t0, 1
	sw $t0, -804($fp)
label811:
	li $t0, 0
	sw $t0, -880($fp)
	li $t0, 0
	sw $t0, -884($fp)
	lw $t0, -660($fp)
	sw $t0, -888($fp)
	lw $t0, -304($fp)
	sw $t0, -892($fp)
	lw $t0, -888($fp)
	lw $t1, -892($fp)
	mul $t0, $t0, $t1
	sw $t0, -896($fp)
	li $t0, 56532
	sw $t0, -900($fp)
	lw $t1, -896($fp)
	lw $t2, -900($fp)
	beq $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -884($fp)
label823:
	lw $t0, -672($fp)
	sw $t0, -904($fp)
	lw $t0, -796($fp)
	sw $t0, -908($fp)
	li $t0, 33903
	sw $t0, -912($fp)
	lw $t0, -908($fp)
	lw $t1, -912($fp)
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	li $t0, 33358
	sw $t0, -920($fp)
	li $t0, 12623
	sw $t0, -924($fp)
	li $t0, 27373
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -932($fp)
	li $t0, 44834
	sw $t0, -936($fp)
	lw $t0, -932($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -944($fp)
	addi $sp, $sp, 24
	lw $t1, -944($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label820
label821:
	lw $t0, -672($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -952($fp)
	lw $t0, -760($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -960($fp)
	li $t0, 19835
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -968($fp)
	lw $t0, -784($fp)
	sw $t0, -972($fp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -976($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -44
	sw $t0, -980($fp)
	lw $t0, -328($fp)
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
	lw $t0, -976($fp)
	lw $t1, -996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label820
label819:
	li $t0, 1
	sw $t0, -880($fp)
label820:
label804:
label801:
label824:
	li $t0, 46823
	sw $t0, -1004($fp)
	li $t0, 0
	lw $t1, -1004($fp)
	sub $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t1, -1008($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label826
label825:
	li $t0, 0
	sw $t0, -1012($fp)
	lw $t0, -316($fp)
	sw $t0, -1016($fp)
	li $t0, 0
	sw $t0, -1020($fp)
	li $t0, 43694
	sw $t0, -1024($fp)
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -1020($fp)
label830:
	addi $t0, $fp, -424
	sw $t0, -1028($fp)
	lw $t0, -328($fp)
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
	lw $t0, -316($fp)
	sw $t0, -1048($fp)
	lw $t0, -1044($fp)
	lw $t1, -1048($fp)
	sub $t0, $t0, $t1
	sw $t0, -1052($fp)
	li $t0, 34430
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -1060($fp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1064($fp)
	addi $sp, $sp, 12
	lw $t0, -1020($fp)
	lw $t1, -1064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1068($fp)
	lw $t1, -1016($fp)
	lw $t2, -1068($fp)
	bge $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -1012($fp)
label828:
	lw $ra, -4($fp)
	lw $v0, -1012($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label824
label826:
	lw $t0, -432($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -424
	sw $t0, -1076($fp)
	li $t0, 0
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
	addi $t0, $fp, -424
	sw $t0, -1096($fp)
	li $t0, 1
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
	addi $t0, $fp, -424
	sw $t0, -1116($fp)
	li $t0, 2
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
	addi $t0, $fp, -424
	sw $t0, -1136($fp)
	li $t0, 3
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
	addi $t0, $fp, -424
	sw $t0, -1156($fp)
	li $t0, 4
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
	addi $t0, $fp, -424
	sw $t0, -1176($fp)
	li $t0, 5
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
	addi $t0, $fp, -424
	sw $t0, -1196($fp)
	li $t0, 6
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
	addi $t0, $fp, -424
	sw $t0, -1216($fp)
	li $t0, 7
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
	addi $t0, $fp, -424
	sw $t0, -1236($fp)
	li $t0, 8
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
	lw $t0, -660($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	addi $t0, $fp, -12
	sw $t0, -1272($fp)
	lw $t0, -304($fp)
	sw $t0, -1276($fp)
	li $t0, 4
	lw $t1, -1276($fp)
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t1, -1272($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	lw $t1, 0($t0)
	sw $t1, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label835
	j label834
label834:
	li $t0, 1
	sw $t0, -1268($fp)
label835:
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1292($fp)
	addi $t0, $fp, -44
	sw $t0, -1296($fp)
	lw $t0, -328($fp)
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
	lw $t1, -1316($fp)
	li $t2, 0
	bne $t1, $t2, label831
	j label833
label833:
	addi $t0, $fp, -44
	sw $t0, -1320($fp)
	li $t0, 5
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
	lw $t0, -304($fp)
	sw $t0, -1340($fp)
	lw $t0, -432($fp)
	sw $t0, -1344($fp)
	lw $t0, -1340($fp)
	lw $t1, -1344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1348($fp)
	lw $t1, -1336($fp)
	lw $t2, -1348($fp)
	bne $t1, $t2, label831
	j label832
label831:
	li $t0, 1
	sw $t0, -1264($fp)
label832:
	lw $ra, -4($fp)
	lw $v0, -1264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -52($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1356($fp)
	li $t0, 0
	sw $t0, -1360($fp)
	li $t0, 4
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1376($fp)
	li $t0, 1
	sw $t0, -1380($fp)
	li $t0, 4
	lw $t1, -1380($fp)
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, 0($t0)
	sw $t1, -1392($fp)
	lw $t0, -1392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	li $t0, 4
	lw $t1, -1400($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, -1396($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, 0($t0)
	sw $t1, -1412($fp)
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1416($fp)
	li $t0, 1
	sw $t0, -1420($fp)
	li $t0, 4
	lw $t1, -1420($fp)
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, 0($t0)
	sw $t1, -1432($fp)
	lw $t0, -1432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1436($fp)
	li $t0, 2
	sw $t0, -1440($fp)
	li $t0, 4
	lw $t1, -1440($fp)
	mul $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	lw $t1, 0($t0)
	sw $t1, -1452($fp)
	lw $t0, -1452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1456($fp)
	li $t0, 3
	sw $t0, -1460($fp)
	li $t0, 4
	lw $t1, -1460($fp)
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, -1456($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, 0($t0)
	sw $t1, -1472($fp)
	lw $t0, -1472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1476($fp)
	li $t0, 4
	sw $t0, -1480($fp)
	li $t0, 4
	lw $t1, -1480($fp)
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	lw $t0, -1492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1496($fp)
	li $t0, 5
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
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1536($fp)
	li $t0, 7
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
	lw $t0, -304($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1568($fp)
	addi $t0, $fp, -44
	sw $t0, -1572($fp)
	addi $t0, $fp, -12
	sw $t0, -1576($fp)
	lw $t0, -304($fp)
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
	li $t0, 26001
	sw $t0, -1596($fp)
	lw $t0, -1592($fp)
	lw $t1, -1596($fp)
	sub $t0, $t0, $t1
	sw $t0, -1600($fp)
	li $t0, 4
	lw $t1, -1600($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	li $t0, 0
	sw $t0, -1616($fp)
	lw $t0, -328($fp)
	sw $t0, -1620($fp)
	li $t0, 0
	lw $t1, -1620($fp)
	sub $t0, $t0, $t1
	sw $t0, -1624($fp)
	li $t0, 0
	lw $t1, -1624($fp)
	sub $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label838
label838:
	li $t0, 1
	sw $t0, -1616($fp)
label839:
	lw $t1, -1612($fp)
	lw $t2, -1616($fp)
	ble $t1, $t2, label836
	j label837
label836:
	li $t0, 1
	sw $t0, -1568($fp)
label837:
	lw $ra, -4($fp)
	lw $v0, -1568($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -80
	li $t0, 6154
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 34117
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	sw $t0, -32($fp)
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -40($fp)
	li $t0, 37866
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	lw $t1, -44($fp)
	sub $t0, $t0, $t1
	sw $t0, -48($fp)
	li $t0, 0
	sw $t0, -52($fp)
	li $t0, 2119
	sw $t0, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	sub $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label841
label842:
	li $t0, 29087
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label841
label840:
	li $t0, 1
	sw $t0, -52($fp)
label841:
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -72($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 8823
	sw $t0, -84($fp)
	lw $ra, -4($fp)
	lw $v0, -84($fp)
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
