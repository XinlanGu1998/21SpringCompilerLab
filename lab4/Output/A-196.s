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
	addi $sp, $sp, -776
	li $t0, 59237
	sw $t0, -44($fp)
	addi $t0, $fp, -40
	sw $t0, -48($fp)
	li $t0, 0
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
	li $t0, 19226
	sw $t0, -68($fp)
	addi $t0, $fp, -40
	sw $t0, -72($fp)
	li $t0, 1
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
	li $t0, 50444
	sw $t0, -92($fp)
	addi $t0, $fp, -40
	sw $t0, -96($fp)
	li $t0, 2
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
	li $t0, 53069
	sw $t0, -116($fp)
	addi $t0, $fp, -40
	sw $t0, -120($fp)
	li $t0, 3
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
	li $t0, 28913
	sw $t0, -140($fp)
	addi $t0, $fp, -40
	sw $t0, -144($fp)
	li $t0, 4
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
	li $t0, 22553
	sw $t0, -164($fp)
	addi $t0, $fp, -40
	sw $t0, -168($fp)
	li $t0, 5
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
	li $t0, 57129
	sw $t0, -188($fp)
	addi $t0, $fp, -40
	sw $t0, -192($fp)
	li $t0, 6
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
	li $t0, 60800
	sw $t0, -212($fp)
	addi $t0, $fp, -40
	sw $t0, -216($fp)
	li $t0, 7
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
	li $t0, 51331
	sw $t0, -236($fp)
	addi $t0, $fp, -40
	sw $t0, -240($fp)
	li $t0, 8
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
	li $t0, 39481
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 59206
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 7996
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	lw $t0, -276($fp)
	sw $t0, -304($fp)
	lw $t0, -276($fp)
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -276($fp)
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -288($fp)
	sw $t0, -324($fp)
	lw $t1, -320($fp)
	lw $t2, -324($fp)
	ble $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -300($fp)
