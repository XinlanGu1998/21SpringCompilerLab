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
	addi $sp, $sp, -2508
	li $t0, 52716
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 37054
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 49336
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 4444
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 31156
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 16081
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 11760
	sw $t0, -168($fp)
	addi $t0, $fp, -28
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
	li $t0, 61480
	sw $t0, -192($fp)
	addi $t0, $fp, -28
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
	li $t0, 47504
	sw $t0, -216($fp)
	addi $t0, $fp, -28
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
	li $t0, 48474
	sw $t0, -240($fp)
	addi $t0, $fp, -28
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
	li $t0, 26160
	sw $t0, -264($fp)
	addi $t0, $fp, -28
	sw $t0, -268($fp)
	li $t0, 4
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
	li $t0, 2894
	sw $t0, -288($fp)
	addi $t0, $fp, -28
	sw $t0, -292($fp)
	li $t0, 5
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
	li $t0, 24785
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 16683
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 54676
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 38704
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 1149
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 8071
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 15501
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 1096
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 25192
	sw $t0, -408($fp)
	addi $t0, $fp, -64
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
	li $t0, 55494
	sw $t0, -432($fp)
	addi $t0, $fp, -64
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
	li $t0, 53482
	sw $t0, -456($fp)
	addi $t0, $fp, -64
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
	li $t0, 15766
	sw $t0, -480($fp)
	addi $t0, $fp, -64
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
	li $t0, 6549
	sw $t0, -504($fp)
	addi $t0, $fp, -64
	sw $t0, -508($fp)
	li $t0, 4
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
	li $t0, 50982
	sw $t0, -528($fp)
	addi $t0, $fp, -64
	sw $t0, -532($fp)
	li $t0, 5
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
	li $t0, 34555
	sw $t0, -552($fp)
	addi $t0, $fp, -64
	sw $t0, -556($fp)
	li $t0, 6
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
	li $t0, 25734
	sw $t0, -576($fp)
	addi $t0, $fp, -64
	sw $t0, -580($fp)
	li $t0, 7
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
	li $t0, 58907
	sw $t0, -600($fp)
	addi $t0, $fp, -64
	sw $t0, -604($fp)
	li $t0, 8
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
	li $t0, 56128
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 23013
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 46087
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 27646
	sw $t0, -660($fp)
	addi $t0, $fp, -92
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
	li $t0, 6814
	sw $t0, -684($fp)
	addi $t0, $fp, -92
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
	li $t0, 50531
	sw $t0, -708($fp)
	addi $t0, $fp, -92
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
	li $t0, 58802
	sw $t0, -732($fp)
	addi $t0, $fp, -92
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
	li $t0, 22895
	sw $t0, -756($fp)
	addi $t0, $fp, -92
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
	li $t0, 62291
	sw $t0, -780($fp)
	addi $t0, $fp, -92
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
	li $t0, 54746
	sw $t0, -804($fp)
	addi $t0, $fp, -92
	sw $t0, -808($fp)
	li $t0, 6
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
	li $t0, 4863
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
label121:
	li $t0, 45230
	sw $t0, -840($fp)
	li $t0, 15371
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label123
label124:
	addi $t0, $fp, -28
	sw $t0, -852($fp)
	lw $t0, -388($fp)
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
	li $t0, 0
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label123
label122:
	li $t0, 0
	sw $t0, -876($fp)
	addi $t0, $fp, -64
	sw $t0, -880($fp)
	lw $t0, -400($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -888($fp)
	li $t0, 4
	lw $t1, -888($fp)
	mul $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	lw $t1, 0($t0)
	sw $t1, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label128:
	li $t0, 1
	sw $t0, -876($fp)
label129:
	li $t0, 0
	sw $t0, -904($fp)
	addi $t0, $fp, -92
	sw $t0, -908($fp)
	lw $t0, 12($fp)
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
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 33203
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -928($fp)
label133:
	lw $t0, -328($fp)
	sw $t0, -936($fp)
	lw $t0, -652($fp)
	sw $t0, -940($fp)
	lw $t0, -936($fp)
	lw $t1, -940($fp)
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	li $t0, 43183
	sw $t0, -948($fp)
	lw $t0, -944($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	li $t0, 0
	sw $t0, -956($fp)
	li $t0, 0
	sw $t0, -960($fp)
	li $t0, 4479
	sw $t0, -964($fp)
	li $t0, 32054
	sw $t0, -968($fp)
	lw $t1, -964($fp)
	lw $t2, -968($fp)
	bne $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -960($fp)
label137:
	li $t0, 62434
	sw $t0, -972($fp)
	lw $t1, -960($fp)
	lw $t2, -972($fp)
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -956($fp)
label135:
	li $t0, 7758
	sw $t0, -976($fp)
	li $t0, 0
	lw $t1, -976($fp)
	sub $t0, $t0, $t1
	sw $t0, -980($fp)
	li $t0, 0
	lw $t1, -980($fp)
	sub $t0, $t0, $t1
	sw $t0, -984($fp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -988($fp)
	addi $sp, $sp, 24
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label130:
	li $t0, 1
	sw $t0, -904($fp)
label131:
	lw $t0, -876($fp)
	lw $t1, -904($fp)
	sub $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
	addi $t0, $fp, -28
	sw $t0, -996($fp)
	li $t0, 2
	sw $t0, -1000($fp)
	li $t0, 4
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	li $t0, 0
	sw $t0, -1016($fp)
	li $t0, 34299
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label141:
	li $t0, 1
	sw $t0, -1016($fp)
label142:
	li $t0, 0
	lw $t1, -1016($fp)
	sub $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1012($fp)
	lw $t1, -1024($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 0
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	li $t0, 31032
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -1036($fp)
label147:
	li $t0, 8594
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -1048($fp)
	li $t0, 0
	sw $t0, -1052($fp)
	addi $t0, $fp, -28
	sw $t0, -1056($fp)
	li $t0, 3
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
	lw $t0, -376($fp)
	sw $t0, -1076($fp)
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	li $t0, 0
	sw $t0, -1084($fp)
	lw $t0, -160($fp)
	sw $t0, -1088($fp)
	lw $t1, -1088($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label152
label154:
	li $t0, 26451
	sw $t0, -1092($fp)
	lw $t1, -1092($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label153:
	li $t0, 2577
	sw $t0, -1096($fp)
	lw $t1, -1096($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -1084($fp)
label152:
	li $t0, 0
	sw $t0, -1100($fp)
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 33184
	sw $t0, -1108($fp)
	li $t0, 45217
	sw $t0, -1112($fp)
	lw $t1, -1108($fp)
	lw $t2, -1112($fp)
	beq $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -1104($fp)
label158:
	li $t0, 32145
	sw $t0, -1116($fp)
	lw $t1, -1104($fp)
	lw $t2, -1116($fp)
	beq $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -1100($fp)
label156:
	lw $t0, -364($fp)
	sw $t0, -1120($fp)
	li $t0, 47150
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1128($fp)
	lw $t0, -160($fp)
	sw $t0, -1132($fp)
	lw $t0, -1128($fp)
	lw $t1, -1132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1136($fp)
	li $t0, 5538
	sw $t0, -1140($fp)
	lw $t0, -100($fp)
	sw $t0, -1144($fp)
	lw $t0, -1140($fp)
	lw $t1, -1144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1148($fp)
	li $t0, 38403
	sw $t0, -1152($fp)
	lw $t0, -1148($fp)
	lw $t1, -1152($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	addi $sp, $sp, -4
	lw $t0, -1080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1160($fp)
	addi $sp, $sp, 24
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label150:
	li $t0, 7440
	sw $t0, -1164($fp)
	lw $t1, -1164($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -1052($fp)
label149:
	li $t0, 0
	sw $t0, -1168($fp)
	li $t0, 0
	sw $t0, -1172($fp)
	addi $t0, $fp, -64
	sw $t0, -1176($fp)
	lw $t0, -160($fp)
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
	lw $t1, -1192($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label163:
	lw $t0, -388($fp)
	sw $t0, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -1172($fp)
label162:
	li $t0, 1063
	sw $t0, -1200($fp)
	lw $t0, 16($fp)
	sw $t0, -1204($fp)
	lw $t0, -1200($fp)
	lw $t1, -1204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1208($fp)
	li $t0, 0
	lw $t1, -1208($fp)
	sub $t0, $t0, $t1
	sw $t0, -1212($fp)
	li $t0, 0
	sw $t0, -1216($fp)
	addi $t0, $fp, -28
	sw $t0, -1220($fp)
	li $t0, 4
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
	lw $t0, -400($fp)
	sw $t0, -1240($fp)
	lw $t1, -1236($fp)
	lw $t2, -1240($fp)
	beq $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -1216($fp)
label165:
	li $t0, 0
	sw $t0, -1244($fp)
	li $t0, 55191
	sw $t0, -1248($fp)
	li $t0, 7692
	sw $t0, -1252($fp)
	lw $t1, -1248($fp)
	lw $t2, -1252($fp)
	beq $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1244($fp)
label167:
	addi $t0, $fp, -28
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
	addi $sp, $sp, -4
	lw $t0, -1172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1272($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1276($fp)
	addi $sp, $sp, 24
	lw $t0, -628($fp)
	sw $t0, -1280($fp)
	lw $t1, -1276($fp)
	lw $t2, -1280($fp)
	bgt $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -1168($fp)
label160:
	li $t0, 30161
	sw $t0, -1284($fp)
	li $t0, 48642
	sw $t0, -1288($fp)
	lw $t0, -1284($fp)
	lw $t1, -1288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1292($fp)
	lw $t0, -652($fp)
	sw $t0, -1296($fp)
	lw $t0, -1292($fp)
	lw $t1, -1296($fp)
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	addi $sp, $sp, -4
	lw $t0, -1036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1304($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1304($fp)
	sub $t0, $t0, $t1
	sw $t0, -1308($fp)
	li $t0, 15198
	sw $t0, -1312($fp)
	li $t0, 13073
	sw $t0, -1316($fp)
	lw $t0, -1312($fp)
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t1, -1308($fp)
	lw $t2, -1320($fp)
	ble $t1, $t2, label145
	j label144
label145:
	addi $t0, $fp, -28
	sw $t0, -1324($fp)
	lw $t0, -316($fp)
	sw $t0, -1328($fp)
	lw $t0, 16($fp)
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	li $t0, 4
	lw $t1, -1336($fp)
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	lw $t1, -1324($fp)
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	lw $t1, 0($t0)
	sw $t1, -1348($fp)
	lw $t1, -1348($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -1032($fp)
label144:
	lw $ra, -4($fp)
	lw $v0, -1032($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label140
label139:
	li $t0, 63087
	sw $t0, -1352($fp)
	li $t0, 12096
	sw $t0, -1356($fp)
	lw $t0, -1352($fp)
	lw $t1, -1356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1360($fp)
	lw $t0, -628($fp)
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	li $t0, 56256
	sw $t0, -1372($fp)
	lw $t0, -1368($fp)
	lw $t1, -1372($fp)
	sub $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, 20($fp)
	sw $t0, -1380($fp)
	li $t0, 15751
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1388($fp)
	li $t0, 0
	sw $t0, -1392($fp)
	lw $t0, 20($fp)
	sw $t0, -1396($fp)
	li $t0, 12133
	sw $t0, -1400($fp)
	lw $t1, -1396($fp)
	lw $t2, -1400($fp)
	ble $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -1392($fp)
label169:
	li $t0, 0
	sw $t0, -1404($fp)
	lw $t0, 8($fp)
	sw $t0, -1408($fp)
	li $t0, 48102
	sw $t0, -1412($fp)
	lw $t0, -1408($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	li $t0, 10423
	sw $t0, -1420($fp)
	lw $t1, -1416($fp)
	lw $t2, -1420($fp)
	ble $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -1404($fp)
label171:
	li $t0, 30519
	sw $t0, -1424($fp)
	li $t0, 0
	sw $t0, -1428($fp)
	li $t0, 37556
	sw $t0, -1432($fp)
	li $t0, 0
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label174:
	lw $t0, -124($fp)
	sw $t0, -1440($fp)
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1428($fp)
label173:
	li $t0, 29456
	sw $t0, -1444($fp)
	li $t0, 0
	sw $t0, -1448($fp)
	addi $t0, $fp, -28
	sw $t0, -1452($fp)
	lw $t0, -160($fp)
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
	li $t0, 22166
	sw $t0, -1472($fp)
	lw $t1, -1468($fp)
	lw $t2, -1472($fp)
	bge $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -1448($fp)
label176:
	li $t0, 27617
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	lw $t0, -160($fp)
	sw $t0, -1488($fp)
	lw $t0, -136($fp)
	sw $t0, -1492($fp)
	lw $t0, -1488($fp)
	lw $t1, -1492($fp)
	sub $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -628($fp)
	sw $t0, -1500($fp)
	lw $t1, -1496($fp)
	lw $t2, -1500($fp)
	bge $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -1484($fp)
label178:
	li $t0, 0
	sw $t0, -1504($fp)
	lw $t0, 4($fp)
	sw $t0, -1508($fp)
	li $t0, 32510
	sw $t0, -1512($fp)
	lw $t0, -1508($fp)
	lw $t1, -1512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label181
label181:
	li $t0, 21764
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -1504($fp)
label180:
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1524($fp)
	addi $sp, $sp, 24
	li $t0, 42564
	sw $t0, -1528($fp)
	lw $t0, -1524($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	lw $t0, -160($fp)
	sw $t0, -1540($fp)
	li $t0, 65054
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label183
label184:
	li $t0, 47226
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -1536($fp)
label183:
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1556($fp)
	addi $sp, $sp, 24
	li $t0, 17065
	sw $t0, -1560($fp)
	li $t0, 49404
	sw $t0, -1564($fp)
	lw $t0, -1560($fp)
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -652($fp)
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 0
	sw $t0, -1580($fp)
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, -328($fp)
	sw $t0, -1588($fp)
	lw $t0, -340($fp)
	sw $t0, -1592($fp)
	lw $t1, -1588($fp)
	lw $t2, -1592($fp)
	ble $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -1584($fp)
label188:
	li $t0, 30754
	sw $t0, -1596($fp)
	lw $t1, -1584($fp)
	lw $t2, -1596($fp)
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -1580($fp)
label186:
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1600($fp)
	addi $sp, $sp, 24
	lw $t0, 12($fp)
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1376($fp)
	lw $t1, -1608($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	addi $t0, $fp, -28
	sw $t0, -1616($fp)
	lw $t0, 12($fp)
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
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 44483
	sw $t0, -1640($fp)
	li $t0, 3899
	sw $t0, -1644($fp)
	lw $t1, -1640($fp)
	lw $t2, -1644($fp)
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -1636($fp)
label190:
	lw $t0, -100($fp)
	sw $t0, -1648($fp)
	lw $t0, -652($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -1656($fp)
	li $t0, 0
	sw $t0, -1660($fp)
	li $t0, 51665
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -1660($fp)
label192:
	lw $t0, -640($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -1672($fp)
	addi $t0, $fp, -64
	sw $t0, -1676($fp)
	lw $t0, -328($fp)
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
	lw $t0, -832($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -1700($fp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1704($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1708($fp)
	lw $t0, 4($fp)
	sw $t0, -1712($fp)
	li $t0, 20031
	sw $t0, -1716($fp)
	lw $t0, -1712($fp)
	lw $t1, -1716($fp)
	sub $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, 8($fp)
	sw $t0, -1724($fp)
	lw $t1, -1720($fp)
	lw $t2, -1724($fp)
	ble $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1708($fp)
label194:
	li $t0, 20911
	sw $t0, -1728($fp)
	li $t0, 27417
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	mul $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 29310
	sw $t0, -1740($fp)
	li $t0, 0
	sw $t0, -1744($fp)
	lw $t0, -652($fp)
	sw $t0, -1748($fp)
	li $t0, 23360
	sw $t0, -1752($fp)
	lw $t0, -1748($fp)
	lw $t1, -1752($fp)
	sub $t0, $t0, $t1
	sw $t0, -1756($fp)
	li $t0, 15321
	sw $t0, -1760($fp)
	lw $t1, -1756($fp)
	lw $t2, -1760($fp)
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -1744($fp)
label196:
	li $t0, 16237
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -1768($fp)
	li $t0, 0
	sw $t0, -1772($fp)
	addi $t0, $fp, -28
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
	lw $t0, 16($fp)
	sw $t0, -1796($fp)
	lw $t1, -1792($fp)
	lw $t2, -1796($fp)
	beq $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -1772($fp)
label198:
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1800($fp)
	addi $sp, $sp, 24
	lw $t0, -316($fp)
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1812($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -100($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -1824($fp)
	addi $t0, $fp, -28
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
	li $t0, 55641
	sw $t0, -1848($fp)
	li $t0, 44278
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	li $t0, 42202
	sw $t0, -1860($fp)
	lw $t0, -1856($fp)
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1868($fp)
	addi $sp, $sp, 24
	lw $t0, -160($fp)
	sw $t0, -1872($fp)
	lw $t0, -1868($fp)
	lw $t1, -1872($fp)
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	li $t0, 0
	lw $t1, -1876($fp)
	sub $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1612($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $ra, -4($fp)
	lw $v0, -1884($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label140:
	j label127
label126:
	li $t0, 0
	sw $t0, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	li $t0, 51183
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -1892($fp)
label203:
	lw $t0, -352($fp)
	sw $t0, -1900($fp)
	lw $t0, -1892($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	li $t0, 0
	sw $t0, -1908($fp)
	li $t0, 26173
	sw $t0, -1912($fp)
	li $t0, 0
	lw $t1, -1912($fp)
	sub $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label204:
	li $t0, 1
	sw $t0, -1908($fp)
label205:
	lw $t0, -1904($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label201
label201:
	li $t0, 0
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, -628($fp)
	sw $t0, -1932($fp)
	lw $t0, -376($fp)
	sw $t0, -1936($fp)
	lw $t1, -1932($fp)
	lw $t2, -1936($fp)
	bgt $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -1928($fp)
label209:
	lw $t0, 16($fp)
	sw $t0, -1940($fp)
	lw $t1, -1928($fp)
	lw $t2, -1940($fp)
	bge $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1924($fp)
label207:
	lw $t0, -352($fp)
	sw $t0, -1944($fp)
	lw $t0, -628($fp)
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	sub $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t1, -1924($fp)
	lw $t2, -1952($fp)
	blt $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -1888($fp)
label200:
label127:
	j label121
label123:
	lw $t0, -100($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1980($fp)
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 4
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	lw $t1, 0($t0)
	sw $t1, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2000($fp)
	li $t0, 1
	sw $t0, -2004($fp)
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2020($fp)
	li $t0, 2
	sw $t0, -2024($fp)
	li $t0, 4
	lw $t1, -2024($fp)
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, 0($t0)
	sw $t1, -2036($fp)
	lw $t0, -2036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2040($fp)
	li $t0, 3
	sw $t0, -2044($fp)
	li $t0, 4
	lw $t1, -2044($fp)
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, -2040($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	lw $t1, 0($t0)
	sw $t1, -2056($fp)
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2060($fp)
	li $t0, 4
	sw $t0, -2064($fp)
	li $t0, 4
	lw $t1, -2064($fp)
	mul $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, 0($t0)
	sw $t1, -2076($fp)
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2080($fp)
	li $t0, 5
	sw $t0, -2084($fp)
	li $t0, 4
	lw $t1, -2084($fp)
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, 0($t0)
	sw $t1, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2132($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -2152($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -2172($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -2192($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -2212($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -2232($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -2252($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -2272($fp)
	li $t0, 7
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
	addi $t0, $fp, -64
	sw $t0, -2292($fp)
	li $t0, 8
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
	lw $t0, -628($fp)
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2324($fp)
	li $t0, 0
	sw $t0, -2328($fp)
	li $t0, 4
	lw $t1, -2328($fp)
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	lw $t1, 0($t0)
	sw $t1, -2340($fp)
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2344($fp)
	li $t0, 1
	sw $t0, -2348($fp)
	li $t0, 4
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2364($fp)
	li $t0, 2
	sw $t0, -2368($fp)
	li $t0, 4
	lw $t1, -2368($fp)
	mul $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	lw $t1, 0($t0)
	sw $t1, -2380($fp)
	lw $t0, -2380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2384($fp)
	li $t0, 3
	sw $t0, -2388($fp)
	li $t0, 4
	lw $t1, -2388($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	lw $t1, 0($t0)
	sw $t1, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2404($fp)
	li $t0, 4
	sw $t0, -2408($fp)
	li $t0, 4
	lw $t1, -2408($fp)
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	lw $t1, -2404($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	lw $t0, -2420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2424($fp)
	li $t0, 5
	sw $t0, -2428($fp)
	li $t0, 4
	lw $t1, -2428($fp)
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	lw $t0, -2440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2444($fp)
	li $t0, 6
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
	lw $t0, -2460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2468($fp)
	li $t0, 0
	sw $t0, -2472($fp)
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 36410
	sw $t0, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label214:
	li $t0, 1
	sw $t0, -2476($fp)
label215:
	li $t0, 0
	lw $t1, -2476($fp)
	sub $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -2472($fp)
label213:
	li $t0, 0
	sw $t0, -2488($fp)
	li $t0, 7411
	sw $t0, -2492($fp)
	li $t0, 53791
	sw $t0, -2496($fp)
	lw $t0, -2492($fp)
	lw $t1, -2496($fp)
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	li $t0, 1
	sw $t0, -2504($fp)
	lw $t0, -2500($fp)
	lw $t1, -2504($fp)
	mul $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -112($fp)
	sw $t0, -2512($fp)
	lw $t1, -2508($fp)
	lw $t2, -2512($fp)
	blt $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -2488($fp)
label217:
	lw $t1, -2472($fp)
	lw $t2, -2488($fp)
	beq $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -2468($fp)
label211:
	lw $ra, -4($fp)
	lw $v0, -2468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
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
	lw $t0, 12($fp)
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label221:
	li $t0, 1
	sw $t0, -12($fp)
label222:
	li $t0, 0
	lw $t1, -12($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	li $t0, 0
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label218
label220:
	li $t0, 0
	sw $t0, -28($fp)
	li $t0, 36867
	sw $t0, -32($fp)
	lw $t0, 12($fp)
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	bgt $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -28($fp)
label224:
	lw $t0, 4($fp)
	sw $t0, -40($fp)
	lw $t1, -28($fp)
	lw $t2, -40($fp)
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -8($fp)
label219:
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, 12($fp)
	sw $t0, -48($fp)
	li $t0, 0
	lw $t1, -48($fp)
	sub $t0, $t0, $t1
	sw $t0, -52($fp)
	li $t0, 0
	lw $t1, -52($fp)
	sub $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t1, -56($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label227:
	lw $t0, 12($fp)
	sw $t0, -60($fp)
	li $t0, 30819
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -44($fp)
label226:
	lw $t0, -44($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -72($fp)
	lw $ra, -4($fp)
	lw $v0, -72($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -12712
	li $t0, 30596
	sw $t0, -436($fp)
	addi $t0, $fp, -16
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
	li $t0, 1850
	sw $t0, -460($fp)
	addi $t0, $fp, -16
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
	li $t0, 13385
	sw $t0, -484($fp)
	addi $t0, $fp, -16
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
	li $t0, 41019
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 13983
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 29136
	sw $t0, -532($fp)
	addi $t0, $fp, -40
	sw $t0, -536($fp)
	li $t0, 0
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
	li $t0, 31124
	sw $t0, -556($fp)
	addi $t0, $fp, -40
	sw $t0, -560($fp)
	li $t0, 1
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
	li $t0, 58261
	sw $t0, -580($fp)
	addi $t0, $fp, -40
	sw $t0, -584($fp)
	li $t0, 2
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
	li $t0, 5802
	sw $t0, -604($fp)
	addi $t0, $fp, -40
	sw $t0, -608($fp)
	li $t0, 3
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
	li $t0, 23806
	sw $t0, -628($fp)
	addi $t0, $fp, -40
	sw $t0, -632($fp)
	li $t0, 4
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
	li $t0, 368
	sw $t0, -652($fp)
	addi $t0, $fp, -40
	sw $t0, -656($fp)
	li $t0, 5
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
	li $t0, 63666
	sw $t0, -676($fp)
	addi $t0, $fp, -56
	sw $t0, -680($fp)
	li $t0, 0
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
	li $t0, 23929
	sw $t0, -700($fp)
	addi $t0, $fp, -56
	sw $t0, -704($fp)
	li $t0, 1
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
	li $t0, 16605
	sw $t0, -724($fp)
	addi $t0, $fp, -56
	sw $t0, -728($fp)
	li $t0, 2
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
	li $t0, 21490
	sw $t0, -748($fp)
	addi $t0, $fp, -56
	sw $t0, -752($fp)
	li $t0, 3
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
	li $t0, 39250
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 45915
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 42401
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 1131
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 410
	sw $t0, -820($fp)
	addi $t0, $fp, -96
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
	li $t0, 28530
	sw $t0, -844($fp)
	addi $t0, $fp, -96
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
	li $t0, 45614
	sw $t0, -868($fp)
	addi $t0, $fp, -96
	sw $t0, -872($fp)
	li $t0, 2
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
	li $t0, 4310
	sw $t0, -892($fp)
	addi $t0, $fp, -96
	sw $t0, -896($fp)
	li $t0, 3
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
	li $t0, 14178
	sw $t0, -916($fp)
	addi $t0, $fp, -96
	sw $t0, -920($fp)
	li $t0, 4
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
	li $t0, 6252
	sw $t0, -940($fp)
	addi $t0, $fp, -96
	sw $t0, -944($fp)
	li $t0, 5
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
	li $t0, 40720
	sw $t0, -964($fp)
	addi $t0, $fp, -96
	sw $t0, -968($fp)
	li $t0, 6
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
	li $t0, 21589
	sw $t0, -988($fp)
	addi $t0, $fp, -96
	sw $t0, -992($fp)
	li $t0, 7
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
	li $t0, 60043
	sw $t0, -1012($fp)
	addi $t0, $fp, -96
	sw $t0, -1016($fp)
	li $t0, 8
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
	li $t0, 33760
	sw $t0, -1036($fp)
	addi $t0, $fp, -96
	sw $t0, -1040($fp)
	li $t0, 9
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
	li $t0, 58457
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 25326
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 64356
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 60307
	sw $t0, -1096($fp)
	addi $t0, $fp, -120
	sw $t0, -1100($fp)
	li $t0, 0
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
	li $t0, 38711
	sw $t0, -1120($fp)
	addi $t0, $fp, -120
	sw $t0, -1124($fp)
	li $t0, 1
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
	li $t0, 39839
	sw $t0, -1144($fp)
	addi $t0, $fp, -120
	sw $t0, -1148($fp)
	li $t0, 2
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
	li $t0, 8755
	sw $t0, -1168($fp)
	addi $t0, $fp, -120
	sw $t0, -1172($fp)
	li $t0, 3
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
	li $t0, 2312
	sw $t0, -1192($fp)
	addi $t0, $fp, -120
	sw $t0, -1196($fp)
	li $t0, 4
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
	li $t0, 5428
	sw $t0, -1216($fp)
	addi $t0, $fp, -120
	sw $t0, -1220($fp)
	li $t0, 5
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
	li $t0, 1480
	sw $t0, -1240($fp)
	addi $t0, $fp, -152
	sw $t0, -1244($fp)
	li $t0, 0
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1244($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1240($fp)
	lw $t1, -1256($fp)
	sw $t0, 0($t1)
	lw $t0, -1256($fp)
	lw $t1, 0($t0)
	sw $t1, -1260($fp)
	li $t0, 8114
	sw $t0, -1264($fp)
	addi $t0, $fp, -152
	sw $t0, -1268($fp)
	li $t0, 1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1268($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1264($fp)
	lw $t1, -1280($fp)
	sw $t0, 0($t1)
	lw $t0, -1280($fp)
	lw $t1, 0($t0)
	sw $t1, -1284($fp)
	li $t0, 29234
	sw $t0, -1288($fp)
	addi $t0, $fp, -152
	sw $t0, -1292($fp)
	li $t0, 2
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
	li $t0, 1848
	sw $t0, -1312($fp)
	addi $t0, $fp, -152
	sw $t0, -1316($fp)
	li $t0, 3
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
	li $t0, 6244
	sw $t0, -1336($fp)
	addi $t0, $fp, -152
	sw $t0, -1340($fp)
	li $t0, 4
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
	li $t0, 53163
	sw $t0, -1360($fp)
	addi $t0, $fp, -152
	sw $t0, -1364($fp)
	li $t0, 5
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
	li $t0, 18453
	sw $t0, -1384($fp)
	addi $t0, $fp, -152
	sw $t0, -1388($fp)
	li $t0, 6
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
	li $t0, 27734
	sw $t0, -1408($fp)
	addi $t0, $fp, -152
	sw $t0, -1412($fp)
	li $t0, 7
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
	li $t0, 26877
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 64369
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 4599
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 28009
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 64779
	sw $t0, -1480($fp)
	addi $t0, $fp, -188
	sw $t0, -1484($fp)
	li $t0, 0
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
	li $t0, 33130
	sw $t0, -1504($fp)
	addi $t0, $fp, -188
	sw $t0, -1508($fp)
	li $t0, 1
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
	li $t0, 8087
	sw $t0, -1528($fp)
	addi $t0, $fp, -188
	sw $t0, -1532($fp)
	li $t0, 2
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
	li $t0, 3553
	sw $t0, -1552($fp)
	addi $t0, $fp, -188
	sw $t0, -1556($fp)
	li $t0, 3
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
	li $t0, 47308
	sw $t0, -1576($fp)
	addi $t0, $fp, -188
	sw $t0, -1580($fp)
	li $t0, 4
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
	li $t0, 14339
	sw $t0, -1600($fp)
	addi $t0, $fp, -188
	sw $t0, -1604($fp)
	li $t0, 5
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1604($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1600($fp)
	lw $t1, -1616($fp)
	sw $t0, 0($t1)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	li $t0, 44273
	sw $t0, -1624($fp)
	addi $t0, $fp, -188
	sw $t0, -1628($fp)
	li $t0, 6
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1628($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1624($fp)
	lw $t1, -1640($fp)
	sw $t0, 0($t1)
	lw $t0, -1640($fp)
	lw $t1, 0($t0)
	sw $t1, -1644($fp)
	li $t0, 3361
	sw $t0, -1648($fp)
	addi $t0, $fp, -188
	sw $t0, -1652($fp)
	li $t0, 7
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
	li $t0, 8846
	sw $t0, -1672($fp)
	addi $t0, $fp, -188
	sw $t0, -1676($fp)
	li $t0, 8
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
	li $t0, 12497
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	li $t0, 61818
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	li $t0, 34172
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	li $t0, 11317
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	li $t0, 56590
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	li $t0, 7348
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 51157
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 65345
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 9660
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 56585
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 1289
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 17774
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 20283
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 3138
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	li $t0, 24019
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	li $t0, 7911
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	li $t0, 21591
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	li $t0, 51753
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	li $t0, 34788
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	li $t0, 20424
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 56353
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	li $t0, 62797
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	li $t0, 19668
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	li $t0, 23947
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	li $t0, 5349
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	li $t0, 23221
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	li $t0, 5719
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	li $t0, 19688
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -2028($fp)
	li $t0, 1959
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -2040($fp)
	li $t0, 9080
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
	li $t0, 28535
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	li $t0, 14456
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	li $t0, 5363
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
	li $t0, 62707
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -2100($fp)
	li $t0, 25774
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 61953
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 4519
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	li $t0, 11395
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -2148($fp)
	li $t0, 61762
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -2160($fp)
	li $t0, 14179
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	sw $t0, -2172($fp)
	li $t0, 2444
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	li $t0, 63051
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	li $t0, 31954
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	sw $t0, -2208($fp)
	li $t0, 22727
	sw $t0, -2212($fp)
	addi $t0, $fp, -228
	sw $t0, -2216($fp)
	li $t0, 0
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
	li $t0, 653
	sw $t0, -2236($fp)
	addi $t0, $fp, -228
	sw $t0, -2240($fp)
	li $t0, 1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2240($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2236($fp)
	lw $t1, -2252($fp)
	sw $t0, 0($t1)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	li $t0, 55973
	sw $t0, -2260($fp)
	addi $t0, $fp, -228
	sw $t0, -2264($fp)
	li $t0, 2
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2264($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2260($fp)
	lw $t1, -2276($fp)
	sw $t0, 0($t1)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	li $t0, 30638
	sw $t0, -2284($fp)
	addi $t0, $fp, -228
	sw $t0, -2288($fp)
	li $t0, 3
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2288($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2284($fp)
	lw $t1, -2300($fp)
	sw $t0, 0($t1)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	li $t0, 22245
	sw $t0, -2308($fp)
	addi $t0, $fp, -228
	sw $t0, -2312($fp)
	li $t0, 4
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
	li $t0, 42190
	sw $t0, -2332($fp)
	addi $t0, $fp, -228
	sw $t0, -2336($fp)
	li $t0, 5
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
	li $t0, 65427
	sw $t0, -2356($fp)
	addi $t0, $fp, -228
	sw $t0, -2360($fp)
	li $t0, 6
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
	li $t0, 42669
	sw $t0, -2380($fp)
	addi $t0, $fp, -228
	sw $t0, -2384($fp)
	li $t0, 7
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
	li $t0, 33007
	sw $t0, -2404($fp)
	addi $t0, $fp, -228
	sw $t0, -2408($fp)
	li $t0, 8
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
	li $t0, 62688
	sw $t0, -2428($fp)
	addi $t0, $fp, -228
	sw $t0, -2432($fp)
	li $t0, 9
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
	li $t0, 62337
	sw $t0, -2452($fp)
	addi $t0, $fp, -260
	sw $t0, -2456($fp)
	li $t0, 0
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
	li $t0, 56954
	sw $t0, -2476($fp)
	addi $t0, $fp, -260
	sw $t0, -2480($fp)
	li $t0, 1
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
	li $t0, 2501
	sw $t0, -2500($fp)
	addi $t0, $fp, -260
	sw $t0, -2504($fp)
	li $t0, 2
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
	li $t0, 20023
	sw $t0, -2524($fp)
	addi $t0, $fp, -260
	sw $t0, -2528($fp)
	li $t0, 3
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
	li $t0, 62673
	sw $t0, -2548($fp)
	addi $t0, $fp, -260
	sw $t0, -2552($fp)
	li $t0, 4
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2552($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2548($fp)
	lw $t1, -2564($fp)
	sw $t0, 0($t1)
	lw $t0, -2564($fp)
	lw $t1, 0($t0)
	sw $t1, -2568($fp)
	li $t0, 22190
	sw $t0, -2572($fp)
	addi $t0, $fp, -260
	sw $t0, -2576($fp)
	li $t0, 5
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2576($fp)
	lw $t1, -2584($fp)
	add $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2572($fp)
	lw $t1, -2588($fp)
	sw $t0, 0($t1)
	lw $t0, -2588($fp)
	lw $t1, 0($t0)
	sw $t1, -2592($fp)
	li $t0, 21982
	sw $t0, -2596($fp)
	addi $t0, $fp, -260
	sw $t0, -2600($fp)
	li $t0, 6
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2600($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2596($fp)
	lw $t1, -2612($fp)
	sw $t0, 0($t1)
	lw $t0, -2612($fp)
	lw $t1, 0($t0)
	sw $t1, -2616($fp)
	li $t0, 6218
	sw $t0, -2620($fp)
	addi $t0, $fp, -260
	sw $t0, -2624($fp)
	li $t0, 7
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2624($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2620($fp)
	lw $t1, -2636($fp)
	sw $t0, 0($t1)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	li $t0, 50725
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -2652($fp)
	li $t0, 36438
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	sw $t0, -2664($fp)
	li $t0, 11581
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	li $t0, 47896
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -2688($fp)
	li $t0, 62212
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -2700($fp)
	li $t0, 7998
	sw $t0, -2704($fp)
	addi $t0, $fp, -280
	sw $t0, -2708($fp)
	li $t0, 0
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
	li $t0, 52416
	sw $t0, -2728($fp)
	addi $t0, $fp, -280
	sw $t0, -2732($fp)
	li $t0, 1
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
	li $t0, 8071
	sw $t0, -2752($fp)
	addi $t0, $fp, -280
	sw $t0, -2756($fp)
	li $t0, 2
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
	li $t0, 4224
	sw $t0, -2776($fp)
	addi $t0, $fp, -280
	sw $t0, -2780($fp)
	li $t0, 3
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2780($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2776($fp)
	lw $t1, -2792($fp)
	sw $t0, 0($t1)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	li $t0, 1059
	sw $t0, -2800($fp)
	addi $t0, $fp, -280
	sw $t0, -2804($fp)
	li $t0, 4
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
	li $t0, 10515
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -2832($fp)
	li $t0, 1739
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	sw $t0, -2844($fp)
	li $t0, 33013
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, -2856($fp)
	li $t0, 33243
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	sw $t0, -2868($fp)
	li $t0, 2393
	sw $t0, -2872($fp)
	addi $t0, $fp, -312
	sw $t0, -2876($fp)
	li $t0, 0
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
	li $t0, 23450
	sw $t0, -2896($fp)
	addi $t0, $fp, -312
	sw $t0, -2900($fp)
	li $t0, 1
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
	li $t0, 63881
	sw $t0, -2920($fp)
	addi $t0, $fp, -312
	sw $t0, -2924($fp)
	li $t0, 2
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
	li $t0, 24638
	sw $t0, -2944($fp)
	addi $t0, $fp, -312
	sw $t0, -2948($fp)
	li $t0, 3
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
	li $t0, 105
	sw $t0, -2968($fp)
	addi $t0, $fp, -312
	sw $t0, -2972($fp)
	li $t0, 4
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
	li $t0, 63772
	sw $t0, -2992($fp)
	addi $t0, $fp, -312
	sw $t0, -2996($fp)
	li $t0, 5
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -2996($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -2992($fp)
	lw $t1, -3008($fp)
	sw $t0, 0($t1)
	lw $t0, -3008($fp)
	lw $t1, 0($t0)
	sw $t1, -3012($fp)
	li $t0, 1771
	sw $t0, -3016($fp)
	addi $t0, $fp, -312
	sw $t0, -3020($fp)
	li $t0, 6
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3020($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3016($fp)
	lw $t1, -3032($fp)
	sw $t0, 0($t1)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	li $t0, 33112
	sw $t0, -3040($fp)
	addi $t0, $fp, -312
	sw $t0, -3044($fp)
	li $t0, 7
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3044($fp)
	lw $t1, -3052($fp)
	add $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3040($fp)
	lw $t1, -3056($fp)
	sw $t0, 0($t1)
	lw $t0, -3056($fp)
	lw $t1, 0($t0)
	sw $t1, -3060($fp)
	li $t0, 60925
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	sw $t0, -3072($fp)
	li $t0, 64109
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	sw $t0, -3084($fp)
	li $t0, 24531
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	sw $t0, -3096($fp)
	li $t0, 63426
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	sw $t0, -3108($fp)
	li $t0, 18596
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -3120($fp)
	li $t0, 21668
	sw $t0, -3124($fp)
	addi $t0, $fp, -348
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
	li $t0, 20080
	sw $t0, -3148($fp)
	addi $t0, $fp, -348
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
	li $t0, 40578
	sw $t0, -3172($fp)
	addi $t0, $fp, -348
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
	li $t0, 27886
	sw $t0, -3196($fp)
	addi $t0, $fp, -348
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
	li $t0, 5269
	sw $t0, -3220($fp)
	addi $t0, $fp, -348
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
	li $t0, 11480
	sw $t0, -3244($fp)
	addi $t0, $fp, -348
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
	li $t0, 39467
	sw $t0, -3268($fp)
	addi $t0, $fp, -348
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
	li $t0, 53166
	sw $t0, -3292($fp)
	addi $t0, $fp, -348
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
	li $t0, 8157
	sw $t0, -3316($fp)
	addi $t0, $fp, -348
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
	li $t0, 47465
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	li $t0, 40046
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	sw $t0, -3360($fp)
	li $t0, 16228
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	sw $t0, -3372($fp)
	li $t0, 51689
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	sw $t0, -3384($fp)
	li $t0, 41105
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	sw $t0, -3396($fp)
	li $t0, 26744
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	sw $t0, -3408($fp)
	li $t0, 53429
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	sw $t0, -3420($fp)
	li $t0, 8583
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	sw $t0, -3432($fp)
	li $t0, 59987
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -3444($fp)
	li $t0, 55822
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -3456($fp)
	li $t0, 32033
	sw $t0, -3460($fp)
	addi $t0, $fp, -356
	sw $t0, -3464($fp)
	li $t0, 0
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3464($fp)
	lw $t1, -3472($fp)
	add $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3460($fp)
	lw $t1, -3476($fp)
	sw $t0, 0($t1)
	lw $t0, -3476($fp)
	lw $t1, 0($t0)
	sw $t1, -3480($fp)
	li $t0, 58332
	sw $t0, -3484($fp)
	addi $t0, $fp, -356
	sw $t0, -3488($fp)
	li $t0, 1
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
	li $t0, 14924
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -3516($fp)
	li $t0, 32138
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	sw $t0, -3528($fp)
	li $t0, 56569
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -3540($fp)
	li $t0, 16695
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	sw $t0, -3552($fp)
	li $t0, 65251
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	sw $t0, -3564($fp)
	li $t0, 51958
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	sw $t0, -3576($fp)
	li $t0, 15268
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	sw $t0, -3588($fp)
	li $t0, 24246
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -3600($fp)
	li $t0, 49848
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	sw $t0, -3612($fp)
	li $t0, 33864
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	sw $t0, -3624($fp)
	li $t0, 45914
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	sw $t0, -3636($fp)
	li $t0, 4393
	sw $t0, -3640($fp)
	addi $t0, $fp, -372
	sw $t0, -3644($fp)
	li $t0, 0
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -3644($fp)
	lw $t1, -3652($fp)
	add $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3640($fp)
	lw $t1, -3656($fp)
	sw $t0, 0($t1)
	lw $t0, -3656($fp)
	lw $t1, 0($t0)
	sw $t1, -3660($fp)
	li $t0, 8906
	sw $t0, -3664($fp)
	addi $t0, $fp, -372
	sw $t0, -3668($fp)
	li $t0, 1
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3668($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3664($fp)
	lw $t1, -3680($fp)
	sw $t0, 0($t1)
	lw $t0, -3680($fp)
	lw $t1, 0($t0)
	sw $t1, -3684($fp)
	li $t0, 8265
	sw $t0, -3688($fp)
	addi $t0, $fp, -372
	sw $t0, -3692($fp)
	li $t0, 2
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3692($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3688($fp)
	lw $t1, -3704($fp)
	sw $t0, 0($t1)
	lw $t0, -3704($fp)
	lw $t1, 0($t0)
	sw $t1, -3708($fp)
	li $t0, 9662
	sw $t0, -3712($fp)
	addi $t0, $fp, -372
	sw $t0, -3716($fp)
	li $t0, 3
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3716($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3712($fp)
	lw $t1, -3728($fp)
	sw $t0, 0($t1)
	lw $t0, -3728($fp)
	lw $t1, 0($t0)
	sw $t1, -3732($fp)
	li $t0, 20387
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	sw $t0, -3744($fp)
	li $t0, 47732
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	sw $t0, -3756($fp)
	li $t0, 62828
	sw $t0, -3760($fp)
	addi $t0, $fp, -408
	sw $t0, -3764($fp)
	li $t0, 0
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3764($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3760($fp)
	lw $t1, -3776($fp)
	sw $t0, 0($t1)
	lw $t0, -3776($fp)
	lw $t1, 0($t0)
	sw $t1, -3780($fp)
	li $t0, 28544
	sw $t0, -3784($fp)
	addi $t0, $fp, -408
	sw $t0, -3788($fp)
	li $t0, 1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3788($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3784($fp)
	lw $t1, -3800($fp)
	sw $t0, 0($t1)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	li $t0, 29662
	sw $t0, -3808($fp)
	addi $t0, $fp, -408
	sw $t0, -3812($fp)
	li $t0, 2
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3812($fp)
	lw $t1, -3820($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3808($fp)
	lw $t1, -3824($fp)
	sw $t0, 0($t1)
	lw $t0, -3824($fp)
	lw $t1, 0($t0)
	sw $t1, -3828($fp)
	li $t0, 37338
	sw $t0, -3832($fp)
	addi $t0, $fp, -408
	sw $t0, -3836($fp)
	li $t0, 3
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3836($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3832($fp)
	lw $t1, -3848($fp)
	sw $t0, 0($t1)
	lw $t0, -3848($fp)
	lw $t1, 0($t0)
	sw $t1, -3852($fp)
	li $t0, 44772
	sw $t0, -3856($fp)
	addi $t0, $fp, -408
	sw $t0, -3860($fp)
	li $t0, 4
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3860($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3856($fp)
	lw $t1, -3872($fp)
	sw $t0, 0($t1)
	lw $t0, -3872($fp)
	lw $t1, 0($t0)
	sw $t1, -3876($fp)
	li $t0, 15815
	sw $t0, -3880($fp)
	addi $t0, $fp, -408
	sw $t0, -3884($fp)
	li $t0, 5
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3884($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3880($fp)
	lw $t1, -3896($fp)
	sw $t0, 0($t1)
	lw $t0, -3896($fp)
	lw $t1, 0($t0)
	sw $t1, -3900($fp)
	li $t0, 12908
	sw $t0, -3904($fp)
	addi $t0, $fp, -408
	sw $t0, -3908($fp)
	li $t0, 6
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3908($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3904($fp)
	lw $t1, -3920($fp)
	sw $t0, 0($t1)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	li $t0, 5980
	sw $t0, -3928($fp)
	addi $t0, $fp, -408
	sw $t0, -3932($fp)
	li $t0, 7
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3932($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3928($fp)
	lw $t1, -3944($fp)
	sw $t0, 0($t1)
	lw $t0, -3944($fp)
	lw $t1, 0($t0)
	sw $t1, -3948($fp)
	li $t0, 3708
	sw $t0, -3952($fp)
	addi $t0, $fp, -408
	sw $t0, -3956($fp)
	li $t0, 8
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3956($fp)
	lw $t1, -3964($fp)
	add $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3952($fp)
	lw $t1, -3968($fp)
	sw $t0, 0($t1)
	lw $t0, -3968($fp)
	lw $t1, 0($t0)
	sw $t1, -3972($fp)
	li $t0, 21491
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	sw $t0, -3984($fp)
	li $t0, 431
	sw $t0, -3988($fp)
	addi $t0, $fp, -432
	sw $t0, -3992($fp)
	li $t0, 0
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
	li $t0, 59530
	sw $t0, -4012($fp)
	addi $t0, $fp, -432
	sw $t0, -4016($fp)
	li $t0, 1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4016($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4012($fp)
	lw $t1, -4028($fp)
	sw $t0, 0($t1)
	lw $t0, -4028($fp)
	lw $t1, 0($t0)
	sw $t1, -4032($fp)
	li $t0, 53524
	sw $t0, -4036($fp)
	addi $t0, $fp, -432
	sw $t0, -4040($fp)
	li $t0, 2
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4040($fp)
	lw $t1, -4048($fp)
	add $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4036($fp)
	lw $t1, -4052($fp)
	sw $t0, 0($t1)
	lw $t0, -4052($fp)
	lw $t1, 0($t0)
	sw $t1, -4056($fp)
	li $t0, 58764
	sw $t0, -4060($fp)
	addi $t0, $fp, -432
	sw $t0, -4064($fp)
	li $t0, 3
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4064($fp)
	lw $t1, -4072($fp)
	add $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4060($fp)
	lw $t1, -4076($fp)
	sw $t0, 0($t1)
	lw $t0, -4076($fp)
	lw $t1, 0($t0)
	sw $t1, -4080($fp)
	li $t0, 8918
	sw $t0, -4084($fp)
	addi $t0, $fp, -432
	sw $t0, -4088($fp)
	li $t0, 4
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4088($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4084($fp)
	lw $t1, -4100($fp)
	sw $t0, 0($t1)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
	li $t0, 20127
	sw $t0, -4108($fp)
	addi $t0, $fp, -432
	sw $t0, -4112($fp)
	li $t0, 5
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4112($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4108($fp)
	lw $t1, -4124($fp)
	sw $t0, 0($t1)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	li $t0, 49797
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	sw $t0, -4140($fp)
	li $t0, 25614
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	sw $t0, -4152($fp)
	li $t0, 19842
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	sw $t0, -4164($fp)
	li $t0, 36219
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	sw $t0, -4176($fp)
	li $t0, 40882
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	sw $t0, -4188($fp)
	li $t0, 44088
	sw $t0, -4192($fp)
	li $t0, 20531
	sw $t0, -4196($fp)
	lw $t0, -1820($fp)
	sw $t0, -4200($fp)
	lw $t0, -4196($fp)
	lw $t1, -4200($fp)
	mul $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4192($fp)
	lw $t1, -4204($fp)
	sub $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -3620($fp)
	sw $t0, -4212($fp)
	li $t0, 9211
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	mul $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4208($fp)
	lw $t1, -4220($fp)
	sub $t0, $t0, $t1
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	addi $t0, $fp, -408
	sw $t0, -4232($fp)
	li $t0, 1
	sw $t0, -4236($fp)
	li $t0, 4
	lw $t1, -4236($fp)
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	lw $t1, -4232($fp)
	add $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	lw $t1, 0($t0)
	sw $t1, -4248($fp)
	lw $t1, -4248($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label231:
	li $t0, 1
	sw $t0, -4228($fp)
label232:
	lw $t1, -4224($fp)
	lw $t2, -4228($fp)
	beq $t1, $t2, label228
	j label229
label228:
	li $t0, 18117
	sw $t0, -4252($fp)
	li $t0, 32731
	sw $t0, -4256($fp)
	lw $t0, -4252($fp)
	lw $t1, -4256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4260($fp)
	li $t0, 34587
	sw $t0, -4264($fp)
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4268($fp)
	li $t0, 46285
	sw $t0, -4272($fp)
	li $t0, 0
	sw $t0, -4276($fp)
	li $t0, 1512
	sw $t0, -4280($fp)
	li $t0, 44590
	sw $t0, -4284($fp)
	lw $t0, -4280($fp)
	lw $t1, -4284($fp)
	mul $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t1, -4288($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label239:
	li $t0, 3682
	sw $t0, -4292($fp)
	lw $t1, -4292($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -4276($fp)
label238:
	li $t0, 0
	sw $t0, -4296($fp)
	lw $t0, -2168($fp)
	sw $t0, -4300($fp)
	lw $t1, -4300($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label242:
	li $t0, 31879
	sw $t0, -4304($fp)
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -4296($fp)
label241:
	li $t0, 38504
	sw $t0, -4308($fp)
	lw $t0, -1940($fp)
	sw $t0, -4312($fp)
	lw $t0, -4308($fp)
	lw $t1, -4312($fp)
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	li $t0, 14928
	sw $t0, -4320($fp)
	lw $t0, -4316($fp)
	lw $t1, -4320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4324($fp)
	addi $sp, $sp, -4
	lw $t0, -4272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4324($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4328($fp)
	addi $sp, $sp, 20
	lw $t0, -4268($fp)
	lw $t1, -4328($fp)
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -3368($fp)
	sw $t0, -4336($fp)
	lw $t0, -2204($fp)
	sw $t0, -4340($fp)
	lw $t0, -4336($fp)
	lw $t1, -4340($fp)
	sub $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t1, -4332($fp)
	lw $t2, -4344($fp)
	bne $t1, $t2, label233
	j label236
label236:
	lw $t0, -2024($fp)
	sw $t0, -4348($fp)
	addi $t0, $fp, -280
	sw $t0, -4352($fp)
	li $t0, 4
	sw $t0, -4356($fp)
	li $t0, 4
	lw $t1, -4356($fp)
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	lw $t1, -4352($fp)
	add $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	lw $t1, 0($t0)
	sw $t1, -4368($fp)
	lw $t0, -4348($fp)
	lw $t1, -4368($fp)
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t1, -4372($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	lw $t0, -1820($fp)
	sw $t0, -4376($fp)
	lw $t0, -2840($fp)
	sw $t0, -4380($fp)
	lw $t0, -4376($fp)
	lw $t1, -4380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4384($fp)
	li $t0, 52265
	sw $t0, -4388($fp)
	lw $t1, -4384($fp)
	lw $t2, -4388($fp)
	bne $t1, $t2, label248
	j label244
label248:
	lw $t0, -1472($fp)
	sw $t0, -4392($fp)
	lw $t1, -4392($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label244
label247:
	lw $t0, -1880($fp)
	sw $t0, -4396($fp)
	lw $t1, -4396($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label244
label246:
	li $t0, 64114
	sw $t0, -4400($fp)
	li $t0, 0
	lw $t1, -4400($fp)
	sub $t0, $t0, $t1
	sw $t0, -4404($fp)
	li $t0, 0
	lw $t1, -4404($fp)
	sub $t0, $t0, $t1
	sw $t0, -4408($fp)
	addi $t0, $fp, -348
	sw $t0, -4412($fp)
	lw $t0, -1940($fp)
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
	lw $t0, -4408($fp)
	lw $t1, -4428($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t1, -4432($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	lw $t0, -2000($fp)
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -4440($fp)
	li $t0, 46196
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	sw $t0, -4448($fp)
	li $t0, 0
	sw $t0, -4452($fp)
	lw $t0, -3752($fp)
	sw $t0, -4456($fp)
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label249
label251:
	li $t0, 1491
	sw $t0, -4460($fp)
	lw $t1, -4460($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -4452($fp)
label250:
	li $t0, 45925
	sw $t0, -4464($fp)
	li $t0, 0
	sw $t0, -4468($fp)
	li $t0, 52697
	sw $t0, -4472($fp)
	lw $t0, -1448($fp)
	sw $t0, -4476($fp)
	lw $t1, -4472($fp)
	lw $t2, -4476($fp)
	bge $t1, $t2, label252
	j label254
label254:
	li $t0, 58108
	sw $t0, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -4468($fp)
label253:
	li $t0, 0
	sw $t0, -4484($fp)
	addi $t0, $fp, -120
	sw $t0, -4488($fp)
	lw $t0, -524($fp)
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
	lw $t1, -4504($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -4484($fp)
label256:
	lw $t0, -1784($fp)
	sw $t0, -4508($fp)
	li $t0, 38081
	sw $t0, -4512($fp)
	addi $sp, $sp, -4
	lw $t0, -4468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4516($fp)
	addi $sp, $sp, 20
	li $t0, 26069
	sw $t0, -4520($fp)
	lw $t0, -4516($fp)
	lw $t1, -4520($fp)
	mul $t0, $t0, $t1
	sw $t0, -4524($fp)
	addi $sp, $sp, -4
	lw $t0, -4440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4528($fp)
	addi $sp, $sp, 24
	j label245
label244:
label257:
	li $t0, 30186
	sw $t0, -4532($fp)
	li $t0, 27105
	sw $t0, -4536($fp)
	li $t0, 0
	lw $t1, -4536($fp)
	sub $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t1, -4532($fp)
	lw $t2, -4540($fp)
	bgt $t1, $t2, label258
	j label259
label258:
	li $t0, 0
	sw $t0, -4544($fp)
	lw $t0, -2132($fp)
	sw $t0, -4548($fp)
	li $t0, 502
	sw $t0, -4552($fp)
	lw $t1, -4548($fp)
	lw $t2, -4552($fp)
	blt $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -4544($fp)
label264:
	addi $t0, $fp, -40
	sw $t0, -4556($fp)
	li $t0, 4
	sw $t0, -4560($fp)
	li $t0, 4
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, 0($t0)
	sw $t1, -4572($fp)
	lw $t1, -4544($fp)
	lw $t2, -4572($fp)
	ble $t1, $t2, label260
	j label261
label260:
	lw $t0, -4172($fp)
	sw $t0, -4576($fp)
	li $t0, 0
	lw $t1, -4576($fp)
	sub $t0, $t0, $t1
	sw $t0, -4580($fp)
	addi $t0, $fp, -152
	sw $t0, -4584($fp)
	li $t0, 21400
	sw $t0, -4588($fp)
	lw $t0, -1472($fp)
	sw $t0, -4592($fp)
	lw $t0, -4588($fp)
	lw $t1, -4592($fp)
	add $t0, $t0, $t1
	sw $t0, -4596($fp)
	li $t0, 4
	lw $t1, -4596($fp)
	mul $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	lw $t1, -4584($fp)
	add $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	lw $t1, 0($t0)
	sw $t1, -4608($fp)
	lw $t1, -4580($fp)
	lw $t2, -4608($fp)
	blt $t1, $t2, label265
	j label266
label265:
	li $t0, 0
	sw $t0, -4612($fp)
	li $t0, 0
	sw $t0, -4616($fp)
	li $t0, 29780
	sw $t0, -4620($fp)
	lw $t0, -2864($fp)
	sw $t0, -4624($fp)
	lw $t1, -4620($fp)
	lw $t2, -4624($fp)
	blt $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -4616($fp)
label274:
	li $t0, 36252
	sw $t0, -4628($fp)
	lw $t1, -4616($fp)
	lw $t2, -4628($fp)
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -4612($fp)
label272:
	li $t0, 46325
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -4636($fp)
	li $t0, 0
	sw $t0, -4640($fp)
	li $t0, 0
	sw $t0, -4644($fp)
	lw $t0, -4148($fp)
	sw $t0, -4648($fp)
	lw $t0, -1712($fp)
	sw $t0, -4652($fp)
	lw $t1, -4648($fp)
	lw $t2, -4652($fp)
	bge $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -4644($fp)
label278:
	li $t0, 3521
	sw $t0, -4656($fp)
	lw $t1, -4644($fp)
	lw $t2, -4656($fp)
	bge $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -4640($fp)
label276:
	lw $t0, -3080($fp)
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -4664($fp)
	li $t0, 0
	sw $t0, -4668($fp)
	lw $t0, -1460($fp)
	sw $t0, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label279:
	li $t0, 1
	sw $t0, -4668($fp)
label280:
	li $t0, 11662
	sw $t0, -4676($fp)
	lw $t0, -4668($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4680($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4684($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4684($fp)
	sub $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 15376
	sw $t0, -4692($fp)
	j label270
label269:
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 2748
	sw $t0, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label281:
	li $t0, 1
	sw $t0, -4696($fp)
label282:
	li $t0, 0
	sw $t0, -4704($fp)
	li $t0, 51180
	sw $t0, -4708($fp)
	lw $t1, -4708($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label286
label286:
	li $t0, 47255
	sw $t0, -4712($fp)
	lw $t1, -4712($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label285
label285:
	addi $t0, $fp, -312
	sw $t0, -4716($fp)
	li $t0, 2
	sw $t0, -4720($fp)
	li $t0, 4
	lw $t1, -4720($fp)
	mul $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	lw $t1, -4716($fp)
	add $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	lw $t1, 0($t0)
	sw $t1, -4732($fp)
	li $t0, 0
	sw $t0, -4736($fp)
	lw $t0, -2672($fp)
	sw $t0, -4740($fp)
	li $t0, 50937
	sw $t0, -4744($fp)
	lw $t1, -4740($fp)
	lw $t2, -4744($fp)
	ble $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -4736($fp)
label288:
	lw $t1, -4732($fp)
	lw $t2, -4736($fp)
	beq $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -4704($fp)
label284:
label270:
	j label267
label266:
label289:
	li $t0, 0
	sw $t0, -4748($fp)
	li $t0, 0
	sw $t0, -4752($fp)
	li $t0, 35011
	sw $t0, -4756($fp)
	li $t0, 0
	lw $t1, -4756($fp)
	sub $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label296
label296:
	lw $t0, -2108($fp)
	sw $t0, -4764($fp)
	lw $t1, -4764($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -4752($fp)
label295:
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 17745
	sw $t0, -4772($fp)
	li $t0, 0
	lw $t1, -4772($fp)
	sub $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -1448($fp)
	sw $t0, -4780($fp)
	lw $t0, -4776($fp)
	lw $t1, -4780($fp)
	add $t0, $t0, $t1
	sw $t0, -4784($fp)
	li $t0, 4825
	sw $t0, -4788($fp)
	lw $t0, -1784($fp)
	sw $t0, -4792($fp)
	lw $t0, -4788($fp)
	lw $t1, -4792($fp)
	sub $t0, $t0, $t1
	sw $t0, -4796($fp)
	li $t0, 16254
	sw $t0, -4800($fp)
	li $t0, 606
	sw $t0, -4804($fp)
	lw $t0, -4800($fp)
	lw $t1, -4804($fp)
	mul $t0, $t0, $t1
	sw $t0, -4808($fp)
	addi $t0, $fp, -280
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
	lw $t0, -3440($fp)
	sw $t0, -4832($fp)
	lw $t0, -4828($fp)
	lw $t1, -4832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4836($fp)
	li $t0, 0
	sw $t0, -4840($fp)
	li $t0, 37275
	sw $t0, -4844($fp)
	li $t0, 0
	lw $t1, -4844($fp)
	sub $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t1, -4848($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label302
label302:
	li $t0, 23682
	sw $t0, -4852($fp)
	lw $t1, -4852($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -4840($fp)
label301:
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4856($fp)
	addi $sp, $sp, 24
	lw $t1, -4856($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label299:
	li $t0, 46802
	sw $t0, -4860($fp)
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -4768($fp)
label298:
	li $t0, 1991
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	sw $t0, -4868($fp)
	li $t0, 50546
	sw $t0, -4872($fp)
	li $t0, 25104
	sw $t0, -4876($fp)
	lw $t0, -4872($fp)
	lw $t1, -4876($fp)
	add $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t0, -812($fp)
	sw $t0, -4884($fp)
	lw $t0, -4880($fp)
	lw $t1, -4884($fp)
	sub $t0, $t0, $t1
	sw $t0, -4888($fp)
	addi $sp, $sp, -4
	lw $t0, -4752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4888($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4892($fp)
	addi $sp, $sp, 20
	lw $t0, -3596($fp)
	sw $t0, -4896($fp)
	lw $t1, -4892($fp)
	lw $t2, -4896($fp)
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -4748($fp)
label293:
	lw $t0, -4748($fp)
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	sw $t0, -4900($fp)
	lw $t1, -4900($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	addi $t0, $fp, -120
	sw $t0, -4904($fp)
	li $t0, 0
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
	lw $t0, -1868($fp)
	sw $t0, -4924($fp)
	lw $t0, -4920($fp)
	lw $t1, -4924($fp)
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	li $t0, 0
	sw $t0, -4932($fp)
	lw $t0, -1940($fp)
	sw $t0, -4936($fp)
	li $t0, 38070
	sw $t0, -4940($fp)
	lw $t1, -4936($fp)
	lw $t2, -4940($fp)
	beq $t1, $t2, label303
	j label305
label305:
	li $t0, 23208
	sw $t0, -4944($fp)
	lw $t1, -4944($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -4932($fp)
label304:
	li $t0, 0
	sw $t0, -4948($fp)
	li $t0, 58964
	sw $t0, -4952($fp)
	lw $t1, -4952($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label309:
	li $t0, 29880
	sw $t0, -4956($fp)
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label308
label308:
	lw $t0, -1772($fp)
	sw $t0, -4960($fp)
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -4948($fp)
label307:
	li $t0, 26359
	sw $t0, -4964($fp)
	li $t0, 57281
	sw $t0, -4968($fp)
	lw $t0, -4964($fp)
	lw $t1, -4968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4972($fp)
	lw $t0, -2108($fp)
	sw $t0, -4976($fp)
	lw $t0, -4972($fp)
	lw $t1, -4976($fp)
	mul $t0, $t0, $t1
	sw $t0, -4980($fp)
	li $t0, 35880
	sw $t0, -4984($fp)
	li $t0, 47302
	sw $t0, -4988($fp)
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -1712($fp)
	sw $t0, -4996($fp)
	addi $sp, $sp, -4
	lw $t0, -4948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4996($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5000($fp)
	addi $sp, $sp, 20
	li $t0, 44850
	sw $t0, -5004($fp)
	li $t0, 47305
	sw $t0, -5008($fp)
	lw $t0, -5004($fp)
	lw $t1, -5008($fp)
	add $t0, $t0, $t1
	sw $t0, -5012($fp)
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5012($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5016($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -5016($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label289
label291:
label267:
	j label262
label261:
	addi $t0, $fp, -280
	sw $t0, -5020($fp)
	lw $t0, 8($fp)
	sw $t0, -5024($fp)
	lw $t0, -1460($fp)
	sw $t0, -5028($fp)
	li $t0, 30218
	sw $t0, -5032($fp)
	lw $t0, -5028($fp)
	lw $t1, -5032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5036($fp)
	lw $t0, -3608($fp)
	sw $t0, -5040($fp)
	lw $t0, -5036($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5044($fp)
	li $t0, 0
	sw $t0, -5048($fp)
	li $t0, 51777
	sw $t0, -5052($fp)
	lw $t1, -5052($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label316
label316:
	li $t0, 35165
	sw $t0, -5056($fp)
	lw $t1, -5056($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label315
label315:
	lw $t0, -1820($fp)
	sw $t0, -5060($fp)
	lw $t1, -5060($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -5048($fp)
label314:
	li $t0, 0
	sw $t0, -5064($fp)
	lw $t0, -2024($fp)
	sw $t0, -5068($fp)
	lw $t0, -1724($fp)
	sw $t0, -5072($fp)
	lw $t0, -5068($fp)
	lw $t1, -5072($fp)
	add $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t1, -5076($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label319
label319:
	li $t0, 25957
	sw $t0, -5080($fp)
	lw $t1, -5080($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -5064($fp)
label318:
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5084($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -5084($fp)
	mul $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	lw $t1, -5020($fp)
	add $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	lw $t1, 0($t0)
	sw $t1, -5096($fp)
	lw $t1, -5096($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 16476
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	sw $t0, -5108($fp)
	li $t0, 20567
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	sw $t0, -5120($fp)
	li $t0, 15228
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5132($fp)
	li $t0, 41580
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	sw $t0, -5144($fp)
	li $t0, 0
	sw $t0, -5148($fp)
	li $t0, 22558
	sw $t0, -5152($fp)
	li $t0, 0
	lw $t1, -5152($fp)
	sub $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label323:
	lw $t0, -1460($fp)
	sw $t0, -5160($fp)
	lw $t1, -5160($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label322
label322:
	lw $t0, -3356($fp)
	sw $t0, -5164($fp)
	li $t0, 0
	sw $t0, -5168($fp)
	lw $t0, -776($fp)
	sw $t0, -5172($fp)
	lw $t1, -5172($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -5168($fp)
label325:
	lw $t0, -5164($fp)
	lw $t1, -5168($fp)
	mul $t0, $t0, $t1
	sw $t0, -5176($fp)
	li $t0, 0
	lw $t1, -5176($fp)
	sub $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -5148($fp)
label321:
	li $t0, 0
	sw $t0, -5184($fp)
	li $t0, 0
	sw $t0, -5188($fp)
	addi $t0, $fp, -372
	sw $t0, -5192($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -5212($fp)
	li $t0, 0
	sw $t0, -5216($fp)
	lw $t0, -1076($fp)
	sw $t0, -5220($fp)
	lw $t0, -3524($fp)
	sw $t0, -5224($fp)
	lw $t1, -5220($fp)
	lw $t2, -5224($fp)
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -5216($fp)
label333:
	lw $t0, -776($fp)
	sw $t0, -5228($fp)
	lw $t1, -5216($fp)
	lw $t2, -5228($fp)
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -5212($fp)
label331:
	lw $t0, -5140($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	sw $t0, -5236($fp)
	li $t0, 0
	sw $t0, -5240($fp)
	addi $t0, $fp, -432
	sw $t0, -5244($fp)
	li $t0, 0
	sw $t0, -5248($fp)
	li $t0, 4
	lw $t1, -5248($fp)
	mul $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	lw $t1, -5244($fp)
	add $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	lw $t1, 0($t0)
	sw $t1, -5260($fp)
	li $t0, 44503
	sw $t0, -5264($fp)
	lw $t1, -5260($fp)
	lw $t2, -5264($fp)
	bgt $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -5240($fp)
label335:
	li $t0, 0
	sw $t0, -5268($fp)
	li $t0, 0
	sw $t0, -5272($fp)
	li $t0, 63237
	sw $t0, -5276($fp)
	lw $t1, -5276($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label338
label338:
	li $t0, 1
	sw $t0, -5272($fp)
label339:
	lw $t0, -1748($fp)
	sw $t0, -5280($fp)
	lw $t1, -5272($fp)
	lw $t2, -5280($fp)
	bgt $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -5268($fp)
label337:
	li $t0, 0
	sw $t0, -5284($fp)
	li $t0, 0
	sw $t0, -5288($fp)
	li $t0, 62631
	sw $t0, -5292($fp)
	li $t0, 11404
	sw $t0, -5296($fp)
	lw $t1, -5292($fp)
	lw $t2, -5296($fp)
	ble $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -5288($fp)
label343:
	li $t0, 15980
	sw $t0, -5300($fp)
	lw $t1, -5288($fp)
	lw $t2, -5300($fp)
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -5284($fp)
label341:
	addi $sp, $sp, -4
	lw $t0, -5212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5304($fp)
	addi $sp, $sp, 24
	lw $t0, -5208($fp)
	lw $t1, -5304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5308($fp)
	li $t0, 0
	sw $t0, -5312($fp)
	lw $t0, -5116($fp)
	sw $t0, -5316($fp)
	lw $t1, -5316($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label344:
	li $t0, 1
	sw $t0, -5312($fp)
label345:
	lw $t1, -5308($fp)
	lw $t2, -5312($fp)
	bge $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -5188($fp)
label329:
	li $t0, 0
	sw $t0, -5320($fp)
	addi $t0, $fp, -120
	sw $t0, -5324($fp)
	lw $t0, 8($fp)
	sw $t0, -5328($fp)
	li $t0, 4
	lw $t1, -5328($fp)
	mul $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	lw $t1, -5324($fp)
	add $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	lw $t1, 0($t0)
	sw $t1, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label346:
	li $t0, 1
	sw $t0, -5320($fp)
label347:
	addi $t0, $fp, -40
	sw $t0, -5344($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -5364($fp)
	lw $t0, -1844($fp)
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label348:
	li $t0, 1
	sw $t0, -5364($fp)
label349:
	lw $t0, -3572($fp)
	sw $t0, -5372($fp)
	lw $t0, -5364($fp)
	lw $t1, -5372($fp)
	mul $t0, $t0, $t1
	sw $t0, -5376($fp)
	li $t0, 21585
	sw $t0, -5380($fp)
	li $t0, 26272
	sw $t0, -5384($fp)
	lw $t0, -3104($fp)
	sw $t0, -5388($fp)
	lw $t0, -5384($fp)
	lw $t1, -5388($fp)
	mul $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -2144($fp)
	sw $t0, -5396($fp)
	lw $t0, -5392($fp)
	lw $t1, -5396($fp)
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5400($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5404($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5404($fp)
	sub $t0, $t0, $t1
	sw $t0, -5408($fp)
	li $t0, 0
	sw $t0, -5412($fp)
	li $t0, 51241
	sw $t0, -5416($fp)
	lw $t0, -1844($fp)
	sw $t0, -5420($fp)
	lw $t1, -5416($fp)
	lw $t2, -5420($fp)
	ble $t1, $t2, label350
	j label352
label352:
	li $t0, 13040
	sw $t0, -5424($fp)
	lw $t1, -5424($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -5412($fp)
label351:
	lw $t0, -3536($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, -5432($fp)
	lw $t0, -4136($fp)
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -5440($fp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5444($fp)
	addi $sp, $sp, 20
	lw $t0, -5320($fp)
	lw $t1, -5444($fp)
	mul $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t1, -5188($fp)
	lw $t2, -5448($fp)
	beq $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -5184($fp)
label327:
	li $t0, 0
	sw $t0, -5452($fp)
	lw $t0, -1076($fp)
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5460($fp)
	li $t0, 3815
	sw $t0, -5464($fp)
	lw $t0, -1784($fp)
	sw $t0, -5468($fp)
	lw $t0, -5464($fp)
	lw $t1, -5468($fp)
	mul $t0, $t0, $t1
	sw $t0, -5472($fp)
	li $t0, 8940
	sw $t0, -5476($fp)
	lw $t0, -5472($fp)
	lw $t1, -5476($fp)
	sub $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, 8($fp)
	sw $t0, -5484($fp)
	li $t0, 0
	sw $t0, -5488($fp)
	addi $t0, $fp, -280
	sw $t0, -5492($fp)
	li $t0, 2
	sw $t0, -5496($fp)
	li $t0, 4
	lw $t1, -5496($fp)
	mul $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	lw $t1, -5492($fp)
	add $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	lw $t1, 0($t0)
	sw $t1, -5508($fp)
	li $t0, 37400
	sw $t0, -5512($fp)
	lw $t1, -5508($fp)
	lw $t2, -5512($fp)
	bgt $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -5488($fp)
label356:
	li $t0, 0
	sw $t0, -5516($fp)
	li $t0, 51400
	sw $t0, -5520($fp)
	li $t0, 11443
	sw $t0, -5524($fp)
	lw $t0, -5520($fp)
	lw $t1, -5524($fp)
	sub $t0, $t0, $t1
	sw $t0, -5528($fp)
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 53771
	sw $t0, -5536($fp)
	lw $t1, -5536($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label359
label359:
	li $t0, 1
	sw $t0, -5532($fp)
label360:
	li $t0, 16976
	sw $t0, -5540($fp)
	lw $t0, -5532($fp)
	lw $t1, -5540($fp)
	add $t0, $t0, $t1
	sw $t0, -5544($fp)
	li $t0, 0
	sw $t0, -5548($fp)
	lw $t0, -800($fp)
	sw $t0, -5552($fp)
	li $t0, 0
	lw $t1, -5552($fp)
	sub $t0, $t0, $t1
	sw $t0, -5556($fp)
	li $t0, 13330
	sw $t0, -5560($fp)
	lw $t1, -5556($fp)
	lw $t2, -5560($fp)
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -5548($fp)
label362:
	lw $t0, -2000($fp)
	sw $t0, -5564($fp)
	lw $t0, -524($fp)
	sw $t0, -5568($fp)
	lw $t0, -5564($fp)
	lw $t1, -5568($fp)
	add $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -2696($fp)
	sw $t0, -5576($fp)
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5576($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5580($fp)
	addi $sp, $sp, 24
	lw $t1, -5580($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label357
label357:
	li $t0, 1
	sw $t0, -5516($fp)
label358:
	addi $sp, $sp, -4
	lw $t0, -5460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5516($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5584($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -96
	sw $t0, -5588($fp)
	li $t0, 7
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
	li $t0, 29507
	sw $t0, -5608($fp)
	lw $t0, -5604($fp)
	lw $t1, -5608($fp)
	mul $t0, $t0, $t1
	sw $t0, -5612($fp)
	lw $t1, -5584($fp)
	lw $t2, -5612($fp)
	blt $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -5452($fp)
label354:
	j label312
label311:
	addi $t0, $fp, -228
	sw $t0, -5616($fp)
	li $t0, 0
	sw $t0, -5620($fp)
	addi $t0, $fp, -348
	sw $t0, -5624($fp)
	lw $t0, -3116($fp)
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
	li $t0, 0
	sw $t0, -5644($fp)
	li $t0, 4278
	sw $t0, -5648($fp)
	lw $t0, -1448($fp)
	sw $t0, -5652($fp)
	lw $t1, -5648($fp)
	lw $t2, -5652($fp)
	bge $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -5644($fp)
label369:
	li $t0, 0
	sw $t0, -5656($fp)
	li $t0, 0
	sw $t0, -5660($fp)
	lw $t0, -2120($fp)
	sw $t0, -5664($fp)
	lw $t1, -5664($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label372:
	li $t0, 1
	sw $t0, -5660($fp)
label373:
	li $t0, 52065
	sw $t0, -5668($fp)
	lw $t1, -5660($fp)
	lw $t2, -5668($fp)
	ble $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -5656($fp)
label371:
	li $t0, 0
	sw $t0, -5672($fp)
	lw $t0, -1736($fp)
	sw $t0, -5676($fp)
	li $t0, 17310
	sw $t0, -5680($fp)
	lw $t0, -5676($fp)
	lw $t1, -5680($fp)
	add $t0, $t0, $t1
	sw $t0, -5684($fp)
	li $t0, 61871
	sw $t0, -5688($fp)
	lw $t1, -5684($fp)
	lw $t2, -5688($fp)
	bge $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -5672($fp)
label375:
	lw $t0, 4($fp)
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	sw $t0, -5696($fp)
	addi $sp, $sp, -4
	lw $t0, -5640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5696($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5700($fp)
	addi $sp, $sp, 24
	lw $t0, -1808($fp)
	sw $t0, -5704($fp)
	li $t0, 61597
	sw $t0, -5708($fp)
	lw $t0, -5704($fp)
	lw $t1, -5708($fp)
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t1, -5700($fp)
	lw $t2, -5712($fp)
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -5620($fp)
label367:
	li $t0, 4
	lw $t1, -5620($fp)
	mul $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, -5616($fp)
	add $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, 0($t0)
	sw $t1, -5724($fp)
	lw $t1, -5724($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label364
label363:
	li $t0, 0
	sw $t0, -5728($fp)
	lw $t0, -3536($fp)
	sw $t0, -5732($fp)
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label376:
	li $t0, 1
	sw $t0, -5728($fp)
label377:
	j label365
label364:
	li $t0, 0
	sw $t0, -5736($fp)
	lw $t0, -2096($fp)
	sw $t0, -5740($fp)
	li $t0, 0
	sw $t0, -5744($fp)
	li $t0, 0
	sw $t0, -5748($fp)
	lw $t0, -4148($fp)
	sw $t0, -5752($fp)
	lw $t0, -2036($fp)
	sw $t0, -5756($fp)
	lw $t1, -5752($fp)
	lw $t2, -5756($fp)
	ble $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -5748($fp)
label383:
	lw $t0, -1928($fp)
	sw $t0, -5760($fp)
	lw $t1, -5748($fp)
	lw $t2, -5760($fp)
	bgt $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -5744($fp)
label381:
	lw $t0, -2660($fp)
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	sw $t0, -5768($fp)
	li $t0, 0
	sw $t0, -5772($fp)
	li $t0, 39202
	sw $t0, -5776($fp)
	li $t0, 53614
	sw $t0, -5780($fp)
	lw $t0, -5776($fp)
	lw $t1, -5780($fp)
	add $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -3572($fp)
	sw $t0, -5788($fp)
	lw $t1, -5784($fp)
	lw $t2, -5788($fp)
	blt $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -5772($fp)
label385:
	li $t0, 58808
	sw $t0, -5792($fp)
	lw $t0, -3392($fp)
	sw $t0, -5796($fp)
	lw $t0, -5792($fp)
	lw $t1, -5796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5800($fp)
	li $t0, 52101
	sw $t0, -5804($fp)
	lw $t0, -5800($fp)
	lw $t1, -5804($fp)
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	li $t0, 0
	sw $t0, -5812($fp)
	lw $t0, -2084($fp)
	sw $t0, -5816($fp)
	li $t0, 25829
	sw $t0, -5820($fp)
	lw $t0, -5816($fp)
	lw $t1, -5820($fp)
	add $t0, $t0, $t1
	sw $t0, -5824($fp)
	li $t0, 17616
	sw $t0, -5828($fp)
	lw $t1, -5824($fp)
	lw $t2, -5828($fp)
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -5812($fp)
label387:
	addi $sp, $sp, -4
	lw $t0, -5744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5812($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5832($fp)
	addi $sp, $sp, 24
	li $t0, 39197
	sw $t0, -5836($fp)
	lw $t0, -5832($fp)
	lw $t1, -5836($fp)
	sub $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t0, -1784($fp)
	sw $t0, -5844($fp)
	li $t0, 45767
	sw $t0, -5848($fp)
	lw $t0, -5844($fp)
	lw $t1, -5848($fp)
	sub $t0, $t0, $t1
	sw $t0, -5852($fp)
	li $t0, 0
	sw $t0, -5856($fp)
	lw $t0, 4($fp)
	sw $t0, -5860($fp)
	li $t0, 31911
	sw $t0, -5864($fp)
	lw $t0, -5860($fp)
	lw $t1, -5864($fp)
	mul $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t1, -5868($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label390
label390:
	lw $t0, -1076($fp)
	sw $t0, -5872($fp)
	lw $t1, -5872($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -5856($fp)
label389:
	li $t0, 0
	sw $t0, -5876($fp)
	li $t0, 12041
	sw $t0, -5880($fp)
	li $t0, 46861
	sw $t0, -5884($fp)
	lw $t0, -5880($fp)
	lw $t1, -5884($fp)
	sub $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t1, -5888($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label393
label393:
	lw $t0, -2192($fp)
	sw $t0, -5892($fp)
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -5876($fp)
label392:
	addi $t0, $fp, -260
	sw $t0, -5896($fp)
	lw $t0, -812($fp)
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
	lw $t0, -1880($fp)
	sw $t0, -5916($fp)
	lw $t0, -5912($fp)
	lw $t1, -5916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5920($fp)
	li $t0, 0
	sw $t0, -5924($fp)
	li $t0, 15682
	sw $t0, -5928($fp)
	li $t0, 0
	lw $t1, -5928($fp)
	sub $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t1, -5932($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label394:
	li $t0, 1
	sw $t0, -5924($fp)
label395:
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5924($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5936($fp)
	addi $sp, $sp, 24
	lw $t0, -2180($fp)
	sw $t0, -5940($fp)
	lw $t0, -5936($fp)
	lw $t1, -5940($fp)
	add $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -1988($fp)
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, -5952($fp)
	li $t0, 49160
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -5960($fp)
	lw $t0, -2168($fp)
	sw $t0, -5964($fp)
	addi $sp, $sp, -4
	lw $t0, -5840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5968($fp)
	addi $sp, $sp, 24
	li $t0, 52532
	sw $t0, -5972($fp)
	lw $t0, -5968($fp)
	lw $t1, -5972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5976($fp)
	lw $t0, -5740($fp)
	lw $t1, -5976($fp)
	add $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -3080($fp)
	sw $t0, -5984($fp)
	lw $t1, -5980($fp)
	lw $t2, -5984($fp)
	beq $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -5736($fp)
label379:
label365:
label312:
label262:
	j label257
label259:
label245:
	j label235
label234:
	li $t0, 0
	sw $t0, -5988($fp)
	lw $t0, -1700($fp)
	sw $t0, -5992($fp)
	lw $t1, -5992($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label399
label399:
	li $t0, 1
	sw $t0, -5988($fp)
label400:
	addi $t0, $fp, -152
	sw $t0, -5996($fp)
	li $t0, 0
	sw $t0, -6000($fp)
	lw $t0, -1916($fp)
	sw $t0, -6004($fp)
	lw $t0, -3344($fp)
	sw $t0, -6008($fp)
	lw $t1, -6004($fp)
	lw $t2, -6008($fp)
	blt $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -6000($fp)
label402:
	li $t0, 4
	lw $t1, -6000($fp)
	mul $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	lw $t1, -5996($fp)
	add $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	lw $t1, 0($t0)
	sw $t1, -6020($fp)
	lw $t0, -5988($fp)
	lw $t1, -6020($fp)
	mul $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t1, -6024($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
label403:
	li $t0, 0
	sw $t0, -6028($fp)
	li $t0, 8211
	sw $t0, -6032($fp)
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label406:
	li $t0, 1
	sw $t0, -6028($fp)
label407:
	li $t0, 53293
	sw $t0, -6036($fp)
	lw $t0, -1832($fp)
	sw $t0, -6040($fp)
	lw $t0, -6036($fp)
	lw $t1, -6040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6044($fp)
	addi $t0, $fp, -188
	sw $t0, -6048($fp)
	lw $t0, -2108($fp)
	sw $t0, -6052($fp)
	li $t0, 4
	lw $t1, -6052($fp)
	mul $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	lw $t1, -6048($fp)
	add $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	lw $t1, 0($t0)
	sw $t1, -6064($fp)
	li $t0, 38397
	sw $t0, -6068($fp)
	lw $t0, -6064($fp)
	lw $t1, -6068($fp)
	mul $t0, $t0, $t1
	sw $t0, -6072($fp)
	li $t0, 41849
	sw $t0, -6076($fp)
	li $t0, 1
	sw $t0, -6080($fp)
	lw $t0, -6076($fp)
	lw $t1, -6080($fp)
	mul $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t0, -3548($fp)
	sw $t0, -6088($fp)
	lw $t0, -6084($fp)
	lw $t1, -6088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6092($fp)
	lw $t0, -3404($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	sw $t0, -6100($fp)
	addi $sp, $sp, -4
	lw $t0, -6028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6104($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -6104($fp)
	sub $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t1, -6108($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 0
	sw $t0, -6112($fp)
	lw $t0, 8($fp)
	sw $t0, -6116($fp)
	lw $t1, -6116($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label410
label410:
	li $t0, 0
	sw $t0, -6120($fp)
	li $t0, 0
	sw $t0, -6124($fp)
	lw $t0, -1856($fp)
	sw $t0, -6128($fp)
	li $t0, 12171
	sw $t0, -6132($fp)
	lw $t1, -6128($fp)
	lw $t2, -6132($fp)
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -6124($fp)
label414:
	li $t0, 25157
	sw $t0, -6136($fp)
	lw $t1, -6124($fp)
	lw $t2, -6136($fp)
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -6120($fp)
label412:
	lw $t0, -3524($fp)
	sw $t0, -6140($fp)
	li $t0, 0
	lw $t1, -6140($fp)
	sub $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t1, -6120($fp)
	lw $t2, -6144($fp)
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -6112($fp)
label409:
	lw $ra, -4($fp)
	lw $v0, -6112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label403
label405:
	j label398
label397:
	li $t0, 0
	sw $t0, -6148($fp)
	li $t0, 48828
	sw $t0, -6152($fp)
	lw $t0, -1760($fp)
	sw $t0, -6156($fp)
	lw $t0, -6152($fp)
	lw $t1, -6156($fp)
	mul $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -2864($fp)
	sw $t0, -6164($fp)
	lw $t1, -6160($fp)
	lw $t2, -6164($fp)
	beq $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -6148($fp)
label419:
	li $t0, 0
	sw $t0, -6168($fp)
	addi $t0, $fp, -16
	sw $t0, -6172($fp)
	lw $t0, -2096($fp)
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
	lw $t1, -6188($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label422
label422:
	lw $t0, -2144($fp)
	sw $t0, -6192($fp)
	lw $t1, -6192($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -6168($fp)
label421:
	lw $t0, -512($fp)
	sw $t0, -6196($fp)
	li $t0, 0
	lw $t1, -6196($fp)
	sub $t0, $t0, $t1
	sw $t0, -6200($fp)
	lw $t0, -4160($fp)
	sw $t0, -6204($fp)
	lw $t0, -6200($fp)
	lw $t1, -6204($fp)
	sub $t0, $t0, $t1
	sw $t0, -6208($fp)
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 37148
	sw $t0, -6216($fp)
	lw $t0, -812($fp)
	sw $t0, -6220($fp)
	lw $t0, -6216($fp)
	lw $t1, -6220($fp)
	add $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t1, -6224($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label425:
	lw $t0, -3512($fp)
	sw $t0, -6228($fp)
	lw $t1, -6228($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -6212($fp)
label424:
	lw $t0, -2168($fp)
	sw $t0, -6232($fp)
	li $t0, 28652
	sw $t0, -6236($fp)
	lw $t0, -6232($fp)
	lw $t1, -6236($fp)
	sub $t0, $t0, $t1
	sw $t0, -6240($fp)
	addi $sp, $sp, -4
	lw $t0, -6148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6244($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6248($fp)
	lw $t0, -1088($fp)
	sw $t0, -6252($fp)
	li $t0, 44550
	sw $t0, -6256($fp)
	lw $t1, -6252($fp)
	lw $t2, -6256($fp)
	beq $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -6248($fp)
label427:
	lw $t0, -3380($fp)
	sw $t0, -6260($fp)
	lw $t0, -2864($fp)
	sw $t0, -6264($fp)
	lw $t0, -6260($fp)
	lw $t1, -6264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6268($fp)
	li $t0, 0
	sw $t0, -6272($fp)
	li $t0, 32317
	sw $t0, -6276($fp)
	li $t0, 50618
	sw $t0, -6280($fp)
	lw $t0, -6276($fp)
	lw $t1, -6280($fp)
	sub $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -2036($fp)
	sw $t0, -6288($fp)
	lw $t1, -6284($fp)
	lw $t2, -6288($fp)
	beq $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -6272($fp)
label429:
	li $t0, 0
	sw $t0, -6292($fp)
	lw $t0, -1856($fp)
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -6300($fp)
	li $t0, 0
	sw $t0, -6304($fp)
	lw $t0, -3752($fp)
	sw $t0, -6308($fp)
	lw $t0, -1772($fp)
	sw $t0, -6312($fp)
	lw $t0, -6308($fp)
	lw $t1, -6312($fp)
	mul $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, 8($fp)
	sw $t0, -6320($fp)
	lw $t1, -6316($fp)
	lw $t2, -6320($fp)
	beq $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -6304($fp)
label434:
	li $t0, 0
	sw $t0, -6324($fp)
	lw $t0, -2156($fp)
	sw $t0, -6328($fp)
	lw $t0, -3740($fp)
	sw $t0, -6332($fp)
	lw $t1, -6328($fp)
	lw $t2, -6332($fp)
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -6324($fp)
label436:
	li $t0, 0
	sw $t0, -6336($fp)
	li $t0, 0
	sw $t0, -6340($fp)
	li $t0, 12026
	sw $t0, -6344($fp)
	li $t0, 21111
	sw $t0, -6348($fp)
	lw $t1, -6344($fp)
	lw $t2, -6348($fp)
	bgt $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -6340($fp)
label440:
	li $t0, 27240
	sw $t0, -6352($fp)
	lw $t1, -6340($fp)
	lw $t2, -6352($fp)
	beq $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -6336($fp)
label438:
	li $t0, 0
	sw $t0, -6356($fp)
	lw $t0, -3632($fp)
	sw $t0, -6360($fp)
	lw $t1, -6360($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -6356($fp)
label442:
	addi $sp, $sp, -4
	lw $t0, -6300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6364($fp)
	addi $sp, $sp, 24
	lw $t1, -6364($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label431
label432:
	lw $t0, -2672($fp)
	sw $t0, -6368($fp)
	lw $t1, -6368($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -6292($fp)
label431:
	addi $sp, $sp, -4
	lw $t0, -6244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6292($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6372($fp)
	addi $sp, $sp, 24
	lw $t1, -6372($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label416
label415:
label443:
	li $t0, 0
	sw $t0, -6376($fp)
	li $t0, 27927
	sw $t0, -6380($fp)
	lw $t0, -2132($fp)
	sw $t0, -6384($fp)
	lw $t0, -6380($fp)
	lw $t1, -6384($fp)
	sub $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t1, -6388($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label448
label448:
	lw $t0, -3752($fp)
	sw $t0, -6392($fp)
	lw $t1, -6392($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -6376($fp)
label447:
	li $t0, 16986
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -6400($fp)
	li $t0, 0
	sw $t0, -6404($fp)
	li $t0, 36755
	sw $t0, -6408($fp)
	li $t0, 2098
	sw $t0, -6412($fp)
	lw $t0, -6408($fp)
	lw $t1, -6412($fp)
	add $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t1, -6416($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label451
label451:
	li $t0, 30886
	sw $t0, -6420($fp)
	lw $t1, -6420($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -6404($fp)
label450:
	li $t0, 0
	sw $t0, -6424($fp)
	li $t0, 24713
	sw $t0, -6428($fp)
	li $t0, 20772
	sw $t0, -6432($fp)
	lw $t0, -6428($fp)
	lw $t1, -6432($fp)
	mul $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t1, -6436($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label453
label454:
	li $t0, 64510
	sw $t0, -6440($fp)
	lw $t1, -6440($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -6424($fp)
label453:
	addi $sp, $sp, -4
	lw $t0, -6376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6424($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6444($fp)
	addi $sp, $sp, 20
	lw $t1, -6444($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 0
	sw $t0, -6448($fp)
	lw $t0, -1940($fp)
	sw $t0, -6452($fp)
	lw $t0, -3584($fp)
	sw $t0, -6456($fp)
	li $t0, 0
	sw $t0, -6460($fp)
	li $t0, 14492
	sw $t0, -6464($fp)
	lw $t1, -6464($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label457:
	li $t0, 1
	sw $t0, -6460($fp)
label458:
	li $t0, 0
	sw $t0, -6468($fp)
	li $t0, 10258
	sw $t0, -6472($fp)
	lw $t1, -6472($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 1
	sw $t0, -6468($fp)
label460:
	lw $t0, -2840($fp)
	sw $t0, -6476($fp)
	lw $t0, -6468($fp)
	lw $t1, -6476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6480($fp)
	li $t0, 48502
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	sw $t0, -6488($fp)
	addi $sp, $sp, -4
	lw $t0, -6452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6488($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6492($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6496($fp)
	lw $t0, -1952($fp)
	sw $t0, -6500($fp)
	li $t0, 40186
	sw $t0, -6504($fp)
	lw $t1, -6500($fp)
	lw $t2, -6504($fp)
	bgt $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -6496($fp)
label462:
	li $t0, 0
	sw $t0, -6508($fp)
	lw $t0, -2828($fp)
	sw $t0, -6512($fp)
	li $t0, 9165
	sw $t0, -6516($fp)
	lw $t1, -6512($fp)
	lw $t2, -6516($fp)
	bge $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -6508($fp)
label464:
	li $t0, 0
	sw $t0, -6520($fp)
	addi $t0, $fp, -260
	sw $t0, -6524($fp)
	lw $t0, -2684($fp)
	sw $t0, -6528($fp)
	li $t0, 4
	lw $t1, -6528($fp)
	mul $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	lw $t1, -6524($fp)
	add $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	lw $t1, 0($t0)
	sw $t1, -6540($fp)
	lw $t1, -6540($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label465
label465:
	li $t0, 1
	sw $t0, -6520($fp)
label466:
	li $t0, 22168
	sw $t0, -6544($fp)
	li $t0, 63873
	sw $t0, -6548($fp)
	lw $t0, -6544($fp)
	lw $t1, -6548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6552($fp)
	li $t0, 53690
	sw $t0, -6556($fp)
	lw $t0, -6552($fp)
	lw $t1, -6556($fp)
	add $t0, $t0, $t1
	sw $t0, -6560($fp)
	addi $sp, $sp, -4
	lw $t0, -6496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6560($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6564($fp)
	addi $sp, $sp, 20
	lw $t0, -6492($fp)
	lw $t1, -6564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6568($fp)
	li $t0, 0
	sw $t0, -6572($fp)
	lw $t0, -2132($fp)
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -6580($fp)
	li $t0, 0
	sw $t0, -6584($fp)
	lw $t0, 8($fp)
	sw $t0, -6588($fp)
	li $t0, 0
	lw $t1, -6588($fp)
	sub $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t1, -6592($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label471:
	lw $t0, -2120($fp)
	sw $t0, -6596($fp)
	lw $t1, -6596($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -6584($fp)
label470:
	lw $t0, -1772($fp)
	sw $t0, -6600($fp)
	lw $t0, -2060($fp)
	sw $t0, -6604($fp)
	addi $t0, $fp, -120
	sw $t0, -6608($fp)
	lw $t0, -524($fp)
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
	li $t0, 52539
	sw $t0, -6628($fp)
	lw $t0, -6624($fp)
	lw $t1, -6628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6632($fp)
	addi $t0, $fp, -188
	sw $t0, -6636($fp)
	lw $t0, -2084($fp)
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
	addi $sp, $sp, -4
	lw $t0, -6584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6652($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6656($fp)
	addi $sp, $sp, 24
	li $t0, 27943
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -6664($fp)
	li $t0, 47562
	sw $t0, -6668($fp)
	li $t0, 44328
	sw $t0, -6672($fp)
	addi $sp, $sp, -4
	lw $t0, -6580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6672($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6676($fp)
	addi $sp, $sp, 24
	lw $t1, -6676($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -6572($fp)
label468:
	lw $t1, -6568($fp)
	lw $t2, -6572($fp)
	beq $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -6448($fp)
label456:
	j label443
label445:
	j label417
label416:
label472:
	lw $t0, -1796($fp)
	sw $t0, -6680($fp)
	lw $t1, -6680($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label474
label475:
	li $t0, 0
	sw $t0, -6684($fp)
	li $t0, 37539
	sw $t0, -6688($fp)
	lw $t1, -6688($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label478:
	li $t0, 42648
	sw $t0, -6692($fp)
	lw $t1, -6692($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -6684($fp)
label477:
	li $t0, 0
	sw $t0, -6696($fp)
	lw $t0, -1736($fp)
	sw $t0, -6700($fp)
	li $t0, 59355
	sw $t0, -6704($fp)
	lw $t0, -6700($fp)
	lw $t1, -6704($fp)
	mul $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t1, -6708($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label481
label481:
	li $t0, 60000
	sw $t0, -6712($fp)
	lw $t1, -6712($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -6696($fp)
label480:
	li $t0, 0
	sw $t0, -6716($fp)
	li $t0, 14805
	sw $t0, -6720($fp)
	li $t0, 31347
	sw $t0, -6724($fp)
	lw $t1, -6720($fp)
	lw $t2, -6724($fp)
	beq $t1, $t2, label484
	j label483
label484:
	li $t0, 391
	sw $t0, -6728($fp)
	lw $t1, -6728($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -6716($fp)
label483:
	lw $t0, -2168($fp)
	sw $t0, -6732($fp)
	lw $t0, -3380($fp)
	sw $t0, -6736($fp)
	lw $t0, -6732($fp)
	lw $t1, -6736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6740($fp)
	lw $t0, -3080($fp)
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -6748($fp)
	lw $t0, -3404($fp)
	sw $t0, -6752($fp)
	addi $sp, $sp, -4
	lw $t0, -6716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6752($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6756($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6756($fp)
	sub $t0, $t0, $t1
	sw $t0, -6760($fp)
	li $t0, 15309
	sw $t0, -6764($fp)
	li $t0, 0
	sw $t0, -6768($fp)
	lw $t0, -3080($fp)
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -6776($fp)
	li $t0, 0
	sw $t0, -6780($fp)
	lw $t0, -4148($fp)
	sw $t0, -6784($fp)
	lw $t0, -524($fp)
	sw $t0, -6788($fp)
	lw $t0, -6784($fp)
	lw $t1, -6788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6792($fp)
	lw $t1, -6792($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label489:
	li $t0, 64566
	sw $t0, -6796($fp)
	lw $t1, -6796($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -6780($fp)
label488:
	lw $t0, -1784($fp)
	sw $t0, -6800($fp)
	li $t0, 59733
	sw $t0, -6804($fp)
	lw $t0, -6800($fp)
	lw $t1, -6804($fp)
	mul $t0, $t0, $t1
	sw $t0, -6808($fp)
	li $t0, 53101
	sw $t0, -6812($fp)
	lw $t0, -6808($fp)
	lw $t1, -6812($fp)
	sub $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -2000($fp)
	sw $t0, -6820($fp)
	addi $sp, $sp, -4
	lw $t0, -6776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6820($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6824($fp)
	addi $sp, $sp, 20
	lw $t0, -524($fp)
	sw $t0, -6828($fp)
	lw $t1, -6824($fp)
	lw $t2, -6828($fp)
	bne $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -6768($fp)
label486:
	addi $sp, $sp, -4
	lw $t0, -6684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6768($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6832($fp)
	addi $sp, $sp, 24
	lw $t1, -6832($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 0
	sw $t0, -6836($fp)
	lw $t0, -1088($fp)
	sw $t0, -6840($fp)
	li $t0, 17641
	sw $t0, -6844($fp)
	lw $t0, -6840($fp)
	lw $t1, -6844($fp)
	mul $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t1, -6848($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label492:
	lw $t0, -2144($fp)
	sw $t0, -6852($fp)
	lw $t1, -6852($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -6836($fp)
label491:
	li $t0, 0
	sw $t0, -6856($fp)
	li $t0, 0
	sw $t0, -6860($fp)
	lw $t0, -3440($fp)
	sw $t0, -6864($fp)
	lw $t0, -3428($fp)
	sw $t0, -6868($fp)
	lw $t1, -6864($fp)
	lw $t2, -6868($fp)
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -6860($fp)
label496:
	li $t0, 55475
	sw $t0, -6872($fp)
	lw $t1, -6860($fp)
	lw $t2, -6872($fp)
	bne $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -6856($fp)
label494:
	li $t0, 22801
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -6880($fp)
	li $t0, 7383
	sw $t0, -6884($fp)
	lw $t0, -2168($fp)
	sw $t0, -6888($fp)
	lw $t0, -6884($fp)
	lw $t1, -6888($fp)
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -3536($fp)
	sw $t0, -6896($fp)
	lw $t0, -6892($fp)
	lw $t1, -6896($fp)
	mul $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -1748($fp)
	sw $t0, -6904($fp)
	li $t0, 0
	sw $t0, -6908($fp)
	li $t0, 60410
	sw $t0, -6912($fp)
	li $t0, 0
	lw $t1, -6912($fp)
	sub $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t1, -6916($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label498
label499:
	li $t0, 6972
	sw $t0, -6920($fp)
	lw $t1, -6920($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -6908($fp)
label498:
	addi $sp, $sp, -4
	lw $t0, -6880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6908($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6924($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -6928($fp)
	lw $t0, -1784($fp)
	sw $t0, -6932($fp)
	lw $t1, -6932($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label501
label503:
	li $t0, 41622
	sw $t0, -6936($fp)
	lw $t1, -6936($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label501
label502:
	li $t0, 55932
	sw $t0, -6940($fp)
	lw $t1, -6940($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -6928($fp)
label501:
	li $t0, 0
	sw $t0, -6944($fp)
	li $t0, 19177
	sw $t0, -6948($fp)
	lw $t0, -524($fp)
	sw $t0, -6952($fp)
	lw $t1, -6948($fp)
	lw $t2, -6952($fp)
	beq $t1, $t2, label506
	j label505
label506:
	li $t0, 58312
	sw $t0, -6956($fp)
	lw $t1, -6956($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -6944($fp)
label505:
	addi $sp, $sp, -4
	lw $t0, -6836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6960($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -6960($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label472
label474:
label417:
label398:
label235:
	j label230
label229:
	addi $t0, $fp, -120
	sw $t0, -6964($fp)
	addi $t0, $fp, -96
	sw $t0, -6968($fp)
	li $t0, 0
	sw $t0, -6972($fp)
	li $t0, 37293
	sw $t0, -6976($fp)
	lw $t1, -6976($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label509
label509:
	li $t0, 12107
	sw $t0, -6980($fp)
	lw $t1, -6980($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -6972($fp)
label508:
	li $t0, 4
	lw $t1, -6972($fp)
	mul $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	lw $t1, -6968($fp)
	add $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	lw $t1, 0($t0)
	sw $t1, -6992($fp)
	li $t0, 4
	lw $t1, -6992($fp)
	mul $t0, $t0, $t1
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	lw $t1, -6964($fp)
	add $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	lw $t1, 0($t0)
	sw $t1, -7004($fp)
	lw $ra, -4($fp)
	lw $v0, -7004($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label230:
	li $t0, 0
	sw $t0, -7008($fp)
	li $t0, 15978
	sw $t0, -7012($fp)
	lw $t1, -7012($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label510
label510:
	li $t0, 1
	sw $t0, -7008($fp)
label511:
	li $t0, 25447
	sw $t0, -7016($fp)
	lw $t0, -776($fp)
	sw $t0, -7020($fp)
	lw $t0, -7016($fp)
	lw $t1, -7020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7024($fp)
	addi $t0, $fp, -188
	sw $t0, -7028($fp)
	addi $t0, $fp, -312
	sw $t0, -7032($fp)
	li $t0, 5
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
	li $t0, 4
	lw $t1, -7048($fp)
	mul $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	lw $t1, -7028($fp)
	add $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	lw $t1, 0($t0)
	sw $t1, -7060($fp)
	lw $t1, -7024($fp)
	lw $t2, -7060($fp)
	bgt $t1, $t2, label512
	j label513
label512:
label515:
	li $t0, 0
	sw $t0, -7064($fp)
	lw $t0, -1940($fp)
	sw $t0, -7068($fp)
	li $t0, 63032
	sw $t0, -7072($fp)
	lw $t0, -7068($fp)
	lw $t1, -7072($fp)
	mul $t0, $t0, $t1
	sw $t0, -7076($fp)
	lw $t0, -3380($fp)
	sw $t0, -7080($fp)
	lw $t1, -7076($fp)
	lw $t2, -7080($fp)
	bge $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -7064($fp)
label519:
	addi $t0, $fp, -408
	sw $t0, -7084($fp)
	li $t0, 4
	sw $t0, -7088($fp)
	li $t0, 4
	lw $t1, -7088($fp)
	mul $t0, $t0, $t1
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	lw $t1, -7084($fp)
	add $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	lw $t1, 0($t0)
	sw $t1, -7100($fp)
	li $t0, 56779
	sw $t0, -7104($fp)
	lw $t0, -7100($fp)
	lw $t1, -7104($fp)
	mul $t0, $t0, $t1
	sw $t0, -7108($fp)
	li $t0, 0
	sw $t0, -7112($fp)
	lw $t0, -3440($fp)
	sw $t0, -7116($fp)
	lw $t0, -3080($fp)
	sw $t0, -7120($fp)
	lw $t1, -7116($fp)
	lw $t2, -7120($fp)
	ble $t1, $t2, label520
	j label522
label522:
	li $t0, 4239
	sw $t0, -7124($fp)
	lw $t1, -7124($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -7112($fp)
label521:
	lw $t0, -2120($fp)
	sw $t0, -7128($fp)
	lw $t0, -1076($fp)
	sw $t0, -7132($fp)
	addi $sp, $sp, -4
	lw $t0, -7064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7136($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -56
	sw $t0, -7140($fp)
	li $t0, 1
	sw $t0, -7144($fp)
	li $t0, 4
	lw $t1, -7144($fp)
	mul $t0, $t0, $t1
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	lw $t1, -7140($fp)
	add $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	lw $t1, 0($t0)
	sw $t1, -7156($fp)
	lw $t0, -7136($fp)
	lw $t1, -7156($fp)
	mul $t0, $t0, $t1
	sw $t0, -7160($fp)
	li $t0, 0
	sw $t0, -7164($fp)
	lw $t0, -3536($fp)
	sw $t0, -7168($fp)
	lw $t0, -2660($fp)
	sw $t0, -7172($fp)
	lw $t1, -7168($fp)
	lw $t2, -7172($fp)
	bge $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -7164($fp)
label524:
	li $t0, 0
	sw $t0, -7176($fp)
	lw $t0, -3524($fp)
	sw $t0, -7180($fp)
	li $t0, 33496
	sw $t0, -7184($fp)
	lw $t0, -7180($fp)
	lw $t1, -7184($fp)
	sub $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -3356($fp)
	sw $t0, -7192($fp)
	lw $t1, -7188($fp)
	lw $t2, -7192($fp)
	ble $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -7176($fp)
label526:
	li $t0, 0
	sw $t0, -7196($fp)
	li $t0, 0
	sw $t0, -7200($fp)
	lw $t0, -2096($fp)
	sw $t0, -7204($fp)
	lw $t1, -7204($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label529
label529:
	li $t0, 1
	sw $t0, -7200($fp)
label530:
	li $t0, 43512
	sw $t0, -7208($fp)
	lw $t1, -7200($fp)
	lw $t2, -7208($fp)
	bgt $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -7196($fp)
label528:
	li $t0, 0
	sw $t0, -7212($fp)
	lw $t0, 12($fp)
	sw $t0, -7216($fp)
	lw $t1, -7216($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label531
label531:
	li $t0, 1
	sw $t0, -7212($fp)
label532:
	addi $t0, $fp, -56
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
	addi $sp, $sp, -4
	lw $t0, -7164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7236($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7240($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -7244($fp)
	li $t0, 0
	sw $t0, -7248($fp)
	lw $t0, -2864($fp)
	sw $t0, -7252($fp)
	li $t0, 50736
	sw $t0, -7256($fp)
	lw $t0, -7252($fp)
	lw $t1, -7256($fp)
	sub $t0, $t0, $t1
	sw $t0, -7260($fp)
	lw $t0, -3416($fp)
	sw $t0, -7264($fp)
	lw $t1, -7260($fp)
	lw $t2, -7264($fp)
	ble $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -7248($fp)
label536:
	lw $t0, -3080($fp)
	sw $t0, -7268($fp)
	li $t0, 0
	lw $t1, -7268($fp)
	sub $t0, $t0, $t1
	sw $t0, -7272($fp)
	li $t0, 0
	lw $t1, -7272($fp)
	sub $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t0, -2072($fp)
	sw $t0, -7280($fp)
	li $t0, 16084
	sw $t0, -7284($fp)
	lw $t0, -7280($fp)
	lw $t1, -7284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7288($fp)
	lw $t0, -2060($fp)
	sw $t0, -7292($fp)
	li $t0, 14762
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -7300($fp)
	lw $t0, -3368($fp)
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	sw $t0, -7308($fp)
	addi $sp, $sp, -4
	lw $t0, -7276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7312($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -7316($fp)
	lw $t0, -1820($fp)
	sw $t0, -7320($fp)
	lw $t1, -7320($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label539
label539:
	lw $t0, -3452($fp)
	sw $t0, -7324($fp)
	lw $t1, -7324($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
	li $t0, 1
	sw $t0, -7316($fp)
label538:
	lw $t0, -3548($fp)
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	sw $t0, -7332($fp)
	li $t0, 0
	sw $t0, -7336($fp)
	li $t0, 21620
	sw $t0, -7340($fp)
	li $t0, 0
	lw $t1, -7340($fp)
	sub $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t1, -7344($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label542:
	li $t0, 13196
	sw $t0, -7348($fp)
	lw $t1, -7348($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -7336($fp)
label541:
	addi $sp, $sp, -4
	lw $t0, -7248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7352($fp)
	addi $sp, $sp, 24
	lw $t0, -3980($fp)
	sw $t0, -7356($fp)
	lw $t1, -7352($fp)
	lw $t2, -7356($fp)
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -7244($fp)
label534:
	li $t0, 0
	sw $t0, -7360($fp)
	li $t0, 12805
	sw $t0, -7364($fp)
	lw $t0, -3080($fp)
	sw $t0, -7368($fp)
	lw $t0, -7364($fp)
	lw $t1, -7368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7372($fp)
	li $t0, 20942
	sw $t0, -7376($fp)
	lw $t1, -7372($fp)
	lw $t2, -7376($fp)
	beq $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -7360($fp)
label544:
	lw $t0, -2840($fp)
	sw $t0, -7380($fp)
	lw $t0, -2084($fp)
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	sw $t0, -7388($fp)
	addi $sp, $sp, -4
	lw $t0, -7240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7392($fp)
	addi $sp, $sp, 24
	lw $t0, -7160($fp)
	lw $t1, -7392($fp)
	mul $t0, $t0, $t1
	sw $t0, -7396($fp)
	lw $t1, -7396($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 0
	sw $t0, -7400($fp)
	lw $t0, -3380($fp)
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -7408($fp)
	lw $t0, -800($fp)
	sw $t0, -7412($fp)
	li $t0, 0
	lw $t1, -7412($fp)
	sub $t0, $t0, $t1
	sw $t0, -7416($fp)
	li $t0, 0
	lw $t1, -7416($fp)
	sub $t0, $t0, $t1
	sw $t0, -7420($fp)
	li $t0, 0
	sw $t0, -7424($fp)
	lw $t0, -3428($fp)
	sw $t0, -7428($fp)
	lw $t1, -7428($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label549
label551:
	lw $t0, -3440($fp)
	sw $t0, -7432($fp)
	lw $t1, -7432($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label550:
	li $t0, 25658
	sw $t0, -7436($fp)
	lw $t1, -7436($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -7424($fp)
label549:
	lw $t0, -3416($fp)
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -7444($fp)
	li $t0, 0
	sw $t0, -7448($fp)
	lw $t0, -1988($fp)
	sw $t0, -7452($fp)
	lw $t1, -7452($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label552:
	li $t0, 1
	sw $t0, -7448($fp)
label553:
	addi $sp, $sp, -4
	lw $t0, -7408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7448($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7456($fp)
	addi $sp, $sp, 24
	lw $t1, -7456($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label546
label547:
	li $t0, 38386
	sw $t0, -7460($fp)
	lw $t1, -7460($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -7400($fp)
label546:
	j label515
label517:
	j label514
label513:
	li $t0, 40469
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	sw $t0, -7520($fp)
	li $t0, 33041
	sw $t0, -7524($fp)
	addi $t0, $fp, -7492
	sw $t0, -7528($fp)
	li $t0, 0
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7536($fp)
	lw $t0, -7528($fp)
	lw $t1, -7536($fp)
	add $t0, $t0, $t1
	sw $t0, -7540($fp)
	lw $t0, -7524($fp)
	lw $t1, -7540($fp)
	sw $t0, 0($t1)
	lw $t0, -7540($fp)
	lw $t1, 0($t0)
	sw $t1, -7544($fp)
	li $t0, 61187
	sw $t0, -7548($fp)
	addi $t0, $fp, -7492
	sw $t0, -7552($fp)
	li $t0, 1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -7552($fp)
	lw $t1, -7560($fp)
	add $t0, $t0, $t1
	sw $t0, -7564($fp)
	lw $t0, -7548($fp)
	lw $t1, -7564($fp)
	sw $t0, 0($t1)
	lw $t0, -7564($fp)
	lw $t1, 0($t0)
	sw $t1, -7568($fp)
	li $t0, 30408
	sw $t0, -7572($fp)
	addi $t0, $fp, -7492
	sw $t0, -7576($fp)
	li $t0, 2
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7576($fp)
	lw $t1, -7584($fp)
	add $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7572($fp)
	lw $t1, -7588($fp)
	sw $t0, 0($t1)
	lw $t0, -7588($fp)
	lw $t1, 0($t0)
	sw $t1, -7592($fp)
	li $t0, 50683
	sw $t0, -7596($fp)
	addi $t0, $fp, -7492
	sw $t0, -7600($fp)
	li $t0, 3
	sw $t0, -7604($fp)
	lw $t0, -7604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7600($fp)
	lw $t1, -7608($fp)
	add $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7596($fp)
	lw $t1, -7612($fp)
	sw $t0, 0($t1)
	lw $t0, -7612($fp)
	lw $t1, 0($t0)
	sw $t1, -7616($fp)
	li $t0, 32944
	sw $t0, -7620($fp)
	addi $t0, $fp, -7492
	sw $t0, -7624($fp)
	li $t0, 4
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7624($fp)
	lw $t1, -7632($fp)
	add $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t0, -7620($fp)
	lw $t1, -7636($fp)
	sw $t0, 0($t1)
	lw $t0, -7636($fp)
	lw $t1, 0($t0)
	sw $t1, -7640($fp)
	li $t0, 42515
	sw $t0, -7644($fp)
	addi $t0, $fp, -7492
	sw $t0, -7648($fp)
	li $t0, 5
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7648($fp)
	lw $t1, -7656($fp)
	add $t0, $t0, $t1
	sw $t0, -7660($fp)
	lw $t0, -7644($fp)
	lw $t1, -7660($fp)
	sw $t0, 0($t1)
	lw $t0, -7660($fp)
	lw $t1, 0($t0)
	sw $t1, -7664($fp)
	li $t0, 1125
	sw $t0, -7668($fp)
	addi $t0, $fp, -7492
	sw $t0, -7672($fp)
	li $t0, 6
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t0, -7672($fp)
	lw $t1, -7680($fp)
	add $t0, $t0, $t1
	sw $t0, -7684($fp)
	lw $t0, -7668($fp)
	lw $t1, -7684($fp)
	sw $t0, 0($t1)
	lw $t0, -7684($fp)
	lw $t1, 0($t0)
	sw $t1, -7688($fp)
	li $t0, 58392
	sw $t0, -7692($fp)
	addi $t0, $fp, -7492
	sw $t0, -7696($fp)
	li $t0, 7
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7704($fp)
	lw $t0, -7696($fp)
	lw $t1, -7704($fp)
	add $t0, $t0, $t1
	sw $t0, -7708($fp)
	lw $t0, -7692($fp)
	lw $t1, -7708($fp)
	sw $t0, 0($t1)
	lw $t0, -7708($fp)
	lw $t1, 0($t0)
	sw $t1, -7712($fp)
	li $t0, 63788
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	sw $t0, -7724($fp)
	li $t0, 57290
	sw $t0, -7728($fp)
	addi $t0, $fp, -7508
	sw $t0, -7732($fp)
	li $t0, 0
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7732($fp)
	lw $t1, -7740($fp)
	add $t0, $t0, $t1
	sw $t0, -7744($fp)
	lw $t0, -7728($fp)
	lw $t1, -7744($fp)
	sw $t0, 0($t1)
	lw $t0, -7744($fp)
	lw $t1, 0($t0)
	sw $t1, -7748($fp)
	li $t0, 62631
	sw $t0, -7752($fp)
	addi $t0, $fp, -7508
	sw $t0, -7756($fp)
	li $t0, 1
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7756($fp)
	lw $t1, -7764($fp)
	add $t0, $t0, $t1
	sw $t0, -7768($fp)
	lw $t0, -7752($fp)
	lw $t1, -7768($fp)
	sw $t0, 0($t1)
	lw $t0, -7768($fp)
	lw $t1, 0($t0)
	sw $t1, -7772($fp)
	li $t0, 1550
	sw $t0, -7776($fp)
	addi $t0, $fp, -7508
	sw $t0, -7780($fp)
	li $t0, 2
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7788($fp)
	lw $t0, -7780($fp)
	lw $t1, -7788($fp)
	add $t0, $t0, $t1
	sw $t0, -7792($fp)
	lw $t0, -7776($fp)
	lw $t1, -7792($fp)
	sw $t0, 0($t1)
	lw $t0, -7792($fp)
	lw $t1, 0($t0)
	sw $t1, -7796($fp)
	li $t0, 10327
	sw $t0, -7800($fp)
	addi $t0, $fp, -7508
	sw $t0, -7804($fp)
	li $t0, 3
	sw $t0, -7808($fp)
	lw $t0, -7808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7812($fp)
	lw $t0, -7804($fp)
	lw $t1, -7812($fp)
	add $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7800($fp)
	lw $t1, -7816($fp)
	sw $t0, 0($t1)
	lw $t0, -7816($fp)
	lw $t1, 0($t0)
	sw $t1, -7820($fp)
	li $t0, 0
	sw $t0, -7824($fp)
	li $t0, 16464
	sw $t0, -7828($fp)
	li $t0, 0
	lw $t1, -7828($fp)
	sub $t0, $t0, $t1
	sw $t0, -7832($fp)
	lw $t0, -3428($fp)
	sw $t0, -7836($fp)
	lw $t0, -7832($fp)
	lw $t1, -7836($fp)
	sub $t0, $t0, $t1
	sw $t0, -7840($fp)
	addi $t0, $fp, -372
	sw $t0, -7844($fp)
	lw $t0, -7516($fp)
	sw $t0, -7848($fp)
	li $t0, 4
	lw $t1, -7848($fp)
	mul $t0, $t0, $t1
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	lw $t1, -7844($fp)
	add $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7856($fp)
	lw $t1, 0($t0)
	sw $t1, -7860($fp)
	li $t0, 64582
	sw $t0, -7864($fp)
	lw $t0, -7860($fp)
	lw $t1, -7864($fp)
	sub $t0, $t0, $t1
	sw $t0, -7868($fp)
	lw $t0, -3116($fp)
	sw $t0, -7872($fp)
	li $t0, 0
	sw $t0, -7876($fp)
	lw $t0, 8($fp)
	sw $t0, -7880($fp)
	lw $t0, -3584($fp)
	sw $t0, -7884($fp)
	lw $t0, -7880($fp)
	lw $t1, -7884($fp)
	sub $t0, $t0, $t1
	sw $t0, -7888($fp)
	li $t0, 53874
	sw $t0, -7892($fp)
	lw $t1, -7888($fp)
	lw $t2, -7892($fp)
	ble $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -7876($fp)
label557:
	addi $sp, $sp, -4
	lw $t0, -7840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7876($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7896($fp)
	addi $sp, $sp, 20
	lw $t1, -7896($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label554
label554:
	li $t0, 1
	sw $t0, -7824($fp)
label555:
	li $t0, 0
	sw $t0, -7900($fp)
	addi $t0, $fp, -7492
	sw $t0, -7904($fp)
	lw $t0, -3416($fp)
	sw $t0, -7908($fp)
	li $t0, 4
	lw $t1, -7908($fp)
	mul $t0, $t0, $t1
	sw $t0, -7912($fp)
	lw $t0, -7912($fp)
	lw $t1, -7904($fp)
	add $t0, $t0, $t1
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	lw $t1, 0($t0)
	sw $t1, -7920($fp)
	lw $t1, -7920($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label558
label558:
	li $t0, 1
	sw $t0, -7900($fp)
label559:
	lw $t0, -7824($fp)
	lw $t1, -7900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7924($fp)
	li $t0, 0
	lw $t1, -7924($fp)
	sub $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t0, -7516($fp)
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -7936($fp)
	li $t0, 0
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
	lw $t0, -7952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -7956($fp)
	li $t0, 1
	sw $t0, -7960($fp)
	li $t0, 4
	lw $t1, -7960($fp)
	mul $t0, $t0, $t1
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	lw $t1, -7956($fp)
	add $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	lw $t1, 0($t0)
	sw $t1, -7972($fp)
	lw $t0, -7972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -7976($fp)
	li $t0, 2
	sw $t0, -7980($fp)
	li $t0, 4
	lw $t1, -7980($fp)
	mul $t0, $t0, $t1
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	lw $t1, -7976($fp)
	add $t0, $t0, $t1
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	lw $t1, 0($t0)
	sw $t1, -7992($fp)
	lw $t0, -7992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -7996($fp)
	li $t0, 3
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
	lw $t0, -8012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -8016($fp)
	li $t0, 4
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
	lw $t0, -8032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -8036($fp)
	li $t0, 5
	sw $t0, -8040($fp)
	li $t0, 4
	lw $t1, -8040($fp)
	mul $t0, $t0, $t1
	sw $t0, -8044($fp)
	lw $t0, -8044($fp)
	lw $t1, -8036($fp)
	add $t0, $t0, $t1
	sw $t0, -8048($fp)
	lw $t0, -8048($fp)
	lw $t1, 0($t0)
	sw $t1, -8052($fp)
	lw $t0, -8052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -8056($fp)
	li $t0, 6
	sw $t0, -8060($fp)
	li $t0, 4
	lw $t1, -8060($fp)
	mul $t0, $t0, $t1
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	lw $t1, -8056($fp)
	add $t0, $t0, $t1
	sw $t0, -8068($fp)
	lw $t0, -8068($fp)
	lw $t1, 0($t0)
	sw $t1, -8072($fp)
	lw $t0, -8072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -8076($fp)
	li $t0, 7
	sw $t0, -8080($fp)
	li $t0, 4
	lw $t1, -8080($fp)
	mul $t0, $t0, $t1
	sw $t0, -8084($fp)
	lw $t0, -8084($fp)
	lw $t1, -8076($fp)
	add $t0, $t0, $t1
	sw $t0, -8088($fp)
	lw $t0, -8088($fp)
	lw $t1, 0($t0)
	sw $t1, -8092($fp)
	lw $t0, -8092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7720($fp)
	sw $t0, -8096($fp)
	lw $t0, -8096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7508
	sw $t0, -8100($fp)
	li $t0, 0
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
	addi $t0, $fp, -7508
	sw $t0, -8120($fp)
	li $t0, 1
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
	lw $t0, -8136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7508
	sw $t0, -8140($fp)
	li $t0, 2
	sw $t0, -8144($fp)
	li $t0, 4
	lw $t1, -8144($fp)
	mul $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	lw $t1, -8140($fp)
	add $t0, $t0, $t1
	sw $t0, -8152($fp)
	lw $t0, -8152($fp)
	lw $t1, 0($t0)
	sw $t1, -8156($fp)
	lw $t0, -8156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7508
	sw $t0, -8160($fp)
	li $t0, 3
	sw $t0, -8164($fp)
	li $t0, 4
	lw $t1, -8164($fp)
	mul $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	lw $t1, -8160($fp)
	add $t0, $t0, $t1
	sw $t0, -8172($fp)
	lw $t0, -8172($fp)
	lw $t1, 0($t0)
	sw $t1, -8176($fp)
	lw $t0, -8176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8180($fp)
	lw $t0, -3416($fp)
	sw $t0, -8184($fp)
	lw $t1, -8184($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label560:
	li $t0, 1
	sw $t0, -8180($fp)
label561:
	lw $t0, -1940($fp)
	sw $t0, -8188($fp)
	lw $t0, -8180($fp)
	lw $t1, -8188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8192($fp)
	lw $ra, -4($fp)
	lw $v0, -8192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -7516($fp)
	sw $t0, -8196($fp)
	lw $t0, -8196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -8200($fp)
	li $t0, 0
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
	addi $t0, $fp, -7492
	sw $t0, -8220($fp)
	li $t0, 1
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
	addi $t0, $fp, -7492
	sw $t0, -8240($fp)
	li $t0, 2
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
	addi $t0, $fp, -7492
	sw $t0, -8260($fp)
	li $t0, 3
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
	lw $t0, -8276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -8280($fp)
	li $t0, 4
	sw $t0, -8284($fp)
	li $t0, 4
	lw $t1, -8284($fp)
	mul $t0, $t0, $t1
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	lw $t1, -8280($fp)
	add $t0, $t0, $t1
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	lw $t1, 0($t0)
	sw $t1, -8296($fp)
	lw $t0, -8296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -8300($fp)
	li $t0, 5
	sw $t0, -8304($fp)
	li $t0, 4
	lw $t1, -8304($fp)
	mul $t0, $t0, $t1
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	lw $t1, -8300($fp)
	add $t0, $t0, $t1
	sw $t0, -8312($fp)
	lw $t0, -8312($fp)
	lw $t1, 0($t0)
	sw $t1, -8316($fp)
	lw $t0, -8316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -8320($fp)
	li $t0, 6
	sw $t0, -8324($fp)
	li $t0, 4
	lw $t1, -8324($fp)
	mul $t0, $t0, $t1
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	lw $t1, -8320($fp)
	add $t0, $t0, $t1
	sw $t0, -8332($fp)
	lw $t0, -8332($fp)
	lw $t1, 0($t0)
	sw $t1, -8336($fp)
	lw $t0, -8336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7492
	sw $t0, -8340($fp)
	li $t0, 7
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
	lw $t0, -8356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7720($fp)
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7508
	sw $t0, -8364($fp)
	li $t0, 0
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
	addi $t0, $fp, -7508
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
	lw $t0, -8400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -7508
	sw $t0, -8404($fp)
	li $t0, 2
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
	addi $t0, $fp, -7508
	sw $t0, -8424($fp)
	li $t0, 3
	sw $t0, -8428($fp)
	li $t0, 4
	lw $t1, -8428($fp)
	mul $t0, $t0, $t1
	sw $t0, -8432($fp)
	lw $t0, -8432($fp)
	lw $t1, -8424($fp)
	add $t0, $t0, $t1
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	lw $t1, 0($t0)
	sw $t1, -8440($fp)
	lw $t0, -8440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 44147
	sw $t0, -8444($fp)
	lw $ra, -4($fp)
	lw $v0, -8444($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 11851
	sw $t0, -8448($fp)
	li $t0, 0
	sw $t0, -8452($fp)
	li $t0, 22769
	sw $t0, -8456($fp)
	lw $t1, -8456($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -8452($fp)
label563:
	li $t0, 45157
	sw $t0, -8460($fp)
	lw $t0, -8452($fp)
	lw $t1, -8460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8464($fp)
	lw $t0, -4136($fp)
	sw $t0, -8468($fp)
	li $t0, 0
	sw $t0, -8472($fp)
	li $t0, 58112
	sw $t0, -8476($fp)
	li $t0, 0
	lw $t1, -8476($fp)
	sub $t0, $t0, $t1
	sw $t0, -8480($fp)
	lw $t1, -8480($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label566
label566:
	lw $t0, -1088($fp)
	sw $t0, -8484($fp)
	lw $t1, -8484($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -8472($fp)
label565:
	li $t0, 0
	sw $t0, -8488($fp)
	li $t0, 0
	sw $t0, -8492($fp)
	lw $t0, -1076($fp)
	sw $t0, -8496($fp)
	lw $t1, -8496($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label569
label569:
	li $t0, 1
	sw $t0, -8492($fp)
label570:
	li $t0, 48061
	sw $t0, -8500($fp)
	lw $t1, -8492($fp)
	lw $t2, -8500($fp)
	blt $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -8488($fp)
label568:
	lw $t0, -1988($fp)
	sw $t0, -8504($fp)
	li $t0, 0
	lw $t1, -8504($fp)
	sub $t0, $t0, $t1
	sw $t0, -8508($fp)
	li $t0, 0
	lw $t1, -8508($fp)
	sub $t0, $t0, $t1
	sw $t0, -8512($fp)
	addi $t0, $fp, -432
	sw $t0, -8516($fp)
	li $t0, 1
	sw $t0, -8520($fp)
	li $t0, 4
	lw $t1, -8520($fp)
	mul $t0, $t0, $t1
	sw $t0, -8524($fp)
	lw $t0, -8524($fp)
	lw $t1, -8516($fp)
	add $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	lw $t1, 0($t0)
	sw $t1, -8532($fp)
	addi $t0, $fp, -280
	sw $t0, -8536($fp)
	lw $t0, -524($fp)
	sw $t0, -8540($fp)
	li $t0, 4
	lw $t1, -8540($fp)
	mul $t0, $t0, $t1
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	lw $t1, -8536($fp)
	add $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	lw $t1, 0($t0)
	sw $t1, -8552($fp)
	li $t0, 0
	sw $t0, -8556($fp)
	lw $t0, -2864($fp)
	sw $t0, -8560($fp)
	li $t0, 29889
	sw $t0, -8564($fp)
	lw $t0, -8560($fp)
	lw $t1, -8564($fp)
	mul $t0, $t0, $t1
	sw $t0, -8568($fp)
	li $t0, 0
	sw $t0, -8572($fp)
	addi $t0, $fp, -7492
	sw $t0, -8576($fp)
	lw $t0, -2696($fp)
	sw $t0, -8580($fp)
	li $t0, 4
	lw $t1, -8580($fp)
	mul $t0, $t0, $t1
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	lw $t1, -8576($fp)
	add $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	lw $t1, 0($t0)
	sw $t1, -8592($fp)
	li $t0, 17344
	sw $t0, -8596($fp)
	lw $t1, -8592($fp)
	lw $t2, -8596($fp)
	ble $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -8572($fp)
label574:
	li $t0, 0
	sw $t0, -8600($fp)
	li $t0, 52472
	sw $t0, -8604($fp)
	li $t0, 44742
	sw $t0, -8608($fp)
	lw $t0, -8604($fp)
	lw $t1, -8608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8612($fp)
	lw $t1, -8612($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label577
label577:
	li $t0, 22261
	sw $t0, -8616($fp)
	lw $t1, -8616($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -8600($fp)
label576:
	li $t0, 0
	sw $t0, -8620($fp)
	lw $t0, -1880($fp)
	sw $t0, -8624($fp)
	li $t0, 26610
	sw $t0, -8628($fp)
	lw $t1, -8624($fp)
	lw $t2, -8628($fp)
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -8620($fp)
label579:
	li $t0, 0
	sw $t0, -8632($fp)
	li $t0, 11701
	sw $t0, -8636($fp)
	lw $t1, -8636($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -8632($fp)
label581:
	li $t0, 0
	sw $t0, -8640($fp)
	li $t0, 53760
	sw $t0, -8644($fp)
	lw $t1, -8644($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label582
label584:
	li $t0, 12003
	sw $t0, -8648($fp)
	lw $t1, -8648($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -8640($fp)
label583:
	addi $sp, $sp, -4
	lw $t0, -8572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8652($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8656($fp)
	li $t0, 51578
	sw $t0, -8660($fp)
	lw $t1, -8660($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label588
label588:
	lw $t0, -3368($fp)
	sw $t0, -8664($fp)
	lw $t1, -8664($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label587
label587:
	lw $t0, 8($fp)
	sw $t0, -8668($fp)
	lw $t1, -8668($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -8656($fp)
label586:
	li $t0, 44043
	sw $t0, -8672($fp)
	li $t0, 0
	sw $t0, -8676($fp)
	li $t0, 52169
	sw $t0, -8680($fp)
	li $t0, 16316
	sw $t0, -8684($fp)
	lw $t1, -8680($fp)
	lw $t2, -8684($fp)
	beq $t1, $t2, label591
	j label590
label591:
	li $t0, 10248
	sw $t0, -8688($fp)
	lw $t1, -8688($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -8676($fp)
label590:
	lw $t0, -2096($fp)
	sw $t0, -8692($fp)
	lw $t0, -8692($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -8696($fp)
	li $t0, 0
	sw $t0, -8700($fp)
	li $t0, 0
	sw $t0, -8704($fp)
	li $t0, 232
	sw $t0, -8708($fp)
	lw $t1, -8708($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label594
label594:
	li $t0, 1
	sw $t0, -8704($fp)
label595:
	li $t0, 25048
	sw $t0, -8712($fp)
	lw $t1, -8704($fp)
	lw $t2, -8712($fp)
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -8700($fp)
label593:
	li $t0, 0
	sw $t0, -8716($fp)
	lw $t0, -3404($fp)
	sw $t0, -8720($fp)
	lw $t1, -8720($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label596
label598:
	lw $t0, -812($fp)
	sw $t0, -8724($fp)
	lw $t1, -8724($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -8716($fp)
label597:
	li $t0, 0
	sw $t0, -8728($fp)
	li $t0, 0
	sw $t0, -8732($fp)
	li $t0, 37407
	sw $t0, -8736($fp)
	lw $t1, -8736($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label601:
	li $t0, 1
	sw $t0, -8732($fp)
label602:
	lw $t0, -1916($fp)
	sw $t0, -8740($fp)
	lw $t1, -8732($fp)
	lw $t2, -8740($fp)
	ble $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -8728($fp)
label600:
	addi $sp, $sp, -4
	lw $t0, -8676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8728($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8744($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -8568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8744($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8748($fp)
	addi $sp, $sp, 24
	li $t0, 55205
	sw $t0, -8752($fp)
	lw $t1, -8748($fp)
	lw $t2, -8752($fp)
	ble $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -8556($fp)
label572:
	addi $sp, $sp, -4
	lw $t0, -8512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8556($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8756($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -8464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8756($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8760($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -8760($fp)
	sub $t0, $t0, $t1
	sw $t0, -8764($fp)
	lw $t0, -8448($fp)
	lw $t1, -8764($fp)
	mul $t0, $t0, $t1
	sw $t0, -8768($fp)
	li $t0, 0
	sw $t0, -8772($fp)
	addi $t0, $fp, -56
	sw $t0, -8776($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -8792($fp)
	sub $t0, $t0, $t1
	sw $t0, -8796($fp)
	li $t0, 0
	sw $t0, -8800($fp)
	addi $t0, $fp, -7508
	sw $t0, -8804($fp)
	li $t0, 1
	sw $t0, -8808($fp)
	li $t0, 4
	lw $t1, -8808($fp)
	mul $t0, $t0, $t1
	sw $t0, -8812($fp)
	lw $t0, -8812($fp)
	lw $t1, -8804($fp)
	add $t0, $t0, $t1
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	lw $t1, 0($t0)
	sw $t1, -8820($fp)
	lw $t1, -8820($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label606
label606:
	li $t0, 1
	sw $t0, -8800($fp)
label607:
	lw $t1, -8796($fp)
	lw $t2, -8800($fp)
	bgt $t1, $t2, label605
	j label604
label605:
	li $t0, 0
	sw $t0, -8824($fp)
	li $t0, 52108
	sw $t0, -8828($fp)
	li $t0, 14698
	sw $t0, -8832($fp)
	lw $t0, -8828($fp)
	lw $t1, -8832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8836($fp)
	li $t0, 28544
	sw $t0, -8840($fp)
	lw $t1, -8836($fp)
	lw $t2, -8840($fp)
	beq $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -8824($fp)
label609:
	li $t0, 0
	sw $t0, -8844($fp)
	addi $t0, $fp, -312
	sw $t0, -8848($fp)
	lw $t0, -2084($fp)
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
	lw $t1, -8864($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label612
label612:
	li $t0, 40320
	sw $t0, -8868($fp)
	lw $t1, -8868($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -8844($fp)
label611:
	li $t0, 0
	sw $t0, -8872($fp)
	li $t0, 0
	sw $t0, -8876($fp)
	li $t0, 28655
	sw $t0, -8880($fp)
	lw $t1, -8880($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label617
label617:
	lw $t0, -1076($fp)
	sw $t0, -8884($fp)
	lw $t1, -8884($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -8876($fp)
label616:
	li $t0, 0
	sw $t0, -8888($fp)
	lw $t0, -2120($fp)
	sw $t0, -8892($fp)
	lw $t0, -1784($fp)
	sw $t0, -8896($fp)
	lw $t0, -8892($fp)
	lw $t1, -8896($fp)
	sub $t0, $t0, $t1
	sw $t0, -8900($fp)
	lw $t1, -8900($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label619
label620:
	li $t0, 8065
	sw $t0, -8904($fp)
	lw $t1, -8904($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -8888($fp)
label619:
	li $t0, 0
	sw $t0, -8908($fp)
	li $t0, 12339
	sw $t0, -8912($fp)
	lw $t1, -8912($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label621:
	li $t0, 1
	sw $t0, -8908($fp)
label622:
	li $t0, 30072
	sw $t0, -8916($fp)
	lw $t0, -8908($fp)
	lw $t1, -8916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8920($fp)
	li $t0, 0
	sw $t0, -8924($fp)
	li $t0, 21432
	sw $t0, -8928($fp)
	lw $t0, -1712($fp)
	sw $t0, -8932($fp)
	lw $t0, -8928($fp)
	lw $t1, -8932($fp)
	sub $t0, $t0, $t1
	sw $t0, -8936($fp)
	lw $t1, -8936($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label625:
	lw $t0, -3584($fp)
	sw $t0, -8940($fp)
	lw $t1, -8940($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -8924($fp)
label624:
	lw $t0, -2180($fp)
	sw $t0, -8944($fp)
	lw $t0, -8944($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	sw $t0, -8948($fp)
	addi $sp, $sp, -4
	lw $t0, -8876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8952($fp)
	addi $sp, $sp, 24
	lw $t0, -1784($fp)
	sw $t0, -8956($fp)
	lw $t1, -8952($fp)
	lw $t2, -8956($fp)
	bne $t1, $t2, label613
	j label614
label613:
	li $t0, 1
	sw $t0, -8872($fp)
label614:
	li $t0, 0
	sw $t0, -8960($fp)
	lw $t0, -7720($fp)
	sw $t0, -8964($fp)
	lw $t1, -8964($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label627
label628:
	li $t0, 5024
	sw $t0, -8968($fp)
	lw $t1, -8968($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -8960($fp)
label627:
	li $t0, 0
	sw $t0, -8972($fp)
	lw $t0, -1856($fp)
	sw $t0, -8976($fp)
	li $t0, 49561
	sw $t0, -8980($fp)
	lw $t0, -8976($fp)
	lw $t1, -8980($fp)
	mul $t0, $t0, $t1
	sw $t0, -8984($fp)
	li $t0, 12107
	sw $t0, -8988($fp)
	lw $t1, -8984($fp)
	lw $t2, -8988($fp)
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -8972($fp)
label630:
	addi $sp, $sp, -4
	lw $t0, -8824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8972($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8992($fp)
	addi $sp, $sp, 24
	lw $t1, -8992($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -8772($fp)
label604:
label514:
label631:
	li $t0, 0
	sw $t0, -8996($fp)
	li $t0, 0
	sw $t0, -9000($fp)
	li $t0, 35495
	sw $t0, -9004($fp)
	lw $t1, -9004($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label636
label636:
	li $t0, 1
	sw $t0, -9000($fp)
label637:
	li $t0, 0
	sw $t0, -9008($fp)
	li $t0, 5605
	sw $t0, -9012($fp)
	li $t0, 11879
	sw $t0, -9016($fp)
	lw $t0, -9012($fp)
	lw $t1, -9016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9020($fp)
	li $t0, 2856
	sw $t0, -9024($fp)
	lw $t1, -9020($fp)
	lw $t2, -9024($fp)
	bge $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -9008($fp)
label639:
	li $t0, 0
	sw $t0, -9028($fp)
	li $t0, 55154
	sw $t0, -9032($fp)
	li $t0, 1
	sw $t0, -9036($fp)
	lw $t0, -9032($fp)
	lw $t1, -9036($fp)
	mul $t0, $t0, $t1
	sw $t0, -9040($fp)
	lw $t1, -9040($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label641
label642:
	lw $t0, -3572($fp)
	sw $t0, -9044($fp)
	lw $t1, -9044($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -9028($fp)
label641:
	li $t0, 26399
	sw $t0, -9048($fp)
	li $t0, 0
	sw $t0, -9052($fp)
	lw $t0, -2648($fp)
	sw $t0, -9056($fp)
	li $t0, 0
	lw $t1, -9056($fp)
	sub $t0, $t0, $t1
	sw $t0, -9060($fp)
	li $t0, 64111
	sw $t0, -9064($fp)
	lw $t1, -9060($fp)
	lw $t2, -9064($fp)
	bgt $t1, $t2, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -9052($fp)
label644:
	addi $sp, $sp, -4
	lw $t0, -9000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9068($fp)
	addi $sp, $sp, 24
	li $t0, 1549
	sw $t0, -9072($fp)
	li $t0, 62716
	sw $t0, -9076($fp)
	lw $t0, -9072($fp)
	lw $t1, -9076($fp)
	sub $t0, $t0, $t1
	sw $t0, -9080($fp)
	lw $t1, -9068($fp)
	lw $t2, -9080($fp)
	beq $t1, $t2, label634
	j label635
label634:
	li $t0, 1
	sw $t0, -8996($fp)
label635:
	lw $t0, -8996($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -9084($fp)
	lw $t1, -9084($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
label645:
	lw $t0, -2012($fp)
	sw $t0, -9088($fp)
	lw $t1, -9088($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label647
label646:
label648:
	li $t0, 29231
	sw $t0, -9092($fp)
	lw $t0, -9092($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -9096($fp)
	addi $t0, $fp, -152
	sw $t0, -9100($fp)
	li $t0, 7
	sw $t0, -9104($fp)
	li $t0, 4
	lw $t1, -9104($fp)
	mul $t0, $t0, $t1
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	lw $t1, -9100($fp)
	add $t0, $t0, $t1
	sw $t0, -9112($fp)
	lw $t0, -9112($fp)
	lw $t1, 0($t0)
	sw $t1, -9116($fp)
	li $t0, 0
	lw $t1, -9116($fp)
	sub $t0, $t0, $t1
	sw $t0, -9120($fp)
	lw $t0, -3404($fp)
	sw $t0, -9124($fp)
	lw $t0, -2000($fp)
	sw $t0, -9128($fp)
	lw $t0, -9124($fp)
	lw $t1, -9128($fp)
	mul $t0, $t0, $t1
	sw $t0, -9132($fp)
	li $t0, 0
	sw $t0, -9136($fp)
	li $t0, 974
	sw $t0, -9140($fp)
	lw $t1, -9140($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label654
label654:
	li $t0, 49610
	sw $t0, -9144($fp)
	lw $t1, -9144($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label653
label653:
	lw $t0, -1784($fp)
	sw $t0, -9148($fp)
	lw $t1, -9148($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -9136($fp)
label652:
	lw $t0, -2036($fp)
	sw $t0, -9152($fp)
	lw $t0, -9152($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -9156($fp)
	addi $sp, $sp, -4
	lw $t0, -9096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9160($fp)
	addi $sp, $sp, 24
	li $t0, 49419
	sw $t0, -9164($fp)
	li $t0, 0
	sw $t0, -9168($fp)
	lw $t0, -1784($fp)
	sw $t0, -9172($fp)
	lw $t1, -9172($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label656
label657:
	li $t0, 5100
	sw $t0, -9176($fp)
	lw $t1, -9176($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -9168($fp)
label656:
	li $t0, 0
	sw $t0, -9180($fp)
	li $t0, 0
	sw $t0, -9184($fp)
	lw $t0, -1976($fp)
	sw $t0, -9188($fp)
	lw $t0, -3452($fp)
	sw $t0, -9192($fp)
	lw $t1, -9188($fp)
	lw $t2, -9192($fp)
	bge $t1, $t2, label660
	j label661
label660:
	li $t0, 1
	sw $t0, -9184($fp)
label661:
	li $t0, 25853
	sw $t0, -9196($fp)
	lw $t1, -9184($fp)
	lw $t2, -9196($fp)
	beq $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -9180($fp)
label659:
	li $t0, 0
	sw $t0, -9200($fp)
	li $t0, 55509
	sw $t0, -9204($fp)
	li $t0, 0
	lw $t1, -9204($fp)
	sub $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $t1, -9208($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label662
label662:
	li $t0, 1
	sw $t0, -9200($fp)
label663:
	li $t0, 0
	sw $t0, -9212($fp)
	lw $t0, -3452($fp)
	sw $t0, -9216($fp)
	li $t0, 0
	lw $t1, -9216($fp)
	sub $t0, $t0, $t1
	sw $t0, -9220($fp)
	lw $t0, -1964($fp)
	sw $t0, -9224($fp)
	lw $t1, -9220($fp)
	lw $t2, -9224($fp)
	beq $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -9212($fp)
label665:
	li $t0, 0
	sw $t0, -9228($fp)
	li $t0, 56934
	sw $t0, -9232($fp)
	li $t0, 1
	sw $t0, -9236($fp)
	lw $t0, -9232($fp)
	lw $t1, -9236($fp)
	mul $t0, $t0, $t1
	sw $t0, -9240($fp)
	lw $t1, -9240($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label667
label668:
	li $t0, 15482
	sw $t0, -9244($fp)
	lw $t1, -9244($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label667
label666:
	li $t0, 1
	sw $t0, -9228($fp)
label667:
	li $t0, 4826
	sw $t0, -9248($fp)
	li $t0, 50292
	sw $t0, -9252($fp)
	lw $t0, -9248($fp)
	lw $t1, -9252($fp)
	mul $t0, $t0, $t1
	sw $t0, -9256($fp)
	li $t0, 1
	sw $t0, -9260($fp)
	lw $t0, -9256($fp)
	lw $t1, -9260($fp)
	mul $t0, $t0, $t1
	sw $t0, -9264($fp)
	li $t0, 0
	sw $t0, -9268($fp)
	li $t0, 0
	sw $t0, -9272($fp)
	lw $t0, 16($fp)
	sw $t0, -9276($fp)
	lw $t0, 8($fp)
	sw $t0, -9280($fp)
	lw $t1, -9276($fp)
	lw $t2, -9280($fp)
	bge $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -9272($fp)
label672:
	li $t0, 12153
	sw $t0, -9284($fp)
	lw $t1, -9272($fp)
	lw $t2, -9284($fp)
	ble $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -9268($fp)
label670:
	li $t0, 0
	sw $t0, -9288($fp)
	lw $t0, -3416($fp)
	sw $t0, -9292($fp)
	lw $t1, -9292($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label673:
	li $t0, 1
	sw $t0, -9288($fp)
label674:
	li $t0, 0
	lw $t1, -9288($fp)
	sub $t0, $t0, $t1
	sw $t0, -9296($fp)
	li $t0, 21637
	sw $t0, -9300($fp)
	lw $t0, -1784($fp)
	sw $t0, -9304($fp)
	lw $t0, -9300($fp)
	lw $t1, -9304($fp)
	add $t0, $t0, $t1
	sw $t0, -9308($fp)
	li $t0, 0
	sw $t0, -9312($fp)
	lw $t0, -3080($fp)
	sw $t0, -9316($fp)
	lw $t1, -9316($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label676
label678:
	li $t0, 47616
	sw $t0, -9320($fp)
	lw $t1, -9320($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label676
label677:
	li $t0, 62297
	sw $t0, -9324($fp)
	lw $t1, -9324($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -9312($fp)
label676:
	addi $sp, $sp, -4
	lw $t0, -9264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9328($fp)
	addi $sp, $sp, 24
	lw $t0, -1436($fp)
	sw $t0, -9332($fp)
	lw $t0, -9328($fp)
	lw $t1, -9332($fp)
	sub $t0, $t0, $t1
	sw $t0, -9336($fp)
	addi $t0, $fp, -280
	sw $t0, -9340($fp)
	li $t0, 3
	sw $t0, -9344($fp)
	li $t0, 4
	lw $t1, -9344($fp)
	mul $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t0, -9348($fp)
	lw $t1, -9340($fp)
	add $t0, $t0, $t1
	sw $t0, -9352($fp)
	lw $t0, -9352($fp)
	lw $t1, 0($t0)
	sw $t1, -9356($fp)
	lw $t0, -800($fp)
	sw $t0, -9360($fp)
	lw $t0, -9356($fp)
	lw $t1, -9360($fp)
	sub $t0, $t0, $t1
	sw $t0, -9364($fp)
	li $t0, 0
	sw $t0, -9368($fp)
	lw $t0, -524($fp)
	sw $t0, -9372($fp)
	lw $t0, -2132($fp)
	sw $t0, -9376($fp)
	lw $t1, -9372($fp)
	lw $t2, -9376($fp)
	blt $t1, $t2, label681
	j label680
label681:
	li $t0, 42592
	sw $t0, -9380($fp)
	lw $t1, -9380($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -9368($fp)
label680:
	addi $t0, $fp, -372
	sw $t0, -9384($fp)
	li $t0, 3
	sw $t0, -9388($fp)
	li $t0, 4
	lw $t1, -9388($fp)
	mul $t0, $t0, $t1
	sw $t0, -9392($fp)
	lw $t0, -9392($fp)
	lw $t1, -9384($fp)
	add $t0, $t0, $t1
	sw $t0, -9396($fp)
	lw $t0, -9396($fp)
	lw $t1, 0($t0)
	sw $t1, -9400($fp)
	addi $sp, $sp, -4
	lw $t0, -9228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9404($fp)
	addi $sp, $sp, 24
	lw $t0, -2084($fp)
	sw $t0, -9408($fp)
	lw $t0, -9404($fp)
	lw $t1, -9408($fp)
	mul $t0, $t0, $t1
	sw $t0, -9412($fp)
	addi $sp, $sp, -4
	lw $t0, -9168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9412($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9416($fp)
	addi $sp, $sp, 24
	lw $t0, -9164($fp)
	lw $t1, -9416($fp)
	add $t0, $t0, $t1
	sw $t0, -9420($fp)
	lw $t1, -9160($fp)
	lw $t2, -9420($fp)
	bge $t1, $t2, label649
	j label650
label649:
	lw $t0, -1844($fp)
	sw $t0, -9424($fp)
	lw $t1, -9424($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label683
label682:
label685:
	lw $t0, -2672($fp)
	sw $t0, -9428($fp)
	li $t0, 14698
	sw $t0, -9432($fp)
	lw $t0, -2648($fp)
	sw $t0, -9436($fp)
	lw $t0, -9436($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, -9440($fp)
	li $t0, 0
	sw $t0, -9444($fp)
	lw $t0, -2084($fp)
	sw $t0, -9448($fp)
	lw $t0, -1820($fp)
	sw $t0, -9452($fp)
	lw $t1, -9448($fp)
	lw $t2, -9452($fp)
	bgt $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -9444($fp)
label689:
	addi $sp, $sp, -4
	lw $t0, -9428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9444($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9456($fp)
	addi $sp, $sp, 20
	li $t0, 26135
	sw $t0, -9460($fp)
	lw $t0, 8($fp)
	sw $t0, -9464($fp)
	lw $t0, -9460($fp)
	lw $t1, -9464($fp)
	mul $t0, $t0, $t1
	sw $t0, -9468($fp)
	li $t0, 31835
	sw $t0, -9472($fp)
	lw $t0, -9468($fp)
	lw $t1, -9472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9476($fp)
	lw $t0, -1460($fp)
	sw $t0, -9480($fp)
	lw $t0, -9480($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	sw $t0, -9484($fp)
	li $t0, 0
	sw $t0, -9488($fp)
	li $t0, 2603
	sw $t0, -9492($fp)
	lw $t1, -9492($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label690
label690:
	li $t0, 1
	sw $t0, -9488($fp)
label691:
	li $t0, 0
	sw $t0, -9496($fp)
	lw $t0, -1916($fp)
	sw $t0, -9500($fp)
	li $t0, 2392
	sw $t0, -9504($fp)
	lw $t1, -9500($fp)
	lw $t2, -9504($fp)
	ble $t1, $t2, label692
	j label693
label692:
	li $t0, 1
	sw $t0, -9496($fp)
label693:
	lw $t0, -1724($fp)
	sw $t0, -9508($fp)
	li $t0, 0
	lw $t1, -9508($fp)
	sub $t0, $t0, $t1
	sw $t0, -9512($fp)
	addi $sp, $sp, -4
	lw $t0, -9484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9512($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9516($fp)
	addi $sp, $sp, 20
	li $t0, 30815
	sw $t0, -9520($fp)
	lw $t0, -9516($fp)
	lw $t1, -9520($fp)
	mul $t0, $t0, $t1
	sw $t0, -9524($fp)
	li $t0, 0
	sw $t0, -9528($fp)
	li $t0, 18529
	sw $t0, -9532($fp)
	li $t0, 41058
	sw $t0, -9536($fp)
	lw $t1, -9532($fp)
	lw $t2, -9536($fp)
	beq $t1, $t2, label696
	j label695
label696:
	lw $t0, -3092($fp)
	sw $t0, -9540($fp)
	lw $t1, -9540($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -9528($fp)
label695:
	li $t0, 43878
	sw $t0, -9544($fp)
	li $t0, 0
	sw $t0, -9548($fp)
	lw $t0, -3608($fp)
	sw $t0, -9552($fp)
	lw $t0, -3980($fp)
	sw $t0, -9556($fp)
	lw $t0, -9552($fp)
	lw $t1, -9556($fp)
	mul $t0, $t0, $t1
	sw $t0, -9560($fp)
	li $t0, 16980
	sw $t0, -9564($fp)
	lw $t1, -9560($fp)
	lw $t2, -9564($fp)
	blt $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -9548($fp)
label698:
	li $t0, 31459
	sw $t0, -9568($fp)
	lw $t0, -9568($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	sw $t0, -9572($fp)
	li $t0, 41021
	sw $t0, -9576($fp)
	lw $t0, -9576($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	sw $t0, -9580($fp)
	addi $sp, $sp, -4
	lw $t0, -9544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9580($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9584($fp)
	addi $sp, $sp, 20
	li $t0, 1418
	sw $t0, -9588($fp)
	lw $t0, -9584($fp)
	lw $t1, -9588($fp)
	mul $t0, $t0, $t1
	sw $t0, -9592($fp)
	addi $sp, $sp, -4
	lw $t0, -9456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9596($fp)
	addi $sp, $sp, 24
	li $t0, 39370
	sw $t0, -9600($fp)
	li $t0, 0
	sw $t0, -9604($fp)
	li $t0, 0
	sw $t0, -9608($fp)
	li $t0, 58304
	sw $t0, -9612($fp)
	li $t0, 38324
	sw $t0, -9616($fp)
	lw $t1, -9612($fp)
	lw $t2, -9616($fp)
	bge $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -9608($fp)
label702:
	lw $t0, -3524($fp)
	sw $t0, -9620($fp)
	lw $t1, -9608($fp)
	lw $t2, -9620($fp)
	ble $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -9604($fp)
label700:
	li $t0, 29026
	sw $t0, -9624($fp)
	li $t0, 57290
	sw $t0, -9628($fp)
	lw $t0, -9624($fp)
	lw $t1, -9628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9632($fp)
	lw $t0, -776($fp)
	sw $t0, -9636($fp)
	lw $t0, -9632($fp)
	lw $t1, -9636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9640($fp)
	li $t0, 0
	sw $t0, -9644($fp)
	lw $t0, -3368($fp)
	sw $t0, -9648($fp)
	li $t0, 0
	lw $t1, -9648($fp)
	sub $t0, $t0, $t1
	sw $t0, -9652($fp)
	lw $t1, -9652($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label705
label705:
	li $t0, 17439
	sw $t0, -9656($fp)
	lw $t1, -9656($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -9644($fp)
label704:
	lw $t0, -1856($fp)
	sw $t0, -9660($fp)
	addi $sp, $sp, -4
	lw $t0, -9600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9660($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9664($fp)
	addi $sp, $sp, 24
	lw $t0, -9596($fp)
	lw $t1, -9664($fp)
	mul $t0, $t0, $t1
	sw $t0, -9668($fp)
	lw $t0, -812($fp)
	sw $t0, -9672($fp)
	li $t0, 0
	lw $t1, -9672($fp)
	sub $t0, $t0, $t1
	sw $t0, -9676($fp)
	lw $t0, -9668($fp)
	lw $t1, -9676($fp)
	mul $t0, $t0, $t1
	sw $t0, -9680($fp)
	lw $t1, -9680($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label687
label686:
	li $t0, 0
	sw $t0, -9684($fp)
	lw $t0, -2168($fp)
	sw $t0, -9688($fp)
	lw $t1, -9688($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label707
label708:
	lw $t0, -3548($fp)
	sw $t0, -9692($fp)
	lw $t1, -9692($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -9684($fp)
label707:
	lw $t0, -9684($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -9696($fp)
	lw $t0, -9696($fp)
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	sw $t0, -9700($fp)
	j label685
label687:
	j label684
label683:
	li $t0, 0
	sw $t0, -9704($fp)
	addi $t0, $fp, -432
	sw $t0, -9708($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -9724($fp)
	sub $t0, $t0, $t1
	sw $t0, -9728($fp)
	li $t0, 51523
	sw $t0, -9732($fp)
	lw $t0, -524($fp)
	sw $t0, -9736($fp)
	lw $t0, -9732($fp)
	lw $t1, -9736($fp)
	add $t0, $t0, $t1
	sw $t0, -9740($fp)
	lw $t1, -9728($fp)
	lw $t2, -9740($fp)
	beq $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -9704($fp)
label713:
	lw $t0, -9704($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -9744($fp)
	lw $t1, -9744($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
	addi $t0, $fp, -260
	sw $t0, -9748($fp)
	li $t0, 0
	sw $t0, -9752($fp)
	lw $t0, -1724($fp)
	sw $t0, -9756($fp)
	li $t0, 59891
	sw $t0, -9760($fp)
	lw $t0, -9756($fp)
	lw $t1, -9760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9764($fp)
	li $t0, 0
	lw $t1, -9764($fp)
	sub $t0, $t0, $t1
	sw $t0, -9768($fp)
	lw $t1, -9768($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label715
label716:
	li $t0, 44717
	sw $t0, -9772($fp)
	lw $t0, 16($fp)
	sw $t0, -9776($fp)
	lw $t1, -9772($fp)
	lw $t2, -9776($fp)
	blt $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -9752($fp)
label715:
	li $t0, 4
	lw $t1, -9752($fp)
	mul $t0, $t0, $t1
	sw $t0, -9780($fp)
	lw $t0, -9780($fp)
	lw $t1, -9748($fp)
	add $t0, $t0, $t1
	sw $t0, -9784($fp)
	lw $t0, -9784($fp)
	lw $t1, 0($t0)
	sw $t1, -9788($fp)
	lw $ra, -4($fp)
	lw $v0, -9788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label711
label710:
	addi $t0, $fp, -408
	sw $t0, -9792($fp)
	li $t0, 6
	sw $t0, -9796($fp)
	li $t0, 4
	lw $t1, -9796($fp)
	mul $t0, $t0, $t1
	sw $t0, -9800($fp)
	lw $t0, -9800($fp)
	lw $t1, -9792($fp)
	add $t0, $t0, $t1
	sw $t0, -9804($fp)
	lw $t0, -9804($fp)
	lw $t1, 0($t0)
	sw $t1, -9808($fp)
	lw $t0, -2120($fp)
	sw $t0, -9812($fp)
	li $t0, 0
	lw $t1, -9812($fp)
	sub $t0, $t0, $t1
	sw $t0, -9816($fp)
	lw $t0, -524($fp)
	sw $t0, -9820($fp)
	lw $t0, -9816($fp)
	lw $t1, -9820($fp)
	sub $t0, $t0, $t1
	sw $t0, -9824($fp)
	li $t0, 0
	sw $t0, -9828($fp)
	li $t0, 16748
	sw $t0, -9832($fp)
	lw $t1, -9832($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label719
label720:
	li $t0, 35948
	sw $t0, -9836($fp)
	lw $t1, -9836($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label719
label719:
	li $t0, 10487
	sw $t0, -9840($fp)
	lw $t1, -9840($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -9828($fp)
label718:
	li $t0, 0
	sw $t0, -9844($fp)
	li $t0, 4489
	sw $t0, -9848($fp)
	li $t0, 59043
	sw $t0, -9852($fp)
	lw $t0, -9848($fp)
	lw $t1, -9852($fp)
	sub $t0, $t0, $t1
	sw $t0, -9856($fp)
	lw $t0, -2180($fp)
	sw $t0, -9860($fp)
	lw $t1, -9856($fp)
	lw $t2, -9860($fp)
	ble $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -9844($fp)
label722:
	addi $t0, $fp, -356
	sw $t0, -9864($fp)
	lw $t0, -3512($fp)
	sw $t0, -9868($fp)
	li $t0, 4
	lw $t1, -9868($fp)
	mul $t0, $t0, $t1
	sw $t0, -9872($fp)
	lw $t0, -9872($fp)
	lw $t1, -9864($fp)
	add $t0, $t0, $t1
	sw $t0, -9876($fp)
	lw $t0, -9876($fp)
	lw $t1, 0($t0)
	sw $t1, -9880($fp)
	li $t0, 0
	sw $t0, -9884($fp)
	lw $t0, -3380($fp)
	sw $t0, -9888($fp)
	li $t0, 0
	lw $t1, -9888($fp)
	sub $t0, $t0, $t1
	sw $t0, -9892($fp)
	lw $t1, -9892($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label725
label725:
	li $t0, 41263
	sw $t0, -9896($fp)
	lw $t1, -9896($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label724
label723:
	li $t0, 1
	sw $t0, -9884($fp)
label724:
	addi $sp, $sp, -4
	lw $t0, -9824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9884($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9900($fp)
	addi $sp, $sp, 24
	li $t0, 60626
	sw $t0, -9904($fp)
	lw $t0, -9900($fp)
	lw $t1, -9904($fp)
	sub $t0, $t0, $t1
	sw $t0, -9908($fp)
	lw $t0, -524($fp)
	sw $t0, -9912($fp)
	lw $t0, -800($fp)
	sw $t0, -9916($fp)
	lw $t0, -9912($fp)
	lw $t1, -9916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9920($fp)
	li $t0, 53943
	sw $t0, -9924($fp)
	lw $t0, -9920($fp)
	lw $t1, -9924($fp)
	add $t0, $t0, $t1
	sw $t0, -9928($fp)
	lw $t0, -788($fp)
	sw $t0, -9932($fp)
	li $t0, 44172
	sw $t0, -9936($fp)
	lw $t0, -9932($fp)
	lw $t1, -9936($fp)
	mul $t0, $t0, $t1
	sw $t0, -9940($fp)
	li $t0, 0
	lw $t1, -9940($fp)
	sub $t0, $t0, $t1
	sw $t0, -9944($fp)
	li $t0, 0
	sw $t0, -9948($fp)
	li $t0, 38461
	sw $t0, -9952($fp)
	li $t0, 51289
	sw $t0, -9956($fp)
	lw $t1, -9952($fp)
	lw $t2, -9956($fp)
	bne $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -9948($fp)
label727:
	addi $sp, $sp, -4
	lw $t0, -9808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9960($fp)
	addi $sp, $sp, 24
	lw $t0, 16($fp)
	sw $t0, -9964($fp)
	li $t0, 0
	lw $t1, -9964($fp)
	sub $t0, $t0, $t1
	sw $t0, -9968($fp)
	lw $t0, -9960($fp)
	lw $t1, -9968($fp)
	mul $t0, $t0, $t1
	sw $t0, -9972($fp)
label711:
label684:
	j label648
label650:
	j label645
label647:
	j label631
label633:
	addi $t0, $fp, -16
	sw $t0, -9976($fp)
	li $t0, 0
	sw $t0, -9980($fp)
	li $t0, 4
	lw $t1, -9980($fp)
	mul $t0, $t0, $t1
	sw $t0, -9984($fp)
	lw $t0, -9984($fp)
	lw $t1, -9976($fp)
	add $t0, $t0, $t1
	sw $t0, -9988($fp)
	lw $t0, -9988($fp)
	lw $t1, 0($t0)
	sw $t1, -9992($fp)
	lw $t0, -9992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -9996($fp)
	li $t0, 1
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
	lw $t0, -10012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -10016($fp)
	li $t0, 2
	sw $t0, -10020($fp)
	li $t0, 4
	lw $t1, -10020($fp)
	mul $t0, $t0, $t1
	sw $t0, -10024($fp)
	lw $t0, -10024($fp)
	lw $t1, -10016($fp)
	add $t0, $t0, $t1
	sw $t0, -10028($fp)
	lw $t0, -10028($fp)
	lw $t1, 0($t0)
	sw $t1, -10032($fp)
	lw $t0, -10032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -10036($fp)
	lw $t0, -10036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -10040($fp)
	lw $t0, -10040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10044($fp)
	li $t0, 0
	sw $t0, -10048($fp)
	li $t0, 4
	lw $t1, -10048($fp)
	mul $t0, $t0, $t1
	sw $t0, -10052($fp)
	lw $t0, -10052($fp)
	lw $t1, -10044($fp)
	add $t0, $t0, $t1
	sw $t0, -10056($fp)
	lw $t0, -10056($fp)
	lw $t1, 0($t0)
	sw $t1, -10060($fp)
	lw $t0, -10060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10064($fp)
	li $t0, 1
	sw $t0, -10068($fp)
	li $t0, 4
	lw $t1, -10068($fp)
	mul $t0, $t0, $t1
	sw $t0, -10072($fp)
	lw $t0, -10072($fp)
	lw $t1, -10064($fp)
	add $t0, $t0, $t1
	sw $t0, -10076($fp)
	lw $t0, -10076($fp)
	lw $t1, 0($t0)
	sw $t1, -10080($fp)
	lw $t0, -10080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10084($fp)
	li $t0, 2
	sw $t0, -10088($fp)
	li $t0, 4
	lw $t1, -10088($fp)
	mul $t0, $t0, $t1
	sw $t0, -10092($fp)
	lw $t0, -10092($fp)
	lw $t1, -10084($fp)
	add $t0, $t0, $t1
	sw $t0, -10096($fp)
	lw $t0, -10096($fp)
	lw $t1, 0($t0)
	sw $t1, -10100($fp)
	lw $t0, -10100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10104($fp)
	li $t0, 3
	sw $t0, -10108($fp)
	li $t0, 4
	lw $t1, -10108($fp)
	mul $t0, $t0, $t1
	sw $t0, -10112($fp)
	lw $t0, -10112($fp)
	lw $t1, -10104($fp)
	add $t0, $t0, $t1
	sw $t0, -10116($fp)
	lw $t0, -10116($fp)
	lw $t1, 0($t0)
	sw $t1, -10120($fp)
	lw $t0, -10120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10124($fp)
	li $t0, 4
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
	lw $t0, -10140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10144($fp)
	li $t0, 5
	sw $t0, -10148($fp)
	li $t0, 4
	lw $t1, -10148($fp)
	mul $t0, $t0, $t1
	sw $t0, -10152($fp)
	lw $t0, -10152($fp)
	lw $t1, -10144($fp)
	add $t0, $t0, $t1
	sw $t0, -10156($fp)
	lw $t0, -10156($fp)
	lw $t1, 0($t0)
	sw $t1, -10160($fp)
	lw $t0, -10160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -10164($fp)
	li $t0, 0
	sw $t0, -10168($fp)
	li $t0, 4
	lw $t1, -10168($fp)
	mul $t0, $t0, $t1
	sw $t0, -10172($fp)
	lw $t0, -10172($fp)
	lw $t1, -10164($fp)
	add $t0, $t0, $t1
	sw $t0, -10176($fp)
	lw $t0, -10176($fp)
	lw $t1, 0($t0)
	sw $t1, -10180($fp)
	lw $t0, -10180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -10184($fp)
	li $t0, 1
	sw $t0, -10188($fp)
	li $t0, 4
	lw $t1, -10188($fp)
	mul $t0, $t0, $t1
	sw $t0, -10192($fp)
	lw $t0, -10192($fp)
	lw $t1, -10184($fp)
	add $t0, $t0, $t1
	sw $t0, -10196($fp)
	lw $t0, -10196($fp)
	lw $t1, 0($t0)
	sw $t1, -10200($fp)
	lw $t0, -10200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -10204($fp)
	li $t0, 2
	sw $t0, -10208($fp)
	li $t0, 4
	lw $t1, -10208($fp)
	mul $t0, $t0, $t1
	sw $t0, -10212($fp)
	lw $t0, -10212($fp)
	lw $t1, -10204($fp)
	add $t0, $t0, $t1
	sw $t0, -10216($fp)
	lw $t0, -10216($fp)
	lw $t1, 0($t0)
	sw $t1, -10220($fp)
	lw $t0, -10220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -10224($fp)
	li $t0, 3
	sw $t0, -10228($fp)
	li $t0, 4
	lw $t1, -10228($fp)
	mul $t0, $t0, $t1
	sw $t0, -10232($fp)
	lw $t0, -10232($fp)
	lw $t1, -10224($fp)
	add $t0, $t0, $t1
	sw $t0, -10236($fp)
	lw $t0, -10236($fp)
	lw $t1, 0($t0)
	sw $t1, -10240($fp)
	lw $t0, -10240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -10244($fp)
	lw $t0, -10244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -10248($fp)
	lw $t0, -10248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -10252($fp)
	lw $t0, -10252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -10256($fp)
	lw $t0, -10256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -10260($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -10280($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -10300($fp)
	li $t0, 2
	sw $t0, -10304($fp)
	li $t0, 4
	lw $t1, -10304($fp)
	mul $t0, $t0, $t1
	sw $t0, -10308($fp)
	lw $t0, -10308($fp)
	lw $t1, -10300($fp)
	add $t0, $t0, $t1
	sw $t0, -10312($fp)
	lw $t0, -10312($fp)
	lw $t1, 0($t0)
	sw $t1, -10316($fp)
	lw $t0, -10316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -10320($fp)
	li $t0, 3
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
	lw $t0, -10336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -10340($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -10360($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -10380($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -10400($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -10420($fp)
	li $t0, 8
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
	addi $t0, $fp, -96
	sw $t0, -10440($fp)
	li $t0, 9
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
	lw $t0, -1064($fp)
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -10468($fp)
	lw $t0, -10468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10472($fp)
	li $t0, 0
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
	addi $t0, $fp, -120
	sw $t0, -10492($fp)
	li $t0, 1
	sw $t0, -10496($fp)
	li $t0, 4
	lw $t1, -10496($fp)
	mul $t0, $t0, $t1
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	lw $t1, -10492($fp)
	add $t0, $t0, $t1
	sw $t0, -10504($fp)
	lw $t0, -10504($fp)
	lw $t1, 0($t0)
	sw $t1, -10508($fp)
	lw $t0, -10508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10512($fp)
	li $t0, 2
	sw $t0, -10516($fp)
	li $t0, 4
	lw $t1, -10516($fp)
	mul $t0, $t0, $t1
	sw $t0, -10520($fp)
	lw $t0, -10520($fp)
	lw $t1, -10512($fp)
	add $t0, $t0, $t1
	sw $t0, -10524($fp)
	lw $t0, -10524($fp)
	lw $t1, 0($t0)
	sw $t1, -10528($fp)
	lw $t0, -10528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10532($fp)
	li $t0, 3
	sw $t0, -10536($fp)
	li $t0, 4
	lw $t1, -10536($fp)
	mul $t0, $t0, $t1
	sw $t0, -10540($fp)
	lw $t0, -10540($fp)
	lw $t1, -10532($fp)
	add $t0, $t0, $t1
	sw $t0, -10544($fp)
	lw $t0, -10544($fp)
	lw $t1, 0($t0)
	sw $t1, -10548($fp)
	lw $t0, -10548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10552($fp)
	li $t0, 4
	sw $t0, -10556($fp)
	li $t0, 4
	lw $t1, -10556($fp)
	mul $t0, $t0, $t1
	sw $t0, -10560($fp)
	lw $t0, -10560($fp)
	lw $t1, -10552($fp)
	add $t0, $t0, $t1
	sw $t0, -10564($fp)
	lw $t0, -10564($fp)
	lw $t1, 0($t0)
	sw $t1, -10568($fp)
	lw $t0, -10568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -10572($fp)
	li $t0, 5
	sw $t0, -10576($fp)
	li $t0, 4
	lw $t1, -10576($fp)
	mul $t0, $t0, $t1
	sw $t0, -10580($fp)
	lw $t0, -10580($fp)
	lw $t1, -10572($fp)
	add $t0, $t0, $t1
	sw $t0, -10584($fp)
	lw $t0, -10584($fp)
	lw $t1, 0($t0)
	sw $t1, -10588($fp)
	lw $t0, -10588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10592($fp)
	li $t0, 0
	sw $t0, -10596($fp)
	li $t0, 4
	lw $t1, -10596($fp)
	mul $t0, $t0, $t1
	sw $t0, -10600($fp)
	lw $t0, -10600($fp)
	lw $t1, -10592($fp)
	add $t0, $t0, $t1
	sw $t0, -10604($fp)
	lw $t0, -10604($fp)
	lw $t1, 0($t0)
	sw $t1, -10608($fp)
	lw $t0, -10608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10612($fp)
	li $t0, 1
	sw $t0, -10616($fp)
	li $t0, 4
	lw $t1, -10616($fp)
	mul $t0, $t0, $t1
	sw $t0, -10620($fp)
	lw $t0, -10620($fp)
	lw $t1, -10612($fp)
	add $t0, $t0, $t1
	sw $t0, -10624($fp)
	lw $t0, -10624($fp)
	lw $t1, 0($t0)
	sw $t1, -10628($fp)
	lw $t0, -10628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10632($fp)
	li $t0, 2
	sw $t0, -10636($fp)
	li $t0, 4
	lw $t1, -10636($fp)
	mul $t0, $t0, $t1
	sw $t0, -10640($fp)
	lw $t0, -10640($fp)
	lw $t1, -10632($fp)
	add $t0, $t0, $t1
	sw $t0, -10644($fp)
	lw $t0, -10644($fp)
	lw $t1, 0($t0)
	sw $t1, -10648($fp)
	lw $t0, -10648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10652($fp)
	li $t0, 3
	sw $t0, -10656($fp)
	li $t0, 4
	lw $t1, -10656($fp)
	mul $t0, $t0, $t1
	sw $t0, -10660($fp)
	lw $t0, -10660($fp)
	lw $t1, -10652($fp)
	add $t0, $t0, $t1
	sw $t0, -10664($fp)
	lw $t0, -10664($fp)
	lw $t1, 0($t0)
	sw $t1, -10668($fp)
	lw $t0, -10668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10672($fp)
	li $t0, 4
	sw $t0, -10676($fp)
	li $t0, 4
	lw $t1, -10676($fp)
	mul $t0, $t0, $t1
	sw $t0, -10680($fp)
	lw $t0, -10680($fp)
	lw $t1, -10672($fp)
	add $t0, $t0, $t1
	sw $t0, -10684($fp)
	lw $t0, -10684($fp)
	lw $t1, 0($t0)
	sw $t1, -10688($fp)
	lw $t0, -10688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10692($fp)
	li $t0, 5
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
	lw $t0, -10708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10712($fp)
	li $t0, 6
	sw $t0, -10716($fp)
	li $t0, 4
	lw $t1, -10716($fp)
	mul $t0, $t0, $t1
	sw $t0, -10720($fp)
	lw $t0, -10720($fp)
	lw $t1, -10712($fp)
	add $t0, $t0, $t1
	sw $t0, -10724($fp)
	lw $t0, -10724($fp)
	lw $t1, 0($t0)
	sw $t1, -10728($fp)
	lw $t0, -10728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10732($fp)
	li $t0, 7
	sw $t0, -10736($fp)
	li $t0, 4
	lw $t1, -10736($fp)
	mul $t0, $t0, $t1
	sw $t0, -10740($fp)
	lw $t0, -10740($fp)
	lw $t1, -10732($fp)
	add $t0, $t0, $t1
	sw $t0, -10744($fp)
	lw $t0, -10744($fp)
	lw $t1, 0($t0)
	sw $t1, -10748($fp)
	lw $t0, -10748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -10752($fp)
	lw $t0, -10752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -10756($fp)
	lw $t0, -10756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -10760($fp)
	lw $t0, -10760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -10764($fp)
	lw $t0, -10764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -10768($fp)
	li $t0, 0
	sw $t0, -10772($fp)
	li $t0, 4
	lw $t1, -10772($fp)
	mul $t0, $t0, $t1
	sw $t0, -10776($fp)
	lw $t0, -10776($fp)
	lw $t1, -10768($fp)
	add $t0, $t0, $t1
	sw $t0, -10780($fp)
	lw $t0, -10780($fp)
	lw $t1, 0($t0)
	sw $t1, -10784($fp)
	lw $t0, -10784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -10788($fp)
	li $t0, 1
	sw $t0, -10792($fp)
	li $t0, 4
	lw $t1, -10792($fp)
	mul $t0, $t0, $t1
	sw $t0, -10796($fp)
	lw $t0, -10796($fp)
	lw $t1, -10788($fp)
	add $t0, $t0, $t1
	sw $t0, -10800($fp)
	lw $t0, -10800($fp)
	lw $t1, 0($t0)
	sw $t1, -10804($fp)
	lw $t0, -10804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -10808($fp)
	li $t0, 2
	sw $t0, -10812($fp)
	li $t0, 4
	lw $t1, -10812($fp)
	mul $t0, $t0, $t1
	sw $t0, -10816($fp)
	lw $t0, -10816($fp)
	lw $t1, -10808($fp)
	add $t0, $t0, $t1
	sw $t0, -10820($fp)
	lw $t0, -10820($fp)
	lw $t1, 0($t0)
	sw $t1, -10824($fp)
	lw $t0, -10824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -10828($fp)
	li $t0, 3
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
	lw $t0, -10844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -10848($fp)
	li $t0, 4
	sw $t0, -10852($fp)
	li $t0, 4
	lw $t1, -10852($fp)
	mul $t0, $t0, $t1
	sw $t0, -10856($fp)
	lw $t0, -10856($fp)
	lw $t1, -10848($fp)
	add $t0, $t0, $t1
	sw $t0, -10860($fp)
	lw $t0, -10860($fp)
	lw $t1, 0($t0)
	sw $t1, -10864($fp)
	lw $t0, -10864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -10868($fp)
	li $t0, 5
	sw $t0, -10872($fp)
	li $t0, 4
	lw $t1, -10872($fp)
	mul $t0, $t0, $t1
	sw $t0, -10876($fp)
	lw $t0, -10876($fp)
	lw $t1, -10868($fp)
	add $t0, $t0, $t1
	sw $t0, -10880($fp)
	lw $t0, -10880($fp)
	lw $t1, 0($t0)
	sw $t1, -10884($fp)
	lw $t0, -10884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -10888($fp)
	li $t0, 6
	sw $t0, -10892($fp)
	li $t0, 4
	lw $t1, -10892($fp)
	mul $t0, $t0, $t1
	sw $t0, -10896($fp)
	lw $t0, -10896($fp)
	lw $t1, -10888($fp)
	add $t0, $t0, $t1
	sw $t0, -10900($fp)
	lw $t0, -10900($fp)
	lw $t1, 0($t0)
	sw $t1, -10904($fp)
	lw $t0, -10904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -10908($fp)
	li $t0, 7
	sw $t0, -10912($fp)
	li $t0, 4
	lw $t1, -10912($fp)
	mul $t0, $t0, $t1
	sw $t0, -10916($fp)
	lw $t0, -10916($fp)
	lw $t1, -10908($fp)
	add $t0, $t0, $t1
	sw $t0, -10920($fp)
	lw $t0, -10920($fp)
	lw $t1, 0($t0)
	sw $t1, -10924($fp)
	lw $t0, -10924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -10928($fp)
	li $t0, 8
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
	lw $t0, -1700($fp)
	sw $t0, -10948($fp)
	lw $t0, -10948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1712($fp)
	sw $t0, -10952($fp)
	lw $t0, -10952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1724($fp)
	sw $t0, -10956($fp)
	lw $t0, -10956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1736($fp)
	sw $t0, -10960($fp)
	lw $t0, -10960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -10964($fp)
	lw $t0, -10964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -10968($fp)
	lw $t0, -10968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -10972($fp)
	lw $t0, -10972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -10976($fp)
	lw $t0, -10976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -10980($fp)
	lw $t0, -10980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -10984($fp)
	lw $t0, -10984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -10988($fp)
	lw $t0, -10988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -10992($fp)
	lw $t0, -10992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1844($fp)
	sw $t0, -10996($fp)
	lw $t0, -10996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -11000($fp)
	lw $t0, -11000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1868($fp)
	sw $t0, -11004($fp)
	lw $t0, -11004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1880($fp)
	sw $t0, -11008($fp)
	lw $t0, -11008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1892($fp)
	sw $t0, -11012($fp)
	lw $t0, -11012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1904($fp)
	sw $t0, -11016($fp)
	lw $t0, -11016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1916($fp)
	sw $t0, -11020($fp)
	lw $t0, -11020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -11024($fp)
	lw $t0, -11024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1940($fp)
	sw $t0, -11028($fp)
	lw $t0, -11028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1952($fp)
	sw $t0, -11032($fp)
	lw $t0, -11032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1964($fp)
	sw $t0, -11036($fp)
	lw $t0, -11036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1976($fp)
	sw $t0, -11040($fp)
	lw $t0, -11040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1988($fp)
	sw $t0, -11044($fp)
	lw $t0, -11044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2000($fp)
	sw $t0, -11048($fp)
	lw $t0, -11048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2012($fp)
	sw $t0, -11052($fp)
	lw $t0, -11052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2024($fp)
	sw $t0, -11056($fp)
	lw $t0, -11056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2036($fp)
	sw $t0, -11060($fp)
	lw $t0, -11060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2048($fp)
	sw $t0, -11064($fp)
	lw $t0, -11064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2060($fp)
	sw $t0, -11068($fp)
	lw $t0, -11068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2072($fp)
	sw $t0, -11072($fp)
	lw $t0, -11072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2084($fp)
	sw $t0, -11076($fp)
	lw $t0, -11076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2096($fp)
	sw $t0, -11080($fp)
	lw $t0, -11080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2108($fp)
	sw $t0, -11084($fp)
	lw $t0, -11084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2120($fp)
	sw $t0, -11088($fp)
	lw $t0, -11088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2132($fp)
	sw $t0, -11092($fp)
	lw $t0, -11092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2144($fp)
	sw $t0, -11096($fp)
	lw $t0, -11096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2156($fp)
	sw $t0, -11100($fp)
	lw $t0, -11100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2168($fp)
	sw $t0, -11104($fp)
	lw $t0, -11104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2180($fp)
	sw $t0, -11108($fp)
	lw $t0, -11108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2192($fp)
	sw $t0, -11112($fp)
	lw $t0, -11112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2204($fp)
	sw $t0, -11116($fp)
	lw $t0, -11116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11120($fp)
	li $t0, 0
	sw $t0, -11124($fp)
	li $t0, 4
	lw $t1, -11124($fp)
	mul $t0, $t0, $t1
	sw $t0, -11128($fp)
	lw $t0, -11128($fp)
	lw $t1, -11120($fp)
	add $t0, $t0, $t1
	sw $t0, -11132($fp)
	lw $t0, -11132($fp)
	lw $t1, 0($t0)
	sw $t1, -11136($fp)
	lw $t0, -11136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11140($fp)
	li $t0, 1
	sw $t0, -11144($fp)
	li $t0, 4
	lw $t1, -11144($fp)
	mul $t0, $t0, $t1
	sw $t0, -11148($fp)
	lw $t0, -11148($fp)
	lw $t1, -11140($fp)
	add $t0, $t0, $t1
	sw $t0, -11152($fp)
	lw $t0, -11152($fp)
	lw $t1, 0($t0)
	sw $t1, -11156($fp)
	lw $t0, -11156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11160($fp)
	li $t0, 2
	sw $t0, -11164($fp)
	li $t0, 4
	lw $t1, -11164($fp)
	mul $t0, $t0, $t1
	sw $t0, -11168($fp)
	lw $t0, -11168($fp)
	lw $t1, -11160($fp)
	add $t0, $t0, $t1
	sw $t0, -11172($fp)
	lw $t0, -11172($fp)
	lw $t1, 0($t0)
	sw $t1, -11176($fp)
	lw $t0, -11176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11180($fp)
	li $t0, 3
	sw $t0, -11184($fp)
	li $t0, 4
	lw $t1, -11184($fp)
	mul $t0, $t0, $t1
	sw $t0, -11188($fp)
	lw $t0, -11188($fp)
	lw $t1, -11180($fp)
	add $t0, $t0, $t1
	sw $t0, -11192($fp)
	lw $t0, -11192($fp)
	lw $t1, 0($t0)
	sw $t1, -11196($fp)
	lw $t0, -11196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11200($fp)
	li $t0, 4
	sw $t0, -11204($fp)
	li $t0, 4
	lw $t1, -11204($fp)
	mul $t0, $t0, $t1
	sw $t0, -11208($fp)
	lw $t0, -11208($fp)
	lw $t1, -11200($fp)
	add $t0, $t0, $t1
	sw $t0, -11212($fp)
	lw $t0, -11212($fp)
	lw $t1, 0($t0)
	sw $t1, -11216($fp)
	lw $t0, -11216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11220($fp)
	li $t0, 5
	sw $t0, -11224($fp)
	li $t0, 4
	lw $t1, -11224($fp)
	mul $t0, $t0, $t1
	sw $t0, -11228($fp)
	lw $t0, -11228($fp)
	lw $t1, -11220($fp)
	add $t0, $t0, $t1
	sw $t0, -11232($fp)
	lw $t0, -11232($fp)
	lw $t1, 0($t0)
	sw $t1, -11236($fp)
	lw $t0, -11236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11240($fp)
	li $t0, 6
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
	lw $t0, -11256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11260($fp)
	li $t0, 7
	sw $t0, -11264($fp)
	li $t0, 4
	lw $t1, -11264($fp)
	mul $t0, $t0, $t1
	sw $t0, -11268($fp)
	lw $t0, -11268($fp)
	lw $t1, -11260($fp)
	add $t0, $t0, $t1
	sw $t0, -11272($fp)
	lw $t0, -11272($fp)
	lw $t1, 0($t0)
	sw $t1, -11276($fp)
	lw $t0, -11276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11280($fp)
	li $t0, 8
	sw $t0, -11284($fp)
	li $t0, 4
	lw $t1, -11284($fp)
	mul $t0, $t0, $t1
	sw $t0, -11288($fp)
	lw $t0, -11288($fp)
	lw $t1, -11280($fp)
	add $t0, $t0, $t1
	sw $t0, -11292($fp)
	lw $t0, -11292($fp)
	lw $t1, 0($t0)
	sw $t1, -11296($fp)
	lw $t0, -11296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -228
	sw $t0, -11300($fp)
	li $t0, 9
	sw $t0, -11304($fp)
	li $t0, 4
	lw $t1, -11304($fp)
	mul $t0, $t0, $t1
	sw $t0, -11308($fp)
	lw $t0, -11308($fp)
	lw $t1, -11300($fp)
	add $t0, $t0, $t1
	sw $t0, -11312($fp)
	lw $t0, -11312($fp)
	lw $t1, 0($t0)
	sw $t1, -11316($fp)
	lw $t0, -11316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -11320($fp)
	li $t0, 0
	sw $t0, -11324($fp)
	li $t0, 4
	lw $t1, -11324($fp)
	mul $t0, $t0, $t1
	sw $t0, -11328($fp)
	lw $t0, -11328($fp)
	lw $t1, -11320($fp)
	add $t0, $t0, $t1
	sw $t0, -11332($fp)
	lw $t0, -11332($fp)
	lw $t1, 0($t0)
	sw $t1, -11336($fp)
	lw $t0, -11336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -11340($fp)
	li $t0, 1
	sw $t0, -11344($fp)
	li $t0, 4
	lw $t1, -11344($fp)
	mul $t0, $t0, $t1
	sw $t0, -11348($fp)
	lw $t0, -11348($fp)
	lw $t1, -11340($fp)
	add $t0, $t0, $t1
	sw $t0, -11352($fp)
	lw $t0, -11352($fp)
	lw $t1, 0($t0)
	sw $t1, -11356($fp)
	lw $t0, -11356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -11360($fp)
	li $t0, 2
	sw $t0, -11364($fp)
	li $t0, 4
	lw $t1, -11364($fp)
	mul $t0, $t0, $t1
	sw $t0, -11368($fp)
	lw $t0, -11368($fp)
	lw $t1, -11360($fp)
	add $t0, $t0, $t1
	sw $t0, -11372($fp)
	lw $t0, -11372($fp)
	lw $t1, 0($t0)
	sw $t1, -11376($fp)
	lw $t0, -11376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -11380($fp)
	li $t0, 3
	sw $t0, -11384($fp)
	li $t0, 4
	lw $t1, -11384($fp)
	mul $t0, $t0, $t1
	sw $t0, -11388($fp)
	lw $t0, -11388($fp)
	lw $t1, -11380($fp)
	add $t0, $t0, $t1
	sw $t0, -11392($fp)
	lw $t0, -11392($fp)
	lw $t1, 0($t0)
	sw $t1, -11396($fp)
	lw $t0, -11396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -11400($fp)
	li $t0, 4
	sw $t0, -11404($fp)
	li $t0, 4
	lw $t1, -11404($fp)
	mul $t0, $t0, $t1
	sw $t0, -11408($fp)
	lw $t0, -11408($fp)
	lw $t1, -11400($fp)
	add $t0, $t0, $t1
	sw $t0, -11412($fp)
	lw $t0, -11412($fp)
	lw $t1, 0($t0)
	sw $t1, -11416($fp)
	lw $t0, -11416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -11420($fp)
	li $t0, 5
	sw $t0, -11424($fp)
	li $t0, 4
	lw $t1, -11424($fp)
	mul $t0, $t0, $t1
	sw $t0, -11428($fp)
	lw $t0, -11428($fp)
	lw $t1, -11420($fp)
	add $t0, $t0, $t1
	sw $t0, -11432($fp)
	lw $t0, -11432($fp)
	lw $t1, 0($t0)
	sw $t1, -11436($fp)
	lw $t0, -11436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -11440($fp)
	li $t0, 6
	sw $t0, -11444($fp)
	li $t0, 4
	lw $t1, -11444($fp)
	mul $t0, $t0, $t1
	sw $t0, -11448($fp)
	lw $t0, -11448($fp)
	lw $t1, -11440($fp)
	add $t0, $t0, $t1
	sw $t0, -11452($fp)
	lw $t0, -11452($fp)
	lw $t1, 0($t0)
	sw $t1, -11456($fp)
	lw $t0, -11456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -11460($fp)
	li $t0, 7
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
	lw $t0, -11476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2648($fp)
	sw $t0, -11480($fp)
	lw $t0, -11480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2660($fp)
	sw $t0, -11484($fp)
	lw $t0, -11484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2672($fp)
	sw $t0, -11488($fp)
	lw $t0, -11488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2684($fp)
	sw $t0, -11492($fp)
	lw $t0, -11492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2696($fp)
	sw $t0, -11496($fp)
	lw $t0, -11496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -11500($fp)
	li $t0, 0
	sw $t0, -11504($fp)
	li $t0, 4
	lw $t1, -11504($fp)
	mul $t0, $t0, $t1
	sw $t0, -11508($fp)
	lw $t0, -11508($fp)
	lw $t1, -11500($fp)
	add $t0, $t0, $t1
	sw $t0, -11512($fp)
	lw $t0, -11512($fp)
	lw $t1, 0($t0)
	sw $t1, -11516($fp)
	lw $t0, -11516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -11520($fp)
	li $t0, 1
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
	lw $t0, -11536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -11540($fp)
	li $t0, 2
	sw $t0, -11544($fp)
	li $t0, 4
	lw $t1, -11544($fp)
	mul $t0, $t0, $t1
	sw $t0, -11548($fp)
	lw $t0, -11548($fp)
	lw $t1, -11540($fp)
	add $t0, $t0, $t1
	sw $t0, -11552($fp)
	lw $t0, -11552($fp)
	lw $t1, 0($t0)
	sw $t1, -11556($fp)
	lw $t0, -11556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -11560($fp)
	li $t0, 3
	sw $t0, -11564($fp)
	li $t0, 4
	lw $t1, -11564($fp)
	mul $t0, $t0, $t1
	sw $t0, -11568($fp)
	lw $t0, -11568($fp)
	lw $t1, -11560($fp)
	add $t0, $t0, $t1
	sw $t0, -11572($fp)
	lw $t0, -11572($fp)
	lw $t1, 0($t0)
	sw $t1, -11576($fp)
	lw $t0, -11576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -11580($fp)
	li $t0, 4
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
	lw $t0, -11596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2828($fp)
	sw $t0, -11600($fp)
	lw $t0, -11600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2840($fp)
	sw $t0, -11604($fp)
	lw $t0, -11604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2852($fp)
	sw $t0, -11608($fp)
	lw $t0, -11608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2864($fp)
	sw $t0, -11612($fp)
	lw $t0, -11612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -11616($fp)
	li $t0, 0
	sw $t0, -11620($fp)
	li $t0, 4
	lw $t1, -11620($fp)
	mul $t0, $t0, $t1
	sw $t0, -11624($fp)
	lw $t0, -11624($fp)
	lw $t1, -11616($fp)
	add $t0, $t0, $t1
	sw $t0, -11628($fp)
	lw $t0, -11628($fp)
	lw $t1, 0($t0)
	sw $t1, -11632($fp)
	lw $t0, -11632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -11636($fp)
	li $t0, 1
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
	addi $t0, $fp, -312
	sw $t0, -11656($fp)
	li $t0, 2
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
	addi $t0, $fp, -312
	sw $t0, -11676($fp)
	li $t0, 3
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
	addi $t0, $fp, -312
	sw $t0, -11696($fp)
	li $t0, 4
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
	addi $t0, $fp, -312
	sw $t0, -11716($fp)
	li $t0, 5
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
	addi $t0, $fp, -312
	sw $t0, -11736($fp)
	li $t0, 6
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
	addi $t0, $fp, -312
	sw $t0, -11756($fp)
	li $t0, 7
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
	lw $t0, -3068($fp)
	sw $t0, -11776($fp)
	lw $t0, -11776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3080($fp)
	sw $t0, -11780($fp)
	lw $t0, -11780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3092($fp)
	sw $t0, -11784($fp)
	lw $t0, -11784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3104($fp)
	sw $t0, -11788($fp)
	lw $t0, -11788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3116($fp)
	sw $t0, -11792($fp)
	lw $t0, -11792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -348
	sw $t0, -11796($fp)
	li $t0, 0
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
	addi $t0, $fp, -348
	sw $t0, -11816($fp)
	li $t0, 1
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
	addi $t0, $fp, -348
	sw $t0, -11836($fp)
	li $t0, 2
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
	addi $t0, $fp, -348
	sw $t0, -11856($fp)
	li $t0, 3
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
	addi $t0, $fp, -348
	sw $t0, -11876($fp)
	li $t0, 4
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
	addi $t0, $fp, -348
	sw $t0, -11896($fp)
	li $t0, 5
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
	addi $t0, $fp, -348
	sw $t0, -11916($fp)
	li $t0, 6
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
	addi $t0, $fp, -348
	sw $t0, -11936($fp)
	li $t0, 7
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
	addi $t0, $fp, -348
	sw $t0, -11956($fp)
	li $t0, 8
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
	lw $t0, -3344($fp)
	sw $t0, -11976($fp)
	lw $t0, -11976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3356($fp)
	sw $t0, -11980($fp)
	lw $t0, -11980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3368($fp)
	sw $t0, -11984($fp)
	lw $t0, -11984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3380($fp)
	sw $t0, -11988($fp)
	lw $t0, -11988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3392($fp)
	sw $t0, -11992($fp)
	lw $t0, -11992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3404($fp)
	sw $t0, -11996($fp)
	lw $t0, -11996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3416($fp)
	sw $t0, -12000($fp)
	lw $t0, -12000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3428($fp)
	sw $t0, -12004($fp)
	lw $t0, -12004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3440($fp)
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3452($fp)
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -356
	sw $t0, -12016($fp)
	li $t0, 0
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
	addi $t0, $fp, -356
	sw $t0, -12036($fp)
	li $t0, 1
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
	lw $t0, -3512($fp)
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3524($fp)
	sw $t0, -12060($fp)
	lw $t0, -12060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3536($fp)
	sw $t0, -12064($fp)
	lw $t0, -12064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3548($fp)
	sw $t0, -12068($fp)
	lw $t0, -12068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3560($fp)
	sw $t0, -12072($fp)
	lw $t0, -12072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3572($fp)
	sw $t0, -12076($fp)
	lw $t0, -12076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3584($fp)
	sw $t0, -12080($fp)
	lw $t0, -12080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3596($fp)
	sw $t0, -12084($fp)
	lw $t0, -12084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3608($fp)
	sw $t0, -12088($fp)
	lw $t0, -12088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3620($fp)
	sw $t0, -12092($fp)
	lw $t0, -12092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3632($fp)
	sw $t0, -12096($fp)
	lw $t0, -12096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -12100($fp)
	li $t0, 0
	sw $t0, -12104($fp)
	li $t0, 4
	lw $t1, -12104($fp)
	mul $t0, $t0, $t1
	sw $t0, -12108($fp)
	lw $t0, -12108($fp)
	lw $t1, -12100($fp)
	add $t0, $t0, $t1
	sw $t0, -12112($fp)
	lw $t0, -12112($fp)
	lw $t1, 0($t0)
	sw $t1, -12116($fp)
	lw $t0, -12116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -12120($fp)
	li $t0, 1
	sw $t0, -12124($fp)
	li $t0, 4
	lw $t1, -12124($fp)
	mul $t0, $t0, $t1
	sw $t0, -12128($fp)
	lw $t0, -12128($fp)
	lw $t1, -12120($fp)
	add $t0, $t0, $t1
	sw $t0, -12132($fp)
	lw $t0, -12132($fp)
	lw $t1, 0($t0)
	sw $t1, -12136($fp)
	lw $t0, -12136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -12140($fp)
	li $t0, 2
	sw $t0, -12144($fp)
	li $t0, 4
	lw $t1, -12144($fp)
	mul $t0, $t0, $t1
	sw $t0, -12148($fp)
	lw $t0, -12148($fp)
	lw $t1, -12140($fp)
	add $t0, $t0, $t1
	sw $t0, -12152($fp)
	lw $t0, -12152($fp)
	lw $t1, 0($t0)
	sw $t1, -12156($fp)
	lw $t0, -12156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -372
	sw $t0, -12160($fp)
	li $t0, 3
	sw $t0, -12164($fp)
	li $t0, 4
	lw $t1, -12164($fp)
	mul $t0, $t0, $t1
	sw $t0, -12168($fp)
	lw $t0, -12168($fp)
	lw $t1, -12160($fp)
	add $t0, $t0, $t1
	sw $t0, -12172($fp)
	lw $t0, -12172($fp)
	lw $t1, 0($t0)
	sw $t1, -12176($fp)
	lw $t0, -12176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3740($fp)
	sw $t0, -12180($fp)
	lw $t0, -12180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3752($fp)
	sw $t0, -12184($fp)
	lw $t0, -12184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -408
	sw $t0, -12188($fp)
	li $t0, 0
	sw $t0, -12192($fp)
	li $t0, 4
	lw $t1, -12192($fp)
	mul $t0, $t0, $t1
	sw $t0, -12196($fp)
	lw $t0, -12196($fp)
	lw $t1, -12188($fp)
	add $t0, $t0, $t1
	sw $t0, -12200($fp)
	lw $t0, -12200($fp)
	lw $t1, 0($t0)
	sw $t1, -12204($fp)
	lw $t0, -12204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -408
	sw $t0, -12208($fp)
	li $t0, 1
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
	addi $t0, $fp, -408
	sw $t0, -12228($fp)
	li $t0, 2
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
	addi $t0, $fp, -408
	sw $t0, -12248($fp)
	li $t0, 3
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
	addi $t0, $fp, -408
	sw $t0, -12268($fp)
	li $t0, 4
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
	addi $t0, $fp, -408
	sw $t0, -12288($fp)
	li $t0, 5
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
	addi $t0, $fp, -408
	sw $t0, -12308($fp)
	li $t0, 6
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
	addi $t0, $fp, -408
	sw $t0, -12328($fp)
	li $t0, 7
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
	addi $t0, $fp, -408
	sw $t0, -12348($fp)
	li $t0, 8
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
	lw $t0, -3980($fp)
	sw $t0, -12368($fp)
	lw $t0, -12368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -432
	sw $t0, -12372($fp)
	li $t0, 0
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
	addi $t0, $fp, -432
	sw $t0, -12392($fp)
	li $t0, 1
	sw $t0, -12396($fp)
	li $t0, 4
	lw $t1, -12396($fp)
	mul $t0, $t0, $t1
	sw $t0, -12400($fp)
	lw $t0, -12400($fp)
	lw $t1, -12392($fp)
	add $t0, $t0, $t1
	sw $t0, -12404($fp)
	lw $t0, -12404($fp)
	lw $t1, 0($t0)
	sw $t1, -12408($fp)
	lw $t0, -12408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -432
	sw $t0, -12412($fp)
	li $t0, 2
	sw $t0, -12416($fp)
	li $t0, 4
	lw $t1, -12416($fp)
	mul $t0, $t0, $t1
	sw $t0, -12420($fp)
	lw $t0, -12420($fp)
	lw $t1, -12412($fp)
	add $t0, $t0, $t1
	sw $t0, -12424($fp)
	lw $t0, -12424($fp)
	lw $t1, 0($t0)
	sw $t1, -12428($fp)
	lw $t0, -12428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -432
	sw $t0, -12432($fp)
	li $t0, 3
	sw $t0, -12436($fp)
	li $t0, 4
	lw $t1, -12436($fp)
	mul $t0, $t0, $t1
	sw $t0, -12440($fp)
	lw $t0, -12440($fp)
	lw $t1, -12432($fp)
	add $t0, $t0, $t1
	sw $t0, -12444($fp)
	lw $t0, -12444($fp)
	lw $t1, 0($t0)
	sw $t1, -12448($fp)
	lw $t0, -12448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -432
	sw $t0, -12452($fp)
	li $t0, 4
	sw $t0, -12456($fp)
	li $t0, 4
	lw $t1, -12456($fp)
	mul $t0, $t0, $t1
	sw $t0, -12460($fp)
	lw $t0, -12460($fp)
	lw $t1, -12452($fp)
	add $t0, $t0, $t1
	sw $t0, -12464($fp)
	lw $t0, -12464($fp)
	lw $t1, 0($t0)
	sw $t1, -12468($fp)
	lw $t0, -12468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -432
	sw $t0, -12472($fp)
	li $t0, 5
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
	lw $t0, -12488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4136($fp)
	sw $t0, -12492($fp)
	lw $t0, -12492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4148($fp)
	sw $t0, -12496($fp)
	lw $t0, -12496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4160($fp)
	sw $t0, -12500($fp)
	lw $t0, -12500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4172($fp)
	sw $t0, -12504($fp)
	lw $t0, -12504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4184($fp)
	sw $t0, -12508($fp)
	lw $t0, -12508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12512($fp)
	li $t0, 358
	sw $t0, -12516($fp)
	li $t0, 63455
	sw $t0, -12520($fp)
	lw $t0, -12516($fp)
	lw $t1, -12520($fp)
	sub $t0, $t0, $t1
	sw $t0, -12524($fp)
	lw $t1, -12524($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label730
label730:
	li $t0, 16126
	sw $t0, -12528($fp)
	lw $t1, -12528($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label729
label728:
	li $t0, 1
	sw $t0, -12512($fp)
label729:
	li $t0, 0
	sw $t0, -12532($fp)
	li $t0, 31620
	sw $t0, -12536($fp)
	li $t0, 1428
	sw $t0, -12540($fp)
	lw $t1, -12536($fp)
	lw $t2, -12540($fp)
	blt $t1, $t2, label731
	j label733
label733:
	lw $t0, -1436($fp)
	sw $t0, -12544($fp)
	lw $t1, -12544($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -12532($fp)
label732:
	li $t0, 0
	sw $t0, -12548($fp)
	li $t0, 39758
	sw $t0, -12552($fp)
	li $t0, 0
	lw $t1, -12552($fp)
	sub $t0, $t0, $t1
	sw $t0, -12556($fp)
	lw $t1, -12556($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label736
label736:
	lw $t0, -1880($fp)
	sw $t0, -12560($fp)
	lw $t1, -12560($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -12548($fp)
label735:
	li $t0, 36149
	sw $t0, -12564($fp)
	lw $t0, -12564($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -12568($fp)
	addi $sp, $sp, -4
	lw $t0, -12512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12568($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -12572($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -12576($fp)
	lw $t0, -3080($fp)
	sw $t0, -12580($fp)
	li $t0, 0
	lw $t1, -12580($fp)
	sub $t0, $t0, $t1
	sw $t0, -12584($fp)
	lw $t0, -3548($fp)
	sw $t0, -12588($fp)
	lw $t0, -12584($fp)
	lw $t1, -12588($fp)
	add $t0, $t0, $t1
	sw $t0, -12592($fp)
	addi $t0, $fp, -56
	sw $t0, -12596($fp)
	lw $t0, -524($fp)
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
	li $t0, 26945
	sw $t0, -12616($fp)
	lw $t0, -12612($fp)
	lw $t1, -12616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12620($fp)
	li $t0, 0
	sw $t0, -12624($fp)
	lw $t0, -1460($fp)
	sw $t0, -12628($fp)
	lw $t1, -12628($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label739
label739:
	li $t0, 1
	sw $t0, -12624($fp)
label740:
	li $t0, 17797
	sw $t0, -12632($fp)
	lw $t0, -12624($fp)
	lw $t1, -12632($fp)
	add $t0, $t0, $t1
	sw $t0, -12636($fp)
	lw $t0, -3068($fp)
	sw $t0, -12640($fp)
	lw $t0, -12640($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -12644($fp)
	addi $sp, $sp, -4
	lw $t0, -12592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12644($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -12648($fp)
	addi $sp, $sp, 20
	lw $t1, -12648($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label737
label737:
	li $t0, 1
	sw $t0, -12576($fp)
label738:
	lw $t0, -12572($fp)
	lw $t1, -12576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12652($fp)
	li $t0, 47250
	sw $t0, -12656($fp)
	lw $t0, -524($fp)
	sw $t0, -12660($fp)
	lw $t0, -3080($fp)
	sw $t0, -12664($fp)
	li $t0, 10566
	sw $t0, -12668($fp)
	lw $t0, -12664($fp)
	lw $t1, -12668($fp)
	mul $t0, $t0, $t1
	sw $t0, -12672($fp)
	li $t0, 65269
	sw $t0, -12676($fp)
	lw $t0, -12672($fp)
	lw $t1, -12676($fp)
	mul $t0, $t0, $t1
	sw $t0, -12680($fp)
	lw $t0, -1916($fp)
	sw $t0, -12684($fp)
	lw $t0, -12684($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -12688($fp)
	li $t0, 0
	sw $t0, -12692($fp)
	lw $t0, -3560($fp)
	sw $t0, -12696($fp)
	lw $t0, -1892($fp)
	sw $t0, -12700($fp)
	lw $t0, -12696($fp)
	lw $t1, -12700($fp)
	add $t0, $t0, $t1
	sw $t0, -12704($fp)
	lw $t1, -12704($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label742
label743:
	li $t0, 7880
	sw $t0, -12708($fp)
	lw $t1, -12708($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -12692($fp)
label742:
	addi $sp, $sp, -4
	lw $t0, -12656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12692($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12712($fp)
	addi $sp, $sp, 24
	lw $t0, -12652($fp)
	lw $t1, -12712($fp)
	mul $t0, $t0, $t1
	sw $t0, -12716($fp)
	lw $ra, -4($fp)
	lw $v0, -12716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -392
	li $t0, 95
	sw $t0, -28($fp)
	addi $t0, $fp, -12
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
	li $t0, 59694
	sw $t0, -52($fp)
	addi $t0, $fp, -12
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
	li $t0, 33238
	sw $t0, -76($fp)
	addi $t0, $fp, -24
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
	li $t0, 59987
	sw $t0, -100($fp)
	addi $t0, $fp, -24
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
	li $t0, 38875
	sw $t0, -124($fp)
	addi $t0, $fp, -24
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
label744:
	li $t0, 6163
	sw $t0, -148($fp)
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label746
label745:
	addi $t0, $fp, -12
	sw $t0, -152($fp)
	li $t0, 1
	sw $t0, -156($fp)
	li $t0, 4
	lw $t1, -156($fp)
	mul $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	lw $t1, 0($t0)
	sw $t1, -168($fp)
	addi $t0, $fp, -24
	sw $t0, -172($fp)
	li $t0, 1
	sw $t0, -176($fp)
	li $t0, 4
	lw $t1, -176($fp)
	mul $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lw $t1, 0($t0)
	sw $t1, -188($fp)
	lw $t0, -168($fp)
	lw $t1, -188($fp)
	mul $t0, $t0, $t1
	sw $t0, -192($fp)
	li $t0, 0
	lw $t1, -192($fp)
	sub $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $ra, -4($fp)
	lw $v0, -196($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label744
label746:
	li $t0, 0
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	lw $t0, 4($fp)
	sw $t0, -208($fp)
	addi $t0, $fp, -12
	sw $t0, -212($fp)
	li $t0, 1
	sw $t0, -216($fp)
	li $t0, 4
	lw $t1, -216($fp)
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, 0($t0)
	sw $t1, -228($fp)
	lw $t1, -208($fp)
	lw $t2, -228($fp)
	ble $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -204($fp)
label750:
	li $t0, 0
	sw $t0, -232($fp)
	li $t0, 38216
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label751
label751:
	li $t0, 1
	sw $t0, -232($fp)
label752:
	li $t0, 57949
	sw $t0, -240($fp)
	lw $t0, -232($fp)
	lw $t1, -240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -244($fp)
	lw $t0, 4($fp)
	sw $t0, -248($fp)
	lw $t0, -244($fp)
	lw $t1, -248($fp)
	sub $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t1, -204($fp)
	lw $t2, -252($fp)
	bne $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -200($fp)
label748:
	addi $t0, $fp, -12
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	li $t0, 4
	lw $t1, -260($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, -256($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, 0($t0)
	sw $t1, -272($fp)
	lw $t0, -272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -276($fp)
	li $t0, 1
	sw $t0, -280($fp)
	li $t0, 4
	lw $t1, -280($fp)
	mul $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, 0($t0)
	sw $t1, -292($fp)
	lw $t0, -292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	lw $t0, -312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -316($fp)
	li $t0, 1
	sw $t0, -320($fp)
	li $t0, 4
	lw $t1, -320($fp)
	mul $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	lw $t1, 0($t0)
	sw $t1, -332($fp)
	lw $t0, -332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -336($fp)
	li $t0, 2
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
	lw $t0, -352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -356($fp)
	addi $t0, $fp, -12
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	lw $t0, 4($fp)
	sw $t0, -368($fp)
	lw $t0, 4($fp)
	sw $t0, -372($fp)
	lw $t1, -368($fp)
	lw $t2, -372($fp)
	bge $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -364($fp)
label756:
	li $t0, 4
	lw $t1, -364($fp)
	mul $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	lw $t1, -360($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	lw $t1, 0($t0)
	sw $t1, -384($fp)
	li $t0, 64101
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	mul $t0, $t0, $t1
	sw $t0, -392($fp)
	li $t0, 33306
	sw $t0, -396($fp)
	lw $t1, -392($fp)
	lw $t2, -396($fp)
	bne $t1, $t2, label753
	j label754
label753:
	li $t0, 1
	sw $t0, -356($fp)
label754:
	lw $ra, -4($fp)
	lw $v0, -356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -596
	li $t0, 29780
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
	li $t0, 27581
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
	li $t0, 3919
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
	li $t0, 4002
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
	li $t0, 59201
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
	li $t0, 5347
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
	li $t0, 4360
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
	li $t0, 57120
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
	li $t0, 21473
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 22158
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 18529
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -272($fp)
	li $t0, 3271
	sw $t0, -276($fp)
	li $t0, 0
	lw $t1, -276($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, 45039
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	li $t0, 7475
	sw $t0, -296($fp)
	lw $t0, -260($fp)
	sw $t0, -300($fp)
	lw $t1, -296($fp)
	lw $t2, -300($fp)
	blt $t1, $t2, label759
	j label758
label759:
	lw $t0, -236($fp)
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -292($fp)
label758:
	li $t0, 0
	sw $t0, -308($fp)
	li $t0, 27270
	sw $t0, -312($fp)
	li $t0, 51296
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	li $t0, 50469
	sw $t0, -324($fp)
	lw $t1, -320($fp)
	lw $t2, -324($fp)
	ble $t1, $t2, label760
	j label761
label760:
	li $t0, 1
	sw $t0, -308($fp)
label761:
	li $t0, 0
	sw $t0, -328($fp)
	lw $t0, -260($fp)
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label762:
	li $t0, 1
	sw $t0, -328($fp)
label763:
	lw $t0, -260($fp)
	sw $t0, -336($fp)
	lw $t0, -328($fp)
	lw $t1, -336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -340($fp)
	lw $t0, -260($fp)
	sw $t0, -344($fp)
	li $t0, 44306
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -352($fp)
	lw $t0, -260($fp)
	sw $t0, -356($fp)
	lw $t0, -352($fp)
	lw $t1, -356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	addi $t0, $fp, -36
	sw $t0, -368($fp)
	li $t0, 3
	sw $t0, -372($fp)
	li $t0, 4
	lw $t1, -372($fp)
	mul $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	lw $t1, 0($t0)
	sw $t1, -384($fp)
	li $t0, 12420
	sw $t0, -388($fp)
	lw $t1, -384($fp)
	lw $t2, -388($fp)
	blt $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -364($fp)
label765:
	addi $sp, $sp, -4
	lw $t0, -308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -392($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -36
	sw $t0, -396($fp)
	li $t0, 4
	sw $t0, -400($fp)
	li $t0, 4
	lw $t1, -400($fp)
	mul $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	lw $t1, -396($fp)
	add $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	lw $t1, 0($t0)
	sw $t1, -412($fp)
	li $t0, 18262
	sw $t0, -416($fp)
	lw $t0, -412($fp)
	lw $t1, -416($fp)
	mul $t0, $t0, $t1
	sw $t0, -420($fp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -424($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -36
	sw $t0, -428($fp)
	li $t0, 0
	sw $t0, -432($fp)
	li $t0, 4
	lw $t1, -432($fp)
	mul $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, 0($t0)
	sw $t1, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -448($fp)
	li $t0, 1
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
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -468($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -488($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -508($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -528($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -548($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -568($fp)
	li $t0, 7
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
	lw $t0, -236($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 28942
	sw $t0, -600($fp)
	lw $ra, -4($fp)
	lw $v0, -600($fp)
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
