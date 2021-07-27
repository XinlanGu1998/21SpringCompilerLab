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
	addi $sp, $sp, -19972
	li $t0, 1840
	sw $t0, -588($fp)
	addi $t0, $fp, -16
	sw $t0, -592($fp)
	li $t0, 0
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -592($fp)
	lw $t1, -600($fp)
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -588($fp)
	lw $t1, -604($fp)
	sw $t0, 0($t1)
	lw $t0, -604($fp)
	lw $t1, 0($t0)
	sw $t1, -608($fp)
	li $t0, 60224
	sw $t0, -612($fp)
	addi $t0, $fp, -16
	sw $t0, -616($fp)
	li $t0, 1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -616($fp)
	lw $t1, -624($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -612($fp)
	lw $t1, -628($fp)
	sw $t0, 0($t1)
	lw $t0, -628($fp)
	lw $t1, 0($t0)
	sw $t1, -632($fp)
	li $t0, 64344
	sw $t0, -636($fp)
	addi $t0, $fp, -16
	sw $t0, -640($fp)
	li $t0, 2
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
	li $t0, 51950
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 19430
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 46960
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 41847
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 60132
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 40957
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 4060
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 53930
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 11639
	sw $t0, -756($fp)
	addi $t0, $fp, -24
	sw $t0, -760($fp)
	li $t0, 0
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
	li $t0, 46918
	sw $t0, -780($fp)
	addi $t0, $fp, -24
	sw $t0, -784($fp)
	li $t0, 1
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
	li $t0, 10296
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 52405
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 61797
	sw $t0, -828($fp)
	addi $t0, $fp, -64
	sw $t0, -832($fp)
	li $t0, 0
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
	li $t0, 21089
	sw $t0, -852($fp)
	addi $t0, $fp, -64
	sw $t0, -856($fp)
	li $t0, 1
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -856($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -852($fp)
	lw $t1, -868($fp)
	sw $t0, 0($t1)
	lw $t0, -868($fp)
	lw $t1, 0($t0)
	sw $t1, -872($fp)
	li $t0, 57025
	sw $t0, -876($fp)
	addi $t0, $fp, -64
	sw $t0, -880($fp)
	li $t0, 2
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -880($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -876($fp)
	lw $t1, -892($fp)
	sw $t0, 0($t1)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	li $t0, 34101
	sw $t0, -900($fp)
	addi $t0, $fp, -64
	sw $t0, -904($fp)
	li $t0, 3
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
	li $t0, 19799
	sw $t0, -924($fp)
	addi $t0, $fp, -64
	sw $t0, -928($fp)
	li $t0, 4
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
	li $t0, 12122
	sw $t0, -948($fp)
	addi $t0, $fp, -64
	sw $t0, -952($fp)
	li $t0, 5
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
	li $t0, 24170
	sw $t0, -972($fp)
	addi $t0, $fp, -64
	sw $t0, -976($fp)
	li $t0, 6
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
	li $t0, 12168
	sw $t0, -996($fp)
	addi $t0, $fp, -64
	sw $t0, -1000($fp)
	li $t0, 7
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
	li $t0, 10315
	sw $t0, -1020($fp)
	addi $t0, $fp, -64
	sw $t0, -1024($fp)
	li $t0, 8
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
	li $t0, 19967
	sw $t0, -1044($fp)
	addi $t0, $fp, -64
	sw $t0, -1048($fp)
	li $t0, 9
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
	li $t0, 18941
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 25479
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 58437
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 64199
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 31035
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 4162
	sw $t0, -1128($fp)
	addi $t0, $fp, -100
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
	li $t0, 504
	sw $t0, -1152($fp)
	addi $t0, $fp, -100
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
	li $t0, 25723
	sw $t0, -1176($fp)
	addi $t0, $fp, -100
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
	li $t0, 2971
	sw $t0, -1200($fp)
	addi $t0, $fp, -100
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
	li $t0, 52454
	sw $t0, -1224($fp)
	addi $t0, $fp, -100
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
	li $t0, 45153
	sw $t0, -1248($fp)
	addi $t0, $fp, -100
	sw $t0, -1252($fp)
	li $t0, 5
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
	li $t0, 49931
	sw $t0, -1272($fp)
	addi $t0, $fp, -100
	sw $t0, -1276($fp)
	li $t0, 6
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
	li $t0, 28766
	sw $t0, -1296($fp)
	addi $t0, $fp, -100
	sw $t0, -1300($fp)
	li $t0, 7
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
	li $t0, 39749
	sw $t0, -1320($fp)
	addi $t0, $fp, -100
	sw $t0, -1324($fp)
	li $t0, 8
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
	li $t0, 25352
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 32826
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 28144
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 36991
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 14208
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	li $t0, 38440
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	li $t0, 23860
	sw $t0, -1416($fp)
	addi $t0, $fp, -136
	sw $t0, -1420($fp)
	li $t0, 0
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
	li $t0, 10470
	sw $t0, -1440($fp)
	addi $t0, $fp, -136
	sw $t0, -1444($fp)
	li $t0, 1
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
	li $t0, 59529
	sw $t0, -1464($fp)
	addi $t0, $fp, -136
	sw $t0, -1468($fp)
	li $t0, 2
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
	li $t0, 15349
	sw $t0, -1488($fp)
	addi $t0, $fp, -136
	sw $t0, -1492($fp)
	li $t0, 3
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
	li $t0, 44571
	sw $t0, -1512($fp)
	addi $t0, $fp, -136
	sw $t0, -1516($fp)
	li $t0, 4
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
	li $t0, 13792
	sw $t0, -1536($fp)
	addi $t0, $fp, -136
	sw $t0, -1540($fp)
	li $t0, 5
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1540($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1536($fp)
	lw $t1, -1552($fp)
	sw $t0, 0($t1)
	lw $t0, -1552($fp)
	lw $t1, 0($t0)
	sw $t1, -1556($fp)
	li $t0, 27471
	sw $t0, -1560($fp)
	addi $t0, $fp, -136
	sw $t0, -1564($fp)
	li $t0, 6
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1564($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1560($fp)
	lw $t1, -1576($fp)
	sw $t0, 0($t1)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	li $t0, 3205
	sw $t0, -1584($fp)
	addi $t0, $fp, -136
	sw $t0, -1588($fp)
	li $t0, 7
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1588($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1584($fp)
	lw $t1, -1600($fp)
	sw $t0, 0($t1)
	lw $t0, -1600($fp)
	lw $t1, 0($t0)
	sw $t1, -1604($fp)
	li $t0, 25961
	sw $t0, -1608($fp)
	addi $t0, $fp, -136
	sw $t0, -1612($fp)
	li $t0, 8
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1612($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1608($fp)
	lw $t1, -1624($fp)
	sw $t0, 0($t1)
	lw $t0, -1624($fp)
	lw $t1, 0($t0)
	sw $t1, -1628($fp)
	li $t0, 37786
	sw $t0, -1632($fp)
	addi $t0, $fp, -148
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1636($fp)
	lw $t1, -1644($fp)
	add $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1632($fp)
	lw $t1, -1648($fp)
	sw $t0, 0($t1)
	lw $t0, -1648($fp)
	lw $t1, 0($t0)
	sw $t1, -1652($fp)
	li $t0, 23173
	sw $t0, -1656($fp)
	addi $t0, $fp, -148
	sw $t0, -1660($fp)
	li $t0, 1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1660($fp)
	lw $t1, -1668($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1656($fp)
	lw $t1, -1672($fp)
	sw $t0, 0($t1)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	li $t0, 44902
	sw $t0, -1680($fp)
	addi $t0, $fp, -148
	sw $t0, -1684($fp)
	li $t0, 2
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1684($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1680($fp)
	lw $t1, -1696($fp)
	sw $t0, 0($t1)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
	li $t0, 63266
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	li $t0, 16074
	sw $t0, -1716($fp)
	addi $t0, $fp, -156
	sw $t0, -1720($fp)
	li $t0, 0
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
	li $t0, 43566
	sw $t0, -1740($fp)
	addi $t0, $fp, -156
	sw $t0, -1744($fp)
	li $t0, 1
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
	li $t0, 28765
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	li $t0, 20237
	sw $t0, -1776($fp)
	addi $t0, $fp, -168
	sw $t0, -1780($fp)
	li $t0, 0
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1780($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1776($fp)
	lw $t1, -1792($fp)
	sw $t0, 0($t1)
	lw $t0, -1792($fp)
	lw $t1, 0($t0)
	sw $t1, -1796($fp)
	li $t0, 44070
	sw $t0, -1800($fp)
	addi $t0, $fp, -168
	sw $t0, -1804($fp)
	li $t0, 1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1804($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1800($fp)
	lw $t1, -1816($fp)
	sw $t0, 0($t1)
	lw $t0, -1816($fp)
	lw $t1, 0($t0)
	sw $t1, -1820($fp)
	li $t0, 54488
	sw $t0, -1824($fp)
	addi $t0, $fp, -168
	sw $t0, -1828($fp)
	li $t0, 2
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1828($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1824($fp)
	lw $t1, -1840($fp)
	sw $t0, 0($t1)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	li $t0, 23208
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	li $t0, 30988
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	li $t0, 34105
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	li $t0, 7603
	sw $t0, -1884($fp)
	addi $t0, $fp, -208
	sw $t0, -1888($fp)
	li $t0, 0
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
	li $t0, 59754
	sw $t0, -1908($fp)
	addi $t0, $fp, -208
	sw $t0, -1912($fp)
	li $t0, 1
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
	li $t0, 8318
	sw $t0, -1932($fp)
	addi $t0, $fp, -208
	sw $t0, -1936($fp)
	li $t0, 2
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1936($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1932($fp)
	lw $t1, -1948($fp)
	sw $t0, 0($t1)
	lw $t0, -1948($fp)
	lw $t1, 0($t0)
	sw $t1, -1952($fp)
	li $t0, 32955
	sw $t0, -1956($fp)
	addi $t0, $fp, -208
	sw $t0, -1960($fp)
	li $t0, 3
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
	li $t0, 27044
	sw $t0, -1980($fp)
	addi $t0, $fp, -208
	sw $t0, -1984($fp)
	li $t0, 4
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
	li $t0, 36462
	sw $t0, -2004($fp)
	addi $t0, $fp, -208
	sw $t0, -2008($fp)
	li $t0, 5
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2008($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2004($fp)
	lw $t1, -2020($fp)
	sw $t0, 0($t1)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	li $t0, 4410
	sw $t0, -2028($fp)
	addi $t0, $fp, -208
	sw $t0, -2032($fp)
	li $t0, 6
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2032($fp)
	lw $t1, -2040($fp)
	add $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2028($fp)
	lw $t1, -2044($fp)
	sw $t0, 0($t1)
	lw $t0, -2044($fp)
	lw $t1, 0($t0)
	sw $t1, -2048($fp)
	li $t0, 41253
	sw $t0, -2052($fp)
	addi $t0, $fp, -208
	sw $t0, -2056($fp)
	li $t0, 7
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2056($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2052($fp)
	lw $t1, -2068($fp)
	sw $t0, 0($t1)
	lw $t0, -2068($fp)
	lw $t1, 0($t0)
	sw $t1, -2072($fp)
	li $t0, 9366
	sw $t0, -2076($fp)
	addi $t0, $fp, -208
	sw $t0, -2080($fp)
	li $t0, 8
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2080($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2076($fp)
	lw $t1, -2092($fp)
	sw $t0, 0($t1)
	lw $t0, -2092($fp)
	lw $t1, 0($t0)
	sw $t1, -2096($fp)
	li $t0, 28270
	sw $t0, -2100($fp)
	addi $t0, $fp, -208
	sw $t0, -2104($fp)
	li $t0, 9
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2104($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2100($fp)
	lw $t1, -2116($fp)
	sw $t0, 0($t1)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	li $t0, 51723
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	li $t0, 3360
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	li $t0, 43619
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -2156($fp)
	li $t0, 30758
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	sw $t0, -2168($fp)
	li $t0, 17152
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	sw $t0, -2180($fp)
	li $t0, 5554
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	li $t0, 33964
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	li $t0, 43113
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	li $t0, 43340
	sw $t0, -2220($fp)
	addi $t0, $fp, -236
	sw $t0, -2224($fp)
	li $t0, 0
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
	li $t0, 57137
	sw $t0, -2244($fp)
	addi $t0, $fp, -236
	sw $t0, -2248($fp)
	li $t0, 1
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
	li $t0, 22480
	sw $t0, -2268($fp)
	addi $t0, $fp, -236
	sw $t0, -2272($fp)
	li $t0, 2
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
	li $t0, 41070
	sw $t0, -2292($fp)
	addi $t0, $fp, -236
	sw $t0, -2296($fp)
	li $t0, 3
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2296($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2292($fp)
	lw $t1, -2308($fp)
	sw $t0, 0($t1)
	lw $t0, -2308($fp)
	lw $t1, 0($t0)
	sw $t1, -2312($fp)
	li $t0, 7675
	sw $t0, -2316($fp)
	addi $t0, $fp, -236
	sw $t0, -2320($fp)
	li $t0, 4
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2320($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2316($fp)
	lw $t1, -2332($fp)
	sw $t0, 0($t1)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	li $t0, 510
	sw $t0, -2340($fp)
	addi $t0, $fp, -236
	sw $t0, -2344($fp)
	li $t0, 5
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2344($fp)
	lw $t1, -2352($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2340($fp)
	lw $t1, -2356($fp)
	sw $t0, 0($t1)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	li $t0, 4299
	sw $t0, -2364($fp)
	addi $t0, $fp, -236
	sw $t0, -2368($fp)
	li $t0, 6
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2368($fp)
	lw $t1, -2376($fp)
	add $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2364($fp)
	lw $t1, -2380($fp)
	sw $t0, 0($t1)
	lw $t0, -2380($fp)
	lw $t1, 0($t0)
	sw $t1, -2384($fp)
	li $t0, 27912
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	li $t0, 44580
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	li $t0, 58787
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	li $t0, 51120
	sw $t0, -2424($fp)
	addi $t0, $fp, -256
	sw $t0, -2428($fp)
	li $t0, 0
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
	li $t0, 10032
	sw $t0, -2448($fp)
	addi $t0, $fp, -256
	sw $t0, -2452($fp)
	li $t0, 1
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
	li $t0, 27356
	sw $t0, -2472($fp)
	addi $t0, $fp, -256
	sw $t0, -2476($fp)
	li $t0, 2
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
	li $t0, 58723
	sw $t0, -2496($fp)
	addi $t0, $fp, -256
	sw $t0, -2500($fp)
	li $t0, 3
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2500($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2496($fp)
	lw $t1, -2512($fp)
	sw $t0, 0($t1)
	lw $t0, -2512($fp)
	lw $t1, 0($t0)
	sw $t1, -2516($fp)
	li $t0, 4251
	sw $t0, -2520($fp)
	addi $t0, $fp, -256
	sw $t0, -2524($fp)
	li $t0, 4
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
	li $t0, 35675
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	li $t0, 26142
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -2564($fp)
	li $t0, 31295
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	li $t0, 6601
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	li $t0, 30552
	sw $t0, -2592($fp)
	addi $t0, $fp, -280
	sw $t0, -2596($fp)
	li $t0, 0
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2596($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2592($fp)
	lw $t1, -2608($fp)
	sw $t0, 0($t1)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	li $t0, 7012
	sw $t0, -2616($fp)
	addi $t0, $fp, -280
	sw $t0, -2620($fp)
	li $t0, 1
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
	li $t0, 15968
	sw $t0, -2640($fp)
	addi $t0, $fp, -280
	sw $t0, -2644($fp)
	li $t0, 2
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
	li $t0, 58822
	sw $t0, -2664($fp)
	addi $t0, $fp, -280
	sw $t0, -2668($fp)
	li $t0, 3
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
	li $t0, 58735
	sw $t0, -2688($fp)
	addi $t0, $fp, -280
	sw $t0, -2692($fp)
	li $t0, 4
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2692($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2688($fp)
	lw $t1, -2704($fp)
	sw $t0, 0($t1)
	lw $t0, -2704($fp)
	lw $t1, 0($t0)
	sw $t1, -2708($fp)
	li $t0, 19328
	sw $t0, -2712($fp)
	addi $t0, $fp, -280
	sw $t0, -2716($fp)
	li $t0, 5
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2716($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2712($fp)
	lw $t1, -2728($fp)
	sw $t0, 0($t1)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	li $t0, 36905
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	li $t0, 23958
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	li $t0, 36480
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -2768($fp)
	li $t0, 42459
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	sw $t0, -2780($fp)
	li $t0, 57922
	sw $t0, -2784($fp)
	addi $t0, $fp, -316
	sw $t0, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2788($fp)
	lw $t1, -2796($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2784($fp)
	lw $t1, -2800($fp)
	sw $t0, 0($t1)
	lw $t0, -2800($fp)
	lw $t1, 0($t0)
	sw $t1, -2804($fp)
	li $t0, 14058
	sw $t0, -2808($fp)
	addi $t0, $fp, -316
	sw $t0, -2812($fp)
	li $t0, 1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2812($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2808($fp)
	lw $t1, -2824($fp)
	sw $t0, 0($t1)
	lw $t0, -2824($fp)
	lw $t1, 0($t0)
	sw $t1, -2828($fp)
	li $t0, 20264
	sw $t0, -2832($fp)
	addi $t0, $fp, -316
	sw $t0, -2836($fp)
	li $t0, 2
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
	li $t0, 49523
	sw $t0, -2856($fp)
	addi $t0, $fp, -316
	sw $t0, -2860($fp)
	li $t0, 3
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
	li $t0, 36538
	sw $t0, -2880($fp)
	addi $t0, $fp, -316
	sw $t0, -2884($fp)
	li $t0, 4
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
	li $t0, 61334
	sw $t0, -2904($fp)
	addi $t0, $fp, -316
	sw $t0, -2908($fp)
	li $t0, 5
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
	li $t0, 57198
	sw $t0, -2928($fp)
	addi $t0, $fp, -316
	sw $t0, -2932($fp)
	li $t0, 6
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
	li $t0, 37048
	sw $t0, -2952($fp)
	addi $t0, $fp, -316
	sw $t0, -2956($fp)
	li $t0, 7
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2956($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2952($fp)
	lw $t1, -2968($fp)
	sw $t0, 0($t1)
	lw $t0, -2968($fp)
	lw $t1, 0($t0)
	sw $t1, -2972($fp)
	li $t0, 98
	sw $t0, -2976($fp)
	addi $t0, $fp, -316
	sw $t0, -2980($fp)
	li $t0, 8
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2980($fp)
	lw $t1, -2988($fp)
	add $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2976($fp)
	lw $t1, -2992($fp)
	sw $t0, 0($t1)
	lw $t0, -2992($fp)
	lw $t1, 0($t0)
	sw $t1, -2996($fp)
	li $t0, 19575
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	sw $t0, -3008($fp)
	li $t0, 16092
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	sw $t0, -3020($fp)
	li $t0, 58885
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	sw $t0, -3032($fp)
	li $t0, 5159
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	sw $t0, -3044($fp)
	li $t0, 26124
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	sw $t0, -3056($fp)
	li $t0, 20706
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	sw $t0, -3068($fp)
	li $t0, 63883
	sw $t0, -3072($fp)
	addi $t0, $fp, -336
	sw $t0, -3076($fp)
	li $t0, 0
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3076($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3072($fp)
	lw $t1, -3088($fp)
	sw $t0, 0($t1)
	lw $t0, -3088($fp)
	lw $t1, 0($t0)
	sw $t1, -3092($fp)
	li $t0, 30375
	sw $t0, -3096($fp)
	addi $t0, $fp, -336
	sw $t0, -3100($fp)
	li $t0, 1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3100($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3096($fp)
	lw $t1, -3112($fp)
	sw $t0, 0($t1)
	lw $t0, -3112($fp)
	lw $t1, 0($t0)
	sw $t1, -3116($fp)
	li $t0, 56381
	sw $t0, -3120($fp)
	addi $t0, $fp, -336
	sw $t0, -3124($fp)
	li $t0, 2
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3124($fp)
	lw $t1, -3132($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3120($fp)
	lw $t1, -3136($fp)
	sw $t0, 0($t1)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
	li $t0, 24489
	sw $t0, -3144($fp)
	addi $t0, $fp, -336
	sw $t0, -3148($fp)
	li $t0, 3
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3148($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3144($fp)
	lw $t1, -3160($fp)
	sw $t0, 0($t1)
	lw $t0, -3160($fp)
	lw $t1, 0($t0)
	sw $t1, -3164($fp)
	li $t0, 61671
	sw $t0, -3168($fp)
	addi $t0, $fp, -336
	sw $t0, -3172($fp)
	li $t0, 4
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3172($fp)
	lw $t1, -3180($fp)
	add $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3168($fp)
	lw $t1, -3184($fp)
	sw $t0, 0($t1)
	lw $t0, -3184($fp)
	lw $t1, 0($t0)
	sw $t1, -3188($fp)
	li $t0, 62982
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	sw $t0, -3200($fp)
	li $t0, 55042
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	sw $t0, -3212($fp)
	li $t0, 3147
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	sw $t0, -3224($fp)
	li $t0, 13414
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	sw $t0, -3236($fp)
	li $t0, 48328
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -3248($fp)
	li $t0, 61883
	sw $t0, -3252($fp)
	addi $t0, $fp, -360
	sw $t0, -3256($fp)
	li $t0, 0
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3256($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3252($fp)
	lw $t1, -3268($fp)
	sw $t0, 0($t1)
	lw $t0, -3268($fp)
	lw $t1, 0($t0)
	sw $t1, -3272($fp)
	li $t0, 32742
	sw $t0, -3276($fp)
	addi $t0, $fp, -360
	sw $t0, -3280($fp)
	li $t0, 1
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3280($fp)
	lw $t1, -3288($fp)
	add $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3276($fp)
	lw $t1, -3292($fp)
	sw $t0, 0($t1)
	lw $t0, -3292($fp)
	lw $t1, 0($t0)
	sw $t1, -3296($fp)
	li $t0, 19698
	sw $t0, -3300($fp)
	addi $t0, $fp, -360
	sw $t0, -3304($fp)
	li $t0, 2
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3304($fp)
	lw $t1, -3312($fp)
	add $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -3300($fp)
	lw $t1, -3316($fp)
	sw $t0, 0($t1)
	lw $t0, -3316($fp)
	lw $t1, 0($t0)
	sw $t1, -3320($fp)
	li $t0, 20305
	sw $t0, -3324($fp)
	addi $t0, $fp, -360
	sw $t0, -3328($fp)
	li $t0, 3
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3328($fp)
	lw $t1, -3336($fp)
	add $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3324($fp)
	lw $t1, -3340($fp)
	sw $t0, 0($t1)
	lw $t0, -3340($fp)
	lw $t1, 0($t0)
	sw $t1, -3344($fp)
	li $t0, 3687
	sw $t0, -3348($fp)
	addi $t0, $fp, -360
	sw $t0, -3352($fp)
	li $t0, 4
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3352($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3348($fp)
	lw $t1, -3364($fp)
	sw $t0, 0($t1)
	lw $t0, -3364($fp)
	lw $t1, 0($t0)
	sw $t1, -3368($fp)
	li $t0, 62157
	sw $t0, -3372($fp)
	addi $t0, $fp, -360
	sw $t0, -3376($fp)
	li $t0, 5
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3376($fp)
	lw $t1, -3384($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3372($fp)
	lw $t1, -3388($fp)
	sw $t0, 0($t1)
	lw $t0, -3388($fp)
	lw $t1, 0($t0)
	sw $t1, -3392($fp)
	li $t0, 12691
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	sw $t0, -3404($fp)
	li $t0, 17745
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	sw $t0, -3416($fp)
	li $t0, 16885
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	sw $t0, -3428($fp)
	li $t0, 62214
	sw $t0, -3432($fp)
	addi $t0, $fp, -380
	sw $t0, -3436($fp)
	li $t0, 0
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3436($fp)
	lw $t1, -3444($fp)
	add $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3432($fp)
	lw $t1, -3448($fp)
	sw $t0, 0($t1)
	lw $t0, -3448($fp)
	lw $t1, 0($t0)
	sw $t1, -3452($fp)
	li $t0, 54283
	sw $t0, -3456($fp)
	addi $t0, $fp, -380
	sw $t0, -3460($fp)
	li $t0, 1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3460($fp)
	lw $t1, -3468($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3456($fp)
	lw $t1, -3472($fp)
	sw $t0, 0($t1)
	lw $t0, -3472($fp)
	lw $t1, 0($t0)
	sw $t1, -3476($fp)
	li $t0, 12684
	sw $t0, -3480($fp)
	addi $t0, $fp, -380
	sw $t0, -3484($fp)
	li $t0, 2
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3484($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3480($fp)
	lw $t1, -3496($fp)
	sw $t0, 0($t1)
	lw $t0, -3496($fp)
	lw $t1, 0($t0)
	sw $t1, -3500($fp)
	li $t0, 53876
	sw $t0, -3504($fp)
	addi $t0, $fp, -380
	sw $t0, -3508($fp)
	li $t0, 3
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3508($fp)
	lw $t1, -3516($fp)
	add $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3504($fp)
	lw $t1, -3520($fp)
	sw $t0, 0($t1)
	lw $t0, -3520($fp)
	lw $t1, 0($t0)
	sw $t1, -3524($fp)
	li $t0, 25795
	sw $t0, -3528($fp)
	addi $t0, $fp, -380
	sw $t0, -3532($fp)
	li $t0, 4
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
	li $t0, 12782
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	sw $t0, -3560($fp)
	li $t0, 7915
	sw $t0, -3564($fp)
	addi $t0, $fp, -420
	sw $t0, -3568($fp)
	li $t0, 0
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
	li $t0, 41887
	sw $t0, -3588($fp)
	addi $t0, $fp, -420
	sw $t0, -3592($fp)
	li $t0, 1
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
	li $t0, 6131
	sw $t0, -3612($fp)
	addi $t0, $fp, -420
	sw $t0, -3616($fp)
	li $t0, 2
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
	li $t0, 13075
	sw $t0, -3636($fp)
	addi $t0, $fp, -420
	sw $t0, -3640($fp)
	li $t0, 3
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3640($fp)
	lw $t1, -3648($fp)
	add $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -3636($fp)
	lw $t1, -3652($fp)
	sw $t0, 0($t1)
	lw $t0, -3652($fp)
	lw $t1, 0($t0)
	sw $t1, -3656($fp)
	li $t0, 2475
	sw $t0, -3660($fp)
	addi $t0, $fp, -420
	sw $t0, -3664($fp)
	li $t0, 4
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3664($fp)
	lw $t1, -3672($fp)
	add $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3660($fp)
	lw $t1, -3676($fp)
	sw $t0, 0($t1)
	lw $t0, -3676($fp)
	lw $t1, 0($t0)
	sw $t1, -3680($fp)
	li $t0, 26837
	sw $t0, -3684($fp)
	addi $t0, $fp, -420
	sw $t0, -3688($fp)
	li $t0, 5
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3688($fp)
	lw $t1, -3696($fp)
	add $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3684($fp)
	lw $t1, -3700($fp)
	sw $t0, 0($t1)
	lw $t0, -3700($fp)
	lw $t1, 0($t0)
	sw $t1, -3704($fp)
	li $t0, 11422
	sw $t0, -3708($fp)
	addi $t0, $fp, -420
	sw $t0, -3712($fp)
	li $t0, 6
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3712($fp)
	lw $t1, -3720($fp)
	add $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3708($fp)
	lw $t1, -3724($fp)
	sw $t0, 0($t1)
	lw $t0, -3724($fp)
	lw $t1, 0($t0)
	sw $t1, -3728($fp)
	li $t0, 32851
	sw $t0, -3732($fp)
	addi $t0, $fp, -420
	sw $t0, -3736($fp)
	li $t0, 7
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3736($fp)
	lw $t1, -3744($fp)
	add $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3732($fp)
	lw $t1, -3748($fp)
	sw $t0, 0($t1)
	lw $t0, -3748($fp)
	lw $t1, 0($t0)
	sw $t1, -3752($fp)
	li $t0, 17682
	sw $t0, -3756($fp)
	addi $t0, $fp, -420
	sw $t0, -3760($fp)
	li $t0, 8
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3760($fp)
	lw $t1, -3768($fp)
	add $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3756($fp)
	lw $t1, -3772($fp)
	sw $t0, 0($t1)
	lw $t0, -3772($fp)
	lw $t1, 0($t0)
	sw $t1, -3776($fp)
	li $t0, 35911
	sw $t0, -3780($fp)
	addi $t0, $fp, -420
	sw $t0, -3784($fp)
	li $t0, 9
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3784($fp)
	lw $t1, -3792($fp)
	add $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3780($fp)
	lw $t1, -3796($fp)
	sw $t0, 0($t1)
	lw $t0, -3796($fp)
	lw $t1, 0($t0)
	sw $t1, -3800($fp)
	li $t0, 28986
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -3812($fp)
	li $t0, 15129
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
	li $t0, 25417
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -3836($fp)
	li $t0, 32133
	sw $t0, -3840($fp)
	addi $t0, $fp, -456
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3844($fp)
	lw $t1, -3852($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3840($fp)
	lw $t1, -3856($fp)
	sw $t0, 0($t1)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	li $t0, 28543
	sw $t0, -3864($fp)
	addi $t0, $fp, -456
	sw $t0, -3868($fp)
	li $t0, 1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3868($fp)
	lw $t1, -3876($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3864($fp)
	lw $t1, -3880($fp)
	sw $t0, 0($t1)
	lw $t0, -3880($fp)
	lw $t1, 0($t0)
	sw $t1, -3884($fp)
	li $t0, 8210
	sw $t0, -3888($fp)
	addi $t0, $fp, -456
	sw $t0, -3892($fp)
	li $t0, 2
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3892($fp)
	lw $t1, -3900($fp)
	add $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3888($fp)
	lw $t1, -3904($fp)
	sw $t0, 0($t1)
	lw $t0, -3904($fp)
	lw $t1, 0($t0)
	sw $t1, -3908($fp)
	li $t0, 28480
	sw $t0, -3912($fp)
	addi $t0, $fp, -456
	sw $t0, -3916($fp)
	li $t0, 3
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3916($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3912($fp)
	lw $t1, -3928($fp)
	sw $t0, 0($t1)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	li $t0, 61286
	sw $t0, -3936($fp)
	addi $t0, $fp, -456
	sw $t0, -3940($fp)
	li $t0, 4
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3940($fp)
	lw $t1, -3948($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3936($fp)
	lw $t1, -3952($fp)
	sw $t0, 0($t1)
	lw $t0, -3952($fp)
	lw $t1, 0($t0)
	sw $t1, -3956($fp)
	li $t0, 27908
	sw $t0, -3960($fp)
	addi $t0, $fp, -456
	sw $t0, -3964($fp)
	li $t0, 5
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3964($fp)
	lw $t1, -3972($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3960($fp)
	lw $t1, -3976($fp)
	sw $t0, 0($t1)
	lw $t0, -3976($fp)
	lw $t1, 0($t0)
	sw $t1, -3980($fp)
	li $t0, 48785
	sw $t0, -3984($fp)
	addi $t0, $fp, -456
	sw $t0, -3988($fp)
	li $t0, 6
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3988($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -3984($fp)
	lw $t1, -4000($fp)
	sw $t0, 0($t1)
	lw $t0, -4000($fp)
	lw $t1, 0($t0)
	sw $t1, -4004($fp)
	li $t0, 64973
	sw $t0, -4008($fp)
	addi $t0, $fp, -456
	sw $t0, -4012($fp)
	li $t0, 7
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
	li $t0, 24529
	sw $t0, -4032($fp)
	addi $t0, $fp, -456
	sw $t0, -4036($fp)
	li $t0, 8
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
	li $t0, 61476
	sw $t0, -4056($fp)
	addi $t0, $fp, -484
	sw $t0, -4060($fp)
	li $t0, 0
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
	li $t0, 17182
	sw $t0, -4080($fp)
	addi $t0, $fp, -484
	sw $t0, -4084($fp)
	li $t0, 1
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
	li $t0, 41415
	sw $t0, -4104($fp)
	addi $t0, $fp, -484
	sw $t0, -4108($fp)
	li $t0, 2
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
	li $t0, 58154
	sw $t0, -4128($fp)
	addi $t0, $fp, -484
	sw $t0, -4132($fp)
	li $t0, 3
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
	li $t0, 5929
	sw $t0, -4152($fp)
	addi $t0, $fp, -484
	sw $t0, -4156($fp)
	li $t0, 4
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
	li $t0, 54099
	sw $t0, -4176($fp)
	addi $t0, $fp, -484
	sw $t0, -4180($fp)
	li $t0, 5
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
	li $t0, 46495
	sw $t0, -4200($fp)
	addi $t0, $fp, -484
	sw $t0, -4204($fp)
	li $t0, 6
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4204($fp)
	lw $t1, -4212($fp)
	add $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4200($fp)
	lw $t1, -4216($fp)
	sw $t0, 0($t1)
	lw $t0, -4216($fp)
	lw $t1, 0($t0)
	sw $t1, -4220($fp)
	li $t0, 31724
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	sw $t0, -4232($fp)
	li $t0, 1345
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	sw $t0, -4244($fp)
	li $t0, 54410
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	sw $t0, -4256($fp)
	li $t0, 8075
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	sw $t0, -4268($fp)
	li $t0, 7476
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	sw $t0, -4280($fp)
	li $t0, 1949
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	sw $t0, -4292($fp)
	li $t0, 10550
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -4304($fp)
	li $t0, 34314
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	sw $t0, -4316($fp)
	li $t0, 13371
	sw $t0, -4320($fp)
	addi $t0, $fp, -508
	sw $t0, -4324($fp)
	li $t0, 0
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4324($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4320($fp)
	lw $t1, -4336($fp)
	sw $t0, 0($t1)
	lw $t0, -4336($fp)
	lw $t1, 0($t0)
	sw $t1, -4340($fp)
	li $t0, 43401
	sw $t0, -4344($fp)
	addi $t0, $fp, -508
	sw $t0, -4348($fp)
	li $t0, 1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4348($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4344($fp)
	lw $t1, -4360($fp)
	sw $t0, 0($t1)
	lw $t0, -4360($fp)
	lw $t1, 0($t0)
	sw $t1, -4364($fp)
	li $t0, 51996
	sw $t0, -4368($fp)
	addi $t0, $fp, -508
	sw $t0, -4372($fp)
	li $t0, 2
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4372($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4368($fp)
	lw $t1, -4384($fp)
	sw $t0, 0($t1)
	lw $t0, -4384($fp)
	lw $t1, 0($t0)
	sw $t1, -4388($fp)
	li $t0, 49283
	sw $t0, -4392($fp)
	addi $t0, $fp, -508
	sw $t0, -4396($fp)
	li $t0, 3
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4396($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4392($fp)
	lw $t1, -4408($fp)
	sw $t0, 0($t1)
	lw $t0, -4408($fp)
	lw $t1, 0($t0)
	sw $t1, -4412($fp)
	li $t0, 6851
	sw $t0, -4416($fp)
	addi $t0, $fp, -508
	sw $t0, -4420($fp)
	li $t0, 4
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4420($fp)
	lw $t1, -4428($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4416($fp)
	lw $t1, -4432($fp)
	sw $t0, 0($t1)
	lw $t0, -4432($fp)
	lw $t1, 0($t0)
	sw $t1, -4436($fp)
	li $t0, 1589
	sw $t0, -4440($fp)
	addi $t0, $fp, -508
	sw $t0, -4444($fp)
	li $t0, 5
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4444($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4440($fp)
	lw $t1, -4456($fp)
	sw $t0, 0($t1)
	lw $t0, -4456($fp)
	lw $t1, 0($t0)
	sw $t1, -4460($fp)
	li $t0, 9164
	sw $t0, -4464($fp)
	addi $t0, $fp, -512
	sw $t0, -4468($fp)
	li $t0, 0
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4468($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4464($fp)
	lw $t1, -4480($fp)
	sw $t0, 0($t1)
	lw $t0, -4480($fp)
	lw $t1, 0($t0)
	sw $t1, -4484($fp)
	li $t0, 38985
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	sw $t0, -4496($fp)
	li $t0, 30133
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	sw $t0, -4508($fp)
	li $t0, 17374
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	sw $t0, -4520($fp)
	li $t0, 1929
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	sw $t0, -4532($fp)
	li $t0, 25883
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	sw $t0, -4544($fp)
	li $t0, 45282
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	sw $t0, -4556($fp)
	li $t0, 50715
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	sw $t0, -4568($fp)
	li $t0, 25320
	sw $t0, -4572($fp)
	addi $t0, $fp, -532
	sw $t0, -4576($fp)
	li $t0, 0
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4576($fp)
	lw $t1, -4584($fp)
	add $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4572($fp)
	lw $t1, -4588($fp)
	sw $t0, 0($t1)
	lw $t0, -4588($fp)
	lw $t1, 0($t0)
	sw $t1, -4592($fp)
	li $t0, 4276
	sw $t0, -4596($fp)
	addi $t0, $fp, -532
	sw $t0, -4600($fp)
	li $t0, 1
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4600($fp)
	lw $t1, -4608($fp)
	add $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4596($fp)
	lw $t1, -4612($fp)
	sw $t0, 0($t1)
	lw $t0, -4612($fp)
	lw $t1, 0($t0)
	sw $t1, -4616($fp)
	li $t0, 46655
	sw $t0, -4620($fp)
	addi $t0, $fp, -532
	sw $t0, -4624($fp)
	li $t0, 2
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4624($fp)
	lw $t1, -4632($fp)
	add $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4620($fp)
	lw $t1, -4636($fp)
	sw $t0, 0($t1)
	lw $t0, -4636($fp)
	lw $t1, 0($t0)
	sw $t1, -4640($fp)
	li $t0, 42502
	sw $t0, -4644($fp)
	addi $t0, $fp, -532
	sw $t0, -4648($fp)
	li $t0, 3
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4648($fp)
	lw $t1, -4656($fp)
	add $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4644($fp)
	lw $t1, -4660($fp)
	sw $t0, 0($t1)
	lw $t0, -4660($fp)
	lw $t1, 0($t0)
	sw $t1, -4664($fp)
	li $t0, 45691
	sw $t0, -4668($fp)
	addi $t0, $fp, -532
	sw $t0, -4672($fp)
	li $t0, 4
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4672($fp)
	lw $t1, -4680($fp)
	add $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4668($fp)
	lw $t1, -4684($fp)
	sw $t0, 0($t1)
	lw $t0, -4684($fp)
	lw $t1, 0($t0)
	sw $t1, -4688($fp)
	li $t0, 39274
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	sw $t0, -4700($fp)
	li $t0, 48431
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	sw $t0, -4712($fp)
	li $t0, 34254
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	sw $t0, -4724($fp)
	li $t0, 20233
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	sw $t0, -4736($fp)
	li $t0, 14619
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	sw $t0, -4748($fp)
	li $t0, 35599
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	sw $t0, -4760($fp)
	li $t0, 9107
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	sw $t0, -4772($fp)
	li $t0, 22694
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	sw $t0, -4784($fp)
	li $t0, 43075
	sw $t0, -4788($fp)
	addi $t0, $fp, -556
	sw $t0, -4792($fp)
	li $t0, 0
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4792($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4788($fp)
	lw $t1, -4804($fp)
	sw $t0, 0($t1)
	lw $t0, -4804($fp)
	lw $t1, 0($t0)
	sw $t1, -4808($fp)
	li $t0, 11057
	sw $t0, -4812($fp)
	addi $t0, $fp, -556
	sw $t0, -4816($fp)
	li $t0, 1
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
	li $t0, 33244
	sw $t0, -4836($fp)
	addi $t0, $fp, -556
	sw $t0, -4840($fp)
	li $t0, 2
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
	li $t0, 11853
	sw $t0, -4860($fp)
	addi $t0, $fp, -556
	sw $t0, -4864($fp)
	li $t0, 3
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
	li $t0, 24428
	sw $t0, -4884($fp)
	addi $t0, $fp, -556
	sw $t0, -4888($fp)
	li $t0, 4
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
	li $t0, 11110
	sw $t0, -4908($fp)
	addi $t0, $fp, -556
	sw $t0, -4912($fp)
	li $t0, 5
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4912($fp)
	lw $t1, -4920($fp)
	add $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4908($fp)
	lw $t1, -4924($fp)
	sw $t0, 0($t1)
	lw $t0, -4924($fp)
	lw $t1, 0($t0)
	sw $t1, -4928($fp)
	li $t0, 63850
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	sw $t0, -4940($fp)
	li $t0, 8175
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	sw $t0, -4952($fp)
	li $t0, 17961
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	sw $t0, -4964($fp)
	li $t0, 65439
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	sw $t0, -4976($fp)
	li $t0, 17340
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	sw $t0, -4988($fp)
	li $t0, 56946
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	sw $t0, -5000($fp)
	li $t0, 30036
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	sw $t0, -5012($fp)
	li $t0, 34714
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	sw $t0, -5024($fp)
	li $t0, 58876
	sw $t0, -5028($fp)
	addi $t0, $fp, -584
	sw $t0, -5032($fp)
	li $t0, 0
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5032($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5028($fp)
	lw $t1, -5044($fp)
	sw $t0, 0($t1)
	lw $t0, -5044($fp)
	lw $t1, 0($t0)
	sw $t1, -5048($fp)
	li $t0, 55919
	sw $t0, -5052($fp)
	addi $t0, $fp, -584
	sw $t0, -5056($fp)
	li $t0, 1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5056($fp)
	lw $t1, -5064($fp)
	add $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t0, -5052($fp)
	lw $t1, -5068($fp)
	sw $t0, 0($t1)
	lw $t0, -5068($fp)
	lw $t1, 0($t0)
	sw $t1, -5072($fp)
	li $t0, 14461
	sw $t0, -5076($fp)
	addi $t0, $fp, -584
	sw $t0, -5080($fp)
	li $t0, 2
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5080($fp)
	lw $t1, -5088($fp)
	add $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5076($fp)
	lw $t1, -5092($fp)
	sw $t0, 0($t1)
	lw $t0, -5092($fp)
	lw $t1, 0($t0)
	sw $t1, -5096($fp)
	li $t0, 44055
	sw $t0, -5100($fp)
	addi $t0, $fp, -584
	sw $t0, -5104($fp)
	li $t0, 3
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -5104($fp)
	lw $t1, -5112($fp)
	add $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t0, -5100($fp)
	lw $t1, -5116($fp)
	sw $t0, 0($t1)
	lw $t0, -5116($fp)
	lw $t1, 0($t0)
	sw $t1, -5120($fp)
	li $t0, 15703
	sw $t0, -5124($fp)
	addi $t0, $fp, -584
	sw $t0, -5128($fp)
	li $t0, 4
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -5128($fp)
	lw $t1, -5136($fp)
	add $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5124($fp)
	lw $t1, -5140($fp)
	sw $t0, 0($t1)
	lw $t0, -5140($fp)
	lw $t1, 0($t0)
	sw $t1, -5144($fp)
	li $t0, 18737
	sw $t0, -5148($fp)
	addi $t0, $fp, -584
	sw $t0, -5152($fp)
	li $t0, 5
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -5152($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t0, -5148($fp)
	lw $t1, -5164($fp)
	sw $t0, 0($t1)
	lw $t0, -5164($fp)
	lw $t1, 0($t0)
	sw $t1, -5168($fp)
	li $t0, 25174
	sw $t0, -5172($fp)
	addi $t0, $fp, -584
	sw $t0, -5176($fp)
	li $t0, 6
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t0, -5176($fp)
	lw $t1, -5184($fp)
	add $t0, $t0, $t1
	sw $t0, -5188($fp)
	lw $t0, -5172($fp)
	lw $t1, -5188($fp)
	sw $t0, 0($t1)
	lw $t0, -5188($fp)
	lw $t1, 0($t0)
	sw $t1, -5192($fp)
	li $t0, 58205
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	sw $t0, -5204($fp)
	li $t0, 64428
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	sw $t0, -5216($fp)
	li $t0, 64448
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	sw $t0, -5228($fp)
	li $t0, 41100
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	sw $t0, -5240($fp)
	li $t0, 33146
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	sw $t0, -5268($fp)
	li $t0, 19145
	sw $t0, -5272($fp)
	addi $t0, $fp, -5256
	sw $t0, -5276($fp)
	li $t0, 0
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t0, -5276($fp)
	lw $t1, -5284($fp)
	add $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5272($fp)
	lw $t1, -5288($fp)
	sw $t0, 0($t1)
	lw $t0, -5288($fp)
	lw $t1, 0($t0)
	sw $t1, -5292($fp)
	li $t0, 55719
	sw $t0, -5296($fp)
	addi $t0, $fp, -5256
	sw $t0, -5300($fp)
	li $t0, 1
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5300($fp)
	lw $t1, -5308($fp)
	add $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5296($fp)
	lw $t1, -5312($fp)
	sw $t0, 0($t1)
	lw $t0, -5312($fp)
	lw $t1, 0($t0)
	sw $t1, -5316($fp)
	li $t0, 3209
	sw $t0, -5320($fp)
	addi $t0, $fp, -5256
	sw $t0, -5324($fp)
	li $t0, 2
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5324($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5320($fp)
	lw $t1, -5336($fp)
	sw $t0, 0($t1)
	lw $t0, -5336($fp)
	lw $t1, 0($t0)
	sw $t1, -5340($fp)
	li $t0, 28253
	sw $t0, -5344($fp)
	addi $t0, $fp, -5256
	sw $t0, -5348($fp)
	li $t0, 3
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5348($fp)
	lw $t1, -5356($fp)
	add $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5344($fp)
	lw $t1, -5360($fp)
	sw $t0, 0($t1)
	lw $t0, -5360($fp)
	lw $t1, 0($t0)
	sw $t1, -5364($fp)
	li $t0, 12877
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	sw $t0, -5376($fp)
	li $t0, 46284
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	sw $t0, -5388($fp)
	li $t0, 39310
	sw $t0, -5428($fp)
	addi $t0, $fp, -5424
	sw $t0, -5432($fp)
	li $t0, 0
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -5432($fp)
	lw $t1, -5440($fp)
	add $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5428($fp)
	lw $t1, -5444($fp)
	sw $t0, 0($t1)
	lw $t0, -5444($fp)
	lw $t1, 0($t0)
	sw $t1, -5448($fp)
	li $t0, 46122
	sw $t0, -5452($fp)
	addi $t0, $fp, -5424
	sw $t0, -5456($fp)
	li $t0, 1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5456($fp)
	lw $t1, -5464($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5452($fp)
	lw $t1, -5468($fp)
	sw $t0, 0($t1)
	lw $t0, -5468($fp)
	lw $t1, 0($t0)
	sw $t1, -5472($fp)
	li $t0, 58138
	sw $t0, -5476($fp)
	addi $t0, $fp, -5424
	sw $t0, -5480($fp)
	li $t0, 2
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5480($fp)
	lw $t1, -5488($fp)
	add $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5476($fp)
	lw $t1, -5492($fp)
	sw $t0, 0($t1)
	lw $t0, -5492($fp)
	lw $t1, 0($t0)
	sw $t1, -5496($fp)
	li $t0, 63738
	sw $t0, -5500($fp)
	addi $t0, $fp, -5424
	sw $t0, -5504($fp)
	li $t0, 3
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5504($fp)
	lw $t1, -5512($fp)
	add $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5500($fp)
	lw $t1, -5516($fp)
	sw $t0, 0($t1)
	lw $t0, -5516($fp)
	lw $t1, 0($t0)
	sw $t1, -5520($fp)
	li $t0, 57232
	sw $t0, -5524($fp)
	addi $t0, $fp, -5424
	sw $t0, -5528($fp)
	li $t0, 4
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
	li $t0, 56452
	sw $t0, -5548($fp)
	addi $t0, $fp, -5424
	sw $t0, -5552($fp)
	li $t0, 5
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
	li $t0, 6378
	sw $t0, -5572($fp)
	addi $t0, $fp, -5424
	sw $t0, -5576($fp)
	li $t0, 6
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $t0, -5576($fp)
	lw $t1, -5584($fp)
	add $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5572($fp)
	lw $t1, -5588($fp)
	sw $t0, 0($t1)
	lw $t0, -5588($fp)
	lw $t1, 0($t0)
	sw $t1, -5592($fp)
	li $t0, 9657
	sw $t0, -5596($fp)
	addi $t0, $fp, -5424
	sw $t0, -5600($fp)
	li $t0, 7
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5600($fp)
	lw $t1, -5608($fp)
	add $t0, $t0, $t1
	sw $t0, -5612($fp)
	lw $t0, -5596($fp)
	lw $t1, -5612($fp)
	sw $t0, 0($t1)
	lw $t0, -5612($fp)
	lw $t1, 0($t0)
	sw $t1, -5616($fp)
	li $t0, 56355
	sw $t0, -5620($fp)
	addi $t0, $fp, -5424
	sw $t0, -5624($fp)
	li $t0, 8
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5624($fp)
	lw $t1, -5632($fp)
	add $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5620($fp)
	lw $t1, -5636($fp)
	sw $t0, 0($t1)
	lw $t0, -5636($fp)
	lw $t1, 0($t0)
	sw $t1, -5640($fp)
	li $t0, 23718
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	sw $t0, -5652($fp)
	li $t0, 1068
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	sw $t0, -5664($fp)
	li $t0, 20856
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	sw $t0, -5676($fp)
	li $t0, 58432
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	sw $t0, -5688($fp)
label121:
	lw $t0, -4744($fp)
	sw $t0, -5692($fp)
	lw $t1, -5692($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label124
label124:
	li $t0, 0
	sw $t0, -5696($fp)
	li $t0, 0
	sw $t0, -5700($fp)
	lw $t0, -2584($fp)
	sw $t0, -5704($fp)
	lw $t1, -5704($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label127:
	li $t0, 1
	sw $t0, -5700($fp)
label128:
	lw $t0, -5660($fp)
	sw $t0, -5708($fp)
	lw $t1, -5700($fp)
	lw $t2, -5708($fp)
	bgt $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -5696($fp)
label126:
	li $t0, 0
	sw $t0, -5712($fp)
	li $t0, 59944
	sw $t0, -5716($fp)
	li $t0, 11239
	sw $t0, -5720($fp)
	lw $t1, -5716($fp)
	lw $t2, -5720($fp)
	blt $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -5712($fp)
label130:
	lw $t1, -5696($fp)
	lw $t2, -5712($fp)
	bne $t1, $t2, label122
	j label123
label122:
label131:
	addi $t0, $fp, -280
	sw $t0, -5724($fp)
	li $t0, 7357
	sw $t0, -5728($fp)
	lw $t0, -1408($fp)
	sw $t0, -5732($fp)
	lw $t0, -5728($fp)
	lw $t1, -5732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5736($fp)
	li $t0, 38463
	sw $t0, -5740($fp)
	lw $t0, -5736($fp)
	lw $t1, -5740($fp)
	sub $t0, $t0, $t1
	sw $t0, -5744($fp)
	li $t0, 4
	lw $t1, -5744($fp)
	mul $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	lw $t1, -5724($fp)
	add $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5752($fp)
	lw $t1, 0($t0)
	sw $t1, -5756($fp)
	lw $t0, -2416($fp)
	sw $t0, -5760($fp)
	li $t0, 0
	lw $t1, -5760($fp)
	sub $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5756($fp)
	lw $t1, -5764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5768($fp)
	lw $t1, -5768($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 26943
	sw $t0, -5772($fp)
	li $t0, 26094
	sw $t0, -5776($fp)
	li $t0, 63637
	sw $t0, -5780($fp)
	lw $t0, -5776($fp)
	lw $t1, -5780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5784($fp)
	li $t0, 0
	lw $t1, -5784($fp)
	sub $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t1, -5772($fp)
	lw $t2, -5788($fp)
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 0
	sw $t0, -5792($fp)
	lw $t0, -4720($fp)
	sw $t0, -5796($fp)
	lw $t1, -5796($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label137:
	li $t0, 1
	sw $t0, -5792($fp)
label138:
	li $t0, 0
	sw $t0, -5800($fp)
	li $t0, 24986
	sw $t0, -5804($fp)
	lw $t1, -5804($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label142:
	lw $t0, -3064($fp)
	sw $t0, -5808($fp)
	lw $t1, -5808($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label141
label141:
	li $t0, 62550
	sw $t0, -5812($fp)
	lw $t1, -5812($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -5800($fp)
label140:
	li $t0, 0
	sw $t0, -5816($fp)
	lw $t0, -3400($fp)
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -5816($fp)
label144:
	li $t0, 0
	sw $t0, -5824($fp)
	li $t0, 0
	sw $t0, -5828($fp)
	li $t0, 19612
	sw $t0, -5832($fp)
	lw $t0, -5648($fp)
	sw $t0, -5836($fp)
	lw $t1, -5832($fp)
	lw $t2, -5836($fp)
	beq $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -5828($fp)
label148:
	lw $t0, -5020($fp)
	sw $t0, -5840($fp)
	lw $t1, -5828($fp)
	lw $t2, -5840($fp)
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -5824($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -5800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5844($fp)
	addi $sp, $sp, 16
	lw $t0, -5792($fp)
	lw $t1, -5844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	lw $t0, -1876($fp)
	sw $t0, -5856($fp)
	lw $t1, -5856($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -5852($fp)
label150:
	li $t0, 0
	lw $t1, -5852($fp)
	sub $t0, $t0, $t1
	sw $t0, -5860($fp)
	li $t0, 60713
	sw $t0, -5864($fp)
	j label136
label135:
	li $t0, 0
	sw $t0, -5868($fp)
	li $t0, 44360
	sw $t0, -5872($fp)
	li $t0, 34692
	sw $t0, -5876($fp)
	lw $t1, -5872($fp)
	lw $t2, -5876($fp)
	beq $t1, $t2, label156
	j label155
label156:
	lw $t0, -3832($fp)
	sw $t0, -5880($fp)
	lw $t1, -5880($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -5868($fp)
label155:
	li $t0, 0
	sw $t0, -5884($fp)
	li $t0, 0
	sw $t0, -5888($fp)
	lw $t0, -5264($fp)
	sw $t0, -5892($fp)
	lw $t0, -2188($fp)
	sw $t0, -5896($fp)
	lw $t0, -5892($fp)
	lw $t1, -5896($fp)
	sub $t0, $t0, $t1
	sw $t0, -5900($fp)
	li $t0, 18186
	sw $t0, -5904($fp)
	lw $t1, -5900($fp)
	lw $t2, -5904($fp)
	bgt $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -5888($fp)
label160:
	li $t0, 0
	sw $t0, -5908($fp)
	li $t0, 0
	sw $t0, -5912($fp)
	li $t0, 42090
	sw $t0, -5916($fp)
	lw $t0, -5684($fp)
	sw $t0, -5920($fp)
	lw $t1, -5916($fp)
	lw $t2, -5920($fp)
	ble $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -5912($fp)
label164:
	lw $t0, -5672($fp)
	sw $t0, -5924($fp)
	lw $t1, -5912($fp)
	lw $t2, -5924($fp)
	beq $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -5908($fp)
label162:
	lw $t0, -1360($fp)
	sw $t0, -5928($fp)
	addi $sp, $sp, -4
	lw $t0, -5888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5932($fp)
	addi $sp, $sp, 16
	lw $t0, -4300($fp)
	sw $t0, -5936($fp)
	lw $t1, -5932($fp)
	lw $t2, -5936($fp)
	blt $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -5884($fp)
label158:
	li $t0, 0
	sw $t0, -5940($fp)
	li $t0, 0
	sw $t0, -5944($fp)
	lw $t0, -724($fp)
	sw $t0, -5948($fp)
	li $t0, 63774
	sw $t0, -5952($fp)
	lw $t1, -5948($fp)
	lw $t2, -5952($fp)
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -5944($fp)
label168:
	lw $t0, -4492($fp)
	sw $t0, -5956($fp)
	lw $t1, -5944($fp)
	lw $t2, -5956($fp)
	beq $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -5940($fp)
label166:
	li $t0, 0
	sw $t0, -5960($fp)
	li $t0, 0
	sw $t0, -5964($fp)
	lw $t0, -4300($fp)
	sw $t0, -5968($fp)
	lw $t1, -5968($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -5964($fp)
label172:
	li $t0, 44412
	sw $t0, -5972($fp)
	lw $t1, -5964($fp)
	lw $t2, -5972($fp)
	beq $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -5960($fp)
label170:
	lw $t0, -5648($fp)
	sw $t0, -5976($fp)
	lw $t0, -5200($fp)
	sw $t0, -5980($fp)
	lw $t0, -5976($fp)
	lw $t1, -5980($fp)
	mul $t0, $t0, $t1
	sw $t0, -5984($fp)
	li $t0, 61341
	sw $t0, -5988($fp)
	lw $t0, -5984($fp)
	lw $t1, -5988($fp)
	mul $t0, $t0, $t1
	sw $t0, -5992($fp)
	li $t0, 50896
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	sw $t0, -6000($fp)
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6004($fp)
	addi $sp, $sp, 16
	li $t0, 16159
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -6012($fp)
	li $t0, 0
	sw $t0, -6016($fp)
	lw $t0, -1072($fp)
	sw $t0, -6020($fp)
	lw $t1, -6020($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label175
label175:
	lw $t0, -4756($fp)
	sw $t0, -6024($fp)
	lw $t1, -6024($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -6016($fp)
label174:
	addi $sp, $sp, -4
	lw $t0, -6004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6028($fp)
	addi $sp, $sp, 16
	lw $t0, -3400($fp)
	sw $t0, -6032($fp)
	lw $t0, -6028($fp)
	lw $t1, -6032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6036($fp)
	addi $sp, $sp, -4
	lw $t0, -5884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6040($fp)
	addi $sp, $sp, 16
	lw $t0, -664($fp)
	sw $t0, -6044($fp)
	lw $t0, -6040($fp)
	lw $t1, -6044($fp)
	mul $t0, $t0, $t1
	sw $t0, -6048($fp)
	li $t0, 0
	sw $t0, -6052($fp)
	lw $t0, -2776($fp)
	sw $t0, -6056($fp)
	lw $t1, -6056($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label178
label178:
	li $t0, 58132
	sw $t0, -6060($fp)
	lw $t1, -6060($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -6052($fp)
label177:
	addi $sp, $sp, -4
	lw $t0, -5868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6064($fp)
	addi $sp, $sp, 16
	lw $t1, -6064($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	lw $t0, -3004($fp)
	sw $t0, -6068($fp)
	li $t0, 16427
	sw $t0, -6072($fp)
	li $t0, 0
	lw $t1, -6072($fp)
	sub $t0, $t0, $t1
	sw $t0, -6076($fp)
	li $t0, 22767
	sw $t0, -6080($fp)
	li $t0, 45713
	sw $t0, -6084($fp)
	lw $t0, -6080($fp)
	lw $t1, -6084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6088($fp)
	lw $t0, -3004($fp)
	sw $t0, -6092($fp)
	lw $t0, -6088($fp)
	lw $t1, -6092($fp)
	mul $t0, $t0, $t1
	sw $t0, -6096($fp)
	li $t0, 16389
	sw $t0, -6100($fp)
	li $t0, 36056
	sw $t0, -6104($fp)
	lw $t0, -6100($fp)
	lw $t1, -6104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6108($fp)
	li $t0, 25608
	sw $t0, -6112($fp)
	lw $t0, -6108($fp)
	lw $t1, -6112($fp)
	sub $t0, $t0, $t1
	sw $t0, -6116($fp)
	addi $sp, $sp, -4
	lw $t0, -6076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6120($fp)
	addi $sp, $sp, 16
	lw $t0, -6068($fp)
	lw $t1, -6120($fp)
	add $t0, $t0, $t1
	sw $t0, -6124($fp)
	j label153
label152:
label179:
	li $t0, 0
	sw $t0, -6128($fp)
	addi $t0, $fp, -5424
	sw $t0, -6132($fp)
	lw $t0, -2404($fp)
	sw $t0, -6136($fp)
	li $t0, 4
	lw $t1, -6136($fp)
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	lw $t1, -6132($fp)
	add $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	lw $t1, 0($t0)
	sw $t1, -6148($fp)
	lw $t1, -6148($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -6128($fp)
label183:
	li $t0, 46782
	sw $t0, -6152($fp)
	lw $t0, -6128($fp)
	lw $t1, -6152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6156($fp)
	lw $t0, -4720($fp)
	sw $t0, -6160($fp)
	li $t0, 0
	sw $t0, -6164($fp)
	li $t0, 41189
	sw $t0, -6168($fp)
	lw $t0, -4696($fp)
	sw $t0, -6172($fp)
	lw $t0, -6168($fp)
	lw $t1, -6172($fp)
	mul $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t1, -6176($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label186
label186:
	lw $t0, -4516($fp)
	sw $t0, -6180($fp)
	lw $t1, -6180($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -6164($fp)
label185:
	li $t0, 0
	sw $t0, -6184($fp)
	li $t0, 0
	sw $t0, -6188($fp)
	li $t0, 37283
	sw $t0, -6192($fp)
	li $t0, 39381
	sw $t0, -6196($fp)
	lw $t1, -6192($fp)
	lw $t2, -6196($fp)
	beq $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -6188($fp)
label190:
	lw $t0, -688($fp)
	sw $t0, -6200($fp)
	lw $t1, -6188($fp)
	lw $t2, -6200($fp)
	beq $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -6184($fp)
label188:
	addi $sp, $sp, -4
	lw $t0, -6160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6204($fp)
	addi $sp, $sp, 16
	lw $t0, -6156($fp)
	lw $t1, -6204($fp)
	mul $t0, $t0, $t1
	sw $t0, -6208($fp)
	addi $t0, $fp, -5256
	sw $t0, -6212($fp)
	li $t0, 3
	sw $t0, -6216($fp)
	li $t0, 4
	lw $t1, -6216($fp)
	mul $t0, $t0, $t1
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	lw $t1, -6212($fp)
	add $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	lw $t1, 0($t0)
	sw $t1, -6228($fp)
	lw $t0, -6208($fp)
	lw $t1, -6228($fp)
	mul $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t1, -6232($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	addi $t0, $fp, -168
	sw $t0, -6236($fp)
	li $t0, 2
	sw $t0, -6240($fp)
	li $t0, 4
	lw $t1, -6240($fp)
	mul $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	lw $t1, -6236($fp)
	add $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	lw $t1, 0($t0)
	sw $t1, -6252($fp)
	li $t0, 0
	lw $t1, -6252($fp)
	sub $t0, $t0, $t1
	sw $t0, -6256($fp)
	lw $t0, -1360($fp)
	sw $t0, -6260($fp)
	lw $t0, -6256($fp)
	lw $t1, -6260($fp)
	add $t0, $t0, $t1
	sw $t0, -6264($fp)
	j label179
label181:
label153:
label136:
	j label131
label133:
	j label121
label123:
	lw $t0, -4300($fp)
	sw $t0, -6268($fp)
	li $t0, 0
	lw $t1, -6268($fp)
	sub $t0, $t0, $t1
	sw $t0, -6272($fp)
	li $t0, 0
	lw $t1, -6272($fp)
	sub $t0, $t0, $t1
	sw $t0, -6276($fp)
	li $t0, 0
	lw $t1, -6276($fp)
	sub $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t1, -6280($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 0
	sw $t0, -6284($fp)
	lw $t0, -4516($fp)
	sw $t0, -6288($fp)
	lw $t1, -6288($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label194:
	li $t0, 1
	sw $t0, -6284($fp)
label195:
	li $t0, 7297
	sw $t0, -6292($fp)
	lw $t0, -6284($fp)
	lw $t1, -6292($fp)
	add $t0, $t0, $t1
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	sw $t0, -6300($fp)
	lw $ra, -4($fp)
	lw $v0, -6300($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label192:
	li $t0, 12218
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	sw $t0, -6312($fp)
	li $t0, 29542
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	sw $t0, -6324($fp)
	li $t0, 32284
	sw $t0, -6328($fp)
	lw $t0, -6328($fp)
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	sw $t0, -6336($fp)
	li $t0, 9232
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	sw $t0, -6348($fp)
	li $t0, 24719
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	sw $t0, -6360($fp)
	li $t0, 24880
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	sw $t0, -6372($fp)
	li $t0, 25391
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	sw $t0, -6384($fp)
	li $t0, 10080
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	sw $t0, -6396($fp)
	li $t0, 20686
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	sw $t0, -6408($fp)
	li $t0, 4268
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	sw $t0, -6420($fp)
	li $t0, 8318
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	sw $t0, -6432($fp)
	li $t0, 0
	sw $t0, -6436($fp)
	li $t0, 0
	sw $t0, -6440($fp)
	li $t0, 0
	sw $t0, -6444($fp)
	lw $t0, -4732($fp)
	sw $t0, -6448($fp)
	li $t0, 31932
	sw $t0, -6452($fp)
	lw $t1, -6448($fp)
	lw $t2, -6452($fp)
	bge $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -6444($fp)
label201:
	lw $t0, -4984($fp)
	sw $t0, -6456($fp)
	lw $t1, -6444($fp)
	lw $t2, -6456($fp)
	beq $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -6440($fp)
label199:
	li $t0, 22454
	sw $t0, -6460($fp)
	li $t0, 52678
	sw $t0, -6464($fp)
	lw $t0, -6460($fp)
	lw $t1, -6464($fp)
	mul $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t0, -2752($fp)
	sw $t0, -6472($fp)
	lw $t0, -6468($fp)
	lw $t1, -6472($fp)
	add $t0, $t0, $t1
	sw $t0, -6476($fp)
	li $t0, 0
	sw $t0, -6480($fp)
	lw $t0, -2740($fp)
	sw $t0, -6484($fp)
	li $t0, 62776
	sw $t0, -6488($fp)
	lw $t0, -6484($fp)
	lw $t1, -6488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6492($fp)
	lw $t1, -6492($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label204
label204:
	lw $t0, -1708($fp)
	sw $t0, -6496($fp)
	lw $t1, -6496($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -6480($fp)
label203:
	addi $sp, $sp, -4
	lw $t0, -6440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6500($fp)
	addi $sp, $sp, 16
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label196:
	li $t0, 1
	sw $t0, -6436($fp)
label197:
	li $t0, 0
	sw $t0, -6504($fp)
	lw $t0, -2764($fp)
	sw $t0, -6508($fp)
	li $t0, 38843
	sw $t0, -6512($fp)
	lw $t0, -6508($fp)
	lw $t1, -6512($fp)
	add $t0, $t0, $t1
	sw $t0, -6516($fp)
	li $t0, 0
	sw $t0, -6520($fp)
	li $t0, 0
	sw $t0, -6524($fp)
	li $t0, 61610
	sw $t0, -6528($fp)
	lw $t0, -3016($fp)
	sw $t0, -6532($fp)
	lw $t1, -6528($fp)
	lw $t2, -6532($fp)
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -6524($fp)
label211:
	li $t0, 3375
	sw $t0, -6536($fp)
	lw $t1, -6524($fp)
	lw $t2, -6536($fp)
	beq $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -6520($fp)
label209:
	lw $t0, -688($fp)
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -6544($fp)
	li $t0, 0
	sw $t0, -6548($fp)
	li $t0, 0
	sw $t0, -6552($fp)
	lw $t0, -6404($fp)
	sw $t0, -6556($fp)
	li $t0, 23198
	sw $t0, -6560($fp)
	lw $t1, -6556($fp)
	lw $t2, -6560($fp)
	bge $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -6552($fp)
label215:
	li $t0, 57540
	sw $t0, -6564($fp)
	lw $t1, -6552($fp)
	lw $t2, -6564($fp)
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -6548($fp)
label213:
	addi $sp, $sp, -4
	lw $t0, -6520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6568($fp)
	addi $sp, $sp, 16
	lw $t0, -6516($fp)
	lw $t1, -6568($fp)
	sub $t0, $t0, $t1
	sw $t0, -6572($fp)
	li $t0, 0
	sw $t0, -6576($fp)
	li $t0, 8431
	sw $t0, -6580($fp)
	lw $t1, -6580($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -6576($fp)
label217:
	lw $t1, -6572($fp)
	lw $t2, -6576($fp)
	blt $t1, $t2, label205
	j label207
label207:
	li $t0, 0
	sw $t0, -6584($fp)
	lw $t0, -1120($fp)
	sw $t0, -6588($fp)
	lw $t1, -6588($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label218:
	li $t0, 1
	sw $t0, -6584($fp)
label219:
	li $t0, 42559
	sw $t0, -6592($fp)
	lw $t0, -6416($fp)
	sw $t0, -6596($fp)
	lw $t0, -6592($fp)
	lw $t1, -6596($fp)
	mul $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t1, -6584($fp)
	lw $t2, -6600($fp)
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -6504($fp)
label206:
	lw $t0, 12($fp)
	sw $t0, -6604($fp)
	li $t0, 0
	sw $t0, -6608($fp)
	lw $t0, -2416($fp)
	sw $t0, -6612($fp)
	li $t0, 0
	lw $t1, -6612($fp)
	sub $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t1, -6616($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label225
label225:
	lw $t0, -2176($fp)
	sw $t0, -6620($fp)
	lw $t1, -6620($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -6608($fp)
label224:
	li $t0, 0
	sw $t0, -6624($fp)
	lw $t0, -6428($fp)
	sw $t0, -6628($fp)
	li $t0, 50157
	sw $t0, -6632($fp)
	lw $t0, -6628($fp)
	lw $t1, -6632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6636($fp)
	lw $t0, -3004($fp)
	sw $t0, -6640($fp)
	lw $t1, -6636($fp)
	lw $t2, -6640($fp)
	beq $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -6624($fp)
label227:
	addi $sp, $sp, -4
	lw $t0, -6604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6644($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6644($fp)
	sub $t0, $t0, $t1
	sw $t0, -6648($fp)
	li $t0, 0
	sw $t0, -6652($fp)
	addi $t0, $fp, -236
	sw $t0, -6656($fp)
	li $t0, 3
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
	lw $t0, -5384($fp)
	sw $t0, -6676($fp)
	lw $t1, -6672($fp)
	lw $t2, -6676($fp)
	beq $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -6652($fp)
label229:
	li $t0, 0
	sw $t0, -6680($fp)
	li $t0, 4905
	sw $t0, -6684($fp)
	lw $t0, -688($fp)
	sw $t0, -6688($fp)
	lw $t0, -6684($fp)
	lw $t1, -6688($fp)
	add $t0, $t0, $t1
	sw $t0, -6692($fp)
	li $t0, 52145
	sw $t0, -6696($fp)
	lw $t0, -6692($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6700($fp)
	li $t0, 0
	sw $t0, -6704($fp)
	lw $t0, -2212($fp)
	sw $t0, -6708($fp)
	li $t0, 38632
	sw $t0, -6712($fp)
	lw $t1, -6708($fp)
	lw $t2, -6712($fp)
	blt $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -6704($fp)
label233:
	li $t0, 63144
	sw $t0, -6716($fp)
	li $t0, 1
	sw $t0, -6720($fp)
	lw $t0, -6716($fp)
	lw $t1, -6720($fp)
	mul $t0, $t0, $t1
	sw $t0, -6724($fp)
	addi $sp, $sp, -4
	lw $t0, -6700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6728($fp)
	addi $sp, $sp, 16
	li $t0, 28702
	sw $t0, -6732($fp)
	lw $t0, -2188($fp)
	sw $t0, -6736($fp)
	lw $t0, -6732($fp)
	lw $t1, -6736($fp)
	sub $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -2200($fp)
	sw $t0, -6744($fp)
	lw $t0, -6740($fp)
	lw $t1, -6744($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	li $t0, 16405
	sw $t0, -6752($fp)
	li $t0, 25810
	sw $t0, -6756($fp)
	lw $t0, -6752($fp)
	lw $t1, -6756($fp)
	mul $t0, $t0, $t1
	sw $t0, -6760($fp)
	li $t0, 0
	lw $t1, -6760($fp)
	sub $t0, $t0, $t1
	sw $t0, -6764($fp)
	addi $sp, $sp, -4
	lw $t0, -6728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6768($fp)
	addi $sp, $sp, 16
	lw $t1, -6768($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label230
label230:
	li $t0, 1
	sw $t0, -6680($fp)
label231:
	li $t0, 0
	sw $t0, -6772($fp)
	li $t0, 45715
	sw $t0, -6776($fp)
	lw $t1, -6776($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -6772($fp)
label235:
	addi $sp, $sp, -4
	lw $t0, -6652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6772($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6780($fp)
	addi $sp, $sp, 16
	lw $t1, -6648($fp)
	lw $t2, -6780($fp)
	beq $t1, $t2, label220
	j label221
label220:
	li $t0, 0
	sw $t0, -6784($fp)
	addi $t0, $fp, -16
	sw $t0, -6788($fp)
	lw $t0, -2572($fp)
	sw $t0, -6792($fp)
	li $t0, 4
	lw $t1, -6792($fp)
	mul $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	lw $t1, -6788($fp)
	add $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	lw $t1, 0($t0)
	sw $t1, -6804($fp)
	lw $t0, -2584($fp)
	sw $t0, -6808($fp)
	lw $t0, -6804($fp)
	lw $t1, -6808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6812($fp)
	li $t0, 0
	sw $t0, -6816($fp)
	lw $t0, -1708($fp)
	sw $t0, -6820($fp)
	lw $t1, -6820($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label242
label242:
	li $t0, 62070
	sw $t0, -6824($fp)
	lw $t1, -6824($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label241
label241:
	lw $t0, -1708($fp)
	sw $t0, -6828($fp)
	lw $t1, -6828($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -6816($fp)
label240:
	li $t0, 0
	sw $t0, -6832($fp)
	li $t0, 61377
	sw $t0, -6836($fp)
	lw $t1, -6836($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label246
label246:
	li $t0, 27358
	sw $t0, -6840($fp)
	lw $t1, -6840($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label245
label245:
	lw $t0, -2560($fp)
	sw $t0, -6844($fp)
	lw $t1, -6844($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -6832($fp)
label244:
	addi $sp, $sp, -4
	lw $t0, -6812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6832($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6848($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6852($fp)
	li $t0, 21232
	sw $t0, -6856($fp)
	li $t0, 0
	lw $t1, -6856($fp)
	sub $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t1, -6860($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label247:
	li $t0, 1
	sw $t0, -6852($fp)
label248:
	lw $t0, -6848($fp)
	lw $t1, -6852($fp)
	mul $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t1, -6864($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label238
label238:
	li $t0, 37438
	sw $t0, -6868($fp)
	lw $t1, -6868($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label236:
	li $t0, 1
	sw $t0, -6784($fp)
label237:
	j label222
label221:
	li $t0, 0
	sw $t0, -6872($fp)
	li $t0, 0
	sw $t0, -6876($fp)
	li $t0, 17220
	sw $t0, -6880($fp)
	lw $t1, -6880($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label251
label251:
	li $t0, 1
	sw $t0, -6876($fp)
label252:
	addi $t0, $fp, -556
	sw $t0, -6884($fp)
	li $t0, 0
	sw $t0, -6888($fp)
	li $t0, 4
	lw $t1, -6888($fp)
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, -6884($fp)
	add $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, 0($t0)
	sw $t1, -6900($fp)
	lw $t0, -6876($fp)
	lw $t1, -6900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6904($fp)
	lw $t0, -808($fp)
	sw $t0, -6908($fp)
	lw $t0, -1372($fp)
	sw $t0, -6912($fp)
	lw $t0, -6908($fp)
	lw $t1, -6912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6916($fp)
	lw $t0, -5384($fp)
	sw $t0, -6920($fp)
	lw $t0, -6916($fp)
	lw $t1, -6920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6924($fp)
	li $t0, 0
	lw $t1, -6924($fp)
	sub $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t1, -6904($fp)
	lw $t2, -6928($fp)
	bge $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -6872($fp)
label250:
label222:
	li $t0, 0
	sw $t0, -6932($fp)
	li $t0, 38396
	sw $t0, -6936($fp)
	lw $t1, -6936($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label255:
	li $t0, 17337
	sw $t0, -6940($fp)
	lw $t1, -6940($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -6932($fp)
label254:
	addi $t0, $fp, -508
	sw $t0, -6944($fp)
	li $t0, 4
	sw $t0, -6948($fp)
	li $t0, 4
	lw $t1, -6948($fp)
	mul $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	lw $t1, -6944($fp)
	add $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	lw $t1, 0($t0)
	sw $t1, -6960($fp)
	lw $t0, -4492($fp)
	sw $t0, -6964($fp)
	li $t0, 46392
	sw $t0, -6968($fp)
	lw $t0, -6964($fp)
	lw $t1, -6968($fp)
	mul $t0, $t0, $t1
	sw $t0, -6972($fp)
	li $t0, 0
	sw $t0, -6976($fp)
	li $t0, 32898
	sw $t0, -6980($fp)
	lw $t0, -5200($fp)
	sw $t0, -6984($fp)
	lw $t1, -6980($fp)
	lw $t2, -6984($fp)
	bgt $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -6976($fp)
label257:
	addi $sp, $sp, -4
	lw $t0, -6960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6988($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6992($fp)
	li $t0, 14460
	sw $t0, -6996($fp)
	lw $t1, -6996($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label260
label260:
	li $t0, 47955
	sw $t0, -7000($fp)
	lw $t1, -7000($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -6992($fp)
label259:
	addi $sp, $sp, -4
	lw $t0, -6932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7004($fp)
	addi $sp, $sp, 16
	lw $t0, -7004($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	sw $t0, -7008($fp)
	addi $t0, $fp, -148
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
	li $t0, 46827
	sw $t0, -7032($fp)
	lw $t0, -1852($fp)
	sw $t0, -7036($fp)
	li $t0, 59471
	sw $t0, -7040($fp)
	lw $t0, -7036($fp)
	lw $t1, -7040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7044($fp)
	addi $sp, $sp, -4
	lw $t0, -7028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7044($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7048($fp)
	addi $sp, $sp, 16
	lw $t1, -7048($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 27006
	sw $t0, -7052($fp)
label262:
	li $t0, 0
	sw $t0, -7056($fp)
	li $t0, 10765
	sw $t0, -7060($fp)
	li $t0, 0
	sw $t0, -7064($fp)
	li $t0, 4367
	sw $t0, -7068($fp)
	lw $t1, -7068($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -7064($fp)
label270:
	lw $t1, -7060($fp)
	lw $t2, -7064($fp)
	blt $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -7056($fp)
label268:
	addi $t0, $fp, -336
	sw $t0, -7072($fp)
	lw $t0, -748($fp)
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
	li $t0, 0
	sw $t0, -7092($fp)
	li $t0, 13279
	sw $t0, -7096($fp)
	lw $t1, -7096($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label271:
	li $t0, 1
	sw $t0, -7092($fp)
label272:
	li $t0, 28804
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	sw $t0, -7104($fp)
	addi $sp, $sp, -4
	lw $t0, -7088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7108($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -7112($fp)
	li $t0, 44294
	sw $t0, -7116($fp)
	lw $t1, -7116($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label273
label275:
	lw $t0, -2548($fp)
	sw $t0, -7120($fp)
	lw $t1, -7120($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -7112($fp)
label274:
	li $t0, 0
	sw $t0, -7124($fp)
	lw $t0, -6332($fp)
	sw $t0, -7128($fp)
	lw $t1, -7128($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label276
label276:
	li $t0, 1
	sw $t0, -7124($fp)
label277:
	li $t0, 8373
	sw $t0, -7132($fp)
	li $t0, 0
	lw $t1, -7132($fp)
	sub $t0, $t0, $t1
	sw $t0, -7136($fp)
	li $t0, 0
	sw $t0, -7140($fp)
	li $t0, 55708
	sw $t0, -7144($fp)
	lw $t1, -7144($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label278:
	li $t0, 1
	sw $t0, -7140($fp)
label279:
	lw $t0, -3052($fp)
	sw $t0, -7148($fp)
	lw $t0, -7140($fp)
	lw $t1, -7148($fp)
	mul $t0, $t0, $t1
	sw $t0, -7152($fp)
	addi $sp, $sp, -4
	lw $t0, -7124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7152($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7156($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -7108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7156($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7160($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -7160($fp)
	sub $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t1, -7056($fp)
	lw $t2, -7164($fp)
	bgt $t1, $t2, label264
	j label265
label264:
label280:
	li $t0, 0
	sw $t0, -7168($fp)
	li $t0, 30903
	sw $t0, -7172($fp)
	lw $t1, -7172($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -7168($fp)
label284:
	lw $t0, -4948($fp)
	sw $t0, -7176($fp)
	lw $t0, -4732($fp)
	sw $t0, -7180($fp)
	lw $t0, -7176($fp)
	lw $t1, -7180($fp)
	mul $t0, $t0, $t1
	sw $t0, -7184($fp)
	li $t0, 31443
	sw $t0, -7188($fp)
	lw $t0, -7184($fp)
	lw $t1, -7188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7192($fp)
	lw $t0, -7168($fp)
	lw $t1, -7192($fp)
	add $t0, $t0, $t1
	sw $t0, -7196($fp)
	li $t0, 0
	sw $t0, -7200($fp)
	li $t0, 0
	sw $t0, -7204($fp)
	li $t0, 13146
	sw $t0, -7208($fp)
	li $t0, 55896
	sw $t0, -7212($fp)
	lw $t1, -7208($fp)
	lw $t2, -7212($fp)
	beq $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -7204($fp)
label288:
	li $t0, 43821
	sw $t0, -7216($fp)
	lw $t1, -7204($fp)
	lw $t2, -7216($fp)
	beq $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -7200($fp)
label286:
	li $t0, 0
	sw $t0, -7220($fp)
	li $t0, 0
	sw $t0, -7224($fp)
	li $t0, 7941
	sw $t0, -7228($fp)
	li $t0, 10923
	sw $t0, -7232($fp)
	lw $t1, -7228($fp)
	lw $t2, -7232($fp)
	beq $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -7224($fp)
label292:
	lw $t0, -5372($fp)
	sw $t0, -7236($fp)
	lw $t1, -7224($fp)
	lw $t2, -7236($fp)
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -7220($fp)
label290:
	addi $t0, $fp, -156
	sw $t0, -7240($fp)
	lw $t0, -6308($fp)
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
	li $t0, 0
	lw $t1, -7256($fp)
	sub $t0, $t0, $t1
	sw $t0, -7260($fp)
	li $t0, 0
	sw $t0, -7264($fp)
	lw $t0, -1708($fp)
	sw $t0, -7268($fp)
	lw $t0, 4($fp)
	sw $t0, -7272($fp)
	lw $t1, -7268($fp)
	lw $t2, -7272($fp)
	blt $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -7264($fp)
label294:
	li $t0, 0
	sw $t0, -7276($fp)
	addi $t0, $fp, -280
	sw $t0, -7280($fp)
	lw $t0, -5264($fp)
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
	li $t0, 30703
	sw $t0, -7300($fp)
	lw $t0, -7296($fp)
	lw $t1, -7300($fp)
	mul $t0, $t0, $t1
	sw $t0, -7304($fp)
	li $t0, 47002
	sw $t0, -7308($fp)
	li $t0, 47976
	sw $t0, -7312($fp)
	lw $t0, -7308($fp)
	lw $t1, -7312($fp)
	sub $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -4276($fp)
	sw $t0, -7320($fp)
	lw $t0, -7316($fp)
	lw $t1, -7320($fp)
	add $t0, $t0, $t1
	sw $t0, -7324($fp)
	li $t0, 0
	sw $t0, -7328($fp)
	lw $t0, -3556($fp)
	sw $t0, -7332($fp)
	lw $t1, -7332($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -7328($fp)
label298:
	addi $sp, $sp, -4
	lw $t0, -7304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7328($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7336($fp)
	addi $sp, $sp, 16
	li $t0, 64222
	sw $t0, -7340($fp)
	lw $t1, -7336($fp)
	lw $t2, -7340($fp)
	bgt $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -7276($fp)
label296:
	addi $sp, $sp, -4
	lw $t0, -7260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7276($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7344($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -7200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7344($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7348($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -7348($fp)
	sub $t0, $t0, $t1
	sw $t0, -7352($fp)
	li $t0, 0
	sw $t0, -7356($fp)
	lw $t0, -5372($fp)
	sw $t0, -7360($fp)
	lw $t1, -7360($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label301
label301:
	li $t0, 58801
	sw $t0, -7364($fp)
	lw $t1, -7364($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -7356($fp)
label300:
	li $t0, 0
	sw $t0, -7368($fp)
	li $t0, 0
	sw $t0, -7372($fp)
	li $t0, 50468
	sw $t0, -7376($fp)
	li $t0, 26744
	sw $t0, -7380($fp)
	lw $t1, -7376($fp)
	lw $t2, -7380($fp)
	bgt $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -7372($fp)
label305:
	lw $t0, -3196($fp)
	sw $t0, -7384($fp)
	lw $t1, -7372($fp)
	lw $t2, -7384($fp)
	blt $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -7368($fp)
label303:
	addi $sp, $sp, -4
	lw $t0, -7352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7388($fp)
	addi $sp, $sp, 16
	lw $t1, -7196($fp)
	lw $t2, -7388($fp)
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 59538
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	sw $t0, -7396($fp)
	lw $t1, -7396($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 0
	sw $t0, -7400($fp)
	lw $t0, -4960($fp)
	sw $t0, -7404($fp)
	li $t0, 0
	sw $t0, -7408($fp)
	li $t0, 0
	sw $t0, -7412($fp)
	li $t0, 0
	sw $t0, -7416($fp)
	li $t0, 28959
	sw $t0, -7420($fp)
	lw $t0, -6344($fp)
	sw $t0, -7424($fp)
	lw $t1, -7420($fp)
	lw $t2, -7424($fp)
	ble $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -7416($fp)
label319:
	lw $t0, -4288($fp)
	sw $t0, -7428($fp)
	lw $t1, -7416($fp)
	lw $t2, -7428($fp)
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -7412($fp)
label317:
	li $t0, 32398
	sw $t0, -7432($fp)
	lw $t0, -5212($fp)
	sw $t0, -7436($fp)
	lw $t0, -7432($fp)
	lw $t1, -7436($fp)
	mul $t0, $t0, $t1
	sw $t0, -7440($fp)
	lw $t0, -6380($fp)
	sw $t0, -7444($fp)
	lw $t0, -7440($fp)
	lw $t1, -7444($fp)
	sub $t0, $t0, $t1
	sw $t0, -7448($fp)
	li $t0, 34381
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -7456($fp)
	addi $sp, $sp, -4
	lw $t0, -7412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7460($fp)
	addi $sp, $sp, 16
	li $t0, 28316
	sw $t0, -7464($fp)
	lw $t1, -7460($fp)
	lw $t2, -7464($fp)
	beq $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -7408($fp)
label315:
	li $t0, 11622
	sw $t0, -7468($fp)
	addi $sp, $sp, -4
	lw $t0, -7404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7472($fp)
	addi $sp, $sp, 16
	lw $t0, -6356($fp)
	sw $t0, -7476($fp)
	lw $t0, -7472($fp)
	lw $t1, -7476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7480($fp)
	li $t0, 0
	sw $t0, -7484($fp)
	li $t0, 0
	sw $t0, -7488($fp)
	lw $t0, -4732($fp)
	sw $t0, -7492($fp)
	lw $t0, -4744($fp)
	sw $t0, -7496($fp)
	lw $t1, -7492($fp)
	lw $t2, -7496($fp)
	ble $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -7488($fp)
label323:
	lw $t0, -4540($fp)
	sw $t0, -7500($fp)
	lw $t1, -7488($fp)
	lw $t2, -7500($fp)
	bgt $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -7484($fp)
label321:
	addi $t0, $fp, -64
	sw $t0, -7504($fp)
	lw $t0, -1768($fp)
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
	lw $t0, -1072($fp)
	sw $t0, -7524($fp)
	lw $t0, -7520($fp)
	lw $t1, -7524($fp)
	sub $t0, $t0, $t1
	sw $t0, -7528($fp)
	addi $sp, $sp, -4
	lw $t0, -7480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7532($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -7536($fp)
	lw $t0, -3028($fp)
	sw $t0, -7540($fp)
	li $t0, 40696
	sw $t0, -7544($fp)
	lw $t0, -7540($fp)
	lw $t1, -7544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7548($fp)
	lw $t0, -1384($fp)
	sw $t0, -7552($fp)
	lw $t1, -7548($fp)
	lw $t2, -7552($fp)
	bge $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -7536($fp)
label325:
	li $t0, 0
	sw $t0, -7556($fp)
	li $t0, 13690
	sw $t0, -7560($fp)
	li $t0, 23320
	sw $t0, -7564($fp)
	lw $t0, -7560($fp)
	lw $t1, -7564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7568($fp)
	lw $t1, -7568($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label328:
	li $t0, 6873
	sw $t0, -7572($fp)
	lw $t1, -7572($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -7556($fp)
label327:
	lw $t0, -2188($fp)
	sw $t0, -7576($fp)
	lw $t0, -820($fp)
	sw $t0, -7580($fp)
	lw $t0, -7576($fp)
	lw $t1, -7580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7584($fp)
	lw $t0, -6368($fp)
	sw $t0, -7588($fp)
	lw $t0, -7584($fp)
	lw $t1, -7588($fp)
	mul $t0, $t0, $t1
	sw $t0, -7592($fp)
	addi $sp, $sp, -4
	lw $t0, -7536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7596($fp)
	addi $sp, $sp, 16
	lw $t0, -6320($fp)
	sw $t0, -7600($fp)
	lw $t0, -7596($fp)
	lw $t1, -7600($fp)
	mul $t0, $t0, $t1
	sw $t0, -7604($fp)
	lw $t1, -7532($fp)
	lw $t2, -7604($fp)
	blt $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -7400($fp)
label313:
	li $t0, 34085
	sw $t0, -7608($fp)
	lw $t1, -7400($fp)
	lw $t2, -7608($fp)
	bne $t1, $t2, label309
	j label310
label309:
	addi $t0, $fp, -360
	sw $t0, -7612($fp)
	li $t0, 0
	sw $t0, -7616($fp)
	lw $t0, -1372($fp)
	sw $t0, -7620($fp)
	li $t0, 11240
	sw $t0, -7624($fp)
	lw $t0, -7620($fp)
	lw $t1, -7624($fp)
	mul $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -3040($fp)
	sw $t0, -7632($fp)
	lw $t1, -7628($fp)
	lw $t2, -7632($fp)
	blt $t1, $t2, label329
	j label331
label331:
	li $t0, 30869
	sw $t0, -7636($fp)
	lw $t1, -7636($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -7616($fp)
label330:
	li $t0, 4
	lw $t1, -7616($fp)
	mul $t0, $t0, $t1
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	lw $t1, -7612($fp)
	add $t0, $t0, $t1
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	lw $t1, 0($t0)
	sw $t1, -7648($fp)
	j label311
label310:
	li $t0, 0
	sw $t0, -7652($fp)
	li $t0, 0
	sw $t0, -7656($fp)
	lw $t0, -2152($fp)
	sw $t0, -7660($fp)
	lw $t0, -2176($fp)
	sw $t0, -7664($fp)
	lw $t1, -7660($fp)
	lw $t2, -7664($fp)
	bgt $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -7656($fp)
label335:
	li $t0, 55738
	sw $t0, -7668($fp)
	lw $t1, -7656($fp)
	lw $t2, -7668($fp)
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -7652($fp)
label333:
	li $t0, 0
	sw $t0, -7672($fp)
	li $t0, 59673
	sw $t0, -7676($fp)
	lw $t0, -1876($fp)
	sw $t0, -7680($fp)
	lw $t0, -7676($fp)
	lw $t1, -7680($fp)
	mul $t0, $t0, $t1
	sw $t0, -7684($fp)
	lw $t1, -7684($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label338
label338:
	lw $t0, -4732($fp)
	sw $t0, -7688($fp)
	lw $t1, -7688($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -7672($fp)
label337:
	lw $t0, -1360($fp)
	sw $t0, -7692($fp)
	lw $t0, -2392($fp)
	sw $t0, -7696($fp)
	lw $t0, -7692($fp)
	lw $t1, -7696($fp)
	mul $t0, $t0, $t1
	sw $t0, -7700($fp)
	li $t0, 55534
	sw $t0, -7704($fp)
	lw $t0, -7700($fp)
	lw $t1, -7704($fp)
	sub $t0, $t0, $t1
	sw $t0, -7708($fp)
	addi $sp, $sp, -4
	lw $t0, -7652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7712($fp)
	addi $sp, $sp, 16
	li $t0, 20901
	sw $t0, -7716($fp)
	lw $t0, -7712($fp)
	lw $t1, -7716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7720($fp)
	li $t0, 42459
	sw $t0, -7724($fp)
	lw $t0, -7724($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -7728($fp)
	lw $t0, -1096($fp)
	sw $t0, -7732($fp)
	lw $t0, -1852($fp)
	sw $t0, -7736($fp)
	lw $t0, -7732($fp)
	lw $t1, -7736($fp)
	add $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -2176($fp)
	sw $t0, -7744($fp)
	lw $t0, -7740($fp)
	lw $t1, -7744($fp)
	add $t0, $t0, $t1
	sw $t0, -7748($fp)
	addi $sp, $sp, -4
	lw $t0, -7720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7748($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7752($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -7752($fp)
	sub $t0, $t0, $t1
	sw $t0, -7756($fp)
label311:
	j label308
label307:
	addi $t0, $fp, -16
	sw $t0, -7760($fp)
	lw $t0, -4756($fp)
	sw $t0, -7764($fp)
	lw $t0, 4($fp)
	sw $t0, -7768($fp)
	lw $t0, -7764($fp)
	lw $t1, -7768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7772($fp)
	li $t0, 25580
	sw $t0, -7776($fp)
	lw $t0, -7772($fp)
	lw $t1, -7776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7780($fp)
	li $t0, 4
	lw $t1, -7780($fp)
	mul $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	lw $t1, -7760($fp)
	add $t0, $t0, $t1
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	lw $t1, 0($t0)
	sw $t1, -7792($fp)
	lw $t1, -7792($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
label342:
	li $t0, 0
	sw $t0, -7796($fp)
	lw $t0, 12($fp)
	sw $t0, -7800($fp)
	lw $t1, -7800($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label347
label347:
	lw $t0, -4780($fp)
	sw $t0, -7804($fp)
	lw $t1, -7804($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label345:
	li $t0, 1
	sw $t0, -7796($fp)
label346:
	lw $t0, -7796($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -7808($fp)
	lw $t1, -7808($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 0
	sw $t0, -7812($fp)
	li $t0, 0
	sw $t0, -7816($fp)
	li $t0, 0
	sw $t0, -7820($fp)
	li $t0, 0
	sw $t0, -7824($fp)
	li $t0, 30085
	sw $t0, -7828($fp)
	lw $t1, -7828($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	li $t0, 1
	sw $t0, -7824($fp)
label355:
	li $t0, 49548
	sw $t0, -7832($fp)
	lw $t1, -7824($fp)
	lw $t2, -7832($fp)
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -7820($fp)
label353:
	addi $t0, $fp, -256
	sw $t0, -7836($fp)
	li $t0, 2
	sw $t0, -7840($fp)
	li $t0, 4
	lw $t1, -7840($fp)
	mul $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	lw $t1, -7836($fp)
	add $t0, $t0, $t1
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	lw $t1, 0($t0)
	sw $t1, -7852($fp)
	li $t0, 0
	sw $t0, -7856($fp)
	li $t0, 40670
	sw $t0, -7860($fp)
	li $t0, 0
	lw $t1, -7860($fp)
	sub $t0, $t0, $t1
	sw $t0, -7864($fp)
	li $t0, 47645
	sw $t0, -7868($fp)
	lw $t1, -7864($fp)
	lw $t2, -7868($fp)
	blt $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -7856($fp)
label357:
	addi $sp, $sp, -4
	lw $t0, -7820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7872($fp)
	addi $sp, $sp, 16
	lw $t1, -7872($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -7816($fp)
label351:
	addi $t0, $fp, -5256
	sw $t0, -7876($fp)
	addi $t0, $fp, -532
	sw $t0, -7880($fp)
	li $t0, 0
	sw $t0, -7884($fp)
	li $t0, 4
	lw $t1, -7884($fp)
	mul $t0, $t0, $t1
	sw $t0, -7888($fp)
	lw $t0, -7888($fp)
	lw $t1, -7880($fp)
	add $t0, $t0, $t1
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	lw $t1, 0($t0)
	sw $t1, -7896($fp)
	li $t0, 4
	lw $t1, -7896($fp)
	mul $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	lw $t1, -7876($fp)
	add $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	lw $t1, 0($t0)
	sw $t1, -7908($fp)
	lw $t1, -7816($fp)
	lw $t2, -7908($fp)
	bgt $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -7812($fp)
label349:
	j label342
label344:
	j label341
label340:
	addi $t0, $fp, -420
	sw $t0, -7912($fp)
	li $t0, 0
	sw $t0, -7916($fp)
	li $t0, 0
	sw $t0, -7920($fp)
	li $t0, 0
	sw $t0, -7924($fp)
	lw $t0, -4696($fp)
	sw $t0, -7928($fp)
	lw $t0, -4240($fp)
	sw $t0, -7932($fp)
	lw $t1, -7928($fp)
	lw $t2, -7932($fp)
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -7924($fp)
label363:
	li $t0, 60471
	sw $t0, -7936($fp)
	lw $t1, -7924($fp)
	lw $t2, -7936($fp)
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -7920($fp)
label361:
	li $t0, 0
	sw $t0, -7940($fp)
	lw $t0, -4708($fp)
	sw $t0, -7944($fp)
	li $t0, 33970
	sw $t0, -7948($fp)
	lw $t1, -7944($fp)
	lw $t2, -7948($fp)
	bgt $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -7940($fp)
label365:
	lw $t1, -7920($fp)
	lw $t2, -7940($fp)
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -7916($fp)
label359:
	li $t0, 4
	lw $t1, -7916($fp)
	mul $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	lw $t1, -7912($fp)
	add $t0, $t0, $t1
	sw $t0, -7956($fp)
	lw $t0, -7956($fp)
	lw $t1, 0($t0)
	sw $t1, -7960($fp)
label341:
label308:
	j label280
label282:
label265:
	lw $t0, -6308($fp)
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6320($fp)
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6332($fp)
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6344($fp)
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6356($fp)
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6368($fp)
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6380($fp)
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7992($fp)
	lw $t0, -5008($fp)
	sw $t0, -7996($fp)
	li $t0, 0
	sw $t0, -8000($fp)
	li $t0, 28386
	sw $t0, -8004($fp)
	li $t0, 38756
	sw $t0, -8008($fp)
	lw $t0, -8004($fp)
	lw $t1, -8008($fp)
	mul $t0, $t0, $t1
	sw $t0, -8012($fp)
	li $t0, 27972
	sw $t0, -8016($fp)
	lw $t1, -8012($fp)
	lw $t2, -8016($fp)
	bge $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -8000($fp)
label369:
	lw $t1, -7996($fp)
	lw $t2, -8000($fp)
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -7992($fp)
label367:
	lw $ra, -4($fp)
	lw $v0, -7992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1108($fp)
	sw $t0, -8020($fp)
	lw $t1, -8020($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label370
label370:
	li $t0, 0
	sw $t0, -8024($fp)
	lw $t0, -4780($fp)
	sw $t0, -8028($fp)
	lw $t0, -4312($fp)
	sw $t0, -8032($fp)
	lw $t1, -8028($fp)
	lw $t2, -8032($fp)
	bge $t1, $t2, label373
	j label375
label375:
	li $t0, 60371
	sw $t0, -8036($fp)
	lw $t1, -8036($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -8024($fp)
label374:
	lw $t0, -3400($fp)
	sw $t0, -8040($fp)
	li $t0, 0
	lw $t1, -8040($fp)
	sub $t0, $t0, $t1
	sw $t0, -8044($fp)
	li $t0, 0
	sw $t0, -8048($fp)
	li $t0, 0
	sw $t0, -8052($fp)
	li $t0, 40009
	sw $t0, -8056($fp)
	lw $t0, -4696($fp)
	sw $t0, -8060($fp)
	lw $t1, -8056($fp)
	lw $t2, -8060($fp)
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -8052($fp)
label379:
	li $t0, 7601
	sw $t0, -8064($fp)
	lw $t1, -8052($fp)
	lw $t2, -8064($fp)
	beq $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -8048($fp)
label377:
	addi $sp, $sp, -4
	lw $t0, -8024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8068($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -8068($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 8692
	sw $t0, -8072($fp)
	li $t0, 0
	sw $t0, -8076($fp)
	li $t0, 37761
	sw $t0, -8080($fp)
	lw $t0, -3832($fp)
	sw $t0, -8084($fp)
	lw $t1, -8080($fp)
	lw $t2, -8084($fp)
	ble $t1, $t2, label382
	j label381
label382:
	li $t0, 44029
	sw $t0, -8088($fp)
	lw $t1, -8088($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -8076($fp)
label381:
	lw $t0, -5384($fp)
	sw $t0, -8092($fp)
	addi $sp, $sp, -4
	lw $t0, -8072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8096($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -8096($fp)
	sub $t0, $t0, $t1
	sw $t0, -8100($fp)
	li $t0, 0
	sw $t0, -8104($fp)
	addi $t0, $fp, -316
	sw $t0, -8108($fp)
	li $t0, 6
	sw $t0, -8112($fp)
	li $t0, 4
	lw $t1, -8112($fp)
	mul $t0, $t0, $t1
	sw $t0, -8116($fp)
	lw $t0, -8116($fp)
	lw $t1, -8108($fp)
	add $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t0, -8120($fp)
	lw $t1, 0($t0)
	sw $t1, -8124($fp)
	li $t0, 14554
	sw $t0, -8128($fp)
	lw $t1, -8124($fp)
	lw $t2, -8128($fp)
	ble $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -8104($fp)
label384:
	lw $t0, -2740($fp)
	sw $t0, -8132($fp)
	li $t0, 0
	sw $t0, -8136($fp)
	li $t0, 26752
	sw $t0, -8140($fp)
	lw $t1, -8140($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label387
label388:
	li $t0, 42791
	sw $t0, -8144($fp)
	lw $t1, -8144($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label387
label387:
	li $t0, 49221
	sw $t0, -8148($fp)
	lw $t1, -8148($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -8136($fp)
label386:
	addi $t0, $fp, -508
	sw $t0, -8152($fp)
	li $t0, 4
	sw $t0, -8156($fp)
	li $t0, 4
	lw $t1, -8156($fp)
	mul $t0, $t0, $t1
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	lw $t1, -8152($fp)
	add $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	lw $t1, 0($t0)
	sw $t1, -8168($fp)
	li $t0, 8525
	sw $t0, -8172($fp)
	lw $t0, -8168($fp)
	lw $t1, -8172($fp)
	sub $t0, $t0, $t1
	sw $t0, -8176($fp)
	addi $sp, $sp, -4
	lw $t0, -8132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8180($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -8180($fp)
	sub $t0, $t0, $t1
	sw $t0, -8184($fp)
	addi $sp, $sp, -4
	lw $t0, -8100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8188($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -8188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label389:
	addi $t0, $fp, -512
	sw $t0, -8192($fp)
	lw $t0, -1408($fp)
	sw $t0, -8196($fp)
	li $t0, 4
	lw $t1, -8196($fp)
	mul $t0, $t0, $t1
	sw $t0, -8200($fp)
	lw $t0, -8200($fp)
	lw $t1, -8192($fp)
	add $t0, $t0, $t1
	sw $t0, -8204($fp)
	lw $t0, -8204($fp)
	lw $t1, 0($t0)
	sw $t1, -8208($fp)
	li $t0, 0
	lw $t1, -8208($fp)
	sub $t0, $t0, $t1
	sw $t0, -8212($fp)
	li $t0, 0
	lw $t1, -8212($fp)
	sub $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t0, -2200($fp)
	sw $t0, -8220($fp)
	lw $t0, -8216($fp)
	lw $t1, -8220($fp)
	sub $t0, $t0, $t1
	sw $t0, -8224($fp)
	lw $t1, -8224($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	lw $t0, -5372($fp)
	sw $t0, -8228($fp)
	lw $t0, 12($fp)
	sw $t0, -8232($fp)
	li $t0, 3097
	sw $t0, -8236($fp)
	lw $t0, -8232($fp)
	lw $t1, -8236($fp)
	mul $t0, $t0, $t1
	sw $t0, -8240($fp)
	li $t0, 0
	lw $t1, -8240($fp)
	sub $t0, $t0, $t1
	sw $t0, -8244($fp)
	li $t0, 0
	sw $t0, -8248($fp)
	lw $t0, -2416($fp)
	sw $t0, -8252($fp)
	li $t0, 0
	lw $t1, -8252($fp)
	sub $t0, $t0, $t1
	sw $t0, -8256($fp)
	lw $t0, -4984($fp)
	sw $t0, -8260($fp)
	lw $t1, -8256($fp)
	lw $t2, -8260($fp)
	beq $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -8248($fp)
label393:
	li $t0, 0
	sw $t0, -8264($fp)
	li $t0, 64930
	sw $t0, -8268($fp)
	lw $t0, -4756($fp)
	sw $t0, -8272($fp)
	lw $t1, -8268($fp)
	lw $t2, -8272($fp)
	ble $t1, $t2, label394
	j label396
label396:
	li $t0, 34272
	sw $t0, -8276($fp)
	lw $t1, -8276($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -8264($fp)
label395:
	li $t0, 0
	sw $t0, -8280($fp)
	addi $t0, $fp, -420
	sw $t0, -8284($fp)
	lw $t0, -664($fp)
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
	lw $t1, -8300($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label399
label399:
	li $t0, 27963
	sw $t0, -8304($fp)
	lw $t1, -8304($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -8280($fp)
label398:
	li $t0, 0
	sw $t0, -8308($fp)
	lw $t0, -1108($fp)
	sw $t0, -8312($fp)
	lw $t1, -8312($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label400
label400:
	li $t0, 1
	sw $t0, -8308($fp)
label401:
	li $t0, 0
	lw $t1, -8308($fp)
	sub $t0, $t0, $t1
	sw $t0, -8316($fp)
	addi $sp, $sp, -4
	lw $t0, -8264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8320($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -8244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8324($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -8328($fp)
	li $t0, 25234
	sw $t0, -8332($fp)
	li $t0, 11588
	sw $t0, -8336($fp)
	lw $t1, -8332($fp)
	lw $t2, -8336($fp)
	beq $t1, $t2, label402
	j label404
label404:
	lw $t0, -3820($fp)
	sw $t0, -8340($fp)
	lw $t1, -8340($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -8328($fp)
label403:
	lw $t0, -4264($fp)
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -8348($fp)
	li $t0, 47039
	sw $t0, -8352($fp)
	li $t0, 1
	sw $t0, -8356($fp)
	lw $t0, -8352($fp)
	lw $t1, -8356($fp)
	mul $t0, $t0, $t1
	sw $t0, -8360($fp)
	lw $t0, -5200($fp)
	sw $t0, -8364($fp)
	lw $t0, -8360($fp)
	lw $t1, -8364($fp)
	mul $t0, $t0, $t1
	sw $t0, -8368($fp)
	addi $sp, $sp, -4
	lw $t0, -8328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8372($fp)
	addi $sp, $sp, 16
	lw $t0, -8324($fp)
	lw $t1, -8372($fp)
	mul $t0, $t0, $t1
	sw $t0, -8376($fp)
	j label389
label391:
label371:
	li $t0, 37130
	sw $t0, -8420($fp)
	addi $t0, $fp, -8416
	sw $t0, -8424($fp)
	li $t0, 0
	sw $t0, -8428($fp)
	lw $t0, -8428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8432($fp)
	lw $t0, -8424($fp)
	lw $t1, -8432($fp)
	add $t0, $t0, $t1
	sw $t0, -8436($fp)
	lw $t0, -8420($fp)
	lw $t1, -8436($fp)
	sw $t0, 0($t1)
	lw $t0, -8436($fp)
	lw $t1, 0($t0)
	sw $t1, -8440($fp)
	li $t0, 46058
	sw $t0, -8444($fp)
	addi $t0, $fp, -8416
	sw $t0, -8448($fp)
	li $t0, 1
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8456($fp)
	lw $t0, -8448($fp)
	lw $t1, -8456($fp)
	add $t0, $t0, $t1
	sw $t0, -8460($fp)
	lw $t0, -8444($fp)
	lw $t1, -8460($fp)
	sw $t0, 0($t1)
	lw $t0, -8460($fp)
	lw $t1, 0($t0)
	sw $t1, -8464($fp)
	li $t0, 49615
	sw $t0, -8468($fp)
	addi $t0, $fp, -8416
	sw $t0, -8472($fp)
	li $t0, 2
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8480($fp)
	lw $t0, -8472($fp)
	lw $t1, -8480($fp)
	add $t0, $t0, $t1
	sw $t0, -8484($fp)
	lw $t0, -8468($fp)
	lw $t1, -8484($fp)
	sw $t0, 0($t1)
	lw $t0, -8484($fp)
	lw $t1, 0($t0)
	sw $t1, -8488($fp)
	li $t0, 32066
	sw $t0, -8492($fp)
	addi $t0, $fp, -8416
	sw $t0, -8496($fp)
	li $t0, 3
	sw $t0, -8500($fp)
	lw $t0, -8500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8504($fp)
	lw $t0, -8496($fp)
	lw $t1, -8504($fp)
	add $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t0, -8492($fp)
	lw $t1, -8508($fp)
	sw $t0, 0($t1)
	lw $t0, -8508($fp)
	lw $t1, 0($t0)
	sw $t1, -8512($fp)
	li $t0, 14492
	sw $t0, -8516($fp)
	addi $t0, $fp, -8416
	sw $t0, -8520($fp)
	li $t0, 4
	sw $t0, -8524($fp)
	lw $t0, -8524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8520($fp)
	lw $t1, -8528($fp)
	add $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8516($fp)
	lw $t1, -8532($fp)
	sw $t0, 0($t1)
	lw $t0, -8532($fp)
	lw $t1, 0($t0)
	sw $t1, -8536($fp)
	li $t0, 12465
	sw $t0, -8540($fp)
	addi $t0, $fp, -8416
	sw $t0, -8544($fp)
	li $t0, 5
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8544($fp)
	lw $t1, -8552($fp)
	add $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -8540($fp)
	lw $t1, -8556($fp)
	sw $t0, 0($t1)
	lw $t0, -8556($fp)
	lw $t1, 0($t0)
	sw $t1, -8560($fp)
	li $t0, 5286
	sw $t0, -8564($fp)
	addi $t0, $fp, -8416
	sw $t0, -8568($fp)
	li $t0, 6
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8576($fp)
	lw $t0, -8568($fp)
	lw $t1, -8576($fp)
	add $t0, $t0, $t1
	sw $t0, -8580($fp)
	lw $t0, -8564($fp)
	lw $t1, -8580($fp)
	sw $t0, 0($t1)
	lw $t0, -8580($fp)
	lw $t1, 0($t0)
	sw $t1, -8584($fp)
	li $t0, 42464
	sw $t0, -8588($fp)
	addi $t0, $fp, -8416
	sw $t0, -8592($fp)
	li $t0, 7
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8592($fp)
	lw $t1, -8600($fp)
	add $t0, $t0, $t1
	sw $t0, -8604($fp)
	lw $t0, -8588($fp)
	lw $t1, -8604($fp)
	sw $t0, 0($t1)
	lw $t0, -8604($fp)
	lw $t1, 0($t0)
	sw $t1, -8608($fp)
	li $t0, 52474
	sw $t0, -8612($fp)
	addi $t0, $fp, -8416
	sw $t0, -8616($fp)
	li $t0, 8
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t0, -8616($fp)
	lw $t1, -8624($fp)
	add $t0, $t0, $t1
	sw $t0, -8628($fp)
	lw $t0, -8612($fp)
	lw $t1, -8628($fp)
	sw $t0, 0($t1)
	lw $t0, -8628($fp)
	lw $t1, 0($t0)
	sw $t1, -8632($fp)
	li $t0, 12888
	sw $t0, -8636($fp)
	addi $t0, $fp, -8416
	sw $t0, -8640($fp)
	li $t0, 9
	sw $t0, -8644($fp)
	lw $t0, -8644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t0, -8640($fp)
	lw $t1, -8648($fp)
	add $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t0, -8636($fp)
	lw $t1, -8652($fp)
	sw $t0, 0($t1)
	lw $t0, -8652($fp)
	lw $t1, 0($t0)
	sw $t1, -8656($fp)
label405:
	addi $t0, $fp, -24
	sw $t0, -8660($fp)
	addi $t0, $fp, -316
	sw $t0, -8664($fp)
	li $t0, 0
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
	li $t0, 4
	lw $t1, -8680($fp)
	mul $t0, $t0, $t1
	sw $t0, -8684($fp)
	lw $t0, -8684($fp)
	lw $t1, -8660($fp)
	add $t0, $t0, $t1
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	lw $t1, 0($t0)
	sw $t1, -8692($fp)
	lw $t0, -2572($fp)
	sw $t0, -8696($fp)
	lw $t1, -8692($fp)
	lw $t2, -8696($fp)
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 0
	sw $t0, -8700($fp)
	li $t0, 48806
	sw $t0, -8704($fp)
	li $t0, 0
	sw $t0, -8708($fp)
	lw $t0, -3004($fp)
	sw $t0, -8712($fp)
	lw $t0, -3016($fp)
	sw $t0, -8716($fp)
	lw $t0, -8712($fp)
	lw $t1, -8716($fp)
	add $t0, $t0, $t1
	sw $t0, -8720($fp)
	lw $t1, -8720($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label413
label413:
	lw $t0, -2764($fp)
	sw $t0, -8724($fp)
	lw $t1, -8724($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -8708($fp)
label412:
	li $t0, 0
	sw $t0, -8728($fp)
	li $t0, 26061
	sw $t0, -8732($fp)
	lw $t1, -8732($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label417
label417:
	lw $t0, -2200($fp)
	sw $t0, -8736($fp)
	lw $t1, -8736($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label416
label416:
	li $t0, 29510
	sw $t0, -8740($fp)
	lw $t1, -8740($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -8728($fp)
label415:
	li $t0, 0
	sw $t0, -8744($fp)
	li $t0, 45824
	sw $t0, -8748($fp)
	lw $t0, -1708($fp)
	sw $t0, -8752($fp)
	lw $t0, -8748($fp)
	lw $t1, -8752($fp)
	mul $t0, $t0, $t1
	sw $t0, -8756($fp)
	li $t0, 17123
	sw $t0, -8760($fp)
	lw $t1, -8756($fp)
	lw $t2, -8760($fp)
	blt $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -8744($fp)
label419:
	addi $sp, $sp, -4
	lw $t0, -8708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8764($fp)
	addi $sp, $sp, 16
	lw $t0, -8704($fp)
	lw $t1, -8764($fp)
	mul $t0, $t0, $t1
	sw $t0, -8768($fp)
	li $t0, 0
	sw $t0, -8772($fp)
	lw $t0, -748($fp)
	sw $t0, -8776($fp)
	li $t0, 0
	lw $t1, -8776($fp)
	sub $t0, $t0, $t1
	sw $t0, -8780($fp)
	lw $t1, -8780($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label420
label420:
	li $t0, 1
	sw $t0, -8772($fp)
label421:
	lw $t1, -8768($fp)
	lw $t2, -8772($fp)
	bgt $t1, $t2, label410
	j label409
label410:
	addi $t0, $fp, -8416
	sw $t0, -8784($fp)
	li $t0, 0
	sw $t0, -8788($fp)
	li $t0, 12425
	sw $t0, -8792($fp)
	lw $t1, -8792($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label424
label424:
	lw $t0, -2416($fp)
	sw $t0, -8796($fp)
	lw $t1, -8796($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -8788($fp)
label423:
	li $t0, 4
	lw $t1, -8788($fp)
	mul $t0, $t0, $t1
	sw $t0, -8800($fp)
	lw $t0, -8800($fp)
	lw $t1, -8784($fp)
	add $t0, $t0, $t1
	sw $t0, -8804($fp)
	lw $t0, -8804($fp)
	lw $t1, 0($t0)
	sw $t1, -8808($fp)
	lw $t1, -8808($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -8700($fp)
label409:
	j label405
label407:
	addi $t0, $fp, -8416
	sw $t0, -8812($fp)
	li $t0, 0
	sw $t0, -8816($fp)
	li $t0, 4
	lw $t1, -8816($fp)
	mul $t0, $t0, $t1
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	lw $t1, -8812($fp)
	add $t0, $t0, $t1
	sw $t0, -8824($fp)
	lw $t0, -8824($fp)
	lw $t1, 0($t0)
	sw $t1, -8828($fp)
	lw $t0, -8828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8416
	sw $t0, -8832($fp)
	li $t0, 1
	sw $t0, -8836($fp)
	li $t0, 4
	lw $t1, -8836($fp)
	mul $t0, $t0, $t1
	sw $t0, -8840($fp)
	lw $t0, -8840($fp)
	lw $t1, -8832($fp)
	add $t0, $t0, $t1
	sw $t0, -8844($fp)
	lw $t0, -8844($fp)
	lw $t1, 0($t0)
	sw $t1, -8848($fp)
	lw $t0, -8848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8416
	sw $t0, -8852($fp)
	li $t0, 2
	sw $t0, -8856($fp)
	li $t0, 4
	lw $t1, -8856($fp)
	mul $t0, $t0, $t1
	sw $t0, -8860($fp)
	lw $t0, -8860($fp)
	lw $t1, -8852($fp)
	add $t0, $t0, $t1
	sw $t0, -8864($fp)
	lw $t0, -8864($fp)
	lw $t1, 0($t0)
	sw $t1, -8868($fp)
	lw $t0, -8868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8416
	sw $t0, -8872($fp)
	li $t0, 3
	sw $t0, -8876($fp)
	li $t0, 4
	lw $t1, -8876($fp)
	mul $t0, $t0, $t1
	sw $t0, -8880($fp)
	lw $t0, -8880($fp)
	lw $t1, -8872($fp)
	add $t0, $t0, $t1
	sw $t0, -8884($fp)
	lw $t0, -8884($fp)
	lw $t1, 0($t0)
	sw $t1, -8888($fp)
	lw $t0, -8888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8416
	sw $t0, -8892($fp)
	li $t0, 4
	sw $t0, -8896($fp)
	li $t0, 4
	lw $t1, -8896($fp)
	mul $t0, $t0, $t1
	sw $t0, -8900($fp)
	lw $t0, -8900($fp)
	lw $t1, -8892($fp)
	add $t0, $t0, $t1
	sw $t0, -8904($fp)
	lw $t0, -8904($fp)
	lw $t1, 0($t0)
	sw $t1, -8908($fp)
	lw $t0, -8908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8416
	sw $t0, -8912($fp)
	li $t0, 5
	sw $t0, -8916($fp)
	li $t0, 4
	lw $t1, -8916($fp)
	mul $t0, $t0, $t1
	sw $t0, -8920($fp)
	lw $t0, -8920($fp)
	lw $t1, -8912($fp)
	add $t0, $t0, $t1
	sw $t0, -8924($fp)
	lw $t0, -8924($fp)
	lw $t1, 0($t0)
	sw $t1, -8928($fp)
	lw $t0, -8928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8416
	sw $t0, -8932($fp)
	li $t0, 6
	sw $t0, -8936($fp)
	li $t0, 4
	lw $t1, -8936($fp)
	mul $t0, $t0, $t1
	sw $t0, -8940($fp)
	lw $t0, -8940($fp)
	lw $t1, -8932($fp)
	add $t0, $t0, $t1
	sw $t0, -8944($fp)
	lw $t0, -8944($fp)
	lw $t1, 0($t0)
	sw $t1, -8948($fp)
	lw $t0, -8948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8416
	sw $t0, -8952($fp)
	li $t0, 7
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
	lw $t0, -8968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8416
	sw $t0, -8972($fp)
	li $t0, 8
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
	lw $t0, -8988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8416
	sw $t0, -8992($fp)
	li $t0, 9
	sw $t0, -8996($fp)
	li $t0, 4
	lw $t1, -8996($fp)
	mul $t0, $t0, $t1
	sw $t0, -9000($fp)
	lw $t0, -9000($fp)
	lw $t1, -8992($fp)
	add $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t0, -9004($fp)
	lw $t1, 0($t0)
	sw $t1, -9008($fp)
	lw $t0, -9008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 14556
	sw $t0, -9012($fp)
	lw $ra, -4($fp)
	lw $v0, -9012($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 44064
	sw $t0, -9016($fp)
	li $t0, 0
	lw $t1, -9016($fp)
	sub $t0, $t0, $t1
	sw $t0, -9020($fp)
	lw $t1, -9020($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
	li $t0, 0
	sw $t0, -9024($fp)
	li $t0, 0
	sw $t0, -9028($fp)
	li $t0, 50186
	sw $t0, -9032($fp)
	lw $t1, -9032($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label430
label430:
	li $t0, 1
	sw $t0, -9028($fp)
label431:
	lw $t0, -1120($fp)
	sw $t0, -9036($fp)
	lw $t1, -9028($fp)
	lw $t2, -9036($fp)
	blt $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -9024($fp)
label429:
	lw $t0, -9024($fp)
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	sw $t0, -9040($fp)
	lw $ra, -4($fp)
	lw $v0, -9040($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label427
label426:
	lw $t0, -688($fp)
	sw $t0, -9044($fp)
	lw $t0, -9044($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -9048($fp)
	li $t0, 58585
	sw $t0, -9052($fp)
	lw $t0, -9052($fp)
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	sw $t0, -9056($fp)
	lw $t0, -664($fp)
	sw $t0, -9060($fp)
	lw $t0, -4768($fp)
	sw $t0, -9064($fp)
	lw $t0, -9060($fp)
	lw $t1, -9064($fp)
	add $t0, $t0, $t1
	sw $t0, -9068($fp)
	addi $sp, $sp, -4
	lw $t0, -9048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9068($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9072($fp)
	addi $sp, $sp, 16
	lw $t0, -9072($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -9076($fp)
	lw $ra, -4($fp)
	lw $v0, -9076($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label427:
	li $t0, 52756
	sw $t0, -9080($fp)
	li $t0, 12613
	sw $t0, -9084($fp)
	lw $t0, -9084($fp)
	sw $t0, -9088($fp)
	lw $t0, -9088($fp)
	sw $t0, -9092($fp)
	li $t0, 57979
	sw $t0, -9096($fp)
	lw $t0, -9096($fp)
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	sw $t0, -9104($fp)
	li $t0, 21493
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	sw $t0, -9112($fp)
	lw $t0, -9112($fp)
	sw $t0, -9116($fp)
label432:
	lw $t0, -1372($fp)
	sw $t0, -9120($fp)
	lw $t1, -9120($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label434
label433:
	li $t0, 39482
	sw $t0, -9124($fp)
	lw $t0, -9100($fp)
	sw $t0, -9128($fp)
	lw $t0, -700($fp)
	sw $t0, -9132($fp)
	lw $t0, -9128($fp)
	lw $t1, -9132($fp)
	mul $t0, $t0, $t1
	sw $t0, -9136($fp)
	lw $t0, -712($fp)
	sw $t0, -9140($fp)
	lw $t0, -9136($fp)
	lw $t1, -9140($fp)
	sub $t0, $t0, $t1
	sw $t0, -9144($fp)
	li $t0, 0
	sw $t0, -9148($fp)
	lw $t0, -9088($fp)
	sw $t0, -9152($fp)
	li $t0, 15711
	sw $t0, -9156($fp)
	lw $t0, -9152($fp)
	lw $t1, -9156($fp)
	sub $t0, $t0, $t1
	sw $t0, -9160($fp)
	lw $t1, -9160($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label440
label440:
	lw $t0, -4696($fp)
	sw $t0, -9164($fp)
	lw $t1, -9164($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -9148($fp)
label439:
	addi $sp, $sp, -4
	lw $t0, -9124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9168($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -9168($fp)
	sub $t0, $t0, $t1
	sw $t0, -9172($fp)
	lw $t0, -4276($fp)
	sw $t0, -9176($fp)
	li $t0, 0
	lw $t1, -9176($fp)
	sub $t0, $t0, $t1
	sw $t0, -9180($fp)
	lw $t0, -9172($fp)
	lw $t1, -9180($fp)
	add $t0, $t0, $t1
	sw $t0, -9184($fp)
	li $t0, 0
	sw $t0, -9188($fp)
	addi $t0, $fp, -136
	sw $t0, -9192($fp)
	lw $t0, -4696($fp)
	sw $t0, -9196($fp)
	li $t0, 4
	lw $t1, -9196($fp)
	mul $t0, $t0, $t1
	sw $t0, -9200($fp)
	lw $t0, -9200($fp)
	lw $t1, -9192($fp)
	add $t0, $t0, $t1
	sw $t0, -9204($fp)
	lw $t0, -9204($fp)
	lw $t1, 0($t0)
	sw $t1, -9208($fp)
	lw $t1, -9208($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -9188($fp)
label442:
	lw $t0, -9184($fp)
	lw $t1, -9188($fp)
	add $t0, $t0, $t1
	sw $t0, -9212($fp)
	addi $t0, $fp, -208
	sw $t0, -9216($fp)
	li $t0, 0
	sw $t0, -9220($fp)
	lw $t0, -4972($fp)
	sw $t0, -9224($fp)
	lw $t1, -9224($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label445
label445:
	lw $t0, -4540($fp)
	sw $t0, -9228($fp)
	lw $t1, -9228($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -9220($fp)
label444:
	li $t0, 4
	lw $t1, -9220($fp)
	mul $t0, $t0, $t1
	sw $t0, -9232($fp)
	lw $t0, -9232($fp)
	lw $t1, -9216($fp)
	add $t0, $t0, $t1
	sw $t0, -9236($fp)
	lw $t0, -9236($fp)
	lw $t1, 0($t0)
	sw $t1, -9240($fp)
	lw $t0, -9212($fp)
	lw $t1, -9240($fp)
	add $t0, $t0, $t1
	sw $t0, -9244($fp)
	lw $t1, -9244($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 9075
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	sw $t0, -9252($fp)
	lw $t0, -9252($fp)
	sw $t0, -9256($fp)
	li $t0, 40945
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	sw $t0, -9268($fp)
	addi $t0, $fp, -16
	sw $t0, -9272($fp)
	addi $t0, $fp, -336
	sw $t0, -9276($fp)
	lw $t0, -2584($fp)
	sw $t0, -9280($fp)
	li $t0, 4
	lw $t1, -9280($fp)
	mul $t0, $t0, $t1
	sw $t0, -9284($fp)
	lw $t0, -9284($fp)
	lw $t1, -9276($fp)
	add $t0, $t0, $t1
	sw $t0, -9288($fp)
	lw $t0, -9288($fp)
	lw $t1, 0($t0)
	sw $t1, -9292($fp)
	li $t0, 0
	sw $t0, -9296($fp)
	addi $t0, $fp, -64
	sw $t0, -9300($fp)
	lw $t0, -4696($fp)
	sw $t0, -9304($fp)
	li $t0, 4
	lw $t1, -9304($fp)
	mul $t0, $t0, $t1
	sw $t0, -9308($fp)
	lw $t0, -9308($fp)
	lw $t1, -9300($fp)
	add $t0, $t0, $t1
	sw $t0, -9312($fp)
	lw $t0, -9312($fp)
	lw $t1, 0($t0)
	sw $t1, -9316($fp)
	lw $t0, -9264($fp)
	sw $t0, -9320($fp)
	lw $t1, -9316($fp)
	lw $t2, -9320($fp)
	blt $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -9296($fp)
label450:
	li $t0, 51070
	sw $t0, -9324($fp)
	lw $t0, -1384($fp)
	sw $t0, -9328($fp)
	lw $t0, -9324($fp)
	lw $t1, -9328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9332($fp)
	li $t0, 46205
	sw $t0, -9336($fp)
	lw $t0, -9332($fp)
	lw $t1, -9336($fp)
	mul $t0, $t0, $t1
	sw $t0, -9340($fp)
	addi $sp, $sp, -4
	lw $t0, -9292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9344($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -9344($fp)
	mul $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t0, -9348($fp)
	lw $t1, -9272($fp)
	add $t0, $t0, $t1
	sw $t0, -9352($fp)
	lw $t0, -9352($fp)
	lw $t1, 0($t0)
	sw $t1, -9356($fp)
	lw $t1, -9356($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 35149
	sw $t0, -9360($fp)
	lw $t0, -9360($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -9364($fp)
	li $t0, 21467
	sw $t0, -9368($fp)
	lw $t0, -2140($fp)
	sw $t0, -9372($fp)
	lw $t0, -1108($fp)
	sw $t0, -9376($fp)
	lw $t0, -9372($fp)
	lw $t1, -9376($fp)
	mul $t0, $t0, $t1
	sw $t0, -9380($fp)
	addi $sp, $sp, -4
	lw $t0, -9364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9380($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9384($fp)
	addi $sp, $sp, 16
	j label448
label447:
	li $t0, 12735
	sw $t0, -9388($fp)
	li $t0, 0
	sw $t0, -9392($fp)
	lw $t0, -4540($fp)
	sw $t0, -9396($fp)
	lw $t1, -9396($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label451
label451:
	li $t0, 1
	sw $t0, -9392($fp)
label452:
	lw $t0, -9388($fp)
	lw $t1, -9392($fp)
	mul $t0, $t0, $t1
	sw $t0, -9400($fp)
label448:
	li $t0, 0
	sw $t0, -9404($fp)
	lw $t0, -2164($fp)
	sw $t0, -9408($fp)
	li $t0, 0
	sw $t0, -9412($fp)
	lw $t0, -4708($fp)
	sw $t0, -9416($fp)
	lw $t1, -9416($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -9412($fp)
label456:
	lw $t0, -9252($fp)
	sw $t0, -9420($fp)
	li $t0, 0
	sw $t0, -9424($fp)
	li $t0, 47615
	sw $t0, -9428($fp)
	li $t0, 18022
	sw $t0, -9432($fp)
	lw $t0, -9428($fp)
	lw $t1, -9432($fp)
	mul $t0, $t0, $t1
	sw $t0, -9436($fp)
	li $t0, 12888
	sw $t0, -9440($fp)
	lw $t1, -9436($fp)
	lw $t2, -9440($fp)
	ble $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -9424($fp)
label458:
	li $t0, 35959
	sw $t0, -9444($fp)
	lw $t0, -9444($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	sw $t0, -9448($fp)
	addi $sp, $sp, -4
	lw $t0, -9420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9448($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9452($fp)
	addi $sp, $sp, 16
	lw $t0, -9412($fp)
	lw $t1, -9452($fp)
	add $t0, $t0, $t1
	sw $t0, -9456($fp)
	lw $t1, -9408($fp)
	lw $t2, -9456($fp)
	bgt $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -9404($fp)
label454:
	j label437
label436:
	li $t0, 0
	sw $t0, -9460($fp)
	lw $t0, -2200($fp)
	sw $t0, -9464($fp)
	lw $t1, -9464($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 1
	sw $t0, -9460($fp)
label460:
	addi $t0, $fp, -100
	sw $t0, -9468($fp)
	li $t0, 0
	sw $t0, -9472($fp)
	li $t0, 0
	sw $t0, -9476($fp)
	li $t0, 34553
	sw $t0, -9480($fp)
	lw $t1, -9480($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label463
label463:
	li $t0, 1
	sw $t0, -9476($fp)
label464:
	li $t0, 30910
	sw $t0, -9484($fp)
	lw $t1, -9476($fp)
	lw $t2, -9484($fp)
	bne $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -9472($fp)
label462:
	li $t0, 4
	lw $t1, -9472($fp)
	mul $t0, $t0, $t1
	sw $t0, -9488($fp)
	lw $t0, -9488($fp)
	lw $t1, -9468($fp)
	add $t0, $t0, $t1
	sw $t0, -9492($fp)
	lw $t0, -9492($fp)
	lw $t1, 0($t0)
	sw $t1, -9496($fp)
	li $t0, 0
	lw $t1, -9496($fp)
	sub $t0, $t0, $t1
	sw $t0, -9500($fp)
label437:
	j label432
label434:
	addi $t0, $fp, -136
	sw $t0, -9504($fp)
	lw $t0, -3040($fp)
	sw $t0, -9508($fp)
	li $t0, 4
	lw $t1, -9508($fp)
	mul $t0, $t0, $t1
	sw $t0, -9512($fp)
	lw $t0, -9512($fp)
	lw $t1, -9504($fp)
	add $t0, $t0, $t1
	sw $t0, -9516($fp)
	lw $t0, -9516($fp)
	lw $t1, 0($t0)
	sw $t1, -9520($fp)
	li $t0, 0
	lw $t1, -9520($fp)
	sub $t0, $t0, $t1
	sw $t0, -9524($fp)
	lw $t0, -1396($fp)
	sw $t0, -9528($fp)
	addi $t0, $fp, -556
	sw $t0, -9532($fp)
	li $t0, 4
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
	li $t0, 30476
	sw $t0, -9552($fp)
	lw $t0, -9548($fp)
	lw $t1, -9552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9556($fp)
	li $t0, 0
	sw $t0, -9560($fp)
	li $t0, 0
	sw $t0, -9564($fp)
	lw $t0, -4708($fp)
	sw $t0, -9568($fp)
	lw $t0, -4732($fp)
	sw $t0, -9572($fp)
	lw $t1, -9568($fp)
	lw $t2, -9572($fp)
	bge $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -9564($fp)
label468:
	li $t0, 50187
	sw $t0, -9576($fp)
	lw $t1, -9564($fp)
	lw $t2, -9576($fp)
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -9560($fp)
label466:
	addi $t0, $fp, -508
	sw $t0, -9580($fp)
	lw $t0, -2740($fp)
	sw $t0, -9584($fp)
	li $t0, 4
	lw $t1, -9584($fp)
	mul $t0, $t0, $t1
	sw $t0, -9588($fp)
	lw $t0, -9588($fp)
	lw $t1, -9580($fp)
	add $t0, $t0, $t1
	sw $t0, -9592($fp)
	lw $t0, -9592($fp)
	lw $t1, 0($t0)
	sw $t1, -9596($fp)
	lw $t0, -9112($fp)
	sw $t0, -9600($fp)
	lw $t0, -9600($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	sw $t0, -9604($fp)
	addi $sp, $sp, -4
	lw $t0, -9560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9604($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9608($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -9528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9608($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9612($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -9612($fp)
	sub $t0, $t0, $t1
	sw $t0, -9616($fp)
	lw $t0, -9524($fp)
	lw $t1, -9616($fp)
	sub $t0, $t0, $t1
	sw $t0, -9620($fp)
	li $t0, 42048
	sw $t0, -9624($fp)
	lw $t0, -9624($fp)
	sw $t0, -9628($fp)
	lw $t0, -9628($fp)
	sw $t0, -9632($fp)
	lw $t0, -9628($fp)
	sw $t0, -9636($fp)
	lw $t0, -9636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9640($fp)
	li $t0, 54473
	sw $t0, -9644($fp)
	lw $t0, -4948($fp)
	sw $t0, -9648($fp)
	lw $t0, -9644($fp)
	lw $t1, -9648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9652($fp)
	li $t0, 54797
	sw $t0, -9656($fp)
	lw $t0, -9652($fp)
	lw $t1, -9656($fp)
	mul $t0, $t0, $t1
	sw $t0, -9660($fp)
	lw $t0, -4936($fp)
	sw $t0, -9664($fp)
	li $t0, 59986
	sw $t0, -9668($fp)
	lw $t0, -9664($fp)
	lw $t1, -9668($fp)
	mul $t0, $t0, $t1
	sw $t0, -9672($fp)
	li $t0, 40241
	sw $t0, -9676($fp)
	addi $sp, $sp, -4
	lw $t0, -9660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9680($fp)
	addi $sp, $sp, 16
	lw $t1, -9680($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label471:
	li $t0, 0
	sw $t0, -9684($fp)
	li $t0, 38514
	sw $t0, -9688($fp)
	lw $t0, -4948($fp)
	sw $t0, -9692($fp)
	lw $t0, -9688($fp)
	lw $t1, -9692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9696($fp)
	lw $t0, -4960($fp)
	sw $t0, -9700($fp)
	lw $t1, -9696($fp)
	lw $t2, -9700($fp)
	ble $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -9684($fp)
label473:
	addi $t0, $fp, -64
	sw $t0, -9704($fp)
	lw $t0, -4276($fp)
	sw $t0, -9708($fp)
	li $t0, 4
	lw $t1, -9708($fp)
	mul $t0, $t0, $t1
	sw $t0, -9712($fp)
	lw $t0, -9712($fp)
	lw $t1, -9704($fp)
	add $t0, $t0, $t1
	sw $t0, -9716($fp)
	lw $t0, -9716($fp)
	lw $t1, 0($t0)
	sw $t1, -9720($fp)
	lw $t1, -9684($fp)
	lw $t2, -9720($fp)
	bge $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -9640($fp)
label470:
	lw $ra, -4($fp)
	lw $v0, -9640($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -9628($fp)
	sw $t0, -9724($fp)
	lw $t0, -9724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -9728($fp)
	addi $t0, $fp, -24
	sw $t0, -9732($fp)
	li $t0, 0
	sw $t0, -9736($fp)
	lw $t0, -1096($fp)
	sw $t0, -9740($fp)
	lw $t0, -1348($fp)
	sw $t0, -9744($fp)
	lw $t1, -9740($fp)
	lw $t2, -9744($fp)
	bge $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -9736($fp)
label475:
	li $t0, 4
	lw $t1, -9736($fp)
	mul $t0, $t0, $t1
	sw $t0, -9748($fp)
	lw $t0, -9748($fp)
	lw $t1, -9732($fp)
	add $t0, $t0, $t1
	sw $t0, -9752($fp)
	lw $t0, -9752($fp)
	lw $t1, 0($t0)
	sw $t1, -9756($fp)
	li $t0, 4
	lw $t1, -9756($fp)
	mul $t0, $t0, $t1
	sw $t0, -9760($fp)
	lw $t0, -9760($fp)
	lw $t1, -9728($fp)
	add $t0, $t0, $t1
	sw $t0, -9764($fp)
	lw $t0, -9764($fp)
	lw $t1, 0($t0)
	sw $t1, -9768($fp)
	lw $ra, -4($fp)
	lw $v0, -9768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -9628($fp)
	sw $t0, -9772($fp)
	lw $t0, -9772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9776($fp)
	lw $t0, -9628($fp)
	sw $t0, -9780($fp)
	li $t0, 0
	lw $t1, -9780($fp)
	sub $t0, $t0, $t1
	sw $t0, -9784($fp)
	lw $t1, -9784($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label478:
	li $t0, 40289
	sw $t0, -9788($fp)
	lw $t1, -9788($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -9776($fp)
label477:
	lw $t0, -2164($fp)
	sw $t0, -9792($fp)
	lw $t0, -9792($fp)
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	sw $t0, -9796($fp)
	li $t0, 0
	sw $t0, -9800($fp)
	li $t0, 0
	sw $t0, -9804($fp)
	li $t0, 47846
	sw $t0, -9808($fp)
	li $t0, 25735
	sw $t0, -9812($fp)
	lw $t1, -9808($fp)
	lw $t2, -9812($fp)
	bgt $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -9804($fp)
label482:
	li $t0, 51737
	sw $t0, -9816($fp)
	lw $t1, -9804($fp)
	lw $t2, -9816($fp)
	bne $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -9800($fp)
label480:
	li $t0, 0
	sw $t0, -9820($fp)
	lw $t0, -4996($fp)
	sw $t0, -9824($fp)
	lw $t1, -9824($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label483
label483:
	li $t0, 1
	sw $t0, -9820($fp)
label484:
	li $t0, 0
	sw $t0, -9828($fp)
	li $t0, 39124
	sw $t0, -9832($fp)
	lw $t1, -9832($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label485:
	li $t0, 1
	sw $t0, -9828($fp)
label486:
	addi $sp, $sp, -4
	lw $t0, -9800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9836($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -9776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9836($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9840($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -9844($fp)
	addi $t0, $fp, -156
	sw $t0, -9848($fp)
	li $t0, 1
	sw $t0, -9852($fp)
	li $t0, 4
	lw $t1, -9852($fp)
	mul $t0, $t0, $t1
	sw $t0, -9856($fp)
	lw $t0, -9856($fp)
	lw $t1, -9848($fp)
	add $t0, $t0, $t1
	sw $t0, -9860($fp)
	lw $t0, -9860($fp)
	lw $t1, 0($t0)
	sw $t1, -9864($fp)
	li $t0, 0
	sw $t0, -9868($fp)
	lw $t0, -4756($fp)
	sw $t0, -9872($fp)
	li $t0, 47228
	sw $t0, -9876($fp)
	lw $t1, -9872($fp)
	lw $t2, -9876($fp)
	ble $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -9868($fp)
label490:
	li $t0, 0
	sw $t0, -9880($fp)
	lw $t0, -3808($fp)
	sw $t0, -9884($fp)
	lw $t1, -9884($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label493:
	lw $t0, -3400($fp)
	sw $t0, -9888($fp)
	lw $t1, -9888($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -9880($fp)
label492:
	addi $sp, $sp, -4
	lw $t0, -9864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9892($fp)
	addi $sp, $sp, 16
	lw $t1, -9892($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label487
label487:
	li $t0, 1
	sw $t0, -9844($fp)
label488:
	lw $t0, -9840($fp)
	lw $t1, -9844($fp)
	mul $t0, $t0, $t1
	sw $t0, -9896($fp)
	lw $ra, -4($fp)
	lw $v0, -9896($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label494:
	li $t0, 0
	sw $t0, -9900($fp)
	lw $t0, -2128($fp)
	sw $t0, -9904($fp)
	lw $t1, -9904($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label497
label497:
	li $t0, 1
	sw $t0, -9900($fp)
label498:
	li $t0, 0
	lw $t1, -9900($fp)
	sub $t0, $t0, $t1
	sw $t0, -9908($fp)
	li $t0, 0
	lw $t1, -9908($fp)
	sub $t0, $t0, $t1
	sw $t0, -9912($fp)
	lw $t0, -9912($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -9916($fp)
	lw $t1, -9916($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label496
label495:
	lw $t0, -4696($fp)
	sw $t0, -9920($fp)
	lw $t1, -9920($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label499:
	li $t0, 0
	sw $t0, -9924($fp)
	li $t0, 0
	sw $t0, -9928($fp)
	li $t0, 0
	sw $t0, -9932($fp)
	lw $t0, -820($fp)
	sw $t0, -9936($fp)
	lw $t0, -4516($fp)
	sw $t0, -9940($fp)
	lw $t1, -9936($fp)
	lw $t2, -9940($fp)
	beq $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -9932($fp)
label508:
	lw $t0, -3400($fp)
	sw $t0, -9944($fp)
	lw $t1, -9932($fp)
	lw $t2, -9944($fp)
	beq $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -9928($fp)
label506:
	lw $t0, -2776($fp)
	sw $t0, -9948($fp)
	lw $t0, -9948($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -9952($fp)
	lw $t0, -5200($fp)
	sw $t0, -9956($fp)
	addi $sp, $sp, -4
	lw $t0, -9928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9960($fp)
	addi $sp, $sp, 16
	lw $t1, -9960($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label504:
	lw $t0, -1360($fp)
	sw $t0, -9964($fp)
	lw $t1, -9964($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -9924($fp)
label503:
	j label501
label500:
	li $t0, 56303
	sw $t0, -9968($fp)
	lw $t0, -9968($fp)
	sw $t0, -9972($fp)
	lw $t0, -9972($fp)
	sw $t0, -9976($fp)
	lw $t0, -748($fp)
	sw $t0, -9980($fp)
	li $t0, 34749
	sw $t0, -9984($fp)
	lw $t0, -9980($fp)
	lw $t1, -9984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9988($fp)
	li $t0, 0
	sw $t0, -9992($fp)
	lw $t0, -4516($fp)
	sw $t0, -9996($fp)
	lw $t0, -736($fp)
	sw $t0, -10000($fp)
	lw $t0, -9996($fp)
	lw $t1, -10000($fp)
	mul $t0, $t0, $t1
	sw $t0, -10004($fp)
	lw $t1, -10004($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label511
label511:
	li $t0, 49708
	sw $t0, -10008($fp)
	lw $t1, -10008($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -9992($fp)
label510:
	li $t0, 0
	sw $t0, -10012($fp)
	addi $t0, $fp, -584
	sw $t0, -10016($fp)
	li $t0, 0
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
	lw $t1, -10032($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label513
label514:
	li $t0, 34919
	sw $t0, -10036($fp)
	lw $t1, -10036($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -10012($fp)
label513:
	addi $sp, $sp, -4
	lw $t0, -9988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10012($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10040($fp)
	addi $sp, $sp, 16
	lw $t0, -9972($fp)
	sw $t0, -10044($fp)
	li $t0, 0
	sw $t0, -10048($fp)
	addi $t0, $fp, -64
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
	lw $t1, -10068($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label515
label515:
	li $t0, 1
	sw $t0, -10048($fp)
label516:
	addi $sp, $sp, -4
	lw $t0, -10040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10072($fp)
	addi $sp, $sp, 16
	lw $t0, -4984($fp)
	sw $t0, -10076($fp)
	lw $t0, -10072($fp)
	lw $t1, -10076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10080($fp)
	li $t0, 0
	sw $t0, -10084($fp)
	addi $t0, $fp, -508
	sw $t0, -10088($fp)
	lw $t0, -4240($fp)
	sw $t0, -10092($fp)
	li $t0, 4
	lw $t1, -10092($fp)
	mul $t0, $t0, $t1
	sw $t0, -10096($fp)
	lw $t0, -10096($fp)
	lw $t1, -10088($fp)
	add $t0, $t0, $t1
	sw $t0, -10100($fp)
	lw $t0, -10100($fp)
	lw $t1, 0($t0)
	sw $t1, -10104($fp)
	lw $t0, -4732($fp)
	sw $t0, -10108($fp)
	lw $t0, -10104($fp)
	lw $t1, -10108($fp)
	mul $t0, $t0, $t1
	sw $t0, -10112($fp)
	li $t0, 0
	sw $t0, -10116($fp)
	li $t0, 16998
	sw $t0, -10120($fp)
	lw $t1, -10120($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label520
label520:
	li $t0, 1
	sw $t0, -10116($fp)
label521:
	lw $t0, -10112($fp)
	lw $t1, -10116($fp)
	mul $t0, $t0, $t1
	sw $t0, -10124($fp)
	lw $t0, -4540($fp)
	sw $t0, -10128($fp)
	li $t0, 0
	lw $t1, -10128($fp)
	sub $t0, $t0, $t1
	sw $t0, -10132($fp)
	lw $t1, -10124($fp)
	lw $t2, -10132($fp)
	beq $t1, $t2, label517
	j label519
label519:
	li $t0, 0
	sw $t0, -10136($fp)
	li $t0, 0
	sw $t0, -10140($fp)
	lw $t0, -4288($fp)
	sw $t0, -10144($fp)
	lw $t0, -1072($fp)
	sw $t0, -10148($fp)
	lw $t1, -10144($fp)
	lw $t2, -10148($fp)
	bge $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -10140($fp)
label525:
	lw $t0, -1084($fp)
	sw $t0, -10152($fp)
	lw $t1, -10140($fp)
	lw $t2, -10152($fp)
	ble $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -10136($fp)
label523:
	li $t0, 2194
	sw $t0, -10156($fp)
	lw $t0, -10156($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -10160($fp)
	addi $t0, $fp, -64
	sw $t0, -10164($fp)
	lw $t0, -2584($fp)
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
	addi $sp, $sp, -4
	lw $t0, -10136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10184($fp)
	addi $sp, $sp, 16
	li $t0, 47637
	sw $t0, -10188($fp)
	lw $t0, -10184($fp)
	lw $t1, -10188($fp)
	mul $t0, $t0, $t1
	sw $t0, -10192($fp)
	li $t0, 51551
	sw $t0, -10196($fp)
	lw $t1, -10192($fp)
	lw $t2, -10196($fp)
	blt $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -10084($fp)
label518:
	lw $t0, -2416($fp)
	sw $t0, -10200($fp)
	li $t0, 33104
	sw $t0, -10204($fp)
label501:
	j label494
label496:
	li $t0, 32288
	sw $t0, -10336($fp)
	lw $t0, -10336($fp)
	sw $t0, -10340($fp)
	lw $t0, -10340($fp)
	sw $t0, -10344($fp)
	li $t0, 10940
	sw $t0, -10348($fp)
	addi $t0, $fp, -10236
	sw $t0, -10352($fp)
	li $t0, 0
	sw $t0, -10356($fp)
	lw $t0, -10356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10360($fp)
	lw $t0, -10352($fp)
	lw $t1, -10360($fp)
	add $t0, $t0, $t1
	sw $t0, -10364($fp)
	lw $t0, -10348($fp)
	lw $t1, -10364($fp)
	sw $t0, 0($t1)
	lw $t0, -10364($fp)
	lw $t1, 0($t0)
	sw $t1, -10368($fp)
	li $t0, 47284
	sw $t0, -10372($fp)
	addi $t0, $fp, -10236
	sw $t0, -10376($fp)
	li $t0, 1
	sw $t0, -10380($fp)
	lw $t0, -10380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10384($fp)
	lw $t0, -10376($fp)
	lw $t1, -10384($fp)
	add $t0, $t0, $t1
	sw $t0, -10388($fp)
	lw $t0, -10372($fp)
	lw $t1, -10388($fp)
	sw $t0, 0($t1)
	lw $t0, -10388($fp)
	lw $t1, 0($t0)
	sw $t1, -10392($fp)
	li $t0, 62764
	sw $t0, -10396($fp)
	addi $t0, $fp, -10236
	sw $t0, -10400($fp)
	li $t0, 2
	sw $t0, -10404($fp)
	lw $t0, -10404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10408($fp)
	lw $t0, -10400($fp)
	lw $t1, -10408($fp)
	add $t0, $t0, $t1
	sw $t0, -10412($fp)
	lw $t0, -10396($fp)
	lw $t1, -10412($fp)
	sw $t0, 0($t1)
	lw $t0, -10412($fp)
	lw $t1, 0($t0)
	sw $t1, -10416($fp)
	li $t0, 52988
	sw $t0, -10420($fp)
	addi $t0, $fp, -10236
	sw $t0, -10424($fp)
	li $t0, 3
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10432($fp)
	lw $t0, -10424($fp)
	lw $t1, -10432($fp)
	add $t0, $t0, $t1
	sw $t0, -10436($fp)
	lw $t0, -10420($fp)
	lw $t1, -10436($fp)
	sw $t0, 0($t1)
	lw $t0, -10436($fp)
	lw $t1, 0($t0)
	sw $t1, -10440($fp)
	li $t0, 21989
	sw $t0, -10444($fp)
	addi $t0, $fp, -10236
	sw $t0, -10448($fp)
	li $t0, 4
	sw $t0, -10452($fp)
	lw $t0, -10452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10456($fp)
	lw $t0, -10448($fp)
	lw $t1, -10456($fp)
	add $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t0, -10444($fp)
	lw $t1, -10460($fp)
	sw $t0, 0($t1)
	lw $t0, -10460($fp)
	lw $t1, 0($t0)
	sw $t1, -10464($fp)
	li $t0, 57214
	sw $t0, -10468($fp)
	addi $t0, $fp, -10236
	sw $t0, -10472($fp)
	li $t0, 5
	sw $t0, -10476($fp)
	lw $t0, -10476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10480($fp)
	lw $t0, -10472($fp)
	lw $t1, -10480($fp)
	add $t0, $t0, $t1
	sw $t0, -10484($fp)
	lw $t0, -10468($fp)
	lw $t1, -10484($fp)
	sw $t0, 0($t1)
	lw $t0, -10484($fp)
	lw $t1, 0($t0)
	sw $t1, -10488($fp)
	li $t0, 41925
	sw $t0, -10492($fp)
	addi $t0, $fp, -10236
	sw $t0, -10496($fp)
	li $t0, 6
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10504($fp)
	lw $t0, -10496($fp)
	lw $t1, -10504($fp)
	add $t0, $t0, $t1
	sw $t0, -10508($fp)
	lw $t0, -10492($fp)
	lw $t1, -10508($fp)
	sw $t0, 0($t1)
	lw $t0, -10508($fp)
	lw $t1, 0($t0)
	sw $t1, -10512($fp)
	li $t0, 11250
	sw $t0, -10516($fp)
	addi $t0, $fp, -10236
	sw $t0, -10520($fp)
	li $t0, 7
	sw $t0, -10524($fp)
	lw $t0, -10524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10528($fp)
	lw $t0, -10520($fp)
	lw $t1, -10528($fp)
	add $t0, $t0, $t1
	sw $t0, -10532($fp)
	lw $t0, -10516($fp)
	lw $t1, -10532($fp)
	sw $t0, 0($t1)
	lw $t0, -10532($fp)
	lw $t1, 0($t0)
	sw $t1, -10536($fp)
	li $t0, 30193
	sw $t0, -10540($fp)
	lw $t0, -10540($fp)
	sw $t0, -10544($fp)
	lw $t0, -10544($fp)
	sw $t0, -10548($fp)
	li $t0, 15513
	sw $t0, -10552($fp)
	addi $t0, $fp, -10256
	sw $t0, -10556($fp)
	li $t0, 0
	sw $t0, -10560($fp)
	lw $t0, -10560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10564($fp)
	lw $t0, -10556($fp)
	lw $t1, -10564($fp)
	add $t0, $t0, $t1
	sw $t0, -10568($fp)
	lw $t0, -10552($fp)
	lw $t1, -10568($fp)
	sw $t0, 0($t1)
	lw $t0, -10568($fp)
	lw $t1, 0($t0)
	sw $t1, -10572($fp)
	li $t0, 59096
	sw $t0, -10576($fp)
	addi $t0, $fp, -10256
	sw $t0, -10580($fp)
	li $t0, 1
	sw $t0, -10584($fp)
	lw $t0, -10584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10588($fp)
	lw $t0, -10580($fp)
	lw $t1, -10588($fp)
	add $t0, $t0, $t1
	sw $t0, -10592($fp)
	lw $t0, -10576($fp)
	lw $t1, -10592($fp)
	sw $t0, 0($t1)
	lw $t0, -10592($fp)
	lw $t1, 0($t0)
	sw $t1, -10596($fp)
	li $t0, 55928
	sw $t0, -10600($fp)
	addi $t0, $fp, -10256
	sw $t0, -10604($fp)
	li $t0, 2
	sw $t0, -10608($fp)
	lw $t0, -10608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10612($fp)
	lw $t0, -10604($fp)
	lw $t1, -10612($fp)
	add $t0, $t0, $t1
	sw $t0, -10616($fp)
	lw $t0, -10600($fp)
	lw $t1, -10616($fp)
	sw $t0, 0($t1)
	lw $t0, -10616($fp)
	lw $t1, 0($t0)
	sw $t1, -10620($fp)
	li $t0, 1715
	sw $t0, -10624($fp)
	addi $t0, $fp, -10256
	sw $t0, -10628($fp)
	li $t0, 3
	sw $t0, -10632($fp)
	lw $t0, -10632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10636($fp)
	lw $t0, -10628($fp)
	lw $t1, -10636($fp)
	add $t0, $t0, $t1
	sw $t0, -10640($fp)
	lw $t0, -10624($fp)
	lw $t1, -10640($fp)
	sw $t0, 0($t1)
	lw $t0, -10640($fp)
	lw $t1, 0($t0)
	sw $t1, -10644($fp)
	li $t0, 33849
	sw $t0, -10648($fp)
	addi $t0, $fp, -10256
	sw $t0, -10652($fp)
	li $t0, 4
	sw $t0, -10656($fp)
	lw $t0, -10656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10660($fp)
	lw $t0, -10652($fp)
	lw $t1, -10660($fp)
	add $t0, $t0, $t1
	sw $t0, -10664($fp)
	lw $t0, -10648($fp)
	lw $t1, -10664($fp)
	sw $t0, 0($t1)
	lw $t0, -10664($fp)
	lw $t1, 0($t0)
	sw $t1, -10668($fp)
	li $t0, 37620
	sw $t0, -10672($fp)
	lw $t0, -10672($fp)
	sw $t0, -10676($fp)
	lw $t0, -10676($fp)
	sw $t0, -10680($fp)
	li $t0, 3627
	sw $t0, -10684($fp)
	lw $t0, -10684($fp)
	sw $t0, -10688($fp)
	lw $t0, -10688($fp)
	sw $t0, -10692($fp)
	li $t0, 48084
	sw $t0, -10696($fp)
	lw $t0, -10696($fp)
	sw $t0, -10700($fp)
	lw $t0, -10700($fp)
	sw $t0, -10704($fp)
	li $t0, 28387
	sw $t0, -10708($fp)
	lw $t0, -10708($fp)
	sw $t0, -10712($fp)
	lw $t0, -10712($fp)
	sw $t0, -10716($fp)
	li $t0, 46485
	sw $t0, -10720($fp)
	lw $t0, -10720($fp)
	sw $t0, -10724($fp)
	lw $t0, -10724($fp)
	sw $t0, -10728($fp)
	li $t0, 47853
	sw $t0, -10732($fp)
	lw $t0, -10732($fp)
	sw $t0, -10736($fp)
	lw $t0, -10736($fp)
	sw $t0, -10740($fp)
	li $t0, 65359
	sw $t0, -10744($fp)
	lw $t0, -10744($fp)
	sw $t0, -10748($fp)
	lw $t0, -10748($fp)
	sw $t0, -10752($fp)
	li $t0, 45275
	sw $t0, -10756($fp)
	addi $t0, $fp, -10284
	sw $t0, -10760($fp)
	li $t0, 0
	sw $t0, -10764($fp)
	lw $t0, -10764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10768($fp)
	lw $t0, -10760($fp)
	lw $t1, -10768($fp)
	add $t0, $t0, $t1
	sw $t0, -10772($fp)
	lw $t0, -10756($fp)
	lw $t1, -10772($fp)
	sw $t0, 0($t1)
	lw $t0, -10772($fp)
	lw $t1, 0($t0)
	sw $t1, -10776($fp)
	li $t0, 17236
	sw $t0, -10780($fp)
	addi $t0, $fp, -10284
	sw $t0, -10784($fp)
	li $t0, 1
	sw $t0, -10788($fp)
	lw $t0, -10788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10792($fp)
	lw $t0, -10784($fp)
	lw $t1, -10792($fp)
	add $t0, $t0, $t1
	sw $t0, -10796($fp)
	lw $t0, -10780($fp)
	lw $t1, -10796($fp)
	sw $t0, 0($t1)
	lw $t0, -10796($fp)
	lw $t1, 0($t0)
	sw $t1, -10800($fp)
	li $t0, 49531
	sw $t0, -10804($fp)
	addi $t0, $fp, -10284
	sw $t0, -10808($fp)
	li $t0, 2
	sw $t0, -10812($fp)
	lw $t0, -10812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10816($fp)
	lw $t0, -10808($fp)
	lw $t1, -10816($fp)
	add $t0, $t0, $t1
	sw $t0, -10820($fp)
	lw $t0, -10804($fp)
	lw $t1, -10820($fp)
	sw $t0, 0($t1)
	lw $t0, -10820($fp)
	lw $t1, 0($t0)
	sw $t1, -10824($fp)
	li $t0, 14488
	sw $t0, -10828($fp)
	addi $t0, $fp, -10284
	sw $t0, -10832($fp)
	li $t0, 3
	sw $t0, -10836($fp)
	lw $t0, -10836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10840($fp)
	lw $t0, -10832($fp)
	lw $t1, -10840($fp)
	add $t0, $t0, $t1
	sw $t0, -10844($fp)
	lw $t0, -10828($fp)
	lw $t1, -10844($fp)
	sw $t0, 0($t1)
	lw $t0, -10844($fp)
	lw $t1, 0($t0)
	sw $t1, -10848($fp)
	li $t0, 34234
	sw $t0, -10852($fp)
	addi $t0, $fp, -10284
	sw $t0, -10856($fp)
	li $t0, 4
	sw $t0, -10860($fp)
	lw $t0, -10860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10864($fp)
	lw $t0, -10856($fp)
	lw $t1, -10864($fp)
	add $t0, $t0, $t1
	sw $t0, -10868($fp)
	lw $t0, -10852($fp)
	lw $t1, -10868($fp)
	sw $t0, 0($t1)
	lw $t0, -10868($fp)
	lw $t1, 0($t0)
	sw $t1, -10872($fp)
	li $t0, 51725
	sw $t0, -10876($fp)
	addi $t0, $fp, -10284
	sw $t0, -10880($fp)
	li $t0, 5
	sw $t0, -10884($fp)
	lw $t0, -10884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10888($fp)
	lw $t0, -10880($fp)
	lw $t1, -10888($fp)
	add $t0, $t0, $t1
	sw $t0, -10892($fp)
	lw $t0, -10876($fp)
	lw $t1, -10892($fp)
	sw $t0, 0($t1)
	lw $t0, -10892($fp)
	lw $t1, 0($t0)
	sw $t1, -10896($fp)
	li $t0, 62125
	sw $t0, -10900($fp)
	addi $t0, $fp, -10284
	sw $t0, -10904($fp)
	li $t0, 6
	sw $t0, -10908($fp)
	lw $t0, -10908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10912($fp)
	lw $t0, -10904($fp)
	lw $t1, -10912($fp)
	add $t0, $t0, $t1
	sw $t0, -10916($fp)
	lw $t0, -10900($fp)
	lw $t1, -10916($fp)
	sw $t0, 0($t1)
	lw $t0, -10916($fp)
	lw $t1, 0($t0)
	sw $t1, -10920($fp)
	li $t0, 20250
	sw $t0, -10924($fp)
	addi $t0, $fp, -10324
	sw $t0, -10928($fp)
	li $t0, 0
	sw $t0, -10932($fp)
	lw $t0, -10932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10936($fp)
	lw $t0, -10928($fp)
	lw $t1, -10936($fp)
	add $t0, $t0, $t1
	sw $t0, -10940($fp)
	lw $t0, -10924($fp)
	lw $t1, -10940($fp)
	sw $t0, 0($t1)
	lw $t0, -10940($fp)
	lw $t1, 0($t0)
	sw $t1, -10944($fp)
	li $t0, 19293
	sw $t0, -10948($fp)
	addi $t0, $fp, -10324
	sw $t0, -10952($fp)
	li $t0, 1
	sw $t0, -10956($fp)
	lw $t0, -10956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10960($fp)
	lw $t0, -10952($fp)
	lw $t1, -10960($fp)
	add $t0, $t0, $t1
	sw $t0, -10964($fp)
	lw $t0, -10948($fp)
	lw $t1, -10964($fp)
	sw $t0, 0($t1)
	lw $t0, -10964($fp)
	lw $t1, 0($t0)
	sw $t1, -10968($fp)
	li $t0, 28877
	sw $t0, -10972($fp)
	addi $t0, $fp, -10324
	sw $t0, -10976($fp)
	li $t0, 2
	sw $t0, -10980($fp)
	lw $t0, -10980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10984($fp)
	lw $t0, -10976($fp)
	lw $t1, -10984($fp)
	add $t0, $t0, $t1
	sw $t0, -10988($fp)
	lw $t0, -10972($fp)
	lw $t1, -10988($fp)
	sw $t0, 0($t1)
	lw $t0, -10988($fp)
	lw $t1, 0($t0)
	sw $t1, -10992($fp)
	li $t0, 31190
	sw $t0, -10996($fp)
	addi $t0, $fp, -10324
	sw $t0, -11000($fp)
	li $t0, 3
	sw $t0, -11004($fp)
	lw $t0, -11004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11008($fp)
	lw $t0, -11000($fp)
	lw $t1, -11008($fp)
	add $t0, $t0, $t1
	sw $t0, -11012($fp)
	lw $t0, -10996($fp)
	lw $t1, -11012($fp)
	sw $t0, 0($t1)
	lw $t0, -11012($fp)
	lw $t1, 0($t0)
	sw $t1, -11016($fp)
	li $t0, 1041
	sw $t0, -11020($fp)
	addi $t0, $fp, -10324
	sw $t0, -11024($fp)
	li $t0, 4
	sw $t0, -11028($fp)
	lw $t0, -11028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11032($fp)
	lw $t0, -11024($fp)
	lw $t1, -11032($fp)
	add $t0, $t0, $t1
	sw $t0, -11036($fp)
	lw $t0, -11020($fp)
	lw $t1, -11036($fp)
	sw $t0, 0($t1)
	lw $t0, -11036($fp)
	lw $t1, 0($t0)
	sw $t1, -11040($fp)
	li $t0, 26106
	sw $t0, -11044($fp)
	addi $t0, $fp, -10324
	sw $t0, -11048($fp)
	li $t0, 5
	sw $t0, -11052($fp)
	lw $t0, -11052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11056($fp)
	lw $t0, -11048($fp)
	lw $t1, -11056($fp)
	add $t0, $t0, $t1
	sw $t0, -11060($fp)
	lw $t0, -11044($fp)
	lw $t1, -11060($fp)
	sw $t0, 0($t1)
	lw $t0, -11060($fp)
	lw $t1, 0($t0)
	sw $t1, -11064($fp)
	li $t0, 18642
	sw $t0, -11068($fp)
	addi $t0, $fp, -10324
	sw $t0, -11072($fp)
	li $t0, 6
	sw $t0, -11076($fp)
	lw $t0, -11076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11080($fp)
	lw $t0, -11072($fp)
	lw $t1, -11080($fp)
	add $t0, $t0, $t1
	sw $t0, -11084($fp)
	lw $t0, -11068($fp)
	lw $t1, -11084($fp)
	sw $t0, 0($t1)
	lw $t0, -11084($fp)
	lw $t1, 0($t0)
	sw $t1, -11088($fp)
	li $t0, 23030
	sw $t0, -11092($fp)
	addi $t0, $fp, -10324
	sw $t0, -11096($fp)
	li $t0, 7
	sw $t0, -11100($fp)
	lw $t0, -11100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11104($fp)
	lw $t0, -11096($fp)
	lw $t1, -11104($fp)
	add $t0, $t0, $t1
	sw $t0, -11108($fp)
	lw $t0, -11092($fp)
	lw $t1, -11108($fp)
	sw $t0, 0($t1)
	lw $t0, -11108($fp)
	lw $t1, 0($t0)
	sw $t1, -11112($fp)
	li $t0, 17784
	sw $t0, -11116($fp)
	addi $t0, $fp, -10324
	sw $t0, -11120($fp)
	li $t0, 8
	sw $t0, -11124($fp)
	lw $t0, -11124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11128($fp)
	lw $t0, -11120($fp)
	lw $t1, -11128($fp)
	add $t0, $t0, $t1
	sw $t0, -11132($fp)
	lw $t0, -11116($fp)
	lw $t1, -11132($fp)
	sw $t0, 0($t1)
	lw $t0, -11132($fp)
	lw $t1, 0($t0)
	sw $t1, -11136($fp)
	li $t0, 60567
	sw $t0, -11140($fp)
	addi $t0, $fp, -10324
	sw $t0, -11144($fp)
	li $t0, 9
	sw $t0, -11148($fp)
	lw $t0, -11148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11152($fp)
	lw $t0, -11144($fp)
	lw $t1, -11152($fp)
	add $t0, $t0, $t1
	sw $t0, -11156($fp)
	lw $t0, -11140($fp)
	lw $t1, -11156($fp)
	sw $t0, 0($t1)
	lw $t0, -11156($fp)
	lw $t1, 0($t0)
	sw $t1, -11160($fp)
	li $t0, 34280
	sw $t0, -11164($fp)
	addi $t0, $fp, -10332
	sw $t0, -11168($fp)
	li $t0, 0
	sw $t0, -11172($fp)
	lw $t0, -11172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11176($fp)
	lw $t0, -11168($fp)
	lw $t1, -11176($fp)
	add $t0, $t0, $t1
	sw $t0, -11180($fp)
	lw $t0, -11164($fp)
	lw $t1, -11180($fp)
	sw $t0, 0($t1)
	lw $t0, -11180($fp)
	lw $t1, 0($t0)
	sw $t1, -11184($fp)
	li $t0, 47977
	sw $t0, -11188($fp)
	addi $t0, $fp, -10332
	sw $t0, -11192($fp)
	li $t0, 1
	sw $t0, -11196($fp)
	lw $t0, -11196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11200($fp)
	lw $t0, -11192($fp)
	lw $t1, -11200($fp)
	add $t0, $t0, $t1
	sw $t0, -11204($fp)
	lw $t0, -11188($fp)
	lw $t1, -11204($fp)
	sw $t0, 0($t1)
	lw $t0, -11204($fp)
	lw $t1, 0($t0)
	sw $t1, -11208($fp)
	li $t0, 10545
	sw $t0, -11212($fp)
	lw $t0, -11212($fp)
	sw $t0, -11216($fp)
	lw $t0, -11216($fp)
	sw $t0, -11220($fp)
	li $t0, 27840
	sw $t0, -11224($fp)
	lw $t0, -11224($fp)
	sw $t0, -11228($fp)
	lw $t0, -11228($fp)
	sw $t0, -11232($fp)
	li $t0, 38369
	sw $t0, -11236($fp)
	lw $t0, -11236($fp)
	sw $t0, -11240($fp)
	lw $t0, -11240($fp)
	sw $t0, -11244($fp)
	li $t0, 12260
	sw $t0, -11248($fp)
	lw $t0, -11248($fp)
	sw $t0, -11252($fp)
	lw $t0, -11252($fp)
	sw $t0, -11256($fp)
	li $t0, 61689
	sw $t0, -11260($fp)
	lw $t0, -11260($fp)
	sw $t0, -11264($fp)
	lw $t0, -11264($fp)
	sw $t0, -11268($fp)
	li $t0, 10453
	sw $t0, -11272($fp)
	lw $t0, -11272($fp)
	sw $t0, -11276($fp)
	lw $t0, -11276($fp)
	sw $t0, -11280($fp)
	li $t0, 15887
	sw $t0, -11284($fp)
	lw $t0, -11284($fp)
	sw $t0, -11288($fp)
	lw $t0, -11288($fp)
	sw $t0, -11292($fp)
	li $t0, 44237
	sw $t0, -11296($fp)
	lw $t0, -11296($fp)
	sw $t0, -11300($fp)
	lw $t0, -11300($fp)
	sw $t0, -11304($fp)
	li $t0, 38840
	sw $t0, -11308($fp)
	lw $t0, -11308($fp)
	sw $t0, -11312($fp)
	lw $t0, -11312($fp)
	sw $t0, -11316($fp)
	li $t0, 62373
	sw $t0, -11320($fp)
	lw $t0, -11320($fp)
	sw $t0, -11324($fp)
	lw $t0, -11324($fp)
	sw $t0, -11328($fp)
	lw $t0, -10340($fp)
	sw $t0, -11332($fp)
	lw $t0, -11332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10236
	sw $t0, -11336($fp)
	li $t0, 0
	sw $t0, -11340($fp)
	li $t0, 4
	lw $t1, -11340($fp)
	mul $t0, $t0, $t1
	sw $t0, -11344($fp)
	lw $t0, -11344($fp)
	lw $t1, -11336($fp)
	add $t0, $t0, $t1
	sw $t0, -11348($fp)
	lw $t0, -11348($fp)
	lw $t1, 0($t0)
	sw $t1, -11352($fp)
	lw $t0, -11352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10236
	sw $t0, -11356($fp)
	li $t0, 1
	sw $t0, -11360($fp)
	li $t0, 4
	lw $t1, -11360($fp)
	mul $t0, $t0, $t1
	sw $t0, -11364($fp)
	lw $t0, -11364($fp)
	lw $t1, -11356($fp)
	add $t0, $t0, $t1
	sw $t0, -11368($fp)
	lw $t0, -11368($fp)
	lw $t1, 0($t0)
	sw $t1, -11372($fp)
	lw $t0, -11372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10236
	sw $t0, -11376($fp)
	li $t0, 2
	sw $t0, -11380($fp)
	li $t0, 4
	lw $t1, -11380($fp)
	mul $t0, $t0, $t1
	sw $t0, -11384($fp)
	lw $t0, -11384($fp)
	lw $t1, -11376($fp)
	add $t0, $t0, $t1
	sw $t0, -11388($fp)
	lw $t0, -11388($fp)
	lw $t1, 0($t0)
	sw $t1, -11392($fp)
	lw $t0, -11392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10236
	sw $t0, -11396($fp)
	li $t0, 3
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
	lw $t0, -11412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10236
	sw $t0, -11416($fp)
	li $t0, 4
	sw $t0, -11420($fp)
	li $t0, 4
	lw $t1, -11420($fp)
	mul $t0, $t0, $t1
	sw $t0, -11424($fp)
	lw $t0, -11424($fp)
	lw $t1, -11416($fp)
	add $t0, $t0, $t1
	sw $t0, -11428($fp)
	lw $t0, -11428($fp)
	lw $t1, 0($t0)
	sw $t1, -11432($fp)
	lw $t0, -11432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10236
	sw $t0, -11436($fp)
	li $t0, 5
	sw $t0, -11440($fp)
	li $t0, 4
	lw $t1, -11440($fp)
	mul $t0, $t0, $t1
	sw $t0, -11444($fp)
	lw $t0, -11444($fp)
	lw $t1, -11436($fp)
	add $t0, $t0, $t1
	sw $t0, -11448($fp)
	lw $t0, -11448($fp)
	lw $t1, 0($t0)
	sw $t1, -11452($fp)
	lw $t0, -11452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10236
	sw $t0, -11456($fp)
	li $t0, 6
	sw $t0, -11460($fp)
	li $t0, 4
	lw $t1, -11460($fp)
	mul $t0, $t0, $t1
	sw $t0, -11464($fp)
	lw $t0, -11464($fp)
	lw $t1, -11456($fp)
	add $t0, $t0, $t1
	sw $t0, -11468($fp)
	lw $t0, -11468($fp)
	lw $t1, 0($t0)
	sw $t1, -11472($fp)
	lw $t0, -11472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10236
	sw $t0, -11476($fp)
	li $t0, 7
	sw $t0, -11480($fp)
	li $t0, 4
	lw $t1, -11480($fp)
	mul $t0, $t0, $t1
	sw $t0, -11484($fp)
	lw $t0, -11484($fp)
	lw $t1, -11476($fp)
	add $t0, $t0, $t1
	sw $t0, -11488($fp)
	lw $t0, -11488($fp)
	lw $t1, 0($t0)
	sw $t1, -11492($fp)
	lw $t0, -11492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10544($fp)
	sw $t0, -11496($fp)
	lw $t0, -11496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10256
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
	addi $t0, $fp, -10256
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
	addi $t0, $fp, -10256
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
	addi $t0, $fp, -10256
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
	addi $t0, $fp, -10256
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
	lw $t0, -10676($fp)
	sw $t0, -11600($fp)
	lw $t0, -11600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10688($fp)
	sw $t0, -11604($fp)
	lw $t0, -11604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10700($fp)
	sw $t0, -11608($fp)
	lw $t0, -11608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10712($fp)
	sw $t0, -11612($fp)
	lw $t0, -11612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10724($fp)
	sw $t0, -11616($fp)
	lw $t0, -11616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10736($fp)
	sw $t0, -11620($fp)
	lw $t0, -11620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10748($fp)
	sw $t0, -11624($fp)
	lw $t0, -11624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11628($fp)
	li $t0, 0
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
	lw $t0, -11644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11648($fp)
	li $t0, 1
	sw $t0, -11652($fp)
	li $t0, 4
	lw $t1, -11652($fp)
	mul $t0, $t0, $t1
	sw $t0, -11656($fp)
	lw $t0, -11656($fp)
	lw $t1, -11648($fp)
	add $t0, $t0, $t1
	sw $t0, -11660($fp)
	lw $t0, -11660($fp)
	lw $t1, 0($t0)
	sw $t1, -11664($fp)
	lw $t0, -11664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11668($fp)
	li $t0, 2
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
	lw $t0, -11684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11688($fp)
	li $t0, 3
	sw $t0, -11692($fp)
	li $t0, 4
	lw $t1, -11692($fp)
	mul $t0, $t0, $t1
	sw $t0, -11696($fp)
	lw $t0, -11696($fp)
	lw $t1, -11688($fp)
	add $t0, $t0, $t1
	sw $t0, -11700($fp)
	lw $t0, -11700($fp)
	lw $t1, 0($t0)
	sw $t1, -11704($fp)
	lw $t0, -11704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11708($fp)
	li $t0, 4
	sw $t0, -11712($fp)
	li $t0, 4
	lw $t1, -11712($fp)
	mul $t0, $t0, $t1
	sw $t0, -11716($fp)
	lw $t0, -11716($fp)
	lw $t1, -11708($fp)
	add $t0, $t0, $t1
	sw $t0, -11720($fp)
	lw $t0, -11720($fp)
	lw $t1, 0($t0)
	sw $t1, -11724($fp)
	lw $t0, -11724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11728($fp)
	li $t0, 5
	sw $t0, -11732($fp)
	li $t0, 4
	lw $t1, -11732($fp)
	mul $t0, $t0, $t1
	sw $t0, -11736($fp)
	lw $t0, -11736($fp)
	lw $t1, -11728($fp)
	add $t0, $t0, $t1
	sw $t0, -11740($fp)
	lw $t0, -11740($fp)
	lw $t1, 0($t0)
	sw $t1, -11744($fp)
	lw $t0, -11744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11748($fp)
	li $t0, 6
	sw $t0, -11752($fp)
	li $t0, 4
	lw $t1, -11752($fp)
	mul $t0, $t0, $t1
	sw $t0, -11756($fp)
	lw $t0, -11756($fp)
	lw $t1, -11748($fp)
	add $t0, $t0, $t1
	sw $t0, -11760($fp)
	lw $t0, -11760($fp)
	lw $t1, 0($t0)
	sw $t1, -11764($fp)
	lw $t0, -11764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11768($fp)
	li $t0, 0
	sw $t0, -11772($fp)
	li $t0, 4
	lw $t1, -11772($fp)
	mul $t0, $t0, $t1
	sw $t0, -11776($fp)
	lw $t0, -11776($fp)
	lw $t1, -11768($fp)
	add $t0, $t0, $t1
	sw $t0, -11780($fp)
	lw $t0, -11780($fp)
	lw $t1, 0($t0)
	sw $t1, -11784($fp)
	lw $t0, -11784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11788($fp)
	li $t0, 1
	sw $t0, -11792($fp)
	li $t0, 4
	lw $t1, -11792($fp)
	mul $t0, $t0, $t1
	sw $t0, -11796($fp)
	lw $t0, -11796($fp)
	lw $t1, -11788($fp)
	add $t0, $t0, $t1
	sw $t0, -11800($fp)
	lw $t0, -11800($fp)
	lw $t1, 0($t0)
	sw $t1, -11804($fp)
	lw $t0, -11804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11808($fp)
	li $t0, 2
	sw $t0, -11812($fp)
	li $t0, 4
	lw $t1, -11812($fp)
	mul $t0, $t0, $t1
	sw $t0, -11816($fp)
	lw $t0, -11816($fp)
	lw $t1, -11808($fp)
	add $t0, $t0, $t1
	sw $t0, -11820($fp)
	lw $t0, -11820($fp)
	lw $t1, 0($t0)
	sw $t1, -11824($fp)
	lw $t0, -11824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11828($fp)
	li $t0, 3
	sw $t0, -11832($fp)
	li $t0, 4
	lw $t1, -11832($fp)
	mul $t0, $t0, $t1
	sw $t0, -11836($fp)
	lw $t0, -11836($fp)
	lw $t1, -11828($fp)
	add $t0, $t0, $t1
	sw $t0, -11840($fp)
	lw $t0, -11840($fp)
	lw $t1, 0($t0)
	sw $t1, -11844($fp)
	lw $t0, -11844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11848($fp)
	li $t0, 4
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
	lw $t0, -11864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11868($fp)
	li $t0, 5
	sw $t0, -11872($fp)
	li $t0, 4
	lw $t1, -11872($fp)
	mul $t0, $t0, $t1
	sw $t0, -11876($fp)
	lw $t0, -11876($fp)
	lw $t1, -11868($fp)
	add $t0, $t0, $t1
	sw $t0, -11880($fp)
	lw $t0, -11880($fp)
	lw $t1, 0($t0)
	sw $t1, -11884($fp)
	lw $t0, -11884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11888($fp)
	li $t0, 6
	sw $t0, -11892($fp)
	li $t0, 4
	lw $t1, -11892($fp)
	mul $t0, $t0, $t1
	sw $t0, -11896($fp)
	lw $t0, -11896($fp)
	lw $t1, -11888($fp)
	add $t0, $t0, $t1
	sw $t0, -11900($fp)
	lw $t0, -11900($fp)
	lw $t1, 0($t0)
	sw $t1, -11904($fp)
	lw $t0, -11904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11908($fp)
	li $t0, 7
	sw $t0, -11912($fp)
	li $t0, 4
	lw $t1, -11912($fp)
	mul $t0, $t0, $t1
	sw $t0, -11916($fp)
	lw $t0, -11916($fp)
	lw $t1, -11908($fp)
	add $t0, $t0, $t1
	sw $t0, -11920($fp)
	lw $t0, -11920($fp)
	lw $t1, 0($t0)
	sw $t1, -11924($fp)
	lw $t0, -11924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11928($fp)
	li $t0, 8
	sw $t0, -11932($fp)
	li $t0, 4
	lw $t1, -11932($fp)
	mul $t0, $t0, $t1
	sw $t0, -11936($fp)
	lw $t0, -11936($fp)
	lw $t1, -11928($fp)
	add $t0, $t0, $t1
	sw $t0, -11940($fp)
	lw $t0, -11940($fp)
	lw $t1, 0($t0)
	sw $t1, -11944($fp)
	lw $t0, -11944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11948($fp)
	li $t0, 9
	sw $t0, -11952($fp)
	li $t0, 4
	lw $t1, -11952($fp)
	mul $t0, $t0, $t1
	sw $t0, -11956($fp)
	lw $t0, -11956($fp)
	lw $t1, -11948($fp)
	add $t0, $t0, $t1
	sw $t0, -11960($fp)
	lw $t0, -11960($fp)
	lw $t1, 0($t0)
	sw $t1, -11964($fp)
	lw $t0, -11964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11968($fp)
	li $t0, 0
	sw $t0, -11972($fp)
	li $t0, 4
	lw $t1, -11972($fp)
	mul $t0, $t0, $t1
	sw $t0, -11976($fp)
	lw $t0, -11976($fp)
	lw $t1, -11968($fp)
	add $t0, $t0, $t1
	sw $t0, -11980($fp)
	lw $t0, -11980($fp)
	lw $t1, 0($t0)
	sw $t1, -11984($fp)
	lw $t0, -11984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10332
	sw $t0, -11988($fp)
	li $t0, 1
	sw $t0, -11992($fp)
	li $t0, 4
	lw $t1, -11992($fp)
	mul $t0, $t0, $t1
	sw $t0, -11996($fp)
	lw $t0, -11996($fp)
	lw $t1, -11988($fp)
	add $t0, $t0, $t1
	sw $t0, -12000($fp)
	lw $t0, -12000($fp)
	lw $t1, 0($t0)
	sw $t1, -12004($fp)
	lw $t0, -12004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11216($fp)
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11228($fp)
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11240($fp)
	sw $t0, -12016($fp)
	lw $t0, -12016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11252($fp)
	sw $t0, -12020($fp)
	lw $t0, -12020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11264($fp)
	sw $t0, -12024($fp)
	lw $t0, -12024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11276($fp)
	sw $t0, -12028($fp)
	lw $t0, -12028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11288($fp)
	sw $t0, -12032($fp)
	lw $t0, -12032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11300($fp)
	sw $t0, -12036($fp)
	lw $t0, -12036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11312($fp)
	sw $t0, -12040($fp)
	lw $t0, -12040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11324($fp)
	sw $t0, -12044($fp)
	lw $t0, -12044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12048($fp)
	li $t0, 0
	sw $t0, -12052($fp)
	lw $t0, -3412($fp)
	sw $t0, -12056($fp)
	lw $t1, -12056($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label528:
	li $t0, 1
	sw $t0, -12052($fp)
label529:
	li $t0, 0
	sw $t0, -12060($fp)
	li $t0, 43791
	sw $t0, -12064($fp)
	lw $t1, -12064($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label531
label533:
	lw $t0, -10700($fp)
	sw $t0, -12068($fp)
	lw $t1, -12068($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label531
label532:
	lw $t0, -10712($fp)
	sw $t0, -12072($fp)
	lw $t1, -12072($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -12060($fp)
label531:
	li $t0, 0
	sw $t0, -12076($fp)
	li $t0, 38664
	sw $t0, -12080($fp)
	lw $t1, -12080($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label534:
	li $t0, 1
	sw $t0, -12076($fp)
label535:
	li $t0, 42112
	sw $t0, -12084($fp)
	lw $t0, -12076($fp)
	lw $t1, -12084($fp)
	mul $t0, $t0, $t1
	sw $t0, -12088($fp)
	lw $t0, -1708($fp)
	sw $t0, -12092($fp)
	li $t0, 26555
	sw $t0, -12096($fp)
	lw $t0, -12092($fp)
	lw $t1, -12096($fp)
	add $t0, $t0, $t1
	sw $t0, -12100($fp)
	addi $sp, $sp, -4
	lw $t0, -12060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12104($fp)
	addi $sp, $sp, 16
	lw $t1, -12052($fp)
	lw $t2, -12104($fp)
	bgt $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -12048($fp)
label527:
	lw $ra, -4($fp)
	lw $v0, -12048($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label536:
	lw $t0, -11216($fp)
	sw $t0, -12108($fp)
	lw $t1, -12108($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
	li $t0, 0
	sw $t0, -12112($fp)
	lw $t0, -724($fp)
	sw $t0, -12116($fp)
	li $t0, 0
	sw $t0, -12120($fp)
	li $t0, 53189
	sw $t0, -12124($fp)
	lw $t1, -12124($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label543:
	lw $t0, -4312($fp)
	sw $t0, -12128($fp)
	lw $t1, -12128($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -12120($fp)
label542:
	li $t0, 0
	sw $t0, -12132($fp)
	li $t0, 8849
	sw $t0, -12136($fp)
	lw $t0, -10688($fp)
	sw $t0, -12140($fp)
	lw $t1, -12136($fp)
	lw $t2, -12140($fp)
	blt $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -12132($fp)
label545:
	li $t0, 0
	sw $t0, -12144($fp)
	li $t0, 22659
	sw $t0, -12148($fp)
	li $t0, 56600
	sw $t0, -12152($fp)
	lw $t0, -12148($fp)
	lw $t1, -12152($fp)
	sub $t0, $t0, $t1
	sw $t0, -12156($fp)
	li $t0, 12490
	sw $t0, -12160($fp)
	lw $t1, -12156($fp)
	lw $t2, -12160($fp)
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -12144($fp)
label547:
	addi $sp, $sp, -4
	lw $t0, -12120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12164($fp)
	addi $sp, $sp, 16
	lw $t0, -12116($fp)
	lw $t1, -12164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12168($fp)
	li $t0, 0
	lw $t1, -12168($fp)
	sub $t0, $t0, $t1
	sw $t0, -12172($fp)
	lw $t1, -12172($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label539:
	li $t0, 1
	sw $t0, -12112($fp)
label540:
	lw $t0, -12112($fp)
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	sw $t0, -12176($fp)
	lw $ra, -4($fp)
	lw $v0, -12176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label536
label538:
label548:
	li $t0, 32740
	sw $t0, -12180($fp)
	li $t0, 0
	sw $t0, -12184($fp)
	lw $t0, -2560($fp)
	sw $t0, -12188($fp)
	lw $t0, -3820($fp)
	sw $t0, -12192($fp)
	lw $t0, -12188($fp)
	lw $t1, -12192($fp)
	sub $t0, $t0, $t1
	sw $t0, -12196($fp)
	lw $t1, -12196($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label553
label553:
	li $t0, 48799
	sw $t0, -12200($fp)
	lw $t1, -12200($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -12184($fp)
label552:
	li $t0, 0
	sw $t0, -12204($fp)
	li $t0, 42862
	sw $t0, -12208($fp)
	li $t0, 0
	sw $t0, -12212($fp)
	lw $t0, -11300($fp)
	sw $t0, -12216($fp)
	lw $t1, -12216($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label558:
	li $t0, 20959
	sw $t0, -12220($fp)
	lw $t1, -12220($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -12212($fp)
label557:
	li $t0, 60421
	sw $t0, -12224($fp)
	li $t0, 0
	lw $t1, -12224($fp)
	sub $t0, $t0, $t1
	sw $t0, -12228($fp)
	li $t0, 12067
	sw $t0, -12232($fp)
	lw $t0, -12228($fp)
	lw $t1, -12232($fp)
	add $t0, $t0, $t1
	sw $t0, -12236($fp)
	addi $sp, $sp, -4
	lw $t0, -12208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12236($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12240($fp)
	addi $sp, $sp, 16
	li $t0, 22612
	sw $t0, -12244($fp)
	lw $t1, -12240($fp)
	lw $t2, -12244($fp)
	ble $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -12204($fp)
label555:
	li $t0, 0
	sw $t0, -12248($fp)
	li $t0, 29184
	sw $t0, -12252($fp)
	li $t0, 42636
	sw $t0, -12256($fp)
	lw $t1, -12252($fp)
	lw $t2, -12256($fp)
	bgt $t1, $t2, label559
	j label561
label561:
	li $t0, 17036
	sw $t0, -12260($fp)
	lw $t1, -12260($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -12248($fp)
label560:
	li $t0, 0
	sw $t0, -12264($fp)
	li $t0, 16530
	sw $t0, -12268($fp)
	lw $t0, -1372($fp)
	sw $t0, -12272($fp)
	lw $t0, -12268($fp)
	lw $t1, -12272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12276($fp)
	li $t0, 63930
	sw $t0, -12280($fp)
	lw $t1, -12276($fp)
	lw $t2, -12280($fp)
	bne $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -12264($fp)
label563:
	lw $t0, -2572($fp)
	sw $t0, -12284($fp)
	li $t0, 28142
	sw $t0, -12288($fp)
	lw $t0, -12284($fp)
	lw $t1, -12288($fp)
	mul $t0, $t0, $t1
	sw $t0, -12292($fp)
	addi $sp, $sp, -4
	lw $t0, -12248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12296($fp)
	addi $sp, $sp, 16
	li $t0, 52214
	sw $t0, -12300($fp)
	lw $t0, -12296($fp)
	lw $t1, -12300($fp)
	sub $t0, $t0, $t1
	sw $t0, -12304($fp)
	addi $sp, $sp, -4
	lw $t0, -12184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12304($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12308($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -12308($fp)
	sub $t0, $t0, $t1
	sw $t0, -12312($fp)
	lw $t0, -12180($fp)
	lw $t1, -12312($fp)
	mul $t0, $t0, $t1
	sw $t0, -12316($fp)
	lw $t0, -4960($fp)
	sw $t0, -12320($fp)
	lw $t0, -4528($fp)
	sw $t0, -12324($fp)
	lw $t0, -12320($fp)
	lw $t1, -12324($fp)
	mul $t0, $t0, $t1
	sw $t0, -12328($fp)
	li $t0, 15696
	sw $t0, -12332($fp)
	lw $t0, -12328($fp)
	lw $t1, -12332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12336($fp)
	addi $t0, $fp, -380
	sw $t0, -12340($fp)
	li $t0, 1
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
	lw $t0, -12336($fp)
	lw $t1, -12356($fp)
	mul $t0, $t0, $t1
	sw $t0, -12360($fp)
	lw $t0, -12316($fp)
	lw $t1, -12360($fp)
	add $t0, $t0, $t1
	sw $t0, -12364($fp)
	lw $t1, -12364($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
label564:
	lw $t0, -3832($fp)
	sw $t0, -12368($fp)
	lw $t0, -3220($fp)
	sw $t0, -12372($fp)
	lw $t0, -12368($fp)
	lw $t1, -12372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12376($fp)
	lw $t1, -12376($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 0
	sw $t0, -12380($fp)
	lw $t0, -4696($fp)
	sw $t0, -12384($fp)
	lw $t0, -4516($fp)
	sw $t0, -12388($fp)
	li $t0, 26149
	sw $t0, -12392($fp)
	lw $t0, -12388($fp)
	lw $t1, -12392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12396($fp)
	li $t0, 50760
	sw $t0, -12400($fp)
	lw $t0, -12396($fp)
	lw $t1, -12400($fp)
	mul $t0, $t0, $t1
	sw $t0, -12404($fp)
	lw $t1, -12384($fp)
	lw $t2, -12404($fp)
	bgt $t1, $t2, label569
	j label568
label569:
	li $t0, 23654
	sw $t0, -12408($fp)
	li $t0, 64990
	sw $t0, -12412($fp)
	lw $t0, -12408($fp)
	lw $t1, -12412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12416($fp)
	li $t0, 47597
	sw $t0, -12420($fp)
	lw $t0, -12416($fp)
	lw $t1, -12420($fp)
	mul $t0, $t0, $t1
	sw $t0, -12424($fp)
	lw $t0, -2200($fp)
	sw $t0, -12428($fp)
	lw $t1, -12424($fp)
	lw $t2, -12428($fp)
	bge $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -12380($fp)
label568:
	lw $ra, -4($fp)
	lw $v0, -12380($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label564
label566:
	j label548
label550:
	li $t0, 0
	sw $t0, -12432($fp)
	li $t0, 50209
	sw $t0, -12436($fp)
	lw $t0, -3064($fp)
	sw $t0, -12440($fp)
	li $t0, 38118
	sw $t0, -12444($fp)
	li $t0, 24173
	sw $t0, -12448($fp)
	lw $t0, -12444($fp)
	lw $t1, -12448($fp)
	sub $t0, $t0, $t1
	sw $t0, -12452($fp)
	lw $t0, -3004($fp)
	sw $t0, -12456($fp)
	lw $t0, -11276($fp)
	sw $t0, -12460($fp)
	lw $t0, -12456($fp)
	lw $t1, -12460($fp)
	mul $t0, $t0, $t1
	sw $t0, -12464($fp)
	li $t0, 0
	lw $t1, -12464($fp)
	sub $t0, $t0, $t1
	sw $t0, -12468($fp)
	addi $sp, $sp, -4
	lw $t0, -12440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12472($fp)
	addi $sp, $sp, 16
	lw $t1, -12436($fp)
	lw $t2, -12472($fp)
	blt $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -12432($fp)
label574:
	li $t0, 0
	sw $t0, -12476($fp)
	li $t0, 0
	sw $t0, -12480($fp)
	li $t0, 6553
	sw $t0, -12484($fp)
	li $t0, 61417
	sw $t0, -12488($fp)
	lw $t0, -12484($fp)
	lw $t1, -12488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12492($fp)
	lw $t1, -12492($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label579:
	li $t0, 62057
	sw $t0, -12496($fp)
	lw $t1, -12496($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -12480($fp)
label578:
	li $t0, 0
	sw $t0, -12500($fp)
	li $t0, 0
	sw $t0, -12504($fp)
	li $t0, 32233
	sw $t0, -12508($fp)
	lw $t0, -3064($fp)
	sw $t0, -12512($fp)
	lw $t1, -12508($fp)
	lw $t2, -12512($fp)
	beq $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -12504($fp)
label583:
	li $t0, 19420
	sw $t0, -12516($fp)
	lw $t1, -12504($fp)
	lw $t2, -12516($fp)
	beq $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -12500($fp)
label581:
	li $t0, 0
	sw $t0, -12520($fp)
	li $t0, 0
	sw $t0, -12524($fp)
	addi $t0, $fp, -136
	sw $t0, -12528($fp)
	li $t0, 4
	sw $t0, -12532($fp)
	li $t0, 4
	lw $t1, -12532($fp)
	mul $t0, $t0, $t1
	sw $t0, -12536($fp)
	lw $t0, -12536($fp)
	lw $t1, -12528($fp)
	add $t0, $t0, $t1
	sw $t0, -12540($fp)
	lw $t0, -12540($fp)
	lw $t1, 0($t0)
	sw $t1, -12544($fp)
	lw $t1, -12544($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label588:
	li $t0, 8159
	sw $t0, -12548($fp)
	lw $t1, -12548($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -12524($fp)
label587:
	li $t0, 0
	sw $t0, -12552($fp)
	li $t0, 40955
	sw $t0, -12556($fp)
	lw $t0, -1408($fp)
	sw $t0, -12560($fp)
	lw $t1, -12556($fp)
	lw $t2, -12560($fp)
	bne $t1, $t2, label591
	j label590
label591:
	lw $t0, -4756($fp)
	sw $t0, -12564($fp)
	lw $t1, -12564($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -12552($fp)
label590:
	lw $t0, -1408($fp)
	sw $t0, -12568($fp)
	addi $sp, $sp, -4
	lw $t0, -12524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12572($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -12572($fp)
	sub $t0, $t0, $t1
	sw $t0, -12576($fp)
	li $t0, 0
	sw $t0, -12580($fp)
	li $t0, 15237
	sw $t0, -12584($fp)
	li $t0, 0
	lw $t1, -12584($fp)
	sub $t0, $t0, $t1
	sw $t0, -12588($fp)
	lw $t1, -12588($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label592
label592:
	li $t0, 1
	sw $t0, -12580($fp)
label593:
	li $t0, 60777
	sw $t0, -12592($fp)
	addi $sp, $sp, -4
	lw $t0, -12576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12596($fp)
	addi $sp, $sp, 16
	lw $t1, -12596($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -12520($fp)
label585:
	addi $sp, $sp, -4
	lw $t0, -12480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12600($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -12604($fp)
	li $t0, 28465
	sw $t0, -12608($fp)
	lw $t0, -1396($fp)
	sw $t0, -12612($fp)
	lw $t1, -12608($fp)
	lw $t2, -12612($fp)
	blt $t1, $t2, label594
	j label596
label596:
	lw $t0, -1396($fp)
	sw $t0, -12616($fp)
	lw $t1, -12616($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -12604($fp)
label595:
	lw $t0, -4720($fp)
	sw $t0, -12620($fp)
	lw $t0, -2416($fp)
	sw $t0, -12624($fp)
	lw $t0, -12620($fp)
	lw $t1, -12624($fp)
	sub $t0, $t0, $t1
	sw $t0, -12628($fp)
	lw $t0, -3040($fp)
	sw $t0, -12632($fp)
	li $t0, 0
	lw $t1, -12632($fp)
	sub $t0, $t0, $t1
	sw $t0, -12636($fp)
	li $t0, 0
	lw $t1, -12636($fp)
	sub $t0, $t0, $t1
	sw $t0, -12640($fp)
	addi $sp, $sp, -4
	lw $t0, -12604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12644($fp)
	addi $sp, $sp, 16
	lw $t0, -1120($fp)
	sw $t0, -12648($fp)
	lw $t0, -12644($fp)
	lw $t1, -12648($fp)
	sub $t0, $t0, $t1
	sw $t0, -12652($fp)
	lw $t0, -1360($fp)
	sw $t0, -12656($fp)
	lw $t0, -12656($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -12660($fp)
	addi $sp, $sp, -4
	lw $t0, -12600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12660($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12664($fp)
	addi $sp, $sp, 16
	lw $t1, -12664($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label575:
	li $t0, 1
	sw $t0, -12476($fp)
label576:
	lw $t0, -10544($fp)
	sw $t0, -12668($fp)
	lw $t0, -12476($fp)
	lw $t1, -12668($fp)
	mul $t0, $t0, $t1
	sw $t0, -12672($fp)
	lw $t1, -12432($fp)
	lw $t2, -12672($fp)
	bne $t1, $t2, label570
	j label571
label570:
label597:
	li $t0, 0
	sw $t0, -12676($fp)
	li $t0, 23589
	sw $t0, -12680($fp)
	li $t0, 48095
	sw $t0, -12684($fp)
	lw $t0, -12680($fp)
	lw $t1, -12684($fp)
	sub $t0, $t0, $t1
	sw $t0, -12688($fp)
	lw $t0, -2560($fp)
	sw $t0, -12692($fp)
	lw $t1, -12688($fp)
	lw $t2, -12692($fp)
	beq $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -12676($fp)
label603:
	li $t0, 56942
	sw $t0, -12696($fp)
	li $t0, 35656
	sw $t0, -12700($fp)
	lw $t0, -12696($fp)
	lw $t1, -12700($fp)
	add $t0, $t0, $t1
	sw $t0, -12704($fp)
	lw $t1, -12676($fp)
	lw $t2, -12704($fp)
	bne $t1, $t2, label601
	j label599
label601:
	addi $t0, $fp, -10256
	sw $t0, -12708($fp)
	li $t0, 2
	sw $t0, -12712($fp)
	li $t0, 4
	lw $t1, -12712($fp)
	mul $t0, $t0, $t1
	sw $t0, -12716($fp)
	lw $t0, -12716($fp)
	lw $t1, -12708($fp)
	add $t0, $t0, $t1
	sw $t0, -12720($fp)
	lw $t0, -12720($fp)
	lw $t1, 0($t0)
	sw $t1, -12724($fp)
	li $t0, 58269
	sw $t0, -12728($fp)
	lw $t0, -12724($fp)
	lw $t1, -12728($fp)
	sub $t0, $t0, $t1
	sw $t0, -12732($fp)
	lw $t1, -12732($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label600:
	li $t0, 0
	sw $t0, -12736($fp)
	lw $t0, -1108($fp)
	sw $t0, -12740($fp)
	li $t0, 0
	lw $t1, -12740($fp)
	sub $t0, $t0, $t1
	sw $t0, -12744($fp)
	lw $t1, -12744($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label604
label604:
	li $t0, 1
	sw $t0, -12736($fp)
label605:
	li $t0, 0
	sw $t0, -12748($fp)
	lw $t0, -1096($fp)
	sw $t0, -12752($fp)
	li $t0, 52318
	sw $t0, -12756($fp)
	lw $t1, -12752($fp)
	lw $t2, -12756($fp)
	bne $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -12748($fp)
label607:
	lw $t0, -676($fp)
	sw $t0, -12760($fp)
	lw $t0, -12760($fp)
	sw $t0, -10340($fp)
	lw $t0, -10340($fp)
	sw $t0, -12764($fp)
	addi $sp, $sp, -4
	lw $t0, -12736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12768($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -12768($fp)
	sub $t0, $t0, $t1
	sw $t0, -12772($fp)
	li $t0, 0
	lw $t1, -12772($fp)
	sub $t0, $t0, $t1
	sw $t0, -12776($fp)
	lw $t1, -12776($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 31735
	sw $t0, -12780($fp)
	li $t0, 0
	lw $t1, -12780($fp)
	sub $t0, $t0, $t1
	sw $t0, -12784($fp)
	li $t0, 0
	sw $t0, -12788($fp)
	li $t0, 27605
	sw $t0, -12792($fp)
	lw $t0, -1120($fp)
	sw $t0, -12796($fp)
	lw $t0, -12792($fp)
	lw $t1, -12796($fp)
	sub $t0, $t0, $t1
	sw $t0, -12800($fp)
	lw $t0, -3244($fp)
	sw $t0, -12804($fp)
	lw $t1, -12800($fp)
	lw $t2, -12804($fp)
	bge $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -12788($fp)
label609:
	li $t0, 49964
	sw $t0, -12808($fp)
	addi $sp, $sp, -4
	lw $t0, -12784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12808($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12812($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -12812($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label597
label599:
	j label572
label571:
	addi $t0, $fp, -100
	sw $t0, -12816($fp)
	li $t0, 0
	sw $t0, -12820($fp)
	lw $t0, -10340($fp)
	sw $t0, -12824($fp)
	lw $t1, -12824($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label613
label613:
	li $t0, 1
	sw $t0, -12820($fp)
label614:
	li $t0, 0
	lw $t1, -12820($fp)
	sub $t0, $t0, $t1
	sw $t0, -12828($fp)
	addi $t0, $fp, -10236
	sw $t0, -12832($fp)
	li $t0, 5
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
	li $t0, 4
	lw $t1, -12852($fp)
	mul $t0, $t0, $t1
	sw $t0, -12856($fp)
	lw $t0, -12856($fp)
	lw $t1, -12816($fp)
	add $t0, $t0, $t1
	sw $t0, -12860($fp)
	lw $t0, -12860($fp)
	lw $t1, 0($t0)
	sw $t1, -12864($fp)
	lw $t1, -12864($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 0
	sw $t0, -12868($fp)
	lw $t0, -2140($fp)
	sw $t0, -12872($fp)
	lw $t1, -12872($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label619
label619:
	li $t0, 1
	sw $t0, -12868($fp)
label620:
	lw $t0, -10736($fp)
	sw $t0, -12876($fp)
	lw $t0, -12868($fp)
	lw $t1, -12876($fp)
	mul $t0, $t0, $t1
	sw $t0, -12880($fp)
	lw $t0, -688($fp)
	sw $t0, -12884($fp)
	li $t0, 55389
	sw $t0, -12888($fp)
	lw $t0, -12884($fp)
	lw $t1, -12888($fp)
	sub $t0, $t0, $t1
	sw $t0, -12892($fp)
	li $t0, 10032
	sw $t0, -12896($fp)
	lw $t0, -12892($fp)
	lw $t1, -12896($fp)
	add $t0, $t0, $t1
	sw $t0, -12900($fp)
	lw $t0, -4552($fp)
	sw $t0, -12904($fp)
	lw $t0, -3832($fp)
	sw $t0, -12908($fp)
	lw $t0, -12904($fp)
	lw $t1, -12908($fp)
	mul $t0, $t0, $t1
	sw $t0, -12912($fp)
	lw $t0, -3556($fp)
	sw $t0, -12916($fp)
	lw $t0, -12912($fp)
	lw $t1, -12916($fp)
	sub $t0, $t0, $t1
	sw $t0, -12920($fp)
	addi $sp, $sp, -4
	lw $t0, -12880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12920($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12924($fp)
	addi $sp, $sp, 16
	li $t0, 63235
	sw $t0, -12928($fp)
	lw $t0, -12928($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -12932($fp)
	lw $t0, -1372($fp)
	sw $t0, -12936($fp)
	li $t0, 0
	sw $t0, -12940($fp)
	li $t0, 0
	sw $t0, -12944($fp)
	li $t0, 45101
	sw $t0, -12948($fp)
	lw $t1, -12948($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label626
label626:
	lw $t0, -11288($fp)
	sw $t0, -12952($fp)
	lw $t1, -12952($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -12944($fp)
label625:
	li $t0, 0
	sw $t0, -12956($fp)
	li $t0, 61674
	sw $t0, -12960($fp)
	lw $t1, -12960($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label629
label630:
	lw $t0, -4756($fp)
	sw $t0, -12964($fp)
	lw $t1, -12964($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label629
label629:
	li $t0, 13270
	sw $t0, -12968($fp)
	lw $t1, -12968($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -12956($fp)
label628:
	lw $t0, -3004($fp)
	sw $t0, -12972($fp)
	addi $sp, $sp, -4
	lw $t0, -12944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12976($fp)
	addi $sp, $sp, 16
	lw $t1, -12976($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label622
label623:
	li $t0, 48456
	sw $t0, -12980($fp)
	lw $t1, -12980($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -12940($fp)
label622:
	li $t0, 52368
	sw $t0, -12984($fp)
	lw $t0, -12984($fp)
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	sw $t0, -12988($fp)
	li $t0, 16712
	sw $t0, -12992($fp)
	li $t0, 58155
	sw $t0, -12996($fp)
	lw $t0, -12992($fp)
	lw $t1, -12996($fp)
	mul $t0, $t0, $t1
	sw $t0, -13000($fp)
	li $t0, 44538
	sw $t0, -13004($fp)
	lw $t0, -13000($fp)
	lw $t1, -13004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13008($fp)
	li $t0, 0
	sw $t0, -13012($fp)
	addi $t0, $fp, -10284
	sw $t0, -13016($fp)
	lw $t0, -1108($fp)
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
	li $t0, 53132
	sw $t0, -13036($fp)
	lw $t1, -13032($fp)
	lw $t2, -13036($fp)
	beq $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -13012($fp)
label632:
	li $t0, 10060
	sw $t0, -13040($fp)
	li $t0, 0
	sw $t0, -13044($fp)
	li $t0, 0
	sw $t0, -13048($fp)
	lw $t0, -10688($fp)
	sw $t0, -13052($fp)
	lw $t0, -4564($fp)
	sw $t0, -13056($fp)
	lw $t1, -13052($fp)
	lw $t2, -13056($fp)
	ble $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -13048($fp)
label636:
	li $t0, 58659
	sw $t0, -13060($fp)
	lw $t1, -13048($fp)
	lw $t2, -13060($fp)
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -13044($fp)
label634:
	addi $t0, $fp, -148
	sw $t0, -13064($fp)
	lw $t0, -5236($fp)
	sw $t0, -13068($fp)
	li $t0, 4
	lw $t1, -13068($fp)
	mul $t0, $t0, $t1
	sw $t0, -13072($fp)
	lw $t0, -13072($fp)
	lw $t1, -13064($fp)
	add $t0, $t0, $t1
	sw $t0, -13076($fp)
	lw $t0, -13076($fp)
	lw $t1, 0($t0)
	sw $t1, -13080($fp)
	addi $sp, $sp, -4
	lw $t0, -13040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13084($fp)
	addi $sp, $sp, 16
	li $t0, 56611
	sw $t0, -13088($fp)
	li $t0, 0
	lw $t1, -13088($fp)
	sub $t0, $t0, $t1
	sw $t0, -13092($fp)
	addi $sp, $sp, -4
	lw $t0, -13012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13096($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -12988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13100($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -13100($fp)
	sub $t0, $t0, $t1
	sw $t0, -13104($fp)
	li $t0, 0
	sw $t0, -13108($fp)
	li $t0, 14179
	sw $t0, -13112($fp)
	li $t0, 0
	lw $t1, -13112($fp)
	sub $t0, $t0, $t1
	sw $t0, -13116($fp)
	lw $t1, -13116($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label639
label639:
	lw $t0, -10676($fp)
	sw $t0, -13120($fp)
	lw $t1, -13120($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -13108($fp)
label638:
	li $t0, 0
	sw $t0, -13124($fp)
	li $t0, 0
	sw $t0, -13128($fp)
	lw $t0, -4948($fp)
	sw $t0, -13132($fp)
	lw $t1, -13132($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label644
label644:
	lw $t0, -4516($fp)
	sw $t0, -13136($fp)
	lw $t1, -13136($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -13128($fp)
label643:
	lw $t0, -4756($fp)
	sw $t0, -13140($fp)
	li $t0, 52106
	sw $t0, -13144($fp)
	lw $t0, -13140($fp)
	lw $t1, -13144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13148($fp)
	lw $t0, -5212($fp)
	sw $t0, -13152($fp)
	lw $t0, -13148($fp)
	lw $t1, -13152($fp)
	sub $t0, $t0, $t1
	sw $t0, -13156($fp)
	li $t0, 0
	sw $t0, -13160($fp)
	lw $t0, -5200($fp)
	sw $t0, -13164($fp)
	li $t0, 47482
	sw $t0, -13168($fp)
	lw $t0, -13164($fp)
	lw $t1, -13168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13172($fp)
	lw $t1, -13172($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label646
label647:
	lw $t0, -4948($fp)
	sw $t0, -13176($fp)
	lw $t1, -13176($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -13160($fp)
label646:
	li $t0, 34300
	sw $t0, -13180($fp)
	li $t0, 43947
	sw $t0, -13184($fp)
	lw $t0, -13180($fp)
	lw $t1, -13184($fp)
	add $t0, $t0, $t1
	sw $t0, -13188($fp)
	addi $t0, $fp, -508
	sw $t0, -13192($fp)
	lw $t0, -10340($fp)
	sw $t0, -13196($fp)
	li $t0, 4
	lw $t1, -13196($fp)
	mul $t0, $t0, $t1
	sw $t0, -13200($fp)
	lw $t0, -13200($fp)
	lw $t1, -13192($fp)
	add $t0, $t0, $t1
	sw $t0, -13204($fp)
	lw $t0, -13204($fp)
	lw $t1, 0($t0)
	sw $t1, -13208($fp)
	li $t0, 0
	lw $t1, -13208($fp)
	sub $t0, $t0, $t1
	sw $t0, -13212($fp)
	addi $sp, $sp, -4
	lw $t0, -13160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13216($fp)
	addi $sp, $sp, 16
	li $t0, 37190
	sw $t0, -13220($fp)
	lw $t0, -13216($fp)
	lw $t1, -13220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13224($fp)
	li $t0, 0
	sw $t0, -13228($fp)
	li $t0, 2992
	sw $t0, -13232($fp)
	li $t0, 0
	lw $t1, -13232($fp)
	sub $t0, $t0, $t1
	sw $t0, -13236($fp)
	li $t0, 43391
	sw $t0, -13240($fp)
	lw $t1, -13236($fp)
	lw $t2, -13240($fp)
	bge $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -13228($fp)
label649:
	li $t0, 0
	sw $t0, -13244($fp)
	li $t0, 48150
	sw $t0, -13248($fp)
	lw $t1, -13248($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label653:
	lw $t0, -1864($fp)
	sw $t0, -13252($fp)
	lw $t1, -13252($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label652
label652:
	li $t0, 19063
	sw $t0, -13256($fp)
	lw $t1, -13256($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label651
label650:
	li $t0, 1
	sw $t0, -13244($fp)
label651:
	addi $sp, $sp, -4
	lw $t0, -13224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13260($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -13260($fp)
	sub $t0, $t0, $t1
	sw $t0, -13264($fp)
	addi $sp, $sp, -4
	lw $t0, -13128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13268($fp)
	addi $sp, $sp, 16
	lw $t0, -748($fp)
	sw $t0, -13272($fp)
	lw $t1, -13268($fp)
	lw $t2, -13272($fp)
	beq $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -13124($fp)
label641:
	addi $sp, $sp, -4
	lw $t0, -13104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13124($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13276($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -13280($fp)
	li $t0, 0
	sw $t0, -13284($fp)
	li $t0, 60426
	sw $t0, -13288($fp)
	li $t0, 40063
	sw $t0, -13292($fp)
	lw $t1, -13288($fp)
	lw $t2, -13292($fp)
	blt $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -13284($fp)
label657:
	lw $t0, 8($fp)
	sw $t0, -13296($fp)
	lw $t1, -13284($fp)
	lw $t2, -13296($fp)
	blt $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -13280($fp)
label655:
	addi $sp, $sp, -4
	lw $t0, -12940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13300($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -12932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13304($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -13304($fp)
	sub $t0, $t0, $t1
	sw $t0, -13308($fp)
	lw $t1, -12924($fp)
	lw $t2, -13308($fp)
	blt $t1, $t2, label615
	j label618
label618:
	li $t0, 0
	sw $t0, -13312($fp)
	li $t0, 0
	sw $t0, -13316($fp)
	li $t0, 7171
	sw $t0, -13320($fp)
	lw $t0, -3832($fp)
	sw $t0, -13324($fp)
	lw $t1, -13320($fp)
	lw $t2, -13324($fp)
	ble $t1, $t2, label660
	j label661
label660:
	li $t0, 1
	sw $t0, -13316($fp)
label661:
	lw $t0, -11300($fp)
	sw $t0, -13328($fp)
	lw $t1, -13316($fp)
	lw $t2, -13328($fp)
	bge $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -13312($fp)
label659:
	lw $t0, -4780($fp)
	sw $t0, -13332($fp)
	lw $t0, -1768($fp)
	sw $t0, -13336($fp)
	lw $t0, -13332($fp)
	lw $t1, -13336($fp)
	mul $t0, $t0, $t1
	sw $t0, -13340($fp)
	lw $t0, -3832($fp)
	sw $t0, -13344($fp)
	lw $t0, -13340($fp)
	lw $t1, -13344($fp)
	mul $t0, $t0, $t1
	sw $t0, -13348($fp)
	li $t0, 0
	sw $t0, -13352($fp)
	lw $t0, -10712($fp)
	sw $t0, -13356($fp)
	lw $t1, -13356($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label664
label664:
	lw $t0, -4768($fp)
	sw $t0, -13360($fp)
	lw $t1, -13360($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -13352($fp)
label663:
	addi $sp, $sp, -4
	lw $t0, -13312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13364($fp)
	addi $sp, $sp, 16
	li $t0, 14655
	sw $t0, -13368($fp)
	lw $t0, -13364($fp)
	lw $t1, -13368($fp)
	mul $t0, $t0, $t1
	sw $t0, -13372($fp)
	lw $t1, -13372($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label616
label615:
	lw $t0, -4960($fp)
	sw $t0, -13376($fp)
	li $t0, 8277
	sw $t0, -13380($fp)
	lw $t0, -13376($fp)
	lw $t1, -13380($fp)
	mul $t0, $t0, $t1
	sw $t0, -13384($fp)
	li $t0, 0
	sw $t0, -13388($fp)
	li $t0, 20000
	sw $t0, -13392($fp)
	lw $t1, -13392($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label665
label665:
	li $t0, 1
	sw $t0, -13388($fp)
label666:
	lw $t0, -13384($fp)
	lw $t1, -13388($fp)
	mul $t0, $t0, $t1
	sw $t0, -13396($fp)
	li $t0, 4508
	sw $t0, -13400($fp)
	j label617
label616:
	li $t0, 0
	sw $t0, -13404($fp)
	lw $t0, -2200($fp)
	sw $t0, -13408($fp)
	li $t0, 0
	lw $t1, -13408($fp)
	sub $t0, $t0, $t1
	sw $t0, -13412($fp)
	lw $t1, -13412($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label669
label669:
	li $t0, 44571
	sw $t0, -13416($fp)
	li $t0, 0
	sw $t0, -13420($fp)
	addi $t0, $fp, -10324
	sw $t0, -13424($fp)
	lw $t0, -4960($fp)
	sw $t0, -13428($fp)
	li $t0, 4
	lw $t1, -13428($fp)
	mul $t0, $t0, $t1
	sw $t0, -13432($fp)
	lw $t0, -13432($fp)
	lw $t1, -13424($fp)
	add $t0, $t0, $t1
	sw $t0, -13436($fp)
	lw $t0, -13436($fp)
	lw $t1, 0($t0)
	sw $t1, -13440($fp)
	lw $t1, -13440($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label670
label670:
	li $t0, 1
	sw $t0, -13420($fp)
label671:
	li $t0, 0
	sw $t0, -13444($fp)
	lw $t0, -4240($fp)
	sw $t0, -13448($fp)
	li $t0, 18309
	sw $t0, -13452($fp)
	lw $t0, -13448($fp)
	lw $t1, -13452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13456($fp)
	lw $t1, -13456($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label674
label674:
	li $t0, 14891
	sw $t0, -13460($fp)
	lw $t1, -13460($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -13444($fp)
label673:
	addi $sp, $sp, -4
	lw $t0, -13416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13464($fp)
	addi $sp, $sp, 16
	lw $t1, -13464($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -13404($fp)
label668:
	lw $ra, -4($fp)
	lw $v0, -13404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label617:
	j label612
label611:
	li $t0, 923
	sw $t0, -13468($fp)
	li $t0, 0
	lw $t1, -13468($fp)
	sub $t0, $t0, $t1
	sw $t0, -13472($fp)
	li $t0, 0
	lw $t1, -13472($fp)
	sub $t0, $t0, $t1
	sw $t0, -13476($fp)
	addi $t0, $fp, -10332
	sw $t0, -13480($fp)
	li $t0, 33954
	sw $t0, -13484($fp)
	li $t0, 47563
	sw $t0, -13488($fp)
	lw $t0, -13484($fp)
	lw $t1, -13488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13492($fp)
	li $t0, 4
	lw $t1, -13492($fp)
	mul $t0, $t0, $t1
	sw $t0, -13496($fp)
	lw $t0, -13496($fp)
	lw $t1, -13480($fp)
	add $t0, $t0, $t1
	sw $t0, -13500($fp)
	lw $t0, -13500($fp)
	lw $t1, 0($t0)
	sw $t1, -13504($fp)
	lw $t1, -13476($fp)
	lw $t2, -13504($fp)
	bne $t1, $t2, label675
	j label676
label675:
label678:
	addi $t0, $fp, -136
	sw $t0, -13508($fp)
	li $t0, 0
	sw $t0, -13512($fp)
	lw $t0, -1108($fp)
	sw $t0, -13516($fp)
	lw $t0, -4252($fp)
	sw $t0, -13520($fp)
	lw $t0, -13516($fp)
	lw $t1, -13520($fp)
	sub $t0, $t0, $t1
	sw $t0, -13524($fp)
	lw $t1, -13524($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label683
label683:
	li $t0, 44314
	sw $t0, -13528($fp)
	lw $t1, -13528($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -13512($fp)
label682:
	li $t0, 4
	lw $t1, -13512($fp)
	mul $t0, $t0, $t1
	sw $t0, -13532($fp)
	lw $t0, -13532($fp)
	lw $t1, -13508($fp)
	add $t0, $t0, $t1
	sw $t0, -13536($fp)
	lw $t0, -13536($fp)
	lw $t1, 0($t0)
	sw $t1, -13540($fp)
	lw $t0, -11216($fp)
	sw $t0, -13544($fp)
	lw $t1, -13540($fp)
	lw $t2, -13544($fp)
	blt $t1, $t2, label679
	j label680
label679:
	li $t0, 0
	sw $t0, -13548($fp)
	li $t0, 2719
	sw $t0, -13552($fp)
	li $t0, 25974
	sw $t0, -13556($fp)
	lw $t1, -13552($fp)
	lw $t2, -13556($fp)
	bgt $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -13548($fp)
label685:
	lw $t0, -13548($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	sw $t0, -13560($fp)
	j label678
label680:
	j label677
label676:
	li $t0, 0
	sw $t0, -13564($fp)
	addi $t0, $fp, -148
	sw $t0, -13568($fp)
	lw $t0, -2560($fp)
	sw $t0, -13572($fp)
	lw $t0, -13572($fp)
	sw $t0, -11228($fp)
	lw $t0, -11228($fp)
	sw $t0, -13576($fp)
	li $t0, 4
	lw $t1, -13576($fp)
	mul $t0, $t0, $t1
	sw $t0, -13580($fp)
	lw $t0, -13580($fp)
	lw $t1, -13568($fp)
	add $t0, $t0, $t1
	sw $t0, -13584($fp)
	lw $t0, -13584($fp)
	lw $t1, 0($t0)
	sw $t1, -13588($fp)
	lw $t1, -13588($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label689
label689:
	li $t0, 0
	sw $t0, -13592($fp)
	li $t0, 26260
	sw $t0, -13596($fp)
	lw $t1, -13596($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label690
label690:
	li $t0, 1
	sw $t0, -13592($fp)
label691:
	li $t0, 0
	lw $t1, -13592($fp)
	sub $t0, $t0, $t1
	sw $t0, -13600($fp)
	lw $t1, -13600($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label688
label688:
	lw $t0, -4732($fp)
	sw $t0, -13604($fp)
	lw $t1, -13604($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -13564($fp)
label687:
label677:
label612:
label572:
	li $t0, 39909
	sw $t0, -13608($fp)
	lw $t1, -13608($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label696:
	li $t0, 0
	sw $t0, -13612($fp)
	lw $t0, -3052($fp)
	sw $t0, -13616($fp)
	li $t0, 0
	lw $t1, -13616($fp)
	sub $t0, $t0, $t1
	sw $t0, -13620($fp)
	li $t0, 12544
	sw $t0, -13624($fp)
	lw $t1, -13620($fp)
	lw $t2, -13624($fp)
	blt $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -13612($fp)
label698:
	addi $t0, $fp, -64
	sw $t0, -13628($fp)
	lw $t0, -3196($fp)
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
	li $t0, 0
	sw $t0, -13648($fp)
	lw $t0, -11240($fp)
	sw $t0, -13652($fp)
	lw $t1, -13652($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label699
label699:
	li $t0, 1
	sw $t0, -13648($fp)
label700:
	lw $t0, -11252($fp)
	sw $t0, -13656($fp)
	lw $t0, -13648($fp)
	lw $t1, -13656($fp)
	sub $t0, $t0, $t1
	sw $t0, -13660($fp)
	addi $sp, $sp, -4
	lw $t0, -13612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13660($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13664($fp)
	addi $sp, $sp, 16
	li $t0, 40439
	sw $t0, -13668($fp)
	lw $t0, -13664($fp)
	lw $t1, -13668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13672($fp)
	lw $t1, -13672($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label695
label695:
	li $t0, 0
	sw $t0, -13676($fp)
	lw $t0, -1384($fp)
	sw $t0, -13680($fp)
	lw $t1, -13680($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label701
label701:
	li $t0, 1
	sw $t0, -13676($fp)
label702:
	li $t0, 0
	lw $t1, -13676($fp)
	sub $t0, $t0, $t1
	sw $t0, -13684($fp)
	li $t0, 0
	sw $t0, -13688($fp)
	li $t0, 30984
	sw $t0, -13692($fp)
	lw $t1, -13692($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label703
label703:
	li $t0, 1
	sw $t0, -13688($fp)
label704:
	lw $t0, -13684($fp)
	lw $t1, -13688($fp)
	add $t0, $t0, $t1
	sw $t0, -13696($fp)
	lw $t1, -13696($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label692:
	li $t0, 0
	sw $t0, -13700($fp)
	li $t0, 5667
	sw $t0, -13704($fp)
	li $t0, 0
	lw $t1, -13704($fp)
	sub $t0, $t0, $t1
	sw $t0, -13708($fp)
	li $t0, 0
	sw $t0, -13712($fp)
	lw $t0, -3832($fp)
	sw $t0, -13716($fp)
	lw $t1, -13716($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -13712($fp)
label709:
	li $t0, 43119
	sw $t0, -13720($fp)
	li $t0, 1
	sw $t0, -13724($fp)
	lw $t0, -13720($fp)
	lw $t1, -13724($fp)
	mul $t0, $t0, $t1
	sw $t0, -13728($fp)
	li $t0, 9212
	sw $t0, -13732($fp)
	lw $t0, -13728($fp)
	lw $t1, -13732($fp)
	mul $t0, $t0, $t1
	sw $t0, -13736($fp)
	li $t0, 18580
	sw $t0, -13740($fp)
	lw $t0, -13740($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -13744($fp)
	li $t0, 0
	sw $t0, -13748($fp)
	li $t0, 0
	sw $t0, -13752($fp)
	lw $t0, -2164($fp)
	sw $t0, -13756($fp)
	li $t0, 50499
	sw $t0, -13760($fp)
	lw $t1, -13756($fp)
	lw $t2, -13760($fp)
	blt $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -13752($fp)
label713:
	lw $t0, -11312($fp)
	sw $t0, -13764($fp)
	lw $t1, -13752($fp)
	lw $t2, -13764($fp)
	bne $t1, $t2, label710
	j label711
label710:
	li $t0, 1
	sw $t0, -13748($fp)
label711:
	lw $t0, -4300($fp)
	sw $t0, -13768($fp)
	lw $t0, -11264($fp)
	sw $t0, -13772($fp)
	lw $t0, -13768($fp)
	lw $t1, -13772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13776($fp)
	lw $t0, -4228($fp)
	sw $t0, -13780($fp)
	lw $t0, -13776($fp)
	lw $t1, -13780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13784($fp)
	addi $sp, $sp, -4
	lw $t0, -13744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13788($fp)
	addi $sp, $sp, 16
	li $t0, 22379
	sw $t0, -13792($fp)
	lw $t0, -13788($fp)
	lw $t1, -13792($fp)
	sub $t0, $t0, $t1
	sw $t0, -13796($fp)
	addi $sp, $sp, -4
	lw $t0, -13712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13800($fp)
	addi $sp, $sp, 16
	lw $t0, -13708($fp)
	lw $t1, -13800($fp)
	add $t0, $t0, $t1
	sw $t0, -13804($fp)
	li $t0, 39257
	sw $t0, -13808($fp)
	lw $t0, -11324($fp)
	sw $t0, -13812($fp)
	lw $t0, -13808($fp)
	lw $t1, -13812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13816($fp)
	li $t0, 0
	lw $t1, -13816($fp)
	sub $t0, $t0, $t1
	sw $t0, -13820($fp)
	lw $t0, -13804($fp)
	lw $t1, -13820($fp)
	add $t0, $t0, $t1
	sw $t0, -13824($fp)
	lw $t1, -13824($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label707
label707:
	li $t0, 10853
	sw $t0, -13828($fp)
	lw $t1, -13828($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -13700($fp)
label706:
	j label694
label693:
	li $t0, 0
	sw $t0, -13832($fp)
	lw $t0, -2200($fp)
	sw $t0, -13836($fp)
	lw $t1, -13836($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -13832($fp)
label718:
	li $t0, 0
	sw $t0, -13840($fp)
	li $t0, 36832
	sw $t0, -13844($fp)
	lw $t0, -4972($fp)
	sw $t0, -13848($fp)
	lw $t1, -13844($fp)
	lw $t2, -13848($fp)
	ble $t1, $t2, label719
	j label721
label721:
	li $t0, 16829
	sw $t0, -13852($fp)
	lw $t1, -13852($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -13840($fp)
label720:
	li $t0, 0
	sw $t0, -13856($fp)
	li $t0, 22177
	sw $t0, -13860($fp)
	li $t0, 8552
	sw $t0, -13864($fp)
	lw $t1, -13860($fp)
	lw $t2, -13864($fp)
	bne $t1, $t2, label722
	j label724
label724:
	li $t0, 61484
	sw $t0, -13868($fp)
	lw $t1, -13868($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -13856($fp)
label723:
	li $t0, 54313
	sw $t0, -13872($fp)
	li $t0, 0
	lw $t1, -13872($fp)
	sub $t0, $t0, $t1
	sw $t0, -13876($fp)
	addi $sp, $sp, -4
	lw $t0, -13840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13880($fp)
	addi $sp, $sp, 16
	li $t0, 15949
	sw $t0, -13884($fp)
	lw $t0, -13880($fp)
	lw $t1, -13884($fp)
	mul $t0, $t0, $t1
	sw $t0, -13888($fp)
	lw $t0, -13832($fp)
	lw $t1, -13888($fp)
	sub $t0, $t0, $t1
	sw $t0, -13892($fp)
	li $t0, 41340
	sw $t0, -13896($fp)
	lw $t1, -13892($fp)
	lw $t2, -13896($fp)
	bge $t1, $t2, label714
	j label715
label714:
label725:
	lw $t0, -4984($fp)
	sw $t0, -13900($fp)
	li $t0, 35138
	sw $t0, -13904($fp)
	li $t0, 0
	lw $t1, -13904($fp)
	sub $t0, $t0, $t1
	sw $t0, -13908($fp)
	li $t0, 0
	lw $t1, -13908($fp)
	sub $t0, $t0, $t1
	sw $t0, -13912($fp)
	addi $t0, $fp, -316
	sw $t0, -13916($fp)
	lw $t0, -4240($fp)
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
	addi $sp, $sp, -4
	lw $t0, -13900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13936($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -13936($fp)
	sub $t0, $t0, $t1
	sw $t0, -13940($fp)
	lw $t0, -4996($fp)
	sw $t0, -13944($fp)
	lw $t0, -13940($fp)
	lw $t1, -13944($fp)
	sub $t0, $t0, $t1
	sw $t0, -13948($fp)
	lw $t1, -13948($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label727
label726:
label728:
	li $t0, 36061
	sw $t0, -13952($fp)
	lw $t0, -5020($fp)
	sw $t0, -13956($fp)
	lw $t0, -13956($fp)
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	sw $t0, -13960($fp)
	li $t0, 0
	sw $t0, -13964($fp)
	li $t0, 30840
	sw $t0, -13968($fp)
	li $t0, 0
	lw $t1, -13968($fp)
	sub $t0, $t0, $t1
	sw $t0, -13972($fp)
	lw $t1, -13972($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label733
label733:
	li $t0, 20376
	sw $t0, -13976($fp)
	lw $t1, -13976($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -13964($fp)
label732:
	addi $sp, $sp, -4
	lw $t0, -13952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13980($fp)
	addi $sp, $sp, 16
	lw $t1, -13980($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label730
label729:
	li $t0, 0
	sw $t0, -13984($fp)
	li $t0, 0
	sw $t0, -13988($fp)
	lw $t0, -4780($fp)
	sw $t0, -13992($fp)
	li $t0, 64794
	sw $t0, -13996($fp)
	lw $t0, -820($fp)
	sw $t0, -14000($fp)
	lw $t0, -13996($fp)
	lw $t1, -14000($fp)
	mul $t0, $t0, $t1
	sw $t0, -14004($fp)
	lw $t1, -13992($fp)
	lw $t2, -14004($fp)
	bge $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -13988($fp)
label738:
	li $t0, 2403
	sw $t0, -14008($fp)
	li $t0, 14839
	sw $t0, -14012($fp)
	lw $t0, -14008($fp)
	lw $t1, -14012($fp)
	add $t0, $t0, $t1
	sw $t0, -14016($fp)
	li $t0, 1977
	sw $t0, -14020($fp)
	lw $t0, -14016($fp)
	lw $t1, -14020($fp)
	add $t0, $t0, $t1
	sw $t0, -14024($fp)
	lw $t1, -13988($fp)
	lw $t2, -14024($fp)
	blt $t1, $t2, label736
	j label735
label736:
	li $t0, 28378
	sw $t0, -14028($fp)
	lw $t1, -14028($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -13984($fp)
label735:
	j label728
label730:
	j label725
label727:
label715:
label694:
	li $t0, 0
	sw $t0, -14032($fp)
	lw $t0, -10712($fp)
	sw $t0, -14036($fp)
	li $t0, 0
	lw $t1, -14036($fp)
	sub $t0, $t0, $t1
	sw $t0, -14040($fp)
	lw $t1, -14040($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label742
label742:
	li $t0, 1
	sw $t0, -14032($fp)
label743:
	li $t0, 0
	lw $t1, -14032($fp)
	sub $t0, $t0, $t1
	sw $t0, -14044($fp)
	lw $t0, -14044($fp)
	sw $t0, -10724($fp)
	lw $t0, -10724($fp)
	sw $t0, -14048($fp)
	lw $t1, -14048($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label740
label739:
	li $t0, 41100
	sw $t0, -14052($fp)
	lw $t0, -14052($fp)
	sw $t0, -14056($fp)
	lw $t0, -14056($fp)
	sw $t0, -14060($fp)
	li $t0, 41887
	sw $t0, -14064($fp)
	lw $t0, -14064($fp)
	sw $t0, -14068($fp)
	lw $t0, -14068($fp)
	sw $t0, -14072($fp)
label744:
	li $t0, 0
	sw $t0, -14076($fp)
	li $t0, 40922
	sw $t0, -14080($fp)
	lw $t1, -14080($fp)
	li $t2, 0
	bne $t1, $t2, label748
	j label747
label747:
	li $t0, 1
	sw $t0, -14076($fp)
label748:
	li $t0, 0
	sw $t0, -14084($fp)
	addi $t0, $fp, -556
	sw $t0, -14088($fp)
	lw $t0, -14068($fp)
	sw $t0, -14092($fp)
	li $t0, 4
	lw $t1, -14092($fp)
	mul $t0, $t0, $t1
	sw $t0, -14096($fp)
	lw $t0, -14096($fp)
	lw $t1, -14088($fp)
	add $t0, $t0, $t1
	sw $t0, -14100($fp)
	lw $t0, -14100($fp)
	lw $t1, 0($t0)
	sw $t1, -14104($fp)
	lw $t1, -14104($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label749
label749:
	li $t0, 1
	sw $t0, -14084($fp)
label750:
	lw $t0, -14076($fp)
	lw $t1, -14084($fp)
	mul $t0, $t0, $t1
	sw $t0, -14108($fp)
	lw $t1, -14108($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 16003
	sw $t0, -14112($fp)
	j label744
label746:
	lw $t0, -14056($fp)
	sw $t0, -14116($fp)
	lw $t0, -14116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4744($fp)
	sw $t0, -14120($fp)
	li $t0, 12645
	sw $t0, -14124($fp)
	lw $t0, -14120($fp)
	lw $t1, -14124($fp)
	mul $t0, $t0, $t1
	sw $t0, -14128($fp)
	li $t0, 0
	lw $t1, -14128($fp)
	sub $t0, $t0, $t1
	sw $t0, -14132($fp)
	li $t0, 3433
	sw $t0, -14136($fp)
	li $t0, 44086
	sw $t0, -14140($fp)
	lw $t0, -14136($fp)
	lw $t1, -14140($fp)
	mul $t0, $t0, $t1
	sw $t0, -14144($fp)
	li $t0, 23498
	sw $t0, -14148($fp)
	lw $t0, -14144($fp)
	lw $t1, -14148($fp)
	add $t0, $t0, $t1
	sw $t0, -14152($fp)
	li $t0, 0
	sw $t0, -14156($fp)
	li $t0, 25916
	sw $t0, -14160($fp)
	lw $t1, -14160($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label753
label753:
	lw $t0, -4696($fp)
	sw $t0, -14164($fp)
	lw $t1, -14164($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -14156($fp)
label752:
	li $t0, 0
	sw $t0, -14168($fp)
	addi $t0, $fp, -280
	sw $t0, -14172($fp)
	li $t0, 1
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
	lw $t0, -5236($fp)
	sw $t0, -14192($fp)
	lw $t1, -14188($fp)
	lw $t2, -14192($fp)
	beq $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -14168($fp)
label755:
	addi $sp, $sp, -4
	lw $t0, -14152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14196($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -14200($fp)
	li $t0, 7335
	sw $t0, -14204($fp)
	lw $t1, -14204($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label758
label758:
	lw $t0, -2200($fp)
	sw $t0, -14208($fp)
	lw $t1, -14208($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label757
label756:
	li $t0, 1
	sw $t0, -14200($fp)
label757:
	addi $sp, $sp, -4
	lw $t0, -14132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14200($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14212($fp)
	addi $sp, $sp, 16
	lw $t0, -14212($fp)
	sw $t0, -14056($fp)
	lw $t0, -14056($fp)
	sw $t0, -14216($fp)
	lw $ra, -4($fp)
	lw $v0, -14216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 17807
	sw $t0, -14220($fp)
	lw $t0, -14220($fp)
	sw $t0, -14224($fp)
	lw $t0, -14224($fp)
	sw $t0, -14228($fp)
	li $t0, 0
	sw $t0, -14232($fp)
	addi $t0, $fp, -508
	sw $t0, -14236($fp)
	li $t0, 5
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
	li $t0, 39984
	sw $t0, -14256($fp)
	li $t0, 42903
	sw $t0, -14260($fp)
	lw $t0, -14256($fp)
	lw $t1, -14260($fp)
	sub $t0, $t0, $t1
	sw $t0, -14264($fp)
	li $t0, 62907
	sw $t0, -14268($fp)
	lw $t0, -14264($fp)
	lw $t1, -14268($fp)
	add $t0, $t0, $t1
	sw $t0, -14272($fp)
	lw $t1, -14252($fp)
	lw $t2, -14272($fp)
	bgt $t1, $t2, label761
	j label760
label761:
	lw $t0, -14224($fp)
	sw $t0, -14276($fp)
	li $t0, 11280
	sw $t0, -14280($fp)
	lw $t0, -1852($fp)
	sw $t0, -14284($fp)
	lw $t0, -14280($fp)
	lw $t1, -14284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14288($fp)
	lw $t1, -14276($fp)
	lw $t2, -14288($fp)
	blt $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -14232($fp)
label760:
	li $t0, 0
	sw $t0, -14292($fp)
	lw $t0, -1708($fp)
	sw $t0, -14296($fp)
	li $t0, 0
	sw $t0, -14300($fp)
	li $t0, 0
	sw $t0, -14304($fp)
	li $t0, 52620
	sw $t0, -14308($fp)
	li $t0, 29334
	sw $t0, -14312($fp)
	lw $t1, -14308($fp)
	lw $t2, -14312($fp)
	bne $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -14304($fp)
label767:
	lw $t0, -1876($fp)
	sw $t0, -14316($fp)
	lw $t1, -14304($fp)
	lw $t2, -14316($fp)
	beq $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -14300($fp)
label765:
	li $t0, 0
	sw $t0, -14320($fp)
	li $t0, 0
	sw $t0, -14324($fp)
	lw $t0, -1864($fp)
	sw $t0, -14328($fp)
	lw $t0, -2200($fp)
	sw $t0, -14332($fp)
	lw $t1, -14328($fp)
	lw $t2, -14332($fp)
	blt $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -14324($fp)
label771:
	lw $t0, -820($fp)
	sw $t0, -14336($fp)
	lw $t1, -14324($fp)
	lw $t2, -14336($fp)
	bgt $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -14320($fp)
label769:
	li $t0, 0
	sw $t0, -14340($fp)
	addi $t0, $fp, -556
	sw $t0, -14344($fp)
	li $t0, 4
	sw $t0, -14348($fp)
	li $t0, 4
	lw $t1, -14348($fp)
	mul $t0, $t0, $t1
	sw $t0, -14352($fp)
	lw $t0, -14352($fp)
	lw $t1, -14344($fp)
	add $t0, $t0, $t1
	sw $t0, -14356($fp)
	lw $t0, -14356($fp)
	lw $t1, 0($t0)
	sw $t1, -14360($fp)
	lw $t1, -14360($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label772
label772:
	li $t0, 1
	sw $t0, -14340($fp)
label773:
	addi $sp, $sp, -4
	lw $t0, -14300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14364($fp)
	addi $sp, $sp, 16
	lw $t1, -14296($fp)
	lw $t2, -14364($fp)
	blt $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -14292($fp)
label763:
	j label741
label740:
	lw $t0, -10748($fp)
	sw $t0, -14368($fp)
	lw $t0, -14368($fp)
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	sw $t0, -14372($fp)
	li $t0, 0
	sw $t0, -14376($fp)
	lw $t0, -2128($fp)
	sw $t0, -14380($fp)
	lw $t0, -4264($fp)
	sw $t0, -14384($fp)
	lw $t0, -14380($fp)
	lw $t1, -14384($fp)
	mul $t0, $t0, $t1
	sw $t0, -14388($fp)
	lw $t1, -14388($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label776
label776:
	lw $t0, -3208($fp)
	sw $t0, -14392($fp)
	lw $t1, -14392($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -14376($fp)
label775:
	addi $t0, $fp, -208
	sw $t0, -14396($fp)
	li $t0, 2
	sw $t0, -14400($fp)
	li $t0, 4
	lw $t1, -14400($fp)
	mul $t0, $t0, $t1
	sw $t0, -14404($fp)
	lw $t0, -14404($fp)
	lw $t1, -14396($fp)
	add $t0, $t0, $t1
	sw $t0, -14408($fp)
	lw $t0, -14408($fp)
	lw $t1, 0($t0)
	sw $t1, -14412($fp)
	addi $sp, $sp, -4
	lw $t0, -14372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14412($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14416($fp)
	addi $sp, $sp, 16
	lw $t0, -4708($fp)
	sw $t0, -14420($fp)
	lw $t0, -14416($fp)
	lw $t1, -14420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14424($fp)
	addi $t0, $fp, -10284
	sw $t0, -14428($fp)
	li $t0, 2
	sw $t0, -14432($fp)
	li $t0, 4
	lw $t1, -14432($fp)
	mul $t0, $t0, $t1
	sw $t0, -14436($fp)
	lw $t0, -14436($fp)
	lw $t1, -14428($fp)
	add $t0, $t0, $t1
	sw $t0, -14440($fp)
	lw $t0, -14440($fp)
	lw $t1, 0($t0)
	sw $t1, -14444($fp)
	lw $t0, -14424($fp)
	lw $t1, -14444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14448($fp)
	li $t0, 9864
	sw $t0, -14452($fp)
	li $t0, 0
	lw $t1, -14452($fp)
	sub $t0, $t0, $t1
	sw $t0, -14456($fp)
	lw $t0, -14448($fp)
	lw $t1, -14456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14460($fp)
	lw $ra, -4($fp)
	lw $v0, -14460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label741:
	addi $t0, $fp, -456
	sw $t0, -14464($fp)
	lw $t0, -4240($fp)
	sw $t0, -14468($fp)
	lw $t0, -4720($fp)
	sw $t0, -14472($fp)
	lw $t0, -14468($fp)
	lw $t1, -14472($fp)
	add $t0, $t0, $t1
	sw $t0, -14476($fp)
	li $t0, 4
	lw $t1, -14476($fp)
	mul $t0, $t0, $t1
	sw $t0, -14480($fp)
	lw $t0, -14480($fp)
	lw $t1, -14464($fp)
	add $t0, $t0, $t1
	sw $t0, -14484($fp)
	lw $t0, -14484($fp)
	lw $t1, 0($t0)
	sw $t1, -14488($fp)
	li $t0, 0
	lw $t1, -14488($fp)
	sub $t0, $t0, $t1
	sw $t0, -14492($fp)
	lw $t1, -14492($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label780
label780:
	addi $t0, $fp, -484
	sw $t0, -14496($fp)
	lw $t0, -2560($fp)
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
	li $t0, 14699
	sw $t0, -14516($fp)
	lw $t0, -14512($fp)
	lw $t1, -14516($fp)
	sub $t0, $t0, $t1
	sw $t0, -14520($fp)
	li $t0, 45396
	sw $t0, -14524($fp)
	lw $t0, -14520($fp)
	lw $t1, -14524($fp)
	sub $t0, $t0, $t1
	sw $t0, -14528($fp)
	lw $t1, -14528($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label778
label777:
	li $t0, 38242
	sw $t0, -14556($fp)
	lw $t0, -14556($fp)
	sw $t0, -14560($fp)
	lw $t0, -14560($fp)
	sw $t0, -14564($fp)
	li $t0, 55799
	sw $t0, -14568($fp)
	lw $t0, -14568($fp)
	sw $t0, -14572($fp)
	lw $t0, -14572($fp)
	sw $t0, -14576($fp)
	li $t0, 21747
	sw $t0, -14580($fp)
	lw $t0, -14580($fp)
	sw $t0, -14584($fp)
	lw $t0, -14584($fp)
	sw $t0, -14588($fp)
	li $t0, 13628
	sw $t0, -14592($fp)
	addi $t0, $fp, -14536
	sw $t0, -14596($fp)
	li $t0, 0
	sw $t0, -14600($fp)
	lw $t0, -14600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14604($fp)
	lw $t0, -14596($fp)
	lw $t1, -14604($fp)
	add $t0, $t0, $t1
	sw $t0, -14608($fp)
	lw $t0, -14592($fp)
	lw $t1, -14608($fp)
	sw $t0, 0($t1)
	lw $t0, -14608($fp)
	lw $t1, 0($t0)
	sw $t1, -14612($fp)
	li $t0, 6266
	sw $t0, -14616($fp)
	addi $t0, $fp, -14536
	sw $t0, -14620($fp)
	li $t0, 1
	sw $t0, -14624($fp)
	lw $t0, -14624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14628($fp)
	lw $t0, -14620($fp)
	lw $t1, -14628($fp)
	add $t0, $t0, $t1
	sw $t0, -14632($fp)
	lw $t0, -14616($fp)
	lw $t1, -14632($fp)
	sw $t0, 0($t1)
	lw $t0, -14632($fp)
	lw $t1, 0($t0)
	sw $t1, -14636($fp)
	li $t0, 29083
	sw $t0, -14640($fp)
	lw $t0, -14640($fp)
	sw $t0, -14644($fp)
	lw $t0, -14644($fp)
	sw $t0, -14648($fp)
	li $t0, 60218
	sw $t0, -14652($fp)
	lw $t0, -14652($fp)
	sw $t0, -14656($fp)
	lw $t0, -14656($fp)
	sw $t0, -14660($fp)
	li $t0, 7233
	sw $t0, -14664($fp)
	addi $t0, $fp, -14552
	sw $t0, -14668($fp)
	li $t0, 0
	sw $t0, -14672($fp)
	lw $t0, -14672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14676($fp)
	lw $t0, -14668($fp)
	lw $t1, -14676($fp)
	add $t0, $t0, $t1
	sw $t0, -14680($fp)
	lw $t0, -14664($fp)
	lw $t1, -14680($fp)
	sw $t0, 0($t1)
	lw $t0, -14680($fp)
	lw $t1, 0($t0)
	sw $t1, -14684($fp)
	li $t0, 54999
	sw $t0, -14688($fp)
	addi $t0, $fp, -14552
	sw $t0, -14692($fp)
	li $t0, 1
	sw $t0, -14696($fp)
	lw $t0, -14696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14700($fp)
	lw $t0, -14692($fp)
	lw $t1, -14700($fp)
	add $t0, $t0, $t1
	sw $t0, -14704($fp)
	lw $t0, -14688($fp)
	lw $t1, -14704($fp)
	sw $t0, 0($t1)
	lw $t0, -14704($fp)
	lw $t1, 0($t0)
	sw $t1, -14708($fp)
	li $t0, 63652
	sw $t0, -14712($fp)
	addi $t0, $fp, -14552
	sw $t0, -14716($fp)
	li $t0, 2
	sw $t0, -14720($fp)
	lw $t0, -14720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14724($fp)
	lw $t0, -14716($fp)
	lw $t1, -14724($fp)
	add $t0, $t0, $t1
	sw $t0, -14728($fp)
	lw $t0, -14712($fp)
	lw $t1, -14728($fp)
	sw $t0, 0($t1)
	lw $t0, -14728($fp)
	lw $t1, 0($t0)
	sw $t1, -14732($fp)
	li $t0, 51319
	sw $t0, -14736($fp)
	addi $t0, $fp, -14552
	sw $t0, -14740($fp)
	li $t0, 3
	sw $t0, -14744($fp)
	lw $t0, -14744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -14748($fp)
	lw $t0, -14740($fp)
	lw $t1, -14748($fp)
	add $t0, $t0, $t1
	sw $t0, -14752($fp)
	lw $t0, -14736($fp)
	lw $t1, -14752($fp)
	sw $t0, 0($t1)
	lw $t0, -14752($fp)
	lw $t1, 0($t0)
	sw $t1, -14756($fp)
	lw $t0, -14560($fp)
	sw $t0, -14760($fp)
	lw $t0, -14760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -14572($fp)
	sw $t0, -14764($fp)
	lw $t0, -14764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -14584($fp)
	sw $t0, -14768($fp)
	lw $t0, -14768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -14536
	sw $t0, -14772($fp)
	li $t0, 0
	sw $t0, -14776($fp)
	li $t0, 4
	lw $t1, -14776($fp)
	mul $t0, $t0, $t1
	sw $t0, -14780($fp)
	lw $t0, -14780($fp)
	lw $t1, -14772($fp)
	add $t0, $t0, $t1
	sw $t0, -14784($fp)
	lw $t0, -14784($fp)
	lw $t1, 0($t0)
	sw $t1, -14788($fp)
	lw $t0, -14788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -14536
	sw $t0, -14792($fp)
	li $t0, 1
	sw $t0, -14796($fp)
	li $t0, 4
	lw $t1, -14796($fp)
	mul $t0, $t0, $t1
	sw $t0, -14800($fp)
	lw $t0, -14800($fp)
	lw $t1, -14792($fp)
	add $t0, $t0, $t1
	sw $t0, -14804($fp)
	lw $t0, -14804($fp)
	lw $t1, 0($t0)
	sw $t1, -14808($fp)
	lw $t0, -14808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -14644($fp)
	sw $t0, -14812($fp)
	lw $t0, -14812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -14656($fp)
	sw $t0, -14816($fp)
	lw $t0, -14816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -14552
	sw $t0, -14820($fp)
	li $t0, 0
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
	addi $t0, $fp, -14552
	sw $t0, -14840($fp)
	li $t0, 1
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
	addi $t0, $fp, -14552
	sw $t0, -14860($fp)
	li $t0, 2
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
	addi $t0, $fp, -14552
	sw $t0, -14880($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -14900($fp)
	addi $t0, $fp, -280
	sw $t0, -14904($fp)
	li $t0, 0
	sw $t0, -14908($fp)
	li $t0, 12961
	sw $t0, -14912($fp)
	lw $t1, -14912($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label785
label785:
	li $t0, 10761
	sw $t0, -14916($fp)
	lw $t1, -14916($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -14908($fp)
label784:
	li $t0, 4
	lw $t1, -14908($fp)
	mul $t0, $t0, $t1
	sw $t0, -14920($fp)
	lw $t0, -14920($fp)
	lw $t1, -14904($fp)
	add $t0, $t0, $t1
	sw $t0, -14924($fp)
	lw $t0, -14924($fp)
	lw $t1, 0($t0)
	sw $t1, -14928($fp)
	li $t0, 0
	sw $t0, -14932($fp)
	li $t0, 3590
	sw $t0, -14936($fp)
	li $t0, 0
	lw $t1, -14936($fp)
	sub $t0, $t0, $t1
	sw $t0, -14940($fp)
	lw $t1, -14940($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label786
label786:
	li $t0, 1
	sw $t0, -14932($fp)
label787:
	lw $t0, -14928($fp)
	lw $t1, -14932($fp)
	sub $t0, $t0, $t1
	sw $t0, -14944($fp)
	lw $t0, -1360($fp)
	sw $t0, -14948($fp)
	lw $t0, -5224($fp)
	sw $t0, -14952($fp)
	lw $t0, -14948($fp)
	lw $t1, -14952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14956($fp)
	li $t0, 47313
	sw $t0, -14960($fp)
	lw $t0, -14956($fp)
	lw $t1, -14960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14964($fp)
	lw $t0, -4780($fp)
	sw $t0, -14968($fp)
	li $t0, 0
	lw $t1, -14968($fp)
	sub $t0, $t0, $t1
	sw $t0, -14972($fp)
	lw $t0, -14964($fp)
	lw $t1, -14972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14976($fp)
	lw $t1, -14944($fp)
	lw $t2, -14976($fp)
	bgt $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -14900($fp)
label782:
	lw $ra, -4($fp)
	lw $v0, -14900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1408($fp)
	sw $t0, -14980($fp)
	addi $t0, $fp, -136
	sw $t0, -14984($fp)
	li $t0, 6
	sw $t0, -14988($fp)
	li $t0, 4
	lw $t1, -14988($fp)
	mul $t0, $t0, $t1
	sw $t0, -14992($fp)
	lw $t0, -14992($fp)
	lw $t1, -14984($fp)
	add $t0, $t0, $t1
	sw $t0, -14996($fp)
	lw $t0, -14996($fp)
	lw $t1, 0($t0)
	sw $t1, -15000($fp)
	lw $t0, -14980($fp)
	lw $t1, -15000($fp)
	sub $t0, $t0, $t1
	sw $t0, -15004($fp)
	lw $t0, -15004($fp)
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	sw $t0, -15008($fp)
	lw $t1, -15008($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label789
label788:
	addi $t0, $fp, -136
	sw $t0, -15012($fp)
	li $t0, 3
	sw $t0, -15016($fp)
	li $t0, 4
	lw $t1, -15016($fp)
	mul $t0, $t0, $t1
	sw $t0, -15020($fp)
	lw $t0, -15020($fp)
	lw $t1, -15012($fp)
	add $t0, $t0, $t1
	sw $t0, -15024($fp)
	lw $t0, -15024($fp)
	lw $t1, 0($t0)
	sw $t1, -15028($fp)
	li $t0, 0
	sw $t0, -15032($fp)
	lw $t0, -4288($fp)
	sw $t0, -15036($fp)
	li $t0, 41939
	sw $t0, -15040($fp)
	lw $t0, -15036($fp)
	lw $t1, -15040($fp)
	sub $t0, $t0, $t1
	sw $t0, -15044($fp)
	lw $t1, -15044($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label793
label793:
	lw $t0, -4228($fp)
	sw $t0, -15048($fp)
	lw $t1, -15048($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label792
label791:
	li $t0, 1
	sw $t0, -15032($fp)
label792:
	li $t0, 22876
	sw $t0, -15052($fp)
	li $t0, 0
	lw $t1, -15052($fp)
	sub $t0, $t0, $t1
	sw $t0, -15056($fp)
	li $t0, 0
	sw $t0, -15060($fp)
	li $t0, 54854
	sw $t0, -15064($fp)
	lw $t0, -14560($fp)
	sw $t0, -15068($fp)
	lw $t0, -15064($fp)
	lw $t1, -15068($fp)
	sub $t0, $t0, $t1
	sw $t0, -15072($fp)
	li $t0, 18877
	sw $t0, -15076($fp)
	lw $t1, -15072($fp)
	lw $t2, -15076($fp)
	bge $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -15060($fp)
label795:
	addi $sp, $sp, -4
	lw $t0, -15032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15080($fp)
	addi $sp, $sp, 16
	lw $t0, -15028($fp)
	lw $t1, -15080($fp)
	add $t0, $t0, $t1
	sw $t0, -15084($fp)
	lw $t0, -15084($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -15088($fp)
	j label790
label789:
	li $t0, 0
	sw $t0, -15092($fp)
	li $t0, 46528
	sw $t0, -15096($fp)
	lw $t1, -15096($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -15092($fp)
label800:
	li $t0, 0
	sw $t0, -15100($fp)
	li $t0, 31969
	sw $t0, -15104($fp)
	lw $t0, -4948($fp)
	sw $t0, -15108($fp)
	lw $t0, -15104($fp)
	lw $t1, -15108($fp)
	mul $t0, $t0, $t1
	sw $t0, -15112($fp)
	lw $t1, -15112($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label802
label803:
	li $t0, 53033
	sw $t0, -15116($fp)
	lw $t1, -15116($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -15100($fp)
label802:
	li $t0, 0
	sw $t0, -15120($fp)
	li $t0, 62770
	sw $t0, -15124($fp)
	lw $t0, -1348($fp)
	sw $t0, -15128($fp)
	lw $t0, -15124($fp)
	lw $t1, -15128($fp)
	sub $t0, $t0, $t1
	sw $t0, -15132($fp)
	lw $t0, -1360($fp)
	sw $t0, -15136($fp)
	lw $t1, -15132($fp)
	lw $t2, -15136($fp)
	bge $t1, $t2, label804
	j label805
label804:
	li $t0, 1
	sw $t0, -15120($fp)
label805:
	li $t0, 0
	sw $t0, -15140($fp)
	li $t0, 0
	sw $t0, -15144($fp)
	li $t0, 0
	sw $t0, -15148($fp)
	lw $t0, -3028($fp)
	sw $t0, -15152($fp)
	li $t0, 48071
	sw $t0, -15156($fp)
	lw $t1, -15152($fp)
	lw $t2, -15156($fp)
	bne $t1, $t2, label811
	j label812
label811:
	li $t0, 1
	sw $t0, -15148($fp)
label812:
	li $t0, 44920
	sw $t0, -15160($fp)
	lw $t1, -15148($fp)
	lw $t2, -15160($fp)
	beq $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -15144($fp)
label810:
	li $t0, 49399
	sw $t0, -15164($fp)
	lw $t0, -15164($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	sw $t0, -15168($fp)
	li $t0, 0
	sw $t0, -15172($fp)
	lw $t0, -1072($fp)
	sw $t0, -15176($fp)
	li $t0, 1501
	sw $t0, -15180($fp)
	lw $t1, -15176($fp)
	lw $t2, -15180($fp)
	beq $t1, $t2, label813
	j label815
label815:
	lw $t0, -4540($fp)
	sw $t0, -15184($fp)
	lw $t1, -15184($fp)
	li $t2, 0
	bne $t1, $t2, label813
	j label814
label813:
	li $t0, 1
	sw $t0, -15172($fp)
label814:
	addi $sp, $sp, -4
	lw $t0, -15144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15188($fp)
	addi $sp, $sp, 16
	lw $t1, -15188($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label808
label808:
	li $t0, 59263
	sw $t0, -15192($fp)
	lw $t1, -15192($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -15140($fp)
label807:
	lw $t0, -1084($fp)
	sw $t0, -15196($fp)
	li $t0, 0
	lw $t1, -15196($fp)
	sub $t0, $t0, $t1
	sw $t0, -15200($fp)
	li $t0, 48211
	sw $t0, -15204($fp)
	lw $t0, -15200($fp)
	lw $t1, -15204($fp)
	sub $t0, $t0, $t1
	sw $t0, -15208($fp)
	addi $sp, $sp, -4
	lw $t0, -15120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15212($fp)
	addi $sp, $sp, 16
	li $t0, 24780
	sw $t0, -15216($fp)
	lw $t0, -15212($fp)
	lw $t1, -15216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15220($fp)
	addi $sp, $sp, -4
	lw $t0, -15092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15224($fp)
	addi $sp, $sp, 16
	lw $t0, -14584($fp)
	sw $t0, -15228($fp)
	lw $t0, -15224($fp)
	lw $t1, -15228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15232($fp)
	addi $t0, $fp, -208
	sw $t0, -15236($fp)
	li $t0, 0
	sw $t0, -15240($fp)
	lw $t0, -2392($fp)
	sw $t0, -15244($fp)
	li $t0, 45598
	sw $t0, -15248($fp)
	lw $t1, -15244($fp)
	lw $t2, -15248($fp)
	bge $t1, $t2, label816
	j label817
label816:
	li $t0, 1
	sw $t0, -15240($fp)
label817:
	li $t0, 4
	lw $t1, -15240($fp)
	mul $t0, $t0, $t1
	sw $t0, -15252($fp)
	lw $t0, -15252($fp)
	lw $t1, -15236($fp)
	add $t0, $t0, $t1
	sw $t0, -15256($fp)
	lw $t0, -15256($fp)
	lw $t1, 0($t0)
	sw $t1, -15260($fp)
	lw $t1, -15232($fp)
	lw $t2, -15260($fp)
	bne $t1, $t2, label796
	j label797
label796:
	li $t0, 0
	sw $t0, -15264($fp)
	li $t0, 0
	sw $t0, -15268($fp)
	li $t0, 59299
	sw $t0, -15272($fp)
	lw $t1, -15272($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -15268($fp)
label821:
	li $t0, 0
	lw $t1, -15268($fp)
	sub $t0, $t0, $t1
	sw $t0, -15276($fp)
	lw $t1, -15276($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label818
label818:
	li $t0, 1
	sw $t0, -15264($fp)
label819:
	j label798
label797:
label822:
	addi $t0, $fp, -508
	sw $t0, -15280($fp)
	lw $t0, -14560($fp)
	sw $t0, -15284($fp)
	li $t0, 4
	lw $t1, -15284($fp)
	mul $t0, $t0, $t1
	sw $t0, -15288($fp)
	lw $t0, -15288($fp)
	lw $t1, -15280($fp)
	add $t0, $t0, $t1
	sw $t0, -15292($fp)
	lw $t0, -15292($fp)
	lw $t1, 0($t0)
	sw $t1, -15296($fp)
	li $t0, 0
	sw $t0, -15300($fp)
	lw $t0, -4492($fp)
	sw $t0, -15304($fp)
	lw $t1, -15304($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label826
label826:
	li $t0, 1
	sw $t0, -15300($fp)
label827:
	lw $t0, -2404($fp)
	sw $t0, -15308($fp)
	lw $t0, -15300($fp)
	lw $t1, -15308($fp)
	sub $t0, $t0, $t1
	sw $t0, -15312($fp)
	li $t0, 997
	sw $t0, -15316($fp)
	li $t0, 0
	lw $t1, -15316($fp)
	sub $t0, $t0, $t1
	sw $t0, -15320($fp)
	li $t0, 65074
	sw $t0, -15324($fp)
	lw $t0, -15320($fp)
	lw $t1, -15324($fp)
	add $t0, $t0, $t1
	sw $t0, -15328($fp)
	li $t0, 0
	sw $t0, -15332($fp)
	li $t0, 10075
	sw $t0, -15336($fp)
	li $t0, 0
	lw $t1, -15336($fp)
	sub $t0, $t0, $t1
	sw $t0, -15340($fp)
	lw $t1, -15340($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label829
label830:
	li $t0, 40280
	sw $t0, -15344($fp)
	lw $t1, -15344($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label829
label828:
	li $t0, 1
	sw $t0, -15332($fp)
label829:
	addi $sp, $sp, -4
	lw $t0, -15312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15348($fp)
	addi $sp, $sp, 16
	lw $t0, -15296($fp)
	lw $t1, -15348($fp)
	mul $t0, $t0, $t1
	sw $t0, -15352($fp)
	lw $t0, -1360($fp)
	sw $t0, -15356($fp)
	lw $t0, -15352($fp)
	lw $t1, -15356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15360($fp)
	lw $t1, -15360($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label825
label825:
	li $t0, 38396
	sw $t0, -15364($fp)
	lw $t1, -15364($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label824
label823:
	li $t0, 0
	sw $t0, -15368($fp)
	addi $t0, $fp, -168
	sw $t0, -15372($fp)
	li $t0, 0
	sw $t0, -15376($fp)
	li $t0, 0
	sw $t0, -15380($fp)
	li $t0, 12499
	sw $t0, -15384($fp)
	lw $t1, -15384($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label835
label835:
	li $t0, 1
	sw $t0, -15380($fp)
label836:
	li $t0, 0
	lw $t1, -15380($fp)
	sub $t0, $t0, $t1
	sw $t0, -15388($fp)
	li $t0, 52316
	sw $t0, -15392($fp)
	li $t0, 0
	sw $t0, -15396($fp)
	lw $t0, -2416($fp)
	sw $t0, -15400($fp)
	lw $t1, -15400($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label839
label839:
	lw $t0, -748($fp)
	sw $t0, -15404($fp)
	lw $t1, -15404($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -15396($fp)
label838:
	addi $sp, $sp, -4
	lw $t0, -15388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15408($fp)
	addi $sp, $sp, 16
	lw $t1, -15408($fp)
	li $t2, 0
	bne $t1, $t2, label834
	j label833
label833:
	li $t0, 1
	sw $t0, -15376($fp)
label834:
	li $t0, 4
	lw $t1, -15376($fp)
	mul $t0, $t0, $t1
	sw $t0, -15412($fp)
	lw $t0, -15412($fp)
	lw $t1, -15372($fp)
	add $t0, $t0, $t1
	sw $t0, -15416($fp)
	lw $t0, -15416($fp)
	lw $t1, 0($t0)
	sw $t1, -15420($fp)
	li $t0, 49158
	sw $t0, -15424($fp)
	li $t0, 55907
	sw $t0, -15428($fp)
	lw $t0, -15424($fp)
	lw $t1, -15428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15432($fp)
	li $t0, 0
	lw $t1, -15432($fp)
	sub $t0, $t0, $t1
	sw $t0, -15436($fp)
	addi $t0, $fp, -256
	sw $t0, -15440($fp)
	li $t0, 2
	sw $t0, -15444($fp)
	li $t0, 4
	lw $t1, -15444($fp)
	mul $t0, $t0, $t1
	sw $t0, -15448($fp)
	lw $t0, -15448($fp)
	lw $t1, -15440($fp)
	add $t0, $t0, $t1
	sw $t0, -15452($fp)
	lw $t0, -15452($fp)
	lw $t1, 0($t0)
	sw $t1, -15456($fp)
	lw $t0, -15436($fp)
	lw $t1, -15456($fp)
	sub $t0, $t0, $t1
	sw $t0, -15460($fp)
	lw $t1, -15420($fp)
	lw $t2, -15460($fp)
	blt $t1, $t2, label831
	j label832
label831:
	li $t0, 1
	sw $t0, -15368($fp)
label832:
	lw $ra, -4($fp)
	lw $v0, -15368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label822
label824:
label798:
label790:
	li $t0, 0
	sw $t0, -15464($fp)
	lw $t0, -14644($fp)
	sw $t0, -15468($fp)
	li $t0, 28239
	sw $t0, -15472($fp)
	lw $t0, -15468($fp)
	lw $t1, -15472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15476($fp)
	lw $t1, -15476($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label845
label845:
	lw $t0, -1396($fp)
	sw $t0, -15480($fp)
	lw $t1, -15480($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -15464($fp)
label844:
	addi $t0, $fp, -14536
	sw $t0, -15484($fp)
	lw $t0, -3232($fp)
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
	li $t0, 0
	sw $t0, -15504($fp)
	li $t0, 23264
	sw $t0, -15508($fp)
	lw $t0, -3220($fp)
	sw $t0, -15512($fp)
	lw $t0, -15508($fp)
	lw $t1, -15512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15516($fp)
	lw $t1, -15516($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label848
label848:
	li $t0, 37834
	sw $t0, -15520($fp)
	lw $t1, -15520($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -15504($fp)
label847:
	li $t0, 0
	sw $t0, -15524($fp)
	li $t0, 5362
	sw $t0, -15528($fp)
	lw $t1, -15528($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label850
label852:
	lw $t0, -4744($fp)
	sw $t0, -15532($fp)
	lw $t1, -15532($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label850
label851:
	lw $t0, -4696($fp)
	sw $t0, -15536($fp)
	lw $t1, -15536($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label850
label849:
	li $t0, 1
	sw $t0, -15524($fp)
label850:
	li $t0, 0
	sw $t0, -15540($fp)
	lw $t0, -748($fp)
	sw $t0, -15544($fp)
	li $t0, 33945
	sw $t0, -15548($fp)
	lw $t0, -15544($fp)
	lw $t1, -15548($fp)
	mul $t0, $t0, $t1
	sw $t0, -15552($fp)
	li $t0, 18957
	sw $t0, -15556($fp)
	lw $t1, -15552($fp)
	lw $t2, -15556($fp)
	beq $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -15540($fp)
label854:
	addi $sp, $sp, -4
	lw $t0, -15504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15560($fp)
	addi $sp, $sp, 16
	lw $t0, -3208($fp)
	sw $t0, -15564($fp)
	addi $sp, $sp, -4
	lw $t0, -15500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15568($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -15572($fp)
	lw $t0, -4240($fp)
	sw $t0, -15576($fp)
	lw $t0, -2548($fp)
	sw $t0, -15580($fp)
	lw $t0, -15576($fp)
	lw $t1, -15580($fp)
	mul $t0, $t0, $t1
	sw $t0, -15584($fp)
	lw $t1, -15584($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label856
label857:
	lw $t0, -3196($fp)
	sw $t0, -15588($fp)
	lw $t1, -15588($fp)
	li $t2, 0
	bne $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -15572($fp)
label856:
	addi $sp, $sp, -4
	lw $t0, -15464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15592($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -15592($fp)
	sub $t0, $t0, $t1
	sw $t0, -15596($fp)
	lw $t1, -15596($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label841
label840:
	li $t0, 65203
	sw $t0, -15600($fp)
	lw $t0, -15600($fp)
	sw $t0, -15604($fp)
	lw $t0, -15604($fp)
	sw $t0, -15608($fp)
	li $t0, 0
	sw $t0, -15612($fp)
	addi $t0, $fp, -236
	sw $t0, -15616($fp)
	lw $t0, -808($fp)
	sw $t0, -15620($fp)
	lw $t0, -15620($fp)
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -15624($fp)
	li $t0, 4
	lw $t1, -15624($fp)
	mul $t0, $t0, $t1
	sw $t0, -15628($fp)
	lw $t0, -15628($fp)
	lw $t1, -15616($fp)
	add $t0, $t0, $t1
	sw $t0, -15632($fp)
	lw $t0, -15632($fp)
	lw $t1, 0($t0)
	sw $t1, -15636($fp)
	lw $t1, -15636($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label859
label860:
	li $t0, 20509
	sw $t0, -15640($fp)
	lw $t1, -15640($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label859
label858:
	li $t0, 1
	sw $t0, -15612($fp)
label859:
	li $t0, 0
	sw $t0, -15644($fp)
	li $t0, 0
	sw $t0, -15648($fp)
	li $t0, 0
	sw $t0, -15652($fp)
	lw $t0, -4696($fp)
	sw $t0, -15656($fp)
	lw $t1, -15656($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label865
label865:
	li $t0, 1
	sw $t0, -15652($fp)
label866:
	li $t0, 42794
	sw $t0, -15660($fp)
	lw $t1, -15652($fp)
	lw $t2, -15660($fp)
	beq $t1, $t2, label863
	j label864
label863:
	li $t0, 1
	sw $t0, -15648($fp)
label864:
	addi $t0, $fp, -584
	sw $t0, -15664($fp)
	li $t0, 6
	sw $t0, -15668($fp)
	li $t0, 4
	lw $t1, -15668($fp)
	mul $t0, $t0, $t1
	sw $t0, -15672($fp)
	lw $t0, -15672($fp)
	lw $t1, -15664($fp)
	add $t0, $t0, $t1
	sw $t0, -15676($fp)
	lw $t0, -15676($fp)
	lw $t1, 0($t0)
	sw $t1, -15680($fp)
	li $t0, 0
	sw $t0, -15684($fp)
	addi $t0, $fp, -360
	sw $t0, -15688($fp)
	li $t0, 4
	sw $t0, -15692($fp)
	li $t0, 4
	lw $t1, -15692($fp)
	mul $t0, $t0, $t1
	sw $t0, -15696($fp)
	lw $t0, -15696($fp)
	lw $t1, -15688($fp)
	add $t0, $t0, $t1
	sw $t0, -15700($fp)
	lw $t0, -15700($fp)
	lw $t1, 0($t0)
	sw $t1, -15704($fp)
	lw $t1, -15704($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label867
label867:
	li $t0, 1
	sw $t0, -15684($fp)
label868:
	addi $sp, $sp, -4
	lw $t0, -15648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15684($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15708($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -380
	sw $t0, -15712($fp)
	lw $t0, -1852($fp)
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
	li $t0, 278
	sw $t0, -15732($fp)
	lw $t0, -15728($fp)
	lw $t1, -15732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15736($fp)
	lw $t0, -15708($fp)
	lw $t1, -15736($fp)
	add $t0, $t0, $t1
	sw $t0, -15740($fp)
	li $t0, 33904
	sw $t0, -15744($fp)
	lw $t0, -2416($fp)
	sw $t0, -15748($fp)
	li $t0, 9227
	sw $t0, -15752($fp)
	lw $t0, -15748($fp)
	lw $t1, -15752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15756($fp)
	lw $t0, -15744($fp)
	lw $t1, -15756($fp)
	sub $t0, $t0, $t1
	sw $t0, -15760($fp)
	lw $t1, -15740($fp)
	lw $t2, -15760($fp)
	bne $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -15644($fp)
label862:
	li $t0, 0
	sw $t0, -15764($fp)
	li $t0, 0
	sw $t0, -15768($fp)
	lw $t0, -4756($fp)
	sw $t0, -15772($fp)
	lw $t0, -1360($fp)
	sw $t0, -15776($fp)
	lw $t1, -15772($fp)
	lw $t2, -15776($fp)
	blt $t1, $t2, label871
	j label872
label871:
	li $t0, 1
	sw $t0, -15768($fp)
label872:
	lw $t0, -4516($fp)
	sw $t0, -15780($fp)
	lw $t0, -748($fp)
	sw $t0, -15784($fp)
	addi $sp, $sp, -4
	lw $t0, -15768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15788($fp)
	addi $sp, $sp, 16
	lw $t0, -4720($fp)
	sw $t0, -15792($fp)
	lw $t0, -15788($fp)
	lw $t1, -15792($fp)
	mul $t0, $t0, $t1
	sw $t0, -15796($fp)
	li $t0, 53311
	sw $t0, -15800($fp)
	lw $t0, -1072($fp)
	sw $t0, -15804($fp)
	lw $t0, -15800($fp)
	lw $t1, -15804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15808($fp)
	lw $t0, -1360($fp)
	sw $t0, -15812($fp)
	lw $t0, -15808($fp)
	lw $t1, -15812($fp)
	mul $t0, $t0, $t1
	sw $t0, -15816($fp)
	lw $t0, -1384($fp)
	sw $t0, -15820($fp)
	lw $t0, -15816($fp)
	lw $t1, -15820($fp)
	sub $t0, $t0, $t1
	sw $t0, -15824($fp)
	lw $t1, -15796($fp)
	lw $t2, -15824($fp)
	ble $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -15764($fp)
label870:
	addi $t0, $fp, -556
	sw $t0, -15828($fp)
	li $t0, 2
	sw $t0, -15832($fp)
	li $t0, 4
	lw $t1, -15832($fp)
	mul $t0, $t0, $t1
	sw $t0, -15836($fp)
	lw $t0, -15836($fp)
	lw $t1, -15828($fp)
	add $t0, $t0, $t1
	sw $t0, -15840($fp)
	lw $t0, -15840($fp)
	lw $t1, 0($t0)
	sw $t1, -15844($fp)
	li $t0, 0
	sw $t0, -15848($fp)
	li $t0, 14896
	sw $t0, -15852($fp)
	li $t0, 54825
	sw $t0, -15856($fp)
	lw $t0, -15852($fp)
	lw $t1, -15856($fp)
	mul $t0, $t0, $t1
	sw $t0, -15860($fp)
	lw $t1, -15860($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label874
label875:
	li $t0, 47075
	sw $t0, -15864($fp)
	lw $t1, -15864($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label874
label873:
	li $t0, 1
	sw $t0, -15848($fp)
label874:
	lw $t0, -2572($fp)
	sw $t0, -15868($fp)
	lw $t0, -15868($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -15872($fp)
	addi $sp, $sp, -4
	lw $t0, -15844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15876($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -15880($fp)
	lw $t0, -3064($fp)
	sw $t0, -15884($fp)
	lw $t1, -15884($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label876
label876:
	li $t0, 1
	sw $t0, -15880($fp)
label877:
	li $t0, 0
	lw $t1, -15880($fp)
	sub $t0, $t0, $t1
	sw $t0, -15888($fp)
	lw $t0, -15888($fp)
	sw $t0, -15604($fp)
	lw $t0, -15604($fp)
	sw $t0, -15892($fp)
	li $t0, 0
	sw $t0, -15896($fp)
	li $t0, 0
	sw $t0, -15900($fp)
	li $t0, 25223
	sw $t0, -15904($fp)
	li $t0, 31285
	sw $t0, -15908($fp)
	lw $t0, -15904($fp)
	lw $t1, -15908($fp)
	sub $t0, $t0, $t1
	sw $t0, -15912($fp)
	lw $t1, -15912($fp)
	li $t2, 0
	bne $t1, $t2, label883
	j label882
label883:
	lw $t0, -1708($fp)
	sw $t0, -15916($fp)
	lw $t1, -15916($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label882
label881:
	li $t0, 1
	sw $t0, -15900($fp)
label882:
	li $t0, 37009
	sw $t0, -15920($fp)
	lw $t0, -5200($fp)
	sw $t0, -15924($fp)
	lw $t0, -15920($fp)
	lw $t1, -15924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15928($fp)
	li $t0, 51588
	sw $t0, -15932($fp)
	lw $t0, -15928($fp)
	lw $t1, -15932($fp)
	sub $t0, $t0, $t1
	sw $t0, -15936($fp)
	li $t0, 34852
	sw $t0, -15940($fp)
	lw $t0, -736($fp)
	sw $t0, -15944($fp)
	lw $t0, -15940($fp)
	lw $t1, -15944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15948($fp)
	lw $t0, -2548($fp)
	sw $t0, -15952($fp)
	lw $t0, -15952($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	sw $t0, -15956($fp)
	addi $sp, $sp, -4
	lw $t0, -15936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15960($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -15960($fp)
	sub $t0, $t0, $t1
	sw $t0, -15964($fp)
	li $t0, 0
	sw $t0, -15968($fp)
	li $t0, 0
	sw $t0, -15972($fp)
	li $t0, 48072
	sw $t0, -15976($fp)
	li $t0, 24509
	sw $t0, -15980($fp)
	lw $t1, -15976($fp)
	lw $t2, -15980($fp)
	bgt $t1, $t2, label886
	j label887
label886:
	li $t0, 1
	sw $t0, -15972($fp)
label887:
	li $t0, 2430
	sw $t0, -15984($fp)
	lw $t1, -15972($fp)
	lw $t2, -15984($fp)
	beq $t1, $t2, label884
	j label885
label884:
	li $t0, 1
	sw $t0, -15968($fp)
label885:
	addi $sp, $sp, -4
	lw $t0, -15900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15988($fp)
	addi $sp, $sp, 16
	lw $t1, -15988($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label880
label880:
	li $t0, 0
	sw $t0, -15992($fp)
	li $t0, 47395
	sw $t0, -15996($fp)
	lw $t0, -1864($fp)
	sw $t0, -16000($fp)
	lw $t0, -15996($fp)
	lw $t1, -16000($fp)
	add $t0, $t0, $t1
	sw $t0, -16004($fp)
	lw $t0, -1384($fp)
	sw $t0, -16008($fp)
	lw $t1, -16004($fp)
	lw $t2, -16008($fp)
	bgt $t1, $t2, label888
	j label889
label888:
	li $t0, 1
	sw $t0, -15992($fp)
label889:
	lw $t0, -2188($fp)
	sw $t0, -16012($fp)
	lw $t1, -15992($fp)
	lw $t2, -16012($fp)
	beq $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -15896($fp)
label879:
	j label842
label841:
label890:
	addi $t0, $fp, -508
	sw $t0, -16016($fp)
	lw $t0, -2176($fp)
	sw $t0, -16020($fp)
	li $t0, 4
	lw $t1, -16020($fp)
	mul $t0, $t0, $t1
	sw $t0, -16024($fp)
	lw $t0, -16024($fp)
	lw $t1, -16016($fp)
	add $t0, $t0, $t1
	sw $t0, -16028($fp)
	lw $t0, -16028($fp)
	lw $t1, 0($t0)
	sw $t1, -16032($fp)
	lw $t0, -4948($fp)
	sw $t0, -16036($fp)
	lw $t0, -16032($fp)
	lw $t1, -16036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16040($fp)
	li $t0, 59169
	sw $t0, -16044($fp)
	lw $t0, -16040($fp)
	lw $t1, -16044($fp)
	sub $t0, $t0, $t1
	sw $t0, -16048($fp)
	lw $t0, -4960($fp)
	sw $t0, -16052($fp)
	li $t0, 50242
	sw $t0, -16056($fp)
	lw $t0, -16052($fp)
	lw $t1, -16056($fp)
	mul $t0, $t0, $t1
	sw $t0, -16060($fp)
	li $t0, 52757
	sw $t0, -16064($fp)
	lw $t0, -16060($fp)
	lw $t1, -16064($fp)
	mul $t0, $t0, $t1
	sw $t0, -16068($fp)
	lw $t0, -16048($fp)
	lw $t1, -16068($fp)
	sub $t0, $t0, $t1
	sw $t0, -16072($fp)
	lw $t1, -16072($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label892
label893:
	li $t0, 0
	sw $t0, -16076($fp)
	li $t0, 16897
	sw $t0, -16080($fp)
	lw $t1, -16080($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label894
label894:
	li $t0, 1
	sw $t0, -16076($fp)
label895:
	lw $t0, -14572($fp)
	sw $t0, -16084($fp)
	lw $t0, -4252($fp)
	sw $t0, -16088($fp)
	lw $t0, -16084($fp)
	lw $t1, -16088($fp)
	mul $t0, $t0, $t1
	sw $t0, -16092($fp)
	lw $t1, -16076($fp)
	lw $t2, -16092($fp)
	bne $t1, $t2, label891
	j label892
label891:
	li $t0, 0
	sw $t0, -16096($fp)
	li $t0, 0
	sw $t0, -16100($fp)
	li $t0, 0
	sw $t0, -16104($fp)
	lw $t0, -2752($fp)
	sw $t0, -16108($fp)
	lw $t1, -16108($fp)
	li $t2, 0
	bne $t1, $t2, label903
	j label902
label903:
	lw $t0, -736($fp)
	sw $t0, -16112($fp)
	lw $t1, -16112($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label902
label901:
	li $t0, 1
	sw $t0, -16104($fp)
label902:
	addi $t0, $fp, -584
	sw $t0, -16116($fp)
	li $t0, 0
	sw $t0, -16120($fp)
	li $t0, 4
	lw $t1, -16120($fp)
	mul $t0, $t0, $t1
	sw $t0, -16124($fp)
	lw $t0, -16124($fp)
	lw $t1, -16116($fp)
	add $t0, $t0, $t1
	sw $t0, -16128($fp)
	lw $t0, -16128($fp)
	lw $t1, 0($t0)
	sw $t1, -16132($fp)
	lw $t0, -4540($fp)
	sw $t0, -16136($fp)
	lw $t0, -16132($fp)
	lw $t1, -16136($fp)
	add $t0, $t0, $t1
	sw $t0, -16140($fp)
	addi $t0, $fp, -380
	sw $t0, -16144($fp)
	li $t0, 0
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
	lw $t0, -14656($fp)
	sw $t0, -16164($fp)
	lw $t0, -16160($fp)
	lw $t1, -16164($fp)
	mul $t0, $t0, $t1
	sw $t0, -16168($fp)
	addi $sp, $sp, -4
	lw $t0, -16104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16172($fp)
	addi $sp, $sp, 16
	lw $t1, -16172($fp)
	li $t2, 0
	bne $t1, $t2, label900
	j label899
label899:
	li $t0, 1
	sw $t0, -16100($fp)
label900:
	li $t0, 0
	lw $t1, -16100($fp)
	sub $t0, $t0, $t1
	sw $t0, -16176($fp)
	li $t0, 0
	lw $t1, -16176($fp)
	sub $t0, $t0, $t1
	sw $t0, -16180($fp)
	lw $t1, -16180($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label898
label898:
	li $t0, 45200
	sw $t0, -16184($fp)
	li $t0, 94
	sw $t0, -16188($fp)
	lw $t0, -16184($fp)
	lw $t1, -16188($fp)
	add $t0, $t0, $t1
	sw $t0, -16192($fp)
	lw $t1, -16192($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label897
label904:
	lw $t0, -1384($fp)
	sw $t0, -16196($fp)
	li $t0, 46094
	sw $t0, -16200($fp)
	lw $t1, -16196($fp)
	lw $t2, -16200($fp)
	bne $t1, $t2, label896
	j label897
label896:
	li $t0, 1
	sw $t0, -16096($fp)
label897:
	lw $ra, -4($fp)
	lw $v0, -16096($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label890
label892:
label842:
label905:
	addi $t0, $fp, -14552
	sw $t0, -16204($fp)
	lw $t0, -5200($fp)
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
	lw $t1, -16220($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label906
label906:
	li $t0, 0
	sw $t0, -16224($fp)
	addi $t0, $fp, -512
	sw $t0, -16228($fp)
	lw $t0, -700($fp)
	sw $t0, -16232($fp)
	li $t0, 54324
	sw $t0, -16236($fp)
	lw $t0, -16232($fp)
	lw $t1, -16236($fp)
	add $t0, $t0, $t1
	sw $t0, -16240($fp)
	li $t0, 4
	lw $t1, -16240($fp)
	mul $t0, $t0, $t1
	sw $t0, -16244($fp)
	lw $t0, -16244($fp)
	lw $t1, -16228($fp)
	add $t0, $t0, $t1
	sw $t0, -16248($fp)
	lw $t0, -16248($fp)
	lw $t1, 0($t0)
	sw $t1, -16252($fp)
	lw $t1, -16252($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label908
label908:
	li $t0, 1
	sw $t0, -16224($fp)
label909:
	j label905
label907:
	j label779
label778:
	li $t0, 0
	sw $t0, -16256($fp)
	lw $t0, -5212($fp)
	sw $t0, -16260($fp)
	lw $t1, -16260($fp)
	li $t2, 0
	bne $t1, $t2, label912
	j label911
label912:
	lw $t0, -5224($fp)
	sw $t0, -16264($fp)
	lw $t1, -16264($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label911
label910:
	li $t0, 1
	sw $t0, -16256($fp)
label911:
label779:
label913:
	addi $t0, $fp, -380
	sw $t0, -16268($fp)
	li $t0, 3
	sw $t0, -16272($fp)
	li $t0, 4
	lw $t1, -16272($fp)
	mul $t0, $t0, $t1
	sw $t0, -16276($fp)
	lw $t0, -16276($fp)
	lw $t1, -16268($fp)
	add $t0, $t0, $t1
	sw $t0, -16280($fp)
	lw $t0, -16280($fp)
	lw $t1, 0($t0)
	sw $t1, -16284($fp)
	lw $t0, -688($fp)
	sw $t0, -16288($fp)
	lw $t0, -16284($fp)
	lw $t1, -16288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16292($fp)
	li $t0, 22693
	sw $t0, -16296($fp)
	lw $t0, -16292($fp)
	lw $t1, -16296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16300($fp)
	li $t0, 0
	sw $t0, -16304($fp)
	li $t0, 52116
	sw $t0, -16308($fp)
	lw $t1, -16308($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label918
label917:
	li $t0, 1
	sw $t0, -16304($fp)
label918:
	lw $t0, -16300($fp)
	lw $t1, -16304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16312($fp)
	lw $t1, -16312($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label916
label916:
	li $t0, 34148
	sw $t0, -16316($fp)
	li $t0, 37589
	sw $t0, -16320($fp)
	li $t0, 0
	lw $t1, -16320($fp)
	sub $t0, $t0, $t1
	sw $t0, -16324($fp)
	lw $t1, -16316($fp)
	lw $t2, -16324($fp)
	bne $t1, $t2, label914
	j label915
label914:
	li $t0, 0
	sw $t0, -16328($fp)
	lw $t0, -5236($fp)
	sw $t0, -16332($fp)
	lw $t1, -16332($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -16328($fp)
label923:
	li $t0, 41405
	sw $t0, -16336($fp)
	li $t0, 0
	lw $t1, -16336($fp)
	sub $t0, $t0, $t1
	sw $t0, -16340($fp)
	lw $t0, -16328($fp)
	lw $t1, -16340($fp)
	sub $t0, $t0, $t1
	sw $t0, -16344($fp)
	li $t0, 15687
	sw $t0, -16348($fp)
	lw $t0, -16344($fp)
	lw $t1, -16348($fp)
	sub $t0, $t0, $t1
	sw $t0, -16352($fp)
	lw $t0, -712($fp)
	sw $t0, -16356($fp)
	lw $t1, -16352($fp)
	lw $t2, -16356($fp)
	ble $t1, $t2, label919
	j label920
label919:
	li $t0, 62561
	sw $t0, -16360($fp)
	lw $ra, -4($fp)
	lw $v0, -16360($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label921
label920:
label924:
	li $t0, 0
	sw $t0, -16364($fp)
	li $t0, 0
	sw $t0, -16368($fp)
	addi $t0, $fp, -508
	sw $t0, -16372($fp)
	li $t0, 0
	sw $t0, -16376($fp)
	li $t0, 4
	lw $t1, -16376($fp)
	mul $t0, $t0, $t1
	sw $t0, -16380($fp)
	lw $t0, -16380($fp)
	lw $t1, -16372($fp)
	add $t0, $t0, $t1
	sw $t0, -16384($fp)
	lw $t0, -16384($fp)
	lw $t1, 0($t0)
	sw $t1, -16388($fp)
	li $t0, 7870
	sw $t0, -16392($fp)
	lw $t0, -16388($fp)
	lw $t1, -16392($fp)
	mul $t0, $t0, $t1
	sw $t0, -16396($fp)
	li $t0, 5439
	sw $t0, -16400($fp)
	lw $t0, -16400($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	sw $t0, -16404($fp)
	lw $t0, -5224($fp)
	sw $t0, -16408($fp)
	lw $t0, -4492($fp)
	sw $t0, -16412($fp)
	lw $t0, -16408($fp)
	lw $t1, -16412($fp)
	add $t0, $t0, $t1
	sw $t0, -16416($fp)
	addi $sp, $sp, -4
	lw $t0, -16396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16420($fp)
	addi $sp, $sp, 16
	lw $t0, -2212($fp)
	sw $t0, -16424($fp)
	li $t0, 0
	lw $t1, -16424($fp)
	sub $t0, $t0, $t1
	sw $t0, -16428($fp)
	lw $t1, -16420($fp)
	lw $t2, -16428($fp)
	bgt $t1, $t2, label929
	j label930
label929:
	li $t0, 1
	sw $t0, -16368($fp)
label930:
	li $t0, 0
	sw $t0, -16432($fp)
	li $t0, 0
	sw $t0, -16436($fp)
	lw $t0, -4516($fp)
	sw $t0, -16440($fp)
	lw $t0, -3400($fp)
	sw $t0, -16444($fp)
	lw $t1, -16440($fp)
	lw $t2, -16444($fp)
	bge $t1, $t2, label933
	j label934
label933:
	li $t0, 1
	sw $t0, -16436($fp)
label934:
	li $t0, 33076
	sw $t0, -16448($fp)
	lw $t1, -16436($fp)
	lw $t2, -16448($fp)
	ble $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -16432($fp)
label932:
	lw $t1, -16368($fp)
	lw $t2, -16432($fp)
	beq $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -16364($fp)
label928:
	li $t0, 0
	sw $t0, -16452($fp)
	lw $t0, -3232($fp)
	sw $t0, -16456($fp)
	lw $t0, -2416($fp)
	sw $t0, -16460($fp)
	li $t0, 58543
	sw $t0, -16464($fp)
	lw $t0, -16460($fp)
	lw $t1, -16464($fp)
	mul $t0, $t0, $t1
	sw $t0, -16468($fp)
	lw $t1, -16456($fp)
	lw $t2, -16468($fp)
	ble $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -16452($fp)
label936:
	lw $t1, -16364($fp)
	lw $t2, -16452($fp)
	beq $t1, $t2, label925
	j label926
label925:
	li $t0, 0
	sw $t0, -16472($fp)
	lw $t0, -2176($fp)
	sw $t0, -16476($fp)
	li $t0, 0
	lw $t1, -16476($fp)
	sub $t0, $t0, $t1
	sw $t0, -16480($fp)
	lw $t1, -16480($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label937
label939:
	li $t0, 0
	sw $t0, -16484($fp)
	li $t0, 51932
	sw $t0, -16488($fp)
	li $t0, 0
	lw $t1, -16488($fp)
	sub $t0, $t0, $t1
	sw $t0, -16492($fp)
	lw $t0, -4732($fp)
	sw $t0, -16496($fp)
	lw $t1, -16492($fp)
	lw $t2, -16496($fp)
	beq $t1, $t2, label940
	j label941
label940:
	li $t0, 1
	sw $t0, -16484($fp)
label941:
	li $t0, 0
	sw $t0, -16500($fp)
	li $t0, 41317
	sw $t0, -16504($fp)
	lw $t1, -16504($fp)
	li $t2, 0
	bne $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -16500($fp)
label943:
	addi $t0, $fp, -532
	sw $t0, -16508($fp)
	lw $t0, -1408($fp)
	sw $t0, -16512($fp)
	li $t0, 4
	lw $t1, -16512($fp)
	mul $t0, $t0, $t1
	sw $t0, -16516($fp)
	lw $t0, -16516($fp)
	lw $t1, -16508($fp)
	add $t0, $t0, $t1
	sw $t0, -16520($fp)
	lw $t0, -16520($fp)
	lw $t1, 0($t0)
	sw $t1, -16524($fp)
	li $t0, 58299
	sw $t0, -16528($fp)
	lw $t0, -16524($fp)
	lw $t1, -16528($fp)
	mul $t0, $t0, $t1
	sw $t0, -16532($fp)
	li $t0, 59458
	sw $t0, -16536($fp)
	lw $t0, -16536($fp)
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	sw $t0, -16540($fp)
	lw $t0, -4552($fp)
	sw $t0, -16544($fp)
	lw $t0, -16544($fp)
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	sw $t0, -16548($fp)
	addi $sp, $sp, -4
	lw $t0, -16532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16552($fp)
	addi $sp, $sp, 16
	li $t0, 24293
	sw $t0, -16556($fp)
	lw $t0, -16552($fp)
	lw $t1, -16556($fp)
	mul $t0, $t0, $t1
	sw $t0, -16560($fp)
	addi $sp, $sp, -4
	lw $t0, -16484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16564($fp)
	addi $sp, $sp, 16
	lw $t1, -16564($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label938
label937:
	li $t0, 1
	sw $t0, -16472($fp)
label938:
	lw $t0, -16472($fp)
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	sw $t0, -16568($fp)
	lw $ra, -4($fp)
	lw $v0, -16568($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label924
label926:
label921:
	j label913
label915:
	addi $t0, $fp, -16
	sw $t0, -16572($fp)
	li $t0, 0
	sw $t0, -16576($fp)
	li $t0, 4
	lw $t1, -16576($fp)
	mul $t0, $t0, $t1
	sw $t0, -16580($fp)
	lw $t0, -16580($fp)
	lw $t1, -16572($fp)
	add $t0, $t0, $t1
	sw $t0, -16584($fp)
	lw $t0, -16584($fp)
	lw $t1, 0($t0)
	sw $t1, -16588($fp)
	lw $t0, -16588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -16592($fp)
	li $t0, 1
	sw $t0, -16596($fp)
	li $t0, 4
	lw $t1, -16596($fp)
	mul $t0, $t0, $t1
	sw $t0, -16600($fp)
	lw $t0, -16600($fp)
	lw $t1, -16592($fp)
	add $t0, $t0, $t1
	sw $t0, -16604($fp)
	lw $t0, -16604($fp)
	lw $t1, 0($t0)
	sw $t1, -16608($fp)
	lw $t0, -16608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -16612($fp)
	li $t0, 2
	sw $t0, -16616($fp)
	li $t0, 4
	lw $t1, -16616($fp)
	mul $t0, $t0, $t1
	sw $t0, -16620($fp)
	lw $t0, -16620($fp)
	lw $t1, -16612($fp)
	add $t0, $t0, $t1
	sw $t0, -16624($fp)
	lw $t0, -16624($fp)
	lw $t1, 0($t0)
	sw $t1, -16628($fp)
	lw $t0, -16628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -16632($fp)
	lw $t0, -16632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -16636($fp)
	lw $t0, -16636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -16640($fp)
	lw $t0, -16640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -16644($fp)
	lw $t0, -16644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -16648($fp)
	lw $t0, -16648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -16652($fp)
	lw $t0, -16652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -16656($fp)
	lw $t0, -16656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -16660($fp)
	lw $t0, -16660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -16664($fp)
	li $t0, 0
	sw $t0, -16668($fp)
	li $t0, 4
	lw $t1, -16668($fp)
	mul $t0, $t0, $t1
	sw $t0, -16672($fp)
	lw $t0, -16672($fp)
	lw $t1, -16664($fp)
	add $t0, $t0, $t1
	sw $t0, -16676($fp)
	lw $t0, -16676($fp)
	lw $t1, 0($t0)
	sw $t1, -16680($fp)
	lw $t0, -16680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -16684($fp)
	li $t0, 1
	sw $t0, -16688($fp)
	li $t0, 4
	lw $t1, -16688($fp)
	mul $t0, $t0, $t1
	sw $t0, -16692($fp)
	lw $t0, -16692($fp)
	lw $t1, -16684($fp)
	add $t0, $t0, $t1
	sw $t0, -16696($fp)
	lw $t0, -16696($fp)
	lw $t1, 0($t0)
	sw $t1, -16700($fp)
	lw $t0, -16700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -16704($fp)
	lw $t0, -16704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -16708($fp)
	lw $t0, -16708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16712($fp)
	li $t0, 0
	sw $t0, -16716($fp)
	li $t0, 4
	lw $t1, -16716($fp)
	mul $t0, $t0, $t1
	sw $t0, -16720($fp)
	lw $t0, -16720($fp)
	lw $t1, -16712($fp)
	add $t0, $t0, $t1
	sw $t0, -16724($fp)
	lw $t0, -16724($fp)
	lw $t1, 0($t0)
	sw $t1, -16728($fp)
	lw $t0, -16728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16732($fp)
	li $t0, 1
	sw $t0, -16736($fp)
	li $t0, 4
	lw $t1, -16736($fp)
	mul $t0, $t0, $t1
	sw $t0, -16740($fp)
	lw $t0, -16740($fp)
	lw $t1, -16732($fp)
	add $t0, $t0, $t1
	sw $t0, -16744($fp)
	lw $t0, -16744($fp)
	lw $t1, 0($t0)
	sw $t1, -16748($fp)
	lw $t0, -16748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16752($fp)
	li $t0, 2
	sw $t0, -16756($fp)
	li $t0, 4
	lw $t1, -16756($fp)
	mul $t0, $t0, $t1
	sw $t0, -16760($fp)
	lw $t0, -16760($fp)
	lw $t1, -16752($fp)
	add $t0, $t0, $t1
	sw $t0, -16764($fp)
	lw $t0, -16764($fp)
	lw $t1, 0($t0)
	sw $t1, -16768($fp)
	lw $t0, -16768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16772($fp)
	li $t0, 3
	sw $t0, -16776($fp)
	li $t0, 4
	lw $t1, -16776($fp)
	mul $t0, $t0, $t1
	sw $t0, -16780($fp)
	lw $t0, -16780($fp)
	lw $t1, -16772($fp)
	add $t0, $t0, $t1
	sw $t0, -16784($fp)
	lw $t0, -16784($fp)
	lw $t1, 0($t0)
	sw $t1, -16788($fp)
	lw $t0, -16788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16792($fp)
	li $t0, 4
	sw $t0, -16796($fp)
	li $t0, 4
	lw $t1, -16796($fp)
	mul $t0, $t0, $t1
	sw $t0, -16800($fp)
	lw $t0, -16800($fp)
	lw $t1, -16792($fp)
	add $t0, $t0, $t1
	sw $t0, -16804($fp)
	lw $t0, -16804($fp)
	lw $t1, 0($t0)
	sw $t1, -16808($fp)
	lw $t0, -16808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16812($fp)
	li $t0, 5
	sw $t0, -16816($fp)
	li $t0, 4
	lw $t1, -16816($fp)
	mul $t0, $t0, $t1
	sw $t0, -16820($fp)
	lw $t0, -16820($fp)
	lw $t1, -16812($fp)
	add $t0, $t0, $t1
	sw $t0, -16824($fp)
	lw $t0, -16824($fp)
	lw $t1, 0($t0)
	sw $t1, -16828($fp)
	lw $t0, -16828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16832($fp)
	li $t0, 6
	sw $t0, -16836($fp)
	li $t0, 4
	lw $t1, -16836($fp)
	mul $t0, $t0, $t1
	sw $t0, -16840($fp)
	lw $t0, -16840($fp)
	lw $t1, -16832($fp)
	add $t0, $t0, $t1
	sw $t0, -16844($fp)
	lw $t0, -16844($fp)
	lw $t1, 0($t0)
	sw $t1, -16848($fp)
	lw $t0, -16848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16852($fp)
	li $t0, 7
	sw $t0, -16856($fp)
	li $t0, 4
	lw $t1, -16856($fp)
	mul $t0, $t0, $t1
	sw $t0, -16860($fp)
	lw $t0, -16860($fp)
	lw $t1, -16852($fp)
	add $t0, $t0, $t1
	sw $t0, -16864($fp)
	lw $t0, -16864($fp)
	lw $t1, 0($t0)
	sw $t1, -16868($fp)
	lw $t0, -16868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16872($fp)
	li $t0, 8
	sw $t0, -16876($fp)
	li $t0, 4
	lw $t1, -16876($fp)
	mul $t0, $t0, $t1
	sw $t0, -16880($fp)
	lw $t0, -16880($fp)
	lw $t1, -16872($fp)
	add $t0, $t0, $t1
	sw $t0, -16884($fp)
	lw $t0, -16884($fp)
	lw $t1, 0($t0)
	sw $t1, -16888($fp)
	lw $t0, -16888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -16892($fp)
	li $t0, 9
	sw $t0, -16896($fp)
	li $t0, 4
	lw $t1, -16896($fp)
	mul $t0, $t0, $t1
	sw $t0, -16900($fp)
	lw $t0, -16900($fp)
	lw $t1, -16892($fp)
	add $t0, $t0, $t1
	sw $t0, -16904($fp)
	lw $t0, -16904($fp)
	lw $t1, 0($t0)
	sw $t1, -16908($fp)
	lw $t0, -16908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -16912($fp)
	lw $t0, -16912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -16916($fp)
	lw $t0, -16916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -16920($fp)
	lw $t0, -16920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -16924($fp)
	lw $t0, -16924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -16928($fp)
	lw $t0, -16928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -16932($fp)
	li $t0, 0
	sw $t0, -16936($fp)
	li $t0, 4
	lw $t1, -16936($fp)
	mul $t0, $t0, $t1
	sw $t0, -16940($fp)
	lw $t0, -16940($fp)
	lw $t1, -16932($fp)
	add $t0, $t0, $t1
	sw $t0, -16944($fp)
	lw $t0, -16944($fp)
	lw $t1, 0($t0)
	sw $t1, -16948($fp)
	lw $t0, -16948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -16952($fp)
	li $t0, 1
	sw $t0, -16956($fp)
	li $t0, 4
	lw $t1, -16956($fp)
	mul $t0, $t0, $t1
	sw $t0, -16960($fp)
	lw $t0, -16960($fp)
	lw $t1, -16952($fp)
	add $t0, $t0, $t1
	sw $t0, -16964($fp)
	lw $t0, -16964($fp)
	lw $t1, 0($t0)
	sw $t1, -16968($fp)
	lw $t0, -16968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -16972($fp)
	li $t0, 2
	sw $t0, -16976($fp)
	li $t0, 4
	lw $t1, -16976($fp)
	mul $t0, $t0, $t1
	sw $t0, -16980($fp)
	lw $t0, -16980($fp)
	lw $t1, -16972($fp)
	add $t0, $t0, $t1
	sw $t0, -16984($fp)
	lw $t0, -16984($fp)
	lw $t1, 0($t0)
	sw $t1, -16988($fp)
	lw $t0, -16988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -16992($fp)
	li $t0, 3
	sw $t0, -16996($fp)
	li $t0, 4
	lw $t1, -16996($fp)
	mul $t0, $t0, $t1
	sw $t0, -17000($fp)
	lw $t0, -17000($fp)
	lw $t1, -16992($fp)
	add $t0, $t0, $t1
	sw $t0, -17004($fp)
	lw $t0, -17004($fp)
	lw $t1, 0($t0)
	sw $t1, -17008($fp)
	lw $t0, -17008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -17012($fp)
	li $t0, 4
	sw $t0, -17016($fp)
	li $t0, 4
	lw $t1, -17016($fp)
	mul $t0, $t0, $t1
	sw $t0, -17020($fp)
	lw $t0, -17020($fp)
	lw $t1, -17012($fp)
	add $t0, $t0, $t1
	sw $t0, -17024($fp)
	lw $t0, -17024($fp)
	lw $t1, 0($t0)
	sw $t1, -17028($fp)
	lw $t0, -17028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -17032($fp)
	li $t0, 5
	sw $t0, -17036($fp)
	li $t0, 4
	lw $t1, -17036($fp)
	mul $t0, $t0, $t1
	sw $t0, -17040($fp)
	lw $t0, -17040($fp)
	lw $t1, -17032($fp)
	add $t0, $t0, $t1
	sw $t0, -17044($fp)
	lw $t0, -17044($fp)
	lw $t1, 0($t0)
	sw $t1, -17048($fp)
	lw $t0, -17048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -17052($fp)
	li $t0, 6
	sw $t0, -17056($fp)
	li $t0, 4
	lw $t1, -17056($fp)
	mul $t0, $t0, $t1
	sw $t0, -17060($fp)
	lw $t0, -17060($fp)
	lw $t1, -17052($fp)
	add $t0, $t0, $t1
	sw $t0, -17064($fp)
	lw $t0, -17064($fp)
	lw $t1, 0($t0)
	sw $t1, -17068($fp)
	lw $t0, -17068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -17072($fp)
	li $t0, 7
	sw $t0, -17076($fp)
	li $t0, 4
	lw $t1, -17076($fp)
	mul $t0, $t0, $t1
	sw $t0, -17080($fp)
	lw $t0, -17080($fp)
	lw $t1, -17072($fp)
	add $t0, $t0, $t1
	sw $t0, -17084($fp)
	lw $t0, -17084($fp)
	lw $t1, 0($t0)
	sw $t1, -17088($fp)
	lw $t0, -17088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -17092($fp)
	li $t0, 8
	sw $t0, -17096($fp)
	li $t0, 4
	lw $t1, -17096($fp)
	mul $t0, $t0, $t1
	sw $t0, -17100($fp)
	lw $t0, -17100($fp)
	lw $t1, -17092($fp)
	add $t0, $t0, $t1
	sw $t0, -17104($fp)
	lw $t0, -17104($fp)
	lw $t1, 0($t0)
	sw $t1, -17108($fp)
	lw $t0, -17108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -17112($fp)
	lw $t0, -17112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -17116($fp)
	lw $t0, -17116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -17120($fp)
	lw $t0, -17120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -17124($fp)
	lw $t0, -17124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -17128($fp)
	lw $t0, -17128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1408($fp)
	sw $t0, -17132($fp)
	lw $t0, -17132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -17136($fp)
	li $t0, 0
	sw $t0, -17140($fp)
	li $t0, 4
	lw $t1, -17140($fp)
	mul $t0, $t0, $t1
	sw $t0, -17144($fp)
	lw $t0, -17144($fp)
	lw $t1, -17136($fp)
	add $t0, $t0, $t1
	sw $t0, -17148($fp)
	lw $t0, -17148($fp)
	lw $t1, 0($t0)
	sw $t1, -17152($fp)
	lw $t0, -17152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -17156($fp)
	li $t0, 1
	sw $t0, -17160($fp)
	li $t0, 4
	lw $t1, -17160($fp)
	mul $t0, $t0, $t1
	sw $t0, -17164($fp)
	lw $t0, -17164($fp)
	lw $t1, -17156($fp)
	add $t0, $t0, $t1
	sw $t0, -17168($fp)
	lw $t0, -17168($fp)
	lw $t1, 0($t0)
	sw $t1, -17172($fp)
	lw $t0, -17172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -17176($fp)
	li $t0, 2
	sw $t0, -17180($fp)
	li $t0, 4
	lw $t1, -17180($fp)
	mul $t0, $t0, $t1
	sw $t0, -17184($fp)
	lw $t0, -17184($fp)
	lw $t1, -17176($fp)
	add $t0, $t0, $t1
	sw $t0, -17188($fp)
	lw $t0, -17188($fp)
	lw $t1, 0($t0)
	sw $t1, -17192($fp)
	lw $t0, -17192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -17196($fp)
	li $t0, 3
	sw $t0, -17200($fp)
	li $t0, 4
	lw $t1, -17200($fp)
	mul $t0, $t0, $t1
	sw $t0, -17204($fp)
	lw $t0, -17204($fp)
	lw $t1, -17196($fp)
	add $t0, $t0, $t1
	sw $t0, -17208($fp)
	lw $t0, -17208($fp)
	lw $t1, 0($t0)
	sw $t1, -17212($fp)
	lw $t0, -17212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -17216($fp)
	li $t0, 4
	sw $t0, -17220($fp)
	li $t0, 4
	lw $t1, -17220($fp)
	mul $t0, $t0, $t1
	sw $t0, -17224($fp)
	lw $t0, -17224($fp)
	lw $t1, -17216($fp)
	add $t0, $t0, $t1
	sw $t0, -17228($fp)
	lw $t0, -17228($fp)
	lw $t1, 0($t0)
	sw $t1, -17232($fp)
	lw $t0, -17232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -17236($fp)
	li $t0, 5
	sw $t0, -17240($fp)
	li $t0, 4
	lw $t1, -17240($fp)
	mul $t0, $t0, $t1
	sw $t0, -17244($fp)
	lw $t0, -17244($fp)
	lw $t1, -17236($fp)
	add $t0, $t0, $t1
	sw $t0, -17248($fp)
	lw $t0, -17248($fp)
	lw $t1, 0($t0)
	sw $t1, -17252($fp)
	lw $t0, -17252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -17256($fp)
	li $t0, 6
	sw $t0, -17260($fp)
	li $t0, 4
	lw $t1, -17260($fp)
	mul $t0, $t0, $t1
	sw $t0, -17264($fp)
	lw $t0, -17264($fp)
	lw $t1, -17256($fp)
	add $t0, $t0, $t1
	sw $t0, -17268($fp)
	lw $t0, -17268($fp)
	lw $t1, 0($t0)
	sw $t1, -17272($fp)
	lw $t0, -17272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -17276($fp)
	li $t0, 7
	sw $t0, -17280($fp)
	li $t0, 4
	lw $t1, -17280($fp)
	mul $t0, $t0, $t1
	sw $t0, -17284($fp)
	lw $t0, -17284($fp)
	lw $t1, -17276($fp)
	add $t0, $t0, $t1
	sw $t0, -17288($fp)
	lw $t0, -17288($fp)
	lw $t1, 0($t0)
	sw $t1, -17292($fp)
	lw $t0, -17292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -17296($fp)
	li $t0, 8
	sw $t0, -17300($fp)
	li $t0, 4
	lw $t1, -17300($fp)
	mul $t0, $t0, $t1
	sw $t0, -17304($fp)
	lw $t0, -17304($fp)
	lw $t1, -17296($fp)
	add $t0, $t0, $t1
	sw $t0, -17308($fp)
	lw $t0, -17308($fp)
	lw $t1, 0($t0)
	sw $t1, -17312($fp)
	lw $t0, -17312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -17316($fp)
	li $t0, 0
	sw $t0, -17320($fp)
	li $t0, 4
	lw $t1, -17320($fp)
	mul $t0, $t0, $t1
	sw $t0, -17324($fp)
	lw $t0, -17324($fp)
	lw $t1, -17316($fp)
	add $t0, $t0, $t1
	sw $t0, -17328($fp)
	lw $t0, -17328($fp)
	lw $t1, 0($t0)
	sw $t1, -17332($fp)
	lw $t0, -17332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -17336($fp)
	li $t0, 1
	sw $t0, -17340($fp)
	li $t0, 4
	lw $t1, -17340($fp)
	mul $t0, $t0, $t1
	sw $t0, -17344($fp)
	lw $t0, -17344($fp)
	lw $t1, -17336($fp)
	add $t0, $t0, $t1
	sw $t0, -17348($fp)
	lw $t0, -17348($fp)
	lw $t1, 0($t0)
	sw $t1, -17352($fp)
	lw $t0, -17352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -17356($fp)
	li $t0, 2
	sw $t0, -17360($fp)
	li $t0, 4
	lw $t1, -17360($fp)
	mul $t0, $t0, $t1
	sw $t0, -17364($fp)
	lw $t0, -17364($fp)
	lw $t1, -17356($fp)
	add $t0, $t0, $t1
	sw $t0, -17368($fp)
	lw $t0, -17368($fp)
	lw $t1, 0($t0)
	sw $t1, -17372($fp)
	lw $t0, -17372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -17376($fp)
	lw $t0, -17376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -17380($fp)
	li $t0, 0
	sw $t0, -17384($fp)
	li $t0, 4
	lw $t1, -17384($fp)
	mul $t0, $t0, $t1
	sw $t0, -17388($fp)
	lw $t0, -17388($fp)
	lw $t1, -17380($fp)
	add $t0, $t0, $t1
	sw $t0, -17392($fp)
	lw $t0, -17392($fp)
	lw $t1, 0($t0)
	sw $t1, -17396($fp)
	lw $t0, -17396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -17400($fp)
	li $t0, 1
	sw $t0, -17404($fp)
	li $t0, 4
	lw $t1, -17404($fp)
	mul $t0, $t0, $t1
	sw $t0, -17408($fp)
	lw $t0, -17408($fp)
	lw $t1, -17400($fp)
	add $t0, $t0, $t1
	sw $t0, -17412($fp)
	lw $t0, -17412($fp)
	lw $t1, 0($t0)
	sw $t1, -17416($fp)
	lw $t0, -17416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1768($fp)
	sw $t0, -17420($fp)
	lw $t0, -17420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -17424($fp)
	li $t0, 0
	sw $t0, -17428($fp)
	li $t0, 4
	lw $t1, -17428($fp)
	mul $t0, $t0, $t1
	sw $t0, -17432($fp)
	lw $t0, -17432($fp)
	lw $t1, -17424($fp)
	add $t0, $t0, $t1
	sw $t0, -17436($fp)
	lw $t0, -17436($fp)
	lw $t1, 0($t0)
	sw $t1, -17440($fp)
	lw $t0, -17440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -17444($fp)
	li $t0, 1
	sw $t0, -17448($fp)
	li $t0, 4
	lw $t1, -17448($fp)
	mul $t0, $t0, $t1
	sw $t0, -17452($fp)
	lw $t0, -17452($fp)
	lw $t1, -17444($fp)
	add $t0, $t0, $t1
	sw $t0, -17456($fp)
	lw $t0, -17456($fp)
	lw $t1, 0($t0)
	sw $t1, -17460($fp)
	lw $t0, -17460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -17464($fp)
	li $t0, 2
	sw $t0, -17468($fp)
	li $t0, 4
	lw $t1, -17468($fp)
	mul $t0, $t0, $t1
	sw $t0, -17472($fp)
	lw $t0, -17472($fp)
	lw $t1, -17464($fp)
	add $t0, $t0, $t1
	sw $t0, -17476($fp)
	lw $t0, -17476($fp)
	lw $t1, 0($t0)
	sw $t1, -17480($fp)
	lw $t0, -17480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1852($fp)
	sw $t0, -17484($fp)
	lw $t0, -17484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1864($fp)
	sw $t0, -17488($fp)
	lw $t0, -17488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1876($fp)
	sw $t0, -17492($fp)
	lw $t0, -17492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17496($fp)
	li $t0, 0
	sw $t0, -17500($fp)
	li $t0, 4
	lw $t1, -17500($fp)
	mul $t0, $t0, $t1
	sw $t0, -17504($fp)
	lw $t0, -17504($fp)
	lw $t1, -17496($fp)
	add $t0, $t0, $t1
	sw $t0, -17508($fp)
	lw $t0, -17508($fp)
	lw $t1, 0($t0)
	sw $t1, -17512($fp)
	lw $t0, -17512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17516($fp)
	li $t0, 1
	sw $t0, -17520($fp)
	li $t0, 4
	lw $t1, -17520($fp)
	mul $t0, $t0, $t1
	sw $t0, -17524($fp)
	lw $t0, -17524($fp)
	lw $t1, -17516($fp)
	add $t0, $t0, $t1
	sw $t0, -17528($fp)
	lw $t0, -17528($fp)
	lw $t1, 0($t0)
	sw $t1, -17532($fp)
	lw $t0, -17532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17536($fp)
	li $t0, 2
	sw $t0, -17540($fp)
	li $t0, 4
	lw $t1, -17540($fp)
	mul $t0, $t0, $t1
	sw $t0, -17544($fp)
	lw $t0, -17544($fp)
	lw $t1, -17536($fp)
	add $t0, $t0, $t1
	sw $t0, -17548($fp)
	lw $t0, -17548($fp)
	lw $t1, 0($t0)
	sw $t1, -17552($fp)
	lw $t0, -17552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17556($fp)
	li $t0, 3
	sw $t0, -17560($fp)
	li $t0, 4
	lw $t1, -17560($fp)
	mul $t0, $t0, $t1
	sw $t0, -17564($fp)
	lw $t0, -17564($fp)
	lw $t1, -17556($fp)
	add $t0, $t0, $t1
	sw $t0, -17568($fp)
	lw $t0, -17568($fp)
	lw $t1, 0($t0)
	sw $t1, -17572($fp)
	lw $t0, -17572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17576($fp)
	li $t0, 4
	sw $t0, -17580($fp)
	li $t0, 4
	lw $t1, -17580($fp)
	mul $t0, $t0, $t1
	sw $t0, -17584($fp)
	lw $t0, -17584($fp)
	lw $t1, -17576($fp)
	add $t0, $t0, $t1
	sw $t0, -17588($fp)
	lw $t0, -17588($fp)
	lw $t1, 0($t0)
	sw $t1, -17592($fp)
	lw $t0, -17592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17596($fp)
	li $t0, 5
	sw $t0, -17600($fp)
	li $t0, 4
	lw $t1, -17600($fp)
	mul $t0, $t0, $t1
	sw $t0, -17604($fp)
	lw $t0, -17604($fp)
	lw $t1, -17596($fp)
	add $t0, $t0, $t1
	sw $t0, -17608($fp)
	lw $t0, -17608($fp)
	lw $t1, 0($t0)
	sw $t1, -17612($fp)
	lw $t0, -17612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17616($fp)
	li $t0, 6
	sw $t0, -17620($fp)
	li $t0, 4
	lw $t1, -17620($fp)
	mul $t0, $t0, $t1
	sw $t0, -17624($fp)
	lw $t0, -17624($fp)
	lw $t1, -17616($fp)
	add $t0, $t0, $t1
	sw $t0, -17628($fp)
	lw $t0, -17628($fp)
	lw $t1, 0($t0)
	sw $t1, -17632($fp)
	lw $t0, -17632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17636($fp)
	li $t0, 7
	sw $t0, -17640($fp)
	li $t0, 4
	lw $t1, -17640($fp)
	mul $t0, $t0, $t1
	sw $t0, -17644($fp)
	lw $t0, -17644($fp)
	lw $t1, -17636($fp)
	add $t0, $t0, $t1
	sw $t0, -17648($fp)
	lw $t0, -17648($fp)
	lw $t1, 0($t0)
	sw $t1, -17652($fp)
	lw $t0, -17652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17656($fp)
	li $t0, 8
	sw $t0, -17660($fp)
	li $t0, 4
	lw $t1, -17660($fp)
	mul $t0, $t0, $t1
	sw $t0, -17664($fp)
	lw $t0, -17664($fp)
	lw $t1, -17656($fp)
	add $t0, $t0, $t1
	sw $t0, -17668($fp)
	lw $t0, -17668($fp)
	lw $t1, 0($t0)
	sw $t1, -17672($fp)
	lw $t0, -17672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -17676($fp)
	li $t0, 9
	sw $t0, -17680($fp)
	li $t0, 4
	lw $t1, -17680($fp)
	mul $t0, $t0, $t1
	sw $t0, -17684($fp)
	lw $t0, -17684($fp)
	lw $t1, -17676($fp)
	add $t0, $t0, $t1
	sw $t0, -17688($fp)
	lw $t0, -17688($fp)
	lw $t1, 0($t0)
	sw $t1, -17692($fp)
	lw $t0, -17692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2128($fp)
	sw $t0, -17696($fp)
	lw $t0, -17696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2140($fp)
	sw $t0, -17700($fp)
	lw $t0, -17700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2152($fp)
	sw $t0, -17704($fp)
	lw $t0, -17704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2164($fp)
	sw $t0, -17708($fp)
	lw $t0, -17708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2176($fp)
	sw $t0, -17712($fp)
	lw $t0, -17712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2188($fp)
	sw $t0, -17716($fp)
	lw $t0, -17716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2200($fp)
	sw $t0, -17720($fp)
	lw $t0, -17720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2212($fp)
	sw $t0, -17724($fp)
	lw $t0, -17724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -17728($fp)
	li $t0, 0
	sw $t0, -17732($fp)
	li $t0, 4
	lw $t1, -17732($fp)
	mul $t0, $t0, $t1
	sw $t0, -17736($fp)
	lw $t0, -17736($fp)
	lw $t1, -17728($fp)
	add $t0, $t0, $t1
	sw $t0, -17740($fp)
	lw $t0, -17740($fp)
	lw $t1, 0($t0)
	sw $t1, -17744($fp)
	lw $t0, -17744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -17748($fp)
	li $t0, 1
	sw $t0, -17752($fp)
	li $t0, 4
	lw $t1, -17752($fp)
	mul $t0, $t0, $t1
	sw $t0, -17756($fp)
	lw $t0, -17756($fp)
	lw $t1, -17748($fp)
	add $t0, $t0, $t1
	sw $t0, -17760($fp)
	lw $t0, -17760($fp)
	lw $t1, 0($t0)
	sw $t1, -17764($fp)
	lw $t0, -17764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -17768($fp)
	li $t0, 2
	sw $t0, -17772($fp)
	li $t0, 4
	lw $t1, -17772($fp)
	mul $t0, $t0, $t1
	sw $t0, -17776($fp)
	lw $t0, -17776($fp)
	lw $t1, -17768($fp)
	add $t0, $t0, $t1
	sw $t0, -17780($fp)
	lw $t0, -17780($fp)
	lw $t1, 0($t0)
	sw $t1, -17784($fp)
	lw $t0, -17784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -17788($fp)
	li $t0, 3
	sw $t0, -17792($fp)
	li $t0, 4
	lw $t1, -17792($fp)
	mul $t0, $t0, $t1
	sw $t0, -17796($fp)
	lw $t0, -17796($fp)
	lw $t1, -17788($fp)
	add $t0, $t0, $t1
	sw $t0, -17800($fp)
	lw $t0, -17800($fp)
	lw $t1, 0($t0)
	sw $t1, -17804($fp)
	lw $t0, -17804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -17808($fp)
	li $t0, 4
	sw $t0, -17812($fp)
	li $t0, 4
	lw $t1, -17812($fp)
	mul $t0, $t0, $t1
	sw $t0, -17816($fp)
	lw $t0, -17816($fp)
	lw $t1, -17808($fp)
	add $t0, $t0, $t1
	sw $t0, -17820($fp)
	lw $t0, -17820($fp)
	lw $t1, 0($t0)
	sw $t1, -17824($fp)
	lw $t0, -17824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -17828($fp)
	li $t0, 5
	sw $t0, -17832($fp)
	li $t0, 4
	lw $t1, -17832($fp)
	mul $t0, $t0, $t1
	sw $t0, -17836($fp)
	lw $t0, -17836($fp)
	lw $t1, -17828($fp)
	add $t0, $t0, $t1
	sw $t0, -17840($fp)
	lw $t0, -17840($fp)
	lw $t1, 0($t0)
	sw $t1, -17844($fp)
	lw $t0, -17844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -17848($fp)
	li $t0, 6
	sw $t0, -17852($fp)
	li $t0, 4
	lw $t1, -17852($fp)
	mul $t0, $t0, $t1
	sw $t0, -17856($fp)
	lw $t0, -17856($fp)
	lw $t1, -17848($fp)
	add $t0, $t0, $t1
	sw $t0, -17860($fp)
	lw $t0, -17860($fp)
	lw $t1, 0($t0)
	sw $t1, -17864($fp)
	lw $t0, -17864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2392($fp)
	sw $t0, -17868($fp)
	lw $t0, -17868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2404($fp)
	sw $t0, -17872($fp)
	lw $t0, -17872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2416($fp)
	sw $t0, -17876($fp)
	lw $t0, -17876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -17880($fp)
	li $t0, 0
	sw $t0, -17884($fp)
	li $t0, 4
	lw $t1, -17884($fp)
	mul $t0, $t0, $t1
	sw $t0, -17888($fp)
	lw $t0, -17888($fp)
	lw $t1, -17880($fp)
	add $t0, $t0, $t1
	sw $t0, -17892($fp)
	lw $t0, -17892($fp)
	lw $t1, 0($t0)
	sw $t1, -17896($fp)
	lw $t0, -17896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -17900($fp)
	li $t0, 1
	sw $t0, -17904($fp)
	li $t0, 4
	lw $t1, -17904($fp)
	mul $t0, $t0, $t1
	sw $t0, -17908($fp)
	lw $t0, -17908($fp)
	lw $t1, -17900($fp)
	add $t0, $t0, $t1
	sw $t0, -17912($fp)
	lw $t0, -17912($fp)
	lw $t1, 0($t0)
	sw $t1, -17916($fp)
	lw $t0, -17916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -17920($fp)
	li $t0, 2
	sw $t0, -17924($fp)
	li $t0, 4
	lw $t1, -17924($fp)
	mul $t0, $t0, $t1
	sw $t0, -17928($fp)
	lw $t0, -17928($fp)
	lw $t1, -17920($fp)
	add $t0, $t0, $t1
	sw $t0, -17932($fp)
	lw $t0, -17932($fp)
	lw $t1, 0($t0)
	sw $t1, -17936($fp)
	lw $t0, -17936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -17940($fp)
	li $t0, 3
	sw $t0, -17944($fp)
	li $t0, 4
	lw $t1, -17944($fp)
	mul $t0, $t0, $t1
	sw $t0, -17948($fp)
	lw $t0, -17948($fp)
	lw $t1, -17940($fp)
	add $t0, $t0, $t1
	sw $t0, -17952($fp)
	lw $t0, -17952($fp)
	lw $t1, 0($t0)
	sw $t1, -17956($fp)
	lw $t0, -17956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -17960($fp)
	li $t0, 4
	sw $t0, -17964($fp)
	li $t0, 4
	lw $t1, -17964($fp)
	mul $t0, $t0, $t1
	sw $t0, -17968($fp)
	lw $t0, -17968($fp)
	lw $t1, -17960($fp)
	add $t0, $t0, $t1
	sw $t0, -17972($fp)
	lw $t0, -17972($fp)
	lw $t1, 0($t0)
	sw $t1, -17976($fp)
	lw $t0, -17976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2548($fp)
	sw $t0, -17980($fp)
	lw $t0, -17980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2560($fp)
	sw $t0, -17984($fp)
	lw $t0, -17984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2572($fp)
	sw $t0, -17988($fp)
	lw $t0, -17988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2584($fp)
	sw $t0, -17992($fp)
	lw $t0, -17992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -17996($fp)
	li $t0, 0
	sw $t0, -18000($fp)
	li $t0, 4
	lw $t1, -18000($fp)
	mul $t0, $t0, $t1
	sw $t0, -18004($fp)
	lw $t0, -18004($fp)
	lw $t1, -17996($fp)
	add $t0, $t0, $t1
	sw $t0, -18008($fp)
	lw $t0, -18008($fp)
	lw $t1, 0($t0)
	sw $t1, -18012($fp)
	lw $t0, -18012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -18016($fp)
	li $t0, 1
	sw $t0, -18020($fp)
	li $t0, 4
	lw $t1, -18020($fp)
	mul $t0, $t0, $t1
	sw $t0, -18024($fp)
	lw $t0, -18024($fp)
	lw $t1, -18016($fp)
	add $t0, $t0, $t1
	sw $t0, -18028($fp)
	lw $t0, -18028($fp)
	lw $t1, 0($t0)
	sw $t1, -18032($fp)
	lw $t0, -18032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -18036($fp)
	li $t0, 2
	sw $t0, -18040($fp)
	li $t0, 4
	lw $t1, -18040($fp)
	mul $t0, $t0, $t1
	sw $t0, -18044($fp)
	lw $t0, -18044($fp)
	lw $t1, -18036($fp)
	add $t0, $t0, $t1
	sw $t0, -18048($fp)
	lw $t0, -18048($fp)
	lw $t1, 0($t0)
	sw $t1, -18052($fp)
	lw $t0, -18052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -18056($fp)
	li $t0, 3
	sw $t0, -18060($fp)
	li $t0, 4
	lw $t1, -18060($fp)
	mul $t0, $t0, $t1
	sw $t0, -18064($fp)
	lw $t0, -18064($fp)
	lw $t1, -18056($fp)
	add $t0, $t0, $t1
	sw $t0, -18068($fp)
	lw $t0, -18068($fp)
	lw $t1, 0($t0)
	sw $t1, -18072($fp)
	lw $t0, -18072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -18076($fp)
	li $t0, 4
	sw $t0, -18080($fp)
	li $t0, 4
	lw $t1, -18080($fp)
	mul $t0, $t0, $t1
	sw $t0, -18084($fp)
	lw $t0, -18084($fp)
	lw $t1, -18076($fp)
	add $t0, $t0, $t1
	sw $t0, -18088($fp)
	lw $t0, -18088($fp)
	lw $t1, 0($t0)
	sw $t1, -18092($fp)
	lw $t0, -18092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -18096($fp)
	li $t0, 5
	sw $t0, -18100($fp)
	li $t0, 4
	lw $t1, -18100($fp)
	mul $t0, $t0, $t1
	sw $t0, -18104($fp)
	lw $t0, -18104($fp)
	lw $t1, -18096($fp)
	add $t0, $t0, $t1
	sw $t0, -18108($fp)
	lw $t0, -18108($fp)
	lw $t1, 0($t0)
	sw $t1, -18112($fp)
	lw $t0, -18112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2740($fp)
	sw $t0, -18116($fp)
	lw $t0, -18116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2752($fp)
	sw $t0, -18120($fp)
	lw $t0, -18120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2764($fp)
	sw $t0, -18124($fp)
	lw $t0, -18124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2776($fp)
	sw $t0, -18128($fp)
	lw $t0, -18128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -18132($fp)
	li $t0, 0
	sw $t0, -18136($fp)
	li $t0, 4
	lw $t1, -18136($fp)
	mul $t0, $t0, $t1
	sw $t0, -18140($fp)
	lw $t0, -18140($fp)
	lw $t1, -18132($fp)
	add $t0, $t0, $t1
	sw $t0, -18144($fp)
	lw $t0, -18144($fp)
	lw $t1, 0($t0)
	sw $t1, -18148($fp)
	lw $t0, -18148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -18152($fp)
	li $t0, 1
	sw $t0, -18156($fp)
	li $t0, 4
	lw $t1, -18156($fp)
	mul $t0, $t0, $t1
	sw $t0, -18160($fp)
	lw $t0, -18160($fp)
	lw $t1, -18152($fp)
	add $t0, $t0, $t1
	sw $t0, -18164($fp)
	lw $t0, -18164($fp)
	lw $t1, 0($t0)
	sw $t1, -18168($fp)
	lw $t0, -18168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -18172($fp)
	li $t0, 2
	sw $t0, -18176($fp)
	li $t0, 4
	lw $t1, -18176($fp)
	mul $t0, $t0, $t1
	sw $t0, -18180($fp)
	lw $t0, -18180($fp)
	lw $t1, -18172($fp)
	add $t0, $t0, $t1
	sw $t0, -18184($fp)
	lw $t0, -18184($fp)
	lw $t1, 0($t0)
	sw $t1, -18188($fp)
	lw $t0, -18188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -18192($fp)
	li $t0, 3
	sw $t0, -18196($fp)
	li $t0, 4
	lw $t1, -18196($fp)
	mul $t0, $t0, $t1
	sw $t0, -18200($fp)
	lw $t0, -18200($fp)
	lw $t1, -18192($fp)
	add $t0, $t0, $t1
	sw $t0, -18204($fp)
	lw $t0, -18204($fp)
	lw $t1, 0($t0)
	sw $t1, -18208($fp)
	lw $t0, -18208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -18212($fp)
	li $t0, 4
	sw $t0, -18216($fp)
	li $t0, 4
	lw $t1, -18216($fp)
	mul $t0, $t0, $t1
	sw $t0, -18220($fp)
	lw $t0, -18220($fp)
	lw $t1, -18212($fp)
	add $t0, $t0, $t1
	sw $t0, -18224($fp)
	lw $t0, -18224($fp)
	lw $t1, 0($t0)
	sw $t1, -18228($fp)
	lw $t0, -18228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -18232($fp)
	li $t0, 5
	sw $t0, -18236($fp)
	li $t0, 4
	lw $t1, -18236($fp)
	mul $t0, $t0, $t1
	sw $t0, -18240($fp)
	lw $t0, -18240($fp)
	lw $t1, -18232($fp)
	add $t0, $t0, $t1
	sw $t0, -18244($fp)
	lw $t0, -18244($fp)
	lw $t1, 0($t0)
	sw $t1, -18248($fp)
	lw $t0, -18248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -18252($fp)
	li $t0, 6
	sw $t0, -18256($fp)
	li $t0, 4
	lw $t1, -18256($fp)
	mul $t0, $t0, $t1
	sw $t0, -18260($fp)
	lw $t0, -18260($fp)
	lw $t1, -18252($fp)
	add $t0, $t0, $t1
	sw $t0, -18264($fp)
	lw $t0, -18264($fp)
	lw $t1, 0($t0)
	sw $t1, -18268($fp)
	lw $t0, -18268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -18272($fp)
	li $t0, 7
	sw $t0, -18276($fp)
	li $t0, 4
	lw $t1, -18276($fp)
	mul $t0, $t0, $t1
	sw $t0, -18280($fp)
	lw $t0, -18280($fp)
	lw $t1, -18272($fp)
	add $t0, $t0, $t1
	sw $t0, -18284($fp)
	lw $t0, -18284($fp)
	lw $t1, 0($t0)
	sw $t1, -18288($fp)
	lw $t0, -18288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -316
	sw $t0, -18292($fp)
	li $t0, 8
	sw $t0, -18296($fp)
	li $t0, 4
	lw $t1, -18296($fp)
	mul $t0, $t0, $t1
	sw $t0, -18300($fp)
	lw $t0, -18300($fp)
	lw $t1, -18292($fp)
	add $t0, $t0, $t1
	sw $t0, -18304($fp)
	lw $t0, -18304($fp)
	lw $t1, 0($t0)
	sw $t1, -18308($fp)
	lw $t0, -18308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3004($fp)
	sw $t0, -18312($fp)
	lw $t0, -18312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3016($fp)
	sw $t0, -18316($fp)
	lw $t0, -18316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3028($fp)
	sw $t0, -18320($fp)
	lw $t0, -18320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3040($fp)
	sw $t0, -18324($fp)
	lw $t0, -18324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3052($fp)
	sw $t0, -18328($fp)
	lw $t0, -18328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3064($fp)
	sw $t0, -18332($fp)
	lw $t0, -18332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -18336($fp)
	li $t0, 0
	sw $t0, -18340($fp)
	li $t0, 4
	lw $t1, -18340($fp)
	mul $t0, $t0, $t1
	sw $t0, -18344($fp)
	lw $t0, -18344($fp)
	lw $t1, -18336($fp)
	add $t0, $t0, $t1
	sw $t0, -18348($fp)
	lw $t0, -18348($fp)
	lw $t1, 0($t0)
	sw $t1, -18352($fp)
	lw $t0, -18352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -18356($fp)
	li $t0, 1
	sw $t0, -18360($fp)
	li $t0, 4
	lw $t1, -18360($fp)
	mul $t0, $t0, $t1
	sw $t0, -18364($fp)
	lw $t0, -18364($fp)
	lw $t1, -18356($fp)
	add $t0, $t0, $t1
	sw $t0, -18368($fp)
	lw $t0, -18368($fp)
	lw $t1, 0($t0)
	sw $t1, -18372($fp)
	lw $t0, -18372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -18376($fp)
	li $t0, 2
	sw $t0, -18380($fp)
	li $t0, 4
	lw $t1, -18380($fp)
	mul $t0, $t0, $t1
	sw $t0, -18384($fp)
	lw $t0, -18384($fp)
	lw $t1, -18376($fp)
	add $t0, $t0, $t1
	sw $t0, -18388($fp)
	lw $t0, -18388($fp)
	lw $t1, 0($t0)
	sw $t1, -18392($fp)
	lw $t0, -18392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -18396($fp)
	li $t0, 3
	sw $t0, -18400($fp)
	li $t0, 4
	lw $t1, -18400($fp)
	mul $t0, $t0, $t1
	sw $t0, -18404($fp)
	lw $t0, -18404($fp)
	lw $t1, -18396($fp)
	add $t0, $t0, $t1
	sw $t0, -18408($fp)
	lw $t0, -18408($fp)
	lw $t1, 0($t0)
	sw $t1, -18412($fp)
	lw $t0, -18412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -18416($fp)
	li $t0, 4
	sw $t0, -18420($fp)
	li $t0, 4
	lw $t1, -18420($fp)
	mul $t0, $t0, $t1
	sw $t0, -18424($fp)
	lw $t0, -18424($fp)
	lw $t1, -18416($fp)
	add $t0, $t0, $t1
	sw $t0, -18428($fp)
	lw $t0, -18428($fp)
	lw $t1, 0($t0)
	sw $t1, -18432($fp)
	lw $t0, -18432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3196($fp)
	sw $t0, -18436($fp)
	lw $t0, -18436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3208($fp)
	sw $t0, -18440($fp)
	lw $t0, -18440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3220($fp)
	sw $t0, -18444($fp)
	lw $t0, -18444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3232($fp)
	sw $t0, -18448($fp)
	lw $t0, -18448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3244($fp)
	sw $t0, -18452($fp)
	lw $t0, -18452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -18456($fp)
	li $t0, 0
	sw $t0, -18460($fp)
	li $t0, 4
	lw $t1, -18460($fp)
	mul $t0, $t0, $t1
	sw $t0, -18464($fp)
	lw $t0, -18464($fp)
	lw $t1, -18456($fp)
	add $t0, $t0, $t1
	sw $t0, -18468($fp)
	lw $t0, -18468($fp)
	lw $t1, 0($t0)
	sw $t1, -18472($fp)
	lw $t0, -18472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -18476($fp)
	li $t0, 1
	sw $t0, -18480($fp)
	li $t0, 4
	lw $t1, -18480($fp)
	mul $t0, $t0, $t1
	sw $t0, -18484($fp)
	lw $t0, -18484($fp)
	lw $t1, -18476($fp)
	add $t0, $t0, $t1
	sw $t0, -18488($fp)
	lw $t0, -18488($fp)
	lw $t1, 0($t0)
	sw $t1, -18492($fp)
	lw $t0, -18492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -18496($fp)
	li $t0, 2
	sw $t0, -18500($fp)
	li $t0, 4
	lw $t1, -18500($fp)
	mul $t0, $t0, $t1
	sw $t0, -18504($fp)
	lw $t0, -18504($fp)
	lw $t1, -18496($fp)
	add $t0, $t0, $t1
	sw $t0, -18508($fp)
	lw $t0, -18508($fp)
	lw $t1, 0($t0)
	sw $t1, -18512($fp)
	lw $t0, -18512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -18516($fp)
	li $t0, 3
	sw $t0, -18520($fp)
	li $t0, 4
	lw $t1, -18520($fp)
	mul $t0, $t0, $t1
	sw $t0, -18524($fp)
	lw $t0, -18524($fp)
	lw $t1, -18516($fp)
	add $t0, $t0, $t1
	sw $t0, -18528($fp)
	lw $t0, -18528($fp)
	lw $t1, 0($t0)
	sw $t1, -18532($fp)
	lw $t0, -18532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -18536($fp)
	li $t0, 4
	sw $t0, -18540($fp)
	li $t0, 4
	lw $t1, -18540($fp)
	mul $t0, $t0, $t1
	sw $t0, -18544($fp)
	lw $t0, -18544($fp)
	lw $t1, -18536($fp)
	add $t0, $t0, $t1
	sw $t0, -18548($fp)
	lw $t0, -18548($fp)
	lw $t1, 0($t0)
	sw $t1, -18552($fp)
	lw $t0, -18552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -360
	sw $t0, -18556($fp)
	li $t0, 5
	sw $t0, -18560($fp)
	li $t0, 4
	lw $t1, -18560($fp)
	mul $t0, $t0, $t1
	sw $t0, -18564($fp)
	lw $t0, -18564($fp)
	lw $t1, -18556($fp)
	add $t0, $t0, $t1
	sw $t0, -18568($fp)
	lw $t0, -18568($fp)
	lw $t1, 0($t0)
	sw $t1, -18572($fp)
	lw $t0, -18572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3400($fp)
	sw $t0, -18576($fp)
	lw $t0, -18576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3412($fp)
	sw $t0, -18580($fp)
	lw $t0, -18580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3424($fp)
	sw $t0, -18584($fp)
	lw $t0, -18584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -18588($fp)
	li $t0, 0
	sw $t0, -18592($fp)
	li $t0, 4
	lw $t1, -18592($fp)
	mul $t0, $t0, $t1
	sw $t0, -18596($fp)
	lw $t0, -18596($fp)
	lw $t1, -18588($fp)
	add $t0, $t0, $t1
	sw $t0, -18600($fp)
	lw $t0, -18600($fp)
	lw $t1, 0($t0)
	sw $t1, -18604($fp)
	lw $t0, -18604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -18608($fp)
	li $t0, 1
	sw $t0, -18612($fp)
	li $t0, 4
	lw $t1, -18612($fp)
	mul $t0, $t0, $t1
	sw $t0, -18616($fp)
	lw $t0, -18616($fp)
	lw $t1, -18608($fp)
	add $t0, $t0, $t1
	sw $t0, -18620($fp)
	lw $t0, -18620($fp)
	lw $t1, 0($t0)
	sw $t1, -18624($fp)
	lw $t0, -18624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -18628($fp)
	li $t0, 2
	sw $t0, -18632($fp)
	li $t0, 4
	lw $t1, -18632($fp)
	mul $t0, $t0, $t1
	sw $t0, -18636($fp)
	lw $t0, -18636($fp)
	lw $t1, -18628($fp)
	add $t0, $t0, $t1
	sw $t0, -18640($fp)
	lw $t0, -18640($fp)
	lw $t1, 0($t0)
	sw $t1, -18644($fp)
	lw $t0, -18644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -18648($fp)
	li $t0, 3
	sw $t0, -18652($fp)
	li $t0, 4
	lw $t1, -18652($fp)
	mul $t0, $t0, $t1
	sw $t0, -18656($fp)
	lw $t0, -18656($fp)
	lw $t1, -18648($fp)
	add $t0, $t0, $t1
	sw $t0, -18660($fp)
	lw $t0, -18660($fp)
	lw $t1, 0($t0)
	sw $t1, -18664($fp)
	lw $t0, -18664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -18668($fp)
	li $t0, 4
	sw $t0, -18672($fp)
	li $t0, 4
	lw $t1, -18672($fp)
	mul $t0, $t0, $t1
	sw $t0, -18676($fp)
	lw $t0, -18676($fp)
	lw $t1, -18668($fp)
	add $t0, $t0, $t1
	sw $t0, -18680($fp)
	lw $t0, -18680($fp)
	lw $t1, 0($t0)
	sw $t1, -18684($fp)
	lw $t0, -18684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3556($fp)
	sw $t0, -18688($fp)
	lw $t0, -18688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18692($fp)
	li $t0, 0
	sw $t0, -18696($fp)
	li $t0, 4
	lw $t1, -18696($fp)
	mul $t0, $t0, $t1
	sw $t0, -18700($fp)
	lw $t0, -18700($fp)
	lw $t1, -18692($fp)
	add $t0, $t0, $t1
	sw $t0, -18704($fp)
	lw $t0, -18704($fp)
	lw $t1, 0($t0)
	sw $t1, -18708($fp)
	lw $t0, -18708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18712($fp)
	li $t0, 1
	sw $t0, -18716($fp)
	li $t0, 4
	lw $t1, -18716($fp)
	mul $t0, $t0, $t1
	sw $t0, -18720($fp)
	lw $t0, -18720($fp)
	lw $t1, -18712($fp)
	add $t0, $t0, $t1
	sw $t0, -18724($fp)
	lw $t0, -18724($fp)
	lw $t1, 0($t0)
	sw $t1, -18728($fp)
	lw $t0, -18728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18732($fp)
	li $t0, 2
	sw $t0, -18736($fp)
	li $t0, 4
	lw $t1, -18736($fp)
	mul $t0, $t0, $t1
	sw $t0, -18740($fp)
	lw $t0, -18740($fp)
	lw $t1, -18732($fp)
	add $t0, $t0, $t1
	sw $t0, -18744($fp)
	lw $t0, -18744($fp)
	lw $t1, 0($t0)
	sw $t1, -18748($fp)
	lw $t0, -18748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18752($fp)
	li $t0, 3
	sw $t0, -18756($fp)
	li $t0, 4
	lw $t1, -18756($fp)
	mul $t0, $t0, $t1
	sw $t0, -18760($fp)
	lw $t0, -18760($fp)
	lw $t1, -18752($fp)
	add $t0, $t0, $t1
	sw $t0, -18764($fp)
	lw $t0, -18764($fp)
	lw $t1, 0($t0)
	sw $t1, -18768($fp)
	lw $t0, -18768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18772($fp)
	li $t0, 4
	sw $t0, -18776($fp)
	li $t0, 4
	lw $t1, -18776($fp)
	mul $t0, $t0, $t1
	sw $t0, -18780($fp)
	lw $t0, -18780($fp)
	lw $t1, -18772($fp)
	add $t0, $t0, $t1
	sw $t0, -18784($fp)
	lw $t0, -18784($fp)
	lw $t1, 0($t0)
	sw $t1, -18788($fp)
	lw $t0, -18788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18792($fp)
	li $t0, 5
	sw $t0, -18796($fp)
	li $t0, 4
	lw $t1, -18796($fp)
	mul $t0, $t0, $t1
	sw $t0, -18800($fp)
	lw $t0, -18800($fp)
	lw $t1, -18792($fp)
	add $t0, $t0, $t1
	sw $t0, -18804($fp)
	lw $t0, -18804($fp)
	lw $t1, 0($t0)
	sw $t1, -18808($fp)
	lw $t0, -18808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18812($fp)
	li $t0, 6
	sw $t0, -18816($fp)
	li $t0, 4
	lw $t1, -18816($fp)
	mul $t0, $t0, $t1
	sw $t0, -18820($fp)
	lw $t0, -18820($fp)
	lw $t1, -18812($fp)
	add $t0, $t0, $t1
	sw $t0, -18824($fp)
	lw $t0, -18824($fp)
	lw $t1, 0($t0)
	sw $t1, -18828($fp)
	lw $t0, -18828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18832($fp)
	li $t0, 7
	sw $t0, -18836($fp)
	li $t0, 4
	lw $t1, -18836($fp)
	mul $t0, $t0, $t1
	sw $t0, -18840($fp)
	lw $t0, -18840($fp)
	lw $t1, -18832($fp)
	add $t0, $t0, $t1
	sw $t0, -18844($fp)
	lw $t0, -18844($fp)
	lw $t1, 0($t0)
	sw $t1, -18848($fp)
	lw $t0, -18848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18852($fp)
	li $t0, 8
	sw $t0, -18856($fp)
	li $t0, 4
	lw $t1, -18856($fp)
	mul $t0, $t0, $t1
	sw $t0, -18860($fp)
	lw $t0, -18860($fp)
	lw $t1, -18852($fp)
	add $t0, $t0, $t1
	sw $t0, -18864($fp)
	lw $t0, -18864($fp)
	lw $t1, 0($t0)
	sw $t1, -18868($fp)
	lw $t0, -18868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -420
	sw $t0, -18872($fp)
	li $t0, 9
	sw $t0, -18876($fp)
	li $t0, 4
	lw $t1, -18876($fp)
	mul $t0, $t0, $t1
	sw $t0, -18880($fp)
	lw $t0, -18880($fp)
	lw $t1, -18872($fp)
	add $t0, $t0, $t1
	sw $t0, -18884($fp)
	lw $t0, -18884($fp)
	lw $t1, 0($t0)
	sw $t1, -18888($fp)
	lw $t0, -18888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3808($fp)
	sw $t0, -18892($fp)
	lw $t0, -18892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3820($fp)
	sw $t0, -18896($fp)
	lw $t0, -18896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3832($fp)
	sw $t0, -18900($fp)
	lw $t0, -18900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -18904($fp)
	li $t0, 0
	sw $t0, -18908($fp)
	li $t0, 4
	lw $t1, -18908($fp)
	mul $t0, $t0, $t1
	sw $t0, -18912($fp)
	lw $t0, -18912($fp)
	lw $t1, -18904($fp)
	add $t0, $t0, $t1
	sw $t0, -18916($fp)
	lw $t0, -18916($fp)
	lw $t1, 0($t0)
	sw $t1, -18920($fp)
	lw $t0, -18920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -18924($fp)
	li $t0, 1
	sw $t0, -18928($fp)
	li $t0, 4
	lw $t1, -18928($fp)
	mul $t0, $t0, $t1
	sw $t0, -18932($fp)
	lw $t0, -18932($fp)
	lw $t1, -18924($fp)
	add $t0, $t0, $t1
	sw $t0, -18936($fp)
	lw $t0, -18936($fp)
	lw $t1, 0($t0)
	sw $t1, -18940($fp)
	lw $t0, -18940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -18944($fp)
	li $t0, 2
	sw $t0, -18948($fp)
	li $t0, 4
	lw $t1, -18948($fp)
	mul $t0, $t0, $t1
	sw $t0, -18952($fp)
	lw $t0, -18952($fp)
	lw $t1, -18944($fp)
	add $t0, $t0, $t1
	sw $t0, -18956($fp)
	lw $t0, -18956($fp)
	lw $t1, 0($t0)
	sw $t1, -18960($fp)
	lw $t0, -18960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -18964($fp)
	li $t0, 3
	sw $t0, -18968($fp)
	li $t0, 4
	lw $t1, -18968($fp)
	mul $t0, $t0, $t1
	sw $t0, -18972($fp)
	lw $t0, -18972($fp)
	lw $t1, -18964($fp)
	add $t0, $t0, $t1
	sw $t0, -18976($fp)
	lw $t0, -18976($fp)
	lw $t1, 0($t0)
	sw $t1, -18980($fp)
	lw $t0, -18980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -18984($fp)
	li $t0, 4
	sw $t0, -18988($fp)
	li $t0, 4
	lw $t1, -18988($fp)
	mul $t0, $t0, $t1
	sw $t0, -18992($fp)
	lw $t0, -18992($fp)
	lw $t1, -18984($fp)
	add $t0, $t0, $t1
	sw $t0, -18996($fp)
	lw $t0, -18996($fp)
	lw $t1, 0($t0)
	sw $t1, -19000($fp)
	lw $t0, -19000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -19004($fp)
	li $t0, 5
	sw $t0, -19008($fp)
	li $t0, 4
	lw $t1, -19008($fp)
	mul $t0, $t0, $t1
	sw $t0, -19012($fp)
	lw $t0, -19012($fp)
	lw $t1, -19004($fp)
	add $t0, $t0, $t1
	sw $t0, -19016($fp)
	lw $t0, -19016($fp)
	lw $t1, 0($t0)
	sw $t1, -19020($fp)
	lw $t0, -19020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -19024($fp)
	li $t0, 6
	sw $t0, -19028($fp)
	li $t0, 4
	lw $t1, -19028($fp)
	mul $t0, $t0, $t1
	sw $t0, -19032($fp)
	lw $t0, -19032($fp)
	lw $t1, -19024($fp)
	add $t0, $t0, $t1
	sw $t0, -19036($fp)
	lw $t0, -19036($fp)
	lw $t1, 0($t0)
	sw $t1, -19040($fp)
	lw $t0, -19040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -19044($fp)
	li $t0, 7
	sw $t0, -19048($fp)
	li $t0, 4
	lw $t1, -19048($fp)
	mul $t0, $t0, $t1
	sw $t0, -19052($fp)
	lw $t0, -19052($fp)
	lw $t1, -19044($fp)
	add $t0, $t0, $t1
	sw $t0, -19056($fp)
	lw $t0, -19056($fp)
	lw $t1, 0($t0)
	sw $t1, -19060($fp)
	lw $t0, -19060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
	sw $t0, -19064($fp)
	li $t0, 8
	sw $t0, -19068($fp)
	li $t0, 4
	lw $t1, -19068($fp)
	mul $t0, $t0, $t1
	sw $t0, -19072($fp)
	lw $t0, -19072($fp)
	lw $t1, -19064($fp)
	add $t0, $t0, $t1
	sw $t0, -19076($fp)
	lw $t0, -19076($fp)
	lw $t1, 0($t0)
	sw $t1, -19080($fp)
	lw $t0, -19080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -484
	sw $t0, -19084($fp)
	li $t0, 0
	sw $t0, -19088($fp)
	li $t0, 4
	lw $t1, -19088($fp)
	mul $t0, $t0, $t1
	sw $t0, -19092($fp)
	lw $t0, -19092($fp)
	lw $t1, -19084($fp)
	add $t0, $t0, $t1
	sw $t0, -19096($fp)
	lw $t0, -19096($fp)
	lw $t1, 0($t0)
	sw $t1, -19100($fp)
	lw $t0, -19100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -484
	sw $t0, -19104($fp)
	li $t0, 1
	sw $t0, -19108($fp)
	li $t0, 4
	lw $t1, -19108($fp)
	mul $t0, $t0, $t1
	sw $t0, -19112($fp)
	lw $t0, -19112($fp)
	lw $t1, -19104($fp)
	add $t0, $t0, $t1
	sw $t0, -19116($fp)
	lw $t0, -19116($fp)
	lw $t1, 0($t0)
	sw $t1, -19120($fp)
	lw $t0, -19120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -484
	sw $t0, -19124($fp)
	li $t0, 2
	sw $t0, -19128($fp)
	li $t0, 4
	lw $t1, -19128($fp)
	mul $t0, $t0, $t1
	sw $t0, -19132($fp)
	lw $t0, -19132($fp)
	lw $t1, -19124($fp)
	add $t0, $t0, $t1
	sw $t0, -19136($fp)
	lw $t0, -19136($fp)
	lw $t1, 0($t0)
	sw $t1, -19140($fp)
	lw $t0, -19140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -484
	sw $t0, -19144($fp)
	li $t0, 3
	sw $t0, -19148($fp)
	li $t0, 4
	lw $t1, -19148($fp)
	mul $t0, $t0, $t1
	sw $t0, -19152($fp)
	lw $t0, -19152($fp)
	lw $t1, -19144($fp)
	add $t0, $t0, $t1
	sw $t0, -19156($fp)
	lw $t0, -19156($fp)
	lw $t1, 0($t0)
	sw $t1, -19160($fp)
	lw $t0, -19160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -484
	sw $t0, -19164($fp)
	li $t0, 4
	sw $t0, -19168($fp)
	li $t0, 4
	lw $t1, -19168($fp)
	mul $t0, $t0, $t1
	sw $t0, -19172($fp)
	lw $t0, -19172($fp)
	lw $t1, -19164($fp)
	add $t0, $t0, $t1
	sw $t0, -19176($fp)
	lw $t0, -19176($fp)
	lw $t1, 0($t0)
	sw $t1, -19180($fp)
	lw $t0, -19180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -484
	sw $t0, -19184($fp)
	li $t0, 5
	sw $t0, -19188($fp)
	li $t0, 4
	lw $t1, -19188($fp)
	mul $t0, $t0, $t1
	sw $t0, -19192($fp)
	lw $t0, -19192($fp)
	lw $t1, -19184($fp)
	add $t0, $t0, $t1
	sw $t0, -19196($fp)
	lw $t0, -19196($fp)
	lw $t1, 0($t0)
	sw $t1, -19200($fp)
	lw $t0, -19200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -484
	sw $t0, -19204($fp)
	li $t0, 6
	sw $t0, -19208($fp)
	li $t0, 4
	lw $t1, -19208($fp)
	mul $t0, $t0, $t1
	sw $t0, -19212($fp)
	lw $t0, -19212($fp)
	lw $t1, -19204($fp)
	add $t0, $t0, $t1
	sw $t0, -19216($fp)
	lw $t0, -19216($fp)
	lw $t1, 0($t0)
	sw $t1, -19220($fp)
	lw $t0, -19220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4228($fp)
	sw $t0, -19224($fp)
	lw $t0, -19224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4240($fp)
	sw $t0, -19228($fp)
	lw $t0, -19228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4252($fp)
	sw $t0, -19232($fp)
	lw $t0, -19232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4264($fp)
	sw $t0, -19236($fp)
	lw $t0, -19236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4276($fp)
	sw $t0, -19240($fp)
	lw $t0, -19240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4288($fp)
	sw $t0, -19244($fp)
	lw $t0, -19244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4300($fp)
	sw $t0, -19248($fp)
	lw $t0, -19248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4312($fp)
	sw $t0, -19252($fp)
	lw $t0, -19252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -508
	sw $t0, -19256($fp)
	li $t0, 0
	sw $t0, -19260($fp)
	li $t0, 4
	lw $t1, -19260($fp)
	mul $t0, $t0, $t1
	sw $t0, -19264($fp)
	lw $t0, -19264($fp)
	lw $t1, -19256($fp)
	add $t0, $t0, $t1
	sw $t0, -19268($fp)
	lw $t0, -19268($fp)
	lw $t1, 0($t0)
	sw $t1, -19272($fp)
	lw $t0, -19272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -508
	sw $t0, -19276($fp)
	li $t0, 1
	sw $t0, -19280($fp)
	li $t0, 4
	lw $t1, -19280($fp)
	mul $t0, $t0, $t1
	sw $t0, -19284($fp)
	lw $t0, -19284($fp)
	lw $t1, -19276($fp)
	add $t0, $t0, $t1
	sw $t0, -19288($fp)
	lw $t0, -19288($fp)
	lw $t1, 0($t0)
	sw $t1, -19292($fp)
	lw $t0, -19292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -508
	sw $t0, -19296($fp)
	li $t0, 2
	sw $t0, -19300($fp)
	li $t0, 4
	lw $t1, -19300($fp)
	mul $t0, $t0, $t1
	sw $t0, -19304($fp)
	lw $t0, -19304($fp)
	lw $t1, -19296($fp)
	add $t0, $t0, $t1
	sw $t0, -19308($fp)
	lw $t0, -19308($fp)
	lw $t1, 0($t0)
	sw $t1, -19312($fp)
	lw $t0, -19312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -508
	sw $t0, -19316($fp)
	li $t0, 3
	sw $t0, -19320($fp)
	li $t0, 4
	lw $t1, -19320($fp)
	mul $t0, $t0, $t1
	sw $t0, -19324($fp)
	lw $t0, -19324($fp)
	lw $t1, -19316($fp)
	add $t0, $t0, $t1
	sw $t0, -19328($fp)
	lw $t0, -19328($fp)
	lw $t1, 0($t0)
	sw $t1, -19332($fp)
	lw $t0, -19332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -508
	sw $t0, -19336($fp)
	li $t0, 4
	sw $t0, -19340($fp)
	li $t0, 4
	lw $t1, -19340($fp)
	mul $t0, $t0, $t1
	sw $t0, -19344($fp)
	lw $t0, -19344($fp)
	lw $t1, -19336($fp)
	add $t0, $t0, $t1
	sw $t0, -19348($fp)
	lw $t0, -19348($fp)
	lw $t1, 0($t0)
	sw $t1, -19352($fp)
	lw $t0, -19352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -508
	sw $t0, -19356($fp)
	li $t0, 5
	sw $t0, -19360($fp)
	li $t0, 4
	lw $t1, -19360($fp)
	mul $t0, $t0, $t1
	sw $t0, -19364($fp)
	lw $t0, -19364($fp)
	lw $t1, -19356($fp)
	add $t0, $t0, $t1
	sw $t0, -19368($fp)
	lw $t0, -19368($fp)
	lw $t1, 0($t0)
	sw $t1, -19372($fp)
	lw $t0, -19372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -512
	sw $t0, -19376($fp)
	li $t0, 0
	sw $t0, -19380($fp)
	li $t0, 4
	lw $t1, -19380($fp)
	mul $t0, $t0, $t1
	sw $t0, -19384($fp)
	lw $t0, -19384($fp)
	lw $t1, -19376($fp)
	add $t0, $t0, $t1
	sw $t0, -19388($fp)
	lw $t0, -19388($fp)
	lw $t1, 0($t0)
	sw $t1, -19392($fp)
	lw $t0, -19392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4492($fp)
	sw $t0, -19396($fp)
	lw $t0, -19396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4504($fp)
	sw $t0, -19400($fp)
	lw $t0, -19400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4516($fp)
	sw $t0, -19404($fp)
	lw $t0, -19404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4528($fp)
	sw $t0, -19408($fp)
	lw $t0, -19408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4540($fp)
	sw $t0, -19412($fp)
	lw $t0, -19412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4552($fp)
	sw $t0, -19416($fp)
	lw $t0, -19416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4564($fp)
	sw $t0, -19420($fp)
	lw $t0, -19420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -532
	sw $t0, -19424($fp)
	li $t0, 0
	sw $t0, -19428($fp)
	li $t0, 4
	lw $t1, -19428($fp)
	mul $t0, $t0, $t1
	sw $t0, -19432($fp)
	lw $t0, -19432($fp)
	lw $t1, -19424($fp)
	add $t0, $t0, $t1
	sw $t0, -19436($fp)
	lw $t0, -19436($fp)
	lw $t1, 0($t0)
	sw $t1, -19440($fp)
	lw $t0, -19440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -532
	sw $t0, -19444($fp)
	li $t0, 1
	sw $t0, -19448($fp)
	li $t0, 4
	lw $t1, -19448($fp)
	mul $t0, $t0, $t1
	sw $t0, -19452($fp)
	lw $t0, -19452($fp)
	lw $t1, -19444($fp)
	add $t0, $t0, $t1
	sw $t0, -19456($fp)
	lw $t0, -19456($fp)
	lw $t1, 0($t0)
	sw $t1, -19460($fp)
	lw $t0, -19460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -532
	sw $t0, -19464($fp)
	li $t0, 2
	sw $t0, -19468($fp)
	li $t0, 4
	lw $t1, -19468($fp)
	mul $t0, $t0, $t1
	sw $t0, -19472($fp)
	lw $t0, -19472($fp)
	lw $t1, -19464($fp)
	add $t0, $t0, $t1
	sw $t0, -19476($fp)
	lw $t0, -19476($fp)
	lw $t1, 0($t0)
	sw $t1, -19480($fp)
	lw $t0, -19480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -532
	sw $t0, -19484($fp)
	li $t0, 3
	sw $t0, -19488($fp)
	li $t0, 4
	lw $t1, -19488($fp)
	mul $t0, $t0, $t1
	sw $t0, -19492($fp)
	lw $t0, -19492($fp)
	lw $t1, -19484($fp)
	add $t0, $t0, $t1
	sw $t0, -19496($fp)
	lw $t0, -19496($fp)
	lw $t1, 0($t0)
	sw $t1, -19500($fp)
	lw $t0, -19500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -532
	sw $t0, -19504($fp)
	li $t0, 4
	sw $t0, -19508($fp)
	li $t0, 4
	lw $t1, -19508($fp)
	mul $t0, $t0, $t1
	sw $t0, -19512($fp)
	lw $t0, -19512($fp)
	lw $t1, -19504($fp)
	add $t0, $t0, $t1
	sw $t0, -19516($fp)
	lw $t0, -19516($fp)
	lw $t1, 0($t0)
	sw $t1, -19520($fp)
	lw $t0, -19520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4696($fp)
	sw $t0, -19524($fp)
	lw $t0, -19524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4708($fp)
	sw $t0, -19528($fp)
	lw $t0, -19528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4720($fp)
	sw $t0, -19532($fp)
	lw $t0, -19532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4732($fp)
	sw $t0, -19536($fp)
	lw $t0, -19536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4744($fp)
	sw $t0, -19540($fp)
	lw $t0, -19540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4756($fp)
	sw $t0, -19544($fp)
	lw $t0, -19544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4768($fp)
	sw $t0, -19548($fp)
	lw $t0, -19548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4780($fp)
	sw $t0, -19552($fp)
	lw $t0, -19552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -556
	sw $t0, -19556($fp)
	li $t0, 0
	sw $t0, -19560($fp)
	li $t0, 4
	lw $t1, -19560($fp)
	mul $t0, $t0, $t1
	sw $t0, -19564($fp)
	lw $t0, -19564($fp)
	lw $t1, -19556($fp)
	add $t0, $t0, $t1
	sw $t0, -19568($fp)
	lw $t0, -19568($fp)
	lw $t1, 0($t0)
	sw $t1, -19572($fp)
	lw $t0, -19572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -556
	sw $t0, -19576($fp)
	li $t0, 1
	sw $t0, -19580($fp)
	li $t0, 4
	lw $t1, -19580($fp)
	mul $t0, $t0, $t1
	sw $t0, -19584($fp)
	lw $t0, -19584($fp)
	lw $t1, -19576($fp)
	add $t0, $t0, $t1
	sw $t0, -19588($fp)
	lw $t0, -19588($fp)
	lw $t1, 0($t0)
	sw $t1, -19592($fp)
	lw $t0, -19592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -556
	sw $t0, -19596($fp)
	li $t0, 2
	sw $t0, -19600($fp)
	li $t0, 4
	lw $t1, -19600($fp)
	mul $t0, $t0, $t1
	sw $t0, -19604($fp)
	lw $t0, -19604($fp)
	lw $t1, -19596($fp)
	add $t0, $t0, $t1
	sw $t0, -19608($fp)
	lw $t0, -19608($fp)
	lw $t1, 0($t0)
	sw $t1, -19612($fp)
	lw $t0, -19612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -556
	sw $t0, -19616($fp)
	li $t0, 3
	sw $t0, -19620($fp)
	li $t0, 4
	lw $t1, -19620($fp)
	mul $t0, $t0, $t1
	sw $t0, -19624($fp)
	lw $t0, -19624($fp)
	lw $t1, -19616($fp)
	add $t0, $t0, $t1
	sw $t0, -19628($fp)
	lw $t0, -19628($fp)
	lw $t1, 0($t0)
	sw $t1, -19632($fp)
	lw $t0, -19632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -556
	sw $t0, -19636($fp)
	li $t0, 4
	sw $t0, -19640($fp)
	li $t0, 4
	lw $t1, -19640($fp)
	mul $t0, $t0, $t1
	sw $t0, -19644($fp)
	lw $t0, -19644($fp)
	lw $t1, -19636($fp)
	add $t0, $t0, $t1
	sw $t0, -19648($fp)
	lw $t0, -19648($fp)
	lw $t1, 0($t0)
	sw $t1, -19652($fp)
	lw $t0, -19652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -556
	sw $t0, -19656($fp)
	li $t0, 5
	sw $t0, -19660($fp)
	li $t0, 4
	lw $t1, -19660($fp)
	mul $t0, $t0, $t1
	sw $t0, -19664($fp)
	lw $t0, -19664($fp)
	lw $t1, -19656($fp)
	add $t0, $t0, $t1
	sw $t0, -19668($fp)
	lw $t0, -19668($fp)
	lw $t1, 0($t0)
	sw $t1, -19672($fp)
	lw $t0, -19672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4936($fp)
	sw $t0, -19676($fp)
	lw $t0, -19676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4948($fp)
	sw $t0, -19680($fp)
	lw $t0, -19680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4960($fp)
	sw $t0, -19684($fp)
	lw $t0, -19684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4972($fp)
	sw $t0, -19688($fp)
	lw $t0, -19688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4984($fp)
	sw $t0, -19692($fp)
	lw $t0, -19692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4996($fp)
	sw $t0, -19696($fp)
	lw $t0, -19696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5008($fp)
	sw $t0, -19700($fp)
	lw $t0, -19700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5020($fp)
	sw $t0, -19704($fp)
	lw $t0, -19704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -19708($fp)
	li $t0, 0
	sw $t0, -19712($fp)
	li $t0, 4
	lw $t1, -19712($fp)
	mul $t0, $t0, $t1
	sw $t0, -19716($fp)
	lw $t0, -19716($fp)
	lw $t1, -19708($fp)
	add $t0, $t0, $t1
	sw $t0, -19720($fp)
	lw $t0, -19720($fp)
	lw $t1, 0($t0)
	sw $t1, -19724($fp)
	lw $t0, -19724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -19728($fp)
	li $t0, 1
	sw $t0, -19732($fp)
	li $t0, 4
	lw $t1, -19732($fp)
	mul $t0, $t0, $t1
	sw $t0, -19736($fp)
	lw $t0, -19736($fp)
	lw $t1, -19728($fp)
	add $t0, $t0, $t1
	sw $t0, -19740($fp)
	lw $t0, -19740($fp)
	lw $t1, 0($t0)
	sw $t1, -19744($fp)
	lw $t0, -19744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -19748($fp)
	li $t0, 2
	sw $t0, -19752($fp)
	li $t0, 4
	lw $t1, -19752($fp)
	mul $t0, $t0, $t1
	sw $t0, -19756($fp)
	lw $t0, -19756($fp)
	lw $t1, -19748($fp)
	add $t0, $t0, $t1
	sw $t0, -19760($fp)
	lw $t0, -19760($fp)
	lw $t1, 0($t0)
	sw $t1, -19764($fp)
	lw $t0, -19764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -19768($fp)
	li $t0, 3
	sw $t0, -19772($fp)
	li $t0, 4
	lw $t1, -19772($fp)
	mul $t0, $t0, $t1
	sw $t0, -19776($fp)
	lw $t0, -19776($fp)
	lw $t1, -19768($fp)
	add $t0, $t0, $t1
	sw $t0, -19780($fp)
	lw $t0, -19780($fp)
	lw $t1, 0($t0)
	sw $t1, -19784($fp)
	lw $t0, -19784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -19788($fp)
	li $t0, 4
	sw $t0, -19792($fp)
	li $t0, 4
	lw $t1, -19792($fp)
	mul $t0, $t0, $t1
	sw $t0, -19796($fp)
	lw $t0, -19796($fp)
	lw $t1, -19788($fp)
	add $t0, $t0, $t1
	sw $t0, -19800($fp)
	lw $t0, -19800($fp)
	lw $t1, 0($t0)
	sw $t1, -19804($fp)
	lw $t0, -19804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -19808($fp)
	li $t0, 5
	sw $t0, -19812($fp)
	li $t0, 4
	lw $t1, -19812($fp)
	mul $t0, $t0, $t1
	sw $t0, -19816($fp)
	lw $t0, -19816($fp)
	lw $t1, -19808($fp)
	add $t0, $t0, $t1
	sw $t0, -19820($fp)
	lw $t0, -19820($fp)
	lw $t1, 0($t0)
	sw $t1, -19824($fp)
	lw $t0, -19824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -584
	sw $t0, -19828($fp)
	li $t0, 6
	sw $t0, -19832($fp)
	li $t0, 4
	lw $t1, -19832($fp)
	mul $t0, $t0, $t1
	sw $t0, -19836($fp)
	lw $t0, -19836($fp)
	lw $t1, -19828($fp)
	add $t0, $t0, $t1
	sw $t0, -19840($fp)
	lw $t0, -19840($fp)
	lw $t1, 0($t0)
	sw $t1, -19844($fp)
	lw $t0, -19844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5200($fp)
	sw $t0, -19848($fp)
	lw $t0, -19848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5212($fp)
	sw $t0, -19852($fp)
	lw $t0, -19852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5224($fp)
	sw $t0, -19856($fp)
	lw $t0, -19856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5236($fp)
	sw $t0, -19860($fp)
	lw $t0, -19860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -19864($fp)
	addi $t0, $fp, -64
	sw $t0, -19868($fp)
	li $t0, 0
	sw $t0, -19872($fp)
	li $t0, 0
	sw $t0, -19876($fp)
	li $t0, 43999
	sw $t0, -19880($fp)
	lw $t1, -19880($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label948
label948:
	li $t0, 1
	sw $t0, -19876($fp)
label949:
	lw $t0, -3808($fp)
	sw $t0, -19884($fp)
	lw $t1, -19876($fp)
	lw $t2, -19884($fp)
	beq $t1, $t2, label946
	j label947
label946:
	li $t0, 1
	sw $t0, -19872($fp)
label947:
	li $t0, 0
	sw $t0, -19888($fp)
	li $t0, 0
	sw $t0, -19892($fp)
	lw $t0, -3064($fp)
	sw $t0, -19896($fp)
	lw $t0, -1708($fp)
	sw $t0, -19900($fp)
	lw $t1, -19896($fp)
	lw $t2, -19900($fp)
	bge $t1, $t2, label953
	j label955
label955:
	li $t0, 31540
	sw $t0, -19904($fp)
	lw $t1, -19904($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label954
label953:
	li $t0, 1
	sw $t0, -19892($fp)
label954:
	addi $t0, $fp, -380
	sw $t0, -19908($fp)
	li $t0, 2
	sw $t0, -19912($fp)
	li $t0, 4
	lw $t1, -19912($fp)
	mul $t0, $t0, $t1
	sw $t0, -19916($fp)
	lw $t0, -19916($fp)
	lw $t1, -19908($fp)
	add $t0, $t0, $t1
	sw $t0, -19920($fp)
	lw $t0, -19920($fp)
	lw $t1, 0($t0)
	sw $t1, -19924($fp)
	li $t0, 0
	sw $t0, -19928($fp)
	li $t0, 0
	sw $t0, -19932($fp)
	li $t0, 8999
	sw $t0, -19936($fp)
	lw $t1, -19936($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label958
label958:
	li $t0, 1
	sw $t0, -19932($fp)
label959:
	lw $t0, -3424($fp)
	sw $t0, -19940($fp)
	lw $t1, -19932($fp)
	lw $t2, -19940($fp)
	bgt $t1, $t2, label956
	j label957
label956:
	li $t0, 1
	sw $t0, -19928($fp)
label957:
	addi $sp, $sp, -4
	lw $t0, -19892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -19944($fp)
	addi $sp, $sp, 16
	lw $t1, -19944($fp)
	li $t2, 0
	bne $t1, $t2, label952
	j label951
label952:
	lw $t0, -4696($fp)
	sw $t0, -19948($fp)
	lw $t1, -19948($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -19888($fp)
label951:
	lw $t0, -3412($fp)
	sw $t0, -19952($fp)
	addi $sp, $sp, -4
	lw $t0, -19872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -19952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -19956($fp)
	addi $sp, $sp, 16
	lw $t0, -1372($fp)
	sw $t0, -19960($fp)
	lw $t0, -19956($fp)
	lw $t1, -19960($fp)
	mul $t0, $t0, $t1
	sw $t0, -19964($fp)
	li $t0, 4
	lw $t1, -19964($fp)
	mul $t0, $t0, $t1
	sw $t0, -19968($fp)
	lw $t0, -19968($fp)
	lw $t1, -19868($fp)
	add $t0, $t0, $t1
	sw $t0, -19972($fp)
	lw $t0, -19972($fp)
	lw $t1, 0($t0)
	sw $t1, -19976($fp)
	lw $t1, -19976($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label944
label944:
	li $t0, 1
	sw $t0, -19864($fp)
label945:
	lw $ra, -4($fp)
	lw $v0, -19864($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2556
	li $t0, 19857
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 9054
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 23664
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 19952
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 55148
	sw $t0, -196($fp)
	addi $t0, $fp, -76
	sw $t0, -200($fp)
	li $t0, 0
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
	li $t0, 12452
	sw $t0, -220($fp)
	addi $t0, $fp, -76
	sw $t0, -224($fp)
	li $t0, 1
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
	li $t0, 62840
	sw $t0, -244($fp)
	addi $t0, $fp, -76
	sw $t0, -248($fp)
	li $t0, 2
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
	li $t0, 35985
	sw $t0, -268($fp)
	addi $t0, $fp, -76
	sw $t0, -272($fp)
	li $t0, 3
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
	li $t0, 35145
	sw $t0, -292($fp)
	addi $t0, $fp, -76
	sw $t0, -296($fp)
	li $t0, 4
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
	li $t0, 49420
	sw $t0, -316($fp)
	addi $t0, $fp, -76
	sw $t0, -320($fp)
	li $t0, 5
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
	li $t0, 4598
	sw $t0, -340($fp)
	addi $t0, $fp, -100
	sw $t0, -344($fp)
	li $t0, 0
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
	li $t0, 7199
	sw $t0, -364($fp)
	addi $t0, $fp, -100
	sw $t0, -368($fp)
	li $t0, 1
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
	li $t0, 25290
	sw $t0, -388($fp)
	addi $t0, $fp, -100
	sw $t0, -392($fp)
	li $t0, 2
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
	li $t0, 20285
	sw $t0, -412($fp)
	addi $t0, $fp, -100
	sw $t0, -416($fp)
	li $t0, 3
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
	li $t0, 4224
	sw $t0, -436($fp)
	addi $t0, $fp, -100
	sw $t0, -440($fp)
	li $t0, 4
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
	li $t0, 30729
	sw $t0, -460($fp)
	addi $t0, $fp, -100
	sw $t0, -464($fp)
	li $t0, 5
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
	li $t0, 18509
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 25758
	sw $t0, -496($fp)
	addi $t0, $fp, -124
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
	li $t0, 38599
	sw $t0, -520($fp)
	addi $t0, $fp, -124
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
	li $t0, 51585
	sw $t0, -544($fp)
	addi $t0, $fp, -124
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
	li $t0, 18766
	sw $t0, -568($fp)
	addi $t0, $fp, -124
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
	li $t0, 32522
	sw $t0, -592($fp)
	addi $t0, $fp, -124
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
	li $t0, 44348
	sw $t0, -616($fp)
	addi $t0, $fp, -124
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
	li $t0, 43059
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 8303
	sw $t0, -652($fp)
	addi $t0, $fp, -156
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
	li $t0, 30745
	sw $t0, -676($fp)
	addi $t0, $fp, -156
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
	li $t0, 52058
	sw $t0, -700($fp)
	addi $t0, $fp, -156
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
	li $t0, 36842
	sw $t0, -724($fp)
	addi $t0, $fp, -156
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
	li $t0, 34038
	sw $t0, -748($fp)
	addi $t0, $fp, -156
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
	li $t0, 18062
	sw $t0, -772($fp)
	addi $t0, $fp, -156
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
	li $t0, 15306
	sw $t0, -796($fp)
	addi $t0, $fp, -156
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
	li $t0, 53896
	sw $t0, -820($fp)
	addi $t0, $fp, -156
	sw $t0, -824($fp)
	li $t0, 7
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
	li $t0, 27116
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 38970
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 8312
	sw $t0, -868($fp)
	addi $t0, $fp, -192
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
	li $t0, 16729
	sw $t0, -892($fp)
	addi $t0, $fp, -192
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
	li $t0, 51422
	sw $t0, -916($fp)
	addi $t0, $fp, -192
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
	li $t0, 5616
	sw $t0, -940($fp)
	addi $t0, $fp, -192
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
	li $t0, 52714
	sw $t0, -964($fp)
	addi $t0, $fp, -192
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
	li $t0, 21032
	sw $t0, -988($fp)
	addi $t0, $fp, -192
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
	li $t0, 55037
	sw $t0, -1012($fp)
	addi $t0, $fp, -192
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
	li $t0, 57312
	sw $t0, -1036($fp)
	addi $t0, $fp, -192
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
	li $t0, 28231
	sw $t0, -1060($fp)
	addi $t0, $fp, -192
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
	li $t0, 14791
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 12062
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, 4($fp)
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label960
	j label961
label960:
label963:
	addi $t0, $fp, -192
	sw $t0, -1112($fp)
	li $t0, 32455
	sw $t0, -1116($fp)
	lw $t0, -644($fp)
	sw $t0, -1120($fp)
	lw $t0, -1116($fp)
	lw $t1, -1120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1124($fp)
	lw $t0, -848($fp)
	sw $t0, -1128($fp)
	lw $t0, -1124($fp)
	lw $t1, -1128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1132($fp)
	li $t0, 4
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, -1112($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	li $t0, 0
	sw $t0, -1152($fp)
	lw $t0, -848($fp)
	sw $t0, -1156($fp)
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label968
label968:
	li $t0, 1
	sw $t0, -1152($fp)
label969:
	li $t0, 0
	lw $t1, -1152($fp)
	sub $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -848($fp)
	sw $t0, -1164($fp)
	li $t0, 0
	lw $t1, -1164($fp)
	sub $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t1, -1160($fp)
	lw $t2, -1168($fp)
	bgt $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -1148($fp)
label967:
	lw $t1, -1144($fp)
	lw $t2, -1148($fp)
	bne $t1, $t2, label964
	j label965
label964:
	li $t0, 45520
	sw $t0, -1172($fp)
	lw $t1, -1172($fp)
	li $t2, 0
	bne $t1, $t2, label970
	j label971
label970:
	lw $t0, -48($fp)
	sw $t0, -1176($fp)
	li $t0, 0
	lw $t1, -1176($fp)
	sub $t0, $t0, $t1
	sw $t0, -1180($fp)
	li $t0, 0
	lw $t1, -1180($fp)
	sub $t0, $t0, $t1
	sw $t0, -1184($fp)
	j label972
label971:
label973:
	li $t0, 30571
	sw $t0, -1188($fp)
	li $t0, 18584
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -1196($fp)
	li $t0, 58213
	sw $t0, -1200($fp)
	lw $t0, -24($fp)
	sw $t0, -1204($fp)
	lw $t0, -848($fp)
	sw $t0, -1208($fp)
	lw $t0, -1204($fp)
	lw $t1, -1208($fp)
	sub $t0, $t0, $t1
	sw $t0, -1212($fp)
	addi $sp, $sp, -4
	lw $t0, -1196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1216($fp)
	addi $sp, $sp, 16
	lw $t1, -1188($fp)
	lw $t2, -1216($fp)
	beq $t1, $t2, label974
	j label976
label976:
	addi $t0, $fp, -156
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
	li $t0, 0
	sw $t0, -1240($fp)
	lw $t0, -644($fp)
	sw $t0, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label978
	j label977
label977:
	li $t0, 1
	sw $t0, -1240($fp)
label978:
	lw $t0, -1236($fp)
	lw $t1, -1240($fp)
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label975
label974:
	li $t0, 51106
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -488($fp)
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	li $t0, 0
	sw $t0, -1272($fp)
	li $t0, 0
	sw $t0, -1276($fp)
	addi $t0, $fp, -76
	sw $t0, -1280($fp)
	lw $t0, -644($fp)
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
	lw $t1, -1296($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label983
label983:
	li $t0, 1
	sw $t0, -1276($fp)
label984:
	li $t0, 60968
	sw $t0, -1300($fp)
	lw $t1, -1276($fp)
	lw $t2, -1300($fp)
	ble $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -1272($fp)
label982:
	li $t0, 0
	sw $t0, -1304($fp)
	lw $t0, -36($fp)
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label985
label985:
	li $t0, 1
	sw $t0, -1304($fp)
label986:
	lw $t0, -12($fp)
	sw $t0, -1312($fp)
	lw $t0, -1304($fp)
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	addi $t0, $fp, -76
	sw $t0, -1320($fp)
	lw $t0, -848($fp)
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
	lw $t0, -1316($fp)
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t1, -1272($fp)
	lw $t2, -1340($fp)
	bgt $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -1268($fp)
label980:
	li $t0, 0
	sw $t0, -1344($fp)
	addi $t0, $fp, -76
	sw $t0, -1348($fp)
	lw $t0, -48($fp)
	sw $t0, -1352($fp)
	li $t0, 4
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t1, 0($t0)
	sw $t1, -1364($fp)
	li $t0, 54502
	sw $t0, -1368($fp)
	lw $t1, -1364($fp)
	lw $t2, -1368($fp)
	bgt $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -1344($fp)
label988:
	lw $t0, -1344($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	addi $t0, $fp, -100
	sw $t0, -1380($fp)
	lw $t0, -848($fp)
	sw $t0, -1384($fp)
	li $t0, 59409
	sw $t0, -1388($fp)
	lw $t0, -1384($fp)
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	li $t0, 4
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	lw $t1, 0($t0)
	sw $t1, -1404($fp)
	lw $t1, -1404($fp)
	li $t2, 0
	bne $t1, $t2, label990
	j label991
label991:
	lw $t0, -860($fp)
	sw $t0, -1408($fp)
	li $t0, 26177
	sw $t0, -1412($fp)
	lw $t0, -1408($fp)
	lw $t1, -1412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1416($fp)
	lw $t0, -36($fp)
	sw $t0, -1420($fp)
	lw $t0, -848($fp)
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t1, -1416($fp)
	lw $t2, -1428($fp)
	bgt $t1, $t2, label989
	j label990
label989:
	li $t0, 1
	sw $t0, -1376($fp)
label990:
	li $t0, 0
	sw $t0, -1432($fp)
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 41025
	sw $t0, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	li $t0, 30716
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label997
label997:
	li $t0, 1
	sw $t0, -1444($fp)
label998:
	lw $t1, -1440($fp)
	lw $t2, -1444($fp)
	blt $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -1436($fp)
label996:
	li $t0, 60216
	sw $t0, -1452($fp)
	lw $t1, -1436($fp)
	lw $t2, -1452($fp)
	beq $t1, $t2, label994
	j label993
label994:
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -488($fp)
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label1000
	j label999
label999:
	li $t0, 1
	sw $t0, -1456($fp)
label1000:
	li $t0, 59087
	sw $t0, -1464($fp)
	lw $t0, -1456($fp)
	lw $t1, -1464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1468($fp)
	lw $t0, -644($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1476($fp)
	addi $sp, $sp, -4
	lw $t0, -1468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1480($fp)
	addi $sp, $sp, 12
	lw $t0, -1256($fp)
	sw $t0, -1484($fp)
	lw $t0, -1480($fp)
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	li $t0, 46022
	sw $t0, -1492($fp)
	lw $t0, -1488($fp)
	lw $t1, -1492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label993
label992:
	li $t0, 1
	sw $t0, -1432($fp)
label993:
	j label973
label975:
label972:
	j label963
label965:
	j label962
label961:
	li $t0, 0
	sw $t0, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	addi $t0, $fp, -100
	sw $t0, -1508($fp)
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 48576
	sw $t0, -1516($fp)
	li $t0, 20668
	sw $t0, -1520($fp)
	lw $t1, -1516($fp)
	lw $t2, -1520($fp)
	beq $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -1512($fp)
label1006:
	li $t0, 4
	lw $t1, -1512($fp)
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, -1508($fp)
	add $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	lw $t1, 0($t0)
	sw $t1, -1532($fp)
	li $t0, 19456
	sw $t0, -1536($fp)
	li $t0, 56888
	sw $t0, -1540($fp)
	lw $t0, -1536($fp)
	lw $t1, -1540($fp)
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -860($fp)
	sw $t0, -1548($fp)
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1552($fp)
	lw $t1, -1532($fp)
	lw $t2, -1552($fp)
	bne $t1, $t2, label1003
	j label1004
label1003:
	li $t0, 1
	sw $t0, -1504($fp)
label1004:
	li $t0, 37397
	sw $t0, -1556($fp)
	li $t0, 0
	lw $t1, -1556($fp)
	sub $t0, $t0, $t1
	sw $t0, -1560($fp)
	li $t0, 26374
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -1568($fp)
	addi $t0, $fp, -76
	sw $t0, -1572($fp)
	li $t0, 4
	sw $t0, -1576($fp)
	li $t0, 4
	lw $t1, -1576($fp)
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	li $t0, 24575
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	addi $t0, $fp, -76
	sw $t0, -1600($fp)
	lw $t0, -1100($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1620($fp)
	addi $sp, $sp, 16
	lw $t0, -1560($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t1, -1504($fp)
	lw $t2, -1624($fp)
	bne $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 1
	sw $t0, -1500($fp)
label1002:
label962:
	addi $t0, $fp, -76
	sw $t0, -1628($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -1648($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -1668($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -1688($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -1708($fp)
	li $t0, 4
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
	addi $t0, $fp, -76
	sw $t0, -1728($fp)
	li $t0, 5
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
	addi $t0, $fp, -100
	sw $t0, -1748($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -1768($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -1788($fp)
	li $t0, 2
	sw $t0, -1792($fp)
	li $t0, 4
	lw $t1, -1792($fp)
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	lw $t1, 0($t0)
	sw $t1, -1804($fp)
	lw $t0, -1804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1808($fp)
	li $t0, 3
	sw $t0, -1812($fp)
	li $t0, 4
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, 0($t0)
	sw $t1, -1824($fp)
	lw $t0, -1824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1828($fp)
	li $t0, 4
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
	addi $t0, $fp, -100
	sw $t0, -1848($fp)
	li $t0, 5
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
	lw $t0, -488($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1872($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -1892($fp)
	li $t0, 1
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
	addi $t0, $fp, -124
	sw $t0, -1912($fp)
	li $t0, 2
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
	addi $t0, $fp, -124
	sw $t0, -1932($fp)
	li $t0, 3
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
	addi $t0, $fp, -124
	sw $t0, -1952($fp)
	li $t0, 4
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
	addi $t0, $fp, -124
	sw $t0, -1972($fp)
	li $t0, 5
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
	lw $t0, -644($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -1996($fp)
	li $t0, 0
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
	lw $t0, -2012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -2016($fp)
	li $t0, 1
	sw $t0, -2020($fp)
	li $t0, 4
	lw $t1, -2020($fp)
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	lw $t0, -2032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -2036($fp)
	li $t0, 2
	sw $t0, -2040($fp)
	li $t0, 4
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -2056($fp)
	li $t0, 3
	sw $t0, -2060($fp)
	li $t0, 4
	lw $t1, -2060($fp)
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	lw $t1, 0($t0)
	sw $t1, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -2076($fp)
	li $t0, 4
	sw $t0, -2080($fp)
	li $t0, 4
	lw $t1, -2080($fp)
	mul $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, 0($t0)
	sw $t1, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -2096($fp)
	li $t0, 5
	sw $t0, -2100($fp)
	li $t0, 4
	lw $t1, -2100($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, -2096($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, 0($t0)
	sw $t1, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -2116($fp)
	li $t0, 6
	sw $t0, -2120($fp)
	li $t0, 4
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, 0($t0)
	sw $t1, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -2136($fp)
	li $t0, 7
	sw $t0, -2140($fp)
	li $t0, 4
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2164($fp)
	li $t0, 0
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
	addi $t0, $fp, -192
	sw $t0, -2184($fp)
	li $t0, 1
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
	addi $t0, $fp, -192
	sw $t0, -2204($fp)
	li $t0, 2
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
	addi $t0, $fp, -192
	sw $t0, -2224($fp)
	li $t0, 3
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
	addi $t0, $fp, -192
	sw $t0, -2244($fp)
	li $t0, 4
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
	addi $t0, $fp, -192
	sw $t0, -2264($fp)
	li $t0, 5
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
	addi $t0, $fp, -192
	sw $t0, -2284($fp)
	li $t0, 6
	sw $t0, -2288($fp)
	li $t0, 4
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t0, -2300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2304($fp)
	li $t0, 7
	sw $t0, -2308($fp)
	li $t0, 4
	lw $t1, -2308($fp)
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	lw $t0, -2320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -2324($fp)
	li $t0, 8
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
	lw $t0, -1088($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1100($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2352($fp)
	addi $t0, $fp, -76
	sw $t0, -2356($fp)
	li $t0, 0
	sw $t0, -2360($fp)
	lw $t0, -488($fp)
	sw $t0, -2364($fp)
	lw $t1, -2364($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1011
label1011:
	lw $t0, -24($fp)
	sw $t0, -2368($fp)
	lw $t1, -2368($fp)
	li $t2, 0
	bne $t1, $t2, label1009
	j label1010
label1009:
	li $t0, 1
	sw $t0, -2360($fp)
label1010:
	li $t0, 4
	lw $t1, -2360($fp)
	mul $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	lw $t1, 0($t0)
	sw $t1, -2380($fp)
	addi $t0, $fp, -76
	sw $t0, -2384($fp)
	li $t0, 0
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
	li $t0, 1260
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	addi $t0, $fp, -124
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
	lw $t0, -24($fp)
	sw $t0, -2436($fp)
	lw $t1, -2432($fp)
	lw $t2, -2436($fp)
	bge $t1, $t2, label1012
	j label1013
label1012:
	li $t0, 1
	sw $t0, -2412($fp)
label1013:
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2440($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2444($fp)
	addi $sp, $sp, 12
	lw $t0, -1088($fp)
	sw $t0, -2448($fp)
	lw $t0, -2444($fp)
	lw $t1, -2448($fp)
	mul $t0, $t0, $t1
	sw $t0, -2452($fp)
	li $t0, 52005
	sw $t0, -2456($fp)
	lw $t0, -36($fp)
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2464($fp)
	li $t0, 0
	lw $t1, -2464($fp)
	sub $t0, $t0, $t1
	sw $t0, -2468($fp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2472($fp)
	addi $sp, $sp, 12
	lw $t1, -2380($fp)
	lw $t2, -2472($fp)
	bne $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -2352($fp)
label1008:
	lw $ra, -4($fp)
	lw $v0, -2352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -12($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2492($fp)
	lw $t0, -36($fp)
	sw $t0, -2496($fp)
	li $t0, 14202
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	sub $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -24($fp)
	sw $t0, -2508($fp)
	lw $t1, -2504($fp)
	lw $t2, -2508($fp)
	ble $t1, $t2, label1014
	j label1015
label1014:
	li $t0, 1
	sw $t0, -2492($fp)
label1015:
	li $t0, 0
	sw $t0, -2512($fp)
	lw $t0, -12($fp)
	sw $t0, -2516($fp)
	li $t0, 58985
	sw $t0, -2520($fp)
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, 8($fp)
	sw $t0, -2528($fp)
	lw $t1, -2524($fp)
	lw $t2, -2528($fp)
	bne $t1, $t2, label1016
	j label1017
label1016:
	li $t0, 1
	sw $t0, -2512($fp)
label1017:
	li $t0, 0
	sw $t0, -2532($fp)
	lw $t0, -36($fp)
	sw $t0, -2536($fp)
	lw $t0, -36($fp)
	sw $t0, -2540($fp)
	lw $t0, -2536($fp)
	lw $t1, -2540($fp)
	sub $t0, $t0, $t1
	sw $t0, -2544($fp)
	li $t0, 46781
	sw $t0, -2548($fp)
	lw $t1, -2544($fp)
	lw $t2, -2548($fp)
	blt $t1, $t2, label1018
	j label1019
label1018:
	li $t0, 1
	sw $t0, -2532($fp)
label1019:
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2552($fp)
	addi $sp, $sp, 16
	lw $t0, -48($fp)
	sw $t0, -2556($fp)
	lw $t0, -2552($fp)
	lw $t1, -2556($fp)
	mul $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $ra, -4($fp)
	lw $v0, -2560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -652
	li $t0, 65365
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 10069
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 25645
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
	li $t0, 50935
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
	li $t0, 5501
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
	li $t0, 14612
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
	li $t0, 44808
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
	li $t0, 31679
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
	li $t0, 55637
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
	li $t0, 9988
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
	li $t0, 26359
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
	li $t0, 49188
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
label1020:
	li $t0, 0
	sw $t0, -296($fp)
	addi $t0, $fp, -40
	sw $t0, -300($fp)
	li $t0, 56010
	sw $t0, -304($fp)
	lw $t0, -48($fp)
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	li $t0, 4
	lw $t1, -312($fp)
	mul $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, 0($t0)
	sw $t1, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label1024
	j label1023
label1023:
	li $t0, 1
	sw $t0, -296($fp)
label1024:
	li $t0, 9399
	sw $t0, -328($fp)
	lw $t0, -296($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label1021
	j label1022
label1021:
	addi $t0, $fp, -40
	sw $t0, -336($fp)
	lw $t0, -288($fp)
	sw $t0, -340($fp)
	li $t0, 0
	sw $t0, -344($fp)
	jal f8
	sw $v0, -348($fp)
	addi $sp, $sp, 4
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label1027
	j label1026
label1027:
	li $t0, 4320
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label1025
	j label1026
label1025:
	li $t0, 1
	sw $t0, -344($fp)
label1026:
	li $t0, 0
	sw $t0, -356($fp)
	jal f8
	sw $v0, -360($fp)
	addi $sp, $sp, 4
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label1029
	j label1028
label1028:
	li $t0, 1
	sw $t0, -356($fp)
label1029:
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -364($fp)
	addi $sp, $sp, 12
	lw $t0, -340($fp)
	lw $t1, -364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -368($fp)
	li $t0, 4
	lw $t1, -368($fp)
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	lw $t1, 0($t0)
	sw $t1, -380($fp)
	j label1020
label1022:
	lw $t0, -288($fp)
	sw $t0, -384($fp)
	li $t0, 0
	sw $t0, -388($fp)
	lw $t0, -288($fp)
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label1031
	j label1030
label1030:
	li $t0, 1
	sw $t0, -388($fp)
label1031:
	li $t0, 9930
	sw $t0, -396($fp)
	li $t0, 0
	lw $t1, -396($fp)
	sub $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -388($fp)
	lw $t1, -400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -404($fp)
	lw $t0, -384($fp)
	lw $t1, -404($fp)
	sub $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -48($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -420($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -500($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -520($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -540($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -560($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -580($fp)
	li $t0, 8
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
	lw $t0, -288($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -604($fp)
	li $t0, 751
	sw $t0, -608($fp)
	jal f8
	sw $v0, -612($fp)
	addi $sp, $sp, 4
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label1035
	j label1033
label1035:
	li $t0, 41717
	sw $t0, -620($fp)
	lw $t0, -288($fp)
	sw $t0, -624($fp)
	lw $t0, -620($fp)
	lw $t1, -624($fp)
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	li $t0, 15273
	sw $t0, -632($fp)
	lw $t0, -628($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t1, -636($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1033
label1034:
	addi $t0, $fp, -40
	sw $t0, -640($fp)
	lw $t0, -60($fp)
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
	lw $t1, -656($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1032
label1032:
	li $t0, 1
	sw $t0, -604($fp)
label1033:
	lw $ra, -4($fp)
	lw $v0, -604($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -200
	li $t0, 63255
	sw $t0, -20($fp)
	addi $t0, $fp, -16
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -20($fp)
	lw $t1, -36($fp)
	sw $t0, 0($t1)
	lw $t0, -36($fp)
	lw $t1, 0($t0)
	sw $t1, -40($fp)
	li $t0, 757
	sw $t0, -44($fp)
	addi $t0, $fp, -16
	sw $t0, -48($fp)
	li $t0, 1
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
	li $t0, 41647
	sw $t0, -68($fp)
	addi $t0, $fp, -16
	sw $t0, -72($fp)
	li $t0, 2
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
	lw $t0, 8($fp)
	sw $t0, -92($fp)
	li $t0, 49725
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -104($fp)
	addi $t0, $fp, -16
	sw $t0, -108($fp)
	li $t0, 0
	sw $t0, -112($fp)
	li $t0, 4
	lw $t1, -112($fp)
	mul $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	lw $t1, -108($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	lw $t1, 0($t0)
	sw $t1, -124($fp)
	lw $t0, -124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -128($fp)
	li $t0, 1
	sw $t0, -132($fp)
	li $t0, 4
	lw $t1, -132($fp)
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t1, 0($t0)
	sw $t1, -144($fp)
	lw $t0, -144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -148($fp)
	li $t0, 2
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
	addi $t0, $fp, -16
	sw $t0, -168($fp)
	li $t0, 0
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
	lw $t0, 4($fp)
	sw $t0, -188($fp)
	li $t0, 50985
	sw $t0, -192($fp)
	lw $t0, -188($fp)
	lw $t1, -192($fp)
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -184($fp)
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -204($fp)
	lw $ra, -4($fp)
	lw $v0, -204($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1104
	li $t0, 45523
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
	li $t0, 52241
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
	li $t0, 32230
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
	li $t0, 38972
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
	li $t0, 907
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
	li $t0, 32059
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
	li $t0, 49041
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
	li $t0, 26553
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 17458
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 54542
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 41165
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 62267
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 20685
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 31266
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 6719
	sw $t0, -288($fp)
	li $t0, 0
	lw $t1, -288($fp)
	sub $t0, $t0, $t1
	sw $t0, -292($fp)
	li $t0, 0
	lw $t1, -292($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	li $t0, 47044
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label1040
	j label1039
label1039:
	li $t0, 1
	sw $t0, -300($fp)
label1040:
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	li $t0, 14918
	sw $t0, -312($fp)
	li $t0, 0
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	li $t0, 0
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -308($fp)
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	addi $t0, $fp, -32
	sw $t0, -328($fp)
	li $t0, 0
	sw $t0, -332($fp)
	lw $t0, -280($fp)
	sw $t0, -336($fp)
	li $t0, 62730
	sw $t0, -340($fp)
	lw $t1, -336($fp)
	lw $t2, -340($fp)
	blt $t1, $t2, label1041
	j label1042
label1041:
	li $t0, 1
	sw $t0, -332($fp)
label1042:
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
	lw $t0, -324($fp)
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label1036
	j label1037
label1036:
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 57194
	sw $t0, -364($fp)
	li $t0, 0
	lw $t1, -364($fp)
	sub $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1043
label1043:
	li $t0, 1
	sw $t0, -360($fp)
label1044:
	li $t0, 0
	sw $t0, -372($fp)
	li $t0, 0
	sw $t0, -376($fp)
	li $t0, 19239
	sw $t0, -380($fp)
	lw $t0, -208($fp)
	sw $t0, -384($fp)
	lw $t1, -380($fp)
	lw $t2, -384($fp)
	bge $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -376($fp)
label1048:
	li $t0, 7124
	sw $t0, -388($fp)
	lw $t1, -376($fp)
	lw $t2, -388($fp)
	bgt $t1, $t2, label1045
	j label1046
label1045:
	li $t0, 1
	sw $t0, -372($fp)
label1046:
	li $t0, 0
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	lw $t0, -208($fp)
	sw $t0, -400($fp)
	li $t0, 56443
	sw $t0, -404($fp)
	lw $t1, -400($fp)
	lw $t2, -404($fp)
	bge $t1, $t2, label1051
	j label1052
label1051:
	li $t0, 1
	sw $t0, -396($fp)
label1052:
	lw $t0, -256($fp)
	sw $t0, -408($fp)
	lw $t1, -396($fp)
	lw $t2, -408($fp)
	blt $t1, $t2, label1049
	j label1050
label1049:
	li $t0, 1
	sw $t0, -392($fp)
label1050:
	li $t0, 0
	sw $t0, -412($fp)
	lw $t0, -244($fp)
	sw $t0, -416($fp)
	lw $t0, -268($fp)
	sw $t0, -420($fp)
	lw $t1, -416($fp)
	lw $t2, -420($fp)
	bgt $t1, $t2, label1053
	j label1055
label1055:
	lw $t0, -244($fp)
	sw $t0, -424($fp)
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1054
label1053:
	li $t0, 1
	sw $t0, -412($fp)
label1054:
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -428($fp)
	addi $sp, $sp, 20
	li $t0, 60956
	sw $t0, -432($fp)
	lw $t0, -428($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $ra, -4($fp)
	lw $v0, -436($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1038
label1037:
	lw $t0, -256($fp)
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	lw $t0, -232($fp)
	sw $t0, -452($fp)
	li $t0, 13286
	sw $t0, -456($fp)
	lw $t0, -452($fp)
	lw $t1, -456($fp)
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label1060
	j label1059
label1060:
	lw $t0, -208($fp)
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label1058
	j label1059
label1058:
	li $t0, 1
	sw $t0, -448($fp)
label1059:
	lw $t0, 4($fp)
	sw $t0, -468($fp)
	li $t0, 0
	lw $t1, -468($fp)
	sub $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -208($fp)
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	sub $t0, $t0, $t1
	sw $t0, -480($fp)
	addi $t0, $fp, -32
	sw $t0, -484($fp)
	lw $t0, -220($fp)
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
	lw $t0, -232($fp)
	sw $t0, -504($fp)
	lw $t0, -500($fp)
	lw $t1, -504($fp)
	sub $t0, $t0, $t1
	sw $t0, -508($fp)
	li $t0, 0
	sw $t0, -512($fp)
	lw $t0, -208($fp)
	sw $t0, -516($fp)
	lw $t0, 4($fp)
	sw $t0, -520($fp)
	lw $t0, -516($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -524($fp)
	li $t0, 64045
	sw $t0, -528($fp)
	lw $t0, -524($fp)
	lw $t1, -528($fp)
	sub $t0, $t0, $t1
	sw $t0, -532($fp)
	li $t0, 61713
	sw $t0, -536($fp)
	lw $t0, 8($fp)
	sw $t0, -540($fp)
	lw $t0, -536($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, 16($fp)
	sw $t0, -548($fp)
	lw $t0, -544($fp)
	lw $t1, -548($fp)
	sub $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -244($fp)
	sw $t0, -556($fp)
	lw $t0, 16($fp)
	sw $t0, -560($fp)
	lw $t0, -556($fp)
	lw $t1, -560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -564($fp)
	li $t0, 54914
	sw $t0, -568($fp)
	lw $t0, -564($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	li $t0, 0
	sw $t0, -576($fp)
	li $t0, 22397
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label1064
	j label1063
label1063:
	li $t0, 1
	sw $t0, -576($fp)
label1064:
	li $t0, 0
	lw $t1, -576($fp)
	sub $t0, $t0, $t1
	sw $t0, -584($fp)
	addi $sp, $sp, -4
	lw $t0, -532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -584($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -588($fp)
	addi $sp, $sp, 20
	li $t0, 39103
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	blt $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -512($fp)
label1062:
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -596($fp)
	addi $sp, $sp, 20
	lw $t1, -596($fp)
	li $t2, 0
	bne $t1, $t2, label1057
	j label1056
label1056:
	li $t0, 1
	sw $t0, -444($fp)
label1057:
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -600($fp)
label1038:
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	lw $t0, -208($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f8
	sw $v0, -772($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1065:
	li $t0, 29226
	sw $t0, -776($fp)
	lw $t0, -268($fp)
	sw $t0, -780($fp)
	lw $t0, -208($fp)
	sw $t0, -784($fp)
	lw $t0, -780($fp)
	lw $t1, -784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -788($fp)
	lw $t0, 16($fp)
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -796($fp)
	li $t0, 15931
	sw $t0, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 24552
	sw $t0, -808($fp)
	li $t0, 58809
	sw $t0, -812($fp)
	lw $t0, -808($fp)
	lw $t1, -812($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label1071
	j label1070
label1071:
	lw $t0, -232($fp)
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label1069
	j label1070
label1069:
	li $t0, 1
	sw $t0, -804($fp)
label1070:
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -824($fp)
	addi $sp, $sp, 16
	lw $t0, -776($fp)
	lw $t1, -824($fp)
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t1, -828($fp)
	li $t2, 0
	bne $t1, $t2, label1066
	j label1068
label1068:
	lw $t0, 4($fp)
	sw $t0, -832($fp)
	lw $t0, -268($fp)
	sw $t0, -836($fp)
	lw $t0, -832($fp)
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	li $t0, 0
	sw $t0, -844($fp)
	li $t0, 56783
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label1073
	j label1072
label1072:
	li $t0, 1
	sw $t0, -844($fp)
label1073:
	lw $t1, -840($fp)
	lw $t2, -844($fp)
	bne $t1, $t2, label1066
	j label1067
label1066:
	lw $t0, 16($fp)
	sw $t0, -852($fp)
	li $t0, 16839
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	addi $t0, $fp, -32
	sw $t0, -864($fp)
	lw $t0, 12($fp)
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
	lw $t1, -880($fp)
	li $t2, 0
	bne $t1, $t2, label1075
	j label1074
label1074:
	li $t0, 1
	sw $t0, -860($fp)
label1075:
	li $t0, 0
	sw $t0, -884($fp)
	li $t0, 32245
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1076
label1076:
	li $t0, 1
	sw $t0, -884($fp)
label1077:
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -892($fp)
	addi $sp, $sp, 16
	lw $t0, -852($fp)
	lw $t1, -892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -896($fp)
	j label1065
label1067:
	addi $t0, $fp, -32
	sw $t0, -900($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -920($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -940($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -960($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -980($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -1000($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -1020($fp)
	li $t0, 6
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
	lw $t0, -208($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1068($fp)
	lw $t0, -244($fp)
	sw $t0, -1072($fp)
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label1079
	j label1078
label1078:
	li $t0, 1
	sw $t0, -1068($fp)
label1079:
	li $t0, 15751
	sw $t0, -1076($fp)
	lw $t0, -1068($fp)
	lw $t1, -1076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1080($fp)
	li $t0, 0
	lw $t1, -1080($fp)
	sub $t0, $t0, $t1
	sw $t0, -1084($fp)
	li $t0, 0
	lw $t1, -1084($fp)
	sub $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -244($fp)
	sw $t0, -1092($fp)
	lw $t0, -268($fp)
	sw $t0, -1096($fp)
	li $t0, 0
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1092($fp)
	lw $t1, -1100($fp)
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1088($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $ra, -4($fp)
	lw $v0, -1108($fp)
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
	lw $t0, 12($fp)
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -16($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	li $t0, 0
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	li $t0, 0
	lw $t1, -32($fp)
	sub $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label1081
	j label1080
label1080:
	li $t0, 1
	sw $t0, -28($fp)
label1081:
	li $t0, 0
	lw $t1, -28($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -24($fp)
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $ra, -4($fp)
	lw $v0, -44($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1412
	li $t0, 43392
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 40765
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 4757
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 19021
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 37496
	sw $t0, -120($fp)
	addi $t0, $fp, -36
	sw $t0, -124($fp)
	li $t0, 0
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
	li $t0, 25442
	sw $t0, -144($fp)
	addi $t0, $fp, -36
	sw $t0, -148($fp)
	li $t0, 1
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
	li $t0, 50287
	sw $t0, -168($fp)
	addi $t0, $fp, -36
	sw $t0, -172($fp)
	li $t0, 2
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
	li $t0, 44215
	sw $t0, -192($fp)
	addi $t0, $fp, -36
	sw $t0, -196($fp)
	li $t0, 3
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
	li $t0, 6951
	sw $t0, -216($fp)
	addi $t0, $fp, -36
	sw $t0, -220($fp)
	li $t0, 4
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
	li $t0, 65205
	sw $t0, -240($fp)
	addi $t0, $fp, -36
	sw $t0, -244($fp)
	li $t0, 5
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
	li $t0, 41409
	sw $t0, -264($fp)
	addi $t0, $fp, -36
	sw $t0, -268($fp)
	li $t0, 6
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
	li $t0, 63394
	sw $t0, -288($fp)
	addi $t0, $fp, -36
	sw $t0, -292($fp)
	li $t0, 7
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
	li $t0, 18908
	sw $t0, -312($fp)
	addi $t0, $fp, -68
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
	li $t0, 48534
	sw $t0, -336($fp)
	addi $t0, $fp, -68
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
	li $t0, 55053
	sw $t0, -360($fp)
	addi $t0, $fp, -68
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
	li $t0, 14329
	sw $t0, -384($fp)
	addi $t0, $fp, -68
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
	li $t0, 5395
	sw $t0, -408($fp)
	addi $t0, $fp, -68
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
	li $t0, 44431
	sw $t0, -432($fp)
	addi $t0, $fp, -68
	sw $t0, -436($fp)
	li $t0, 5
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
	li $t0, 10506
	sw $t0, -456($fp)
	addi $t0, $fp, -68
	sw $t0, -460($fp)
	li $t0, 6
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
	li $t0, 3904
	sw $t0, -480($fp)
	addi $t0, $fp, -68
	sw $t0, -484($fp)
	li $t0, 7
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
	li $t0, 17998
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 23793
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 33130
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 42550
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 17066
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 49062
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 0
	sw $t0, -576($fp)
	li $t0, 33797
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label1083
	j label1082
label1082:
	li $t0, 1
	sw $t0, -576($fp)
label1083:
	addi $t0, $fp, -68
	sw $t0, -584($fp)
	lw $t0, -556($fp)
	sw $t0, -588($fp)
	li $t0, 4
	lw $t1, -588($fp)
	mul $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	lw $t1, -584($fp)
	add $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	lw $t1, 0($t0)
	sw $t1, -600($fp)
	li $t0, 0
	lw $t1, -600($fp)
	sub $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -576($fp)
	lw $t1, -604($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -556($fp)
	sw $t0, -612($fp)
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -616($fp)
	addi $t0, $fp, -68
	sw $t0, -620($fp)
	addi $t0, $fp, -68
	sw $t0, -624($fp)
	lw $t0, -100($fp)
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
	lw $t0, -508($fp)
	sw $t0, -644($fp)
	li $t0, 49312
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -652($fp)
	lw $t0, -640($fp)
	lw $t1, -652($fp)
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	li $t0, 4
	lw $t1, -656($fp)
	mul $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	lw $t1, 0($t0)
	sw $t1, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	addi $t0, $fp, -68
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	lw $t0, -568($fp)
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label1086
	j label1088
label1088:
	li $t0, 365
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label1086
	j label1087
label1086:
	li $t0, 1
	sw $t0, -680($fp)
label1087:
	li $t0, 4
	lw $t1, -680($fp)
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, 0($t0)
	sw $t1, -700($fp)
	li $t0, 0
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	li $t0, 57104
	sw $t0, -712($fp)
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label1092
	j label1091
label1091:
	li $t0, 1
	sw $t0, -708($fp)
label1092:
	lw $t0, -76($fp)
	sw $t0, -716($fp)
	lw $t0, -76($fp)
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t1, -708($fp)
	lw $t2, -724($fp)
	ble $t1, $t2, label1089
	j label1090
label1089:
	li $t0, 1
	sw $t0, -704($fp)
label1090:
	lw $t1, -700($fp)
	lw $t2, -704($fp)
	bne $t1, $t2, label1084
	j label1085
label1084:
	li $t0, 1
	sw $t0, -672($fp)
label1085:
	addi $t0, $fp, -68
	sw $t0, -728($fp)
	li $t0, 0
	sw $t0, -732($fp)
	li $t0, 0
	sw $t0, -736($fp)
	lw $t0, -556($fp)
	sw $t0, -740($fp)
	li $t0, 32333
	sw $t0, -744($fp)
	lw $t1, -740($fp)
	lw $t2, -744($fp)
	blt $t1, $t2, label1095
	j label1096
label1095:
	li $t0, 1
	sw $t0, -736($fp)
label1096:
	lw $t0, -544($fp)
	sw $t0, -748($fp)
	lw $t1, -736($fp)
	lw $t2, -748($fp)
	ble $t1, $t2, label1093
	j label1094
label1093:
	li $t0, 1
	sw $t0, -732($fp)
label1094:
	addi $t0, $fp, -36
	sw $t0, -752($fp)
	li $t0, 5
	sw $t0, -756($fp)
	li $t0, 4
	lw $t1, -756($fp)
	mul $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, 0($t0)
	sw $t1, -768($fp)
	lw $t0, -100($fp)
	sw $t0, -772($fp)
	lw $t0, -768($fp)
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	addi $sp, $sp, -4
	lw $t0, -732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -776($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -780($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, -728($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	li $t0, 0
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	li $t0, 0
	sw $t0, -800($fp)
	addi $t0, $fp, -68
	sw $t0, -804($fp)
	lw $t0, -532($fp)
	sw $t0, -808($fp)
	li $t0, 0
	lw $t1, -808($fp)
	sub $t0, $t0, $t1
	sw $t0, -812($fp)
	li $t0, 4
	lw $t1, -812($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	li $t0, 0
	lw $t1, -824($fp)
	sub $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t1, -828($fp)
	li $t2, 0
	bne $t1, $t2, label1099
	j label1098
label1099:
	addi $t0, $fp, -68
	sw $t0, -832($fp)
	li $t0, 34535
	sw $t0, -836($fp)
	jal f12
	sw $v0, -840($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -844($fp)
	li $t0, 24382
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label1101
	j label1100
label1100:
	li $t0, 1
	sw $t0, -844($fp)
label1101:
	li $t0, 0
	sw $t0, -852($fp)
	lw $t0, -508($fp)
	sw $t0, -856($fp)
	addi $t0, $fp, -68
	sw $t0, -860($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -880($fp)
	li $t0, 47529
	sw $t0, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label1106
	j label1104
label1106:
	lw $t0, -556($fp)
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label1104
	j label1105
label1104:
	li $t0, 1
	sw $t0, -880($fp)
label1105:
	li $t0, 29726
	sw $t0, -892($fp)
	lw $t0, -508($fp)
	sw $t0, -896($fp)
	lw $t0, -892($fp)
	lw $t1, -896($fp)
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	li $t0, 0
	sw $t0, -904($fp)
	lw $t0, -544($fp)
	sw $t0, -908($fp)
	lw $t0, -508($fp)
	sw $t0, -912($fp)
	lw $t1, -908($fp)
	lw $t2, -912($fp)
	beq $t1, $t2, label1107
	j label1108
label1107:
	li $t0, 1
	sw $t0, -904($fp)
label1108:
	addi $t0, $fp, -68
	sw $t0, -916($fp)
	lw $t0, -544($fp)
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
	li $t0, 4293
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -940($fp)
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -944($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -948($fp)
	addi $sp, $sp, 16
	li $t0, 47198
	sw $t0, -952($fp)
	lw $t1, -948($fp)
	lw $t2, -952($fp)
	beq $t1, $t2, label1102
	j label1103
label1102:
	li $t0, 1
	sw $t0, -852($fp)
label1103:
	li $t0, 0
	sw $t0, -956($fp)
	lw $t0, -556($fp)
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label1111
	j label1110
label1111:
	li $t0, 62778
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label1109
	j label1110
label1109:
	li $t0, 1
	sw $t0, -956($fp)
label1110:
	addi $sp, $sp, -4
	lw $t0, -844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -968($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -112($fp)
	sw $t0, -976($fp)
	lw $t0, -520($fp)
	sw $t0, -980($fp)
	lw $t0, -976($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -556($fp)
	sw $t0, -988($fp)
	lw $t0, -984($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	li $t0, 0
	sw $t0, -996($fp)
	lw $t0, -556($fp)
	sw $t0, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label1112
	j label1114
label1114:
	li $t0, 4283
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label1112
	j label1113
label1112:
	li $t0, 1
	sw $t0, -996($fp)
label1113:
	addi $sp, $sp, -4
	lw $t0, -836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1008($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -1008($fp)
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	lw $t1, 0($t0)
	sw $t1, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label1097
	j label1098
label1097:
	li $t0, 1
	sw $t0, -800($fp)
label1098:
	lw $t0, -76($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1040($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -1160($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -1180($fp)
	li $t0, 7
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
	addi $t0, $fp, -68
	sw $t0, -1200($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -1220($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -1240($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
	sw $t0, -1260($fp)
	li $t0, 3
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
	addi $t0, $fp, -68
	sw $t0, -1280($fp)
	li $t0, 4
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
	addi $t0, $fp, -68
	sw $t0, -1300($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
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
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1340($fp)
	li $t0, 7
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
	lw $t0, -508($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1384($fp)
	lw $t0, -508($fp)
	sw $t0, -1388($fp)
	li $t0, 571
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	li $t0, 7380
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	li $t0, 24052
	sw $t0, -1408($fp)
	li $t0, 0
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t1, -1404($fp)
	lw $t2, -1412($fp)
	beq $t1, $t2, label1115
	j label1116
label1115:
	li $t0, 1
	sw $t0, -1384($fp)
label1116:
	lw $t0, -1384($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -1416($fp)
	lw $ra, -4($fp)
	lw $v0, -1416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -68
	li $t0, 14900
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 12775
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, -24($fp)
	sw $t0, -44($fp)
	li $t0, 2947
	sw $t0, -48($fp)
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	mul $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	li $t0, 0
	lw $t1, -60($fp)
	sub $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -56($fp)
	lw $t1, -64($fp)
	mul $t0, $t0, $t1
	sw $t0, -68($fp)
	li $t0, 0
	lw $t1, -68($fp)
	sub $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t1, -44($fp)
	lw $t2, -72($fp)
	bge $t1, $t2, label1117
	j label1118
label1117:
	li $t0, 1
	sw $t0, -40($fp)
label1118:
	lw $ra, -4($fp)
	lw $v0, -40($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -36
	li $t0, 0
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	li $t0, 25406
	sw $t0, -16($fp)
	lw $t1, -12($fp)
	lw $t2, -16($fp)
	beq $t1, $t2, label1119
	j label1120
label1119:
	li $t0, 1
	sw $t0, -8($fp)
label1120:
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	lw $t0, 8($fp)
	sw $t0, -32($fp)
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	bne $t1, $t2, label1123
	j label1124
label1123:
	li $t0, 1
	sw $t0, -24($fp)
label1124:
	lw $t0, 8($fp)
	sw $t0, -36($fp)
	lw $t1, -24($fp)
	lw $t2, -36($fp)
	beq $t1, $t2, label1121
	j label1122
label1121:
	li $t0, 1
	sw $t0, -20($fp)
label1122:
	addi $sp, $sp, -4
	lw $t0, -8($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -40($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -40($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f13
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 16680
	sw $t0, -12($fp)
	lw $ra, -4($fp)
	lw $v0, -12($fp)
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