label124:
	li $t0, 15185
	sw $t0, -328($fp)
	li $t0, 37995
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -288($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -344($fp)
	li $t0, 65451
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -352($fp)
	li $t0, 0
	sw $t0, -356($fp)
	li $t0, 21925
	sw $t0, -360($fp)
	li $t0, 0
	lw $t1, -360($fp)
	sub $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label125:
	li $t0, 1
	sw $t0, -356($fp)
label126:
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -368($fp)
	addi $sp, $sp, 16
	lw $t0, -336($fp)
	lw $t1, -368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -372($fp)
	lw $t1, -300($fp)
	lw $t2, -372($fp)
	beq $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -296($fp)
label122:
	li $t0, 13736
	sw $t0, -376($fp)
	lw $t0, -264($fp)
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 31536
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	add $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, 4($fp)
	sw $t0, -396($fp)
	li $t0, 59706
	sw $t0, -400($fp)
	li $t0, 0
	lw $t1, -400($fp)
	sub $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -288($fp)
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	li $t0, 12642
	sw $t0, -416($fp)
	li $t0, 0
	lw $t1, -416($fp)
	sub $t0, $t0, $t1
	sw $t0, -420($fp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -424($fp)
	addi $sp, $sp, 16
	lw $t0, -392($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -432($fp)
	li $t0, 0
	sw $t0, -436($fp)
	li $t0, 56903
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, -276($fp)
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -444($fp)
label130:
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	li $t0, 0
	sw $t0, -456($fp)
	li $t0, 43979
	sw $t0, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label132
label134:
	lw $t0, 12($fp)
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label133:
	li $t0, 11261
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -456($fp)
label132:
	li $t0, 0
	sw $t0, -472($fp)
	li $t0, 60696
	sw $t0, -476($fp)
	li $t0, 13447
	sw $t0, -480($fp)
	lw $t0, -476($fp)
	lw $t1, -480($fp)
	mul $t0, $t0, $t1
	sw $t0, -484($fp)
	li $t0, 49895
	sw $t0, -488($fp)
	lw $t1, -484($fp)
	lw $t2, -488($fp)
	blt $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -472($fp)
label136:
	li $t0, 0
	sw $t0, -492($fp)
	lw $t0, -276($fp)
	sw $t0, -496($fp)
	li $t0, 49881
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label139
label139:
	li $t0, 1794
	sw $t0, -508($fp)
	lw $t1, -508($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -492($fp)
label138:
	addi $sp, $sp, -4
	lw $t0, -456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -512($fp)
	addi $sp, $sp, 16
	lw $t1, -452($fp)
	lw $t2, -512($fp)
	bgt $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -436($fp)
label128:
	li $t0, 0
	sw $t0, -516($fp)
	li $t0, 57274
	sw $t0, -520($fp)
	lw $t1, -520($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -516($fp)
label141:
	li $t0, 0
	sw $t0, -524($fp)
	addi $t0, $fp, -40
	sw $t0, -528($fp)
	li $t0, 3
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
	bne $t1, $t2, label143
	j label142
label142:
	li $t0, 1
	sw $t0, -524($fp)
label143:
	lw $t0, -516($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -548($fp)
	addi $t0, $fp, -40
	sw $t0, -552($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -572($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -592($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -612($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -632($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -652($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -672($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -692($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -712($fp)
	li $t0, 8
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
	lw $t0, -264($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -744($fp)
	addi $t0, $fp, -40
	sw $t0, -748($fp)
	li $t0, 0
	sw $t0, -752($fp)
	lw $t0, -288($fp)
	sw $t0, -756($fp)
	lw $t1, -756($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label148
label148:
	lw $t0, -288($fp)
	sw $t0, -760($fp)
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -752($fp)
label147:
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, 0($t0)
	sw $t1, -772($fp)
	li $t0, 0
	lw $t1, -772($fp)
	sub $t0, $t0, $t1
	sw $t0, -776($fp)
	li $t0, 50975
	sw $t0, -780($fp)
	lw $t1, -776($fp)
	lw $t2, -780($fp)
	blt $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -744($fp)
label145:
	lw $ra, -4($fp)
	lw $v0, -744($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -56
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, 8($fp)
	sw $t0, -12($fp)
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label152
label152:
	lw $t0, 8($fp)
	sw $t0, -16($fp)
	li $t0, 58618
	sw $t0, -20($fp)
	lw $t0, -16($fp)
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, 8($fp)
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	lw $t1, -28($fp)
	sub $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t1, -32($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label151:
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, 4($fp)
	sw $t0, -40($fp)
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label153:
	li $t0, 1
	sw $t0, -36($fp)
label154:
	li $t0, 44520
	sw $t0, -44($fp)
	lw $t0, -36($fp)
	lw $t1, -44($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -48($fp)
	li $t0, 38508
	sw $t0, -52($fp)
	lw $t0, 8($fp)
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -60($fp)
	lw $t1, -48($fp)
	lw $t2, -60($fp)
	beq $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -8($fp)
label150:
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
	addi $sp, $sp, -4140
	li $t0, 21995
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
	li $t0, 1538
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
	li $t0, 30101
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
	li $t0, 17259
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
	li $t0, 52869
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
	li $t0, 4046
	sw $t0, -176($fp)
	addi $t0, $fp, -28
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
	li $t0, 10930
	sw $t0, -200($fp)
	addi $t0, $fp, -52
	sw $t0, -204($fp)
	li $t0, 0
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
	li $t0, 60865
	sw $t0, -224($fp)
	addi $t0, $fp, -52
	sw $t0, -228($fp)
	li $t0, 1
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
	li $t0, 19232
	sw $t0, -248($fp)
	addi $t0, $fp, -52
	sw $t0, -252($fp)
	li $t0, 2
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
	li $t0, 48925
	sw $t0, -272($fp)
	addi $t0, $fp, -52
	sw $t0, -276($fp)
	li $t0, 3
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
	li $t0, 17254
	sw $t0, -296($fp)
	addi $t0, $fp, -52
	sw $t0, -300($fp)
	li $t0, 4
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
	li $t0, 19147
	sw $t0, -320($fp)
	addi $t0, $fp, -52
	sw $t0, -324($fp)
	li $t0, 5
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
	li $t0, 62661
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 48790
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 31789
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	addi $t0, $fp, -28
	sw $t0, -380($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -400($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -420($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -440($fp)
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
	sw $t0, -600($fp)
	li $t0, 5
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
	lw $t0, -348($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 56832
	sw $t0, -632($fp)
	lw $ra, -4($fp)
	lw $v0, -632($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 40158
	sw $t0, -720($fp)
	addi $t0, $fp, -664
	sw $t0, -724($fp)
	li $t0, 0
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
	li $t0, 16134
	sw $t0, -744($fp)
	addi $t0, $fp, -664
	sw $t0, -748($fp)
	li $t0, 1
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
	li $t0, 58626
	sw $t0, -768($fp)
	addi $t0, $fp, -664
	sw $t0, -772($fp)
	li $t0, 2
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
	li $t0, 35318
	sw $t0, -792($fp)
	addi $t0, $fp, -664
	sw $t0, -796($fp)
	li $t0, 3
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
	li $t0, 29582
	sw $t0, -816($fp)
	addi $t0, $fp, -664
	sw $t0, -820($fp)
	li $t0, 4
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
	li $t0, 42985
	sw $t0, -840($fp)
	addi $t0, $fp, -664
	sw $t0, -844($fp)
	li $t0, 5
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
	li $t0, 13762
	sw $t0, -864($fp)
	addi $t0, $fp, -664
	sw $t0, -868($fp)
	li $t0, 6
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
	li $t0, 40843
	sw $t0, -888($fp)
	addi $t0, $fp, -664
	sw $t0, -892($fp)
	li $t0, 7
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
	li $t0, 34723
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 53153
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 34920
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 20162
	sw $t0, -948($fp)
	addi $t0, $fp, -676
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
	li $t0, 46235
	sw $t0, -972($fp)
	addi $t0, $fp, -676
	sw $t0, -976($fp)
	li $t0, 1
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
	li $t0, 13904
	sw $t0, -996($fp)
	addi $t0, $fp, -676
	sw $t0, -1000($fp)
	li $t0, 2
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
	li $t0, 58671
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 2695
	sw $t0, -1032($fp)
	addi $t0, $fp, -716
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
	li $t0, 15442
	sw $t0, -1056($fp)
	addi $t0, $fp, -716
	sw $t0, -1060($fp)
	li $t0, 1
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
	li $t0, 23236
	sw $t0, -1080($fp)
	addi $t0, $fp, -716
	sw $t0, -1084($fp)
	li $t0, 2
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
	li $t0, 19954
	sw $t0, -1104($fp)
	addi $t0, $fp, -716
	sw $t0, -1108($fp)
	li $t0, 3
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
	li $t0, 2775
	sw $t0, -1128($fp)
	addi $t0, $fp, -716
	sw $t0, -1132($fp)
	li $t0, 4
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
	li $t0, 27283
	sw $t0, -1152($fp)
	addi $t0, $fp, -716
	sw $t0, -1156($fp)
	li $t0, 5
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
	li $t0, 30884
	sw $t0, -1176($fp)
	addi $t0, $fp, -716
	sw $t0, -1180($fp)
	li $t0, 6
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
	li $t0, 63641
	sw $t0, -1200($fp)
	addi $t0, $fp, -716
	sw $t0, -1204($fp)
	li $t0, 7
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
	li $t0, 46515
	sw $t0, -1224($fp)
	addi $t0, $fp, -716
	sw $t0, -1228($fp)
	li $t0, 8
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
	li $t0, 14273
	sw $t0, -1248($fp)
	addi $t0, $fp, -716
	sw $t0, -1252($fp)
	li $t0, 9
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
	li $t0, 15359
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 126
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 11399
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	addi $t0, $fp, -716
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	li $t0, 0
	sw $t0, -1316($fp)
	li $t0, 0
	sw $t0, -1320($fp)
	lw $t0, -1288($fp)
	sw $t0, -1324($fp)
	li $t0, 64150
	sw $t0, -1328($fp)
	lw $t1, -1324($fp)
	lw $t2, -1328($fp)
	ble $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -1320($fp)
label163:
	lw $t0, -940($fp)
	sw $t0, -1332($fp)
	lw $t1, -1320($fp)
	lw $t2, -1332($fp)
	beq $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1316($fp)
label161:
	addi $t0, $fp, -664
	sw $t0, -1336($fp)
	lw $t0, -916($fp)
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
	lw $t1, -1316($fp)
	lw $t2, -1352($fp)
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1312($fp)
label159:
	li $t0, 4
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, -1308($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t1, 0($t0)
	sw $t1, -1364($fp)
	lw $t1, -1364($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 31915
	sw $t0, -1368($fp)
label156:
	li $t0, 2695
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 38772
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	li $t0, 48050
	sw $t0, -1412($fp)
	addi $t0, $fp, -1384
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
	li $t0, 61321
	sw $t0, -1436($fp)
	addi $t0, $fp, -1384
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
	li $t0, 8554
	sw $t0, -1460($fp)
	addi $t0, $fp, -1384
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
	li $t0, 12096
	sw $t0, -1484($fp)
	addi $t0, $fp, -1384
	sw $t0, -1488($fp)
	li $t0, 3
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
	li $t0, 38770
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	li $t0, 22316
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	li $t0, 52939
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	li $t0, 7957
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 9934
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	li $t0, 22323
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	li $t0, 28119
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
	li $t0, 56169
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	li $t0, 36228
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	li $t0, 21254
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -1624($fp)
	li $t0, 58864
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	lw $t0, -1392($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1404($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1384
	sw $t0, -1648($fp)
	li $t0, 0
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
	addi $t0, $fp, -1384
	sw $t0, -1668($fp)
	li $t0, 1
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
	addi $t0, $fp, -1384
	sw $t0, -1688($fp)
	li $t0, 2
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
	addi $t0, $fp, -1384
	sw $t0, -1708($fp)
	li $t0, 3
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
	lw $t0, -1512($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1524($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1536($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1548($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1560($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1572($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1584($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1596($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1608($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1620($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1632($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1772($fp)
	addi $t0, $fp, -52
	sw $t0, -1776($fp)
	lw $t0, -1596($fp)
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
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label164:
	li $t0, 1
	sw $t0, -1772($fp)
label165:
	li $t0, 0
	lw $t1, -1772($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 0
	lw $t1, -1796($fp)
	sub $t0, $t0, $t1
	sw $t0, -1800($fp)
	li $t0, 51670
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $ra, -4($fp)
	lw $v0, -1808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label166:
	lw $t0, -1608($fp)
	sw $t0, -1812($fp)
	li $t0, 0
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	li $t0, 0
	lw $t1, -1816($fp)
	sub $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label168
label169:
	lw $t0, 20($fp)
	sw $t0, -1824($fp)
	li $t0, 0
	sw $t0, -1828($fp)
	lw $t0, -1276($fp)
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -1828($fp)
label171:
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 0
	sw $t0, -1840($fp)
	lw $t0, -360($fp)
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1840($fp)
label173:
	addi $t0, $fp, -52
	sw $t0, -1848($fp)
	li $t0, 2
	sw $t0, -1852($fp)
	li $t0, 4
	lw $t1, -1852($fp)
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, 0($t0)
	sw $t1, -1864($fp)
	li $t0, 6238
	sw $t0, -1868($fp)
	lw $t0, -1864($fp)
	lw $t1, -1868($fp)
	sub $t0, $t0, $t1
	sw $t0, -1872($fp)
	li $t0, 0
	sw $t0, -1876($fp)
	lw $t0, -372($fp)
	sw $t0, -1880($fp)
	lw $t0, -360($fp)
	sw $t0, -1884($fp)
	lw $t1, -1880($fp)
	lw $t2, -1884($fp)
	blt $t1, $t2, label176
	j label175
label176:
	li $t0, 44491
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -1876($fp)
label175:
	li $t0, 0
	sw $t0, -1892($fp)
	lw $t0, -1536($fp)
	sw $t0, -1896($fp)
	lw $t0, -928($fp)
	sw $t0, -1900($fp)
	lw $t0, -1896($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label179
label179:
	lw $t0, -1276($fp)
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -1892($fp)
label178:
	li $t0, 0
	sw $t0, -1912($fp)
	lw $t0, -1596($fp)
	sw $t0, -1916($fp)
	lw $t0, -1524($fp)
	sw $t0, -1920($fp)
	lw $t1, -1916($fp)
	lw $t2, -1920($fp)
	bge $t1, $t2, label182
	j label181
label182:
	lw $t0, -360($fp)
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1912($fp)
label181:
	addi $sp, $sp, -4
	lw $t0, -1872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1928($fp)
	addi $sp, $sp, 20
	li $t0, 44167
	sw $t0, -1932($fp)
	lw $t0, -1928($fp)
	lw $t1, -1932($fp)
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1840($fp)
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
	li $t0, 34868
	sw $t0, -1944($fp)
	li $t0, 12274
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	addi $t0, $fp, -28
	sw $t0, -1960($fp)
	li $t0, 0
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
	li $t0, 33349
	sw $t0, -1980($fp)
	li $t0, 0
	lw $t1, -1980($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -372($fp)
	sw $t0, -1988($fp)
	lw $t0, -1984($fp)
	lw $t1, -1988($fp)
	add $t0, $t0, $t1
	sw $t0, -1992($fp)
	li $t0, 0
	sw $t0, -1996($fp)
	li $t0, 59823
	sw $t0, -2000($fp)
	lw $t0, -1392($fp)
	sw $t0, -2004($fp)
	lw $t1, -2000($fp)
	lw $t2, -2004($fp)
	bne $t1, $t2, label185
	j label187
label187:
	lw $t0, -360($fp)
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -1996($fp)
label186:
	li $t0, 5663
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	li $t0, 23595
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label189
label191:
	lw $t0, -1392($fp)
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label190:
	lw $t0, -1572($fp)
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -2016($fp)
label189:
	li $t0, 49511
	sw $t0, -2032($fp)
	li $t0, 15029
	sw $t0, -2036($fp)
	lw $t0, -2032($fp)
	lw $t1, -2036($fp)
	sub $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -1632($fp)
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	sub $t0, $t0, $t1
	sw $t0, -2048($fp)
	li $t0, 1272
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	lw $t0, -916($fp)
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label193
label194:
	li $t0, 5095
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -2060($fp)
label193:
	li $t0, 41554
	sw $t0, -2072($fp)
	lw $t0, -1536($fp)
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2080($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2084($fp)
	addi $sp, $sp, 24
	li $t0, 12094
	sw $t0, -2088($fp)
	lw $t0, -2084($fp)
	lw $t1, -2088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	li $t0, 13868
	sw $t0, -2100($fp)
	li $t0, 0
	lw $t1, -2100($fp)
	sub $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label197:
	lw $t0, -1632($fp)
	sw $t0, -2108($fp)
	lw $t1, -2108($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -2096($fp)
label196:
	li $t0, 0
	sw $t0, -2112($fp)
	lw $t0, -1548($fp)
	sw $t0, -2116($fp)
	lw $t0, -1572($fp)
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label200:
	lw $t0, 4($fp)
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -2112($fp)
label199:
	li $t0, 0
	sw $t0, -2132($fp)
	li $t0, 2784
	sw $t0, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label204:
	lw $t0, -940($fp)
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label203
label203:
	li $t0, 48315
	sw $t0, -2144($fp)
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -2132($fp)
label202:
	li $t0, 0
	sw $t0, -2148($fp)
	li $t0, 1772
	sw $t0, -2152($fp)
	lw $t0, -1392($fp)
	sw $t0, -2156($fp)
	lw $t0, -2152($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label206
label207:
	lw $t0, -1404($fp)
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -2148($fp)
label206:
	li $t0, 0
	sw $t0, -2168($fp)
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
	li $t0, 39760
	sw $t0, -2192($fp)
	lw $t1, -2188($fp)
	lw $t2, -2192($fp)
	bgt $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -2168($fp)
label209:
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2196($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2196($fp)
	sub $t0, $t0, $t1
	sw $t0, -2200($fp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2200($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2204($fp)
	addi $sp, $sp, 24
	lw $t0, -360($fp)
	sw $t0, -2208($fp)
	lw $t0, -2204($fp)
	lw $t1, -2208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2212($fp)
	addi $t0, $fp, -52
	sw $t0, -2216($fp)
	lw $t0, -348($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2236($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	li $t0, 0
	sw $t0, -2248($fp)
	li $t0, 4304
	sw $t0, -2252($fp)
	lw $t0, -372($fp)
	sw $t0, -2256($fp)
	lw $t1, -2252($fp)
	lw $t2, -2256($fp)
	beq $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -2248($fp)
label216:
	lw $t0, -1524($fp)
	sw $t0, -2260($fp)
	lw $t1, -2248($fp)
	lw $t2, -2260($fp)
	beq $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -2244($fp)
label214:
	li $t0, 0
	sw $t0, -2264($fp)
	li $t0, 0
	sw $t0, -2268($fp)
	lw $t0, -1560($fp)
	sw $t0, -2272($fp)
	li $t0, 2374
	sw $t0, -2276($fp)
	lw $t1, -2272($fp)
	lw $t2, -2276($fp)
	ble $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -2268($fp)
label220:
	li $t0, 52879
	sw $t0, -2280($fp)
	lw $t1, -2268($fp)
	lw $t2, -2280($fp)
	beq $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -2264($fp)
label218:
	lw $t0, -1024($fp)
	sw $t0, -2284($fp)
	li $t0, 58441
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2292($fp)
	lw $t0, -1536($fp)
	sw $t0, -2296($fp)
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2300($fp)
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 52753
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label221:
	li $t0, 1
	sw $t0, -2304($fp)
label222:
	lw $t0, -916($fp)
	sw $t0, -2312($fp)
	lw $t0, -2304($fp)
	lw $t1, -2312($fp)
	mul $t0, $t0, $t1
	sw $t0, -2316($fp)
	li $t0, 52551
	sw $t0, -2320($fp)
	addi $sp, $sp, -4
	lw $t0, -2244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2324($fp)
	addi $sp, $sp, 24
	lw $t1, -2324($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label212
label212:
	li $t0, 988
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -2240($fp)
label211:
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2332($fp)
	addi $sp, $sp, 16
	li $t0, 12304
	sw $t0, -2336($fp)
	lw $t1, -2332($fp)
	lw $t2, -2336($fp)
	beq $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -1956($fp)
label184:
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2340($fp)
	addi $sp, $sp, 16
	lw $t0, -1940($fp)
	lw $t1, -2340($fp)
	add $t0, $t0, $t1
	sw $t0, -2344($fp)
	j label166
label168:
	addi $t0, $fp, -52
	sw $t0, -2348($fp)
	li $t0, 0
	sw $t0, -2352($fp)
	addi $t0, $fp, -52
	sw $t0, -2356($fp)
	lw $t0, -1548($fp)
	sw $t0, -2360($fp)
	li $t0, 4
	lw $t1, -2360($fp)
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, 0($t0)
	sw $t1, -2372($fp)
	li $t0, 0
	sw $t0, -2376($fp)
	lw $t0, -1300($fp)
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -2376($fp)
label226:
	lw $t1, -2372($fp)
	lw $t2, -2376($fp)
	beq $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -2352($fp)
label224:
	li $t0, 4
	lw $t1, -2352($fp)
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, -2348($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	li $t0, 18542
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -2440($fp)
	li $t0, 56442
	sw $t0, -2444($fp)
	addi $t0, $fp, -2428
	sw $t0, -2448($fp)
	li $t0, 0
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
	li $t0, 21883
	sw $t0, -2468($fp)
	addi $t0, $fp, -2428
	sw $t0, -2472($fp)
	li $t0, 1
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
	li $t0, 5759
	sw $t0, -2492($fp)
	addi $t0, $fp, -2428
	sw $t0, -2496($fp)
	li $t0, 2
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
	li $t0, 49347
	sw $t0, -2516($fp)
	addi $t0, $fp, -2428
	sw $t0, -2520($fp)
	li $t0, 3
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2520($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2516($fp)
	lw $t1, -2532($fp)
	sw $t0, 0($t1)
	lw $t0, -2532($fp)
	lw $t1, 0($t0)
	sw $t1, -2536($fp)
	li $t0, 24257
	sw $t0, -2540($fp)
	addi $t0, $fp, -2428
	sw $t0, -2544($fp)
	li $t0, 4
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
	li $t0, 58638
	sw $t0, -2564($fp)
	addi $t0, $fp, -2428
	sw $t0, -2568($fp)
	li $t0, 5
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
	li $t0, 53651
	sw $t0, -2588($fp)
	addi $t0, $fp, -2428
	sw $t0, -2592($fp)
	li $t0, 6
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2592($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2588($fp)
	lw $t1, -2604($fp)
	sw $t0, 0($t1)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	li $t0, 25246
	sw $t0, -2612($fp)
	addi $t0, $fp, -2428
	sw $t0, -2616($fp)
	li $t0, 7
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2616($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2612($fp)
	lw $t1, -2628($fp)
	sw $t0, 0($t1)
	lw $t0, -2628($fp)
	lw $t1, 0($t0)
	sw $t1, -2632($fp)
	li $t0, 12360
	sw $t0, -2636($fp)
	addi $t0, $fp, -2428
	sw $t0, -2640($fp)
	li $t0, 8
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
	li $t0, 60650
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -2668($fp)
	addi $t0, $fp, -52
	sw $t0, -2672($fp)
	li $t0, 0
	sw $t0, -2676($fp)
	lw $t0, -916($fp)
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label227:
	li $t0, 1
	sw $t0, -2676($fp)
label228:
	li $t0, 4
	lw $t1, -2676($fp)
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, 0($t0)
	sw $t1, -2692($fp)
	li $t0, 0
	sw $t0, -2696($fp)
	li $t0, 65006
	sw $t0, -2700($fp)
	li $t0, 14133
	sw $t0, -2704($fp)
	lw $t0, -1560($fp)
	sw $t0, -2708($fp)
	lw $t0, -2704($fp)
	lw $t1, -2708($fp)
	sub $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t1, -2700($fp)
	lw $t2, -2712($fp)
	beq $t1, $t2, label229
	j label231
label231:
	li $t0, 0
	sw $t0, -2716($fp)
	lw $t0, -1548($fp)
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label232:
	li $t0, 1
	sw $t0, -2716($fp)
label233:
	lw $t0, -2436($fp)
	sw $t0, -2724($fp)
	lw $t0, -2716($fp)
	lw $t1, -2724($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	li $t0, 0
	sw $t0, -2732($fp)
	li $t0, 63434
	sw $t0, -2736($fp)
	li $t0, 47785
	sw $t0, -2740($fp)
	lw $t1, -2736($fp)
	lw $t2, -2740($fp)
	blt $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -2732($fp)
label235:
	lw $t1, -2728($fp)
	lw $t2, -2732($fp)
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -2696($fp)
label230:
	addi $t0, $fp, -2428
	sw $t0, -2744($fp)
	li $t0, 1
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
	sw $t0, -2764($fp)
	addi $t0, $fp, -28
	sw $t0, -2768($fp)
	lw $t0, -940($fp)
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
	lw $t0, -2664($fp)
	sw $t0, -2788($fp)
	li $t0, 52881
	sw $t0, -2792($fp)
	lw $t0, -2788($fp)
	lw $t1, -2792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2796($fp)
	li $t0, 0
	lw $t1, -2796($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2784($fp)
	lw $t1, -2800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2804($fp)
	li $t0, 0
	sw $t0, -2808($fp)
	lw $t0, -928($fp)
	sw $t0, -2812($fp)
	li $t0, 52869
	sw $t0, -2816($fp)
	lw $t1, -2812($fp)
	lw $t2, -2816($fp)
	bge $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -2808($fp)
label239:
	li $t0, 2374
	sw $t0, -2820($fp)
	li $t0, 0
	sw $t0, -2824($fp)
	lw $t0, 8($fp)
	sw $t0, -2828($fp)
	li $t0, 23427
	sw $t0, -2832($fp)
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label242:
	lw $t0, -372($fp)
	sw $t0, -2840($fp)
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -2824($fp)
label241:
	li $t0, 0
	sw $t0, -2844($fp)
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, -916($fp)
	sw $t0, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label245:
	li $t0, 1
	sw $t0, -2848($fp)
label246:
	li $t0, 29273
	sw $t0, -2856($fp)
	lw $t1, -2848($fp)
	lw $t2, -2856($fp)
	blt $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -2844($fp)
label244:
	addi $sp, $sp, -4
	lw $t0, -2808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2844($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2860($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t1, -2804($fp)
	lw $t2, -2864($fp)
	blt $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -2764($fp)
label237:
label247:
	li $t0, 0
	sw $t0, -2868($fp)
	lw $t0, 4($fp)
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -2868($fp)
label251:
	li $t0, 0
	sw $t0, -2876($fp)
	lw $t0, -916($fp)
	sw $t0, -2880($fp)
	lw $t1, -2880($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label252:
	li $t0, 1
	sw $t0, -2876($fp)
label253:
	lw $t0, -2868($fp)
	lw $t1, -2876($fp)
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	li $t0, 0
	lw $t1, -2884($fp)
	sub $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	lw $t0, 16($fp)
	sw $t0, -2896($fp)
	li $t0, 0
	sw $t0, -2900($fp)
	lw $t0, -372($fp)
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -2900($fp)
label258:
	lw $t0, -2896($fp)
	lw $t1, -2900($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	li $t0, 0
	lw $t1, -2908($fp)
	sub $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -1608($fp)
	sw $t0, -2916($fp)
	lw $t0, -1572($fp)
	sw $t0, -2920($fp)
	lw $t0, -2916($fp)
	lw $t1, -2920($fp)
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2912($fp)
	lw $t1, -2924($fp)
	sub $t0, $t0, $t1
	sw $t0, -2928($fp)
	li $t0, 35521
	sw $t0, -2932($fp)
	li $t0, 0
	lw $t1, -2932($fp)
	sub $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2928($fp)
	lw $t1, -2936($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
label259:
	li $t0, 8037
	sw $t0, -2944($fp)
	lw $t1, -2944($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 27578
	sw $t0, -2948($fp)
	li $t0, 15638
	sw $t0, -2952($fp)
	lw $t0, -2948($fp)
	lw $t1, -2952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -372($fp)
	sw $t0, -2960($fp)
	lw $t0, -2956($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	li $t0, 0
	sw $t0, -2968($fp)
	li $t0, 7029
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label263
label265:
	lw $t0, -1548($fp)
	sw $t0, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label264:
	lw $t0, -916($fp)
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -2968($fp)
label263:
	addi $t0, $fp, -716
	sw $t0, -2984($fp)
	lw $t0, -1572($fp)
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
	li $t0, 0
	sw $t0, -3004($fp)
	lw $t0, -1560($fp)
	sw $t0, -3008($fp)
	li $t0, 3334
	sw $t0, -3012($fp)
	lw $t1, -3008($fp)
	lw $t2, -3012($fp)
	beq $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -3004($fp)
label267:
	addi $t0, $fp, -676
	sw $t0, -3016($fp)
	lw $t0, -916($fp)
	sw $t0, -3020($fp)
	li $t0, 4
	lw $t1, -3020($fp)
	mul $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, 0($t0)
	sw $t1, -3032($fp)
	li $t0, 47156
	sw $t0, -3036($fp)
	lw $t0, -3032($fp)
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3044($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -3044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label259
label261:
	j label256
label255:
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 0
	sw $t0, -3052($fp)
	addi $t0, $fp, -1384
	sw $t0, -3056($fp)
	li $t0, 0
	sw $t0, -3060($fp)
	lw $t0, -1288($fp)
	sw $t0, -3064($fp)
	lw $t1, -3064($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label272:
	li $t0, 1
	sw $t0, -3060($fp)
label273:
	li $t0, 4
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, -3056($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
	lw $t1, -3076($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -3052($fp)
label271:
	li $t0, 0
	sw $t0, -3080($fp)
	lw $t0, -1584($fp)
	sw $t0, -3084($fp)
	li $t0, 0
	lw $t1, -3084($fp)
	sub $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -3080($fp)
label275:
	lw $t0, -1572($fp)
	sw $t0, -3092($fp)
	li $t0, 0
	lw $t1, -3092($fp)
	sub $t0, $t0, $t1
	sw $t0, -3096($fp)
	li $t0, 0
	lw $t1, -3096($fp)
	sub $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -1524($fp)
	sw $t0, -3104($fp)
	li $t0, 34180
	sw $t0, -3108($fp)
	lw $t0, -3104($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	li $t0, 0
	sw $t0, -3116($fp)
	lw $t0, -1512($fp)
	sw $t0, -3120($fp)
	li $t0, 62446
	sw $t0, -3124($fp)
	lw $t0, -3120($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -916($fp)
	sw $t0, -3132($fp)
	lw $t1, -3128($fp)
	lw $t2, -3132($fp)
	bgt $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -3116($fp)
label277:
	li $t0, 0
	sw $t0, -3136($fp)
	lw $t0, -372($fp)
	sw $t0, -3140($fp)
	lw $t0, -916($fp)
	sw $t0, -3144($fp)
	lw $t0, -3140($fp)
	lw $t1, -3144($fp)
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	li $t0, 19303
	sw $t0, -3152($fp)
	lw $t1, -3148($fp)
	lw $t2, -3152($fp)
	bgt $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -3136($fp)
label279:
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3136($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3156($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3160($fp)
	lw $t0, -1620($fp)
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -3160($fp)
label281:
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t1, -3052($fp)
	lw $t2, -3168($fp)
	blt $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -3048($fp)
label269:
label256:
	j label247
label249:
	li $t0, 0
	sw $t0, -3172($fp)
	lw $t0, -372($fp)
	sw $t0, -3176($fp)
	lw $t1, -3176($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -3172($fp)
label283:
	li $t0, 0
	lw $t1, -3172($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	li $t0, 10209
	sw $t0, -3184($fp)
	li $t0, 0
	lw $t1, -3184($fp)
	sub $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3180($fp)
	lw $t1, -3188($fp)
	sub $t0, $t0, $t1
	sw $t0, -3192($fp)
	addi $t0, $fp, -664
	sw $t0, -3196($fp)
	li $t0, 0
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
	addi $t0, $fp, -664
	sw $t0, -3216($fp)
	li $t0, 1
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
	addi $t0, $fp, -664
	sw $t0, -3236($fp)
	li $t0, 2
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
	addi $t0, $fp, -664
	sw $t0, -3256($fp)
	li $t0, 3
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
	addi $t0, $fp, -664
	sw $t0, -3276($fp)
	li $t0, 4
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
	lw $t0, -3292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -664
	sw $t0, -3296($fp)
	li $t0, 5
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
	lw $t0, -3312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -664
	sw $t0, -3316($fp)
	li $t0, 6
	sw $t0, -3320($fp)
	li $t0, 4
	lw $t1, -3320($fp)
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	lw $t0, -3332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -664
	sw $t0, -3336($fp)
	li $t0, 7
	sw $t0, -3340($fp)
	li $t0, 4
	lw $t1, -3340($fp)
	mul $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, -3336($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	lw $t1, 0($t0)
	sw $t1, -3352($fp)
	lw $t0, -3352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -676
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
	lw $t0, -3384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -676
	sw $t0, -3388($fp)
	li $t0, 1
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
	addi $t0, $fp, -676
	sw $t0, -3408($fp)
	li $t0, 2
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
	lw $t0, -1024($fp)
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -716
	sw $t0, -3432($fp)
	li $t0, 0
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
	addi $t0, $fp, -716
	sw $t0, -3452($fp)
	li $t0, 1
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
	addi $t0, $fp, -716
	sw $t0, -3472($fp)
	li $t0, 2
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
	addi $t0, $fp, -716
	sw $t0, -3492($fp)
	li $t0, 3
	sw $t0, -3496($fp)
	li $t0, 4
	lw $t1, -3496($fp)
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, 0($t0)
	sw $t1, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -716
	sw $t0, -3512($fp)
	li $t0, 4
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
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -716
	sw $t0, -3532($fp)
	li $t0, 5
	sw $t0, -3536($fp)
	li $t0, 4
	lw $t1, -3536($fp)
	mul $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, -3532($fp)
	add $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, 0($t0)
	sw $t1, -3548($fp)
	lw $t0, -3548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -716
	sw $t0, -3552($fp)
	li $t0, 6
	sw $t0, -3556($fp)
	li $t0, 4
	lw $t1, -3556($fp)
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, -3552($fp)
	add $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, 0($t0)
	sw $t1, -3568($fp)
	lw $t0, -3568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -716
	sw $t0, -3572($fp)
	li $t0, 7
	sw $t0, -3576($fp)
	li $t0, 4
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, -3572($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	lw $t0, -3588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -716
	sw $t0, -3592($fp)
	li $t0, 8
	sw $t0, -3596($fp)
	li $t0, 4
	lw $t1, -3596($fp)
	mul $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	lw $t1, -3592($fp)
	add $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, 0($t0)
	sw $t1, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -716
	sw $t0, -3612($fp)
	li $t0, 9
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
	lw $t0, -1276($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 18793
	sw $t0, -3644($fp)
	li $t0, 39939
	sw $t0, -3648($fp)
	lw $t0, -3644($fp)
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $ra, -4($fp)
	lw $v0, -3652($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3656($fp)
	li $t0, 0
	sw $t0, -3660($fp)
	addi $t0, $fp, -676
	sw $t0, -3664($fp)
	li $t0, 2
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
	bne $t1, $t2, label287
	j label286
label286:
	li $t0, 1
	sw $t0, -3660($fp)
label287:
	li $t0, 33041
	sw $t0, -3688($fp)
	lw $t1, -3660($fp)
	lw $t2, -3688($fp)
	ble $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -3656($fp)
label285:
	lw $t0, -1300($fp)
	sw $t0, -3692($fp)
	li $t0, 0
	sw $t0, -3696($fp)
	li $t0, 0
	sw $t0, -3700($fp)
	lw $t0, 12($fp)
	sw $t0, -3704($fp)
	lw $t0, -1288($fp)
	sw $t0, -3708($fp)
	lw $t0, -3704($fp)
	lw $t1, -3708($fp)
	add $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t1, -3712($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label292
label292:
	lw $t0, -1024($fp)
	sw $t0, -3716($fp)
	lw $t1, -3716($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -3700($fp)
label291:
	li $t0, 0
	sw $t0, -3720($fp)
	li $t0, 47671
	sw $t0, -3724($fp)
	lw $t0, 8($fp)
	sw $t0, -3728($fp)
	lw $t0, -3724($fp)
	lw $t1, -3728($fp)
	add $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -928($fp)
	sw $t0, -3736($fp)
	lw $t1, -3732($fp)
	lw $t2, -3736($fp)
	beq $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -3720($fp)
label294:
	lw $t0, 16($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -3744($fp)
	addi $sp, $sp, -4
	lw $t0, -3700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3748($fp)
	addi $sp, $sp, 16
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -3696($fp)
label289:
	lw $t0, -3692($fp)
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -360($fp)
	sw $t0, -3756($fp)
	addi $t0, $fp, -28
	sw $t0, -3760($fp)
	li $t0, 0
	sw $t0, -3764($fp)
	li $t0, 4
	lw $t1, -3764($fp)
	mul $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	lw $t1, 0($t0)
	sw $t1, -3776($fp)
	lw $t0, -3776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3780($fp)
	li $t0, 1
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
	lw $t0, -3796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3800($fp)
	li $t0, 2
	sw $t0, -3804($fp)
	li $t0, 4
	lw $t1, -3804($fp)
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
	lw $t0, -3816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3820($fp)
	li $t0, 3
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
	lw $t0, -3836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3840($fp)
	li $t0, 4
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
	lw $t0, -3856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3860($fp)
	li $t0, 5
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
	lw $t0, -3876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3880($fp)
	li $t0, 0
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
	lw $t0, -3896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3900($fp)
	li $t0, 1
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
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3920($fp)
	li $t0, 2
	sw $t0, -3924($fp)
	li $t0, 4
	lw $t1, -3924($fp)
	mul $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, -3920($fp)
	add $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, 0($t0)
	sw $t1, -3936($fp)
	lw $t0, -3936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3940($fp)
	li $t0, 3
	sw $t0, -3944($fp)
	li $t0, 4
	lw $t1, -3944($fp)
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, 0($t0)
	sw $t1, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3960($fp)
	li $t0, 4
	sw $t0, -3964($fp)
	li $t0, 4
	lw $t1, -3964($fp)
	mul $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	lw $t1, -3960($fp)
	add $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, 0($t0)
	sw $t1, -3976($fp)
	lw $t0, -3976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3980($fp)
	li $t0, 5
	sw $t0, -3984($fp)
	li $t0, 4
	lw $t1, -3984($fp)
	mul $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, -3980($fp)
	add $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	lw $t1, 0($t0)
	sw $t1, -3996($fp)
	lw $t0, -3996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4012($fp)
	li $t0, 0
	sw $t0, -4016($fp)
	li $t0, 4
	lw $t1, -4016($fp)
	mul $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	lw $t1, -4012($fp)
	add $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, 0($t0)
	sw $t1, -4028($fp)
	li $t0, 0
	lw $t1, -4028($fp)
	sub $t0, $t0, $t1
	sw $t0, -4032($fp)
	li $t0, 0
	lw $t1, -4032($fp)
	sub $t0, $t0, $t1
	sw $t0, -4036($fp)
	li $t0, 0
	sw $t0, -4040($fp)
	lw $t0, -348($fp)
	sw $t0, -4044($fp)
	lw $t0, -372($fp)
	sw $t0, -4048($fp)
	lw $t0, -4044($fp)
	lw $t1, -4048($fp)
	mul $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label297
label297:
	li $t0, 50017
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -4040($fp)
label296:
	li $t0, 0
	sw $t0, -4060($fp)
	li $t0, 0
	sw $t0, -4064($fp)
	li $t0, 40683
	sw $t0, -4068($fp)
	lw $t0, 16($fp)
	sw $t0, -4072($fp)
	lw $t1, -4068($fp)
	lw $t2, -4072($fp)
	bne $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -4064($fp)
label301:
	lw $t0, -360($fp)
	sw $t0, -4076($fp)
	lw $t1, -4064($fp)
	lw $t2, -4076($fp)
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -4060($fp)
label299:
	li $t0, 0
	sw $t0, -4080($fp)
	li $t0, 59535
	sw $t0, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label302:
	li $t0, 1
	sw $t0, -4080($fp)
label303:
	li $t0, 0
	lw $t1, -4080($fp)
	sub $t0, $t0, $t1
	sw $t0, -4088($fp)
	li $t0, 0
	sw $t0, -4092($fp)
	lw $t0, 16($fp)
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label304:
	li $t0, 1
	sw $t0, -4092($fp)
label305:
	li $t0, 0
	sw $t0, -4100($fp)
	lw $t0, -360($fp)
	sw $t0, -4104($fp)
	li $t0, 42785
	sw $t0, -4108($fp)
	lw $t1, -4104($fp)
	lw $t2, -4108($fp)
	bne $t1, $t2, label308
	j label307
label308:
	li $t0, 2231
	sw $t0, -4112($fp)
	lw $t1, -4112($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -4100($fp)
label307:
	addi $sp, $sp, -4
	lw $t0, -4040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4100($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4116($fp)
	addi $sp, $sp, 24
	lw $t0, -4036($fp)
	lw $t1, -4116($fp)
	sub $t0, $t0, $t1
	sw $t0, -4120($fp)
	addi $t0, $fp, -52
	sw $t0, -4124($fp)
	li $t0, 1
	sw $t0, -4128($fp)
	li $t0, 4
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	lw $t1, -4124($fp)
	add $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, 0($t0)
	sw $t1, -4140($fp)
	lw $t0, -4120($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $ra, -4($fp)
	lw $v0, -4144($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4700
	li $t0, 37362
	sw $t0, -164($fp)
	addi $t0, $fp, -20
	sw $t0, -168($fp)
	li $t0, 0
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
	li $t0, 51274
	sw $t0, -188($fp)
	addi $t0, $fp, -20
	sw $t0, -192($fp)
	li $t0, 1
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
	li $t0, 38026
	sw $t0, -212($fp)
	addi $t0, $fp, -20
	sw $t0, -216($fp)
	li $t0, 2
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
	li $t0, 39736
	sw $t0, -236($fp)
	addi $t0, $fp, -20
	sw $t0, -240($fp)
	li $t0, 3
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
	li $t0, 38607
	sw $t0, -260($fp)
	addi $t0, $fp, -36
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
	li $t0, 8012
	sw $t0, -284($fp)
	addi $t0, $fp, -36
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
	li $t0, 47774
	sw $t0, -308($fp)
	addi $t0, $fp, -36
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
	li $t0, 20227
	sw $t0, -332($fp)
	addi $t0, $fp, -36
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
	li $t0, 11346
	sw $t0, -356($fp)
	addi $t0, $fp, -72
	sw $t0, -360($fp)
	li $t0, 0
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
	li $t0, 54803
	sw $t0, -380($fp)
	addi $t0, $fp, -72
	sw $t0, -384($fp)
	li $t0, 1
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
	li $t0, 47806
	sw $t0, -404($fp)
	addi $t0, $fp, -72
	sw $t0, -408($fp)
	li $t0, 2
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
	li $t0, 26985
	sw $t0, -428($fp)
	addi $t0, $fp, -72
	sw $t0, -432($fp)
	li $t0, 3
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
	li $t0, 8570
	sw $t0, -452($fp)
	addi $t0, $fp, -72
	sw $t0, -456($fp)
	li $t0, 4
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
	li $t0, 44716
	sw $t0, -476($fp)
	addi $t0, $fp, -72
	sw $t0, -480($fp)
	li $t0, 5
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
	li $t0, 61165
	sw $t0, -500($fp)
	addi $t0, $fp, -72
	sw $t0, -504($fp)
	li $t0, 6
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
	li $t0, 18780
	sw $t0, -524($fp)
	addi $t0, $fp, -72
	sw $t0, -528($fp)
	li $t0, 7
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
	li $t0, 63510
	sw $t0, -548($fp)
	addi $t0, $fp, -72
	sw $t0, -552($fp)
	li $t0, 8
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
	li $t0, 35569
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 12800
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 41025
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 3074
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 60472
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 43786
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 48476
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 37721
	sw $t0, -656($fp)
	addi $t0, $fp, -80
	sw $t0, -660($fp)
	li $t0, 0
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
	li $t0, 46017
	sw $t0, -680($fp)
	addi $t0, $fp, -80
	sw $t0, -684($fp)
	li $t0, 1
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
	li $t0, 42475
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 12869
	sw $t0, -716($fp)
	addi $t0, $fp, -116
	sw $t0, -720($fp)
	li $t0, 0
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
	li $t0, 30498
	sw $t0, -740($fp)
	addi $t0, $fp, -116
	sw $t0, -744($fp)
	li $t0, 1
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
	li $t0, 64476
	sw $t0, -764($fp)
	addi $t0, $fp, -116
	sw $t0, -768($fp)
	li $t0, 2
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
	li $t0, 27468
	sw $t0, -788($fp)
	addi $t0, $fp, -116
	sw $t0, -792($fp)
	li $t0, 3
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
	li $t0, 2324
	sw $t0, -812($fp)
	addi $t0, $fp, -116
	sw $t0, -816($fp)
	li $t0, 4
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
	li $t0, 50214
	sw $t0, -836($fp)
	addi $t0, $fp, -116
	sw $t0, -840($fp)
	li $t0, 5
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
	li $t0, 65495
	sw $t0, -860($fp)
	addi $t0, $fp, -116
	sw $t0, -864($fp)
	li $t0, 6
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
	li $t0, 42061
	sw $t0, -884($fp)
	addi $t0, $fp, -116
	sw $t0, -888($fp)
	li $t0, 7
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
	li $t0, 23285
	sw $t0, -908($fp)
	addi $t0, $fp, -116
	sw $t0, -912($fp)
	li $t0, 8
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
	li $t0, 7971
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	li $t0, 24299
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 43512
	sw $t0, -956($fp)
	addi $t0, $fp, -120
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
	li $t0, 19317
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	li $t0, 13566
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 25782
	sw $t0, -1004($fp)
	addi $t0, $fp, -152
	sw $t0, -1008($fp)
	li $t0, 0
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
	li $t0, 46302
	sw $t0, -1028($fp)
	addi $t0, $fp, -152
	sw $t0, -1032($fp)
	li $t0, 1
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
	li $t0, 22136
	sw $t0, -1052($fp)
	addi $t0, $fp, -152
	sw $t0, -1056($fp)
	li $t0, 2
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
	li $t0, 4963
	sw $t0, -1076($fp)
	addi $t0, $fp, -152
	sw $t0, -1080($fp)
	li $t0, 3
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
	li $t0, 41932
	sw $t0, -1100($fp)
	addi $t0, $fp, -152
	sw $t0, -1104($fp)
	li $t0, 4
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
	li $t0, 40916
	sw $t0, -1124($fp)
	addi $t0, $fp, -152
	sw $t0, -1128($fp)
	li $t0, 5
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
	li $t0, 2937
	sw $t0, -1148($fp)
	addi $t0, $fp, -152
	sw $t0, -1152($fp)
	li $t0, 6
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
	li $t0, 11965
	sw $t0, -1172($fp)
	addi $t0, $fp, -152
	sw $t0, -1176($fp)
	li $t0, 7
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
	li $t0, 53717
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	li $t0, 43962
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 15039
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	li $t0, 48653
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	li $t0, 22212
	sw $t0, -1244($fp)
	addi $t0, $fp, -156
	sw $t0, -1248($fp)
	li $t0, 0
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
	li $t0, 63516
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 20838
	sw $t0, -1280($fp)
	addi $t0, $fp, -160
	sw $t0, -1284($fp)
	li $t0, 0
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1284($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1280($fp)
	lw $t1, -1296($fp)
	sw $t0, 0($t1)
	lw $t0, -1296($fp)
	lw $t1, 0($t0)
	sw $t1, -1300($fp)
	li $t0, 2693
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 40455
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 33707
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	li $t0, 33192
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	li $t0, 39395
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	li $t0, 61176
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 35516
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 24073
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 61135
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	li $t0, 12041
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	li $t0, 47358
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 3570
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 36340
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	lw $t0, -1224($fp)
	sw $t0, -1460($fp)
	li $t0, 25335
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t1, -1468($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 22887
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 0
	sw $t0, -1480($fp)
	lw $t0, 4($fp)
	sw $t0, -1484($fp)
	lw $t0, -1308($fp)
	sw $t0, -1488($fp)
	lw $t1, -1484($fp)
	lw $t2, -1488($fp)
	blt $t1, $t2, label317
	j label316
label317:
	lw $t0, -1440($fp)
	sw $t0, -1492($fp)
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -1480($fp)
label316:
	li $t0, 56080
	sw $t0, -1496($fp)
	lw $t0, -648($fp)
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -636($fp)
	sw $t0, -1508($fp)
	li $t0, 0
	sw $t0, -1512($fp)
	lw $t0, -1440($fp)
	sw $t0, -1516($fp)
	lw $t0, -648($fp)
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label320
label320:
	li $t0, 6507
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -1512($fp)
label319:
	lw $t0, -1440($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1536($fp)
	li $t0, 0
	sw $t0, -1540($fp)
	li $t0, 3654
	sw $t0, -1544($fp)
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label323
label323:
	lw $t0, -996($fp)
	sw $t0, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -1540($fp)
label322:
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1552($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1556($fp)
	lw $t0, -1236($fp)
	sw $t0, -1560($fp)
	li $t0, 0
	lw $t1, -1560($fp)
	sub $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -1556($fp)
label325:
	li $t0, 0
	sw $t0, -1568($fp)
	li $t0, 0
	sw $t0, -1572($fp)
	lw $t0, -1428($fp)
	sw $t0, -1576($fp)
	lw $t0, 16($fp)
	sw $t0, -1580($fp)
	lw $t1, -1576($fp)
	lw $t2, -1580($fp)
	blt $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -1572($fp)
label329:
	lw $t0, -624($fp)
	sw $t0, -1584($fp)
	lw $t1, -1572($fp)
	lw $t2, -1584($fp)
	bge $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -1568($fp)
label327:
	addi $t0, $fp, -72
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
	lw $t0, -1416($fp)
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1616($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1620($fp)
	addi $t0, $fp, -116
	sw $t0, -1624($fp)
	lw $t0, -1392($fp)
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
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label330:
	li $t0, 1
	sw $t0, -1620($fp)
label331:
	addi $sp, $sp, -4
	lw $t0, -1480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1644($fp)
	addi $sp, $sp, 24
	li $t0, 47424
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 7054
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label335
label335:
	li $t0, 18721
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label334
label334:
	li $t0, 59655
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -1656($fp)
label333:
	li $t0, 0
	sw $t0, -1672($fp)
	li $t0, 35604
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label336:
	li $t0, 1
	sw $t0, -1672($fp)
label337:
	li $t0, 37443
	sw $t0, -1680($fp)
	lw $t0, -1672($fp)
	lw $t1, -1680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	addi $t0, $fp, -20
	sw $t0, -1692($fp)
	li $t0, 3
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
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label338
label338:
	li $t0, 1
	sw $t0, -1688($fp)
label339:
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1712($fp)
	addi $sp, $sp, 16
	lw $t0, -1652($fp)
	lw $t1, -1712($fp)
	sub $t0, $t0, $t1
	sw $t0, -1716($fp)
	j label314
label313:
	li $t0, 5034
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	li $t0, 39560
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	addi $t0, $fp, -120
	sw $t0, -1744($fp)
	lw $t0, -1440($fp)
	sw $t0, -1748($fp)
	li $t0, 62349
	sw $t0, -1752($fp)
	lw $t0, -1748($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	li $t0, 4
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, 0($t0)
	sw $t1, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -1772($fp)
	li $t0, 45490
	sw $t0, -1776($fp)
	li $t0, 65521
	sw $t0, -1780($fp)
	li $t0, 0
	sw $t0, -1784($fp)
	li $t0, 3371
	sw $t0, -1788($fp)
	lw $t0, -1440($fp)
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label342
label342:
	lw $t0, -936($fp)
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -1784($fp)
label341:
	li $t0, 19349
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1808($fp)
	li $t0, 7731
	sw $t0, -1812($fp)
	li $t0, 30005
	sw $t0, -1816($fp)
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1820($fp)
	lw $t0, -1212($fp)
	sw $t0, -1824($fp)
	lw $t0, -1820($fp)
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1832($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1836($fp)
	li $t0, 2540
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -1836($fp)
label344:
	li $t0, 0
	sw $t0, -1844($fp)
	li $t0, 0
	sw $t0, -1848($fp)
	addi $t0, $fp, -160
	sw $t0, -1852($fp)
	lw $t0, -1416($fp)
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
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label347:
	li $t0, 1
	sw $t0, -1848($fp)
label348:
	lw $t0, -708($fp)
	sw $t0, -1872($fp)
	lw $t0, -1404($fp)
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	li $t0, 12027
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label351
label352:
	li $t0, 25245
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label351
label351:
	lw $t0, -1320($fp)
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -1884($fp)
label350:
	addi $t0, $fp, -120
	sw $t0, -1900($fp)
	lw $t0, -1736($fp)
	sw $t0, -1904($fp)
	li $t0, 4
	lw $t1, -1904($fp)
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, 0($t0)
	sw $t1, -1916($fp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1920($fp)
	addi $sp, $sp, 20
	lw $t0, -1320($fp)
	sw $t0, -1924($fp)
	lw $t1, -1920($fp)
	lw $t2, -1924($fp)
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -1844($fp)
label346:
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, -1392($fp)
	sw $t0, -1932($fp)
	li $t0, 43423
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
	li $t0, 64506
	sw $t0, -1944($fp)
	lw $t1, -1940($fp)
	lw $t2, -1944($fp)
	bne $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -1928($fp)
label354:
	addi $t0, $fp, -156
	sw $t0, -1948($fp)
	lw $t0, -1212($fp)
	sw $t0, -1952($fp)
	li $t0, 4
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, 0($t0)
	sw $t1, -1964($fp)
	li $t0, 0
	lw $t1, -1964($fp)
	sub $t0, $t0, $t1
	sw $t0, -1968($fp)
	addi $sp, $sp, -4
	lw $t0, -1836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1972($fp)
	addi $sp, $sp, 20
label314:
	j label311
label310:
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -1356($fp)
	sw $t0, -1980($fp)
	lw $t0, -1404($fp)
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	li $t0, 9132
	sw $t0, -1992($fp)
	lw $t1, -1988($fp)
	lw $t2, -1992($fp)
	bgt $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -1976($fp)
label356:
	addi $t0, $fp, -20
	sw $t0, -1996($fp)
	li $t0, 1
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
	li $t0, 26706
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2020($fp)
	addi $t0, $fp, -156
	sw $t0, -2024($fp)
	lw $t0, -588($fp)
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
	li $t0, 0
	lw $t1, -2040($fp)
	sub $t0, $t0, $t1
	sw $t0, -2044($fp)
	li $t0, 36162
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -2052($fp)
	lw $t0, -1440($fp)
	sw $t0, -2056($fp)
	lw $t0, -1200($fp)
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	li $t0, 32738
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 50580
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label360
label360:
	lw $t0, -1332($fp)
	sw $t0, -2080($fp)
	lw $t1, -2080($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label359
label359:
	li $t0, 25428
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -2072($fp)
label358:
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2088($fp)
	addi $sp, $sp, 24
	li $t0, 48367
	sw $t0, -2092($fp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2096($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2100($fp)
	lw $t0, -1452($fp)
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label361
label361:
	li $t0, 1
	sw $t0, -2100($fp)
label362:
	li $t0, 36878
	sw $t0, -2108($fp)
	lw $t0, -2100($fp)
	lw $t1, -2108($fp)
	sub $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -1212($fp)
	sw $t0, -2116($fp)
	li $t0, 0
	lw $t1, -2116($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	li $t0, 0
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
	li $t0, 0
	sw $t0, -2128($fp)
	li $t0, 0
	sw $t0, -2132($fp)
	lw $t0, -1416($fp)
	sw $t0, -2136($fp)
	li $t0, 716
	sw $t0, -2140($fp)
	lw $t1, -2136($fp)
	lw $t2, -2140($fp)
	ble $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -2132($fp)
label366:
	lw $t0, -708($fp)
	sw $t0, -2144($fp)
	lw $t1, -2132($fp)
	lw $t2, -2144($fp)
	bge $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -2128($fp)
label364:
	li $t0, 0
	sw $t0, -2148($fp)
	li $t0, 7877
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -2148($fp)
label368:
	li $t0, 0
	lw $t1, -2148($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 25045
	sw $t0, -2164($fp)
	li $t0, 15672
	sw $t0, -2168($fp)
	lw $t1, -2164($fp)
	lw $t2, -2168($fp)
	beq $t1, $t2, label369
	j label371
label371:
	li $t0, 62096
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -2160($fp)
label370:
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2176($fp)
	addi $sp, $sp, 20
	li $t0, 21988
	sw $t0, -2180($fp)
	lw $t0, -2176($fp)
	lw $t1, -2180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	li $t0, 0
	sw $t0, -2192($fp)
	li $t0, 55962
	sw $t0, -2196($fp)
	li $t0, 59556
	sw $t0, -2200($fp)
	lw $t1, -2196($fp)
	lw $t2, -2200($fp)
	beq $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -2192($fp)
label375:
	lw $t0, 16($fp)
	sw $t0, -2204($fp)
	lw $t1, -2192($fp)
	lw $t2, -2204($fp)
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -2188($fp)
label373:
	li $t0, 0
	sw $t0, -2208($fp)
	li $t0, 60585
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label376:
	li $t0, 1
	sw $t0, -2208($fp)
label377:
	li $t0, 13018
	sw $t0, -2216($fp)
	lw $t0, -2208($fp)
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, 16($fp)
	sw $t0, -2224($fp)
	li $t0, 0
	lw $t1, -2224($fp)
	sub $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -708($fp)
	sw $t0, -2232($fp)
	lw $t0, -2228($fp)
	lw $t1, -2232($fp)
	sub $t0, $t0, $t1
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	li $t0, 13033
	sw $t0, -2248($fp)
	li $t0, 12539
	sw $t0, -2252($fp)
	lw $t1, -2248($fp)
	lw $t2, -2252($fp)
	bgt $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -2244($fp)
label381:
	lw $t0, -948($fp)
	sw $t0, -2256($fp)
	lw $t1, -2244($fp)
	lw $t2, -2256($fp)
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -2240($fp)
label379:
	li $t0, 58726
	sw $t0, -2260($fp)
	lw $t0, 16($fp)
	sw $t0, -2264($fp)
	lw $t0, -2260($fp)
	lw $t1, -2264($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	li $t0, 57214
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	li $t0, 48564
	sw $t0, -2280($fp)
	li $t0, 0
	sw $t0, -2284($fp)
	li $t0, 13236
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label385
label385:
	lw $t0, -984($fp)
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label384
label384:
	li $t0, 49482
	sw $t0, -2296($fp)
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -2284($fp)
label383:
	li $t0, 0
	sw $t0, -2300($fp)
	lw $t0, 8($fp)
	sw $t0, -2304($fp)
	li $t0, 51751
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2312($fp)
	lw $t0, -1212($fp)
	sw $t0, -2316($fp)
	lw $t1, -2312($fp)
	lw $t2, -2316($fp)
	blt $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -2300($fp)
label387:
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2320($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2328($fp)
	addi $sp, $sp, 24
	lw $t0, -1368($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -2336($fp)
	li $t0, 9922
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	lw $t0, -1212($fp)
	sw $t0, -2352($fp)
	li $t0, 8201
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	sub $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -1200($fp)
	sw $t0, -2364($fp)
	lw $t1, -2360($fp)
	lw $t2, -2364($fp)
	beq $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -2348($fp)
label389:
	li $t0, 57631
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -2372($fp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2376($fp)
	addi $sp, $sp, 24
	lw $t0, -1368($fp)
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -2384($fp)
	li $t0, 0
	sw $t0, -2388($fp)
	addi $t0, $fp, -20
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
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label390
label390:
	li $t0, 1
	sw $t0, -2388($fp)
label391:
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2388($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2412($fp)
	addi $sp, $sp, 24
	li $t0, 40615
	sw $t0, -2416($fp)
	lw $t0, -2412($fp)
	lw $t1, -2416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2420($fp)
	li $t0, 0
	sw $t0, -2424($fp)
	li $t0, 21132
	sw $t0, -2428($fp)
	li $t0, 20188
	sw $t0, -2432($fp)
	lw $t1, -2428($fp)
	lw $t2, -2432($fp)
	bgt $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -2424($fp)
label393:
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2424($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2436($fp)
	addi $sp, $sp, 16
	lw $t0, -2096($fp)
	lw $t1, -2436($fp)
	mul $t0, $t0, $t1
	sw $t0, -2440($fp)
	addi $t0, $fp, -156
	sw $t0, -2444($fp)
	li $t0, 0
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
	li $t0, 60202
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	mul $t0, $t0, $t1
	sw $t0, -2468($fp)
	li $t0, 0
	sw $t0, -2472($fp)
	lw $t0, 12($fp)
	sw $t0, -2476($fp)
	li $t0, 51070
	sw $t0, -2480($fp)
	lw $t0, -2476($fp)
	lw $t1, -2480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label396:
	lw $t0, -948($fp)
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -2472($fp)
label395:
	li $t0, 0
	sw $t0, -2492($fp)
	lw $t0, -984($fp)
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label397
label397:
	li $t0, 1
	sw $t0, -2492($fp)
label398:
	li $t0, 0
	lw $t1, -2492($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2504($fp)
	addi $sp, $sp, 16
	lw $t0, -2440($fp)
	lw $t1, -2504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2508($fp)
label311:
	li $t0, 0
	sw $t0, -2512($fp)
	lw $t0, -1392($fp)
	sw $t0, -2516($fp)
	li $t0, 10332
	sw $t0, -2520($fp)
	lw $t1, -2516($fp)
	lw $t2, -2520($fp)
	ble $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -2512($fp)
label403:
	li $t0, 61349
	sw $t0, -2524($fp)
	li $t0, 26657
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2532($fp)
	li $t0, 0
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 0
	sw $t0, -2544($fp)
	li $t0, 35456
	sw $t0, -2548($fp)
	lw $t0, -1440($fp)
	sw $t0, -2552($fp)
	lw $t1, -2548($fp)
	lw $t2, -2552($fp)
	ble $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -2544($fp)
label407:
	li $t0, 18237
	sw $t0, -2556($fp)
	lw $t1, -2544($fp)
	lw $t2, -2556($fp)
	ble $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -2540($fp)
label405:
	li $t0, 0
	sw $t0, -2560($fp)
	lw $t0, -1416($fp)
	sw $t0, -2564($fp)
	lw $t0, -1344($fp)
	sw $t0, -2568($fp)
	lw $t1, -2564($fp)
	lw $t2, -2568($fp)
	bge $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -2560($fp)
label409:
	lw $t0, -648($fp)
	sw $t0, -2572($fp)
	lw $t0, -1320($fp)
	sw $t0, -2576($fp)
	lw $t0, -2572($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2584($fp)
	addi $sp, $sp, 24
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label399
label399:
	li $t0, 4015
	sw $t0, -2588($fp)
	lw $t0, -1212($fp)
	sw $t0, -2592($fp)
	lw $t0, -2588($fp)
	lw $t1, -2592($fp)
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -1212($fp)
	sw $t0, -2600($fp)
	li $t0, 0
	lw $t1, -2600($fp)
	sub $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2596($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 0
	sw $t0, -2612($fp)
	li $t0, 36580
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label416:
	addi $t0, $fp, -36
	sw $t0, -2620($fp)
	lw $t0, -648($fp)
	sw $t0, -2624($fp)
	li $t0, 4
	lw $t1, -2624($fp)
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, 0($t0)
	sw $t1, -2636($fp)
	li $t0, 0
	lw $t1, -2636($fp)
	sub $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t1, -2640($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label415
label415:
	li $t0, 0
	sw $t0, -2644($fp)
	lw $t0, -1272($fp)
	sw $t0, -2648($fp)
	li $t0, 62083
	sw $t0, -2652($fp)
	lw $t0, -2648($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -708($fp)
	sw $t0, -2660($fp)
	lw $t1, -2656($fp)
	lw $t2, -2660($fp)
	bgt $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -2644($fp)
label418:
	li $t0, 17251
	sw $t0, -2664($fp)
	li $t0, 20526
	sw $t0, -2668($fp)
	lw $t0, -2664($fp)
	lw $t1, -2668($fp)
	sub $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t1, -2644($fp)
	lw $t2, -2672($fp)
	ble $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -2612($fp)
label414:
	lw $ra, -4($fp)
	lw $v0, -2612($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label412
label411:
	li $t0, 45111
	sw $t0, -2716($fp)
	addi $t0, $fp, -2712
	sw $t0, -2720($fp)
	li $t0, 0
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
	li $t0, 10441
	sw $t0, -2740($fp)
	addi $t0, $fp, -2712
	sw $t0, -2744($fp)
	li $t0, 1
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
	li $t0, 12204
	sw $t0, -2764($fp)
	addi $t0, $fp, -2712
	sw $t0, -2768($fp)
	li $t0, 2
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
	li $t0, 58144
	sw $t0, -2788($fp)
	addi $t0, $fp, -2712
	sw $t0, -2792($fp)
	li $t0, 3
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
	li $t0, 22980
	sw $t0, -2812($fp)
	addi $t0, $fp, -2712
	sw $t0, -2816($fp)
	li $t0, 4
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2816($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2812($fp)
	lw $t1, -2828($fp)
	sw $t0, 0($t1)
	lw $t0, -2828($fp)
	lw $t1, 0($t0)
	sw $t1, -2832($fp)
	li $t0, 7254
	sw $t0, -2836($fp)
	addi $t0, $fp, -2712
	sw $t0, -2840($fp)
	li $t0, 5
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2840($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2836($fp)
	lw $t1, -2852($fp)
	sw $t0, 0($t1)
	lw $t0, -2852($fp)
	lw $t1, 0($t0)
	sw $t1, -2856($fp)
	li $t0, 5627
	sw $t0, -2860($fp)
	addi $t0, $fp, -2712
	sw $t0, -2864($fp)
	li $t0, 6
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2864($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2860($fp)
	lw $t1, -2876($fp)
	sw $t0, 0($t1)
	lw $t0, -2876($fp)
	lw $t1, 0($t0)
	sw $t1, -2880($fp)
	li $t0, 13407
	sw $t0, -2884($fp)
	addi $t0, $fp, -2712
	sw $t0, -2888($fp)
	li $t0, 7
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2888($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2884($fp)
	lw $t1, -2900($fp)
	sw $t0, 0($t1)
	lw $t0, -2900($fp)
	lw $t1, 0($t0)
	sw $t1, -2904($fp)
	li $t0, 1274
	sw $t0, -2908($fp)
	addi $t0, $fp, -2712
	sw $t0, -2912($fp)
	li $t0, 8
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2912($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2908($fp)
	lw $t1, -2924($fp)
	sw $t0, 0($t1)
	lw $t0, -2924($fp)
	lw $t1, 0($t0)
	sw $t1, -2928($fp)
	li $t0, 30672
	sw $t0, -2932($fp)
	addi $t0, $fp, -2712
	sw $t0, -2936($fp)
	li $t0, 9
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2936($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2932($fp)
	lw $t1, -2948($fp)
	sw $t0, 0($t1)
	lw $t0, -2948($fp)
	lw $t1, 0($t0)
	sw $t1, -2952($fp)
	li $t0, 29079
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -2964($fp)
	li $t0, 63370
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	sw $t0, -2976($fp)
	li $t0, 0
	sw $t0, -2980($fp)
	li $t0, 0
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 38549
	sw $t0, -2996($fp)
	lw $t0, -2960($fp)
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3004($fp)
	lw $t0, 8($fp)
	sw $t0, -3008($fp)
	lw $t1, -3004($fp)
	lw $t2, -3008($fp)
	ble $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -2992($fp)
label426:
	li $t0, 0
	sw $t0, -3012($fp)
	lw $t0, -1272($fp)
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label427:
	li $t0, 1
	sw $t0, -3012($fp)
label428:
	lw $t1, -2992($fp)
	lw $t2, -3012($fp)
	bge $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -2988($fp)
label424:
	li $t0, 29795
	sw $t0, -3020($fp)
	li $t0, 0
	lw $t1, -3020($fp)
	sub $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t1, -2988($fp)
	lw $t2, -3024($fp)
	bgt $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -2984($fp)
label422:
	lw $t0, -1272($fp)
	sw $t0, -3028($fp)
	li $t0, 0
	sw $t0, -3032($fp)
	li $t0, 5357
	sw $t0, -3036($fp)
	li $t0, 27952
	sw $t0, -3040($fp)
	lw $t0, -3036($fp)
	lw $t1, -3040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3044($fp)
	li $t0, 64723
	sw $t0, -3048($fp)
	lw $t0, -3044($fp)
	lw $t1, -3048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3052($fp)
	li $t0, 0
	sw $t0, -3056($fp)
	addi $t0, $fp, -156
	sw $t0, -3060($fp)
	lw $t0, -948($fp)
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
	lw $t0, 16($fp)
	sw $t0, -3080($fp)
	lw $t1, -3076($fp)
	lw $t2, -3080($fp)
	beq $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -3056($fp)
label432:
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 1138
	sw $t0, -3088($fp)
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label434
label435:
	lw $t0, -1368($fp)
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -3084($fp)
label434:
	li $t0, 0
	sw $t0, -3100($fp)
	lw $t0, -1392($fp)
	sw $t0, -3104($fp)
	lw $t0, -1356($fp)
	sw $t0, -3108($fp)
	lw $t0, -3104($fp)
	lw $t1, -3108($fp)
	sub $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -1440($fp)
	sw $t0, -3116($fp)
	lw $t1, -3112($fp)
	lw $t2, -3116($fp)
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -3100($fp)
label437:
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3120($fp)
	addi $sp, $sp, 20
	li $t0, 24
	sw $t0, -3124($fp)
	lw $t1, -3120($fp)
	lw $t2, -3124($fp)
	beq $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -3032($fp)
label430:
	li $t0, 0
	sw $t0, -3128($fp)
	lw $t0, 16($fp)
	sw $t0, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -3128($fp)
label439:
	addi $t0, $fp, -2712
	sw $t0, -3136($fp)
	lw $t0, -936($fp)
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
	lw $t0, -2972($fp)
	sw $t0, -3156($fp)
	lw $t0, -3152($fp)
	lw $t1, -3156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3160($fp)
	addi $t0, $fp, -72
	sw $t0, -3164($fp)
	li $t0, 5
	sw $t0, -3168($fp)
	li $t0, 4
	lw $t1, -3168($fp)
	mul $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, -3164($fp)
	add $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	lw $t1, 0($t0)
	sw $t1, -3180($fp)
	lw $t0, -1440($fp)
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3188($fp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3192($fp)
	addi $sp, $sp, 20
	lw $t0, -3028($fp)
	lw $t1, -3192($fp)
	add $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t1, -2984($fp)
	lw $t2, -3196($fp)
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -2980($fp)
label420:
	addi $t0, $fp, -160
	sw $t0, -3200($fp)
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 63409
	sw $t0, -3208($fp)
	li $t0, 17424
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t1, -3216($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label443
label443:
	lw $t0, -2960($fp)
	sw $t0, -3220($fp)
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label442
label442:
	li $t0, 61373
	sw $t0, -3224($fp)
	lw $t1, -3224($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label441
label444:
	li $t0, 24530
	sw $t0, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -3204($fp)
label441:
	li $t0, 4
	lw $t1, -3204($fp)
	mul $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	lw $t1, -3200($fp)
	add $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	lw $t1, 0($t0)
	sw $t1, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	addi $t0, $fp, -156
	sw $t0, -3248($fp)
	lw $t0, -612($fp)
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
	li $t0, 0
	lw $t1, -3264($fp)
	sub $t0, $t0, $t1
	sw $t0, -3268($fp)
	li $t0, 0
	lw $t1, -3268($fp)
	sub $t0, $t0, $t1
	sw $t0, -3272($fp)
	li $t0, 0
	lw $t1, -3272($fp)
	sub $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t1, -3276($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label445:
	li $t0, 1
	sw $t0, -3244($fp)
label446:
	li $t0, 0
	sw $t0, -3280($fp)
	li $t0, 27756
	sw $t0, -3284($fp)
	li $t0, 0
	lw $t1, -3284($fp)
	sub $t0, $t0, $t1
	sw $t0, -3288($fp)
	li $t0, 0
	sw $t0, -3292($fp)
	li $t0, 24304
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label452
label452:
	li $t0, 17103
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label451
label451:
	li $t0, 16101
	sw $t0, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -3292($fp)
label450:
	li $t0, 0
	sw $t0, -3308($fp)
	lw $t0, -936($fp)
	sw $t0, -3312($fp)
	li $t0, 61110
	sw $t0, -3316($fp)
	lw $t1, -3312($fp)
	lw $t2, -3316($fp)
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -3308($fp)
label454:
	li $t0, 0
	sw $t0, -3320($fp)
	lw $t0, -948($fp)
	sw $t0, -3324($fp)
	li $t0, 65388
	sw $t0, -3328($fp)
	lw $t0, -3324($fp)
	lw $t1, -3328($fp)
	sub $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -1368($fp)
	sw $t0, -3336($fp)
	lw $t1, -3332($fp)
	lw $t2, -3336($fp)
	ble $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -3320($fp)
label456:
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3340($fp)
	addi $sp, $sp, 16
	lw $t1, -3288($fp)
	lw $t2, -3340($fp)
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -3280($fp)
label448:
label412:
label400:
	li $t0, 3879
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	sw $t0, -3352($fp)
	lw $t0, -3348($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -3360($fp)
	li $t0, 27544
	sw $t0, -3364($fp)
	li $t0, 0
	lw $t1, -3364($fp)
	sub $t0, $t0, $t1
	sw $t0, -3368($fp)
	li $t0, 0
	lw $t1, -3368($fp)
	sub $t0, $t0, $t1
	sw $t0, -3372($fp)
	li $t0, 0
	lw $t1, -3372($fp)
	sub $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3360($fp)
	lw $t1, -3376($fp)
	sub $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $ra, -4($fp)
	lw $v0, -3380($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label457:
	li $t0, 28305
	sw $t0, -3384($fp)
	li $t0, 62024
	sw $t0, -3388($fp)
	lw $t0, -3384($fp)
	lw $t1, -3388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3392($fp)
	lw $t0, -648($fp)
	sw $t0, -3396($fp)
	lw $t0, -3392($fp)
	lw $t1, -3396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	li $t0, 35559
	sw $t0, -3408($fp)
	lw $t1, -3408($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label464
label464:
	li $t0, 2115
	sw $t0, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label463
label463:
	lw $t0, -1440($fp)
	sw $t0, -3416($fp)
	lw $t1, -3416($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -3404($fp)
label462:
	li $t0, 0
	sw $t0, -3420($fp)
	lw $t0, -936($fp)
	sw $t0, -3424($fp)
	lw $t0, 16($fp)
	sw $t0, -3428($fp)
	lw $t1, -3424($fp)
	lw $t2, -3428($fp)
	bge $t1, $t2, label467
	j label466
label467:
	lw $t0, 4($fp)
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -3420($fp)
label466:
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -1212($fp)
	sw $t0, -3440($fp)
	lw $t1, -3440($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label471:
	lw $t0, -3348($fp)
	sw $t0, -3444($fp)
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label470
label470:
	lw $t0, -1356($fp)
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -3436($fp)
label469:
	lw $t0, -1452($fp)
	sw $t0, -3452($fp)
	li $t0, 50525
	sw $t0, -3456($fp)
	lw $t0, -3452($fp)
	lw $t1, -3456($fp)
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -1392($fp)
	sw $t0, -3464($fp)
	lw $t0, -3460($fp)
	lw $t1, -3464($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3472($fp)
	addi $sp, $sp, 20
	li $t0, 63932
	sw $t0, -3476($fp)
	lw $t0, -3472($fp)
	lw $t1, -3476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3480($fp)
	lw $t0, -3400($fp)
	lw $t1, -3480($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label460:
	lw $t0, -588($fp)
	sw $t0, -3488($fp)
	li $t0, 36833
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3496($fp)
	lw $t0, -612($fp)
	sw $t0, -3500($fp)
	lw $t0, -3496($fp)
	lw $t1, -3500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3504($fp)
	lw $t0, 16($fp)
	sw $t0, -3508($fp)
	li $t0, 32787
	sw $t0, -3512($fp)
	lw $t0, -3508($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t1, -3504($fp)
	lw $t2, -3516($fp)
	ble $t1, $t2, label458
	j label459
label458:
label472:
	li $t0, 27475
	sw $t0, -3520($fp)
	li $t0, 0
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	li $t0, 0
	lw $t1, -3524($fp)
	sub $t0, $t0, $t1
	sw $t0, -3528($fp)
	li $t0, 0
	sw $t0, -3532($fp)
	lw $t0, -1320($fp)
	sw $t0, -3536($fp)
	li $t0, 0
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t1, -3540($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label475:
	li $t0, 1
	sw $t0, -3532($fp)
label476:
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	sub $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t1, -3544($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	lw $t0, -996($fp)
	sw $t0, -3548($fp)
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	addi $t0, $fp, -156
	sw $t0, -3552($fp)
	li $t0, 0
	sw $t0, -3556($fp)
	lw $t0, 8($fp)
	sw $t0, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label482
label482:
	li $t0, 34668
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -3556($fp)
label481:
	lw $t0, -3556($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -3568($fp)
	li $t0, 4
	lw $t1, -3568($fp)
	mul $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	lw $t1, -3552($fp)
	add $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	lw $t1, 0($t0)
	sw $t1, -3580($fp)
	j label479
label478:
	lw $t0, -1440($fp)
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label484
label483:
	addi $t0, $fp, -152
	sw $t0, -3588($fp)
	li $t0, 5801
	sw $t0, -3592($fp)
	li $t0, 57270
	sw $t0, -3596($fp)
	lw $t0, -3592($fp)
	lw $t1, -3596($fp)
	mul $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -636($fp)
	sw $t0, -3604($fp)
	lw $t0, -3600($fp)
	lw $t1, -3604($fp)
	sub $t0, $t0, $t1
	sw $t0, -3608($fp)
	li $t0, 4
	lw $t1, -3608($fp)
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	lw $t1, 0($t0)
	sw $t1, -3620($fp)
	li $t0, 54491
	sw $t0, -3624($fp)
	li $t0, 0
	lw $t1, -3624($fp)
	sub $t0, $t0, $t1
	sw $t0, -3628($fp)
	li $t0, 0
	lw $t1, -3628($fp)
	sub $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3620($fp)
	lw $t1, -3632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3636($fp)
	j label485
label484:
	lw $t0, 16($fp)
	sw $t0, -3640($fp)
label485:
label479:
	j label472
label474:
	j label457
label459:
label486:
	lw $t0, -1320($fp)
	sw $t0, -3644($fp)
	li $t0, 0
	lw $t1, -3644($fp)
	sub $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t1, -3648($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label487
label487:
	li $t0, 19429
	sw $t0, -3652($fp)
	lw $ra, -4($fp)
	lw $v0, -3652($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label486
label488:
	addi $t0, $fp, -20
	sw $t0, -3656($fp)
	li $t0, 0
	sw $t0, -3660($fp)
	li $t0, 4
	lw $t1, -3660($fp)
	mul $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	lw $t1, 0($t0)
	sw $t1, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3676($fp)
	li $t0, 1
	sw $t0, -3680($fp)
	li $t0, 4
	lw $t1, -3680($fp)
	mul $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	lw $t1, 0($t0)
	sw $t1, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3696($fp)
	li $t0, 2
	sw $t0, -3700($fp)
	li $t0, 4
	lw $t1, -3700($fp)
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, -3696($fp)
	add $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	lw $t1, 0($t0)
	sw $t1, -3712($fp)
	lw $t0, -3712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3716($fp)
	li $t0, 3
	sw $t0, -3720($fp)
	li $t0, 4
	lw $t1, -3720($fp)
	mul $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	lw $t1, -3716($fp)
	add $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	lw $t1, 0($t0)
	sw $t1, -3732($fp)
	lw $t0, -3732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3736($fp)
	li $t0, 0
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
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3756($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -3776($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -3796($fp)
	li $t0, 3
	sw $t0, -3800($fp)
	li $t0, 4
	lw $t1, -3800($fp)
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, 0($t0)
	sw $t1, -3812($fp)
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3816($fp)
	li $t0, 0
	sw $t0, -3820($fp)
	li $t0, 4
	lw $t1, -3820($fp)
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, -3816($fp)
	add $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	lw $t1, 0($t0)
	sw $t1, -3832($fp)
	lw $t0, -3832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3836($fp)
	li $t0, 1
	sw $t0, -3840($fp)
	li $t0, 4
	lw $t1, -3840($fp)
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	lw $t1, -3836($fp)
	add $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, 0($t0)
	sw $t1, -3852($fp)
	lw $t0, -3852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3856($fp)
	li $t0, 2
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
	lw $t0, -3872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3876($fp)
	li $t0, 3
	sw $t0, -3880($fp)
	li $t0, 4
	lw $t1, -3880($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, -3876($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, 0($t0)
	sw $t1, -3892($fp)
	lw $t0, -3892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3896($fp)
	li $t0, 4
	sw $t0, -3900($fp)
	li $t0, 4
	lw $t1, -3900($fp)
	mul $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	lw $t1, -3896($fp)
	add $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	lw $t1, 0($t0)
	sw $t1, -3912($fp)
	lw $t0, -3912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3916($fp)
	li $t0, 5
	sw $t0, -3920($fp)
	li $t0, 4
	lw $t1, -3920($fp)
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	lw $t0, -3932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3936($fp)
	li $t0, 6
	sw $t0, -3940($fp)
	li $t0, 4
	lw $t1, -3940($fp)
	mul $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	lw $t1, -3936($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, 0($t0)
	sw $t1, -3952($fp)
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3956($fp)
	li $t0, 7
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
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3976($fp)
	li $t0, 8
	sw $t0, -3980($fp)
	li $t0, 4
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	lw $t0, -3992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4024($fp)
	li $t0, 0
	sw $t0, -4028($fp)
	li $t0, 4
	lw $t1, -4028($fp)
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, 0($t0)
	sw $t1, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4044($fp)
	li $t0, 1
	sw $t0, -4048($fp)
	li $t0, 4
	lw $t1, -4048($fp)
	mul $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	lw $t1, -4044($fp)
	add $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	lw $t1, 0($t0)
	sw $t1, -4060($fp)
	lw $t0, -4060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
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
	addi $t0, $fp, -116
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
	addi $t0, $fp, -116
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
	addi $t0, $fp, -116
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
	addi $t0, $fp, -116
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
	addi $t0, $fp, -116
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
	addi $t0, $fp, -116
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
	addi $t0, $fp, -116
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
	addi $t0, $fp, -116
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
	lw $t0, -936($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -4256($fp)
	li $t0, 0
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
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
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
	addi $t0, $fp, -152
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
	addi $t0, $fp, -152
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
	addi $t0, $fp, -152
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
	addi $t0, $fp, -152
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
	addi $t0, $fp, -152
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
	addi $t0, $fp, -152
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
	addi $t0, $fp, -152
	sw $t0, -4424($fp)
	li $t0, 7
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
	lw $t0, -1200($fp)
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1236($fp)
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
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
	lw $t0, -4476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -4484($fp)
	li $t0, 0
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
	lw $t0, -1308($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1404($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1416($fp)
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1428($fp)
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1440($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4556($fp)
	li $t0, 0
	sw $t0, -4560($fp)
	lw $t0, -1428($fp)
	sw $t0, -4564($fp)
	li $t0, 0
	lw $t1, -4564($fp)
	sub $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t1, -4568($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label493
label494:
	lw $t0, -1368($fp)
	sw $t0, -4572($fp)
	lw $t1, -4572($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -4560($fp)
label493:
	addi $t0, $fp, -152
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
	lw $t0, 4($fp)
	sw $t0, -4596($fp)
	lw $t0, -4592($fp)
	lw $t1, -4596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4600($fp)
	addi $t0, $fp, -80
	sw $t0, -4604($fp)
	lw $t0, -1452($fp)
	sw $t0, -4608($fp)
	li $t0, 4
	lw $t1, -4608($fp)
	mul $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	lw $t1, 0($t0)
	sw $t1, -4620($fp)
	lw $t0, -1416($fp)
	sw $t0, -4624($fp)
	li $t0, 58408
	sw $t0, -4628($fp)
	lw $t0, -4624($fp)
	lw $t1, -4628($fp)
	mul $t0, $t0, $t1
	sw $t0, -4632($fp)
	li $t0, 0
	lw $t1, -4632($fp)
	sub $t0, $t0, $t1
	sw $t0, -4636($fp)
	li $t0, 0
	sw $t0, -4640($fp)
	lw $t0, -1320($fp)
	sw $t0, -4644($fp)
	lw $t1, -4644($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label495:
	li $t0, 1
	sw $t0, -4640($fp)
label496:
	lw $t0, -1392($fp)
	sw $t0, -4648($fp)
	lw $t0, -4640($fp)
	lw $t1, -4648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4652($fp)
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4652($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4656($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4656($fp)
	sub $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -1416($fp)
	sw $t0, -4664($fp)
	lw $t0, -1380($fp)
	sw $t0, -4668($fp)
	lw $t0, -4664($fp)
	lw $t1, -4668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4672($fp)
	li $t0, 0
	lw $t1, -4672($fp)
	sub $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t1, -4660($fp)
	lw $t2, -4676($fp)
	bgt $t1, $t2, label489
	j label491
label491:
	addi $t0, $fp, -120
	sw $t0, -4680($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -4696($fp)
	sub $t0, $t0, $t1
	sw $t0, -4700($fp)
	li $t0, 0
	lw $t1, -4700($fp)
	sub $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t1, -4704($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -4556($fp)
label490:
	lw $ra, -4($fp)
	lw $v0, -4556($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -276
	li $t0, 45255
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
	li $t0, 9483
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
	li $t0, 55710
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
	li $t0, 4249
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
	li $t0, 37240
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
	addi $t0, $fp, -24
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
	lw $t0, 4($fp)
	sw $t0, -268($fp)
	li $t0, 0
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	li $t0, 0
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -264($fp)
	lw $t1, -276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -280($fp)
	lw $ra, -4($fp)
	lw $v0, -280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4160
	li $t0, 61544
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 7130
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 15925
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 65423
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 34674
	sw $t0, -168($fp)
	addi $t0, $fp, -20
	sw $t0, -172($fp)
	li $t0, 0
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
	li $t0, 44230
	sw $t0, -192($fp)
	addi $t0, $fp, -20
	sw $t0, -196($fp)
	li $t0, 1
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
	li $t0, 61911
	sw $t0, -216($fp)
	addi $t0, $fp, -20
	sw $t0, -220($fp)
	li $t0, 2
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
	li $t0, 19663
	sw $t0, -240($fp)
	addi $t0, $fp, -20
	sw $t0, -244($fp)
	li $t0, 3
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
	li $t0, 14254
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 64026
	sw $t0, -276($fp)
	addi $t0, $fp, -60
	sw $t0, -280($fp)
	li $t0, 0
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
	li $t0, 18059
	sw $t0, -300($fp)
	addi $t0, $fp, -60
	sw $t0, -304($fp)
	li $t0, 1
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
	li $t0, 51087
	sw $t0, -324($fp)
	addi $t0, $fp, -60
	sw $t0, -328($fp)
	li $t0, 2
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
	li $t0, 31278
	sw $t0, -348($fp)
	addi $t0, $fp, -60
	sw $t0, -352($fp)
	li $t0, 3
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
	li $t0, 45534
	sw $t0, -372($fp)
	addi $t0, $fp, -60
	sw $t0, -376($fp)
	li $t0, 4
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
	li $t0, 20219
	sw $t0, -396($fp)
	addi $t0, $fp, -60
	sw $t0, -400($fp)
	li $t0, 5
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
	li $t0, 37079
	sw $t0, -420($fp)
	addi $t0, $fp, -60
	sw $t0, -424($fp)
	li $t0, 6
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
	li $t0, 37269
	sw $t0, -444($fp)
	addi $t0, $fp, -60
	sw $t0, -448($fp)
	li $t0, 7
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
	li $t0, 9174
	sw $t0, -468($fp)
	addi $t0, $fp, -60
	sw $t0, -472($fp)
	li $t0, 8
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
	li $t0, 56508
	sw $t0, -492($fp)
	addi $t0, $fp, -60
	sw $t0, -496($fp)
	li $t0, 9
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
	li $t0, 30141
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 3487
	sw $t0, -528($fp)
	addi $t0, $fp, -72
	sw $t0, -532($fp)
	li $t0, 0
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
	li $t0, 38354
	sw $t0, -552($fp)
	addi $t0, $fp, -72
	sw $t0, -556($fp)
	li $t0, 1
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
	li $t0, 22201
	sw $t0, -576($fp)
	addi $t0, $fp, -72
	sw $t0, -580($fp)
	li $t0, 2
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
	li $t0, 63359
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 18073
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 31684
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 53533
	sw $t0, -636($fp)
	addi $t0, $fp, -96
	sw $t0, -640($fp)
	li $t0, 0
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
	li $t0, 22323
	sw $t0, -660($fp)
	addi $t0, $fp, -96
	sw $t0, -664($fp)
	li $t0, 1
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
	li $t0, 3388
	sw $t0, -684($fp)
	addi $t0, $fp, -96
	sw $t0, -688($fp)
	li $t0, 2
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
	li $t0, 43560
	sw $t0, -708($fp)
	addi $t0, $fp, -96
	sw $t0, -712($fp)
	li $t0, 3
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
	li $t0, 22147
	sw $t0, -732($fp)
	addi $t0, $fp, -96
	sw $t0, -736($fp)
	li $t0, 4
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
	li $t0, 64932
	sw $t0, -756($fp)
	addi $t0, $fp, -96
	sw $t0, -760($fp)
	li $t0, 5
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
	li $t0, 50690
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 38072
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 64820
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 19828
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 16766
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 61195
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 39492
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 31020
	sw $t0, -864($fp)
	addi $t0, $fp, -116
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
	li $t0, 59686
	sw $t0, -888($fp)
	addi $t0, $fp, -116
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
	li $t0, 57551
	sw $t0, -912($fp)
	addi $t0, $fp, -116
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
	li $t0, 16572
	sw $t0, -936($fp)
	addi $t0, $fp, -116
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
	li $t0, 25428
	sw $t0, -960($fp)
	addi $t0, $fp, -116
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
	li $t0, 37550
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 36791
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
label497:
	li $t0, 0
	sw $t0, -1008($fp)
	lw $t0, -832($fp)
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label500
label500:
	li $t0, 1
	sw $t0, -1008($fp)
label501:
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1016($fp)
	addi $sp, $sp, 8
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label499
label498:
	lw $t0, -820($fp)
	sw $t0, -1020($fp)
	li $t0, 62507
	sw $t0, -1024($fp)
	li $t0, 9283
	sw $t0, -1028($fp)
	lw $t0, -1024($fp)
	lw $t1, -1028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1032($fp)
	li $t0, 0
	lw $t1, -1032($fp)
	sub $t0, $t0, $t1
	sw $t0, -1036($fp)
	addi $sp, $sp, -4
	lw $t0, -1036($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1040($fp)
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	lw $t1, -1040($fp)
	sub $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -136($fp)
	sw $t0, -1048($fp)
	li $t0, 0
	lw $t1, -1048($fp)
	sub $t0, $t0, $t1
	sw $t0, -1052($fp)
	li $t0, 0
	lw $t1, -1052($fp)
	sub $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1044($fp)
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1060($fp)
	li $t0, 45966
	sw $t0, -1064($fp)
	li $t0, 0
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1060($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	j label497
label499:
	lw $t0, -124($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1092($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -1112($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -1132($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
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
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
	sw $t0, -1196($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -1216($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -1236($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -1256($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -1276($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -1296($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -1316($fp)
	li $t0, 7
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
	addi $t0, $fp, -60
	sw $t0, -1336($fp)
	li $t0, 8
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
	addi $t0, $fp, -60
	sw $t0, -1356($fp)
	li $t0, 9
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
	lw $t0, -520($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1380($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -1400($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1420($fp)
	li $t0, 2
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
	lw $t0, -604($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	li $t0, 4
	lw $t1, -1456($fp)
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, -1452($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, 0($t0)
	sw $t1, -1468($fp)
	lw $t0, -1468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1472($fp)
	li $t0, 1
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
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1492($fp)
	li $t0, 2
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
	addi $t0, $fp, -96
	sw $t0, -1512($fp)
	li $t0, 3
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
	addi $t0, $fp, -96
	sw $t0, -1532($fp)
	li $t0, 4
	sw $t0, -1536($fp)
	li $t0, 4
	lw $t1, -1536($fp)
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	lw $t1, 0($t0)
	sw $t1, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1552($fp)
	li $t0, 5
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
	lw $t0, -784($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -1600($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -1620($fp)
	li $t0, 1
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
	addi $t0, $fp, -116
	sw $t0, -1640($fp)
	li $t0, 2
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
	addi $t0, $fp, -116
	sw $t0, -1660($fp)
	li $t0, 3
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
	addi $t0, $fp, -116
	sw $t0, -1680($fp)
	li $t0, 4
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
	lw $t0, -988($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1708($fp)
	addi $t0, $fp, -96
	sw $t0, -1712($fp)
	lw $t0, -160($fp)
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
	li $t0, 53479
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 39424
	sw $t0, -1740($fp)
	lw $t0, -268($fp)
	sw $t0, -1744($fp)
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	mul $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1736($fp)
	lw $t1, -1748($fp)
	sub $t0, $t0, $t1
	sw $t0, -1752($fp)
	li $t0, 0
	sw $t0, -1756($fp)
	li $t0, 49453
	sw $t0, -1760($fp)
	li $t0, 26298
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1768($fp)
	lw $t0, -808($fp)
	sw $t0, -1772($fp)
	lw $t1, -1768($fp)
	lw $t2, -1772($fp)
	blt $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -1756($fp)
label506:
	lw $t1, -1752($fp)
	lw $t2, -1756($fp)
	bne $t1, $t2, label502
	j label504
label504:
	li $t0, 0
	sw $t0, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	li $t0, 61625
	sw $t0, -1784($fp)
	lw $t0, 4($fp)
	sw $t0, -1788($fp)
	lw $t1, -1784($fp)
	lw $t2, -1788($fp)
	bgt $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -1780($fp)
label510:
	lw $t0, -616($fp)
	sw $t0, -1792($fp)
	lw $t1, -1780($fp)
	lw $t2, -1792($fp)
	ble $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -1776($fp)
label508:
	li $t0, 47276
	sw $t0, -1796($fp)
	li $t0, 44371
	sw $t0, -1800($fp)
	lw $t0, -1796($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t1, -1776($fp)
	lw $t2, -1804($fp)
	blt $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -1708($fp)
label503:
	lw $ra, -4($fp)
	lw $v0, -1708($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 27774
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 35274
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 1158
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 31162
	sw $t0, -1852($fp)
	addi $t0, $fp, -1812
	sw $t0, -1856($fp)
	li $t0, 0
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
	li $t0, 13298
	sw $t0, -1876($fp)
	addi $t0, $fp, -1812
	sw $t0, -1880($fp)
	li $t0, 1
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
	li $t0, 23305
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	li $t0, 30559
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	li $t0, 63988
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 0
	sw $t0, -1940($fp)
	lw $t0, -268($fp)
	sw $t0, -1944($fp)
	lw $t0, -1904($fp)
	sw $t0, -1948($fp)
	li $t0, 0
	lw $t1, -1948($fp)
	sub $t0, $t0, $t1
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	li $t0, 0
	sw $t0, -1960($fp)
	lw $t0, -616($fp)
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label517
label517:
	li $t0, 1
	sw $t0, -1960($fp)
label518:
	li $t0, 43628
	sw $t0, -1968($fp)
	lw $t1, -1960($fp)
	lw $t2, -1968($fp)
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -1956($fp)
label516:
	li $t0, 0
	sw $t0, -1972($fp)
	li $t0, 12608
	sw $t0, -1976($fp)
	lw $t0, 4($fp)
	sw $t0, -1980($fp)
	lw $t1, -1976($fp)
	lw $t2, -1980($fp)
	bge $t1, $t2, label521
	j label520
label521:
	li $t0, 25502
	sw $t0, -1984($fp)
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -1972($fp)
label520:
	li $t0, 0
	sw $t0, -1988($fp)
	li $t0, 29843
	sw $t0, -1992($fp)
	li $t0, 18280
	sw $t0, -1996($fp)
	lw $t0, -1992($fp)
	lw $t1, -1996($fp)
	sub $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1844($fp)
	sw $t0, -2004($fp)
	lw $t1, -2000($fp)
	lw $t2, -2004($fp)
	beq $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -1988($fp)
label523:
	li $t0, 0
	sw $t0, -2008($fp)
	li $t0, 61377
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label525
label526:
	lw $t0, -604($fp)
	sw $t0, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -2008($fp)
label525:
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2020($fp)
	addi $sp, $sp, 16
	li $t0, 57772
	sw $t0, -2024($fp)
	lw $t0, -2020($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2032($fp)
	addi $sp, $sp, 16
	lw $t0, -1916($fp)
	sw $t0, -2036($fp)
	lw $t0, -2032($fp)
	lw $t1, -2036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2040($fp)
	lw $t1, -1944($fp)
	lw $t2, -2040($fp)
	bge $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -1940($fp)
label514:
	addi $t0, $fp, -72
	sw $t0, -2044($fp)
	li $t0, 0
	sw $t0, -2048($fp)
	lw $t0, -808($fp)
	sw $t0, -2052($fp)
	li $t0, 19652
	sw $t0, -2056($fp)
	lw $t1, -2052($fp)
	lw $t2, -2056($fp)
	ble $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -2048($fp)
label528:
	li $t0, 4
	lw $t1, -2048($fp)
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	lw $t1, -1940($fp)
	lw $t2, -2068($fp)
	beq $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -1936($fp)
label512:
label529:
	addi $t0, $fp, -60
	sw $t0, -2072($fp)
	lw $t0, -268($fp)
	sw $t0, -2076($fp)
	lw $t0, -808($fp)
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2084($fp)
	li $t0, 4
	lw $t1, -2084($fp)
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, 0($t0)
	sw $t1, -2096($fp)
	addi $t0, $fp, -96
	sw $t0, -2100($fp)
	li $t0, 0
	sw $t0, -2104($fp)
	li $t0, 4
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, 0($t0)
	sw $t1, -2116($fp)
	lw $t0, -2096($fp)
	lw $t1, -2116($fp)
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	li $t0, 45080
	sw $t0, -2124($fp)
	lw $t1, -2120($fp)
	lw $t2, -2124($fp)
	beq $t1, $t2, label530
	j label531
label530:
	li $t0, 21802
	sw $t0, -2128($fp)
	j label529
label531:
	li $t0, 0
	sw $t0, -2132($fp)
	lw $t0, -808($fp)
	sw $t0, -2136($fp)
	li $t0, 0
	sw $t0, -2140($fp)
	li $t0, 31456
	sw $t0, -2144($fp)
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -2140($fp)
label535:
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	li $t0, 0
	sw $t0, -2152($fp)
	li $t0, 0
	sw $t0, -2156($fp)
	lw $t0, 8($fp)
	sw $t0, -2160($fp)
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label540
label541:
	li $t0, 42051
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label540
label540:
	lw $t0, -1916($fp)
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -2156($fp)
label539:
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2172($fp)
	addi $sp, $sp, 8
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -2152($fp)
label537:
	lw $t1, -2148($fp)
	lw $t2, -2152($fp)
	bge $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -2132($fp)
label533:
	lw $ra, -4($fp)
	lw $v0, -2132($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 31085
	sw $t0, -2176($fp)
	lw $t0, -136($fp)
	sw $t0, -2180($fp)
	li $t0, 0
	lw $t1, -2180($fp)
	sub $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2176($fp)
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -832($fp)
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label543
label542:
label545:
	addi $t0, $fp, -1812
	sw $t0, -2196($fp)
	li $t0, 0
	sw $t0, -2200($fp)
	lw $t0, -148($fp)
	sw $t0, -2204($fp)
	lw $t0, -1820($fp)
	sw $t0, -2208($fp)
	lw $t1, -2204($fp)
	lw $t2, -2208($fp)
	bgt $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -2200($fp)
label550:
	li $t0, 4
	lw $t1, -2200($fp)
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	lw $t1, -2196($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	lw $t1, 0($t0)
	sw $t1, -2220($fp)
	lw $t0, -628($fp)
	sw $t0, -2224($fp)
	lw $t1, -2220($fp)
	lw $t2, -2224($fp)
	ble $t1, $t2, label548
	j label547
label548:
	li $t0, 43079
	sw $t0, -2228($fp)
	lw $t0, 8($fp)
	sw $t0, -2232($fp)
	li $t0, 1063
	sw $t0, -2236($fp)
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -148($fp)
	sw $t0, -2244($fp)
	lw $t0, -2240($fp)
	lw $t1, -2244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2248($fp)
	li $t0, 0
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	li $t0, 61339
	sw $t0, -2260($fp)
	lw $t0, -1000($fp)
	sw $t0, -2264($fp)
	lw $t1, -2260($fp)
	lw $t2, -2264($fp)
	blt $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -2256($fp)
label554:
	li $t0, 56293
	sw $t0, -2268($fp)
	lw $t1, -2256($fp)
	lw $t2, -2268($fp)
	bge $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -2252($fp)
label552:
	li $t0, 0
	sw $t0, -2272($fp)
	li $t0, 4973
	sw $t0, -2276($fp)
	li $t0, 0
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label557
label557:
	lw $t0, -1928($fp)
	sw $t0, -2284($fp)
	lw $t1, -2284($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -2272($fp)
label556:
	addi $t0, $fp, -72
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
	lw $t0, -1832($fp)
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2312($fp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2316($fp)
	addi $sp, $sp, 24
	li $t0, 35128
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -820($fp)
	sw $t0, -2328($fp)
	lw $t1, -2324($fp)
	lw $t2, -2328($fp)
	bne $t1, $t2, label546
	j label547
label546:
label558:
	lw $t0, -856($fp)
	sw $t0, -2332($fp)
	li $t0, 0
	sw $t0, -2336($fp)
	li $t0, 12817
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label563:
	li $t0, 36287
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -2336($fp)
label562:
	lw $t0, -616($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -2352($fp)
	addi $t0, $fp, -116
	sw $t0, -2356($fp)
	lw $t0, -808($fp)
	sw $t0, -2360($fp)
	li $t0, 4
	lw $t1, -2360($fp)
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, 0($t0)
	sw $t1, -2372($fp)
	li $t0, 0
	sw $t0, -2376($fp)
	li $t0, 28837
	sw $t0, -2380($fp)
	lw $t0, -616($fp)
	sw $t0, -2384($fp)
	lw $t1, -2380($fp)
	lw $t2, -2384($fp)
	bgt $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -2376($fp)
label565:
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2388($fp)
	addi $sp, $sp, 20
	lw $t0, -2332($fp)
	lw $t1, -2388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2392($fp)
	li $t0, 0
	sw $t0, -2396($fp)
	li $t0, 59999
	sw $t0, -2400($fp)
	lw $t1, -2400($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label566:
	li $t0, 1
	sw $t0, -2396($fp)
label567:
	lw $t0, -2392($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	addi $t0, $fp, -60
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	li $t0, 26115
	sw $t0, -2416($fp)
	li $t0, 0
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label570
label570:
	li $t0, 59592
	sw $t0, -2424($fp)
	lw $t1, -2424($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -2412($fp)
label569:
	li $t0, 4
	lw $t1, -2412($fp)
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, 0($t0)
	sw $t1, -2436($fp)
	li $t0, 0
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	j label558
label560:
	j label545
label547:
	j label544
label543:
label571:
	addi $t0, $fp, -60
	sw $t0, -2444($fp)
	lw $t0, 8($fp)
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
	addi $t0, $fp, -96
	sw $t0, -2464($fp)
	li $t0, 3
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
	lw $t0, -2460($fp)
	lw $t1, -2480($fp)
	mul $t0, $t0, $t1
	sw $t0, -2484($fp)
	li $t0, 55434
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2492($fp)
	lw $t0, -808($fp)
	sw $t0, -2496($fp)
	lw $t0, -2492($fp)
	lw $t1, -2496($fp)
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	li $t0, 0
	lw $t1, -2500($fp)
	sub $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 54865
	sw $t0, -2508($fp)
	li $t0, 42848
	sw $t0, -2512($fp)
	lw $t0, -2508($fp)
	lw $t1, -2512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2516($fp)
	j label571
label573:
label544:
	li $t0, 2506
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	li $t0, 14832
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	li $t0, 35084
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	li $t0, 46134
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -2564($fp)
	li $t0, 34484
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	li $t0, 19336
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	li $t0, 40799
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -2600($fp)
	addi $t0, $fp, -96
	sw $t0, -2604($fp)
	lw $t0, -2596($fp)
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
	li $t0, 0
	lw $t1, -2620($fp)
	sub $t0, $t0, $t1
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	li $t0, 14029
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label577:
	li $t0, 1
	sw $t0, -2628($fp)
label578:
	li $t0, 0
	lw $t1, -2628($fp)
	sub $t0, $t0, $t1
	sw $t0, -2636($fp)
	li $t0, 0
	lw $t1, -2636($fp)
	sub $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t1, -2624($fp)
	lw $t2, -2640($fp)
	bgt $t1, $t2, label574
	j label575
label574:
	li $t0, 0
	sw $t0, -2644($fp)
	addi $t0, $fp, -72
	sw $t0, -2648($fp)
	lw $t0, -2596($fp)
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
	li $t0, 0
	sw $t0, -2668($fp)
	li $t0, 41138
	sw $t0, -2672($fp)
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -2668($fp)
label585:
	lw $t1, -2664($fp)
	lw $t2, -2668($fp)
	bgt $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -2644($fp)
label583:
	lw $t0, -2644($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -2676($fp)
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 0
	sw $t0, -2680($fp)
	li $t0, 0
	sw $t0, -2684($fp)
	lw $t0, -2560($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -2692($fp)
	li $t0, 0
	sw $t0, -2696($fp)
	li $t0, 46425
	sw $t0, -2700($fp)
	li $t0, 0
	sw $t0, -2704($fp)
	li $t0, 11296
	sw $t0, -2708($fp)
	li $t0, 12724
	sw $t0, -2712($fp)
	lw $t1, -2708($fp)
	lw $t2, -2712($fp)
	bge $t1, $t2, label594
	j label593
label594:
	li $t0, 57487
	sw $t0, -2716($fp)
	lw $t1, -2716($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -2704($fp)
label593:
	li $t0, 14408
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2724($fp)
	li $t0, 0
	sw $t0, -2728($fp)
	li $t0, 20539
	sw $t0, -2732($fp)
	li $t0, 11661
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label597
label597:
	lw $t0, -1928($fp)
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -2728($fp)
label596:
	addi $sp, $sp, -4
	lw $t0, -2700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2748($fp)
	addi $sp, $sp, 20
	lw $t0, -616($fp)
	sw $t0, -2752($fp)
	lw $t1, -2748($fp)
	lw $t2, -2752($fp)
	bgt $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -2696($fp)
label591:
	li $t0, 0
	sw $t0, -2756($fp)
	li $t0, 6687
	sw $t0, -2760($fp)
	li $t0, 18605
	sw $t0, -2764($fp)
	lw $t0, -2760($fp)
	lw $t1, -2764($fp)
	sub $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2548($fp)
	sw $t0, -2772($fp)
	lw $t1, -2768($fp)
	lw $t2, -2772($fp)
	bge $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -2756($fp)
label599:
	li $t0, 0
	sw $t0, -2776($fp)
	li $t0, 6719
	sw $t0, -2780($fp)
	li $t0, 56080
	sw $t0, -2784($fp)
	lw $t0, -2780($fp)
	lw $t1, -2784($fp)
	sub $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2560($fp)
	sw $t0, -2792($fp)
	lw $t1, -2788($fp)
	lw $t2, -2792($fp)
	beq $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -2776($fp)
label601:
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2776($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2796($fp)
	addi $sp, $sp, 20
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label588
label588:
	li $t0, 1
	sw $t0, -2684($fp)
label589:
	li $t0, 41561
	sw $t0, -2800($fp)
	lw $t0, -2684($fp)
	lw $t1, -2800($fp)
	sub $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2584($fp)
	sw $t0, -2808($fp)
	lw $t1, -2804($fp)
	lw $t2, -2808($fp)
	blt $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -2680($fp)
label587:
	j label581
label580:
	li $t0, 0
	sw $t0, -2812($fp)
	li $t0, 4769
	sw $t0, -2816($fp)
	li $t0, 17176
	sw $t0, -2820($fp)
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	li $t0, 36024
	sw $t0, -2828($fp)
	lw $t0, -2824($fp)
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -628($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2840($fp)
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2840($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2844($fp)
	addi $sp, $sp, 12
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label603
label604:
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, -1820($fp)
	sw $t0, -2852($fp)
	lw $t0, -268($fp)
	sw $t0, -2856($fp)
	lw $t0, -2852($fp)
	lw $t1, -2856($fp)
	sub $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label606
label607:
	lw $t0, -2572($fp)
	sw $t0, -2864($fp)
	lw $t1, -2864($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -2848($fp)
label606:
	lw $t0, -2524($fp)
	sw $t0, -2868($fp)
	addi $t0, $fp, -1812
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	li $t0, 4
	lw $t1, -2876($fp)
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	li $t0, 50376
	sw $t0, -2892($fp)
	lw $t0, -2888($fp)
	lw $t1, -2892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2896($fp)
	li $t0, 0
	sw $t0, -2900($fp)
	li $t0, 61047
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label610
label611:
	lw $t0, -832($fp)
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label610
label610:
	lw $t0, -2536($fp)
	sw $t0, -2912($fp)
	lw $t1, -2912($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -2900($fp)
label609:
	li $t0, 0
	sw $t0, -2916($fp)
	lw $t0, -1928($fp)
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label615:
	li $t0, 30884
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label614
label614:
	li $t0, 11232
	sw $t0, -2928($fp)
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -2916($fp)
label613:
	addi $sp, $sp, -4
	lw $t0, -2848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2916($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2932($fp)
	addi $sp, $sp, 24
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -2812($fp)
label603:
label581:
label575:
	lw $t0, 8($fp)
	sw $t0, -2936($fp)
	lw $t0, -148($fp)
	sw $t0, -2940($fp)
	li $t0, 0
	sw $t0, -2944($fp)
	addi $t0, $fp, -72
	sw $t0, -2948($fp)
	li $t0, 0
	sw $t0, -2952($fp)
	li $t0, 4
	lw $t1, -2952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	li $t0, 38730
	sw $t0, -2968($fp)
	lw $t1, -2964($fp)
	lw $t2, -2968($fp)
	beq $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -2944($fp)
label621:
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2944($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2972($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 48186
	sw $t0, -2980($fp)
	lw $t0, -832($fp)
	sw $t0, -2984($fp)
	lw $t1, -2980($fp)
	lw $t2, -2984($fp)
	bgt $t1, $t2, label624
	j label623
label624:
	lw $t0, -784($fp)
	sw $t0, -2988($fp)
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -2976($fp)
label623:
	li $t0, 25034
	sw $t0, -2992($fp)
	lw $t0, -808($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -3000($fp)
	li $t0, 0
	sw $t0, -3004($fp)
	lw $t0, -856($fp)
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label628
label628:
	li $t0, 21649
	sw $t0, -3012($fp)
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label627
label627:
	lw $t0, -1000($fp)
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -3004($fp)
label626:
	li $t0, 0
	sw $t0, -3020($fp)
	addi $t0, $fp, -20
	sw $t0, -3024($fp)
	li $t0, 3
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
	bne $t1, $t2, label629
	j label631
label631:
	lw $t0, 8($fp)
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -3020($fp)
label630:
	lw $t0, -148($fp)
	sw $t0, -3048($fp)
	li $t0, 0
	sw $t0, -3052($fp)
	lw $t0, -148($fp)
	sw $t0, -3056($fp)
	lw $t1, -3056($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label633
label634:
	li $t0, 65208
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -3052($fp)
label633:
	lw $t0, -124($fp)
	sw $t0, -3064($fp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3064($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3068($fp)
	addi $sp, $sp, 20
	li $t0, 34157
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3080($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 3636
	sw $t0, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -3084($fp)
label636:
	li $t0, 32764
	sw $t0, -3092($fp)
	lw $t0, -988($fp)
	sw $t0, -3096($fp)
	lw $t0, -3092($fp)
	lw $t1, -3096($fp)
	sub $t0, $t0, $t1
	sw $t0, -3100($fp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3104($fp)
	addi $sp, $sp, 24
	lw $t0, -2936($fp)
	lw $t1, -3104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3108($fp)
	li $t0, 3939
	sw $t0, -3112($fp)
	lw $t0, -3108($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label619
label619:
	lw $t0, -268($fp)
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 64766
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	li $t0, 15600
	sw $t0, -3132($fp)
	lw $t0, 4($fp)
	sw $t0, -3136($fp)
	lw $t0, -3132($fp)
	lw $t1, -3136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3140($fp)
	lw $t0, -988($fp)
	sw $t0, -3144($fp)
	lw $t1, -3140($fp)
	lw $t2, -3144($fp)
	ble $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -3128($fp)
label638:
	lw $t0, -784($fp)
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -3152($fp)
	li $t0, 0
	sw $t0, -3156($fp)
	li $t0, 50358
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label641
label641:
	li $t0, 59270
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -3156($fp)
label640:
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3156($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3168($fp)
	addi $sp, $sp, 20
	j label618
label617:
	li $t0, 0
	sw $t0, -3172($fp)
	addi $t0, $fp, -96
	sw $t0, -3176($fp)
	addi $t0, $fp, -116
	sw $t0, -3180($fp)
	li $t0, 2
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
	li $t0, 4
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, 0($t0)
	sw $t1, -3208($fp)
	li $t0, 0
	sw $t0, -3212($fp)
	addi $t0, $fp, -60
	sw $t0, -3216($fp)
	lw $t0, -820($fp)
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
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label645
label646:
	li $t0, 20397
	sw $t0, -3236($fp)
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -3212($fp)
label645:
	li $t0, 0
	sw $t0, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	lw $t0, -856($fp)
	sw $t0, -3248($fp)
	li $t0, 19095
	sw $t0, -3252($fp)
	lw $t1, -3248($fp)
	lw $t2, -3252($fp)
	bge $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -3244($fp)
label650:
	lw $t0, 4($fp)
	sw $t0, -3256($fp)
	lw $t1, -3244($fp)
	lw $t2, -3256($fp)
	beq $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -3240($fp)
label648:
	li $t0, 0
	sw $t0, -3260($fp)
	li $t0, 20725
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label651
label653:
	li $t0, 49515
	sw $t0, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -3260($fp)
label652:
	li $t0, 0
	sw $t0, -3272($fp)
	lw $t0, -796($fp)
	sw $t0, -3276($fp)
	li $t0, 0
	lw $t1, -3276($fp)
	sub $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t1, -3280($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label654
label654:
	li $t0, 1
	sw $t0, -3272($fp)
label655:
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3284($fp)
	addi $sp, $sp, 20
	lw $t0, -844($fp)
	sw $t0, -3288($fp)
	lw $t0, -3284($fp)
	lw $t1, -3288($fp)
	sub $t0, $t0, $t1
	sw $t0, -3292($fp)
	li $t0, 0
	sw $t0, -3296($fp)
	li $t0, 15458
	sw $t0, -3300($fp)
	lw $t0, -856($fp)
	sw $t0, -3304($fp)
	lw $t0, -3300($fp)
	lw $t1, -3304($fp)
	mul $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -820($fp)
	sw $t0, -3312($fp)
	lw $t1, -3308($fp)
	lw $t2, -3312($fp)
	beq $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -3296($fp)
label657:
	addi $t0, $fp, -116
	sw $t0, -3316($fp)
	lw $t0, -520($fp)
	sw $t0, -3320($fp)
	li $t0, 4
	lw $t1, -3320($fp)
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	li $t0, 16751
	sw $t0, -3336($fp)
	li $t0, 0
	sw $t0, -3340($fp)
	lw $t0, -148($fp)
	sw $t0, -3344($fp)
	li $t0, 14328
	sw $t0, -3348($fp)
	lw $t1, -3344($fp)
	lw $t2, -3348($fp)
	bne $t1, $t2, label660
	j label659
label660:
	li $t0, 35884
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -3340($fp)
label659:
	li $t0, 0
	sw $t0, -3356($fp)
	li $t0, 0
	sw $t0, -3360($fp)
	li $t0, 26835
	sw $t0, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label663
label663:
	li $t0, 1
	sw $t0, -3360($fp)
label664:
	lw $t0, -148($fp)
	sw $t0, -3368($fp)
	lw $t1, -3360($fp)
	lw $t2, -3368($fp)
	bge $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -3356($fp)
label662:
	li $t0, 0
	sw $t0, -3372($fp)
	li $t0, 3095
	sw $t0, -3376($fp)
	lw $t0, -988($fp)
	sw $t0, -3380($fp)
	lw $t0, -3376($fp)
	lw $t1, -3380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3384($fp)
	li $t0, 40373
	sw $t0, -3388($fp)
	lw $t1, -3384($fp)
	lw $t2, -3388($fp)
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -3372($fp)
label666:
	addi $sp, $sp, -4
	lw $t0, -3340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3392($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3392($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3396($fp)
	addi $sp, $sp, 20
	lw $t0, -136($fp)
	sw $t0, -3400($fp)
	lw $t0, -3396($fp)
	lw $t1, -3400($fp)
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	addi $t0, $fp, -116
	sw $t0, -3408($fp)
	li $t0, 3
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
	li $t0, 61486
	sw $t0, -3428($fp)
	lw $t0, -3424($fp)
	lw $t1, -3428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3432($fp)
	li $t0, 0
	sw $t0, -3436($fp)
	li $t0, 56717
	sw $t0, -3440($fp)
	addi $sp, $sp, -4
	lw $t0, -3440($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3444($fp)
	addi $sp, $sp, 8
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label667
label667:
	li $t0, 1
	sw $t0, -3436($fp)
label668:
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3448($fp)
	addi $sp, $sp, 20
	lw $t1, -3208($fp)
	lw $t2, -3448($fp)
	bge $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -3172($fp)
label643:
	lw $ra, -4($fp)
	lw $v0, -3172($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label618:
	lw $t0, -124($fp)
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3468($fp)
	li $t0, 0
	sw $t0, -3472($fp)
	li $t0, 4
	lw $t1, -3472($fp)
	mul $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	lw $t1, -3468($fp)
	add $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	lw $t1, 0($t0)
	sw $t1, -3484($fp)
	lw $t0, -3484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3488($fp)
	li $t0, 1
	sw $t0, -3492($fp)
	li $t0, 4
	lw $t1, -3492($fp)
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	lw $t1, -3488($fp)
	add $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, 0($t0)
	sw $t1, -3504($fp)
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3508($fp)
	li $t0, 2
	sw $t0, -3512($fp)
	li $t0, 4
	lw $t1, -3512($fp)
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	lw $t1, -3508($fp)
	add $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	lw $t1, 0($t0)
	sw $t1, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3528($fp)
	li $t0, 3
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
	lw $t0, -268($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3552($fp)
	li $t0, 0
	sw $t0, -3556($fp)
	li $t0, 4
	lw $t1, -3556($fp)
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, -3552($fp)
	add $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, 0($t0)
	sw $t1, -3568($fp)
	lw $t0, -3568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3572($fp)
	li $t0, 1
	sw $t0, -3576($fp)
	li $t0, 4
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, -3572($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	lw $t0, -3588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3592($fp)
	li $t0, 2
	sw $t0, -3596($fp)
	li $t0, 4
	lw $t1, -3596($fp)
	mul $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	lw $t1, -3592($fp)
	add $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, 0($t0)
	sw $t1, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3612($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -3632($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -3652($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -3672($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -3692($fp)
	li $t0, 7
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
	addi $t0, $fp, -60
	sw $t0, -3712($fp)
	li $t0, 8
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
	addi $t0, $fp, -60
	sw $t0, -3732($fp)
	li $t0, 9
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
	lw $t0, -520($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
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
	addi $t0, $fp, -72
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
	addi $t0, $fp, -72
	sw $t0, -3796($fp)
	li $t0, 2
	sw $t0, -3800($fp)
	li $t0, 4
	lw $t1, -3800($fp)
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, 0($t0)
	sw $t1, -3812($fp)
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	lw $t0, -784($fp)
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3976($fp)
	li $t0, 0
	sw $t0, -3980($fp)
	li $t0, 4
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	lw $t0, -3992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3996($fp)
	li $t0, 1
	sw $t0, -4000($fp)
	li $t0, 4
	lw $t1, -4000($fp)
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	lw $t1, 0($t0)
	sw $t1, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4016($fp)
	li $t0, 2
	sw $t0, -4020($fp)
	li $t0, 4
	lw $t1, -4020($fp)
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, -4016($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, 0($t0)
	sw $t1, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -4036($fp)
	li $t0, 3
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
	addi $t0, $fp, -116
	sw $t0, -4056($fp)
	li $t0, 4
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
	lw $t0, -988($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4084($fp)
	addi $t0, $fp, -72
	sw $t0, -4088($fp)
	lw $t0, -160($fp)
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
	li $t0, 7940
	sw $t0, -4108($fp)
	lw $t0, -4104($fp)
	lw $t1, -4108($fp)
	sub $t0, $t0, $t1
	sw $t0, -4112($fp)
	li $t0, 0
	sw $t0, -4116($fp)
	lw $t0, -604($fp)
	sw $t0, -4120($fp)
	lw $t1, -4120($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label674:
	lw $t0, -988($fp)
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label673
label673:
	li $t0, 54554
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -4116($fp)
label672:
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 51827
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label675
label675:
	li $t0, 1
	sw $t0, -4132($fp)
label676:
	li $t0, 3330
	sw $t0, -4140($fp)
	lw $t0, -4132($fp)
	lw $t1, -4140($fp)
	mul $t0, $t0, $t1
	sw $t0, -4144($fp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4148($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4148($fp)
	sub $t0, $t0, $t1
	sw $t0, -4152($fp)
	li $t0, 28364
	sw $t0, -4156($fp)
	lw $t0, -844($fp)
	sw $t0, -4160($fp)
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	sub $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t1, -4152($fp)
	lw $t2, -4164($fp)
	bne $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -4084($fp)
label670:
	lw $ra, -4($fp)
	lw $v0, -4084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2108
	li $t0, 37204
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 5192
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 60117
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 10399
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 9131
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 44939
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 4133
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 24731
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 44169
	sw $t0, -156($fp)
	addi $t0, $fp, -8
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
	li $t0, 9163
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 53055
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 35350
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
	li $t0, 60619
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
	li $t0, 57404
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
	li $t0, 31301
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
	li $t0, 63714
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
	li $t0, 32241
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
	li $t0, 58136
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
	li $t0, 12506
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
	li $t0, 2590
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 9351
	sw $t0, -408($fp)
	addi $t0, $fp, -56
	sw $t0, -412($fp)
	li $t0, 0
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
	li $t0, 27965
	sw $t0, -432($fp)
	addi $t0, $fp, -56
	sw $t0, -436($fp)
	li $t0, 1
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
	li $t0, 23315
	sw $t0, -456($fp)
	addi $t0, $fp, -56
	sw $t0, -460($fp)
	li $t0, 2
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
	li $t0, 58866
	sw $t0, -480($fp)
	addi $t0, $fp, -56
	sw $t0, -484($fp)
	li $t0, 3
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
	li $t0, 47060
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 43712
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 45157
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 50390
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 0
	sw $t0, -552($fp)
	li $t0, 32731
	sw $t0, -556($fp)
	addi $t0, $fp, -40
	sw $t0, -560($fp)
	li $t0, 0
	sw $t0, -564($fp)
	li $t0, 53098
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label681
label681:
	lw $t0, -148($fp)
	sw $t0, -572($fp)
	lw $t1, -572($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -564($fp)
label680:
	li $t0, 4
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	lw $t1, -560($fp)
	add $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, 0($t0)
	sw $t1, -584($fp)
	lw $t1, -556($fp)
	lw $t2, -584($fp)
	bgt $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -552($fp)
label678:
label682:
	li $t0, 0
	sw $t0, -588($fp)
	li $t0, 0
	sw $t0, -592($fp)
	lw $t0, -124($fp)
	sw $t0, -596($fp)
	lw $t0, -112($fp)
	sw $t0, -600($fp)
	lw $t1, -596($fp)
	lw $t2, -600($fp)
	bgt $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -592($fp)
label689:
	li $t0, 13218
	sw $t0, -604($fp)
	lw $t1, -592($fp)
	lw $t2, -604($fp)
	beq $t1, $t2, label685
	j label687
label687:
	li $t0, 4399
	sw $t0, -608($fp)
	lw $t0, -184($fp)
	sw $t0, -612($fp)
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -588($fp)
label686:
	lw $t0, -588($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -620($fp)
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label684
label683:
	li $t0, 0
	sw $t0, -624($fp)
	lw $t0, -88($fp)
	sw $t0, -628($fp)
	addi $t0, $fp, -8
	sw $t0, -632($fp)
	lw $t0, -544($fp)
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
	li $t0, 58290
	sw $t0, -652($fp)
	lw $t0, -648($fp)
	lw $t1, -652($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t1, -628($fp)
	lw $t2, -656($fp)
	beq $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -624($fp)
label694:
	li $t0, 0
	sw $t0, -660($fp)
	lw $t0, -148($fp)
	sw $t0, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -660($fp)
label696:
	lw $t1, -624($fp)
	lw $t2, -660($fp)
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 0
	sw $t0, -668($fp)
	lw $t0, -196($fp)
	sw $t0, -672($fp)
	li $t0, 7799
	sw $t0, -676($fp)
	lw $t0, -672($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	li $t0, 14798
	sw $t0, -684($fp)
	lw $t1, -680($fp)
	lw $t2, -684($fp)
	bne $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -668($fp)
label698:
	lw $ra, -4($fp)
	lw $v0, -668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label692
label691:
	li $t0, 1885
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 52738
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 18931
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -692($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -736($fp)
	lw $t0, -716($fp)
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	li $t0, 26616
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	sub $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -520($fp)
	sw $t0, -756($fp)
	li $t0, 31371
	sw $t0, -760($fp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -760($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -764($fp)
	addi $sp, $sp, 12
	lw $t0, -752($fp)
	lw $t1, -764($fp)
	sub $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -772($fp)
	lw $ra, -4($fp)
	lw $v0, -772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -56
	sw $t0, -776($fp)
	li $t0, 0
	sw $t0, -780($fp)
	li $t0, 28095
	sw $t0, -784($fp)
	lw $t1, -784($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label703
label704:
	lw $t0, -148($fp)
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -780($fp)
label703:
	li $t0, 4
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, 0($t0)
	sw $t1, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	lw $t0, -532($fp)
	sw $t0, -808($fp)
	li $t0, 1185
	sw $t0, -812($fp)
	lw $t1, -808($fp)
	lw $t2, -812($fp)
	beq $t1, $t2, label707
	j label706
label707:
	li $t0, 23178
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -804($fp)
label706:
	li $t0, 0
	sw $t0, -820($fp)
	li $t0, 14135
	sw $t0, -824($fp)
	lw $t0, -76($fp)
	sw $t0, -828($fp)
	lw $t0, -824($fp)
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -76($fp)
	sw $t0, -836($fp)
	lw $t1, -832($fp)
	lw $t2, -836($fp)
	beq $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -820($fp)
label709:
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -840($fp)
	addi $sp, $sp, 12
	lw $t0, -800($fp)
	lw $t1, -840($fp)
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	li $t0, 0
	sw $t0, -848($fp)
	addi $t0, $fp, -56
	sw $t0, -852($fp)
	li $t0, 2
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
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label710
label710:
	li $t0, 1
	sw $t0, -848($fp)
label711:
	li $t0, 0
	sw $t0, -872($fp)
	li $t0, 0
	sw $t0, -876($fp)
	li $t0, 33863
	sw $t0, -880($fp)
	li $t0, 40834
	sw $t0, -884($fp)
	lw $t1, -880($fp)
	lw $t2, -884($fp)
	blt $t1, $t2, label716
	j label715
label716:
	lw $t0, 8($fp)
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -876($fp)
label715:
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -892($fp)
	addi $sp, $sp, 8
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label713
	j label712
label712:
	li $t0, 1
	sw $t0, -872($fp)
label713:
	li $t0, 0
	sw $t0, -896($fp)
	li $t0, 0
	sw $t0, -900($fp)
	lw $t0, -196($fp)
	sw $t0, -904($fp)
	li $t0, 25086
	sw $t0, -908($fp)
	lw $t1, -904($fp)
	lw $t2, -908($fp)
	ble $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -900($fp)
label720:
	lw $t0, -704($fp)
	sw $t0, -912($fp)
	lw $t1, -900($fp)
	lw $t2, -912($fp)
	bge $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -896($fp)
label718:
	li $t0, 38244
	sw $t0, -916($fp)
	li $t0, 21356
	sw $t0, -920($fp)
	li $t0, 0
	lw $t1, -920($fp)
	sub $t0, $t0, $t1
	sw $t0, -924($fp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -928($fp)
	addi $sp, $sp, 20
	lw $t0, -848($fp)
	lw $t1, -928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -932($fp)
	lw $t0, -844($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label700
label699:
	addi $t0, $fp, -40
	sw $t0, -940($fp)
	li $t0, 5
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
	lw $t0, -544($fp)
	sw $t0, -960($fp)
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	li $t0, 43352
	sw $t0, -968($fp)
	lw $t0, -64($fp)
	sw $t0, -972($fp)
	lw $t0, -968($fp)
	lw $t1, -972($fp)
	mul $t0, $t0, $t1
	sw $t0, -976($fp)
	addi $t0, $fp, -40
	sw $t0, -980($fp)
	li $t0, 7
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
	lw $t0, -100($fp)
	sw $t0, -1000($fp)
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1004($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1008($fp)
	lw $t0, -692($fp)
	sw $t0, -1012($fp)
	li $t0, 0
	lw $t1, -1012($fp)
	sub $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label723
label723:
	li $t0, 61828
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -1008($fp)
label722:
	li $t0, 0
	sw $t0, -1024($fp)
	lw $t0, 12($fp)
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label725
label726:
	li $t0, 34437
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -1024($fp)
label725:
	addi $sp, $sp, -4
	lw $t0, -1004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1036($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1036($fp)
	sub $t0, $t0, $t1
	sw $t0, -1040($fp)
	addi $sp, $sp, -4
	lw $t0, -964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1040($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1044($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -1044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label700:
label692:
	j label682
label684:
	li $t0, 28206
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 9521
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 60487
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
label727:
	li $t0, 41424
	sw $t0, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label729
label728:
	li $t0, 0
	sw $t0, -1088($fp)
	li $t0, 0
	sw $t0, -1092($fp)
	lw $t0, -196($fp)
	sw $t0, -1096($fp)
	li $t0, 28719
	sw $t0, -1100($fp)
	lw $t0, -1096($fp)
	lw $t1, -1100($fp)
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	li $t0, 55126
	sw $t0, -1108($fp)
	lw $t1, -1104($fp)
	lw $t2, -1108($fp)
	blt $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -1092($fp)
label734:
	li $t0, 53241
	sw $t0, -1112($fp)
	li $t0, 1
	sw $t0, -1116($fp)
	lw $t0, -1112($fp)
	lw $t1, -1116($fp)
	mul $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1076($fp)
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1128($fp)
	li $t0, 0
	sw $t0, -1132($fp)
	lw $t0, 12($fp)
	sw $t0, -1136($fp)
	li $t0, 13920
	sw $t0, -1140($fp)
	lw $t0, -1136($fp)
	lw $t1, -1140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1144($fp)
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label737
label737:
	lw $t0, -64($fp)
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -1132($fp)
label736:
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1132($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1152($fp)
	addi $sp, $sp, 16
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label732
label732:
	li $t0, 36425
	sw $t0, -1156($fp)
	li $t0, 0
	sw $t0, -1160($fp)
	li $t0, 47650
	sw $t0, -1164($fp)
	lw $t1, -1164($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label738
label738:
	li $t0, 1
	sw $t0, -1160($fp)
label739:
	lw $t0, -1156($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -1088($fp)
label731:
	j label727
label729:
	li $t0, 0
	sw $t0, -1172($fp)
	lw $t0, -76($fp)
	sw $t0, -1176($fp)
	lw $t1, -1176($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label740
label742:
	lw $t0, -520($fp)
	sw $t0, -1180($fp)
	lw $t1, -1180($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -1172($fp)
label741:
	li $t0, 0
	sw $t0, -1184($fp)
	li $t0, 0
	sw $t0, -1188($fp)
	lw $t0, -136($fp)
	sw $t0, -1192($fp)
	lw $t0, -532($fp)
	sw $t0, -1196($fp)
	lw $t1, -1192($fp)
	lw $t2, -1196($fp)
	blt $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -1188($fp)
label746:
	lw $t0, -400($fp)
	sw $t0, -1200($fp)
	lw $t1, -1188($fp)
	lw $t2, -1200($fp)
	bgt $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -1184($fp)
label744:
	lw $t0, 12($fp)
	sw $t0, -1204($fp)
	li $t0, 0
	sw $t0, -1208($fp)
	lw $t0, -76($fp)
	sw $t0, -1212($fp)
	lw $t1, -1212($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label748
label749:
	li $t0, 2260
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -1208($fp)
label748:
	addi $sp, $sp, -4
	lw $t0, -1184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1220($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1224($fp)
	addi $t0, $fp, -56
	sw $t0, -1228($fp)
	lw $t0, -184($fp)
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
	li $t0, 16206
	sw $t0, -1248($fp)
	lw $t1, -1244($fp)
	lw $t2, -1248($fp)
	beq $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -1224($fp)
label751:
	addi $sp, $sp, -4
	lw $t0, -1172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1252($fp)
	addi $sp, $sp, 16
label752:
	li $t0, 10209
	sw $t0, -1256($fp)
	li $t0, 0
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	addi $t0, $fp, -40
	sw $t0, -1268($fp)
	lw $t0, 12($fp)
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
	li $t0, 30341
	sw $t0, -1288($fp)
	lw $t1, -1284($fp)
	lw $t2, -1288($fp)
	beq $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -1264($fp)
label758:
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1292($fp)
	addi $sp, $sp, 8
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label755
label755:
	li $t0, 1
	sw $t0, -1260($fp)
label756:
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	addi $t0, $fp, -40
	sw $t0, -1300($fp)
	lw $t0, -64($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -1308($fp)
	li $t0, 4
	lw $t1, -1308($fp)
	mul $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	lw $t1, 0($t0)
	sw $t1, -1320($fp)
	lw $t0, -1296($fp)
	lw $t1, -1320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label753
	j label754
label753:
	li $t0, 0
	sw $t0, -1328($fp)
	addi $t0, $fp, -56
	sw $t0, -1332($fp)
	li $t0, 0
	sw $t0, -1336($fp)
	lw $t0, -64($fp)
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label764
label764:
	li $t0, 3445
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -1336($fp)
label763:
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
	lw $t1, -1356($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label761
label761:
	li $t0, 33387
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -1328($fp)
label760:
	j label752
label754:
	li $t0, 0
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 23071
	sw $t0, -1376($fp)
	lw $t0, -196($fp)
	sw $t0, -1380($fp)
	lw $t0, -1376($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	li $t0, 49887
	sw $t0, -1388($fp)
	lw $t1, -1384($fp)
	lw $t2, -1388($fp)
	bgt $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -1372($fp)
label770:
	li $t0, 0
	sw $t0, -1392($fp)
	li $t0, 61018
	sw $t0, -1396($fp)
	li $t0, 0
	lw $t1, -1396($fp)
	sub $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label771
label771:
	li $t0, 1
	sw $t0, -1392($fp)
label772:
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
	sw $t0, -1424($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -1372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1440($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1444($fp)
	addi $sp, $sp, 20
	li $t0, 29920
	sw $t0, -1448($fp)
	lw $t1, -1444($fp)
	lw $t2, -1448($fp)
	bge $t1, $t2, label767
	j label768
label767:
	li $t0, 1
	sw $t0, -1368($fp)
label768:
	lw $t0, -520($fp)
	sw $t0, -1452($fp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1456($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label765
label765:
	li $t0, 1
	sw $t0, -1364($fp)
label766:
	li $t0, 19363
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	lw $t0, -88($fp)
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label774
label775:
	li $t0, 34811
	sw $t0, -1484($fp)
	li $t0, 0
	lw $t1, -1484($fp)
	sub $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1468($fp)
	sw $t0, -1492($fp)
	lw $t0, -1488($fp)
	lw $t1, -1492($fp)
	sub $t0, $t0, $t1
	sw $t0, -1496($fp)
	li $t0, 0
	sw $t0, -1500($fp)
	li $t0, 65076
	sw $t0, -1504($fp)
	lw $t0, -64($fp)
	sw $t0, -1508($fp)
	lw $t1, -1504($fp)
	lw $t2, -1508($fp)
	bgt $t1, $t2, label778
	j label777
label778:
	li $t0, 25385
	sw $t0, -1512($fp)
	lw $t1, -1512($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -1500($fp)
label777:
	lw $t0, -148($fp)
	sw $t0, -1516($fp)
	li $t0, 25290
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	addi $t0, $fp, -8
	sw $t0, -1528($fp)
	li $t0, 0
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
	lw $t0, -1064($fp)
	sw $t0, -1548($fp)
	li $t0, 48500
	sw $t0, -1552($fp)
	lw $t0, -1548($fp)
	lw $t1, -1552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1556($fp)
	addi $sp, $sp, -4
	lw $t0, -1496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1560($fp)
	addi $sp, $sp, 24
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label774
label773:
	li $t0, 1
	sw $t0, -1476($fp)
label774:
label779:
	li $t0, 60027
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label780
	j label781
label780:
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, -1064($fp)
	sw $t0, -1572($fp)
	lw $t0, -532($fp)
	sw $t0, -1576($fp)
	lw $t0, -1572($fp)
	lw $t1, -1576($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	li $t0, 0
	sw $t0, -1584($fp)
	li $t0, 48732
	sw $t0, -1588($fp)
	lw $t0, -400($fp)
	sw $t0, -1592($fp)
	lw $t1, -1588($fp)
	lw $t2, -1592($fp)
	bne $t1, $t2, label787
	j label786
label787:
	lw $t0, -184($fp)
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -1584($fp)
label786:
	addi $t0, $fp, -56
	sw $t0, -1600($fp)
	lw $t0, -100($fp)
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
	li $t0, 0
	sw $t0, -1620($fp)
	li $t0, 1273
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label790
label790:
	lw $t0, -1052($fp)
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -1620($fp)
label789:
	li $t0, 0
	sw $t0, -1632($fp)
	lw $t0, -196($fp)
	sw $t0, -1636($fp)
	li $t0, 0
	lw $t1, -1636($fp)
	sub $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label791
label791:
	li $t0, 1
	sw $t0, -1632($fp)
label792:
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1644($fp)
	addi $sp, $sp, 20
	lw $t0, -1580($fp)
	lw $t1, -1644($fp)
	sub $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label784
label784:
	lw $t0, 12($fp)
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -1568($fp)
label783:
	j label779
label781:
	lw $t0, -64($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
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
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1716($fp)
	li $t0, 0
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
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1736($fp)
	li $t0, 1
	sw $t0, -1740($fp)
	li $t0, 4
	lw $t1, -1740($fp)
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	lw $t1, -1736($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	lw $t1, 0($t0)
	sw $t1, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1756($fp)
	li $t0, 2
	sw $t0, -1760($fp)
	li $t0, 4
	lw $t1, -1760($fp)
	mul $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, -1756($fp)
	add $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, 0($t0)
	sw $t1, -1772($fp)
	lw $t0, -1772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1776($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -1796($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -1816($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -1836($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -1856($fp)
	li $t0, 7
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
	lw $t0, -400($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	li $t0, 4
	lw $t1, -1884($fp)
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	lw $t0, -1896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1900($fp)
	li $t0, 1
	sw $t0, -1904($fp)
	li $t0, 4
	lw $t1, -1904($fp)
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, 0($t0)
	sw $t1, -1916($fp)
	lw $t0, -1916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1920($fp)
	li $t0, 2
	sw $t0, -1924($fp)
	li $t0, 4
	lw $t1, -1924($fp)
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	lw $t0, -1936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
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
	lw $t0, -1956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1976($fp)
	li $t0, 37322
	sw $t0, -1980($fp)
	li $t0, 21385
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label794
label795:
	li $t0, 59565
	sw $t0, -1992($fp)
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label794
label793:
	li $t0, 1
	sw $t0, -1976($fp)
label794:
	li $t0, 0
	sw $t0, -1996($fp)
	li $t0, 11915
	sw $t0, -2000($fp)
	lw $t0, -508($fp)
	sw $t0, -2004($fp)
	lw $t1, -2000($fp)
	lw $t2, -2004($fp)
	bne $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -1996($fp)
label797:
	li $t0, 50496
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	lw $t0, 8($fp)
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label798
	j label800
label800:
	lw $t0, 4($fp)
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label798
	j label799
label798:
	li $t0, 1
	sw $t0, -2016($fp)
label799:
	li $t0, 0
	sw $t0, -2028($fp)
	li $t0, 47732
	sw $t0, -2032($fp)
	lw $t0, -136($fp)
	sw $t0, -2036($fp)
	lw $t1, -2032($fp)
	lw $t2, -2036($fp)
	ble $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -2028($fp)
label802:
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2040($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -56
	sw $t0, -2044($fp)
	lw $t0, -64($fp)
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
	lw $t0, -2040($fp)
	lw $t1, -2060($fp)
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	addi $t0, $fp, -40
	sw $t0, -2068($fp)
	lw $t0, -64($fp)
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
	addi $t0, $fp, -8
	sw $t0, -2088($fp)
	lw $t0, 12($fp)
	sw $t0, -2092($fp)
	li $t0, 4
	lw $t1, -2092($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	lw $t0, -2084($fp)
	lw $t1, -2104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2108($fp)
	lw $t0, -2064($fp)
	lw $t1, -2108($fp)
	sub $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $ra, -4($fp)
	lw $v0, -2112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -56
	li $t0, 53528
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 23645
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 4239
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label804
label805:
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, 4($fp)
	sw $t0, -36($fp)
	li $t0, 18333
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, 8($fp)
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	ble $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -32($fp)
label807:
	li $t0, 27090
	sw $t0, -52($fp)
	li $t0, 37626
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	sub $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t1, -32($fp)
	lw $t2, -60($fp)
	beq $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -24($fp)
label804:
	lw $ra, -4($fp)
	lw $v0, -24($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -660
	li $t0, 54677
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 63022
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 26834
	sw $t0, -68($fp)
	addi $t0, $fp, -40
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
	li $t0, 63730
	sw $t0, -92($fp)
	addi $t0, $fp, -40
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
	li $t0, 58505
	sw $t0, -116($fp)
	addi $t0, $fp, -40
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
	li $t0, 49905
	sw $t0, -140($fp)
	addi $t0, $fp, -40
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
	li $t0, 48081
	sw $t0, -164($fp)
	addi $t0, $fp, -40
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
	li $t0, 22889
	sw $t0, -188($fp)
	addi $t0, $fp, -40
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
	li $t0, 3732
	sw $t0, -212($fp)
	addi $t0, $fp, -40
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
	li $t0, 31045
	sw $t0, -236($fp)
	addi $t0, $fp, -40
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
	li $t0, 15040
	sw $t0, -260($fp)
	addi $t0, $fp, -40
	sw $t0, -264($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	lw $t0, -48($fp)
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label810
label810:
	li $t0, 1
	sw $t0, -288($fp)
label811:
	addi $t0, $fp, -40
	sw $t0, -296($fp)
	li $t0, 0
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
	lw $t0, 12($fp)
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t1, -288($fp)
	lw $t2, -320($fp)
	bge $t1, $t2, label808
	j label809
label808:
	li $t0, 1
	sw $t0, -284($fp)
label809:
	lw $t0, 12($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -328($fp)
	addi $sp, $sp, -4
	lw $t0, -328($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -332($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	lw $t0, -332($fp)
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 8807
	sw $t0, -364($fp)
	li $t0, 56805
	sw $t0, -368($fp)
	lw $t0, -364($fp)
	lw $t1, -368($fp)
	sub $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label814
label814:
	lw $t0, 12($fp)
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -360($fp)
label813:
	addi $t0, $fp, -40
	sw $t0, -380($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -400($fp)
	lw $t0, 8($fp)
	sw $t0, -404($fp)
	li $t0, 25611
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	sub $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -60($fp)
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	bne $t1, $t2, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -400($fp)
label816:
	lw $t0, 8($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -424($fp)
	li $t0, 0
	sw $t0, -428($fp)
	lw $t0, 12($fp)
	sw $t0, -432($fp)
	li $t0, 0
	lw $t1, -432($fp)
	sub $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label819
label819:
	li $t0, 26296
	sw $t0, -440($fp)
	lw $t1, -440($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label818
label817:
	li $t0, 1
	sw $t0, -428($fp)
label818:
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -444($fp)
	addi $sp, $sp, 12
	li $t0, 14581
	sw $t0, -448($fp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -452($fp)
	addi $sp, $sp, 24
	lw $t0, -356($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -48($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -468($fp)
	li $t0, 0
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
	lw $t0, -484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -488($fp)
	li $t0, 1
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
	lw $t0, -504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -508($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -528($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -548($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -568($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -588($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -608($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -628($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -648($fp)
	li $t0, 12529
	sw $t0, -652($fp)
	lw $t0, 12($fp)
	sw $t0, -656($fp)
	lw $t0, -652($fp)
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	li $t0, 20722
	sw $t0, -664($fp)
	lw $t1, -660($fp)
	lw $t2, -664($fp)
	bgt $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -648($fp)
label821:
	lw $ra, -4($fp)
	lw $v0, -648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -452
	li $t0, 28591
	sw $t0, -48($fp)
	addi $t0, $fp, -44
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
	li $t0, 33914
	sw $t0, -72($fp)
	addi $t0, $fp, -44
	sw $t0, -76($fp)
	li $t0, 1
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
	li $t0, 14752
	sw $t0, -96($fp)
	addi $t0, $fp, -44
	sw $t0, -100($fp)
	li $t0, 2
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
	li $t0, 16584
	sw $t0, -120($fp)
	addi $t0, $fp, -44
	sw $t0, -124($fp)
	li $t0, 3
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
	li $t0, 57559
	sw $t0, -144($fp)
	addi $t0, $fp, -44
	sw $t0, -148($fp)
	li $t0, 4
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
	li $t0, 18991
	sw $t0, -168($fp)
	addi $t0, $fp, -44
	sw $t0, -172($fp)
	li $t0, 5
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
	li $t0, 34917
	sw $t0, -192($fp)
	addi $t0, $fp, -44
	sw $t0, -196($fp)
	li $t0, 6
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
	li $t0, 19114
	sw $t0, -216($fp)
	addi $t0, $fp, -44
	sw $t0, -220($fp)
	li $t0, 7
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
	li $t0, 56617
	sw $t0, -240($fp)
	addi $t0, $fp, -44
	sw $t0, -244($fp)
	li $t0, 8
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
	li $t0, 24059
	sw $t0, -264($fp)
	addi $t0, $fp, -44
	sw $t0, -268($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -288($fp)
	addi $t0, $fp, -44
	sw $t0, -292($fp)
	lw $t0, 16($fp)
	sw $t0, -296($fp)
	li $t0, 0
	lw $t1, -296($fp)
	sub $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, 4($fp)
	sw $t0, -304($fp)
	lw $t0, -300($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, 8($fp)
	sw $t0, -312($fp)
	addi $sp, $sp, -4
	lw $t0, -308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -316($fp)
	addi $sp, $sp, 12
	lw $t0, 4($fp)
	sw $t0, -320($fp)
	lw $t0, -316($fp)
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	li $t0, 4
	lw $t1, -324($fp)
	mul $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t1, 0($t0)
	sw $t1, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label824
label824:
	addi $t0, $fp, -44
	sw $t0, -340($fp)
	li $t0, 0
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
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label822
label822:
	li $t0, 1
	sw $t0, -288($fp)
label823:
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 22253
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label825
label825:
	li $t0, 1
	sw $t0, -360($fp)
label826:
	li $t0, 35843
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -372($fp)
	li $t0, 0
	sw $t0, -376($fp)
	li $t0, 6018
	sw $t0, -380($fp)
	lw $t0, 4($fp)
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label828
label829:
	lw $t0, 4($fp)
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -376($fp)
label828:
	lw $t0, 4($fp)
	sw $t0, -396($fp)
	li $t0, 4798
	sw $t0, -400($fp)
	lw $t0, -396($fp)
	lw $t1, -400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -404($fp)
	li $t0, 32458
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	li $t0, 2285
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -420($fp)
	li $t0, 0
	sw $t0, -424($fp)
	li $t0, 9569
	sw $t0, -428($fp)
	lw $t0, 4($fp)
	sw $t0, -432($fp)
	lw $t1, -428($fp)
	lw $t2, -432($fp)
	ble $t1, $t2, label832
	j label831
label832:
	lw $t0, 4($fp)
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -424($fp)
label831:
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -440($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -440($fp)
	sub $t0, $t0, $t1
	sw $t0, -444($fp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -448($fp)
	addi $sp, $sp, 12
	lw $t0, -360($fp)
	lw $t1, -448($fp)
	add $t0, $t0, $t1
	sw $t0, -452($fp)
	li $t0, 47499
	sw $t0, -456($fp)
	lw $ra, -4($fp)
	lw $v0, -456($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f16:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -60
	li $t0, 6929
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 26643
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	bgt $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -32($fp)
label834:
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -52($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 62080
	sw $t0, -64($fp)
	lw $ra, -4($fp)
	lw $v0, -64($fp)
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
	jal f16
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
