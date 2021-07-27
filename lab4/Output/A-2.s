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
	addi $sp, $sp, -76
	li $t0, 29707
	sw $t0, -12($fp)
	addi $t0, $fp, -8
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, -16($fp)
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	lw $t1, -28($fp)
	sw $t0, 0($t1)
	lw $t0, -28($fp)
	lw $t1, 0($t0)
	sw $t1, -32($fp)
	lw $t0, 4($fp)
	sw $t0, -36($fp)
	lw $ra, -4($fp)
	lw $v0, -36($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -8
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 4
	lw $t1, -44($fp)
	mul $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	lw $t1, 0($t0)
	sw $t1, -56($fp)
	lw $t0, -56($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -60($fp)
	li $t0, 0
	sw $t0, -64($fp)
	li $t0, 4
	lw $t1, -64($fp)
	mul $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	lw $t1, 0($t0)
	sw $t1, -76($fp)
	lw $t0, -76($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -80($fp)
	lw $ra, -4($fp)
	lw $v0, -80($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -124
	li $t0, 18803
	sw $t0, -12($fp)
	addi $t0, $fp, -8
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, -16($fp)
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	lw $t1, -28($fp)
	sw $t0, 0($t1)
	lw $t0, -28($fp)
	lw $t1, 0($t0)
	sw $t1, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 22999
	sw $t0, -44($fp)
	li $t0, 0
	sw $t0, -48($fp)
	li $t0, 62079
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label125:
	li $t0, 1
	sw $t0, -48($fp)
label126:
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	mul $t0, $t0, $t1
	sw $t0, -56($fp)
	li $t0, 40244
	sw $t0, -60($fp)
	lw $t1, -56($fp)
	lw $t2, -60($fp)
	bne $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -40($fp)
label124:
	addi $t0, $fp, -8
	sw $t0, -64($fp)
	li $t0, 5582
	sw $t0, -68($fp)
	lw $t0, 4($fp)
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	li $t0, 4
	lw $t1, -76($fp)
	mul $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	lw $t1, 0($t0)
	sw $t1, -88($fp)
	lw $t1, -40($fp)
	lw $t2, -88($fp)
	beq $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -36($fp)
label122:
	li $t0, 0
	sw $t0, -92($fp)
	lw $t0, 4($fp)
	sw $t0, -96($fp)
	lw $t1, -96($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label127:
	li $t0, 1
	sw $t0, -92($fp)
label128:
	lw $ra, -4($fp)
	lw $v0, -92($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -8
	sw $t0, -100($fp)
	li $t0, 0
	sw $t0, -104($fp)
	li $t0, 4
	lw $t1, -104($fp)
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	lw $t1, 0($t0)
	sw $t1, -116($fp)
	lw $t0, -116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -120($fp)
	li $t0, 60255
	sw $t0, -124($fp)
	lw $t0, -120($fp)
	lw $t1, -124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -128($fp)
	lw $ra, -4($fp)
	lw $v0, -128($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -468
	li $t0, 33723
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
	li $t0, 11461
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
	li $t0, 12339
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
	li $t0, 60243
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
	li $t0, 36861
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
	li $t0, 8659
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
	li $t0, 42024
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
	li $t0, 50709
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
	li $t0, 56513
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 0
	sw $t0, -244($fp)
	li $t0, 46135
	sw $t0, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label129:
	li $t0, 1
	sw $t0, -244($fp)
label130:
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 20824
	sw $t0, -256($fp)
	addi $t0, $fp, -36
	sw $t0, -260($fp)
	lw $t0, -236($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -268($fp)
	li $t0, 4
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	lw $t1, 0($t0)
	sw $t1, -280($fp)
	lw $t1, -256($fp)
	lw $t2, -280($fp)
	bge $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -252($fp)
label132:
	addi $t0, $fp, -36
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 4
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, -284($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, 0($t0)
	sw $t1, -300($fp)
	lw $t0, -300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -304($fp)
	li $t0, 1
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
	lw $t0, -320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -324($fp)
	li $t0, 2
	sw $t0, -328($fp)
	li $t0, 4
	lw $t1, -328($fp)
	mul $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t1, 0($t0)
	sw $t1, -340($fp)
	lw $t0, -340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -344($fp)
	li $t0, 3
	sw $t0, -348($fp)
	li $t0, 4
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t1, -344($fp)
	add $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	lw $t1, 0($t0)
	sw $t1, -360($fp)
	lw $t0, -360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -364($fp)
	li $t0, 4
	sw $t0, -368($fp)
	li $t0, 4
	lw $t1, -368($fp)
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	lw $t1, -364($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	lw $t1, 0($t0)
	sw $t1, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -384($fp)
	li $t0, 5
	sw $t0, -388($fp)
	li $t0, 4
	lw $t1, -388($fp)
	mul $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	lw $t1, -384($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	lw $t1, 0($t0)
	sw $t1, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -404($fp)
	li $t0, 6
	sw $t0, -408($fp)
	li $t0, 4
	lw $t1, -408($fp)
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	lw $t1, -404($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	lw $t1, 0($t0)
	sw $t1, -420($fp)
	lw $t0, -420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -424($fp)
	li $t0, 7
	sw $t0, -428($fp)
	li $t0, 4
	lw $t1, -428($fp)
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, 0($t0)
	sw $t1, -440($fp)
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -448($fp)
	li $t0, 59197
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label135
label135:
	li $t0, 41751
	sw $t0, -456($fp)
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -464($fp)
	lw $t0, 4($fp)
	sw $t0, -468($fp)
	lw $t0, -464($fp)
	lw $t1, -468($fp)
	mul $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t1, -472($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -448($fp)
label134:
	lw $ra, -4($fp)
	lw $v0, -448($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -284
	li $t0, 64415
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
	li $t0, 2055
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
	li $t0, 22599
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
	li $t0, 29466
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
	li $t0, 41714
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -124($fp)
	li $t0, 58820
	sw $t0, -128($fp)
	lw $t0, 4($fp)
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	sub $t0, $t0, $t1
	sw $t0, -136($fp)
	li $t0, 58760
	sw $t0, -140($fp)
	lw $t0, -136($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	addi $sp, $sp, -4
	lw $t0, -124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -144($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -148($fp)
	addi $sp, $sp, 12
	lw $t0, 4($fp)
	sw $t0, -152($fp)
	li $t0, 0
	lw $t1, -152($fp)
	sub $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -148($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	addi $t0, $fp, -20
	sw $t0, -164($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 0
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 4136
	sw $t0, -256($fp)
	li $t0, 0
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, 8($fp)
	sw $t0, -264($fp)
	lw $t1, -260($fp)
	lw $t2, -264($fp)
	ble $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -252($fp)
label139:
	li $t0, 22931
	sw $t0, -268($fp)
	lw $t0, 8($fp)
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t1, -252($fp)
	lw $t2, -276($fp)
	blt $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -248($fp)
label137:
	li $t0, 4
	lw $t1, -248($fp)
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t1, -244($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, 0($t0)
	sw $t1, -288($fp)
	lw $ra, -4($fp)
	lw $v0, -288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -216
	li $t0, 4442
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -24($fp)
label141:
	li $t0, 0
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	li $t0, 0
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label142:
	li $t0, 1
	sw $t0, -36($fp)
label143:
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -48($fp)
	addi $sp, $sp, 8
	li $t0, 63270
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	mul $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -32($fp)
	lw $t1, -56($fp)
	sub $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $ra, -4($fp)
	lw $v0, -60($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label144:
	lw $t0, 8($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	addi $sp, $sp, -4
	lw $t0, -68($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -72($fp)
	addi $sp, $sp, 8
	li $t0, 27442
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label147
label147:
	li $t0, 59814
	sw $t0, -84($fp)
	li $t0, 16443
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	li $t0, 33023
	sw $t0, -96($fp)
	lw $t0, -92($fp)
	lw $t1, -96($fp)
	sub $t0, $t0, $t1
	sw $t0, -100($fp)
	li $t0, 57323
	sw $t0, -104($fp)
	li $t0, 11161
	sw $t0, -108($fp)
	lw $t0, -104($fp)
	lw $t1, -108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -112($fp)
	lw $t0, -100($fp)
	lw $t1, -112($fp)
	sub $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t1, -116($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 0
	sw $t0, -120($fp)
	lw $t0, -12($fp)
	sw $t0, -124($fp)
	lw $t1, -124($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -120($fp)
label149:
	lw $t0, -12($fp)
	sw $t0, -128($fp)
	li $t0, 0
	lw $t1, -128($fp)
	sub $t0, $t0, $t1
	sw $t0, -132($fp)
	li $t0, 0
	lw $t1, -132($fp)
	sub $t0, $t0, $t1
	sw $t0, -136($fp)
	addi $sp, $sp, -4
	lw $t0, -120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -136($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -140($fp)
	addi $sp, $sp, 12
	j label144
label146:
	lw $t0, -12($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -148($fp)
	lw $t0, 12($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	li $t0, 0
	sw $t0, -164($fp)
	li $t0, 1211
	sw $t0, -168($fp)
	li $t0, 3249
	sw $t0, -172($fp)
	lw $t1, -168($fp)
	lw $t2, -172($fp)
	blt $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -164($fp)
label155:
	lw $t0, 8($fp)
	sw $t0, -176($fp)
	lw $t1, -164($fp)
	lw $t2, -176($fp)
	bgt $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -160($fp)
label153:
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -160($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -180($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -184($fp)
	li $t0, 23500
	sw $t0, -188($fp)
	lw $t0, -12($fp)
	sw $t0, -192($fp)
	lw $t1, -188($fp)
	lw $t2, -192($fp)
	blt $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -184($fp)
label157:
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -196($fp)
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	lw $t1, -196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -200($fp)
	li $t0, 61454
	sw $t0, -204($fp)
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	li $t0, 40110
	sw $t0, -212($fp)
	lw $t0, -12($fp)
	sw $t0, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t1, -208($fp)
	lw $t2, -220($fp)
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -148($fp)
label151:
	lw $ra, -4($fp)
	lw $v0, -148($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -16368
	li $t0, 32159
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 37942
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 25283
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 23136
	sw $t0, -496($fp)
	addi $t0, $fp, -40
	sw $t0, -500($fp)
	li $t0, 0
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
	li $t0, 18542
	sw $t0, -520($fp)
	addi $t0, $fp, -40
	sw $t0, -524($fp)
	li $t0, 1
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
	li $t0, 46107
	sw $t0, -544($fp)
	addi $t0, $fp, -40
	sw $t0, -548($fp)
	li $t0, 2
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
	li $t0, 16798
	sw $t0, -568($fp)
	addi $t0, $fp, -40
	sw $t0, -572($fp)
	li $t0, 3
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
	li $t0, 60293
	sw $t0, -592($fp)
	addi $t0, $fp, -40
	sw $t0, -596($fp)
	li $t0, 4
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
	li $t0, 44986
	sw $t0, -616($fp)
	addi $t0, $fp, -40
	sw $t0, -620($fp)
	li $t0, 5
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
	li $t0, 18853
	sw $t0, -640($fp)
	addi $t0, $fp, -40
	sw $t0, -644($fp)
	li $t0, 6
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
	li $t0, 17356
	sw $t0, -664($fp)
	addi $t0, $fp, -40
	sw $t0, -668($fp)
	li $t0, 7
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
	li $t0, 8917
	sw $t0, -688($fp)
	addi $t0, $fp, -40
	sw $t0, -692($fp)
	li $t0, 8
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
	li $t0, 12137
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 10580
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 50631
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 16273
	sw $t0, -748($fp)
	addi $t0, $fp, -52
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
	li $t0, 33512
	sw $t0, -772($fp)
	addi $t0, $fp, -52
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
	li $t0, 55074
	sw $t0, -796($fp)
	addi $t0, $fp, -52
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
	li $t0, 14008
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 9710
	sw $t0, -832($fp)
	addi $t0, $fp, -80
	sw $t0, -836($fp)
	li $t0, 0
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
	li $t0, 16979
	sw $t0, -856($fp)
	addi $t0, $fp, -80
	sw $t0, -860($fp)
	li $t0, 1
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
	li $t0, 8286
	sw $t0, -880($fp)
	addi $t0, $fp, -80
	sw $t0, -884($fp)
	li $t0, 2
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
	li $t0, 26153
	sw $t0, -904($fp)
	addi $t0, $fp, -80
	sw $t0, -908($fp)
	li $t0, 3
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
	li $t0, 50003
	sw $t0, -928($fp)
	addi $t0, $fp, -80
	sw $t0, -932($fp)
	li $t0, 4
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
	li $t0, 73
	sw $t0, -952($fp)
	addi $t0, $fp, -80
	sw $t0, -956($fp)
	li $t0, 5
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
	li $t0, 37314
	sw $t0, -976($fp)
	addi $t0, $fp, -80
	sw $t0, -980($fp)
	li $t0, 6
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
	li $t0, 51214
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 3322
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 60815
	sw $t0, -1024($fp)
	addi $t0, $fp, -84
	sw $t0, -1028($fp)
	li $t0, 0
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
	li $t0, 47132
	sw $t0, -1048($fp)
	addi $t0, $fp, -116
	sw $t0, -1052($fp)
	li $t0, 0
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
	li $t0, 43432
	sw $t0, -1072($fp)
	addi $t0, $fp, -116
	sw $t0, -1076($fp)
	li $t0, 1
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
	li $t0, 27438
	sw $t0, -1096($fp)
	addi $t0, $fp, -116
	sw $t0, -1100($fp)
	li $t0, 2
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
	li $t0, 19538
	sw $t0, -1120($fp)
	addi $t0, $fp, -116
	sw $t0, -1124($fp)
	li $t0, 3
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
	li $t0, 3180
	sw $t0, -1144($fp)
	addi $t0, $fp, -116
	sw $t0, -1148($fp)
	li $t0, 4
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
	li $t0, 50575
	sw $t0, -1168($fp)
	addi $t0, $fp, -116
	sw $t0, -1172($fp)
	li $t0, 5
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
	li $t0, 38080
	sw $t0, -1192($fp)
	addi $t0, $fp, -116
	sw $t0, -1196($fp)
	li $t0, 6
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
	li $t0, 49287
	sw $t0, -1216($fp)
	addi $t0, $fp, -116
	sw $t0, -1220($fp)
	li $t0, 7
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
	li $t0, 1837
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 32837
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 28738
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 20690
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 50193
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 37655
	sw $t0, -1300($fp)
	addi $t0, $fp, -132
	sw $t0, -1304($fp)
	li $t0, 0
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
	li $t0, 32827
	sw $t0, -1324($fp)
	addi $t0, $fp, -132
	sw $t0, -1328($fp)
	li $t0, 1
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
	li $t0, 60774
	sw $t0, -1348($fp)
	addi $t0, $fp, -132
	sw $t0, -1352($fp)
	li $t0, 2
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
	li $t0, 22750
	sw $t0, -1372($fp)
	addi $t0, $fp, -132
	sw $t0, -1376($fp)
	li $t0, 3
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
	li $t0, 49100
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 28750
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 12288
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 63108
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 38460
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 29268
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 5858
	sw $t0, -1468($fp)
	addi $t0, $fp, -172
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
	li $t0, 64614
	sw $t0, -1492($fp)
	addi $t0, $fp, -172
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
	li $t0, 13735
	sw $t0, -1516($fp)
	addi $t0, $fp, -172
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
	li $t0, 5932
	sw $t0, -1540($fp)
	addi $t0, $fp, -172
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
	li $t0, 36392
	sw $t0, -1564($fp)
	addi $t0, $fp, -172
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
	li $t0, 64949
	sw $t0, -1588($fp)
	addi $t0, $fp, -172
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
	li $t0, 9254
	sw $t0, -1612($fp)
	addi $t0, $fp, -172
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
	li $t0, 31671
	sw $t0, -1636($fp)
	addi $t0, $fp, -172
	sw $t0, -1640($fp)
	li $t0, 7
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
	li $t0, 46545
	sw $t0, -1660($fp)
	addi $t0, $fp, -172
	sw $t0, -1664($fp)
	li $t0, 8
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
	li $t0, 52687
	sw $t0, -1684($fp)
	addi $t0, $fp, -172
	sw $t0, -1688($fp)
	li $t0, 9
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
	li $t0, 59110
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	li $t0, 547
	sw $t0, -1720($fp)
	addi $t0, $fp, -192
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
	li $t0, 55867
	sw $t0, -1744($fp)
	addi $t0, $fp, -192
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
	li $t0, 44149
	sw $t0, -1768($fp)
	addi $t0, $fp, -192
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
	li $t0, 38628
	sw $t0, -1792($fp)
	addi $t0, $fp, -192
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
	li $t0, 39618
	sw $t0, -1816($fp)
	addi $t0, $fp, -192
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
	li $t0, 45986
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 5929
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	li $t0, 2820
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	li $t0, 1140
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	li $t0, 56123
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	li $t0, 40475
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	li $t0, 33967
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	li $t0, 51361
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 63226
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	li $t0, 17531
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	li $t0, 14575
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	li $t0, 9978
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	li $t0, 15104
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	li $t0, 53035
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	li $t0, 39246
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	li $t0, 20962
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -2028($fp)
	li $t0, 52113
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -2040($fp)
	li $t0, 52981
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
	li $t0, 26894
	sw $t0, -2056($fp)
	addi $t0, $fp, -224
	sw $t0, -2060($fp)
	li $t0, 0
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
	li $t0, 22970
	sw $t0, -2080($fp)
	addi $t0, $fp, -224
	sw $t0, -2084($fp)
	li $t0, 1
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
	li $t0, 52394
	sw $t0, -2104($fp)
	addi $t0, $fp, -224
	sw $t0, -2108($fp)
	li $t0, 2
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2108($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2104($fp)
	lw $t1, -2120($fp)
	sw $t0, 0($t1)
	lw $t0, -2120($fp)
	lw $t1, 0($t0)
	sw $t1, -2124($fp)
	li $t0, 36149
	sw $t0, -2128($fp)
	addi $t0, $fp, -224
	sw $t0, -2132($fp)
	li $t0, 3
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2132($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2128($fp)
	lw $t1, -2144($fp)
	sw $t0, 0($t1)
	lw $t0, -2144($fp)
	lw $t1, 0($t0)
	sw $t1, -2148($fp)
	li $t0, 54641
	sw $t0, -2152($fp)
	addi $t0, $fp, -224
	sw $t0, -2156($fp)
	li $t0, 4
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
	li $t0, 33403
	sw $t0, -2176($fp)
	addi $t0, $fp, -224
	sw $t0, -2180($fp)
	li $t0, 5
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
	li $t0, 23300
	sw $t0, -2200($fp)
	addi $t0, $fp, -224
	sw $t0, -2204($fp)
	li $t0, 6
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
	li $t0, 48215
	sw $t0, -2224($fp)
	addi $t0, $fp, -224
	sw $t0, -2228($fp)
	li $t0, 7
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
	li $t0, 33951
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	sw $t0, -2256($fp)
	li $t0, 13631
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	sw $t0, -2268($fp)
	li $t0, 26828
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	sw $t0, -2280($fp)
	li $t0, 7043
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -2292($fp)
	li $t0, 53249
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	sw $t0, -2304($fp)
	li $t0, 7278
	sw $t0, -2308($fp)
	addi $t0, $fp, -264
	sw $t0, -2312($fp)
	li $t0, 0
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2312($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2308($fp)
	lw $t1, -2324($fp)
	sw $t0, 0($t1)
	lw $t0, -2324($fp)
	lw $t1, 0($t0)
	sw $t1, -2328($fp)
	li $t0, 12972
	sw $t0, -2332($fp)
	addi $t0, $fp, -264
	sw $t0, -2336($fp)
	li $t0, 1
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2336($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2332($fp)
	lw $t1, -2348($fp)
	sw $t0, 0($t1)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	li $t0, 56070
	sw $t0, -2356($fp)
	addi $t0, $fp, -264
	sw $t0, -2360($fp)
	li $t0, 2
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2360($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2356($fp)
	lw $t1, -2372($fp)
	sw $t0, 0($t1)
	lw $t0, -2372($fp)
	lw $t1, 0($t0)
	sw $t1, -2376($fp)
	li $t0, 8418
	sw $t0, -2380($fp)
	addi $t0, $fp, -264
	sw $t0, -2384($fp)
	li $t0, 3
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2384($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2380($fp)
	lw $t1, -2396($fp)
	sw $t0, 0($t1)
	lw $t0, -2396($fp)
	lw $t1, 0($t0)
	sw $t1, -2400($fp)
	li $t0, 3559
	sw $t0, -2404($fp)
	addi $t0, $fp, -264
	sw $t0, -2408($fp)
	li $t0, 4
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2408($fp)
	lw $t1, -2416($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2404($fp)
	lw $t1, -2420($fp)
	sw $t0, 0($t1)
	lw $t0, -2420($fp)
	lw $t1, 0($t0)
	sw $t1, -2424($fp)
	li $t0, 31009
	sw $t0, -2428($fp)
	addi $t0, $fp, -264
	sw $t0, -2432($fp)
	li $t0, 5
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2432($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2428($fp)
	lw $t1, -2444($fp)
	sw $t0, 0($t1)
	lw $t0, -2444($fp)
	lw $t1, 0($t0)
	sw $t1, -2448($fp)
	li $t0, 42385
	sw $t0, -2452($fp)
	addi $t0, $fp, -264
	sw $t0, -2456($fp)
	li $t0, 6
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2456($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2452($fp)
	lw $t1, -2468($fp)
	sw $t0, 0($t1)
	lw $t0, -2468($fp)
	lw $t1, 0($t0)
	sw $t1, -2472($fp)
	li $t0, 54920
	sw $t0, -2476($fp)
	addi $t0, $fp, -264
	sw $t0, -2480($fp)
	li $t0, 7
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2480($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2476($fp)
	lw $t1, -2492($fp)
	sw $t0, 0($t1)
	lw $t0, -2492($fp)
	lw $t1, 0($t0)
	sw $t1, -2496($fp)
	li $t0, 28699
	sw $t0, -2500($fp)
	addi $t0, $fp, -264
	sw $t0, -2504($fp)
	li $t0, 8
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2504($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2500($fp)
	lw $t1, -2516($fp)
	sw $t0, 0($t1)
	lw $t0, -2516($fp)
	lw $t1, 0($t0)
	sw $t1, -2520($fp)
	li $t0, 59917
	sw $t0, -2524($fp)
	addi $t0, $fp, -264
	sw $t0, -2528($fp)
	li $t0, 9
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2528($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2524($fp)
	lw $t1, -2540($fp)
	sw $t0, 0($t1)
	lw $t0, -2540($fp)
	lw $t1, 0($t0)
	sw $t1, -2544($fp)
	li $t0, 3959
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -2556($fp)
	li $t0, 38678
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	sw $t0, -2568($fp)
	li $t0, 9485
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -2580($fp)
	li $t0, 56995
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	li $t0, 12388
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	sw $t0, -2604($fp)
	li $t0, 30447
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -2616($fp)
	li $t0, 43572
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	sw $t0, -2628($fp)
	li $t0, 65370
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -2640($fp)
	li $t0, 57342
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -2652($fp)
	li $t0, 1006
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	sw $t0, -2664($fp)
	li $t0, 52228
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	li $t0, 27955
	sw $t0, -2680($fp)
	addi $t0, $fp, -280
	sw $t0, -2684($fp)
	li $t0, 0
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
	li $t0, 55648
	sw $t0, -2704($fp)
	addi $t0, $fp, -280
	sw $t0, -2708($fp)
	li $t0, 1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2708($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2704($fp)
	lw $t1, -2720($fp)
	sw $t0, 0($t1)
	lw $t0, -2720($fp)
	lw $t1, 0($t0)
	sw $t1, -2724($fp)
	li $t0, 20096
	sw $t0, -2728($fp)
	addi $t0, $fp, -280
	sw $t0, -2732($fp)
	li $t0, 2
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2732($fp)
	lw $t1, -2740($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2728($fp)
	lw $t1, -2744($fp)
	sw $t0, 0($t1)
	lw $t0, -2744($fp)
	lw $t1, 0($t0)
	sw $t1, -2748($fp)
	li $t0, 51255
	sw $t0, -2752($fp)
	addi $t0, $fp, -280
	sw $t0, -2756($fp)
	li $t0, 3
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2756($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2752($fp)
	lw $t1, -2768($fp)
	sw $t0, 0($t1)
	lw $t0, -2768($fp)
	lw $t1, 0($t0)
	sw $t1, -2772($fp)
	li $t0, 38327
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -2784($fp)
	li $t0, 54047
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -2796($fp)
	li $t0, 64886
	sw $t0, -2800($fp)
	addi $t0, $fp, -284
	sw $t0, -2804($fp)
	li $t0, 0
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2804($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2800($fp)
	lw $t1, -2816($fp)
	sw $t0, 0($t1)
	lw $t0, -2816($fp)
	lw $t1, 0($t0)
	sw $t1, -2820($fp)
	li $t0, 65156
	sw $t0, -2824($fp)
	addi $t0, $fp, -292
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
	li $t0, 61090
	sw $t0, -2848($fp)
	addi $t0, $fp, -292
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
	li $t0, 52599
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	li $t0, 6898
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	sw $t0, -2892($fp)
	li $t0, 8526
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	sw $t0, -2904($fp)
	li $t0, 43133
	sw $t0, -2908($fp)
	addi $t0, $fp, -324
	sw $t0, -2912($fp)
	li $t0, 0
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
	li $t0, 15317
	sw $t0, -2932($fp)
	addi $t0, $fp, -324
	sw $t0, -2936($fp)
	li $t0, 1
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
	li $t0, 12086
	sw $t0, -2956($fp)
	addi $t0, $fp, -324
	sw $t0, -2960($fp)
	li $t0, 2
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2960($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2956($fp)
	lw $t1, -2972($fp)
	sw $t0, 0($t1)
	lw $t0, -2972($fp)
	lw $t1, 0($t0)
	sw $t1, -2976($fp)
	li $t0, 8607
	sw $t0, -2980($fp)
	addi $t0, $fp, -324
	sw $t0, -2984($fp)
	li $t0, 3
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
	li $t0, 57702
	sw $t0, -3004($fp)
	addi $t0, $fp, -324
	sw $t0, -3008($fp)
	li $t0, 4
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
	li $t0, 1470
	sw $t0, -3028($fp)
	addi $t0, $fp, -324
	sw $t0, -3032($fp)
	li $t0, 5
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
	li $t0, 37306
	sw $t0, -3052($fp)
	addi $t0, $fp, -324
	sw $t0, -3056($fp)
	li $t0, 6
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
	li $t0, 52083
	sw $t0, -3076($fp)
	addi $t0, $fp, -324
	sw $t0, -3080($fp)
	li $t0, 7
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
	li $t0, 5430
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	sw $t0, -3108($fp)
	li $t0, 10448
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -3120($fp)
	li $t0, 61568
	sw $t0, -3124($fp)
	addi $t0, $fp, -364
	sw $t0, -3128($fp)
	li $t0, 0
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
	li $t0, 62425
	sw $t0, -3148($fp)
	addi $t0, $fp, -364
	sw $t0, -3152($fp)
	li $t0, 1
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
	li $t0, 22837
	sw $t0, -3172($fp)
	addi $t0, $fp, -364
	sw $t0, -3176($fp)
	li $t0, 2
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
	li $t0, 26480
	sw $t0, -3196($fp)
	addi $t0, $fp, -364
	sw $t0, -3200($fp)
	li $t0, 3
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
	li $t0, 40461
	sw $t0, -3220($fp)
	addi $t0, $fp, -364
	sw $t0, -3224($fp)
	li $t0, 4
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
	li $t0, 22671
	sw $t0, -3244($fp)
	addi $t0, $fp, -364
	sw $t0, -3248($fp)
	li $t0, 5
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
	li $t0, 18286
	sw $t0, -3268($fp)
	addi $t0, $fp, -364
	sw $t0, -3272($fp)
	li $t0, 6
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3272($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3268($fp)
	lw $t1, -3284($fp)
	sw $t0, 0($t1)
	lw $t0, -3284($fp)
	lw $t1, 0($t0)
	sw $t1, -3288($fp)
	li $t0, 41468
	sw $t0, -3292($fp)
	addi $t0, $fp, -364
	sw $t0, -3296($fp)
	li $t0, 7
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
	li $t0, 9363
	sw $t0, -3316($fp)
	addi $t0, $fp, -364
	sw $t0, -3320($fp)
	li $t0, 8
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
	li $t0, 46241
	sw $t0, -3340($fp)
	addi $t0, $fp, -364
	sw $t0, -3344($fp)
	li $t0, 9
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
	li $t0, 31580
	sw $t0, -3364($fp)
	addi $t0, $fp, -372
	sw $t0, -3368($fp)
	li $t0, 0
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3368($fp)
	lw $t1, -3376($fp)
	add $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3364($fp)
	lw $t1, -3380($fp)
	sw $t0, 0($t1)
	lw $t0, -3380($fp)
	lw $t1, 0($t0)
	sw $t1, -3384($fp)
	li $t0, 29459
	sw $t0, -3388($fp)
	addi $t0, $fp, -372
	sw $t0, -3392($fp)
	li $t0, 1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3392($fp)
	lw $t1, -3400($fp)
	add $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3388($fp)
	lw $t1, -3404($fp)
	sw $t0, 0($t1)
	lw $t0, -3404($fp)
	lw $t1, 0($t0)
	sw $t1, -3408($fp)
	li $t0, 31960
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	sw $t0, -3420($fp)
	li $t0, 4371
	sw $t0, -3424($fp)
	addi $t0, $fp, -388
	sw $t0, -3428($fp)
	li $t0, 0
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
	li $t0, 17970
	sw $t0, -3448($fp)
	addi $t0, $fp, -388
	sw $t0, -3452($fp)
	li $t0, 1
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
	li $t0, 31310
	sw $t0, -3472($fp)
	addi $t0, $fp, -388
	sw $t0, -3476($fp)
	li $t0, 2
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
	li $t0, 3991
	sw $t0, -3496($fp)
	addi $t0, $fp, -388
	sw $t0, -3500($fp)
	li $t0, 3
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
	li $t0, 13524
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	sw $t0, -3528($fp)
	li $t0, 18373
	sw $t0, -3532($fp)
	addi $t0, $fp, -396
	sw $t0, -3536($fp)
	li $t0, 0
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
	li $t0, 10890
	sw $t0, -3556($fp)
	addi $t0, $fp, -396
	sw $t0, -3560($fp)
	li $t0, 1
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
	li $t0, 22051
	sw $t0, -3580($fp)
	addi $t0, $fp, -404
	sw $t0, -3584($fp)
	li $t0, 0
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3584($fp)
	lw $t1, -3592($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3580($fp)
	lw $t1, -3596($fp)
	sw $t0, 0($t1)
	lw $t0, -3596($fp)
	lw $t1, 0($t0)
	sw $t1, -3600($fp)
	li $t0, 61507
	sw $t0, -3604($fp)
	addi $t0, $fp, -404
	sw $t0, -3608($fp)
	li $t0, 1
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
	li $t0, 26207
	sw $t0, -3628($fp)
	addi $t0, $fp, -412
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
	li $t0, 34137
	sw $t0, -3652($fp)
	addi $t0, $fp, -412
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
	li $t0, 4578
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3684($fp)
	li $t0, 18373
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -3696($fp)
	li $t0, 35607
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -3708($fp)
	li $t0, 41884
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	sw $t0, -3720($fp)
	li $t0, 4921
	sw $t0, -3724($fp)
	addi $t0, $fp, -416
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
	li $t0, 41037
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	sw $t0, -3756($fp)
	li $t0, 52333
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	sw $t0, -3768($fp)
	li $t0, 953
	sw $t0, -3772($fp)
	addi $t0, $fp, -456
	sw $t0, -3776($fp)
	li $t0, 0
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
	li $t0, 37926
	sw $t0, -3796($fp)
	addi $t0, $fp, -456
	sw $t0, -3800($fp)
	li $t0, 1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3800($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3796($fp)
	lw $t1, -3812($fp)
	sw $t0, 0($t1)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
	li $t0, 9634
	sw $t0, -3820($fp)
	addi $t0, $fp, -456
	sw $t0, -3824($fp)
	li $t0, 2
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3824($fp)
	lw $t1, -3832($fp)
	add $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3820($fp)
	lw $t1, -3836($fp)
	sw $t0, 0($t1)
	lw $t0, -3836($fp)
	lw $t1, 0($t0)
	sw $t1, -3840($fp)
	li $t0, 27433
	sw $t0, -3844($fp)
	addi $t0, $fp, -456
	sw $t0, -3848($fp)
	li $t0, 3
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3848($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3844($fp)
	lw $t1, -3860($fp)
	sw $t0, 0($t1)
	lw $t0, -3860($fp)
	lw $t1, 0($t0)
	sw $t1, -3864($fp)
	li $t0, 12852
	sw $t0, -3868($fp)
	addi $t0, $fp, -456
	sw $t0, -3872($fp)
	li $t0, 4
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3872($fp)
	lw $t1, -3880($fp)
	add $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3868($fp)
	lw $t1, -3884($fp)
	sw $t0, 0($t1)
	lw $t0, -3884($fp)
	lw $t1, 0($t0)
	sw $t1, -3888($fp)
	li $t0, 32305
	sw $t0, -3892($fp)
	addi $t0, $fp, -456
	sw $t0, -3896($fp)
	li $t0, 5
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3896($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3892($fp)
	lw $t1, -3908($fp)
	sw $t0, 0($t1)
	lw $t0, -3908($fp)
	lw $t1, 0($t0)
	sw $t1, -3912($fp)
	li $t0, 45719
	sw $t0, -3916($fp)
	addi $t0, $fp, -456
	sw $t0, -3920($fp)
	li $t0, 6
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3920($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3916($fp)
	lw $t1, -3932($fp)
	sw $t0, 0($t1)
	lw $t0, -3932($fp)
	lw $t1, 0($t0)
	sw $t1, -3936($fp)
	li $t0, 54320
	sw $t0, -3940($fp)
	addi $t0, $fp, -456
	sw $t0, -3944($fp)
	li $t0, 7
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3944($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3940($fp)
	lw $t1, -3956($fp)
	sw $t0, 0($t1)
	lw $t0, -3956($fp)
	lw $t1, 0($t0)
	sw $t1, -3960($fp)
	li $t0, 41668
	sw $t0, -3964($fp)
	addi $t0, $fp, -456
	sw $t0, -3968($fp)
	li $t0, 8
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3968($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3964($fp)
	lw $t1, -3980($fp)
	sw $t0, 0($t1)
	lw $t0, -3980($fp)
	lw $t1, 0($t0)
	sw $t1, -3984($fp)
	li $t0, 26424
	sw $t0, -3988($fp)
	addi $t0, $fp, -456
	sw $t0, -3992($fp)
	li $t0, 9
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -3992($fp)
	lw $t1, -4000($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -3988($fp)
	lw $t1, -4004($fp)
	sw $t0, 0($t1)
	lw $t0, -4004($fp)
	lw $t1, 0($t0)
	sw $t1, -4008($fp)
	li $t0, 20364
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	sw $t0, -4020($fp)
	li $t0, 5592
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	sw $t0, -4032($fp)
	li $t0, 58384
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	sw $t0, -4044($fp)
	li $t0, 24735
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	sw $t0, -4056($fp)
label158:
	li $t0, 0
	sw $t0, -4060($fp)
	li $t0, 0
	sw $t0, -4064($fp)
	lw $t0, -1904($fp)
	sw $t0, -4068($fp)
	lw $t1, -4068($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -4064($fp)
label164:
	li $t0, 0
	sw $t0, -4072($fp)
	lw $t0, -1928($fp)
	sw $t0, -4076($fp)
	li $t0, 28727
	sw $t0, -4080($fp)
	lw $t1, -4076($fp)
	lw $t2, -4080($fp)
	beq $t1, $t2, label165
	j label167
label167:
	li $t0, 37087
	sw $t0, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -4072($fp)
label166:
	li $t0, 0
	sw $t0, -4088($fp)
	lw $t0, -2252($fp)
	sw $t0, -4092($fp)
	li $t0, 24158
	sw $t0, -4096($fp)
	lw $t0, -4092($fp)
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label170
label170:
	lw $t0, -1916($fp)
	sw $t0, -4104($fp)
	lw $t1, -4104($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -4088($fp)
label169:
	li $t0, 0
	sw $t0, -4108($fp)
	li $t0, 23562
	sw $t0, -4112($fp)
	lw $t1, -4112($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -4108($fp)
label172:
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4116($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4120($fp)
	addi $sp, $sp, 8
	lw $t1, -4064($fp)
	lw $t2, -4120($fp)
	beq $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -4060($fp)
label162:
	lw $t0, -4060($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	addi $t0, $fp, -416
	sw $t0, -4128($fp)
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 42532
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -4132($fp)
label174:
	li $t0, 4
	lw $t1, -4132($fp)
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, -4128($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	lw $t1, 0($t0)
	sw $t1, -4148($fp)
	lw $t0, -4148($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -4152($fp)
	j label158
label160:
	addi $t0, $fp, -280
	sw $t0, -4156($fp)
	li $t0, 0
	sw $t0, -4160($fp)
	li $t0, 39617
	sw $t0, -4164($fp)
	lw $t0, -3524($fp)
	sw $t0, -4168($fp)
	lw $t1, -4164($fp)
	lw $t2, -4168($fp)
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -4160($fp)
label179:
	li $t0, 4
	lw $t1, -4160($fp)
	mul $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	lw $t1, -4156($fp)
	add $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	lw $t1, 0($t0)
	sw $t1, -4180($fp)
	li $t0, 0
	lw $t1, -4180($fp)
	sub $t0, $t0, $t1
	sw $t0, -4184($fp)
	li $t0, 0
	sw $t0, -4188($fp)
	li $t0, 0
	sw $t0, -4192($fp)
	li $t0, 59138
	sw $t0, -4196($fp)
	lw $t1, -4196($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -4192($fp)
label183:
	li $t0, 38503
	sw $t0, -4200($fp)
	lw $t0, -1844($fp)
	sw $t0, -4204($fp)
	lw $t0, -4200($fp)
	lw $t1, -4204($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t1, -4192($fp)
	lw $t2, -4208($fp)
	blt $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -4188($fp)
label181:
	lw $t1, -4184($fp)
	lw $t2, -4188($fp)
	beq $t1, $t2, label175
	j label176
label175:
	li $t0, 0
	sw $t0, -4212($fp)
	addi $t0, $fp, -416
	sw $t0, -4216($fp)
	li $t0, 0
	sw $t0, -4220($fp)
	li $t0, 4
	lw $t1, -4220($fp)
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, 0($t0)
	sw $t1, -4232($fp)
	lw $t1, -4232($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label187:
	li $t0, 43081
	sw $t0, -4236($fp)
	li $t0, 0
	lw $t1, -4236($fp)
	sub $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t1, -4240($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label186
label186:
	addi $t0, $fp, -224
	sw $t0, -4244($fp)
	lw $t0, -2660($fp)
	sw $t0, -4248($fp)
	li $t0, 4
	lw $t1, -4248($fp)
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	lw $t1, 0($t0)
	sw $t1, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	lw $t0, 8($fp)
	sw $t0, -4268($fp)
	lw $t1, -4268($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label188
label188:
	li $t0, 1
	sw $t0, -4264($fp)
label189:
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	sub $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t1, -4272($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -4212($fp)
label185:
	j label177
label176:
	li $t0, 0
	sw $t0, -4276($fp)
	addi $t0, $fp, -84
	sw $t0, -4280($fp)
	lw $t0, -464($fp)
	sw $t0, -4284($fp)
	li $t0, 4
	lw $t1, -4284($fp)
	mul $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, -4280($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	lw $t1, 0($t0)
	sw $t1, -4296($fp)
	lw $t1, -4296($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label195:
	lw $t0, -1988($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -4304($fp)
	li $t0, 0
	sw $t0, -4308($fp)
	li $t0, 19429
	sw $t0, -4312($fp)
	li $t0, 0
	lw $t1, -4312($fp)
	sub $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t1, -4316($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label198:
	li $t0, 23582
	sw $t0, -4320($fp)
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -4308($fp)
label197:
	li $t0, 0
	sw $t0, -4324($fp)
	lw $t0, -740($fp)
	sw $t0, -4328($fp)
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label201:
	li $t0, 63346
	sw $t0, -4332($fp)
	lw $t1, -4332($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -4324($fp)
label200:
	addi $sp, $sp, -4
	lw $t0, -4308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4324($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4336($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -412
	sw $t0, -4340($fp)
	lw $t0, -4052($fp)
	sw $t0, -4344($fp)
	li $t0, 4
	lw $t1, -4344($fp)
	mul $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	lw $t1, 0($t0)
	sw $t1, -4356($fp)
	li $t0, 18661
	sw $t0, -4360($fp)
	lw $t0, -4356($fp)
	lw $t1, -4360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4364($fp)
	addi $sp, $sp, -4
	lw $t0, -4364($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4368($fp)
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -4372($fp)
	lw $t0, -4368($fp)
	lw $t1, -4372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4376($fp)
	addi $sp, $sp, -4
	lw $t0, -4304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4376($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4380($fp)
	addi $sp, $sp, 16
	lw $t1, -4380($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -4276($fp)
label194:
	lw $t0, -4276($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -4384($fp)
	lw $t1, -4384($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
label202:
	li $t0, 38848
	sw $t0, -4388($fp)
	li $t0, 0
	sw $t0, -4392($fp)
	li $t0, 6226
	sw $t0, -4396($fp)
	lw $t1, -4396($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label206
label206:
	li $t0, 1
	sw $t0, -4392($fp)
label207:
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	add $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t1, -4400($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label205
label205:
	li $t0, 24536
	sw $t0, -4404($fp)
	addi $t0, $fp, -284
	sw $t0, -4408($fp)
	lw $t0, -728($fp)
	sw $t0, -4412($fp)
	li $t0, 4
	lw $t1, -4412($fp)
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, -4408($fp)
	add $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, 0($t0)
	sw $t1, -4424($fp)
	lw $t0, -4404($fp)
	lw $t1, -4424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 0
	sw $t0, -4432($fp)
	lw $t0, -2900($fp)
	sw $t0, -4436($fp)
	li $t0, 0
	lw $t1, -4436($fp)
	sub $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t1, -4440($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
	li $t0, 1
	sw $t0, -4432($fp)
label212:
	li $t0, 0
	sw $t0, -4444($fp)
	addi $t0, $fp, -456
	sw $t0, -4448($fp)
	li $t0, 4
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
	bne $t1, $t2, label214
	j label213
label213:
	li $t0, 1
	sw $t0, -4444($fp)
label214:
	li $t0, 0
	sw $t0, -4468($fp)
	lw $t0, -3764($fp)
	sw $t0, -4472($fp)
	li $t0, 0
	lw $t1, -4472($fp)
	sub $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t1, -4476($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label215:
	li $t0, 1
	sw $t0, -4468($fp)
label216:
	addi $sp, $sp, -4
	lw $t0, -4432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4480($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4480($fp)
	sub $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t1, -4484($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 0
	sw $t0, -4488($fp)
	li $t0, 0
	sw $t0, -4492($fp)
	li $t0, 0
	sw $t0, -4496($fp)
	lw $t0, -1844($fp)
	sw $t0, -4500($fp)
	lw $t0, -2552($fp)
	sw $t0, -4504($fp)
	lw $t1, -4500($fp)
	lw $t2, -4504($fp)
	ble $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -4496($fp)
label224:
	lw $t0, -1868($fp)
	sw $t0, -4508($fp)
	lw $t1, -4496($fp)
	lw $t2, -4508($fp)
	ble $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -4492($fp)
label222:
	li $t0, 51969
	sw $t0, -4512($fp)
	lw $t0, -3680($fp)
	sw $t0, -4516($fp)
	lw $t0, -4512($fp)
	lw $t1, -4516($fp)
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t1, -4492($fp)
	lw $t2, -4520($fp)
	beq $t1, $t2, label220
	j label218
label220:
	lw $t0, -3104($fp)
	sw $t0, -4524($fp)
	lw $t0, -3116($fp)
	sw $t0, -4528($fp)
	lw $t0, -4524($fp)
	lw $t1, -4528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4532($fp)
	lw $t1, -4532($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label219:
	lw $t0, -1880($fp)
	sw $t0, -4536($fp)
	lw $t1, -4536($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -4488($fp)
label218:
	j label210
label209:
	lw $t0, -2036($fp)
	sw $t0, -4540($fp)
	li $t0, 24090
	sw $t0, -4544($fp)
	lw $t0, -4540($fp)
	lw $t1, -4544($fp)
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	li $t0, 48165
	sw $t0, -4552($fp)
	lw $t0, -4548($fp)
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -2000($fp)
	sw $t0, -4560($fp)
	lw $t0, -4556($fp)
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4564($fp)
	addi $t0, $fp, -396
	sw $t0, -4568($fp)
	li $t0, 0
	sw $t0, -4572($fp)
	li $t0, 4
	lw $t1, -4572($fp)
	mul $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	lw $t1, 0($t0)
	sw $t1, -4584($fp)
	lw $t0, -4564($fp)
	lw $t1, -4584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4588($fp)
	addi $t0, $fp, -84
	sw $t0, -4592($fp)
	lw $t0, -1400($fp)
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
	li $t0, 0
	lw $t1, -4608($fp)
	sub $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t1, -4588($fp)
	lw $t2, -4612($fp)
	blt $t1, $t2, label225
	j label226
label225:
	li $t0, 24298
	sw $t0, -4616($fp)
	li $t0, 0
	lw $t1, -4616($fp)
	sub $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 0
	sw $t0, -4624($fp)
	lw $t0, -1844($fp)
	sw $t0, -4628($fp)
	lw $t0, -716($fp)
	sw $t0, -4632($fp)
	lw $t0, -4628($fp)
	lw $t1, -4632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4636($fp)
	li $t0, 51426
	sw $t0, -4640($fp)
	lw $t1, -4636($fp)
	lw $t2, -4640($fp)
	blt $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -4624($fp)
label235:
	lw $t0, -1988($fp)
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -4648($fp)
	li $t0, 0
	sw $t0, -4652($fp)
	li $t0, 0
	sw $t0, -4656($fp)
	lw $t0, -1448($fp)
	sw $t0, -4660($fp)
	li $t0, 33238
	sw $t0, -4664($fp)
	lw $t1, -4660($fp)
	lw $t2, -4664($fp)
	beq $t1, $t2, label240
	j label239
label240:
	lw $t0, -1460($fp)
	sw $t0, -4668($fp)
	lw $t1, -4668($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -4656($fp)
label239:
	addi $sp, $sp, -4
	lw $t0, -4656($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4672($fp)
	addi $sp, $sp, 8
	li $t0, 29890
	sw $t0, -4676($fp)
	lw $t1, -4672($fp)
	lw $t2, -4676($fp)
	beq $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -4652($fp)
label237:
	addi $sp, $sp, -4
	lw $t0, -4624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4652($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4680($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4684($fp)
	li $t0, 58577
	sw $t0, -4688($fp)
	lw $t0, -1412($fp)
	sw $t0, -4692($fp)
	lw $t1, -4688($fp)
	lw $t2, -4692($fp)
	bgt $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -4684($fp)
label242:
	addi $sp, $sp, -4
	lw $t0, -4680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4684($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4696($fp)
	addi $sp, $sp, 12
	lw $t1, -4696($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 57974
	sw $t0, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 53452
	sw $t0, -4716($fp)
	addi $t0, $fp, -4712
	sw $t0, -4720($fp)
	li $t0, 0
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4720($fp)
	lw $t1, -4728($fp)
	add $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4716($fp)
	lw $t1, -4732($fp)
	sw $t0, 0($t1)
	lw $t0, -4732($fp)
	lw $t1, 0($t0)
	sw $t1, -4736($fp)
	li $t0, 10048
	sw $t0, -4740($fp)
	addi $t0, $fp, -4712
	sw $t0, -4744($fp)
	li $t0, 1
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4744($fp)
	lw $t1, -4752($fp)
	add $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4740($fp)
	lw $t1, -4756($fp)
	sw $t0, 0($t1)
	lw $t0, -4756($fp)
	lw $t1, 0($t0)
	sw $t1, -4760($fp)
	li $t0, 21165
	sw $t0, -4764($fp)
	addi $t0, $fp, -4712
	sw $t0, -4768($fp)
	li $t0, 2
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4768($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4764($fp)
	lw $t1, -4780($fp)
	sw $t0, 0($t1)
	lw $t0, -4780($fp)
	lw $t1, 0($t0)
	sw $t1, -4784($fp)
	li $t0, 25003
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	sw $t0, -4796($fp)
	li $t0, 52580
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	sw $t0, -4808($fp)
	li $t0, 60782
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	sw $t0, -4820($fp)
	li $t0, 18605
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	sw $t0, -4832($fp)
	li $t0, 25547
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	sw $t0, -4844($fp)
	lw $t0, -1904($fp)
	sw $t0, -4848($fp)
	li $t0, 0
	lw $t1, -4848($fp)
	sub $t0, $t0, $t1
	sw $t0, -4852($fp)
	li $t0, 61070
	sw $t0, -4856($fp)
	li $t0, 46344
	sw $t0, -4860($fp)
	lw $t0, -4856($fp)
	lw $t1, -4860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4864($fp)
	lw $t0, -4852($fp)
	lw $t1, -4864($fp)
	add $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	lw $t0, -1412($fp)
	sw $t0, -4876($fp)
	li $t0, 0
	lw $t1, -4876($fp)
	sub $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t1, -4880($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	li $t0, 0
	sw $t0, -4884($fp)
	li $t0, 3092
	sw $t0, -4888($fp)
	li $t0, 14195
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4896($fp)
	li $t0, 44155
	sw $t0, -4900($fp)
	lw $t1, -4896($fp)
	lw $t2, -4900($fp)
	ble $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -4884($fp)
label253:
	lw $t0, -4028($fp)
	sw $t0, -4904($fp)
	lw $t0, -2660($fp)
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -4912($fp)
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4916($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4920($fp)
	li $t0, 17467
	sw $t0, -4924($fp)
	lw $t1, -4924($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -4920($fp)
label255:
	li $t0, 0
	sw $t0, -4928($fp)
	lw $t0, -1856($fp)
	sw $t0, -4932($fp)
	li $t0, 37778
	sw $t0, -4936($fp)
	lw $t0, -4932($fp)
	lw $t1, -4936($fp)
	sub $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t1, -4940($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label258
label258:
	lw $t0, -4804($fp)
	sw $t0, -4944($fp)
	lw $t1, -4944($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -4928($fp)
label257:
	li $t0, 0
	sw $t0, -4948($fp)
	li $t0, 0
	sw $t0, -4952($fp)
	lw $t0, -2000($fp)
	sw $t0, -4956($fp)
	li $t0, 22522
	sw $t0, -4960($fp)
	lw $t1, -4956($fp)
	lw $t2, -4960($fp)
	blt $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -4952($fp)
label262:
	lw $t0, -3524($fp)
	sw $t0, -4964($fp)
	lw $t1, -4952($fp)
	lw $t2, -4964($fp)
	bgt $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -4948($fp)
label260:
	addi $sp, $sp, -4
	lw $t0, -4920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4968($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4968($fp)
	sub $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4916($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -2792($fp)
	sw $t0, -4980($fp)
	lw $t0, -4976($fp)
	lw $t1, -4980($fp)
	add $t0, $t0, $t1
	sw $t0, -4984($fp)
	j label251
label250:
	li $t0, 0
	sw $t0, -4988($fp)
	addi $t0, $fp, -132
	sw $t0, -4992($fp)
	li $t0, 1
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
	lw $t1, -5008($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label265
label265:
	li $t0, 48747
	sw $t0, -5012($fp)
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -4988($fp)
label264:
	li $t0, 0
	sw $t0, -5016($fp)
	lw $t0, -1940($fp)
	sw $t0, -5020($fp)
	li $t0, 28748
	sw $t0, -5024($fp)
	lw $t0, -5020($fp)
	lw $t1, -5024($fp)
	add $t0, $t0, $t1
	sw $t0, -5028($fp)
	li $t0, 62314
	sw $t0, -5032($fp)
	lw $t1, -5028($fp)
	lw $t2, -5032($fp)
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -5016($fp)
label267:
	addi $sp, $sp, -4
	lw $t0, -4988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5016($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5036($fp)
	addi $sp, $sp, 12
label251:
	j label248
label247:
	li $t0, 52796
	sw $t0, -5040($fp)
label248:
	li $t0, 0
	sw $t0, -5044($fp)
	li $t0, 0
	sw $t0, -5048($fp)
	lw $t0, -1880($fp)
	sw $t0, -5052($fp)
	lw $t0, -4816($fp)
	sw $t0, -5056($fp)
	lw $t1, -5052($fp)
	lw $t2, -5056($fp)
	bge $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -5048($fp)
label275:
	lw $t0, -4828($fp)
	sw $t0, -5060($fp)
	lw $t1, -5048($fp)
	lw $t2, -5060($fp)
	bgt $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -5044($fp)
label273:
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5064($fp)
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -5068($fp)
	lw $t0, -5064($fp)
	lw $t1, -5068($fp)
	sub $t0, $t0, $t1
	sw $t0, -5072($fp)
	li $t0, 27238
	sw $t0, -5076($fp)
	li $t0, 15364
	sw $t0, -5080($fp)
	lw $t0, -5076($fp)
	lw $t1, -5080($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -3524($fp)
	sw $t0, -5088($fp)
	lw $t0, -5084($fp)
	lw $t1, -5088($fp)
	sub $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -1928($fp)
	sw $t0, -5096($fp)
	li $t0, 0
	sw $t0, -5100($fp)
	lw $t0, -1988($fp)
	sw $t0, -5104($fp)
	lw $t0, -4840($fp)
	sw $t0, -5108($fp)
	lw $t0, -5104($fp)
	lw $t1, -5108($fp)
	mul $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -2024($fp)
	sw $t0, -5116($fp)
	lw $t1, -5112($fp)
	lw $t2, -5116($fp)
	beq $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -5100($fp)
label277:
	addi $sp, $sp, -4
	lw $t0, -5072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5100($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5120($fp)
	addi $sp, $sp, 20
	lw $t0, -1964($fp)
	sw $t0, -5124($fp)
	li $t0, 134
	sw $t0, -5128($fp)
	lw $t0, -5124($fp)
	lw $t1, -5128($fp)
	mul $t0, $t0, $t1
	sw $t0, -5132($fp)
	li $t0, 51536
	sw $t0, -5136($fp)
	lw $t0, -5132($fp)
	lw $t1, -5136($fp)
	mul $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t1, -5120($fp)
	lw $t2, -5140($fp)
	beq $t1, $t2, label268
	j label271
label271:
	li $t0, 8406
	sw $t0, -5144($fp)
	li $t0, 0
	lw $t1, -5144($fp)
	sub $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t1, -5148($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 0
	sw $t0, -5152($fp)
	li $t0, 0
	sw $t0, -5156($fp)
	lw $t0, -1880($fp)
	sw $t0, -5160($fp)
	lw $t0, -1424($fp)
	sw $t0, -5164($fp)
	lw $t1, -5160($fp)
	lw $t2, -5164($fp)
	blt $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -5156($fp)
label281:
	lw $t0, -2876($fp)
	sw $t0, -5168($fp)
	lw $t1, -5156($fp)
	lw $t2, -5168($fp)
	beq $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -5152($fp)
label279:
	addi $sp, $sp, -4
	lw $t0, -5152($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5172($fp)
	addi $sp, $sp, 8
	lw $t0, -2048($fp)
	sw $t0, -5176($fp)
	lw $t0, -5172($fp)
	lw $t1, -5176($fp)
	sub $t0, $t0, $t1
	sw $t0, -5180($fp)
	addi $t0, $fp, -172
	sw $t0, -5184($fp)
	lw $t0, -1892($fp)
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
	lw $t0, -4792($fp)
	sw $t0, -5204($fp)
	lw $t0, -5200($fp)
	lw $t1, -5204($fp)
	add $t0, $t0, $t1
	sw $t0, -5208($fp)
	li $t0, 15890
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	sw $t0, -5216($fp)
	li $t0, 0
	sw $t0, -5220($fp)
	li $t0, 33373
	sw $t0, -5224($fp)
	lw $t0, -1928($fp)
	sw $t0, -5228($fp)
	lw $t1, -5224($fp)
	lw $t2, -5228($fp)
	blt $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -5220($fp)
label283:
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5232($fp)
	addi $sp, $sp, 16
	lw $t0, -5180($fp)
	lw $t1, -5232($fp)
	add $t0, $t0, $t1
	sw $t0, -5236($fp)
	j label270
label269:
	li $t0, 0
	sw $t0, -5240($fp)
	li $t0, 0
	sw $t0, -5244($fp)
	li $t0, 0
	sw $t0, -5248($fp)
	li $t0, 3807
	sw $t0, -5252($fp)
	li $t0, 4344
	sw $t0, -5256($fp)
	lw $t1, -5252($fp)
	lw $t2, -5256($fp)
	beq $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -5248($fp)
label289:
	lw $t0, -2900($fp)
	sw $t0, -5260($fp)
	lw $t1, -5248($fp)
	lw $t2, -5260($fp)
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -5244($fp)
label287:
	lw $t0, -1964($fp)
	sw $t0, -5264($fp)
	li $t0, 0
	sw $t0, -5268($fp)
	li $t0, 59832
	sw $t0, -5272($fp)
	lw $t1, -5272($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label292:
	li $t0, 25811
	sw $t0, -5276($fp)
	lw $t1, -5276($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -5268($fp)
label291:
	addi $sp, $sp, -4
	lw $t0, -5244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5280($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5280($fp)
	sub $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t1, -5284($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label284
label284:
	li $t0, 1
	sw $t0, -5240($fp)
label285:
label270:
	lw $t0, -1004($fp)
	sw $t0, -5288($fp)
	lw $t0, -464($fp)
	sw $t0, -5292($fp)
	li $t0, 0
	lw $t1, -5292($fp)
	sub $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5288($fp)
	lw $t1, -5296($fp)
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	li $t0, 46976
	sw $t0, -5304($fp)
	lw $t0, -5300($fp)
	lw $t1, -5304($fp)
	sub $t0, $t0, $t1
	sw $t0, -5308($fp)
	li $t0, 0
	sw $t0, -5312($fp)
	li $t0, 28810
	sw $t0, -5316($fp)
	lw $t1, -5316($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -5312($fp)
label297:
	lw $t0, -5308($fp)
	lw $t1, -5312($fp)
	sub $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t1, -5320($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	lw $t0, -2900($fp)
	sw $t0, -5324($fp)
	j label295
label294:
	li $t0, 0
	sw $t0, -5328($fp)
	lw $t0, -1256($fp)
	sw $t0, -5332($fp)
	lw $t1, -5332($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label300
label300:
	addi $t0, $fp, -4712
	sw $t0, -5336($fp)
	li $t0, 1
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
	lw $t0, -2792($fp)
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	li $t0, 47416
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -5364($fp)
label302:
	lw $t0, -5360($fp)
	lw $t1, -5364($fp)
	sub $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t1, -5372($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -5328($fp)
label299:
label295:
	j label245
label244:
	li $t0, 0
	sw $t0, -5376($fp)
	li $t0, 0
	sw $t0, -5380($fp)
	lw $t0, -2660($fp)
	sw $t0, -5384($fp)
	li $t0, 0
	sw $t0, -5388($fp)
	li $t0, 16936
	sw $t0, -5392($fp)
	lw $t1, -5392($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label307:
	li $t0, 1
	sw $t0, -5388($fp)
label308:
	lw $t0, -5384($fp)
	lw $t1, -5388($fp)
	add $t0, $t0, $t1
	sw $t0, -5396($fp)
	li $t0, 37756
	sw $t0, -5400($fp)
	lw $t1, -5396($fp)
	lw $t2, -5400($fp)
	beq $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -5380($fp)
label306:
	lw $t0, -3704($fp)
	sw $t0, -5404($fp)
	lw $t1, -5380($fp)
	lw $t2, -5404($fp)
	beq $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -5376($fp)
label304:
label245:
	j label233
label232:
	li $t0, 0
	sw $t0, -5408($fp)
	li $t0, 28224
	sw $t0, -5412($fp)
	li $t0, 0
	lw $t1, -5412($fp)
	sub $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -1952($fp)
	sw $t0, -5420($fp)
	lw $t1, -5416($fp)
	lw $t2, -5420($fp)
	bgt $t1, $t2, label312
	j label310
label312:
	lw $t0, -2900($fp)
	sw $t0, -5424($fp)
	li $t0, 20029
	sw $t0, -5428($fp)
	lw $t0, -5424($fp)
	lw $t1, -5428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5432($fp)
	li $t0, 0
	lw $t1, -5432($fp)
	sub $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t1, -5436($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label311:
	addi $t0, $fp, -292
	sw $t0, -5440($fp)
	li $t0, 1
	sw $t0, -5444($fp)
	li $t0, 4
	lw $t1, -5444($fp)
	mul $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	lw $t1, -5440($fp)
	add $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	lw $t1, 0($t0)
	sw $t1, -5456($fp)
	li $t0, 42551
	sw $t0, -5460($fp)
	lw $t0, -5456($fp)
	lw $t1, -5460($fp)
	add $t0, $t0, $t1
	sw $t0, -5464($fp)
	li $t0, 0
	sw $t0, -5468($fp)
	lw $t0, -2012($fp)
	sw $t0, -5472($fp)
	lw $t1, -5472($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -5468($fp)
label314:
	lw $t0, -5464($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t1, -5476($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -5408($fp)
label310:
	lw $ra, -4($fp)
	lw $v0, -5408($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label233:
	j label230
label229:
	li $t0, 0
	sw $t0, -5480($fp)
	addi $t0, $fp, -116
	sw $t0, -5484($fp)
	lw $t0, -1244($fp)
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
	li $t0, 0
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5504($fp)
	li $t0, 0
	lw $t1, -5504($fp)
	sub $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -2624($fp)
	sw $t0, -5512($fp)
	lw $t0, -1988($fp)
	sw $t0, -5516($fp)
	lw $t0, -5512($fp)
	lw $t1, -5516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5520($fp)
	lw $t0, -2264($fp)
	sw $t0, -5524($fp)
	lw $t0, -5520($fp)
	lw $t1, -5524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5528($fp)
	lw $t1, -5508($fp)
	lw $t2, -5528($fp)
	bgt $t1, $t2, label315
	j label317
label317:
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 0
	sw $t0, -5536($fp)
	lw $t0, -2276($fp)
	sw $t0, -5540($fp)
	li $t0, 24193
	sw $t0, -5544($fp)
	lw $t1, -5540($fp)
	lw $t2, -5544($fp)
	bgt $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -5536($fp)
label321:
	lw $t0, -2900($fp)
	sw $t0, -5548($fp)
	lw $t1, -5536($fp)
	lw $t2, -5548($fp)
	ble $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -5532($fp)
label319:
	li $t0, 0
	sw $t0, -5552($fp)
	li $t0, 24310
	sw $t0, -5556($fp)
	lw $t0, -2648($fp)
	sw $t0, -5560($fp)
	lw $t1, -5556($fp)
	lw $t2, -5560($fp)
	bge $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -5552($fp)
label323:
	lw $t1, -5532($fp)
	lw $t2, -5552($fp)
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -5480($fp)
label316:
	lw $ra, -4($fp)
	lw $v0, -5480($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label230:
	j label227
label226:
label324:
	li $t0, 5763
	sw $t0, -5564($fp)
	addi $t0, $fp, -292
	sw $t0, -5568($fp)
	lw $t0, -1292($fp)
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
	lw $t0, -5564($fp)
	lw $t1, -5584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5588($fp)
	addi $t0, $fp, -280
	sw $t0, -5592($fp)
	li $t0, 0
	sw $t0, -5596($fp)
	li $t0, 4
	lw $t1, -5596($fp)
	mul $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	lw $t1, -5592($fp)
	add $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, 0($t0)
	sw $t1, -5608($fp)
	lw $t0, -5588($fp)
	lw $t1, -5608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5612($fp)
	lw $t1, -5612($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label327:
	li $t0, 0
	sw $t0, -5616($fp)
	lw $t0, -728($fp)
	sw $t0, -5620($fp)
	lw $t0, -1712($fp)
	sw $t0, -5624($fp)
	lw $t1, -5620($fp)
	lw $t2, -5624($fp)
	beq $t1, $t2, label330
	j label329
label330:
	li $t0, 4183
	sw $t0, -5628($fp)
	lw $t1, -5628($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -5616($fp)
label329:
	li $t0, 50372
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -5636($fp)
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5636($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5640($fp)
	addi $sp, $sp, 12
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	li $t0, 0
	sw $t0, -5644($fp)
	li $t0, 0
	sw $t0, -5648($fp)
	lw $t0, -2564($fp)
	sw $t0, -5652($fp)
	lw $t0, -2024($fp)
	sw $t0, -5656($fp)
	lw $t1, -5652($fp)
	lw $t2, -5656($fp)
	ble $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -5648($fp)
label338:
	lw $t0, -2624($fp)
	sw $t0, -5660($fp)
	addi $t0, $fp, -192
	sw $t0, -5664($fp)
	lw $t0, -2612($fp)
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
	addi $sp, $sp, -4
	lw $t0, -5648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5680($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5684($fp)
	addi $sp, $sp, 16
	lw $t1, -5684($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label335
label335:
	li $t0, 1
	sw $t0, -5644($fp)
label336:
	lw $t0, -2780($fp)
	sw $t0, -5688($fp)
	li $t0, 0
	lw $t1, -5688($fp)
	sub $t0, $t0, $t1
	sw $t0, -5692($fp)
	li $t0, 40410
	sw $t0, -5696($fp)
	li $t0, 63611
	sw $t0, -5700($fp)
	lw $t0, -5696($fp)
	lw $t1, -5700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5704($fp)
	li $t0, 0
	sw $t0, -5708($fp)
	addi $t0, $fp, -224
	sw $t0, -5712($fp)
	li $t0, 3
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
	li $t0, 19547
	sw $t0, -5732($fp)
	lw $t1, -5728($fp)
	lw $t2, -5732($fp)
	ble $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -5708($fp)
label340:
	addi $sp, $sp, -4
	lw $t0, -5692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5736($fp)
	addi $sp, $sp, 16
	lw $t0, -5644($fp)
	lw $t1, -5736($fp)
	sub $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t1, -5740($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label334
label334:
	addi $t0, $fp, -372
	sw $t0, -5744($fp)
	lw $t0, -3416($fp)
	sw $t0, -5748($fp)
	lw $t0, -1880($fp)
	sw $t0, -5752($fp)
	lw $t0, -5748($fp)
	lw $t1, -5752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5756($fp)
	li $t0, 4
	lw $t1, -5756($fp)
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, -5744($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	lw $t1, 0($t0)
	sw $t1, -5768($fp)
	lw $t1, -5768($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 0
	sw $t0, -5772($fp)
	addi $t0, $fp, -284
	sw $t0, -5776($fp)
	li $t0, 0
	sw $t0, -5780($fp)
	li $t0, 27953
	sw $t0, -5784($fp)
	lw $t1, -5784($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label346:
	li $t0, 1
	sw $t0, -5780($fp)
label347:
	li $t0, 4
	lw $t1, -5780($fp)
	mul $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	lw $t1, -5776($fp)
	add $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	lw $t1, 0($t0)
	sw $t1, -5796($fp)
	li $t0, 0
	sw $t0, -5800($fp)
	li $t0, 8247
	sw $t0, -5804($fp)
	lw $t1, -5804($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label348:
	li $t0, 1
	sw $t0, -5800($fp)
label349:
	lw $t0, -1436($fp)
	sw $t0, -5808($fp)
	lw $t0, -5800($fp)
	lw $t1, -5808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5812($fp)
	lw $t1, -5796($fp)
	lw $t2, -5812($fp)
	bgt $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -5772($fp)
label345:
	addi $t0, $fp, -324
	sw $t0, -5816($fp)
	li $t0, 2
	sw $t0, -5820($fp)
	li $t0, 4
	lw $t1, -5820($fp)
	mul $t0, $t0, $t1
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	lw $t1, -5816($fp)
	add $t0, $t0, $t1
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	lw $t1, 0($t0)
	sw $t1, -5832($fp)
	lw $t1, -5772($fp)
	lw $t2, -5832($fp)
	blt $t1, $t2, label341
	j label342
label341:
	li $t0, 17773
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	sw $t0, -5844($fp)
	li $t0, 26594
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	sw $t0, -5856($fp)
	li $t0, 0
	sw $t0, -5860($fp)
	li $t0, 15498
	sw $t0, -5864($fp)
	li $t0, 46583
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -2300($fp)
	sw $t0, -5876($fp)
	lw $t0, -5872($fp)
	lw $t1, -5876($fp)
	add $t0, $t0, $t1
	sw $t0, -5880($fp)
	addi $t0, $fp, -404
	sw $t0, -5884($fp)
	li $t0, 0
	sw $t0, -5888($fp)
	li $t0, 4
	lw $t1, -5888($fp)
	mul $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, -5884($fp)
	add $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	lw $t1, 0($t0)
	sw $t1, -5900($fp)
	lw $t0, -5880($fp)
	lw $t1, -5900($fp)
	add $t0, $t0, $t1
	sw $t0, -5904($fp)
	li $t0, 0
	sw $t0, -5908($fp)
	lw $t0, -2012($fp)
	sw $t0, -5912($fp)
	lw $t1, -5912($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label355:
	li $t0, 1
	sw $t0, -5908($fp)
label356:
	li $t0, 28463
	sw $t0, -5916($fp)
	lw $t0, -5908($fp)
	lw $t1, -5916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5920($fp)
	lw $t1, -5904($fp)
	lw $t2, -5920($fp)
	bge $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -5860($fp)
label354:
	lw $t0, -5852($fp)
	sw $t0, -5924($fp)
	lw $t0, -1280($fp)
	sw $t0, -5928($fp)
	lw $t0, -5924($fp)
	lw $t1, -5928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5932($fp)
	lw $t0, -3716($fp)
	sw $t0, -5936($fp)
	lw $t0, -5932($fp)
	lw $t1, -5936($fp)
	mul $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -3704($fp)
	sw $t0, -5944($fp)
	li $t0, 0
	lw $t1, -5944($fp)
	sub $t0, $t0, $t1
	sw $t0, -5948($fp)
	li $t0, 34919
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -5956($fp)
	addi $sp, $sp, -4
	lw $t0, -5948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5956($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5960($fp)
	addi $sp, $sp, 12
	lw $t0, -5940($fp)
	lw $t1, -5960($fp)
	mul $t0, $t0, $t1
	sw $t0, -5964($fp)
	lw $t1, -5860($fp)
	lw $t2, -5964($fp)
	bge $t1, $t2, label350
	j label351
label350:
	li $t0, 0
	sw $t0, -5968($fp)
	li $t0, 29940
	sw $t0, -5972($fp)
	lw $t1, -5972($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label359:
	li $t0, 56688
	sw $t0, -5976($fp)
	li $t0, 1
	sw $t0, -5980($fp)
	lw $t0, -5976($fp)
	lw $t1, -5980($fp)
	mul $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -5968($fp)
label358:
	lw $ra, -4($fp)
	lw $v0, -5968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label352
label351:
	li $t0, 0
	sw $t0, -5988($fp)
	li $t0, 0
	sw $t0, -5992($fp)
	li $t0, 16356
	sw $t0, -5996($fp)
	lw $t1, -5996($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -5992($fp)
label363:
	lw $t0, -2624($fp)
	sw $t0, -6000($fp)
	li $t0, 0
	lw $t1, -6000($fp)
	sub $t0, $t0, $t1
	sw $t0, -6004($fp)
	li $t0, 0
	sw $t0, -6008($fp)
	addi $t0, $fp, -264
	sw $t0, -6012($fp)
	lw $t0, -5840($fp)
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
	lw $t1, -6028($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label365
label366:
	li $t0, 40549
	sw $t0, -6032($fp)
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -6008($fp)
label365:
	li $t0, 63531
	sw $t0, -6036($fp)
	li $t0, 31963
	sw $t0, -6040($fp)
	lw $t0, -6036($fp)
	lw $t1, -6040($fp)
	sub $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t0, -1964($fp)
	sw $t0, -6048($fp)
	lw $t0, -6044($fp)
	lw $t1, -6048($fp)
	sub $t0, $t0, $t1
	sw $t0, -6052($fp)
	addi $sp, $sp, -4
	lw $t0, -6004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6056($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6056($fp)
	sub $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t0, -5992($fp)
	lw $t1, -6060($fp)
	add $t0, $t0, $t1
	sw $t0, -6064($fp)
	li $t0, 22306
	sw $t0, -6068($fp)
	lw $t0, -3692($fp)
	sw $t0, -6072($fp)
	lw $t0, -6068($fp)
	lw $t1, -6072($fp)
	mul $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t1, -6064($fp)
	lw $t2, -6076($fp)
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -5988($fp)
label361:
label352:
	li $t0, 37727
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	sw $t0, -6088($fp)
	addi $t0, $fp, -388
	sw $t0, -6092($fp)
	lw $t0, -3704($fp)
	sw $t0, -6096($fp)
	li $t0, 61521
	sw $t0, -6100($fp)
	lw $t0, -6096($fp)
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	li $t0, 4
	lw $t1, -6104($fp)
	mul $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	lw $t1, -6092($fp)
	add $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	lw $t1, 0($t0)
	sw $t1, -6116($fp)
	lw $t0, -6116($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -6120($fp)
	addi $t0, $fp, -116
	sw $t0, -6124($fp)
	addi $t0, $fp, -324
	sw $t0, -6128($fp)
	lw $t0, -1016($fp)
	sw $t0, -6132($fp)
	li $t0, 4
	lw $t1, -6132($fp)
	mul $t0, $t0, $t1
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	lw $t1, -6128($fp)
	add $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	lw $t1, 0($t0)
	sw $t1, -6144($fp)
	li $t0, 4
	lw $t1, -6144($fp)
	mul $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	lw $t1, -6124($fp)
	add $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	lw $t1, 0($t0)
	sw $t1, -6156($fp)
	lw $t0, -6084($fp)
	sw $t0, -6160($fp)
	lw $t0, -6156($fp)
	lw $t1, -6160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6164($fp)
	li $t0, 0
	lw $t1, -6164($fp)
	sub $t0, $t0, $t1
	sw $t0, -6168($fp)
	j label343
label342:
	li $t0, 0
	sw $t0, -6172($fp)
	li $t0, 9786
	sw $t0, -6176($fp)
	lw $t1, -6176($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -6172($fp)
label368:
	lw $t0, -2012($fp)
	sw $t0, -6180($fp)
	lw $t0, -6172($fp)
	lw $t1, -6180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6184($fp)
	addi $sp, $sp, -4
	lw $t0, -6184($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6188($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -6188($fp)
	sub $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $ra, -4($fp)
	lw $v0, -6192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label343:
	j label333
label332:
	li $t0, 22563
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	sw $t0, -6204($fp)
	li $t0, 0
	sw $t0, -6208($fp)
	li $t0, 0
	sw $t0, -6212($fp)
	lw $t0, -1856($fp)
	sw $t0, -6216($fp)
	li $t0, 0
	sw $t0, -6220($fp)
	li $t0, 168
	sw $t0, -6224($fp)
	lw $t0, -2048($fp)
	sw $t0, -6228($fp)
	lw $t0, -6224($fp)
	lw $t1, -6228($fp)
	mul $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t1, -6232($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label375:
	li $t0, 50062
	sw $t0, -6236($fp)
	lw $t1, -6236($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -6220($fp)
label374:
	addi $sp, $sp, -4
	lw $t0, -6216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6220($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6240($fp)
	addi $sp, $sp, 12
	lw $t1, -6240($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -6212($fp)
label372:
	li $t0, 0
	sw $t0, -6244($fp)
	li $t0, 0
	sw $t0, -6248($fp)
	lw $t0, -6200($fp)
	sw $t0, -6252($fp)
	li $t0, 19715
	sw $t0, -6256($fp)
	lw $t1, -6252($fp)
	lw $t2, -6256($fp)
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -6248($fp)
label379:
	li $t0, 24936
	sw $t0, -6260($fp)
	lw $t1, -6248($fp)
	lw $t2, -6260($fp)
	beq $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -6244($fp)
label377:
	li $t0, 0
	sw $t0, -6264($fp)
	lw $t0, -1460($fp)
	sw $t0, -6268($fp)
	li $t0, 0
	lw $t1, -6268($fp)
	sub $t0, $t0, $t1
	sw $t0, -6272($fp)
	lw $t1, -6272($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label382:
	li $t0, 34638
	sw $t0, -6276($fp)
	lw $t1, -6276($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -6264($fp)
label381:
	addi $t0, $fp, -52
	sw $t0, -6280($fp)
	lw $t0, -1880($fp)
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
	li $t0, 0
	lw $t1, -6296($fp)
	sub $t0, $t0, $t1
	sw $t0, -6300($fp)
	addi $sp, $sp, -4
	lw $t0, -6244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6300($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6304($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6304($fp)
	sub $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t1, -6212($fp)
	lw $t2, -6308($fp)
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -6208($fp)
label370:
	li $t0, 0
	sw $t0, -6312($fp)
	lw $t0, -1280($fp)
	sw $t0, -6316($fp)
	li $t0, 32714
	sw $t0, -6320($fp)
	li $t0, 0
	lw $t1, -6320($fp)
	sub $t0, $t0, $t1
	sw $t0, -6324($fp)
	li $t0, 0
	lw $t1, -6324($fp)
	sub $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -6316($fp)
	lw $t1, -6328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6332($fp)
	lw $t1, -6332($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label385
label385:
	li $t0, 4382
	sw $t0, -6336($fp)
	li $t0, 0
	lw $t1, -6336($fp)
	sub $t0, $t0, $t1
	sw $t0, -6340($fp)
	li $t0, 46680
	sw $t0, -6344($fp)
	li $t0, 47669
	sw $t0, -6348($fp)
	li $t0, 33184
	sw $t0, -6352($fp)
	lw $t0, -6348($fp)
	lw $t1, -6352($fp)
	mul $t0, $t0, $t1
	sw $t0, -6356($fp)
	addi $sp, $sp, -4
	lw $t0, -6340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6360($fp)
	addi $sp, $sp, 16
	lw $t1, -6360($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -6312($fp)
label384:
	lw $t0, -2792($fp)
	sw $t0, -6364($fp)
	li $t0, 45500
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -6372($fp)
	li $t0, 0
	sw $t0, -6376($fp)
	li $t0, 0
	sw $t0, -6380($fp)
	li $t0, 30976
	sw $t0, -6384($fp)
	lw $t1, -6384($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label388
label388:
	li $t0, 1
	sw $t0, -6380($fp)
label389:
	li $t0, 17205
	sw $t0, -6388($fp)
	lw $t1, -6380($fp)
	lw $t2, -6388($fp)
	bgt $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -6376($fp)
label387:
	li $t0, 0
	sw $t0, -6392($fp)
	li $t0, 1706
	sw $t0, -6396($fp)
	li $t0, 64453
	sw $t0, -6400($fp)
	lw $t0, -6396($fp)
	lw $t1, -6400($fp)
	sub $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t1, -6404($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label392
label392:
	lw $t0, -1844($fp)
	sw $t0, -6408($fp)
	lw $t1, -6408($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -6392($fp)
label391:
	addi $sp, $sp, -4
	lw $t0, -6372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6412($fp)
	addi $sp, $sp, 16
	lw $t0, -6364($fp)
	lw $t1, -6412($fp)
	mul $t0, $t0, $t1
	sw $t0, -6416($fp)
	addi $t0, $fp, -40
	sw $t0, -6420($fp)
	addi $t0, $fp, -292
	sw $t0, -6424($fp)
	li $t0, 1
	sw $t0, -6428($fp)
	li $t0, 4
	lw $t1, -6428($fp)
	mul $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	lw $t1, -6424($fp)
	add $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	lw $t1, 0($t0)
	sw $t1, -6440($fp)
	lw $t0, -2024($fp)
	sw $t0, -6444($fp)
	lw $t0, -6440($fp)
	lw $t1, -6444($fp)
	add $t0, $t0, $t1
	sw $t0, -6448($fp)
	li $t0, 8428
	sw $t0, -6452($fp)
	lw $t0, -6448($fp)
	lw $t1, -6452($fp)
	add $t0, $t0, $t1
	sw $t0, -6456($fp)
	li $t0, 4
	lw $t1, -6456($fp)
	mul $t0, $t0, $t1
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	lw $t1, -6420($fp)
	add $t0, $t0, $t1
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	lw $t1, 0($t0)
	sw $t1, -6468($fp)
label333:
	j label324
label326:
label227:
label210:
	j label202
label204:
	j label192
label191:
	li $t0, 18343
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	sw $t0, -6480($fp)
	li $t0, 39330
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	sw $t0, -6492($fp)
	li $t0, 65116
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	sw $t0, -6504($fp)
	li $t0, 7755
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	sw $t0, -6516($fp)
	li $t0, 55686
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	sw $t0, -6528($fp)
	li $t0, 63111
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	sw $t0, -6540($fp)
	li $t0, 39719
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	sw $t0, -6552($fp)
	li $t0, 30699
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	sw $t0, -6564($fp)
	li $t0, 19881
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	sw $t0, -6576($fp)
	lw $t0, -6560($fp)
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6572($fp)
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6588($fp)
	li $t0, 11910
	sw $t0, -6592($fp)
	lw $t0, -1016($fp)
	sw $t0, -6596($fp)
	lw $t0, -2024($fp)
	sw $t0, -6600($fp)
	lw $t0, -6596($fp)
	lw $t1, -6600($fp)
	mul $t0, $t0, $t1
	sw $t0, -6604($fp)
	li $t0, 26684
	sw $t0, -6608($fp)
	lw $t0, -6604($fp)
	lw $t1, -6608($fp)
	mul $t0, $t0, $t1
	sw $t0, -6612($fp)
	li $t0, 29667
	sw $t0, -6616($fp)
	lw $t0, -6612($fp)
	lw $t1, -6616($fp)
	sub $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t1, -6592($fp)
	lw $t2, -6620($fp)
	bgt $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -6588($fp)
label394:
	lw $ra, -4($fp)
	lw $v0, -6588($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -6560($fp)
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6572($fp)
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3704($fp)
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -6636($fp)
	li $t0, 0
	sw $t0, -6640($fp)
	lw $t0, -3752($fp)
	sw $t0, -6644($fp)
	lw $t1, -6644($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label395:
	li $t0, 1
	sw $t0, -6640($fp)
label396:
	li $t0, 0
	sw $t0, -6648($fp)
	li $t0, 34473
	sw $t0, -6652($fp)
	li $t0, 26852
	sw $t0, -6656($fp)
	lw $t1, -6652($fp)
	lw $t2, -6656($fp)
	ble $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -6648($fp)
label398:
	lw $t0, -1988($fp)
	sw $t0, -6660($fp)
	li $t0, 0
	lw $t1, -6660($fp)
	sub $t0, $t0, $t1
	sw $t0, -6664($fp)
	addi $sp, $sp, -4
	lw $t0, -6640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6664($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6668($fp)
	addi $sp, $sp, 16
	li $t0, 14193
	sw $t0, -6672($fp)
	lw $t0, -6668($fp)
	lw $t1, -6672($fp)
	add $t0, $t0, $t1
	sw $t0, -6676($fp)
	addi $sp, $sp, -4
	lw $t0, -6636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6676($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6680($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -40
	sw $t0, -6684($fp)
	lw $t0, -6476($fp)
	sw $t0, -6688($fp)
	li $t0, 4
	lw $t1, -6688($fp)
	mul $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, 0($t0)
	sw $t1, -6700($fp)
	li $t0, 0
	lw $t1, -6700($fp)
	sub $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6680($fp)
	lw $t1, -6704($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	li $t0, 3576
	sw $t0, -6712($fp)
	lw $t0, -6708($fp)
	lw $t1, -6712($fp)
	add $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $ra, -4($fp)
	lw $v0, -6716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label399:
	li $t0, 46568
	sw $t0, -6720($fp)
	li $t0, 39130
	sw $t0, -6724($fp)
	li $t0, 0
	lw $t1, -6724($fp)
	sub $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6720($fp)
	lw $t1, -6728($fp)
	mul $t0, $t0, $t1
	sw $t0, -6732($fp)
	li $t0, 0
	sw $t0, -6736($fp)
	lw $t0, -2576($fp)
	sw $t0, -6740($fp)
	lw $t1, -6740($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label402:
	li $t0, 1
	sw $t0, -6736($fp)
label403:
	li $t0, 36290
	sw $t0, -6744($fp)
	lw $t0, -6736($fp)
	lw $t1, -6744($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	li $t0, 28701
	sw $t0, -6752($fp)
	lw $t0, -6748($fp)
	lw $t1, -6752($fp)
	sub $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t1, -6732($fp)
	lw $t2, -6756($fp)
	bgt $t1, $t2, label400
	j label401
label400:
	li $t0, 0
	sw $t0, -6760($fp)
	li $t0, 6778
	sw $t0, -6764($fp)
	li $t0, 17434
	sw $t0, -6768($fp)
	lw $t1, -6764($fp)
	lw $t2, -6768($fp)
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -6760($fp)
label405:
	lw $t0, -6760($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -6776($fp)
	j label399
label401:
	lw $t0, -6560($fp)
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6572($fp)
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6788($fp)
	li $t0, 25689
	sw $t0, -6792($fp)
	lw $t0, -4052($fp)
	sw $t0, -6796($fp)
	lw $t0, -6792($fp)
	lw $t1, -6796($fp)
	mul $t0, $t0, $t1
	sw $t0, -6800($fp)
	li $t0, 0
	lw $t1, -6800($fp)
	sub $t0, $t0, $t1
	sw $t0, -6804($fp)
	li $t0, 0
	sw $t0, -6808($fp)
	li $t0, 16351
	sw $t0, -6812($fp)
	li $t0, 64060
	sw $t0, -6816($fp)
	lw $t0, -6812($fp)
	lw $t1, -6816($fp)
	sub $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t1, -6820($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label411:
	lw $t0, -1424($fp)
	sw $t0, -6824($fp)
	lw $t1, -6824($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -6808($fp)
label410:
	lw $t0, -1976($fp)
	sw $t0, -6828($fp)
	li $t0, 8484
	sw $t0, -6832($fp)
	lw $t0, -6828($fp)
	lw $t1, -6832($fp)
	sub $t0, $t0, $t1
	sw $t0, -6836($fp)
	addi $sp, $sp, -4
	lw $t0, -6804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6836($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6840($fp)
	addi $sp, $sp, 16
	li $t0, 33083
	sw $t0, -6844($fp)
	lw $t0, -1964($fp)
	sw $t0, -6848($fp)
	lw $t0, -6844($fp)
	lw $t1, -6848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6852($fp)
	addi $sp, $sp, -4
	lw $t0, -6840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6852($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6856($fp)
	addi $sp, $sp, 12
	li $t0, 47484
	sw $t0, -6860($fp)
	lw $t0, -6856($fp)
	lw $t1, -6860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6864($fp)
	lw $t0, -1988($fp)
	sw $t0, -6868($fp)
	lw $t0, -6864($fp)
	lw $t1, -6868($fp)
	mul $t0, $t0, $t1
	sw $t0, -6872($fp)
	li $t0, 0
	lw $t1, -6872($fp)
	sub $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t1, -6876($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label408:
	li $t0, 0
	sw $t0, -6880($fp)
	lw $t0, -6560($fp)
	sw $t0, -6884($fp)
	li $t0, 35079
	sw $t0, -6888($fp)
	lw $t0, -6884($fp)
	lw $t1, -6888($fp)
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -1292($fp)
	sw $t0, -6896($fp)
	lw $t1, -6892($fp)
	lw $t2, -6896($fp)
	beq $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -6880($fp)
label413:
	lw $t0, -1940($fp)
	sw $t0, -6900($fp)
	addi $sp, $sp, -4
	lw $t0, -6900($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6904($fp)
	addi $sp, $sp, 8
	lw $t1, -6880($fp)
	lw $t2, -6904($fp)
	beq $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -6788($fp)
label407:
	lw $ra, -4($fp)
	lw $v0, -6788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6908($fp)
	li $t0, 0
	sw $t0, -6912($fp)
	lw $t0, -1292($fp)
	sw $t0, -6916($fp)
	li $t0, 0
	sw $t0, -6920($fp)
	lw $t0, -6572($fp)
	sw $t0, -6924($fp)
	lw $t1, -6924($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -6920($fp)
label419:
	li $t0, 8873
	sw $t0, -6928($fp)
	lw $t0, -6920($fp)
	lw $t1, -6928($fp)
	mul $t0, $t0, $t1
	sw $t0, -6932($fp)
	li $t0, 0
	sw $t0, -6936($fp)
	li $t0, 4743
	sw $t0, -6940($fp)
	lw $t0, -1856($fp)
	sw $t0, -6944($fp)
	lw $t0, -6940($fp)
	lw $t1, -6944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6948($fp)
	li $t0, 290
	sw $t0, -6952($fp)
	lw $t1, -6948($fp)
	lw $t2, -6952($fp)
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -6936($fp)
label421:
	addi $sp, $sp, -4
	lw $t0, -6932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6936($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6956($fp)
	addi $sp, $sp, 12
	lw $t0, -6916($fp)
	lw $t1, -6956($fp)
	mul $t0, $t0, $t1
	sw $t0, -6960($fp)
	li $t0, 0
	sw $t0, -6964($fp)
	lw $t0, -1892($fp)
	sw $t0, -6968($fp)
	lw $t1, -6968($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label422:
	li $t0, 1
	sw $t0, -6964($fp)
label423:
	lw $t0, -6960($fp)
	lw $t1, -6964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6972($fp)
	li $t0, 0
	lw $t1, -6972($fp)
	sub $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t1, -6976($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -6912($fp)
label417:
	li $t0, 0
	sw $t0, -6980($fp)
	lw $t0, -1988($fp)
	sw $t0, -6984($fp)
	lw $t0, -2024($fp)
	sw $t0, -6988($fp)
	lw $t0, -6984($fp)
	lw $t1, -6988($fp)
	sub $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t1, -6992($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label426:
	lw $t0, -476($fp)
	sw $t0, -6996($fp)
	lw $t1, -6996($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -6980($fp)
label425:
	li $t0, 64559
	sw $t0, -7000($fp)
	li $t0, 1899
	sw $t0, -7004($fp)
	lw $t0, -7000($fp)
	lw $t1, -7004($fp)
	mul $t0, $t0, $t1
	sw $t0, -7008($fp)
	li $t0, 4323
	sw $t0, -7012($fp)
	lw $t0, -2636($fp)
	sw $t0, -7016($fp)
	lw $t0, -7012($fp)
	lw $t1, -7016($fp)
	add $t0, $t0, $t1
	sw $t0, -7020($fp)
	li $t0, 8046
	sw $t0, -7024($fp)
	lw $t0, -7020($fp)
	lw $t1, -7024($fp)
	add $t0, $t0, $t1
	sw $t0, -7028($fp)
	addi $sp, $sp, -4
	lw $t0, -6980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7028($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7032($fp)
	addi $sp, $sp, 16
	li $t0, 47765
	sw $t0, -7036($fp)
	lw $t0, -7032($fp)
	lw $t1, -7036($fp)
	add $t0, $t0, $t1
	sw $t0, -7040($fp)
	li $t0, 0
	sw $t0, -7044($fp)
	lw $t0, -1280($fp)
	sw $t0, -7048($fp)
	lw $t1, -7048($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label427:
	li $t0, 1
	sw $t0, -7044($fp)
label428:
	lw $t0, -7040($fp)
	lw $t1, -7044($fp)
	sub $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t1, -6912($fp)
	lw $t2, -7052($fp)
	beq $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -6908($fp)
label415:
	lw $t0, -3704($fp)
	sw $t0, -7056($fp)
	lw $t1, -7056($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 29722
	sw $t0, -7060($fp)
	li $t0, 0
	lw $t1, -7060($fp)
	sub $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -4040($fp)
	sw $t0, -7068($fp)
	lw $t0, -7064($fp)
	lw $t1, -7068($fp)
	add $t0, $t0, $t1
	sw $t0, -7072($fp)
	addi $sp, $sp, -4
	lw $t0, -7072($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7076($fp)
	addi $sp, $sp, 8
	li $t0, 21780
	sw $t0, -7080($fp)
	li $t0, 59675
	sw $t0, -7084($fp)
	lw $t0, -7080($fp)
	lw $t1, -7084($fp)
	mul $t0, $t0, $t1
	sw $t0, -7088($fp)
	li $t0, 0
	lw $t1, -7088($fp)
	sub $t0, $t0, $t1
	sw $t0, -7092($fp)
	lw $t0, -7076($fp)
	lw $t1, -7092($fp)
	sub $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t1, -7096($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	addi $t0, $fp, -84
	sw $t0, -7100($fp)
	lw $t0, -2024($fp)
	sw $t0, -7104($fp)
	li $t0, 4
	lw $t1, -7104($fp)
	mul $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	lw $t1, -7100($fp)
	add $t0, $t0, $t1
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	lw $t1, 0($t0)
	sw $t1, -7116($fp)
	li $t0, 28612
	sw $t0, -7120($fp)
	li $t0, 0
	sw $t0, -7124($fp)
	li $t0, 56407
	sw $t0, -7128($fp)
	lw $t1, -7128($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label440
label440:
	li $t0, 51448
	sw $t0, -7132($fp)
	lw $t1, -7132($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -7124($fp)
label439:
	addi $sp, $sp, -4
	lw $t0, -7116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7124($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7136($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -7136($fp)
	sub $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -7144($fp)
	lw $t1, -7144($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 0
	sw $t0, -7148($fp)
	lw $t0, -2012($fp)
	sw $t0, -7152($fp)
	li $t0, 0
	lw $t1, -7152($fp)
	sub $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t1, -7156($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label444:
	li $t0, 17723
	sw $t0, -7160($fp)
	lw $t1, -7160($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label443
label443:
	lw $t0, -3680($fp)
	sw $t0, -7164($fp)
	lw $t1, -7164($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -7148($fp)
label442:
	lw $t0, -7148($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -7168($fp)
	li $t0, 0
	sw $t0, -7172($fp)
	li $t0, 105
	sw $t0, -7176($fp)
	lw $t1, -7176($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -7172($fp)
label446:
	lw $t0, -3704($fp)
	sw $t0, -7180($fp)
	li $t0, 0
	lw $t1, -7180($fp)
	sub $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t0, -7172($fp)
	lw $t1, -7184($fp)
	sub $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -7192($fp)
	addi $t0, $fp, -324
	sw $t0, -7196($fp)
	li $t0, 0
	sw $t0, -7200($fp)
	li $t0, 32188
	sw $t0, -7204($fp)
	lw $t0, -3524($fp)
	sw $t0, -7208($fp)
	lw $t1, -7204($fp)
	lw $t2, -7208($fp)
	bgt $t1, $t2, label447
	j label449
label449:
	li $t0, 64291
	sw $t0, -7212($fp)
	lw $t1, -7212($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -7200($fp)
label448:
	li $t0, 4
	lw $t1, -7200($fp)
	mul $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	lw $t1, -7196($fp)
	add $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, 0($t0)
	sw $t1, -7224($fp)
	lw $t0, -1892($fp)
	sw $t0, -7228($fp)
	li $t0, 0
	lw $t1, -7228($fp)
	sub $t0, $t0, $t1
	sw $t0, -7232($fp)
	lw $t0, -7224($fp)
	lw $t1, -7232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7236($fp)
	j label437
label436:
	li $t0, 0
	sw $t0, -7240($fp)
	li $t0, 0
	sw $t0, -7244($fp)
	lw $t0, -488($fp)
	sw $t0, -7248($fp)
	lw $t0, -464($fp)
	sw $t0, -7252($fp)
	lw $t1, -7248($fp)
	lw $t2, -7252($fp)
	bge $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -7244($fp)
label453:
	li $t0, 0
	sw $t0, -7256($fp)
	lw $t0, -6548($fp)
	sw $t0, -7260($fp)
	lw $t1, -7260($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -7256($fp)
label455:
	lw $t0, -488($fp)
	sw $t0, -7264($fp)
	li $t0, 0
	lw $t1, -7264($fp)
	sub $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7256($fp)
	lw $t1, -7268($fp)
	add $t0, $t0, $t1
	sw $t0, -7272($fp)
	lw $t1, -7244($fp)
	lw $t2, -7272($fp)
	ble $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -7240($fp)
label451:
	lw $ra, -4($fp)
	lw $v0, -7240($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label437:
	j label434
label433:
	lw $t0, -1292($fp)
	sw $t0, -7276($fp)
	lw $t1, -7276($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	lw $t0, -488($fp)
	sw $t0, -7280($fp)
	addi $t0, $fp, -172
	sw $t0, -7284($fp)
	lw $t0, -1436($fp)
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
	li $t0, 0
	lw $t1, -7300($fp)
	sub $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t0, -7280($fp)
	lw $t1, -7304($fp)
	mul $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t1, -7308($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 0
	sw $t0, -7312($fp)
	li $t0, 0
	sw $t0, -7316($fp)
	li $t0, 2942
	sw $t0, -7320($fp)
	lw $t1, -7320($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label464
label464:
	li $t0, 1
	sw $t0, -7316($fp)
label465:
	li $t0, 39235
	sw $t0, -7324($fp)
	addi $sp, $sp, -4
	lw $t0, -7316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7324($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7328($fp)
	addi $sp, $sp, 12
	lw $t1, -7328($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -7312($fp)
label463:
	j label461
label460:
label466:
	lw $t0, -2780($fp)
	sw $t0, -7332($fp)
	li $t0, 0
	lw $t1, -7332($fp)
	sub $t0, $t0, $t1
	sw $t0, -7336($fp)
	li $t0, 27456
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -7344($fp)
	addi $sp, $sp, -4
	lw $t0, -7336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7344($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -7348($fp)
	addi $sp, $sp, 12
	li $t0, 46013
	sw $t0, -7352($fp)
	li $t0, 0
	lw $t1, -7352($fp)
	sub $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7348($fp)
	lw $t1, -7356($fp)
	add $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t1, -7360($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label469
label469:
	li $t0, 0
	sw $t0, -7364($fp)
	lw $t0, -1988($fp)
	sw $t0, -7368($fp)
	lw $t1, -7368($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label470:
	li $t0, 1
	sw $t0, -7364($fp)
label471:
	lw $t0, -1964($fp)
	sw $t0, -7372($fp)
	lw $t0, -7364($fp)
	lw $t1, -7372($fp)
	mul $t0, $t0, $t1
	sw $t0, -7376($fp)
	li $t0, 0
	sw $t0, -7380($fp)
	lw $t0, -3104($fp)
	sw $t0, -7384($fp)
	li $t0, 20376
	sw $t0, -7388($fp)
	lw $t1, -7384($fp)
	lw $t2, -7388($fp)
	bge $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -7380($fp)
label473:
	lw $t1, -7376($fp)
	lw $t2, -7380($fp)
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 0
	sw $t0, -7392($fp)
	li $t0, 0
	sw $t0, -7396($fp)
	addi $t0, $fp, -364
	sw $t0, -7400($fp)
	lw $t0, -6488($fp)
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
	lw $t1, -7416($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label478
label478:
	li $t0, 14651
	sw $t0, -7420($fp)
	lw $t1, -7420($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -7396($fp)
label477:
	li $t0, 0
	sw $t0, -7424($fp)
	li $t0, 36727
	sw $t0, -7428($fp)
	li $t0, 59064
	sw $t0, -7432($fp)
	lw $t0, -7428($fp)
	lw $t1, -7432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7436($fp)
	lw $t0, -6536($fp)
	sw $t0, -7440($fp)
	lw $t1, -7436($fp)
	lw $t2, -7440($fp)
	beq $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -7424($fp)
label480:
	addi $sp, $sp, -4
	lw $t0, -7396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7424($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -7444($fp)
	addi $sp, $sp, 12
	lw $t0, -6500($fp)
	sw $t0, -7448($fp)
	lw $t0, -7444($fp)
	lw $t1, -7448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7452($fp)
	li $t0, 60540
	sw $t0, -7456($fp)
	lw $t0, -6524($fp)
	sw $t0, -7460($fp)
	lw $t0, -7456($fp)
	lw $t1, -7460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7464($fp)
	li $t0, 54498
	sw $t0, -7468($fp)
	lw $t0, -7464($fp)
	lw $t1, -7468($fp)
	mul $t0, $t0, $t1
	sw $t0, -7472($fp)
	addi $t0, $fp, -52
	sw $t0, -7476($fp)
	lw $t0, -1292($fp)
	sw $t0, -7480($fp)
	li $t0, 4
	lw $t1, -7480($fp)
	mul $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	lw $t1, -7476($fp)
	add $t0, $t0, $t1
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	lw $t1, 0($t0)
	sw $t1, -7492($fp)
	addi $sp, $sp, -4
	lw $t0, -7452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7496($fp)
	addi $sp, $sp, 16
	lw $t1, -7496($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label474
label474:
	li $t0, 1
	sw $t0, -7392($fp)
label475:
	j label466
label468:
label461:
	j label458
label457:
	lw $t0, -2624($fp)
	sw $t0, -7500($fp)
	li $t0, 0
	sw $t0, -7504($fp)
	li $t0, 0
	sw $t0, -7508($fp)
	lw $t0, -2792($fp)
	sw $t0, -7512($fp)
	li $t0, 41011
	sw $t0, -7516($fp)
	lw $t1, -7512($fp)
	lw $t2, -7516($fp)
	bge $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -7508($fp)
label487:
	li $t0, 49730
	sw $t0, -7520($fp)
	lw $t1, -7508($fp)
	lw $t2, -7520($fp)
	bne $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -7504($fp)
label485:
	li $t0, 0
	sw $t0, -7524($fp)
	lw $t0, -2000($fp)
	sw $t0, -7528($fp)
	lw $t1, -7528($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label491:
	lw $t0, -4028($fp)
	sw $t0, -7532($fp)
	lw $t1, -7532($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label490
label490:
	li $t0, 33043
	sw $t0, -7536($fp)
	lw $t1, -7536($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -7524($fp)
label489:
	addi $sp, $sp, -4
	lw $t0, -7504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7540($fp)
	addi $sp, $sp, 12
	lw $t0, -7500($fp)
	lw $t1, -7540($fp)
	add $t0, $t0, $t1
	sw $t0, -7544($fp)
	lw $t1, -7544($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label482
label481:
	lw $t0, -824($fp)
	sw $t0, -7548($fp)
	j label483
label482:
	li $t0, 0
	sw $t0, -7552($fp)
	addi $t0, $fp, -80
	sw $t0, -7556($fp)
	lw $t0, -6476($fp)
	sw $t0, -7560($fp)
	li $t0, 4
	lw $t1, -7560($fp)
	mul $t0, $t0, $t1
	sw $t0, -7564($fp)
	lw $t0, -7564($fp)
	lw $t1, -7556($fp)
	add $t0, $t0, $t1
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	lw $t1, 0($t0)
	sw $t1, -7572($fp)
	lw $t1, -7572($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label494
label494:
	li $t0, 0
	sw $t0, -7576($fp)
	lw $t0, -1268($fp)
	sw $t0, -7580($fp)
	lw $t1, -7580($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -7576($fp)
label496:
	addi $t0, $fp, -388
	sw $t0, -7584($fp)
	li $t0, 2
	sw $t0, -7588($fp)
	li $t0, 4
	lw $t1, -7588($fp)
	mul $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	lw $t1, -7584($fp)
	add $t0, $t0, $t1
	sw $t0, -7596($fp)
	lw $t0, -7596($fp)
	lw $t1, 0($t0)
	sw $t1, -7600($fp)
	lw $t1, -7576($fp)
	lw $t2, -7600($fp)
	beq $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -7552($fp)
label493:
label483:
label458:
label434:
label430:
	li $t0, 0
	sw $t0, -7604($fp)
	li $t0, 57626
	sw $t0, -7608($fp)
	li $t0, 44009
	sw $t0, -7612($fp)
	lw $t0, -7608($fp)
	lw $t1, -7612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7616($fp)
	lw $t1, -7616($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label502
label502:
	li $t0, 31577
	sw $t0, -7620($fp)
	lw $t1, -7620($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -7604($fp)
label501:
	li $t0, 0
	sw $t0, -7624($fp)
	li $t0, 0
	sw $t0, -7628($fp)
	li $t0, 58603
	sw $t0, -7632($fp)
	li $t0, 42110
	sw $t0, -7636($fp)
	lw $t1, -7632($fp)
	lw $t2, -7636($fp)
	ble $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -7628($fp)
label506:
	li $t0, 49348
	sw $t0, -7640($fp)
	lw $t1, -7628($fp)
	lw $t2, -7640($fp)
	ble $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -7624($fp)
label504:
	lw $t0, -1988($fp)
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -7648($fp)
	addi $sp, $sp, -4
	lw $t0, -7604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7648($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7652($fp)
	addi $sp, $sp, 16
	lw $t1, -7652($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 0
	sw $t0, -7656($fp)
	li $t0, 0
	sw $t0, -7660($fp)
	li $t0, 21813
	sw $t0, -7664($fp)
	li $t0, 0
	lw $t1, -7664($fp)
	sub $t0, $t0, $t1
	sw $t0, -7668($fp)
	li $t0, 0
	lw $t1, -7668($fp)
	sub $t0, $t0, $t1
	sw $t0, -7672($fp)
	li $t0, 253
	sw $t0, -7676($fp)
	lw $t1, -7672($fp)
	lw $t2, -7676($fp)
	blt $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -7660($fp)
label510:
	lw $t0, -1988($fp)
	sw $t0, -7680($fp)
	lw $t1, -7660($fp)
	lw $t2, -7680($fp)
	blt $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -7656($fp)
label508:
	lw $ra, -4($fp)
	lw $v0, -7656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label499
label498:
	li $t0, 25716
	sw $t0, -7684($fp)
	li $t0, 0
	sw $t0, -7688($fp)
	lw $t0, -4052($fp)
	sw $t0, -7692($fp)
	li $t0, 0
	lw $t1, -7692($fp)
	sub $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t1, -7696($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label511
label511:
	li $t0, 1
	sw $t0, -7688($fp)
label512:
	li $t0, 0
	lw $t1, -7688($fp)
	sub $t0, $t0, $t1
	sw $t0, -7700($fp)
	lw $t0, -7684($fp)
	lw $t1, -7700($fp)
	add $t0, $t0, $t1
	sw $t0, -7704($fp)
label499:
	lw $t0, -6476($fp)
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6488($fp)
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6500($fp)
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6512($fp)
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6524($fp)
	sw $t0, -7724($fp)
	lw $t0, -7724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6536($fp)
	sw $t0, -7728($fp)
	lw $t0, -7728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6548($fp)
	sw $t0, -7732($fp)
	lw $t0, -7732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7736($fp)
	lw $t0, -2888($fp)
	sw $t0, -7740($fp)
	li $t0, 0
	lw $t1, -7740($fp)
	sub $t0, $t0, $t1
	sw $t0, -7744($fp)
	li $t0, 12684
	sw $t0, -7748($fp)
	li $t0, 51701
	sw $t0, -7752($fp)
	lw $t0, -7748($fp)
	lw $t1, -7752($fp)
	mul $t0, $t0, $t1
	sw $t0, -7756($fp)
	lw $t0, -7744($fp)
	lw $t1, -7756($fp)
	add $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t1, -7760($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label514
label516:
	addi $t0, $fp, -396
	sw $t0, -7764($fp)
	li $t0, 1
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
	lw $t1, -7780($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label515:
	lw $t0, -6512($fp)
	sw $t0, -7784($fp)
	lw $t1, -7784($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -7736($fp)
label514:
	lw $ra, -4($fp)
	lw $v0, -7736($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label192:
label177:
	li $t0, 0
	sw $t0, -7788($fp)
	lw $t0, -2276($fp)
	sw $t0, -7792($fp)
	li $t0, 0
	sw $t0, -7796($fp)
	li $t0, 51807
	sw $t0, -7800($fp)
	lw $t1, -7800($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label524
label524:
	li $t0, 20981
	sw $t0, -7804($fp)
	lw $t1, -7804($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -7796($fp)
label523:
	addi $sp, $sp, -4
	lw $t0, -7796($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7808($fp)
	addi $sp, $sp, 8
	lw $t0, -7792($fp)
	lw $t1, -7808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7812($fp)
	li $t0, 0
	lw $t1, -7812($fp)
	sub $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t1, -7816($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -7788($fp)
label521:
	li $t0, 0
	sw $t0, -7820($fp)
	li $t0, 0
	sw $t0, -7824($fp)
	lw $t0, -2660($fp)
	sw $t0, -7828($fp)
	li $t0, 29163
	sw $t0, -7832($fp)
	lw $t0, -7828($fp)
	lw $t1, -7832($fp)
	mul $t0, $t0, $t1
	sw $t0, -7836($fp)
	li $t0, 25506
	sw $t0, -7840($fp)
	lw $t1, -7836($fp)
	lw $t2, -7840($fp)
	ble $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -7824($fp)
label528:
	li $t0, 23923
	sw $t0, -7844($fp)
	li $t0, 56619
	sw $t0, -7848($fp)
	lw $t0, -7844($fp)
	lw $t1, -7848($fp)
	add $t0, $t0, $t1
	sw $t0, -7852($fp)
	lw $t1, -7824($fp)
	lw $t2, -7852($fp)
	bge $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -7820($fp)
label526:
	lw $t1, -7788($fp)
	lw $t2, -7820($fp)
	beq $t1, $t2, label517
	j label518
label517:
	li $t0, 5984
	sw $t0, -8008($fp)
	addi $t0, $fp, -7892
	sw $t0, -8012($fp)
	li $t0, 0
	sw $t0, -8016($fp)
	lw $t0, -8016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8020($fp)
	lw $t0, -8012($fp)
	lw $t1, -8020($fp)
	add $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t0, -8008($fp)
	lw $t1, -8024($fp)
	sw $t0, 0($t1)
	lw $t0, -8024($fp)
	lw $t1, 0($t0)
	sw $t1, -8028($fp)
	li $t0, 44300
	sw $t0, -8032($fp)
	addi $t0, $fp, -7892
	sw $t0, -8036($fp)
	li $t0, 1
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8044($fp)
	lw $t0, -8036($fp)
	lw $t1, -8044($fp)
	add $t0, $t0, $t1
	sw $t0, -8048($fp)
	lw $t0, -8032($fp)
	lw $t1, -8048($fp)
	sw $t0, 0($t1)
	lw $t0, -8048($fp)
	lw $t1, 0($t0)
	sw $t1, -8052($fp)
	li $t0, 51623
	sw $t0, -8056($fp)
	addi $t0, $fp, -7892
	sw $t0, -8060($fp)
	li $t0, 2
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8068($fp)
	lw $t0, -8060($fp)
	lw $t1, -8068($fp)
	add $t0, $t0, $t1
	sw $t0, -8072($fp)
	lw $t0, -8056($fp)
	lw $t1, -8072($fp)
	sw $t0, 0($t1)
	lw $t0, -8072($fp)
	lw $t1, 0($t0)
	sw $t1, -8076($fp)
	li $t0, 60482
	sw $t0, -8080($fp)
	addi $t0, $fp, -7892
	sw $t0, -8084($fp)
	li $t0, 3
	sw $t0, -8088($fp)
	lw $t0, -8088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8092($fp)
	lw $t0, -8084($fp)
	lw $t1, -8092($fp)
	add $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8080($fp)
	lw $t1, -8096($fp)
	sw $t0, 0($t1)
	lw $t0, -8096($fp)
	lw $t1, 0($t0)
	sw $t1, -8100($fp)
	li $t0, 15491
	sw $t0, -8104($fp)
	addi $t0, $fp, -7892
	sw $t0, -8108($fp)
	li $t0, 4
	sw $t0, -8112($fp)
	lw $t0, -8112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8116($fp)
	lw $t0, -8108($fp)
	lw $t1, -8116($fp)
	add $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t0, -8104($fp)
	lw $t1, -8120($fp)
	sw $t0, 0($t1)
	lw $t0, -8120($fp)
	lw $t1, 0($t0)
	sw $t1, -8124($fp)
	li $t0, 45151
	sw $t0, -8128($fp)
	addi $t0, $fp, -7892
	sw $t0, -8132($fp)
	li $t0, 5
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8132($fp)
	lw $t1, -8140($fp)
	add $t0, $t0, $t1
	sw $t0, -8144($fp)
	lw $t0, -8128($fp)
	lw $t1, -8144($fp)
	sw $t0, 0($t1)
	lw $t0, -8144($fp)
	lw $t1, 0($t0)
	sw $t1, -8148($fp)
	li $t0, 9597
	sw $t0, -8152($fp)
	addi $t0, $fp, -7892
	sw $t0, -8156($fp)
	li $t0, 6
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8156($fp)
	lw $t1, -8164($fp)
	add $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8152($fp)
	lw $t1, -8168($fp)
	sw $t0, 0($t1)
	lw $t0, -8168($fp)
	lw $t1, 0($t0)
	sw $t1, -8172($fp)
	li $t0, 48534
	sw $t0, -8176($fp)
	addi $t0, $fp, -7892
	sw $t0, -8180($fp)
	li $t0, 7
	sw $t0, -8184($fp)
	lw $t0, -8184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8188($fp)
	lw $t0, -8180($fp)
	lw $t1, -8188($fp)
	add $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t0, -8176($fp)
	lw $t1, -8192($fp)
	sw $t0, 0($t1)
	lw $t0, -8192($fp)
	lw $t1, 0($t0)
	sw $t1, -8196($fp)
	li $t0, 20627
	sw $t0, -8200($fp)
	addi $t0, $fp, -7892
	sw $t0, -8204($fp)
	li $t0, 8
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8212($fp)
	lw $t0, -8204($fp)
	lw $t1, -8212($fp)
	add $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t0, -8200($fp)
	lw $t1, -8216($fp)
	sw $t0, 0($t1)
	lw $t0, -8216($fp)
	lw $t1, 0($t0)
	sw $t1, -8220($fp)
	li $t0, 59328
	sw $t0, -8224($fp)
	addi $t0, $fp, -7892
	sw $t0, -8228($fp)
	li $t0, 9
	sw $t0, -8232($fp)
	lw $t0, -8232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8236($fp)
	lw $t0, -8228($fp)
	lw $t1, -8236($fp)
	add $t0, $t0, $t1
	sw $t0, -8240($fp)
	lw $t0, -8224($fp)
	lw $t1, -8240($fp)
	sw $t0, 0($t1)
	lw $t0, -8240($fp)
	lw $t1, 0($t0)
	sw $t1, -8244($fp)
	li $t0, 20785
	sw $t0, -8248($fp)
	lw $t0, -8248($fp)
	sw $t0, -8252($fp)
	lw $t0, -8252($fp)
	sw $t0, -8256($fp)
	li $t0, 61929
	sw $t0, -8260($fp)
	addi $t0, $fp, -7928
	sw $t0, -8264($fp)
	li $t0, 0
	sw $t0, -8268($fp)
	lw $t0, -8268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8272($fp)
	lw $t0, -8264($fp)
	lw $t1, -8272($fp)
	add $t0, $t0, $t1
	sw $t0, -8276($fp)
	lw $t0, -8260($fp)
	lw $t1, -8276($fp)
	sw $t0, 0($t1)
	lw $t0, -8276($fp)
	lw $t1, 0($t0)
	sw $t1, -8280($fp)
	li $t0, 52395
	sw $t0, -8284($fp)
	addi $t0, $fp, -7928
	sw $t0, -8288($fp)
	li $t0, 1
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8296($fp)
	lw $t0, -8288($fp)
	lw $t1, -8296($fp)
	add $t0, $t0, $t1
	sw $t0, -8300($fp)
	lw $t0, -8284($fp)
	lw $t1, -8300($fp)
	sw $t0, 0($t1)
	lw $t0, -8300($fp)
	lw $t1, 0($t0)
	sw $t1, -8304($fp)
	li $t0, 62895
	sw $t0, -8308($fp)
	addi $t0, $fp, -7928
	sw $t0, -8312($fp)
	li $t0, 2
	sw $t0, -8316($fp)
	lw $t0, -8316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8320($fp)
	lw $t0, -8312($fp)
	lw $t1, -8320($fp)
	add $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -8308($fp)
	lw $t1, -8324($fp)
	sw $t0, 0($t1)
	lw $t0, -8324($fp)
	lw $t1, 0($t0)
	sw $t1, -8328($fp)
	li $t0, 45741
	sw $t0, -8332($fp)
	addi $t0, $fp, -7928
	sw $t0, -8336($fp)
	li $t0, 3
	sw $t0, -8340($fp)
	lw $t0, -8340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t0, -8336($fp)
	lw $t1, -8344($fp)
	add $t0, $t0, $t1
	sw $t0, -8348($fp)
	lw $t0, -8332($fp)
	lw $t1, -8348($fp)
	sw $t0, 0($t1)
	lw $t0, -8348($fp)
	lw $t1, 0($t0)
	sw $t1, -8352($fp)
	li $t0, 44486
	sw $t0, -8356($fp)
	addi $t0, $fp, -7928
	sw $t0, -8360($fp)
	li $t0, 4
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8368($fp)
	lw $t0, -8360($fp)
	lw $t1, -8368($fp)
	add $t0, $t0, $t1
	sw $t0, -8372($fp)
	lw $t0, -8356($fp)
	lw $t1, -8372($fp)
	sw $t0, 0($t1)
	lw $t0, -8372($fp)
	lw $t1, 0($t0)
	sw $t1, -8376($fp)
	li $t0, 41368
	sw $t0, -8380($fp)
	addi $t0, $fp, -7928
	sw $t0, -8384($fp)
	li $t0, 5
	sw $t0, -8388($fp)
	lw $t0, -8388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8392($fp)
	lw $t0, -8384($fp)
	lw $t1, -8392($fp)
	add $t0, $t0, $t1
	sw $t0, -8396($fp)
	lw $t0, -8380($fp)
	lw $t1, -8396($fp)
	sw $t0, 0($t1)
	lw $t0, -8396($fp)
	lw $t1, 0($t0)
	sw $t1, -8400($fp)
	li $t0, 11782
	sw $t0, -8404($fp)
	addi $t0, $fp, -7928
	sw $t0, -8408($fp)
	li $t0, 6
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8416($fp)
	lw $t0, -8408($fp)
	lw $t1, -8416($fp)
	add $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t0, -8404($fp)
	lw $t1, -8420($fp)
	sw $t0, 0($t1)
	lw $t0, -8420($fp)
	lw $t1, 0($t0)
	sw $t1, -8424($fp)
	li $t0, 763
	sw $t0, -8428($fp)
	addi $t0, $fp, -7928
	sw $t0, -8432($fp)
	li $t0, 7
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8440($fp)
	lw $t0, -8432($fp)
	lw $t1, -8440($fp)
	add $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t0, -8428($fp)
	lw $t1, -8444($fp)
	sw $t0, 0($t1)
	lw $t0, -8444($fp)
	lw $t1, 0($t0)
	sw $t1, -8448($fp)
	li $t0, 41621
	sw $t0, -8452($fp)
	addi $t0, $fp, -7928
	sw $t0, -8456($fp)
	li $t0, 8
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8464($fp)
	lw $t0, -8456($fp)
	lw $t1, -8464($fp)
	add $t0, $t0, $t1
	sw $t0, -8468($fp)
	lw $t0, -8452($fp)
	lw $t1, -8468($fp)
	sw $t0, 0($t1)
	lw $t0, -8468($fp)
	lw $t1, 0($t0)
	sw $t1, -8472($fp)
	li $t0, 37498
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	sw $t0, -8484($fp)
	li $t0, 13447
	sw $t0, -8488($fp)
	addi $t0, $fp, -7968
	sw $t0, -8492($fp)
	li $t0, 0
	sw $t0, -8496($fp)
	lw $t0, -8496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8500($fp)
	lw $t0, -8492($fp)
	lw $t1, -8500($fp)
	add $t0, $t0, $t1
	sw $t0, -8504($fp)
	lw $t0, -8488($fp)
	lw $t1, -8504($fp)
	sw $t0, 0($t1)
	lw $t0, -8504($fp)
	lw $t1, 0($t0)
	sw $t1, -8508($fp)
	li $t0, 27787
	sw $t0, -8512($fp)
	addi $t0, $fp, -7968
	sw $t0, -8516($fp)
	li $t0, 1
	sw $t0, -8520($fp)
	lw $t0, -8520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8524($fp)
	lw $t0, -8516($fp)
	lw $t1, -8524($fp)
	add $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8512($fp)
	lw $t1, -8528($fp)
	sw $t0, 0($t1)
	lw $t0, -8528($fp)
	lw $t1, 0($t0)
	sw $t1, -8532($fp)
	li $t0, 26290
	sw $t0, -8536($fp)
	addi $t0, $fp, -7968
	sw $t0, -8540($fp)
	li $t0, 2
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8540($fp)
	lw $t1, -8548($fp)
	add $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8536($fp)
	lw $t1, -8552($fp)
	sw $t0, 0($t1)
	lw $t0, -8552($fp)
	lw $t1, 0($t0)
	sw $t1, -8556($fp)
	li $t0, 43854
	sw $t0, -8560($fp)
	addi $t0, $fp, -7968
	sw $t0, -8564($fp)
	li $t0, 3
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -8564($fp)
	lw $t1, -8572($fp)
	add $t0, $t0, $t1
	sw $t0, -8576($fp)
	lw $t0, -8560($fp)
	lw $t1, -8576($fp)
	sw $t0, 0($t1)
	lw $t0, -8576($fp)
	lw $t1, 0($t0)
	sw $t1, -8580($fp)
	li $t0, 14058
	sw $t0, -8584($fp)
	addi $t0, $fp, -7968
	sw $t0, -8588($fp)
	li $t0, 4
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8596($fp)
	lw $t0, -8588($fp)
	lw $t1, -8596($fp)
	add $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8584($fp)
	lw $t1, -8600($fp)
	sw $t0, 0($t1)
	lw $t0, -8600($fp)
	lw $t1, 0($t0)
	sw $t1, -8604($fp)
	li $t0, 47271
	sw $t0, -8608($fp)
	addi $t0, $fp, -7968
	sw $t0, -8612($fp)
	li $t0, 5
	sw $t0, -8616($fp)
	lw $t0, -8616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8612($fp)
	lw $t1, -8620($fp)
	add $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t0, -8608($fp)
	lw $t1, -8624($fp)
	sw $t0, 0($t1)
	lw $t0, -8624($fp)
	lw $t1, 0($t0)
	sw $t1, -8628($fp)
	li $t0, 7481
	sw $t0, -8632($fp)
	addi $t0, $fp, -7968
	sw $t0, -8636($fp)
	li $t0, 6
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8644($fp)
	lw $t0, -8636($fp)
	lw $t1, -8644($fp)
	add $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t0, -8632($fp)
	lw $t1, -8648($fp)
	sw $t0, 0($t1)
	lw $t0, -8648($fp)
	lw $t1, 0($t0)
	sw $t1, -8652($fp)
	li $t0, 39564
	sw $t0, -8656($fp)
	addi $t0, $fp, -7968
	sw $t0, -8660($fp)
	li $t0, 7
	sw $t0, -8664($fp)
	lw $t0, -8664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8668($fp)
	lw $t0, -8660($fp)
	lw $t1, -8668($fp)
	add $t0, $t0, $t1
	sw $t0, -8672($fp)
	lw $t0, -8656($fp)
	lw $t1, -8672($fp)
	sw $t0, 0($t1)
	lw $t0, -8672($fp)
	lw $t1, 0($t0)
	sw $t1, -8676($fp)
	li $t0, 5659
	sw $t0, -8680($fp)
	addi $t0, $fp, -7968
	sw $t0, -8684($fp)
	li $t0, 8
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t0, -8684($fp)
	lw $t1, -8692($fp)
	add $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8680($fp)
	lw $t1, -8696($fp)
	sw $t0, 0($t1)
	lw $t0, -8696($fp)
	lw $t1, 0($t0)
	sw $t1, -8700($fp)
	li $t0, 64101
	sw $t0, -8704($fp)
	addi $t0, $fp, -7968
	sw $t0, -8708($fp)
	li $t0, 9
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8708($fp)
	lw $t1, -8716($fp)
	add $t0, $t0, $t1
	sw $t0, -8720($fp)
	lw $t0, -8704($fp)
	lw $t1, -8720($fp)
	sw $t0, 0($t1)
	lw $t0, -8720($fp)
	lw $t1, 0($t0)
	sw $t1, -8724($fp)
	li $t0, 45548
	sw $t0, -8728($fp)
	addi $t0, $fp, -7988
	sw $t0, -8732($fp)
	li $t0, 0
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8740($fp)
	lw $t0, -8732($fp)
	lw $t1, -8740($fp)
	add $t0, $t0, $t1
	sw $t0, -8744($fp)
	lw $t0, -8728($fp)
	lw $t1, -8744($fp)
	sw $t0, 0($t1)
	lw $t0, -8744($fp)
	lw $t1, 0($t0)
	sw $t1, -8748($fp)
	li $t0, 49959
	sw $t0, -8752($fp)
	addi $t0, $fp, -7988
	sw $t0, -8756($fp)
	li $t0, 1
	sw $t0, -8760($fp)
	lw $t0, -8760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8764($fp)
	lw $t0, -8756($fp)
	lw $t1, -8764($fp)
	add $t0, $t0, $t1
	sw $t0, -8768($fp)
	lw $t0, -8752($fp)
	lw $t1, -8768($fp)
	sw $t0, 0($t1)
	lw $t0, -8768($fp)
	lw $t1, 0($t0)
	sw $t1, -8772($fp)
	li $t0, 50188
	sw $t0, -8776($fp)
	addi $t0, $fp, -7988
	sw $t0, -8780($fp)
	li $t0, 2
	sw $t0, -8784($fp)
	lw $t0, -8784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8788($fp)
	lw $t0, -8780($fp)
	lw $t1, -8788($fp)
	add $t0, $t0, $t1
	sw $t0, -8792($fp)
	lw $t0, -8776($fp)
	lw $t1, -8792($fp)
	sw $t0, 0($t1)
	lw $t0, -8792($fp)
	lw $t1, 0($t0)
	sw $t1, -8796($fp)
	li $t0, 40494
	sw $t0, -8800($fp)
	addi $t0, $fp, -7988
	sw $t0, -8804($fp)
	li $t0, 3
	sw $t0, -8808($fp)
	lw $t0, -8808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8812($fp)
	lw $t0, -8804($fp)
	lw $t1, -8812($fp)
	add $t0, $t0, $t1
	sw $t0, -8816($fp)
	lw $t0, -8800($fp)
	lw $t1, -8816($fp)
	sw $t0, 0($t1)
	lw $t0, -8816($fp)
	lw $t1, 0($t0)
	sw $t1, -8820($fp)
	li $t0, 65450
	sw $t0, -8824($fp)
	addi $t0, $fp, -7988
	sw $t0, -8828($fp)
	li $t0, 4
	sw $t0, -8832($fp)
	lw $t0, -8832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8836($fp)
	lw $t0, -8828($fp)
	lw $t1, -8836($fp)
	add $t0, $t0, $t1
	sw $t0, -8840($fp)
	lw $t0, -8824($fp)
	lw $t1, -8840($fp)
	sw $t0, 0($t1)
	lw $t0, -8840($fp)
	lw $t1, 0($t0)
	sw $t1, -8844($fp)
	li $t0, 29804
	sw $t0, -8848($fp)
	lw $t0, -8848($fp)
	sw $t0, -8852($fp)
	lw $t0, -8852($fp)
	sw $t0, -8856($fp)
	li $t0, 50092
	sw $t0, -8860($fp)
	lw $t0, -8860($fp)
	sw $t0, -8864($fp)
	lw $t0, -8864($fp)
	sw $t0, -8868($fp)
	li $t0, 48449
	sw $t0, -8872($fp)
	addi $t0, $fp, -8004
	sw $t0, -8876($fp)
	li $t0, 0
	sw $t0, -8880($fp)
	lw $t0, -8880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8884($fp)
	lw $t0, -8876($fp)
	lw $t1, -8884($fp)
	add $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t0, -8872($fp)
	lw $t1, -8888($fp)
	sw $t0, 0($t1)
	lw $t0, -8888($fp)
	lw $t1, 0($t0)
	sw $t1, -8892($fp)
	li $t0, 50431
	sw $t0, -8896($fp)
	addi $t0, $fp, -8004
	sw $t0, -8900($fp)
	li $t0, 1
	sw $t0, -8904($fp)
	lw $t0, -8904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8908($fp)
	lw $t0, -8900($fp)
	lw $t1, -8908($fp)
	add $t0, $t0, $t1
	sw $t0, -8912($fp)
	lw $t0, -8896($fp)
	lw $t1, -8912($fp)
	sw $t0, 0($t1)
	lw $t0, -8912($fp)
	lw $t1, 0($t0)
	sw $t1, -8916($fp)
	li $t0, 43884
	sw $t0, -8920($fp)
	addi $t0, $fp, -8004
	sw $t0, -8924($fp)
	li $t0, 2
	sw $t0, -8928($fp)
	lw $t0, -8928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8932($fp)
	lw $t0, -8924($fp)
	lw $t1, -8932($fp)
	add $t0, $t0, $t1
	sw $t0, -8936($fp)
	lw $t0, -8920($fp)
	lw $t1, -8936($fp)
	sw $t0, 0($t1)
	lw $t0, -8936($fp)
	lw $t1, 0($t0)
	sw $t1, -8940($fp)
	li $t0, 3698
	sw $t0, -8944($fp)
	addi $t0, $fp, -8004
	sw $t0, -8948($fp)
	li $t0, 3
	sw $t0, -8952($fp)
	lw $t0, -8952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8956($fp)
	lw $t0, -8948($fp)
	lw $t1, -8956($fp)
	add $t0, $t0, $t1
	sw $t0, -8960($fp)
	lw $t0, -8944($fp)
	lw $t1, -8960($fp)
	sw $t0, 0($t1)
	lw $t0, -8960($fp)
	lw $t1, 0($t0)
	sw $t1, -8964($fp)
	addi $t0, $fp, -7928
	sw $t0, -8968($fp)
	addi $t0, $fp, -80
	sw $t0, -8972($fp)
	li $t0, 1
	sw $t0, -8976($fp)
	li $t0, 4
	lw $t1, -8976($fp)
	mul $t0, $t0, $t1
	sw $t0, -8980($fp)
	lw $t0, -8980($fp)
	lw $t1, -8972($fp)
	add $t0, $t0, $t1
	sw $t0, -8984($fp)
	lw $t0, -8984($fp)
	lw $t1, 0($t0)
	sw $t1, -8988($fp)
	lw $t0, -4052($fp)
	sw $t0, -8992($fp)
	lw $t0, -8988($fp)
	lw $t1, -8992($fp)
	mul $t0, $t0, $t1
	sw $t0, -8996($fp)
	li $t0, 4
	lw $t1, -8996($fp)
	mul $t0, $t0, $t1
	sw $t0, -9000($fp)
	lw $t0, -9000($fp)
	lw $t1, -8968($fp)
	add $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t0, -9004($fp)
	lw $t1, 0($t0)
	sw $t1, -9008($fp)
	lw $t1, -9008($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label532
label532:
	lw $t0, -2672($fp)
	sw $t0, -9012($fp)
	lw $t0, -1400($fp)
	sw $t0, -9016($fp)
	lw $t0, -9012($fp)
	lw $t1, -9016($fp)
	mul $t0, $t0, $t1
	sw $t0, -9020($fp)
	lw $t0, -2024($fp)
	sw $t0, -9024($fp)
	lw $t0, -9020($fp)
	lw $t1, -9024($fp)
	sub $t0, $t0, $t1
	sw $t0, -9028($fp)
	li $t0, 1057
	sw $t0, -9032($fp)
	lw $t1, -9028($fp)
	lw $t2, -9032($fp)
	bge $t1, $t2, label529
	j label530
label529:
	li $t0, 27029
	sw $t0, -9076($fp)
	lw $t0, -9076($fp)
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	sw $t0, -9084($fp)
	li $t0, 9693
	sw $t0, -9088($fp)
	lw $t0, -9088($fp)
	sw $t0, -9092($fp)
	lw $t0, -9092($fp)
	sw $t0, -9096($fp)
	li $t0, 42425
	sw $t0, -9100($fp)
	addi $t0, $fp, -9072
	sw $t0, -9104($fp)
	li $t0, 0
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9112($fp)
	lw $t0, -9104($fp)
	lw $t1, -9112($fp)
	add $t0, $t0, $t1
	sw $t0, -9116($fp)
	lw $t0, -9100($fp)
	lw $t1, -9116($fp)
	sw $t0, 0($t1)
	lw $t0, -9116($fp)
	lw $t1, 0($t0)
	sw $t1, -9120($fp)
	li $t0, 38811
	sw $t0, -9124($fp)
	addi $t0, $fp, -9072
	sw $t0, -9128($fp)
	li $t0, 1
	sw $t0, -9132($fp)
	lw $t0, -9132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9136($fp)
	lw $t0, -9128($fp)
	lw $t1, -9136($fp)
	add $t0, $t0, $t1
	sw $t0, -9140($fp)
	lw $t0, -9124($fp)
	lw $t1, -9140($fp)
	sw $t0, 0($t1)
	lw $t0, -9140($fp)
	lw $t1, 0($t0)
	sw $t1, -9144($fp)
	li $t0, 10456
	sw $t0, -9148($fp)
	addi $t0, $fp, -9072
	sw $t0, -9152($fp)
	li $t0, 2
	sw $t0, -9156($fp)
	lw $t0, -9156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9160($fp)
	lw $t0, -9152($fp)
	lw $t1, -9160($fp)
	add $t0, $t0, $t1
	sw $t0, -9164($fp)
	lw $t0, -9148($fp)
	lw $t1, -9164($fp)
	sw $t0, 0($t1)
	lw $t0, -9164($fp)
	lw $t1, 0($t0)
	sw $t1, -9168($fp)
	li $t0, 18510
	sw $t0, -9172($fp)
	addi $t0, $fp, -9072
	sw $t0, -9176($fp)
	li $t0, 3
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9184($fp)
	lw $t0, -9176($fp)
	lw $t1, -9184($fp)
	add $t0, $t0, $t1
	sw $t0, -9188($fp)
	lw $t0, -9172($fp)
	lw $t1, -9188($fp)
	sw $t0, 0($t1)
	lw $t0, -9188($fp)
	lw $t1, 0($t0)
	sw $t1, -9192($fp)
	li $t0, 10773
	sw $t0, -9196($fp)
	addi $t0, $fp, -9072
	sw $t0, -9200($fp)
	li $t0, 4
	sw $t0, -9204($fp)
	lw $t0, -9204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $t0, -9200($fp)
	lw $t1, -9208($fp)
	add $t0, $t0, $t1
	sw $t0, -9212($fp)
	lw $t0, -9196($fp)
	lw $t1, -9212($fp)
	sw $t0, 0($t1)
	lw $t0, -9212($fp)
	lw $t1, 0($t0)
	sw $t1, -9216($fp)
	li $t0, 23903
	sw $t0, -9220($fp)
	addi $t0, $fp, -9072
	sw $t0, -9224($fp)
	li $t0, 5
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9232($fp)
	lw $t0, -9224($fp)
	lw $t1, -9232($fp)
	add $t0, $t0, $t1
	sw $t0, -9236($fp)
	lw $t0, -9220($fp)
	lw $t1, -9236($fp)
	sw $t0, 0($t1)
	lw $t0, -9236($fp)
	lw $t1, 0($t0)
	sw $t1, -9240($fp)
	li $t0, 46297
	sw $t0, -9244($fp)
	addi $t0, $fp, -9072
	sw $t0, -9248($fp)
	li $t0, 6
	sw $t0, -9252($fp)
	lw $t0, -9252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9256($fp)
	lw $t0, -9248($fp)
	lw $t1, -9256($fp)
	add $t0, $t0, $t1
	sw $t0, -9260($fp)
	lw $t0, -9244($fp)
	lw $t1, -9260($fp)
	sw $t0, 0($t1)
	lw $t0, -9260($fp)
	lw $t1, 0($t0)
	sw $t1, -9264($fp)
	li $t0, 37063
	sw $t0, -9268($fp)
	addi $t0, $fp, -9072
	sw $t0, -9272($fp)
	li $t0, 7
	sw $t0, -9276($fp)
	lw $t0, -9276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9280($fp)
	lw $t0, -9272($fp)
	lw $t1, -9280($fp)
	add $t0, $t0, $t1
	sw $t0, -9284($fp)
	lw $t0, -9268($fp)
	lw $t1, -9284($fp)
	sw $t0, 0($t1)
	lw $t0, -9284($fp)
	lw $t1, 0($t0)
	sw $t1, -9288($fp)
	li $t0, 2222
	sw $t0, -9292($fp)
	addi $t0, $fp, -9072
	sw $t0, -9296($fp)
	li $t0, 8
	sw $t0, -9300($fp)
	lw $t0, -9300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9304($fp)
	lw $t0, -9296($fp)
	lw $t1, -9304($fp)
	add $t0, $t0, $t1
	sw $t0, -9308($fp)
	lw $t0, -9292($fp)
	lw $t1, -9308($fp)
	sw $t0, 0($t1)
	lw $t0, -9308($fp)
	lw $t1, 0($t0)
	sw $t1, -9312($fp)
	li $t0, 60355
	sw $t0, -9316($fp)
	addi $t0, $fp, -9072
	sw $t0, -9320($fp)
	li $t0, 9
	sw $t0, -9324($fp)
	lw $t0, -9324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9328($fp)
	lw $t0, -9320($fp)
	lw $t1, -9328($fp)
	add $t0, $t0, $t1
	sw $t0, -9332($fp)
	lw $t0, -9316($fp)
	lw $t1, -9332($fp)
	sw $t0, 0($t1)
	lw $t0, -9332($fp)
	lw $t1, 0($t0)
	sw $t1, -9336($fp)
	lw $t0, -2000($fp)
	sw $t0, -9340($fp)
	li $t0, 18799
	sw $t0, -9344($fp)
	li $t0, 9703
	sw $t0, -9348($fp)
	lw $t0, -9344($fp)
	lw $t1, -9348($fp)
	mul $t0, $t0, $t1
	sw $t0, -9352($fp)
	lw $t0, -3692($fp)
	sw $t0, -9356($fp)
	lw $t0, -9352($fp)
	lw $t1, -9356($fp)
	mul $t0, $t0, $t1
	sw $t0, -9360($fp)
	li $t0, 24458
	sw $t0, -9364($fp)
	lw $t0, -3704($fp)
	sw $t0, -9368($fp)
	lw $t0, -9364($fp)
	lw $t1, -9368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9372($fp)
	addi $t0, $fp, -8004
	sw $t0, -9376($fp)
	lw $t0, -2624($fp)
	sw $t0, -9380($fp)
	li $t0, 4
	lw $t1, -9380($fp)
	mul $t0, $t0, $t1
	sw $t0, -9384($fp)
	lw $t0, -9384($fp)
	lw $t1, -9376($fp)
	add $t0, $t0, $t1
	sw $t0, -9388($fp)
	lw $t0, -9388($fp)
	lw $t1, 0($t0)
	sw $t1, -9392($fp)
	li $t0, 0
	sw $t0, -9396($fp)
	lw $t0, -1256($fp)
	sw $t0, -9400($fp)
	li $t0, 34384
	sw $t0, -9404($fp)
	lw $t1, -9400($fp)
	lw $t2, -9404($fp)
	bne $t1, $t2, label538
	j label537
label538:
	lw $t0, -9080($fp)
	sw $t0, -9408($fp)
	lw $t1, -9408($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -9396($fp)
label537:
	lw $t0, 4($fp)
	sw $t0, -9412($fp)
	addi $sp, $sp, -4
	lw $t0, -9372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9412($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9416($fp)
	addi $sp, $sp, 20
	lw $t0, -9360($fp)
	lw $t1, -9416($fp)
	mul $t0, $t0, $t1
	sw $t0, -9420($fp)
	lw $t1, -9340($fp)
	lw $t2, -9420($fp)
	beq $t1, $t2, label533
	j label534
label533:
	li $t0, 8268
	sw $t0, -9472($fp)
	addi $t0, $fp, -9460
	sw $t0, -9476($fp)
	li $t0, 0
	sw $t0, -9480($fp)
	lw $t0, -9480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9484($fp)
	lw $t0, -9476($fp)
	lw $t1, -9484($fp)
	add $t0, $t0, $t1
	sw $t0, -9488($fp)
	lw $t0, -9472($fp)
	lw $t1, -9488($fp)
	sw $t0, 0($t1)
	lw $t0, -9488($fp)
	lw $t1, 0($t0)
	sw $t1, -9492($fp)
	li $t0, 14396
	sw $t0, -9496($fp)
	addi $t0, $fp, -9460
	sw $t0, -9500($fp)
	li $t0, 1
	sw $t0, -9504($fp)
	lw $t0, -9504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9508($fp)
	lw $t0, -9500($fp)
	lw $t1, -9508($fp)
	add $t0, $t0, $t1
	sw $t0, -9512($fp)
	lw $t0, -9496($fp)
	lw $t1, -9512($fp)
	sw $t0, 0($t1)
	lw $t0, -9512($fp)
	lw $t1, 0($t0)
	sw $t1, -9516($fp)
	li $t0, 8881
	sw $t0, -9520($fp)
	addi $t0, $fp, -9460
	sw $t0, -9524($fp)
	li $t0, 2
	sw $t0, -9528($fp)
	lw $t0, -9528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9532($fp)
	lw $t0, -9524($fp)
	lw $t1, -9532($fp)
	add $t0, $t0, $t1
	sw $t0, -9536($fp)
	lw $t0, -9520($fp)
	lw $t1, -9536($fp)
	sw $t0, 0($t1)
	lw $t0, -9536($fp)
	lw $t1, 0($t0)
	sw $t1, -9540($fp)
	li $t0, 58457
	sw $t0, -9544($fp)
	addi $t0, $fp, -9460
	sw $t0, -9548($fp)
	li $t0, 3
	sw $t0, -9552($fp)
	lw $t0, -9552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9556($fp)
	lw $t0, -9548($fp)
	lw $t1, -9556($fp)
	add $t0, $t0, $t1
	sw $t0, -9560($fp)
	lw $t0, -9544($fp)
	lw $t1, -9560($fp)
	sw $t0, 0($t1)
	lw $t0, -9560($fp)
	lw $t1, 0($t0)
	sw $t1, -9564($fp)
	li $t0, 54891
	sw $t0, -9568($fp)
	addi $t0, $fp, -9460
	sw $t0, -9572($fp)
	li $t0, 4
	sw $t0, -9576($fp)
	lw $t0, -9576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9580($fp)
	lw $t0, -9572($fp)
	lw $t1, -9580($fp)
	add $t0, $t0, $t1
	sw $t0, -9584($fp)
	lw $t0, -9568($fp)
	lw $t1, -9584($fp)
	sw $t0, 0($t1)
	lw $t0, -9584($fp)
	lw $t1, 0($t0)
	sw $t1, -9588($fp)
	li $t0, 8795
	sw $t0, -9592($fp)
	addi $t0, $fp, -9460
	sw $t0, -9596($fp)
	li $t0, 5
	sw $t0, -9600($fp)
	lw $t0, -9600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9604($fp)
	lw $t0, -9596($fp)
	lw $t1, -9604($fp)
	add $t0, $t0, $t1
	sw $t0, -9608($fp)
	lw $t0, -9592($fp)
	lw $t1, -9608($fp)
	sw $t0, 0($t1)
	lw $t0, -9608($fp)
	lw $t1, 0($t0)
	sw $t1, -9612($fp)
	li $t0, 22725
	sw $t0, -9616($fp)
	addi $t0, $fp, -9460
	sw $t0, -9620($fp)
	li $t0, 6
	sw $t0, -9624($fp)
	lw $t0, -9624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9628($fp)
	lw $t0, -9620($fp)
	lw $t1, -9628($fp)
	add $t0, $t0, $t1
	sw $t0, -9632($fp)
	lw $t0, -9616($fp)
	lw $t1, -9632($fp)
	sw $t0, 0($t1)
	lw $t0, -9632($fp)
	lw $t1, 0($t0)
	sw $t1, -9636($fp)
	li $t0, 39447
	sw $t0, -9640($fp)
	addi $t0, $fp, -9460
	sw $t0, -9644($fp)
	li $t0, 7
	sw $t0, -9648($fp)
	lw $t0, -9648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9652($fp)
	lw $t0, -9644($fp)
	lw $t1, -9652($fp)
	add $t0, $t0, $t1
	sw $t0, -9656($fp)
	lw $t0, -9640($fp)
	lw $t1, -9656($fp)
	sw $t0, 0($t1)
	lw $t0, -9656($fp)
	lw $t1, 0($t0)
	sw $t1, -9660($fp)
	li $t0, 57244
	sw $t0, -9664($fp)
	addi $t0, $fp, -9460
	sw $t0, -9668($fp)
	li $t0, 8
	sw $t0, -9672($fp)
	lw $t0, -9672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9676($fp)
	lw $t0, -9668($fp)
	lw $t1, -9676($fp)
	add $t0, $t0, $t1
	sw $t0, -9680($fp)
	lw $t0, -9664($fp)
	lw $t1, -9680($fp)
	sw $t0, 0($t1)
	lw $t0, -9680($fp)
	lw $t1, 0($t0)
	sw $t1, -9684($fp)
	li $t0, 7620
	sw $t0, -9688($fp)
	addi $t0, $fp, -9460
	sw $t0, -9692($fp)
	li $t0, 9
	sw $t0, -9696($fp)
	lw $t0, -9696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9700($fp)
	lw $t0, -9692($fp)
	lw $t1, -9700($fp)
	add $t0, $t0, $t1
	sw $t0, -9704($fp)
	lw $t0, -9688($fp)
	lw $t1, -9704($fp)
	sw $t0, 0($t1)
	lw $t0, -9704($fp)
	lw $t1, 0($t0)
	sw $t1, -9708($fp)
	li $t0, 17795
	sw $t0, -9712($fp)
	addi $t0, $fp, -9468
	sw $t0, -9716($fp)
	li $t0, 0
	sw $t0, -9720($fp)
	lw $t0, -9720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9724($fp)
	lw $t0, -9716($fp)
	lw $t1, -9724($fp)
	add $t0, $t0, $t1
	sw $t0, -9728($fp)
	lw $t0, -9712($fp)
	lw $t1, -9728($fp)
	sw $t0, 0($t1)
	lw $t0, -9728($fp)
	lw $t1, 0($t0)
	sw $t1, -9732($fp)
	li $t0, 60942
	sw $t0, -9736($fp)
	addi $t0, $fp, -9468
	sw $t0, -9740($fp)
	li $t0, 1
	sw $t0, -9744($fp)
	lw $t0, -9744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9748($fp)
	lw $t0, -9740($fp)
	lw $t1, -9748($fp)
	add $t0, $t0, $t1
	sw $t0, -9752($fp)
	lw $t0, -9736($fp)
	lw $t1, -9752($fp)
	sw $t0, 0($t1)
	lw $t0, -9752($fp)
	lw $t1, 0($t0)
	sw $t1, -9756($fp)
	li $t0, 54444
	sw $t0, -9760($fp)
	lw $t0, -9760($fp)
	sw $t0, -9764($fp)
	lw $t0, -9764($fp)
	sw $t0, -9768($fp)
label539:
	li $t0, 0
	sw $t0, -9772($fp)
	li $t0, 48538
	sw $t0, -9776($fp)
	lw $t1, -9776($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label542:
	li $t0, 1
	sw $t0, -9772($fp)
label543:
	li $t0, 61999
	sw $t0, -9780($fp)
	addi $t0, $fp, -9460
	sw $t0, -9784($fp)
	lw $t0, -1964($fp)
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
	lw $t0, -9780($fp)
	lw $t1, -9800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9804($fp)
	li $t0, 15937
	sw $t0, -9808($fp)
	lw $t0, -9804($fp)
	lw $t1, -9808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9812($fp)
	li $t0, 0
	lw $t1, -9812($fp)
	sub $t0, $t0, $t1
	sw $t0, -9816($fp)
	lw $t0, -9772($fp)
	lw $t1, -9816($fp)
	mul $t0, $t0, $t1
	sw $t0, -9820($fp)
	li $t0, 0
	lw $t1, -9820($fp)
	sub $t0, $t0, $t1
	sw $t0, -9824($fp)
	lw $t1, -9824($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 58232
	sw $t0, -9828($fp)
	j label539
label541:
	li $t0, 0
	sw $t0, -9832($fp)
	addi $t0, $fp, -7892
	sw $t0, -9836($fp)
	li $t0, 0
	sw $t0, -9840($fp)
	li $t0, 38888
	sw $t0, -9844($fp)
	lw $t1, -9844($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label547
label548:
	lw $t0, -1448($fp)
	sw $t0, -9848($fp)
	lw $t1, -9848($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -9840($fp)
label547:
	li $t0, 4
	lw $t1, -9840($fp)
	mul $t0, $t0, $t1
	sw $t0, -9852($fp)
	lw $t0, -9852($fp)
	lw $t1, -9836($fp)
	add $t0, $t0, $t1
	sw $t0, -9856($fp)
	lw $t0, -9856($fp)
	lw $t1, 0($t0)
	sw $t1, -9860($fp)
	lw $t1, -9860($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -9832($fp)
label545:
label549:
	li $t0, 54748
	sw $t0, -9864($fp)
	li $t0, 0
	sw $t0, -9868($fp)
	li $t0, 3152
	sw $t0, -9872($fp)
	lw $t1, -9872($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label552:
	li $t0, 1
	sw $t0, -9868($fp)
label553:
	lw $t1, -9864($fp)
	lw $t2, -9868($fp)
	blt $t1, $t2, label550
	j label551
label550:
	li $t0, 0
	sw $t0, -9876($fp)
	addi $t0, $fp, -292
	sw $t0, -9880($fp)
	li $t0, 1
	sw $t0, -9884($fp)
	li $t0, 4
	lw $t1, -9884($fp)
	mul $t0, $t0, $t1
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	lw $t1, -9880($fp)
	add $t0, $t0, $t1
	sw $t0, -9892($fp)
	lw $t0, -9892($fp)
	lw $t1, 0($t0)
	sw $t1, -9896($fp)
	lw $t1, -9896($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label556:
	lw $t0, -1928($fp)
	sw $t0, -9900($fp)
	lw $t0, -2024($fp)
	sw $t0, -9904($fp)
	lw $t0, -9900($fp)
	lw $t1, -9904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9908($fp)
	lw $t0, -1292($fp)
	sw $t0, -9912($fp)
	li $t0, 27056
	sw $t0, -9916($fp)
	lw $t0, -9912($fp)
	lw $t1, -9916($fp)
	mul $t0, $t0, $t1
	sw $t0, -9920($fp)
	lw $t0, -9908($fp)
	lw $t1, -9920($fp)
	add $t0, $t0, $t1
	sw $t0, -9924($fp)
	lw $t1, -9924($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -9876($fp)
label555:
	j label549
label551:
label557:
	addi $t0, $fp, -7988
	sw $t0, -9928($fp)
	li $t0, 0
	sw $t0, -9932($fp)
	li $t0, 38160
	sw $t0, -9936($fp)
	lw $t1, -9936($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label563
label563:
	lw $t0, -3704($fp)
	sw $t0, -9940($fp)
	lw $t1, -9940($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -9932($fp)
label562:
	li $t0, 4
	lw $t1, -9932($fp)
	mul $t0, $t0, $t1
	sw $t0, -9944($fp)
	lw $t0, -9944($fp)
	lw $t1, -9928($fp)
	add $t0, $t0, $t1
	sw $t0, -9948($fp)
	lw $t0, -9948($fp)
	lw $t1, 0($t0)
	sw $t1, -9952($fp)
	li $t0, 37048
	sw $t0, -9956($fp)
	lw $t1, -9952($fp)
	lw $t2, -9956($fp)
	blt $t1, $t2, label560
	j label559
label560:
	li $t0, 29278
	sw $t0, -9960($fp)
	lw $t1, -9960($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label559
label558:
	addi $t0, $fp, -264
	sw $t0, -9964($fp)
	li $t0, 1
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
	li $t0, 32980
	sw $t0, -9984($fp)
	addi $sp, $sp, -4
	lw $t0, -9980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9984($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -9988($fp)
	addi $sp, $sp, 12
	j label557
label559:
	lw $t0, -728($fp)
	sw $t0, -9992($fp)
	addi $t0, $fp, -416
	sw $t0, -9996($fp)
	li $t0, 0
	sw $t0, -10000($fp)
	li $t0, 4
	lw $t1, -10000($fp)
	mul $t0, $t0, $t1
	sw $t0, -10004($fp)
	lw $t0, -10004($fp)
	lw $t1, -9996($fp)
	add $t0, $t0, $t1
	sw $t0, -10008($fp)
	lw $t0, -10008($fp)
	lw $t1, 0($t0)
	sw $t1, -10012($fp)
	lw $t0, -9992($fp)
	lw $t1, -10012($fp)
	mul $t0, $t0, $t1
	sw $t0, -10016($fp)
	lw $t0, -488($fp)
	sw $t0, -10020($fp)
	lw $t0, -10016($fp)
	lw $t1, -10020($fp)
	mul $t0, $t0, $t1
	sw $t0, -10024($fp)
	addi $t0, $fp, -412
	sw $t0, -10028($fp)
	li $t0, 0
	sw $t0, -10032($fp)
	li $t0, 47250
	sw $t0, -10036($fp)
	li $t0, 16224
	sw $t0, -10040($fp)
	lw $t1, -10036($fp)
	lw $t2, -10040($fp)
	ble $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -10032($fp)
label568:
	li $t0, 4
	lw $t1, -10032($fp)
	mul $t0, $t0, $t1
	sw $t0, -10044($fp)
	lw $t0, -10044($fp)
	lw $t1, -10028($fp)
	add $t0, $t0, $t1
	sw $t0, -10048($fp)
	lw $t0, -10048($fp)
	lw $t1, 0($t0)
	sw $t1, -10052($fp)
	lw $t0, -10024($fp)
	lw $t1, -10052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10056($fp)
	lw $t1, -10056($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label565
label564:
	addi $t0, $fp, -9468
	sw $t0, -10060($fp)
	li $t0, 5579
	sw $t0, -10064($fp)
	lw $t0, -10064($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -10068($fp)
	li $t0, 0
	sw $t0, -10072($fp)
	lw $t0, -9764($fp)
	sw $t0, -10076($fp)
	lw $t1, -10076($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label572
label572:
	li $t0, 23650
	sw $t0, -10080($fp)
	lw $t1, -10080($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label571
label571:
	li $t0, 40171
	sw $t0, -10084($fp)
	lw $t1, -10084($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -10072($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -10068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10072($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -10088($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -10088($fp)
	sub $t0, $t0, $t1
	sw $t0, -10092($fp)
	li $t0, 0
	sw $t0, -10096($fp)
	lw $t0, -3764($fp)
	sw $t0, -10100($fp)
	lw $t1, -10100($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label573
label573:
	li $t0, 1
	sw $t0, -10096($fp)
label574:
	lw $t0, -10092($fp)
	lw $t1, -10096($fp)
	add $t0, $t0, $t1
	sw $t0, -10104($fp)
	li $t0, 4
	lw $t1, -10104($fp)
	mul $t0, $t0, $t1
	sw $t0, -10108($fp)
	lw $t0, -10108($fp)
	lw $t1, -10060($fp)
	add $t0, $t0, $t1
	sw $t0, -10112($fp)
	lw $t0, -10112($fp)
	lw $t1, 0($t0)
	sw $t1, -10116($fp)
	j label566
label565:
	li $t0, 24154
	sw $t0, -10120($fp)
	addi $t0, $fp, -284
	sw $t0, -10124($fp)
	li $t0, 0
	sw $t0, -10128($fp)
	li $t0, 4
	lw $t1, -10128($fp)
	mul $t0, $t0, $t1
	sw $t0, -10132($fp)
	lw $t0, -10132($fp)
	lw $t1, -10124($fp)
	add $t0, $t0, $t1
	sw $t0, -10136($fp)
	lw $t0, -10136($fp)
	lw $t1, 0($t0)
	sw $t1, -10140($fp)
	li $t0, 0
	sw $t0, -10144($fp)
	lw $t0, -1988($fp)
	sw $t0, -10148($fp)
	lw $t0, -2624($fp)
	sw $t0, -10152($fp)
	lw $t1, -10148($fp)
	lw $t2, -10152($fp)
	blt $t1, $t2, label575
	j label577
label577:
	li $t0, 32446
	sw $t0, -10156($fp)
	lw $t1, -10156($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -10144($fp)
label576:
	addi $sp, $sp, -4
	lw $t0, -10120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10144($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -10160($fp)
	addi $sp, $sp, 16
label566:
	j label535
label534:
label578:
	addi $t0, $fp, -404
	sw $t0, -10164($fp)
	li $t0, 0
	sw $t0, -10168($fp)
	li $t0, 62821
	sw $t0, -10172($fp)
	li $t0, 19561
	sw $t0, -10176($fp)
	lw $t0, -10172($fp)
	lw $t1, -10176($fp)
	mul $t0, $t0, $t1
	sw $t0, -10180($fp)
	lw $t1, -10180($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label583:
	lw $t0, -9092($fp)
	sw $t0, -10184($fp)
	lw $t1, -10184($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -10168($fp)
label582:
	li $t0, 0
	sw $t0, -10188($fp)
	li $t0, 4980
	sw $t0, -10192($fp)
	lw $t1, -10192($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label586
label586:
	lw $t0, -1844($fp)
	sw $t0, -10196($fp)
	lw $t1, -10196($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -10188($fp)
label585:
	li $t0, 0
	sw $t0, -10200($fp)
	li $t0, 0
	sw $t0, -10204($fp)
	lw $t0, -1844($fp)
	sw $t0, -10208($fp)
	lw $t0, -2660($fp)
	sw $t0, -10212($fp)
	lw $t1, -10208($fp)
	lw $t2, -10212($fp)
	ble $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -10204($fp)
label590:
	lw $t0, -2636($fp)
	sw $t0, -10216($fp)
	lw $t1, -10204($fp)
	lw $t2, -10216($fp)
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -10200($fp)
label588:
	addi $t0, $fp, -412
	sw $t0, -10220($fp)
	lw $t0, -1988($fp)
	sw $t0, -10224($fp)
	li $t0, 4
	lw $t1, -10224($fp)
	mul $t0, $t0, $t1
	sw $t0, -10228($fp)
	lw $t0, -10228($fp)
	lw $t1, -10220($fp)
	add $t0, $t0, $t1
	sw $t0, -10232($fp)
	lw $t0, -10232($fp)
	lw $t1, 0($t0)
	sw $t1, -10236($fp)
	li $t0, 0
	lw $t1, -10236($fp)
	sub $t0, $t0, $t1
	sw $t0, -10240($fp)
	addi $sp, $sp, -4
	lw $t0, -10168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10240($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -10244($fp)
	addi $sp, $sp, 20
	li $t0, 59424
	sw $t0, -10248($fp)
	lw $t0, -10244($fp)
	lw $t1, -10248($fp)
	add $t0, $t0, $t1
	sw $t0, -10252($fp)
	li $t0, 4
	lw $t1, -10252($fp)
	mul $t0, $t0, $t1
	sw $t0, -10256($fp)
	lw $t0, -10256($fp)
	lw $t1, -10164($fp)
	add $t0, $t0, $t1
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	lw $t1, 0($t0)
	sw $t1, -10264($fp)
	lw $t1, -10264($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	addi $t0, $fp, -9072
	sw $t0, -10268($fp)
	lw $t0, -1256($fp)
	sw $t0, -10272($fp)
	li $t0, 4
	lw $t1, -10272($fp)
	mul $t0, $t0, $t1
	sw $t0, -10276($fp)
	lw $t0, -10276($fp)
	lw $t1, -10268($fp)
	add $t0, $t0, $t1
	sw $t0, -10280($fp)
	lw $t0, -10280($fp)
	lw $t1, 0($t0)
	sw $t1, -10284($fp)
	j label578
label580:
label535:
	j label531
label530:
	li $t0, 45824
	sw $t0, -10288($fp)
	lw $ra, -4($fp)
	lw $v0, -10288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label531:
	addi $t0, $fp, -7892
	sw $t0, -10292($fp)
	li $t0, 0
	sw $t0, -10296($fp)
	li $t0, 4
	lw $t1, -10296($fp)
	mul $t0, $t0, $t1
	sw $t0, -10300($fp)
	lw $t0, -10300($fp)
	lw $t1, -10292($fp)
	add $t0, $t0, $t1
	sw $t0, -10304($fp)
	lw $t0, -10304($fp)
	lw $t1, 0($t0)
	sw $t1, -10308($fp)
	lw $t0, -10308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7892
	sw $t0, -10312($fp)
	li $t0, 1
	sw $t0, -10316($fp)
	li $t0, 4
	lw $t1, -10316($fp)
	mul $t0, $t0, $t1
	sw $t0, -10320($fp)
	lw $t0, -10320($fp)
	lw $t1, -10312($fp)
	add $t0, $t0, $t1
	sw $t0, -10324($fp)
	lw $t0, -10324($fp)
	lw $t1, 0($t0)
	sw $t1, -10328($fp)
	lw $t0, -10328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7892
	sw $t0, -10332($fp)
	li $t0, 2
	sw $t0, -10336($fp)
	li $t0, 4
	lw $t1, -10336($fp)
	mul $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t0, -10340($fp)
	lw $t1, -10332($fp)
	add $t0, $t0, $t1
	sw $t0, -10344($fp)
	lw $t0, -10344($fp)
	lw $t1, 0($t0)
	sw $t1, -10348($fp)
	lw $t0, -10348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7892
	sw $t0, -10352($fp)
	li $t0, 3
	sw $t0, -10356($fp)
	li $t0, 4
	lw $t1, -10356($fp)
	mul $t0, $t0, $t1
	sw $t0, -10360($fp)
	lw $t0, -10360($fp)
	lw $t1, -10352($fp)
	add $t0, $t0, $t1
	sw $t0, -10364($fp)
	lw $t0, -10364($fp)
	lw $t1, 0($t0)
	sw $t1, -10368($fp)
	lw $t0, -10368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7892
	sw $t0, -10372($fp)
	li $t0, 4
	sw $t0, -10376($fp)
	li $t0, 4
	lw $t1, -10376($fp)
	mul $t0, $t0, $t1
	sw $t0, -10380($fp)
	lw $t0, -10380($fp)
	lw $t1, -10372($fp)
	add $t0, $t0, $t1
	sw $t0, -10384($fp)
	lw $t0, -10384($fp)
	lw $t1, 0($t0)
	sw $t1, -10388($fp)
	lw $t0, -10388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7892
	sw $t0, -10392($fp)
	li $t0, 5
	sw $t0, -10396($fp)
	li $t0, 4
	lw $t1, -10396($fp)
	mul $t0, $t0, $t1
	sw $t0, -10400($fp)
	lw $t0, -10400($fp)
	lw $t1, -10392($fp)
	add $t0, $t0, $t1
	sw $t0, -10404($fp)
	lw $t0, -10404($fp)
	lw $t1, 0($t0)
	sw $t1, -10408($fp)
	lw $t0, -10408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7892
	sw $t0, -10412($fp)
	li $t0, 6
	sw $t0, -10416($fp)
	li $t0, 4
	lw $t1, -10416($fp)
	mul $t0, $t0, $t1
	sw $t0, -10420($fp)
	lw $t0, -10420($fp)
	lw $t1, -10412($fp)
	add $t0, $t0, $t1
	sw $t0, -10424($fp)
	lw $t0, -10424($fp)
	lw $t1, 0($t0)
	sw $t1, -10428($fp)
	lw $t0, -10428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7892
	sw $t0, -10432($fp)
	li $t0, 7
	sw $t0, -10436($fp)
	li $t0, 4
	lw $t1, -10436($fp)
	mul $t0, $t0, $t1
	sw $t0, -10440($fp)
	lw $t0, -10440($fp)
	lw $t1, -10432($fp)
	add $t0, $t0, $t1
	sw $t0, -10444($fp)
	lw $t0, -10444($fp)
	lw $t1, 0($t0)
	sw $t1, -10448($fp)
	lw $t0, -10448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7892
	sw $t0, -10452($fp)
	li $t0, 8
	sw $t0, -10456($fp)
	li $t0, 4
	lw $t1, -10456($fp)
	mul $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	lw $t1, -10452($fp)
	add $t0, $t0, $t1
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	lw $t1, 0($t0)
	sw $t1, -10468($fp)
	lw $t0, -10468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7892
	sw $t0, -10472($fp)
	li $t0, 9
	sw $t0, -10476($fp)
	li $t0, 4
	lw $t1, -10476($fp)
	mul $t0, $t0, $t1
	sw $t0, -10480($fp)
	lw $t0, -10480($fp)
	lw $t1, -10472($fp)
	add $t0, $t0, $t1
	sw $t0, -10484($fp)
	lw $t0, -10484($fp)
	lw $t1, 0($t0)
	sw $t1, -10488($fp)
	lw $t0, -10488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8252($fp)
	sw $t0, -10492($fp)
	lw $t0, -10492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7928
	sw $t0, -10496($fp)
	li $t0, 0
	sw $t0, -10500($fp)
	li $t0, 4
	lw $t1, -10500($fp)
	mul $t0, $t0, $t1
	sw $t0, -10504($fp)
	lw $t0, -10504($fp)
	lw $t1, -10496($fp)
	add $t0, $t0, $t1
	sw $t0, -10508($fp)
	lw $t0, -10508($fp)
	lw $t1, 0($t0)
	sw $t1, -10512($fp)
	lw $t0, -10512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7928
	sw $t0, -10516($fp)
	li $t0, 1
	sw $t0, -10520($fp)
	li $t0, 4
	lw $t1, -10520($fp)
	mul $t0, $t0, $t1
	sw $t0, -10524($fp)
	lw $t0, -10524($fp)
	lw $t1, -10516($fp)
	add $t0, $t0, $t1
	sw $t0, -10528($fp)
	lw $t0, -10528($fp)
	lw $t1, 0($t0)
	sw $t1, -10532($fp)
	lw $t0, -10532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7928
	sw $t0, -10536($fp)
	li $t0, 2
	sw $t0, -10540($fp)
	li $t0, 4
	lw $t1, -10540($fp)
	mul $t0, $t0, $t1
	sw $t0, -10544($fp)
	lw $t0, -10544($fp)
	lw $t1, -10536($fp)
	add $t0, $t0, $t1
	sw $t0, -10548($fp)
	lw $t0, -10548($fp)
	lw $t1, 0($t0)
	sw $t1, -10552($fp)
	lw $t0, -10552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7928
	sw $t0, -10556($fp)
	li $t0, 3
	sw $t0, -10560($fp)
	li $t0, 4
	lw $t1, -10560($fp)
	mul $t0, $t0, $t1
	sw $t0, -10564($fp)
	lw $t0, -10564($fp)
	lw $t1, -10556($fp)
	add $t0, $t0, $t1
	sw $t0, -10568($fp)
	lw $t0, -10568($fp)
	lw $t1, 0($t0)
	sw $t1, -10572($fp)
	lw $t0, -10572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7928
	sw $t0, -10576($fp)
	li $t0, 4
	sw $t0, -10580($fp)
	li $t0, 4
	lw $t1, -10580($fp)
	mul $t0, $t0, $t1
	sw $t0, -10584($fp)
	lw $t0, -10584($fp)
	lw $t1, -10576($fp)
	add $t0, $t0, $t1
	sw $t0, -10588($fp)
	lw $t0, -10588($fp)
	lw $t1, 0($t0)
	sw $t1, -10592($fp)
	lw $t0, -10592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7928
	sw $t0, -10596($fp)
	li $t0, 5
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
	addi $t0, $fp, -7928
	sw $t0, -10616($fp)
	li $t0, 6
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
	addi $t0, $fp, -7928
	sw $t0, -10636($fp)
	li $t0, 7
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
	addi $t0, $fp, -7928
	sw $t0, -10656($fp)
	li $t0, 8
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
	lw $t0, -8480($fp)
	sw $t0, -10676($fp)
	lw $t0, -10676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7968
	sw $t0, -10680($fp)
	li $t0, 0
	sw $t0, -10684($fp)
	li $t0, 4
	lw $t1, -10684($fp)
	mul $t0, $t0, $t1
	sw $t0, -10688($fp)
	lw $t0, -10688($fp)
	lw $t1, -10680($fp)
	add $t0, $t0, $t1
	sw $t0, -10692($fp)
	lw $t0, -10692($fp)
	lw $t1, 0($t0)
	sw $t1, -10696($fp)
	lw $t0, -10696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7968
	sw $t0, -10700($fp)
	li $t0, 1
	sw $t0, -10704($fp)
	li $t0, 4
	lw $t1, -10704($fp)
	mul $t0, $t0, $t1
	sw $t0, -10708($fp)
	lw $t0, -10708($fp)
	lw $t1, -10700($fp)
	add $t0, $t0, $t1
	sw $t0, -10712($fp)
	lw $t0, -10712($fp)
	lw $t1, 0($t0)
	sw $t1, -10716($fp)
	lw $t0, -10716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7968
	sw $t0, -10720($fp)
	li $t0, 2
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
	addi $t0, $fp, -7968
	sw $t0, -10740($fp)
	li $t0, 3
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
	addi $t0, $fp, -7968
	sw $t0, -10760($fp)
	li $t0, 4
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
	addi $t0, $fp, -7968
	sw $t0, -10780($fp)
	li $t0, 5
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
	addi $t0, $fp, -7968
	sw $t0, -10800($fp)
	li $t0, 6
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
	addi $t0, $fp, -7968
	sw $t0, -10820($fp)
	li $t0, 7
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
	addi $t0, $fp, -7968
	sw $t0, -10840($fp)
	li $t0, 8
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
	addi $t0, $fp, -7968
	sw $t0, -10860($fp)
	li $t0, 9
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
	addi $t0, $fp, -7988
	sw $t0, -10880($fp)
	li $t0, 0
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
	addi $t0, $fp, -7988
	sw $t0, -10900($fp)
	li $t0, 1
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
	addi $t0, $fp, -7988
	sw $t0, -10920($fp)
	li $t0, 2
	sw $t0, -10924($fp)
	li $t0, 4
	lw $t1, -10924($fp)
	mul $t0, $t0, $t1
	sw $t0, -10928($fp)
	lw $t0, -10928($fp)
	lw $t1, -10920($fp)
	add $t0, $t0, $t1
	sw $t0, -10932($fp)
	lw $t0, -10932($fp)
	lw $t1, 0($t0)
	sw $t1, -10936($fp)
	lw $t0, -10936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7988
	sw $t0, -10940($fp)
	li $t0, 3
	sw $t0, -10944($fp)
	li $t0, 4
	lw $t1, -10944($fp)
	mul $t0, $t0, $t1
	sw $t0, -10948($fp)
	lw $t0, -10948($fp)
	lw $t1, -10940($fp)
	add $t0, $t0, $t1
	sw $t0, -10952($fp)
	lw $t0, -10952($fp)
	lw $t1, 0($t0)
	sw $t1, -10956($fp)
	lw $t0, -10956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7988
	sw $t0, -10960($fp)
	li $t0, 4
	sw $t0, -10964($fp)
	li $t0, 4
	lw $t1, -10964($fp)
	mul $t0, $t0, $t1
	sw $t0, -10968($fp)
	lw $t0, -10968($fp)
	lw $t1, -10960($fp)
	add $t0, $t0, $t1
	sw $t0, -10972($fp)
	lw $t0, -10972($fp)
	lw $t1, 0($t0)
	sw $t1, -10976($fp)
	lw $t0, -10976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8852($fp)
	sw $t0, -10980($fp)
	lw $t0, -10980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8864($fp)
	sw $t0, -10984($fp)
	lw $t0, -10984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8004
	sw $t0, -10988($fp)
	li $t0, 0
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
	addi $t0, $fp, -8004
	sw $t0, -11008($fp)
	li $t0, 1
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
	addi $t0, $fp, -8004
	sw $t0, -11028($fp)
	li $t0, 2
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
	addi $t0, $fp, -8004
	sw $t0, -11048($fp)
	li $t0, 3
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
	addi $t0, $fp, -7968
	sw $t0, -11068($fp)
	lw $t0, -1964($fp)
	sw $t0, -11072($fp)
	li $t0, 0
	lw $t1, -11072($fp)
	sub $t0, $t0, $t1
	sw $t0, -11076($fp)
	li $t0, 4
	lw $t1, -11076($fp)
	mul $t0, $t0, $t1
	sw $t0, -11080($fp)
	lw $t0, -11080($fp)
	lw $t1, -11068($fp)
	add $t0, $t0, $t1
	sw $t0, -11084($fp)
	lw $t0, -11084($fp)
	lw $t1, 0($t0)
	sw $t1, -11088($fp)
	li $t0, 0
	lw $t1, -11088($fp)
	sub $t0, $t0, $t1
	sw $t0, -11092($fp)
	lw $ra, -4($fp)
	lw $v0, -11092($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1280($fp)
	sw $t0, -11096($fp)
	li $t0, 0
	sw $t0, -11100($fp)
	li $t0, 16024
	sw $t0, -11104($fp)
	li $t0, 9825
	sw $t0, -11108($fp)
	lw $t0, -11104($fp)
	lw $t1, -11108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11112($fp)
	li $t0, 38520
	sw $t0, -11116($fp)
	lw $t1, -11112($fp)
	lw $t2, -11116($fp)
	ble $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -11100($fp)
label596:
	lw $t1, -11096($fp)
	lw $t2, -11100($fp)
	beq $t1, $t2, label594
	j label592
label594:
	addi $t0, $fp, -292
	sw $t0, -11120($fp)
	li $t0, 0
	sw $t0, -11124($fp)
	addi $t0, $fp, -132
	sw $t0, -11128($fp)
	lw $t0, -2552($fp)
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
	lw $t0, -8252($fp)
	sw $t0, -11148($fp)
	lw $t1, -11144($fp)
	lw $t2, -11148($fp)
	bne $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -11124($fp)
label598:
	li $t0, 54913
	sw $t0, -11152($fp)
	lw $t0, -11152($fp)
	sw $t0, -8852($fp)
	lw $t0, -8852($fp)
	sw $t0, -11156($fp)
	lw $t0, -1280($fp)
	sw $t0, -11160($fp)
	lw $t0, -3764($fp)
	sw $t0, -11164($fp)
	lw $t0, -11160($fp)
	lw $t1, -11164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11168($fp)
	addi $sp, $sp, -4
	lw $t0, -11124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11172($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -11172($fp)
	mul $t0, $t0, $t1
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	lw $t1, -11120($fp)
	add $t0, $t0, $t1
	sw $t0, -11180($fp)
	lw $t0, -11180($fp)
	lw $t1, 0($t0)
	sw $t1, -11184($fp)
	lw $t1, -11184($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label592
label591:
label599:
	li $t0, 64573
	sw $t0, -11188($fp)
	lw $t0, -2552($fp)
	sw $t0, -11192($fp)
	li $t0, 41672
	sw $t0, -11196($fp)
	lw $t0, -11192($fp)
	lw $t1, -11196($fp)
	mul $t0, $t0, $t1
	sw $t0, -11200($fp)
	lw $t0, -740($fp)
	sw $t0, -11204($fp)
	li $t0, 0
	lw $t1, -11204($fp)
	sub $t0, $t0, $t1
	sw $t0, -11208($fp)
	lw $t0, -11200($fp)
	lw $t1, -11208($fp)
	mul $t0, $t0, $t1
	sw $t0, -11212($fp)
	li $t0, 0
	lw $t1, -11212($fp)
	sub $t0, $t0, $t1
	sw $t0, -11216($fp)
	lw $t0, -11188($fp)
	lw $t1, -11216($fp)
	sub $t0, $t0, $t1
	sw $t0, -11220($fp)
	lw $t1, -11220($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
	li $t0, 46776
	sw $t0, -11224($fp)
	lw $t1, -11224($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 0
	sw $t0, -11228($fp)
	li $t0, 64558
	sw $t0, -11232($fp)
	lw $t0, -11232($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -11236($fp)
	lw $t0, -1952($fp)
	sw $t0, -11240($fp)
	li $t0, 0
	lw $t1, -11240($fp)
	sub $t0, $t0, $t1
	sw $t0, -11244($fp)
	li $t0, 0
	lw $t1, -11244($fp)
	sub $t0, $t0, $t1
	sw $t0, -11248($fp)
	addi $sp, $sp, -4
	lw $t0, -11236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11248($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11252($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -11256($fp)
	li $t0, 3192
	sw $t0, -11260($fp)
	addi $t0, $fp, -224
	sw $t0, -11264($fp)
	lw $t0, -8480($fp)
	sw $t0, -11268($fp)
	li $t0, 4
	lw $t1, -11268($fp)
	mul $t0, $t0, $t1
	sw $t0, -11272($fp)
	lw $t0, -11272($fp)
	lw $t1, -11264($fp)
	add $t0, $t0, $t1
	sw $t0, -11276($fp)
	lw $t0, -11276($fp)
	lw $t1, 0($t0)
	sw $t1, -11280($fp)
	lw $t1, -11260($fp)
	lw $t2, -11280($fp)
	bge $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -11256($fp)
label608:
	lw $t1, -11252($fp)
	lw $t2, -11256($fp)
	beq $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -11228($fp)
label606:
	j label604
label603:
	li $t0, 19400
	sw $t0, -11284($fp)
	li $t0, 0
	lw $t1, -11284($fp)
	sub $t0, $t0, $t1
	sw $t0, -11288($fp)
label604:
	j label599
label601:
	j label593
label592:
	lw $t0, -2624($fp)
	sw $t0, -11292($fp)
	li $t0, 0
	sw $t0, -11296($fp)
	li $t0, 36070
	sw $t0, -11300($fp)
	li $t0, 32470
	sw $t0, -11304($fp)
	lw $t0, -11300($fp)
	lw $t1, -11304($fp)
	add $t0, $t0, $t1
	sw $t0, -11308($fp)
	lw $t1, -11308($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label610
label611:
	li $t0, 52380
	sw $t0, -11312($fp)
	lw $t1, -11312($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -11296($fp)
label610:
	addi $sp, $sp, -4
	lw $t0, -11296($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11316($fp)
	addi $sp, $sp, 8
	lw $t0, -11292($fp)
	lw $t1, -11316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11320($fp)
	li $t0, 0
	lw $t1, -11320($fp)
	sub $t0, $t0, $t1
	sw $t0, -11324($fp)
	li $t0, 0
	lw $t1, -11324($fp)
	sub $t0, $t0, $t1
	sw $t0, -11328($fp)
	li $t0, 0
	sw $t0, -11332($fp)
	lw $t0, -2252($fp)
	sw $t0, -11336($fp)
	lw $t1, -11336($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label612
label612:
	li $t0, 1
	sw $t0, -11332($fp)
label613:
	lw $t0, -11328($fp)
	lw $t1, -11332($fp)
	add $t0, $t0, $t1
	sw $t0, -11340($fp)
label593:
label614:
	addi $t0, $fp, -8004
	sw $t0, -11344($fp)
	addi $t0, $fp, -40
	sw $t0, -11348($fp)
	li $t0, 5
	sw $t0, -11352($fp)
	li $t0, 4
	lw $t1, -11352($fp)
	mul $t0, $t0, $t1
	sw $t0, -11356($fp)
	lw $t0, -11356($fp)
	lw $t1, -11348($fp)
	add $t0, $t0, $t1
	sw $t0, -11360($fp)
	lw $t0, -11360($fp)
	lw $t1, 0($t0)
	sw $t1, -11364($fp)
	lw $t0, -2252($fp)
	sw $t0, -11368($fp)
	lw $t0, -11364($fp)
	lw $t1, -11368($fp)
	add $t0, $t0, $t1
	sw $t0, -11372($fp)
	li $t0, 4
	lw $t1, -11372($fp)
	mul $t0, $t0, $t1
	sw $t0, -11376($fp)
	lw $t0, -11376($fp)
	lw $t1, -11344($fp)
	add $t0, $t0, $t1
	sw $t0, -11380($fp)
	lw $t0, -11380($fp)
	lw $t1, 0($t0)
	sw $t1, -11384($fp)
	lw $t1, -11384($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label615
label615:
label617:
	li $t0, 0
	sw $t0, -11388($fp)
	lw $t0, -1940($fp)
	sw $t0, -11392($fp)
	lw $t1, -11392($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label620:
	li $t0, 1
	sw $t0, -11388($fp)
label621:
	addi $t0, $fp, -292
	sw $t0, -11396($fp)
	lw $t0, -3692($fp)
	sw $t0, -11400($fp)
	li $t0, 4
	lw $t1, -11400($fp)
	mul $t0, $t0, $t1
	sw $t0, -11404($fp)
	lw $t0, -11404($fp)
	lw $t1, -11396($fp)
	add $t0, $t0, $t1
	sw $t0, -11408($fp)
	lw $t0, -11408($fp)
	lw $t1, 0($t0)
	sw $t1, -11412($fp)
	li $t0, 0
	sw $t0, -11416($fp)
	lw $t0, 4($fp)
	sw $t0, -11420($fp)
	lw $t1, -11420($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label625
label625:
	lw $t0, -2000($fp)
	sw $t0, -11424($fp)
	lw $t1, -11424($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label624
label624:
	lw $t0, -1424($fp)
	sw $t0, -11428($fp)
	lw $t1, -11428($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -11416($fp)
label623:
	addi $sp, $sp, -4
	lw $t0, -11388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11416($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -11432($fp)
	addi $sp, $sp, 16
	li $t0, 54208
	sw $t0, -11436($fp)
	lw $t0, -11432($fp)
	lw $t1, -11436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11440($fp)
	addi $sp, $sp, -4
	lw $t0, -11440($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11444($fp)
	addi $sp, $sp, 8
	lw $t1, -11444($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 41151
	sw $t0, -11448($fp)
	lw $t0, -11448($fp)
	sw $t0, -11452($fp)
	lw $t0, -11452($fp)
	sw $t0, -11456($fp)
	li $t0, 53166
	sw $t0, -11460($fp)
	lw $t0, -11460($fp)
	sw $t0, -11464($fp)
	lw $t0, -11464($fp)
	sw $t0, -11468($fp)
	li $t0, 0
	sw $t0, -11472($fp)
	li $t0, 4897
	sw $t0, -11476($fp)
	lw $t1, -11476($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label626
label626:
	li $t0, 1
	sw $t0, -11472($fp)
label627:
	li $t0, 0
	sw $t0, -11480($fp)
	li $t0, 0
	sw $t0, -11484($fp)
	lw $t0, -8864($fp)
	sw $t0, -11488($fp)
	li $t0, 31712
	sw $t0, -11492($fp)
	lw $t0, -11488($fp)
	lw $t1, -11492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11496($fp)
	lw $t0, -3524($fp)
	sw $t0, -11500($fp)
	lw $t1, -11496($fp)
	lw $t2, -11500($fp)
	blt $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -11484($fp)
label632:
	addi $sp, $sp, -4
	lw $t0, -11484($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11504($fp)
	addi $sp, $sp, 8
	lw $t1, -11504($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label630
label630:
	lw $t0, -1988($fp)
	sw $t0, -11508($fp)
	lw $t1, -11508($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -11480($fp)
label629:
	li $t0, 0
	sw $t0, -11512($fp)
	li $t0, 27801
	sw $t0, -11516($fp)
	li $t0, 10476
	sw $t0, -11520($fp)
	lw $t1, -11516($fp)
	lw $t2, -11520($fp)
	beq $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -11512($fp)
label634:
	lw $t0, 4($fp)
	sw $t0, -11524($fp)
	li $t0, 64802
	sw $t0, -11528($fp)
	lw $t0, -11524($fp)
	lw $t1, -11528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11532($fp)
	lw $t0, -740($fp)
	sw $t0, -11536($fp)
	lw $t0, -11532($fp)
	lw $t1, -11536($fp)
	sub $t0, $t0, $t1
	sw $t0, -11540($fp)
	addi $sp, $sp, -4
	lw $t0, -11480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11540($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -11544($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -11544($fp)
	sub $t0, $t0, $t1
	sw $t0, -11548($fp)
	lw $t0, -11472($fp)
	lw $t1, -11548($fp)
	mul $t0, $t0, $t1
	sw $t0, -11552($fp)
	addi $t0, $fp, -396
	sw $t0, -11556($fp)
	li $t0, 1
	sw $t0, -11560($fp)
	li $t0, 4
	lw $t1, -11560($fp)
	mul $t0, $t0, $t1
	sw $t0, -11564($fp)
	lw $t0, -11564($fp)
	lw $t1, -11556($fp)
	add $t0, $t0, $t1
	sw $t0, -11568($fp)
	lw $t0, -11568($fp)
	lw $t1, 0($t0)
	sw $t1, -11572($fp)
	li $t0, 0
	sw $t0, -11576($fp)
	lw $t0, -1280($fp)
	sw $t0, -11580($fp)
	lw $t1, -11580($fp)
	li $t2, 0
	bne $t1, $t2, label636
	j label635
label635:
	li $t0, 1
	sw $t0, -11576($fp)
label636:
	lw $t0, -11572($fp)
	lw $t1, -11576($fp)
	mul $t0, $t0, $t1
	sw $t0, -11584($fp)
	lw $t0, -11552($fp)
	lw $t1, -11584($fp)
	sub $t0, $t0, $t1
	sw $t0, -11588($fp)
	li $t0, 55866
	sw $t0, -11592($fp)
	li $t0, 30141
	sw $t0, -11596($fp)
	lw $t0, -11592($fp)
	lw $t1, -11596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11600($fp)
	li $t0, 9891
	sw $t0, -11604($fp)
	li $t0, 0
	sw $t0, -11608($fp)
	lw $t0, -1988($fp)
	sw $t0, -11612($fp)
	lw $t1, -11612($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label639
label639:
	li $t0, 52788
	sw $t0, -11616($fp)
	lw $t1, -11616($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -11608($fp)
label638:
	addi $sp, $sp, -4
	lw $t0, -11604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11608($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11620($fp)
	addi $sp, $sp, 12
	lw $t0, -11600($fp)
	lw $t1, -11620($fp)
	sub $t0, $t0, $t1
	sw $t0, -11624($fp)
	addi $t0, $fp, -80
	sw $t0, -11628($fp)
	li $t0, 5
	sw $t0, -11632($fp)
	li $t0, 4
	lw $t1, -11632($fp)
	mul $t0, $t0, $t1
	sw $t0, -11636($fp)
	lw $t0, -11636($fp)
	lw $t1, -11628($fp)
	add $t0, $t0, $t1
	sw $t0, -11640($fp)
	lw $t0, -11640($fp)
	lw $t1, 0($t0)
	sw $t1, -11644($fp)
	li $t0, 0
	lw $t1, -11644($fp)
	sub $t0, $t0, $t1
	sw $t0, -11648($fp)
	li $t0, 0
	sw $t0, -11652($fp)
	lw $t0, -1004($fp)
	sw $t0, -11656($fp)
	li $t0, 6060
	sw $t0, -11660($fp)
	lw $t1, -11656($fp)
	lw $t2, -11660($fp)
	bge $t1, $t2, label640
	j label642
label642:
	li $t0, 15293
	sw $t0, -11664($fp)
	lw $t1, -11664($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -11652($fp)
label641:
	li $t0, 0
	sw $t0, -11668($fp)
	li $t0, 0
	sw $t0, -11672($fp)
	li $t0, 25916
	sw $t0, -11676($fp)
	lw $t1, -11676($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label645
label645:
	li $t0, 1
	sw $t0, -11672($fp)
label646:
	li $t0, 33854
	sw $t0, -11680($fp)
	lw $t1, -11672($fp)
	lw $t2, -11680($fp)
	blt $t1, $t2, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -11668($fp)
label644:
	lw $t0, -2288($fp)
	sw $t0, -11684($fp)
	lw $t0, -11684($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -11688($fp)
	addi $sp, $sp, -4
	lw $t0, -11652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11688($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -11692($fp)
	addi $sp, $sp, 16
	lw $t0, -11648($fp)
	lw $t1, -11692($fp)
	sub $t0, $t0, $t1
	sw $t0, -11696($fp)
	lw $t0, -11696($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -11700($fp)
	li $t0, 0
	sw $t0, -11704($fp)
	li $t0, 0
	sw $t0, -11708($fp)
	li $t0, 0
	sw $t0, -11712($fp)
	lw $t0, -2888($fp)
	sw $t0, -11716($fp)
	li $t0, 0
	lw $t1, -11716($fp)
	sub $t0, $t0, $t1
	sw $t0, -11720($fp)
	lw $t0, -2024($fp)
	sw $t0, -11724($fp)
	lw $t0, 8($fp)
	sw $t0, -11728($fp)
	lw $t0, -11724($fp)
	lw $t1, -11728($fp)
	sub $t0, $t0, $t1
	sw $t0, -11732($fp)
	lw $t1, -11720($fp)
	lw $t2, -11732($fp)
	bge $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -11712($fp)
label652:
	lw $t0, -11452($fp)
	sw $t0, -11736($fp)
	lw $t1, -11712($fp)
	lw $t2, -11736($fp)
	ble $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -11708($fp)
label650:
	li $t0, 32891
	sw $t0, -11740($fp)
	lw $t0, -2588($fp)
	sw $t0, -11744($fp)
	li $t0, 0
	lw $t1, -11744($fp)
	sub $t0, $t0, $t1
	sw $t0, -11748($fp)
	addi $sp, $sp, -4
	lw $t0, -11740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11748($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -11752($fp)
	addi $sp, $sp, 12
	lw $t1, -11708($fp)
	lw $t2, -11752($fp)
	ble $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -11704($fp)
label648:
	li $t0, 0
	sw $t0, -11756($fp)
	li $t0, 0
	sw $t0, -11760($fp)
	li $t0, 47733
	sw $t0, -11764($fp)
	lw $t0, -2792($fp)
	sw $t0, -11768($fp)
	lw $t1, -11764($fp)
	lw $t2, -11768($fp)
	beq $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -11760($fp)
label656:
	addi $sp, $sp, -4
	lw $t0, -11760($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11772($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -11772($fp)
	sub $t0, $t0, $t1
	sw $t0, -11776($fp)
	li $t0, 0
	lw $t1, -11776($fp)
	sub $t0, $t0, $t1
	sw $t0, -11780($fp)
	li $t0, 0
	lw $t1, -11780($fp)
	sub $t0, $t0, $t1
	sw $t0, -11784($fp)
	lw $t0, -11464($fp)
	sw $t0, -11788($fp)
	lw $t0, -1952($fp)
	sw $t0, -11792($fp)
	li $t0, 0
	lw $t1, -11792($fp)
	sub $t0, $t0, $t1
	sw $t0, -11796($fp)
	lw $t0, -11788($fp)
	lw $t1, -11796($fp)
	sub $t0, $t0, $t1
	sw $t0, -11800($fp)
	lw $t1, -11784($fp)
	lw $t2, -11800($fp)
	blt $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -11756($fp)
label654:
label657:
	li $t0, 62069
	sw $t0, -11804($fp)
	lw $t0, -11804($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -11808($fp)
	addi $sp, $sp, -4
	lw $t0, -11808($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -11812($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -11816($fp)
	lw $t0, -1268($fp)
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
	li $t0, 31913
	sw $t0, -11836($fp)
	lw $t0, -11832($fp)
	lw $t1, -11836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11840($fp)
	lw $t1, -11812($fp)
	lw $t2, -11840($fp)
	ble $t1, $t2, label658
	j label659
label658:
	lw $t0, 4($fp)
	sw $t0, -11844($fp)
	addi $t0, $fp, -416
	sw $t0, -11848($fp)
	lw $t0, -2000($fp)
	sw $t0, -11852($fp)
	li $t0, 4
	lw $t1, -11852($fp)
	mul $t0, $t0, $t1
	sw $t0, -11856($fp)
	lw $t0, -11856($fp)
	lw $t1, -11848($fp)
	add $t0, $t0, $t1
	sw $t0, -11860($fp)
	lw $t0, -11860($fp)
	lw $t1, 0($t0)
	sw $t1, -11864($fp)
	li $t0, 0
	lw $t1, -11864($fp)
	sub $t0, $t0, $t1
	sw $t0, -11868($fp)
	lw $t0, -11844($fp)
	lw $t1, -11868($fp)
	mul $t0, $t0, $t1
	sw $t0, -11872($fp)
	lw $t1, -11872($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label663
label663:
	lw $t0, -2564($fp)
	sw $t0, -11876($fp)
	lw $t1, -11876($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label661
label664:
	lw $t0, -1424($fp)
	sw $t0, -11880($fp)
	li $t0, 50925
	sw $t0, -11884($fp)
	lw $t0, -11880($fp)
	lw $t1, -11884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11888($fp)
	lw $t1, -11888($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label661
label660:
label665:
	lw $t0, -1952($fp)
	sw $t0, -11892($fp)
	lw $t1, -11892($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label667
label666:
	li $t0, 15933
	sw $t0, -11896($fp)
	li $t0, 0
	lw $t1, -11896($fp)
	sub $t0, $t0, $t1
	sw $t0, -11900($fp)
	li $t0, 0
	lw $t1, -11900($fp)
	sub $t0, $t0, $t1
	sw $t0, -11904($fp)
	li $t0, 0
	lw $t1, -11904($fp)
	sub $t0, $t0, $t1
	sw $t0, -11908($fp)
	li $t0, 0
	sw $t0, -11912($fp)
	lw $t0, -2792($fp)
	sw $t0, -11916($fp)
	li $t0, 0
	lw $t1, -11916($fp)
	sub $t0, $t0, $t1
	sw $t0, -11920($fp)
	lw $t1, -11920($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -11912($fp)
label669:
	lw $t0, -11908($fp)
	lw $t1, -11912($fp)
	add $t0, $t0, $t1
	sw $t0, -11924($fp)
	lw $ra, -4($fp)
	lw $v0, -11924($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label665
label667:
	j label662
label661:
	li $t0, 0
	sw $t0, -11928($fp)
	lw $t0, -2024($fp)
	sw $t0, -11932($fp)
	li $t0, 0
	lw $t1, -11932($fp)
	sub $t0, $t0, $t1
	sw $t0, -11936($fp)
	lw $t1, -11936($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label671
label674:
	addi $t0, $fp, -172
	sw $t0, -11940($fp)
	lw $t0, -488($fp)
	sw $t0, -11944($fp)
	li $t0, 4
	lw $t1, -11944($fp)
	mul $t0, $t0, $t1
	sw $t0, -11948($fp)
	lw $t0, -11948($fp)
	lw $t1, -11940($fp)
	add $t0, $t0, $t1
	sw $t0, -11952($fp)
	lw $t0, -11952($fp)
	lw $t1, 0($t0)
	sw $t1, -11956($fp)
	lw $t1, -11956($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label671
label673:
	li $t0, 0
	sw $t0, -11960($fp)
	li $t0, 23776
	sw $t0, -11964($fp)
	li $t0, 56986
	sw $t0, -11968($fp)
	lw $t0, -11964($fp)
	lw $t1, -11968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11972($fp)
	li $t0, 4445
	sw $t0, -11976($fp)
	lw $t1, -11972($fp)
	lw $t2, -11976($fp)
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -11960($fp)
label676:
	addi $t0, $fp, -7968
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
	li $t0, 0
	lw $t1, -11996($fp)
	sub $t0, $t0, $t1
	sw $t0, -12000($fp)
	li $t0, 2447
	sw $t0, -12004($fp)
	lw $t0, -2000($fp)
	sw $t0, -12008($fp)
	lw $t0, -12004($fp)
	lw $t1, -12008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12012($fp)
	li $t0, 17860
	sw $t0, -12016($fp)
	lw $t0, -12012($fp)
	lw $t1, -12016($fp)
	mul $t0, $t0, $t1
	sw $t0, -12020($fp)
	addi $sp, $sp, -4
	lw $t0, -11960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12024($fp)
	addi $sp, $sp, 16
	lw $t1, -12024($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label672:
	li $t0, 11406
	sw $t0, -12028($fp)
	lw $t1, -12028($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -11928($fp)
label671:
label662:
	j label657
label659:
	j label617
label619:
	j label614
label616:
	li $t0, 61883
	sw $t0, -12044($fp)
	lw $t0, -12044($fp)
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	sw $t0, -12052($fp)
	li $t0, 3711
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	sw $t0, -12060($fp)
	lw $t0, -12060($fp)
	sw $t0, -12064($fp)
	li $t0, 39207
	sw $t0, -12068($fp)
	lw $t0, -12068($fp)
	sw $t0, -12072($fp)
	lw $t0, -12072($fp)
	sw $t0, -12076($fp)
	li $t0, 6824
	sw $t0, -12080($fp)
	lw $t0, -12080($fp)
	sw $t0, -12084($fp)
	lw $t0, -12084($fp)
	sw $t0, -12088($fp)
	li $t0, 35423
	sw $t0, -12092($fp)
	addi $t0, $fp, -12040
	sw $t0, -12096($fp)
	li $t0, 0
	sw $t0, -12100($fp)
	lw $t0, -12100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12104($fp)
	lw $t0, -12096($fp)
	lw $t1, -12104($fp)
	add $t0, $t0, $t1
	sw $t0, -12108($fp)
	lw $t0, -12092($fp)
	lw $t1, -12108($fp)
	sw $t0, 0($t1)
	lw $t0, -12108($fp)
	lw $t1, 0($t0)
	sw $t1, -12112($fp)
	li $t0, 64368
	sw $t0, -12116($fp)
	addi $t0, $fp, -12040
	sw $t0, -12120($fp)
	li $t0, 1
	sw $t0, -12124($fp)
	lw $t0, -12124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12128($fp)
	lw $t0, -12120($fp)
	lw $t1, -12128($fp)
	add $t0, $t0, $t1
	sw $t0, -12132($fp)
	lw $t0, -12116($fp)
	lw $t1, -12132($fp)
	sw $t0, 0($t1)
	lw $t0, -12132($fp)
	lw $t1, 0($t0)
	sw $t1, -12136($fp)
	li $t0, 62327
	sw $t0, -12140($fp)
	addi $t0, $fp, -12040
	sw $t0, -12144($fp)
	li $t0, 2
	sw $t0, -12148($fp)
	lw $t0, -12148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12152($fp)
	lw $t0, -12144($fp)
	lw $t1, -12152($fp)
	add $t0, $t0, $t1
	sw $t0, -12156($fp)
	lw $t0, -12140($fp)
	lw $t1, -12156($fp)
	sw $t0, 0($t1)
	lw $t0, -12156($fp)
	lw $t1, 0($t0)
	sw $t1, -12160($fp)
	lw $t0, -12048($fp)
	sw $t0, -12164($fp)
	lw $t0, -12164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12060($fp)
	sw $t0, -12168($fp)
	lw $t0, -12168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12072($fp)
	sw $t0, -12172($fp)
	lw $t0, -12172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12084($fp)
	sw $t0, -12176($fp)
	lw $t0, -12176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12040
	sw $t0, -12180($fp)
	li $t0, 0
	sw $t0, -12184($fp)
	li $t0, 4
	lw $t1, -12184($fp)
	mul $t0, $t0, $t1
	sw $t0, -12188($fp)
	lw $t0, -12188($fp)
	lw $t1, -12180($fp)
	add $t0, $t0, $t1
	sw $t0, -12192($fp)
	lw $t0, -12192($fp)
	lw $t1, 0($t0)
	sw $t1, -12196($fp)
	lw $t0, -12196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12040
	sw $t0, -12200($fp)
	li $t0, 1
	sw $t0, -12204($fp)
	li $t0, 4
	lw $t1, -12204($fp)
	mul $t0, $t0, $t1
	sw $t0, -12208($fp)
	lw $t0, -12208($fp)
	lw $t1, -12200($fp)
	add $t0, $t0, $t1
	sw $t0, -12212($fp)
	lw $t0, -12212($fp)
	lw $t1, 0($t0)
	sw $t1, -12216($fp)
	lw $t0, -12216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12040
	sw $t0, -12220($fp)
	li $t0, 2
	sw $t0, -12224($fp)
	li $t0, 4
	lw $t1, -12224($fp)
	mul $t0, $t0, $t1
	sw $t0, -12228($fp)
	lw $t0, -12228($fp)
	lw $t1, -12220($fp)
	add $t0, $t0, $t1
	sw $t0, -12232($fp)
	lw $t0, -12232($fp)
	lw $t1, 0($t0)
	sw $t1, -12236($fp)
	lw $t0, -12236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 25753
	sw $t0, -12240($fp)
	li $t0, 0
	sw $t0, -12244($fp)
	li $t0, 28973
	sw $t0, -12248($fp)
	li $t0, 0
	lw $t1, -12248($fp)
	sub $t0, $t0, $t1
	sw $t0, -12252($fp)
	lw $t1, -12252($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label677:
	li $t0, 1
	sw $t0, -12244($fp)
label678:
	addi $sp, $sp, -4
	lw $t0, -12244($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -12256($fp)
	addi $sp, $sp, 8
	lw $t0, -12240($fp)
	lw $t1, -12256($fp)
	mul $t0, $t0, $t1
	sw $t0, -12260($fp)
	li $t0, 0
	sw $t0, -12264($fp)
	lw $t0, -2012($fp)
	sw $t0, -12268($fp)
	lw $t1, -12268($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label679
label679:
	li $t0, 1
	sw $t0, -12264($fp)
label680:
	li $t0, 0
	sw $t0, -12272($fp)
	li $t0, 49579
	sw $t0, -12276($fp)
	lw $t1, -12276($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label681
label681:
	li $t0, 1
	sw $t0, -12272($fp)
label682:
	lw $t0, -12264($fp)
	lw $t1, -12272($fp)
	mul $t0, $t0, $t1
	sw $t0, -12280($fp)
	li $t0, 0
	lw $t1, -12280($fp)
	sub $t0, $t0, $t1
	sw $t0, -12284($fp)
	lw $t0, -12260($fp)
	lw $t1, -12284($fp)
	sub $t0, $t0, $t1
	sw $t0, -12288($fp)
	lw $ra, -4($fp)
	lw $v0, -12288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label683:
	li $t0, 0
	sw $t0, -12292($fp)
	lw $t0, -4040($fp)
	sw $t0, -12296($fp)
	li $t0, 0
	lw $t1, -12296($fp)
	sub $t0, $t0, $t1
	sw $t0, -12300($fp)
	lw $t1, -12300($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label687
label688:
	lw $t0, -2660($fp)
	sw $t0, -12304($fp)
	lw $t1, -12304($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -12292($fp)
label687:
	lw $t0, -2552($fp)
	sw $t0, -12308($fp)
	li $t0, 53002
	sw $t0, -12312($fp)
	li $t0, 35645
	sw $t0, -12316($fp)
	addi $sp, $sp, -4
	lw $t0, -12292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12316($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -12320($fp)
	addi $sp, $sp, 20
	lw $t0, -12320($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -12324($fp)
	lw $t0, -12324($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -12328($fp)
	lw $t1, -12328($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label685
label684:
	addi $t0, $fp, -224
	sw $t0, -12332($fp)
	li $t0, 0
	sw $t0, -12336($fp)
	li $t0, 17120
	sw $t0, -12340($fp)
	lw $t0, -1964($fp)
	sw $t0, -12344($fp)
	lw $t0, -12340($fp)
	lw $t1, -12344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12348($fp)
	lw $t0, -1928($fp)
	sw $t0, -12352($fp)
	lw $t0, -1424($fp)
	sw $t0, -12356($fp)
	lw $t0, -12352($fp)
	lw $t1, -12356($fp)
	add $t0, $t0, $t1
	sw $t0, -12360($fp)
	lw $t1, -12348($fp)
	lw $t2, -12360($fp)
	bge $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -12336($fp)
label693:
	li $t0, 4
	lw $t1, -12336($fp)
	mul $t0, $t0, $t1
	sw $t0, -12364($fp)
	lw $t0, -12364($fp)
	lw $t1, -12332($fp)
	add $t0, $t0, $t1
	sw $t0, -12368($fp)
	lw $t0, -12368($fp)
	lw $t1, 0($t0)
	sw $t1, -12372($fp)
	lw $t1, -12372($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label690
label689:
	lw $t0, -4040($fp)
	sw $t0, -12376($fp)
	lw $t1, -12376($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label694
label694:
	li $t0, 0
	sw $t0, -12380($fp)
	li $t0, 0
	sw $t0, -12384($fp)
	li $t0, 61561
	sw $t0, -12388($fp)
	lw $t1, -12388($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label704
label704:
	li $t0, 1
	sw $t0, -12384($fp)
label705:
	lw $t0, -4052($fp)
	sw $t0, -12392($fp)
	lw $t1, -12384($fp)
	lw $t2, -12392($fp)
	ble $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -12380($fp)
label703:
	lw $t0, -2576($fp)
	sw $t0, -12396($fp)
	lw $t0, -740($fp)
	sw $t0, -12400($fp)
	lw $t0, -12396($fp)
	lw $t1, -12400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12404($fp)
	lw $t1, -12380($fp)
	lw $t2, -12404($fp)
	bne $t1, $t2, label701
	j label700
label701:
	lw $t0, -2660($fp)
	sw $t0, -12408($fp)
	lw $t0, -2024($fp)
	sw $t0, -12412($fp)
	lw $t0, -12408($fp)
	lw $t1, -12412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12416($fp)
	li $t0, 21320
	sw $t0, -12420($fp)
	lw $t0, -12416($fp)
	lw $t1, -12420($fp)
	mul $t0, $t0, $t1
	sw $t0, -12424($fp)
	lw $t1, -12424($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label700
label700:
	addi $t0, $fp, -84
	sw $t0, -12428($fp)
	li $t0, 0
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
	li $t0, 54211
	sw $t0, -12448($fp)
	lw $t0, -12444($fp)
	lw $t1, -12448($fp)
	add $t0, $t0, $t1
	sw $t0, -12452($fp)
	lw $t0, -2024($fp)
	sw $t0, -12456($fp)
	lw $t0, -1844($fp)
	sw $t0, -12460($fp)
	lw $t0, -12456($fp)
	lw $t1, -12460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12464($fp)
	lw $t0, -12452($fp)
	lw $t1, -12464($fp)
	add $t0, $t0, $t1
	sw $t0, -12468($fp)
	lw $t1, -12468($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label698
label697:
label706:
	addi $t0, $fp, -84
	sw $t0, -12472($fp)
	lw $t0, -2648($fp)
	sw $t0, -12476($fp)
	li $t0, 4
	lw $t1, -12476($fp)
	mul $t0, $t0, $t1
	sw $t0, -12480($fp)
	lw $t0, -12480($fp)
	lw $t1, -12472($fp)
	add $t0, $t0, $t1
	sw $t0, -12484($fp)
	lw $t0, -12484($fp)
	lw $t1, 0($t0)
	sw $t1, -12488($fp)
	li $t0, 0
	sw $t0, -12492($fp)
	lw $t0, -4052($fp)
	sw $t0, -12496($fp)
	lw $t0, -12060($fp)
	sw $t0, -12500($fp)
	lw $t0, -12496($fp)
	lw $t1, -12500($fp)
	mul $t0, $t0, $t1
	sw $t0, -12504($fp)
	lw $t1, -12504($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label713
label713:
	lw $t0, -2276($fp)
	sw $t0, -12508($fp)
	lw $t1, -12508($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -12492($fp)
label712:
	li $t0, 0
	sw $t0, -12512($fp)
	li $t0, 20588
	sw $t0, -12516($fp)
	lw $t0, -2300($fp)
	sw $t0, -12520($fp)
	lw $t0, -12516($fp)
	lw $t1, -12520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12524($fp)
	li $t0, 56303
	sw $t0, -12528($fp)
	lw $t1, -12524($fp)
	lw $t2, -12528($fp)
	bne $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -12512($fp)
label715:
	li $t0, 0
	sw $t0, -12532($fp)
	li $t0, 5377
	sw $t0, -12536($fp)
	li $t0, 7851
	sw $t0, -12540($fp)
	lw $t0, -12536($fp)
	lw $t1, -12540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12544($fp)
	lw $t0, -2888($fp)
	sw $t0, -12548($fp)
	lw $t1, -12544($fp)
	lw $t2, -12548($fp)
	beq $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -12532($fp)
label717:
	addi $sp, $sp, -4
	lw $t0, -12488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12532($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -12552($fp)
	addi $sp, $sp, 20
	li $t0, 23784
	sw $t0, -12556($fp)
	lw $t1, -12552($fp)
	lw $t2, -12556($fp)
	bne $t1, $t2, label707
	j label710
label710:
	lw $t0, -2552($fp)
	sw $t0, -12560($fp)
	lw $t0, -2276($fp)
	sw $t0, -12564($fp)
	lw $t1, -12560($fp)
	lw $t2, -12564($fp)
	bgt $t1, $t2, label707
	j label709
label709:
	li $t0, 0
	sw $t0, -12568($fp)
	li $t0, 0
	sw $t0, -12572($fp)
	li $t0, 23035
	sw $t0, -12576($fp)
	lw $t0, -2252($fp)
	sw $t0, -12580($fp)
	lw $t1, -12576($fp)
	lw $t2, -12580($fp)
	blt $t1, $t2, label720
	j label721
label720:
	li $t0, 1
	sw $t0, -12572($fp)
label721:
	lw $t0, -2252($fp)
	sw $t0, -12584($fp)
	lw $t1, -12572($fp)
	lw $t2, -12584($fp)
	beq $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -12568($fp)
label719:
	addi $t0, $fp, -7988
	sw $t0, -12588($fp)
	lw $t0, -1436($fp)
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
	lw $t0, -12084($fp)
	sw $t0, -12608($fp)
	addi $sp, $sp, -4
	lw $t0, -12568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12608($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -12612($fp)
	addi $sp, $sp, 16
	lw $t1, -12612($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
	lw $t0, -12072($fp)
	sw $t0, -12616($fp)
	li $t0, 8627
	sw $t0, -12620($fp)
	lw $t0, -12616($fp)
	lw $t1, -12620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12624($fp)
	lw $t0, -3764($fp)
	sw $t0, -12628($fp)
	addi $t0, $fp, -132
	sw $t0, -12632($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -12628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12648($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -12652($fp)
	addi $sp, $sp, 12
	lw $t0, -12624($fp)
	lw $t1, -12652($fp)
	mul $t0, $t0, $t1
	sw $t0, -12656($fp)
	j label706
label708:
	j label699
label698:
label722:
	addi $t0, $fp, -12040
	sw $t0, -12660($fp)
	lw $t0, -2276($fp)
	sw $t0, -12664($fp)
	li $t0, 32403
	sw $t0, -12668($fp)
	lw $t0, -12664($fp)
	lw $t1, -12668($fp)
	sub $t0, $t0, $t1
	sw $t0, -12672($fp)
	lw $t0, -2252($fp)
	sw $t0, -12676($fp)
	lw $t0, -12672($fp)
	lw $t1, -12676($fp)
	add $t0, $t0, $t1
	sw $t0, -12680($fp)
	li $t0, 4
	lw $t1, -12680($fp)
	mul $t0, $t0, $t1
	sw $t0, -12684($fp)
	lw $t0, -12684($fp)
	lw $t1, -12660($fp)
	add $t0, $t0, $t1
	sw $t0, -12688($fp)
	lw $t0, -12688($fp)
	lw $t1, 0($t0)
	sw $t1, -12692($fp)
	li $t0, 0
	lw $t1, -12692($fp)
	sub $t0, $t0, $t1
	sw $t0, -12696($fp)
	lw $t1, -12696($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label724
label723:
	addi $t0, $fp, -7892
	sw $t0, -12700($fp)
	li $t0, 0
	sw $t0, -12704($fp)
	lw $t0, -1976($fp)
	sw $t0, -12708($fp)
	lw $t0, -464($fp)
	sw $t0, -12712($fp)
	lw $t1, -12708($fp)
	lw $t2, -12712($fp)
	blt $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -12704($fp)
label726:
	li $t0, 4
	lw $t1, -12704($fp)
	mul $t0, $t0, $t1
	sw $t0, -12716($fp)
	lw $t0, -12716($fp)
	lw $t1, -12700($fp)
	add $t0, $t0, $t1
	sw $t0, -12720($fp)
	lw $t0, -12720($fp)
	lw $t1, 0($t0)
	sw $t1, -12724($fp)
	li $t0, 0
	lw $t1, -12724($fp)
	sub $t0, $t0, $t1
	sw $t0, -12728($fp)
	li $t0, 18013
	sw $t0, -12732($fp)
	lw $t0, -12728($fp)
	lw $t1, -12732($fp)
	add $t0, $t0, $t1
	sw $t0, -12736($fp)
	j label722
label724:
label699:
	j label696
label695:
	li $t0, 56310
	sw $t0, -12740($fp)
	lw $t0, -12740($fp)
	sw $t0, -12744($fp)
	lw $t0, -12744($fp)
	sw $t0, -12748($fp)
	li $t0, 43809
	sw $t0, -12752($fp)
	lw $t0, -12752($fp)
	sw $t0, -12756($fp)
	lw $t0, -12756($fp)
	sw $t0, -12760($fp)
	li $t0, 0
	sw $t0, -12764($fp)
	li $t0, 21184
	sw $t0, -12768($fp)
	li $t0, 29908
	sw $t0, -12772($fp)
	lw $t0, -12768($fp)
	lw $t1, -12772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12776($fp)
	li $t0, 16312
	sw $t0, -12780($fp)
	lw $t0, -12776($fp)
	lw $t1, -12780($fp)
	sub $t0, $t0, $t1
	sw $t0, -12784($fp)
	li $t0, 0
	sw $t0, -12788($fp)
	addi $t0, $fp, -172
	sw $t0, -12792($fp)
	li $t0, 7
	sw $t0, -12796($fp)
	li $t0, 4
	lw $t1, -12796($fp)
	mul $t0, $t0, $t1
	sw $t0, -12800($fp)
	lw $t0, -12800($fp)
	lw $t1, -12792($fp)
	add $t0, $t0, $t1
	sw $t0, -12804($fp)
	lw $t0, -12804($fp)
	lw $t1, 0($t0)
	sw $t1, -12808($fp)
	lw $t1, -12808($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label731
label731:
	li $t0, 17480
	sw $t0, -12812($fp)
	lw $t1, -12812($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -12788($fp)
label730:
	addi $sp, $sp, -4
	lw $t0, -12784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12788($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12816($fp)
	addi $sp, $sp, 12
	lw $t0, -1712($fp)
	sw $t0, -12820($fp)
	lw $t1, -12816($fp)
	lw $t2, -12820($fp)
	bgt $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -12764($fp)
label728:
	li $t0, 0
	sw $t0, -12824($fp)
	lw $t0, -1256($fp)
	sw $t0, -12828($fp)
	li $t0, 17975
	sw $t0, -12832($fp)
	lw $t0, -12828($fp)
	lw $t1, -12832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12836($fp)
	li $t0, 55661
	sw $t0, -12840($fp)
	li $t0, 0
	lw $t1, -12840($fp)
	sub $t0, $t0, $t1
	sw $t0, -12844($fp)
	li $t0, 0
	lw $t1, -12844($fp)
	sub $t0, $t0, $t1
	sw $t0, -12848($fp)
	lw $t0, -12836($fp)
	lw $t1, -12848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12852($fp)
	li $t0, 0
	sw $t0, -12856($fp)
	lw $t0, -716($fp)
	sw $t0, -12860($fp)
	lw $t0, -728($fp)
	sw $t0, -12864($fp)
	lw $t0, -12860($fp)
	lw $t1, -12864($fp)
	mul $t0, $t0, $t1
	sw $t0, -12868($fp)
	lw $t1, -12868($fp)
	li $t2, 0
	bne $t1, $t2, label736
	j label735
label736:
	li $t0, 25770
	sw $t0, -12872($fp)
	lw $t1, -12872($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -12856($fp)
label735:
	lw $t0, -3704($fp)
	sw $t0, -12876($fp)
	li $t0, 0
	sw $t0, -12880($fp)
	li $t0, 45285
	sw $t0, -12884($fp)
	lw $t1, -12884($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label737
label737:
	li $t0, 1
	sw $t0, -12880($fp)
label738:
	li $t0, 2019
	sw $t0, -12888($fp)
	lw $t0, -12880($fp)
	lw $t1, -12888($fp)
	add $t0, $t0, $t1
	sw $t0, -12892($fp)
	li $t0, 0
	sw $t0, -12896($fp)
	lw $t0, -12744($fp)
	sw $t0, -12900($fp)
	lw $t0, -12756($fp)
	sw $t0, -12904($fp)
	lw $t1, -12900($fp)
	lw $t2, -12904($fp)
	ble $t1, $t2, label741
	j label740
label741:
	lw $t0, -4052($fp)
	sw $t0, -12908($fp)
	lw $t1, -12908($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -12896($fp)
label740:
	addi $sp, $sp, -4
	lw $t0, -12892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12896($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12912($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -12856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12912($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -12916($fp)
	addi $sp, $sp, 16
	lw $t1, -12852($fp)
	lw $t2, -12916($fp)
	bne $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -12824($fp)
label733:
label696:
	j label691
label690:
	li $t0, 0
	sw $t0, -12920($fp)
	li $t0, 32751
	sw $t0, -12924($fp)
	li $t0, 0
	sw $t0, -12928($fp)
	li $t0, 19139
	sw $t0, -12932($fp)
	lw $t1, -12932($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label745
label744:
	li $t0, 1
	sw $t0, -12928($fp)
label745:
	lw $t0, -12924($fp)
	lw $t1, -12928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12936($fp)
	li $t0, 0
	lw $t1, -12936($fp)
	sub $t0, $t0, $t1
	sw $t0, -12940($fp)
	li $t0, 0
	sw $t0, -12944($fp)
	li $t0, 21795
	sw $t0, -12948($fp)
	lw $t0, -12048($fp)
	sw $t0, -12952($fp)
	lw $t1, -12948($fp)
	lw $t2, -12952($fp)
	blt $t1, $t2, label748
	j label747
label748:
	li $t0, 54071
	sw $t0, -12956($fp)
	lw $t1, -12956($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -12944($fp)
label747:
	addi $sp, $sp, -4
	lw $t0, -12944($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -12960($fp)
	addi $sp, $sp, 8
	lw $t1, -12940($fp)
	lw $t2, -12960($fp)
	bne $t1, $t2, label742
	j label743
label742:
	li $t0, 1
	sw $t0, -12920($fp)
label743:
label691:
	j label683
label685:
	li $t0, 42319
	sw $t0, -12964($fp)
	lw $t0, -12964($fp)
	sw $t0, -12968($fp)
	lw $t0, -12968($fp)
	sw $t0, -12972($fp)
	li $t0, 33113
	sw $t0, -12976($fp)
	lw $t0, -12976($fp)
	sw $t0, -12980($fp)
	lw $t0, -12980($fp)
	sw $t0, -12984($fp)
	li $t0, 42746
	sw $t0, -12988($fp)
	lw $t0, -12988($fp)
	sw $t0, -12992($fp)
	lw $t0, -12992($fp)
	sw $t0, -12996($fp)
	li $t0, 0
	sw $t0, -13000($fp)
	li $t0, 40964
	sw $t0, -13004($fp)
	lw $t0, -13004($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	sw $t0, -13008($fp)
	li $t0, 0
	sw $t0, -13012($fp)
	li $t0, 0
	sw $t0, -13016($fp)
	lw $t0, -12992($fp)
	sw $t0, -13020($fp)
	li $t0, 47697
	sw $t0, -13024($fp)
	lw $t1, -13020($fp)
	lw $t2, -13024($fp)
	beq $t1, $t2, label756
	j label757
label756:
	li $t0, 1
	sw $t0, -13016($fp)
label757:
	addi $sp, $sp, -4
	lw $t0, -13016($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -13028($fp)
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -13032($fp)
	lw $t1, -13028($fp)
	lw $t2, -13032($fp)
	bne $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -13012($fp)
label755:
	addi $sp, $sp, -4
	lw $t0, -13008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13012($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -13036($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -13036($fp)
	sub $t0, $t0, $t1
	sw $t0, -13040($fp)
	addi $t0, $fp, -172
	sw $t0, -13044($fp)
	li $t0, 4
	sw $t0, -13048($fp)
	li $t0, 4
	lw $t1, -13048($fp)
	mul $t0, $t0, $t1
	sw $t0, -13052($fp)
	lw $t0, -13052($fp)
	lw $t1, -13044($fp)
	add $t0, $t0, $t1
	sw $t0, -13056($fp)
	lw $t0, -13056($fp)
	lw $t1, 0($t0)
	sw $t1, -13060($fp)
	lw $t1, -13040($fp)
	lw $t2, -13060($fp)
	ble $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -13000($fp)
label753:
	li $t0, 0
	sw $t0, -13064($fp)
	li $t0, 64749
	sw $t0, -13068($fp)
	lw $t1, -13068($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -13064($fp)
label759:
	li $t0, 0
	lw $t1, -13064($fp)
	sub $t0, $t0, $t1
	sw $t0, -13072($fp)
	lw $t1, -13000($fp)
	lw $t2, -13072($fp)
	bgt $t1, $t2, label749
	j label750
label749:
label760:
	li $t0, 20833
	sw $t0, -13076($fp)
	lw $t1, -13076($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label762
label761:
	li $t0, 0
	sw $t0, -13080($fp)
	addi $t0, $fp, -172
	sw $t0, -13084($fp)
	li $t0, 5
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
	li $t0, 7162
	sw $t0, -13104($fp)
	li $t0, 0
	lw $t1, -13104($fp)
	sub $t0, $t0, $t1
	sw $t0, -13108($fp)
	lw $t0, -13100($fp)
	lw $t1, -13108($fp)
	mul $t0, $t0, $t1
	sw $t0, -13112($fp)
	lw $t1, -13112($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label765
label765:
	lw $t0, -2012($fp)
	sw $t0, -13116($fp)
	li $t0, 0
	lw $t1, -13116($fp)
	sub $t0, $t0, $t1
	sw $t0, -13120($fp)
	lw $t0, -1280($fp)
	sw $t0, -13124($fp)
	lw $t0, -1964($fp)
	sw $t0, -13128($fp)
	lw $t0, -13124($fp)
	lw $t1, -13128($fp)
	mul $t0, $t0, $t1
	sw $t0, -13132($fp)
	lw $t1, -13120($fp)
	lw $t2, -13132($fp)
	beq $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -13080($fp)
label764:
	j label760
label762:
label750:
	li $t0, 13958
	sw $t0, -13156($fp)
	addi $t0, $fp, -13152
	sw $t0, -13160($fp)
	li $t0, 0
	sw $t0, -13164($fp)
	lw $t0, -13164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13168($fp)
	lw $t0, -13160($fp)
	lw $t1, -13168($fp)
	add $t0, $t0, $t1
	sw $t0, -13172($fp)
	lw $t0, -13156($fp)
	lw $t1, -13172($fp)
	sw $t0, 0($t1)
	lw $t0, -13172($fp)
	lw $t1, 0($t0)
	sw $t1, -13176($fp)
	li $t0, 43788
	sw $t0, -13180($fp)
	addi $t0, $fp, -13152
	sw $t0, -13184($fp)
	li $t0, 1
	sw $t0, -13188($fp)
	lw $t0, -13188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13192($fp)
	lw $t0, -13184($fp)
	lw $t1, -13192($fp)
	add $t0, $t0, $t1
	sw $t0, -13196($fp)
	lw $t0, -13180($fp)
	lw $t1, -13196($fp)
	sw $t0, 0($t1)
	lw $t0, -13196($fp)
	lw $t1, 0($t0)
	sw $t1, -13200($fp)
	li $t0, 63472
	sw $t0, -13204($fp)
	addi $t0, $fp, -13152
	sw $t0, -13208($fp)
	li $t0, 2
	sw $t0, -13212($fp)
	lw $t0, -13212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13216($fp)
	lw $t0, -13208($fp)
	lw $t1, -13216($fp)
	add $t0, $t0, $t1
	sw $t0, -13220($fp)
	lw $t0, -13204($fp)
	lw $t1, -13220($fp)
	sw $t0, 0($t1)
	lw $t0, -13220($fp)
	lw $t1, 0($t0)
	sw $t1, -13224($fp)
	li $t0, 57767
	sw $t0, -13228($fp)
	addi $t0, $fp, -13152
	sw $t0, -13232($fp)
	li $t0, 3
	sw $t0, -13236($fp)
	lw $t0, -13236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13240($fp)
	lw $t0, -13232($fp)
	lw $t1, -13240($fp)
	add $t0, $t0, $t1
	sw $t0, -13244($fp)
	lw $t0, -13228($fp)
	lw $t1, -13244($fp)
	sw $t0, 0($t1)
	lw $t0, -13244($fp)
	lw $t1, 0($t0)
	sw $t1, -13248($fp)
	li $t0, 58149
	sw $t0, -13252($fp)
	addi $t0, $fp, -13152
	sw $t0, -13256($fp)
	li $t0, 4
	sw $t0, -13260($fp)
	lw $t0, -13260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -13264($fp)
	lw $t0, -13256($fp)
	lw $t1, -13264($fp)
	add $t0, $t0, $t1
	sw $t0, -13268($fp)
	lw $t0, -13252($fp)
	lw $t1, -13268($fp)
	sw $t0, 0($t1)
	lw $t0, -13268($fp)
	lw $t1, 0($t0)
	sw $t1, -13272($fp)
	li $t0, 57957
	sw $t0, -13276($fp)
	lw $t0, -13276($fp)
	sw $t0, -13280($fp)
	lw $t0, -13280($fp)
	sw $t0, -13284($fp)
	li $t0, 0
	sw $t0, -13288($fp)
	li $t0, 0
	sw $t0, -13292($fp)
	li $t0, 22329
	sw $t0, -13296($fp)
	lw $t0, -12992($fp)
	sw $t0, -13300($fp)
	lw $t1, -13296($fp)
	lw $t2, -13300($fp)
	beq $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -13292($fp)
label769:
	addi $t0, $fp, -364
	sw $t0, -13304($fp)
	lw $t0, -13280($fp)
	sw $t0, -13308($fp)
	li $t0, 4
	lw $t1, -13308($fp)
	mul $t0, $t0, $t1
	sw $t0, -13312($fp)
	lw $t0, -13312($fp)
	lw $t1, -13304($fp)
	add $t0, $t0, $t1
	sw $t0, -13316($fp)
	lw $t0, -13316($fp)
	lw $t1, 0($t0)
	sw $t1, -13320($fp)
	li $t0, 13797
	sw $t0, -13324($fp)
	lw $t0, -13320($fp)
	lw $t1, -13324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13328($fp)
	li $t0, 9711
	sw $t0, -13332($fp)
	lw $t0, -13332($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	sw $t0, -13336($fp)
	li $t0, 0
	sw $t0, -13340($fp)
	lw $t0, -2792($fp)
	sw $t0, -13344($fp)
	lw $t1, -13344($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -13340($fp)
label771:
	addi $sp, $sp, -4
	lw $t0, -13292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13340($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -13348($fp)
	addi $sp, $sp, 20
	lw $t0, -2588($fp)
	sw $t0, -13352($fp)
	lw $t0, -3680($fp)
	sw $t0, -13356($fp)
	lw $t0, -13352($fp)
	lw $t1, -13356($fp)
	mul $t0, $t0, $t1
	sw $t0, -13360($fp)
	lw $t0, -13348($fp)
	lw $t1, -13360($fp)
	sub $t0, $t0, $t1
	sw $t0, -13364($fp)
	lw $t0, -3692($fp)
	sw $t0, -13368($fp)
	lw $t0, -13364($fp)
	lw $t1, -13368($fp)
	add $t0, $t0, $t1
	sw $t0, -13372($fp)
	li $t0, 26023
	sw $t0, -13376($fp)
	li $t0, 0
	lw $t1, -13376($fp)
	sub $t0, $t0, $t1
	sw $t0, -13380($fp)
	lw $t1, -13372($fp)
	lw $t2, -13380($fp)
	ble $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -13288($fp)
label767:
	li $t0, 31773
	sw $t0, -13384($fp)
	addi $t0, $fp, -13152
	sw $t0, -13388($fp)
	li $t0, 2
	sw $t0, -13392($fp)
	li $t0, 4
	lw $t1, -13392($fp)
	mul $t0, $t0, $t1
	sw $t0, -13396($fp)
	lw $t0, -13396($fp)
	lw $t1, -13388($fp)
	add $t0, $t0, $t1
	sw $t0, -13400($fp)
	lw $t0, -13400($fp)
	lw $t1, 0($t0)
	sw $t1, -13404($fp)
	lw $t0, -13384($fp)
	lw $t1, -13404($fp)
	add $t0, $t0, $t1
	sw $t0, -13408($fp)
	li $t0, 0
	sw $t0, -13412($fp)
	addi $t0, $fp, -388
	sw $t0, -13416($fp)
	li $t0, 3
	sw $t0, -13420($fp)
	li $t0, 4
	lw $t1, -13420($fp)
	mul $t0, $t0, $t1
	sw $t0, -13424($fp)
	lw $t0, -13424($fp)
	lw $t1, -13416($fp)
	add $t0, $t0, $t1
	sw $t0, -13428($fp)
	lw $t0, -13428($fp)
	lw $t1, 0($t0)
	sw $t1, -13432($fp)
	lw $t1, -13432($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label773
label774:
	lw $t0, -3704($fp)
	sw $t0, -13436($fp)
	lw $t1, -13436($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -13412($fp)
label773:
	li $t0, 0
	sw $t0, -13440($fp)
	lw $t0, -1904($fp)
	sw $t0, -13444($fp)
	lw $t1, -13444($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label776
label777:
	li $t0, 33792
	sw $t0, -13448($fp)
	lw $t1, -13448($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label776
label775:
	li $t0, 1
	sw $t0, -13440($fp)
label776:
	addi $sp, $sp, -4
	lw $t0, -13412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13440($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -13452($fp)
	addi $sp, $sp, 12
	lw $t0, -8864($fp)
	sw $t0, -13456($fp)
	lw $t0, -13452($fp)
	lw $t1, -13456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13460($fp)
	lw $t0, -13408($fp)
	lw $t1, -13460($fp)
	add $t0, $t0, $t1
	sw $t0, -13464($fp)
	lw $t0, -3704($fp)
	sw $t0, -13468($fp)
	lw $t1, -13468($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label778
label778:
	li $t0, 0
	sw $t0, -13472($fp)
	addi $t0, $fp, -388
	sw $t0, -13476($fp)
	li $t0, 1
	sw $t0, -13480($fp)
	li $t0, 4
	lw $t1, -13480($fp)
	mul $t0, $t0, $t1
	sw $t0, -13484($fp)
	lw $t0, -13484($fp)
	lw $t1, -13476($fp)
	add $t0, $t0, $t1
	sw $t0, -13488($fp)
	lw $t0, -13488($fp)
	lw $t1, 0($t0)
	sw $t1, -13492($fp)
	li $t0, 27058
	sw $t0, -13496($fp)
	lw $t1, -13492($fp)
	lw $t2, -13496($fp)
	ble $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -13472($fp)
label782:
	lw $ra, -4($fp)
	lw $v0, -13472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label780
label779:
	li $t0, 0
	sw $t0, -13500($fp)
	li $t0, 0
	sw $t0, -13504($fp)
	lw $t0, 4($fp)
	sw $t0, -13508($fp)
	lw $t1, -13508($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label785
label785:
	li $t0, 1
	sw $t0, -13504($fp)
label786:
	li $t0, 0
	sw $t0, -13512($fp)
	li $t0, 4268
	sw $t0, -13516($fp)
	lw $t1, -13516($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label787
label787:
	li $t0, 1
	sw $t0, -13512($fp)
label788:
	li $t0, 0
	lw $t1, -13512($fp)
	sub $t0, $t0, $t1
	sw $t0, -13520($fp)
	lw $t0, -1940($fp)
	sw $t0, -13524($fp)
	li $t0, 27598
	sw $t0, -13528($fp)
	lw $t0, -13524($fp)
	lw $t1, -13528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13532($fp)
	lw $t0, -476($fp)
	sw $t0, -13536($fp)
	lw $t0, -13532($fp)
	lw $t1, -13536($fp)
	sub $t0, $t0, $t1
	sw $t0, -13540($fp)
	li $t0, 0
	sw $t0, -13544($fp)
	lw $t0, -1928($fp)
	sw $t0, -13548($fp)
	li $t0, 29714
	sw $t0, -13552($fp)
	lw $t0, -13548($fp)
	lw $t1, -13552($fp)
	mul $t0, $t0, $t1
	sw $t0, -13556($fp)
	lw $t0, -1016($fp)
	sw $t0, -13560($fp)
	lw $t1, -13556($fp)
	lw $t2, -13560($fp)
	bge $t1, $t2, label789
	j label790
label789:
	li $t0, 1
	sw $t0, -13544($fp)
label790:
	lw $t0, -12968($fp)
	sw $t0, -13564($fp)
	addi $sp, $sp, -4
	lw $t0, -13520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13564($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -13568($fp)
	addi $sp, $sp, 20
	lw $t1, -13504($fp)
	lw $t2, -13568($fp)
	beq $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -13500($fp)
label784:
label780:
	li $t0, 0
	sw $t0, -13572($fp)
	li $t0, 0
	sw $t0, -13576($fp)
	li $t0, 11875
	sw $t0, -13580($fp)
	lw $t0, -464($fp)
	sw $t0, -13584($fp)
	lw $t1, -13580($fp)
	lw $t2, -13584($fp)
	ble $t1, $t2, label793
	j label794
label793:
	li $t0, 1
	sw $t0, -13576($fp)
label794:
	li $t0, 0
	sw $t0, -13588($fp)
	lw $t0, -1988($fp)
	sw $t0, -13592($fp)
	lw $t0, -12980($fp)
	sw $t0, -13596($fp)
	lw $t0, -13592($fp)
	lw $t1, -13596($fp)
	add $t0, $t0, $t1
	sw $t0, -13600($fp)
	lw $t1, -13600($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label796
label797:
	lw $t0, -3752($fp)
	sw $t0, -13604($fp)
	lw $t1, -13604($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label796
label795:
	li $t0, 1
	sw $t0, -13588($fp)
label796:
	lw $t0, -1940($fp)
	sw $t0, -13608($fp)
	addi $sp, $sp, -4
	lw $t0, -13576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13608($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -13612($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -13612($fp)
	sub $t0, $t0, $t1
	sw $t0, -13616($fp)
	li $t0, 0
	lw $t1, -13616($fp)
	sub $t0, $t0, $t1
	sw $t0, -13620($fp)
	li $t0, 0
	sw $t0, -13624($fp)
	li $t0, 3027
	sw $t0, -13628($fp)
	lw $t1, -13628($fp)
	li $t2, 0
	bne $t1, $t2, label798
	j label799
label798:
	li $t0, 1
	sw $t0, -13624($fp)
label799:
	lw $t1, -13620($fp)
	lw $t2, -13624($fp)
	beq $t1, $t2, label791
	j label792
label791:
	li $t0, 1
	sw $t0, -13572($fp)
label792:
label518:
	li $t0, 0
	sw $t0, -13632($fp)
	addi $t0, $fp, -416
	sw $t0, -13636($fp)
	li $t0, 0
	sw $t0, -13640($fp)
	li $t0, 4
	lw $t1, -13640($fp)
	mul $t0, $t0, $t1
	sw $t0, -13644($fp)
	lw $t0, -13644($fp)
	lw $t1, -13636($fp)
	add $t0, $t0, $t1
	sw $t0, -13648($fp)
	lw $t0, -13648($fp)
	lw $t1, 0($t0)
	sw $t1, -13652($fp)
	li $t0, 31894
	sw $t0, -13656($fp)
	lw $t0, -13652($fp)
	lw $t1, -13656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13660($fp)
	li $t0, 0
	sw $t0, -13664($fp)
	li $t0, 2066
	sw $t0, -13668($fp)
	li $t0, 50339
	sw $t0, -13672($fp)
	lw $t0, -13668($fp)
	lw $t1, -13672($fp)
	add $t0, $t0, $t1
	sw $t0, -13676($fp)
	lw $t1, -13676($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label805
label805:
	lw $t0, -3716($fp)
	sw $t0, -13680($fp)
	lw $t1, -13680($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -13664($fp)
label804:
	addi $sp, $sp, -4
	lw $t0, -13660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13664($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -13684($fp)
	addi $sp, $sp, 12
	lw $t0, -2576($fp)
	sw $t0, -13688($fp)
	lw $t0, -13684($fp)
	lw $t1, -13688($fp)
	mul $t0, $t0, $t1
	sw $t0, -13692($fp)
	lw $t1, -13692($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label801
label802:
	addi $t0, $fp, -172
	sw $t0, -13696($fp)
	li $t0, 4
	sw $t0, -13700($fp)
	li $t0, 4
	lw $t1, -13700($fp)
	mul $t0, $t0, $t1
	sw $t0, -13704($fp)
	lw $t0, -13704($fp)
	lw $t1, -13696($fp)
	add $t0, $t0, $t1
	sw $t0, -13708($fp)
	lw $t0, -13708($fp)
	lw $t1, 0($t0)
	sw $t1, -13712($fp)
	li $t0, 0
	sw $t0, -13716($fp)
	li $t0, 64417
	sw $t0, -13720($fp)
	li $t0, 0
	lw $t1, -13720($fp)
	sub $t0, $t0, $t1
	sw $t0, -13724($fp)
	lw $t1, -13724($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label807
label808:
	li $t0, 20420
	sw $t0, -13728($fp)
	lw $t1, -13728($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -13716($fp)
label807:
	li $t0, 38083
	sw $t0, -13732($fp)
	lw $t0, -1280($fp)
	sw $t0, -13736($fp)
	lw $t0, -13732($fp)
	lw $t1, -13736($fp)
	add $t0, $t0, $t1
	sw $t0, -13740($fp)
	lw $t0, -1952($fp)
	sw $t0, -13744($fp)
	lw $t0, -13740($fp)
	lw $t1, -13744($fp)
	add $t0, $t0, $t1
	sw $t0, -13748($fp)
	li $t0, 27998
	sw $t0, -13752($fp)
	li $t0, 0
	lw $t1, -13752($fp)
	sub $t0, $t0, $t1
	sw $t0, -13756($fp)
	li $t0, 0
	lw $t1, -13756($fp)
	sub $t0, $t0, $t1
	sw $t0, -13760($fp)
	li $t0, 45852
	sw $t0, -13764($fp)
	li $t0, 0
	lw $t1, -13764($fp)
	sub $t0, $t0, $t1
	sw $t0, -13768($fp)
	li $t0, 6268
	sw $t0, -13772($fp)
	lw $t0, -13768($fp)
	lw $t1, -13772($fp)
	add $t0, $t0, $t1
	sw $t0, -13776($fp)
	addi $sp, $sp, -4
	lw $t0, -13716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13776($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -13780($fp)
	addi $sp, $sp, 20
	lw $t1, -13712($fp)
	lw $t2, -13780($fp)
	blt $t1, $t2, label800
	j label801
label800:
	li $t0, 1
	sw $t0, -13632($fp)
label801:
	lw $t0, -464($fp)
	sw $t0, -13784($fp)
	lw $t0, -13784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -13788($fp)
	lw $t0, -13788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -13792($fp)
	lw $t0, -13792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13796($fp)
	li $t0, 0
	sw $t0, -13800($fp)
	li $t0, 4
	lw $t1, -13800($fp)
	mul $t0, $t0, $t1
	sw $t0, -13804($fp)
	lw $t0, -13804($fp)
	lw $t1, -13796($fp)
	add $t0, $t0, $t1
	sw $t0, -13808($fp)
	lw $t0, -13808($fp)
	lw $t1, 0($t0)
	sw $t1, -13812($fp)
	lw $t0, -13812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13816($fp)
	li $t0, 1
	sw $t0, -13820($fp)
	li $t0, 4
	lw $t1, -13820($fp)
	mul $t0, $t0, $t1
	sw $t0, -13824($fp)
	lw $t0, -13824($fp)
	lw $t1, -13816($fp)
	add $t0, $t0, $t1
	sw $t0, -13828($fp)
	lw $t0, -13828($fp)
	lw $t1, 0($t0)
	sw $t1, -13832($fp)
	lw $t0, -13832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13836($fp)
	li $t0, 2
	sw $t0, -13840($fp)
	li $t0, 4
	lw $t1, -13840($fp)
	mul $t0, $t0, $t1
	sw $t0, -13844($fp)
	lw $t0, -13844($fp)
	lw $t1, -13836($fp)
	add $t0, $t0, $t1
	sw $t0, -13848($fp)
	lw $t0, -13848($fp)
	lw $t1, 0($t0)
	sw $t1, -13852($fp)
	lw $t0, -13852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13856($fp)
	li $t0, 3
	sw $t0, -13860($fp)
	li $t0, 4
	lw $t1, -13860($fp)
	mul $t0, $t0, $t1
	sw $t0, -13864($fp)
	lw $t0, -13864($fp)
	lw $t1, -13856($fp)
	add $t0, $t0, $t1
	sw $t0, -13868($fp)
	lw $t0, -13868($fp)
	lw $t1, 0($t0)
	sw $t1, -13872($fp)
	lw $t0, -13872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13876($fp)
	li $t0, 4
	sw $t0, -13880($fp)
	li $t0, 4
	lw $t1, -13880($fp)
	mul $t0, $t0, $t1
	sw $t0, -13884($fp)
	lw $t0, -13884($fp)
	lw $t1, -13876($fp)
	add $t0, $t0, $t1
	sw $t0, -13888($fp)
	lw $t0, -13888($fp)
	lw $t1, 0($t0)
	sw $t1, -13892($fp)
	lw $t0, -13892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13896($fp)
	li $t0, 5
	sw $t0, -13900($fp)
	li $t0, 4
	lw $t1, -13900($fp)
	mul $t0, $t0, $t1
	sw $t0, -13904($fp)
	lw $t0, -13904($fp)
	lw $t1, -13896($fp)
	add $t0, $t0, $t1
	sw $t0, -13908($fp)
	lw $t0, -13908($fp)
	lw $t1, 0($t0)
	sw $t1, -13912($fp)
	lw $t0, -13912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13916($fp)
	li $t0, 6
	sw $t0, -13920($fp)
	li $t0, 4
	lw $t1, -13920($fp)
	mul $t0, $t0, $t1
	sw $t0, -13924($fp)
	lw $t0, -13924($fp)
	lw $t1, -13916($fp)
	add $t0, $t0, $t1
	sw $t0, -13928($fp)
	lw $t0, -13928($fp)
	lw $t1, 0($t0)
	sw $t1, -13932($fp)
	lw $t0, -13932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13936($fp)
	li $t0, 7
	sw $t0, -13940($fp)
	li $t0, 4
	lw $t1, -13940($fp)
	mul $t0, $t0, $t1
	sw $t0, -13944($fp)
	lw $t0, -13944($fp)
	lw $t1, -13936($fp)
	add $t0, $t0, $t1
	sw $t0, -13948($fp)
	lw $t0, -13948($fp)
	lw $t1, 0($t0)
	sw $t1, -13952($fp)
	lw $t0, -13952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -13956($fp)
	li $t0, 8
	sw $t0, -13960($fp)
	li $t0, 4
	lw $t1, -13960($fp)
	mul $t0, $t0, $t1
	sw $t0, -13964($fp)
	lw $t0, -13964($fp)
	lw $t1, -13956($fp)
	add $t0, $t0, $t1
	sw $t0, -13968($fp)
	lw $t0, -13968($fp)
	lw $t1, 0($t0)
	sw $t1, -13972($fp)
	lw $t0, -13972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -13976($fp)
	lw $t0, -13976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -13980($fp)
	lw $t0, -13980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -13984($fp)
	lw $t0, -13984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -13988($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -14008($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -14028($fp)
	li $t0, 2
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
	lw $t0, -824($fp)
	sw $t0, -14048($fp)
	lw $t0, -14048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -14052($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -14072($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -14092($fp)
	li $t0, 2
	sw $t0, -14096($fp)
	li $t0, 4
	lw $t1, -14096($fp)
	mul $t0, $t0, $t1
	sw $t0, -14100($fp)
	lw $t0, -14100($fp)
	lw $t1, -14092($fp)
	add $t0, $t0, $t1
	sw $t0, -14104($fp)
	lw $t0, -14104($fp)
	lw $t1, 0($t0)
	sw $t1, -14108($fp)
	lw $t0, -14108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -14112($fp)
	li $t0, 3
	sw $t0, -14116($fp)
	li $t0, 4
	lw $t1, -14116($fp)
	mul $t0, $t0, $t1
	sw $t0, -14120($fp)
	lw $t0, -14120($fp)
	lw $t1, -14112($fp)
	add $t0, $t0, $t1
	sw $t0, -14124($fp)
	lw $t0, -14124($fp)
	lw $t1, 0($t0)
	sw $t1, -14128($fp)
	lw $t0, -14128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -14132($fp)
	li $t0, 4
	sw $t0, -14136($fp)
	li $t0, 4
	lw $t1, -14136($fp)
	mul $t0, $t0, $t1
	sw $t0, -14140($fp)
	lw $t0, -14140($fp)
	lw $t1, -14132($fp)
	add $t0, $t0, $t1
	sw $t0, -14144($fp)
	lw $t0, -14144($fp)
	lw $t1, 0($t0)
	sw $t1, -14148($fp)
	lw $t0, -14148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -14152($fp)
	li $t0, 5
	sw $t0, -14156($fp)
	li $t0, 4
	lw $t1, -14156($fp)
	mul $t0, $t0, $t1
	sw $t0, -14160($fp)
	lw $t0, -14160($fp)
	lw $t1, -14152($fp)
	add $t0, $t0, $t1
	sw $t0, -14164($fp)
	lw $t0, -14164($fp)
	lw $t1, 0($t0)
	sw $t1, -14168($fp)
	lw $t0, -14168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -14172($fp)
	li $t0, 6
	sw $t0, -14176($fp)
	li $t0, 4
	lw $t1, -14176($fp)
	mul $t0, $t0, $t1
	sw $t0, -14180($fp)
	lw $t0, -14180($fp)
	lw $t1, -14172($fp)
	add $t0, $t0, $t1
	sw $t0, -14184($fp)
	lw $t0, -14184($fp)
	lw $t1, 0($t0)
	sw $t1, -14188($fp)
	lw $t0, -14188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -14192($fp)
	lw $t0, -14192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -14196($fp)
	lw $t0, -14196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -14200($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -14220($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -14240($fp)
	li $t0, 1
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
	addi $t0, $fp, -116
	sw $t0, -14260($fp)
	li $t0, 2
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
	addi $t0, $fp, -116
	sw $t0, -14280($fp)
	li $t0, 3
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
	addi $t0, $fp, -116
	sw $t0, -14300($fp)
	li $t0, 4
	sw $t0, -14304($fp)
	li $t0, 4
	lw $t1, -14304($fp)
	mul $t0, $t0, $t1
	sw $t0, -14308($fp)
	lw $t0, -14308($fp)
	lw $t1, -14300($fp)
	add $t0, $t0, $t1
	sw $t0, -14312($fp)
	lw $t0, -14312($fp)
	lw $t1, 0($t0)
	sw $t1, -14316($fp)
	lw $t0, -14316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -14320($fp)
	li $t0, 5
	sw $t0, -14324($fp)
	li $t0, 4
	lw $t1, -14324($fp)
	mul $t0, $t0, $t1
	sw $t0, -14328($fp)
	lw $t0, -14328($fp)
	lw $t1, -14320($fp)
	add $t0, $t0, $t1
	sw $t0, -14332($fp)
	lw $t0, -14332($fp)
	lw $t1, 0($t0)
	sw $t1, -14336($fp)
	lw $t0, -14336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -14340($fp)
	li $t0, 6
	sw $t0, -14344($fp)
	li $t0, 4
	lw $t1, -14344($fp)
	mul $t0, $t0, $t1
	sw $t0, -14348($fp)
	lw $t0, -14348($fp)
	lw $t1, -14340($fp)
	add $t0, $t0, $t1
	sw $t0, -14352($fp)
	lw $t0, -14352($fp)
	lw $t1, 0($t0)
	sw $t1, -14356($fp)
	lw $t0, -14356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -14360($fp)
	li $t0, 7
	sw $t0, -14364($fp)
	li $t0, 4
	lw $t1, -14364($fp)
	mul $t0, $t0, $t1
	sw $t0, -14368($fp)
	lw $t0, -14368($fp)
	lw $t1, -14360($fp)
	add $t0, $t0, $t1
	sw $t0, -14372($fp)
	lw $t0, -14372($fp)
	lw $t1, 0($t0)
	sw $t1, -14376($fp)
	lw $t0, -14376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1244($fp)
	sw $t0, -14380($fp)
	lw $t0, -14380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1256($fp)
	sw $t0, -14384($fp)
	lw $t0, -14384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -14388($fp)
	lw $t0, -14388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -14392($fp)
	lw $t0, -14392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -14396($fp)
	lw $t0, -14396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -14400($fp)
	li $t0, 0
	sw $t0, -14404($fp)
	li $t0, 4
	lw $t1, -14404($fp)
	mul $t0, $t0, $t1
	sw $t0, -14408($fp)
	lw $t0, -14408($fp)
	lw $t1, -14400($fp)
	add $t0, $t0, $t1
	sw $t0, -14412($fp)
	lw $t0, -14412($fp)
	lw $t1, 0($t0)
	sw $t1, -14416($fp)
	lw $t0, -14416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -14420($fp)
	li $t0, 1
	sw $t0, -14424($fp)
	li $t0, 4
	lw $t1, -14424($fp)
	mul $t0, $t0, $t1
	sw $t0, -14428($fp)
	lw $t0, -14428($fp)
	lw $t1, -14420($fp)
	add $t0, $t0, $t1
	sw $t0, -14432($fp)
	lw $t0, -14432($fp)
	lw $t1, 0($t0)
	sw $t1, -14436($fp)
	lw $t0, -14436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -14440($fp)
	li $t0, 2
	sw $t0, -14444($fp)
	li $t0, 4
	lw $t1, -14444($fp)
	mul $t0, $t0, $t1
	sw $t0, -14448($fp)
	lw $t0, -14448($fp)
	lw $t1, -14440($fp)
	add $t0, $t0, $t1
	sw $t0, -14452($fp)
	lw $t0, -14452($fp)
	lw $t1, 0($t0)
	sw $t1, -14456($fp)
	lw $t0, -14456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -14460($fp)
	li $t0, 3
	sw $t0, -14464($fp)
	li $t0, 4
	lw $t1, -14464($fp)
	mul $t0, $t0, $t1
	sw $t0, -14468($fp)
	lw $t0, -14468($fp)
	lw $t1, -14460($fp)
	add $t0, $t0, $t1
	sw $t0, -14472($fp)
	lw $t0, -14472($fp)
	lw $t1, 0($t0)
	sw $t1, -14476($fp)
	lw $t0, -14476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1400($fp)
	sw $t0, -14480($fp)
	lw $t0, -14480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1412($fp)
	sw $t0, -14484($fp)
	lw $t0, -14484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -14488($fp)
	lw $t0, -14488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -14492($fp)
	lw $t0, -14492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -14496($fp)
	lw $t0, -14496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -14500($fp)
	lw $t0, -14500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -14504($fp)
	li $t0, 0
	sw $t0, -14508($fp)
	li $t0, 4
	lw $t1, -14508($fp)
	mul $t0, $t0, $t1
	sw $t0, -14512($fp)
	lw $t0, -14512($fp)
	lw $t1, -14504($fp)
	add $t0, $t0, $t1
	sw $t0, -14516($fp)
	lw $t0, -14516($fp)
	lw $t1, 0($t0)
	sw $t1, -14520($fp)
	lw $t0, -14520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -14524($fp)
	li $t0, 1
	sw $t0, -14528($fp)
	li $t0, 4
	lw $t1, -14528($fp)
	mul $t0, $t0, $t1
	sw $t0, -14532($fp)
	lw $t0, -14532($fp)
	lw $t1, -14524($fp)
	add $t0, $t0, $t1
	sw $t0, -14536($fp)
	lw $t0, -14536($fp)
	lw $t1, 0($t0)
	sw $t1, -14540($fp)
	lw $t0, -14540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -14544($fp)
	li $t0, 2
	sw $t0, -14548($fp)
	li $t0, 4
	lw $t1, -14548($fp)
	mul $t0, $t0, $t1
	sw $t0, -14552($fp)
	lw $t0, -14552($fp)
	lw $t1, -14544($fp)
	add $t0, $t0, $t1
	sw $t0, -14556($fp)
	lw $t0, -14556($fp)
	lw $t1, 0($t0)
	sw $t1, -14560($fp)
	lw $t0, -14560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -14564($fp)
	li $t0, 3
	sw $t0, -14568($fp)
	li $t0, 4
	lw $t1, -14568($fp)
	mul $t0, $t0, $t1
	sw $t0, -14572($fp)
	lw $t0, -14572($fp)
	lw $t1, -14564($fp)
	add $t0, $t0, $t1
	sw $t0, -14576($fp)
	lw $t0, -14576($fp)
	lw $t1, 0($t0)
	sw $t1, -14580($fp)
	lw $t0, -14580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -14584($fp)
	li $t0, 4
	sw $t0, -14588($fp)
	li $t0, 4
	lw $t1, -14588($fp)
	mul $t0, $t0, $t1
	sw $t0, -14592($fp)
	lw $t0, -14592($fp)
	lw $t1, -14584($fp)
	add $t0, $t0, $t1
	sw $t0, -14596($fp)
	lw $t0, -14596($fp)
	lw $t1, 0($t0)
	sw $t1, -14600($fp)
	lw $t0, -14600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -14604($fp)
	li $t0, 5
	sw $t0, -14608($fp)
	li $t0, 4
	lw $t1, -14608($fp)
	mul $t0, $t0, $t1
	sw $t0, -14612($fp)
	lw $t0, -14612($fp)
	lw $t1, -14604($fp)
	add $t0, $t0, $t1
	sw $t0, -14616($fp)
	lw $t0, -14616($fp)
	lw $t1, 0($t0)
	sw $t1, -14620($fp)
	lw $t0, -14620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -14624($fp)
	li $t0, 6
	sw $t0, -14628($fp)
	li $t0, 4
	lw $t1, -14628($fp)
	mul $t0, $t0, $t1
	sw $t0, -14632($fp)
	lw $t0, -14632($fp)
	lw $t1, -14624($fp)
	add $t0, $t0, $t1
	sw $t0, -14636($fp)
	lw $t0, -14636($fp)
	lw $t1, 0($t0)
	sw $t1, -14640($fp)
	lw $t0, -14640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -14644($fp)
	li $t0, 7
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
	addi $t0, $fp, -172
	sw $t0, -14664($fp)
	li $t0, 8
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
	addi $t0, $fp, -172
	sw $t0, -14684($fp)
	li $t0, 9
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
	lw $t0, -1712($fp)
	sw $t0, -14704($fp)
	lw $t0, -14704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -14708($fp)
	li $t0, 0
	sw $t0, -14712($fp)
	li $t0, 4
	lw $t1, -14712($fp)
	mul $t0, $t0, $t1
	sw $t0, -14716($fp)
	lw $t0, -14716($fp)
	lw $t1, -14708($fp)
	add $t0, $t0, $t1
	sw $t0, -14720($fp)
	lw $t0, -14720($fp)
	lw $t1, 0($t0)
	sw $t1, -14724($fp)
	lw $t0, -14724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -14728($fp)
	li $t0, 1
	sw $t0, -14732($fp)
	li $t0, 4
	lw $t1, -14732($fp)
	mul $t0, $t0, $t1
	sw $t0, -14736($fp)
	lw $t0, -14736($fp)
	lw $t1, -14728($fp)
	add $t0, $t0, $t1
	sw $t0, -14740($fp)
	lw $t0, -14740($fp)
	lw $t1, 0($t0)
	sw $t1, -14744($fp)
	lw $t0, -14744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -14748($fp)
	li $t0, 2
	sw $t0, -14752($fp)
	li $t0, 4
	lw $t1, -14752($fp)
	mul $t0, $t0, $t1
	sw $t0, -14756($fp)
	lw $t0, -14756($fp)
	lw $t1, -14748($fp)
	add $t0, $t0, $t1
	sw $t0, -14760($fp)
	lw $t0, -14760($fp)
	lw $t1, 0($t0)
	sw $t1, -14764($fp)
	lw $t0, -14764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -14768($fp)
	li $t0, 3
	sw $t0, -14772($fp)
	li $t0, 4
	lw $t1, -14772($fp)
	mul $t0, $t0, $t1
	sw $t0, -14776($fp)
	lw $t0, -14776($fp)
	lw $t1, -14768($fp)
	add $t0, $t0, $t1
	sw $t0, -14780($fp)
	lw $t0, -14780($fp)
	lw $t1, 0($t0)
	sw $t1, -14784($fp)
	lw $t0, -14784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -14788($fp)
	li $t0, 4
	sw $t0, -14792($fp)
	li $t0, 4
	lw $t1, -14792($fp)
	mul $t0, $t0, $t1
	sw $t0, -14796($fp)
	lw $t0, -14796($fp)
	lw $t1, -14788($fp)
	add $t0, $t0, $t1
	sw $t0, -14800($fp)
	lw $t0, -14800($fp)
	lw $t1, 0($t0)
	sw $t1, -14804($fp)
	lw $t0, -14804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1844($fp)
	sw $t0, -14808($fp)
	lw $t0, -14808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -14812($fp)
	lw $t0, -14812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1868($fp)
	sw $t0, -14816($fp)
	lw $t0, -14816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1880($fp)
	sw $t0, -14820($fp)
	lw $t0, -14820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1892($fp)
	sw $t0, -14824($fp)
	lw $t0, -14824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1904($fp)
	sw $t0, -14828($fp)
	lw $t0, -14828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1916($fp)
	sw $t0, -14832($fp)
	lw $t0, -14832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -14836($fp)
	lw $t0, -14836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1940($fp)
	sw $t0, -14840($fp)
	lw $t0, -14840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1952($fp)
	sw $t0, -14844($fp)
	lw $t0, -14844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1964($fp)
	sw $t0, -14848($fp)
	lw $t0, -14848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1976($fp)
	sw $t0, -14852($fp)
	lw $t0, -14852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1988($fp)
	sw $t0, -14856($fp)
	lw $t0, -14856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2000($fp)
	sw $t0, -14860($fp)
	lw $t0, -14860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2012($fp)
	sw $t0, -14864($fp)
	lw $t0, -14864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2024($fp)
	sw $t0, -14868($fp)
	lw $t0, -14868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2036($fp)
	sw $t0, -14872($fp)
	lw $t0, -14872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2048($fp)
	sw $t0, -14876($fp)
	lw $t0, -14876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
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
	addi $t0, $fp, -224
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
	addi $t0, $fp, -224
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
	addi $t0, $fp, -224
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
	addi $t0, $fp, -224
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
	addi $t0, $fp, -224
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
	addi $t0, $fp, -224
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
	addi $t0, $fp, -224
	sw $t0, -15020($fp)
	li $t0, 7
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
	lw $t0, -2252($fp)
	sw $t0, -15040($fp)
	lw $t0, -15040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2264($fp)
	sw $t0, -15044($fp)
	lw $t0, -15044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2276($fp)
	sw $t0, -15048($fp)
	lw $t0, -15048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2288($fp)
	sw $t0, -15052($fp)
	lw $t0, -15052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2300($fp)
	sw $t0, -15056($fp)
	lw $t0, -15056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15060($fp)
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -264
	sw $t0, -15100($fp)
	li $t0, 2
	sw $t0, -15104($fp)
	li $t0, 4
	lw $t1, -15104($fp)
	mul $t0, $t0, $t1
	sw $t0, -15108($fp)
	lw $t0, -15108($fp)
	lw $t1, -15100($fp)
	add $t0, $t0, $t1
	sw $t0, -15112($fp)
	lw $t0, -15112($fp)
	lw $t1, 0($t0)
	sw $t1, -15116($fp)
	lw $t0, -15116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15120($fp)
	li $t0, 3
	sw $t0, -15124($fp)
	li $t0, 4
	lw $t1, -15124($fp)
	mul $t0, $t0, $t1
	sw $t0, -15128($fp)
	lw $t0, -15128($fp)
	lw $t1, -15120($fp)
	add $t0, $t0, $t1
	sw $t0, -15132($fp)
	lw $t0, -15132($fp)
	lw $t1, 0($t0)
	sw $t1, -15136($fp)
	lw $t0, -15136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15140($fp)
	li $t0, 4
	sw $t0, -15144($fp)
	li $t0, 4
	lw $t1, -15144($fp)
	mul $t0, $t0, $t1
	sw $t0, -15148($fp)
	lw $t0, -15148($fp)
	lw $t1, -15140($fp)
	add $t0, $t0, $t1
	sw $t0, -15152($fp)
	lw $t0, -15152($fp)
	lw $t1, 0($t0)
	sw $t1, -15156($fp)
	lw $t0, -15156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15160($fp)
	li $t0, 5
	sw $t0, -15164($fp)
	li $t0, 4
	lw $t1, -15164($fp)
	mul $t0, $t0, $t1
	sw $t0, -15168($fp)
	lw $t0, -15168($fp)
	lw $t1, -15160($fp)
	add $t0, $t0, $t1
	sw $t0, -15172($fp)
	lw $t0, -15172($fp)
	lw $t1, 0($t0)
	sw $t1, -15176($fp)
	lw $t0, -15176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15180($fp)
	li $t0, 6
	sw $t0, -15184($fp)
	li $t0, 4
	lw $t1, -15184($fp)
	mul $t0, $t0, $t1
	sw $t0, -15188($fp)
	lw $t0, -15188($fp)
	lw $t1, -15180($fp)
	add $t0, $t0, $t1
	sw $t0, -15192($fp)
	lw $t0, -15192($fp)
	lw $t1, 0($t0)
	sw $t1, -15196($fp)
	lw $t0, -15196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15200($fp)
	li $t0, 7
	sw $t0, -15204($fp)
	li $t0, 4
	lw $t1, -15204($fp)
	mul $t0, $t0, $t1
	sw $t0, -15208($fp)
	lw $t0, -15208($fp)
	lw $t1, -15200($fp)
	add $t0, $t0, $t1
	sw $t0, -15212($fp)
	lw $t0, -15212($fp)
	lw $t1, 0($t0)
	sw $t1, -15216($fp)
	lw $t0, -15216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15220($fp)
	li $t0, 8
	sw $t0, -15224($fp)
	li $t0, 4
	lw $t1, -15224($fp)
	mul $t0, $t0, $t1
	sw $t0, -15228($fp)
	lw $t0, -15228($fp)
	lw $t1, -15220($fp)
	add $t0, $t0, $t1
	sw $t0, -15232($fp)
	lw $t0, -15232($fp)
	lw $t1, 0($t0)
	sw $t1, -15236($fp)
	lw $t0, -15236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -15240($fp)
	li $t0, 9
	sw $t0, -15244($fp)
	li $t0, 4
	lw $t1, -15244($fp)
	mul $t0, $t0, $t1
	sw $t0, -15248($fp)
	lw $t0, -15248($fp)
	lw $t1, -15240($fp)
	add $t0, $t0, $t1
	sw $t0, -15252($fp)
	lw $t0, -15252($fp)
	lw $t1, 0($t0)
	sw $t1, -15256($fp)
	lw $t0, -15256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2552($fp)
	sw $t0, -15260($fp)
	lw $t0, -15260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2564($fp)
	sw $t0, -15264($fp)
	lw $t0, -15264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2576($fp)
	sw $t0, -15268($fp)
	lw $t0, -15268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2588($fp)
	sw $t0, -15272($fp)
	lw $t0, -15272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2600($fp)
	sw $t0, -15276($fp)
	lw $t0, -15276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2612($fp)
	sw $t0, -15280($fp)
	lw $t0, -15280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2624($fp)
	sw $t0, -15284($fp)
	lw $t0, -15284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2636($fp)
	sw $t0, -15288($fp)
	lw $t0, -15288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2648($fp)
	sw $t0, -15292($fp)
	lw $t0, -15292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2660($fp)
	sw $t0, -15296($fp)
	lw $t0, -15296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2672($fp)
	sw $t0, -15300($fp)
	lw $t0, -15300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -15304($fp)
	li $t0, 0
	sw $t0, -15308($fp)
	li $t0, 4
	lw $t1, -15308($fp)
	mul $t0, $t0, $t1
	sw $t0, -15312($fp)
	lw $t0, -15312($fp)
	lw $t1, -15304($fp)
	add $t0, $t0, $t1
	sw $t0, -15316($fp)
	lw $t0, -15316($fp)
	lw $t1, 0($t0)
	sw $t1, -15320($fp)
	lw $t0, -15320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -15324($fp)
	li $t0, 1
	sw $t0, -15328($fp)
	li $t0, 4
	lw $t1, -15328($fp)
	mul $t0, $t0, $t1
	sw $t0, -15332($fp)
	lw $t0, -15332($fp)
	lw $t1, -15324($fp)
	add $t0, $t0, $t1
	sw $t0, -15336($fp)
	lw $t0, -15336($fp)
	lw $t1, 0($t0)
	sw $t1, -15340($fp)
	lw $t0, -15340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -15344($fp)
	li $t0, 2
	sw $t0, -15348($fp)
	li $t0, 4
	lw $t1, -15348($fp)
	mul $t0, $t0, $t1
	sw $t0, -15352($fp)
	lw $t0, -15352($fp)
	lw $t1, -15344($fp)
	add $t0, $t0, $t1
	sw $t0, -15356($fp)
	lw $t0, -15356($fp)
	lw $t1, 0($t0)
	sw $t1, -15360($fp)
	lw $t0, -15360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -15364($fp)
	li $t0, 3
	sw $t0, -15368($fp)
	li $t0, 4
	lw $t1, -15368($fp)
	mul $t0, $t0, $t1
	sw $t0, -15372($fp)
	lw $t0, -15372($fp)
	lw $t1, -15364($fp)
	add $t0, $t0, $t1
	sw $t0, -15376($fp)
	lw $t0, -15376($fp)
	lw $t1, 0($t0)
	sw $t1, -15380($fp)
	lw $t0, -15380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2780($fp)
	sw $t0, -15384($fp)
	lw $t0, -15384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2792($fp)
	sw $t0, -15388($fp)
	lw $t0, -15388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -15392($fp)
	li $t0, 0
	sw $t0, -15396($fp)
	li $t0, 4
	lw $t1, -15396($fp)
	mul $t0, $t0, $t1
	sw $t0, -15400($fp)
	lw $t0, -15400($fp)
	lw $t1, -15392($fp)
	add $t0, $t0, $t1
	sw $t0, -15404($fp)
	lw $t0, -15404($fp)
	lw $t1, 0($t0)
	sw $t1, -15408($fp)
	lw $t0, -15408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -15412($fp)
	li $t0, 0
	sw $t0, -15416($fp)
	li $t0, 4
	lw $t1, -15416($fp)
	mul $t0, $t0, $t1
	sw $t0, -15420($fp)
	lw $t0, -15420($fp)
	lw $t1, -15412($fp)
	add $t0, $t0, $t1
	sw $t0, -15424($fp)
	lw $t0, -15424($fp)
	lw $t1, 0($t0)
	sw $t1, -15428($fp)
	lw $t0, -15428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -15432($fp)
	li $t0, 1
	sw $t0, -15436($fp)
	li $t0, 4
	lw $t1, -15436($fp)
	mul $t0, $t0, $t1
	sw $t0, -15440($fp)
	lw $t0, -15440($fp)
	lw $t1, -15432($fp)
	add $t0, $t0, $t1
	sw $t0, -15444($fp)
	lw $t0, -15444($fp)
	lw $t1, 0($t0)
	sw $t1, -15448($fp)
	lw $t0, -15448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2876($fp)
	sw $t0, -15452($fp)
	lw $t0, -15452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2888($fp)
	sw $t0, -15456($fp)
	lw $t0, -15456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2900($fp)
	sw $t0, -15460($fp)
	lw $t0, -15460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15464($fp)
	li $t0, 0
	sw $t0, -15468($fp)
	li $t0, 4
	lw $t1, -15468($fp)
	mul $t0, $t0, $t1
	sw $t0, -15472($fp)
	lw $t0, -15472($fp)
	lw $t1, -15464($fp)
	add $t0, $t0, $t1
	sw $t0, -15476($fp)
	lw $t0, -15476($fp)
	lw $t1, 0($t0)
	sw $t1, -15480($fp)
	lw $t0, -15480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15484($fp)
	li $t0, 1
	sw $t0, -15488($fp)
	li $t0, 4
	lw $t1, -15488($fp)
	mul $t0, $t0, $t1
	sw $t0, -15492($fp)
	lw $t0, -15492($fp)
	lw $t1, -15484($fp)
	add $t0, $t0, $t1
	sw $t0, -15496($fp)
	lw $t0, -15496($fp)
	lw $t1, 0($t0)
	sw $t1, -15500($fp)
	lw $t0, -15500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15504($fp)
	li $t0, 2
	sw $t0, -15508($fp)
	li $t0, 4
	lw $t1, -15508($fp)
	mul $t0, $t0, $t1
	sw $t0, -15512($fp)
	lw $t0, -15512($fp)
	lw $t1, -15504($fp)
	add $t0, $t0, $t1
	sw $t0, -15516($fp)
	lw $t0, -15516($fp)
	lw $t1, 0($t0)
	sw $t1, -15520($fp)
	lw $t0, -15520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15524($fp)
	li $t0, 3
	sw $t0, -15528($fp)
	li $t0, 4
	lw $t1, -15528($fp)
	mul $t0, $t0, $t1
	sw $t0, -15532($fp)
	lw $t0, -15532($fp)
	lw $t1, -15524($fp)
	add $t0, $t0, $t1
	sw $t0, -15536($fp)
	lw $t0, -15536($fp)
	lw $t1, 0($t0)
	sw $t1, -15540($fp)
	lw $t0, -15540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15544($fp)
	li $t0, 4
	sw $t0, -15548($fp)
	li $t0, 4
	lw $t1, -15548($fp)
	mul $t0, $t0, $t1
	sw $t0, -15552($fp)
	lw $t0, -15552($fp)
	lw $t1, -15544($fp)
	add $t0, $t0, $t1
	sw $t0, -15556($fp)
	lw $t0, -15556($fp)
	lw $t1, 0($t0)
	sw $t1, -15560($fp)
	lw $t0, -15560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15564($fp)
	li $t0, 5
	sw $t0, -15568($fp)
	li $t0, 4
	lw $t1, -15568($fp)
	mul $t0, $t0, $t1
	sw $t0, -15572($fp)
	lw $t0, -15572($fp)
	lw $t1, -15564($fp)
	add $t0, $t0, $t1
	sw $t0, -15576($fp)
	lw $t0, -15576($fp)
	lw $t1, 0($t0)
	sw $t1, -15580($fp)
	lw $t0, -15580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15584($fp)
	li $t0, 6
	sw $t0, -15588($fp)
	li $t0, 4
	lw $t1, -15588($fp)
	mul $t0, $t0, $t1
	sw $t0, -15592($fp)
	lw $t0, -15592($fp)
	lw $t1, -15584($fp)
	add $t0, $t0, $t1
	sw $t0, -15596($fp)
	lw $t0, -15596($fp)
	lw $t1, 0($t0)
	sw $t1, -15600($fp)
	lw $t0, -15600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -15604($fp)
	li $t0, 7
	sw $t0, -15608($fp)
	li $t0, 4
	lw $t1, -15608($fp)
	mul $t0, $t0, $t1
	sw $t0, -15612($fp)
	lw $t0, -15612($fp)
	lw $t1, -15604($fp)
	add $t0, $t0, $t1
	sw $t0, -15616($fp)
	lw $t0, -15616($fp)
	lw $t1, 0($t0)
	sw $t1, -15620($fp)
	lw $t0, -15620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3104($fp)
	sw $t0, -15624($fp)
	lw $t0, -15624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3116($fp)
	sw $t0, -15628($fp)
	lw $t0, -15628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15632($fp)
	li $t0, 0
	sw $t0, -15636($fp)
	li $t0, 4
	lw $t1, -15636($fp)
	mul $t0, $t0, $t1
	sw $t0, -15640($fp)
	lw $t0, -15640($fp)
	lw $t1, -15632($fp)
	add $t0, $t0, $t1
	sw $t0, -15644($fp)
	lw $t0, -15644($fp)
	lw $t1, 0($t0)
	sw $t1, -15648($fp)
	lw $t0, -15648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15652($fp)
	li $t0, 1
	sw $t0, -15656($fp)
	li $t0, 4
	lw $t1, -15656($fp)
	mul $t0, $t0, $t1
	sw $t0, -15660($fp)
	lw $t0, -15660($fp)
	lw $t1, -15652($fp)
	add $t0, $t0, $t1
	sw $t0, -15664($fp)
	lw $t0, -15664($fp)
	lw $t1, 0($t0)
	sw $t1, -15668($fp)
	lw $t0, -15668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15672($fp)
	li $t0, 2
	sw $t0, -15676($fp)
	li $t0, 4
	lw $t1, -15676($fp)
	mul $t0, $t0, $t1
	sw $t0, -15680($fp)
	lw $t0, -15680($fp)
	lw $t1, -15672($fp)
	add $t0, $t0, $t1
	sw $t0, -15684($fp)
	lw $t0, -15684($fp)
	lw $t1, 0($t0)
	sw $t1, -15688($fp)
	lw $t0, -15688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15692($fp)
	li $t0, 3
	sw $t0, -15696($fp)
	li $t0, 4
	lw $t1, -15696($fp)
	mul $t0, $t0, $t1
	sw $t0, -15700($fp)
	lw $t0, -15700($fp)
	lw $t1, -15692($fp)
	add $t0, $t0, $t1
	sw $t0, -15704($fp)
	lw $t0, -15704($fp)
	lw $t1, 0($t0)
	sw $t1, -15708($fp)
	lw $t0, -15708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15712($fp)
	li $t0, 4
	sw $t0, -15716($fp)
	li $t0, 4
	lw $t1, -15716($fp)
	mul $t0, $t0, $t1
	sw $t0, -15720($fp)
	lw $t0, -15720($fp)
	lw $t1, -15712($fp)
	add $t0, $t0, $t1
	sw $t0, -15724($fp)
	lw $t0, -15724($fp)
	lw $t1, 0($t0)
	sw $t1, -15728($fp)
	lw $t0, -15728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15732($fp)
	li $t0, 5
	sw $t0, -15736($fp)
	li $t0, 4
	lw $t1, -15736($fp)
	mul $t0, $t0, $t1
	sw $t0, -15740($fp)
	lw $t0, -15740($fp)
	lw $t1, -15732($fp)
	add $t0, $t0, $t1
	sw $t0, -15744($fp)
	lw $t0, -15744($fp)
	lw $t1, 0($t0)
	sw $t1, -15748($fp)
	lw $t0, -15748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15752($fp)
	li $t0, 6
	sw $t0, -15756($fp)
	li $t0, 4
	lw $t1, -15756($fp)
	mul $t0, $t0, $t1
	sw $t0, -15760($fp)
	lw $t0, -15760($fp)
	lw $t1, -15752($fp)
	add $t0, $t0, $t1
	sw $t0, -15764($fp)
	lw $t0, -15764($fp)
	lw $t1, 0($t0)
	sw $t1, -15768($fp)
	lw $t0, -15768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15772($fp)
	li $t0, 7
	sw $t0, -15776($fp)
	li $t0, 4
	lw $t1, -15776($fp)
	mul $t0, $t0, $t1
	sw $t0, -15780($fp)
	lw $t0, -15780($fp)
	lw $t1, -15772($fp)
	add $t0, $t0, $t1
	sw $t0, -15784($fp)
	lw $t0, -15784($fp)
	lw $t1, 0($t0)
	sw $t1, -15788($fp)
	lw $t0, -15788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15792($fp)
	li $t0, 8
	sw $t0, -15796($fp)
	li $t0, 4
	lw $t1, -15796($fp)
	mul $t0, $t0, $t1
	sw $t0, -15800($fp)
	lw $t0, -15800($fp)
	lw $t1, -15792($fp)
	add $t0, $t0, $t1
	sw $t0, -15804($fp)
	lw $t0, -15804($fp)
	lw $t1, 0($t0)
	sw $t1, -15808($fp)
	lw $t0, -15808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -15812($fp)
	li $t0, 9
	sw $t0, -15816($fp)
	li $t0, 4
	lw $t1, -15816($fp)
	mul $t0, $t0, $t1
	sw $t0, -15820($fp)
	lw $t0, -15820($fp)
	lw $t1, -15812($fp)
	add $t0, $t0, $t1
	sw $t0, -15824($fp)
	lw $t0, -15824($fp)
	lw $t1, 0($t0)
	sw $t1, -15828($fp)
	lw $t0, -15828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -15832($fp)
	li $t0, 0
	sw $t0, -15836($fp)
	li $t0, 4
	lw $t1, -15836($fp)
	mul $t0, $t0, $t1
	sw $t0, -15840($fp)
	lw $t0, -15840($fp)
	lw $t1, -15832($fp)
	add $t0, $t0, $t1
	sw $t0, -15844($fp)
	lw $t0, -15844($fp)
	lw $t1, 0($t0)
	sw $t1, -15848($fp)
	lw $t0, -15848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -15852($fp)
	li $t0, 1
	sw $t0, -15856($fp)
	li $t0, 4
	lw $t1, -15856($fp)
	mul $t0, $t0, $t1
	sw $t0, -15860($fp)
	lw $t0, -15860($fp)
	lw $t1, -15852($fp)
	add $t0, $t0, $t1
	sw $t0, -15864($fp)
	lw $t0, -15864($fp)
	lw $t1, 0($t0)
	sw $t1, -15868($fp)
	lw $t0, -15868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3416($fp)
	sw $t0, -15872($fp)
	lw $t0, -15872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -15876($fp)
	li $t0, 0
	sw $t0, -15880($fp)
	li $t0, 4
	lw $t1, -15880($fp)
	mul $t0, $t0, $t1
	sw $t0, -15884($fp)
	lw $t0, -15884($fp)
	lw $t1, -15876($fp)
	add $t0, $t0, $t1
	sw $t0, -15888($fp)
	lw $t0, -15888($fp)
	lw $t1, 0($t0)
	sw $t1, -15892($fp)
	lw $t0, -15892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -15896($fp)
	li $t0, 1
	sw $t0, -15900($fp)
	li $t0, 4
	lw $t1, -15900($fp)
	mul $t0, $t0, $t1
	sw $t0, -15904($fp)
	lw $t0, -15904($fp)
	lw $t1, -15896($fp)
	add $t0, $t0, $t1
	sw $t0, -15908($fp)
	lw $t0, -15908($fp)
	lw $t1, 0($t0)
	sw $t1, -15912($fp)
	lw $t0, -15912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -15916($fp)
	li $t0, 2
	sw $t0, -15920($fp)
	li $t0, 4
	lw $t1, -15920($fp)
	mul $t0, $t0, $t1
	sw $t0, -15924($fp)
	lw $t0, -15924($fp)
	lw $t1, -15916($fp)
	add $t0, $t0, $t1
	sw $t0, -15928($fp)
	lw $t0, -15928($fp)
	lw $t1, 0($t0)
	sw $t1, -15932($fp)
	lw $t0, -15932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -15936($fp)
	li $t0, 3
	sw $t0, -15940($fp)
	li $t0, 4
	lw $t1, -15940($fp)
	mul $t0, $t0, $t1
	sw $t0, -15944($fp)
	lw $t0, -15944($fp)
	lw $t1, -15936($fp)
	add $t0, $t0, $t1
	sw $t0, -15948($fp)
	lw $t0, -15948($fp)
	lw $t1, 0($t0)
	sw $t1, -15952($fp)
	lw $t0, -15952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3524($fp)
	sw $t0, -15956($fp)
	lw $t0, -15956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -15960($fp)
	li $t0, 0
	sw $t0, -15964($fp)
	li $t0, 4
	lw $t1, -15964($fp)
	mul $t0, $t0, $t1
	sw $t0, -15968($fp)
	lw $t0, -15968($fp)
	lw $t1, -15960($fp)
	add $t0, $t0, $t1
	sw $t0, -15972($fp)
	lw $t0, -15972($fp)
	lw $t1, 0($t0)
	sw $t1, -15976($fp)
	lw $t0, -15976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -396
	sw $t0, -15980($fp)
	li $t0, 1
	sw $t0, -15984($fp)
	li $t0, 4
	lw $t1, -15984($fp)
	mul $t0, $t0, $t1
	sw $t0, -15988($fp)
	lw $t0, -15988($fp)
	lw $t1, -15980($fp)
	add $t0, $t0, $t1
	sw $t0, -15992($fp)
	lw $t0, -15992($fp)
	lw $t1, 0($t0)
	sw $t1, -15996($fp)
	lw $t0, -15996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -404
	sw $t0, -16000($fp)
	li $t0, 0
	sw $t0, -16004($fp)
	li $t0, 4
	lw $t1, -16004($fp)
	mul $t0, $t0, $t1
	sw $t0, -16008($fp)
	lw $t0, -16008($fp)
	lw $t1, -16000($fp)
	add $t0, $t0, $t1
	sw $t0, -16012($fp)
	lw $t0, -16012($fp)
	lw $t1, 0($t0)
	sw $t1, -16016($fp)
	lw $t0, -16016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -404
	sw $t0, -16020($fp)
	li $t0, 1
	sw $t0, -16024($fp)
	li $t0, 4
	lw $t1, -16024($fp)
	mul $t0, $t0, $t1
	sw $t0, -16028($fp)
	lw $t0, -16028($fp)
	lw $t1, -16020($fp)
	add $t0, $t0, $t1
	sw $t0, -16032($fp)
	lw $t0, -16032($fp)
	lw $t1, 0($t0)
	sw $t1, -16036($fp)
	lw $t0, -16036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -16040($fp)
	li $t0, 0
	sw $t0, -16044($fp)
	li $t0, 4
	lw $t1, -16044($fp)
	mul $t0, $t0, $t1
	sw $t0, -16048($fp)
	lw $t0, -16048($fp)
	lw $t1, -16040($fp)
	add $t0, $t0, $t1
	sw $t0, -16052($fp)
	lw $t0, -16052($fp)
	lw $t1, 0($t0)
	sw $t1, -16056($fp)
	lw $t0, -16056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -16060($fp)
	li $t0, 1
	sw $t0, -16064($fp)
	li $t0, 4
	lw $t1, -16064($fp)
	mul $t0, $t0, $t1
	sw $t0, -16068($fp)
	lw $t0, -16068($fp)
	lw $t1, -16060($fp)
	add $t0, $t0, $t1
	sw $t0, -16072($fp)
	lw $t0, -16072($fp)
	lw $t1, 0($t0)
	sw $t1, -16076($fp)
	lw $t0, -16076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3680($fp)
	sw $t0, -16080($fp)
	lw $t0, -16080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3692($fp)
	sw $t0, -16084($fp)
	lw $t0, -16084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3704($fp)
	sw $t0, -16088($fp)
	lw $t0, -16088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3716($fp)
	sw $t0, -16092($fp)
	lw $t0, -16092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -416
	sw $t0, -16096($fp)
	li $t0, 0
	sw $t0, -16100($fp)
	li $t0, 4
	lw $t1, -16100($fp)
	mul $t0, $t0, $t1
	sw $t0, -16104($fp)
	lw $t0, -16104($fp)
	lw $t1, -16096($fp)
	add $t0, $t0, $t1
	sw $t0, -16108($fp)
	lw $t0, -16108($fp)
	lw $t1, 0($t0)
	sw $t1, -16112($fp)
	lw $t0, -16112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3752($fp)
	sw $t0, -16116($fp)
	lw $t0, -16116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3764($fp)
	sw $t0, -16120($fp)
	lw $t0, -16120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16124($fp)
	li $t0, 0
	sw $t0, -16128($fp)
	li $t0, 4
	lw $t1, -16128($fp)
	mul $t0, $t0, $t1
	sw $t0, -16132($fp)
	lw $t0, -16132($fp)
	lw $t1, -16124($fp)
	add $t0, $t0, $t1
	sw $t0, -16136($fp)
	lw $t0, -16136($fp)
	lw $t1, 0($t0)
	sw $t1, -16140($fp)
	lw $t0, -16140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16144($fp)
	li $t0, 1
	sw $t0, -16148($fp)
	li $t0, 4
	lw $t1, -16148($fp)
	mul $t0, $t0, $t1
	sw $t0, -16152($fp)
	lw $t0, -16152($fp)
	lw $t1, -16144($fp)
	add $t0, $t0, $t1
	sw $t0, -16156($fp)
	lw $t0, -16156($fp)
	lw $t1, 0($t0)
	sw $t1, -16160($fp)
	lw $t0, -16160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16164($fp)
	li $t0, 2
	sw $t0, -16168($fp)
	li $t0, 4
	lw $t1, -16168($fp)
	mul $t0, $t0, $t1
	sw $t0, -16172($fp)
	lw $t0, -16172($fp)
	lw $t1, -16164($fp)
	add $t0, $t0, $t1
	sw $t0, -16176($fp)
	lw $t0, -16176($fp)
	lw $t1, 0($t0)
	sw $t1, -16180($fp)
	lw $t0, -16180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16184($fp)
	li $t0, 3
	sw $t0, -16188($fp)
	li $t0, 4
	lw $t1, -16188($fp)
	mul $t0, $t0, $t1
	sw $t0, -16192($fp)
	lw $t0, -16192($fp)
	lw $t1, -16184($fp)
	add $t0, $t0, $t1
	sw $t0, -16196($fp)
	lw $t0, -16196($fp)
	lw $t1, 0($t0)
	sw $t1, -16200($fp)
	lw $t0, -16200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16204($fp)
	li $t0, 4
	sw $t0, -16208($fp)
	li $t0, 4
	lw $t1, -16208($fp)
	mul $t0, $t0, $t1
	sw $t0, -16212($fp)
	lw $t0, -16212($fp)
	lw $t1, -16204($fp)
	add $t0, $t0, $t1
	sw $t0, -16216($fp)
	lw $t0, -16216($fp)
	lw $t1, 0($t0)
	sw $t1, -16220($fp)
	lw $t0, -16220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16224($fp)
	li $t0, 5
	sw $t0, -16228($fp)
	li $t0, 4
	lw $t1, -16228($fp)
	mul $t0, $t0, $t1
	sw $t0, -16232($fp)
	lw $t0, -16232($fp)
	lw $t1, -16224($fp)
	add $t0, $t0, $t1
	sw $t0, -16236($fp)
	lw $t0, -16236($fp)
	lw $t1, 0($t0)
	sw $t1, -16240($fp)
	lw $t0, -16240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16244($fp)
	li $t0, 6
	sw $t0, -16248($fp)
	li $t0, 4
	lw $t1, -16248($fp)
	mul $t0, $t0, $t1
	sw $t0, -16252($fp)
	lw $t0, -16252($fp)
	lw $t1, -16244($fp)
	add $t0, $t0, $t1
	sw $t0, -16256($fp)
	lw $t0, -16256($fp)
	lw $t1, 0($t0)
	sw $t1, -16260($fp)
	lw $t0, -16260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16264($fp)
	li $t0, 7
	sw $t0, -16268($fp)
	li $t0, 4
	lw $t1, -16268($fp)
	mul $t0, $t0, $t1
	sw $t0, -16272($fp)
	lw $t0, -16272($fp)
	lw $t1, -16264($fp)
	add $t0, $t0, $t1
	sw $t0, -16276($fp)
	lw $t0, -16276($fp)
	lw $t1, 0($t0)
	sw $t1, -16280($fp)
	lw $t0, -16280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16284($fp)
	li $t0, 8
	sw $t0, -16288($fp)
	li $t0, 4
	lw $t1, -16288($fp)
	mul $t0, $t0, $t1
	sw $t0, -16292($fp)
	lw $t0, -16292($fp)
	lw $t1, -16284($fp)
	add $t0, $t0, $t1
	sw $t0, -16296($fp)
	lw $t0, -16296($fp)
	lw $t1, 0($t0)
	sw $t1, -16300($fp)
	lw $t0, -16300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -16304($fp)
	li $t0, 9
	sw $t0, -16308($fp)
	li $t0, 4
	lw $t1, -16308($fp)
	mul $t0, $t0, $t1
	sw $t0, -16312($fp)
	lw $t0, -16312($fp)
	lw $t1, -16304($fp)
	add $t0, $t0, $t1
	sw $t0, -16316($fp)
	lw $t0, -16316($fp)
	lw $t1, 0($t0)
	sw $t1, -16320($fp)
	lw $t0, -16320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4016($fp)
	sw $t0, -16324($fp)
	lw $t0, -16324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4028($fp)
	sw $t0, -16328($fp)
	lw $t0, -16328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4040($fp)
	sw $t0, -16332($fp)
	lw $t0, -16332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4052($fp)
	sw $t0, -16336($fp)
	lw $t0, -16336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -16340($fp)
	lw $t0, -2588($fp)
	sw $t0, -16344($fp)
	li $t0, 0
	lw $t1, -16344($fp)
	sub $t0, $t0, $t1
	sw $t0, -16348($fp)
	lw $t0, -2600($fp)
	sw $t0, -16352($fp)
	li $t0, 47794
	sw $t0, -16356($fp)
	lw $t0, -16352($fp)
	lw $t1, -16356($fp)
	add $t0, $t0, $t1
	sw $t0, -16360($fp)
	li $t0, 12678
	sw $t0, -16364($fp)
	lw $t0, -16360($fp)
	lw $t1, -16364($fp)
	sub $t0, $t0, $t1
	sw $t0, -16368($fp)
	lw $t1, -16348($fp)
	lw $t2, -16368($fp)
	bgt $t1, $t2, label811
	j label810
label811:
	li $t0, 42749
	sw $t0, -16372($fp)
	lw $t1, -16372($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -16340($fp)
label810:
	lw $ra, -4($fp)
	lw $v0, -16340($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -52
	li $t0, 8281
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 14053
	sw $t0, -20($fp)
	li $t0, 55204
	sw $t0, -24($fp)
	li $t0, 44451
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -28($fp)
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	sw $t0, -44($fp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -48($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 12707
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
