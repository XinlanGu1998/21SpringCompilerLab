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
	addi $sp, $sp, -544
	li $t0, 48291
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 28138
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 34089
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
	li $t0, 34417
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
	li $t0, 43907
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
	li $t0, 9721
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
	li $t0, 10949
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
	li $t0, 57940
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
	li $t0, 16489
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
label121:
	li $t0, 0
	sw $t0, -212($fp)
	lw $t0, -204($fp)
	sw $t0, -216($fp)
	li $t0, 12017
	sw $t0, -220($fp)
	li $t0, 0
	lw $t1, -220($fp)
	sub $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -216($fp)
	lw $t1, -224($fp)
	mul $t0, $t0, $t1
	sw $t0, -228($fp)
	li $t0, 0
	lw $t1, -228($fp)
	sub $t0, $t0, $t1
	sw $t0, -232($fp)
	li $t0, 8474
	sw $t0, -236($fp)
	lw $t1, -232($fp)
	lw $t2, -236($fp)
	blt $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -212($fp)
label125:
	li $t0, 21896
	sw $t0, -240($fp)
	li $t0, 0
	lw $t1, -240($fp)
	sub $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -48($fp)
	sw $t0, -248($fp)
	lw $t0, -244($fp)
	lw $t1, -248($fp)
	sub $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t1, -212($fp)
	lw $t2, -252($fp)
	ble $t1, $t2, label122
	j label123
label122:
	li $t0, 30616
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	lw $t0, -48($fp)
	sw $t0, -264($fp)
	lw $t0, 12($fp)
	sw $t0, -268($fp)
	lw $t1, -264($fp)
	lw $t2, -268($fp)
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -260($fp)
label127:
	li $t0, 0
	sw $t0, -272($fp)
	lw $t0, -48($fp)
	sw $t0, -276($fp)
	li $t0, 10050
	sw $t0, -280($fp)
	lw $t1, -276($fp)
	lw $t2, -280($fp)
	bgt $t1, $t2, label130
	j label129
label130:
	lw $t0, -48($fp)
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -272($fp)
label129:
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 1467
	sw $t0, -292($fp)
	lw $t0, -48($fp)
	sw $t0, -296($fp)
	lw $t0, -292($fp)
	lw $t1, -296($fp)
	sub $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, 4($fp)
	sw $t0, -304($fp)
	lw $t1, -300($fp)
	lw $t2, -304($fp)
	beq $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -288($fp)
label132:
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -308($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -312($fp)
	lw $t0, 12($fp)
	sw $t0, -316($fp)
	li $t0, 36596
	sw $t0, -320($fp)
	lw $t1, -316($fp)
	lw $t2, -320($fp)
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -312($fp)
label134:
	li $t0, 13636
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -328($fp)
	lw $t0, 4($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -336($fp)
	lw $t0, 12($fp)
	sw $t0, -340($fp)
	addi $sp, $sp, -4
	lw $t0, -328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -344($fp)
	addi $sp, $sp, 16
	li $t0, 21259
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	addi $sp, $sp, -4
	lw $t0, -308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -356($fp)
	addi $sp, $sp, 16
	lw $t0, -256($fp)
	lw $t1, -356($fp)
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	lw $t0, -36($fp)
	sw $t0, -368($fp)
	lw $t0, 4($fp)
	sw $t0, -372($fp)
	lw $t0, -36($fp)
	sw $t0, -376($fp)
	lw $t0, -372($fp)
	lw $t1, -376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -380($fp)
	addi $t0, $fp, -28
	sw $t0, -384($fp)
	lw $t0, 12($fp)
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
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -404($fp)
	addi $sp, $sp, 16
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label135
label135:
	li $t0, 1
	sw $t0, -364($fp)
label136:
	lw $t0, -360($fp)
	lw $t1, -364($fp)
	sub $t0, $t0, $t1
	sw $t0, -408($fp)
	j label121
label123:
	lw $t0, -204($fp)
	sw $t0, -412($fp)
	lw $t0, -36($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -424($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -444($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -464($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -484($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -504($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -524($fp)
	li $t0, 5
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
	lw $t0, -204($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 36639
	sw $t0, -548($fp)
	lw $ra, -4($fp)
	lw $v0, -548($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -284
	li $t0, 36200
	sw $t0, -16($fp)
	addi $t0, $fp, -12
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -20($fp)
	lw $t1, -28($fp)
	add $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -16($fp)
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	lw $t0, -32($fp)
	lw $t1, 0($t0)
	sw $t1, -36($fp)
	li $t0, 64277
	sw $t0, -40($fp)
	addi $t0, $fp, -12
	sw $t0, -44($fp)
	li $t0, 1
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
	li $t0, 64046
	sw $t0, -64($fp)
	addi $t0, $fp, -12
	sw $t0, -68($fp)
	lw $t0, 8($fp)
	sw $t0, -72($fp)
	li $t0, 4
	lw $t1, -72($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	lw $t1, 0($t0)
	sw $t1, -84($fp)
	addi $t0, $fp, -12
	sw $t0, -88($fp)
	li $t0, 1
	sw $t0, -92($fp)
	li $t0, 4
	lw $t1, -92($fp)
	mul $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, -88($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t1, 0($t0)
	sw $t1, -104($fp)
	lw $t0, -84($fp)
	lw $t1, -104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -108($fp)
	lw $t0, -64($fp)
	lw $t1, -108($fp)
	sub $t0, $t0, $t1
	sw $t0, -112($fp)
	li $t0, 0
	sw $t0, -116($fp)
	li $t0, 56498
	sw $t0, -120($fp)
	lw $t0, 12($fp)
	sw $t0, -124($fp)
	lw $t0, -120($fp)
	lw $t1, -124($fp)
	sub $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t1, -128($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label139
label139:
	lw $t0, 8($fp)
	sw $t0, -132($fp)
	li $t0, 0
	sw $t0, -136($fp)
	lw $t0, 4($fp)
	sw $t0, -140($fp)
	lw $t1, -140($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -136($fp)
label141:
	lw $t0, -132($fp)
	lw $t1, -136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -144($fp)
	lw $t1, -144($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -116($fp)
label138:
	li $t0, 0
	sw $t0, -148($fp)
	li $t0, 41548
	sw $t0, -152($fp)
	lw $t0, 16($fp)
	sw $t0, -156($fp)
	li $t0, 48403
	sw $t0, -160($fp)
	li $t0, 0
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -156($fp)
	lw $t1, -164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -168($fp)
	lw $t1, -152($fp)
	lw $t2, -168($fp)
	blt $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -148($fp)
label143:
	li $t0, 0
	sw $t0, -172($fp)
	li $t0, 21490
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -180($fp)
	li $t0, 0
	sw $t0, -184($fp)
	lw $t0, 8($fp)
	sw $t0, -188($fp)
	lw $t0, 8($fp)
	sw $t0, -192($fp)
	lw $t1, -188($fp)
	lw $t2, -192($fp)
	bne $t1, $t2, label148
	j label147
label148:
	li $t0, 34671
	sw $t0, -196($fp)
	lw $t1, -196($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -184($fp)
label147:
	lw $t0, 8($fp)
	sw $t0, -200($fp)
	lw $t0, 20($fp)
	sw $t0, -204($fp)
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, 4($fp)
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	addi $sp, $sp, -4
	lw $t0, -180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -220($fp)
	addi $sp, $sp, 16
	li $t0, 46320
	sw $t0, -224($fp)
	lw $t0, -220($fp)
	lw $t1, -224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -228($fp)
	lw $t0, 8($fp)
	sw $t0, -232($fp)
	li $t0, 18518
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	li $t0, 0
	lw $t1, -240($fp)
	sub $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -228($fp)
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	lw $t0, 8($fp)
	sw $t0, -256($fp)
	li $t0, 0
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	li $t0, 0
	lw $t1, -260($fp)
	sub $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t1, -264($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -252($fp)
label150:
	lw $t1, -248($fp)
	lw $t2, -252($fp)
	ble $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -172($fp)
label145:
	li $t0, 0
	sw $t0, -268($fp)
	li $t0, 4245
	sw $t0, -272($fp)
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label154:
	lw $t0, 8($fp)
	sw $t0, -276($fp)
	lw $t1, -276($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label153
label153:
	li $t0, 0
	sw $t0, -280($fp)
	lw $t0, 8($fp)
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -280($fp)
label156:
	li $t0, 0
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -268($fp)
label152:
	lw $ra, -4($fp)
	lw $v0, -268($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -52
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	li $t0, 52607
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label158
label160:
	li $t0, 38662
	sw $t0, -20($fp)
	lw $t1, -20($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label159:
	li $t0, 52829
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -12($fp)
label158:
	lw $t0, 8($fp)
	sw $t0, -28($fp)
	lw $t0, 4($fp)
	sw $t0, -32($fp)
	lw $t0, 4($fp)
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	li $t0, 8922
	sw $t0, -44($fp)
	lw $t0, -40($fp)
	lw $t1, -44($fp)
	add $t0, $t0, $t1
	sw $t0, -48($fp)
	addi $sp, $sp, -4
	lw $t0, -12($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -52($fp)
	addi $sp, $sp, 16
	lw $t0, -8($fp)
	lw $t1, -52($fp)
	sub $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $ra, -4($fp)
	lw $v0, -56($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -280
	li $t0, 62328
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
	li $t0, 49612
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
	li $t0, 45233
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
label161:
	li $t0, 0
	sw $t0, -92($fp)
	addi $t0, $fp, -16
	sw $t0, -96($fp)
	lw $t0, 8($fp)
	sw $t0, -100($fp)
	li $t0, 4
	lw $t1, -100($fp)
	mul $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	lw $t1, -96($fp)
	add $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t1, 0($t0)
	sw $t1, -112($fp)
	lw $t0, 12($fp)
	sw $t0, -116($fp)
	li $t0, 13281
	sw $t0, -120($fp)
	lw $t0, -116($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t1, -112($fp)
	lw $t2, -124($fp)
	bgt $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -92($fp)
label165:
	lw $t0, -92($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -128($fp)
	lw $t1, -128($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label163
label162:
	li $t0, 0
	sw $t0, -132($fp)
	addi $t0, $fp, -16
	sw $t0, -136($fp)
	lw $t0, 12($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -144($fp)
	li $t0, 4
	lw $t1, -144($fp)
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t1, 0($t0)
	sw $t1, -156($fp)
	lw $t1, -156($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label168:
	addi $t0, $fp, -16
	sw $t0, -160($fp)
	li $t0, 0
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
	li $t0, 35177
	sw $t0, -180($fp)
	li $t0, 0
	lw $t1, -180($fp)
	sub $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t1, -176($fp)
	lw $t2, -184($fp)
	bgt $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -132($fp)
label167:
	lw $ra, -4($fp)
	lw $v0, -132($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label161
label163:
	addi $t0, $fp, -16
	sw $t0, -188($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -208($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -228($fp)
	li $t0, 2
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
	li $t0, 56436
	sw $t0, -252($fp)
	li $t0, 63305
	sw $t0, -256($fp)
	lw $t1, -252($fp)
	lw $t2, -256($fp)
	beq $t1, $t2, label169
	j label171
label171:
	li $t0, 3275
	sw $t0, -260($fp)
	lw $t1, -260($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -248($fp)
label170:
	li $t0, 1807
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -268($fp)
	li $t0, 0
	sw $t0, -272($fp)
	lw $t0, 12($fp)
	sw $t0, -276($fp)
	lw $t1, -276($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -272($fp)
label173:
	li $t0, 26709
	sw $t0, -280($fp)
	addi $sp, $sp, -4
	lw $t0, -248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -280($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -284($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4200
	li $t0, 951
	sw $t0, -180($fp)
	addi $t0, $fp, -28
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
	li $t0, 34409
	sw $t0, -204($fp)
	addi $t0, $fp, -28
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
	li $t0, 39475
	sw $t0, -228($fp)
	addi $t0, $fp, -28
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
	li $t0, 65228
	sw $t0, -252($fp)
	addi $t0, $fp, -28
	sw $t0, -256($fp)
	li $t0, 3
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
	li $t0, 32919
	sw $t0, -276($fp)
	addi $t0, $fp, -28
	sw $t0, -280($fp)
	li $t0, 4
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
	li $t0, 50247
	sw $t0, -300($fp)
	addi $t0, $fp, -28
	sw $t0, -304($fp)
	li $t0, 5
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
	li $t0, 20452
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 23881
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 26259
	sw $t0, -348($fp)
	addi $t0, $fp, -52
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
	li $t0, 3319
	sw $t0, -372($fp)
	addi $t0, $fp, -52
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
	li $t0, 58553
	sw $t0, -396($fp)
	addi $t0, $fp, -52
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
	li $t0, 47750
	sw $t0, -420($fp)
	addi $t0, $fp, -52
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
	li $t0, 49639
	sw $t0, -444($fp)
	addi $t0, $fp, -52
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
	li $t0, 11535
	sw $t0, -468($fp)
	addi $t0, $fp, -52
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
	li $t0, 51995
	sw $t0, -492($fp)
	addi $t0, $fp, -92
	sw $t0, -496($fp)
	li $t0, 0
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
	li $t0, 58561
	sw $t0, -516($fp)
	addi $t0, $fp, -92
	sw $t0, -520($fp)
	li $t0, 1
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
	li $t0, 64142
	sw $t0, -540($fp)
	addi $t0, $fp, -92
	sw $t0, -544($fp)
	li $t0, 2
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
	li $t0, 25122
	sw $t0, -564($fp)
	addi $t0, $fp, -92
	sw $t0, -568($fp)
	li $t0, 3
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -568($fp)
	lw $t1, -576($fp)
	add $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -564($fp)
	lw $t1, -580($fp)
	sw $t0, 0($t1)
	lw $t0, -580($fp)
	lw $t1, 0($t0)
	sw $t1, -584($fp)
	li $t0, 45854
	sw $t0, -588($fp)
	addi $t0, $fp, -92
	sw $t0, -592($fp)
	li $t0, 4
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
	li $t0, 60935
	sw $t0, -612($fp)
	addi $t0, $fp, -92
	sw $t0, -616($fp)
	li $t0, 5
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
	li $t0, 9198
	sw $t0, -636($fp)
	addi $t0, $fp, -92
	sw $t0, -640($fp)
	li $t0, 6
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
	li $t0, 25551
	sw $t0, -660($fp)
	addi $t0, $fp, -92
	sw $t0, -664($fp)
	li $t0, 7
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
	li $t0, 8680
	sw $t0, -684($fp)
	addi $t0, $fp, -92
	sw $t0, -688($fp)
	li $t0, 8
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
	li $t0, 5291
	sw $t0, -708($fp)
	addi $t0, $fp, -92
	sw $t0, -712($fp)
	li $t0, 9
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
	li $t0, 13722
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 43858
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 32000
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 15530
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 34758
	sw $t0, -780($fp)
	addi $t0, $fp, -132
	sw $t0, -784($fp)
	li $t0, 0
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
	li $t0, 29769
	sw $t0, -804($fp)
	addi $t0, $fp, -132
	sw $t0, -808($fp)
	li $t0, 1
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
	li $t0, 18805
	sw $t0, -828($fp)
	addi $t0, $fp, -132
	sw $t0, -832($fp)
	li $t0, 2
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
	li $t0, 35709
	sw $t0, -852($fp)
	addi $t0, $fp, -132
	sw $t0, -856($fp)
	li $t0, 3
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
	li $t0, 64178
	sw $t0, -876($fp)
	addi $t0, $fp, -132
	sw $t0, -880($fp)
	li $t0, 4
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
	li $t0, 58280
	sw $t0, -900($fp)
	addi $t0, $fp, -132
	sw $t0, -904($fp)
	li $t0, 5
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
	li $t0, 35402
	sw $t0, -924($fp)
	addi $t0, $fp, -132
	sw $t0, -928($fp)
	li $t0, 6
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
	li $t0, 31561
	sw $t0, -948($fp)
	addi $t0, $fp, -132
	sw $t0, -952($fp)
	li $t0, 7
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
	li $t0, 42991
	sw $t0, -972($fp)
	addi $t0, $fp, -132
	sw $t0, -976($fp)
	li $t0, 8
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
	li $t0, 55854
	sw $t0, -996($fp)
	addi $t0, $fp, -132
	sw $t0, -1000($fp)
	li $t0, 9
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
	li $t0, 55443
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 3715
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 59173
	sw $t0, -1044($fp)
	addi $t0, $fp, -152
	sw $t0, -1048($fp)
	li $t0, 0
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
	li $t0, 48460
	sw $t0, -1068($fp)
	addi $t0, $fp, -152
	sw $t0, -1072($fp)
	li $t0, 1
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
	li $t0, 51465
	sw $t0, -1092($fp)
	addi $t0, $fp, -152
	sw $t0, -1096($fp)
	li $t0, 2
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
	li $t0, 43276
	sw $t0, -1116($fp)
	addi $t0, $fp, -152
	sw $t0, -1120($fp)
	li $t0, 3
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1120($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1116($fp)
	lw $t1, -1132($fp)
	sw $t0, 0($t1)
	lw $t0, -1132($fp)
	lw $t1, 0($t0)
	sw $t1, -1136($fp)
	li $t0, 59995
	sw $t0, -1140($fp)
	addi $t0, $fp, -152
	sw $t0, -1144($fp)
	li $t0, 4
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1144($fp)
	lw $t1, -1152($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1140($fp)
	lw $t1, -1156($fp)
	sw $t0, 0($t1)
	lw $t0, -1156($fp)
	lw $t1, 0($t0)
	sw $t1, -1160($fp)
	li $t0, 37924
	sw $t0, -1164($fp)
	addi $t0, $fp, -176
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
	li $t0, 36301
	sw $t0, -1188($fp)
	addi $t0, $fp, -176
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
	li $t0, 58601
	sw $t0, -1212($fp)
	addi $t0, $fp, -176
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
	li $t0, 63046
	sw $t0, -1236($fp)
	addi $t0, $fp, -176
	sw $t0, -1240($fp)
	li $t0, 3
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
	li $t0, 16619
	sw $t0, -1260($fp)
	addi $t0, $fp, -176
	sw $t0, -1264($fp)
	li $t0, 4
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
	li $t0, 54000
	sw $t0, -1284($fp)
	addi $t0, $fp, -176
	sw $t0, -1288($fp)
	li $t0, 5
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
	li $t0, 6708
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 42170
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 62681
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 11999
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 55892
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 41003
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 43999
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 5886
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	li $t0, 0
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	addi $t0, $fp, -52
	sw $t0, -1412($fp)
	li $t0, 1
	sw $t0, -1416($fp)
	li $t0, 4
	lw $t1, -1416($fp)
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	lw $t1, 0($t0)
	sw $t1, -1428($fp)
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -1408($fp)
label177:
	li $t0, 24691
	sw $t0, -1432($fp)
	lw $t0, -1408($fp)
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	li $t0, 0
	sw $t0, -1440($fp)
	lw $t0, -1312($fp)
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
	li $t0, 1
	sw $t0, -1440($fp)
label179:
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 50071
	sw $t0, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label182:
	lw $t0, -1348($fp)
	sw $t0, -1456($fp)
	lw $t1, -1456($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1448($fp)
label181:
	jal f10
	sw $v0, -1460($fp)
	addi $sp, $sp, 4
	li $t0, 11268
	sw $t0, -1464($fp)
	li $t0, 0
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	li $t0, 65292
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	lw $t0, -772($fp)
	sw $t0, -1480($fp)
	li $t0, 0
	lw $t1, -1480($fp)
	sub $t0, $t0, $t1
	sw $t0, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	li $t0, 0
	sw $t0, -1492($fp)
	li $t0, 6119
	sw $t0, -1496($fp)
	li $t0, 28344
	sw $t0, -1500($fp)
	lw $t1, -1496($fp)
	lw $t2, -1500($fp)
	bge $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -1492($fp)
label189:
	lw $t0, -1312($fp)
	sw $t0, -1504($fp)
	lw $t1, -1492($fp)
	lw $t2, -1504($fp)
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1488($fp)
label187:
	li $t0, 0
	sw $t0, -1508($fp)
	lw $t0, -1360($fp)
	sw $t0, -1512($fp)
	lw $t0, -1324($fp)
	sw $t0, -1516($fp)
	lw $t0, -1512($fp)
	lw $t1, -1516($fp)
	sub $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -760($fp)
	sw $t0, -1524($fp)
	lw $t1, -1520($fp)
	lw $t2, -1524($fp)
	bne $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -1508($fp)
label191:
	addi $t0, $fp, -176
	sw $t0, -1528($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -1544($fp)
	sub $t0, $t0, $t1
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	li $t0, 15801
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -1552($fp)
label193:
	li $t0, 0
	sw $t0, -1560($fp)
	li $t0, 17435
	sw $t0, -1564($fp)
	li $t0, 0
	lw $t1, -1564($fp)
	sub $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label196:
	lw $t0, -1396($fp)
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -1560($fp)
label195:
	li $t0, 0
	sw $t0, -1576($fp)
	addi $t0, $fp, -92
	sw $t0, -1580($fp)
	li $t0, 5
	sw $t0, -1584($fp)
	li $t0, 4
	lw $t1, -1584($fp)
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	lw $t1, 0($t0)
	sw $t1, -1596($fp)
	lw $t0, -1396($fp)
	sw $t0, -1600($fp)
	lw $t1, -1596($fp)
	lw $t2, -1600($fp)
	bgt $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -1576($fp)
label198:
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1604($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1608($fp)
	addi $sp, $sp, 20
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label185:
	li $t0, 64142
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -1476($fp)
label184:
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1616($fp)
	addi $sp, $sp, 24
	lw $t0, -1440($fp)
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	li $t0, 0
	lw $t1, -1620($fp)
	sub $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t1, -1436($fp)
	lw $t2, -1624($fp)
	beq $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -1404($fp)
label175:
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	lw $t0, -328($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1756($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -1776($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -1796($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -1816($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
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
	lw $t0, -1852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1856($fp)
	li $t0, 5
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
	addi $t0, $fp, -92
	sw $t0, -1876($fp)
	li $t0, 0
	sw $t0, -1880($fp)
	li $t0, 4
	lw $t1, -1880($fp)
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	lw $t1, -1876($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, 0($t0)
	sw $t1, -1892($fp)
	lw $t0, -1892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1896($fp)
	li $t0, 1
	sw $t0, -1900($fp)
	li $t0, 4
	lw $t1, -1900($fp)
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, 0($t0)
	sw $t1, -1912($fp)
	lw $t0, -1912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1916($fp)
	li $t0, 2
	sw $t0, -1920($fp)
	li $t0, 4
	lw $t1, -1920($fp)
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	lw $t1, 0($t0)
	sw $t1, -1932($fp)
	lw $t0, -1932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1936($fp)
	li $t0, 3
	sw $t0, -1940($fp)
	li $t0, 4
	lw $t1, -1940($fp)
	mul $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	lw $t1, 0($t0)
	sw $t1, -1952($fp)
	lw $t0, -1952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1956($fp)
	li $t0, 4
	sw $t0, -1960($fp)
	li $t0, 4
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	lw $t0, -1972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1976($fp)
	li $t0, 5
	sw $t0, -1980($fp)
	li $t0, 4
	lw $t1, -1980($fp)
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	lw $t1, 0($t0)
	sw $t1, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1996($fp)
	li $t0, 6
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
	addi $t0, $fp, -92
	sw $t0, -2016($fp)
	li $t0, 7
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
	addi $t0, $fp, -92
	sw $t0, -2036($fp)
	li $t0, 8
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
	addi $t0, $fp, -92
	sw $t0, -2056($fp)
	li $t0, 9
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
	lw $t0, -736($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	li $t0, 4
	lw $t1, -2096($fp)
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, 0($t0)
	sw $t1, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2112($fp)
	li $t0, 1
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
	addi $t0, $fp, -132
	sw $t0, -2132($fp)
	li $t0, 2
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
	addi $t0, $fp, -132
	sw $t0, -2152($fp)
	li $t0, 3
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
	addi $t0, $fp, -132
	sw $t0, -2172($fp)
	li $t0, 4
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
	addi $t0, $fp, -132
	sw $t0, -2192($fp)
	li $t0, 5
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
	addi $t0, $fp, -132
	sw $t0, -2212($fp)
	li $t0, 6
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
	addi $t0, $fp, -132
	sw $t0, -2232($fp)
	li $t0, 7
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
	addi $t0, $fp, -132
	sw $t0, -2252($fp)
	li $t0, 8
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
	addi $t0, $fp, -132
	sw $t0, -2272($fp)
	li $t0, 9
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
	lw $t0, -1024($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2300($fp)
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 4
	lw $t1, -2304($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	lw $t0, -2316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2320($fp)
	li $t0, 1
	sw $t0, -2324($fp)
	li $t0, 4
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	lw $t0, -2336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2340($fp)
	li $t0, 2
	sw $t0, -2344($fp)
	li $t0, 4
	lw $t1, -2344($fp)
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	lw $t1, -2340($fp)
	add $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, 0($t0)
	sw $t1, -2356($fp)
	lw $t0, -2356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2360($fp)
	li $t0, 3
	sw $t0, -2364($fp)
	li $t0, 4
	lw $t1, -2364($fp)
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	lw $t1, 0($t0)
	sw $t1, -2376($fp)
	lw $t0, -2376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -2380($fp)
	li $t0, 4
	sw $t0, -2384($fp)
	li $t0, 4
	lw $t1, -2384($fp)
	mul $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	lw $t1, -2380($fp)
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	lw $t1, 0($t0)
	sw $t1, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -2400($fp)
	li $t0, 0
	sw $t0, -2404($fp)
	li $t0, 4
	lw $t1, -2404($fp)
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	lw $t1, -2400($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	lw $t1, 0($t0)
	sw $t1, -2416($fp)
	lw $t0, -2416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -2420($fp)
	li $t0, 1
	sw $t0, -2424($fp)
	li $t0, 4
	lw $t1, -2424($fp)
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	lw $t1, -2420($fp)
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, 0($t0)
	sw $t1, -2436($fp)
	lw $t0, -2436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -2440($fp)
	li $t0, 2
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
	addi $t0, $fp, -176
	sw $t0, -2460($fp)
	li $t0, 3
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
	addi $t0, $fp, -176
	sw $t0, -2480($fp)
	li $t0, 4
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
	addi $t0, $fp, -176
	sw $t0, -2500($fp)
	li $t0, 5
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
	lw $t0, -1312($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2552($fp)
	addi $t0, $fp, -176
	sw $t0, -2556($fp)
	lw $t0, -1384($fp)
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
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label201
label201:
	li $t0, 19970
	sw $t0, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -2552($fp)
label200:
	lw $t0, -1348($fp)
	sw $t0, -2580($fp)
	li $t0, 0
	lw $t1, -2580($fp)
	sub $t0, $t0, $t1
	sw $t0, -2584($fp)
	li $t0, 64328
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	sub $t0, $t0, $t1
	sw $t0, -2592($fp)
	li $t0, 13797
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -2600($fp)
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, -1372($fp)
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label202
label204:
	lw $t0, -1384($fp)
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -2604($fp)
label203:
	li $t0, 43032
	sw $t0, -2616($fp)
	li $t0, 5727
	sw $t0, -2620($fp)
	lw $t0, -2616($fp)
	lw $t1, -2620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2624($fp)
	li $t0, 22459
	sw $t0, -2628($fp)
	lw $t0, -2624($fp)
	lw $t1, -2628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2632($fp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2632($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2636($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2636($fp)
	sub $t0, $t0, $t1
	sw $t0, -2640($fp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2644($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -2644($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label205:
	lw $t0, -340($fp)
	sw $t0, -2648($fp)
	lw $t1, -2648($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label208:
	li $t0, 30416
	sw $t0, -2652($fp)
	lw $t0, -1036($fp)
	sw $t0, -2656($fp)
	li $t0, 52793
	sw $t0, -2660($fp)
	lw $t0, -2656($fp)
	lw $t1, -2660($fp)
	sub $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t1, -2652($fp)
	lw $t2, -2664($fp)
	bge $t1, $t2, label206
	j label207
label206:
label209:
	addi $t0, $fp, -152
	sw $t0, -2668($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -1348($fp)
	sw $t0, -2692($fp)
	lw $t0, -328($fp)
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label214
label214:
	lw $t0, -1396($fp)
	sw $t0, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -2688($fp)
label213:
	li $t0, 0
	sw $t0, -2708($fp)
	lw $t0, -736($fp)
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label216
label218:
	li $t0, 3293
	sw $t0, -2716($fp)
	lw $t1, -2716($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label217:
	li $t0, 35630
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -2708($fp)
label216:
	li $t0, 0
	sw $t0, -2724($fp)
	li $t0, 17141
	sw $t0, -2728($fp)
	lw $t0, -1396($fp)
	sw $t0, -2732($fp)
	lw $t1, -2728($fp)
	lw $t2, -2732($fp)
	ble $t1, $t2, label221
	j label220
label221:
	lw $t0, -1348($fp)
	sw $t0, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -2724($fp)
label220:
	li $t0, 25405
	sw $t0, -2740($fp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2744($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2748($fp)
	li $t0, 38678
	sw $t0, -2752($fp)
	lw $t0, -1396($fp)
	sw $t0, -2756($fp)
	lw $t1, -2752($fp)
	lw $t2, -2756($fp)
	bgt $t1, $t2, label224
	j label223
label224:
	li $t0, 62942
	sw $t0, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -2748($fp)
label223:
	li $t0, 0
	sw $t0, -2764($fp)
	li $t0, 49938
	sw $t0, -2768($fp)
	lw $t0, -1336($fp)
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t1, -2776($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label227:
	lw $t0, -328($fp)
	sw $t0, -2780($fp)
	lw $t1, -2780($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -2764($fp)
label226:
	li $t0, 26678
	sw $t0, -2784($fp)
	li $t0, 7050
	sw $t0, -2788($fp)
	lw $t0, -2784($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -1384($fp)
	sw $t0, -2796($fp)
	lw $t0, -2792($fp)
	lw $t1, -2796($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	addi $sp, $sp, -4
	lw $t0, -2744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2800($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2804($fp)
	addi $sp, $sp, 20
	lw $t1, -2804($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
label228:
	li $t0, 16029
	sw $t0, -2808($fp)
	li $t0, 0
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	li $t0, 0
	lw $t1, -2812($fp)
	sub $t0, $t0, $t1
	sw $t0, -2816($fp)
	li $t0, 0
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	addi $t0, $fp, -176
	sw $t0, -2824($fp)
	lw $t0, -1348($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -2832($fp)
	li $t0, 4
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, 0($t0)
	sw $t1, -2844($fp)
	lw $t0, -2820($fp)
	lw $t1, -2844($fp)
	add $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 0
	sw $t0, -2852($fp)
	jal f10
	sw $v0, -2856($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -28
	sw $t0, -2860($fp)
	lw $t0, -1024($fp)
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
	li $t0, 0
	lw $t1, -2876($fp)
	sub $t0, $t0, $t1
	sw $t0, -2880($fp)
	li $t0, 0
	sw $t0, -2884($fp)
	lw $t0, -1384($fp)
	sw $t0, -2888($fp)
	lw $t0, -1024($fp)
	sw $t0, -2892($fp)
	lw $t0, -2888($fp)
	lw $t1, -2892($fp)
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label236
label236:
	lw $t0, -736($fp)
	sw $t0, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -2884($fp)
label235:
	li $t0, 0
	sw $t0, -2904($fp)
	li $t0, 32250
	sw $t0, -2908($fp)
	lw $t0, -1312($fp)
	sw $t0, -2912($fp)
	lw $t0, -2908($fp)
	lw $t1, -2912($fp)
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label239:
	lw $t0, -1384($fp)
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -2904($fp)
label238:
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2904($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2924($fp)
	addi $sp, $sp, 20
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label233
label233:
	jal f10
	sw $v0, -2928($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2932($fp)
	addi $t0, $fp, -132
	sw $t0, -2936($fp)
	li $t0, 4
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
	lw $t0, -1348($fp)
	sw $t0, -2956($fp)
	lw $t1, -2952($fp)
	lw $t2, -2956($fp)
	beq $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -2932($fp)
label241:
	lw $t0, -1384($fp)
	sw $t0, -2960($fp)
	lw $t0, -748($fp)
	sw $t0, -2964($fp)
	lw $t0, -2960($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	li $t0, 0
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 50490
	sw $t0, -2980($fp)
	li $t0, 1
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -1324($fp)
	sw $t0, -2992($fp)
	lw $t1, -2988($fp)
	lw $t2, -2992($fp)
	ble $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -2976($fp)
label245:
	li $t0, 0
	sw $t0, -2996($fp)
	li $t0, 23452
	sw $t0, -3000($fp)
	lw $t0, -1312($fp)
	sw $t0, -3004($fp)
	lw $t0, -3000($fp)
	lw $t1, -3004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label248:
	li $t0, 15201
	sw $t0, -3012($fp)
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -2996($fp)
label247:
	li $t0, 0
	sw $t0, -3016($fp)
	li $t0, 44763
	sw $t0, -3020($fp)
	lw $t1, -3020($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label249:
	li $t0, 1
	sw $t0, -3016($fp)
label250:
	lw $t0, -1348($fp)
	sw $t0, -3024($fp)
	lw $t0, -3016($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	li $t0, 0
	sw $t0, -3032($fp)
	li $t0, 33495
	sw $t0, -3036($fp)
	li $t0, 38917
	sw $t0, -3040($fp)
	lw $t0, -3036($fp)
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label253
label253:
	li $t0, 37705
	sw $t0, -3048($fp)
	lw $t1, -3048($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -3032($fp)
label252:
	li $t0, 0
	sw $t0, -3052($fp)
	lw $t0, -328($fp)
	sw $t0, -3056($fp)
	li $t0, 37949
	sw $t0, -3060($fp)
	lw $t0, -3056($fp)
	lw $t1, -3060($fp)
	sub $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t1, -3064($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label256:
	lw $t0, -1036($fp)
	sw $t0, -3068($fp)
	lw $t1, -3068($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -3052($fp)
label255:
	lw $t0, -1348($fp)
	sw $t0, -3072($fp)
	lw $t0, -1348($fp)
	sw $t0, -3076($fp)
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	li $t0, 40311
	sw $t0, -3084($fp)
	lw $t0, -3080($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -1036($fp)
	sw $t0, -3092($fp)
	li $t0, 5151
	sw $t0, -3096($fp)
	lw $t0, -3092($fp)
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3104($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3108($fp)
	li $t0, 45420
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -3108($fp)
label258:
	li $t0, 31830
	sw $t0, -3116($fp)
	lw $t0, -3108($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3124($fp)
	addi $sp, $sp, 20
	lw $t1, -3124($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label242:
	li $t0, 1
	sw $t0, -2972($fp)
label243:
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3128($fp)
	addi $sp, $sp, 20
	lw $t0, -1312($fp)
	sw $t0, -3132($fp)
	lw $t0, -3128($fp)
	lw $t1, -3132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3136($fp)
	li $t0, 345
	sw $t0, -3140($fp)
	lw $t0, -3136($fp)
	lw $t1, -3140($fp)
	sub $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -2852($fp)
label232:
	j label228
label230:
	j label209
label211:
	j label205
label207:
	addi $t0, $fp, -28
	sw $t0, -3148($fp)
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 4
	lw $t1, -3152($fp)
	mul $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	lw $t1, -3148($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, 0($t0)
	sw $t1, -3164($fp)
	lw $t0, -3164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3168($fp)
	li $t0, 1
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
	lw $t0, -3184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3188($fp)
	li $t0, 2
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
	lw $t0, -3204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3208($fp)
	li $t0, 3
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
	lw $t0, -3224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3228($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -3248($fp)
	li $t0, 5
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
	lw $t0, -328($fp)
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3276($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -3296($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -3316($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -3336($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
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
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -3376($fp)
	li $t0, 5
	sw $t0, -3380($fp)
	li $t0, 4
	lw $t1, -3380($fp)
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	lw $t1, -3376($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, 0($t0)
	sw $t1, -3392($fp)
	lw $t0, -3392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3396($fp)
	li $t0, 0
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
	lw $t0, -3412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3416($fp)
	li $t0, 1
	sw $t0, -3420($fp)
	li $t0, 4
	lw $t1, -3420($fp)
	mul $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	lw $t1, -3416($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	lw $t1, 0($t0)
	sw $t1, -3432($fp)
	lw $t0, -3432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3436($fp)
	li $t0, 2
	sw $t0, -3440($fp)
	li $t0, 4
	lw $t1, -3440($fp)
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, 0($t0)
	sw $t1, -3452($fp)
	lw $t0, -3452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3456($fp)
	li $t0, 3
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
	lw $t0, -3472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3476($fp)
	li $t0, 4
	sw $t0, -3480($fp)
	li $t0, 4
	lw $t1, -3480($fp)
	mul $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	lw $t1, -3476($fp)
	add $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	lw $t1, 0($t0)
	sw $t1, -3492($fp)
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3496($fp)
	li $t0, 5
	sw $t0, -3500($fp)
	li $t0, 4
	lw $t1, -3500($fp)
	mul $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, -3496($fp)
	add $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	lw $t1, 0($t0)
	sw $t1, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3516($fp)
	li $t0, 6
	sw $t0, -3520($fp)
	li $t0, 4
	lw $t1, -3520($fp)
	mul $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	lw $t1, -3516($fp)
	add $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	lw $t1, 0($t0)
	sw $t1, -3532($fp)
	lw $t0, -3532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3536($fp)
	li $t0, 7
	sw $t0, -3540($fp)
	li $t0, 4
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, -3536($fp)
	add $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, 0($t0)
	sw $t1, -3552($fp)
	lw $t0, -3552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3556($fp)
	li $t0, 8
	sw $t0, -3560($fp)
	li $t0, 4
	lw $t1, -3560($fp)
	mul $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	lw $t1, 0($t0)
	sw $t1, -3572($fp)
	lw $t0, -3572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -3576($fp)
	li $t0, 9
	sw $t0, -3580($fp)
	li $t0, 4
	lw $t1, -3580($fp)
	mul $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, -3576($fp)
	add $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	lw $t1, 0($t0)
	sw $t1, -3592($fp)
	lw $t0, -3592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3612($fp)
	li $t0, 0
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
	addi $t0, $fp, -132
	sw $t0, -3632($fp)
	li $t0, 1
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
	addi $t0, $fp, -132
	sw $t0, -3652($fp)
	li $t0, 2
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
	addi $t0, $fp, -132
	sw $t0, -3672($fp)
	li $t0, 3
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
	addi $t0, $fp, -132
	sw $t0, -3692($fp)
	li $t0, 4
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
	addi $t0, $fp, -132
	sw $t0, -3712($fp)
	li $t0, 5
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
	addi $t0, $fp, -132
	sw $t0, -3732($fp)
	li $t0, 6
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
	addi $t0, $fp, -132
	sw $t0, -3752($fp)
	li $t0, 7
	sw $t0, -3756($fp)
	li $t0, 4
	lw $t1, -3756($fp)
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	lw $t1, 0($t0)
	sw $t1, -3768($fp)
	lw $t0, -3768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3772($fp)
	li $t0, 8
	sw $t0, -3776($fp)
	li $t0, 4
	lw $t1, -3776($fp)
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, 0($t0)
	sw $t1, -3788($fp)
	lw $t0, -3788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3792($fp)
	li $t0, 9
	sw $t0, -3796($fp)
	li $t0, 4
	lw $t1, -3796($fp)
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, -3792($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	lw $t1, 0($t0)
	sw $t1, -3808($fp)
	lw $t0, -3808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -3820($fp)
	li $t0, 0
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
	addi $t0, $fp, -152
	sw $t0, -3840($fp)
	li $t0, 1
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
	addi $t0, $fp, -152
	sw $t0, -3860($fp)
	li $t0, 2
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
	addi $t0, $fp, -152
	sw $t0, -3880($fp)
	li $t0, 3
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
	addi $t0, $fp, -152
	sw $t0, -3900($fp)
	li $t0, 4
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
	addi $t0, $fp, -176
	sw $t0, -3920($fp)
	li $t0, 0
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
	addi $t0, $fp, -176
	sw $t0, -3940($fp)
	li $t0, 1
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
	addi $t0, $fp, -176
	sw $t0, -3960($fp)
	li $t0, 2
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
	addi $t0, $fp, -176
	sw $t0, -3980($fp)
	li $t0, 3
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
	addi $t0, $fp, -176
	sw $t0, -4000($fp)
	li $t0, 4
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
	addi $t0, $fp, -176
	sw $t0, -4020($fp)
	li $t0, 5
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
	lw $t0, -1312($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4072($fp)
	li $t0, 0
	sw $t0, -4076($fp)
	li $t0, 166
	sw $t0, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label263
label265:
	lw $t0, -1312($fp)
	sw $t0, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label264:
	li $t0, 63871
	sw $t0, -4088($fp)
	lw $t1, -4088($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -4076($fp)
label263:
	addi $t0, $fp, -176
	sw $t0, -4092($fp)
	li $t0, 1
	sw $t0, -4096($fp)
	li $t0, 4
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, 0($t0)
	sw $t1, -4108($fp)
	li $t0, 0
	sw $t0, -4112($fp)
	li $t0, 36539
	sw $t0, -4116($fp)
	lw $t0, -1396($fp)
	sw $t0, -4120($fp)
	lw $t0, -4116($fp)
	lw $t1, -4120($fp)
	mul $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label268
label268:
	li $t0, 27024
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -4112($fp)
label267:
	li $t0, 0
	sw $t0, -4132($fp)
	lw $t0, -772($fp)
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label269:
	li $t0, 1
	sw $t0, -4132($fp)
label270:
	li $t0, 0
	sw $t0, -4140($fp)
	lw $t0, -1396($fp)
	sw $t0, -4144($fp)
	lw $t0, -1036($fp)
	sw $t0, -4148($fp)
	lw $t0, -4144($fp)
	lw $t1, -4148($fp)
	add $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t1, -4152($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label273
label273:
	li $t0, 59414
	sw $t0, -4156($fp)
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -4140($fp)
label272:
	addi $sp, $sp, -4
	lw $t0, -4076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4140($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4160($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -4164($fp)
	lw $t0, -772($fp)
	sw $t0, -4168($fp)
	lw $t0, -1348($fp)
	sw $t0, -4172($fp)
	lw $t1, -4168($fp)
	lw $t2, -4172($fp)
	beq $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -4164($fp)
label275:
	li $t0, 1628
	sw $t0, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	lw $t0, -1396($fp)
	sw $t0, -4184($fp)
	li $t0, 46346
	sw $t0, -4188($fp)
	lw $t1, -4184($fp)
	lw $t2, -4188($fp)
	bge $t1, $t2, label278
	j label277
label278:
	li $t0, 17307
	sw $t0, -4192($fp)
	lw $t1, -4192($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -4180($fp)
label277:
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4196($fp)
	addi $sp, $sp, 16
	lw $t0, -4160($fp)
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t1, -4200($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label261:
	li $t0, 16441
	sw $t0, -4204($fp)
	lw $t1, -4204($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -4072($fp)
label260:
	lw $ra, -4($fp)
	lw $v0, -4072($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -656
	li $t0, 42682
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
	li $t0, 29612
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
	li $t0, 32470
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
	li $t0, 9396
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
	li $t0, 9496
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
	li $t0, 64301
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
	li $t0, 14547
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
	li $t0, 49807
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
	li $t0, 36714
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
	li $t0, 48042
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
label279:
	lw $t0, 4($fp)
	sw $t0, -272($fp)
	lw $t0, 8($fp)
	sw $t0, -276($fp)
	lw $t0, -272($fp)
	lw $t1, -276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -280($fp)
	li $t0, 0
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	lw $t0, 8($fp)
	sw $t0, -292($fp)
	li $t0, 0
	lw $t1, -292($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -288($fp)
label283:
	li $t0, 23188
	sw $t0, -300($fp)
	lw $t0, 12($fp)
	sw $t0, -304($fp)
	lw $t0, -300($fp)
	lw $t1, -304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -308($fp)
	lw $t0, -288($fp)
	lw $t1, -308($fp)
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t1, -284($fp)
	lw $t2, -312($fp)
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 0
	sw $t0, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	lw $t0, -264($fp)
	sw $t0, -324($fp)
	li $t0, 0
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, 8($fp)
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, 12($fp)
	sw $t0, -340($fp)
	li $t0, 27269
	sw $t0, -344($fp)
	lw $t0, -340($fp)
	lw $t1, -344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -348($fp)
	li $t0, 0
	lw $t1, -348($fp)
	sub $t0, $t0, $t1
	sw $t0, -352($fp)
	li $t0, 0
	sw $t0, -356($fp)
	lw $t0, 12($fp)
	sw $t0, -360($fp)
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -356($fp)
label289:
	li $t0, 0
	sw $t0, -364($fp)
	lw $t0, 16($fp)
	sw $t0, -368($fp)
	lw $t0, 4($fp)
	sw $t0, -372($fp)
	lw $t0, -368($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	li $t0, 8884
	sw $t0, -380($fp)
	lw $t1, -376($fp)
	lw $t2, -380($fp)
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -364($fp)
label291:
	lw $t0, 16($fp)
	sw $t0, -384($fp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -388($fp)
	addi $sp, $sp, 24
	jal f10
	sw $v0, -392($fp)
	addi $sp, $sp, 4
	li $t0, 46640
	sw $t0, -396($fp)
	lw $t0, -392($fp)
	lw $t1, -396($fp)
	mul $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t1, -388($fp)
	lw $t2, -400($fp)
	bgt $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -320($fp)
label287:
	lw $t0, 4($fp)
	sw $t0, -404($fp)
	lw $t1, -320($fp)
	lw $t2, -404($fp)
	beq $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -316($fp)
label285:
	j label279
label281:
	addi $t0, $fp, -40
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 4
	lw $t1, -412($fp)
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	lw $t1, 0($t0)
	sw $t1, -424($fp)
	lw $t0, -424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -428($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -448($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -468($fp)
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 8
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
	lw $t0, -264($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -592($fp)
	addi $t0, $fp, -40
	sw $t0, -596($fp)
	lw $t0, 16($fp)
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
	li $t0, 24085
	sw $t0, -616($fp)
	lw $t0, -612($fp)
	lw $t1, -616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -620($fp)
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label294
label295:
	li $t0, 12223
	sw $t0, -624($fp)
	lw $t0, 12($fp)
	sw $t0, -628($fp)
	lw $t0, -624($fp)
	lw $t1, -628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -632($fp)
	li $t0, 27016
	sw $t0, -636($fp)
	lw $t0, -632($fp)
	lw $t1, -636($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t1, -640($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label294
label294:
	addi $t0, $fp, -40
	sw $t0, -644($fp)
	li $t0, 1
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
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -592($fp)
label293:
	lw $ra, -4($fp)
	lw $v0, -592($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -16024
	li $t0, 27361
	sw $t0, -484($fp)
	addi $t0, $fp, -28
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
	li $t0, 46962
	sw $t0, -508($fp)
	addi $t0, $fp, -28
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
	li $t0, 32509
	sw $t0, -532($fp)
	addi $t0, $fp, -28
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
	li $t0, 54385
	sw $t0, -556($fp)
	addi $t0, $fp, -28
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
	li $t0, 47891
	sw $t0, -580($fp)
	addi $t0, $fp, -28
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
	li $t0, 53450
	sw $t0, -604($fp)
	addi $t0, $fp, -28
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
	li $t0, 54551
	sw $t0, -628($fp)
	addi $t0, $fp, -60
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
	li $t0, 46226
	sw $t0, -652($fp)
	addi $t0, $fp, -60
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
	li $t0, 34261
	sw $t0, -676($fp)
	addi $t0, $fp, -60
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
	li $t0, 6323
	sw $t0, -700($fp)
	addi $t0, $fp, -60
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
	li $t0, 47854
	sw $t0, -724($fp)
	addi $t0, $fp, -60
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
	li $t0, 50702
	sw $t0, -748($fp)
	addi $t0, $fp, -60
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
	li $t0, 49005
	sw $t0, -772($fp)
	addi $t0, $fp, -60
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
	li $t0, 11930
	sw $t0, -796($fp)
	addi $t0, $fp, -60
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
	li $t0, 17636
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 58401
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 21427
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 16401
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 7412
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 5698
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 53116
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 55454
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 28887
	sw $t0, -916($fp)
	addi $t0, $fp, -76
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
	li $t0, 62000
	sw $t0, -940($fp)
	addi $t0, $fp, -76
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
	li $t0, 17187
	sw $t0, -964($fp)
	addi $t0, $fp, -76
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
	li $t0, 9991
	sw $t0, -988($fp)
	addi $t0, $fp, -76
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
	li $t0, 20549
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 29410
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 37007
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 8097
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 25379
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 64369
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 55060
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 57888
	sw $t0, -1096($fp)
	addi $t0, $fp, -84
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
	li $t0, 53218
	sw $t0, -1120($fp)
	addi $t0, $fp, -84
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
	li $t0, 37415
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	li $t0, 45803
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	li $t0, 42234
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 18105
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 14528
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 48557
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 423
	sw $t0, -1216($fp)
	addi $t0, $fp, -96
	sw $t0, -1220($fp)
	li $t0, 0
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
	li $t0, 65230
	sw $t0, -1240($fp)
	addi $t0, $fp, -96
	sw $t0, -1244($fp)
	li $t0, 1
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
	li $t0, 32026
	sw $t0, -1264($fp)
	addi $t0, $fp, -96
	sw $t0, -1268($fp)
	li $t0, 2
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
	li $t0, 12353
	sw $t0, -1288($fp)
	addi $t0, $fp, -128
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
	li $t0, 17330
	sw $t0, -1312($fp)
	addi $t0, $fp, -128
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
	li $t0, 24891
	sw $t0, -1336($fp)
	addi $t0, $fp, -128
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
	li $t0, 33780
	sw $t0, -1360($fp)
	addi $t0, $fp, -128
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
	li $t0, 33732
	sw $t0, -1384($fp)
	addi $t0, $fp, -128
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
	li $t0, 32303
	sw $t0, -1408($fp)
	addi $t0, $fp, -128
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
	li $t0, 39479
	sw $t0, -1432($fp)
	addi $t0, $fp, -128
	sw $t0, -1436($fp)
	li $t0, 6
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
	li $t0, 21312
	sw $t0, -1456($fp)
	addi $t0, $fp, -128
	sw $t0, -1460($fp)
	li $t0, 7
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
	li $t0, 22221
	sw $t0, -1480($fp)
	addi $t0, $fp, -140
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
	li $t0, 2830
	sw $t0, -1504($fp)
	addi $t0, $fp, -140
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
	li $t0, 17776
	sw $t0, -1528($fp)
	addi $t0, $fp, -140
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
	li $t0, 39408
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 12821
	sw $t0, -1564($fp)
	addi $t0, $fp, -180
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
	li $t0, 38325
	sw $t0, -1588($fp)
	addi $t0, $fp, -180
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
	li $t0, 3282
	sw $t0, -1612($fp)
	addi $t0, $fp, -180
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
	li $t0, 49829
	sw $t0, -1636($fp)
	addi $t0, $fp, -180
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
	li $t0, 46423
	sw $t0, -1660($fp)
	addi $t0, $fp, -180
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
	li $t0, 28661
	sw $t0, -1684($fp)
	addi $t0, $fp, -180
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
	li $t0, 48662
	sw $t0, -1708($fp)
	addi $t0, $fp, -180
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
	li $t0, 35947
	sw $t0, -1732($fp)
	addi $t0, $fp, -180
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
	li $t0, 21014
	sw $t0, -1756($fp)
	addi $t0, $fp, -180
	sw $t0, -1760($fp)
	li $t0, 8
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
	li $t0, 36344
	sw $t0, -1780($fp)
	addi $t0, $fp, -180
	sw $t0, -1784($fp)
	li $t0, 9
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
	li $t0, 7826
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 1281
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 13042
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 25931
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 15809
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	li $t0, 61599
	sw $t0, -1864($fp)
	addi $t0, $fp, -188
	sw $t0, -1868($fp)
	li $t0, 0
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
	li $t0, 26354
	sw $t0, -1888($fp)
	addi $t0, $fp, -188
	sw $t0, -1892($fp)
	li $t0, 1
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
	li $t0, 15503
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	li $t0, 28089
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 38707
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	li $t0, 32833
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	li $t0, 52980
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	li $t0, 6952
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	li $t0, 1029
	sw $t0, -1984($fp)
	addi $t0, $fp, -216
	sw $t0, -1988($fp)
	li $t0, 0
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
	li $t0, 19747
	sw $t0, -2008($fp)
	addi $t0, $fp, -216
	sw $t0, -2012($fp)
	li $t0, 1
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
	li $t0, 46431
	sw $t0, -2032($fp)
	addi $t0, $fp, -216
	sw $t0, -2036($fp)
	li $t0, 2
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
	li $t0, 22341
	sw $t0, -2056($fp)
	addi $t0, $fp, -216
	sw $t0, -2060($fp)
	li $t0, 3
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
	li $t0, 41968
	sw $t0, -2080($fp)
	addi $t0, $fp, -216
	sw $t0, -2084($fp)
	li $t0, 4
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
	li $t0, 49261
	sw $t0, -2104($fp)
	addi $t0, $fp, -216
	sw $t0, -2108($fp)
	li $t0, 5
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
	li $t0, 40117
	sw $t0, -2128($fp)
	addi $t0, $fp, -216
	sw $t0, -2132($fp)
	li $t0, 6
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
	li $t0, 15840
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -2160($fp)
	li $t0, 62082
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	sw $t0, -2172($fp)
	li $t0, 12907
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	li $t0, 19122
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	li $t0, 46375
	sw $t0, -2200($fp)
	addi $t0, $fp, -240
	sw $t0, -2204($fp)
	li $t0, 0
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
	li $t0, 59330
	sw $t0, -2224($fp)
	addi $t0, $fp, -240
	sw $t0, -2228($fp)
	li $t0, 1
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
	li $t0, 47784
	sw $t0, -2248($fp)
	addi $t0, $fp, -240
	sw $t0, -2252($fp)
	li $t0, 2
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
	li $t0, 29501
	sw $t0, -2272($fp)
	addi $t0, $fp, -240
	sw $t0, -2276($fp)
	li $t0, 3
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
	li $t0, 29741
	sw $t0, -2296($fp)
	addi $t0, $fp, -240
	sw $t0, -2300($fp)
	li $t0, 4
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
	li $t0, 3262
	sw $t0, -2320($fp)
	addi $t0, $fp, -240
	sw $t0, -2324($fp)
	li $t0, 5
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
	li $t0, 310
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	li $t0, 37567
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	li $t0, 4543
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	li $t0, 13352
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	li $t0, 63498
	sw $t0, -2392($fp)
	addi $t0, $fp, -260
	sw $t0, -2396($fp)
	li $t0, 0
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
	li $t0, 20352
	sw $t0, -2416($fp)
	addi $t0, $fp, -260
	sw $t0, -2420($fp)
	li $t0, 1
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
	li $t0, 9416
	sw $t0, -2440($fp)
	addi $t0, $fp, -260
	sw $t0, -2444($fp)
	li $t0, 2
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
	li $t0, 24316
	sw $t0, -2464($fp)
	addi $t0, $fp, -260
	sw $t0, -2468($fp)
	li $t0, 3
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
	li $t0, 35855
	sw $t0, -2488($fp)
	addi $t0, $fp, -260
	sw $t0, -2492($fp)
	li $t0, 4
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
	li $t0, 37505
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	li $t0, 63023
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	li $t0, 3152
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	li $t0, 24950
	sw $t0, -2548($fp)
	addi $t0, $fp, -292
	sw $t0, -2552($fp)
	li $t0, 0
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
	li $t0, 4439
	sw $t0, -2572($fp)
	addi $t0, $fp, -292
	sw $t0, -2576($fp)
	li $t0, 1
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
	li $t0, 4182
	sw $t0, -2596($fp)
	addi $t0, $fp, -292
	sw $t0, -2600($fp)
	li $t0, 2
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
	li $t0, 44697
	sw $t0, -2620($fp)
	addi $t0, $fp, -292
	sw $t0, -2624($fp)
	li $t0, 3
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
	li $t0, 50870
	sw $t0, -2644($fp)
	addi $t0, $fp, -292
	sw $t0, -2648($fp)
	li $t0, 4
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2648($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2644($fp)
	lw $t1, -2660($fp)
	sw $t0, 0($t1)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	li $t0, 26523
	sw $t0, -2668($fp)
	addi $t0, $fp, -292
	sw $t0, -2672($fp)
	li $t0, 5
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2672($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2668($fp)
	lw $t1, -2684($fp)
	sw $t0, 0($t1)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	li $t0, 21130
	sw $t0, -2692($fp)
	addi $t0, $fp, -292
	sw $t0, -2696($fp)
	li $t0, 6
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2696($fp)
	lw $t1, -2704($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2692($fp)
	lw $t1, -2708($fp)
	sw $t0, 0($t1)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	li $t0, 34595
	sw $t0, -2716($fp)
	addi $t0, $fp, -292
	sw $t0, -2720($fp)
	li $t0, 7
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
	li $t0, 1105
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	sw $t0, -2748($fp)
	li $t0, 36970
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	sw $t0, -2760($fp)
	li $t0, 31142
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	sw $t0, -2772($fp)
	li $t0, 14012
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -2784($fp)
	li $t0, 56093
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -2796($fp)
	li $t0, 11981
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	sw $t0, -2808($fp)
	li $t0, 7806
	sw $t0, -2812($fp)
	addi $t0, $fp, -312
	sw $t0, -2816($fp)
	li $t0, 0
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
	li $t0, 38341
	sw $t0, -2836($fp)
	addi $t0, $fp, -312
	sw $t0, -2840($fp)
	li $t0, 1
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
	li $t0, 41483
	sw $t0, -2860($fp)
	addi $t0, $fp, -312
	sw $t0, -2864($fp)
	li $t0, 2
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
	li $t0, 37547
	sw $t0, -2884($fp)
	addi $t0, $fp, -312
	sw $t0, -2888($fp)
	li $t0, 3
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
	li $t0, 41603
	sw $t0, -2908($fp)
	addi $t0, $fp, -312
	sw $t0, -2912($fp)
	li $t0, 4
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
	li $t0, 41793
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -2940($fp)
	li $t0, 9578
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -2952($fp)
	li $t0, 46146
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -2964($fp)
	li $t0, 55145
	sw $t0, -2968($fp)
	addi $t0, $fp, -340
	sw $t0, -2972($fp)
	li $t0, 0
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
	li $t0, 7540
	sw $t0, -2992($fp)
	addi $t0, $fp, -340
	sw $t0, -2996($fp)
	li $t0, 1
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
	li $t0, 962
	sw $t0, -3016($fp)
	addi $t0, $fp, -340
	sw $t0, -3020($fp)
	li $t0, 2
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
	li $t0, 64561
	sw $t0, -3040($fp)
	addi $t0, $fp, -340
	sw $t0, -3044($fp)
	li $t0, 3
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
	li $t0, 31856
	sw $t0, -3064($fp)
	addi $t0, $fp, -340
	sw $t0, -3068($fp)
	li $t0, 4
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3068($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3064($fp)
	lw $t1, -3080($fp)
	sw $t0, 0($t1)
	lw $t0, -3080($fp)
	lw $t1, 0($t0)
	sw $t1, -3084($fp)
	li $t0, 36817
	sw $t0, -3088($fp)
	addi $t0, $fp, -340
	sw $t0, -3092($fp)
	li $t0, 5
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3092($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3088($fp)
	lw $t1, -3104($fp)
	sw $t0, 0($t1)
	lw $t0, -3104($fp)
	lw $t1, 0($t0)
	sw $t1, -3108($fp)
	li $t0, 36531
	sw $t0, -3112($fp)
	addi $t0, $fp, -340
	sw $t0, -3116($fp)
	li $t0, 6
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3116($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3112($fp)
	lw $t1, -3128($fp)
	sw $t0, 0($t1)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	li $t0, 29343
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	sw $t0, -3144($fp)
	li $t0, 39969
	sw $t0, -3148($fp)
	addi $t0, $fp, -380
	sw $t0, -3152($fp)
	li $t0, 0
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
	li $t0, 61481
	sw $t0, -3172($fp)
	addi $t0, $fp, -380
	sw $t0, -3176($fp)
	li $t0, 1
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
	li $t0, 33783
	sw $t0, -3196($fp)
	addi $t0, $fp, -380
	sw $t0, -3200($fp)
	li $t0, 2
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
	li $t0, 44151
	sw $t0, -3220($fp)
	addi $t0, $fp, -380
	sw $t0, -3224($fp)
	li $t0, 3
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
	li $t0, 40642
	sw $t0, -3244($fp)
	addi $t0, $fp, -380
	sw $t0, -3248($fp)
	li $t0, 4
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
	li $t0, 19117
	sw $t0, -3268($fp)
	addi $t0, $fp, -380
	sw $t0, -3272($fp)
	li $t0, 5
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
	li $t0, 5139
	sw $t0, -3292($fp)
	addi $t0, $fp, -380
	sw $t0, -3296($fp)
	li $t0, 6
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
	li $t0, 61772
	sw $t0, -3316($fp)
	addi $t0, $fp, -380
	sw $t0, -3320($fp)
	li $t0, 7
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
	li $t0, 53713
	sw $t0, -3340($fp)
	addi $t0, $fp, -380
	sw $t0, -3344($fp)
	li $t0, 8
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
	li $t0, 6244
	sw $t0, -3364($fp)
	addi $t0, $fp, -380
	sw $t0, -3368($fp)
	li $t0, 9
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
	li $t0, 33207
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	sw $t0, -3396($fp)
	li $t0, 19319
	sw $t0, -3400($fp)
	addi $t0, $fp, -412
	sw $t0, -3404($fp)
	li $t0, 0
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
	li $t0, 20256
	sw $t0, -3424($fp)
	addi $t0, $fp, -412
	sw $t0, -3428($fp)
	li $t0, 1
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
	li $t0, 23764
	sw $t0, -3448($fp)
	addi $t0, $fp, -412
	sw $t0, -3452($fp)
	li $t0, 2
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
	li $t0, 31300
	sw $t0, -3472($fp)
	addi $t0, $fp, -412
	sw $t0, -3476($fp)
	li $t0, 3
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
	li $t0, 28062
	sw $t0, -3496($fp)
	addi $t0, $fp, -412
	sw $t0, -3500($fp)
	li $t0, 4
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
	li $t0, 62105
	sw $t0, -3520($fp)
	addi $t0, $fp, -412
	sw $t0, -3524($fp)
	li $t0, 5
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3524($fp)
	lw $t1, -3532($fp)
	add $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3520($fp)
	lw $t1, -3536($fp)
	sw $t0, 0($t1)
	lw $t0, -3536($fp)
	lw $t1, 0($t0)
	sw $t1, -3540($fp)
	li $t0, 7247
	sw $t0, -3544($fp)
	addi $t0, $fp, -412
	sw $t0, -3548($fp)
	li $t0, 6
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3548($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3544($fp)
	lw $t1, -3560($fp)
	sw $t0, 0($t1)
	lw $t0, -3560($fp)
	lw $t1, 0($t0)
	sw $t1, -3564($fp)
	li $t0, 73
	sw $t0, -3568($fp)
	addi $t0, $fp, -412
	sw $t0, -3572($fp)
	li $t0, 7
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3572($fp)
	lw $t1, -3580($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3568($fp)
	lw $t1, -3584($fp)
	sw $t0, 0($t1)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	li $t0, 38172
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -3600($fp)
	li $t0, 49040
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	sw $t0, -3612($fp)
	li $t0, 9651
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	sw $t0, -3624($fp)
	li $t0, 18782
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	sw $t0, -3636($fp)
	li $t0, 38650
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	sw $t0, -3648($fp)
	li $t0, 17191
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	sw $t0, -3660($fp)
	li $t0, 19744
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -3672($fp)
	li $t0, 37675
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3684($fp)
	li $t0, 49047
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -3696($fp)
	li $t0, 56561
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -3708($fp)
	li $t0, 8670
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	sw $t0, -3720($fp)
	li $t0, 12854
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	sw $t0, -3732($fp)
	li $t0, 30994
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	sw $t0, -3744($fp)
	li $t0, 4615
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	sw $t0, -3756($fp)
	li $t0, 46637
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	sw $t0, -3768($fp)
	li $t0, 9610
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -3780($fp)
	li $t0, 45258
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	sw $t0, -3792($fp)
	li $t0, 219
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -3804($fp)
	li $t0, 14749
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3816($fp)
	li $t0, 41494
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	sw $t0, -3828($fp)
	li $t0, 53932
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	sw $t0, -3840($fp)
	li $t0, 20993
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	sw $t0, -3852($fp)
	li $t0, 9165
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	sw $t0, -3864($fp)
	li $t0, 7715
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	sw $t0, -3876($fp)
	li $t0, 41249
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	sw $t0, -3888($fp)
	li $t0, 32929
	sw $t0, -3892($fp)
	addi $t0, $fp, -440
	sw $t0, -3896($fp)
	li $t0, 0
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
	li $t0, 39015
	sw $t0, -3916($fp)
	addi $t0, $fp, -440
	sw $t0, -3920($fp)
	li $t0, 1
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
	li $t0, 3775
	sw $t0, -3940($fp)
	addi $t0, $fp, -440
	sw $t0, -3944($fp)
	li $t0, 2
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
	li $t0, 29498
	sw $t0, -3964($fp)
	addi $t0, $fp, -440
	sw $t0, -3968($fp)
	li $t0, 3
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
	li $t0, 46263
	sw $t0, -3988($fp)
	addi $t0, $fp, -440
	sw $t0, -3992($fp)
	li $t0, 4
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
	li $t0, 3848
	sw $t0, -4012($fp)
	addi $t0, $fp, -440
	sw $t0, -4016($fp)
	li $t0, 5
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
	li $t0, 2134
	sw $t0, -4036($fp)
	addi $t0, $fp, -440
	sw $t0, -4040($fp)
	li $t0, 6
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
	li $t0, 29767
	sw $t0, -4060($fp)
	addi $t0, $fp, -456
	sw $t0, -4064($fp)
	li $t0, 0
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
	li $t0, 13499
	sw $t0, -4084($fp)
	addi $t0, $fp, -456
	sw $t0, -4088($fp)
	li $t0, 1
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
	li $t0, 20916
	sw $t0, -4108($fp)
	addi $t0, $fp, -456
	sw $t0, -4112($fp)
	li $t0, 2
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
	li $t0, 2881
	sw $t0, -4132($fp)
	addi $t0, $fp, -456
	sw $t0, -4136($fp)
	li $t0, 3
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4136($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4132($fp)
	lw $t1, -4148($fp)
	sw $t0, 0($t1)
	lw $t0, -4148($fp)
	lw $t1, 0($t0)
	sw $t1, -4152($fp)
	li $t0, 30690
	sw $t0, -4156($fp)
	addi $t0, $fp, -480
	sw $t0, -4160($fp)
	li $t0, 0
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4160($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4156($fp)
	lw $t1, -4172($fp)
	sw $t0, 0($t1)
	lw $t0, -4172($fp)
	lw $t1, 0($t0)
	sw $t1, -4176($fp)
	li $t0, 40660
	sw $t0, -4180($fp)
	addi $t0, $fp, -480
	sw $t0, -4184($fp)
	li $t0, 1
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4184($fp)
	lw $t1, -4192($fp)
	add $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4180($fp)
	lw $t1, -4196($fp)
	sw $t0, 0($t1)
	lw $t0, -4196($fp)
	lw $t1, 0($t0)
	sw $t1, -4200($fp)
	li $t0, 40557
	sw $t0, -4204($fp)
	addi $t0, $fp, -480
	sw $t0, -4208($fp)
	li $t0, 2
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4208($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4204($fp)
	lw $t1, -4220($fp)
	sw $t0, 0($t1)
	lw $t0, -4220($fp)
	lw $t1, 0($t0)
	sw $t1, -4224($fp)
	li $t0, 14201
	sw $t0, -4228($fp)
	addi $t0, $fp, -480
	sw $t0, -4232($fp)
	li $t0, 3
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4232($fp)
	lw $t1, -4240($fp)
	add $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4228($fp)
	lw $t1, -4244($fp)
	sw $t0, 0($t1)
	lw $t0, -4244($fp)
	lw $t1, 0($t0)
	sw $t1, -4248($fp)
	li $t0, 31685
	sw $t0, -4252($fp)
	addi $t0, $fp, -480
	sw $t0, -4256($fp)
	li $t0, 4
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4256($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4252($fp)
	lw $t1, -4268($fp)
	sw $t0, 0($t1)
	lw $t0, -4268($fp)
	lw $t1, 0($t0)
	sw $t1, -4272($fp)
	li $t0, 49227
	sw $t0, -4276($fp)
	addi $t0, $fp, -480
	sw $t0, -4280($fp)
	li $t0, 5
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4280($fp)
	lw $t1, -4288($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4276($fp)
	lw $t1, -4292($fp)
	sw $t0, 0($t1)
	lw $t0, -4292($fp)
	lw $t1, 0($t0)
	sw $t1, -4296($fp)
	li $t0, 27055
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -4308($fp)
	li $t0, 62680
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	sw $t0, -4320($fp)
	li $t0, 53843
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	sw $t0, -4332($fp)
	li $t0, 8157
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	sw $t0, -4344($fp)
	li $t0, 6754
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	sw $t0, -4356($fp)
	li $t0, 33565
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	sw $t0, -4368($fp)
	li $t0, 8376
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	sw $t0, -4380($fp)
label296:
	lw $t0, -4316($fp)
	sw $t0, -4384($fp)
	li $t0, 0
	sw $t0, -4388($fp)
	lw $t0, -3776($fp)
	sw $t0, -4392($fp)
	li $t0, 62308
	sw $t0, -4396($fp)
	lw $t0, -4392($fp)
	lw $t1, -4396($fp)
	sub $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t1, -4400($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label301:
	li $t0, 42496
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -4388($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -4384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4388($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4408($fp)
	addi $sp, $sp, 12
	lw $t0, -872($fp)
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -4416($fp)
	li $t0, 21503
	sw $t0, -4420($fp)
	li $t0, 9523
	sw $t0, -4424($fp)
	lw $t0, -4420($fp)
	lw $t1, -4424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4428($fp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4432($fp)
	addi $sp, $sp, 16
	lw $t1, -4432($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 0
	sw $t0, -4436($fp)
	li $t0, 0
	sw $t0, -4440($fp)
	lw $t0, -2384($fp)
	sw $t0, -4444($fp)
	li $t0, 43502
	sw $t0, -4448($fp)
	lw $t0, -4444($fp)
	lw $t1, -4448($fp)
	sub $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -1148($fp)
	sw $t0, -4456($fp)
	lw $t1, -4452($fp)
	lw $t2, -4456($fp)
	bge $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -4440($fp)
label305:
	jal f10
	sw $v0, -4460($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -180
	sw $t0, -4464($fp)
	li $t0, 6
	sw $t0, -4468($fp)
	li $t0, 4
	lw $t1, -4468($fp)
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, 0($t0)
	sw $t1, -4480($fp)
	lw $t0, -1808($fp)
	sw $t0, -4484($fp)
	lw $t0, -4480($fp)
	lw $t1, -4484($fp)
	sub $t0, $t0, $t1
	sw $t0, -4488($fp)
	li $t0, 0
	sw $t0, -4492($fp)
	li $t0, 0
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	li $t0, 18689
	sw $t0, -4504($fp)
	li $t0, 4487
	sw $t0, -4508($fp)
	lw $t1, -4504($fp)
	lw $t2, -4508($fp)
	beq $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -4500($fp)
label311:
	lw $t0, -1976($fp)
	sw $t0, -4512($fp)
	lw $t1, -4500($fp)
	lw $t2, -4512($fp)
	beq $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -4496($fp)
label309:
	addi $t0, $fp, -60
	sw $t0, -4516($fp)
	lw $t0, -2180($fp)
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
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4532($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4536($fp)
	addi $sp, $sp, 12
	lw $t1, -4536($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -4492($fp)
label307:
	addi $sp, $sp, -4
	lw $t0, -4440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4540($fp)
	addi $sp, $sp, 20
	li $t0, 21984
	sw $t0, -4544($fp)
	lw $t1, -4540($fp)
	lw $t2, -4544($fp)
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -4436($fp)
label303:
	j label296
label298:
	li $t0, 15581
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	sw $t0, -4568($fp)
	li $t0, 24229
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	sw $t0, -4580($fp)
	li $t0, 25832
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	sw $t0, -4592($fp)
	li $t0, 17715
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	sw $t0, -4604($fp)
	li $t0, 53997
	sw $t0, -4608($fp)
	addi $t0, $fp, -4556
	sw $t0, -4612($fp)
	li $t0, 0
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -4612($fp)
	lw $t1, -4620($fp)
	add $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4608($fp)
	lw $t1, -4624($fp)
	sw $t0, 0($t1)
	lw $t0, -4624($fp)
	lw $t1, 0($t0)
	sw $t1, -4628($fp)
	li $t0, 39331
	sw $t0, -4632($fp)
	addi $t0, $fp, -4556
	sw $t0, -4636($fp)
	li $t0, 1
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4636($fp)
	lw $t1, -4644($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4632($fp)
	lw $t1, -4648($fp)
	sw $t0, 0($t1)
	lw $t0, -4648($fp)
	lw $t1, 0($t0)
	sw $t1, -4652($fp)
	li $t0, 38632
	sw $t0, -4656($fp)
	addi $t0, $fp, -4556
	sw $t0, -4660($fp)
	li $t0, 2
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4660($fp)
	lw $t1, -4668($fp)
	add $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4656($fp)
	lw $t1, -4672($fp)
	sw $t0, 0($t1)
	lw $t0, -4672($fp)
	lw $t1, 0($t0)
	sw $t1, -4676($fp)
	li $t0, 56878
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	sw $t0, -4688($fp)
	li $t0, 4485
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	sw $t0, -4700($fp)
	li $t0, 13756
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	sw $t0, -4712($fp)
	li $t0, 31899
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	sw $t0, -4724($fp)
	li $t0, 18686
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	sw $t0, -4736($fp)
	li $t0, 45442
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	sw $t0, -4748($fp)
	li $t0, 15591
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	sw $t0, -4760($fp)
	li $t0, 45741
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	sw $t0, -4772($fp)
	li $t0, 42586
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	sw $t0, -4784($fp)
	li $t0, 3898
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	sw $t0, -4796($fp)
	lw $t0, -3716($fp)
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	sw $t0, -4804($fp)
	li $t0, 0
	sw $t0, -4808($fp)
	lw $t0, -1064($fp)
	sw $t0, -4812($fp)
	li $t0, 47803
	sw $t0, -4816($fp)
	li $t0, 0
	sw $t0, -4820($fp)
	lw $t0, -4684($fp)
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label317
label317:
	li $t0, 59046
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -4820($fp)
label316:
	li $t0, 0
	sw $t0, -4832($fp)
	li $t0, 46986
	sw $t0, -4836($fp)
	lw $t0, -4732($fp)
	sw $t0, -4840($fp)
	lw $t0, -4836($fp)
	lw $t1, -4840($fp)
	mul $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -3392($fp)
	sw $t0, -4848($fp)
	lw $t1, -4844($fp)
	lw $t2, -4848($fp)
	beq $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -4832($fp)
label319:
	addi $sp, $sp, -4
	lw $t0, -4812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4832($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4852($fp)
	addi $sp, $sp, 20
	lw $t1, -4852($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label314
label314:
	lw $t0, -2372($fp)
	sw $t0, -4856($fp)
	lw $t1, -4856($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -4808($fp)
label313:
	li $t0, 0
	sw $t0, -4860($fp)
	li $t0, 0
	sw $t0, -4864($fp)
	li $t0, 5307
	sw $t0, -4868($fp)
	lw $t0, -4744($fp)
	sw $t0, -4872($fp)
	lw $t1, -4868($fp)
	lw $t2, -4872($fp)
	bgt $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -4864($fp)
label323:
	lw $t0, -3824($fp)
	sw $t0, -4876($fp)
	lw $t1, -4864($fp)
	lw $t2, -4876($fp)
	blt $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -4860($fp)
label321:
	li $t0, 0
	sw $t0, -4880($fp)
	li $t0, 37463
	sw $t0, -4884($fp)
	li $t0, 62274
	sw $t0, -4888($fp)
	lw $t1, -4884($fp)
	lw $t2, -4888($fp)
	ble $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -4880($fp)
label325:
	li $t0, 49340
	sw $t0, -4892($fp)
	lw $t0, -3692($fp)
	sw $t0, -4896($fp)
	lw $t0, -4892($fp)
	lw $t1, -4896($fp)
	mul $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4792($fp)
	sw $t0, -4904($fp)
	lw $t0, -4900($fp)
	lw $t1, -4904($fp)
	sub $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4576($fp)
	sw $t0, -4912($fp)
	lw $t0, -1952($fp)
	sw $t0, -4916($fp)
	lw $t0, -4912($fp)
	lw $t1, -4916($fp)
	mul $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -3800($fp)
	sw $t0, -4924($fp)
	lw $t0, -4920($fp)
	lw $t1, -4924($fp)
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	li $t0, 0
	sw $t0, -4932($fp)
	lw $t0, -3872($fp)
	sw $t0, -4936($fp)
	lw $t1, -4936($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label326:
	li $t0, 1
	sw $t0, -4932($fp)
label327:
	lw $t0, -4564($fp)
	sw $t0, -4940($fp)
	lw $t0, -4932($fp)
	lw $t1, -4940($fp)
	sub $t0, $t0, $t1
	sw $t0, -4944($fp)
	li $t0, 0
	sw $t0, -4948($fp)
	lw $t0, -4304($fp)
	sw $t0, -4952($fp)
	lw $t1, -4952($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label329
label331:
	lw $t0, -1808($fp)
	sw $t0, -4956($fp)
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label330:
	lw $t0, -4756($fp)
	sw $t0, -4960($fp)
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -4948($fp)
label329:
	li $t0, 0
	sw $t0, -4964($fp)
	lw $t0, -4340($fp)
	sw $t0, -4968($fp)
	lw $t0, -4732($fp)
	sw $t0, -4972($fp)
	lw $t1, -4968($fp)
	lw $t2, -4972($fp)
	beq $t1, $t2, label332
	j label334
label334:
	li $t0, 53898
	sw $t0, -4976($fp)
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -4964($fp)
label333:
	addi $sp, $sp, -4
	lw $t0, -4908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4964($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4980($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -4984($fp)
	lw $t0, -3788($fp)
	sw $t0, -4988($fp)
	lw $t1, -4988($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -4984($fp)
label336:
	li $t0, 0
	sw $t0, -4992($fp)
	lw $t0, -3692($fp)
	sw $t0, -4996($fp)
	lw $t1, -4996($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label339
label339:
	lw $t0, -4708($fp)
	sw $t0, -5000($fp)
	lw $t1, -5000($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -4992($fp)
label338:
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5004($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -4804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5004($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5008($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -5012($fp)
	lw $t0, -3836($fp)
	sw $t0, -5016($fp)
	lw $t1, -5016($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label340:
	li $t0, 1
	sw $t0, -5012($fp)
label341:
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	mul $t0, $t0, $t1
	sw $t0, -5020($fp)
	addi $t0, $fp, -4556
	sw $t0, -5024($fp)
	lw $t0, -3824($fp)
	sw $t0, -5028($fp)
	li $t0, 4
	lw $t1, -5028($fp)
	mul $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	lw $t1, -5024($fp)
	add $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	lw $t1, 0($t0)
	sw $t1, -5040($fp)
	lw $t0, -5020($fp)
	lw $t1, -5040($fp)
	mul $t0, $t0, $t1
	sw $t0, -5044($fp)
	li $t0, 0
	lw $t1, -5044($fp)
	sub $t0, $t0, $t1
	sw $t0, -5048($fp)
	li $t0, 139
	sw $t0, -5052($fp)
	lw $t0, -3812($fp)
	sw $t0, -5056($fp)
	lw $t0, -5052($fp)
	lw $t1, -5056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5060($fp)
	li $t0, 63533
	sw $t0, -5064($fp)
	lw $t0, -5060($fp)
	lw $t1, -5064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5068($fp)
	lw $t0, -2540($fp)
	sw $t0, -5072($fp)
	li $t0, 51758
	sw $t0, -5076($fp)
	lw $t0, -5072($fp)
	lw $t1, -5076($fp)
	mul $t0, $t0, $t1
	sw $t0, -5080($fp)
	li $t0, 41500
	sw $t0, -5084($fp)
	lw $t0, -5080($fp)
	lw $t1, -5084($fp)
	sub $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -1964($fp)
	sw $t0, -5092($fp)
	li $t0, 476
	sw $t0, -5096($fp)
	lw $t0, -4576($fp)
	sw $t0, -5100($fp)
	lw $t0, -5096($fp)
	lw $t1, -5100($fp)
	mul $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -4768($fp)
	sw $t0, -5108($fp)
	lw $t0, -5104($fp)
	lw $t1, -5108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5112($fp)
	addi $sp, $sp, -4
	lw $t0, -5088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5112($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5116($fp)
	addi $sp, $sp, 16
	lw $t0, -5068($fp)
	lw $t1, -5116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5120($fp)
	lw $t0, -5048($fp)
	lw $t1, -5120($fp)
	add $t0, $t0, $t1
	sw $t0, -5124($fp)
	li $t0, 0
	sw $t0, -5128($fp)
	li $t0, 22460
	sw $t0, -5132($fp)
	lw $t1, -5132($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -5128($fp)
label346:
	li $t0, 1803
	sw $t0, -5136($fp)
	li $t0, 193
	sw $t0, -5140($fp)
	lw $t0, -5136($fp)
	lw $t1, -5140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5144($fp)
	lw $t0, -5128($fp)
	lw $t1, -5144($fp)
	add $t0, $t0, $t1
	sw $t0, -5148($fp)
	li $t0, 0
	sw $t0, -5152($fp)
	lw $t0, -4600($fp)
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label347:
	li $t0, 1
	sw $t0, -5152($fp)
label348:
	addi $t0, $fp, -480
	sw $t0, -5160($fp)
	lw $t0, -4364($fp)
	sw $t0, -5164($fp)
	li $t0, 4
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, 0($t0)
	sw $t1, -5176($fp)
	lw $t0, -5152($fp)
	lw $t1, -5176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5180($fp)
	li $t0, 0
	lw $t1, -5180($fp)
	sub $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t1, -5148($fp)
	lw $t2, -5184($fp)
	blt $t1, $t2, label342
	j label343
label342:
label349:
	addi $t0, $fp, -260
	sw $t0, -5188($fp)
	li $t0, 0
	sw $t0, -5192($fp)
	lw $t0, -4304($fp)
	sw $t0, -5196($fp)
	lw $t0, -3656($fp)
	sw $t0, -5200($fp)
	lw $t1, -5196($fp)
	lw $t2, -5200($fp)
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -5192($fp)
label353:
	lw $t0, -5192($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -5204($fp)
	li $t0, 4
	lw $t1, -5204($fp)
	mul $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	lw $t1, -5188($fp)
	add $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	lw $t1, 0($t0)
	sw $t1, -5216($fp)
	lw $t1, -5216($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 0
	sw $t0, -5220($fp)
	li $t0, 0
	sw $t0, -5224($fp)
	lw $t0, -3788($fp)
	sw $t0, -5228($fp)
	li $t0, 22087
	sw $t0, -5232($fp)
	lw $t1, -5228($fp)
	lw $t2, -5232($fp)
	ble $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -5224($fp)
label357:
	addi $t0, $fp, -28
	sw $t0, -5236($fp)
	li $t0, 2
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
	li $t0, 54190
	sw $t0, -5256($fp)
	lw $t0, -5252($fp)
	lw $t1, -5256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5260($fp)
	lw $t0, -4376($fp)
	sw $t0, -5264($fp)
	li $t0, 0
	lw $t1, -5264($fp)
	sub $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -3392($fp)
	sw $t0, -5272($fp)
	addi $sp, $sp, -4
	lw $t0, -5224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5272($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5276($fp)
	addi $sp, $sp, 20
	li $t0, 58150
	sw $t0, -5280($fp)
	li $t0, 0
	lw $t1, -5280($fp)
	sub $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t1, -5276($fp)
	lw $t2, -5284($fp)
	bgt $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -5220($fp)
label355:
	lw $ra, -4($fp)
	lw $v0, -5220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label349
label351:
	j label344
label343:
	li $t0, 45533
	sw $t0, -5336($fp)
	addi $t0, $fp, -5300
	sw $t0, -5340($fp)
	li $t0, 0
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5340($fp)
	lw $t1, -5348($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5336($fp)
	lw $t1, -5352($fp)
	sw $t0, 0($t1)
	lw $t0, -5352($fp)
	lw $t1, 0($t0)
	sw $t1, -5356($fp)
	li $t0, 26572
	sw $t0, -5360($fp)
	addi $t0, $fp, -5300
	sw $t0, -5364($fp)
	li $t0, 1
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5364($fp)
	lw $t1, -5372($fp)
	add $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5360($fp)
	lw $t1, -5376($fp)
	sw $t0, 0($t1)
	lw $t0, -5376($fp)
	lw $t1, 0($t0)
	sw $t1, -5380($fp)
	li $t0, 6371
	sw $t0, -5384($fp)
	addi $t0, $fp, -5300
	sw $t0, -5388($fp)
	li $t0, 2
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5388($fp)
	lw $t1, -5396($fp)
	add $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5384($fp)
	lw $t1, -5400($fp)
	sw $t0, 0($t1)
	lw $t0, -5400($fp)
	lw $t1, 0($t0)
	sw $t1, -5404($fp)
	li $t0, 11896
	sw $t0, -5408($fp)
	addi $t0, $fp, -5300
	sw $t0, -5412($fp)
	li $t0, 3
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5420($fp)
	lw $t0, -5412($fp)
	lw $t1, -5420($fp)
	add $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -5408($fp)
	lw $t1, -5424($fp)
	sw $t0, 0($t1)
	lw $t0, -5424($fp)
	lw $t1, 0($t0)
	sw $t1, -5428($fp)
	li $t0, 45258
	sw $t0, -5432($fp)
	addi $t0, $fp, -5332
	sw $t0, -5436($fp)
	li $t0, 0
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5436($fp)
	lw $t1, -5444($fp)
	add $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5432($fp)
	lw $t1, -5448($fp)
	sw $t0, 0($t1)
	lw $t0, -5448($fp)
	lw $t1, 0($t0)
	sw $t1, -5452($fp)
	li $t0, 51813
	sw $t0, -5456($fp)
	addi $t0, $fp, -5332
	sw $t0, -5460($fp)
	li $t0, 1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5460($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5456($fp)
	lw $t1, -5472($fp)
	sw $t0, 0($t1)
	lw $t0, -5472($fp)
	lw $t1, 0($t0)
	sw $t1, -5476($fp)
	li $t0, 27487
	sw $t0, -5480($fp)
	addi $t0, $fp, -5332
	sw $t0, -5484($fp)
	li $t0, 2
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5484($fp)
	lw $t1, -5492($fp)
	add $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5480($fp)
	lw $t1, -5496($fp)
	sw $t0, 0($t1)
	lw $t0, -5496($fp)
	lw $t1, 0($t0)
	sw $t1, -5500($fp)
	li $t0, 25463
	sw $t0, -5504($fp)
	addi $t0, $fp, -5332
	sw $t0, -5508($fp)
	li $t0, 3
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5508($fp)
	lw $t1, -5516($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5504($fp)
	lw $t1, -5520($fp)
	sw $t0, 0($t1)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	li $t0, 28863
	sw $t0, -5528($fp)
	addi $t0, $fp, -5332
	sw $t0, -5532($fp)
	li $t0, 4
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5532($fp)
	lw $t1, -5540($fp)
	add $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -5528($fp)
	lw $t1, -5544($fp)
	sw $t0, 0($t1)
	lw $t0, -5544($fp)
	lw $t1, 0($t0)
	sw $t1, -5548($fp)
	li $t0, 31385
	sw $t0, -5552($fp)
	addi $t0, $fp, -5332
	sw $t0, -5556($fp)
	li $t0, 5
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -5556($fp)
	lw $t1, -5564($fp)
	add $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5552($fp)
	lw $t1, -5568($fp)
	sw $t0, 0($t1)
	lw $t0, -5568($fp)
	lw $t1, 0($t0)
	sw $t1, -5572($fp)
	li $t0, 13826
	sw $t0, -5576($fp)
	addi $t0, $fp, -5332
	sw $t0, -5580($fp)
	li $t0, 6
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5580($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -5576($fp)
	lw $t1, -5592($fp)
	sw $t0, 0($t1)
	lw $t0, -5592($fp)
	lw $t1, 0($t0)
	sw $t1, -5596($fp)
	li $t0, 12667
	sw $t0, -5600($fp)
	addi $t0, $fp, -5332
	sw $t0, -5604($fp)
	li $t0, 7
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5612($fp)
	lw $t0, -5604($fp)
	lw $t1, -5612($fp)
	add $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5600($fp)
	lw $t1, -5616($fp)
	sw $t0, 0($t1)
	lw $t0, -5616($fp)
	lw $t1, 0($t0)
	sw $t1, -5620($fp)
	li $t0, 3312
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	sw $t0, -5632($fp)
	li $t0, 10564
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	sw $t0, -5644($fp)
	li $t0, 17974
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	sw $t0, -5656($fp)
	li $t0, 50299
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	sw $t0, -5668($fp)
	li $t0, 4075
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	sw $t0, -5680($fp)
	li $t0, 241
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	sw $t0, -5692($fp)
	li $t0, 50438
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	sw $t0, -5704($fp)
	li $t0, 2072
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	sw $t0, -5716($fp)
	li $t0, 717
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	sw $t0, -5728($fp)
	li $t0, 36660
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	sw $t0, -5740($fp)
	li $t0, 43572
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	sw $t0, -5752($fp)
	li $t0, 23177
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	sw $t0, -5764($fp)
	li $t0, 38463
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	sw $t0, -5776($fp)
	li $t0, 43766
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	sw $t0, -5788($fp)
	li $t0, 5933
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	sw $t0, -5800($fp)
	li $t0, 57982
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	sw $t0, -5812($fp)
	li $t0, 32420
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	sw $t0, -5824($fp)
	li $t0, 28020
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	sw $t0, -5836($fp)
	li $t0, 50596
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	sw $t0, -5848($fp)
	li $t0, 12417
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	sw $t0, -5860($fp)
label358:
	addi $t0, $fp, -180
	sw $t0, -5864($fp)
	lw $t0, -2168($fp)
	sw $t0, -5868($fp)
	li $t0, 4
	lw $t1, -5868($fp)
	mul $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, -5864($fp)
	add $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	lw $t1, 0($t0)
	sw $t1, -5880($fp)
	lw $t0, -3692($fp)
	sw $t0, -5884($fp)
	lw $t0, -5880($fp)
	lw $t1, -5884($fp)
	sub $t0, $t0, $t1
	sw $t0, -5888($fp)
	li $t0, 0
	sw $t0, -5892($fp)
	lw $t0, -2792($fp)
	sw $t0, -5896($fp)
	lw $t1, -5896($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label364:
	li $t0, 54592
	sw $t0, -5900($fp)
	lw $t1, -5900($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label363
label363:
	lw $t0, -5748($fp)
	sw $t0, -5904($fp)
	lw $t1, -5904($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -5892($fp)
label362:
	addi $sp, $sp, -4
	lw $t0, -5888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5892($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5908($fp)
	addi $sp, $sp, 12
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 56967
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	sw $t0, -5920($fp)
	li $t0, 24314
	sw $t0, -5924($fp)
	li $t0, 0
	sw $t0, -5928($fp)
	li $t0, 0
	sw $t0, -5932($fp)
	li $t0, 59777
	sw $t0, -5936($fp)
	lw $t1, -5936($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -5932($fp)
label369:
	li $t0, 0
	sw $t0, -5940($fp)
	li $t0, 43244
	sw $t0, -5944($fp)
	lw $t0, -5916($fp)
	sw $t0, -5948($fp)
	lw $t1, -5944($fp)
	lw $t2, -5948($fp)
	beq $t1, $t2, label372
	j label371
label372:
	li $t0, 51801
	sw $t0, -5952($fp)
	lw $t1, -5952($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -5940($fp)
label371:
	lw $t0, -3140($fp)
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	sw $t0, -5960($fp)
	li $t0, 34314
	sw $t0, -5964($fp)
	lw $t0, -2948($fp)
	sw $t0, -5968($fp)
	lw $t0, -5964($fp)
	lw $t1, -5968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5972($fp)
	lw $t0, -4732($fp)
	sw $t0, -5976($fp)
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	mul $t0, $t0, $t1
	sw $t0, -5980($fp)
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5984($fp)
	addi $sp, $sp, 20
	li $t0, 6571
	sw $t0, -5988($fp)
	li $t0, 17651
	sw $t0, -5992($fp)
	lw $t0, -5988($fp)
	lw $t1, -5992($fp)
	add $t0, $t0, $t1
	sw $t0, -5996($fp)
	lw $t0, -1556($fp)
	sw $t0, -6000($fp)
	lw $t0, -5996($fp)
	lw $t1, -6000($fp)
	add $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t1, -5984($fp)
	lw $t2, -6004($fp)
	ble $t1, $t2, label365
	j label367
label367:
	li $t0, 8067
	sw $t0, -6008($fp)
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -5928($fp)
label366:
	li $t0, 0
	sw $t0, -6012($fp)
	addi $t0, $fp, -340
	sw $t0, -6016($fp)
	lw $t0, -3596($fp)
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
	li $t0, 19238
	sw $t0, -6036($fp)
	lw $t0, -6032($fp)
	lw $t1, -6036($fp)
	mul $t0, $t0, $t1
	sw $t0, -6040($fp)
	li $t0, 20963
	sw $t0, -6044($fp)
	lw $t0, -6040($fp)
	lw $t1, -6044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6048($fp)
	addi $t0, $fp, -76
	sw $t0, -6052($fp)
	lw $t0, -1928($fp)
	sw $t0, -6056($fp)
	li $t0, 18632
	sw $t0, -6060($fp)
	lw $t0, -6056($fp)
	lw $t1, -6060($fp)
	add $t0, $t0, $t1
	sw $t0, -6064($fp)
	li $t0, 4
	lw $t1, -6064($fp)
	mul $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	lw $t1, -6052($fp)
	add $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	lw $t1, 0($t0)
	sw $t1, -6076($fp)
	lw $t1, -6048($fp)
	lw $t2, -6076($fp)
	bge $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -6012($fp)
label374:
	j label358
label360:
	li $t0, 37212
	sw $t0, -6080($fp)
	addi $t0, $fp, -84
	sw $t0, -6084($fp)
	li $t0, 1
	sw $t0, -6088($fp)
	li $t0, 4
	lw $t1, -6088($fp)
	mul $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	lw $t1, -6084($fp)
	add $t0, $t0, $t1
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	lw $t1, 0($t0)
	sw $t1, -6100($fp)
	lw $t0, -6080($fp)
	lw $t1, -6100($fp)
	mul $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -5784($fp)
	sw $t0, -6108($fp)
	lw $t0, -6104($fp)
	lw $t1, -6108($fp)
	add $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t1, -6112($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label378
label378:
	li $t0, 13466
	sw $t0, -6116($fp)
	li $t0, 0
	sw $t0, -6120($fp)
	li $t0, 58199
	sw $t0, -6124($fp)
	lw $t1, -6124($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label379
label379:
	li $t0, 1
	sw $t0, -6120($fp)
label380:
	li $t0, 217
	sw $t0, -6128($fp)
	li $t0, 46582
	sw $t0, -6132($fp)
	lw $t0, -6128($fp)
	lw $t1, -6132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6136($fp)
	li $t0, 1744
	sw $t0, -6140($fp)
	lw $t0, -6136($fp)
	lw $t1, -6140($fp)
	sub $t0, $t0, $t1
	sw $t0, -6144($fp)
	li $t0, 0
	sw $t0, -6148($fp)
	li $t0, 0
	sw $t0, -6152($fp)
	lw $t0, -2348($fp)
	sw $t0, -6156($fp)
	li $t0, 2816
	sw $t0, -6160($fp)
	lw $t0, -6156($fp)
	lw $t1, -6160($fp)
	add $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -4564($fp)
	sw $t0, -6168($fp)
	lw $t1, -6164($fp)
	lw $t2, -6168($fp)
	beq $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -6152($fp)
label384:
	lw $t0, -5688($fp)
	sw $t0, -6172($fp)
	li $t0, 0
	sw $t0, -6176($fp)
	lw $t0, -2756($fp)
	sw $t0, -6180($fp)
	lw $t0, -2768($fp)
	sw $t0, -6184($fp)
	lw $t0, -6180($fp)
	lw $t1, -6184($fp)
	add $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t1, -6188($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label387
label387:
	li $t0, 27289
	sw $t0, -6192($fp)
	lw $t1, -6192($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -6176($fp)
label386:
	li $t0, 0
	sw $t0, -6196($fp)
	lw $t0, -3788($fp)
	sw $t0, -6200($fp)
	lw $t0, -2372($fp)
	sw $t0, -6204($fp)
	lw $t0, -6200($fp)
	lw $t1, -6204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6208($fp)
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 38170
	sw $t0, -6216($fp)
	lw $t0, -5784($fp)
	sw $t0, -6220($fp)
	lw $t1, -6216($fp)
	lw $t2, -6220($fp)
	blt $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -6212($fp)
label392:
	li $t0, 0
	sw $t0, -6224($fp)
	li $t0, 56165
	sw $t0, -6228($fp)
	li $t0, 24779
	sw $t0, -6232($fp)
	lw $t1, -6228($fp)
	lw $t2, -6232($fp)
	blt $t1, $t2, label393
	j label395
label395:
	lw $t0, -884($fp)
	sw $t0, -6236($fp)
	lw $t1, -6236($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -6224($fp)
label394:
	li $t0, 0
	sw $t0, -6240($fp)
	li $t0, 37453
	sw $t0, -6244($fp)
	li $t0, 0
	lw $t1, -6244($fp)
	sub $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label398
label398:
	lw $t0, -5664($fp)
	sw $t0, -6252($fp)
	lw $t1, -6252($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -6240($fp)
label397:
	addi $sp, $sp, -4
	lw $t0, -6208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6256($fp)
	addi $sp, $sp, 20
	lw $t1, -6256($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label390:
	lw $t0, -2744($fp)
	sw $t0, -6260($fp)
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -6196($fp)
label389:
	addi $sp, $sp, -4
	lw $t0, -6152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6196($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6264($fp)
	addi $sp, $sp, 20
	li $t0, 61347
	sw $t0, -6268($fp)
	lw $t1, -6264($fp)
	lw $t2, -6268($fp)
	bne $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -6148($fp)
label382:
	lw $t0, -5652($fp)
	sw $t0, -6272($fp)
	lw $t0, -6272($fp)
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	sw $t0, -6276($fp)
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6276($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6280($fp)
	addi $sp, $sp, 24
	lw $t0, -1832($fp)
	sw $t0, -6284($fp)
	lw $t0, -6280($fp)
	lw $t1, -6284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6288($fp)
	lw $t1, -6288($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 0
	sw $t0, -6292($fp)
	lw $t0, -1040($fp)
	sw $t0, -6296($fp)
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label402:
	li $t0, 1
	sw $t0, -6292($fp)
label403:
	addi $t0, $fp, -5300
	sw $t0, -6300($fp)
	lw $t0, -4588($fp)
	sw $t0, -6304($fp)
	li $t0, 4
	lw $t1, -6304($fp)
	mul $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	lw $t1, -6300($fp)
	add $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t0, -6312($fp)
	lw $t1, 0($t0)
	sw $t1, -6316($fp)
	lw $t0, -6292($fp)
	lw $t1, -6316($fp)
	mul $t0, $t0, $t1
	sw $t0, -6320($fp)
	li $t0, 29764
	sw $t0, -6324($fp)
	li $t0, 0
	lw $t1, -6324($fp)
	sub $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -6320($fp)
	lw $t1, -6328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6332($fp)
	lw $t0, -2156($fp)
	sw $t0, -6336($fp)
	li $t0, 0
	sw $t0, -6340($fp)
	li $t0, 53134
	sw $t0, -6344($fp)
	lw $t1, -6344($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label406
label406:
	lw $t0, -3692($fp)
	sw $t0, -6348($fp)
	lw $t1, -6348($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -6340($fp)
label405:
	addi $t0, $fp, -380
	sw $t0, -6352($fp)
	li $t0, 4
	sw $t0, -6356($fp)
	li $t0, 4
	lw $t1, -6356($fp)
	mul $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	lw $t1, -6352($fp)
	add $t0, $t0, $t1
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	lw $t1, 0($t0)
	sw $t1, -6368($fp)
	li $t0, 0
	sw $t0, -6372($fp)
	li $t0, 18820
	sw $t0, -6376($fp)
	lw $t1, -6376($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label407:
	li $t0, 1
	sw $t0, -6372($fp)
label408:
	lw $t0, -3788($fp)
	sw $t0, -6380($fp)
	lw $t0, -6372($fp)
	lw $t1, -6380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6384($fp)
	li $t0, 0
	sw $t0, -6388($fp)
	lw $t0, -5796($fp)
	sw $t0, -6392($fp)
	li $t0, 25884
	sw $t0, -6396($fp)
	lw $t0, -6392($fp)
	lw $t1, -6396($fp)
	add $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t0, -5676($fp)
	sw $t0, -6404($fp)
	lw $t1, -6400($fp)
	lw $t2, -6404($fp)
	beq $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -6388($fp)
label410:
	li $t0, 43259
	sw $t0, -6408($fp)
	addi $sp, $sp, -4
	lw $t0, -6368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6408($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6412($fp)
	addi $sp, $sp, 20
	lw $t0, -3764($fp)
	sw $t0, -6416($fp)
	lw $t0, -6412($fp)
	lw $t1, -6416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6420($fp)
	addi $sp, $sp, -4
	lw $t0, -6340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6420($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6424($fp)
	addi $sp, $sp, 12
	lw $t0, -6336($fp)
	lw $t1, -6424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6428($fp)
	lw $t0, -6332($fp)
	lw $t1, -6428($fp)
	sub $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t1, -6432($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 0
	sw $t0, -6436($fp)
	lw $t0, -3704($fp)
	sw $t0, -6440($fp)
	li $t0, 0
	lw $t1, -6440($fp)
	sub $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t1, -6444($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label414
label414:
	li $t0, 1
	sw $t0, -6436($fp)
label415:
	jal f10
	sw $v0, -6448($fp)
	addi $sp, $sp, 4
	lw $t0, -6436($fp)
	lw $t1, -6448($fp)
	sub $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t1, -6452($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 0
	sw $t0, -6456($fp)
	lw $t0, -2804($fp)
	sw $t0, -6460($fp)
	li $t0, 0
	lw $t1, -6460($fp)
	sub $t0, $t0, $t1
	sw $t0, -6464($fp)
	li $t0, 18971
	sw $t0, -6468($fp)
	lw $t0, -6464($fp)
	lw $t1, -6468($fp)
	add $t0, $t0, $t1
	sw $t0, -6472($fp)
	li $t0, 47376
	sw $t0, -6476($fp)
	li $t0, 36463
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	sw $t0, -6484($fp)
	li $t0, 12399
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -6492($fp)
	addi $sp, $sp, -4
	lw $t0, -6472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6492($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6496($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6496($fp)
	sub $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t1, -6500($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label418:
	li $t0, 0
	sw $t0, -6504($fp)
	addi $t0, $fp, -84
	sw $t0, -6508($fp)
	li $t0, 1
	sw $t0, -6512($fp)
	li $t0, 4
	lw $t1, -6512($fp)
	mul $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	lw $t1, -6508($fp)
	add $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	lw $t1, 0($t0)
	sw $t1, -6524($fp)
	lw $t1, -6524($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label419
label419:
	li $t0, 1
	sw $t0, -6504($fp)
label420:
	li $t0, 0
	sw $t0, -6528($fp)
	lw $t0, 16($fp)
	sw $t0, -6532($fp)
	lw $t1, -6532($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label421:
	li $t0, 1
	sw $t0, -6528($fp)
label422:
	lw $t0, -6504($fp)
	lw $t1, -6528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6536($fp)
	lw $t1, -6536($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -6456($fp)
label417:
	lw $ra, -4($fp)
	lw $v0, -6456($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label413
label412:
	lw $t0, -5700($fp)
	sw $t0, -6540($fp)
	li $t0, 0
	lw $t1, -6540($fp)
	sub $t0, $t0, $t1
	sw $t0, -6544($fp)
label413:
	j label401
label400:
label423:
	lw $t0, -3800($fp)
	sw $t0, -6548($fp)
	li $t0, 0
	lw $t1, -6548($fp)
	sub $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t1, -6552($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	addi $t0, $fp, -180
	sw $t0, -6556($fp)
	lw $t0, -1052($fp)
	sw $t0, -6560($fp)
	li $t0, 4
	lw $t1, -6560($fp)
	mul $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	lw $t1, -6556($fp)
	add $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	lw $t1, 0($t0)
	sw $t1, -6572($fp)
	j label423
label425:
label401:
	j label377
label376:
label426:
	li $t0, 38209
	sw $t0, -6576($fp)
	li $t0, 0
	lw $t1, -6576($fp)
	sub $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t1, -6580($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 0
	sw $t0, -6584($fp)
	li $t0, 0
	sw $t0, -6588($fp)
	li $t0, 9542
	sw $t0, -6592($fp)
	li $t0, 0
	lw $t1, -6592($fp)
	sub $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -1088($fp)
	sw $t0, -6600($fp)
	li $t0, 8539
	sw $t0, -6604($fp)
	lw $t0, -6600($fp)
	lw $t1, -6604($fp)
	mul $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t1, -6596($fp)
	lw $t2, -6608($fp)
	bgt $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -6588($fp)
label433:
	li $t0, 0
	sw $t0, -6612($fp)
	lw $t0, -2516($fp)
	sw $t0, -6616($fp)
	lw $t1, -6616($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -6612($fp)
label435:
	lw $t1, -6588($fp)
	lw $t2, -6612($fp)
	bne $t1, $t2, label429
	j label431
label431:
	lw $t0, -4792($fp)
	sw $t0, -6620($fp)
	lw $t0, -3620($fp)
	sw $t0, -6624($fp)
	lw $t0, -6620($fp)
	lw $t1, -6624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6628($fp)
	lw $t1, -6628($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -6584($fp)
label430:
	lw $ra, -4($fp)
	lw $v0, -6584($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label426
label428:
label377:
	li $t0, 56026
	sw $t0, -6632($fp)
	lw $t0, -3752($fp)
	sw $t0, -6636($fp)
	lw $t0, -6632($fp)
	lw $t1, -6636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6640($fp)
	li $t0, 19974
	sw $t0, -6644($fp)
	lw $t0, -6640($fp)
	lw $t1, -6644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6648($fp)
	li $t0, 0
	sw $t0, -6652($fp)
	lw $t0, -884($fp)
	sw $t0, -6656($fp)
	lw $t0, 12($fp)
	sw $t0, -6660($fp)
	lw $t0, -6656($fp)
	lw $t1, -6660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6664($fp)
	lw $t1, -6664($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label441
label441:
	lw $t0, -3392($fp)
	sw $t0, -6668($fp)
	lw $t1, -6668($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -6652($fp)
label440:
	li $t0, 0
	sw $t0, -6672($fp)
	li $t0, 5897
	sw $t0, -6676($fp)
	lw $t1, -6676($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label442
label442:
	li $t0, 1
	sw $t0, -6672($fp)
label443:
	lw $t0, -836($fp)
	sw $t0, -6680($fp)
	lw $t0, -6672($fp)
	lw $t1, -6680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6684($fp)
	li $t0, 0
	sw $t0, -6688($fp)
	li $t0, 15268
	sw $t0, -6692($fp)
	li $t0, 31246
	sw $t0, -6696($fp)
	lw $t0, -6692($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t1, -6700($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label446
label446:
	li $t0, 47339
	sw $t0, -6704($fp)
	lw $t1, -6704($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -6688($fp)
label445:
	li $t0, 9886
	sw $t0, -6708($fp)
	lw $t0, -1856($fp)
	sw $t0, -6712($fp)
	lw $t0, -6708($fp)
	lw $t1, -6712($fp)
	add $t0, $t0, $t1
	sw $t0, -6716($fp)
	addi $sp, $sp, -4
	lw $t0, -6652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6716($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6720($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -6648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6720($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6724($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -440
	sw $t0, -6728($fp)
	lw $t0, -5640($fp)
	sw $t0, -6732($fp)
	li $t0, 33187
	sw $t0, -6736($fp)
	lw $t0, -6732($fp)
	lw $t1, -6736($fp)
	sub $t0, $t0, $t1
	sw $t0, -6740($fp)
	li $t0, 4
	lw $t1, -6740($fp)
	mul $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, 0($t0)
	sw $t1, -6752($fp)
	lw $t0, -6724($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t1, -6756($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 0
	sw $t0, -6760($fp)
	li $t0, 0
	sw $t0, -6764($fp)
	lw $t0, -5856($fp)
	sw $t0, -6768($fp)
	lw $t0, -4376($fp)
	sw $t0, -6772($fp)
	lw $t1, -6768($fp)
	lw $t2, -6772($fp)
	beq $t1, $t2, label454
	j label453
label454:
	li $t0, 34828
	sw $t0, -6776($fp)
	lw $t1, -6776($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -6764($fp)
label453:
	li $t0, 50881
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	sw $t0, -6784($fp)
	li $t0, 0
	sw $t0, -6788($fp)
	li $t0, 0
	sw $t0, -6792($fp)
	lw $t0, -5772($fp)
	sw $t0, -6796($fp)
	lw $t1, -6796($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label457:
	li $t0, 1
	sw $t0, -6792($fp)
label458:
	li $t0, 53713
	sw $t0, -6800($fp)
	lw $t1, -6792($fp)
	lw $t2, -6800($fp)
	beq $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -6788($fp)
label456:
	lw $t0, -4376($fp)
	sw $t0, -6804($fp)
	li $t0, 38481
	sw $t0, -6808($fp)
	li $t0, 63900
	sw $t0, -6812($fp)
	lw $t0, -6808($fp)
	lw $t1, -6812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6816($fp)
	lw $t0, -4756($fp)
	sw $t0, -6820($fp)
	li $t0, 0
	lw $t1, -6820($fp)
	sub $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -5760($fp)
	sw $t0, -6828($fp)
	lw $t0, -6824($fp)
	lw $t1, -6828($fp)
	add $t0, $t0, $t1
	sw $t0, -6832($fp)
	addi $sp, $sp, -4
	lw $t0, -6788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6832($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6836($fp)
	addi $sp, $sp, 20
	lw $t0, -2960($fp)
	sw $t0, -6840($fp)
	lw $t0, -1184($fp)
	sw $t0, -6844($fp)
	lw $t0, -6840($fp)
	lw $t1, -6844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6848($fp)
	lw $t0, -5808($fp)
	sw $t0, -6852($fp)
	lw $t0, -6848($fp)
	lw $t1, -6852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6856($fp)
	addi $sp, $sp, -4
	lw $t0, -6764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6856($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6860($fp)
	addi $sp, $sp, 20
	lw $t0, -1076($fp)
	sw $t0, -6864($fp)
	lw $t1, -6860($fp)
	lw $t2, -6864($fp)
	ble $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -6760($fp)
label451:
	li $t0, 0
	sw $t0, -6868($fp)
	li $t0, 13702
	sw $t0, -6872($fp)
	li $t0, 579
	sw $t0, -6876($fp)
	lw $t0, -6872($fp)
	lw $t1, -6876($fp)
	add $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t1, -6880($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label461
label461:
	lw $t0, -5832($fp)
	sw $t0, -6884($fp)
	lw $t1, -6884($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -6868($fp)
label460:
	lw $t0, -2780($fp)
	sw $t0, -6888($fp)
	li $t0, 0
	lw $t1, -6888($fp)
	sub $t0, $t0, $t1
	sw $t0, -6892($fp)
	li $t0, 3790
	sw $t0, -6896($fp)
	lw $t0, -6892($fp)
	lw $t1, -6896($fp)
	sub $t0, $t0, $t1
	sw $t0, -6900($fp)
	li $t0, 0
	sw $t0, -6904($fp)
	lw $t0, -5820($fp)
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -6912($fp)
	li $t0, 0
	sw $t0, -6916($fp)
	li $t0, 17530
	sw $t0, -6920($fp)
	li $t0, 26067
	sw $t0, -6924($fp)
	lw $t0, -6920($fp)
	lw $t1, -6924($fp)
	sub $t0, $t0, $t1
	sw $t0, -6928($fp)
	li $t0, 53354
	sw $t0, -6932($fp)
	lw $t1, -6928($fp)
	lw $t2, -6932($fp)
	beq $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -6916($fp)
label465:
	lw $t0, -1940($fp)
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	sw $t0, -6940($fp)
	li $t0, 0
	sw $t0, -6944($fp)
	li $t0, 33404
	sw $t0, -6948($fp)
	lw $t1, -6948($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label467
label469:
	lw $t0, -3776($fp)
	sw $t0, -6952($fp)
	lw $t1, -6952($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label467
label468:
	li $t0, 39888
	sw $t0, -6956($fp)
	lw $t1, -6956($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -6944($fp)
label467:
	addi $sp, $sp, -4
	lw $t0, -6912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6944($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -6960($fp)
	addi $sp, $sp, 20
	li $t0, 47294
	sw $t0, -6964($fp)
	lw $t1, -6960($fp)
	lw $t2, -6964($fp)
	beq $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -6904($fp)
label463:
	addi $sp, $sp, -4
	lw $t0, -6760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6904($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6968($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -6972($fp)
	li $t0, 15785
	sw $t0, -6976($fp)
	li $t0, 0
	lw $t1, -6976($fp)
	sub $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t1, -6980($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label471
label472:
	lw $t0, -896($fp)
	sw $t0, -6984($fp)
	lw $t1, -6984($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -6972($fp)
label471:
	li $t0, 58842
	sw $t0, -6988($fp)
	jal f10
	sw $v0, -6992($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -6968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6996($fp)
	addi $sp, $sp, 20
	lw $t1, -6996($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 0
	sw $t0, -7000($fp)
	addi $t0, $fp, -440
	sw $t0, -7004($fp)
	li $t0, 0
	sw $t0, -7008($fp)
	lw $t0, -1184($fp)
	sw $t0, -7012($fp)
	lw $t1, -7012($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label478
label478:
	lw $t0, -5784($fp)
	sw $t0, -7016($fp)
	lw $t1, -7016($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -7008($fp)
label477:
	li $t0, 4
	lw $t1, -7008($fp)
	mul $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, -7004($fp)
	add $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	lw $t1, 0($t0)
	sw $t1, -7028($fp)
	li $t0, 35553
	sw $t0, -7032($fp)
	lw $t0, -3788($fp)
	sw $t0, -7036($fp)
	lw $t0, -7032($fp)
	lw $t1, -7036($fp)
	mul $t0, $t0, $t1
	sw $t0, -7040($fp)
	li $t0, 0
	lw $t1, -7040($fp)
	sub $t0, $t0, $t1
	sw $t0, -7044($fp)
	lw $t1, -7028($fp)
	lw $t2, -7044($fp)
	bge $t1, $t2, label473
	j label475
label475:
	li $t0, 0
	sw $t0, -7048($fp)
	lw $t0, -4376($fp)
	sw $t0, -7052($fp)
	lw $t0, -1184($fp)
	sw $t0, -7056($fp)
	lw $t0, -7052($fp)
	lw $t1, -7056($fp)
	add $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -1064($fp)
	sw $t0, -7064($fp)
	lw $t1, -7060($fp)
	lw $t2, -7064($fp)
	bgt $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -7048($fp)
label480:
	lw $t0, -2360($fp)
	sw $t0, -7068($fp)
	li $t0, 0
	lw $t1, -7068($fp)
	sub $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t1, -7048($fp)
	lw $t2, -7072($fp)
	blt $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -7000($fp)
label474:
	lw $ra, -4($fp)
	lw $v0, -7000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label449
label448:
	lw $t0, -4376($fp)
	sw $t0, -7076($fp)
	lw $t1, -7076($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label481
label481:
	li $t0, 0
	sw $t0, -7080($fp)
	li $t0, 0
	sw $t0, -7084($fp)
	li $t0, 4316
	sw $t0, -7088($fp)
	lw $t0, -3140($fp)
	sw $t0, -7092($fp)
	lw $t0, -7088($fp)
	lw $t1, -7092($fp)
	mul $t0, $t0, $t1
	sw $t0, -7096($fp)
	li $t0, 23406
	sw $t0, -7100($fp)
	lw $t1, -7096($fp)
	lw $t2, -7100($fp)
	beq $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -7084($fp)
label487:
	lw $t0, -5736($fp)
	sw $t0, -7104($fp)
	addi $t0, $fp, -480
	sw $t0, -7108($fp)
	li $t0, 5
	sw $t0, -7112($fp)
	li $t0, 4
	lw $t1, -7112($fp)
	mul $t0, $t0, $t1
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	lw $t1, -7108($fp)
	add $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	lw $t1, 0($t0)
	sw $t1, -7124($fp)
	lw $t0, -7104($fp)
	lw $t1, -7124($fp)
	mul $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t1, -7084($fp)
	lw $t2, -7128($fp)
	beq $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -7080($fp)
label485:
	j label483
label482:
	li $t0, 0
	sw $t0, -7132($fp)
	li $t0, 32948
	sw $t0, -7136($fp)
	lw $t1, -7136($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label490
label490:
	lw $t0, -3800($fp)
	sw $t0, -7140($fp)
	lw $t0, -3692($fp)
	sw $t0, -7144($fp)
	lw $t0, -7140($fp)
	lw $t1, -7144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7148($fp)
	lw $t0, -3764($fp)
	sw $t0, -7152($fp)
	lw $t0, -7148($fp)
	lw $t1, -7152($fp)
	mul $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t1, -7156($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -7132($fp)
label489:
label483:
label449:
	j label438
label437:
	addi $t0, $fp, -380
	sw $t0, -7160($fp)
	li $t0, 0
	sw $t0, -7164($fp)
	addi $t0, $fp, -28
	sw $t0, -7168($fp)
	li $t0, 3
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
	lw $t1, -7184($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label494:
	li $t0, 1
	sw $t0, -7164($fp)
label495:
	addi $t0, $fp, -260
	sw $t0, -7188($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -7208($fp)
	li $t0, 48217
	sw $t0, -7212($fp)
	lw $t1, -7212($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label496
label496:
	li $t0, 1
	sw $t0, -7208($fp)
label497:
	lw $t0, -860($fp)
	sw $t0, -7216($fp)
	lw $t0, -7208($fp)
	lw $t1, -7216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7220($fp)
	li $t0, 0
	sw $t0, -7224($fp)
	li $t0, 34000
	sw $t0, -7228($fp)
	lw $t1, -7228($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label501
label501:
	lw $t0, -3656($fp)
	sw $t0, -7232($fp)
	lw $t1, -7232($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label500
label500:
	li $t0, 52411
	sw $t0, -7236($fp)
	lw $t1, -7236($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -7224($fp)
label499:
	addi $sp, $sp, -4
	lw $t0, -7164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7224($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -7240($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -7240($fp)
	mul $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	lw $t1, -7160($fp)
	add $t0, $t0, $t1
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	lw $t1, 0($t0)
	sw $t1, -7252($fp)
	lw $t0, -3608($fp)
	sw $t0, -7256($fp)
	li $t0, 54189
	sw $t0, -7260($fp)
	lw $t0, -7256($fp)
	lw $t1, -7260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7264($fp)
	lw $t0, -7252($fp)
	lw $t1, -7264($fp)
	sub $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t1, -7268($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	lw $t0, -4376($fp)
	sw $t0, -7272($fp)
	j label493
label492:
	li $t0, 0
	sw $t0, -7276($fp)
	lw $t0, -3620($fp)
	sw $t0, -7280($fp)
	li $t0, 0
	lw $t1, -7280($fp)
	sub $t0, $t0, $t1
	sw $t0, -7284($fp)
	li $t0, 0
	lw $t1, -7284($fp)
	sub $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t1, -7288($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label504
label504:
	lw $t0, -1052($fp)
	sw $t0, -7292($fp)
	lw $t0, -4328($fp)
	sw $t0, -7296($fp)
	lw $t0, -7292($fp)
	lw $t1, -7296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7300($fp)
	li $t0, 0
	sw $t0, -7304($fp)
	li $t0, 21765
	sw $t0, -7308($fp)
	lw $t1, -7308($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label505
label505:
	li $t0, 1
	sw $t0, -7304($fp)
label506:
	lw $t1, -7300($fp)
	lw $t2, -7304($fp)
	beq $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -7276($fp)
label503:
label493:
label438:
label507:
	addi $t0, $fp, -456
	sw $t0, -7312($fp)
	li $t0, 0
	sw $t0, -7316($fp)
	addi $t0, $fp, -5332
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
	lw $t0, -872($fp)
	sw $t0, -7340($fp)
	lw $t1, -7336($fp)
	lw $t2, -7340($fp)
	blt $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -7316($fp)
label512:
	li $t0, 0
	sw $t0, -7344($fp)
	li $t0, 23395
	sw $t0, -7348($fp)
	li $t0, 0
	lw $t1, -7348($fp)
	sub $t0, $t0, $t1
	sw $t0, -7352($fp)
	lw $t1, -7352($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label515
label515:
	lw $t0, -3788($fp)
	sw $t0, -7356($fp)
	lw $t1, -7356($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -7344($fp)
label514:
	addi $t0, $fp, -188
	sw $t0, -7360($fp)
	li $t0, 1
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
	lw $t0, -1064($fp)
	sw $t0, -7380($fp)
	lw $t0, -7376($fp)
	lw $t1, -7380($fp)
	sub $t0, $t0, $t1
	sw $t0, -7384($fp)
	li $t0, 0
	sw $t0, -7388($fp)
	lw $t0, -3812($fp)
	sw $t0, -7392($fp)
	lw $t0, -3884($fp)
	sw $t0, -7396($fp)
	lw $t1, -7392($fp)
	lw $t2, -7396($fp)
	bne $t1, $t2, label516
	j label518
label518:
	li $t0, 49043
	sw $t0, -7400($fp)
	lw $t1, -7400($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -7388($fp)
label517:
	addi $sp, $sp, -4
	lw $t0, -7316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7388($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -7404($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -7404($fp)
	mul $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	lw $t1, -7312($fp)
	add $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, 0($t0)
	sw $t1, -7416($fp)
	li $t0, 0
	lw $t1, -7416($fp)
	sub $t0, $t0, $t1
	sw $t0, -7420($fp)
	lw $t1, -7420($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label510
label510:
	li $t0, 11213
	sw $t0, -7424($fp)
	lw $t0, -2372($fp)
	sw $t0, -7428($fp)
	li $t0, 0
	lw $t1, -7428($fp)
	sub $t0, $t0, $t1
	sw $t0, -7432($fp)
	lw $t0, -7424($fp)
	lw $t1, -7432($fp)
	add $t0, $t0, $t1
	sw $t0, -7436($fp)
	lw $t1, -7436($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
	li $t0, 0
	sw $t0, -7440($fp)
	li $t0, 3727
	sw $t0, -7444($fp)
	lw $t0, -5712($fp)
	sw $t0, -7448($fp)
	lw $t0, -7444($fp)
	lw $t1, -7448($fp)
	mul $t0, $t0, $t1
	sw $t0, -7452($fp)
	li $t0, 19491
	sw $t0, -7456($fp)
	lw $t1, -7452($fp)
	lw $t2, -7456($fp)
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -7440($fp)
label520:
	li $t0, 0
	sw $t0, -7460($fp)
	lw $t0, -5700($fp)
	sw $t0, -7464($fp)
	lw $t1, -7464($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label521
label521:
	li $t0, 1
	sw $t0, -7460($fp)
label522:
	lw $t0, -4732($fp)
	sw $t0, -7468($fp)
	lw $t0, -7460($fp)
	lw $t1, -7468($fp)
	mul $t0, $t0, $t1
	sw $t0, -7472($fp)
	lw $t0, -5712($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	sw $t0, -7480($fp)
	lw $t0, -2948($fp)
	sw $t0, -7484($fp)
	lw $t0, -2936($fp)
	sw $t0, -7488($fp)
	lw $t0, -7484($fp)
	lw $t1, -7488($fp)
	sub $t0, $t0, $t1
	sw $t0, -7492($fp)
	addi $sp, $sp, -4
	lw $t0, -7440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7492($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -7496($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -7496($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label507
label509:
	addi $t0, $fp, -60
	sw $t0, -7500($fp)
	li $t0, 0
	sw $t0, -7504($fp)
	li $t0, 24916
	sw $t0, -7508($fp)
	lw $t0, -5724($fp)
	sw $t0, -7512($fp)
	lw $t0, -7508($fp)
	lw $t1, -7512($fp)
	mul $t0, $t0, $t1
	sw $t0, -7516($fp)
	li $t0, 4306
	sw $t0, -7520($fp)
	lw $t1, -7516($fp)
	lw $t2, -7520($fp)
	bge $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -7504($fp)
label527:
	li $t0, 4
	lw $t1, -7504($fp)
	mul $t0, $t0, $t1
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	lw $t1, -7500($fp)
	add $t0, $t0, $t1
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	lw $t1, 0($t0)
	sw $t1, -7532($fp)
	li $t0, 57972
	sw $t0, -7536($fp)
	lw $t1, -7532($fp)
	lw $t2, -7536($fp)
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 23280
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	sw $t0, -7544($fp)
	lw $t0, -7544($fp)
	sw $t0, -7548($fp)
	li $t0, 0
	sw $t0, -7552($fp)
	li $t0, 0
	sw $t0, -7556($fp)
	lw $t0, -3824($fp)
	sw $t0, -7560($fp)
	li $t0, 0
	sw $t0, -7564($fp)
	lw $t0, -896($fp)
	sw $t0, -7568($fp)
	lw $t0, -7544($fp)
	sw $t0, -7572($fp)
	lw $t0, -7568($fp)
	lw $t1, -7572($fp)
	sub $t0, $t0, $t1
	sw $t0, -7576($fp)
	li $t0, 58108
	sw $t0, -7580($fp)
	lw $t1, -7576($fp)
	lw $t2, -7580($fp)
	bge $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -7564($fp)
label533:
	li $t0, 0
	sw $t0, -7584($fp)
	li $t0, 58019
	sw $t0, -7588($fp)
	lw $t0, -1856($fp)
	sw $t0, -7592($fp)
	lw $t0, -7588($fp)
	lw $t1, -7592($fp)
	add $t0, $t0, $t1
	sw $t0, -7596($fp)
	li $t0, 43317
	sw $t0, -7600($fp)
	lw $t1, -7596($fp)
	lw $t2, -7600($fp)
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -7584($fp)
label535:
	li $t0, 0
	sw $t0, -7604($fp)
	lw $t0, -4792($fp)
	sw $t0, -7608($fp)
	li $t0, 0
	lw $t1, -7608($fp)
	sub $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -3836($fp)
	sw $t0, -7616($fp)
	lw $t1, -7612($fp)
	lw $t2, -7616($fp)
	bgt $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -7604($fp)
label537:
	addi $sp, $sp, -4
	lw $t0, -7564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7604($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7620($fp)
	addi $sp, $sp, 16
	lw $t0, -7560($fp)
	lw $t1, -7620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7624($fp)
	lw $t0, -3716($fp)
	sw $t0, -7628($fp)
	li $t0, 0
	lw $t1, -7628($fp)
	sub $t0, $t0, $t1
	sw $t0, -7632($fp)
	li $t0, 0
	lw $t1, -7632($fp)
	sub $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t1, -7624($fp)
	lw $t2, -7636($fp)
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -7556($fp)
label531:
	addi $t0, $fp, -76
	sw $t0, -7640($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -7656($fp)
	sub $t0, $t0, $t1
	sw $t0, -7660($fp)
	lw $t1, -7556($fp)
	lw $t2, -7660($fp)
	beq $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -7552($fp)
label529:
	li $t0, 0
	sw $t0, -7664($fp)
	li $t0, 0
	sw $t0, -7668($fp)
	li $t0, 31608
	sw $t0, -7672($fp)
	li $t0, 0
	sw $t0, -7676($fp)
	li $t0, 48927
	sw $t0, -7680($fp)
	li $t0, 21962
	sw $t0, -7684($fp)
	lw $t0, -7680($fp)
	lw $t1, -7684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7688($fp)
	li $t0, 11498
	sw $t0, -7692($fp)
	lw $t1, -7688($fp)
	lw $t2, -7692($fp)
	bge $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -7676($fp)
label543:
	li $t0, 24623
	sw $t0, -7696($fp)
	li $t0, 0
	sw $t0, -7700($fp)
	li $t0, 53498
	sw $t0, -7704($fp)
	lw $t1, -7704($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label545
label546:
	lw $t0, -3656($fp)
	sw $t0, -7708($fp)
	lw $t1, -7708($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -7700($fp)
label545:
	li $t0, 0
	sw $t0, -7712($fp)
	lw $t0, -3740($fp)
	sw $t0, -7716($fp)
	lw $t1, -7716($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label547
label547:
	li $t0, 1
	sw $t0, -7712($fp)
label548:
	lw $t0, -1028($fp)
	sw $t0, -7720($fp)
	lw $t0, -7712($fp)
	lw $t1, -7720($fp)
	mul $t0, $t0, $t1
	sw $t0, -7724($fp)
	lw $t0, -1016($fp)
	sw $t0, -7728($fp)
	li $t0, 0
	lw $t1, -7728($fp)
	sub $t0, $t0, $t1
	sw $t0, -7732($fp)
	addi $sp, $sp, -4
	lw $t0, -7696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7732($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -7736($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -7740($fp)
	lw $t0, -872($fp)
	sw $t0, -7744($fp)
	li $t0, 15979
	sw $t0, -7748($fp)
	lw $t0, -7744($fp)
	lw $t1, -7748($fp)
	sub $t0, $t0, $t1
	sw $t0, -7752($fp)
	lw $t1, -7752($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label550
label551:
	lw $t0, -3140($fp)
	sw $t0, -7756($fp)
	lw $t1, -7756($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -7740($fp)
label550:
	addi $sp, $sp, -4
	lw $t0, -7672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7740($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -7760($fp)
	addi $sp, $sp, 20
	lw $t1, -7760($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label540
label540:
	li $t0, 1
	sw $t0, -7668($fp)
label541:
	li $t0, 21673
	sw $t0, -7764($fp)
	lw $t1, -7668($fp)
	lw $t2, -7764($fp)
	ble $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -7664($fp)
label539:
	li $t0, 0
	sw $t0, -7768($fp)
	li $t0, 45713
	sw $t0, -7772($fp)
	lw $t1, -7772($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label552
label554:
	li $t0, 60917
	sw $t0, -7776($fp)
	lw $t0, -4768($fp)
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -7784($fp)
	li $t0, 34366
	sw $t0, -7788($fp)
	li $t0, 41952
	sw $t0, -7792($fp)
	lw $t0, -7788($fp)
	lw $t1, -7792($fp)
	sub $t0, $t0, $t1
	sw $t0, -7796($fp)
	li $t0, 0
	sw $t0, -7800($fp)
	addi $t0, $fp, -28
	sw $t0, -7804($fp)
	li $t0, 4
	sw $t0, -7808($fp)
	li $t0, 4
	lw $t1, -7808($fp)
	mul $t0, $t0, $t1
	sw $t0, -7812($fp)
	lw $t0, -7812($fp)
	lw $t1, -7804($fp)
	add $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	lw $t1, 0($t0)
	sw $t1, -7820($fp)
	lw $t1, -7820($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label557
label557:
	lw $t0, -3668($fp)
	sw $t0, -7824($fp)
	lw $t1, -7824($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -7800($fp)
label556:
	addi $sp, $sp, -4
	lw $t0, -7776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7800($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7828($fp)
	addi $sp, $sp, 20
	lw $t1, -7828($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -7768($fp)
label553:
	j label525
label524:
	li $t0, 38805
	sw $t0, -7832($fp)
	lw $t0, -7832($fp)
	sw $t0, -7836($fp)
	lw $t0, -7836($fp)
	sw $t0, -7840($fp)
	li $t0, 31586
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	sw $t0, -7852($fp)
	li $t0, 18776
	sw $t0, -7856($fp)
	lw $t0, -7856($fp)
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	sw $t0, -7864($fp)
	li $t0, 0
	sw $t0, -7868($fp)
	li $t0, 60773
	sw $t0, -7872($fp)
	lw $t0, -1172($fp)
	sw $t0, -7876($fp)
	lw $t0, -7872($fp)
	lw $t1, -7876($fp)
	mul $t0, $t0, $t1
	sw $t0, -7880($fp)
	li $t0, 0
	lw $t1, -7880($fp)
	sub $t0, $t0, $t1
	sw $t0, -7884($fp)
	li $t0, 0
	lw $t1, -7884($fp)
	sub $t0, $t0, $t1
	sw $t0, -7888($fp)
	li $t0, 0
	lw $t1, -7888($fp)
	sub $t0, $t0, $t1
	sw $t0, -7892($fp)
	li $t0, 47286
	sw $t0, -7896($fp)
	lw $t1, -7892($fp)
	lw $t2, -7896($fp)
	bgt $t1, $t2, label558
	j label559
label558:
	li $t0, 1
	sw $t0, -7868($fp)
label559:
	li $t0, 0
	sw $t0, -7900($fp)
	li $t0, 29990
	sw $t0, -7904($fp)
	li $t0, 64500
	sw $t0, -7908($fp)
	lw $t0, -7904($fp)
	lw $t1, -7908($fp)
	mul $t0, $t0, $t1
	sw $t0, -7912($fp)
	li $t0, 0
	sw $t0, -7916($fp)
	lw $t0, -3716($fp)
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	sw $t0, -7924($fp)
	li $t0, 0
	sw $t0, -7928($fp)
	li $t0, 54906
	sw $t0, -7932($fp)
	li $t0, 3270
	sw $t0, -7936($fp)
	lw $t0, -7932($fp)
	lw $t1, -7936($fp)
	sub $t0, $t0, $t1
	sw $t0, -7940($fp)
	li $t0, 59214
	sw $t0, -7944($fp)
	lw $t1, -7940($fp)
	lw $t2, -7944($fp)
	bge $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -7928($fp)
label567:
	lw $t0, -7836($fp)
	sw $t0, -7948($fp)
	li $t0, 0
	lw $t1, -7948($fp)
	sub $t0, $t0, $t1
	sw $t0, -7952($fp)
	li $t0, 0
	sw $t0, -7956($fp)
	lw $t0, -5724($fp)
	sw $t0, -7960($fp)
	lw $t0, -1184($fp)
	sw $t0, -7964($fp)
	lw $t0, -7960($fp)
	lw $t1, -7964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7968($fp)
	lw $t0, -884($fp)
	sw $t0, -7972($fp)
	lw $t1, -7968($fp)
	lw $t2, -7972($fp)
	bgt $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -7956($fp)
label569:
	addi $sp, $sp, -4
	lw $t0, -7924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7956($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -7976($fp)
	addi $sp, $sp, 20
	li $t0, 12650
	sw $t0, -7980($fp)
	lw $t1, -7976($fp)
	lw $t2, -7980($fp)
	bge $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -7916($fp)
label565:
	li $t0, 0
	sw $t0, -7984($fp)
	lw $t0, -2936($fp)
	sw $t0, -7988($fp)
	lw $t1, -7988($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label570:
	li $t0, 1
	sw $t0, -7984($fp)
label571:
	li $t0, 1241
	sw $t0, -7992($fp)
	lw $t0, -7984($fp)
	lw $t1, -7992($fp)
	sub $t0, $t0, $t1
	sw $t0, -7996($fp)
	addi $sp, $sp, -4
	lw $t0, -7916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7996($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8000($fp)
	addi $sp, $sp, 12
	lw $t1, -7912($fp)
	lw $t2, -8000($fp)
	blt $t1, $t2, label563
	j label561
label563:
	addi $t0, $fp, -96
	sw $t0, -8004($fp)
	lw $t0, -2372($fp)
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
	li $t0, 0
	sw $t0, -8024($fp)
	li $t0, 36995
	sw $t0, -8028($fp)
	lw $t1, -8028($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label572:
	li $t0, 1
	sw $t0, -8024($fp)
label573:
	lw $t0, -3776($fp)
	sw $t0, -8032($fp)
	lw $t0, -8024($fp)
	lw $t1, -8032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8036($fp)
	li $t0, 0
	sw $t0, -8040($fp)
	li $t0, 0
	sw $t0, -8044($fp)
	lw $t0, -7848($fp)
	sw $t0, -8048($fp)
	lw $t0, -3812($fp)
	sw $t0, -8052($fp)
	lw $t1, -8048($fp)
	lw $t2, -8052($fp)
	bge $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -8044($fp)
label577:
	lw $t0, -7860($fp)
	sw $t0, -8056($fp)
	lw $t1, -8044($fp)
	lw $t2, -8056($fp)
	ble $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -8040($fp)
label575:
	li $t0, 0
	sw $t0, -8060($fp)
	li $t0, 61290
	sw $t0, -8064($fp)
	lw $t1, -8064($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label578:
	li $t0, 1
	sw $t0, -8060($fp)
label579:
	li $t0, 0
	lw $t1, -8060($fp)
	sub $t0, $t0, $t1
	sw $t0, -8068($fp)
	addi $sp, $sp, -4
	lw $t0, -8020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8068($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -8072($fp)
	addi $sp, $sp, 20
	lw $t1, -8072($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label562:
	lw $t0, -4780($fp)
	sw $t0, -8076($fp)
	li $t0, 0
	lw $t1, -8076($fp)
	sub $t0, $t0, $t1
	sw $t0, -8080($fp)
	li $t0, 5223
	sw $t0, -8084($fp)
	li $t0, 23791
	sw $t0, -8088($fp)
	lw $t0, -8084($fp)
	lw $t1, -8088($fp)
	mul $t0, $t0, $t1
	sw $t0, -8092($fp)
	lw $t0, -8080($fp)
	lw $t1, -8092($fp)
	sub $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t1, -8096($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -7900($fp)
label561:
label525:
label344:
label580:
	li $t0, 19093
	sw $t0, -8100($fp)
	lw $t1, -8100($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label581
label581:
	addi $t0, $fp, -412
	sw $t0, -8104($fp)
	li $t0, 4593
	sw $t0, -8108($fp)
	li $t0, 0
	sw $t0, -8112($fp)
	li $t0, 0
	sw $t0, -8116($fp)
	li $t0, 21202
	sw $t0, -8120($fp)
	li $t0, 11753
	sw $t0, -8124($fp)
	lw $t1, -8120($fp)
	lw $t2, -8124($fp)
	ble $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -8116($fp)
label589:
	li $t0, 43716
	sw $t0, -8128($fp)
	lw $t1, -8116($fp)
	lw $t2, -8128($fp)
	ble $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -8112($fp)
label587:
	addi $sp, $sp, -4
	lw $t0, -8108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8112($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8132($fp)
	addi $sp, $sp, 12
	li $t0, 33715
	sw $t0, -8136($fp)
	lw $t0, -8132($fp)
	lw $t1, -8136($fp)
	add $t0, $t0, $t1
	sw $t0, -8140($fp)
	li $t0, 4
	lw $t1, -8140($fp)
	mul $t0, $t0, $t1
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	lw $t1, -8104($fp)
	add $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	lw $t1, 0($t0)
	sw $t1, -8152($fp)
	lw $t1, -8152($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label583:
	addi $t0, $fp, -216
	sw $t0, -8156($fp)
	li $t0, 55214
	sw $t0, -8160($fp)
	lw $t0, -3596($fp)
	sw $t0, -8164($fp)
	lw $t0, -8160($fp)
	lw $t1, -8164($fp)
	mul $t0, $t0, $t1
	sw $t0, -8168($fp)
	li $t0, 0
	lw $t1, -8168($fp)
	sub $t0, $t0, $t1
	sw $t0, -8172($fp)
	li $t0, 4
	lw $t1, -8172($fp)
	mul $t0, $t0, $t1
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	lw $t1, -8156($fp)
	add $t0, $t0, $t1
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	lw $t1, 0($t0)
	sw $t1, -8184($fp)
	li $t0, 36202
	sw $t0, -8188($fp)
	lw $t0, -8188($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -8192($fp)
	li $t0, 0
	sw $t0, -8196($fp)
	lw $t0, -1160($fp)
	sw $t0, -8200($fp)
	lw $t0, -3800($fp)
	sw $t0, -8204($fp)
	lw $t0, -8200($fp)
	lw $t1, -8204($fp)
	sub $t0, $t0, $t1
	sw $t0, -8208($fp)
	lw $t0, -4780($fp)
	sw $t0, -8212($fp)
	lw $t1, -8208($fp)
	lw $t2, -8212($fp)
	ble $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -8196($fp)
label591:
	li $t0, 0
	sw $t0, -8216($fp)
	lw $t0, -4696($fp)
	sw $t0, -8220($fp)
	lw $t1, -8220($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label593
label594:
	lw $t0, -3788($fp)
	sw $t0, -8224($fp)
	lw $t1, -8224($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -8216($fp)
label593:
	li $t0, 0
	sw $t0, -8228($fp)
	lw $t0, -3608($fp)
	sw $t0, -8232($fp)
	lw $t1, -8232($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label597
label597:
	lw $t0, -4720($fp)
	sw $t0, -8236($fp)
	lw $t1, -8236($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -8228($fp)
label596:
	addi $sp, $sp, -4
	lw $t0, -8192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8228($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -8240($fp)
	addi $sp, $sp, 20
	lw $t0, -8184($fp)
	lw $t1, -8240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8244($fp)
	j label585
label584:
	li $t0, 55389
	sw $t0, -8252($fp)
	addi $t0, $fp, -8248
	sw $t0, -8256($fp)
	li $t0, 0
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8256($fp)
	lw $t1, -8264($fp)
	add $t0, $t0, $t1
	sw $t0, -8268($fp)
	lw $t0, -8252($fp)
	lw $t1, -8268($fp)
	sw $t0, 0($t1)
	lw $t0, -8268($fp)
	lw $t1, 0($t0)
	sw $t1, -8272($fp)
	li $t0, 35392
	sw $t0, -8276($fp)
	lw $t0, -8276($fp)
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	sw $t0, -8284($fp)
	li $t0, 56389
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	sw $t0, -8296($fp)
	li $t0, 1727
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	sw $t0, -8308($fp)
	li $t0, 4222
	sw $t0, -8312($fp)
	lw $t0, -8312($fp)
	sw $t0, -8316($fp)
	lw $t0, -8316($fp)
	sw $t0, -8320($fp)
label598:
	li $t0, 0
	sw $t0, -8324($fp)
	li $t0, 32805
	sw $t0, -8328($fp)
	addi $t0, $fp, -8248
	sw $t0, -8332($fp)
	lw $t0, -8280($fp)
	sw $t0, -8336($fp)
	li $t0, 4
	lw $t1, -8336($fp)
	mul $t0, $t0, $t1
	sw $t0, -8340($fp)
	lw $t0, -8340($fp)
	lw $t1, -8332($fp)
	add $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	lw $t1, 0($t0)
	sw $t1, -8348($fp)
	lw $t1, -8328($fp)
	lw $t2, -8348($fp)
	bgt $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -8324($fp)
label602:
	addi $t0, $fp, -84
	sw $t0, -8352($fp)
	lw $t0, -3644($fp)
	sw $t0, -8356($fp)
	li $t0, 4
	lw $t1, -8356($fp)
	mul $t0, $t0, $t1
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	lw $t1, -8352($fp)
	add $t0, $t0, $t1
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	lw $t1, 0($t0)
	sw $t1, -8368($fp)
	lw $t0, -4720($fp)
	sw $t0, -8372($fp)
	lw $t0, -8368($fp)
	lw $t1, -8372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8376($fp)
	li $t0, 0
	sw $t0, -8380($fp)
	lw $t0, -8304($fp)
	sw $t0, -8384($fp)
	lw $t1, -8384($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label603
label603:
	li $t0, 1
	sw $t0, -8380($fp)
label604:
	li $t0, 15885
	sw $t0, -8388($fp)
	lw $t0, -8380($fp)
	lw $t1, -8388($fp)
	sub $t0, $t0, $t1
	sw $t0, -8392($fp)
	lw $t0, -3776($fp)
	sw $t0, -8396($fp)
	lw $t0, -3800($fp)
	sw $t0, -8400($fp)
	lw $t0, -8396($fp)
	lw $t1, -8400($fp)
	sub $t0, $t0, $t1
	sw $t0, -8404($fp)
	li $t0, 64391
	sw $t0, -8408($fp)
	lw $t0, -2792($fp)
	sw $t0, -8412($fp)
	lw $t0, -8408($fp)
	lw $t1, -8412($fp)
	add $t0, $t0, $t1
	sw $t0, -8416($fp)
	lw $t0, -8292($fp)
	sw $t0, -8420($fp)
	lw $t0, -8416($fp)
	lw $t1, -8420($fp)
	sub $t0, $t0, $t1
	sw $t0, -8424($fp)
	li $t0, 43027
	sw $t0, -8428($fp)
	li $t0, 0
	lw $t1, -8428($fp)
	sub $t0, $t0, $t1
	sw $t0, -8432($fp)
	li $t0, 0
	lw $t1, -8432($fp)
	sub $t0, $t0, $t1
	sw $t0, -8436($fp)
	addi $t0, $fp, -312
	sw $t0, -8440($fp)
	lw $t0, -2156($fp)
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
	lw $t0, -4376($fp)
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -8464($fp)
	addi $sp, $sp, -4
	lw $t0, -8404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8464($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8468($fp)
	addi $sp, $sp, 24
	li $t0, 62645
	sw $t0, -8472($fp)
	addi $sp, $sp, -4
	lw $t0, -8376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8472($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -8476($fp)
	addi $sp, $sp, 20
	lw $t1, -8324($fp)
	lw $t2, -8476($fp)
	bgt $t1, $t2, label599
	j label600
label599:
	li $t0, 0
	sw $t0, -8480($fp)
	li $t0, 0
	sw $t0, -8484($fp)
	li $t0, 38265
	sw $t0, -8488($fp)
	lw $t1, -8488($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label608
label608:
	li $t0, 1
	sw $t0, -8484($fp)
label609:
	li $t0, 0
	lw $t1, -8484($fp)
	sub $t0, $t0, $t1
	sw $t0, -8492($fp)
	lw $t0, -1844($fp)
	sw $t0, -8496($fp)
	li $t0, 0
	lw $t1, -8496($fp)
	sub $t0, $t0, $t1
	sw $t0, -8500($fp)
	lw $t0, -8492($fp)
	lw $t1, -8500($fp)
	add $t0, $t0, $t1
	sw $t0, -8504($fp)
	li $t0, 46142
	sw $t0, -8508($fp)
	li $t0, 45875
	sw $t0, -8512($fp)
	lw $t0, -8508($fp)
	lw $t1, -8512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8516($fp)
	lw $t0, -8504($fp)
	lw $t1, -8516($fp)
	sub $t0, $t0, $t1
	sw $t0, -8520($fp)
	lw $t1, -8520($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label607
label607:
	lw $t0, -3392($fp)
	sw $t0, -8524($fp)
	lw $t1, -8524($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -8480($fp)
label606:
	j label598
label600:
	li $t0, 0
	sw $t0, -8528($fp)
	addi $t0, $fp, -140
	sw $t0, -8532($fp)
	lw $t0, -2180($fp)
	sw $t0, -8536($fp)
	lw $t0, -8536($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -8540($fp)
	li $t0, 4
	lw $t1, -8540($fp)
	mul $t0, $t0, $t1
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	lw $t1, -8532($fp)
	add $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	lw $t1, 0($t0)
	sw $t1, -8552($fp)
	addi $t0, $fp, -260
	sw $t0, -8556($fp)
	li $t0, 4
	sw $t0, -8560($fp)
	li $t0, 4
	lw $t1, -8560($fp)
	mul $t0, $t0, $t1
	sw $t0, -8564($fp)
	lw $t0, -8564($fp)
	lw $t1, -8556($fp)
	add $t0, $t0, $t1
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	lw $t1, 0($t0)
	sw $t1, -8572($fp)
	lw $t0, -1160($fp)
	sw $t0, -8576($fp)
	lw $t0, -8572($fp)
	lw $t1, -8576($fp)
	mul $t0, $t0, $t1
	sw $t0, -8580($fp)
	li $t0, 35245
	sw $t0, -8584($fp)
	li $t0, 0
	lw $t1, -8584($fp)
	sub $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -8580($fp)
	lw $t1, -8588($fp)
	add $t0, $t0, $t1
	sw $t0, -8592($fp)
	lw $t1, -8552($fp)
	lw $t2, -8592($fp)
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -8528($fp)
label611:
	lw $t0, -4588($fp)
	sw $t0, -8596($fp)
	li $t0, 0
	lw $t1, -8596($fp)
	sub $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t1, -8600($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label612
label612:
	li $t0, 40500
	sw $t0, -8604($fp)
	lw $t0, -8604($fp)
	sw $t0, -8608($fp)
	lw $t0, -8608($fp)
	sw $t0, -8612($fp)
	li $t0, 41061
	sw $t0, -8616($fp)
	li $t0, 0
	lw $t1, -8616($fp)
	sub $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t1, -8620($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 0
	sw $t0, -8624($fp)
	li $t0, 47896
	sw $t0, -8628($fp)
	li $t0, 0
	sw $t0, -8632($fp)
	li $t0, 36254
	sw $t0, -8636($fp)
	lw $t1, -8636($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label620:
	li $t0, 1
	sw $t0, -8632($fp)
label621:
	li $t0, 12521
	sw $t0, -8640($fp)
	lw $t0, -8632($fp)
	lw $t1, -8640($fp)
	mul $t0, $t0, $t1
	sw $t0, -8644($fp)
	lw $t0, -8628($fp)
	lw $t1, -8644($fp)
	add $t0, $t0, $t1
	sw $t0, -8648($fp)
	li $t0, 0
	sw $t0, -8652($fp)
	li $t0, 0
	sw $t0, -8656($fp)
	lw $t0, -1208($fp)
	sw $t0, -8660($fp)
	lw $t1, -8660($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label624:
	li $t0, 1
	sw $t0, -8656($fp)
label625:
	lw $t0, -2192($fp)
	sw $t0, -8664($fp)
	lw $t1, -8656($fp)
	lw $t2, -8664($fp)
	ble $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -8652($fp)
label623:
	lw $t1, -8648($fp)
	lw $t2, -8652($fp)
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -8624($fp)
label619:
	j label617
label616:
	li $t0, 0
	sw $t0, -8668($fp)
	li $t0, 53119
	sw $t0, -8672($fp)
	li $t0, 1
	sw $t0, -8676($fp)
	lw $t0, -8672($fp)
	lw $t1, -8676($fp)
	mul $t0, $t0, $t1
	sw $t0, -8680($fp)
	addi $t0, $fp, -96
	sw $t0, -8684($fp)
	li $t0, 1
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
	lw $t0, -8680($fp)
	lw $t1, -8700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8704($fp)
	lw $t1, -8704($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label627
label628:
	li $t0, 6262
	sw $t0, -8708($fp)
	lw $t1, -8708($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -8668($fp)
label627:
label617:
label629:
	li $t0, 9794
	sw $t0, -8712($fp)
	lw $t1, -8712($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label632
label632:
	addi $t0, $fp, -240
	sw $t0, -8716($fp)
	lw $t0, 4($fp)
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
	li $t0, 13378
	sw $t0, -8736($fp)
	li $t0, 0
	lw $t1, -8736($fp)
	sub $t0, $t0, $t1
	sw $t0, -8740($fp)
	lw $t1, -8732($fp)
	lw $t2, -8740($fp)
	beq $t1, $t2, label630
	j label631
label630:
	li $t0, 0
	sw $t0, -8744($fp)
	addi $t0, $fp, -96
	sw $t0, -8748($fp)
	li $t0, 0
	sw $t0, -8752($fp)
	li $t0, 39977
	sw $t0, -8756($fp)
	lw $t1, -8756($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label636
label636:
	li $t0, 1
	sw $t0, -8752($fp)
label637:
	li $t0, 4
	lw $t1, -8752($fp)
	mul $t0, $t0, $t1
	sw $t0, -8760($fp)
	lw $t0, -8760($fp)
	lw $t1, -8748($fp)
	add $t0, $t0, $t1
	sw $t0, -8764($fp)
	lw $t0, -8764($fp)
	lw $t1, 0($t0)
	sw $t1, -8768($fp)
	lw $t1, -8768($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label634
label635:
	addi $t0, $fp, -28
	sw $t0, -8772($fp)
	lw $t0, -3800($fp)
	sw $t0, -8776($fp)
	li $t0, 4
	lw $t1, -8776($fp)
	mul $t0, $t0, $t1
	sw $t0, -8780($fp)
	lw $t0, -8780($fp)
	lw $t1, -8772($fp)
	add $t0, $t0, $t1
	sw $t0, -8784($fp)
	lw $t0, -8784($fp)
	lw $t1, 0($t0)
	sw $t1, -8788($fp)
	li $t0, 0
	lw $t1, -8788($fp)
	sub $t0, $t0, $t1
	sw $t0, -8792($fp)
	lw $t1, -8792($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -8744($fp)
label634:
	j label629
label631:
	li $t0, 65008
	sw $t0, -8796($fp)
	lw $t0, -3848($fp)
	sw $t0, -8800($fp)
	lw $t0, -8796($fp)
	lw $t1, -8800($fp)
	mul $t0, $t0, $t1
	sw $t0, -8804($fp)
	addi $t0, $fp, -292
	sw $t0, -8808($fp)
	li $t0, 0
	sw $t0, -8812($fp)
	li $t0, 49580
	sw $t0, -8816($fp)
	lw $t1, -8816($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label642
label643:
	lw $t0, 8($fp)
	sw $t0, -8820($fp)
	lw $t1, -8820($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -8812($fp)
label642:
	li $t0, 4
	lw $t1, -8812($fp)
	mul $t0, $t0, $t1
	sw $t0, -8824($fp)
	lw $t0, -8824($fp)
	lw $t1, -8808($fp)
	add $t0, $t0, $t1
	sw $t0, -8828($fp)
	lw $t0, -8828($fp)
	lw $t1, 0($t0)
	sw $t1, -8832($fp)
	lw $t0, -8804($fp)
	lw $t1, -8832($fp)
	mul $t0, $t0, $t1
	sw $t0, -8836($fp)
	lw $t1, -8836($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label639
label638:
	li $t0, 0
	sw $t0, -8840($fp)
	lw $t0, -1808($fp)
	sw $t0, -8844($fp)
	lw $t0, -8844($fp)
	sw $t0, -8608($fp)
	lw $t0, -8608($fp)
	sw $t0, -8848($fp)
	li $t0, 0
	sw $t0, -8852($fp)
	li $t0, 34864
	sw $t0, -8856($fp)
	lw $t0, -1940($fp)
	sw $t0, -8860($fp)
	lw $t0, -8856($fp)
	lw $t1, -8860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8864($fp)
	li $t0, 40433
	sw $t0, -8868($fp)
	lw $t1, -8864($fp)
	lw $t2, -8868($fp)
	bge $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -8852($fp)
label647:
	addi $sp, $sp, -4
	lw $t0, -8848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8852($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8872($fp)
	addi $sp, $sp, 12
	lw $t0, -3860($fp)
	sw $t0, -8876($fp)
	lw $t1, -8872($fp)
	lw $t2, -8876($fp)
	beq $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -8840($fp)
label645:
	li $t0, 0
	sw $t0, -8880($fp)
	lw $t0, -824($fp)
	sw $t0, -8884($fp)
	li $t0, 29830
	sw $t0, -8888($fp)
	lw $t0, -8884($fp)
	lw $t1, -8888($fp)
	sub $t0, $t0, $t1
	sw $t0, -8892($fp)
	lw $t0, -824($fp)
	sw $t0, -8896($fp)
	lw $t1, -8892($fp)
	lw $t2, -8896($fp)
	blt $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -8880($fp)
label649:
	addi $sp, $sp, -4
	lw $t0, -8840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8880($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8900($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -216
	sw $t0, -8904($fp)
	lw $t0, -4792($fp)
	sw $t0, -8908($fp)
	li $t0, 4
	lw $t1, -8908($fp)
	mul $t0, $t0, $t1
	sw $t0, -8912($fp)
	lw $t0, -8912($fp)
	lw $t1, -8904($fp)
	add $t0, $t0, $t1
	sw $t0, -8916($fp)
	lw $t0, -8916($fp)
	lw $t1, 0($t0)
	sw $t1, -8920($fp)
	lw $t0, -8900($fp)
	lw $t1, -8920($fp)
	mul $t0, $t0, $t1
	sw $t0, -8924($fp)
	jal f10
	sw $v0, -8928($fp)
	addi $sp, $sp, 4
	lw $t0, -8924($fp)
	lw $t1, -8928($fp)
	add $t0, $t0, $t1
	sw $t0, -8932($fp)
	j label640
label639:
	li $t0, 31558
	sw $t0, -8936($fp)
	addi $t0, $fp, -412
	sw $t0, -8940($fp)
	li $t0, 7
	sw $t0, -8944($fp)
	li $t0, 4
	lw $t1, -8944($fp)
	mul $t0, $t0, $t1
	sw $t0, -8948($fp)
	lw $t0, -8948($fp)
	lw $t1, -8940($fp)
	add $t0, $t0, $t1
	sw $t0, -8952($fp)
	lw $t0, -8952($fp)
	lw $t1, 0($t0)
	sw $t1, -8956($fp)
	lw $t0, -8936($fp)
	lw $t1, -8956($fp)
	mul $t0, $t0, $t1
	sw $t0, -8960($fp)
	addi $t0, $fp, -96
	sw $t0, -8964($fp)
	li $t0, 0
	sw $t0, -8968($fp)
	lw $t0, -4376($fp)
	sw $t0, -8972($fp)
	lw $t1, -8972($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label650:
	li $t0, 1
	sw $t0, -8968($fp)
label651:
	li $t0, 4
	lw $t1, -8968($fp)
	mul $t0, $t0, $t1
	sw $t0, -8976($fp)
	lw $t0, -8976($fp)
	lw $t1, -8964($fp)
	add $t0, $t0, $t1
	sw $t0, -8980($fp)
	lw $t0, -8980($fp)
	lw $t1, 0($t0)
	sw $t1, -8984($fp)
	lw $t0, -8960($fp)
	lw $t1, -8984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8988($fp)
label640:
	j label614
label613:
	li $t0, 0
	sw $t0, -8992($fp)
	li $t0, 28667
	sw $t0, -8996($fp)
	li $t0, 0
	sw $t0, -9000($fp)
	lw $t0, -3788($fp)
	sw $t0, -9004($fp)
	li $t0, 52700
	sw $t0, -9008($fp)
	lw $t0, -9004($fp)
	lw $t1, -9008($fp)
	mul $t0, $t0, $t1
	sw $t0, -9012($fp)
	lw $t1, -9012($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label656
label656:
	lw $t0, -1064($fp)
	sw $t0, -9016($fp)
	lw $t1, -9016($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label655
label654:
	li $t0, 1
	sw $t0, -9000($fp)
label655:
	lw $t0, -3656($fp)
	sw $t0, -9020($fp)
	li $t0, 54843
	sw $t0, -9024($fp)
	lw $t0, -9024($fp)
	sw $t0, -8316($fp)
	lw $t0, -8316($fp)
	sw $t0, -9028($fp)
	addi $t0, $fp, -180
	sw $t0, -9032($fp)
	li $t0, 8
	sw $t0, -9036($fp)
	li $t0, 4
	lw $t1, -9036($fp)
	mul $t0, $t0, $t1
	sw $t0, -9040($fp)
	lw $t0, -9040($fp)
	lw $t1, -9032($fp)
	add $t0, $t0, $t1
	sw $t0, -9044($fp)
	lw $t0, -9044($fp)
	lw $t1, 0($t0)
	sw $t1, -9048($fp)
	li $t0, 44552
	sw $t0, -9052($fp)
	lw $t0, -9048($fp)
	lw $t1, -9052($fp)
	mul $t0, $t0, $t1
	sw $t0, -9056($fp)
	addi $sp, $sp, -4
	lw $t0, -9000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9056($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9060($fp)
	addi $sp, $sp, 20
	lw $t0, -8996($fp)
	lw $t1, -9060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9064($fp)
	li $t0, 0
	sw $t0, -9068($fp)
	lw $t0, -1196($fp)
	sw $t0, -9072($fp)
	lw $t1, -9072($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -9068($fp)
label658:
	li $t0, 0
	sw $t0, -9076($fp)
	li $t0, 24892
	sw $t0, -9080($fp)
	lw $t1, -9080($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label659
label659:
	li $t0, 1
	sw $t0, -9076($fp)
label660:
	lw $t0, -9068($fp)
	lw $t1, -9076($fp)
	sub $t0, $t0, $t1
	sw $t0, -9084($fp)
	lw $t1, -9064($fp)
	lw $t2, -9084($fp)
	bne $t1, $t2, label652
	j label653
label652:
	li $t0, 1
	sw $t0, -8992($fp)
label653:
	lw $ra, -4($fp)
	lw $v0, -8992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label614:
label585:
	j label580
label582:
	lw $t0, -3704($fp)
	sw $t0, -9088($fp)
	li $t0, 0
	lw $t1, -9088($fp)
	sub $t0, $t0, $t1
	sw $t0, -9092($fp)
	lw $t0, -2372($fp)
	sw $t0, -9096($fp)
	li $t0, 26537
	sw $t0, -9100($fp)
	lw $t0, -9096($fp)
	lw $t1, -9100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9104($fp)
	li $t0, 34548
	sw $t0, -9108($fp)
	lw $t0, -9104($fp)
	lw $t1, -9108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9112($fp)
	li $t0, 1502
	sw $t0, -9116($fp)
	lw $t0, -9112($fp)
	lw $t1, -9116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9120($fp)
	lw $t0, -9092($fp)
	lw $t1, -9120($fp)
	sub $t0, $t0, $t1
	sw $t0, -9124($fp)
	lw $t1, -9124($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label662
label661:
	li $t0, 0
	sw $t0, -9128($fp)
	li $t0, 0
	sw $t0, -9132($fp)
	lw $t0, -3716($fp)
	sw $t0, -9136($fp)
	li $t0, 10073
	sw $t0, -9140($fp)
	lw $t0, -9136($fp)
	lw $t1, -9140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9144($fp)
	li $t0, 42497
	sw $t0, -9148($fp)
	lw $t0, -9144($fp)
	lw $t1, -9148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9152($fp)
	li $t0, 0
	sw $t0, -9156($fp)
	li $t0, 37755
	sw $t0, -9160($fp)
	lw $t1, -9160($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label669
label669:
	li $t0, 1
	sw $t0, -9156($fp)
label670:
	lw $t1, -9152($fp)
	lw $t2, -9156($fp)
	bge $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -9132($fp)
label668:
	li $t0, 0
	sw $t0, -9164($fp)
	lw $t0, -3836($fp)
	sw $t0, -9168($fp)
	lw $t1, -9168($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -9164($fp)
label672:
	lw $t1, -9132($fp)
	lw $t2, -9164($fp)
	bgt $t1, $t2, label664
	j label666
label666:
	li $t0, 0
	sw $t0, -9172($fp)
	li $t0, 22594
	sw $t0, -9176($fp)
	lw $t1, -9176($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label673:
	li $t0, 1
	sw $t0, -9172($fp)
label674:
	li $t0, 30080
	sw $t0, -9180($fp)
	li $t0, 0
	lw $t1, -9180($fp)
	sub $t0, $t0, $t1
	sw $t0, -9184($fp)
	lw $t0, -9172($fp)
	lw $t1, -9184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9188($fp)
	lw $t1, -9188($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -9128($fp)
label665:
	j label663
label662:
	li $t0, 32264
	sw $t0, -9192($fp)
	lw $t0, -9192($fp)
	sw $t0, -9196($fp)
	lw $t0, -9196($fp)
	sw $t0, -9200($fp)
	li $t0, 54208
	sw $t0, -9216($fp)
	addi $t0, $fp, -9212
	sw $t0, -9220($fp)
	li $t0, 0
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9228($fp)
	lw $t0, -9220($fp)
	lw $t1, -9228($fp)
	add $t0, $t0, $t1
	sw $t0, -9232($fp)
	lw $t0, -9216($fp)
	lw $t1, -9232($fp)
	sw $t0, 0($t1)
	lw $t0, -9232($fp)
	lw $t1, 0($t0)
	sw $t1, -9236($fp)
	li $t0, 38865
	sw $t0, -9240($fp)
	addi $t0, $fp, -9212
	sw $t0, -9244($fp)
	li $t0, 1
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9252($fp)
	lw $t0, -9244($fp)
	lw $t1, -9252($fp)
	add $t0, $t0, $t1
	sw $t0, -9256($fp)
	lw $t0, -9240($fp)
	lw $t1, -9256($fp)
	sw $t0, 0($t1)
	lw $t0, -9256($fp)
	lw $t1, 0($t0)
	sw $t1, -9260($fp)
	li $t0, 38526
	sw $t0, -9264($fp)
	addi $t0, $fp, -9212
	sw $t0, -9268($fp)
	li $t0, 2
	sw $t0, -9272($fp)
	lw $t0, -9272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9276($fp)
	lw $t0, -9268($fp)
	lw $t1, -9276($fp)
	add $t0, $t0, $t1
	sw $t0, -9280($fp)
	lw $t0, -9264($fp)
	lw $t1, -9280($fp)
	sw $t0, 0($t1)
	lw $t0, -9280($fp)
	lw $t1, 0($t0)
	sw $t1, -9284($fp)
	li $t0, 0
	sw $t0, -9288($fp)
	li $t0, 6354
	sw $t0, -9292($fp)
	lw $t1, -9292($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label675
label675:
	li $t0, 1
	sw $t0, -9288($fp)
label676:
	li $t0, 8820
	sw $t0, -9296($fp)
	lw $t0, -9296($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -9300($fp)
	li $t0, 0
	sw $t0, -9304($fp)
	li $t0, 42798
	sw $t0, -9308($fp)
	lw $t1, -9308($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label680
label680:
	li $t0, 32803
	sw $t0, -9312($fp)
	lw $t1, -9312($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label679
label679:
	li $t0, 11186
	sw $t0, -9316($fp)
	lw $t1, -9316($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -9304($fp)
label678:
	li $t0, 0
	sw $t0, -9320($fp)
	lw $t0, -2768($fp)
	sw $t0, -9324($fp)
	li $t0, 0
	lw $t1, -9324($fp)
	sub $t0, $t0, $t1
	sw $t0, -9328($fp)
	lw $t1, -9328($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label681
label681:
	li $t0, 1
	sw $t0, -9320($fp)
label682:
	addi $sp, $sp, -4
	lw $t0, -9288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9320($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -9332($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -9336($fp)
	li $t0, 0
	sw $t0, -9340($fp)
	li $t0, 63475
	sw $t0, -9344($fp)
	lw $t0, -3752($fp)
	sw $t0, -9348($fp)
	lw $t1, -9344($fp)
	lw $t2, -9348($fp)
	ble $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -9340($fp)
label686:
	li $t0, 36288
	sw $t0, -9352($fp)
	lw $t1, -9340($fp)
	lw $t2, -9352($fp)
	beq $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -9336($fp)
label684:
	lw $t0, -3728($fp)
	sw $t0, -9356($fp)
	li $t0, 12967
	sw $t0, -9360($fp)
	lw $t0, -9356($fp)
	lw $t1, -9360($fp)
	mul $t0, $t0, $t1
	sw $t0, -9364($fp)
	lw $t0, -3740($fp)
	sw $t0, -9368($fp)
	lw $t0, -9364($fp)
	lw $t1, -9368($fp)
	add $t0, $t0, $t1
	sw $t0, -9372($fp)
	li $t0, 64002
	sw $t0, -9376($fp)
	li $t0, 1
	sw $t0, -9380($fp)
	lw $t0, -9376($fp)
	lw $t1, -9380($fp)
	mul $t0, $t0, $t1
	sw $t0, -9384($fp)
	addi $sp, $sp, -4
	lw $t0, -9332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9384($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9388($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -9392($fp)
	li $t0, 18889
	sw $t0, -9396($fp)
	lw $t0, -1964($fp)
	sw $t0, -9400($fp)
	lw $t1, -9396($fp)
	lw $t2, -9400($fp)
	ble $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -9392($fp)
label691:
	lw $t0, -9392($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -9404($fp)
	lw $t0, -9404($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -9408($fp)
	lw $t1, -9408($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label688
label687:
	li $t0, 37487
	sw $t0, -9412($fp)
	lw $t0, -9412($fp)
	sw $t0, -9416($fp)
	lw $t0, -9416($fp)
	sw $t0, -9420($fp)
	li $t0, 0
	sw $t0, -9424($fp)
	li $t0, 0
	sw $t0, -9428($fp)
	lw $t0, -1916($fp)
	sw $t0, -9432($fp)
	lw $t0, -1172($fp)
	sw $t0, -9436($fp)
	lw $t1, -9432($fp)
	lw $t2, -9436($fp)
	bge $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -9428($fp)
label699:
	lw $t0, -2768($fp)
	sw $t0, -9440($fp)
	lw $t1, -9428($fp)
	lw $t2, -9440($fp)
	blt $t1, $t2, label696
	j label697
label696:
	li $t0, 1
	sw $t0, -9424($fp)
label697:
	li $t0, 0
	sw $t0, -9444($fp)
	lw $t0, -1028($fp)
	sw $t0, -9448($fp)
	li $t0, 22933
	sw $t0, -9452($fp)
	lw $t0, -9448($fp)
	lw $t1, -9452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9456($fp)
	li $t0, 25447
	sw $t0, -9460($fp)
	lw $t1, -9456($fp)
	lw $t2, -9460($fp)
	bge $t1, $t2, label700
	j label701
label700:
	li $t0, 1
	sw $t0, -9444($fp)
label701:
	li $t0, 0
	sw $t0, -9464($fp)
	lw $t0, -1556($fp)
	sw $t0, -9468($fp)
	lw $t0, -824($fp)
	sw $t0, -9472($fp)
	lw $t0, -9468($fp)
	lw $t1, -9472($fp)
	mul $t0, $t0, $t1
	sw $t0, -9476($fp)
	lw $t0, -848($fp)
	sw $t0, -9480($fp)
	lw $t1, -9476($fp)
	lw $t2, -9480($fp)
	ble $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -9464($fp)
label703:
	li $t0, 0
	sw $t0, -9484($fp)
	lw $t0, -1016($fp)
	sw $t0, -9488($fp)
	lw $t1, -9488($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label704
label704:
	li $t0, 1
	sw $t0, -9484($fp)
label705:
	addi $sp, $sp, -4
	lw $t0, -9424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9484($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -9492($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -9492($fp)
	sub $t0, $t0, $t1
	sw $t0, -9496($fp)
	lw $t0, -1940($fp)
	sw $t0, -9500($fp)
	li $t0, 16503
	sw $t0, -9504($fp)
	lw $t0, -9500($fp)
	lw $t1, -9504($fp)
	mul $t0, $t0, $t1
	sw $t0, -9508($fp)
	li $t0, 12240
	sw $t0, -9512($fp)
	lw $t0, -9508($fp)
	lw $t1, -9512($fp)
	mul $t0, $t0, $t1
	sw $t0, -9516($fp)
	lw $t1, -9496($fp)
	lw $t2, -9516($fp)
	ble $t1, $t2, label692
	j label695
label695:
	lw $t0, -2360($fp)
	sw $t0, -9520($fp)
	lw $t1, -9520($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label692:
	li $t0, 0
	sw $t0, -9524($fp)
	addi $t0, $fp, -480
	sw $t0, -9528($fp)
	li $t0, 3
	sw $t0, -9532($fp)
	li $t0, 4
	lw $t1, -9532($fp)
	mul $t0, $t0, $t1
	sw $t0, -9536($fp)
	lw $t0, -9536($fp)
	lw $t1, -9528($fp)
	add $t0, $t0, $t1
	sw $t0, -9540($fp)
	lw $t0, -9540($fp)
	lw $t1, 0($t0)
	sw $t1, -9544($fp)
	lw $t1, -9544($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label706
label706:
	li $t0, 1
	sw $t0, -9524($fp)
label707:
	li $t0, 0
	sw $t0, -9548($fp)
	li $t0, 38777
	sw $t0, -9552($fp)
	lw $t0, -2372($fp)
	sw $t0, -9556($fp)
	lw $t0, -9552($fp)
	lw $t1, -9556($fp)
	add $t0, $t0, $t1
	sw $t0, -9560($fp)
	lw $t1, -9560($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label710
label710:
	lw $t0, -3716($fp)
	sw $t0, -9564($fp)
	lw $t1, -9564($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -9548($fp)
label709:
	li $t0, 0
	sw $t0, -9568($fp)
	li $t0, 0
	sw $t0, -9572($fp)
	li $t0, 41395
	sw $t0, -9576($fp)
	lw $t0, -3140($fp)
	sw $t0, -9580($fp)
	lw $t1, -9576($fp)
	lw $t2, -9580($fp)
	bgt $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -9572($fp)
label714:
	lw $t0, -2168($fp)
	sw $t0, -9584($fp)
	lw $t1, -9572($fp)
	lw $t2, -9584($fp)
	beq $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -9568($fp)
label712:
	li $t0, 0
	sw $t0, -9588($fp)
	lw $t0, -9416($fp)
	sw $t0, -9592($fp)
	lw $t0, -2780($fp)
	sw $t0, -9596($fp)
	lw $t0, -9592($fp)
	lw $t1, -9596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9600($fp)
	lw $t1, -9600($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label716
label717:
	li $t0, 12612
	sw $t0, -9604($fp)
	lw $t1, -9604($fp)
	li $t2, 0
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -9588($fp)
label716:
	addi $sp, $sp, -4
	lw $t0, -9524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9588($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -9608($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -9608($fp)
	sub $t0, $t0, $t1
	sw $t0, -9612($fp)
	li $t0, 0
	lw $t1, -9612($fp)
	sub $t0, $t0, $t1
	sw $t0, -9616($fp)
	lw $ra, -4($fp)
	lw $v0, -9616($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label694
label693:
	li $t0, 40278
	sw $t0, -9620($fp)
	lw $t0, -3716($fp)
	sw $t0, -9624($fp)
	lw $t0, -9620($fp)
	lw $t1, -9624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9628($fp)
label694:
	j label689
label688:
label718:
	li $t0, 57233
	sw $t0, -9632($fp)
	lw $t1, -9632($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label721
label721:
	li $t0, 12958
	sw $t0, -9636($fp)
	lw $t1, -9636($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label719
label719:
	li $t0, 0
	sw $t0, -9640($fp)
	addi $t0, $fp, -76
	sw $t0, -9644($fp)
	lw $t0, -3860($fp)
	sw $t0, -9648($fp)
	li $t0, 0
	lw $t1, -9648($fp)
	sub $t0, $t0, $t1
	sw $t0, -9652($fp)
	li $t0, 4
	lw $t1, -9652($fp)
	mul $t0, $t0, $t1
	sw $t0, -9656($fp)
	lw $t0, -9656($fp)
	lw $t1, -9644($fp)
	add $t0, $t0, $t1
	sw $t0, -9660($fp)
	lw $t0, -9660($fp)
	lw $t1, 0($t0)
	sw $t1, -9664($fp)
	li $t0, 0
	sw $t0, -9668($fp)
	addi $t0, $fp, -260
	sw $t0, -9672($fp)
	li $t0, 2
	sw $t0, -9676($fp)
	li $t0, 4
	lw $t1, -9676($fp)
	mul $t0, $t0, $t1
	sw $t0, -9680($fp)
	lw $t0, -9680($fp)
	lw $t1, -9672($fp)
	add $t0, $t0, $t1
	sw $t0, -9684($fp)
	lw $t0, -9684($fp)
	lw $t1, 0($t0)
	sw $t1, -9688($fp)
	lw $t1, -9688($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label724
label724:
	li $t0, 1
	sw $t0, -9668($fp)
label725:
	lw $t0, -9664($fp)
	lw $t1, -9668($fp)
	mul $t0, $t0, $t1
	sw $t0, -9692($fp)
	li $t0, 0
	sw $t0, -9696($fp)
	lw $t0, -3716($fp)
	sw $t0, -9700($fp)
	lw $t1, -9700($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label728
label728:
	lw $t0, -1916($fp)
	sw $t0, -9704($fp)
	lw $t1, -9704($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -9696($fp)
label727:
	li $t0, 0
	sw $t0, -9708($fp)
	li $t0, 16368
	sw $t0, -9712($fp)
	lw $t1, -9712($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label731
label731:
	lw $t0, -3836($fp)
	sw $t0, -9716($fp)
	lw $t1, -9716($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -9708($fp)
label730:
	li $t0, 2964
	sw $t0, -9720($fp)
	li $t0, 43039
	sw $t0, -9724($fp)
	li $t0, 44761
	sw $t0, -9728($fp)
	lw $t0, -9724($fp)
	lw $t1, -9728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9732($fp)
	addi $sp, $sp, -4
	lw $t0, -9696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9732($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -9736($fp)
	addi $sp, $sp, 20
	lw $t1, -9692($fp)
	lw $t2, -9736($fp)
	beq $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -9640($fp)
label723:
	j label718
label720:
label689:
	addi $t0, $fp, -128
	sw $t0, -9740($fp)
	lw $t0, -1076($fp)
	sw $t0, -9744($fp)
	li $t0, 0
	sw $t0, -9748($fp)
	li $t0, 3076
	sw $t0, -9752($fp)
	lw $t0, -1172($fp)
	sw $t0, -9756($fp)
	lw $t0, -9752($fp)
	lw $t1, -9756($fp)
	mul $t0, $t0, $t1
	sw $t0, -9760($fp)
	lw $t1, -9760($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label737
label737:
	li $t0, 30719
	sw $t0, -9764($fp)
	lw $t1, -9764($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -9748($fp)
label736:
	addi $t0, $fp, -9212
	sw $t0, -9768($fp)
	li $t0, 2
	sw $t0, -9772($fp)
	li $t0, 4
	lw $t1, -9772($fp)
	mul $t0, $t0, $t1
	sw $t0, -9776($fp)
	lw $t0, -9776($fp)
	lw $t1, -9768($fp)
	add $t0, $t0, $t1
	sw $t0, -9780($fp)
	lw $t0, -9780($fp)
	lw $t1, 0($t0)
	sw $t1, -9784($fp)
	addi $t0, $fp, -28
	sw $t0, -9788($fp)
	lw $t0, -3704($fp)
	sw $t0, -9792($fp)
	li $t0, 4
	lw $t1, -9792($fp)
	mul $t0, $t0, $t1
	sw $t0, -9796($fp)
	lw $t0, -9796($fp)
	lw $t1, -9788($fp)
	add $t0, $t0, $t1
	sw $t0, -9800($fp)
	lw $t0, -9800($fp)
	lw $t1, 0($t0)
	sw $t1, -9804($fp)
	addi $sp, $sp, -4
	lw $t0, -9744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9804($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -9808($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -9808($fp)
	mul $t0, $t0, $t1
	sw $t0, -9812($fp)
	lw $t0, -9812($fp)
	lw $t1, -9740($fp)
	add $t0, $t0, $t1
	sw $t0, -9816($fp)
	lw $t0, -9816($fp)
	lw $t1, 0($t0)
	sw $t1, -9820($fp)
	li $t0, 0
	lw $t1, -9820($fp)
	sub $t0, $t0, $t1
	sw $t0, -9824($fp)
	lw $t1, -9824($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label732
label732:
	li $t0, 64906
	sw $t0, -9828($fp)
	li $t0, 0
	sw $t0, -9832($fp)
	lw $t0, -1040($fp)
	sw $t0, -9836($fp)
	lw $t1, -9836($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label741
label741:
	li $t0, 1
	sw $t0, -9832($fp)
label742:
	lw $t0, -9828($fp)
	lw $t1, -9832($fp)
	mul $t0, $t0, $t1
	sw $t0, -9840($fp)
	li $t0, 0
	lw $t1, -9840($fp)
	sub $t0, $t0, $t1
	sw $t0, -9844($fp)
	lw $t1, -9844($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label739
label738:
	li $t0, 39365
	sw $t0, -9848($fp)
	lw $t0, -1184($fp)
	sw $t0, -9852($fp)
	lw $t0, -9848($fp)
	lw $t1, -9852($fp)
	add $t0, $t0, $t1
	sw $t0, -9856($fp)
	lw $ra, -4($fp)
	lw $v0, -9856($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label740
label739:
	li $t0, 0
	sw $t0, -9860($fp)
	lw $t0, -1088($fp)
	sw $t0, -9864($fp)
	lw $t1, -9864($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label745
label745:
	li $t0, 0
	sw $t0, -9868($fp)
	li $t0, 7981
	sw $t0, -9872($fp)
	lw $t1, -9872($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label746
label746:
	li $t0, 1
	sw $t0, -9868($fp)
label747:
	lw $t0, -3716($fp)
	sw $t0, -9876($fp)
	lw $t0, -9868($fp)
	lw $t1, -9876($fp)
	sub $t0, $t0, $t1
	sw $t0, -9880($fp)
	li $t0, 16801
	sw $t0, -9884($fp)
	li $t0, 0
	lw $t1, -9884($fp)
	sub $t0, $t0, $t1
	sw $t0, -9888($fp)
	li $t0, 0
	lw $t1, -9888($fp)
	sub $t0, $t0, $t1
	sw $t0, -9892($fp)
	addi $t0, $fp, -260
	sw $t0, -9896($fp)
	li $t0, 2
	sw $t0, -9900($fp)
	li $t0, 4
	lw $t1, -9900($fp)
	mul $t0, $t0, $t1
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	lw $t1, -9896($fp)
	add $t0, $t0, $t1
	sw $t0, -9908($fp)
	lw $t0, -9908($fp)
	lw $t1, 0($t0)
	sw $t1, -9912($fp)
	addi $sp, $sp, -4
	lw $t0, -9892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9912($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9916($fp)
	addi $sp, $sp, 12
	lw $t1, -9880($fp)
	lw $t2, -9916($fp)
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -9860($fp)
label744:
label740:
	j label734
label733:
	li $t0, 61461
	sw $t0, -9920($fp)
	lw $t0, -9920($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -9924($fp)
	li $t0, 0
	sw $t0, -9928($fp)
	li $t0, 38528
	sw $t0, -9932($fp)
	li $t0, 3904
	sw $t0, -9936($fp)
	lw $t0, -9932($fp)
	lw $t1, -9936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9940($fp)
	li $t0, 54288
	sw $t0, -9944($fp)
	lw $t1, -9940($fp)
	lw $t2, -9944($fp)
	beq $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -9928($fp)
label752:
	li $t0, 0
	sw $t0, -9948($fp)
	lw $t0, -824($fp)
	sw $t0, -9952($fp)
	lw $t1, -9952($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label753
label753:
	li $t0, 1
	sw $t0, -9948($fp)
label754:
	li $t0, 0
	lw $t1, -9948($fp)
	sub $t0, $t0, $t1
	sw $t0, -9956($fp)
	jal f10
	sw $v0, -9960($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -9924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9960($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -9964($fp)
	addi $sp, $sp, 20
	lw $t0, -9964($fp)
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	sw $t0, -9968($fp)
	lw $t1, -9968($fp)
	li $t2, 0
	bne $t1, $t2, label748
	j label749
label748:
	li $t0, 0
	sw $t0, -9972($fp)
	li $t0, 29351
	sw $t0, -9976($fp)
	lw $t1, -9976($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label755
label755:
	li $t0, 1
	sw $t0, -9972($fp)
label756:
	lw $ra, -4($fp)
	lw $v0, -9972($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label750
label749:
	li $t0, 5255
	sw $t0, -9980($fp)
	li $t0, 0
	lw $t1, -9980($fp)
	sub $t0, $t0, $t1
	sw $t0, -9984($fp)
label750:
label734:
	li $t0, 8165
	sw $t0, -9988($fp)
	lw $t0, -9988($fp)
	sw $t0, -9992($fp)
	lw $t0, -9992($fp)
	sw $t0, -9996($fp)
	li $t0, 41963
	sw $t0, -10000($fp)
	lw $t0, -10000($fp)
	sw $t0, -10004($fp)
	lw $t0, -10004($fp)
	sw $t0, -10008($fp)
	li $t0, 46651
	sw $t0, -10012($fp)
	lw $t0, -10012($fp)
	sw $t0, -10016($fp)
	lw $t0, -10016($fp)
	sw $t0, -10020($fp)
	lw $t0, -9992($fp)
	sw $t0, -10024($fp)
	lw $t0, -10024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10004($fp)
	sw $t0, -10028($fp)
	lw $t0, -10028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10016($fp)
	sw $t0, -10032($fp)
	lw $t0, -10032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -10036($fp)
	li $t0, 46943
	sw $t0, -10040($fp)
	lw $t0, -10004($fp)
	sw $t0, -10044($fp)
	lw $t1, -10040($fp)
	lw $t2, -10044($fp)
	bne $t1, $t2, label757
	j label759
label759:
	lw $t0, -2348($fp)
	sw $t0, -10048($fp)
	lw $t1, -10048($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -10036($fp)
label758:
	li $t0, 0
	sw $t0, -10052($fp)
	lw $t0, -9992($fp)
	sw $t0, -10056($fp)
	lw $t1, -10056($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label760
label760:
	li $t0, 1
	sw $t0, -10052($fp)
label761:
	lw $t0, -2804($fp)
	sw $t0, -10060($fp)
	lw $t0, -4352($fp)
	sw $t0, -10064($fp)
	lw $t0, -10060($fp)
	lw $t1, -10064($fp)
	mul $t0, $t0, $t1
	sw $t0, -10068($fp)
	lw $t0, -2780($fp)
	sw $t0, -10072($fp)
	lw $t0, -10068($fp)
	lw $t1, -10072($fp)
	mul $t0, $t0, $t1
	sw $t0, -10076($fp)
	addi $t0, $fp, -28
	sw $t0, -10080($fp)
	lw $t0, -3632($fp)
	sw $t0, -10084($fp)
	li $t0, 4
	lw $t1, -10084($fp)
	mul $t0, $t0, $t1
	sw $t0, -10088($fp)
	lw $t0, -10088($fp)
	lw $t1, -10080($fp)
	add $t0, $t0, $t1
	sw $t0, -10092($fp)
	lw $t0, -10092($fp)
	lw $t1, 0($t0)
	sw $t1, -10096($fp)
	addi $sp, $sp, -4
	lw $t0, -10036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10096($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -10100($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -10104($fp)
	li $t0, 34183
	sw $t0, -10108($fp)
	li $t0, 0
	lw $t1, -10108($fp)
	sub $t0, $t0, $t1
	sw $t0, -10112($fp)
	lw $t1, -10112($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label762:
	li $t0, 1
	sw $t0, -10104($fp)
label763:
	li $t0, 30070
	sw $t0, -10116($fp)
	lw $t0, -3692($fp)
	sw $t0, -10120($fp)
	addi $sp, $sp, -4
	lw $t0, -10116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10120($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10124($fp)
	addi $sp, $sp, 12
	lw $t0, -3740($fp)
	sw $t0, -10128($fp)
	li $t0, 15285
	sw $t0, -10132($fp)
	lw $t0, -10128($fp)
	lw $t1, -10132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10136($fp)
	li $t0, 0
	lw $t1, -10136($fp)
	sub $t0, $t0, $t1
	sw $t0, -10140($fp)
	li $t0, 0
	sw $t0, -10144($fp)
	lw $t0, -836($fp)
	sw $t0, -10148($fp)
	li $t0, 0
	lw $t1, -10148($fp)
	sub $t0, $t0, $t1
	sw $t0, -10152($fp)
	lw $t1, -10152($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label764
label764:
	li $t0, 1
	sw $t0, -10144($fp)
label765:
	li $t0, 0
	sw $t0, -10156($fp)
	addi $t0, $fp, -60
	sw $t0, -10160($fp)
	li $t0, 0
	sw $t0, -10164($fp)
	li $t0, 4
	lw $t1, -10164($fp)
	mul $t0, $t0, $t1
	sw $t0, -10168($fp)
	lw $t0, -10168($fp)
	lw $t1, -10160($fp)
	add $t0, $t0, $t1
	sw $t0, -10172($fp)
	lw $t0, -10172($fp)
	lw $t1, 0($t0)
	sw $t1, -10176($fp)
	lw $t1, -10176($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label767
label768:
	li $t0, 21685
	sw $t0, -10180($fp)
	lw $t1, -10180($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -10156($fp)
label767:
	lw $t0, -10016($fp)
	sw $t0, -10184($fp)
	lw $t0, -1856($fp)
	sw $t0, -10188($fp)
	lw $t0, -10184($fp)
	lw $t1, -10188($fp)
	mul $t0, $t0, $t1
	sw $t0, -10192($fp)
	lw $t0, -2360($fp)
	sw $t0, -10196($fp)
	lw $t0, -10192($fp)
	lw $t1, -10196($fp)
	add $t0, $t0, $t1
	sw $t0, -10200($fp)
	addi $sp, $sp, -4
	lw $t0, -10156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10200($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10204($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -10104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10204($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10208($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -10208($fp)
	sub $t0, $t0, $t1
	sw $t0, -10212($fp)
	lw $t0, -10100($fp)
	lw $t1, -10212($fp)
	add $t0, $t0, $t1
	sw $t0, -10216($fp)
	lw $ra, -4($fp)
	lw $v0, -10216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -10220($fp)
	li $t0, 29577
	sw $t0, -10224($fp)
	li $t0, 7573
	sw $t0, -10228($fp)
	lw $t0, -10224($fp)
	lw $t1, -10228($fp)
	sub $t0, $t0, $t1
	sw $t0, -10232($fp)
	lw $t0, -3596($fp)
	sw $t0, -10236($fp)
	lw $t0, -1148($fp)
	sw $t0, -10240($fp)
	li $t0, 0
	lw $t1, -10240($fp)
	sub $t0, $t0, $t1
	sw $t0, -10244($fp)
	lw $t0, -10236($fp)
	lw $t1, -10244($fp)
	sub $t0, $t0, $t1
	sw $t0, -10248($fp)
	lw $t1, -10232($fp)
	lw $t2, -10248($fp)
	bgt $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -10220($fp)
label770:
label771:
	li $t0, 13408
	sw $t0, -10252($fp)
	li $t0, 0
	lw $t1, -10252($fp)
	sub $t0, $t0, $t1
	sw $t0, -10256($fp)
	lw $t1, -10256($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label773
label772:
	lw $t0, -1160($fp)
	sw $t0, -10260($fp)
	li $t0, 33342
	sw $t0, -10264($fp)
	li $t0, 0
	sw $t0, -10268($fp)
	li $t0, 0
	sw $t0, -10272($fp)
	li $t0, 61879
	sw $t0, -10276($fp)
	lw $t1, -10276($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label776
label776:
	li $t0, 1
	sw $t0, -10272($fp)
label777:
	lw $t0, -3800($fp)
	sw $t0, -10280($fp)
	lw $t1, -10272($fp)
	lw $t2, -10280($fp)
	bge $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -10268($fp)
label775:
	li $t0, 33972
	sw $t0, -10284($fp)
	lw $t0, -1172($fp)
	sw $t0, -10288($fp)
	lw $t0, -10284($fp)
	lw $t1, -10288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10292($fp)
	li $t0, 27018
	sw $t0, -10296($fp)
	lw $t0, -10292($fp)
	lw $t1, -10296($fp)
	sub $t0, $t0, $t1
	sw $t0, -10300($fp)
	li $t0, 0
	sw $t0, -10304($fp)
	li $t0, 32541
	sw $t0, -10308($fp)
	li $t0, 23942
	sw $t0, -10312($fp)
	lw $t0, -10308($fp)
	lw $t1, -10312($fp)
	sub $t0, $t0, $t1
	sw $t0, -10316($fp)
	li $t0, 31160
	sw $t0, -10320($fp)
	lw $t1, -10316($fp)
	lw $t2, -10320($fp)
	ble $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -10304($fp)
label779:
	addi $sp, $sp, -4
	lw $t0, -10264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10304($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -10324($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -10328($fp)
	addi $t0, $fp, -216
	sw $t0, -10332($fp)
	li $t0, 6
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
	lw $t0, -4376($fp)
	sw $t0, -10352($fp)
	lw $t0, -3656($fp)
	sw $t0, -10356($fp)
	lw $t0, -10352($fp)
	lw $t1, -10356($fp)
	mul $t0, $t0, $t1
	sw $t0, -10360($fp)
	lw $t0, -10348($fp)
	lw $t1, -10360($fp)
	sub $t0, $t0, $t1
	sw $t0, -10364($fp)
	lw $t1, -10364($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label781
label783:
	li $t0, 65516
	sw $t0, -10368($fp)
	li $t0, 51398
	sw $t0, -10372($fp)
	lw $t0, -10368($fp)
	lw $t1, -10372($fp)
	sub $t0, $t0, $t1
	sw $t0, -10376($fp)
	li $t0, 21125
	sw $t0, -10380($fp)
	lw $t0, -10376($fp)
	lw $t1, -10380($fp)
	sub $t0, $t0, $t1
	sw $t0, -10384($fp)
	lw $t1, -10384($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label781
label782:
	lw $t0, -3800($fp)
	sw $t0, -10388($fp)
	li $t0, 38508
	sw $t0, -10392($fp)
	lw $t1, -10388($fp)
	lw $t2, -10392($fp)
	ble $t1, $t2, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -10328($fp)
label781:
	j label771
label773:
	li $t0, 0
	sw $t0, -10396($fp)
	lw $t0, -3884($fp)
	sw $t0, -10400($fp)
	li $t0, 0
	lw $t1, -10400($fp)
	sub $t0, $t0, $t1
	sw $t0, -10404($fp)
	lw $t1, -10404($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label786
label786:
	addi $t0, $fp, -60
	sw $t0, -10408($fp)
	li $t0, 0
	sw $t0, -10412($fp)
	lw $t0, -2528($fp)
	sw $t0, -10416($fp)
	lw $t0, -2384($fp)
	sw $t0, -10420($fp)
	lw $t1, -10416($fp)
	lw $t2, -10420($fp)
	bne $t1, $t2, label787
	j label788
label787:
	li $t0, 1
	sw $t0, -10412($fp)
label788:
	li $t0, 4
	lw $t1, -10412($fp)
	mul $t0, $t0, $t1
	sw $t0, -10424($fp)
	lw $t0, -10424($fp)
	lw $t1, -10408($fp)
	add $t0, $t0, $t1
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	lw $t1, 0($t0)
	sw $t1, -10432($fp)
	lw $t1, -10432($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -10396($fp)
label785:
	addi $t0, $fp, -140
	sw $t0, -10436($fp)
	li $t0, 0
	sw $t0, -10440($fp)
	li $t0, 55302
	sw $t0, -10444($fp)
	li $t0, 9877
	sw $t0, -10448($fp)
	lw $t0, -10444($fp)
	lw $t1, -10448($fp)
	add $t0, $t0, $t1
	sw $t0, -10452($fp)
	lw $t0, -1064($fp)
	sw $t0, -10456($fp)
	lw $t1, -10452($fp)
	lw $t2, -10456($fp)
	ble $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -10440($fp)
label793:
	li $t0, 4
	lw $t1, -10440($fp)
	mul $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	lw $t1, -10436($fp)
	add $t0, $t0, $t1
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	lw $t1, 0($t0)
	sw $t1, -10468($fp)
	li $t0, 34433
	sw $t0, -10472($fp)
	addi $t0, $fp, -412
	sw $t0, -10476($fp)
	lw $t0, -1556($fp)
	sw $t0, -10480($fp)
	li $t0, 4
	lw $t1, -10480($fp)
	mul $t0, $t0, $t1
	sw $t0, -10484($fp)
	lw $t0, -10484($fp)
	lw $t1, -10476($fp)
	add $t0, $t0, $t1
	sw $t0, -10488($fp)
	lw $t0, -10488($fp)
	lw $t1, 0($t0)
	sw $t1, -10492($fp)
	lw $t0, -10472($fp)
	lw $t1, -10492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10496($fp)
	lw $t0, -10468($fp)
	lw $t1, -10496($fp)
	add $t0, $t0, $t1
	sw $t0, -10500($fp)
	lw $t1, -10500($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label790
label789:
	lw $t0, -872($fp)
	sw $t0, -10504($fp)
	lw $t1, -10504($fp)
	li $t2, 0
	bne $t1, $t2, label794
	j label795
label794:
	li $t0, 19118
	sw $t0, -10508($fp)
	lw $ra, -4($fp)
	lw $v0, -10508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label796
label795:
	li $t0, 15132
	sw $t0, -10512($fp)
	lw $t0, -10512($fp)
	sw $t0, -10516($fp)
	lw $t0, -10516($fp)
	sw $t0, -10520($fp)
	li $t0, 42598
	sw $t0, -10524($fp)
	lw $t0, -10524($fp)
	sw $t0, -10528($fp)
	lw $t0, -10528($fp)
	sw $t0, -10532($fp)
	li $t0, 61081
	sw $t0, -10536($fp)
	lw $t0, -10536($fp)
	sw $t0, -10540($fp)
	lw $t0, -10540($fp)
	sw $t0, -10544($fp)
	li $t0, 0
	sw $t0, -10548($fp)
	addi $t0, $fp, -240
	sw $t0, -10552($fp)
	lw $t0, -1184($fp)
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
	lw $t1, -10568($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label798
label799:
	lw $t0, -4328($fp)
	sw $t0, -10572($fp)
	lw $t1, -10572($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -10548($fp)
label798:
	li $t0, 0
	sw $t0, -10576($fp)
	lw $t0, -2756($fp)
	sw $t0, -10580($fp)
	lw $t0, -4316($fp)
	sw $t0, -10584($fp)
	lw $t0, -10580($fp)
	lw $t1, -10584($fp)
	sub $t0, $t0, $t1
	sw $t0, -10588($fp)
	li $t0, 61783
	sw $t0, -10592($fp)
	lw $t1, -10588($fp)
	lw $t2, -10592($fp)
	beq $t1, $t2, label800
	j label801
label800:
	li $t0, 1
	sw $t0, -10576($fp)
label801:
	addi $sp, $sp, -4
	lw $t0, -10548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10576($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10596($fp)
	addi $sp, $sp, 12
	lw $t0, -2768($fp)
	sw $t0, -10600($fp)
	lw $t0, -10596($fp)
	lw $t1, -10600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10604($fp)
	li $t0, 0
	sw $t0, -10608($fp)
	addi $t0, $fp, -60
	sw $t0, -10612($fp)
	lw $t0, -1196($fp)
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
	lw $t1, -10628($fp)
	li $t2, 0
	bne $t1, $t2, label804
	j label803
label804:
	lw $t0, -4304($fp)
	sw $t0, -10632($fp)
	lw $t1, -10632($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label803
label802:
	li $t0, 1
	sw $t0, -10608($fp)
label803:
	lw $t0, -1172($fp)
	sw $t0, -10636($fp)
	li $t0, 0
	sw $t0, -10640($fp)
	lw $t0, -2192($fp)
	sw $t0, -10644($fp)
	lw $t1, -10644($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -10640($fp)
label806:
	addi $sp, $sp, -4
	lw $t0, -10604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10640($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -10648($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -10652($fp)
	li $t0, 0
	sw $t0, -10656($fp)
	li $t0, 24005
	sw $t0, -10660($fp)
	lw $t1, -10660($fp)
	li $t2, 0
	bne $t1, $t2, label810
	j label809
label809:
	li $t0, 1
	sw $t0, -10656($fp)
label810:
	li $t0, 0
	sw $t0, -10664($fp)
	lw $t0, -4328($fp)
	sw $t0, -10668($fp)
	li $t0, 19133
	sw $t0, -10672($fp)
	lw $t0, -10668($fp)
	lw $t1, -10672($fp)
	sub $t0, $t0, $t1
	sw $t0, -10676($fp)
	lw $t1, -10676($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label813
label813:
	li $t0, 13359
	sw $t0, -10680($fp)
	lw $t1, -10680($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label812
label811:
	li $t0, 1
	sw $t0, -10664($fp)
label812:
	li $t0, 0
	sw $t0, -10684($fp)
	lw $t0, -1184($fp)
	sw $t0, -10688($fp)
	lw $t1, -10688($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label816
label817:
	lw $t0, -10540($fp)
	sw $t0, -10692($fp)
	lw $t1, -10692($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label816
label816:
	lw $t0, -3764($fp)
	sw $t0, -10696($fp)
	lw $t1, -10696($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -10684($fp)
label815:
	addi $sp, $sp, -4
	lw $t0, -10664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10684($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10700($fp)
	addi $sp, $sp, 12
	lw $t0, -10656($fp)
	lw $t1, -10700($fp)
	add $t0, $t0, $t1
	sw $t0, -10704($fp)
	li $t0, 0
	sw $t0, -10708($fp)
	li $t0, 45691
	sw $t0, -10712($fp)
	li $t0, 0
	lw $t1, -10712($fp)
	sub $t0, $t0, $t1
	sw $t0, -10716($fp)
	lw $t1, -10716($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label818
label818:
	li $t0, 1
	sw $t0, -10708($fp)
label819:
	lw $t0, -10704($fp)
	lw $t1, -10708($fp)
	sub $t0, $t0, $t1
	sw $t0, -10720($fp)
	lw $t0, -10528($fp)
	sw $t0, -10724($fp)
	li $t0, 0
	lw $t1, -10724($fp)
	sub $t0, $t0, $t1
	sw $t0, -10728($fp)
	lw $t1, -10720($fp)
	lw $t2, -10728($fp)
	bne $t1, $t2, label807
	j label808
label807:
	li $t0, 1
	sw $t0, -10652($fp)
label808:
	li $t0, 0
	sw $t0, -10732($fp)
	li $t0, 0
	sw $t0, -10736($fp)
	li $t0, 0
	sw $t0, -10740($fp)
	lw $t0, -4376($fp)
	sw $t0, -10744($fp)
	li $t0, 51003
	sw $t0, -10748($fp)
	lw $t1, -10744($fp)
	lw $t2, -10748($fp)
	bgt $t1, $t2, label824
	j label825
label824:
	li $t0, 1
	sw $t0, -10740($fp)
label825:
	lw $t0, -3392($fp)
	sw $t0, -10752($fp)
	lw $t1, -10740($fp)
	lw $t2, -10752($fp)
	bge $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -10736($fp)
label823:
	li $t0, 63995
	sw $t0, -10756($fp)
	li $t0, 0
	sw $t0, -10760($fp)
	li $t0, 43430
	sw $t0, -10764($fp)
	lw $t1, -10764($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label828
label828:
	li $t0, 14338
	sw $t0, -10768($fp)
	lw $t1, -10768($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label827
label826:
	li $t0, 1
	sw $t0, -10760($fp)
label827:
	lw $t0, -848($fp)
	sw $t0, -10772($fp)
	lw $t0, -4364($fp)
	sw $t0, -10776($fp)
	lw $t0, -10772($fp)
	lw $t1, -10776($fp)
	add $t0, $t0, $t1
	sw $t0, -10780($fp)
	li $t0, 34418
	sw $t0, -10784($fp)
	lw $t0, -10780($fp)
	lw $t1, -10784($fp)
	sub $t0, $t0, $t1
	sw $t0, -10788($fp)
	addi $sp, $sp, -4
	lw $t0, -10736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10788($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -10792($fp)
	addi $sp, $sp, 20
	lw $t0, -3788($fp)
	sw $t0, -10796($fp)
	li $t0, 27746
	sw $t0, -10800($fp)
	lw $t0, -10796($fp)
	lw $t1, -10800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10804($fp)
	li $t0, 31000
	sw $t0, -10808($fp)
	lw $t0, -10804($fp)
	lw $t1, -10808($fp)
	mul $t0, $t0, $t1
	sw $t0, -10812($fp)
	lw $t0, -3668($fp)
	sw $t0, -10816($fp)
	lw $t0, -10812($fp)
	lw $t1, -10816($fp)
	sub $t0, $t0, $t1
	sw $t0, -10820($fp)
	lw $t1, -10792($fp)
	lw $t2, -10820($fp)
	blt $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -10732($fp)
label821:
	li $t0, 0
	sw $t0, -10824($fp)
	li $t0, 0
	sw $t0, -10828($fp)
	li $t0, 9409
	sw $t0, -10832($fp)
	lw $t1, -10832($fp)
	li $t2, 0
	bne $t1, $t2, label833
	j label832
label832:
	li $t0, 1
	sw $t0, -10828($fp)
label833:
	li $t0, 0
	lw $t1, -10828($fp)
	sub $t0, $t0, $t1
	sw $t0, -10836($fp)
	jal f10
	sw $v0, -10840($fp)
	addi $sp, $sp, 4
	lw $t0, -10836($fp)
	lw $t1, -10840($fp)
	add $t0, $t0, $t1
	sw $t0, -10844($fp)
	li $t0, 0
	sw $t0, -10848($fp)
	li $t0, 58906
	sw $t0, -10852($fp)
	lw $t0, -10516($fp)
	sw $t0, -10856($fp)
	lw $t0, -10852($fp)
	lw $t1, -10856($fp)
	mul $t0, $t0, $t1
	sw $t0, -10860($fp)
	lw $t0, -2360($fp)
	sw $t0, -10864($fp)
	lw $t1, -10860($fp)
	lw $t2, -10864($fp)
	blt $t1, $t2, label834
	j label835
label834:
	li $t0, 1
	sw $t0, -10848($fp)
label835:
	lw $t1, -10844($fp)
	lw $t2, -10848($fp)
	bne $t1, $t2, label829
	j label831
label831:
	li $t0, 64973
	sw $t0, -10868($fp)
	lw $t1, -10868($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -10824($fp)
label830:
label796:
	j label791
label790:
label836:
	addi $t0, $fp, -380
	sw $t0, -10872($fp)
	lw $t0, -9196($fp)
	sw $t0, -10876($fp)
	lw $t0, -10876($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -10880($fp)
	li $t0, 4
	lw $t1, -10880($fp)
	mul $t0, $t0, $t1
	sw $t0, -10884($fp)
	lw $t0, -10884($fp)
	lw $t1, -10872($fp)
	add $t0, $t0, $t1
	sw $t0, -10888($fp)
	lw $t0, -10888($fp)
	lw $t1, 0($t0)
	sw $t1, -10892($fp)
	lw $t1, -10892($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label838
label837:
label839:
	lw $t0, -1076($fp)
	sw $t0, -10896($fp)
	li $t0, 36428
	sw $t0, -10900($fp)
	lw $t0, -10896($fp)
	lw $t1, -10900($fp)
	add $t0, $t0, $t1
	sw $t0, -10904($fp)
	lw $t0, -3692($fp)
	sw $t0, -10908($fp)
	lw $t0, -10904($fp)
	lw $t1, -10908($fp)
	sub $t0, $t0, $t1
	sw $t0, -10912($fp)
	lw $t0, -3716($fp)
	sw $t0, -10916($fp)
	li $t0, 55249
	sw $t0, -10920($fp)
	lw $t0, -10916($fp)
	lw $t1, -10920($fp)
	mul $t0, $t0, $t1
	sw $t0, -10924($fp)
	lw $t0, -10912($fp)
	lw $t1, -10924($fp)
	sub $t0, $t0, $t1
	sw $t0, -10928($fp)
	lw $t0, -10928($fp)
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	sw $t0, -10932($fp)
	lw $t1, -10932($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label841
label840:
	li $t0, 0
	sw $t0, -10936($fp)
	li $t0, 32779
	sw $t0, -10940($fp)
	li $t0, 0
	sw $t0, -10944($fp)
	addi $t0, $fp, -96
	sw $t0, -10948($fp)
	li $t0, 0
	sw $t0, -10952($fp)
	li $t0, 4
	lw $t1, -10952($fp)
	mul $t0, $t0, $t1
	sw $t0, -10956($fp)
	lw $t0, -10956($fp)
	lw $t1, -10948($fp)
	add $t0, $t0, $t1
	sw $t0, -10960($fp)
	lw $t0, -10960($fp)
	lw $t1, 0($t0)
	sw $t1, -10964($fp)
	lw $t1, -10964($fp)
	li $t2, 0
	bne $t1, $t2, label845
	j label844
label844:
	li $t0, 1
	sw $t0, -10944($fp)
label845:
	lw $t0, -10940($fp)
	lw $t1, -10944($fp)
	sub $t0, $t0, $t1
	sw $t0, -10968($fp)
	li $t0, 0
	sw $t0, -10972($fp)
	addi $t0, $fp, -28
	sw $t0, -10976($fp)
	lw $t0, -3788($fp)
	sw $t0, -10980($fp)
	li $t0, 4
	lw $t1, -10980($fp)
	mul $t0, $t0, $t1
	sw $t0, -10984($fp)
	lw $t0, -10984($fp)
	lw $t1, -10976($fp)
	add $t0, $t0, $t1
	sw $t0, -10988($fp)
	lw $t0, -10988($fp)
	lw $t1, 0($t0)
	sw $t1, -10992($fp)
	lw $t1, -10992($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label846
label846:
	li $t0, 1
	sw $t0, -10972($fp)
label847:
	lw $t1, -10968($fp)
	lw $t2, -10972($fp)
	bgt $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -10936($fp)
label843:
	li $t0, 0
	sw $t0, -10996($fp)
	lw $t0, -1052($fp)
	sw $t0, -11000($fp)
	lw $t1, -11000($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label849
label850:
	li $t0, 0
	sw $t0, -11004($fp)
	addi $t0, $fp, -96
	sw $t0, -11008($fp)
	lw $t0, -3764($fp)
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
	lw $t1, -11024($fp)
	li $t2, 0
	bne $t1, $t2, label852
	j label851
label851:
	li $t0, 1
	sw $t0, -11004($fp)
label852:
	lw $t0, -1028($fp)
	sw $t0, -11028($fp)
	lw $t0, -11004($fp)
	lw $t1, -11028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11032($fp)
	lw $t1, -11032($fp)
	li $t2, 0
	bne $t1, $t2, label848
	j label849
label848:
	li $t0, 1
	sw $t0, -10996($fp)
label849:
	lw $t0, -3668($fp)
	sw $t0, -11036($fp)
	li $t0, 0
	lw $t1, -11036($fp)
	sub $t0, $t0, $t1
	sw $t0, -11040($fp)
	j label839
label841:
	j label836
label838:
label791:
	lw $t0, -9196($fp)
	sw $t0, -11044($fp)
	lw $t0, -11044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -11048($fp)
	addi $t0, $fp, -380
	sw $t0, -11052($fp)
	lw $t0, -3716($fp)
	sw $t0, -11056($fp)
	li $t0, 4
	lw $t1, -11056($fp)
	mul $t0, $t0, $t1
	sw $t0, -11060($fp)
	lw $t0, -11060($fp)
	lw $t1, -11052($fp)
	add $t0, $t0, $t1
	sw $t0, -11064($fp)
	lw $t0, -11064($fp)
	lw $t1, 0($t0)
	sw $t1, -11068($fp)
	lw $t0, -11048($fp)
	lw $t1, -11068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11072($fp)
	li $t0, 32759
	sw $t0, -11076($fp)
	lw $t0, -11072($fp)
	lw $t1, -11076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11080($fp)
	lw $ra, -4($fp)
	lw $v0, -11080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label663:
	li $t0, 23138
	sw $t0, -11084($fp)
	lw $t0, -11084($fp)
	sw $t0, -11088($fp)
	lw $t0, -11088($fp)
	sw $t0, -11092($fp)
	li $t0, 15162
	sw $t0, -11096($fp)
	lw $t0, -11096($fp)
	sw $t0, -11100($fp)
	lw $t0, -11100($fp)
	sw $t0, -11104($fp)
label853:
	lw $t0, -824($fp)
	sw $t0, -11108($fp)
	lw $t1, -11108($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label856
label856:
	lw $t0, -836($fp)
	sw $t0, -11112($fp)
	lw $t0, -848($fp)
	sw $t0, -11116($fp)
	lw $t0, -11112($fp)
	lw $t1, -11116($fp)
	mul $t0, $t0, $t1
	sw $t0, -11120($fp)
	li $t0, 0
	lw $t1, -11120($fp)
	sub $t0, $t0, $t1
	sw $t0, -11124($fp)
	lw $t1, -11124($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label855
label857:
	li $t0, 5731
	sw $t0, -11128($fp)
	lw $t0, -860($fp)
	sw $t0, -11132($fp)
	lw $t0, -11128($fp)
	lw $t1, -11132($fp)
	mul $t0, $t0, $t1
	sw $t0, -11136($fp)
	lw $t1, -11136($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label855
label854:
	li $t0, 12904
	sw $t0, -11172($fp)
	lw $t0, -11172($fp)
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	sw $t0, -11180($fp)
	li $t0, 25039
	sw $t0, -11184($fp)
	lw $t0, -11184($fp)
	sw $t0, -11188($fp)
	lw $t0, -11188($fp)
	sw $t0, -11192($fp)
	li $t0, 40164
	sw $t0, -11196($fp)
	lw $t0, -11196($fp)
	sw $t0, -11200($fp)
	lw $t0, -11200($fp)
	sw $t0, -11204($fp)
	li $t0, 32022
	sw $t0, -11208($fp)
	addi $t0, $fp, -11168
	sw $t0, -11212($fp)
	li $t0, 0
	sw $t0, -11216($fp)
	lw $t0, -11216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11220($fp)
	lw $t0, -11212($fp)
	lw $t1, -11220($fp)
	add $t0, $t0, $t1
	sw $t0, -11224($fp)
	lw $t0, -11208($fp)
	lw $t1, -11224($fp)
	sw $t0, 0($t1)
	lw $t0, -11224($fp)
	lw $t1, 0($t0)
	sw $t1, -11228($fp)
	li $t0, 40172
	sw $t0, -11232($fp)
	addi $t0, $fp, -11168
	sw $t0, -11236($fp)
	li $t0, 1
	sw $t0, -11240($fp)
	lw $t0, -11240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11244($fp)
	lw $t0, -11236($fp)
	lw $t1, -11244($fp)
	add $t0, $t0, $t1
	sw $t0, -11248($fp)
	lw $t0, -11232($fp)
	lw $t1, -11248($fp)
	sw $t0, 0($t1)
	lw $t0, -11248($fp)
	lw $t1, 0($t0)
	sw $t1, -11252($fp)
	li $t0, 17227
	sw $t0, -11256($fp)
	addi $t0, $fp, -11168
	sw $t0, -11260($fp)
	li $t0, 2
	sw $t0, -11264($fp)
	lw $t0, -11264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11268($fp)
	lw $t0, -11260($fp)
	lw $t1, -11268($fp)
	add $t0, $t0, $t1
	sw $t0, -11272($fp)
	lw $t0, -11256($fp)
	lw $t1, -11272($fp)
	sw $t0, 0($t1)
	lw $t0, -11272($fp)
	lw $t1, 0($t0)
	sw $t1, -11276($fp)
	li $t0, 27568
	sw $t0, -11280($fp)
	addi $t0, $fp, -11168
	sw $t0, -11284($fp)
	li $t0, 3
	sw $t0, -11288($fp)
	lw $t0, -11288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11292($fp)
	lw $t0, -11284($fp)
	lw $t1, -11292($fp)
	add $t0, $t0, $t1
	sw $t0, -11296($fp)
	lw $t0, -11280($fp)
	lw $t1, -11296($fp)
	sw $t0, 0($t1)
	lw $t0, -11296($fp)
	lw $t1, 0($t0)
	sw $t1, -11300($fp)
	li $t0, 36419
	sw $t0, -11304($fp)
	addi $t0, $fp, -11168
	sw $t0, -11308($fp)
	li $t0, 4
	sw $t0, -11312($fp)
	lw $t0, -11312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11316($fp)
	lw $t0, -11308($fp)
	lw $t1, -11316($fp)
	add $t0, $t0, $t1
	sw $t0, -11320($fp)
	lw $t0, -11304($fp)
	lw $t1, -11320($fp)
	sw $t0, 0($t1)
	lw $t0, -11320($fp)
	lw $t1, 0($t0)
	sw $t1, -11324($fp)
	li $t0, 41232
	sw $t0, -11328($fp)
	addi $t0, $fp, -11168
	sw $t0, -11332($fp)
	li $t0, 5
	sw $t0, -11336($fp)
	lw $t0, -11336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11340($fp)
	lw $t0, -11332($fp)
	lw $t1, -11340($fp)
	add $t0, $t0, $t1
	sw $t0, -11344($fp)
	lw $t0, -11328($fp)
	lw $t1, -11344($fp)
	sw $t0, 0($t1)
	lw $t0, -11344($fp)
	lw $t1, 0($t0)
	sw $t1, -11348($fp)
	li $t0, 46701
	sw $t0, -11352($fp)
	addi $t0, $fp, -11168
	sw $t0, -11356($fp)
	li $t0, 6
	sw $t0, -11360($fp)
	lw $t0, -11360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11364($fp)
	lw $t0, -11356($fp)
	lw $t1, -11364($fp)
	add $t0, $t0, $t1
	sw $t0, -11368($fp)
	lw $t0, -11352($fp)
	lw $t1, -11368($fp)
	sw $t0, 0($t1)
	lw $t0, -11368($fp)
	lw $t1, 0($t0)
	sw $t1, -11372($fp)
	li $t0, 49779
	sw $t0, -11376($fp)
	addi $t0, $fp, -11168
	sw $t0, -11380($fp)
	li $t0, 7
	sw $t0, -11384($fp)
	lw $t0, -11384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -11388($fp)
	lw $t0, -11380($fp)
	lw $t1, -11388($fp)
	add $t0, $t0, $t1
	sw $t0, -11392($fp)
	lw $t0, -11376($fp)
	lw $t1, -11392($fp)
	sw $t0, 0($t1)
	lw $t0, -11392($fp)
	lw $t1, 0($t0)
	sw $t1, -11396($fp)
	li $t0, 21387
	sw $t0, -11400($fp)
	lw $t0, -11400($fp)
	sw $t0, -11404($fp)
	lw $t0, -11404($fp)
	sw $t0, -11408($fp)
	li $t0, 15583
	sw $t0, -11412($fp)
	lw $t0, -11412($fp)
	sw $t0, -11416($fp)
	lw $t0, -11416($fp)
	sw $t0, -11420($fp)
	li $t0, 27673
	sw $t0, -11424($fp)
	lw $t0, -11424($fp)
	sw $t0, -11428($fp)
	lw $t0, -11428($fp)
	sw $t0, -11432($fp)
	li $t0, 35725
	sw $t0, -11436($fp)
	lw $t0, -11436($fp)
	sw $t0, -11440($fp)
	lw $t0, -11440($fp)
	sw $t0, -11444($fp)
	li $t0, 14042
	sw $t0, -11448($fp)
	lw $t0, -11448($fp)
	sw $t0, -11452($fp)
	lw $t0, -11452($fp)
	sw $t0, -11456($fp)
	li $t0, 13140
	sw $t0, -11460($fp)
	lw $t0, -11460($fp)
	sw $t0, -11464($fp)
	lw $t0, -11464($fp)
	sw $t0, -11468($fp)
	li $t0, 63472
	sw $t0, -11472($fp)
	lw $t0, -11472($fp)
	sw $t0, -11476($fp)
	lw $t0, -11476($fp)
	sw $t0, -11480($fp)
	li $t0, 45042
	sw $t0, -11484($fp)
	lw $t0, -11484($fp)
	sw $t0, -11488($fp)
	lw $t0, -11488($fp)
	sw $t0, -11492($fp)
	lw $t0, -884($fp)
	sw $t0, -11496($fp)
	lw $t0, -11496($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -11500($fp)
	lw $t1, -11500($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label859
label858:
	li $t0, 0
	sw $t0, -11504($fp)
	li $t0, 0
	sw $t0, -11508($fp)
	addi $t0, $fp, -76
	sw $t0, -11512($fp)
	lw $t0, -896($fp)
	sw $t0, -11516($fp)
	li $t0, 22550
	sw $t0, -11520($fp)
	lw $t0, -11516($fp)
	lw $t1, -11520($fp)
	add $t0, $t0, $t1
	sw $t0, -11524($fp)
	li $t0, 4
	lw $t1, -11524($fp)
	mul $t0, $t0, $t1
	sw $t0, -11528($fp)
	lw $t0, -11528($fp)
	lw $t1, -11512($fp)
	add $t0, $t0, $t1
	sw $t0, -11532($fp)
	lw $t0, -11532($fp)
	lw $t1, 0($t0)
	sw $t1, -11536($fp)
	li $t0, 0
	sw $t0, -11540($fp)
	lw $t0, -908($fp)
	sw $t0, -11544($fp)
	lw $t1, -11544($fp)
	li $t2, 0
	bne $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -11540($fp)
label866:
	lw $t1, -11536($fp)
	lw $t2, -11540($fp)
	bgt $t1, $t2, label863
	j label864
label863:
	li $t0, 1
	sw $t0, -11508($fp)
label864:
	li $t0, 0
	sw $t0, -11548($fp)
	lw $t0, 12($fp)
	sw $t0, -11552($fp)
	lw $t1, -11552($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label867
label867:
	li $t0, 1
	sw $t0, -11548($fp)
label868:
	li $t0, 0
	lw $t1, -11548($fp)
	sub $t0, $t0, $t1
	sw $t0, -11556($fp)
	li $t0, 0
	lw $t1, -11556($fp)
	sub $t0, $t0, $t1
	sw $t0, -11560($fp)
	lw $t1, -11508($fp)
	lw $t2, -11560($fp)
	bge $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -11504($fp)
label862:
	lw $ra, -4($fp)
	lw $v0, -11504($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label860
label859:
	lw $t0, -3644($fp)
	sw $t0, -11564($fp)
	li $t0, 0
	sw $t0, -11568($fp)
	lw $t0, -3872($fp)
	sw $t0, -11572($fp)
	lw $t0, -3800($fp)
	sw $t0, -11576($fp)
	lw $t0, -11572($fp)
	lw $t1, -11576($fp)
	sub $t0, $t0, $t1
	sw $t0, -11580($fp)
	lw $t1, -11580($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label871
label871:
	li $t0, 58978
	sw $t0, -11584($fp)
	lw $t1, -11584($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -11568($fp)
label870:
	addi $t0, $fp, -188
	sw $t0, -11588($fp)
	lw $t0, -3716($fp)
	sw $t0, -11592($fp)
	li $t0, 4
	lw $t1, -11592($fp)
	mul $t0, $t0, $t1
	sw $t0, -11596($fp)
	lw $t0, -11596($fp)
	lw $t1, -11588($fp)
	add $t0, $t0, $t1
	sw $t0, -11600($fp)
	lw $t0, -11600($fp)
	lw $t1, 0($t0)
	sw $t1, -11604($fp)
	jal f10
	sw $v0, -11608($fp)
	addi $sp, $sp, 4
	li $t0, 44479
	sw $t0, -11612($fp)
	lw $t0, -11608($fp)
	lw $t1, -11612($fp)
	add $t0, $t0, $t1
	sw $t0, -11616($fp)
	li $t0, 0
	sw $t0, -11620($fp)
	li $t0, 56842
	sw $t0, -11624($fp)
	lw $t1, -11624($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label872
label872:
	li $t0, 1
	sw $t0, -11620($fp)
label873:
	li $t0, 0
	lw $t1, -11620($fp)
	sub $t0, $t0, $t1
	sw $t0, -11628($fp)
	lw $t0, -3788($fp)
	sw $t0, -11632($fp)
	lw $t0, -11632($fp)
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	sw $t0, -11636($fp)
	addi $sp, $sp, -4
	lw $t0, -11568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11636($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -11640($fp)
	addi $sp, $sp, 24
	lw $t0, -11564($fp)
	lw $t1, -11640($fp)
	sub $t0, $t0, $t1
	sw $t0, -11644($fp)
	lw $t0, -11644($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -11648($fp)
label860:
	li $t0, 46556
	sw $t0, -11652($fp)
	jal f10
	sw $v0, -11656($fp)
	addi $sp, $sp, 4
	lw $t0, -11652($fp)
	lw $t1, -11656($fp)
	mul $t0, $t0, $t1
	sw $t0, -11660($fp)
	li $t0, 0
	lw $t1, -11660($fp)
	sub $t0, $t0, $t1
	sw $t0, -11664($fp)
	lw $t1, -11664($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label875
label874:
	lw $t0, -1184($fp)
	sw $t0, -11668($fp)
	lw $ra, -4($fp)
	lw $v0, -11668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label876
label875:
	li $t0, 0
	sw $t0, -11672($fp)
	addi $t0, $fp, -260
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
	lw $t1, -11692($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label881
label882:
	lw $t0, -2804($fp)
	sw $t0, -11696($fp)
	lw $t1, -11696($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label881
label880:
	li $t0, 1
	sw $t0, -11672($fp)
label881:
	li $t0, 30717
	sw $t0, -11700($fp)
	li $t0, 11723
	sw $t0, -11704($fp)
	lw $t0, -11704($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -11708($fp)
	li $t0, 0
	sw $t0, -11712($fp)
	lw $t0, -2960($fp)
	sw $t0, -11716($fp)
	lw $t1, -11716($fp)
	li $t2, 0
	bne $t1, $t2, label884
	j label883
label883:
	li $t0, 1
	sw $t0, -11712($fp)
label884:
	li $t0, 0
	lw $t1, -11712($fp)
	sub $t0, $t0, $t1
	sw $t0, -11720($fp)
	addi $sp, $sp, -4
	lw $t0, -11672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11720($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -11724($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -440
	sw $t0, -11728($fp)
	lw $t0, -3716($fp)
	sw $t0, -11732($fp)
	li $t0, 53855
	sw $t0, -11736($fp)
	lw $t0, -11732($fp)
	lw $t1, -11736($fp)
	sub $t0, $t0, $t1
	sw $t0, -11740($fp)
	li $t0, 4
	lw $t1, -11740($fp)
	mul $t0, $t0, $t1
	sw $t0, -11744($fp)
	lw $t0, -11744($fp)
	lw $t1, -11728($fp)
	add $t0, $t0, $t1
	sw $t0, -11748($fp)
	lw $t0, -11748($fp)
	lw $t1, 0($t0)
	sw $t1, -11752($fp)
	lw $t0, -11724($fp)
	lw $t1, -11752($fp)
	sub $t0, $t0, $t1
	sw $t0, -11756($fp)
	lw $t1, -11756($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label878
label877:
	addi $t0, $fp, -312
	sw $t0, -11760($fp)
	li $t0, 0
	sw $t0, -11764($fp)
	li $t0, 55756
	sw $t0, -11768($fp)
	lw $t0, -2936($fp)
	sw $t0, -11772($fp)
	lw $t0, -11768($fp)
	lw $t1, -11772($fp)
	mul $t0, $t0, $t1
	sw $t0, -11776($fp)
	lw $t0, -3620($fp)
	sw $t0, -11780($fp)
	lw $t1, -11776($fp)
	lw $t2, -11780($fp)
	bge $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -11764($fp)
label886:
	li $t0, 4
	lw $t1, -11764($fp)
	mul $t0, $t0, $t1
	sw $t0, -11784($fp)
	lw $t0, -11784($fp)
	lw $t1, -11760($fp)
	add $t0, $t0, $t1
	sw $t0, -11788($fp)
	lw $t0, -11788($fp)
	lw $t1, 0($t0)
	sw $t1, -11792($fp)
	li $t0, 55431
	sw $t0, -11796($fp)
	lw $t0, -11796($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -11800($fp)
	li $t0, 0
	sw $t0, -11804($fp)
	li $t0, 0
	sw $t0, -11808($fp)
	lw $t0, -3764($fp)
	sw $t0, -11812($fp)
	lw $t1, -11812($fp)
	li $t2, 0
	bne $t1, $t2, label890
	j label889
label889:
	li $t0, 1
	sw $t0, -11808($fp)
label890:
	lw $t0, -3884($fp)
	sw $t0, -11816($fp)
	lw $t1, -11808($fp)
	lw $t2, -11816($fp)
	ble $t1, $t2, label887
	j label888
label887:
	li $t0, 1
	sw $t0, -11804($fp)
label888:
	li $t0, 0
	sw $t0, -11820($fp)
	li $t0, 0
	sw $t0, -11824($fp)
	li $t0, 33246
	sw $t0, -11828($fp)
	lw $t1, -11828($fp)
	li $t2, 0
	bne $t1, $t2, label894
	j label893
label893:
	li $t0, 1
	sw $t0, -11824($fp)
label894:
	lw $t0, -860($fp)
	sw $t0, -11832($fp)
	lw $t1, -11824($fp)
	lw $t2, -11832($fp)
	bne $t1, $t2, label891
	j label892
label891:
	li $t0, 1
	sw $t0, -11820($fp)
label892:
	li $t0, 0
	sw $t0, -11836($fp)
	lw $t0, -11488($fp)
	sw $t0, -11840($fp)
	lw $t1, -11840($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label898
label898:
	li $t0, 15259
	sw $t0, -11844($fp)
	lw $t1, -11844($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label897
label897:
	li $t0, 24842
	sw $t0, -11848($fp)
	lw $t1, -11848($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -11836($fp)
label896:
	li $t0, 0
	sw $t0, -11852($fp)
	li $t0, 1224
	sw $t0, -11856($fp)
	lw $t0, -3788($fp)
	sw $t0, -11860($fp)
	lw $t1, -11856($fp)
	lw $t2, -11860($fp)
	beq $t1, $t2, label901
	j label900
label901:
	lw $t0, -3824($fp)
	sw $t0, -11864($fp)
	lw $t1, -11864($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -11852($fp)
label900:
	li $t0, 50214
	sw $t0, -11868($fp)
	lw $t0, -11868($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -11872($fp)
	addi $sp, $sp, -4
	lw $t0, -11820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11872($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -11876($fp)
	addi $sp, $sp, 20
	lw $t0, -1184($fp)
	sw $t0, -11880($fp)
	lw $t0, -11880($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -11884($fp)
	addi $sp, $sp, -4
	lw $t0, -11800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11884($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -11888($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -11888($fp)
	sub $t0, $t0, $t1
	sw $t0, -11892($fp)
	lw $t0, -11792($fp)
	lw $t1, -11892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11896($fp)
	j label879
label878:
	addi $t0, $fp, -60
	sw $t0, -11900($fp)
	addi $t0, $fp, -380
	sw $t0, -11904($fp)
	lw $t0, -1952($fp)
	sw $t0, -11908($fp)
	li $t0, 4
	lw $t1, -11908($fp)
	mul $t0, $t0, $t1
	sw $t0, -11912($fp)
	lw $t0, -11912($fp)
	lw $t1, -11904($fp)
	add $t0, $t0, $t1
	sw $t0, -11916($fp)
	lw $t0, -11916($fp)
	lw $t1, 0($t0)
	sw $t1, -11920($fp)
	lw $t0, -11920($fp)
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	sw $t0, -11924($fp)
	li $t0, 4
	lw $t1, -11924($fp)
	mul $t0, $t0, $t1
	sw $t0, -11928($fp)
	lw $t0, -11928($fp)
	lw $t1, -11900($fp)
	add $t0, $t0, $t1
	sw $t0, -11932($fp)
	lw $t0, -11932($fp)
	lw $t1, 0($t0)
	sw $t1, -11936($fp)
label879:
label876:
	lw $t0, -3788($fp)
	sw $t0, -11940($fp)
	lw $t0, -860($fp)
	sw $t0, -11944($fp)
	lw $t1, -11940($fp)
	lw $t2, -11944($fp)
	bne $t1, $t2, label907
	j label905
label907:
	li $t0, 42069
	sw $t0, -11948($fp)
	lw $t0, -3776($fp)
	sw $t0, -11952($fp)
	lw $t0, -11948($fp)
	lw $t1, -11952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11956($fp)
	lw $t1, -11956($fp)
	li $t2, 0
	bne $t1, $t2, label906
	j label905
label906:
	li $t0, 0
	sw $t0, -11960($fp)
	lw $t0, -11188($fp)
	sw $t0, -11964($fp)
	lw $t0, -2372($fp)
	sw $t0, -11968($fp)
	lw $t1, -11964($fp)
	lw $t2, -11968($fp)
	bge $t1, $t2, label908
	j label909
label908:
	li $t0, 1
	sw $t0, -11960($fp)
label909:
	li $t0, 60814
	sw $t0, -11972($fp)
	lw $t1, -11960($fp)
	lw $t2, -11972($fp)
	bgt $t1, $t2, label902
	j label905
label905:
	li $t0, 0
	sw $t0, -11976($fp)
	li $t0, 41979
	sw $t0, -11980($fp)
	lw $t1, -11980($fp)
	li $t2, 0
	bne $t1, $t2, label911
	j label912
label912:
	lw $t0, -2372($fp)
	sw $t0, -11984($fp)
	lw $t1, -11984($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label911
label910:
	li $t0, 1
	sw $t0, -11976($fp)
label911:
	li $t0, 0
	sw $t0, -11988($fp)
	lw $t0, -2516($fp)
	sw $t0, -11992($fp)
	lw $t0, -3596($fp)
	sw $t0, -11996($fp)
	lw $t0, -11992($fp)
	lw $t1, -11996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12000($fp)
	lw $t1, -12000($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label914
label915:
	li $t0, 17766
	sw $t0, -12004($fp)
	lw $t1, -12004($fp)
	li $t2, 0
	bne $t1, $t2, label913
	j label914
label913:
	li $t0, 1
	sw $t0, -11988($fp)
label914:
	li $t0, 26315
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -12012($fp)
	lw $t0, -3728($fp)
	sw $t0, -12016($fp)
	lw $t0, -12016($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -12020($fp)
	addi $sp, $sp, -4
	lw $t0, -11976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12020($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -12024($fp)
	addi $sp, $sp, 20
	lw $t1, -12024($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label903
label902:
	li $t0, 0
	sw $t0, -12028($fp)
	li $t0, 10558
	sw $t0, -12032($fp)
	lw $t1, -12032($fp)
	li $t2, 0
	bne $t1, $t2, label918
	j label917
label918:
	li $t0, 0
	sw $t0, -12036($fp)
	lw $t0, -3608($fp)
	sw $t0, -12040($fp)
	lw $t1, -12040($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label919
label919:
	li $t0, 1
	sw $t0, -12036($fp)
label920:
	lw $t0, -2360($fp)
	sw $t0, -12044($fp)
	lw $t0, -12036($fp)
	lw $t1, -12044($fp)
	add $t0, $t0, $t1
	sw $t0, -12048($fp)
	lw $t1, -12048($fp)
	li $t2, 0
	bne $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -12028($fp)
label917:
	j label904
label903:
	li $t0, 39153
	sw $t0, -12052($fp)
	lw $t0, -12052($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -12056($fp)
label904:
	li $t0, 0
	sw $t0, -12060($fp)
	li $t0, 57562
	sw $t0, -12064($fp)
	li $t0, 9344
	sw $t0, -12068($fp)
	lw $t0, -12064($fp)
	lw $t1, -12068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12072($fp)
	li $t0, 0
	sw $t0, -12076($fp)
	li $t0, 6068
	sw $t0, -12080($fp)
	lw $t1, -12080($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label925
label924:
	li $t0, 1
	sw $t0, -12076($fp)
label925:
	lw $t1, -12072($fp)
	lw $t2, -12076($fp)
	beq $t1, $t2, label923
	j label922
label923:
	li $t0, 0
	sw $t0, -12084($fp)
	li $t0, 51371
	sw $t0, -12088($fp)
	lw $t0, -1208($fp)
	sw $t0, -12092($fp)
	lw $t1, -12088($fp)
	lw $t2, -12092($fp)
	ble $t1, $t2, label926
	j label927
label926:
	li $t0, 1
	sw $t0, -12084($fp)
label927:
	li $t0, 0
	sw $t0, -12096($fp)
	lw $t0, -2540($fp)
	sw $t0, -12100($fp)
	lw $t1, -12100($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label928
label928:
	li $t0, 1
	sw $t0, -12096($fp)
label929:
	lw $t1, -12084($fp)
	lw $t2, -12096($fp)
	beq $t1, $t2, label921
	j label922
label921:
	li $t0, 1
	sw $t0, -12060($fp)
label922:
	li $t0, 0
	sw $t0, -12104($fp)
	lw $t0, -2792($fp)
	sw $t0, -12108($fp)
	lw $t1, -12108($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label931
label930:
	li $t0, 1
	sw $t0, -12104($fp)
label931:
	li $t0, 7279
	sw $t0, -12112($fp)
	li $t0, 0
	sw $t0, -12116($fp)
	li $t0, 64121
	sw $t0, -12120($fp)
	li $t0, 30054
	sw $t0, -12124($fp)
	lw $t0, -12120($fp)
	lw $t1, -12124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12128($fp)
	lw $t0, -2168($fp)
	sw $t0, -12132($fp)
	lw $t1, -12128($fp)
	lw $t2, -12132($fp)
	beq $t1, $t2, label932
	j label933
label932:
	li $t0, 1
	sw $t0, -12116($fp)
label933:
	lw $t0, -2540($fp)
	sw $t0, -12136($fp)
	li $t0, 8385
	sw $t0, -12140($fp)
	lw $t0, -12136($fp)
	lw $t1, -12140($fp)
	mul $t0, $t0, $t1
	sw $t0, -12144($fp)
	lw $t0, -2936($fp)
	sw $t0, -12148($fp)
	lw $t0, -12144($fp)
	lw $t1, -12148($fp)
	mul $t0, $t0, $t1
	sw $t0, -12152($fp)
	li $t0, 51111
	sw $t0, -12156($fp)
	lw $t0, -1184($fp)
	sw $t0, -12160($fp)
	lw $t0, -12156($fp)
	lw $t1, -12160($fp)
	add $t0, $t0, $t1
	sw $t0, -12164($fp)
	addi $sp, $sp, -4
	lw $t0, -12116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12168($fp)
	addi $sp, $sp, 16
	lw $t0, -12112($fp)
	lw $t1, -12168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12172($fp)
	lw $t0, -12104($fp)
	lw $t1, -12172($fp)
	sub $t0, $t0, $t1
	sw $t0, -12176($fp)
	li $t0, 0
	sw $t0, -12180($fp)
	lw $t0, -2744($fp)
	sw $t0, -12184($fp)
	lw $t0, -3608($fp)
	sw $t0, -12188($fp)
	lw $t0, -12184($fp)
	lw $t1, -12188($fp)
	sub $t0, $t0, $t1
	sw $t0, -12192($fp)
	lw $t1, -12192($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label936
label936:
	li $t0, 0
	sw $t0, -12196($fp)
	lw $t0, -4340($fp)
	sw $t0, -12200($fp)
	lw $t1, -12200($fp)
	li $t2, 0
	bne $t1, $t2, label938
	j label937
label937:
	li $t0, 1
	sw $t0, -12196($fp)
label938:
	li $t0, 0
	lw $t1, -12196($fp)
	sub $t0, $t0, $t1
	sw $t0, -12204($fp)
	lw $t1, -12204($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label934
label934:
	li $t0, 1
	sw $t0, -12180($fp)
label935:
	lw $t0, -1844($fp)
	sw $t0, -12208($fp)
	addi $t0, $fp, -11168
	sw $t0, -12212($fp)
	li $t0, 5
	sw $t0, -12216($fp)
	li $t0, 4
	lw $t1, -12216($fp)
	mul $t0, $t0, $t1
	sw $t0, -12220($fp)
	lw $t0, -12220($fp)
	lw $t1, -12212($fp)
	add $t0, $t0, $t1
	sw $t0, -12224($fp)
	lw $t0, -12224($fp)
	lw $t1, 0($t0)
	sw $t1, -12228($fp)
	lw $t0, -12208($fp)
	lw $t1, -12228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12232($fp)
	li $t0, 32546
	sw $t0, -12236($fp)
	lw $t0, -12232($fp)
	lw $t1, -12236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12240($fp)
	li $t0, 20199
	sw $t0, -12244($fp)
	li $t0, 0
	sw $t0, -12248($fp)
	lw $t0, -1820($fp)
	sw $t0, -12252($fp)
	li $t0, 20864
	sw $t0, -12256($fp)
	lw $t1, -12252($fp)
	lw $t2, -12256($fp)
	bgt $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -12248($fp)
label943:
	li $t0, 20724
	sw $t0, -12260($fp)
	lw $t0, -12260($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -12264($fp)
	lw $t0, -3836($fp)
	sw $t0, -12268($fp)
	lw $t0, -12268($fp)
	sw $t0, -11452($fp)
	lw $t0, -11452($fp)
	sw $t0, -12272($fp)
	lw $t0, -3656($fp)
	sw $t0, -12276($fp)
	li $t0, 0
	lw $t1, -12276($fp)
	sub $t0, $t0, $t1
	sw $t0, -12280($fp)
	addi $sp, $sp, -4
	lw $t0, -12248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12280($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -12284($fp)
	addi $sp, $sp, 20
	lw $t0, -12244($fp)
	lw $t1, -12284($fp)
	mul $t0, $t0, $t1
	sw $t0, -12288($fp)
	lw $t1, -12240($fp)
	lw $t2, -12288($fp)
	bgt $t1, $t2, label939
	j label940
label939:
label944:
	li $t0, 10419
	sw $t0, -12292($fp)
	lw $t1, -12292($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label946
label945:
	li $t0, 0
	sw $t0, -12296($fp)
	li $t0, 0
	sw $t0, -12300($fp)
	lw $t0, -1832($fp)
	sw $t0, -12304($fp)
	lw $t0, -1196($fp)
	sw $t0, -12308($fp)
	lw $t0, -12304($fp)
	lw $t1, -12308($fp)
	sub $t0, $t0, $t1
	sw $t0, -12312($fp)
	lw $t1, -12312($fp)
	li $t2, 0
	bne $t1, $t2, label954
	j label953
label954:
	li $t0, 7504
	sw $t0, -12316($fp)
	lw $t1, -12316($fp)
	li $t2, 0
	bne $t1, $t2, label952
	j label953
label952:
	li $t0, 1
	sw $t0, -12300($fp)
label953:
	li $t0, 19083
	sw $t0, -12320($fp)
	li $t0, 0
	lw $t1, -12320($fp)
	sub $t0, $t0, $t1
	sw $t0, -12324($fp)
	li $t0, 63697
	sw $t0, -12328($fp)
	lw $t0, -12328($fp)
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	sw $t0, -12332($fp)
	li $t0, 0
	sw $t0, -12336($fp)
	li $t0, 27057
	sw $t0, -12340($fp)
	lw $t1, -12340($fp)
	li $t2, 0
	bne $t1, $t2, label956
	j label955
label955:
	li $t0, 1
	sw $t0, -12336($fp)
label956:
	li $t0, 52447
	sw $t0, -12344($fp)
	lw $t0, -12336($fp)
	lw $t1, -12344($fp)
	sub $t0, $t0, $t1
	sw $t0, -12348($fp)
	li $t0, 0
	sw $t0, -12352($fp)
	lw $t0, -11200($fp)
	sw $t0, -12356($fp)
	li $t0, 24544
	sw $t0, -12360($fp)
	lw $t1, -12356($fp)
	lw $t2, -12360($fp)
	ble $t1, $t2, label959
	j label958
label959:
	lw $t0, -3848($fp)
	sw $t0, -12364($fp)
	lw $t1, -12364($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label958
label957:
	li $t0, 1
	sw $t0, -12352($fp)
label958:
	li $t0, 0
	sw $t0, -12368($fp)
	li $t0, 0
	sw $t0, -12372($fp)
	li $t0, 41889
	sw $t0, -12376($fp)
	lw $t0, -1040($fp)
	sw $t0, -12380($fp)
	lw $t1, -12376($fp)
	lw $t2, -12380($fp)
	bne $t1, $t2, label962
	j label963
label962:
	li $t0, 1
	sw $t0, -12372($fp)
label963:
	lw $t0, -11404($fp)
	sw $t0, -12384($fp)
	lw $t1, -12372($fp)
	lw $t2, -12384($fp)
	beq $t1, $t2, label960
	j label961
label960:
	li $t0, 1
	sw $t0, -12368($fp)
label961:
	addi $sp, $sp, -4
	lw $t0, -12324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12368($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -12388($fp)
	addi $sp, $sp, 24
	li $t0, 25142
	sw $t0, -12392($fp)
	lw $t0, -12388($fp)
	lw $t1, -12392($fp)
	mul $t0, $t0, $t1
	sw $t0, -12396($fp)
	li $t0, 0
	sw $t0, -12400($fp)
	lw $t0, -2156($fp)
	sw $t0, -12404($fp)
	lw $t0, -3656($fp)
	sw $t0, -12408($fp)
	lw $t0, -12404($fp)
	lw $t1, -12408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12412($fp)
	li $t0, 50613
	sw $t0, -12416($fp)
	lw $t1, -12412($fp)
	lw $t2, -12416($fp)
	bne $t1, $t2, label964
	j label965
label964:
	li $t0, 1
	sw $t0, -12400($fp)
label965:
	addi $t0, $fp, -216
	sw $t0, -12420($fp)
	lw $t0, -4352($fp)
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
	li $t0, 0
	lw $t1, -12436($fp)
	sub $t0, $t0, $t1
	sw $t0, -12440($fp)
	li $t0, 0
	sw $t0, -12444($fp)
	li $t0, 15574
	sw $t0, -12448($fp)
	lw $t1, -12448($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label969
label969:
	lw $t0, -1976($fp)
	sw $t0, -12452($fp)
	lw $t1, -12452($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label968
label968:
	li $t0, 6778
	sw $t0, -12456($fp)
	lw $t1, -12456($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -12444($fp)
label967:
	addi $sp, $sp, -4
	lw $t0, -12396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12444($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -12460($fp)
	addi $sp, $sp, 20
	lw $t0, -11088($fp)
	sw $t0, -12464($fp)
	lw $t0, -12464($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -12468($fp)
	li $t0, 0
	sw $t0, -12472($fp)
	li $t0, 55335
	sw $t0, -12476($fp)
	lw $t0, -12476($fp)
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	sw $t0, -12480($fp)
	lw $t0, -3860($fp)
	sw $t0, -12484($fp)
	li $t0, 30244
	sw $t0, -12488($fp)
	lw $t0, -12484($fp)
	lw $t1, -12488($fp)
	add $t0, $t0, $t1
	sw $t0, -12492($fp)
	addi $sp, $sp, -4
	lw $t0, -12480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12492($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -12496($fp)
	addi $sp, $sp, 12
	lw $t0, -1952($fp)
	sw $t0, -12500($fp)
	lw $t1, -12496($fp)
	lw $t2, -12500($fp)
	bne $t1, $t2, label970
	j label971
label970:
	li $t0, 1
	sw $t0, -12472($fp)
label971:
	li $t0, 0
	sw $t0, -12504($fp)
	li $t0, 25678
	sw $t0, -12508($fp)
	li $t0, 0
	lw $t1, -12508($fp)
	sub $t0, $t0, $t1
	sw $t0, -12512($fp)
	lw $t1, -12512($fp)
	li $t2, 0
	bne $t1, $t2, label973
	j label972
label972:
	li $t0, 1
	sw $t0, -12504($fp)
label973:
	li $t0, 0
	sw $t0, -12516($fp)
	li $t0, 22088
	sw $t0, -12520($fp)
	lw $t1, -12520($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label975
label976:
	lw $t0, -3848($fp)
	sw $t0, -12524($fp)
	lw $t1, -12524($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label975
label974:
	li $t0, 1
	sw $t0, -12516($fp)
label975:
	lw $t0, -11464($fp)
	sw $t0, -12528($fp)
	li $t0, 5402
	sw $t0, -12532($fp)
	lw $t0, -12528($fp)
	lw $t1, -12532($fp)
	sub $t0, $t0, $t1
	sw $t0, -12536($fp)
	lw $t0, -11476($fp)
	sw $t0, -12540($fp)
	lw $t0, -12536($fp)
	lw $t1, -12540($fp)
	add $t0, $t0, $t1
	sw $t0, -12544($fp)
	addi $sp, $sp, -4
	lw $t0, -12472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12544($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -12548($fp)
	addi $sp, $sp, 20
	lw $t0, -896($fp)
	sw $t0, -12552($fp)
	lw $t0, -12548($fp)
	lw $t1, -12552($fp)
	mul $t0, $t0, $t1
	sw $t0, -12556($fp)
	addi $sp, $sp, -4
	lw $t0, -12300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12556($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -12560($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -12560($fp)
	sub $t0, $t0, $t1
	sw $t0, -12564($fp)
	li $t0, 25152
	sw $t0, -12568($fp)
	li $t0, 0
	lw $t1, -12568($fp)
	sub $t0, $t0, $t1
	sw $t0, -12572($fp)
	lw $t1, -12564($fp)
	lw $t2, -12572($fp)
	bne $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -12296($fp)
label951:
	lw $t0, -12296($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -12576($fp)
	lw $t1, -12576($fp)
	li $t2, 0
	bne $t1, $t2, label947
	j label948
label947:
	lw $t0, -1208($fp)
	sw $t0, -12580($fp)
	j label949
label948:
	li $t0, 0
	sw $t0, -12584($fp)
	addi $t0, $fp, -96
	sw $t0, -12588($fp)
	lw $t0, -836($fp)
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
	lw $t1, -12604($fp)
	li $t2, 0
	bne $t1, $t2, label978
	j label977
label977:
	li $t0, 1
	sw $t0, -12584($fp)
label978:
	addi $t0, $fp, -128
	sw $t0, -12608($fp)
	lw $t0, -872($fp)
	sw $t0, -12612($fp)
	li $t0, 4
	lw $t1, -12612($fp)
	mul $t0, $t0, $t1
	sw $t0, -12616($fp)
	lw $t0, -12616($fp)
	lw $t1, -12608($fp)
	add $t0, $t0, $t1
	sw $t0, -12620($fp)
	lw $t0, -12620($fp)
	lw $t1, 0($t0)
	sw $t1, -12624($fp)
	lw $t0, -12584($fp)
	lw $t1, -12624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12628($fp)
	lw $t0, -3800($fp)
	sw $t0, -12632($fp)
	li $t0, 0
	lw $t1, -12632($fp)
	sub $t0, $t0, $t1
	sw $t0, -12636($fp)
	li $t0, 0
	lw $t1, -12636($fp)
	sub $t0, $t0, $t1
	sw $t0, -12640($fp)
	lw $t0, -12628($fp)
	lw $t1, -12640($fp)
	add $t0, $t0, $t1
	sw $t0, -12644($fp)
label949:
	j label944
label946:
label940:
	li $t0, 0
	sw $t0, -12648($fp)
	lw $t0, -860($fp)
	sw $t0, -12652($fp)
	li $t0, 10727
	sw $t0, -12656($fp)
	lw $t0, -12652($fp)
	lw $t1, -12656($fp)
	sub $t0, $t0, $t1
	sw $t0, -12660($fp)
	lw $t1, -12660($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label983
label984:
	li $t0, 19363
	sw $t0, -12664($fp)
	lw $t1, -12664($fp)
	li $t2, 0
	bne $t1, $t2, label982
	j label983
label982:
	li $t0, 1
	sw $t0, -12648($fp)
label983:
	lw $t0, -11428($fp)
	sw $t0, -12668($fp)
	li $t0, 0
	sw $t0, -12672($fp)
	li $t0, 10977
	sw $t0, -12676($fp)
	lw $t1, -12676($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label985
label985:
	li $t0, 1
	sw $t0, -12672($fp)
label986:
	li $t0, 14783
	sw $t0, -12680($fp)
	lw $t0, -12672($fp)
	lw $t1, -12680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12684($fp)
	addi $t0, $fp, -60
	sw $t0, -12688($fp)
	lw $t0, -11416($fp)
	sw $t0, -12692($fp)
	li $t0, 4
	lw $t1, -12692($fp)
	mul $t0, $t0, $t1
	sw $t0, -12696($fp)
	lw $t0, -12696($fp)
	lw $t1, -12688($fp)
	add $t0, $t0, $t1
	sw $t0, -12700($fp)
	lw $t0, -12700($fp)
	lw $t1, 0($t0)
	sw $t1, -12704($fp)
	addi $sp, $sp, -4
	lw $t0, -12648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12704($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -12708($fp)
	addi $sp, $sp, 20
	lw $t0, -12708($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -12712($fp)
	lw $t0, -12712($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -12716($fp)
	lw $t1, -12716($fp)
	li $t2, 0
	bne $t1, $t2, label979
	j label980
label979:
	li $t0, 0
	sw $t0, -12720($fp)
	jal f10
	sw $v0, -12724($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -292
	sw $t0, -12728($fp)
	li $t0, 5
	sw $t0, -12732($fp)
	li $t0, 4
	lw $t1, -12732($fp)
	mul $t0, $t0, $t1
	sw $t0, -12736($fp)
	lw $t0, -12736($fp)
	lw $t1, -12728($fp)
	add $t0, $t0, $t1
	sw $t0, -12740($fp)
	lw $t0, -12740($fp)
	lw $t1, 0($t0)
	sw $t1, -12744($fp)
	lw $t0, -12724($fp)
	lw $t1, -12744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12748($fp)
	lw $t0, -896($fp)
	sw $t0, -12752($fp)
	lw $t1, -12748($fp)
	lw $t2, -12752($fp)
	bgt $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -12720($fp)
label988:
	lw $ra, -4($fp)
	lw $v0, -12720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label981
label980:
	li $t0, 0
	sw $t0, -12756($fp)
	li $t0, 21190
	sw $t0, -12760($fp)
	li $t0, 58510
	sw $t0, -12764($fp)
	lw $t0, -12760($fp)
	lw $t1, -12764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12768($fp)
	li $t0, 17023
	sw $t0, -12772($fp)
	lw $t0, -12768($fp)
	lw $t1, -12772($fp)
	mul $t0, $t0, $t1
	sw $t0, -12776($fp)
	li $t0, 53735
	sw $t0, -12780($fp)
	lw $t0, -11440($fp)
	sw $t0, -12784($fp)
	lw $t0, -12780($fp)
	lw $t1, -12784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12788($fp)
	lw $t1, -12776($fp)
	lw $t2, -12788($fp)
	blt $t1, $t2, label992
	j label993
label992:
	li $t0, 1
	sw $t0, -12756($fp)
label993:
	lw $t0, -12756($fp)
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	sw $t0, -12792($fp)
	lw $t1, -12792($fp)
	li $t2, 0
	bne $t1, $t2, label989
	j label990
label989:
	li $t0, 0
	sw $t0, -12796($fp)
	li $t0, 0
	sw $t0, -12800($fp)
	jal f10
	sw $v0, -12804($fp)
	addi $sp, $sp, 4
	lw $t1, -12804($fp)
	li $t2, 0
	bne $t1, $t2, label996
	j label997
label996:
	li $t0, 1
	sw $t0, -12800($fp)
label997:
	li $t0, 0
	sw $t0, -12808($fp)
	li $t0, 13173
	sw $t0, -12812($fp)
	lw $t1, -12812($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label998
label998:
	li $t0, 1
	sw $t0, -12808($fp)
label999:
	li $t0, 0
	lw $t1, -12808($fp)
	sub $t0, $t0, $t1
	sw $t0, -12816($fp)
	li $t0, 0
	lw $t1, -12816($fp)
	sub $t0, $t0, $t1
	sw $t0, -12820($fp)
	lw $t1, -12800($fp)
	lw $t2, -12820($fp)
	bne $t1, $t2, label994
	j label995
label994:
	li $t0, 1
	sw $t0, -12796($fp)
label995:
label990:
label981:
	j label853
label855:
	lw $t0, -11088($fp)
	sw $t0, -12824($fp)
	lw $t0, -12824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -11100($fp)
	sw $t0, -12828($fp)
	lw $t0, -12828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 37747
	sw $t0, -12832($fp)
	li $t0, 9064
	sw $t0, -12836($fp)
	lw $t0, -12832($fp)
	lw $t1, -12836($fp)
	mul $t0, $t0, $t1
	sw $t0, -12840($fp)
	lw $t0, -12840($fp)
	sw $t0, -11088($fp)
	lw $t0, -11088($fp)
	sw $t0, -12844($fp)
	lw $ra, -4($fp)
	lw $v0, -12844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1000:
	li $t0, 23592
	sw $t0, -12848($fp)
	li $t0, 0
	lw $t1, -12848($fp)
	sub $t0, $t0, $t1
	sw $t0, -12852($fp)
	jal f10
	sw $v0, -12856($fp)
	addi $sp, $sp, 4
	li $t0, 43149
	sw $t0, -12860($fp)
	lw $t0, -12856($fp)
	lw $t1, -12860($fp)
	add $t0, $t0, $t1
	sw $t0, -12864($fp)
	lw $t1, -12852($fp)
	lw $t2, -12864($fp)
	blt $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 31152
	sw $t0, -12868($fp)
	j label1000
label1002:
	li $t0, 0
	sw $t0, -12872($fp)
	addi $t0, $fp, -412
	sw $t0, -12876($fp)
	lw $t0, -2180($fp)
	sw $t0, -12880($fp)
	li $t0, 4
	lw $t1, -12880($fp)
	mul $t0, $t0, $t1
	sw $t0, -12884($fp)
	lw $t0, -12884($fp)
	lw $t1, -12876($fp)
	add $t0, $t0, $t1
	sw $t0, -12888($fp)
	lw $t0, -12888($fp)
	lw $t1, 0($t0)
	sw $t1, -12892($fp)
	lw $t1, -12892($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1007
label1006:
	li $t0, 1
	sw $t0, -12872($fp)
label1007:
	addi $t0, $fp, -456
	sw $t0, -12896($fp)
	li $t0, 0
	sw $t0, -12900($fp)
	li $t0, 49271
	sw $t0, -12904($fp)
	lw $t1, -12904($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1009
label1010:
	lw $t0, -3884($fp)
	sw $t0, -12908($fp)
	lw $t1, -12908($fp)
	li $t2, 0
	bne $t1, $t2, label1008
	j label1009
label1008:
	li $t0, 1
	sw $t0, -12900($fp)
label1009:
	li $t0, 4
	lw $t1, -12900($fp)
	mul $t0, $t0, $t1
	sw $t0, -12912($fp)
	lw $t0, -12912($fp)
	lw $t1, -12896($fp)
	add $t0, $t0, $t1
	sw $t0, -12916($fp)
	lw $t0, -12916($fp)
	lw $t1, 0($t0)
	sw $t1, -12920($fp)
	lw $t0, -12872($fp)
	lw $t1, -12920($fp)
	sub $t0, $t0, $t1
	sw $t0, -12924($fp)
	lw $t1, -12924($fp)
	li $t2, 0
	bne $t1, $t2, label1003
	j label1004
label1003:
	addi $t0, $fp, -480
	sw $t0, -12928($fp)
	li $t0, 7857
	sw $t0, -12932($fp)
	lw $t0, -2792($fp)
	sw $t0, -12936($fp)
	lw $t0, -12932($fp)
	lw $t1, -12936($fp)
	mul $t0, $t0, $t1
	sw $t0, -12940($fp)
	li $t0, 4
	lw $t1, -12940($fp)
	mul $t0, $t0, $t1
	sw $t0, -12944($fp)
	lw $t0, -12944($fp)
	lw $t1, -12928($fp)
	add $t0, $t0, $t1
	sw $t0, -12948($fp)
	lw $t0, -12948($fp)
	lw $t1, 0($t0)
	sw $t1, -12952($fp)
	li $t0, 0
	sw $t0, -12956($fp)
	lw $t0, -2948($fp)
	sw $t0, -12960($fp)
	lw $t1, -12960($fp)
	li $t2, 0
	bne $t1, $t2, label1015
	j label1014
label1014:
	li $t0, 1
	sw $t0, -12956($fp)
label1015:
	lw $t0, -12952($fp)
	lw $t1, -12956($fp)
	mul $t0, $t0, $t1
	sw $t0, -12964($fp)
	li $t0, 0
	lw $t1, -12964($fp)
	sub $t0, $t0, $t1
	sw $t0, -12968($fp)
	lw $t1, -12968($fp)
	li $t2, 0
	bne $t1, $t2, label1011
	j label1012
label1011:
label1016:
	li $t0, 0
	sw $t0, -12972($fp)
	li $t0, 0
	sw $t0, -12976($fp)
	li $t0, 28109
	sw $t0, -12980($fp)
	li $t0, 37341
	sw $t0, -12984($fp)
	lw $t1, -12980($fp)
	lw $t2, -12984($fp)
	beq $t1, $t2, label1021
	j label1022
label1021:
	li $t0, 1
	sw $t0, -12976($fp)
label1022:
	lw $t0, -896($fp)
	sw $t0, -12988($fp)
	lw $t1, -12976($fp)
	lw $t2, -12988($fp)
	beq $t1, $t2, label1019
	j label1020
label1019:
	li $t0, 1
	sw $t0, -12972($fp)
label1020:
	li $t0, 0
	sw $t0, -12992($fp)
	lw $t0, -1184($fp)
	sw $t0, -12996($fp)
	lw $t1, -12996($fp)
	li $t2, 0
	bne $t1, $t2, label1024
	j label1025
label1025:
	lw $t0, -824($fp)
	sw $t0, -13000($fp)
	lw $t1, -13000($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 1
	sw $t0, -12992($fp)
label1024:
	addi $t0, $fp, -440
	sw $t0, -13004($fp)
	li $t0, 3
	sw $t0, -13008($fp)
	li $t0, 4
	lw $t1, -13008($fp)
	mul $t0, $t0, $t1
	sw $t0, -13012($fp)
	lw $t0, -13012($fp)
	lw $t1, -13004($fp)
	add $t0, $t0, $t1
	sw $t0, -13016($fp)
	lw $t0, -13016($fp)
	lw $t1, 0($t0)
	sw $t1, -13020($fp)
	addi $sp, $sp, -4
	lw $t0, -12972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13024($fp)
	addi $sp, $sp, 16
	lw $t0, -2372($fp)
	sw $t0, -13028($fp)
	lw $t0, -13028($fp)
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	sw $t0, -13032($fp)
	li $t0, 0
	sw $t0, -13036($fp)
	li $t0, 6029
	sw $t0, -13040($fp)
	lw $t0, -3632($fp)
	sw $t0, -13044($fp)
	lw $t0, -13040($fp)
	lw $t1, -13044($fp)
	mul $t0, $t0, $t1
	sw $t0, -13048($fp)
	lw $t1, -13048($fp)
	li $t2, 0
	bne $t1, $t2, label1028
	j label1027
label1028:
	li $t0, 41198
	sw $t0, -13052($fp)
	lw $t1, -13052($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 1
	sw $t0, -13036($fp)
label1027:
	li $t0, 0
	sw $t0, -13056($fp)
	addi $t0, $fp, -340
	sw $t0, -13060($fp)
	li $t0, 2
	sw $t0, -13064($fp)
	li $t0, 4
	lw $t1, -13064($fp)
	mul $t0, $t0, $t1
	sw $t0, -13068($fp)
	lw $t0, -13068($fp)
	lw $t1, -13060($fp)
	add $t0, $t0, $t1
	sw $t0, -13072($fp)
	lw $t0, -13072($fp)
	lw $t1, 0($t0)
	sw $t1, -13076($fp)
	addi $t0, $fp, -340
	sw $t0, -13080($fp)
	lw $t0, -11100($fp)
	sw $t0, -13084($fp)
	li $t0, 4
	lw $t1, -13084($fp)
	mul $t0, $t0, $t1
	sw $t0, -13088($fp)
	lw $t0, -13088($fp)
	lw $t1, -13080($fp)
	add $t0, $t0, $t1
	sw $t0, -13092($fp)
	lw $t0, -13092($fp)
	lw $t1, 0($t0)
	sw $t1, -13096($fp)
	li $t0, 0
	lw $t1, -13096($fp)
	sub $t0, $t0, $t1
	sw $t0, -13100($fp)
	lw $t0, -3692($fp)
	sw $t0, -13104($fp)
	lw $t0, -2960($fp)
	sw $t0, -13108($fp)
	lw $t0, -13104($fp)
	lw $t1, -13108($fp)
	mul $t0, $t0, $t1
	sw $t0, -13112($fp)
	li $t0, 0
	lw $t1, -13112($fp)
	sub $t0, $t0, $t1
	sw $t0, -13116($fp)
	li $t0, 0
	sw $t0, -13120($fp)
	lw $t0, -2960($fp)
	sw $t0, -13124($fp)
	lw $t0, -4352($fp)
	sw $t0, -13128($fp)
	lw $t0, -13124($fp)
	lw $t1, -13128($fp)
	sub $t0, $t0, $t1
	sw $t0, -13132($fp)
	lw $t1, -13132($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1032
label1033:
	li $t0, 20951
	sw $t0, -13136($fp)
	lw $t1, -13136($fp)
	li $t2, 0
	bne $t1, $t2, label1031
	j label1032
label1031:
	li $t0, 1
	sw $t0, -13120($fp)
label1032:
	addi $sp, $sp, -4
	lw $t0, -13076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13120($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -13140($fp)
	addi $sp, $sp, 20
	lw $t1, -13140($fp)
	li $t2, 0
	bne $t1, $t2, label1030
	j label1029
label1029:
	li $t0, 1
	sw $t0, -13056($fp)
label1030:
	addi $sp, $sp, -4
	lw $t0, -13024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13056($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -13144($fp)
	addi $sp, $sp, 20
	lw $t1, -13144($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1018
label1017:
label1034:
	addi $t0, $fp, -140
	sw $t0, -13148($fp)
	addi $t0, $fp, -456
	sw $t0, -13152($fp)
	lw $t0, -4376($fp)
	sw $t0, -13156($fp)
	lw $t0, -13156($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -13160($fp)
	li $t0, 4
	lw $t1, -13160($fp)
	mul $t0, $t0, $t1
	sw $t0, -13164($fp)
	lw $t0, -13164($fp)
	lw $t1, -13152($fp)
	add $t0, $t0, $t1
	sw $t0, -13168($fp)
	lw $t0, -13168($fp)
	lw $t1, 0($t0)
	sw $t1, -13172($fp)
	li $t0, 4
	lw $t1, -13172($fp)
	mul $t0, $t0, $t1
	sw $t0, -13176($fp)
	lw $t0, -13176($fp)
	lw $t1, -13148($fp)
	add $t0, $t0, $t1
	sw $t0, -13180($fp)
	lw $t0, -13180($fp)
	lw $t1, 0($t0)
	sw $t1, -13184($fp)
	lw $t1, -13184($fp)
	li $t2, 0
	bne $t1, $t2, label1035
	j label1036
label1035:
	li $t0, 0
	sw $t0, -13188($fp)
	li $t0, 52169
	sw $t0, -13192($fp)
	lw $t0, -1064($fp)
	sw $t0, -13196($fp)
	lw $t0, -13192($fp)
	lw $t1, -13196($fp)
	add $t0, $t0, $t1
	sw $t0, -13200($fp)
	li $t0, 53251
	sw $t0, -13204($fp)
	lw $t1, -13200($fp)
	lw $t2, -13204($fp)
	bne $t1, $t2, label1037
	j label1038
label1037:
	li $t0, 1
	sw $t0, -13188($fp)
label1038:
	j label1034
label1036:
	j label1016
label1018:
	j label1013
label1012:
	lw $t0, -4376($fp)
	sw $t0, -13208($fp)
	lw $t0, -2348($fp)
	sw $t0, -13212($fp)
	lw $t0, -13208($fp)
	lw $t1, -13212($fp)
	mul $t0, $t0, $t1
	sw $t0, -13216($fp)
label1013:
	j label1005
label1004:
	addi $t0, $fp, -84
	sw $t0, -13220($fp)
	li $t0, 0
	sw $t0, -13224($fp)
	li $t0, 4
	lw $t1, -13224($fp)
	mul $t0, $t0, $t1
	sw $t0, -13228($fp)
	lw $t0, -13228($fp)
	lw $t1, -13220($fp)
	add $t0, $t0, $t1
	sw $t0, -13232($fp)
	lw $t0, -13232($fp)
	lw $t1, 0($t0)
	sw $t1, -13236($fp)
	li $t0, 59629
	sw $t0, -13240($fp)
	lw $t0, -13236($fp)
	lw $t1, -13240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13244($fp)
	addi $t0, $fp, -188
	sw $t0, -13248($fp)
	lw $t0, -1916($fp)
	sw $t0, -13252($fp)
	li $t0, 4
	lw $t1, -13252($fp)
	mul $t0, $t0, $t1
	sw $t0, -13256($fp)
	lw $t0, -13256($fp)
	lw $t1, -13248($fp)
	add $t0, $t0, $t1
	sw $t0, -13260($fp)
	lw $t0, -13260($fp)
	lw $t1, 0($t0)
	sw $t1, -13264($fp)
	lw $t0, -1196($fp)
	sw $t0, -13268($fp)
	li $t0, 44845
	sw $t0, -13272($fp)
	lw $t0, -13272($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -13276($fp)
	addi $sp, $sp, -4
	lw $t0, -13244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13276($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -13280($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -13280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1005:
	addi $t0, $fp, -28
	sw $t0, -13284($fp)
	li $t0, 0
	sw $t0, -13288($fp)
	li $t0, 4
	lw $t1, -13288($fp)
	mul $t0, $t0, $t1
	sw $t0, -13292($fp)
	lw $t0, -13292($fp)
	lw $t1, -13284($fp)
	add $t0, $t0, $t1
	sw $t0, -13296($fp)
	lw $t0, -13296($fp)
	lw $t1, 0($t0)
	sw $t1, -13300($fp)
	lw $t0, -13300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -13304($fp)
	li $t0, 1
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
	lw $t0, -13320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -13324($fp)
	li $t0, 2
	sw $t0, -13328($fp)
	li $t0, 4
	lw $t1, -13328($fp)
	mul $t0, $t0, $t1
	sw $t0, -13332($fp)
	lw $t0, -13332($fp)
	lw $t1, -13324($fp)
	add $t0, $t0, $t1
	sw $t0, -13336($fp)
	lw $t0, -13336($fp)
	lw $t1, 0($t0)
	sw $t1, -13340($fp)
	lw $t0, -13340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -13344($fp)
	li $t0, 3
	sw $t0, -13348($fp)
	li $t0, 4
	lw $t1, -13348($fp)
	mul $t0, $t0, $t1
	sw $t0, -13352($fp)
	lw $t0, -13352($fp)
	lw $t1, -13344($fp)
	add $t0, $t0, $t1
	sw $t0, -13356($fp)
	lw $t0, -13356($fp)
	lw $t1, 0($t0)
	sw $t1, -13360($fp)
	lw $t0, -13360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -13364($fp)
	li $t0, 4
	sw $t0, -13368($fp)
	li $t0, 4
	lw $t1, -13368($fp)
	mul $t0, $t0, $t1
	sw $t0, -13372($fp)
	lw $t0, -13372($fp)
	lw $t1, -13364($fp)
	add $t0, $t0, $t1
	sw $t0, -13376($fp)
	lw $t0, -13376($fp)
	lw $t1, 0($t0)
	sw $t1, -13380($fp)
	lw $t0, -13380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -13384($fp)
	li $t0, 5
	sw $t0, -13388($fp)
	li $t0, 4
	lw $t1, -13388($fp)
	mul $t0, $t0, $t1
	sw $t0, -13392($fp)
	lw $t0, -13392($fp)
	lw $t1, -13384($fp)
	add $t0, $t0, $t1
	sw $t0, -13396($fp)
	lw $t0, -13396($fp)
	lw $t1, 0($t0)
	sw $t1, -13400($fp)
	lw $t0, -13400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -13404($fp)
	li $t0, 0
	sw $t0, -13408($fp)
	li $t0, 4
	lw $t1, -13408($fp)
	mul $t0, $t0, $t1
	sw $t0, -13412($fp)
	lw $t0, -13412($fp)
	lw $t1, -13404($fp)
	add $t0, $t0, $t1
	sw $t0, -13416($fp)
	lw $t0, -13416($fp)
	lw $t1, 0($t0)
	sw $t1, -13420($fp)
	lw $t0, -13420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -13424($fp)
	li $t0, 1
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
	lw $t0, -13440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -13444($fp)
	li $t0, 2
	sw $t0, -13448($fp)
	li $t0, 4
	lw $t1, -13448($fp)
	mul $t0, $t0, $t1
	sw $t0, -13452($fp)
	lw $t0, -13452($fp)
	lw $t1, -13444($fp)
	add $t0, $t0, $t1
	sw $t0, -13456($fp)
	lw $t0, -13456($fp)
	lw $t1, 0($t0)
	sw $t1, -13460($fp)
	lw $t0, -13460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -13464($fp)
	li $t0, 3
	sw $t0, -13468($fp)
	li $t0, 4
	lw $t1, -13468($fp)
	mul $t0, $t0, $t1
	sw $t0, -13472($fp)
	lw $t0, -13472($fp)
	lw $t1, -13464($fp)
	add $t0, $t0, $t1
	sw $t0, -13476($fp)
	lw $t0, -13476($fp)
	lw $t1, 0($t0)
	sw $t1, -13480($fp)
	lw $t0, -13480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -13484($fp)
	li $t0, 4
	sw $t0, -13488($fp)
	li $t0, 4
	lw $t1, -13488($fp)
	mul $t0, $t0, $t1
	sw $t0, -13492($fp)
	lw $t0, -13492($fp)
	lw $t1, -13484($fp)
	add $t0, $t0, $t1
	sw $t0, -13496($fp)
	lw $t0, -13496($fp)
	lw $t1, 0($t0)
	sw $t1, -13500($fp)
	lw $t0, -13500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -13504($fp)
	li $t0, 5
	sw $t0, -13508($fp)
	li $t0, 4
	lw $t1, -13508($fp)
	mul $t0, $t0, $t1
	sw $t0, -13512($fp)
	lw $t0, -13512($fp)
	lw $t1, -13504($fp)
	add $t0, $t0, $t1
	sw $t0, -13516($fp)
	lw $t0, -13516($fp)
	lw $t1, 0($t0)
	sw $t1, -13520($fp)
	lw $t0, -13520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -13524($fp)
	li $t0, 6
	sw $t0, -13528($fp)
	li $t0, 4
	lw $t1, -13528($fp)
	mul $t0, $t0, $t1
	sw $t0, -13532($fp)
	lw $t0, -13532($fp)
	lw $t1, -13524($fp)
	add $t0, $t0, $t1
	sw $t0, -13536($fp)
	lw $t0, -13536($fp)
	lw $t1, 0($t0)
	sw $t1, -13540($fp)
	lw $t0, -13540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -13544($fp)
	li $t0, 7
	sw $t0, -13548($fp)
	li $t0, 4
	lw $t1, -13548($fp)
	mul $t0, $t0, $t1
	sw $t0, -13552($fp)
	lw $t0, -13552($fp)
	lw $t1, -13544($fp)
	add $t0, $t0, $t1
	sw $t0, -13556($fp)
	lw $t0, -13556($fp)
	lw $t1, 0($t0)
	sw $t1, -13560($fp)
	lw $t0, -13560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -13564($fp)
	lw $t0, -13564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -13568($fp)
	lw $t0, -13568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -13572($fp)
	lw $t0, -13572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -13576($fp)
	lw $t0, -13576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -13580($fp)
	lw $t0, -13580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -13584($fp)
	lw $t0, -13584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -13588($fp)
	lw $t0, -13588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -13592($fp)
	lw $t0, -13592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
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
	lw $t0, -13612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -13616($fp)
	li $t0, 1
	sw $t0, -13620($fp)
	li $t0, 4
	lw $t1, -13620($fp)
	mul $t0, $t0, $t1
	sw $t0, -13624($fp)
	lw $t0, -13624($fp)
	lw $t1, -13616($fp)
	add $t0, $t0, $t1
	sw $t0, -13628($fp)
	lw $t0, -13628($fp)
	lw $t1, 0($t0)
	sw $t1, -13632($fp)
	lw $t0, -13632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -13636($fp)
	li $t0, 2
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
	lw $t0, -13652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -13656($fp)
	li $t0, 3
	sw $t0, -13660($fp)
	li $t0, 4
	lw $t1, -13660($fp)
	mul $t0, $t0, $t1
	sw $t0, -13664($fp)
	lw $t0, -13664($fp)
	lw $t1, -13656($fp)
	add $t0, $t0, $t1
	sw $t0, -13668($fp)
	lw $t0, -13668($fp)
	lw $t1, 0($t0)
	sw $t1, -13672($fp)
	lw $t0, -13672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -13676($fp)
	lw $t0, -13676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1028($fp)
	sw $t0, -13680($fp)
	lw $t0, -13680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1040($fp)
	sw $t0, -13684($fp)
	lw $t0, -13684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -13688($fp)
	lw $t0, -13688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -13692($fp)
	lw $t0, -13692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -13696($fp)
	lw $t0, -13696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -13700($fp)
	lw $t0, -13700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -13704($fp)
	li $t0, 0
	sw $t0, -13708($fp)
	li $t0, 4
	lw $t1, -13708($fp)
	mul $t0, $t0, $t1
	sw $t0, -13712($fp)
	lw $t0, -13712($fp)
	lw $t1, -13704($fp)
	add $t0, $t0, $t1
	sw $t0, -13716($fp)
	lw $t0, -13716($fp)
	lw $t1, 0($t0)
	sw $t1, -13720($fp)
	lw $t0, -13720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -13724($fp)
	li $t0, 1
	sw $t0, -13728($fp)
	li $t0, 4
	lw $t1, -13728($fp)
	mul $t0, $t0, $t1
	sw $t0, -13732($fp)
	lw $t0, -13732($fp)
	lw $t1, -13724($fp)
	add $t0, $t0, $t1
	sw $t0, -13736($fp)
	lw $t0, -13736($fp)
	lw $t1, 0($t0)
	sw $t1, -13740($fp)
	lw $t0, -13740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1148($fp)
	sw $t0, -13744($fp)
	lw $t0, -13744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1160($fp)
	sw $t0, -13748($fp)
	lw $t0, -13748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1172($fp)
	sw $t0, -13752($fp)
	lw $t0, -13752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -13756($fp)
	lw $t0, -13756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -13760($fp)
	lw $t0, -13760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -13764($fp)
	lw $t0, -13764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -13768($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -13788($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -13808($fp)
	li $t0, 2
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
	addi $t0, $fp, -128
	sw $t0, -13828($fp)
	li $t0, 0
	sw $t0, -13832($fp)
	li $t0, 4
	lw $t1, -13832($fp)
	mul $t0, $t0, $t1
	sw $t0, -13836($fp)
	lw $t0, -13836($fp)
	lw $t1, -13828($fp)
	add $t0, $t0, $t1
	sw $t0, -13840($fp)
	lw $t0, -13840($fp)
	lw $t1, 0($t0)
	sw $t1, -13844($fp)
	lw $t0, -13844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13848($fp)
	li $t0, 1
	sw $t0, -13852($fp)
	li $t0, 4
	lw $t1, -13852($fp)
	mul $t0, $t0, $t1
	sw $t0, -13856($fp)
	lw $t0, -13856($fp)
	lw $t1, -13848($fp)
	add $t0, $t0, $t1
	sw $t0, -13860($fp)
	lw $t0, -13860($fp)
	lw $t1, 0($t0)
	sw $t1, -13864($fp)
	lw $t0, -13864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13868($fp)
	li $t0, 2
	sw $t0, -13872($fp)
	li $t0, 4
	lw $t1, -13872($fp)
	mul $t0, $t0, $t1
	sw $t0, -13876($fp)
	lw $t0, -13876($fp)
	lw $t1, -13868($fp)
	add $t0, $t0, $t1
	sw $t0, -13880($fp)
	lw $t0, -13880($fp)
	lw $t1, 0($t0)
	sw $t1, -13884($fp)
	lw $t0, -13884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13888($fp)
	li $t0, 3
	sw $t0, -13892($fp)
	li $t0, 4
	lw $t1, -13892($fp)
	mul $t0, $t0, $t1
	sw $t0, -13896($fp)
	lw $t0, -13896($fp)
	lw $t1, -13888($fp)
	add $t0, $t0, $t1
	sw $t0, -13900($fp)
	lw $t0, -13900($fp)
	lw $t1, 0($t0)
	sw $t1, -13904($fp)
	lw $t0, -13904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13908($fp)
	li $t0, 4
	sw $t0, -13912($fp)
	li $t0, 4
	lw $t1, -13912($fp)
	mul $t0, $t0, $t1
	sw $t0, -13916($fp)
	lw $t0, -13916($fp)
	lw $t1, -13908($fp)
	add $t0, $t0, $t1
	sw $t0, -13920($fp)
	lw $t0, -13920($fp)
	lw $t1, 0($t0)
	sw $t1, -13924($fp)
	lw $t0, -13924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13928($fp)
	li $t0, 5
	sw $t0, -13932($fp)
	li $t0, 4
	lw $t1, -13932($fp)
	mul $t0, $t0, $t1
	sw $t0, -13936($fp)
	lw $t0, -13936($fp)
	lw $t1, -13928($fp)
	add $t0, $t0, $t1
	sw $t0, -13940($fp)
	lw $t0, -13940($fp)
	lw $t1, 0($t0)
	sw $t1, -13944($fp)
	lw $t0, -13944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13948($fp)
	li $t0, 6
	sw $t0, -13952($fp)
	li $t0, 4
	lw $t1, -13952($fp)
	mul $t0, $t0, $t1
	sw $t0, -13956($fp)
	lw $t0, -13956($fp)
	lw $t1, -13948($fp)
	add $t0, $t0, $t1
	sw $t0, -13960($fp)
	lw $t0, -13960($fp)
	lw $t1, 0($t0)
	sw $t1, -13964($fp)
	lw $t0, -13964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -13968($fp)
	li $t0, 7
	sw $t0, -13972($fp)
	li $t0, 4
	lw $t1, -13972($fp)
	mul $t0, $t0, $t1
	sw $t0, -13976($fp)
	lw $t0, -13976($fp)
	lw $t1, -13968($fp)
	add $t0, $t0, $t1
	sw $t0, -13980($fp)
	lw $t0, -13980($fp)
	lw $t1, 0($t0)
	sw $t1, -13984($fp)
	lw $t0, -13984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	lw $t0, -1556($fp)
	sw $t0, -14048($fp)
	lw $t0, -14048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
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
	addi $t0, $fp, -180
	sw $t0, -14192($fp)
	li $t0, 7
	sw $t0, -14196($fp)
	li $t0, 4
	lw $t1, -14196($fp)
	mul $t0, $t0, $t1
	sw $t0, -14200($fp)
	lw $t0, -14200($fp)
	lw $t1, -14192($fp)
	add $t0, $t0, $t1
	sw $t0, -14204($fp)
	lw $t0, -14204($fp)
	lw $t1, 0($t0)
	sw $t1, -14208($fp)
	lw $t0, -14208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -14212($fp)
	li $t0, 8
	sw $t0, -14216($fp)
	li $t0, 4
	lw $t1, -14216($fp)
	mul $t0, $t0, $t1
	sw $t0, -14220($fp)
	lw $t0, -14220($fp)
	lw $t1, -14212($fp)
	add $t0, $t0, $t1
	sw $t0, -14224($fp)
	lw $t0, -14224($fp)
	lw $t1, 0($t0)
	sw $t1, -14228($fp)
	lw $t0, -14228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -14232($fp)
	li $t0, 9
	sw $t0, -14236($fp)
	li $t0, 4
	lw $t1, -14236($fp)
	mul $t0, $t0, $t1
	sw $t0, -14240($fp)
	lw $t0, -14240($fp)
	lw $t1, -14232($fp)
	add $t0, $t0, $t1
	sw $t0, -14244($fp)
	lw $t0, -14244($fp)
	lw $t1, 0($t0)
	sw $t1, -14248($fp)
	lw $t0, -14248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -14252($fp)
	lw $t0, -14252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -14256($fp)
	lw $t0, -14256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -14260($fp)
	lw $t0, -14260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1844($fp)
	sw $t0, -14264($fp)
	lw $t0, -14264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -14268($fp)
	lw $t0, -14268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -14272($fp)
	li $t0, 0
	sw $t0, -14276($fp)
	li $t0, 4
	lw $t1, -14276($fp)
	mul $t0, $t0, $t1
	sw $t0, -14280($fp)
	lw $t0, -14280($fp)
	lw $t1, -14272($fp)
	add $t0, $t0, $t1
	sw $t0, -14284($fp)
	lw $t0, -14284($fp)
	lw $t1, 0($t0)
	sw $t1, -14288($fp)
	lw $t0, -14288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -14292($fp)
	li $t0, 1
	sw $t0, -14296($fp)
	li $t0, 4
	lw $t1, -14296($fp)
	mul $t0, $t0, $t1
	sw $t0, -14300($fp)
	lw $t0, -14300($fp)
	lw $t1, -14292($fp)
	add $t0, $t0, $t1
	sw $t0, -14304($fp)
	lw $t0, -14304($fp)
	lw $t1, 0($t0)
	sw $t1, -14308($fp)
	lw $t0, -14308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1916($fp)
	sw $t0, -14312($fp)
	lw $t0, -14312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1928($fp)
	sw $t0, -14316($fp)
	lw $t0, -14316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1940($fp)
	sw $t0, -14320($fp)
	lw $t0, -14320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1952($fp)
	sw $t0, -14324($fp)
	lw $t0, -14324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1964($fp)
	sw $t0, -14328($fp)
	lw $t0, -14328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1976($fp)
	sw $t0, -14332($fp)
	lw $t0, -14332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -14336($fp)
	li $t0, 0
	sw $t0, -14340($fp)
	li $t0, 4
	lw $t1, -14340($fp)
	mul $t0, $t0, $t1
	sw $t0, -14344($fp)
	lw $t0, -14344($fp)
	lw $t1, -14336($fp)
	add $t0, $t0, $t1
	sw $t0, -14348($fp)
	lw $t0, -14348($fp)
	lw $t1, 0($t0)
	sw $t1, -14352($fp)
	lw $t0, -14352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -14356($fp)
	li $t0, 1
	sw $t0, -14360($fp)
	li $t0, 4
	lw $t1, -14360($fp)
	mul $t0, $t0, $t1
	sw $t0, -14364($fp)
	lw $t0, -14364($fp)
	lw $t1, -14356($fp)
	add $t0, $t0, $t1
	sw $t0, -14368($fp)
	lw $t0, -14368($fp)
	lw $t1, 0($t0)
	sw $t1, -14372($fp)
	lw $t0, -14372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -14376($fp)
	li $t0, 2
	sw $t0, -14380($fp)
	li $t0, 4
	lw $t1, -14380($fp)
	mul $t0, $t0, $t1
	sw $t0, -14384($fp)
	lw $t0, -14384($fp)
	lw $t1, -14376($fp)
	add $t0, $t0, $t1
	sw $t0, -14388($fp)
	lw $t0, -14388($fp)
	lw $t1, 0($t0)
	sw $t1, -14392($fp)
	lw $t0, -14392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -14396($fp)
	li $t0, 3
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
	lw $t0, -14412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -14416($fp)
	li $t0, 4
	sw $t0, -14420($fp)
	li $t0, 4
	lw $t1, -14420($fp)
	mul $t0, $t0, $t1
	sw $t0, -14424($fp)
	lw $t0, -14424($fp)
	lw $t1, -14416($fp)
	add $t0, $t0, $t1
	sw $t0, -14428($fp)
	lw $t0, -14428($fp)
	lw $t1, 0($t0)
	sw $t1, -14432($fp)
	lw $t0, -14432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -14436($fp)
	li $t0, 5
	sw $t0, -14440($fp)
	li $t0, 4
	lw $t1, -14440($fp)
	mul $t0, $t0, $t1
	sw $t0, -14444($fp)
	lw $t0, -14444($fp)
	lw $t1, -14436($fp)
	add $t0, $t0, $t1
	sw $t0, -14448($fp)
	lw $t0, -14448($fp)
	lw $t1, 0($t0)
	sw $t1, -14452($fp)
	lw $t0, -14452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -14456($fp)
	li $t0, 6
	sw $t0, -14460($fp)
	li $t0, 4
	lw $t1, -14460($fp)
	mul $t0, $t0, $t1
	sw $t0, -14464($fp)
	lw $t0, -14464($fp)
	lw $t1, -14456($fp)
	add $t0, $t0, $t1
	sw $t0, -14468($fp)
	lw $t0, -14468($fp)
	lw $t1, 0($t0)
	sw $t1, -14472($fp)
	lw $t0, -14472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2156($fp)
	sw $t0, -14476($fp)
	lw $t0, -14476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2168($fp)
	sw $t0, -14480($fp)
	lw $t0, -14480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2180($fp)
	sw $t0, -14484($fp)
	lw $t0, -14484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2192($fp)
	sw $t0, -14488($fp)
	lw $t0, -14488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -14492($fp)
	li $t0, 0
	sw $t0, -14496($fp)
	li $t0, 4
	lw $t1, -14496($fp)
	mul $t0, $t0, $t1
	sw $t0, -14500($fp)
	lw $t0, -14500($fp)
	lw $t1, -14492($fp)
	add $t0, $t0, $t1
	sw $t0, -14504($fp)
	lw $t0, -14504($fp)
	lw $t1, 0($t0)
	sw $t1, -14508($fp)
	lw $t0, -14508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -14512($fp)
	li $t0, 1
	sw $t0, -14516($fp)
	li $t0, 4
	lw $t1, -14516($fp)
	mul $t0, $t0, $t1
	sw $t0, -14520($fp)
	lw $t0, -14520($fp)
	lw $t1, -14512($fp)
	add $t0, $t0, $t1
	sw $t0, -14524($fp)
	lw $t0, -14524($fp)
	lw $t1, 0($t0)
	sw $t1, -14528($fp)
	lw $t0, -14528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -14532($fp)
	li $t0, 2
	sw $t0, -14536($fp)
	li $t0, 4
	lw $t1, -14536($fp)
	mul $t0, $t0, $t1
	sw $t0, -14540($fp)
	lw $t0, -14540($fp)
	lw $t1, -14532($fp)
	add $t0, $t0, $t1
	sw $t0, -14544($fp)
	lw $t0, -14544($fp)
	lw $t1, 0($t0)
	sw $t1, -14548($fp)
	lw $t0, -14548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -14552($fp)
	li $t0, 3
	sw $t0, -14556($fp)
	li $t0, 4
	lw $t1, -14556($fp)
	mul $t0, $t0, $t1
	sw $t0, -14560($fp)
	lw $t0, -14560($fp)
	lw $t1, -14552($fp)
	add $t0, $t0, $t1
	sw $t0, -14564($fp)
	lw $t0, -14564($fp)
	lw $t1, 0($t0)
	sw $t1, -14568($fp)
	lw $t0, -14568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -14572($fp)
	li $t0, 4
	sw $t0, -14576($fp)
	li $t0, 4
	lw $t1, -14576($fp)
	mul $t0, $t0, $t1
	sw $t0, -14580($fp)
	lw $t0, -14580($fp)
	lw $t1, -14572($fp)
	add $t0, $t0, $t1
	sw $t0, -14584($fp)
	lw $t0, -14584($fp)
	lw $t1, 0($t0)
	sw $t1, -14588($fp)
	lw $t0, -14588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -14592($fp)
	li $t0, 5
	sw $t0, -14596($fp)
	li $t0, 4
	lw $t1, -14596($fp)
	mul $t0, $t0, $t1
	sw $t0, -14600($fp)
	lw $t0, -14600($fp)
	lw $t1, -14592($fp)
	add $t0, $t0, $t1
	sw $t0, -14604($fp)
	lw $t0, -14604($fp)
	lw $t1, 0($t0)
	sw $t1, -14608($fp)
	lw $t0, -14608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2348($fp)
	sw $t0, -14612($fp)
	lw $t0, -14612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2360($fp)
	sw $t0, -14616($fp)
	lw $t0, -14616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2372($fp)
	sw $t0, -14620($fp)
	lw $t0, -14620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2384($fp)
	sw $t0, -14624($fp)
	lw $t0, -14624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -14628($fp)
	li $t0, 0
	sw $t0, -14632($fp)
	li $t0, 4
	lw $t1, -14632($fp)
	mul $t0, $t0, $t1
	sw $t0, -14636($fp)
	lw $t0, -14636($fp)
	lw $t1, -14628($fp)
	add $t0, $t0, $t1
	sw $t0, -14640($fp)
	lw $t0, -14640($fp)
	lw $t1, 0($t0)
	sw $t1, -14644($fp)
	lw $t0, -14644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -14648($fp)
	li $t0, 1
	sw $t0, -14652($fp)
	li $t0, 4
	lw $t1, -14652($fp)
	mul $t0, $t0, $t1
	sw $t0, -14656($fp)
	lw $t0, -14656($fp)
	lw $t1, -14648($fp)
	add $t0, $t0, $t1
	sw $t0, -14660($fp)
	lw $t0, -14660($fp)
	lw $t1, 0($t0)
	sw $t1, -14664($fp)
	lw $t0, -14664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -14668($fp)
	li $t0, 2
	sw $t0, -14672($fp)
	li $t0, 4
	lw $t1, -14672($fp)
	mul $t0, $t0, $t1
	sw $t0, -14676($fp)
	lw $t0, -14676($fp)
	lw $t1, -14668($fp)
	add $t0, $t0, $t1
	sw $t0, -14680($fp)
	lw $t0, -14680($fp)
	lw $t1, 0($t0)
	sw $t1, -14684($fp)
	lw $t0, -14684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -14688($fp)
	li $t0, 3
	sw $t0, -14692($fp)
	li $t0, 4
	lw $t1, -14692($fp)
	mul $t0, $t0, $t1
	sw $t0, -14696($fp)
	lw $t0, -14696($fp)
	lw $t1, -14688($fp)
	add $t0, $t0, $t1
	sw $t0, -14700($fp)
	lw $t0, -14700($fp)
	lw $t1, 0($t0)
	sw $t1, -14704($fp)
	lw $t0, -14704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -260
	sw $t0, -14708($fp)
	li $t0, 4
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
	lw $t0, -2516($fp)
	sw $t0, -14728($fp)
	lw $t0, -14728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2528($fp)
	sw $t0, -14732($fp)
	lw $t0, -14732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2540($fp)
	sw $t0, -14736($fp)
	lw $t0, -14736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -14740($fp)
	li $t0, 0
	sw $t0, -14744($fp)
	li $t0, 4
	lw $t1, -14744($fp)
	mul $t0, $t0, $t1
	sw $t0, -14748($fp)
	lw $t0, -14748($fp)
	lw $t1, -14740($fp)
	add $t0, $t0, $t1
	sw $t0, -14752($fp)
	lw $t0, -14752($fp)
	lw $t1, 0($t0)
	sw $t1, -14756($fp)
	lw $t0, -14756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -14760($fp)
	li $t0, 1
	sw $t0, -14764($fp)
	li $t0, 4
	lw $t1, -14764($fp)
	mul $t0, $t0, $t1
	sw $t0, -14768($fp)
	lw $t0, -14768($fp)
	lw $t1, -14760($fp)
	add $t0, $t0, $t1
	sw $t0, -14772($fp)
	lw $t0, -14772($fp)
	lw $t1, 0($t0)
	sw $t1, -14776($fp)
	lw $t0, -14776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -14780($fp)
	li $t0, 2
	sw $t0, -14784($fp)
	li $t0, 4
	lw $t1, -14784($fp)
	mul $t0, $t0, $t1
	sw $t0, -14788($fp)
	lw $t0, -14788($fp)
	lw $t1, -14780($fp)
	add $t0, $t0, $t1
	sw $t0, -14792($fp)
	lw $t0, -14792($fp)
	lw $t1, 0($t0)
	sw $t1, -14796($fp)
	lw $t0, -14796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -14800($fp)
	li $t0, 3
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
	addi $t0, $fp, -292
	sw $t0, -14820($fp)
	li $t0, 4
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
	addi $t0, $fp, -292
	sw $t0, -14840($fp)
	li $t0, 5
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
	addi $t0, $fp, -292
	sw $t0, -14860($fp)
	li $t0, 6
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
	addi $t0, $fp, -292
	sw $t0, -14880($fp)
	li $t0, 7
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
	lw $t0, -2744($fp)
	sw $t0, -14900($fp)
	lw $t0, -14900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2756($fp)
	sw $t0, -14904($fp)
	lw $t0, -14904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2768($fp)
	sw $t0, -14908($fp)
	lw $t0, -14908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2780($fp)
	sw $t0, -14912($fp)
	lw $t0, -14912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2792($fp)
	sw $t0, -14916($fp)
	lw $t0, -14916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2804($fp)
	sw $t0, -14920($fp)
	lw $t0, -14920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -14924($fp)
	li $t0, 0
	sw $t0, -14928($fp)
	li $t0, 4
	lw $t1, -14928($fp)
	mul $t0, $t0, $t1
	sw $t0, -14932($fp)
	lw $t0, -14932($fp)
	lw $t1, -14924($fp)
	add $t0, $t0, $t1
	sw $t0, -14936($fp)
	lw $t0, -14936($fp)
	lw $t1, 0($t0)
	sw $t1, -14940($fp)
	lw $t0, -14940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -14944($fp)
	li $t0, 1
	sw $t0, -14948($fp)
	li $t0, 4
	lw $t1, -14948($fp)
	mul $t0, $t0, $t1
	sw $t0, -14952($fp)
	lw $t0, -14952($fp)
	lw $t1, -14944($fp)
	add $t0, $t0, $t1
	sw $t0, -14956($fp)
	lw $t0, -14956($fp)
	lw $t1, 0($t0)
	sw $t1, -14960($fp)
	lw $t0, -14960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -14964($fp)
	li $t0, 2
	sw $t0, -14968($fp)
	li $t0, 4
	lw $t1, -14968($fp)
	mul $t0, $t0, $t1
	sw $t0, -14972($fp)
	lw $t0, -14972($fp)
	lw $t1, -14964($fp)
	add $t0, $t0, $t1
	sw $t0, -14976($fp)
	lw $t0, -14976($fp)
	lw $t1, 0($t0)
	sw $t1, -14980($fp)
	lw $t0, -14980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -14984($fp)
	li $t0, 3
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
	lw $t0, -15000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -15004($fp)
	li $t0, 4
	sw $t0, -15008($fp)
	li $t0, 4
	lw $t1, -15008($fp)
	mul $t0, $t0, $t1
	sw $t0, -15012($fp)
	lw $t0, -15012($fp)
	lw $t1, -15004($fp)
	add $t0, $t0, $t1
	sw $t0, -15016($fp)
	lw $t0, -15016($fp)
	lw $t1, 0($t0)
	sw $t1, -15020($fp)
	lw $t0, -15020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2936($fp)
	sw $t0, -15024($fp)
	lw $t0, -15024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2948($fp)
	sw $t0, -15028($fp)
	lw $t0, -15028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2960($fp)
	sw $t0, -15032($fp)
	lw $t0, -15032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -340
	sw $t0, -15036($fp)
	li $t0, 0
	sw $t0, -15040($fp)
	li $t0, 4
	lw $t1, -15040($fp)
	mul $t0, $t0, $t1
	sw $t0, -15044($fp)
	lw $t0, -15044($fp)
	lw $t1, -15036($fp)
	add $t0, $t0, $t1
	sw $t0, -15048($fp)
	lw $t0, -15048($fp)
	lw $t1, 0($t0)
	sw $t1, -15052($fp)
	lw $t0, -15052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -340
	sw $t0, -15056($fp)
	li $t0, 1
	sw $t0, -15060($fp)
	li $t0, 4
	lw $t1, -15060($fp)
	mul $t0, $t0, $t1
	sw $t0, -15064($fp)
	lw $t0, -15064($fp)
	lw $t1, -15056($fp)
	add $t0, $t0, $t1
	sw $t0, -15068($fp)
	lw $t0, -15068($fp)
	lw $t1, 0($t0)
	sw $t1, -15072($fp)
	lw $t0, -15072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -340
	sw $t0, -15076($fp)
	li $t0, 2
	sw $t0, -15080($fp)
	li $t0, 4
	lw $t1, -15080($fp)
	mul $t0, $t0, $t1
	sw $t0, -15084($fp)
	lw $t0, -15084($fp)
	lw $t1, -15076($fp)
	add $t0, $t0, $t1
	sw $t0, -15088($fp)
	lw $t0, -15088($fp)
	lw $t1, 0($t0)
	sw $t1, -15092($fp)
	lw $t0, -15092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -340
	sw $t0, -15096($fp)
	li $t0, 3
	sw $t0, -15100($fp)
	li $t0, 4
	lw $t1, -15100($fp)
	mul $t0, $t0, $t1
	sw $t0, -15104($fp)
	lw $t0, -15104($fp)
	lw $t1, -15096($fp)
	add $t0, $t0, $t1
	sw $t0, -15108($fp)
	lw $t0, -15108($fp)
	lw $t1, 0($t0)
	sw $t1, -15112($fp)
	lw $t0, -15112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -340
	sw $t0, -15116($fp)
	li $t0, 4
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
	addi $t0, $fp, -340
	sw $t0, -15136($fp)
	li $t0, 5
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
	addi $t0, $fp, -340
	sw $t0, -15156($fp)
	li $t0, 6
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
	lw $t0, -3140($fp)
	sw $t0, -15176($fp)
	lw $t0, -15176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -15180($fp)
	li $t0, 0
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
	addi $t0, $fp, -380
	sw $t0, -15200($fp)
	li $t0, 1
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
	addi $t0, $fp, -380
	sw $t0, -15220($fp)
	li $t0, 2
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
	addi $t0, $fp, -380
	sw $t0, -15240($fp)
	li $t0, 3
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
	addi $t0, $fp, -380
	sw $t0, -15260($fp)
	li $t0, 4
	sw $t0, -15264($fp)
	li $t0, 4
	lw $t1, -15264($fp)
	mul $t0, $t0, $t1
	sw $t0, -15268($fp)
	lw $t0, -15268($fp)
	lw $t1, -15260($fp)
	add $t0, $t0, $t1
	sw $t0, -15272($fp)
	lw $t0, -15272($fp)
	lw $t1, 0($t0)
	sw $t1, -15276($fp)
	lw $t0, -15276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -15280($fp)
	li $t0, 5
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
	lw $t0, -15296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -15300($fp)
	li $t0, 6
	sw $t0, -15304($fp)
	li $t0, 4
	lw $t1, -15304($fp)
	mul $t0, $t0, $t1
	sw $t0, -15308($fp)
	lw $t0, -15308($fp)
	lw $t1, -15300($fp)
	add $t0, $t0, $t1
	sw $t0, -15312($fp)
	lw $t0, -15312($fp)
	lw $t1, 0($t0)
	sw $t1, -15316($fp)
	lw $t0, -15316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -15320($fp)
	li $t0, 7
	sw $t0, -15324($fp)
	li $t0, 4
	lw $t1, -15324($fp)
	mul $t0, $t0, $t1
	sw $t0, -15328($fp)
	lw $t0, -15328($fp)
	lw $t1, -15320($fp)
	add $t0, $t0, $t1
	sw $t0, -15332($fp)
	lw $t0, -15332($fp)
	lw $t1, 0($t0)
	sw $t1, -15336($fp)
	lw $t0, -15336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -15340($fp)
	li $t0, 8
	sw $t0, -15344($fp)
	li $t0, 4
	lw $t1, -15344($fp)
	mul $t0, $t0, $t1
	sw $t0, -15348($fp)
	lw $t0, -15348($fp)
	lw $t1, -15340($fp)
	add $t0, $t0, $t1
	sw $t0, -15352($fp)
	lw $t0, -15352($fp)
	lw $t1, 0($t0)
	sw $t1, -15356($fp)
	lw $t0, -15356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -380
	sw $t0, -15360($fp)
	li $t0, 9
	sw $t0, -15364($fp)
	li $t0, 4
	lw $t1, -15364($fp)
	mul $t0, $t0, $t1
	sw $t0, -15368($fp)
	lw $t0, -15368($fp)
	lw $t1, -15360($fp)
	add $t0, $t0, $t1
	sw $t0, -15372($fp)
	lw $t0, -15372($fp)
	lw $t1, 0($t0)
	sw $t1, -15376($fp)
	lw $t0, -15376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3392($fp)
	sw $t0, -15380($fp)
	lw $t0, -15380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -15384($fp)
	li $t0, 0
	sw $t0, -15388($fp)
	li $t0, 4
	lw $t1, -15388($fp)
	mul $t0, $t0, $t1
	sw $t0, -15392($fp)
	lw $t0, -15392($fp)
	lw $t1, -15384($fp)
	add $t0, $t0, $t1
	sw $t0, -15396($fp)
	lw $t0, -15396($fp)
	lw $t1, 0($t0)
	sw $t1, -15400($fp)
	lw $t0, -15400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -15404($fp)
	li $t0, 1
	sw $t0, -15408($fp)
	li $t0, 4
	lw $t1, -15408($fp)
	mul $t0, $t0, $t1
	sw $t0, -15412($fp)
	lw $t0, -15412($fp)
	lw $t1, -15404($fp)
	add $t0, $t0, $t1
	sw $t0, -15416($fp)
	lw $t0, -15416($fp)
	lw $t1, 0($t0)
	sw $t1, -15420($fp)
	lw $t0, -15420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -15424($fp)
	li $t0, 2
	sw $t0, -15428($fp)
	li $t0, 4
	lw $t1, -15428($fp)
	mul $t0, $t0, $t1
	sw $t0, -15432($fp)
	lw $t0, -15432($fp)
	lw $t1, -15424($fp)
	add $t0, $t0, $t1
	sw $t0, -15436($fp)
	lw $t0, -15436($fp)
	lw $t1, 0($t0)
	sw $t1, -15440($fp)
	lw $t0, -15440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -15444($fp)
	li $t0, 3
	sw $t0, -15448($fp)
	li $t0, 4
	lw $t1, -15448($fp)
	mul $t0, $t0, $t1
	sw $t0, -15452($fp)
	lw $t0, -15452($fp)
	lw $t1, -15444($fp)
	add $t0, $t0, $t1
	sw $t0, -15456($fp)
	lw $t0, -15456($fp)
	lw $t1, 0($t0)
	sw $t1, -15460($fp)
	lw $t0, -15460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -15464($fp)
	li $t0, 4
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
	addi $t0, $fp, -412
	sw $t0, -15484($fp)
	li $t0, 5
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
	addi $t0, $fp, -412
	sw $t0, -15504($fp)
	li $t0, 6
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
	addi $t0, $fp, -412
	sw $t0, -15524($fp)
	li $t0, 7
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
	lw $t0, -3596($fp)
	sw $t0, -15544($fp)
	lw $t0, -15544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3608($fp)
	sw $t0, -15548($fp)
	lw $t0, -15548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3620($fp)
	sw $t0, -15552($fp)
	lw $t0, -15552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3632($fp)
	sw $t0, -15556($fp)
	lw $t0, -15556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3644($fp)
	sw $t0, -15560($fp)
	lw $t0, -15560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3656($fp)
	sw $t0, -15564($fp)
	lw $t0, -15564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3668($fp)
	sw $t0, -15568($fp)
	lw $t0, -15568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3680($fp)
	sw $t0, -15572($fp)
	lw $t0, -15572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3692($fp)
	sw $t0, -15576($fp)
	lw $t0, -15576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3704($fp)
	sw $t0, -15580($fp)
	lw $t0, -15580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3716($fp)
	sw $t0, -15584($fp)
	lw $t0, -15584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3728($fp)
	sw $t0, -15588($fp)
	lw $t0, -15588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3740($fp)
	sw $t0, -15592($fp)
	lw $t0, -15592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3752($fp)
	sw $t0, -15596($fp)
	lw $t0, -15596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3764($fp)
	sw $t0, -15600($fp)
	lw $t0, -15600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3776($fp)
	sw $t0, -15604($fp)
	lw $t0, -15604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3788($fp)
	sw $t0, -15608($fp)
	lw $t0, -15608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3800($fp)
	sw $t0, -15612($fp)
	lw $t0, -15612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3812($fp)
	sw $t0, -15616($fp)
	lw $t0, -15616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3824($fp)
	sw $t0, -15620($fp)
	lw $t0, -15620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3836($fp)
	sw $t0, -15624($fp)
	lw $t0, -15624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3848($fp)
	sw $t0, -15628($fp)
	lw $t0, -15628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3860($fp)
	sw $t0, -15632($fp)
	lw $t0, -15632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3872($fp)
	sw $t0, -15636($fp)
	lw $t0, -15636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3884($fp)
	sw $t0, -15640($fp)
	lw $t0, -15640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -15644($fp)
	li $t0, 0
	sw $t0, -15648($fp)
	li $t0, 4
	lw $t1, -15648($fp)
	mul $t0, $t0, $t1
	sw $t0, -15652($fp)
	lw $t0, -15652($fp)
	lw $t1, -15644($fp)
	add $t0, $t0, $t1
	sw $t0, -15656($fp)
	lw $t0, -15656($fp)
	lw $t1, 0($t0)
	sw $t1, -15660($fp)
	lw $t0, -15660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -15664($fp)
	li $t0, 1
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
	lw $t0, -15680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -15684($fp)
	li $t0, 2
	sw $t0, -15688($fp)
	li $t0, 4
	lw $t1, -15688($fp)
	mul $t0, $t0, $t1
	sw $t0, -15692($fp)
	lw $t0, -15692($fp)
	lw $t1, -15684($fp)
	add $t0, $t0, $t1
	sw $t0, -15696($fp)
	lw $t0, -15696($fp)
	lw $t1, 0($t0)
	sw $t1, -15700($fp)
	lw $t0, -15700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -15704($fp)
	li $t0, 3
	sw $t0, -15708($fp)
	li $t0, 4
	lw $t1, -15708($fp)
	mul $t0, $t0, $t1
	sw $t0, -15712($fp)
	lw $t0, -15712($fp)
	lw $t1, -15704($fp)
	add $t0, $t0, $t1
	sw $t0, -15716($fp)
	lw $t0, -15716($fp)
	lw $t1, 0($t0)
	sw $t1, -15720($fp)
	lw $t0, -15720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -15724($fp)
	li $t0, 4
	sw $t0, -15728($fp)
	li $t0, 4
	lw $t1, -15728($fp)
	mul $t0, $t0, $t1
	sw $t0, -15732($fp)
	lw $t0, -15732($fp)
	lw $t1, -15724($fp)
	add $t0, $t0, $t1
	sw $t0, -15736($fp)
	lw $t0, -15736($fp)
	lw $t1, 0($t0)
	sw $t1, -15740($fp)
	lw $t0, -15740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -15744($fp)
	li $t0, 5
	sw $t0, -15748($fp)
	li $t0, 4
	lw $t1, -15748($fp)
	mul $t0, $t0, $t1
	sw $t0, -15752($fp)
	lw $t0, -15752($fp)
	lw $t1, -15744($fp)
	add $t0, $t0, $t1
	sw $t0, -15756($fp)
	lw $t0, -15756($fp)
	lw $t1, 0($t0)
	sw $t1, -15760($fp)
	lw $t0, -15760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -15764($fp)
	li $t0, 6
	sw $t0, -15768($fp)
	li $t0, 4
	lw $t1, -15768($fp)
	mul $t0, $t0, $t1
	sw $t0, -15772($fp)
	lw $t0, -15772($fp)
	lw $t1, -15764($fp)
	add $t0, $t0, $t1
	sw $t0, -15776($fp)
	lw $t0, -15776($fp)
	lw $t1, 0($t0)
	sw $t1, -15780($fp)
	lw $t0, -15780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -456
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
	addi $t0, $fp, -456
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
	addi $t0, $fp, -456
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
	addi $t0, $fp, -456
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
	addi $t0, $fp, -480
	sw $t0, -15864($fp)
	li $t0, 0
	sw $t0, -15868($fp)
	li $t0, 4
	lw $t1, -15868($fp)
	mul $t0, $t0, $t1
	sw $t0, -15872($fp)
	lw $t0, -15872($fp)
	lw $t1, -15864($fp)
	add $t0, $t0, $t1
	sw $t0, -15876($fp)
	lw $t0, -15876($fp)
	lw $t1, 0($t0)
	sw $t1, -15880($fp)
	lw $t0, -15880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -15884($fp)
	li $t0, 1
	sw $t0, -15888($fp)
	li $t0, 4
	lw $t1, -15888($fp)
	mul $t0, $t0, $t1
	sw $t0, -15892($fp)
	lw $t0, -15892($fp)
	lw $t1, -15884($fp)
	add $t0, $t0, $t1
	sw $t0, -15896($fp)
	lw $t0, -15896($fp)
	lw $t1, 0($t0)
	sw $t1, -15900($fp)
	lw $t0, -15900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -15904($fp)
	li $t0, 2
	sw $t0, -15908($fp)
	li $t0, 4
	lw $t1, -15908($fp)
	mul $t0, $t0, $t1
	sw $t0, -15912($fp)
	lw $t0, -15912($fp)
	lw $t1, -15904($fp)
	add $t0, $t0, $t1
	sw $t0, -15916($fp)
	lw $t0, -15916($fp)
	lw $t1, 0($t0)
	sw $t1, -15920($fp)
	lw $t0, -15920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -15924($fp)
	li $t0, 3
	sw $t0, -15928($fp)
	li $t0, 4
	lw $t1, -15928($fp)
	mul $t0, $t0, $t1
	sw $t0, -15932($fp)
	lw $t0, -15932($fp)
	lw $t1, -15924($fp)
	add $t0, $t0, $t1
	sw $t0, -15936($fp)
	lw $t0, -15936($fp)
	lw $t1, 0($t0)
	sw $t1, -15940($fp)
	lw $t0, -15940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -15944($fp)
	li $t0, 4
	sw $t0, -15948($fp)
	li $t0, 4
	lw $t1, -15948($fp)
	mul $t0, $t0, $t1
	sw $t0, -15952($fp)
	lw $t0, -15952($fp)
	lw $t1, -15944($fp)
	add $t0, $t0, $t1
	sw $t0, -15956($fp)
	lw $t0, -15956($fp)
	lw $t1, 0($t0)
	sw $t1, -15960($fp)
	lw $t0, -15960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -480
	sw $t0, -15964($fp)
	li $t0, 5
	sw $t0, -15968($fp)
	li $t0, 4
	lw $t1, -15968($fp)
	mul $t0, $t0, $t1
	sw $t0, -15972($fp)
	lw $t0, -15972($fp)
	lw $t1, -15964($fp)
	add $t0, $t0, $t1
	sw $t0, -15976($fp)
	lw $t0, -15976($fp)
	lw $t1, 0($t0)
	sw $t1, -15980($fp)
	lw $t0, -15980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4304($fp)
	sw $t0, -15984($fp)
	lw $t0, -15984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4316($fp)
	sw $t0, -15988($fp)
	lw $t0, -15988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4328($fp)
	sw $t0, -15992($fp)
	lw $t0, -15992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4340($fp)
	sw $t0, -15996($fp)
	lw $t0, -15996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4352($fp)
	sw $t0, -16000($fp)
	lw $t0, -16000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4364($fp)
	sw $t0, -16004($fp)
	lw $t0, -16004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4376($fp)
	sw $t0, -16008($fp)
	lw $t0, -16008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -16012($fp)
	li $t0, 22512
	sw $t0, -16016($fp)
	li $t0, 18055
	sw $t0, -16020($fp)
	lw $t1, -16016($fp)
	lw $t2, -16020($fp)
	ble $t1, $t2, label1039
	j label1040
label1039:
	li $t0, 1
	sw $t0, -16012($fp)
label1040:
	lw $t0, -16012($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -16024($fp)
	lw $t0, -16024($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -16028($fp)
	lw $ra, -4($fp)
	lw $v0, -16028($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -388
	li $t0, 7462
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
	li $t0, 63294
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
	li $t0, 39246
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
	li $t0, 436
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
	li $t0, 14781
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
	li $t0, 0
	sw $t0, -148($fp)
	addi $t0, $fp, -24
	sw $t0, -152($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	lw $t1, -168($fp)
	sub $t0, $t0, $t1
	sw $t0, -172($fp)
	li $t0, 0
	sw $t0, -176($fp)
	lw $t0, 12($fp)
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1043
label1043:
	li $t0, 1
	sw $t0, -176($fp)
label1044:
	lw $t0, 4($fp)
	sw $t0, -184($fp)
	lw $t0, -176($fp)
	lw $t1, -184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -188($fp)
	lw $t0, -172($fp)
	lw $t1, -188($fp)
	sub $t0, $t0, $t1
	sw $t0, -192($fp)
	li $t0, 27445
	sw $t0, -196($fp)
	lw $t1, -192($fp)
	lw $t2, -196($fp)
	bge $t1, $t2, label1041
	j label1042
label1041:
	li $t0, 1
	sw $t0, -148($fp)
label1042:
	lw $t0, 12($fp)
	sw $t0, -200($fp)
	addi $t0, $fp, -24
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	lw $t0, 4($fp)
	sw $t0, -212($fp)
	li $t0, 0
	lw $t1, -212($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t1, -216($fp)
	li $t2, 0
	bne $t1, $t2, label1046
	j label1045
label1045:
	li $t0, 1
	sw $t0, -208($fp)
label1046:
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
	addi $t0, $fp, -24
	sw $t0, -232($fp)
	li $t0, 0
	sw $t0, -236($fp)
	li $t0, 4
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, 0($t0)
	sw $t1, -248($fp)
	lw $t0, -248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -252($fp)
	li $t0, 1
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
	lw $t0, -268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -272($fp)
	li $t0, 2
	sw $t0, -276($fp)
	li $t0, 4
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, 0($t0)
	sw $t1, -288($fp)
	lw $t0, -288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -292($fp)
	li $t0, 3
	sw $t0, -296($fp)
	li $t0, 4
	lw $t1, -296($fp)
	mul $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, 0($t0)
	sw $t1, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -312($fp)
	li $t0, 4
	sw $t0, -316($fp)
	li $t0, 4
	lw $t1, -316($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, 0($t0)
	sw $t1, -328($fp)
	lw $t0, -328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -332($fp)
	li $t0, 37202
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -340($fp)
	li $t0, 52528
	sw $t0, -344($fp)
	li $t0, 36509
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	lw $t0, 12($fp)
	sw $t0, -368($fp)
	lw $t0, 4($fp)
	sw $t0, -372($fp)
	lw $t1, -368($fp)
	lw $t2, -372($fp)
	bgt $t1, $t2, label1049
	j label1050
label1049:
	li $t0, 1
	sw $t0, -364($fp)
label1050:
	li $t0, 13610
	sw $t0, -376($fp)
	lw $t1, -364($fp)
	lw $t2, -376($fp)
	blt $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -360($fp)
label1048:
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -380($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	lw $t1, 0($t0)
	sw $t1, -392($fp)
	lw $ra, -4($fp)
	lw $v0, -392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -76
	li $t0, 30141
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 2126
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	mul $t0, $t0, $t1
	sw $t0, -40($fp)
	li $t0, 0
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	li $t0, 0
	sw $t0, -48($fp)
	li $t0, 20937
	sw $t0, -52($fp)
	lw $t0, -24($fp)
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	mul $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t1, -60($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1052
label1053:
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label1051
	j label1052
label1051:
	li $t0, 1
	sw $t0, -48($fp)
label1052:
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -68($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 37998
	sw $t0, -80($fp)
	lw $ra, -4($fp)
	lw $v0, -80($fp)
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
	jal f14
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
