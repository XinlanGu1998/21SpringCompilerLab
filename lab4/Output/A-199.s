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
	addi $sp, $sp, -2740
	li $t0, 21633
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 55153
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 25631
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 15775
	sw $t0, -220($fp)
	addi $t0, $fp, -32
	sw $t0, -224($fp)
	li $t0, 0
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
	li $t0, 17151
	sw $t0, -244($fp)
	addi $t0, $fp, -32
	sw $t0, -248($fp)
	li $t0, 1
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
	li $t0, 4168
	sw $t0, -268($fp)
	addi $t0, $fp, -32
	sw $t0, -272($fp)
	li $t0, 2
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
	li $t0, 60569
	sw $t0, -292($fp)
	addi $t0, $fp, -32
	sw $t0, -296($fp)
	li $t0, 3
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
	li $t0, 7492
	sw $t0, -316($fp)
	addi $t0, $fp, -32
	sw $t0, -320($fp)
	li $t0, 4
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
	li $t0, 61618
	sw $t0, -340($fp)
	addi $t0, $fp, -32
	sw $t0, -344($fp)
	li $t0, 5
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
	li $t0, 36725
	sw $t0, -364($fp)
	addi $t0, $fp, -32
	sw $t0, -368($fp)
	li $t0, 6
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
	li $t0, 28164
	sw $t0, -388($fp)
	addi $t0, $fp, -60
	sw $t0, -392($fp)
	li $t0, 0
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
	li $t0, 56030
	sw $t0, -412($fp)
	addi $t0, $fp, -60
	sw $t0, -416($fp)
	li $t0, 1
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
	li $t0, 45592
	sw $t0, -436($fp)
	addi $t0, $fp, -60
	sw $t0, -440($fp)
	li $t0, 2
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
	li $t0, 40534
	sw $t0, -460($fp)
	addi $t0, $fp, -60
	sw $t0, -464($fp)
	li $t0, 3
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
	li $t0, 40937
	sw $t0, -484($fp)
	addi $t0, $fp, -60
	sw $t0, -488($fp)
	li $t0, 4
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
	li $t0, 21902
	sw $t0, -508($fp)
	addi $t0, $fp, -60
	sw $t0, -512($fp)
	li $t0, 5
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
	li $t0, 37494
	sw $t0, -532($fp)
	addi $t0, $fp, -60
	sw $t0, -536($fp)
	li $t0, 6
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
	li $t0, 35711
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 46227
	sw $t0, -568($fp)
	addi $t0, $fp, -68
	sw $t0, -572($fp)
	li $t0, 0
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
	li $t0, 36873
	sw $t0, -592($fp)
	addi $t0, $fp, -68
	sw $t0, -596($fp)
	li $t0, 1
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
	li $t0, 25511
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 52804
	sw $t0, -628($fp)
	addi $t0, $fp, -100
	sw $t0, -632($fp)
	li $t0, 0
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
	li $t0, 25193
	sw $t0, -652($fp)
	addi $t0, $fp, -100
	sw $t0, -656($fp)
	li $t0, 1
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
	li $t0, 22854
	sw $t0, -676($fp)
	addi $t0, $fp, -100
	sw $t0, -680($fp)
	li $t0, 2
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
	li $t0, 8673
	sw $t0, -700($fp)
	addi $t0, $fp, -100
	sw $t0, -704($fp)
	li $t0, 3
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
	li $t0, 1421
	sw $t0, -724($fp)
	addi $t0, $fp, -100
	sw $t0, -728($fp)
	li $t0, 4
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
	li $t0, 7414
	sw $t0, -748($fp)
	addi $t0, $fp, -100
	sw $t0, -752($fp)
	li $t0, 5
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
	li $t0, 60360
	sw $t0, -772($fp)
	addi $t0, $fp, -100
	sw $t0, -776($fp)
	li $t0, 6
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
	li $t0, 58142
	sw $t0, -796($fp)
	addi $t0, $fp, -100
	sw $t0, -800($fp)
	li $t0, 7
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
	li $t0, 19131
	sw $t0, -820($fp)
	addi $t0, $fp, -108
	sw $t0, -824($fp)
	li $t0, 0
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
	li $t0, 60824
	sw $t0, -844($fp)
	addi $t0, $fp, -108
	sw $t0, -848($fp)
	li $t0, 1
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
	li $t0, 14239
	sw $t0, -868($fp)
	addi $t0, $fp, -144
	sw $t0, -872($fp)
	li $t0, 0
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
	li $t0, 8749
	sw $t0, -892($fp)
	addi $t0, $fp, -144
	sw $t0, -896($fp)
	li $t0, 1
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
	li $t0, 20919
	sw $t0, -916($fp)
	addi $t0, $fp, -144
	sw $t0, -920($fp)
	li $t0, 2
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
	li $t0, 30014
	sw $t0, -940($fp)
	addi $t0, $fp, -144
	sw $t0, -944($fp)
	li $t0, 3
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
	li $t0, 25900
	sw $t0, -964($fp)
	addi $t0, $fp, -144
	sw $t0, -968($fp)
	li $t0, 4
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
	li $t0, 25087
	sw $t0, -988($fp)
	addi $t0, $fp, -144
	sw $t0, -992($fp)
	li $t0, 5
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
	li $t0, 25047
	sw $t0, -1012($fp)
	addi $t0, $fp, -144
	sw $t0, -1016($fp)
	li $t0, 6
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
	li $t0, 33392
	sw $t0, -1036($fp)
	addi $t0, $fp, -144
	sw $t0, -1040($fp)
	li $t0, 7
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
	li $t0, 21169
	sw $t0, -1060($fp)
	addi $t0, $fp, -144
	sw $t0, -1064($fp)
	li $t0, 8
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
	li $t0, 61773
	sw $t0, -1084($fp)
	addi $t0, $fp, -180
	sw $t0, -1088($fp)
	li $t0, 0
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
	li $t0, 61556
	sw $t0, -1108($fp)
	addi $t0, $fp, -180
	sw $t0, -1112($fp)
	li $t0, 1
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
	li $t0, 11663
	sw $t0, -1132($fp)
	addi $t0, $fp, -180
	sw $t0, -1136($fp)
	li $t0, 2
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
	li $t0, 41829
	sw $t0, -1156($fp)
	addi $t0, $fp, -180
	sw $t0, -1160($fp)
	li $t0, 3
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
	li $t0, 36554
	sw $t0, -1180($fp)
	addi $t0, $fp, -180
	sw $t0, -1184($fp)
	li $t0, 4
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
	li $t0, 52600
	sw $t0, -1204($fp)
	addi $t0, $fp, -180
	sw $t0, -1208($fp)
	li $t0, 5
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
	li $t0, 63731
	sw $t0, -1228($fp)
	addi $t0, $fp, -180
	sw $t0, -1232($fp)
	li $t0, 6
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
	li $t0, 8512
	sw $t0, -1252($fp)
	addi $t0, $fp, -180
	sw $t0, -1256($fp)
	li $t0, 7
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
	li $t0, 22775
	sw $t0, -1276($fp)
	addi $t0, $fp, -180
	sw $t0, -1280($fp)
	li $t0, 8
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
label121:
	lw $t0, 4($fp)
	sw $t0, -1300($fp)
	addi $t0, $fp, -60
	sw $t0, -1304($fp)
	li $t0, 6
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
	li $t0, 48286
	sw $t0, -1324($fp)
	li $t0, 0
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1320($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t1, -1300($fp)
	lw $t2, -1332($fp)
	bne $t1, $t2, label122
	j label123
label122:
label124:
	li $t0, 0
	sw $t0, -1336($fp)
	li $t0, 31691
	sw $t0, -1340($fp)
	li $t0, 0
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1344($fp)
	li $t0, 5043
	sw $t0, -1348($fp)
	lw $t1, -1344($fp)
	lw $t2, -1348($fp)
	bge $t1, $t2, label127
	j label129
label129:
	li $t0, 0
	sw $t0, -1352($fp)
	li $t0, 0
	sw $t0, -1356($fp)
	lw $t0, -560($fp)
	sw $t0, -1360($fp)
	lw $t0, -200($fp)
	sw $t0, -1364($fp)
	lw $t1, -1360($fp)
	lw $t2, -1364($fp)
	ble $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -1356($fp)
label133:
	li $t0, 5604
	sw $t0, -1368($fp)
	lw $t1, -1356($fp)
	lw $t2, -1368($fp)
	beq $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -1352($fp)
label131:
	addi $sp, $sp, -4
	lw $t0, -1352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1372($fp)
	addi $sp, $sp, 8
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -1336($fp)
label128:
	lw $t0, -1336($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 40364
	sw $t0, -1380($fp)
	j label124
label126:
	j label121
label123:
label134:
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 6464
	sw $t0, -1388($fp)
	lw $t0, -620($fp)
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1396($fp)
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1400($fp)
	addi $sp, $sp, 8
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label139:
	lw $t0, -188($fp)
	sw $t0, -1404($fp)
	lw $t1, -1404($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -1384($fp)
label138:
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1408($fp)
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -1412($fp)
	lw $t0, -1408($fp)
	lw $t1, -1412($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
label140:
	li $t0, 13018
	sw $t0, -1420($fp)
	li $t0, 35189
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1428($fp)
	lw $t0, 4($fp)
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1436($fp)
	addi $t0, $fp, -144
	sw $t0, -1440($fp)
	lw $t0, -620($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -1448($fp)
	li $t0, 4
	lw $t1, -1448($fp)
	mul $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t1, 0($t0)
	sw $t1, -1460($fp)
	lw $t0, -1436($fp)
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 0
	sw $t0, -1468($fp)
	addi $t0, $fp, -68
	sw $t0, -1472($fp)
	li $t0, 0
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
	li $t0, 30477
	sw $t0, -1492($fp)
	lw $t0, -1488($fp)
	lw $t1, -1492($fp)
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label145:
	addi $t0, $fp, -180
	sw $t0, -1500($fp)
	lw $t0, -188($fp)
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
	li $t0, 13310
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -1468($fp)
label144:
	j label140
label142:
	j label134
label136:
label146:
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 40899
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -1528($fp)
label150:
	li $t0, 0
	sw $t0, -1536($fp)
	lw $t0, 4($fp)
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label151
label151:
	li $t0, 1
	sw $t0, -1536($fp)
label152:
	lw $t0, -1528($fp)
	lw $t1, -1536($fp)
	sub $t0, $t0, $t1
	sw $t0, -1544($fp)
	li $t0, 0
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	lw $t0, -200($fp)
	sw $t0, -1556($fp)
	li $t0, 51396
	sw $t0, -1560($fp)
	lw $t0, -1556($fp)
	lw $t1, -1560($fp)
	sub $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label157
label157:
	li $t0, 43325
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -1552($fp)
label156:
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1572($fp)
	addi $sp, $sp, 8
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label153:
	li $t0, 1
	sw $t0, -1548($fp)
label154:
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 0
	sw $t0, -1580($fp)
	lw $t0, -188($fp)
	sw $t0, -1584($fp)
	li $t0, 0
	lw $t1, -1584($fp)
	sub $t0, $t0, $t1
	sw $t0, -1588($fp)
	li $t0, 1263
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -620($fp)
	sw $t0, -1600($fp)
	li $t0, 10947
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t1, -1596($fp)
	lw $t2, -1608($fp)
	ble $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1580($fp)
label159:
	lw $t1, -1576($fp)
	lw $t2, -1580($fp)
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 2836
	sw $t0, -1612($fp)
	j label146
label148:
	addi $t0, $fp, -108
	sw $t0, -1616($fp)
	li $t0, 0
	sw $t0, -1620($fp)
	lw $t0, -188($fp)
	sw $t0, -1624($fp)
	li $t0, 34655
	sw $t0, -1628($fp)
	lw $t1, -1624($fp)
	lw $t2, -1628($fp)
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -1620($fp)
label165:
	li $t0, 4
	lw $t1, -1620($fp)
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	lw $t1, -1616($fp)
	add $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	lw $t1, 0($t0)
	sw $t1, -1640($fp)
	addi $t0, $fp, -100
	sw $t0, -1644($fp)
	li $t0, 1
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
	lw $t0, -1640($fp)
	lw $t1, -1660($fp)
	sub $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label163
label163:
	addi $t0, $fp, -108
	sw $t0, -1668($fp)
	addi $t0, $fp, -144
	sw $t0, -1672($fp)
	lw $t0, -620($fp)
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
	li $t0, 4
	lw $t1, -1688($fp)
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, -1668($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
label166:
	addi $t0, $fp, -32
	sw $t0, -1704($fp)
	addi $t0, $fp, -60
	sw $t0, -1708($fp)
	lw $t0, -560($fp)
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
	lw $t0, -188($fp)
	sw $t0, -1728($fp)
	lw $t0, -1724($fp)
	lw $t1, -1728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1732($fp)
	li $t0, 4
	lw $t1, -1732($fp)
	mul $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	lw $t1, 0($t0)
	sw $t1, -1744($fp)
	lw $t1, -1744($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 0
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	lw $t0, -620($fp)
	sw $t0, -1756($fp)
	lw $t0, -560($fp)
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	mul $t0, $t0, $t1
	sw $t0, -1764($fp)
	li $t0, 30676
	sw $t0, -1768($fp)
	lw $t0, -1764($fp)
	lw $t1, -1768($fp)
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1776($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1776($fp)
	sub $t0, $t0, $t1
	sw $t0, -1780($fp)
	li $t0, 0
	sw $t0, -1784($fp)
	lw $t0, -620($fp)
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -1784($fp)
label174:
	lw $t0, -200($fp)
	sw $t0, -1792($fp)
	lw $t0, -1784($fp)
	lw $t1, -1792($fp)
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t1, -1780($fp)
	lw $t2, -1796($fp)
	bgt $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -1752($fp)
label172:
	lw $t0, -188($fp)
	sw $t0, -1800($fp)
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 43779
	sw $t0, -1808($fp)
	lw $t1, -1808($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -1804($fp)
label176:
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t1, -1752($fp)
	lw $t2, -1812($fp)
	blt $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -1748($fp)
label170:
	j label166
label168:
label161:
	lw $t0, -188($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 4
	lw $t1, -1832($fp)
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	lw $t0, -1844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1848($fp)
	li $t0, 1
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
	lw $t0, -1864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1868($fp)
	li $t0, 2
	sw $t0, -1872($fp)
	li $t0, 4
	lw $t1, -1872($fp)
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, -1868($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	lw $t1, 0($t0)
	sw $t1, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1888($fp)
	li $t0, 3
	sw $t0, -1892($fp)
	li $t0, 4
	lw $t1, -1892($fp)
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, 0($t0)
	sw $t1, -1904($fp)
	lw $t0, -1904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1908($fp)
	li $t0, 4
	sw $t0, -1912($fp)
	li $t0, 4
	lw $t1, -1912($fp)
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	lw $t1, 0($t0)
	sw $t1, -1924($fp)
	lw $t0, -1924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1928($fp)
	li $t0, 5
	sw $t0, -1932($fp)
	li $t0, 4
	lw $t1, -1932($fp)
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	lw $t0, -1944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1948($fp)
	li $t0, 6
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
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1968($fp)
	li $t0, 0
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
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1988($fp)
	li $t0, 1
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
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2008($fp)
	li $t0, 2
	sw $t0, -2012($fp)
	li $t0, 4
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2028($fp)
	li $t0, 3
	sw $t0, -2032($fp)
	li $t0, 4
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2048($fp)
	li $t0, 4
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
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2068($fp)
	li $t0, 5
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
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2088($fp)
	li $t0, 6
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
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	lw $t0, -620($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2156($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -2176($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -2196($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -2216($fp)
	li $t0, 3
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
	addi $t0, $fp, -100
	sw $t0, -2236($fp)
	li $t0, 4
	sw $t0, -2240($fp)
	li $t0, 4
	lw $t1, -2240($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, 0($t0)
	sw $t1, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2256($fp)
	li $t0, 5
	sw $t0, -2260($fp)
	li $t0, 4
	lw $t1, -2260($fp)
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, -2256($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	lw $t0, -2272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2276($fp)
	li $t0, 6
	sw $t0, -2280($fp)
	li $t0, 4
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2296($fp)
	li $t0, 7
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
	lw $t0, -2312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2316($fp)
	li $t0, 0
	sw $t0, -2320($fp)
	li $t0, 4
	lw $t1, -2320($fp)
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, 0($t0)
	sw $t1, -2332($fp)
	lw $t0, -2332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2336($fp)
	li $t0, 1
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
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -2356($fp)
	li $t0, 0
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
	lw $t0, -2372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -2376($fp)
	li $t0, 1
	sw $t0, -2380($fp)
	li $t0, 4
	lw $t1, -2380($fp)
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, -2376($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	lw $t0, -2392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -2396($fp)
	li $t0, 2
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
	addi $t0, $fp, -144
	sw $t0, -2416($fp)
	li $t0, 3
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
	addi $t0, $fp, -144
	sw $t0, -2436($fp)
	li $t0, 4
	sw $t0, -2440($fp)
	li $t0, 4
	lw $t1, -2440($fp)
	mul $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	lw $t1, -2436($fp)
	add $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	lw $t1, 0($t0)
	sw $t1, -2452($fp)
	lw $t0, -2452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -2456($fp)
	li $t0, 5
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
	addi $t0, $fp, -144
	sw $t0, -2476($fp)
	li $t0, 6
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
	addi $t0, $fp, -144
	sw $t0, -2496($fp)
	li $t0, 7
	sw $t0, -2500($fp)
	li $t0, 4
	lw $t1, -2500($fp)
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, -2496($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	lw $t1, 0($t0)
	sw $t1, -2512($fp)
	lw $t0, -2512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -2516($fp)
	li $t0, 8
	sw $t0, -2520($fp)
	li $t0, 4
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 4
	lw $t1, -2540($fp)
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -2556($fp)
	li $t0, 1
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
	lw $t0, -2572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -2576($fp)
	li $t0, 2
	sw $t0, -2580($fp)
	li $t0, 4
	lw $t1, -2580($fp)
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	lw $t1, 0($t0)
	sw $t1, -2592($fp)
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -2596($fp)
	li $t0, 3
	sw $t0, -2600($fp)
	li $t0, 4
	lw $t1, -2600($fp)
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -2616($fp)
	li $t0, 4
	sw $t0, -2620($fp)
	li $t0, 4
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, -2616($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, 0($t0)
	sw $t1, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -2636($fp)
	li $t0, 5
	sw $t0, -2640($fp)
	li $t0, 4
	lw $t1, -2640($fp)
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	lw $t1, 0($t0)
	sw $t1, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -2656($fp)
	li $t0, 6
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
	lw $t0, -2672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -2676($fp)
	li $t0, 7
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
	addi $t0, $fp, -180
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
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2716($fp)
	lw $t0, -212($fp)
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label179:
	li $t0, 40902
	sw $t0, -2724($fp)
	addi $t0, $fp, -60
	sw $t0, -2728($fp)
	li $t0, 6
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
	lw $t1, -2724($fp)
	lw $t2, -2744($fp)
	beq $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2716($fp)
label178:
	lw $ra, -4($fp)
	lw $v0, -2716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2976
	li $t0, 39098
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 10207
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 53618
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 17985
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 55592
	sw $t0, -164($fp)
	addi $t0, $fp, -28
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
	li $t0, 36368
	sw $t0, -188($fp)
	addi $t0, $fp, -28
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
	li $t0, 49676
	sw $t0, -212($fp)
	addi $t0, $fp, -28
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
	li $t0, 60635
	sw $t0, -236($fp)
	addi $t0, $fp, -28
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
	li $t0, 41973
	sw $t0, -260($fp)
	addi $t0, $fp, -28
	sw $t0, -264($fp)
	li $t0, 4
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
	li $t0, 24504
	sw $t0, -284($fp)
	addi $t0, $fp, -28
	sw $t0, -288($fp)
	li $t0, 5
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
	li $t0, 1564
	sw $t0, -308($fp)
	addi $t0, $fp, -40
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
	li $t0, 54991
	sw $t0, -332($fp)
	addi $t0, $fp, -40
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
	li $t0, 59693
	sw $t0, -356($fp)
	addi $t0, $fp, -40
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
	li $t0, 635
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 21605
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 24634
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 13945
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 62504
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 10494
	sw $t0, -440($fp)
	addi $t0, $fp, -52
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
	li $t0, 57270
	sw $t0, -464($fp)
	addi $t0, $fp, -52
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
	li $t0, 63767
	sw $t0, -488($fp)
	addi $t0, $fp, -52
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
	li $t0, 21441
	sw $t0, -512($fp)
	addi $t0, $fp, -76
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
	li $t0, 60107
	sw $t0, -536($fp)
	addi $t0, $fp, -76
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
	li $t0, 32887
	sw $t0, -560($fp)
	addi $t0, $fp, -76
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
	li $t0, 53557
	sw $t0, -584($fp)
	addi $t0, $fp, -76
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
	li $t0, 59180
	sw $t0, -608($fp)
	addi $t0, $fp, -76
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
	li $t0, 63563
	sw $t0, -632($fp)
	addi $t0, $fp, -76
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
	li $t0, 31800
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 34547
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 65257
	sw $t0, -680($fp)
	addi $t0, $fp, -112
	sw $t0, -684($fp)
	li $t0, 0
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
	li $t0, 62643
	sw $t0, -704($fp)
	addi $t0, $fp, -112
	sw $t0, -708($fp)
	li $t0, 1
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
	li $t0, 8109
	sw $t0, -728($fp)
	addi $t0, $fp, -112
	sw $t0, -732($fp)
	li $t0, 2
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
	li $t0, 9928
	sw $t0, -752($fp)
	addi $t0, $fp, -112
	sw $t0, -756($fp)
	li $t0, 3
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
	li $t0, 50725
	sw $t0, -776($fp)
	addi $t0, $fp, -112
	sw $t0, -780($fp)
	li $t0, 4
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -780($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -776($fp)
	lw $t1, -792($fp)
	sw $t0, 0($t1)
	lw $t0, -792($fp)
	lw $t1, 0($t0)
	sw $t1, -796($fp)
	li $t0, 26094
	sw $t0, -800($fp)
	addi $t0, $fp, -112
	sw $t0, -804($fp)
	li $t0, 5
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -804($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -800($fp)
	lw $t1, -816($fp)
	sw $t0, 0($t1)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	li $t0, 65521
	sw $t0, -824($fp)
	addi $t0, $fp, -112
	sw $t0, -828($fp)
	li $t0, 6
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -828($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -824($fp)
	lw $t1, -840($fp)
	sw $t0, 0($t1)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	li $t0, 21558
	sw $t0, -848($fp)
	addi $t0, $fp, -112
	sw $t0, -852($fp)
	li $t0, 7
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -852($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -848($fp)
	lw $t1, -864($fp)
	sw $t0, 0($t1)
	lw $t0, -864($fp)
	lw $t1, 0($t0)
	sw $t1, -868($fp)
	li $t0, 10234
	sw $t0, -872($fp)
	addi $t0, $fp, -112
	sw $t0, -876($fp)
	li $t0, 8
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -876($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -872($fp)
	lw $t1, -888($fp)
	sw $t0, 0($t1)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	li $t0, 60620
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 63531
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	li $t0, 34738
	sw $t0, -920($fp)
	jal f7
	sw $v0, -924($fp)
	addi $sp, $sp, 4
	lw $t0, -672($fp)
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	sub $t0, $t0, $t1
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	jal f7
	sw $v0, -940($fp)
	addi $sp, $sp, 4
	lw $t0, -912($fp)
	sw $t0, -944($fp)
	lw $t1, -940($fp)
	lw $t2, -944($fp)
	ble $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -936($fp)
label184:
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -948($fp)
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t1, -920($fp)
	lw $t2, -952($fp)
	bge $t1, $t2, label180
	j label181
label180:
label185:
	li $t0, 62184
	sw $t0, -956($fp)
	addi $t0, $fp, -76
	sw $t0, -960($fp)
	li $t0, 0
	sw $t0, -964($fp)
	lw $t0, -120($fp)
	sw $t0, -968($fp)
	lw $t0, -672($fp)
	sw $t0, -972($fp)
	lw $t1, -968($fp)
	lw $t2, -972($fp)
	beq $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -964($fp)
label189:
	li $t0, 4
	lw $t1, -964($fp)
	mul $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t1, 0($t0)
	sw $t1, -984($fp)
	lw $t1, -956($fp)
	lw $t2, -984($fp)
	beq $t1, $t2, label186
	j label187
label186:
	jal f7
	sw $v0, -988($fp)
	addi $sp, $sp, 4
	li $t0, 52986
	sw $t0, -992($fp)
	lw $t0, -988($fp)
	lw $t1, -992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -996($fp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1000($fp)
	addi $sp, $sp, 8
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
label193:
	li $t0, 0
	sw $t0, -1004($fp)
	addi $t0, $fp, -112
	sw $t0, -1008($fp)
	lw $t0, -432($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1028($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	lw $t0, -420($fp)
	sw $t0, -1040($fp)
	li $t0, 28896
	sw $t0, -1044($fp)
	lw $t1, -1040($fp)
	lw $t2, -1044($fp)
	blt $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -1036($fp)
label201:
	li $t0, 62819
	sw $t0, -1048($fp)
	lw $t1, -1036($fp)
	lw $t2, -1048($fp)
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -1032($fp)
label199:
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1052($fp)
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	lw $t1, -1052($fp)
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	addi $t0, $fp, -52
	sw $t0, -1060($fp)
	li $t0, 2
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
	lw $t1, -1056($fp)
	lw $t2, -1076($fp)
	bge $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -1004($fp)
label197:
	li $t0, 11229
	sw $t0, -1080($fp)
	li $t0, 6024
	sw $t0, -1084($fp)
	li $t0, 0
	lw $t1, -1084($fp)
	sub $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1080($fp)
	lw $t1, -1088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1092($fp)
	lw $t1, -1004($fp)
	lw $t2, -1092($fp)
	bge $t1, $t2, label194
	j label195
label194:
label202:
	li $t0, 64025
	sw $t0, -1096($fp)
	lw $t1, -1096($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label205:
	lw $t0, -120($fp)
	sw $t0, -1100($fp)
	lw $t0, -408($fp)
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 0
	sw $t0, -1112($fp)
	li $t0, 0
	sw $t0, -1116($fp)
	lw $t0, -420($fp)
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label208
label208:
	li $t0, 1
	sw $t0, -1116($fp)
label209:
	lw $t0, -900($fp)
	sw $t0, -1124($fp)
	lw $t0, -1116($fp)
	lw $t1, -1124($fp)
	mul $t0, $t0, $t1
	sw $t0, -1128($fp)
	li $t0, 2963
	sw $t0, -1132($fp)
	li $t0, 4256
	sw $t0, -1136($fp)
	lw $t0, -1132($fp)
	lw $t1, -1136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1140($fp)
	lw $t1, -1128($fp)
	lw $t2, -1140($fp)
	blt $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1112($fp)
label207:
	lw $t0, -1112($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -1144($fp)
	j label202
label204:
	j label193
label195:
	j label192
label191:
	li $t0, 19930
	sw $t0, -1148($fp)
	lw $ra, -4($fp)
	lw $v0, -1148($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label192:
	j label185
label187:
	j label182
label181:
	addi $t0, $fp, -52
	sw $t0, -1152($fp)
	li $t0, 1
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
	li $t0, 7952
	sw $t0, -1172($fp)
	lw $t0, -1168($fp)
	lw $t1, -1172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1176($fp)
	li $t0, 56715
	sw $t0, -1180($fp)
	lw $t0, -1176($fp)
	lw $t1, -1180($fp)
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	li $t0, 35170
	sw $t0, -1188($fp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1192($fp)
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	lw $t1, -1192($fp)
	mul $t0, $t0, $t1
	sw $t0, -1196($fp)
	jal f7
	sw $v0, -1200($fp)
	addi $sp, $sp, 4
	lw $t0, -1196($fp)
	lw $t1, -1200($fp)
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $ra, -4($fp)
	lw $v0, -1204($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label182:
	lw $t0, -120($fp)
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	lw $t0, -156($fp)
	sw $t0, -1216($fp)
	li $t0, 39752
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	li $t0, 25726
	sw $t0, -1228($fp)
	lw $t1, -1224($fp)
	lw $t2, -1228($fp)
	ble $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -1212($fp)
label215:
	lw $t1, -1208($fp)
	lw $t2, -1212($fp)
	bne $t1, $t2, label210
	j label213
label213:
	jal f7
	sw $v0, -1232($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -28
	sw $t0, -1236($fp)
	lw $t0, -900($fp)
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
	lw $t0, -1232($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	jal f7
	sw $v0, -1260($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -40
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	li $t0, 34891
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label219:
	li $t0, 1
	sw $t0, -1268($fp)
label220:
	li $t0, 4
	lw $t1, -1268($fp)
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	lw $t1, -1264($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t1, 0($t0)
	sw $t1, -1284($fp)
	lw $t0, -1260($fp)
	lw $t1, -1284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1288($fp)
	li $t0, 0
	lw $t1, -1288($fp)
	sub $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
label221:
	li $t0, 0
	sw $t0, -1296($fp)
	lw $t0, -384($fp)
	sw $t0, -1300($fp)
	li $t0, 36860
	sw $t0, -1304($fp)
	li $t0, 33835
	sw $t0, -1308($fp)
	lw $t0, -1304($fp)
	lw $t1, -1308($fp)
	mul $t0, $t0, $t1
	sw $t0, -1312($fp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1316($fp)
	addi $sp, $sp, 8
	lw $t1, -1300($fp)
	lw $t2, -1316($fp)
	bgt $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -1296($fp)
label225:
	jal f7
	sw $v0, -1320($fp)
	addi $sp, $sp, 4
	lw $t1, -1296($fp)
	lw $t2, -1320($fp)
	beq $t1, $t2, label222
	j label223
label222:
	li $t0, 44820
	sw $t0, -1324($fp)
	lw $ra, -4($fp)
	lw $v0, -1324($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label221
label223:
	j label218
label217:
	li $t0, 22049
	sw $t0, -1328($fp)
	lw $t0, -672($fp)
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1336($fp)
	li $t0, 59929
	sw $t0, -1340($fp)
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -900($fp)
	sw $t0, -1348($fp)
	lw $t0, -1344($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -900($fp)
	sw $t0, -1356($fp)
	li $t0, 44805
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -132($fp)
	sw $t0, -1368($fp)
	lw $t0, -1364($fp)
	lw $t1, -1368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1372($fp)
	lw $t0, -1352($fp)
	lw $t1, -1372($fp)
	sub $t0, $t0, $t1
	sw $t0, -1376($fp)
	li $t0, 43607
	sw $t0, -1380($fp)
	lw $t0, -1376($fp)
	lw $t1, -1380($fp)
	sub $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 0
	sw $t0, -1392($fp)
	lw $t0, -156($fp)
	sw $t0, -1396($fp)
	li $t0, 4627
	sw $t0, -1400($fp)
	li $t0, 0
	lw $t1, -1400($fp)
	sub $t0, $t0, $t1
	sw $t0, -1404($fp)
	li $t0, 0
	lw $t1, -1404($fp)
	sub $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t1, -1396($fp)
	lw $t2, -1408($fp)
	ble $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -1392($fp)
label232:
	li $t0, 39889
	sw $t0, -1412($fp)
	li $t0, 0
	lw $t1, -1412($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	li $t0, 41602
	sw $t0, -1420($fp)
	li $t0, 39365
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1416($fp)
	lw $t1, -1428($fp)
	sub $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t1, -1392($fp)
	lw $t2, -1432($fp)
	bge $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -1388($fp)
label230:
	lw $ra, -4($fp)
	lw $v0, -1388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label228
label227:
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 36538
	sw $t0, -1444($fp)
	lw $t0, -900($fp)
	sw $t0, -1448($fp)
	lw $t0, -1444($fp)
	lw $t1, -1448($fp)
	sub $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -432($fp)
	sw $t0, -1456($fp)
	lw $t1, -1452($fp)
	lw $t2, -1456($fp)
	ble $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -1440($fp)
label237:
	addi $sp, $sp, -4
	lw $t0, -1440($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1460($fp)
	addi $sp, $sp, 8
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label235
label235:
	lw $t0, -120($fp)
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -1436($fp)
label234:
	li $t0, 29053
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 0
	sw $t0, -1480($fp)
	jal f7
	sw $v0, -1484($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1488($fp)
	li $t0, 2725
	sw $t0, -1492($fp)
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -1488($fp)
label242:
	lw $t0, -132($fp)
	sw $t0, -1496($fp)
	lw $t0, -1488($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1504($fp)
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	lw $t1, -1504($fp)
	mul $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label240
label240:
	li $t0, 33821
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	lw $t0, -432($fp)
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label243:
	li $t0, 1
	sw $t0, -1516($fp)
label244:
	lw $t1, -1512($fp)
	lw $t2, -1516($fp)
	bgt $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -1480($fp)
label239:
	li $t0, 0
	sw $t0, -1524($fp)
	li $t0, 38109
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	lw $t0, -1472($fp)
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label247:
	li $t0, 1
	sw $t0, -1532($fp)
label248:
	lw $t1, -1528($fp)
	lw $t2, -1532($fp)
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -1524($fp)
label246:
	jal f7
	sw $v0, -1540($fp)
	addi $sp, $sp, 4
	li $t0, 56256
	sw $t0, -1544($fp)
	li $t0, 0
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1540($fp)
	lw $t1, -1548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1552($fp)
	li $t0, 0
	lw $t1, -1552($fp)
	sub $t0, $t0, $t1
	sw $t0, -1556($fp)
	addi $t0, $fp, -40
	sw $t0, -1560($fp)
	li $t0, 0
	sw $t0, -1564($fp)
	lw $t0, -432($fp)
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label249:
	li $t0, 1
	sw $t0, -1564($fp)
label250:
	li $t0, 4
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	lw $t0, -1556($fp)
	lw $t1, -1580($fp)
	sub $t0, $t0, $t1
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	li $t0, 45050
	sw $t0, -1592($fp)
	jal f7
	sw $v0, -1596($fp)
	addi $sp, $sp, 4
	lw $t0, -432($fp)
	sw $t0, -1600($fp)
	lw $t0, -144($fp)
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1608($fp)
	lw $t0, -1596($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t1, -1592($fp)
	lw $t2, -1612($fp)
	beq $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -1588($fp)
label252:
	li $t0, 0
	sw $t0, -1616($fp)
	addi $t0, $fp, -76
	sw $t0, -1620($fp)
	lw $t0, -1472($fp)
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -1628($fp)
	li $t0, 4
	lw $t1, -1628($fp)
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	lw $t1, 0($t0)
	sw $t1, -1640($fp)
	li $t0, 0
	sw $t0, -1644($fp)
	addi $t0, $fp, -52
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
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -1644($fp)
label256:
	lw $t1, -1640($fp)
	lw $t2, -1644($fp)
	bgt $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -1616($fp)
label254:
	li $t0, 0
	sw $t0, -1668($fp)
	jal f7
	sw $v0, -1672($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1672($fp)
	sub $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label259:
	li $t0, 48014
	sw $t0, -1680($fp)
	lw $t0, -120($fp)
	sw $t0, -1684($fp)
	lw $t0, -432($fp)
	sw $t0, -1688($fp)
	lw $t0, -1684($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t1, -1680($fp)
	lw $t2, -1692($fp)
	blt $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -1668($fp)
label258:
label228:
label218:
	j label212
label211:
	li $t0, 0
	sw $t0, -1696($fp)
	li $t0, 48389
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label263:
	li $t0, 1
	sw $t0, -1696($fp)
label264:
	li $t0, 9139
	sw $t0, -1704($fp)
	lw $t0, -1696($fp)
	lw $t1, -1704($fp)
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	li $t0, 0
	lw $t1, -1708($fp)
	sub $t0, $t0, $t1
	sw $t0, -1712($fp)
	li $t0, 0
	lw $t1, -1712($fp)
	sub $t0, $t0, $t1
	sw $t0, -1716($fp)
	li $t0, 45548
	sw $t0, -1720($fp)
	li $t0, 0
	lw $t1, -1720($fp)
	sub $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1716($fp)
	lw $t1, -1724($fp)
	sub $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 0
	sw $t0, -1732($fp)
	li $t0, 0
	sw $t0, -1736($fp)
	lw $t0, -660($fp)
	sw $t0, -1740($fp)
	li $t0, 19996
	sw $t0, -1744($fp)
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1748($fp)
	lw $t0, -144($fp)
	sw $t0, -1752($fp)
	lw $t1, -1748($fp)
	lw $t2, -1752($fp)
	bgt $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -1736($fp)
label268:
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1756($fp)
	addi $sp, $sp, 8
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label265
label265:
	li $t0, 1
	sw $t0, -1732($fp)
label266:
label261:
label269:
	addi $t0, $fp, -76
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 17091
	sw $t0, -1768($fp)
	lw $t0, -132($fp)
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label274:
	li $t0, 36727
	sw $t0, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -1764($fp)
label273:
	li $t0, 4
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	lw $t1, 0($t0)
	sw $t1, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	lw $t0, -120($fp)
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label275
label275:
	li $t0, 1
	sw $t0, -1796($fp)
label276:
	lw $t1, -1792($fp)
	lw $t2, -1796($fp)
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 0
	sw $t0, -1808($fp)
	li $t0, 55166
	sw $t0, -1812($fp)
	lw $t1, -1812($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -1808($fp)
label281:
	li $t0, 0
	lw $t1, -1808($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label279:
	li $t0, 56844
	sw $t0, -1820($fp)
	li $t0, 1
	sw $t0, -1824($fp)
	lw $t0, -1820($fp)
	lw $t1, -1824($fp)
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -432($fp)
	sw $t0, -1836($fp)
	li $t0, 0
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1832($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -1804($fp)
label278:
	j label269
label271:
	li $t0, 0
	sw $t0, -1848($fp)
	li $t0, 24522
	sw $t0, -1852($fp)
	li $t0, 28168
	sw $t0, -1856($fp)
	lw $t1, -1852($fp)
	lw $t2, -1856($fp)
	beq $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -1848($fp)
label283:
	lw $ra, -4($fp)
	lw $v0, -1848($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label212:
	li $t0, 30752
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	li $t0, 3806
	sw $t0, -1900($fp)
	addi $t0, $fp, -1884
	sw $t0, -1904($fp)
	li $t0, 0
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
	li $t0, 50217
	sw $t0, -1924($fp)
	addi $t0, $fp, -1884
	sw $t0, -1928($fp)
	li $t0, 1
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
	li $t0, 25145
	sw $t0, -1948($fp)
	addi $t0, $fp, -1884
	sw $t0, -1952($fp)
	li $t0, 2
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1952($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1948($fp)
	lw $t1, -1964($fp)
	sw $t0, 0($t1)
	lw $t0, -1964($fp)
	lw $t1, 0($t0)
	sw $t1, -1968($fp)
	li $t0, 48611
	sw $t0, -1972($fp)
	addi $t0, $fp, -1884
	sw $t0, -1976($fp)
	li $t0, 3
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
	li $t0, 28289
	sw $t0, -1996($fp)
	addi $t0, $fp, -1884
	sw $t0, -2000($fp)
	li $t0, 4
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
	li $t0, 29772
	sw $t0, -2020($fp)
	addi $t0, $fp, -1884
	sw $t0, -2024($fp)
	li $t0, 5
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
	li $t0, 22964
	sw $t0, -2044($fp)
	addi $t0, $fp, -1884
	sw $t0, -2048($fp)
	li $t0, 6
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
	li $t0, 4355
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	li $t0, 3602
	sw $t0, -2080($fp)
	addi $sp, $sp, -4
	lw $t0, -2080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2084($fp)
	addi $sp, $sp, 8
label284:
	lw $t0, -660($fp)
	sw $t0, -2088($fp)
	lw $t0, -672($fp)
	sw $t0, -2092($fp)
	li $t0, 0
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	li $t0, 59502
	sw $t0, -2100($fp)
	lw $t0, -672($fp)
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2096($fp)
	lw $t1, -2108($fp)
	sub $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t1, -2088($fp)
	lw $t2, -2112($fp)
	ble $t1, $t2, label285
	j label286
label285:
	li $t0, 33408
	sw $t0, -2116($fp)
	li $t0, 6327
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $ra, -4($fp)
	lw $v0, -2124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label284
label286:
label287:
	li $t0, 27788
	sw $t0, -2128($fp)
	li $t0, 0
	lw $t1, -2128($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	li $t0, 0
	lw $t1, -2132($fp)
	sub $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2072($fp)
	sw $t0, -2140($fp)
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	li $t0, 5981
	sw $t0, -2148($fp)
	jal f7
	sw $v0, -2152($fp)
	addi $sp, $sp, 4
	lw $t0, -2148($fp)
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t1, -2144($fp)
	lw $t2, -2156($fp)
	bgt $t1, $t2, label288
	j label289
label288:
label290:
	addi $t0, $fp, -52
	sw $t0, -2160($fp)
	li $t0, 0
	sw $t0, -2164($fp)
	lw $t0, -672($fp)
	sw $t0, -2168($fp)
	li $t0, 62583
	sw $t0, -2172($fp)
	lw $t0, -2168($fp)
	lw $t1, -2172($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label295
label295:
	li $t0, 7302
	sw $t0, -2180($fp)
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -2164($fp)
label294:
	li $t0, 4
	lw $t1, -2164($fp)
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	addi $t0, $fp, -40
	sw $t0, -2196($fp)
	jal f7
	sw $v0, -2200($fp)
	addi $sp, $sp, 4
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
	lw $t1, -2192($fp)
	lw $t2, -2212($fp)
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 0
	sw $t0, -2216($fp)
	addi $t0, $fp, -76
	sw $t0, -2220($fp)
	li $t0, 4
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
	lw $t1, -2236($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -2216($fp)
label300:
	li $t0, 0
	sw $t0, -2240($fp)
	addi $t0, $fp, -1884
	sw $t0, -2244($fp)
	lw $t0, -384($fp)
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
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -2240($fp)
label302:
	li $t0, 0
	lw $t1, -2240($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t1, -2216($fp)
	lw $t2, -2264($fp)
	ble $t1, $t2, label296
	j label297
label296:
	li $t0, 55316
	sw $t0, -2268($fp)
	li $t0, 0
	lw $t1, -2268($fp)
	sub $t0, $t0, $t1
	sw $t0, -2272($fp)
	li $t0, 0
	sw $t0, -2276($fp)
	addi $t0, $fp, -76
	sw $t0, -2280($fp)
	li $t0, 4
	sw $t0, -2284($fp)
	li $t0, 4
	lw $t1, -2284($fp)
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, 0($t0)
	sw $t1, -2296($fp)
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -2276($fp)
label304:
	li $t0, 0
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2272($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	j label298
label297:
	li $t0, 35329
	sw $t0, -2308($fp)
	lw $t0, -1892($fp)
	sw $t0, -2312($fp)
	lw $t0, -396($fp)
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2308($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	jal f7
	sw $v0, -2332($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -2332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label307
label306:
	jal f7
	sw $v0, -2336($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2340($fp)
	li $t0, 52965
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 1
	sw $t0, -2340($fp)
label309:
	lw $t0, -2336($fp)
	lw $t1, -2340($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
label307:
label298:
	j label290
label292:
	j label287
label289:
	lw $t0, -120($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2368($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -2388($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -2408($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -2428($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -2448($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -2468($fp)
	li $t0, 5
	sw $t0, -2472($fp)
	li $t0, 4
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, 0($t0)
	sw $t1, -2484($fp)
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2488($fp)
	li $t0, 0
	sw $t0, -2492($fp)
	li $t0, 4
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, 0($t0)
	sw $t1, -2504($fp)
	lw $t0, -2504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2508($fp)
	li $t0, 1
	sw $t0, -2512($fp)
	li $t0, 4
	lw $t1, -2512($fp)
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2528($fp)
	li $t0, 2
	sw $t0, -2532($fp)
	li $t0, 4
	lw $t1, -2532($fp)
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	lw $t1, 0($t0)
	sw $t1, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2568($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -2588($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -2608($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	lw $t0, -660($fp)
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2756($fp)
	li $t0, 0
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
	addi $t0, $fp, -112
	sw $t0, -2776($fp)
	li $t0, 1
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
	addi $t0, $fp, -112
	sw $t0, -2796($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -2816($fp)
	li $t0, 3
	sw $t0, -2820($fp)
	li $t0, 4
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, -2816($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, 0($t0)
	sw $t1, -2832($fp)
	lw $t0, -2832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2836($fp)
	li $t0, 4
	sw $t0, -2840($fp)
	li $t0, 4
	lw $t1, -2840($fp)
	mul $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	lw $t1, 0($t0)
	sw $t1, -2852($fp)
	lw $t0, -2852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2856($fp)
	li $t0, 5
	sw $t0, -2860($fp)
	li $t0, 4
	lw $t1, -2860($fp)
	mul $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, -2856($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	lw $t1, 0($t0)
	sw $t1, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2876($fp)
	li $t0, 6
	sw $t0, -2880($fp)
	li $t0, 4
	lw $t1, -2880($fp)
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, 0($t0)
	sw $t1, -2892($fp)
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2896($fp)
	li $t0, 7
	sw $t0, -2900($fp)
	li $t0, 4
	lw $t1, -2900($fp)
	mul $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, 0($t0)
	sw $t1, -2912($fp)
	lw $t0, -2912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -2916($fp)
	li $t0, 8
	sw $t0, -2920($fp)
	li $t0, 4
	lw $t1, -2920($fp)
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	lw $t1, -2916($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -912($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2944($fp)
	li $t0, 12487
	sw $t0, -2948($fp)
	li $t0, 0
	sw $t0, -2952($fp)
	lw $t0, -432($fp)
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -2952($fp)
label314:
	lw $t0, -408($fp)
	sw $t0, -2960($fp)
	lw $t0, -2952($fp)
	lw $t1, -2960($fp)
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2948($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label311
label312:
	li $t0, 6520
	sw $t0, -2972($fp)
	li $t0, 42595
	sw $t0, -2976($fp)
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -2944($fp)
label311:
	lw $ra, -4($fp)
	lw $v0, -2944($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -496
	li $t0, 3795
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
	li $t0, 3438
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
	li $t0, 1581
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
	li $t0, 31963
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
	li $t0, 34190
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
	li $t0, 5387
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
	li $t0, 16645
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
	li $t0, 59336
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
	li $t0, 53998
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
	li $t0, 44934
	sw $t0, -260($fp)
	addi $t0, $fp, -40
	sw $t0, -264($fp)
	li $t0, 0
	sw $t0, -268($fp)
	li $t0, 4
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	lw $t1, 0($t0)
	sw $t1, -280($fp)
	lw $t0, -260($fp)
	lw $t1, -280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -284($fp)
	addi $t0, $fp, -40
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	li $t0, 49289
	sw $t0, -296($fp)
	lw $t0, 4($fp)
	sw $t0, -300($fp)
	lw $t1, -296($fp)
	lw $t2, -300($fp)
	blt $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -292($fp)
label316:
	li $t0, 4
	lw $t1, -292($fp)
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	lw $t1, 0($t0)
	sw $t1, -312($fp)
	lw $t0, -284($fp)
	lw $t1, -312($fp)
	mul $t0, $t0, $t1
	sw $t0, -316($fp)
	addi $t0, $fp, -40
	sw $t0, -320($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -340($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -360($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -380($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -400($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -420($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -440($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -460($fp)
	li $t0, 7
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
	li $t0, 8
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
	li $t0, 27174
	sw $t0, -500($fp)
	lw $ra, -4($fp)
	lw $v0, -500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -416
	li $t0, 5393
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 17162
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 33502
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
	li $t0, 33181
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
	li $t0, 23143
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
	li $t0, 30549
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
	li $t0, 40484
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
	li $t0, 7722
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
	lw $t0, -36($fp)
	sw $t0, -200($fp)
	addi $t0, $fp, -28
	sw $t0, -204($fp)
	li $t0, 4
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
	lw $t0, -200($fp)
	lw $t1, -220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -224($fp)
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 40691
	sw $t0, -232($fp)
	li $t0, 0
	sw $t0, -236($fp)
	lw $t0, -48($fp)
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label323
label323:
	li $t0, 57
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label322
label322:
	lw $t0, -48($fp)
	sw $t0, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -236($fp)
label321:
	li $t0, 0
	sw $t0, -252($fp)
	lw $t0, -48($fp)
	sw $t0, -256($fp)
	li $t0, 12202
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	sub $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t1, -264($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label326:
	lw $t0, -36($fp)
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -252($fp)
label325:
	addi $sp, $sp, -4
	lw $t0, -236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -252($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -272($fp)
	addi $sp, $sp, 12
	lw $t0, -232($fp)
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t1, -276($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label319
label319:
	li $t0, 28120
	sw $t0, -280($fp)
	li $t0, 24689
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -228($fp)
label318:
	lw $t0, -36($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	li $t0, 6578
	sw $t0, -420($fp)
	lw $ra, -4($fp)
	lw $v0, -420($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8272
	li $t0, 5179
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 28485
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 10016
	sw $t0, -232($fp)
	addi $t0, $fp, -16
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
	li $t0, 6761
	sw $t0, -256($fp)
	addi $t0, $fp, -16
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
	li $t0, 60448
	sw $t0, -280($fp)
	addi $t0, $fp, -16
	sw $t0, -284($fp)
	li $t0, 2
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
	li $t0, 44206
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 12148
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 11557
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 38006
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 611
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 56491
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 61579
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 12038
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 40245
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 23217
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 17431
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 57407
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 56719
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 50613
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 15014
	sw $t0, -472($fp)
	addi $t0, $fp, -40
	sw $t0, -476($fp)
	li $t0, 0
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
	li $t0, 21733
	sw $t0, -496($fp)
	addi $t0, $fp, -40
	sw $t0, -500($fp)
	li $t0, 1
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
	li $t0, 25561
	sw $t0, -520($fp)
	addi $t0, $fp, -40
	sw $t0, -524($fp)
	li $t0, 2
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
	li $t0, 22737
	sw $t0, -544($fp)
	addi $t0, $fp, -40
	sw $t0, -548($fp)
	li $t0, 3
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
	li $t0, 38539
	sw $t0, -568($fp)
	addi $t0, $fp, -40
	sw $t0, -572($fp)
	li $t0, 4
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
	li $t0, 55825
	sw $t0, -592($fp)
	addi $t0, $fp, -40
	sw $t0, -596($fp)
	li $t0, 5
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
	li $t0, 63428
	sw $t0, -616($fp)
	addi $t0, $fp, -80
	sw $t0, -620($fp)
	li $t0, 0
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
	li $t0, 50741
	sw $t0, -640($fp)
	addi $t0, $fp, -80
	sw $t0, -644($fp)
	li $t0, 1
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
	li $t0, 55883
	sw $t0, -664($fp)
	addi $t0, $fp, -80
	sw $t0, -668($fp)
	li $t0, 2
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
	li $t0, 26012
	sw $t0, -688($fp)
	addi $t0, $fp, -80
	sw $t0, -692($fp)
	li $t0, 3
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -692($fp)
	lw $t1, -700($fp)
	add $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t0, -688($fp)
	lw $t1, -704($fp)
	sw $t0, 0($t1)
	lw $t0, -704($fp)
	lw $t1, 0($t0)
	sw $t1, -708($fp)
	li $t0, 9894
	sw $t0, -712($fp)
	addi $t0, $fp, -80
	sw $t0, -716($fp)
	li $t0, 4
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -716($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -712($fp)
	lw $t1, -728($fp)
	sw $t0, 0($t1)
	lw $t0, -728($fp)
	lw $t1, 0($t0)
	sw $t1, -732($fp)
	li $t0, 62461
	sw $t0, -736($fp)
	addi $t0, $fp, -80
	sw $t0, -740($fp)
	li $t0, 5
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -740($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -736($fp)
	lw $t1, -752($fp)
	sw $t0, 0($t1)
	lw $t0, -752($fp)
	lw $t1, 0($t0)
	sw $t1, -756($fp)
	li $t0, 31191
	sw $t0, -760($fp)
	addi $t0, $fp, -80
	sw $t0, -764($fp)
	li $t0, 6
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -764($fp)
	lw $t1, -772($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -760($fp)
	lw $t1, -776($fp)
	sw $t0, 0($t1)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	li $t0, 38379
	sw $t0, -784($fp)
	addi $t0, $fp, -80
	sw $t0, -788($fp)
	li $t0, 7
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
	li $t0, 6941
	sw $t0, -808($fp)
	addi $t0, $fp, -80
	sw $t0, -812($fp)
	li $t0, 8
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
	li $t0, 37952
	sw $t0, -832($fp)
	addi $t0, $fp, -80
	sw $t0, -836($fp)
	li $t0, 9
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
	li $t0, 33292
	sw $t0, -856($fp)
	addi $t0, $fp, -108
	sw $t0, -860($fp)
	li $t0, 0
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
	li $t0, 51147
	sw $t0, -880($fp)
	addi $t0, $fp, -108
	sw $t0, -884($fp)
	li $t0, 1
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
	li $t0, 50101
	sw $t0, -904($fp)
	addi $t0, $fp, -108
	sw $t0, -908($fp)
	li $t0, 2
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
	li $t0, 44849
	sw $t0, -928($fp)
	addi $t0, $fp, -108
	sw $t0, -932($fp)
	li $t0, 3
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
	li $t0, 23618
	sw $t0, -952($fp)
	addi $t0, $fp, -108
	sw $t0, -956($fp)
	li $t0, 4
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
	li $t0, 50712
	sw $t0, -976($fp)
	addi $t0, $fp, -108
	sw $t0, -980($fp)
	li $t0, 5
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
	li $t0, 35805
	sw $t0, -1000($fp)
	addi $t0, $fp, -108
	sw $t0, -1004($fp)
	li $t0, 6
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
	li $t0, 19661
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 62750
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 10514
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 42878
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 14645
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 2385
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 34062
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	li $t0, 65258
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	li $t0, 17399
	sw $t0, -1120($fp)
	addi $t0, $fp, -128
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
	li $t0, 55795
	sw $t0, -1144($fp)
	addi $t0, $fp, -128
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
	li $t0, 25283
	sw $t0, -1168($fp)
	addi $t0, $fp, -128
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
	li $t0, 40136
	sw $t0, -1192($fp)
	addi $t0, $fp, -128
	sw $t0, -1196($fp)
	li $t0, 3
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
	li $t0, 28798
	sw $t0, -1216($fp)
	addi $t0, $fp, -128
	sw $t0, -1220($fp)
	li $t0, 4
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
	li $t0, 15573
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 38028
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 14003
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 5920
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 64040
	sw $t0, -1288($fp)
	addi $t0, $fp, -152
	sw $t0, -1292($fp)
	li $t0, 0
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1292($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1288($fp)
	lw $t1, -1304($fp)
	sw $t0, 0($t1)
	lw $t0, -1304($fp)
	lw $t1, 0($t0)
	sw $t1, -1308($fp)
	li $t0, 23897
	sw $t0, -1312($fp)
	addi $t0, $fp, -152
	sw $t0, -1316($fp)
	li $t0, 1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1316($fp)
	lw $t1, -1324($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1312($fp)
	lw $t1, -1328($fp)
	sw $t0, 0($t1)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	li $t0, 2845
	sw $t0, -1336($fp)
	addi $t0, $fp, -152
	sw $t0, -1340($fp)
	li $t0, 2
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1340($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1336($fp)
	lw $t1, -1352($fp)
	sw $t0, 0($t1)
	lw $t0, -1352($fp)
	lw $t1, 0($t0)
	sw $t1, -1356($fp)
	li $t0, 29696
	sw $t0, -1360($fp)
	addi $t0, $fp, -152
	sw $t0, -1364($fp)
	li $t0, 3
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1364($fp)
	lw $t1, -1372($fp)
	add $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1360($fp)
	lw $t1, -1376($fp)
	sw $t0, 0($t1)
	lw $t0, -1376($fp)
	lw $t1, 0($t0)
	sw $t1, -1380($fp)
	li $t0, 62277
	sw $t0, -1384($fp)
	addi $t0, $fp, -152
	sw $t0, -1388($fp)
	li $t0, 4
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
	li $t0, 9786
	sw $t0, -1408($fp)
	addi $t0, $fp, -152
	sw $t0, -1412($fp)
	li $t0, 5
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
	li $t0, 2112
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 30033
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 60933
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 52213
	sw $t0, -1468($fp)
	addi $t0, $fp, -180
	sw $t0, -1472($fp)
	li $t0, 0
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
	li $t0, 9346
	sw $t0, -1492($fp)
	addi $t0, $fp, -180
	sw $t0, -1496($fp)
	li $t0, 1
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
	li $t0, 19015
	sw $t0, -1516($fp)
	addi $t0, $fp, -180
	sw $t0, -1520($fp)
	li $t0, 2
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
	li $t0, 37389
	sw $t0, -1540($fp)
	addi $t0, $fp, -180
	sw $t0, -1544($fp)
	li $t0, 3
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
	li $t0, 45151
	sw $t0, -1564($fp)
	addi $t0, $fp, -180
	sw $t0, -1568($fp)
	li $t0, 4
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
	li $t0, 38676
	sw $t0, -1588($fp)
	addi $t0, $fp, -180
	sw $t0, -1592($fp)
	li $t0, 5
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
	li $t0, 34603
	sw $t0, -1612($fp)
	addi $t0, $fp, -180
	sw $t0, -1616($fp)
	li $t0, 6
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
	li $t0, 55665
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 16019
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	li $t0, 49249
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	li $t0, 58050
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 50081
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	li $t0, 48971
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	li $t0, 9914
	sw $t0, -1708($fp)
	addi $t0, $fp, -200
	sw $t0, -1712($fp)
	li $t0, 0
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
	li $t0, 40340
	sw $t0, -1732($fp)
	addi $t0, $fp, -200
	sw $t0, -1736($fp)
	li $t0, 1
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
	li $t0, 8719
	sw $t0, -1756($fp)
	addi $t0, $fp, -200
	sw $t0, -1760($fp)
	li $t0, 2
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1760($fp)
	lw $t1, -1768($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1756($fp)
	lw $t1, -1772($fp)
	sw $t0, 0($t1)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	li $t0, 50050
	sw $t0, -1780($fp)
	addi $t0, $fp, -200
	sw $t0, -1784($fp)
	li $t0, 3
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
	li $t0, 3602
	sw $t0, -1804($fp)
	addi $t0, $fp, -200
	sw $t0, -1808($fp)
	li $t0, 4
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
	li $t0, 24292
	sw $t0, -1828($fp)
	addi $t0, $fp, -204
	sw $t0, -1832($fp)
	li $t0, 0
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
	li $t0, 22543
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	li $t0, 17605
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
label327:
	li $t0, 30212
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 21047
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	li $t0, 41502
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	li $t0, 33057
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -1912($fp)
	lw $t0, -1884($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1896($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1908($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 0
	sw $t0, -1932($fp)
	li $t0, 50743
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label333
label333:
	li $t0, 1
	sw $t0, -1932($fp)
label334:
	li $t0, 0
	lw $t1, -1932($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
	addi $sp, $sp, -4
	lw $t0, -1940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1944($fp)
	addi $sp, $sp, 8
	li $t0, 38243
	sw $t0, -1948($fp)
	li $t0, 0
	lw $t1, -1948($fp)
	sub $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1944($fp)
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label332:
	addi $t0, $fp, -16
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
	li $t0, 0
	sw $t0, -1980($fp)
	li $t0, 2740
	sw $t0, -1984($fp)
	lw $t0, -1436($fp)
	sw $t0, -1988($fp)
	lw $t1, -1984($fp)
	lw $t2, -1988($fp)
	blt $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -1980($fp)
label336:
	lw $t1, -1976($fp)
	lw $t2, -1980($fp)
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -1928($fp)
label331:
	lw $ra, -4($fp)
	lw $v0, -1928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1992($fp)
	li $t0, 0
	sw $t0, -1996($fp)
	jal f7
	sw $v0, -2000($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2004($fp)
	lw $t0, -1856($fp)
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -2004($fp)
label342:
	lw $t0, -2000($fp)
	lw $t1, -2004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2012($fp)
	li $t0, 0
	lw $t1, -2012($fp)
	sub $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -1460($fp)
	sw $t0, -2020($fp)
	li $t0, 38240
	sw $t0, -2024($fp)
	lw $t0, -2020($fp)
	lw $t1, -2024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2028($fp)
	li $t0, 39533
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t1, -2016($fp)
	lw $t2, -2036($fp)
	blt $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -1996($fp)
label340:
	lw $t0, -1268($fp)
	sw $t0, -2040($fp)
	lw $t0, -1652($fp)
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2048($fp)
	li $t0, 0
	lw $t1, -2048($fp)
	sub $t0, $t0, $t1
	sw $t0, -2052($fp)
	li $t0, 12087
	sw $t0, -2056($fp)
	li $t0, 57256
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2064($fp)
	lw $t0, -2052($fp)
	lw $t1, -2064($fp)
	sub $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t1, -1996($fp)
	lw $t2, -2068($fp)
	ble $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -1992($fp)
label338:
	addi $t0, $fp, -180
	sw $t0, -2072($fp)
	li $t0, 0
	sw $t0, -2076($fp)
	li $t0, 0
	sw $t0, -2080($fp)
	li $t0, 0
	sw $t0, -2084($fp)
	lw $t0, -1868($fp)
	sw $t0, -2088($fp)
	lw $t0, -1112($fp)
	sw $t0, -2092($fp)
	lw $t1, -2088($fp)
	lw $t2, -2092($fp)
	bge $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -2084($fp)
label351:
	lw $t0, -1076($fp)
	sw $t0, -2096($fp)
	lw $t1, -2084($fp)
	lw $t2, -2096($fp)
	ble $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -2080($fp)
label349:
	li $t0, 11387
	sw $t0, -2100($fp)
	li $t0, 57238
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t1, -2080($fp)
	lw $t2, -2108($fp)
	beq $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -2076($fp)
label347:
	li $t0, 4
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 0
	sw $t0, -2124($fp)
	li $t0, 0
	sw $t0, -2128($fp)
	li $t0, 0
	sw $t0, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	lw $t0, -1884($fp)
	sw $t0, -2140($fp)
	li $t0, 30396
	sw $t0, -2144($fp)
	lw $t1, -2140($fp)
	lw $t2, -2144($fp)
	blt $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -2136($fp)
label359:
	lw $t0, -1280($fp)
	sw $t0, -2148($fp)
	lw $t1, -2136($fp)
	lw $t2, -2148($fp)
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -2132($fp)
label357:
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2152($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -212($fp)
	sw $t0, -2160($fp)
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	li $t0, 0
	sw $t0, -2168($fp)
	lw $t0, -1908($fp)
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -2168($fp)
label361:
	lw $t1, -2164($fp)
	lw $t2, -2168($fp)
	beq $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -2128($fp)
label355:
	li $t0, 45990
	sw $t0, -2176($fp)
	lw $t1, -2128($fp)
	lw $t2, -2176($fp)
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -2124($fp)
label353:
	j label345
label344:
	lw $t0, -1896($fp)
	sw $t0, -2180($fp)
	lw $ra, -4($fp)
	lw $v0, -2180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label345:
	li $t0, 0
	sw $t0, -2184($fp)
	li $t0, 47368
	sw $t0, -2188($fp)
	li $t0, 0
	sw $t0, -2192($fp)
	lw $t0, -1052($fp)
	sw $t0, -2196($fp)
	li $t0, 46415
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	sub $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -1908($fp)
	sw $t0, -2208($fp)
	lw $t0, -2204($fp)
	lw $t1, -2208($fp)
	sub $t0, $t0, $t1
	sw $t0, -2212($fp)
	li $t0, 0
	sw $t0, -2216($fp)
	li $t0, 29703
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label366
label366:
	li $t0, 1
	sw $t0, -2216($fp)
label367:
	lw $t1, -2212($fp)
	lw $t2, -2216($fp)
	blt $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -2192($fp)
label365:
	lw $t1, -2188($fp)
	lw $t2, -2192($fp)
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -2184($fp)
label363:
label368:
	li $t0, 0
	sw $t0, -2224($fp)
	addi $t0, $fp, -204
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	li $t0, 4
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, 0($t0)
	sw $t1, -2244($fp)
	lw $t1, -2244($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -2224($fp)
label372:
	lw $t0, -308($fp)
	sw $t0, -2248($fp)
	lw $t0, -2224($fp)
	lw $t1, -2248($fp)
	sub $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -380($fp)
	sw $t0, -2256($fp)
	lw $t1, -2252($fp)
	lw $t2, -2256($fp)
	blt $t1, $t2, label369
	j label370
label369:
	li $t0, 13139
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	sw $t0, -2268($fp)
	li $t0, 49796
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	sw $t0, -2280($fp)
	lw $t0, -2264($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2276($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t0, -1256($fp)
	sw $t0, -2300($fp)
	li $t0, 0
	lw $t1, -2300($fp)
	sub $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -2296($fp)
label374:
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $ra, -4($fp)
	lw $v0, -2308($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -40
	sw $t0, -2312($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -2328($fp)
	sub $t0, $t0, $t1
	sw $t0, -2332($fp)
	li $t0, 0
	sw $t0, -2336($fp)
	lw $t0, -224($fp)
	sw $t0, -2340($fp)
	li $t0, 0
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	lw $t0, -1028($fp)
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label384
label386:
	li $t0, 34311
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label385:
	lw $t0, -1040($fp)
	sw $t0, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -2348($fp)
label384:
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2364($fp)
	addi $sp, $sp, 8
	lw $t1, -2364($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label382:
	li $t0, 9366
	sw $t0, -2368($fp)
	lw $t1, -2368($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -2344($fp)
label381:
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2372($fp)
	addi $sp, $sp, 8
	lw $t1, -2340($fp)
	lw $t2, -2372($fp)
	blt $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -2336($fp)
label379:
	lw $t1, -2332($fp)
	lw $t2, -2336($fp)
	beq $t1, $t2, label375
	j label376
label375:
	li $t0, 0
	sw $t0, -2376($fp)
	li $t0, 46150
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -2376($fp)
label388:
	lw $t0, -1076($fp)
	sw $t0, -2384($fp)
	lw $t0, -2376($fp)
	lw $t1, -2384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2388($fp)
	lw $t0, -212($fp)
	sw $t0, -2392($fp)
	lw $t0, -2388($fp)
	lw $t1, -2392($fp)
	sub $t0, $t0, $t1
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	lw $t0, -2276($fp)
	sw $t0, -2404($fp)
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label389:
	li $t0, 1
	sw $t0, -2400($fp)
label390:
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	sub $t0, $t0, $t1
	sw $t0, -2408($fp)
	j label377
label376:
	li $t0, 0
	sw $t0, -2412($fp)
	li $t0, 0
	sw $t0, -2416($fp)
	lw $t0, -1112($fp)
	sw $t0, -2420($fp)
	li $t0, 0
	sw $t0, -2424($fp)
	lw $t0, -1088($fp)
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label395:
	li $t0, 1
	sw $t0, -2424($fp)
label396:
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	li $t0, 56854
	sw $t0, -2436($fp)
	li $t0, 0
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	li $t0, 26971
	sw $t0, -2444($fp)
	lw $t0, -2440($fp)
	lw $t1, -2444($fp)
	sub $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t1, -2432($fp)
	lw $t2, -2448($fp)
	ble $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -2416($fp)
label394:
	lw $t0, -1100($fp)
	sw $t0, -2452($fp)
	lw $t0, -1088($fp)
	sw $t0, -2456($fp)
	lw $t0, -2452($fp)
	lw $t1, -2456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2460($fp)
	li $t0, 0
	lw $t1, -2460($fp)
	sub $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -320($fp)
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t1, -2416($fp)
	lw $t2, -2472($fp)
	bge $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -2412($fp)
label392:
label377:
	lw $t0, -2264($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2276($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2484($fp)
	jal f9
	sw $v0, -2488($fp)
	addi $sp, $sp, 4
	lw $t0, -1052($fp)
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	li $t0, 10826
	sw $t0, -2500($fp)
	lw $t0, -1052($fp)
	sw $t0, -2504($fp)
	lw $t0, -2500($fp)
	lw $t1, -2504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2508($fp)
	lw $t0, -356($fp)
	sw $t0, -2512($fp)
	lw $t0, -2508($fp)
	lw $t1, -2512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2516($fp)
	lw $t0, -2496($fp)
	lw $t1, -2516($fp)
	sub $t0, $t0, $t1
	sw $t0, -2520($fp)
	addi $t0, $fp, -180
	sw $t0, -2524($fp)
	lw $t0, -1052($fp)
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
	lw $t0, -452($fp)
	sw $t0, -2544($fp)
	lw $t0, -2540($fp)
	lw $t1, -2544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2548($fp)
	lw $t1, -2520($fp)
	lw $t2, -2548($fp)
	ble $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -2484($fp)
label398:
	lw $ra, -4($fp)
	lw $v0, -2484($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2264($fp)
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label400
label402:
	li $t0, 0
	sw $t0, -2556($fp)
	addi $t0, $fp, -80
	sw $t0, -2560($fp)
	li $t0, 9
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
	li $t0, 41181
	sw $t0, -2580($fp)
	lw $t1, -2576($fp)
	lw $t2, -2580($fp)
	beq $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -2556($fp)
label404:
	li $t0, 0
	sw $t0, -2584($fp)
	lw $t0, -368($fp)
	sw $t0, -2588($fp)
	li $t0, 12365
	sw $t0, -2592($fp)
	lw $t0, -2588($fp)
	lw $t1, -2592($fp)
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	li $t0, 2938
	sw $t0, -2600($fp)
	lw $t1, -2596($fp)
	lw $t2, -2600($fp)
	blt $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -2584($fp)
label406:
	addi $sp, $sp, -4
	lw $t0, -2556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2604($fp)
	addi $sp, $sp, 12
	jal f9
	sw $v0, -2608($fp)
	addi $sp, $sp, 4
	lw $t0, -2604($fp)
	lw $t1, -2608($fp)
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 0
	sw $t0, -2616($fp)
	li $t0, 0
	sw $t0, -2620($fp)
	jal f9
	sw $v0, -2624($fp)
	addi $sp, $sp, 4
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label409
label409:
	li $t0, 1
	sw $t0, -2620($fp)
label410:
	li $t0, 0
	sw $t0, -2628($fp)
	addi $t0, $fp, -40
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
	lw $t1, -2648($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -2628($fp)
label412:
	lw $t1, -2620($fp)
	lw $t2, -2628($fp)
	beq $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -2616($fp)
label408:
	j label401
label400:
	addi $t0, $fp, -128
	sw $t0, -2652($fp)
	li $t0, 0
	sw $t0, -2656($fp)
	addi $t0, $fp, -180
	sw $t0, -2660($fp)
	li $t0, 0
	sw $t0, -2664($fp)
	li $t0, 4
	lw $t1, -2664($fp)
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	lw $t1, -2660($fp)
	add $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	lw $t1, 0($t0)
	sw $t1, -2676($fp)
	li $t0, 24426
	sw $t0, -2680($fp)
	li $t0, 0
	lw $t1, -2680($fp)
	sub $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t1, -2676($fp)
	lw $t2, -2684($fp)
	blt $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -2656($fp)
label414:
	li $t0, 4
	lw $t1, -2656($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, 0($t0)
	sw $t1, -2696($fp)
label401:
label415:
	li $t0, 0
	sw $t0, -2700($fp)
	addi $t0, $fp, -180
	sw $t0, -2704($fp)
	lw $t0, -332($fp)
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
	li $t0, 56009
	sw $t0, -2724($fp)
	lw $t0, -2720($fp)
	lw $t1, -2724($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2732($fp)
	addi $sp, $sp, 8
	lw $t1, -2732($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -2700($fp)
label419:
	li $t0, 0
	lw $t1, -2700($fp)
	sub $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 0
	sw $t0, -2740($fp)
	lw $t0, -404($fp)
	sw $t0, -2744($fp)
	lw $t0, -1688($fp)
	sw $t0, -2748($fp)
	lw $t1, -2744($fp)
	lw $t2, -2748($fp)
	bne $t1, $t2, label420
	j label422
label422:
	lw $t0, -368($fp)
	sw $t0, -2752($fp)
	li $t0, 51150
	sw $t0, -2756($fp)
	lw $t1, -2752($fp)
	lw $t2, -2756($fp)
	blt $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -2740($fp)
label421:
	lw $t0, -2740($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -2760($fp)
	j label415
label417:
label423:
	addi $t0, $fp, -180
	sw $t0, -2764($fp)
	li $t0, 0
	sw $t0, -2768($fp)
	li $t0, 35813
	sw $t0, -2772($fp)
	lw $t1, -2772($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label426:
	li $t0, 1
	sw $t0, -2768($fp)
label427:
	li $t0, 4
	lw $t1, -2768($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	li $t0, 0
	lw $t1, -2784($fp)
	sub $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label424:
	lw $t0, -1268($fp)
	sw $t0, -2792($fp)
	j label423
label425:
	j label368
label370:
	j label327
label329:
	lw $t0, -344($fp)
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 0
	sw $t0, -2800($fp)
	li $t0, 0
	sw $t0, -2804($fp)
	lw $t0, -1076($fp)
	sw $t0, -2808($fp)
	lw $t1, -2808($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -2804($fp)
label434:
	li $t0, 0
	lw $t1, -2804($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -1640($fp)
	sw $t0, -2816($fp)
	li $t0, 0
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	li $t0, 47711
	sw $t0, -2824($fp)
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t1, -2812($fp)
	lw $t2, -2828($fp)
	ble $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -2800($fp)
label432:
	lw $ra, -4($fp)
	lw $v0, -2800($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label430
label429:
	li $t0, 16011
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -2840($fp)
	li $t0, 16268
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	sw $t0, -2852($fp)
	jal f9
	sw $v0, -2856($fp)
	addi $sp, $sp, 4
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label436
label438:
	jal f10
	sw $v0, -2860($fp)
	addi $sp, $sp, 4
	li $t0, 29543
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2868($fp)
	li $t0, 62426
	sw $t0, -2872($fp)
	li $t0, 45971
	sw $t0, -2876($fp)
	lw $t0, -2872($fp)
	lw $t1, -2876($fp)
	sub $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t1, -2868($fp)
	lw $t2, -2880($fp)
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 0
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	li $t0, 0
	sw $t0, -2892($fp)
	li $t0, 3890
	sw $t0, -2896($fp)
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label444
label444:
	li $t0, 1
	sw $t0, -2892($fp)
label445:
	jal f9
	sw $v0, -2900($fp)
	addi $sp, $sp, 4
	lw $t1, -2892($fp)
	lw $t2, -2900($fp)
	ble $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -2888($fp)
label443:
	li $t0, 27851
	sw $t0, -2904($fp)
	lw $t1, -2888($fp)
	lw $t2, -2904($fp)
	blt $t1, $t2, label439
	j label441
label441:
	li $t0, 0
	sw $t0, -2908($fp)
	lw $t0, -464($fp)
	sw $t0, -2912($fp)
	lw $t1, -2912($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label446:
	li $t0, 1
	sw $t0, -2908($fp)
label447:
	lw $t0, -1640($fp)
	sw $t0, -2916($fp)
	lw $t0, -2908($fp)
	lw $t1, -2916($fp)
	sub $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -2884($fp)
label440:
	lw $ra, -4($fp)
	lw $v0, -2884($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label437
label436:
label448:
	jal f10
	sw $v0, -2924($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2928($fp)
	lw $t0, -320($fp)
	sw $t0, -2932($fp)
	lw $t0, -1868($fp)
	sw $t0, -2936($fp)
	lw $t0, -2932($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	li $t0, 59110
	sw $t0, -2944($fp)
	lw $t1, -2940($fp)
	lw $t2, -2944($fp)
	bge $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -2928($fp)
label452:
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2948($fp)
	addi $sp, $sp, 8
	lw $t0, -2924($fp)
	lw $t1, -2948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2952($fp)
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	jal f9
	sw $v0, -2960($fp)
	addi $sp, $sp, 4
	lw $t1, -2956($fp)
	lw $t2, -2960($fp)
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 0
	sw $t0, -2964($fp)
	li $t0, 0
	sw $t0, -2968($fp)
	li $t0, 53686
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label455
label455:
	li $t0, 1
	sw $t0, -2968($fp)
label456:
	lw $t0, -1688($fp)
	sw $t0, -2976($fp)
	lw $t0, -1052($fp)
	sw $t0, -2980($fp)
	lw $t0, -2976($fp)
	lw $t1, -2980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2984($fp)
	li $t0, 33615
	sw $t0, -2988($fp)
	lw $t0, -2984($fp)
	lw $t1, -2988($fp)
	add $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2836($fp)
	sw $t0, -2996($fp)
	lw $t0, -1280($fp)
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -2992($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t1, -2968($fp)
	lw $t2, -3008($fp)
	beq $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -2964($fp)
label454:
	j label448
label450:
label437:
	lw $t0, -2836($fp)
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2848($fp)
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3020($fp)
	li $t0, 15432
	sw $t0, -3024($fp)
	jal f10
	sw $v0, -3028($fp)
	addi $sp, $sp, 4
	lw $t0, -3024($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	lw $t0, -428($fp)
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 1
	sw $t0, -3036($fp)
label460:
	li $t0, 22461
	sw $t0, -3044($fp)
	lw $t0, -3036($fp)
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3032($fp)
	lw $t1, -3048($fp)
	sub $t0, $t0, $t1
	sw $t0, -3052($fp)
	jal f7
	sw $v0, -3056($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -3060($fp)
	li $t0, 61582
	sw $t0, -3064($fp)
	lw $t0, -1052($fp)
	sw $t0, -3068($fp)
	lw $t0, -3064($fp)
	lw $t1, -3068($fp)
	sub $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label463
label463:
	lw $t0, -380($fp)
	sw $t0, -3076($fp)
	lw $t1, -3076($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -3060($fp)
label462:
	li $t0, 0
	sw $t0, -3080($fp)
	lw $t0, -392($fp)
	sw $t0, -3084($fp)
	lw $t1, -3084($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label465
label466:
	li $t0, 42982
	sw $t0, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -3080($fp)
label465:
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3092($fp)
	addi $sp, $sp, 12
	lw $t0, -3056($fp)
	lw $t1, -3092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3096($fp)
	lw $t1, -3052($fp)
	lw $t2, -3096($fp)
	bge $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -3020($fp)
label458:
	lw $ra, -4($fp)
	lw $v0, -3020($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 13779
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
	li $t0, 4417
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
	li $t0, 6872
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
	li $t0, 26145
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
	li $t0, 7355
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
	li $t0, 50755
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
	li $t0, 23718
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
	li $t0, 48537
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
	li $t0, 6409
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
label467:
	jal f9
	sw $v0, -3352($fp)
	addi $sp, $sp, 4
	li $t0, 8611
	sw $t0, -3356($fp)
	lw $t0, -3352($fp)
	lw $t1, -3356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3360($fp)
	li $t0, 0
	sw $t0, -3364($fp)
	lw $t0, -224($fp)
	sw $t0, -3368($fp)
	lw $t1, -3368($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -3364($fp)
label473:
	lw $t0, -3360($fp)
	lw $t1, -3364($fp)
	sub $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t1, -3372($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label471
label471:
	li $t0, 26923
	sw $t0, -3376($fp)
	lw $t0, -1688($fp)
	sw $t0, -3380($fp)
	lw $t0, -3376($fp)
	lw $t1, -3380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3384($fp)
	lw $t0, -1268($fp)
	sw $t0, -3388($fp)
	lw $t0, -3384($fp)
	lw $t1, -3388($fp)
	sub $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label470
label470:
	addi $t0, $fp, -3132
	sw $t0, -3396($fp)
	lw $t0, -1088($fp)
	sw $t0, -3400($fp)
	li $t0, 4
	lw $t1, -3400($fp)
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	lw $t1, -3396($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, 0($t0)
	sw $t1, -3412($fp)
	li $t0, 304
	sw $t0, -3416($fp)
	lw $t1, -3412($fp)
	lw $t2, -3416($fp)
	ble $t1, $t2, label468
	j label469
label468:
	li $t0, 0
	sw $t0, -3420($fp)
	addi $t0, $fp, -16
	sw $t0, -3424($fp)
	li $t0, 2
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
	lw $t0, -332($fp)
	sw $t0, -3444($fp)
	lw $t0, -3440($fp)
	lw $t1, -3444($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	li $t0, 51454
	sw $t0, -3452($fp)
	li $t0, 0
	lw $t1, -3452($fp)
	sub $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3448($fp)
	lw $t1, -3456($fp)
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -464($fp)
	sw $t0, -3464($fp)
	li $t0, 0
	lw $t1, -3464($fp)
	sub $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t1, -3460($fp)
	lw $t2, -3468($fp)
	bgt $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -3420($fp)
label478:
	li $t0, 0
	sw $t0, -3472($fp)
	jal f9
	sw $v0, -3476($fp)
	addi $sp, $sp, 4
	lw $t1, -3476($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label479:
	li $t0, 1
	sw $t0, -3472($fp)
label480:
	lw $t1, -3420($fp)
	lw $t2, -3472($fp)
	beq $t1, $t2, label474
	j label475
label474:
	li $t0, 3315
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	li $t0, 65107
	sw $t0, -3528($fp)
	addi $t0, $fp, -3512
	sw $t0, -3532($fp)
	li $t0, 0
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3532($fp)
	lw $t1, -3540($fp)
	add $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3528($fp)
	lw $t1, -3544($fp)
	sw $t0, 0($t1)
	lw $t0, -3544($fp)
	lw $t1, 0($t0)
	sw $t1, -3548($fp)
	li $t0, 1929
	sw $t0, -3552($fp)
	addi $t0, $fp, -3512
	sw $t0, -3556($fp)
	li $t0, 1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3556($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3552($fp)
	lw $t1, -3568($fp)
	sw $t0, 0($t1)
	lw $t0, -3568($fp)
	lw $t1, 0($t0)
	sw $t1, -3572($fp)
	li $t0, 19583
	sw $t0, -3576($fp)
	addi $t0, $fp, -3512
	sw $t0, -3580($fp)
	li $t0, 2
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
	li $t0, 29115
	sw $t0, -3600($fp)
	addi $t0, $fp, -3512
	sw $t0, -3604($fp)
	li $t0, 3
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
	li $t0, 64356
	sw $t0, -3624($fp)
	addi $t0, $fp, -3512
	sw $t0, -3628($fp)
	li $t0, 4
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
	li $t0, 18
	sw $t0, -3648($fp)
	addi $t0, $fp, -3512
	sw $t0, -3652($fp)
	li $t0, 5
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
	li $t0, 33005
	sw $t0, -3672($fp)
	addi $t0, $fp, -3512
	sw $t0, -3676($fp)
	li $t0, 6
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
	li $t0, 26671
	sw $t0, -3696($fp)
	addi $t0, $fp, -3512
	sw $t0, -3700($fp)
	li $t0, 7
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
	li $t0, 59129
	sw $t0, -3720($fp)
	addi $t0, $fp, -3512
	sw $t0, -3724($fp)
	li $t0, 8
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
	lw $t0, -3520($fp)
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -3748($fp)
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 4
	lw $t1, -3752($fp)
	mul $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	lw $t1, 0($t0)
	sw $t1, -3764($fp)
	lw $t0, -3764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -3768($fp)
	li $t0, 1
	sw $t0, -3772($fp)
	li $t0, 4
	lw $t1, -3772($fp)
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, -3768($fp)
	add $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, 0($t0)
	sw $t1, -3784($fp)
	lw $t0, -3784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -3788($fp)
	li $t0, 2
	sw $t0, -3792($fp)
	li $t0, 4
	lw $t1, -3792($fp)
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, -3788($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	lw $t0, -3804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -3808($fp)
	li $t0, 3
	sw $t0, -3812($fp)
	li $t0, 4
	lw $t1, -3812($fp)
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, 0($t0)
	sw $t1, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -3828($fp)
	li $t0, 4
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
	addi $t0, $fp, -3512
	sw $t0, -3848($fp)
	li $t0, 5
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
	addi $t0, $fp, -3512
	sw $t0, -3868($fp)
	li $t0, 6
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
	addi $t0, $fp, -3512
	sw $t0, -3888($fp)
	li $t0, 7
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
	addi $t0, $fp, -3512
	sw $t0, -3908($fp)
	li $t0, 8
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
	addi $t0, $fp, -108
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	li $t0, 0
	sw $t0, -3936($fp)
	li $t0, 21155
	sw $t0, -3940($fp)
	li $t0, 60286
	sw $t0, -3944($fp)
	lw $t0, -3940($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	li $t0, 9025
	sw $t0, -3952($fp)
	lw $t1, -3948($fp)
	lw $t2, -3952($fp)
	beq $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -3936($fp)
label484:
	li $t0, 43617
	sw $t0, -3956($fp)
	li $t0, 0
	lw $t1, -3956($fp)
	sub $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t1, -3936($fp)
	lw $t2, -3960($fp)
	beq $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -3932($fp)
label482:
	li $t0, 4
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	lw $t1, 0($t0)
	sw $t1, -3972($fp)
	lw $ra, -4($fp)
	lw $v0, -3972($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3520($fp)
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -3980($fp)
	li $t0, 0
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
	addi $t0, $fp, -3512
	sw $t0, -4000($fp)
	li $t0, 1
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
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -4020($fp)
	li $t0, 2
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
	addi $t0, $fp, -3512
	sw $t0, -4040($fp)
	li $t0, 3
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
	addi $t0, $fp, -3512
	sw $t0, -4060($fp)
	li $t0, 4
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
	addi $t0, $fp, -3512
	sw $t0, -4080($fp)
	li $t0, 5
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
	addi $t0, $fp, -3512
	sw $t0, -4100($fp)
	li $t0, 6
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
	addi $t0, $fp, -3512
	sw $t0, -4120($fp)
	li $t0, 7
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
	addi $t0, $fp, -3512
	sw $t0, -4140($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -4160($fp)
	addi $t0, $fp, -40
	sw $t0, -4164($fp)
	li $t0, 0
	sw $t0, -4168($fp)
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, -1064($fp)
	sw $t0, -4176($fp)
	lw $t0, -1076($fp)
	sw $t0, -4180($fp)
	lw $t1, -4176($fp)
	lw $t2, -4180($fp)
	blt $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -4172($fp)
label490:
	lw $t0, -1700($fp)
	sw $t0, -4184($fp)
	lw $t1, -4172($fp)
	lw $t2, -4184($fp)
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -4168($fp)
label488:
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4188($fp)
	addi $sp, $sp, 8
	lw $t0, -3520($fp)
	sw $t0, -4192($fp)
	lw $t0, -4188($fp)
	lw $t1, -4192($fp)
	add $t0, $t0, $t1
	sw $t0, -4196($fp)
	li $t0, 4
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, -4164($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, 0($t0)
	sw $t1, -4208($fp)
	lw $t0, -308($fp)
	sw $t0, -4212($fp)
	lw $t0, -440($fp)
	sw $t0, -4216($fp)
	lw $t0, -1100($fp)
	sw $t0, -4220($fp)
	lw $t0, -4216($fp)
	lw $t1, -4220($fp)
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4212($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t1, -4208($fp)
	lw $t2, -4228($fp)
	bgt $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -4160($fp)
label486:
	lw $ra, -4($fp)
	lw $v0, -4160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3520($fp)
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -4236($fp)
	li $t0, 0
	sw $t0, -4240($fp)
	li $t0, 4
	lw $t1, -4240($fp)
	mul $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	lw $t1, -4236($fp)
	add $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	lw $t1, 0($t0)
	sw $t1, -4252($fp)
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -4256($fp)
	li $t0, 1
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
	addi $t0, $fp, -3512
	sw $t0, -4276($fp)
	li $t0, 2
	sw $t0, -4280($fp)
	li $t0, 4
	lw $t1, -4280($fp)
	mul $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, 0($t0)
	sw $t1, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -4296($fp)
	li $t0, 3
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
	lw $t0, -4312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -4316($fp)
	li $t0, 4
	sw $t0, -4320($fp)
	li $t0, 4
	lw $t1, -4320($fp)
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	lw $t1, 0($t0)
	sw $t1, -4332($fp)
	lw $t0, -4332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -4336($fp)
	li $t0, 5
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
	lw $t0, -4352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
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
	lw $t0, -4372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3512
	sw $t0, -4376($fp)
	li $t0, 7
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
	addi $t0, $fp, -3512
	sw $t0, -4396($fp)
	li $t0, 8
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
	addi $t0, $fp, -3512
	sw $t0, -4416($fp)
	li $t0, 0
	sw $t0, -4420($fp)
	li $t0, 0
	sw $t0, -4424($fp)
	li $t0, 37732
	sw $t0, -4428($fp)
	lw $t0, -1244($fp)
	sw $t0, -4432($fp)
	lw $t0, -4428($fp)
	lw $t1, -4432($fp)
	sub $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -1064($fp)
	sw $t0, -4440($fp)
	lw $t1, -4436($fp)
	lw $t2, -4440($fp)
	bge $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -4424($fp)
label494:
	li $t0, 5072
	sw $t0, -4444($fp)
	lw $t1, -4424($fp)
	lw $t2, -4444($fp)
	blt $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -4420($fp)
label492:
	li $t0, 4
	lw $t1, -4420($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, -4416($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, 0($t0)
	sw $t1, -4456($fp)
	lw $ra, -4($fp)
	lw $v0, -4456($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label476
label475:
	addi $t0, $fp, -152
	sw $t0, -4460($fp)
	addi $t0, $fp, -108
	sw $t0, -4464($fp)
	li $t0, 0
	sw $t0, -4468($fp)
	lw $t0, -1856($fp)
	sw $t0, -4472($fp)
	lw $t0, -224($fp)
	sw $t0, -4476($fp)
	lw $t1, -4472($fp)
	lw $t2, -4476($fp)
	beq $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -4468($fp)
label496:
	li $t0, 4
	lw $t1, -4468($fp)
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	li $t0, 4
	lw $t1, -4488($fp)
	mul $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, 0($t0)
	sw $t1, -4500($fp)
	lw $ra, -4($fp)
	lw $v0, -4500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label476:
	j label467
label469:
	lw $t0, -2836($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2848($fp)
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2848($fp)
	sw $t0, -4512($fp)
	li $t0, 0
	sw $t0, -4516($fp)
	lw $t0, -2848($fp)
	sw $t0, -4520($fp)
	lw $t0, -344($fp)
	sw $t0, -4524($fp)
	lw $t0, -4520($fp)
	lw $t1, -4524($fp)
	add $t0, $t0, $t1
	sw $t0, -4528($fp)
	li $t0, 57396
	sw $t0, -4532($fp)
	lw $t1, -4528($fp)
	lw $t2, -4532($fp)
	beq $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -4516($fp)
label498:
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4516($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4536($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -4536($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 42150
	sw $t0, -4568($fp)
	addi $t0, $fp, -4564
	sw $t0, -4572($fp)
	li $t0, 0
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
	li $t0, 11944
	sw $t0, -4592($fp)
	addi $t0, $fp, -4564
	sw $t0, -4596($fp)
	li $t0, 1
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
	li $t0, 18005
	sw $t0, -4616($fp)
	addi $t0, $fp, -4564
	sw $t0, -4620($fp)
	li $t0, 2
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
	li $t0, 49505
	sw $t0, -4640($fp)
	addi $t0, $fp, -4564
	sw $t0, -4644($fp)
	li $t0, 3
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
	li $t0, 62700
	sw $t0, -4664($fp)
	addi $t0, $fp, -4564
	sw $t0, -4668($fp)
	li $t0, 4
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
	li $t0, 41723
	sw $t0, -4688($fp)
	addi $t0, $fp, -4564
	sw $t0, -4692($fp)
	li $t0, 5
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
	li $t0, 32506
	sw $t0, -4712($fp)
	addi $t0, $fp, -4564
	sw $t0, -4716($fp)
	li $t0, 6
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4716($fp)
	lw $t1, -4724($fp)
	add $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4712($fp)
	lw $t1, -4728($fp)
	sw $t0, 0($t1)
	lw $t0, -4728($fp)
	lw $t1, 0($t0)
	sw $t1, -4732($fp)
	addi $t0, $fp, -180
	sw $t0, -4736($fp)
	li $t0, 0
	sw $t0, -4740($fp)
	lw $t0, -1448($fp)
	sw $t0, -4744($fp)
	li $t0, 3573
	sw $t0, -4748($fp)
	lw $t1, -4744($fp)
	lw $t2, -4748($fp)
	bne $t1, $t2, label499
	j label501
label501:
	lw $t0, -1040($fp)
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label500
label502:
	li $t0, 50334
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -4740($fp)
label500:
	li $t0, 4
	lw $t1, -4740($fp)
	mul $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	lw $t1, -4736($fp)
	add $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	lw $t1, 0($t0)
	sw $t1, -4768($fp)
	li $t0, 0
	sw $t0, -4772($fp)
	addi $t0, $fp, -108
	sw $t0, -4776($fp)
	li $t0, 3
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
	jal f9
	sw $v0, -4796($fp)
	addi $sp, $sp, 4
	li $t0, 17836
	sw $t0, -4800($fp)
	lw $t0, -4796($fp)
	lw $t1, -4800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4804($fp)
	lw $t1, -4792($fp)
	lw $t2, -4804($fp)
	ble $t1, $t2, label505
	j label504
label505:
	li $t0, 0
	sw $t0, -4808($fp)
	li $t0, 11289
	sw $t0, -4812($fp)
	li $t0, 0
	lw $t1, -4812($fp)
	sub $t0, $t0, $t1
	sw $t0, -4816($fp)
	li $t0, 55332
	sw $t0, -4820($fp)
	lw $t1, -4816($fp)
	lw $t2, -4820($fp)
	beq $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -4808($fp)
label507:
	li $t0, 0
	sw $t0, -4824($fp)
	li $t0, 21151
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label508
label508:
	li $t0, 1
	sw $t0, -4824($fp)
label509:
	lw $t1, -4808($fp)
	lw $t2, -4824($fp)
	bne $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -4772($fp)
label504:
	li $t0, 10861
	sw $t0, -4832($fp)
	li $t0, 0
	lw $t1, -4832($fp)
	sub $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -1448($fp)
	sw $t0, -4840($fp)
	li $t0, 57261
	sw $t0, -4844($fp)
	lw $t0, -4840($fp)
	lw $t1, -4844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4848($fp)
	lw $t1, -4836($fp)
	lw $t2, -4848($fp)
	blt $t1, $t2, label513
	j label511
label513:
	lw $t0, -1688($fp)
	sw $t0, -4852($fp)
	li $t0, 40734
	sw $t0, -4856($fp)
	lw $t0, -4852($fp)
	lw $t1, -4856($fp)
	sub $t0, $t0, $t1
	sw $t0, -4860($fp)
	li $t0, 39976
	sw $t0, -4864($fp)
	li $t0, 0
	lw $t1, -4864($fp)
	sub $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t1, -4860($fp)
	lw $t2, -4868($fp)
	ble $t1, $t2, label510
	j label511
label510:
	lw $t0, -224($fp)
	sw $t0, -4872($fp)
	j label512
label511:
	addi $t0, $fp, -4564
	sw $t0, -4876($fp)
	li $t0, 0
	sw $t0, -4880($fp)
	lw $t0, -440($fp)
	sw $t0, -4884($fp)
	lw $t0, -224($fp)
	sw $t0, -4888($fp)
	lw $t0, -1460($fp)
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	add $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t1, -4884($fp)
	lw $t2, -4896($fp)
	beq $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -4880($fp)
label515:
	li $t0, 4
	lw $t1, -4880($fp)
	mul $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	lw $t1, -4876($fp)
	add $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	lw $t1, 0($t0)
	sw $t1, -4908($fp)
label512:
label516:
	li $t0, 0
	sw $t0, -4912($fp)
	li $t0, 0
	sw $t0, -4916($fp)
	lw $t0, -212($fp)
	sw $t0, -4920($fp)
	lw $t1, -4920($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -4916($fp)
label522:
	li $t0, 56081
	sw $t0, -4924($fp)
	lw $t1, -4916($fp)
	lw $t2, -4924($fp)
	ble $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -4912($fp)
label520:
	lw $t0, -4912($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -4928($fp)
	lw $t1, -4928($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 40752
	sw $t0, -4932($fp)
	j label516
label518:
label523:
	jal f7
	sw $v0, -4936($fp)
	addi $sp, $sp, 4
	lw $t0, -452($fp)
	sw $t0, -4940($fp)
	lw $t0, -4936($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t1, -4944($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label525
label526:
	lw $t0, -224($fp)
	sw $t0, -4948($fp)
	li $t0, 7445
	sw $t0, -4952($fp)
	lw $t0, -4948($fp)
	lw $t1, -4952($fp)
	sub $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -416($fp)
	sw $t0, -4960($fp)
	lw $t0, -4956($fp)
	lw $t1, -4960($fp)
	add $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t0, -1280($fp)
	sw $t0, -4968($fp)
	lw $t0, -4964($fp)
	lw $t1, -4968($fp)
	sub $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 0
	sw $t0, -4976($fp)
	addi $t0, $fp, -204
	sw $t0, -4980($fp)
	lw $t0, -416($fp)
	sw $t0, -4984($fp)
	li $t0, 4
	lw $t1, -4984($fp)
	mul $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	lw $t1, -4980($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, 0($t0)
	sw $t1, -4996($fp)
	li $t0, 0
	lw $t1, -4996($fp)
	sub $t0, $t0, $t1
	sw $t0, -5000($fp)
	li $t0, 0
	lw $t1, -5000($fp)
	sub $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t1, -5004($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label529:
	li $t0, 0
	sw $t0, -5008($fp)
	lw $t0, -416($fp)
	sw $t0, -5012($fp)
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -5008($fp)
label531:
	li $t0, 17216
	sw $t0, -5016($fp)
	lw $t0, -5008($fp)
	lw $t1, -5016($fp)
	mul $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t1, -5020($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -4976($fp)
label528:
	j label523
label525:
	li $t0, 0
	sw $t0, -5024($fp)
	li $t0, 0
	sw $t0, -5028($fp)
	li $t0, 0
	sw $t0, -5032($fp)
	lw $t0, -440($fp)
	sw $t0, -5036($fp)
	lw $t1, -5036($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label536
label538:
	li $t0, 34345
	sw $t0, -5040($fp)
	lw $t1, -5040($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -5032($fp)
label537:
	lw $t0, -1652($fp)
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -5048($fp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5048($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5052($fp)
	addi $sp, $sp, 12
	lw $t1, -5052($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label534:
	li $t0, 1
	sw $t0, -5028($fp)
label535:
	addi $t0, $fp, -200
	sw $t0, -5056($fp)
	li $t0, 2
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
	lw $t0, -1700($fp)
	sw $t0, -5076($fp)
	lw $t0, -5072($fp)
	lw $t1, -5076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5080($fp)
	lw $t0, -5028($fp)
	lw $t1, -5080($fp)
	sub $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -428($fp)
	sw $t0, -5088($fp)
	li $t0, 43371
	sw $t0, -5092($fp)
	lw $t0, -5088($fp)
	lw $t1, -5092($fp)
	mul $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -344($fp)
	sw $t0, -5100($fp)
	lw $t0, -1280($fp)
	sw $t0, -5104($fp)
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5108($fp)
	lw $t0, -5096($fp)
	lw $t1, -5108($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t1, -5084($fp)
	lw $t2, -5112($fp)
	bge $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -5024($fp)
label533:
label430:
label539:
	jal f7
	sw $v0, -5116($fp)
	addi $sp, $sp, 4
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 6681
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	sw $t0, -5176($fp)
	li $t0, 49699
	sw $t0, -5180($fp)
	addi $t0, $fp, -5124
	sw $t0, -5184($fp)
	li $t0, 0
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5192($fp)
	lw $t0, -5184($fp)
	lw $t1, -5192($fp)
	add $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5180($fp)
	lw $t1, -5196($fp)
	sw $t0, 0($t1)
	lw $t0, -5196($fp)
	lw $t1, 0($t0)
	sw $t1, -5200($fp)
	li $t0, 48443
	sw $t0, -5204($fp)
	addi $t0, $fp, -5124
	sw $t0, -5208($fp)
	li $t0, 1
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5208($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5204($fp)
	lw $t1, -5220($fp)
	sw $t0, 0($t1)
	lw $t0, -5220($fp)
	lw $t1, 0($t0)
	sw $t1, -5224($fp)
	li $t0, 64078
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	sw $t0, -5236($fp)
	li $t0, 26313
	sw $t0, -5240($fp)
	addi $t0, $fp, -5140
	sw $t0, -5244($fp)
	li $t0, 0
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5244($fp)
	lw $t1, -5252($fp)
	add $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5240($fp)
	lw $t1, -5256($fp)
	sw $t0, 0($t1)
	lw $t0, -5256($fp)
	lw $t1, 0($t0)
	sw $t1, -5260($fp)
	li $t0, 60387
	sw $t0, -5264($fp)
	addi $t0, $fp, -5140
	sw $t0, -5268($fp)
	li $t0, 1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5268($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5264($fp)
	lw $t1, -5280($fp)
	sw $t0, 0($t1)
	lw $t0, -5280($fp)
	lw $t1, 0($t0)
	sw $t1, -5284($fp)
	li $t0, 16547
	sw $t0, -5288($fp)
	addi $t0, $fp, -5140
	sw $t0, -5292($fp)
	li $t0, 2
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5292($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5288($fp)
	lw $t1, -5304($fp)
	sw $t0, 0($t1)
	lw $t0, -5304($fp)
	lw $t1, 0($t0)
	sw $t1, -5308($fp)
	li $t0, 10283
	sw $t0, -5312($fp)
	addi $t0, $fp, -5140
	sw $t0, -5316($fp)
	li $t0, 3
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5316($fp)
	lw $t1, -5324($fp)
	add $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5312($fp)
	lw $t1, -5328($fp)
	sw $t0, 0($t1)
	lw $t0, -5328($fp)
	lw $t1, 0($t0)
	sw $t1, -5332($fp)
	li $t0, 57551
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	sw $t0, -5344($fp)
	li $t0, 58271
	sw $t0, -5348($fp)
	addi $t0, $fp, -5164
	sw $t0, -5352($fp)
	li $t0, 0
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5352($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5348($fp)
	lw $t1, -5364($fp)
	sw $t0, 0($t1)
	lw $t0, -5364($fp)
	lw $t1, 0($t0)
	sw $t1, -5368($fp)
	li $t0, 42789
	sw $t0, -5372($fp)
	addi $t0, $fp, -5164
	sw $t0, -5376($fp)
	li $t0, 1
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5376($fp)
	lw $t1, -5384($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5372($fp)
	lw $t1, -5388($fp)
	sw $t0, 0($t1)
	lw $t0, -5388($fp)
	lw $t1, 0($t0)
	sw $t1, -5392($fp)
	li $t0, 61125
	sw $t0, -5396($fp)
	addi $t0, $fp, -5164
	sw $t0, -5400($fp)
	li $t0, 2
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5400($fp)
	lw $t1, -5408($fp)
	add $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5396($fp)
	lw $t1, -5412($fp)
	sw $t0, 0($t1)
	lw $t0, -5412($fp)
	lw $t1, 0($t0)
	sw $t1, -5416($fp)
	li $t0, 43069
	sw $t0, -5420($fp)
	addi $t0, $fp, -5164
	sw $t0, -5424($fp)
	li $t0, 3
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5424($fp)
	lw $t1, -5432($fp)
	add $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5420($fp)
	lw $t1, -5436($fp)
	sw $t0, 0($t1)
	lw $t0, -5436($fp)
	lw $t1, 0($t0)
	sw $t1, -5440($fp)
	li $t0, 36683
	sw $t0, -5444($fp)
	addi $t0, $fp, -5164
	sw $t0, -5448($fp)
	li $t0, 4
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5448($fp)
	lw $t1, -5456($fp)
	add $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5444($fp)
	lw $t1, -5460($fp)
	sw $t0, 0($t1)
	lw $t0, -5460($fp)
	lw $t1, 0($t0)
	sw $t1, -5464($fp)
	li $t0, 65002
	sw $t0, -5468($fp)
	addi $t0, $fp, -5164
	sw $t0, -5472($fp)
	li $t0, 5
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5472($fp)
	lw $t1, -5480($fp)
	add $t0, $t0, $t1
	sw $t0, -5484($fp)
	lw $t0, -5468($fp)
	lw $t1, -5484($fp)
	sw $t0, 0($t1)
	lw $t0, -5484($fp)
	lw $t1, 0($t0)
	sw $t1, -5488($fp)
	li $t0, 0
	sw $t0, -5492($fp)
	lw $t0, -308($fp)
	sw $t0, -5496($fp)
	li $t0, 60905
	sw $t0, -5500($fp)
	lw $t1, -5496($fp)
	lw $t2, -5500($fp)
	blt $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -5492($fp)
label543:
	li $t0, 47972
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	sw $t0, -5520($fp)
	li $t0, 54798
	sw $t0, -5524($fp)
	addi $t0, $fp, -5508
	sw $t0, -5528($fp)
	li $t0, 0
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5528($fp)
	lw $t1, -5536($fp)
	add $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5524($fp)
	lw $t1, -5540($fp)
	sw $t0, 0($t1)
	lw $t0, -5540($fp)
	lw $t1, 0($t0)
	sw $t1, -5544($fp)
	li $t0, 16520
	sw $t0, -5548($fp)
	addi $t0, $fp, -5508
	sw $t0, -5552($fp)
	li $t0, 1
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5552($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -5548($fp)
	lw $t1, -5564($fp)
	sw $t0, 0($t1)
	lw $t0, -5564($fp)
	lw $t1, 0($t0)
	sw $t1, -5568($fp)
	li $t0, 58833
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	sw $t0, -5580($fp)
	li $t0, 0
	sw $t0, -5584($fp)
	addi $t0, $fp, -180
	sw $t0, -5588($fp)
	li $t0, 0
	sw $t0, -5592($fp)
	lw $t0, -1268($fp)
	sw $t0, -5596($fp)
	lw $t0, -1028($fp)
	sw $t0, -5600($fp)
	lw $t1, -5596($fp)
	lw $t2, -5600($fp)
	bge $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -5592($fp)
label548:
	li $t0, 4
	lw $t1, -5592($fp)
	mul $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	lw $t1, 0($t0)
	sw $t1, -5612($fp)
	lw $t1, -5612($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label545
label546:
	addi $t0, $fp, -40
	sw $t0, -5616($fp)
	lw $t0, -224($fp)
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
	lw $t1, -5632($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 1
	sw $t0, -5584($fp)
label545:
	li $t0, 46524
	sw $t0, -5636($fp)
	li $t0, 0
	lw $t1, -5636($fp)
	sub $t0, $t0, $t1
	sw $t0, -5640($fp)
	li $t0, 0
	sw $t0, -5644($fp)
	addi $t0, $fp, -128
	sw $t0, -5648($fp)
	li $t0, 0
	sw $t0, -5652($fp)
	lw $t0, -224($fp)
	sw $t0, -5656($fp)
	lw $t1, -5656($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label552:
	li $t0, 1
	sw $t0, -5652($fp)
label553:
	lw $t0, -428($fp)
	sw $t0, -5660($fp)
	lw $t0, -5652($fp)
	lw $t1, -5660($fp)
	mul $t0, $t0, $t1
	sw $t0, -5664($fp)
	li $t0, 4
	lw $t1, -5664($fp)
	mul $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, -5648($fp)
	add $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, 0($t0)
	sw $t1, -5676($fp)
	lw $t1, -5676($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label550
label551:
	addi $t0, $fp, -200
	sw $t0, -5680($fp)
	lw $t0, -308($fp)
	sw $t0, -5684($fp)
	li $t0, 4
	lw $t1, -5684($fp)
	mul $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	lw $t1, -5680($fp)
	add $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	lw $t1, 0($t0)
	sw $t1, -5696($fp)
	li $t0, 57254
	sw $t0, -5700($fp)
	li $t0, 0
	lw $t1, -5700($fp)
	sub $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5696($fp)
	lw $t1, -5704($fp)
	add $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t1, -5708($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -5644($fp)
label550:
	li $t0, 0
	sw $t0, -5712($fp)
	jal f10
	sw $v0, -5716($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -40
	sw $t0, -5720($fp)
	lw $t0, -344($fp)
	sw $t0, -5724($fp)
	li $t0, 4
	lw $t1, -5724($fp)
	mul $t0, $t0, $t1
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	lw $t1, -5720($fp)
	add $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	lw $t1, 0($t0)
	sw $t1, -5736($fp)
	lw $t1, -5716($fp)
	lw $t2, -5736($fp)
	bgt $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -5712($fp)
label555:
	addi $t0, $fp, -80
	sw $t0, -5740($fp)
	lw $t0, -1040($fp)
	sw $t0, -5744($fp)
	li $t0, 0
	lw $t1, -5744($fp)
	sub $t0, $t0, $t1
	sw $t0, -5748($fp)
	li $t0, 4
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	lw $t1, -5740($fp)
	add $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	lw $t1, 0($t0)
	sw $t1, -5760($fp)
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	lw $t0, -1640($fp)
	sw $t0, -5764($fp)
	li $t0, 33273
	sw $t0, -5768($fp)
	lw $t0, -5764($fp)
	lw $t1, -5768($fp)
	mul $t0, $t0, $t1
	sw $t0, -5772($fp)
	addi $t0, $fp, -180
	sw $t0, -5776($fp)
	li $t0, 0
	sw $t0, -5780($fp)
	lw $t0, -5516($fp)
	sw $t0, -5784($fp)
	li $t0, 37069
	sw $t0, -5788($fp)
	lw $t1, -5784($fp)
	lw $t2, -5788($fp)
	bge $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -5780($fp)
label563:
	li $t0, 4
	lw $t1, -5780($fp)
	mul $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	lw $t1, -5776($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	lw $t1, 0($t0)
	sw $t1, -5800($fp)
	lw $t1, -5772($fp)
	lw $t2, -5800($fp)
	blt $t1, $t2, label559
	j label560
label559:
label564:
	li $t0, 32471
	sw $t0, -5804($fp)
	li $t0, 0
	sw $t0, -5808($fp)
	li $t0, 40718
	sw $t0, -5812($fp)
	li $t0, 0
	lw $t1, -5812($fp)
	sub $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t1, -5816($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -5808($fp)
label568:
	lw $t0, -5804($fp)
	lw $t1, -5808($fp)
	mul $t0, $t0, $t1
	sw $t0, -5820($fp)
	jal f9
	sw $v0, -5824($fp)
	addi $sp, $sp, 4
	lw $t0, -5576($fp)
	sw $t0, -5828($fp)
	li $t0, 0
	lw $t1, -5828($fp)
	sub $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5824($fp)
	lw $t1, -5832($fp)
	mul $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t1, -5820($fp)
	lw $t2, -5836($fp)
	blt $t1, $t2, label565
	j label566
label565:
	li $t0, 0
	sw $t0, -5840($fp)
	lw $t0, -440($fp)
	sw $t0, -5844($fp)
	lw $t1, -5844($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label571
label571:
	addi $t0, $fp, -152
	sw $t0, -5848($fp)
	lw $t0, -344($fp)
	sw $t0, -5852($fp)
	li $t0, 4
	lw $t1, -5852($fp)
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	lw $t1, -5848($fp)
	add $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	lw $t1, 0($t0)
	sw $t1, -5864($fp)
	li $t0, 0
	lw $t1, -5864($fp)
	sub $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t1, -5868($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -5840($fp)
label570:
	j label564
label566:
	j label561
label560:
	li $t0, 0
	sw $t0, -5872($fp)
	addi $t0, $fp, -40
	sw $t0, -5876($fp)
	lw $t0, -1652($fp)
	sw $t0, -5880($fp)
	li $t0, 4
	lw $t1, -5880($fp)
	mul $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	lw $t1, -5876($fp)
	add $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	lw $t1, 0($t0)
	sw $t1, -5892($fp)
	lw $t0, -1700($fp)
	sw $t0, -5896($fp)
	lw $t0, -5892($fp)
	lw $t1, -5896($fp)
	mul $t0, $t0, $t1
	sw $t0, -5900($fp)
	li $t0, 0
	sw $t0, -5904($fp)
	li $t0, 54286
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label576:
	li $t0, 1
	sw $t0, -5904($fp)
label577:
	lw $t0, -5900($fp)
	lw $t1, -5904($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t1, -5912($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label573
label575:
	li $t0, 0
	sw $t0, -5916($fp)
	li $t0, 1280
	sw $t0, -5920($fp)
	li $t0, 3783
	sw $t0, -5924($fp)
	lw $t1, -5920($fp)
	lw $t2, -5924($fp)
	beq $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -5916($fp)
label579:
	lw $t0, -1688($fp)
	sw $t0, -5928($fp)
	lw $t1, -5916($fp)
	lw $t2, -5928($fp)
	bne $t1, $t2, label574
	j label573
label574:
	addi $t0, $fp, -180
	sw $t0, -5932($fp)
	li $t0, 717
	sw $t0, -5936($fp)
	lw $t0, -1664($fp)
	sw $t0, -5940($fp)
	lw $t0, -5936($fp)
	lw $t1, -5940($fp)
	mul $t0, $t0, $t1
	sw $t0, -5944($fp)
	li $t0, 4
	lw $t1, -5944($fp)
	mul $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	lw $t1, -5932($fp)
	add $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	lw $t1, 0($t0)
	sw $t1, -5956($fp)
	lw $t1, -5956($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -5872($fp)
label573:
label561:
label557:
	lw $t0, -356($fp)
	sw $t0, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label581
label580:
	jal f7
	sw $v0, -5964($fp)
	addi $sp, $sp, 4
	jal f7
	sw $v0, -5968($fp)
	addi $sp, $sp, 4
	lw $t0, -5968($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -5976($fp)
label581:
	li $t0, 0
	sw $t0, -5980($fp)
	jal f9
	sw $v0, -5984($fp)
	addi $sp, $sp, 4
	li $t0, 44651
	sw $t0, -5988($fp)
	lw $t0, -5984($fp)
	lw $t1, -5988($fp)
	mul $t0, $t0, $t1
	sw $t0, -5992($fp)
	li $t0, 0
	sw $t0, -5996($fp)
	jal f7
	sw $v0, -6000($fp)
	addi $sp, $sp, 4
	li $t0, 10464
	sw $t0, -6004($fp)
	li $t0, 50416
	sw $t0, -6008($fp)
	lw $t0, -6004($fp)
	lw $t1, -6008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6012($fp)
	lw $t1, -6000($fp)
	lw $t2, -6012($fp)
	blt $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -5996($fp)
label586:
	lw $t1, -5992($fp)
	lw $t2, -5996($fp)
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -5980($fp)
label584:
	lw $t0, -404($fp)
	sw $t0, -6016($fp)
	li $t0, 27558
	sw $t0, -6020($fp)
	lw $t0, -6016($fp)
	lw $t1, -6020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6024($fp)
	li $t0, 0
	lw $t1, -6024($fp)
	sub $t0, $t0, $t1
	sw $t0, -6028($fp)
	li $t0, 9006
	sw $t0, -6032($fp)
	lw $t0, -6028($fp)
	lw $t1, -6032($fp)
	sub $t0, $t0, $t1
	sw $t0, -6036($fp)
	li $t0, 0
	sw $t0, -6040($fp)
	lw $t0, -1676($fp)
	sw $t0, -6044($fp)
	lw $t1, -6044($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -6040($fp)
label591:
	lw $t1, -6036($fp)
	lw $t2, -6040($fp)
	bne $t1, $t2, label587
	j label588
label587:
label592:
	jal f10
	sw $v0, -6048($fp)
	addi $sp, $sp, 4
	lw $t0, -332($fp)
	sw $t0, -6052($fp)
	li $t0, 22410
	sw $t0, -6056($fp)
	lw $t0, -1064($fp)
	sw $t0, -6060($fp)
	lw $t0, -1100($fp)
	sw $t0, -6064($fp)
	lw $t0, -6060($fp)
	lw $t1, -6064($fp)
	sub $t0, $t0, $t1
	sw $t0, -6068($fp)
	li $t0, 11194
	sw $t0, -6072($fp)
	lw $t0, -6068($fp)
	lw $t1, -6072($fp)
	add $t0, $t0, $t1
	sw $t0, -6076($fp)
	addi $sp, $sp, -4
	lw $t0, -6056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6076($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6080($fp)
	addi $sp, $sp, 12
	lw $t0, -6052($fp)
	lw $t1, -6080($fp)
	mul $t0, $t0, $t1
	sw $t0, -6084($fp)
	li $t0, 0
	lw $t1, -6084($fp)
	sub $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -6048($fp)
	lw $t1, -6088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6092($fp)
	lw $t1, -6092($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
label595:
	lw $t0, -464($fp)
	sw $t0, -6096($fp)
	li $t0, 0
	sw $t0, -6100($fp)
	lw $t0, -320($fp)
	sw $t0, -6104($fp)
	li $t0, 25554
	sw $t0, -6108($fp)
	lw $t0, -6104($fp)
	lw $t1, -6108($fp)
	add $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t1, -6112($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label600
label600:
	lw $t0, -1688($fp)
	sw $t0, -6116($fp)
	lw $t1, -6116($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -6100($fp)
label599:
	addi $sp, $sp, -4
	lw $t0, -6096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6100($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6120($fp)
	addi $sp, $sp, 12
	lw $t0, -6120($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -6124($fp)
	lw $t1, -6124($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label597
label596:
	li $t0, 21477
	sw $t0, -6128($fp)
	addi $t0, $fp, -5508
	sw $t0, -6132($fp)
	li $t0, 0
	sw $t0, -6136($fp)
	lw $t0, -1256($fp)
	sw $t0, -6140($fp)
	li $t0, 14425
	sw $t0, -6144($fp)
	lw $t1, -6140($fp)
	lw $t2, -6144($fp)
	bgt $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -6136($fp)
label602:
	li $t0, 4
	lw $t1, -6136($fp)
	mul $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	lw $t1, -6132($fp)
	add $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	lw $t1, 0($t0)
	sw $t1, -6156($fp)
	lw $t0, -6128($fp)
	lw $t1, -6156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6160($fp)
	j label595
label597:
	j label592
label594:
	j label589
label588:
	li $t0, 0
	sw $t0, -6164($fp)
	li $t0, 18289
	sw $t0, -6168($fp)
	lw $t1, -6168($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label603
label603:
	li $t0, 1
	sw $t0, -6164($fp)
label604:
	lw $ra, -4($fp)
	lw $v0, -6164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label589:
	lw $t0, -5172($fp)
	sw $t0, -6172($fp)
	lw $t0, -6172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5124
	sw $t0, -6176($fp)
	li $t0, 0
	sw $t0, -6180($fp)
	li $t0, 4
	lw $t1, -6180($fp)
	mul $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	lw $t1, -6176($fp)
	add $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	lw $t1, 0($t0)
	sw $t1, -6192($fp)
	lw $t0, -6192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5124
	sw $t0, -6196($fp)
	li $t0, 1
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
	lw $t0, -6212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5232($fp)
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5140
	sw $t0, -6220($fp)
	li $t0, 0
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
	addi $t0, $fp, -5140
	sw $t0, -6240($fp)
	li $t0, 1
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
	addi $t0, $fp, -5140
	sw $t0, -6260($fp)
	li $t0, 2
	sw $t0, -6264($fp)
	li $t0, 4
	lw $t1, -6264($fp)
	mul $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	lw $t1, -6260($fp)
	add $t0, $t0, $t1
	sw $t0, -6272($fp)
	lw $t0, -6272($fp)
	lw $t1, 0($t0)
	sw $t1, -6276($fp)
	lw $t0, -6276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5140
	sw $t0, -6280($fp)
	li $t0, 3
	sw $t0, -6284($fp)
	li $t0, 4
	lw $t1, -6284($fp)
	mul $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -6288($fp)
	lw $t1, -6280($fp)
	add $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t0, -6292($fp)
	lw $t1, 0($t0)
	sw $t1, -6296($fp)
	lw $t0, -6296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5340($fp)
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5164
	sw $t0, -6304($fp)
	li $t0, 0
	sw $t0, -6308($fp)
	li $t0, 4
	lw $t1, -6308($fp)
	mul $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t0, -6312($fp)
	lw $t1, -6304($fp)
	add $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	lw $t1, 0($t0)
	sw $t1, -6320($fp)
	lw $t0, -6320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5164
	sw $t0, -6324($fp)
	li $t0, 1
	sw $t0, -6328($fp)
	li $t0, 4
	lw $t1, -6328($fp)
	mul $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	lw $t1, -6324($fp)
	add $t0, $t0, $t1
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	lw $t1, 0($t0)
	sw $t1, -6340($fp)
	lw $t0, -6340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5164
	sw $t0, -6344($fp)
	li $t0, 2
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
	lw $t0, -6360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5164
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
	lw $t0, -6380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5164
	sw $t0, -6384($fp)
	li $t0, 4
	sw $t0, -6388($fp)
	li $t0, 4
	lw $t1, -6388($fp)
	mul $t0, $t0, $t1
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	lw $t1, -6384($fp)
	add $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	lw $t1, 0($t0)
	sw $t1, -6400($fp)
	lw $t0, -6400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5164
	sw $t0, -6404($fp)
	li $t0, 5
	sw $t0, -6408($fp)
	li $t0, 4
	lw $t1, -6408($fp)
	mul $t0, $t0, $t1
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	lw $t1, -6404($fp)
	add $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	lw $t1, 0($t0)
	sw $t1, -6420($fp)
	lw $t0, -6420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5140
	sw $t0, -6424($fp)
	addi $t0, $fp, -5140
	sw $t0, -6428($fp)
	li $t0, 0
	sw $t0, -6432($fp)
	li $t0, 64266
	sw $t0, -6436($fp)
	li $t0, 10014
	sw $t0, -6440($fp)
	lw $t1, -6436($fp)
	lw $t2, -6440($fp)
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -6432($fp)
label606:
	li $t0, 4
	lw $t1, -6432($fp)
	mul $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	lw $t1, -6428($fp)
	add $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	lw $t1, 0($t0)
	sw $t1, -6452($fp)
	li $t0, 4
	lw $t1, -6452($fp)
	mul $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	lw $t1, -6424($fp)
	add $t0, $t0, $t1
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	lw $t1, 0($t0)
	sw $t1, -6464($fp)
	lw $ra, -4($fp)
	lw $v0, -6464($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -332($fp)
	sw $t0, -6468($fp)
	lw $t1, -6468($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label608
label607:
label610:
	li $t0, 0
	sw $t0, -6472($fp)
	lw $t0, -1700($fp)
	sw $t0, -6476($fp)
	lw $t1, -6476($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	li $t0, 1
	sw $t0, -6472($fp)
label615:
	li $t0, 0
	lw $t1, -6472($fp)
	sub $t0, $t0, $t1
	sw $t0, -6480($fp)
	li $t0, 0
	lw $t1, -6480($fp)
	sub $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t1, -6484($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label612
label613:
	lw $t0, -452($fp)
	sw $t0, -6488($fp)
	jal f9
	sw $v0, -6492($fp)
	addi $sp, $sp, 4
	lw $t0, -6488($fp)
	lw $t1, -6492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6496($fp)
	li $t0, 0
	lw $t1, -6496($fp)
	sub $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 61358
	sw $t0, -6504($fp)
	li $t0, 0
	sw $t0, -6508($fp)
	lw $t0, -1700($fp)
	sw $t0, -6512($fp)
	lw $t1, -6512($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label619
label619:
	li $t0, 1
	sw $t0, -6508($fp)
label620:
	li $t0, 0
	lw $t1, -6508($fp)
	sub $t0, $t0, $t1
	sw $t0, -6516($fp)
	li $t0, 0
	lw $t1, -6516($fp)
	sub $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6504($fp)
	lw $t1, -6520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6524($fp)
	lw $t1, -6524($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 0
	sw $t0, -6528($fp)
	li $t0, 35413
	sw $t0, -6532($fp)
	addi $t0, $fp, -200
	sw $t0, -6536($fp)
	lw $t0, -416($fp)
	sw $t0, -6540($fp)
	li $t0, 4
	lw $t1, -6540($fp)
	mul $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	lw $t1, -6536($fp)
	add $t0, $t0, $t1
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	lw $t1, 0($t0)
	sw $t1, -6552($fp)
	lw $t0, -6532($fp)
	lw $t1, -6552($fp)
	add $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t1, -6556($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label622
label623:
	li $t0, 9481
	sw $t0, -6560($fp)
	lw $t1, -6560($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -6528($fp)
label622:
	j label618
label617:
	addi $t0, $fp, -80
	sw $t0, -6564($fp)
	lw $t0, -380($fp)
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -6572($fp)
	li $t0, 4
	lw $t1, -6572($fp)
	mul $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	lw $t1, -6564($fp)
	add $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	lw $t1, 0($t0)
	sw $t1, -6584($fp)
	li $t0, 0
	lw $t1, -6584($fp)
	sub $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -428($fp)
	sw $t0, -6592($fp)
	li $t0, 56728
	sw $t0, -6596($fp)
	lw $t0, -6592($fp)
	lw $t1, -6596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6600($fp)
	li $t0, 17850
	sw $t0, -6604($fp)
	lw $t0, -5340($fp)
	sw $t0, -6608($fp)
	lw $t0, -6604($fp)
	lw $t1, -6608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6612($fp)
	lw $t0, -6600($fp)
	lw $t1, -6612($fp)
	sub $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t1, -6588($fp)
	lw $t2, -6616($fp)
	blt $t1, $t2, label624
	j label625
label624:
label627:
	lw $t0, -1280($fp)
	sw $t0, -6620($fp)
	addi $t0, $fp, -128
	sw $t0, -6624($fp)
	jal f7
	sw $v0, -6628($fp)
	addi $sp, $sp, 4
	li $t0, 4
	lw $t1, -6628($fp)
	mul $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, -6624($fp)
	add $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	lw $t1, 0($t0)
	sw $t1, -6640($fp)
	lw $t1, -6620($fp)
	lw $t2, -6640($fp)
	blt $t1, $t2, label628
	j label629
label628:
	li $t0, 0
	sw $t0, -6644($fp)
	li $t0, 0
	sw $t0, -6648($fp)
	lw $t0, -404($fp)
	sw $t0, -6652($fp)
	li $t0, 0
	lw $t1, -6652($fp)
	sub $t0, $t0, $t1
	sw $t0, -6656($fp)
	li $t0, 0
	lw $t1, -6656($fp)
	sub $t0, $t0, $t1
	sw $t0, -6660($fp)
	li $t0, 0
	sw $t0, -6664($fp)
	li $t0, 64279
	sw $t0, -6668($fp)
	lw $t1, -6668($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label634
label634:
	li $t0, 1
	sw $t0, -6664($fp)
label635:
	lw $t0, -1076($fp)
	sw $t0, -6672($fp)
	lw $t0, -6664($fp)
	lw $t1, -6672($fp)
	mul $t0, $t0, $t1
	sw $t0, -6676($fp)
	addi $sp, $sp, -4
	lw $t0, -6660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6676($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6680($fp)
	addi $sp, $sp, 12
	li $t0, 11148
	sw $t0, -6684($fp)
	lw $t0, -6680($fp)
	lw $t1, -6684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6688($fp)
	jal f9
	sw $v0, -6692($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -6692($fp)
	sub $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t1, -6688($fp)
	lw $t2, -6696($fp)
	blt $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -6648($fp)
label633:
	li $t0, 0
	sw $t0, -6700($fp)
	li $t0, 45267
	sw $t0, -6704($fp)
	li $t0, 0
	lw $t1, -6704($fp)
	sub $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t1, -6708($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label636
label636:
	li $t0, 1
	sw $t0, -6700($fp)
label637:
	lw $t1, -6648($fp)
	lw $t2, -6700($fp)
	ble $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -6644($fp)
label631:
	lw $ra, -4($fp)
	lw $v0, -6644($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label627
label629:
	j label626
label625:
	li $t0, 0
	sw $t0, -6712($fp)
	lw $t0, -5232($fp)
	sw $t0, -6716($fp)
	lw $t1, -6716($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label643
label643:
	li $t0, 16801
	sw $t0, -6720($fp)
	lw $t1, -6720($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -6712($fp)
label642:
	addi $t0, $fp, -80
	sw $t0, -6724($fp)
	li $t0, 9
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
	addi $sp, $sp, -4
	lw $t0, -6712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6740($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6744($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -5164
	sw $t0, -6748($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -6764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6768($fp)
	addi $sp, $sp, 8
	lw $t0, -6744($fp)
	lw $t1, -6768($fp)
	mul $t0, $t0, $t1
	sw $t0, -6772($fp)
	addi $t0, $fp, -152
	sw $t0, -6776($fp)
	lw $t0, -368($fp)
	sw $t0, -6780($fp)
	lw $t0, -5172($fp)
	sw $t0, -6784($fp)
	lw $t0, -6780($fp)
	lw $t1, -6784($fp)
	mul $t0, $t0, $t1
	sw $t0, -6788($fp)
	li $t0, 4
	lw $t1, -6788($fp)
	mul $t0, $t0, $t1
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	lw $t1, -6776($fp)
	add $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	lw $t1, 0($t0)
	sw $t1, -6800($fp)
	lw $t0, -6772($fp)
	lw $t1, -6800($fp)
	mul $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t1, -6804($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label639
label638:
label644:
	li $t0, 0
	sw $t0, -6808($fp)
	li $t0, 0
	sw $t0, -6812($fp)
	li $t0, 23386
	sw $t0, -6816($fp)
	li $t0, 6268
	sw $t0, -6820($fp)
	lw $t1, -6816($fp)
	lw $t2, -6820($fp)
	blt $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -6812($fp)
label650:
	li $t0, 12298
	sw $t0, -6824($fp)
	lw $t1, -6812($fp)
	lw $t2, -6824($fp)
	bge $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -6808($fp)
label648:
	li $t0, 0
	sw $t0, -6828($fp)
	li $t0, 0
	sw $t0, -6832($fp)
	li $t0, 5551
	sw $t0, -6836($fp)
	lw $t1, -6836($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label653:
	li $t0, 1
	sw $t0, -6832($fp)
label654:
	li $t0, 33182
	sw $t0, -6840($fp)
	lw $t1, -6832($fp)
	lw $t2, -6840($fp)
	blt $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -6828($fp)
label652:
	addi $sp, $sp, -4
	lw $t0, -6808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6828($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6844($fp)
	addi $sp, $sp, 12
	lw $t1, -6844($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 33851
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	sw $t0, -6856($fp)
	li $t0, 0
	sw $t0, -6860($fp)
	lw $t0, -6852($fp)
	sw $t0, -6864($fp)
	lw $t1, -6864($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label655
label655:
	li $t0, 1
	sw $t0, -6860($fp)
label656:
	j label644
label646:
	j label640
label639:
	li $t0, 0
	sw $t0, -6868($fp)
	addi $t0, $fp, -40
	sw $t0, -6872($fp)
	li $t0, 0
	sw $t0, -6876($fp)
	lw $t0, -404($fp)
	sw $t0, -6880($fp)
	lw $t0, -1448($fp)
	sw $t0, -6884($fp)
	lw $t0, -6880($fp)
	lw $t1, -6884($fp)
	add $t0, $t0, $t1
	sw $t0, -6888($fp)
	li $t0, 56684
	sw $t0, -6892($fp)
	lw $t1, -6888($fp)
	lw $t2, -6892($fp)
	blt $t1, $t2, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -6876($fp)
label660:
	li $t0, 4
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, -6872($fp)
	add $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, 0($t0)
	sw $t1, -6904($fp)
	li $t0, 39856
	sw $t0, -6908($fp)
	li $t0, 0
	lw $t1, -6908($fp)
	sub $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t1, -6904($fp)
	lw $t2, -6912($fp)
	beq $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -6868($fp)
label658:
label640:
label626:
label618:
	j label610
label612:
	j label609
label608:
	li $t0, 42857
	sw $t0, -6916($fp)
	li $t0, 2342
	sw $t0, -6920($fp)
	lw $t0, -6916($fp)
	lw $t1, -6920($fp)
	add $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t1, -6924($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label662
label661:
	addi $t0, $fp, -108
	sw $t0, -6928($fp)
	li $t0, 0
	sw $t0, -6932($fp)
	li $t0, 62266
	sw $t0, -6936($fp)
	lw $t1, -6936($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label665
label666:
	lw $t0, -1460($fp)
	sw $t0, -6940($fp)
	lw $t1, -6940($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -6932($fp)
label665:
	li $t0, 4
	lw $t1, -6932($fp)
	mul $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	lw $t1, -6928($fp)
	add $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, 0($t0)
	sw $t1, -6952($fp)
	li $t0, 0
	lw $t1, -6952($fp)
	sub $t0, $t0, $t1
	sw $t0, -6956($fp)
	addi $t0, $fp, -5124
	sw $t0, -6960($fp)
	lw $t0, -5340($fp)
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
	addi $t0, $fp, -204
	sw $t0, -6980($fp)
	li $t0, 0
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
	sw $t0, -7000($fp)
	li $t0, 0
	sw $t0, -7004($fp)
	lw $t0, -452($fp)
	sw $t0, -7008($fp)
	lw $t0, -1436($fp)
	sw $t0, -7012($fp)
	lw $t1, -7008($fp)
	lw $t2, -7012($fp)
	bne $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -7004($fp)
label670:
	lw $t0, -1028($fp)
	sw $t0, -7016($fp)
	lw $t1, -7004($fp)
	lw $t2, -7016($fp)
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -7000($fp)
label668:
	addi $sp, $sp, -4
	lw $t0, -6996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7000($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7020($fp)
	addi $sp, $sp, 12
	lw $t0, -6976($fp)
	lw $t1, -7020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7024($fp)
	li $t0, 0
	lw $t1, -7024($fp)
	sub $t0, $t0, $t1
	sw $t0, -7028($fp)
	lw $t0, -6956($fp)
	lw $t1, -7028($fp)
	sub $t0, $t0, $t1
	sw $t0, -7032($fp)
	j label663
label662:
	li $t0, 0
	sw $t0, -7036($fp)
	lw $t0, -1652($fp)
	sw $t0, -7040($fp)
	jal f7
	sw $v0, -7044($fp)
	addi $sp, $sp, 4
	li $t0, 11156
	sw $t0, -7048($fp)
	lw $t0, -7044($fp)
	lw $t1, -7048($fp)
	add $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t1, -7040($fp)
	lw $t2, -7052($fp)
	ble $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -7036($fp)
label672:
	lw $ra, -4($fp)
	lw $v0, -7036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -7056($fp)
	addi $t0, $fp, -40
	sw $t0, -7060($fp)
	lw $t0, -1244($fp)
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
	li $t0, 0
	lw $t1, -7076($fp)
	sub $t0, $t0, $t1
	sw $t0, -7080($fp)
	li $t0, 0
	lw $t1, -7080($fp)
	sub $t0, $t0, $t1
	sw $t0, -7084($fp)
	addi $t0, $fp, -80
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
	li $t0, 21170
	sw $t0, -7108($fp)
	lw $t0, -7104($fp)
	lw $t1, -7108($fp)
	mul $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t1, -7084($fp)
	lw $t2, -7112($fp)
	bne $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -7056($fp)
label674:
	lw $ra, -4($fp)
	lw $v0, -7056($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label663:
label609:
	j label539
label541:
	lw $t0, -212($fp)
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -7124($fp)
	li $t0, 0
	sw $t0, -7128($fp)
	li $t0, 4
	lw $t1, -7128($fp)
	mul $t0, $t0, $t1
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	lw $t1, -7124($fp)
	add $t0, $t0, $t1
	sw $t0, -7136($fp)
	lw $t0, -7136($fp)
	lw $t1, 0($t0)
	sw $t1, -7140($fp)
	lw $t0, -7140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -7144($fp)
	li $t0, 1
	sw $t0, -7148($fp)
	li $t0, 4
	lw $t1, -7148($fp)
	mul $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	lw $t1, -7144($fp)
	add $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	lw $t1, 0($t0)
	sw $t1, -7160($fp)
	lw $t0, -7160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -7164($fp)
	li $t0, 2
	sw $t0, -7168($fp)
	li $t0, 4
	lw $t1, -7168($fp)
	mul $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	lw $t1, -7164($fp)
	add $t0, $t0, $t1
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	lw $t1, 0($t0)
	sw $t1, -7180($fp)
	lw $t0, -7180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7240($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -7260($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -7280($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -7300($fp)
	li $t0, 3
	sw $t0, -7304($fp)
	li $t0, 4
	lw $t1, -7304($fp)
	mul $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	lw $t1, -7300($fp)
	add $t0, $t0, $t1
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	lw $t1, 0($t0)
	sw $t1, -7316($fp)
	lw $t0, -7316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7320($fp)
	li $t0, 4
	sw $t0, -7324($fp)
	li $t0, 4
	lw $t1, -7324($fp)
	mul $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	lw $t1, -7320($fp)
	add $t0, $t0, $t1
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	lw $t1, 0($t0)
	sw $t1, -7336($fp)
	lw $t0, -7336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7340($fp)
	li $t0, 5
	sw $t0, -7344($fp)
	li $t0, 4
	lw $t1, -7344($fp)
	mul $t0, $t0, $t1
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	lw $t1, -7340($fp)
	add $t0, $t0, $t1
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	lw $t1, 0($t0)
	sw $t1, -7356($fp)
	lw $t0, -7356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7360($fp)
	li $t0, 0
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
	lw $t0, -7376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7380($fp)
	li $t0, 1
	sw $t0, -7384($fp)
	li $t0, 4
	lw $t1, -7384($fp)
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	lw $t1, -7380($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	lw $t1, 0($t0)
	sw $t1, -7396($fp)
	lw $t0, -7396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7400($fp)
	li $t0, 2
	sw $t0, -7404($fp)
	li $t0, 4
	lw $t1, -7404($fp)
	mul $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	lw $t1, -7400($fp)
	add $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, 0($t0)
	sw $t1, -7416($fp)
	lw $t0, -7416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7420($fp)
	li $t0, 3
	sw $t0, -7424($fp)
	li $t0, 4
	lw $t1, -7424($fp)
	mul $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, -7420($fp)
	add $t0, $t0, $t1
	sw $t0, -7432($fp)
	lw $t0, -7432($fp)
	lw $t1, 0($t0)
	sw $t1, -7436($fp)
	lw $t0, -7436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7440($fp)
	li $t0, 4
	sw $t0, -7444($fp)
	li $t0, 4
	lw $t1, -7444($fp)
	mul $t0, $t0, $t1
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	lw $t1, -7440($fp)
	add $t0, $t0, $t1
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	lw $t1, 0($t0)
	sw $t1, -7456($fp)
	lw $t0, -7456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7460($fp)
	li $t0, 5
	sw $t0, -7464($fp)
	li $t0, 4
	lw $t1, -7464($fp)
	mul $t0, $t0, $t1
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	lw $t1, -7460($fp)
	add $t0, $t0, $t1
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	lw $t1, 0($t0)
	sw $t1, -7476($fp)
	lw $t0, -7476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7480($fp)
	li $t0, 6
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
	lw $t0, -7496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7500($fp)
	li $t0, 7
	sw $t0, -7504($fp)
	li $t0, 4
	lw $t1, -7504($fp)
	mul $t0, $t0, $t1
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	lw $t1, -7500($fp)
	add $t0, $t0, $t1
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	lw $t1, 0($t0)
	sw $t1, -7516($fp)
	lw $t0, -7516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7520($fp)
	li $t0, 8
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
	lw $t0, -7536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7540($fp)
	li $t0, 9
	sw $t0, -7544($fp)
	li $t0, 4
	lw $t1, -7544($fp)
	mul $t0, $t0, $t1
	sw $t0, -7548($fp)
	lw $t0, -7548($fp)
	lw $t1, -7540($fp)
	add $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t0, -7552($fp)
	lw $t1, 0($t0)
	sw $t1, -7556($fp)
	lw $t0, -7556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7560($fp)
	li $t0, 0
	sw $t0, -7564($fp)
	li $t0, 4
	lw $t1, -7564($fp)
	mul $t0, $t0, $t1
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	lw $t1, -7560($fp)
	add $t0, $t0, $t1
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	lw $t1, 0($t0)
	sw $t1, -7576($fp)
	lw $t0, -7576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7580($fp)
	li $t0, 1
	sw $t0, -7584($fp)
	li $t0, 4
	lw $t1, -7584($fp)
	mul $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	lw $t1, -7580($fp)
	add $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	lw $t1, 0($t0)
	sw $t1, -7596($fp)
	lw $t0, -7596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7600($fp)
	li $t0, 2
	sw $t0, -7604($fp)
	li $t0, 4
	lw $t1, -7604($fp)
	mul $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7608($fp)
	lw $t1, -7600($fp)
	add $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	lw $t1, 0($t0)
	sw $t1, -7616($fp)
	lw $t0, -7616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7620($fp)
	li $t0, 3
	sw $t0, -7624($fp)
	li $t0, 4
	lw $t1, -7624($fp)
	mul $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	lw $t1, -7620($fp)
	add $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	lw $t1, 0($t0)
	sw $t1, -7636($fp)
	lw $t0, -7636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7640($fp)
	li $t0, 4
	sw $t0, -7644($fp)
	li $t0, 4
	lw $t1, -7644($fp)
	mul $t0, $t0, $t1
	sw $t0, -7648($fp)
	lw $t0, -7648($fp)
	lw $t1, -7640($fp)
	add $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	lw $t1, 0($t0)
	sw $t1, -7656($fp)
	lw $t0, -7656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7660($fp)
	li $t0, 5
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
	lw $t0, -7676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7680($fp)
	li $t0, 6
	sw $t0, -7684($fp)
	li $t0, 4
	lw $t1, -7684($fp)
	mul $t0, $t0, $t1
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	lw $t1, -7680($fp)
	add $t0, $t0, $t1
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	lw $t1, 0($t0)
	sw $t1, -7696($fp)
	lw $t0, -7696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1100($fp)
	sw $t0, -7724($fp)
	lw $t0, -7724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1112($fp)
	sw $t0, -7728($fp)
	lw $t0, -7728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7732($fp)
	li $t0, 0
	sw $t0, -7736($fp)
	li $t0, 4
	lw $t1, -7736($fp)
	mul $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, -7732($fp)
	add $t0, $t0, $t1
	sw $t0, -7744($fp)
	lw $t0, -7744($fp)
	lw $t1, 0($t0)
	sw $t1, -7748($fp)
	lw $t0, -7748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7752($fp)
	li $t0, 1
	sw $t0, -7756($fp)
	li $t0, 4
	lw $t1, -7756($fp)
	mul $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	lw $t1, -7752($fp)
	add $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	lw $t1, 0($t0)
	sw $t1, -7768($fp)
	lw $t0, -7768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7772($fp)
	li $t0, 2
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
	lw $t0, -7788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7792($fp)
	li $t0, 3
	sw $t0, -7796($fp)
	li $t0, 4
	lw $t1, -7796($fp)
	mul $t0, $t0, $t1
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	lw $t1, -7792($fp)
	add $t0, $t0, $t1
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	lw $t1, 0($t0)
	sw $t1, -7808($fp)
	lw $t0, -7808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -7812($fp)
	li $t0, 4
	sw $t0, -7816($fp)
	li $t0, 4
	lw $t1, -7816($fp)
	mul $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t0, -7820($fp)
	lw $t1, -7812($fp)
	add $t0, $t0, $t1
	sw $t0, -7824($fp)
	lw $t0, -7824($fp)
	lw $t1, 0($t0)
	sw $t1, -7828($fp)
	lw $t0, -7828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -7832($fp)
	lw $t0, -7832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -7836($fp)
	lw $t0, -7836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
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
	addi $t0, $fp, -152
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
	addi $t0, $fp, -152
	sw $t0, -7888($fp)
	li $t0, 2
	sw $t0, -7892($fp)
	li $t0, 4
	lw $t1, -7892($fp)
	mul $t0, $t0, $t1
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	lw $t1, -7888($fp)
	add $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	lw $t1, 0($t0)
	sw $t1, -7904($fp)
	lw $t0, -7904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7908($fp)
	li $t0, 3
	sw $t0, -7912($fp)
	li $t0, 4
	lw $t1, -7912($fp)
	mul $t0, $t0, $t1
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	lw $t1, -7908($fp)
	add $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	lw $t1, 0($t0)
	sw $t1, -7924($fp)
	lw $t0, -7924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7928($fp)
	li $t0, 4
	sw $t0, -7932($fp)
	li $t0, 4
	lw $t1, -7932($fp)
	mul $t0, $t0, $t1
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	lw $t1, -7928($fp)
	add $t0, $t0, $t1
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	lw $t1, 0($t0)
	sw $t1, -7944($fp)
	lw $t0, -7944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7948($fp)
	li $t0, 5
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
	lw $t0, -7964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	lw $t0, -1640($fp)
	sw $t0, -8120($fp)
	lw $t0, -8120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1652($fp)
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -8128($fp)
	lw $t0, -8128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1676($fp)
	sw $t0, -8132($fp)
	lw $t0, -8132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1700($fp)
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8144($fp)
	li $t0, 0
	sw $t0, -8148($fp)
	li $t0, 4
	lw $t1, -8148($fp)
	mul $t0, $t0, $t1
	sw $t0, -8152($fp)
	lw $t0, -8152($fp)
	lw $t1, -8144($fp)
	add $t0, $t0, $t1
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	lw $t1, 0($t0)
	sw $t1, -8160($fp)
	lw $t0, -8160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8164($fp)
	li $t0, 1
	sw $t0, -8168($fp)
	li $t0, 4
	lw $t1, -8168($fp)
	mul $t0, $t0, $t1
	sw $t0, -8172($fp)
	lw $t0, -8172($fp)
	lw $t1, -8164($fp)
	add $t0, $t0, $t1
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	lw $t1, 0($t0)
	sw $t1, -8180($fp)
	lw $t0, -8180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8184($fp)
	li $t0, 2
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
	lw $t0, -8200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8204($fp)
	li $t0, 3
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
	lw $t0, -8220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8224($fp)
	li $t0, 4
	sw $t0, -8228($fp)
	li $t0, 4
	lw $t1, -8228($fp)
	mul $t0, $t0, $t1
	sw $t0, -8232($fp)
	lw $t0, -8232($fp)
	lw $t1, -8224($fp)
	add $t0, $t0, $t1
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	lw $t1, 0($t0)
	sw $t1, -8240($fp)
	lw $t0, -8240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
	sw $t0, -8244($fp)
	li $t0, 0
	sw $t0, -8248($fp)
	li $t0, 4
	lw $t1, -8248($fp)
	mul $t0, $t0, $t1
	sw $t0, -8252($fp)
	lw $t0, -8252($fp)
	lw $t1, -8244($fp)
	add $t0, $t0, $t1
	sw $t0, -8256($fp)
	lw $t0, -8256($fp)
	lw $t1, 0($t0)
	sw $t1, -8260($fp)
	lw $t0, -8260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1868($fp)
	sw $t0, -8268($fp)
	lw $t0, -8268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 16987
	sw $t0, -8272($fp)
	lw $t0, -8272($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -8276($fp)
	lw $ra, -4($fp)
	lw $v0, -8276($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -52
	li $t0, 57963
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 30651
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	li $t0, 8179
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -40($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -44($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 10277
	sw $t0, -56($fp)
	lw $ra, -4($fp)
	lw $v0, -56($fp)
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
