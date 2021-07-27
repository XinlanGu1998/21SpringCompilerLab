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
	addi $sp, $sp, -608
	li $t0, 9625
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 11911
	sw $t0, -56($fp)
	addi $t0, $fp, -40
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
	li $t0, 22901
	sw $t0, -80($fp)
	addi $t0, $fp, -40
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
	li $t0, 21263
	sw $t0, -104($fp)
	addi $t0, $fp, -40
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
	li $t0, 7263
	sw $t0, -128($fp)
	addi $t0, $fp, -40
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
	li $t0, 38699
	sw $t0, -152($fp)
	addi $t0, $fp, -40
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
	li $t0, 48995
	sw $t0, -176($fp)
	addi $t0, $fp, -40
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
	li $t0, 62659
	sw $t0, -200($fp)
	addi $t0, $fp, -40
	sw $t0, -204($fp)
	li $t0, 6
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
	li $t0, 27280
	sw $t0, -224($fp)
	addi $t0, $fp, -40
	sw $t0, -228($fp)
	li $t0, 7
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
	li $t0, 20763
	sw $t0, -248($fp)
	addi $t0, $fp, -40
	sw $t0, -252($fp)
	li $t0, 8
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
	li $t0, 11761
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 61003
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 0
	sw $t0, -296($fp)
	lw $t0, -276($fp)
	sw $t0, -300($fp)
	lw $t1, -300($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -296($fp)
label122:
	addi $t0, $fp, -40
	sw $t0, -304($fp)
	li $t0, 0
	sw $t0, -308($fp)
	lw $t0, -48($fp)
	sw $t0, -312($fp)
	lw $t0, -276($fp)
	sw $t0, -316($fp)
	lw $t1, -312($fp)
	lw $t2, -316($fp)
	beq $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -308($fp)
label124:
	li $t0, 4
	lw $t1, -308($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, 0($t0)
	sw $t1, -328($fp)
	lw $t0, -296($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	li $t0, 58965
	sw $t0, -336($fp)
	addi $t0, $fp, -40
	sw $t0, -340($fp)
	lw $t0, -288($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -348($fp)
	li $t0, 4
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	lw $t1, 0($t0)
	sw $t1, -360($fp)
	lw $t0, -336($fp)
	lw $t1, -360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -364($fp)
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -288($fp)
	sw $t0, -372($fp)
	li $t0, 0
	lw $t1, -372($fp)
	sub $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -368($fp)
label126:
	lw $t0, -48($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -384($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -404($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -424($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -444($fp)
	li $t0, 3
	sw $t0, -448($fp)
	li $t0, 4
	lw $t1, -448($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	lw $t0, -460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -464($fp)
	li $t0, 4
	sw $t0, -468($fp)
	li $t0, 4
	lw $t1, -468($fp)
	mul $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	lw $t1, -464($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	lw $t1, 0($t0)
	sw $t1, -480($fp)
	lw $t0, -480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -484($fp)
	li $t0, 5
	sw $t0, -488($fp)
	li $t0, 4
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	lw $t1, -484($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t1, 0($t0)
	sw $t1, -500($fp)
	lw $t0, -500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -504($fp)
	li $t0, 6
	sw $t0, -508($fp)
	li $t0, 4
	lw $t1, -508($fp)
	mul $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	lw $t1, 0($t0)
	sw $t1, -520($fp)
	lw $t0, -520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -524($fp)
	li $t0, 7
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
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -544($fp)
	li $t0, 8
	sw $t0, -548($fp)
	li $t0, 4
	lw $t1, -548($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, -544($fp)
	add $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	lw $t1, 0($t0)
	sw $t1, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -572($fp)
	jal f6
	sw $v0, -576($fp)
	addi $sp, $sp, 4
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label130
label130:
	li $t0, 6662
	sw $t0, -580($fp)
	lw $t0, -48($fp)
	sw $t0, -584($fp)
	lw $t0, -580($fp)
	lw $t1, -584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -588($fp)
	lw $t1, -588($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label129
label129:
	li $t0, 0
	sw $t0, -592($fp)
	lw $t0, -288($fp)
	sw $t0, -596($fp)
	lw $t0, -288($fp)
	sw $t0, -600($fp)
	lw $t1, -596($fp)
	lw $t2, -600($fp)
	ble $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -592($fp)
label132:
	li $t0, 12699
	sw $t0, -604($fp)
	li $t0, 45798
	sw $t0, -608($fp)
	lw $t0, -604($fp)
	lw $t1, -608($fp)
	sub $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t1, -592($fp)
	lw $t2, -612($fp)
	beq $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -572($fp)
label128:
	lw $ra, -4($fp)
	lw $v0, -572($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2876
	li $t0, 54189
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 41922
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 13000
	sw $t0, -84($fp)
	addi $t0, $fp, -24
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
	li $t0, 58247
	sw $t0, -108($fp)
	addi $t0, $fp, -24
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
	li $t0, 36240
	sw $t0, -132($fp)
	addi $t0, $fp, -24
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
	li $t0, 1156
	sw $t0, -156($fp)
	addi $t0, $fp, -24
	sw $t0, -160($fp)
	li $t0, 3
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
	li $t0, 9104
	sw $t0, -180($fp)
	addi $t0, $fp, -24
	sw $t0, -184($fp)
	li $t0, 4
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
	li $t0, 15034
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 53165
	sw $t0, -216($fp)
	addi $t0, $fp, -44
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
	li $t0, 42705
	sw $t0, -240($fp)
	addi $t0, $fp, -44
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
	li $t0, 54997
	sw $t0, -264($fp)
	addi $t0, $fp, -44
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
	li $t0, 65264
	sw $t0, -288($fp)
	addi $t0, $fp, -44
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
	li $t0, 19940
	sw $t0, -312($fp)
	addi $t0, $fp, -44
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
	li $t0, 53298
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 4204
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 29565
	sw $t0, -360($fp)
	addi $t0, $fp, -56
	sw $t0, -364($fp)
	li $t0, 0
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
	li $t0, 65209
	sw $t0, -384($fp)
	addi $t0, $fp, -56
	sw $t0, -388($fp)
	li $t0, 1
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
	li $t0, 27105
	sw $t0, -408($fp)
	addi $t0, $fp, -56
	sw $t0, -412($fp)
	li $t0, 2
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
	li $t0, 50828
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 6936
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 269
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 34287
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -64($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -488($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -508($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -528($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -548($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -568($fp)
	li $t0, 4
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
	lw $t0, -208($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -612($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -632($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -652($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -672($fp)
	li $t0, 4
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
	lw $t0, -340($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -700($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -720($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -740($fp)
	li $t0, 2
	sw $t0, -744($fp)
	li $t0, 4
	lw $t1, -744($fp)
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	lw $t1, -740($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	lw $t1, 0($t0)
	sw $t1, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -776($fp)
	lw $t0, -460($fp)
	sw $t0, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	lw $t0, -436($fp)
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -784($fp)
label137:
	lw $t0, -780($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label135
label135:
	li $t0, 4059
	sw $t0, -796($fp)
	lw $t0, -352($fp)
	sw $t0, -800($fp)
	lw $t0, -796($fp)
	lw $t1, -800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -804($fp)
	li $t0, 27549
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -812($fp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -816($fp)
	addi $sp, $sp, 8
	lw $t1, -804($fp)
	lw $t2, -816($fp)
	beq $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -776($fp)
label134:
	lw $ra, -4($fp)
	lw $v0, -776($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 55051
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 15820
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 23016
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
label138:
	li $t0, 0
	sw $t0, -856($fp)
	li $t0, 48480
	sw $t0, -860($fp)
	lw $t1, -860($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label141:
	li $t0, 1
	sw $t0, -856($fp)
label142:
	li $t0, 0
	sw $t0, -864($fp)
	li $t0, 22483
	sw $t0, -868($fp)
	lw $t0, -836($fp)
	sw $t0, -872($fp)
	lw $t1, -868($fp)
	lw $t2, -872($fp)
	beq $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -864($fp)
label144:
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -876($fp)
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	lw $t1, -876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -880($fp)
	lw $t1, -880($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
label145:
	addi $t0, $fp, -56
	sw $t0, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	li $t0, 35715
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label150
label150:
	lw $t0, -64($fp)
	sw $t0, -896($fp)
	lw $t1, -896($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -888($fp)
label149:
	li $t0, 4
	lw $t1, -888($fp)
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, 0($t0)
	sw $t1, -908($fp)
	li $t0, 0
	sw $t0, -912($fp)
	addi $t0, $fp, -56
	sw $t0, -916($fp)
	lw $t0, -436($fp)
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
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label151
label151:
	li $t0, 1
	sw $t0, -912($fp)
label152:
	lw $t0, -908($fp)
	lw $t1, -912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 28742
	sw $t0, -940($fp)
	jal f6
	sw $v0, -944($fp)
	addi $sp, $sp, 4
	lw $t0, 4($fp)
	sw $t0, -948($fp)
	li $t0, 11136
	sw $t0, -952($fp)
	lw $t0, -948($fp)
	lw $t1, -952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -956($fp)
	li $t0, 12102
	sw $t0, -960($fp)
	li $t0, 0
	lw $t1, -960($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 41742
	sw $t0, -972($fp)
	li $t0, 0
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label153:
	li $t0, 1
	sw $t0, -968($fp)
label154:
	li $t0, 0
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -964($fp)
	lw $t1, -980($fp)
	sub $t0, $t0, $t1
	sw $t0, -984($fp)
	jal f6
	sw $v0, -988($fp)
	addi $sp, $sp, 4
	j label145
label147:
	j label138
label140:
	jal f6
	sw $v0, -992($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -992($fp)
	sub $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t1, -996($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
label158:
	addi $t0, $fp, -24
	sw $t0, -1000($fp)
	li $t0, 0
	sw $t0, -1004($fp)
	li $t0, 0
	sw $t0, -1008($fp)
	li $t0, 3847
	sw $t0, -1012($fp)
	li $t0, 48342
	sw $t0, -1016($fp)
	lw $t1, -1012($fp)
	lw $t2, -1016($fp)
	bge $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -1008($fp)
label164:
	lw $t0, -848($fp)
	sw $t0, -1020($fp)
	lw $t1, -1008($fp)
	lw $t2, -1020($fp)
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -1004($fp)
label162:
	li $t0, 4
	lw $t1, -1004($fp)
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	lw $t1, 0($t0)
	sw $t1, -1032($fp)
	li $t0, 42898
	sw $t0, -1036($fp)
	lw $t0, -1032($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
label165:
	li $t0, 12951
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 63376
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 0
	sw $t0, -1060($fp)
	addi $t0, $fp, -44
	sw $t0, -1064($fp)
	li $t0, 0
	sw $t0, -1068($fp)
	lw $t0, -340($fp)
	sw $t0, -1072($fp)
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -1068($fp)
label171:
	li $t0, 4
	lw $t1, -1068($fp)
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label168
label168:
	li $t0, 1
	sw $t0, -1060($fp)
label169:
	li $t0, 30527
	sw $t0, -1088($fp)
	lw $t0, -1060($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1052($fp)
	sw $t0, -1096($fp)
	li $t0, 55656
	sw $t0, -1100($fp)
	lw $t0, -208($fp)
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1096($fp)
	lw $t1, -1108($fp)
	sub $t0, $t0, $t1
	sw $t0, -1112($fp)
	j label165
label167:
label172:
	jal f6
	sw $v0, -1116($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	li $t0, 52838
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	sub $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t1, -1128($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 30256
	sw $t0, -1132($fp)
	lw $t1, -1132($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 0
	sw $t0, -1136($fp)
	li $t0, 10060
	sw $t0, -1140($fp)
	lw $t1, -1140($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
	li $t0, 1
	sw $t0, -1136($fp)
label179:
	li $t0, 0
	sw $t0, -1144($fp)
	jal f6
	sw $v0, -1148($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1148($fp)
	sub $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label180:
	li $t0, 1
	sw $t0, -1144($fp)
label181:
	lw $t0, -1136($fp)
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	j label177
label176:
	jal f6
	sw $v0, -1160($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1164($fp)
	lw $t0, -76($fp)
	sw $t0, -1168($fp)
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -1164($fp)
label183:
	lw $t0, -1160($fp)
	lw $t1, -1164($fp)
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	li $t0, 0
	lw $t1, -1172($fp)
	sub $t0, $t0, $t1
	sw $t0, -1176($fp)
label177:
	j label172
label174:
	j label158
label160:
label156:
	li $t0, 40600
	sw $t0, -1180($fp)
	li $t0, 34460
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	li $t0, 0
	lw $t1, -1188($fp)
	sub $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -208($fp)
	sw $t0, -1196($fp)
	lw $t0, -436($fp)
	sw $t0, -1200($fp)
	lw $t0, -1196($fp)
	lw $t1, -1200($fp)
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	li $t0, 0
	lw $t1, -1204($fp)
	sub $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1192($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	jal f6
	sw $v0, -1216($fp)
	addi $sp, $sp, 4
	lw $t0, -1212($fp)
	lw $t1, -1216($fp)
	sub $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 39626
	sw $t0, -1224($fp)
	j label186
label185:
	li $t0, 0
	sw $t0, -1228($fp)
	li $t0, 40273
	sw $t0, -1232($fp)
	li $t0, 0
	lw $t1, -1232($fp)
	sub $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, 4($fp)
	sw $t0, -1240($fp)
	lw $t0, -1236($fp)
	lw $t1, -1240($fp)
	sub $t0, $t0, $t1
	sw $t0, -1244($fp)
	li $t0, 61566
	sw $t0, -1248($fp)
	lw $t1, -1244($fp)
	lw $t2, -1248($fp)
	bge $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -1228($fp)
label188:
	lw $t0, -1228($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -1252($fp)
	lw $ra, -4($fp)
	lw $v0, -1252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label186:
	li $t0, 0
	sw $t0, -1256($fp)
	li $t0, 0
	sw $t0, -1260($fp)
	addi $t0, $fp, -56
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	lw $t0, -208($fp)
	sw $t0, -1272($fp)
	lw $t0, -340($fp)
	sw $t0, -1276($fp)
	lw $t1, -1272($fp)
	lw $t2, -1276($fp)
	beq $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1268($fp)
label194:
	li $t0, 4
	lw $t1, -1268($fp)
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t1, -1264($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	lw $t1, 0($t0)
	sw $t1, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label191:
	li $t0, 1
	sw $t0, -1260($fp)
label192:
	addi $t0, $fp, -56
	sw $t0, -1292($fp)
	li $t0, 0
	sw $t0, -1296($fp)
	lw $t0, -436($fp)
	sw $t0, -1300($fp)
	lw $t1, -1300($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label197
label197:
	li $t0, 24918
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -1296($fp)
label196:
	li $t0, 4
	lw $t1, -1296($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	lw $t1, -1260($fp)
	lw $t2, -1316($fp)
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -1256($fp)
label190:
	li $t0, 47210
	sw $t0, -1320($fp)
	li $t0, 0
	lw $t1, -1320($fp)
	sub $t0, $t0, $t1
	sw $t0, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	addi $t0, $fp, -24
	sw $t0, -1332($fp)
	lw $t0, -352($fp)
	sw $t0, -1336($fp)
	li $t0, 4
	lw $t1, -1336($fp)
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	lw $t1, -1332($fp)
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	lw $t1, 0($t0)
	sw $t1, -1348($fp)
	lw $t1, -1348($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label201:
	li $t0, 1
	sw $t0, -1328($fp)
label202:
	lw $t0, -1324($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -340($fp)
	sw $t0, -1356($fp)
	lw $t0, -1352($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
	addi $t0, $fp, -44
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
label199:
	li $t0, 51269
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 23848
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	li $t0, 48721
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 1554
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 46864
	sw $t0, -1456($fp)
	addi $t0, $fp, -1388
	sw $t0, -1460($fp)
	li $t0, 0
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1460($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1456($fp)
	lw $t1, -1472($fp)
	sw $t0, 0($t1)
	lw $t0, -1472($fp)
	lw $t1, 0($t0)
	sw $t1, -1476($fp)
	li $t0, 31665
	sw $t0, -1480($fp)
	addi $t0, $fp, -1388
	sw $t0, -1484($fp)
	li $t0, 1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1484($fp)
	lw $t1, -1492($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1480($fp)
	lw $t1, -1496($fp)
	sw $t0, 0($t1)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	li $t0, 24037
	sw $t0, -1504($fp)
	addi $t0, $fp, -1404
	sw $t0, -1508($fp)
	li $t0, 0
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1508($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1504($fp)
	lw $t1, -1520($fp)
	sw $t0, 0($t1)
	lw $t0, -1520($fp)
	lw $t1, 0($t0)
	sw $t1, -1524($fp)
	li $t0, 17044
	sw $t0, -1528($fp)
	addi $t0, $fp, -1404
	sw $t0, -1532($fp)
	li $t0, 1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1532($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1528($fp)
	lw $t1, -1544($fp)
	sw $t0, 0($t1)
	lw $t0, -1544($fp)
	lw $t1, 0($t0)
	sw $t1, -1548($fp)
	li $t0, 60407
	sw $t0, -1552($fp)
	addi $t0, $fp, -1404
	sw $t0, -1556($fp)
	li $t0, 2
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1556($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1552($fp)
	lw $t1, -1568($fp)
	sw $t0, 0($t1)
	lw $t0, -1568($fp)
	lw $t1, 0($t0)
	sw $t1, -1572($fp)
	li $t0, 35173
	sw $t0, -1576($fp)
	addi $t0, $fp, -1404
	sw $t0, -1580($fp)
	li $t0, 3
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1580($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1576($fp)
	lw $t1, -1592($fp)
	sw $t0, 0($t1)
	lw $t0, -1592($fp)
	lw $t1, 0($t0)
	sw $t1, -1596($fp)
	lw $t0, -1412($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1424($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1388
	sw $t0, -1616($fp)
	li $t0, 0
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
	addi $t0, $fp, -1388
	sw $t0, -1636($fp)
	li $t0, 1
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
	addi $t0, $fp, -1404
	sw $t0, -1656($fp)
	li $t0, 0
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
	addi $t0, $fp, -1404
	sw $t0, -1676($fp)
	li $t0, 1
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
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1404
	sw $t0, -1696($fp)
	li $t0, 2
	sw $t0, -1700($fp)
	li $t0, 4
	lw $t1, -1700($fp)
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1404
	sw $t0, -1716($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -1736($fp)
	li $t0, 29146
	sw $t0, -1740($fp)
	li $t0, 36614
	sw $t0, -1744($fp)
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label205:
	li $t0, 39020
	sw $t0, -1752($fp)
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -1736($fp)
label204:
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1756($fp)
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1764($fp)
	lw $ra, -4($fp)
	lw $v0, -1764($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1768($fp)
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 11952
	sw $t0, -1776($fp)
	li $t0, 13976
	sw $t0, -1780($fp)
	lw $t1, -1776($fp)
	lw $t2, -1780($fp)
	beq $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -1772($fp)
label212:
	lw $t0, -76($fp)
	sw $t0, -1784($fp)
	lw $t1, -1772($fp)
	lw $t2, -1784($fp)
	beq $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -1768($fp)
label210:
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1788($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -1404
	sw $t0, -1792($fp)
	lw $t0, 4($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -1800($fp)
	li $t0, 4
	lw $t1, -1800($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	lw $t1, 0($t0)
	sw $t1, -1812($fp)
	lw $t1, -1788($fp)
	lw $t2, -1812($fp)
	bgt $t1, $t2, label206
	j label207
label206:
	li $t0, 0
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	li $t0, 51971
	sw $t0, -1824($fp)
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -1820($fp)
label216:
	li $t0, 9793
	sw $t0, -1832($fp)
	li $t0, 44504
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1840($fp)
	li $t0, 0
	lw $t1, -1840($fp)
	sub $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1820($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	li $t0, 0
	sw $t0, -1852($fp)
	lw $t0, -1424($fp)
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label217:
	li $t0, 1
	sw $t0, -1852($fp)
label218:
	addi $t0, $fp, -1388
	sw $t0, -1860($fp)
	li $t0, 1
	sw $t0, -1864($fp)
	li $t0, 4
	lw $t1, -1864($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	lw $t0, -1852($fp)
	lw $t1, -1876($fp)
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 0
	lw $t1, -1880($fp)
	sub $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t1, -1848($fp)
	lw $t2, -1884($fp)
	bge $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -1816($fp)
label214:
	lw $ra, -4($fp)
	lw $v0, -1816($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label208
label207:
label219:
	addi $t0, $fp, -1404
	sw $t0, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 9224
	sw $t0, -1900($fp)
	lw $t0, -76($fp)
	sw $t0, -1904($fp)
	lw $t1, -1900($fp)
	lw $t2, -1904($fp)
	bge $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -1896($fp)
label225:
	li $t0, 52151
	sw $t0, -1908($fp)
	lw $t1, -1896($fp)
	lw $t2, -1908($fp)
	ble $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -1892($fp)
label223:
	li $t0, 4
	lw $t1, -1892($fp)
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	addi $t0, $fp, -56
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, -64($fp)
	sw $t0, -1932($fp)
	lw $t0, -208($fp)
	sw $t0, -1936($fp)
	lw $t1, -1932($fp)
	lw $t2, -1936($fp)
	beq $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -1928($fp)
label227:
	li $t0, 4
	lw $t1, -1928($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	lw $t1, 0($t0)
	sw $t1, -1948($fp)
	lw $t0, -1920($fp)
	lw $t1, -1948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
label228:
	lw $t0, -1412($fp)
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 37695
	sw $t0, -1960($fp)
	lw $ra, -4($fp)
	lw $v0, -1960($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label228
label230:
	j label219
label221:
label208:
	li $t0, 0
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	lw $t0, -472($fp)
	sw $t0, -1972($fp)
	jal f6
	sw $v0, -1976($fp)
	addi $sp, $sp, 4
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	li $t0, 0
	lw $t1, -1980($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	li $t0, 0
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	li $t0, 0
	sw $t0, -1992($fp)
	lw $t0, -472($fp)
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label235
label237:
	lw $t0, -208($fp)
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -1992($fp)
label236:
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2004($fp)
	addi $sp, $sp, 8
	lw $t1, -1988($fp)
	lw $t2, -2004($fp)
	bge $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -1968($fp)
label234:
	li $t0, 43684
	sw $t0, -2008($fp)
	lw $t1, -1968($fp)
	lw $t2, -2008($fp)
	beq $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -1964($fp)
label232:
label238:
	jal f6
	sw $v0, -2012($fp)
	addi $sp, $sp, 4
	lw $t0, -208($fp)
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	sub $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	addi $t0, $fp, -56
	sw $t0, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	lw $t0, -352($fp)
	sw $t0, -2036($fp)
	li $t0, 26241
	sw $t0, -2040($fp)
	lw $t1, -2036($fp)
	lw $t2, -2040($fp)
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -2032($fp)
label245:
	li $t0, 4
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	lw $t0, -1448($fp)
	sw $t0, -2056($fp)
	li $t0, 12432
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2064($fp)
	lw $t0, -2052($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	li $t0, 39714
	sw $t0, -2072($fp)
	lw $t1, -2068($fp)
	lw $t2, -2072($fp)
	bge $t1, $t2, label241
	j label242
label241:
	li $t0, 51160
	sw $t0, -2076($fp)
	lw $t0, -1424($fp)
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2084($fp)
	li $t0, 59642
	sw $t0, -2088($fp)
	lw $t0, -2084($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2096($fp)
	addi $sp, $sp, 8
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label250:
	addi $t0, $fp, -1404
	sw $t0, -2100($fp)
	li $t0, 2
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
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label249
label249:
	li $t0, 45376
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 0
	sw $t0, -2124($fp)
	lw $t0, -1436($fp)
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -2124($fp)
label255:
	li $t0, 0
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	jal f6
	sw $v0, -2136($fp)
	addi $sp, $sp, 4
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	sub $t0, $t0, $t1
	sw $t0, -2140($fp)
	li $t0, 59861
	sw $t0, -2144($fp)
	lw $t0, -1424($fp)
	sw $t0, -2148($fp)
	lw $t0, -2144($fp)
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -1436($fp)
	sw $t0, -2156($fp)
	lw $t0, -2152($fp)
	lw $t1, -2156($fp)
	sub $t0, $t0, $t1
	sw $t0, -2160($fp)
	li $t0, 28015
	sw $t0, -2164($fp)
	lw $t0, -208($fp)
	sw $t0, -2168($fp)
	lw $t0, -2164($fp)
	lw $t1, -2168($fp)
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2160($fp)
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t1, -2140($fp)
	lw $t2, -2176($fp)
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 46930
	sw $t0, -2196($fp)
	addi $t0, $fp, -2192
	sw $t0, -2200($fp)
	li $t0, 0
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2200($fp)
	lw $t1, -2208($fp)
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2196($fp)
	lw $t1, -2212($fp)
	sw $t0, 0($t1)
	lw $t0, -2212($fp)
	lw $t1, 0($t0)
	sw $t1, -2216($fp)
	li $t0, 41190
	sw $t0, -2220($fp)
	addi $t0, $fp, -2192
	sw $t0, -2224($fp)
	li $t0, 1
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2224($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2220($fp)
	lw $t1, -2236($fp)
	sw $t0, 0($t1)
	lw $t0, -2236($fp)
	lw $t1, 0($t0)
	sw $t1, -2240($fp)
	li $t0, 59680
	sw $t0, -2244($fp)
	addi $t0, $fp, -2192
	sw $t0, -2248($fp)
	li $t0, 2
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2248($fp)
	lw $t1, -2256($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2244($fp)
	lw $t1, -2260($fp)
	sw $t0, 0($t1)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	li $t0, 5431
	sw $t0, -2268($fp)
	addi $t0, $fp, -2192
	sw $t0, -2272($fp)
	li $t0, 3
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2272($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2268($fp)
	lw $t1, -2284($fp)
	sw $t0, 0($t1)
	lw $t0, -2284($fp)
	lw $t1, 0($t0)
	sw $t1, -2288($fp)
	li $t0, 0
	sw $t0, -2292($fp)
	li $t0, 58234
	sw $t0, -2296($fp)
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label256
label256:
	li $t0, 1
	sw $t0, -2292($fp)
label257:
	li $t0, 0
	sw $t0, -2300($fp)
	li $t0, 54551
	sw $t0, -2304($fp)
	addi $t0, $fp, -2192
	sw $t0, -2308($fp)
	lw $t0, -436($fp)
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
	lw $t0, -2304($fp)
	lw $t1, -2324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2328($fp)
	li $t0, 40604
	sw $t0, -2332($fp)
	li $t0, 21844
	sw $t0, -2336($fp)
	lw $t0, -2332($fp)
	lw $t1, -2336($fp)
	mul $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2328($fp)
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	li $t0, 25629
	sw $t0, -2348($fp)
	li $t0, 14088
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2356($fp)
	lw $t0, -436($fp)
	sw $t0, -2360($fp)
	lw $t0, -2356($fp)
	lw $t1, -2360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2364($fp)
	lw $t1, -2344($fp)
	lw $t2, -2364($fp)
	ble $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -2300($fp)
label259:
	j label253
label252:
label260:
	li $t0, 0
	sw $t0, -2368($fp)
	lw $t0, -1436($fp)
	sw $t0, -2372($fp)
	li $t0, 0
	lw $t1, -2372($fp)
	sub $t0, $t0, $t1
	sw $t0, -2376($fp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2380($fp)
	addi $sp, $sp, 8
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label263:
	li $t0, 1
	sw $t0, -2368($fp)
label264:
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2384($fp)
	li $t0, 33796
	sw $t0, -2388($fp)
	lw $t0, -2384($fp)
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	jal f6
	sw $v0, -2396($fp)
	addi $sp, $sp, 4
	j label260
label262:
label253:
	j label248
label247:
	jal f6
	sw $v0, -2400($fp)
	addi $sp, $sp, 4
label248:
	j label243
label242:
	li $t0, 0
	sw $t0, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	addi $t0, $fp, -1404
	sw $t0, -2412($fp)
	lw $t0, -472($fp)
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
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -2408($fp)
label268:
	li $t0, 39606
	sw $t0, -2432($fp)
	lw $t1, -2408($fp)
	lw $t2, -2432($fp)
	beq $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -2404($fp)
label266:
	addi $t0, $fp, -24
	sw $t0, -2436($fp)
	li $t0, 3
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
	li $t0, 18574
	sw $t0, -2456($fp)
	lw $t0, -2452($fp)
	lw $t1, -2456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2460($fp)
	li $t0, 0
	sw $t0, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	lw $t0, 4($fp)
	sw $t0, -2472($fp)
	lw $t0, -436($fp)
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	lw $t1, -2476($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	li $t0, 42614
	sw $t0, -2484($fp)
	lw $t1, -2480($fp)
	lw $t2, -2484($fp)
	bgt $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -2468($fp)
label272:
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2488($fp)
	addi $sp, $sp, 8
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label269:
	li $t0, 1
	sw $t0, -2464($fp)
label270:
	li $t0, 0
	lw $t1, -2464($fp)
	sub $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2460($fp)
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	li $t0, 0
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	li $t0, 0
	lw $t1, -2500($fp)
	sub $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -472($fp)
	sw $t0, -2508($fp)
	li $t0, 40684
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -2516($fp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2520($fp)
	addi $sp, $sp, 8
	lw $t0, -2508($fp)
	lw $t1, -2520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2524($fp)
	li $t0, 0
	lw $t1, -2524($fp)
	sub $t0, $t0, $t1
	sw $t0, -2528($fp)
label243:
	j label238
label240:
	lw $t0, -64($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2540($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -2560($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -2580($fp)
	li $t0, 2
	sw $t0, -2584($fp)
	li $t0, 4
	lw $t1, -2584($fp)
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	lw $t1, -2580($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	lw $t1, 0($t0)
	sw $t1, -2596($fp)
	lw $t0, -2596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2600($fp)
	li $t0, 3
	sw $t0, -2604($fp)
	li $t0, 4
	lw $t1, -2604($fp)
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	lw $t1, 0($t0)
	sw $t1, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2620($fp)
	li $t0, 4
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
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2644($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -2664($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -2684($fp)
	li $t0, 2
	sw $t0, -2688($fp)
	li $t0, 4
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	lw $t1, 0($t0)
	sw $t1, -2700($fp)
	lw $t0, -2700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2704($fp)
	li $t0, 3
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
	lw $t0, -2720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2724($fp)
	li $t0, 4
	sw $t0, -2728($fp)
	li $t0, 4
	lw $t1, -2728($fp)
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	lw $t1, 0($t0)
	sw $t1, -2740($fp)
	lw $t0, -2740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	lw $t0, -436($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2828($fp)
	li $t0, 27798
	sw $t0, -2832($fp)
	li $t0, 29229
	sw $t0, -2836($fp)
	lw $t0, -2832($fp)
	lw $t1, -2836($fp)
	mul $t0, $t0, $t1
	sw $t0, -2840($fp)
	jal f6
	sw $v0, -2844($fp)
	addi $sp, $sp, 4
	lw $t0, -2840($fp)
	lw $t1, -2844($fp)
	sub $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label275:
	addi $t0, $fp, -56
	sw $t0, -2852($fp)
	lw $t0, -472($fp)
	sw $t0, -2856($fp)
	li $t0, 4
	lw $t1, -2856($fp)
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	lw $t0, -208($fp)
	sw $t0, -2872($fp)
	lw $t0, -2868($fp)
	lw $t1, -2872($fp)
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	li $t0, 12843
	sw $t0, -2880($fp)
	lw $t1, -2876($fp)
	lw $t2, -2880($fp)
	beq $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -2828($fp)
label274:
	lw $ra, -4($fp)
	lw $v0, -2828($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -212
	li $t0, 5946
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
	li $t0, 55471
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
	li $t0, 25276
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
	li $t0, 45661
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
	addi $t0, $fp, -20
	sw $t0, -200($fp)
	lw $t0, 4($fp)
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
	lw $ra, -4($fp)
	lw $v0, -216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -144
	li $t0, 41095
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
label276:
	li $t0, 19382
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	bne $t1, $t2, label281
	j label283
label283:
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	lw $t1, -40($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -28($fp)
label282:
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -44($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -48($fp)
	addi $sp, $sp, 8
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label279:
	li $t0, 1
	sw $t0, -24($fp)
label280:
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 0
	sw $t0, -56($fp)
	li $t0, 16138
	sw $t0, -60($fp)
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -56($fp)
label285:
	lw $t0, 12($fp)
	sw $t0, -64($fp)
	li $t0, 0
	sw $t0, -68($fp)
	lw $t0, -12($fp)
	sw $t0, -72($fp)
	lw $t0, 4($fp)
	sw $t0, -76($fp)
	lw $t1, -72($fp)
	lw $t2, -76($fp)
	bne $t1, $t2, label288
	j label287
label288:
	lw $t0, 4($fp)
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -68($fp)
label287:
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -64($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -68($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -84($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -88($fp)
	li $t0, 0
	sw $t0, -92($fp)
	lw $t0, 8($fp)
	sw $t0, -96($fp)
	lw $t0, -12($fp)
	sw $t0, -100($fp)
	lw $t1, -96($fp)
	lw $t2, -100($fp)
	blt $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -92($fp)
label292:
	lw $t0, -12($fp)
	sw $t0, -104($fp)
	lw $t1, -92($fp)
	lw $t2, -104($fp)
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -88($fp)
label290:
	addi $sp, $sp, -4
	lw $t0, -88($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -108($fp)
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	lw $t1, -108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -112($fp)
	li $t0, 20389
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -120($fp)
	lw $ra, -4($fp)
	lw $v0, -120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label276
label278:
	jal f6
	sw $v0, -124($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -124($fp)
	sub $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -12($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -136($fp)
	jal f6
	sw $v0, -140($fp)
	addi $sp, $sp, 4
	lw $t1, -140($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label295
label295:
	li $t0, 64758
	sw $t0, -144($fp)
	li $t0, 0
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -136($fp)
label294:
	lw $ra, -4($fp)
	lw $v0, -136($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7624
	li $t0, 10464
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 48404
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 46152
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 51654
	sw $t0, -240($fp)
	addi $t0, $fp, -24
	sw $t0, -244($fp)
	li $t0, 0
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
	li $t0, 42548
	sw $t0, -264($fp)
	addi $t0, $fp, -24
	sw $t0, -268($fp)
	li $t0, 1
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
	li $t0, 51583
	sw $t0, -288($fp)
	addi $t0, $fp, -24
	sw $t0, -292($fp)
	li $t0, 2
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
	li $t0, 44352
	sw $t0, -312($fp)
	addi $t0, $fp, -24
	sw $t0, -316($fp)
	li $t0, 3
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
	li $t0, 31563
	sw $t0, -336($fp)
	addi $t0, $fp, -24
	sw $t0, -340($fp)
	li $t0, 4
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
	li $t0, 26651
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 660
	sw $t0, -372($fp)
	addi $t0, $fp, -56
	sw $t0, -376($fp)
	li $t0, 0
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
	li $t0, 57193
	sw $t0, -396($fp)
	addi $t0, $fp, -56
	sw $t0, -400($fp)
	li $t0, 1
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
	li $t0, 40739
	sw $t0, -420($fp)
	addi $t0, $fp, -56
	sw $t0, -424($fp)
	li $t0, 2
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
	li $t0, 34456
	sw $t0, -444($fp)
	addi $t0, $fp, -56
	sw $t0, -448($fp)
	li $t0, 3
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
	li $t0, 31263
	sw $t0, -468($fp)
	addi $t0, $fp, -56
	sw $t0, -472($fp)
	li $t0, 4
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
	li $t0, 41262
	sw $t0, -492($fp)
	addi $t0, $fp, -56
	sw $t0, -496($fp)
	li $t0, 5
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
	li $t0, 12510
	sw $t0, -516($fp)
	addi $t0, $fp, -56
	sw $t0, -520($fp)
	li $t0, 6
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
	li $t0, 49837
	sw $t0, -540($fp)
	addi $t0, $fp, -56
	sw $t0, -544($fp)
	li $t0, 7
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
	li $t0, 18340
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 53194
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 12099
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 47570
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 502
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 18045
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 37505
	sw $t0, -636($fp)
	addi $t0, $fp, -72
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
	li $t0, 25778
	sw $t0, -660($fp)
	addi $t0, $fp, -72
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
	li $t0, 63706
	sw $t0, -684($fp)
	addi $t0, $fp, -72
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
	li $t0, 13064
	sw $t0, -708($fp)
	addi $t0, $fp, -72
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
	li $t0, 45160
	sw $t0, -732($fp)
	addi $t0, $fp, -92
	sw $t0, -736($fp)
	li $t0, 0
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
	li $t0, 14309
	sw $t0, -756($fp)
	addi $t0, $fp, -92
	sw $t0, -760($fp)
	li $t0, 1
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
	li $t0, 33453
	sw $t0, -780($fp)
	addi $t0, $fp, -92
	sw $t0, -784($fp)
	li $t0, 2
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
	li $t0, 44383
	sw $t0, -804($fp)
	addi $t0, $fp, -92
	sw $t0, -808($fp)
	li $t0, 3
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -808($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -804($fp)
	lw $t1, -820($fp)
	sw $t0, 0($t1)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	li $t0, 24773
	sw $t0, -828($fp)
	addi $t0, $fp, -92
	sw $t0, -832($fp)
	li $t0, 4
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -832($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -828($fp)
	lw $t1, -844($fp)
	sw $t0, 0($t1)
	lw $t0, -844($fp)
	lw $t1, 0($t0)
	sw $t1, -848($fp)
	li $t0, 16321
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 24999
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 10891
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 58869
	sw $t0, -888($fp)
	addi $t0, $fp, -116
	sw $t0, -892($fp)
	li $t0, 0
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
	li $t0, 11047
	sw $t0, -912($fp)
	addi $t0, $fp, -116
	sw $t0, -916($fp)
	li $t0, 1
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
	li $t0, 55243
	sw $t0, -936($fp)
	addi $t0, $fp, -116
	sw $t0, -940($fp)
	li $t0, 2
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
	li $t0, 24896
	sw $t0, -960($fp)
	addi $t0, $fp, -116
	sw $t0, -964($fp)
	li $t0, 3
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
	li $t0, 37698
	sw $t0, -984($fp)
	addi $t0, $fp, -116
	sw $t0, -988($fp)
	li $t0, 4
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
	li $t0, 55903
	sw $t0, -1008($fp)
	addi $t0, $fp, -116
	sw $t0, -1012($fp)
	li $t0, 5
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
	li $t0, 16553
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 12902
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 24823
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 47816
	sw $t0, -1068($fp)
	addi $t0, $fp, -124
	sw $t0, -1072($fp)
	li $t0, 0
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
	li $t0, 54164
	sw $t0, -1092($fp)
	addi $t0, $fp, -124
	sw $t0, -1096($fp)
	li $t0, 1
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
	li $t0, 37333
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 32117
	sw $t0, -1128($fp)
	addi $t0, $fp, -144
	sw $t0, -1132($fp)
	li $t0, 0
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
	li $t0, 6969
	sw $t0, -1152($fp)
	addi $t0, $fp, -144
	sw $t0, -1156($fp)
	li $t0, 1
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
	li $t0, 24992
	sw $t0, -1176($fp)
	addi $t0, $fp, -144
	sw $t0, -1180($fp)
	li $t0, 2
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
	li $t0, 44216
	sw $t0, -1200($fp)
	addi $t0, $fp, -144
	sw $t0, -1204($fp)
	li $t0, 3
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
	li $t0, 54539
	sw $t0, -1224($fp)
	addi $t0, $fp, -144
	sw $t0, -1228($fp)
	li $t0, 4
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
	li $t0, 25494
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 62262
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 26508
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 51272
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 60432
	sw $t0, -1296($fp)
	addi $t0, $fp, -180
	sw $t0, -1300($fp)
	li $t0, 0
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
	li $t0, 39572
	sw $t0, -1320($fp)
	addi $t0, $fp, -180
	sw $t0, -1324($fp)
	li $t0, 1
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
	li $t0, 30896
	sw $t0, -1344($fp)
	addi $t0, $fp, -180
	sw $t0, -1348($fp)
	li $t0, 2
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
	li $t0, 9205
	sw $t0, -1368($fp)
	addi $t0, $fp, -180
	sw $t0, -1372($fp)
	li $t0, 3
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1372($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1368($fp)
	lw $t1, -1384($fp)
	sw $t0, 0($t1)
	lw $t0, -1384($fp)
	lw $t1, 0($t0)
	sw $t1, -1388($fp)
	li $t0, 7489
	sw $t0, -1392($fp)
	addi $t0, $fp, -180
	sw $t0, -1396($fp)
	li $t0, 4
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
	li $t0, 9743
	sw $t0, -1416($fp)
	addi $t0, $fp, -180
	sw $t0, -1420($fp)
	li $t0, 5
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
	li $t0, 33978
	sw $t0, -1440($fp)
	addi $t0, $fp, -180
	sw $t0, -1444($fp)
	li $t0, 6
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
	li $t0, 23810
	sw $t0, -1464($fp)
	addi $t0, $fp, -180
	sw $t0, -1468($fp)
	li $t0, 7
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
	li $t0, 34743
	sw $t0, -1488($fp)
	addi $t0, $fp, -180
	sw $t0, -1492($fp)
	li $t0, 8
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
	li $t0, 44869
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	li $t0, 17143
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	li $t0, 45790
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	li $t0, 34576
	sw $t0, -1548($fp)
	addi $t0, $fp, -200
	sw $t0, -1552($fp)
	li $t0, 0
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
	li $t0, 42039
	sw $t0, -1572($fp)
	addi $t0, $fp, -200
	sw $t0, -1576($fp)
	li $t0, 1
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
	li $t0, 17952
	sw $t0, -1596($fp)
	addi $t0, $fp, -200
	sw $t0, -1600($fp)
	li $t0, 2
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
	li $t0, 24943
	sw $t0, -1620($fp)
	addi $t0, $fp, -200
	sw $t0, -1624($fp)
	li $t0, 3
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
	li $t0, 58593
	sw $t0, -1644($fp)
	addi $t0, $fp, -200
	sw $t0, -1648($fp)
	li $t0, 4
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
	li $t0, 30854
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	li $t0, 49767
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	li $t0, 40873
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	li $t0, 19483
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	li $t0, 21564
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	lw $t0, -1036($fp)
	sw $t0, -1728($fp)
	li $t0, 7455
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	mul $t0, $t0, $t1
	sw $t0, -1736($fp)
	addi $t0, $fp, -124
	sw $t0, -1740($fp)
	lw $t0, -1060($fp)
	sw $t0, -1744($fp)
	li $t0, 4
	lw $t1, -1744($fp)
	mul $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	lw $t1, -1740($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	lw $t1, 0($t0)
	sw $t1, -1756($fp)
	lw $t0, -1736($fp)
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	li $t0, 0
	lw $t1, -1760($fp)
	sub $t0, $t0, $t1
	sw $t0, -1764($fp)
	jal f6
	sw $v0, -1768($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 6514
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -1772($fp)
label300:
	li $t0, 48397
	sw $t0, -1780($fp)
	lw $t0, -1772($fp)
	lw $t1, -1780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	li $t0, 51671
	sw $t0, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -1792($fp)
label304:
	li $t0, 0
	sw $t0, -1800($fp)
	lw $t0, -208($fp)
	sw $t0, -1804($fp)
	li $t0, 26452
	sw $t0, -1808($fp)
	lw $t1, -1804($fp)
	lw $t2, -1808($fp)
	ble $t1, $t2, label307
	j label306
label307:
	li $t0, 46556
	sw $t0, -1812($fp)
	lw $t1, -1812($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -1800($fp)
label306:
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1816($fp)
	addi $sp, $sp, 12
	li $t0, 15455
	sw $t0, -1820($fp)
	lw $t1, -1816($fp)
	lw $t2, -1820($fp)
	ble $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -1788($fp)
label302:
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1824($fp)
	addi $sp, $sp, 12
	lw $t0, -1768($fp)
	lw $t1, -1824($fp)
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t1, -1764($fp)
	lw $t2, -1828($fp)
	beq $t1, $t2, label296
	j label297
label296:
	li $t0, 0
	sw $t0, -1832($fp)
	addi $t0, $fp, -92
	sw $t0, -1836($fp)
	li $t0, 4
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
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label312:
	li $t0, 1
	sw $t0, -1832($fp)
label313:
	lw $t0, -856($fp)
	sw $t0, -1856($fp)
	li $t0, 0
	lw $t1, -1856($fp)
	sub $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1832($fp)
	lw $t1, -1860($fp)
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	addi $t0, $fp, -56
	sw $t0, -1868($fp)
	li $t0, 7
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
	lw $t1, -1864($fp)
	lw $t2, -1884($fp)
	beq $t1, $t2, label308
	j label311
label311:
	addi $t0, $fp, -72
	sw $t0, -1888($fp)
	lw $t0, -568($fp)
	sw $t0, -1892($fp)
	lw $t0, 8($fp)
	sw $t0, -1896($fp)
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1900($fp)
	li $t0, 4
	lw $t1, -1900($fp)
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, 0($t0)
	sw $t1, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 0
	sw $t0, -1916($fp)
	li $t0, 23147
	sw $t0, -1920($fp)
	li $t0, 52499
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	li $t0, 1
	sw $t0, -1932($fp)
	lw $t0, -1928($fp)
	lw $t1, -1932($fp)
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	li $t0, 32890
	sw $t0, -1940($fp)
	li $t0, 0
	lw $t1, -1940($fp)
	sub $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t1, -1936($fp)
	lw $t2, -1944($fp)
	beq $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -1916($fp)
label315:
	lw $t0, -1916($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -1948($fp)
	j label310
label309:
	li $t0, 20942
	sw $t0, -1976($fp)
	addi $t0, $fp, -1972
	sw $t0, -1980($fp)
	li $t0, 0
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
	li $t0, 47298
	sw $t0, -2000($fp)
	addi $t0, $fp, -1972
	sw $t0, -2004($fp)
	li $t0, 1
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
	li $t0, 2097
	sw $t0, -2024($fp)
	addi $t0, $fp, -1972
	sw $t0, -2028($fp)
	li $t0, 2
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
	li $t0, 275
	sw $t0, -2048($fp)
	addi $t0, $fp, -1972
	sw $t0, -2052($fp)
	li $t0, 3
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
	li $t0, 64441
	sw $t0, -2072($fp)
	addi $t0, $fp, -1972
	sw $t0, -2076($fp)
	li $t0, 4
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
	li $t0, 47887
	sw $t0, -2096($fp)
	addi $t0, $fp, -1972
	sw $t0, -2100($fp)
	li $t0, 5
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
	li $t0, 34852
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	sw $t0, -2128($fp)
	li $t0, 40944
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	sw $t0, -2140($fp)
	li $t0, 304
	sw $t0, -2184($fp)
	addi $t0, $fp, -2148
	sw $t0, -2188($fp)
	li $t0, 0
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
	li $t0, 59795
	sw $t0, -2208($fp)
	addi $t0, $fp, -2148
	sw $t0, -2212($fp)
	li $t0, 1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2212($fp)
	lw $t1, -2220($fp)
	add $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2208($fp)
	lw $t1, -2224($fp)
	sw $t0, 0($t1)
	lw $t0, -2224($fp)
	lw $t1, 0($t0)
	sw $t1, -2228($fp)
	li $t0, 34001
	sw $t0, -2232($fp)
	addi $t0, $fp, -2180
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2236($fp)
	lw $t1, -2244($fp)
	add $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2232($fp)
	lw $t1, -2248($fp)
	sw $t0, 0($t1)
	lw $t0, -2248($fp)
	lw $t1, 0($t0)
	sw $t1, -2252($fp)
	li $t0, 31158
	sw $t0, -2256($fp)
	addi $t0, $fp, -2180
	sw $t0, -2260($fp)
	li $t0, 1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2260($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2256($fp)
	lw $t1, -2272($fp)
	sw $t0, 0($t1)
	lw $t0, -2272($fp)
	lw $t1, 0($t0)
	sw $t1, -2276($fp)
	li $t0, 44026
	sw $t0, -2280($fp)
	addi $t0, $fp, -2180
	sw $t0, -2284($fp)
	li $t0, 2
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2284($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2280($fp)
	lw $t1, -2296($fp)
	sw $t0, 0($t1)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	li $t0, 9339
	sw $t0, -2304($fp)
	addi $t0, $fp, -2180
	sw $t0, -2308($fp)
	li $t0, 3
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2308($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2304($fp)
	lw $t1, -2320($fp)
	sw $t0, 0($t1)
	lw $t0, -2320($fp)
	lw $t1, 0($t0)
	sw $t1, -2324($fp)
	li $t0, 50641
	sw $t0, -2328($fp)
	addi $t0, $fp, -2180
	sw $t0, -2332($fp)
	li $t0, 4
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
	li $t0, 55
	sw $t0, -2352($fp)
	addi $t0, $fp, -2180
	sw $t0, -2356($fp)
	li $t0, 5
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
	li $t0, 16794
	sw $t0, -2376($fp)
	addi $t0, $fp, -2180
	sw $t0, -2380($fp)
	li $t0, 6
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
	li $t0, 11557
	sw $t0, -2400($fp)
	addi $t0, $fp, -2180
	sw $t0, -2404($fp)
	li $t0, 7
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
label316:
	addi $t0, $fp, -24
	sw $t0, -2424($fp)
	lw $t0, -1720($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -2432($fp)
	li $t0, 4
	lw $t1, -2432($fp)
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	li $t0, 0
	lw $t1, -2444($fp)
	sub $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label319:
	lw $t0, -880($fp)
	sw $t0, -2452($fp)
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 46611
	sw $t0, -2460($fp)
	li $t0, 2929
	sw $t0, -2464($fp)
	lw $t1, -2460($fp)
	lw $t2, -2464($fp)
	bge $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -2456($fp)
label321:
	lw $t1, -2452($fp)
	lw $t2, -2456($fp)
	beq $t1, $t2, label317
	j label318
label317:
	li $t0, 0
	sw $t0, -2468($fp)
	li $t0, 27012
	sw $t0, -2472($fp)
	addi $t0, $fp, -144
	sw $t0, -2476($fp)
	lw $t0, 4($fp)
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
	li $t0, 53126
	sw $t0, -2496($fp)
	lw $t0, -2492($fp)
	lw $t1, -2496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2500($fp)
	lw $t0, -2472($fp)
	lw $t1, -2500($fp)
	sub $t0, $t0, $t1
	sw $t0, -2504($fp)
	li $t0, 51327
	sw $t0, -2508($fp)
	li $t0, 3439
	sw $t0, -2512($fp)
	lw $t0, -2508($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	li $t0, 45376
	sw $t0, -2520($fp)
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	addi $t0, $fp, -144
	sw $t0, -2528($fp)
	li $t0, 0
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
	lw $t0, -2524($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t1, -2504($fp)
	lw $t2, -2548($fp)
	bgt $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -2468($fp)
label323:
	j label316
label318:
label324:
	li $t0, 2987
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label328:
	lw $t0, -1276($fp)
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label327
label327:
	li $t0, 16048
	sw $t0, -2560($fp)
	addi $t0, $fp, -200
	sw $t0, -2564($fp)
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 4
	lw $t1, -2568($fp)
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	lw $t1, 0($t0)
	sw $t1, -2580($fp)
	lw $t1, -2560($fp)
	lw $t2, -2580($fp)
	bne $t1, $t2, label325
	j label326
label325:
	li $t0, 36990
	sw $t0, -2584($fp)
	j label324
label326:
	li $t0, 24688
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -2596($fp)
	li $t0, 0
	sw $t0, -2600($fp)
	addi $t0, $fp, -124
	sw $t0, -2604($fp)
	li $t0, 0
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
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label329:
	li $t0, 1
	sw $t0, -2600($fp)
label330:
	li $t0, 23593
	sw $t0, -2628($fp)
	lw $t0, -1036($fp)
	sw $t0, -2632($fp)
	lw $t0, -2628($fp)
	lw $t1, -2632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2636($fp)
	li $t0, 20327
	sw $t0, -2640($fp)
	lw $t0, -2636($fp)
	lw $t1, -2640($fp)
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	addi $sp, $sp, -4
	lw $t0, -2644($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2648($fp)
	addi $sp, $sp, 8
	jal f6
	sw $v0, -2652($fp)
	addi $sp, $sp, 4
	lw $t0, -2648($fp)
	lw $t1, -2652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2656($fp)
	lw $t0, -2592($fp)
	sw $t0, -2660($fp)
	addi $t0, $fp, -72
	sw $t0, -2664($fp)
	li $t0, 2
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
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2684($fp)
	addi $sp, $sp, 8
	lw $t0, -2660($fp)
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	li $t0, 0
	lw $t1, -2688($fp)
	sub $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2656($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
label331:
	li $t0, 0
	sw $t0, -2700($fp)
	li $t0, 0
	sw $t0, -2704($fp)
	lw $t0, -1288($fp)
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label336:
	li $t0, 1
	sw $t0, -2704($fp)
label337:
	li $t0, 20631
	sw $t0, -2712($fp)
	lw $t0, -2704($fp)
	lw $t1, -2712($fp)
	mul $t0, $t0, $t1
	sw $t0, -2716($fp)
	addi $t0, $fp, -2148
	sw $t0, -2720($fp)
	li $t0, 1
	sw $t0, -2724($fp)
	li $t0, 4
	lw $t1, -2724($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	lw $t0, -2716($fp)
	lw $t1, -2736($fp)
	sub $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -592($fp)
	sw $t0, -2744($fp)
	lw $t1, -2740($fp)
	lw $t2, -2744($fp)
	beq $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -2700($fp)
label335:
	li $t0, 0
	sw $t0, -2748($fp)
	li $t0, 51789
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label338
label338:
	li $t0, 1
	sw $t0, -2748($fp)
label339:
	li $t0, 0
	lw $t1, -2748($fp)
	sub $t0, $t0, $t1
	sw $t0, -2756($fp)
	li $t0, 44868
	sw $t0, -2760($fp)
	lw $t0, -2756($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t1, -2700($fp)
	lw $t2, -2764($fp)
	bne $t1, $t2, label332
	j label333
label332:
label340:
	li $t0, 42342
	sw $t0, -2768($fp)
	addi $t0, $fp, -116
	sw $t0, -2772($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -2788($fp)
	sub $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2768($fp)
	lw $t1, -2792($fp)
	mul $t0, $t0, $t1
	sw $t0, -2796($fp)
	li $t0, 59136
	sw $t0, -2800($fp)
	li $t0, 1
	sw $t0, -2804($fp)
	lw $t0, -2800($fp)
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	li $t0, 25998
	sw $t0, -2812($fp)
	lw $t0, -2808($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	li $t0, 62066
	sw $t0, -2820($fp)
	li $t0, 0
	lw $t1, -2820($fp)
	sub $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2816($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t1, -2796($fp)
	lw $t2, -2828($fp)
	bne $t1, $t2, label341
	j label342
label341:
	addi $t0, $fp, -2180
	sw $t0, -2832($fp)
	lw $t0, -592($fp)
	sw $t0, -2836($fp)
	li $t0, 4
	lw $t1, -2836($fp)
	mul $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, -2832($fp)
	add $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	lw $t1, 0($t0)
	sw $t1, -2848($fp)
	li $t0, 0
	lw $t1, -2848($fp)
	sub $t0, $t0, $t1
	sw $t0, -2852($fp)
	li $t0, 9929
	sw $t0, -2856($fp)
	lw $t0, -2852($fp)
	lw $t1, -2856($fp)
	sub $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -2864($fp)
	j label340
label342:
	j label331
label333:
	lw $t0, -1540($fp)
	sw $t0, -2868($fp)
	lw $t0, -868($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	li $t0, 0
	sw $t0, -2884($fp)
	lw $t0, 4($fp)
	sw $t0, -2888($fp)
	lw $t0, -604($fp)
	sw $t0, -2892($fp)
	lw $t1, -2888($fp)
	lw $t2, -2892($fp)
	ble $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -2884($fp)
label346:
	li $t0, 47857
	sw $t0, -2896($fp)
	lw $t1, -2884($fp)
	lw $t2, -2896($fp)
	bge $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -2880($fp)
label344:
	li $t0, 0
	sw $t0, -2900($fp)
	lw $t0, -604($fp)
	sw $t0, -2904($fp)
	li $t0, 13588
	sw $t0, -2908($fp)
	lw $t0, -2904($fp)
	lw $t1, -2908($fp)
	sub $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -1516($fp)
	sw $t0, -2916($fp)
	lw $t1, -2912($fp)
	lw $t2, -2916($fp)
	bgt $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -2900($fp)
label348:
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2920($fp)
	addi $sp, $sp, 16
	li $t0, 13368
	sw $t0, -2924($fp)
	lw $t0, -2920($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
label349:
	li $t0, 0
	sw $t0, -2932($fp)
	addi $t0, $fp, -56
	sw $t0, -2936($fp)
	lw $t0, 8($fp)
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
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label354
label354:
	addi $t0, $fp, -124
	sw $t0, -2956($fp)
	li $t0, 0
	sw $t0, -2960($fp)
	li $t0, 4
	lw $t1, -2960($fp)
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	lw $t1, -2956($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	lw $t1, 0($t0)
	sw $t1, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -2932($fp)
label353:
	lw $t0, -2932($fp)
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	sw $t0, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 0
	sw $t0, -2980($fp)
	li $t0, 32807
	sw $t0, -2984($fp)
	li $t0, 61952
	sw $t0, -2988($fp)
	lw $t1, -2984($fp)
	lw $t2, -2988($fp)
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -2980($fp)
label356:
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2992($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2992($fp)
	sub $t0, $t0, $t1
	sw $t0, -2996($fp)
	li $t0, 0
	lw $t1, -2996($fp)
	sub $t0, $t0, $t1
	sw $t0, -3000($fp)
	j label349
label351:
	li $t0, 34886
	sw $t0, -3004($fp)
	li $t0, 0
	sw $t0, -3008($fp)
	li $t0, 0
	sw $t0, -3012($fp)
	li $t0, 10197
	sw $t0, -3016($fp)
	li $t0, 32294
	sw $t0, -3020($fp)
	lw $t1, -3016($fp)
	lw $t2, -3020($fp)
	bge $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -3012($fp)
label363:
	li $t0, 64445
	sw $t0, -3024($fp)
	lw $t1, -3012($fp)
	lw $t2, -3024($fp)
	beq $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -3008($fp)
label361:
	li $t0, 27454
	sw $t0, -3028($fp)
	li $t0, 0
	lw $t1, -3028($fp)
	sub $t0, $t0, $t1
	sw $t0, -3032($fp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3036($fp)
	addi $sp, $sp, 16
	lw $t0, -1048($fp)
	sw $t0, -3040($fp)
	lw $t0, -1672($fp)
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	li $t0, 0
	lw $t1, -3048($fp)
	sub $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3036($fp)
	lw $t1, -3052($fp)
	sub $t0, $t0, $t1
	sw $t0, -3056($fp)
	li $t0, 4734
	sw $t0, -3060($fp)
	li $t0, 0
	lw $t1, -3060($fp)
	sub $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3056($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t1, -3068($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 36175
	sw $t0, -3072($fp)
	li $t0, 0
	sw $t0, -3076($fp)
	addi $t0, $fp, -72
	sw $t0, -3080($fp)
	lw $t0, -1288($fp)
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
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -3076($fp)
label368:
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3100($fp)
	li $t0, 0
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label364:
	li $t0, 0
	sw $t0, -3108($fp)
	li $t0, 0
	sw $t0, -3112($fp)
	lw $t0, -568($fp)
	sw $t0, -3116($fp)
	li $t0, 0
	sw $t0, -3120($fp)
	addi $t0, $fp, -144
	sw $t0, -3124($fp)
	li $t0, 2
	sw $t0, -3128($fp)
	li $t0, 4
	lw $t1, -3128($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label374:
	li $t0, 1
	sw $t0, -3120($fp)
label375:
	lw $t0, -1696($fp)
	sw $t0, -3144($fp)
	lw $t0, -1276($fp)
	sw $t0, -3148($fp)
	lw $t0, -3144($fp)
	lw $t1, -3148($fp)
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	li $t0, 58479
	sw $t0, -3156($fp)
	lw $t0, -3152($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3164($fp)
	addi $sp, $sp, 16
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label372:
	li $t0, 1
	sw $t0, -3112($fp)
label373:
	li $t0, 57481
	sw $t0, -3168($fp)
	li $t0, 1
	sw $t0, -3172($fp)
	lw $t0, -3168($fp)
	lw $t1, -3172($fp)
	mul $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3112($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3180($fp)
	li $t0, 0
	sw $t0, -3184($fp)
	lw $t0, -2124($fp)
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -3184($fp)
label377:
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label370
label371:
	li $t0, 43598
	sw $t0, -3196($fp)
	li $t0, 24949
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3204($fp)
	lw $t0, -364($fp)
	sw $t0, -3208($fp)
	lw $t0, -3204($fp)
	lw $t1, -3208($fp)
	sub $t0, $t0, $t1
	sw $t0, -3212($fp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3216($fp)
	addi $sp, $sp, 8
	lw $t1, -3216($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -3108($fp)
label370:
	lw $ra, -4($fp)
	lw $v0, -3108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label366
label365:
	jal f6
	sw $v0, -3220($fp)
	addi $sp, $sp, 4
	li $t0, 31945
	sw $t0, -3224($fp)
	li $t0, 0
	lw $t1, -3224($fp)
	sub $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3220($fp)
	lw $t1, -3228($fp)
	add $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label379
label378:
	addi $t0, $fp, -72
	sw $t0, -3236($fp)
	lw $t0, -232($fp)
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
	lw $t0, -616($fp)
	sw $t0, -3256($fp)
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3260($fp)
	li $t0, 0
	sw $t0, -3264($fp)
	li $t0, 1755
	sw $t0, -3268($fp)
	li $t0, 3304
	sw $t0, -3272($fp)
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3276($fp)
	lw $t0, -592($fp)
	sw $t0, -3280($fp)
	lw $t1, -3276($fp)
	lw $t2, -3280($fp)
	bgt $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -3264($fp)
label385:
	li $t0, 22930
	sw $t0, -3284($fp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3288($fp)
	addi $sp, $sp, 16
	lw $t0, -1708($fp)
	sw $t0, -3292($fp)
	lw $t0, -1252($fp)
	sw $t0, -3296($fp)
	lw $t0, -3292($fp)
	lw $t1, -3296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3300($fp)
	lw $t0, -616($fp)
	sw $t0, -3304($fp)
	lw $t0, -3300($fp)
	lw $t1, -3304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3308($fp)
	addi $t0, $fp, -1972
	sw $t0, -3312($fp)
	li $t0, 4
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
	lw $t0, -3308($fp)
	lw $t1, -3328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3332($fp)
	lw $t0, -3288($fp)
	lw $t1, -3332($fp)
	sub $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label382
label381:
	lw $t0, -604($fp)
	sw $t0, -3340($fp)
	li $t0, 0
	sw $t0, -3344($fp)
	li $t0, 51757
	sw $t0, -3348($fp)
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -3344($fp)
label387:
	lw $t0, -3340($fp)
	lw $t1, -3344($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	j label383
label382:
	addi $t0, $fp, -56
	sw $t0, -3356($fp)
	li $t0, 0
	sw $t0, -3360($fp)
	li $t0, 28316
	sw $t0, -3364($fp)
	lw $t0, -1684($fp)
	sw $t0, -3368($fp)
	lw $t1, -3364($fp)
	lw $t2, -3368($fp)
	beq $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -3360($fp)
label389:
	li $t0, 4
	lw $t1, -3360($fp)
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	li $t0, 57422
	sw $t0, -3384($fp)
	lw $t0, -1708($fp)
	sw $t0, -3388($fp)
	lw $t0, -3384($fp)
	lw $t1, -3388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3392($fp)
	lw $t0, -1516($fp)
	sw $t0, -3396($fp)
	lw $t0, -3392($fp)
	lw $t1, -3396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3400($fp)
	li $t0, 61686
	sw $t0, -3404($fp)
	lw $t0, -3400($fp)
	lw $t1, -3404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3408($fp)
	lw $t0, -3380($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
label383:
	j label380
label379:
	addi $t0, $fp, -124
	sw $t0, -3416($fp)
	lw $t0, -1120($fp)
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -3424($fp)
	li $t0, 4
	lw $t1, -3424($fp)
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	lw $t1, -3416($fp)
	add $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, 0($t0)
	sw $t1, -3436($fp)
label380:
label366:
	j label359
label358:
	li $t0, 0
	sw $t0, -3440($fp)
	li $t0, 0
	sw $t0, -3444($fp)
	li $t0, 39743
	sw $t0, -3448($fp)
	jal f6
	sw $v0, -3452($fp)
	addi $sp, $sp, 4
	li $t0, 41904
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -3460($fp)
	addi $sp, $sp, -4
	lw $t0, -3448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3464($fp)
	addi $sp, $sp, 16
	lw $t1, -3464($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label393
label393:
	li $t0, 1
	sw $t0, -3444($fp)
label394:
	li $t0, 0
	sw $t0, -3468($fp)
	lw $t0, -1252($fp)
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -3468($fp)
label396:
	lw $t1, -3444($fp)
	lw $t2, -3468($fp)
	bge $t1, $t2, label392
	j label391
label392:
	lw $t0, -1516($fp)
	sw $t0, -3476($fp)
	lw $t1, -3476($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -3440($fp)
label391:
	lw $ra, -4($fp)
	lw $v0, -3440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label359:
label310:
	j label298
label297:
	lw $t0, -628($fp)
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -3484($fp)
	lw $ra, -4($fp)
	lw $v0, -3484($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label298:
	lw $t0, -1264($fp)
	sw $t0, -3488($fp)
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 9518
	sw $t0, -3496($fp)
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label400
label400:
	li $t0, 1
	sw $t0, -3492($fp)
label401:
	lw $t0, -3492($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -3500($fp)
	j label399
label398:
	lw $t0, -1528($fp)
	sw $t0, -3504($fp)
label399:
	li $t0, 0
	sw $t0, -3508($fp)
	li $t0, 0
	sw $t0, -3512($fp)
	li $t0, 35333
	sw $t0, -3516($fp)
	li $t0, 0
	lw $t1, -3516($fp)
	sub $t0, $t0, $t1
	sw $t0, -3520($fp)
	addi $t0, $fp, -24
	sw $t0, -3524($fp)
	li $t0, 3
	sw $t0, -3528($fp)
	li $t0, 4
	lw $t1, -3528($fp)
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, -3524($fp)
	add $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, 0($t0)
	sw $t1, -3540($fp)
	lw $t0, -3520($fp)
	lw $t1, -3540($fp)
	sub $t0, $t0, $t1
	sw $t0, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	li $t0, 31750
	sw $t0, -3552($fp)
	lw $t0, -220($fp)
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	sub $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -616($fp)
	sw $t0, -3564($fp)
	lw $t1, -3560($fp)
	lw $t2, -3564($fp)
	ble $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -3548($fp)
label407:
	lw $t1, -3544($fp)
	lw $t2, -3548($fp)
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -3512($fp)
label405:
	li $t0, 0
	sw $t0, -3568($fp)
	li $t0, 13067
	sw $t0, -3572($fp)
	lw $t0, -1540($fp)
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -1708($fp)
	sw $t0, -3584($fp)
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3588($fp)
	addi $t0, $fp, -56
	sw $t0, -3592($fp)
	li $t0, 4
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
	lw $t1, -3588($fp)
	lw $t2, -3608($fp)
	bgt $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -3568($fp)
label409:
	lw $t1, -3512($fp)
	lw $t2, -3568($fp)
	beq $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -3508($fp)
label403:
	li $t0, 11976
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	sw $t0, -3620($fp)
	li $t0, 21873
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -3632($fp)
	li $t0, 3242
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -3644($fp)
	li $t0, 48151
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	sw $t0, -3656($fp)
	li $t0, 14816
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	sw $t0, -3668($fp)
	lw $t0, -3616($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3628($fp)
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3640($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3652($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3664($fp)
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3692($fp)
	li $t0, 28303
	sw $t0, -3696($fp)
	lw $t1, -3696($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label410:
	li $t0, 1
	sw $t0, -3692($fp)
label411:
	lw $t0, -3628($fp)
	sw $t0, -3700($fp)
	lw $t0, -3692($fp)
	lw $t1, -3700($fp)
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	li $t0, 25372
	sw $t0, -3708($fp)
	lw $t0, -3704($fp)
	lw $t1, -3708($fp)
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	li $t0, 0
	sw $t0, -3716($fp)
	lw $t0, -1708($fp)
	sw $t0, -3720($fp)
	lw $t1, -3720($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label412:
	li $t0, 1
	sw $t0, -3716($fp)
label413:
	lw $t0, -3712($fp)
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3652($fp)
	sw $t0, -3728($fp)
	li $t0, 0
	lw $t1, -3728($fp)
	sub $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3724($fp)
	lw $t1, -3732($fp)
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $ra, -4($fp)
	lw $v0, -3736($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 6762
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3820($fp)
	li $t0, 8459
	sw $t0, -3824($fp)
	addi $t0, $fp, -3768
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
	li $t0, 3435
	sw $t0, -3848($fp)
	addi $t0, $fp, -3768
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
	li $t0, 31711
	sw $t0, -3872($fp)
	addi $t0, $fp, -3768
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
	li $t0, 40405
	sw $t0, -3896($fp)
	addi $t0, $fp, -3768
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
	li $t0, 26365
	sw $t0, -3920($fp)
	addi $t0, $fp, -3768
	sw $t0, -3924($fp)
	li $t0, 4
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
	li $t0, 33466
	sw $t0, -3944($fp)
	addi $t0, $fp, -3768
	sw $t0, -3948($fp)
	li $t0, 5
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
	li $t0, 43709
	sw $t0, -3968($fp)
	addi $t0, $fp, -3768
	sw $t0, -3972($fp)
	li $t0, 6
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
	li $t0, 28683
	sw $t0, -3992($fp)
	addi $t0, $fp, -3768
	sw $t0, -3996($fp)
	li $t0, 7
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
	li $t0, 28822
	sw $t0, -4016($fp)
	addi $t0, $fp, -3808
	sw $t0, -4020($fp)
	li $t0, 0
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
	li $t0, 29930
	sw $t0, -4040($fp)
	addi $t0, $fp, -3808
	sw $t0, -4044($fp)
	li $t0, 1
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
	li $t0, 56999
	sw $t0, -4064($fp)
	addi $t0, $fp, -3808
	sw $t0, -4068($fp)
	li $t0, 2
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
	li $t0, 20708
	sw $t0, -4088($fp)
	addi $t0, $fp, -3808
	sw $t0, -4092($fp)
	li $t0, 3
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
	li $t0, 26080
	sw $t0, -4112($fp)
	addi $t0, $fp, -3808
	sw $t0, -4116($fp)
	li $t0, 4
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
	li $t0, 33367
	sw $t0, -4136($fp)
	addi $t0, $fp, -3808
	sw $t0, -4140($fp)
	li $t0, 5
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
	li $t0, 60451
	sw $t0, -4160($fp)
	addi $t0, $fp, -3808
	sw $t0, -4164($fp)
	li $t0, 6
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4164($fp)
	lw $t1, -4172($fp)
	add $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4160($fp)
	lw $t1, -4176($fp)
	sw $t0, 0($t1)
	lw $t0, -4176($fp)
	lw $t1, 0($t0)
	sw $t1, -4180($fp)
	li $t0, 35599
	sw $t0, -4184($fp)
	addi $t0, $fp, -3808
	sw $t0, -4188($fp)
	li $t0, 7
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
	li $t0, 3165
	sw $t0, -4208($fp)
	addi $t0, $fp, -3808
	sw $t0, -4212($fp)
	li $t0, 8
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
	li $t0, 46064
	sw $t0, -4232($fp)
	addi $t0, $fp, -3808
	sw $t0, -4236($fp)
	li $t0, 9
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
	li $t0, 12388
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -4264($fp)
	li $t0, 34915
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	sw $t0, -4276($fp)
	li $t0, 59132
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	sw $t0, -4288($fp)
label414:
	lw $t0, -1696($fp)
	sw $t0, -4292($fp)
	li $t0, 64911
	sw $t0, -4296($fp)
	lw $t0, -4292($fp)
	lw $t1, -4296($fp)
	mul $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t1, -4300($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label416
label415:
	li $t0, 0
	sw $t0, -4304($fp)
	addi $t0, $fp, -3808
	sw $t0, -4308($fp)
	li $t0, 0
	sw $t0, -4312($fp)
	lw $t0, -616($fp)
	sw $t0, -4316($fp)
	li $t0, 33423
	sw $t0, -4320($fp)
	lw $t0, -4316($fp)
	lw $t1, -4320($fp)
	add $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label422:
	lw $t0, -4284($fp)
	sw $t0, -4328($fp)
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -4312($fp)
label421:
	li $t0, 4
	lw $t1, -4312($fp)
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	lw $t1, -4308($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	lw $t1, 0($t0)
	sw $t1, -4340($fp)
	lw $t1, -4340($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label419:
	li $t0, 5572
	sw $t0, -4344($fp)
	li $t0, 21248
	sw $t0, -4348($fp)
	lw $t0, -4344($fp)
	lw $t1, -4348($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	li $t0, 1
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	li $t0, 0
	lw $t1, -4360($fp)
	sub $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t1, -4364($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -4304($fp)
label418:
	j label414
label416:
	lw $t0, -3816($fp)
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	li $t0, 4
	lw $t1, -4376($fp)
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	lw $t1, -4372($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	lw $t1, 0($t0)
	sw $t1, -4388($fp)
	lw $t0, -4388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4392($fp)
	li $t0, 1
	sw $t0, -4396($fp)
	li $t0, 4
	lw $t1, -4396($fp)
	mul $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	lw $t1, -4392($fp)
	add $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	lw $t1, 0($t0)
	sw $t1, -4408($fp)
	lw $t0, -4408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4412($fp)
	li $t0, 2
	sw $t0, -4416($fp)
	li $t0, 4
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4432($fp)
	li $t0, 3
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
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4452($fp)
	li $t0, 4
	sw $t0, -4456($fp)
	li $t0, 4
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	lw $t0, -4468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4472($fp)
	li $t0, 5
	sw $t0, -4476($fp)
	li $t0, 4
	lw $t1, -4476($fp)
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, -4472($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	lw $t0, -4488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4492($fp)
	li $t0, 6
	sw $t0, -4496($fp)
	li $t0, 4
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, -4492($fp)
	add $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, 0($t0)
	sw $t1, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4512($fp)
	li $t0, 7
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
	addi $t0, $fp, -3808
	sw $t0, -4532($fp)
	li $t0, 0
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
	addi $t0, $fp, -3808
	sw $t0, -4552($fp)
	li $t0, 1
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
	addi $t0, $fp, -3808
	sw $t0, -4572($fp)
	li $t0, 2
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
	addi $t0, $fp, -3808
	sw $t0, -4592($fp)
	li $t0, 3
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
	addi $t0, $fp, -3808
	sw $t0, -4612($fp)
	li $t0, 4
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
	addi $t0, $fp, -3808
	sw $t0, -4632($fp)
	li $t0, 5
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
	addi $t0, $fp, -3808
	sw $t0, -4652($fp)
	li $t0, 6
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
	addi $t0, $fp, -3808
	sw $t0, -4672($fp)
	li $t0, 7
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
	addi $t0, $fp, -3808
	sw $t0, -4692($fp)
	li $t0, 8
	sw $t0, -4696($fp)
	li $t0, 4
	lw $t1, -4696($fp)
	mul $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	lw $t1, -4692($fp)
	add $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	lw $t1, 0($t0)
	sw $t1, -4708($fp)
	lw $t0, -4708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3808
	sw $t0, -4712($fp)
	li $t0, 9
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
	lw $t0, -4728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4260($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4272($fp)
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4284($fp)
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	lw $t0, -1120($fp)
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label430
label430:
	li $t0, 53724
	sw $t0, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label429
label429:
	li $t0, 36065
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -4748($fp)
label428:
	lw $t0, -580($fp)
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -4768($fp)
	lw $t0, -580($fp)
	sw $t0, -4772($fp)
	addi $sp, $sp, -4
	lw $t0, -4748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4772($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4776($fp)
	addi $sp, $sp, 16
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label426:
	li $t0, 64969
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label425
label425:
	li $t0, 13560
	sw $t0, -4784($fp)
	lw $t1, -4784($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label424
label431:
	li $t0, 42827
	sw $t0, -4788($fp)
	lw $t1, -4788($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -4744($fp)
label424:
	lw $t0, -4744($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -4792($fp)
	lw $ra, -4($fp)
	lw $v0, -4792($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 7893
	sw $t0, -4812($fp)
	addi $t0, $fp, -4808
	sw $t0, -4816($fp)
	li $t0, 0
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4816($fp)
	lw $t1, -4824($fp)
	add $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4812($fp)
	lw $t1, -4828($fp)
	sw $t0, 0($t1)
	lw $t0, -4828($fp)
	lw $t1, 0($t0)
	sw $t1, -4832($fp)
	li $t0, 16995
	sw $t0, -4836($fp)
	addi $t0, $fp, -4808
	sw $t0, -4840($fp)
	li $t0, 1
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4840($fp)
	lw $t1, -4848($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4836($fp)
	lw $t1, -4852($fp)
	sw $t0, 0($t1)
	lw $t0, -4852($fp)
	lw $t1, 0($t0)
	sw $t1, -4856($fp)
	li $t0, 9002
	sw $t0, -4860($fp)
	addi $t0, $fp, -4808
	sw $t0, -4864($fp)
	li $t0, 2
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4864($fp)
	lw $t1, -4872($fp)
	add $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4860($fp)
	lw $t1, -4876($fp)
	sw $t0, 0($t1)
	lw $t0, -4876($fp)
	lw $t1, 0($t0)
	sw $t1, -4880($fp)
	li $t0, 48298
	sw $t0, -4884($fp)
	addi $t0, $fp, -4808
	sw $t0, -4888($fp)
	li $t0, 3
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4888($fp)
	lw $t1, -4896($fp)
	add $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4884($fp)
	lw $t1, -4900($fp)
	sw $t0, 0($t1)
	lw $t0, -4900($fp)
	lw $t1, 0($t0)
	sw $t1, -4904($fp)
	addi $t0, $fp, -24
	sw $t0, -4908($fp)
	addi $t0, $fp, -4808
	sw $t0, -4912($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -4932($fp)
	li $t0, 0
	sw $t0, -4936($fp)
	li $t0, 4
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	lw $t1, -4932($fp)
	add $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	lw $t1, 0($t0)
	sw $t1, -4948($fp)
	lw $t0, -4928($fp)
	lw $t1, -4948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4952($fp)
	li $t0, 4
	lw $t1, -4952($fp)
	mul $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, -4908($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	lw $t1, 0($t0)
	sw $t1, -4964($fp)
	li $t0, 0
	sw $t0, -4968($fp)
	lw $t0, -3652($fp)
	sw $t0, -4972($fp)
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -4968($fp)
label433:
	lw $t0, -4968($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -4976($fp)
	lw $t0, -1120($fp)
	sw $t0, -4980($fp)
	lw $t0, -3640($fp)
	sw $t0, -4984($fp)
	li $t0, 5755
	sw $t0, -4988($fp)
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4992($fp)
	lw $t0, -4980($fp)
	lw $t1, -4992($fp)
	add $t0, $t0, $t1
	sw $t0, -4996($fp)
	li $t0, 56402
	sw $t0, -5000($fp)
	li $t0, 0
	lw $t1, -5000($fp)
	sub $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -4996($fp)
	lw $t1, -5004($fp)
	add $t0, $t0, $t1
	sw $t0, -5008($fp)
	addi $t0, $fp, -144
	sw $t0, -5012($fp)
	li $t0, 0
	sw $t0, -5016($fp)
	lw $t0, -868($fp)
	sw $t0, -5020($fp)
	lw $t0, -3664($fp)
	sw $t0, -5024($fp)
	lw $t0, -5020($fp)
	lw $t1, -5024($fp)
	mul $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, 4($fp)
	sw $t0, -5032($fp)
	lw $t0, -5028($fp)
	lw $t1, -5032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5036($fp)
	li $t0, 63507
	sw $t0, -5040($fp)
	lw $t0, -1540($fp)
	sw $t0, -5044($fp)
	lw $t0, -5040($fp)
	lw $t1, -5044($fp)
	add $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t1, -5036($fp)
	lw $t2, -5048($fp)
	ble $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -5016($fp)
label435:
	li $t0, 4
	lw $t1, -5016($fp)
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, -5012($fp)
	add $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, 0($t0)
	sw $t1, -5060($fp)
	li $t0, 0
	sw $t0, -5064($fp)
	li $t0, 0
	sw $t0, -5068($fp)
	li $t0, 26463
	sw $t0, -5072($fp)
	lw $t1, -5072($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label439
label439:
	li $t0, 1
	sw $t0, -5068($fp)
label440:
	li $t0, 0
	lw $t1, -5068($fp)
	sub $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t1, -5076($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label438:
	li $t0, 16946
	sw $t0, -5080($fp)
	li $t0, 31338
	sw $t0, -5084($fp)
	lw $t0, -5080($fp)
	lw $t1, -5084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5088($fp)
	lw $t0, -3640($fp)
	sw $t0, -5092($fp)
	lw $t0, -5088($fp)
	lw $t1, -5092($fp)
	add $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -580($fp)
	sw $t0, -5100($fp)
	li $t0, 21379
	sw $t0, -5104($fp)
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	mul $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -5096($fp)
	lw $t1, -5108($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -5064($fp)
label437:
	li $t0, 52545
	sw $t0, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label442
label441:
label444:
	li $t0, 34503
	sw $t0, -5120($fp)
	jal f6
	sw $v0, -5124($fp)
	addi $sp, $sp, 4
	lw $t1, -5120($fp)
	lw $t2, -5124($fp)
	bgt $t1, $t2, label445
	j label446
label445:
	li $t0, 1907
	sw $t0, -5128($fp)
	li $t0, 64309
	sw $t0, -5132($fp)
	li $t0, 37306
	sw $t0, -5136($fp)
	lw $t0, -5132($fp)
	lw $t1, -5136($fp)
	add $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -604($fp)
	sw $t0, -5144($fp)
	lw $t0, -5140($fp)
	lw $t1, -5144($fp)
	add $t0, $t0, $t1
	sw $t0, -5148($fp)
	li $t0, 0
	sw $t0, -5152($fp)
	li $t0, 0
	sw $t0, -5156($fp)
	lw $t0, -1708($fp)
	sw $t0, -5160($fp)
	lw $t0, -3652($fp)
	sw $t0, -5164($fp)
	lw $t1, -5160($fp)
	lw $t2, -5164($fp)
	beq $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -5156($fp)
label453:
	li $t0, 61039
	sw $t0, -5168($fp)
	lw $t1, -5156($fp)
	lw $t2, -5168($fp)
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -5152($fp)
label451:
	li $t0, 64934
	sw $t0, -5172($fp)
	li $t0, 3882
	sw $t0, -5176($fp)
	lw $t0, -5172($fp)
	lw $t1, -5176($fp)
	mul $t0, $t0, $t1
	sw $t0, -5180($fp)
	li $t0, 0
	lw $t1, -5180($fp)
	sub $t0, $t0, $t1
	sw $t0, -5184($fp)
	addi $sp, $sp, -4
	lw $t0, -5148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5184($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5188($fp)
	addi $sp, $sp, 16
	lw $t0, -5128($fp)
	lw $t1, -5188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5192($fp)
	lw $t0, -5192($fp)
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	sw $t0, -5196($fp)
	lw $t1, -5196($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 0
	sw $t0, -5200($fp)
	li $t0, 1076
	sw $t0, -5204($fp)
	lw $t1, -5204($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -5200($fp)
label455:
	addi $t0, $fp, -200
	sw $t0, -5208($fp)
	lw $t0, -3640($fp)
	sw $t0, -5212($fp)
	li $t0, 4
	lw $t1, -5212($fp)
	mul $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	lw $t1, -5208($fp)
	add $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	lw $t1, 0($t0)
	sw $t1, -5224($fp)
	lw $t0, -5200($fp)
	lw $t1, -5224($fp)
	mul $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -5232($fp)
	j label449
label448:
label456:
	lw $t0, -364($fp)
	sw $t0, -5236($fp)
	lw $t0, -4260($fp)
	sw $t0, -5240($fp)
	li $t0, 0
	lw $t1, -5240($fp)
	sub $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5236($fp)
	lw $t1, -5244($fp)
	sub $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t1, -5248($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	jal f6
	sw $v0, -5252($fp)
	addi $sp, $sp, 4
	li $t0, 20022
	sw $t0, -5256($fp)
	lw $t0, -5252($fp)
	lw $t1, -5256($fp)
	mul $t0, $t0, $t1
	sw $t0, -5260($fp)
	addi $t0, $fp, -144
	sw $t0, -5264($fp)
	li $t0, 4
	sw $t0, -5268($fp)
	li $t0, 4
	lw $t1, -5268($fp)
	mul $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	lw $t1, -5264($fp)
	add $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, 0($t0)
	sw $t1, -5280($fp)
	li $t0, 56087
	sw $t0, -5284($fp)
	lw $t0, -5280($fp)
	lw $t1, -5284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5288($fp)
	li $t0, 0
	lw $t1, -5288($fp)
	sub $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5260($fp)
	lw $t1, -5292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5296($fp)
	j label456
label458:
label449:
	j label444
label446:
	j label443
label442:
	addi $t0, $fp, -92
	sw $t0, -5300($fp)
	li $t0, 0
	sw $t0, -5304($fp)
	li $t0, 7869
	sw $t0, -5308($fp)
	lw $t0, -580($fp)
	sw $t0, -5312($fp)
	lw $t1, -5308($fp)
	lw $t2, -5312($fp)
	beq $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -5304($fp)
label463:
	li $t0, 4
	lw $t1, -5304($fp)
	mul $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	lw $t1, 0($t0)
	sw $t1, -5324($fp)
	li $t0, 2824
	sw $t0, -5328($fp)
	lw $t0, -5324($fp)
	lw $t1, -5328($fp)
	mul $t0, $t0, $t1
	sw $t0, -5332($fp)
	li $t0, 33378
	sw $t0, -5336($fp)
	li $t0, 15762
	sw $t0, -5340($fp)
	lw $t0, -5336($fp)
	lw $t1, -5340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5344($fp)
	lw $t0, -1708($fp)
	sw $t0, -5348($fp)
	lw $t0, -5344($fp)
	lw $t1, -5348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5352($fp)
	lw $t1, -5332($fp)
	lw $t2, -5352($fp)
	beq $t1, $t2, label459
	j label460
label459:
label464:
	li $t0, 19820
	sw $t0, -5356($fp)
	lw $t1, -5356($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label467
label467:
	addi $t0, $fp, -72
	sw $t0, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	li $t0, 4
	lw $t1, -5364($fp)
	mul $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	lw $t1, 0($t0)
	sw $t1, -5376($fp)
	li $t0, 0
	lw $t1, -5376($fp)
	sub $t0, $t0, $t1
	sw $t0, -5380($fp)
	li $t0, 0
	sw $t0, -5384($fp)
	lw $t0, -1276($fp)
	sw $t0, -5388($fp)
	lw $t1, -5388($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label468:
	li $t0, 1
	sw $t0, -5384($fp)
label469:
	lw $t0, -5380($fp)
	lw $t1, -5384($fp)
	sub $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t1, -5392($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 0
	sw $t0, -5396($fp)
	li $t0, 0
	sw $t0, -5400($fp)
	li $t0, 63181
	sw $t0, -5404($fp)
	lw $t0, -3652($fp)
	sw $t0, -5408($fp)
	lw $t0, -5404($fp)
	lw $t1, -5408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5412($fp)
	li $t0, 19312
	sw $t0, -5416($fp)
	lw $t1, -5412($fp)
	lw $t2, -5416($fp)
	bgt $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -5400($fp)
label473:
	lw $t0, -1252($fp)
	sw $t0, -5420($fp)
	lw $t0, -880($fp)
	sw $t0, -5424($fp)
	lw $t0, -5420($fp)
	lw $t1, -5424($fp)
	sub $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t1, -5400($fp)
	lw $t2, -5428($fp)
	bge $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -5396($fp)
label471:
	lw $t0, -5396($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	sw $t0, -5432($fp)
	j label464
label466:
	j label461
label460:
	lw $t0, -1276($fp)
	sw $t0, -5436($fp)
	lw $t0, -1048($fp)
	sw $t0, -5440($fp)
	li $t0, 24996
	sw $t0, -5444($fp)
	lw $t0, -5440($fp)
	lw $t1, -5444($fp)
	add $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t1, -5436($fp)
	lw $t2, -5448($fp)
	blt $t1, $t2, label474
	j label475
label474:
	addi $t0, $fp, -3768
	sw $t0, -5452($fp)
	lw $t0, -616($fp)
	sw $t0, -5456($fp)
	lw $t0, -1720($fp)
	sw $t0, -5460($fp)
	lw $t0, -5456($fp)
	lw $t1, -5460($fp)
	mul $t0, $t0, $t1
	sw $t0, -5464($fp)
	li $t0, 0
	lw $t1, -5464($fp)
	sub $t0, $t0, $t1
	sw $t0, -5468($fp)
	li $t0, 4
	lw $t1, -5468($fp)
	mul $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	lw $t1, -5452($fp)
	add $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, 0($t0)
	sw $t1, -5480($fp)
	j label476
label475:
	li $t0, 0
	sw $t0, -5484($fp)
	lw $t0, -3816($fp)
	sw $t0, -5488($fp)
	li $t0, 0
	lw $t1, -5488($fp)
	sub $t0, $t0, $t1
	sw $t0, -5492($fp)
	li $t0, 0
	lw $t1, -5492($fp)
	sub $t0, $t0, $t1
	sw $t0, -5496($fp)
	li $t0, 0
	lw $t1, -5496($fp)
	sub $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -568($fp)
	sw $t0, -5504($fp)
	lw $t1, -5500($fp)
	lw $t2, -5504($fp)
	beq $t1, $t2, label479
	j label478
label479:
	li $t0, 4153
	sw $t0, -5508($fp)
	lw $t1, -5508($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label477:
	li $t0, 1
	sw $t0, -5484($fp)
label478:
label476:
label461:
label443:
	li $t0, 25067
	sw $t0, -5512($fp)
	lw $t0, -604($fp)
	sw $t0, -5516($fp)
	lw $t0, -5512($fp)
	lw $t1, -5516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5520($fp)
	li $t0, 0
	sw $t0, -5524($fp)
	lw $t0, 8($fp)
	sw $t0, -5528($fp)
	lw $t1, -5528($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label485:
	li $t0, 1
	sw $t0, -5524($fp)
label486:
	lw $t1, -5520($fp)
	lw $t2, -5524($fp)
	ble $t1, $t2, label484
	j label481
label484:
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 15862
	sw $t0, -5536($fp)
	li $t0, 2124
	sw $t0, -5540($fp)
	lw $t1, -5536($fp)
	lw $t2, -5540($fp)
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -5532($fp)
label488:
	li $t0, 51531
	sw $t0, -5544($fp)
	lw $t1, -5532($fp)
	lw $t2, -5544($fp)
	bne $t1, $t2, label483
	j label481
label483:
	addi $t0, $fp, -92
	sw $t0, -5548($fp)
	li $t0, 2
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
	lw $t1, -5564($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
label489:
	addi $t0, $fp, -180
	sw $t0, -5568($fp)
	li $t0, 0
	sw $t0, -5572($fp)
	jal f6
	sw $v0, -5576($fp)
	addi $sp, $sp, 4
	lw $t1, -5576($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label492
label492:
	li $t0, 1
	sw $t0, -5572($fp)
label493:
	li $t0, 4
	lw $t1, -5572($fp)
	mul $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	lw $t1, -5568($fp)
	add $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	lw $t1, 0($t0)
	sw $t1, -5588($fp)
	lw $t1, -5588($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 7374
	sw $t0, -5592($fp)
	j label489
label491:
	j label482
label481:
	li $t0, 19818
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	sw $t0, -5604($fp)
	li $t0, 0
	sw $t0, -5608($fp)
	addi $t0, $fp, -144
	sw $t0, -5612($fp)
	li $t0, 3
	sw $t0, -5616($fp)
	li $t0, 4
	lw $t1, -5616($fp)
	mul $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	lw $t1, -5612($fp)
	add $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	lw $t1, 0($t0)
	sw $t1, -5628($fp)
	li $t0, 19216
	sw $t0, -5632($fp)
	lw $t0, -220($fp)
	sw $t0, -5636($fp)
	lw $t0, -5632($fp)
	lw $t1, -5636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5640($fp)
	lw $t0, -5628($fp)
	lw $t1, -5640($fp)
	sub $t0, $t0, $t1
	sw $t0, -5644($fp)
	li $t0, 6312
	sw $t0, -5648($fp)
	lw $t1, -5644($fp)
	lw $t2, -5648($fp)
	blt $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -5608($fp)
label498:
	li $t0, 0
	sw $t0, -5652($fp)
	addi $t0, $fp, -144
	sw $t0, -5656($fp)
	lw $t0, -1708($fp)
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
	lw $t1, -5672($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label499:
	li $t0, 1
	sw $t0, -5652($fp)
label500:
	lw $t1, -5608($fp)
	lw $t2, -5652($fp)
	beq $t1, $t2, label494
	j label495
label494:
	addi $t0, $fp, -56
	sw $t0, -5676($fp)
	li $t0, 0
	sw $t0, -5680($fp)
	li $t0, 0
	sw $t0, -5684($fp)
	li $t0, 4785
	sw $t0, -5688($fp)
	lw $t0, -1684($fp)
	sw $t0, -5692($fp)
	lw $t1, -5688($fp)
	lw $t2, -5692($fp)
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -5684($fp)
label507:
	lw $t0, -1540($fp)
	sw $t0, -5696($fp)
	lw $t1, -5684($fp)
	lw $t2, -5696($fp)
	beq $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -5680($fp)
label505:
	li $t0, 4
	lw $t1, -5680($fp)
	mul $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, -5676($fp)
	add $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	lw $t1, 0($t0)
	sw $t1, -5708($fp)
	li $t0, 0
	lw $t1, -5708($fp)
	sub $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t1, -5712($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	lw $t0, -1120($fp)
	sw $t0, -5716($fp)
	lw $ra, -4($fp)
	lw $v0, -5716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label503
label502:
	li $t0, 17989
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
	jal f6
	sw $v0, -5724($fp)
	addi $sp, $sp, 4
	lw $t0, -5724($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -5728($fp)
	j label510
label509:
	li $t0, 0
	sw $t0, -5732($fp)
	addi $t0, $fp, -116
	sw $t0, -5736($fp)
	li $t0, 0
	sw $t0, -5740($fp)
	addi $t0, $fp, -56
	sw $t0, -5744($fp)
	li $t0, 5
	sw $t0, -5748($fp)
	li $t0, 4
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	lw $t1, -5744($fp)
	add $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	lw $t1, 0($t0)
	sw $t1, -5760($fp)
	li $t0, 38011
	sw $t0, -5764($fp)
	lw $t1, -5760($fp)
	lw $t2, -5764($fp)
	bgt $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -5740($fp)
label514:
	li $t0, 4
	lw $t1, -5740($fp)
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, -5736($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	li $t0, 0
	sw $t0, -5780($fp)
	lw $t0, -1540($fp)
	sw $t0, -5784($fp)
	li $t0, 0
	lw $t1, -5784($fp)
	sub $t0, $t0, $t1
	sw $t0, -5788($fp)
	li $t0, 52054
	sw $t0, -5792($fp)
	lw $t1, -5788($fp)
	lw $t2, -5792($fp)
	bge $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -5780($fp)
label516:
	addi $sp, $sp, -4
	lw $t0, -5780($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5796($fp)
	addi $sp, $sp, 8
	lw $t1, -5776($fp)
	lw $t2, -5796($fp)
	bne $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -5732($fp)
label512:
label510:
label503:
	j label496
label495:
	lw $t0, -616($fp)
	sw $t0, -5800($fp)
	lw $ra, -4($fp)
	lw $v0, -5800($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label496:
label517:
	addi $t0, $fp, -144
	sw $t0, -5804($fp)
	li $t0, 3
	sw $t0, -5808($fp)
	li $t0, 4
	lw $t1, -5808($fp)
	mul $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, -5804($fp)
	add $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, 0($t0)
	sw $t1, -5820($fp)
	lw $t0, 8($fp)
	sw $t0, -5824($fp)
	li $t0, 61940
	sw $t0, -5828($fp)
	lw $t0, -5824($fp)
	lw $t1, -5828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5832($fp)
	lw $t0, -1684($fp)
	sw $t0, -5836($fp)
	lw $t0, -5832($fp)
	lw $t1, -5836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5840($fp)
	li $t0, 63485
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	lw $t0, 4($fp)
	sw $t0, -5856($fp)
	li $t0, 59924
	sw $t0, -5860($fp)
	lw $t1, -5856($fp)
	lw $t2, -5860($fp)
	bge $t1, $t2, label520
	j label522
label522:
	lw $t0, -364($fp)
	sw $t0, -5864($fp)
	lw $t1, -5864($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -5852($fp)
label521:
	addi $sp, $sp, -4
	lw $t0, -5840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5868($fp)
	addi $sp, $sp, 16
	lw $t1, -5820($fp)
	lw $t2, -5868($fp)
	bge $t1, $t2, label518
	j label519
label518:
label523:
	lw $t0, -1060($fp)
	sw $t0, -5872($fp)
	lw $t1, -5872($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
label526:
	lw $t0, -1048($fp)
	sw $t0, -5876($fp)
	lw $t0, -1708($fp)
	sw $t0, -5880($fp)
	lw $t0, -5876($fp)
	lw $t1, -5880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	lw $t0, -220($fp)
	sw $t0, -5888($fp)
	li $t0, 10150
	sw $t0, -5892($fp)
	lw $t0, -5888($fp)
	lw $t1, -5892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5896($fp)
	li $t0, 0
	lw $t1, -5896($fp)
	sub $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t1, -5900($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	lw $t0, -880($fp)
	sw $t0, -5904($fp)
	j label531
label530:
	lw $t0, -1516($fp)
	sw $t0, -5908($fp)
label531:
	j label526
label528:
	j label523
label525:
	j label517
label519:
label532:
	li $t0, 17769
	sw $t0, -5912($fp)
	li $t0, 38784
	sw $t0, -5916($fp)
	li $t0, 8675
	sw $t0, -5920($fp)
	lw $t0, -5916($fp)
	lw $t1, -5920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5924($fp)
	lw $t0, -3664($fp)
	sw $t0, -5928($fp)
	lw $t0, -5924($fp)
	lw $t1, -5928($fp)
	sub $t0, $t0, $t1
	sw $t0, -5932($fp)
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5936($fp)
	addi $sp, $sp, 8
	lw $t0, -5912($fp)
	lw $t1, -5936($fp)
	mul $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t1, -5940($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label535
label535:
	lw $t0, -1684($fp)
	sw $t0, -5944($fp)
	lw $t1, -5944($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 15414
	sw $t0, -5968($fp)
	addi $t0, $fp, -5964
	sw $t0, -5972($fp)
	li $t0, 0
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -5972($fp)
	lw $t1, -5980($fp)
	add $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t0, -5968($fp)
	lw $t1, -5984($fp)
	sw $t0, 0($t1)
	lw $t0, -5984($fp)
	lw $t1, 0($t0)
	sw $t1, -5988($fp)
	li $t0, 58097
	sw $t0, -5992($fp)
	addi $t0, $fp, -5964
	sw $t0, -5996($fp)
	li $t0, 1
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t0, -5996($fp)
	lw $t1, -6004($fp)
	add $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -5992($fp)
	lw $t1, -6008($fp)
	sw $t0, 0($t1)
	lw $t0, -6008($fp)
	lw $t1, 0($t0)
	sw $t1, -6012($fp)
	li $t0, 33671
	sw $t0, -6016($fp)
	addi $t0, $fp, -5964
	sw $t0, -6020($fp)
	li $t0, 2
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t0, -6020($fp)
	lw $t1, -6028($fp)
	add $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -6016($fp)
	lw $t1, -6032($fp)
	sw $t0, 0($t1)
	lw $t0, -6032($fp)
	lw $t1, 0($t0)
	sw $t1, -6036($fp)
	li $t0, 19567
	sw $t0, -6040($fp)
	addi $t0, $fp, -5964
	sw $t0, -6044($fp)
	li $t0, 3
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t0, -6044($fp)
	lw $t1, -6052($fp)
	add $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, -6040($fp)
	lw $t1, -6056($fp)
	sw $t0, 0($t1)
	lw $t0, -6056($fp)
	lw $t1, 0($t0)
	sw $t1, -6060($fp)
	li $t0, 17628
	sw $t0, -6064($fp)
	addi $t0, $fp, -5964
	sw $t0, -6068($fp)
	li $t0, 4
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t0, -6068($fp)
	lw $t1, -6076($fp)
	add $t0, $t0, $t1
	sw $t0, -6080($fp)
	lw $t0, -6064($fp)
	lw $t1, -6080($fp)
	sw $t0, 0($t1)
	lw $t0, -6080($fp)
	lw $t1, 0($t0)
	sw $t1, -6084($fp)
	li $t0, 49533
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	sw $t0, -6096($fp)
	lw $t0, -6092($fp)
	sw $t0, -6100($fp)
	li $t0, 0
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	li $t0, 0
	sw $t0, -6108($fp)
	lw $t0, -1048($fp)
	sw $t0, -6112($fp)
	lw $t1, -6112($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -6108($fp)
label537:
	li $t0, 21691
	sw $t0, -6116($fp)
	li $t0, 0
	lw $t1, -6116($fp)
	sub $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6108($fp)
	lw $t1, -6120($fp)
	mul $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6104($fp)
	lw $t1, -6124($fp)
	sub $t0, $t0, $t1
	sw $t0, -6128($fp)
	lw $t0, -1288($fp)
	sw $t0, -6132($fp)
	addi $t0, $fp, -5964
	sw $t0, -6136($fp)
	li $t0, 4
	sw $t0, -6140($fp)
	li $t0, 4
	lw $t1, -6140($fp)
	mul $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	lw $t1, -6136($fp)
	add $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	lw $t1, 0($t0)
	sw $t1, -6152($fp)
	li $t0, 10997
	sw $t0, -6156($fp)
	lw $t0, -6152($fp)
	lw $t1, -6156($fp)
	mul $t0, $t0, $t1
	sw $t0, -6160($fp)
	li $t0, 0
	sw $t0, -6164($fp)
	lw $t0, -3616($fp)
	sw $t0, -6168($fp)
	lw $t0, -604($fp)
	sw $t0, -6172($fp)
	lw $t0, -6168($fp)
	lw $t1, -6172($fp)
	mul $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t1, -6176($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label540:
	li $t0, 3623
	sw $t0, -6180($fp)
	lw $t1, -6180($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -6164($fp)
label539:
	li $t0, 0
	sw $t0, -6184($fp)
	lw $t0, -232($fp)
	sw $t0, -6188($fp)
	li $t0, 0
	lw $t1, -6188($fp)
	sub $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t1, -6192($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label541:
	li $t0, 1
	sw $t0, -6184($fp)
label542:
	addi $sp, $sp, -4
	lw $t0, -6160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6184($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6196($fp)
	addi $sp, $sp, 16
	lw $t0, -6132($fp)
	lw $t1, -6196($fp)
	sub $t0, $t0, $t1
	sw $t0, -6200($fp)
	li $t0, 36623
	sw $t0, -6204($fp)
	li $t0, 0
	lw $t1, -6204($fp)
	sub $t0, $t0, $t1
	sw $t0, -6208($fp)
	j label532
label534:
label482:
	li $t0, 57584
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	sw $t0, -6220($fp)
	li $t0, 20279
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	sw $t0, -6232($fp)
	li $t0, 0
	sw $t0, -6236($fp)
	addi $t0, $fp, -56
	sw $t0, -6240($fp)
	li $t0, 0
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
	lw $t1, -6256($fp)
	sub $t0, $t0, $t1
	sw $t0, -6260($fp)
	li $t0, 0
	lw $t1, -6260($fp)
	sub $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label545:
	lw $t0, -628($fp)
	sw $t0, -6268($fp)
	li $t0, 25064
	sw $t0, -6272($fp)
	li $t0, 8293
	sw $t0, -6276($fp)
	lw $t0, -6272($fp)
	lw $t1, -6276($fp)
	mul $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t1, -6268($fp)
	lw $t2, -6280($fp)
	ble $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -6236($fp)
label544:
	lw $t0, -6216($fp)
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6228($fp)
	sw $t0, -6288($fp)
	lw $t0, -6288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 41979
	sw $t0, -6292($fp)
	lw $ra, -4($fp)
	lw $v0, -6292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label546:
	lw $t0, -364($fp)
	sw $t0, -6296($fp)
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label547
label549:
	li $t0, 0
	sw $t0, -6300($fp)
	li $t0, 28497
	sw $t0, -6304($fp)
	lw $t0, -1252($fp)
	sw $t0, -6308($fp)
	lw $t0, -6304($fp)
	lw $t1, -6308($fp)
	mul $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t1, -6312($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label552
label552:
	li $t0, 26050
	sw $t0, -6316($fp)
	lw $t1, -6316($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -6300($fp)
label551:
	li $t0, 0
	sw $t0, -6320($fp)
	addi $t0, $fp, -124
	sw $t0, -6324($fp)
	li $t0, 0
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
	lw $t1, -6340($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -6320($fp)
label554:
	addi $sp, $sp, -4
	lw $t0, -6300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6320($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6344($fp)
	addi $sp, $sp, 12
	lw $t1, -6344($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label548
label547:
label555:
	lw $t0, -3640($fp)
	sw $t0, -6348($fp)
	li $t0, 9331
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	sw $t0, -6356($fp)
	addi $sp, $sp, -4
	lw $t0, -6348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6356($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6360($fp)
	addi $sp, $sp, 12
	lw $t0, -1708($fp)
	sw $t0, -6364($fp)
	lw $t1, -6360($fp)
	lw $t2, -6364($fp)
	bgt $t1, $t2, label556
	j label557
label556:
	li $t0, 0
	sw $t0, -6368($fp)
	li $t0, 22885
	sw $t0, -6372($fp)
	li $t0, 0
	lw $t1, -6372($fp)
	sub $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t1, -6376($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label558
label558:
	li $t0, 1
	sw $t0, -6368($fp)
label559:
	li $t0, 0
	lw $t1, -6368($fp)
	sub $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -6384($fp)
	lw $ra, -4($fp)
	lw $v0, -6384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label555
label557:
	j label546
label548:
	lw $t0, -6216($fp)
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6228($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6228($fp)
	sw $t0, -6396($fp)
	lw $t0, -1048($fp)
	sw $t0, -6400($fp)
	lw $t0, -6396($fp)
	lw $t1, -6400($fp)
	sub $t0, $t0, $t1
	sw $t0, -6404($fp)
	addi $sp, $sp, -4
	lw $t0, -6404($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6408($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -6408($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -6216($fp)
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6228($fp)
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6420($fp)
	li $t0, 23999
	sw $t0, -6424($fp)
	li $t0, 5735
	sw $t0, -6428($fp)
	lw $t0, -6424($fp)
	lw $t1, -6428($fp)
	mul $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t1, -6432($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label562:
	lw $t0, -364($fp)
	sw $t0, -6436($fp)
	lw $t1, -6436($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -6420($fp)
label561:
	addi $sp, $sp, -4
	lw $t0, -6420($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6440($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6444($fp)
	addi $t0, $fp, -72
	sw $t0, -6448($fp)
	li $t0, 1
	sw $t0, -6452($fp)
	li $t0, 4
	lw $t1, -6452($fp)
	mul $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	lw $t1, -6448($fp)
	add $t0, $t0, $t1
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	lw $t1, 0($t0)
	sw $t1, -6464($fp)
	lw $t1, -6464($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label563
label563:
	li $t0, 1
	sw $t0, -6444($fp)
label564:
	lw $t0, -6440($fp)
	lw $t1, -6444($fp)
	mul $t0, $t0, $t1
	sw $t0, -6468($fp)
	li $t0, 0
	lw $t1, -6468($fp)
	sub $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $ra, -4($fp)
	lw $v0, -6472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3616($fp)
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3628($fp)
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3640($fp)
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3652($fp)
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3664($fp)
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f6
	sw $v0, -6496($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -6496($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -208($fp)
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -6512($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -6532($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -6552($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -6572($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -6592($fp)
	li $t0, 4
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
	lw $t0, -364($fp)
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6616($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -6636($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -6656($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -6676($fp)
	li $t0, 3
	sw $t0, -6680($fp)
	li $t0, 4
	lw $t1, -6680($fp)
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	lw $t1, -6676($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, 0($t0)
	sw $t1, -6692($fp)
	lw $t0, -6692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6696($fp)
	li $t0, 4
	sw $t0, -6700($fp)
	li $t0, 4
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, 0($t0)
	sw $t1, -6712($fp)
	lw $t0, -6712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6716($fp)
	li $t0, 5
	sw $t0, -6720($fp)
	li $t0, 4
	lw $t1, -6720($fp)
	mul $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	lw $t1, -6716($fp)
	add $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	lw $t1, 0($t0)
	sw $t1, -6732($fp)
	lw $t0, -6732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6736($fp)
	li $t0, 6
	sw $t0, -6740($fp)
	li $t0, 4
	lw $t1, -6740($fp)
	mul $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, -6736($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, 0($t0)
	sw $t1, -6752($fp)
	lw $t0, -6752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6756($fp)
	li $t0, 7
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
	lw $t0, -6772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -6800($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -6820($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -6840($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -6860($fp)
	li $t0, 3
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
	addi $t0, $fp, -92
	sw $t0, -6880($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -6900($fp)
	li $t0, 1
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
	addi $t0, $fp, -92
	sw $t0, -6920($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -6940($fp)
	li $t0, 3
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
	addi $t0, $fp, -92
	sw $t0, -6960($fp)
	li $t0, 4
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
	lw $t0, -856($fp)
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -868($fp)
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -6992($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -7012($fp)
	li $t0, 1
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
	addi $t0, $fp, -116
	sw $t0, -7032($fp)
	li $t0, 2
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
	addi $t0, $fp, -116
	sw $t0, -7052($fp)
	li $t0, 3
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
	addi $t0, $fp, -116
	sw $t0, -7072($fp)
	li $t0, 4
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
	addi $t0, $fp, -116
	sw $t0, -7092($fp)
	li $t0, 5
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
	lw $t0, -1036($fp)
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
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
	addi $t0, $fp, -124
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
	lw $t0, -1120($fp)
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -7168($fp)
	li $t0, 0
	sw $t0, -7172($fp)
	li $t0, 4
	lw $t1, -7172($fp)
	mul $t0, $t0, $t1
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	lw $t1, -7168($fp)
	add $t0, $t0, $t1
	sw $t0, -7180($fp)
	lw $t0, -7180($fp)
	lw $t1, 0($t0)
	sw $t1, -7184($fp)
	lw $t0, -7184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -7188($fp)
	li $t0, 1
	sw $t0, -7192($fp)
	li $t0, 4
	lw $t1, -7192($fp)
	mul $t0, $t0, $t1
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	lw $t1, -7188($fp)
	add $t0, $t0, $t1
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	lw $t1, 0($t0)
	sw $t1, -7204($fp)
	lw $t0, -7204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -7208($fp)
	li $t0, 2
	sw $t0, -7212($fp)
	li $t0, 4
	lw $t1, -7212($fp)
	mul $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	lw $t1, -7208($fp)
	add $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, 0($t0)
	sw $t1, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -7228($fp)
	li $t0, 3
	sw $t0, -7232($fp)
	li $t0, 4
	lw $t1, -7232($fp)
	mul $t0, $t0, $t1
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	lw $t1, -7228($fp)
	add $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	lw $t1, 0($t0)
	sw $t1, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -7248($fp)
	li $t0, 4
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
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7284($fp)
	li $t0, 0
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
	addi $t0, $fp, -180
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
	lw $t0, -7320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7324($fp)
	li $t0, 2
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
	addi $t0, $fp, -180
	sw $t0, -7344($fp)
	li $t0, 3
	sw $t0, -7348($fp)
	li $t0, 4
	lw $t1, -7348($fp)
	mul $t0, $t0, $t1
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	lw $t1, -7344($fp)
	add $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	lw $t1, 0($t0)
	sw $t1, -7360($fp)
	lw $t0, -7360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7364($fp)
	li $t0, 4
	sw $t0, -7368($fp)
	li $t0, 4
	lw $t1, -7368($fp)
	mul $t0, $t0, $t1
	sw $t0, -7372($fp)
	lw $t0, -7372($fp)
	lw $t1, -7364($fp)
	add $t0, $t0, $t1
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	lw $t1, 0($t0)
	sw $t1, -7380($fp)
	lw $t0, -7380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7384($fp)
	li $t0, 5
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
	lw $t0, -7400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7404($fp)
	li $t0, 6
	sw $t0, -7408($fp)
	li $t0, 4
	lw $t1, -7408($fp)
	mul $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, -7404($fp)
	add $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7416($fp)
	lw $t1, 0($t0)
	sw $t1, -7420($fp)
	lw $t0, -7420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7424($fp)
	li $t0, 7
	sw $t0, -7428($fp)
	li $t0, 4
	lw $t1, -7428($fp)
	mul $t0, $t0, $t1
	sw $t0, -7432($fp)
	lw $t0, -7432($fp)
	lw $t1, -7424($fp)
	add $t0, $t0, $t1
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	lw $t1, 0($t0)
	sw $t1, -7440($fp)
	lw $t0, -7440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7444($fp)
	li $t0, 8
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
	lw $t0, -7460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1516($fp)
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1528($fp)
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1540($fp)
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -7476($fp)
	li $t0, 0
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
	lw $t0, -7492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -7496($fp)
	li $t0, 1
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
	lw $t0, -7512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -7516($fp)
	li $t0, 2
	sw $t0, -7520($fp)
	li $t0, 4
	lw $t1, -7520($fp)
	mul $t0, $t0, $t1
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	lw $t1, -7516($fp)
	add $t0, $t0, $t1
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	lw $t1, 0($t0)
	sw $t1, -7532($fp)
	lw $t0, -7532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -7536($fp)
	li $t0, 3
	sw $t0, -7540($fp)
	li $t0, 4
	lw $t1, -7540($fp)
	mul $t0, $t0, $t1
	sw $t0, -7544($fp)
	lw $t0, -7544($fp)
	lw $t1, -7536($fp)
	add $t0, $t0, $t1
	sw $t0, -7548($fp)
	lw $t0, -7548($fp)
	lw $t1, 0($t0)
	sw $t1, -7552($fp)
	lw $t0, -7552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -7556($fp)
	li $t0, 4
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
	lw $t0, -7572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1672($fp)
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1684($fp)
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1696($fp)
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7596($fp)
	li $t0, 0
	sw $t0, -7600($fp)
	li $t0, 44520
	sw $t0, -7604($fp)
	lw $t1, -7604($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label567:
	li $t0, 41711
	sw $t0, -7608($fp)
	lw $t1, -7608($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -7600($fp)
label566:
	li $t0, 4
	lw $t1, -7600($fp)
	mul $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	lw $t1, -7596($fp)
	add $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	lw $t1, 0($t0)
	sw $t1, -7620($fp)
	lw $t0, -1264($fp)
	sw $t0, -7624($fp)
	lw $t0, -7620($fp)
	lw $t1, -7624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7628($fp)
	lw $ra, -4($fp)
	lw $v0, -7628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -40
	li $t0, 57183
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	mul $t0, $t0, $t1
	sw $t0, -28($fp)
	li $t0, 0
	lw $t1, -28($fp)
	sub $t0, $t0, $t1
	sw $t0, -32($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -36($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 37081
	sw $t0, -44($fp)
	lw $ra, -4($fp)
	lw $v0, -44($fp)
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
