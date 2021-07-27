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
	addi $sp, $sp, -396
	li $t0, 39353
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
	li $t0, 61045
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
	li $t0, 10929
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
	li $t0, 14397
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
	li $t0, 63095
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
	li $t0, 25837
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
	li $t0, 42161
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
	addi $t0, $fp, -32
	sw $t0, -204($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -224($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -244($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -264($fp)
	li $t0, 3
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
	lw $t0, -280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -284($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -304($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -324($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 4($fp)
	sw $t0, -348($fp)
	li $t0, 7680
	sw $t0, -352($fp)
	lw $t0, -348($fp)
	lw $t1, -352($fp)
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
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
	lw $t0, -356($fp)
	lw $t1, -376($fp)
	mul $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, 4($fp)
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	li $t0, 51733
	sw $t0, -392($fp)
	li $t0, 10936
	sw $t0, -396($fp)
	lw $t0, -392($fp)
	lw $t1, -396($fp)
	sub $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -344($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5504
	li $t0, 13497
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
	li $t0, 24033
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
	li $t0, 2217
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
	li $t0, 12542
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
	li $t0, 60465
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
	li $t0, 53583
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
	li $t0, 34829
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
	li $t0, 11663
	sw $t0, -296($fp)
	addi $t0, $fp, -40
	sw $t0, -300($fp)
	li $t0, 7
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
	li $t0, 33003
	sw $t0, -320($fp)
	addi $t0, $fp, -40
	sw $t0, -324($fp)
	li $t0, 8
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
	li $t0, 61718
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 39401
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 54380
	sw $t0, -368($fp)
	addi $t0, $fp, -56
	sw $t0, -372($fp)
	li $t0, 0
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
	li $t0, 21449
	sw $t0, -392($fp)
	addi $t0, $fp, -56
	sw $t0, -396($fp)
	li $t0, 1
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
	li $t0, 16247
	sw $t0, -416($fp)
	addi $t0, $fp, -56
	sw $t0, -420($fp)
	li $t0, 2
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
	li $t0, 30011
	sw $t0, -440($fp)
	addi $t0, $fp, -56
	sw $t0, -444($fp)
	li $t0, 3
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
	li $t0, 39915
	sw $t0, -464($fp)
	addi $t0, $fp, -68
	sw $t0, -468($fp)
	li $t0, 0
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
	li $t0, 41124
	sw $t0, -488($fp)
	addi $t0, $fp, -68
	sw $t0, -492($fp)
	li $t0, 1
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
	li $t0, 25919
	sw $t0, -512($fp)
	addi $t0, $fp, -68
	sw $t0, -516($fp)
	li $t0, 2
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
	li $t0, 38860
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 14941
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 21428
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 49789
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 29338
	sw $t0, -584($fp)
	addi $t0, $fp, -92
	sw $t0, -588($fp)
	li $t0, 0
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
	li $t0, 18987
	sw $t0, -608($fp)
	addi $t0, $fp, -92
	sw $t0, -612($fp)
	li $t0, 1
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
	li $t0, 10090
	sw $t0, -632($fp)
	addi $t0, $fp, -92
	sw $t0, -636($fp)
	li $t0, 2
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
	li $t0, 5963
	sw $t0, -656($fp)
	addi $t0, $fp, -92
	sw $t0, -660($fp)
	li $t0, 3
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
	li $t0, 26668
	sw $t0, -680($fp)
	addi $t0, $fp, -92
	sw $t0, -684($fp)
	li $t0, 4
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
	li $t0, 59719
	sw $t0, -704($fp)
	addi $t0, $fp, -92
	sw $t0, -708($fp)
	li $t0, 5
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
	li $t0, 56998
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 12865
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 5119
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 4959
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 36898
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 7337
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 17502
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 31828
	sw $t0, -812($fp)
	addi $t0, $fp, -124
	sw $t0, -816($fp)
	li $t0, 0
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
	li $t0, 60920
	sw $t0, -836($fp)
	addi $t0, $fp, -124
	sw $t0, -840($fp)
	li $t0, 1
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
	li $t0, 52331
	sw $t0, -860($fp)
	addi $t0, $fp, -124
	sw $t0, -864($fp)
	li $t0, 2
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
	li $t0, 43491
	sw $t0, -884($fp)
	addi $t0, $fp, -124
	sw $t0, -888($fp)
	li $t0, 3
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
	li $t0, 28387
	sw $t0, -908($fp)
	addi $t0, $fp, -124
	sw $t0, -912($fp)
	li $t0, 4
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
	li $t0, 48514
	sw $t0, -932($fp)
	addi $t0, $fp, -124
	sw $t0, -936($fp)
	li $t0, 5
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -936($fp)
	lw $t1, -944($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -932($fp)
	lw $t1, -948($fp)
	sw $t0, 0($t1)
	lw $t0, -948($fp)
	lw $t1, 0($t0)
	sw $t1, -952($fp)
	li $t0, 17356
	sw $t0, -956($fp)
	addi $t0, $fp, -124
	sw $t0, -960($fp)
	li $t0, 6
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
	li $t0, 17231
	sw $t0, -980($fp)
	addi $t0, $fp, -124
	sw $t0, -984($fp)
	li $t0, 7
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -984($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -980($fp)
	lw $t1, -996($fp)
	sw $t0, 0($t1)
	lw $t0, -996($fp)
	lw $t1, 0($t0)
	sw $t1, -1000($fp)
	li $t0, 0
	sw $t0, -1004($fp)
	addi $t0, $fp, -124
	sw $t0, -1008($fp)
	addi $t0, $fp, -92
	sw $t0, -1012($fp)
	li $t0, 3
	sw $t0, -1016($fp)
	li $t0, 4
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, 0($t0)
	sw $t1, -1028($fp)
	li $t0, 4
	lw $t1, -1028($fp)
	mul $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	lw $t1, 0($t0)
	sw $t1, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -1004($fp)
label125:
label126:
	li $t0, 0
	sw $t0, -1044($fp)
	lw $t0, -792($fp)
	sw $t0, -1048($fp)
	li $t0, 0
	sw $t0, -1052($fp)
	li $t0, 9191
	sw $t0, -1056($fp)
	li $t0, 7625
	sw $t0, -1060($fp)
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t1, -1064($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label134:
	li $t0, 17666
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -1052($fp)
label133:
	li $t0, 0
	sw $t0, -1072($fp)
	li $t0, 47242
	sw $t0, -1076($fp)
	li $t0, 44342
	sw $t0, -1080($fp)
	lw $t0, -1076($fp)
	lw $t1, -1080($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label137:
	lw $t0, -768($fp)
	sw $t0, -1088($fp)
	lw $t1, -1088($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -1072($fp)
label136:
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1092($fp)
	addi $sp, $sp, 16
	lw $t1, -1092($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label131:
	lw $t0, -552($fp)
	sw $t0, -1096($fp)
	lw $t1, -1096($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label129:
	li $t0, 1
	sw $t0, -1044($fp)
label130:
	lw $t0, -1044($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1100($fp)
	lw $t1, -1100($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
	li $t0, 24132
	sw $t0, -1104($fp)
	lw $t0, -780($fp)
	sw $t0, -1108($fp)
	lw $t0, -1104($fp)
	lw $t1, -1108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1112($fp)
	li $t0, 53470
	sw $t0, -1116($fp)
	lw $t0, -360($fp)
	sw $t0, -1120($fp)
	lw $t0, -1116($fp)
	lw $t1, -1120($fp)
	sub $t0, $t0, $t1
	sw $t0, -1124($fp)
	li $t0, 0
	sw $t0, -1128($fp)
	addi $t0, $fp, -56
	sw $t0, -1132($fp)
	li $t0, 3
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
	lw $t0, -768($fp)
	sw $t0, -1152($fp)
	lw $t1, -1148($fp)
	lw $t2, -1152($fp)
	bge $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -1128($fp)
label139:
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1156($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1160($fp)
	lw $t0, -804($fp)
	sw $t0, -1164($fp)
	lw $t0, -576($fp)
	sw $t0, -1168($fp)
	lw $t1, -1164($fp)
	lw $t2, -1168($fp)
	blt $t1, $t2, label140
	j label142
label142:
	lw $t0, -744($fp)
	sw $t0, -1172($fp)
	lw $t1, -1172($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -1160($fp)
label141:
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1160($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1176($fp)
	addi $sp, $sp, 16
	lw $t0, -1112($fp)
	lw $t1, -1176($fp)
	mul $t0, $t0, $t1
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	li $t0, 48041
	sw $t0, -1188($fp)
	lw $t1, -1188($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -1184($fp)
label144:
	li $t0, 0
	lw $t1, -1184($fp)
	sub $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1180($fp)
	lw $t1, -1192($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	li $t0, 0
	sw $t0, -1200($fp)
	addi $t0, $fp, -68
	sw $t0, -1204($fp)
	lw $t0, -780($fp)
	sw $t0, -1208($fp)
	li $t0, 4
	lw $t1, -1208($fp)
	mul $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	lw $t1, 0($t0)
	sw $t1, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -1200($fp)
label146:
	lw $t0, -1196($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $ra, -4($fp)
	lw $v0, -1224($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label126
label128:
label147:
	li $t0, 12010
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	lw $t0, -732($fp)
	sw $t0, -1236($fp)
	li $t0, 59433
	sw $t0, -1240($fp)
	li $t0, 0
	lw $t1, -1240($fp)
	sub $t0, $t0, $t1
	sw $t0, -1244($fp)
	li $t0, 0
	lw $t1, -1244($fp)
	sub $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1236($fp)
	lw $t1, -1248($fp)
	mul $t0, $t0, $t1
	sw $t0, -1252($fp)
	j label147
label149:
	li $t0, 9173
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 6193
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	li $t0, 50895
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 22038
	sw $t0, -1348($fp)
	addi $t0, $fp, -1276
	sw $t0, -1352($fp)
	li $t0, 0
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
	li $t0, 11313
	sw $t0, -1372($fp)
	addi $t0, $fp, -1276
	sw $t0, -1376($fp)
	li $t0, 1
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
	li $t0, 55855
	sw $t0, -1396($fp)
	addi $t0, $fp, -1276
	sw $t0, -1400($fp)
	li $t0, 2
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
	li $t0, 58937
	sw $t0, -1420($fp)
	addi $t0, $fp, -1276
	sw $t0, -1424($fp)
	li $t0, 3
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
	li $t0, 18650
	sw $t0, -1444($fp)
	addi $t0, $fp, -1276
	sw $t0, -1448($fp)
	li $t0, 4
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
	li $t0, 7821
	sw $t0, -1468($fp)
	addi $t0, $fp, -1276
	sw $t0, -1472($fp)
	li $t0, 5
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
	li $t0, 25229
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 14034
	sw $t0, -1504($fp)
	addi $t0, $fp, -1284
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
	li $t0, 60152
	sw $t0, -1528($fp)
	addi $t0, $fp, -1284
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
	li $t0, 3184
	sw $t0, -1552($fp)
	addi $t0, $fp, -1288
	sw $t0, -1556($fp)
	li $t0, 0
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
	li $t0, 42421
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 43130
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 20540
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	li $t0, 59652
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	li $t0, 47557
	sw $t0, -1624($fp)
	addi $t0, $fp, -1296
	sw $t0, -1628($fp)
	li $t0, 0
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
	li $t0, 54144
	sw $t0, -1648($fp)
	addi $t0, $fp, -1296
	sw $t0, -1652($fp)
	li $t0, 1
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
	li $t0, 41359
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 26363
	sw $t0, -1684($fp)
	addi $t0, $fp, -1300
	sw $t0, -1688($fp)
	li $t0, 0
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
	li $t0, 63335
	sw $t0, -1708($fp)
	addi $t0, $fp, -1308
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
	li $t0, 48984
	sw $t0, -1732($fp)
	addi $t0, $fp, -1308
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
	li $t0, 44029
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 21932
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -744($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 12502
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	sw $t0, -1804($fp)
	li $t0, 45949
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	addi $t0, $fp, -1296
	sw $t0, -1824($fp)
	li $t0, 0
	sw $t0, -1828($fp)
	lw $t0, -1772($fp)
	sw $t0, -1832($fp)
	li $t0, 9866
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1840($fp)
	li $t0, 60544
	sw $t0, -1844($fp)
	lw $t1, -1840($fp)
	lw $t2, -1844($fp)
	bge $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -1828($fp)
label156:
	li $t0, 4
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, 0($t0)
	sw $t1, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 57959
	sw $t0, -1864($fp)
	lw $t0, -1772($fp)
	sw $t0, -1868($fp)
	lw $t0, -1864($fp)
	lw $t1, -1868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1872($fp)
	li $t0, 3764
	sw $t0, -1876($fp)
	lw $t1, -1872($fp)
	lw $t2, -1876($fp)
	beq $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -1860($fp)
label158:
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1880($fp)
	addi $sp, $sp, 8
	lw $t1, -1856($fp)
	lw $t2, -1880($fp)
	bgt $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -1820($fp)
label154:
	li $t0, 0
	sw $t0, -1884($fp)
	addi $t0, $fp, -1288
	sw $t0, -1888($fp)
	li $t0, 0
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
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label161
label161:
	lw $t0, -1812($fp)
	sw $t0, -1908($fp)
	li $t0, 54659
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	sub $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -1884($fp)
label160:
	lw $t0, -1884($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -1920($fp)
	li $t0, 0
	sw $t0, -1924($fp)
	addi $t0, $fp, -1276
	sw $t0, -1928($fp)
	li $t0, 0
	sw $t0, -1932($fp)
	li $t0, 26220
	sw $t0, -1936($fp)
	li $t0, 9929
	sw $t0, -1940($fp)
	lw $t0, -1936($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label166
label167:
	lw $t0, -1496($fp)
	sw $t0, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -1932($fp)
label166:
	li $t0, 4
	lw $t1, -1932($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label164:
	addi $t0, $fp, -1300
	sw $t0, -1964($fp)
	lw $t0, 12($fp)
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
	lw $t1, -1980($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label162:
	li $t0, 1
	sw $t0, -1924($fp)
label163:
	li $t0, 0
	sw $t0, -1984($fp)
	lw $t0, -1316($fp)
	sw $t0, -1988($fp)
	li $t0, 44978
	sw $t0, -1992($fp)
	lw $t0, -1988($fp)
	lw $t1, -1992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1996($fp)
	lw $t0, -780($fp)
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2004($fp)
	lw $t0, -564($fp)
	sw $t0, -2008($fp)
	lw $t0, -2004($fp)
	lw $t1, -2008($fp)
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label170
label170:
	lw $t0, -348($fp)
	sw $t0, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -1984($fp)
label169:
	li $t0, 0
	sw $t0, -2020($fp)
	lw $t0, -1760($fp)
	sw $t0, -2024($fp)
	li $t0, 0
	lw $t1, -2024($fp)
	sub $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label173
label173:
	li $t0, 0
	sw $t0, -2032($fp)
	li $t0, 19621
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label174
label174:
	li $t0, 1
	sw $t0, -2032($fp)
label175:
	li $t0, 28579
	sw $t0, -2040($fp)
	lw $t0, -2032($fp)
	lw $t1, -2040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2044($fp)
	li $t0, 0
	sw $t0, -2048($fp)
	lw $t0, -1316($fp)
	sw $t0, -2052($fp)
	lw $t0, -1800($fp)
	sw $t0, -2056($fp)
	lw $t1, -2052($fp)
	lw $t2, -2056($fp)
	bgt $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -2048($fp)
label177:
	lw $t1, -2044($fp)
	lw $t2, -2048($fp)
	beq $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -2020($fp)
label172:
	lw $t0, -1800($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1300
	sw $t0, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 52799
	sw $t0, -2072($fp)
	li $t0, 1
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	li $t0, 42613
	sw $t0, -2084($fp)
	li $t0, 47416
	sw $t0, -2088($fp)
	lw $t0, -2084($fp)
	lw $t1, -2088($fp)
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t1, -2080($fp)
	lw $t2, -2092($fp)
	bgt $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -2068($fp)
label179:
	li $t0, 4
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	lw $ra, -4($fp)
	lw $v0, -2104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2108($fp)
	li $t0, 48034
	sw $t0, -2112($fp)
	li $t0, 0
	sw $t0, -2116($fp)
	li $t0, 19498
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -2116($fp)
label183:
	lw $t1, -2112($fp)
	lw $t2, -2116($fp)
	ble $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -2108($fp)
label181:
	lw $t0, -2108($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -2124($fp)
	j label152
label151:
label184:
	lw $t0, -1328($fp)
	sw $t0, -2128($fp)
	addi $t0, $fp, -1308
	sw $t0, -2132($fp)
	lw $t0, -780($fp)
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -2140($fp)
	li $t0, 4
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, -2132($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	lw $t0, -2128($fp)
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 0
	sw $t0, -2164($fp)
	addi $t0, $fp, -1300
	sw $t0, -2168($fp)
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 4
	lw $t1, -2172($fp)
	mul $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	lw $t1, 0($t0)
	sw $t1, -2184($fp)
	lw $t1, -2184($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 1
	sw $t0, -2164($fp)
label191:
	lw $t0, -780($fp)
	sw $t0, -2188($fp)
	lw $t0, -2164($fp)
	lw $t1, -2188($fp)
	mul $t0, $t0, $t1
	sw $t0, -2192($fp)
	li $t0, 0
	sw $t0, -2196($fp)
	lw $t0, -1772($fp)
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label194:
	li $t0, 13615
	sw $t0, -2204($fp)
	lw $t1, -2204($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -2196($fp)
label193:
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2208($fp)
	addi $sp, $sp, 8
	lw $t0, -2192($fp)
	lw $t1, -2208($fp)
	sub $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label188
label189:
	li $t0, 7032
	sw $t0, -2216($fp)
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -2160($fp)
label188:
	j label184
label186:
label152:
label195:
	li $t0, 57182
	sw $t0, -2220($fp)
	li $t0, 0
	sw $t0, -2224($fp)
	lw $t0, -1772($fp)
	sw $t0, -2228($fp)
	lw $t0, -1496($fp)
	sw $t0, -2232($fp)
	lw $t0, -2228($fp)
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	li $t0, 0
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2240($fp)
	li $t0, 54974
	sw $t0, -2244($fp)
	li $t0, 0
	lw $t1, -2244($fp)
	sub $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t1, -2240($fp)
	lw $t2, -2248($fp)
	bgt $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -2224($fp)
label199:
	lw $t1, -2220($fp)
	lw $t2, -2224($fp)
	beq $t1, $t2, label196
	j label197
label196:
	li $t0, 33395
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	li $t0, 54982
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	li $t0, 38422
	sw $t0, -2304($fp)
	addi $t0, $fp, -2276
	sw $t0, -2308($fp)
	li $t0, 0
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
	li $t0, 11889
	sw $t0, -2328($fp)
	addi $t0, $fp, -2276
	sw $t0, -2332($fp)
	li $t0, 1
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
	li $t0, 11378
	sw $t0, -2352($fp)
	addi $t0, $fp, -2276
	sw $t0, -2356($fp)
	li $t0, 2
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
	li $t0, 50925
	sw $t0, -2376($fp)
	addi $t0, $fp, -2276
	sw $t0, -2380($fp)
	li $t0, 3
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
	li $t0, 57838
	sw $t0, -2400($fp)
	addi $t0, $fp, -2276
	sw $t0, -2404($fp)
	li $t0, 4
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
	li $t0, 21244
	sw $t0, -2424($fp)
	addi $t0, $fp, -2276
	sw $t0, -2428($fp)
	li $t0, 5
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
	li $t0, 45933
	sw $t0, -2448($fp)
	addi $t0, $fp, -2276
	sw $t0, -2452($fp)
	li $t0, 6
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
	li $t0, 50261
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	li $t0, 25008
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	li $t0, 50114
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	li $t0, 0
	sw $t0, -2508($fp)
	addi $t0, $fp, -1288
	sw $t0, -2512($fp)
	li $t0, 48877
	sw $t0, -2516($fp)
	li $t0, 0
	lw $t1, -2516($fp)
	sub $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, 12($fp)
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	li $t0, 4
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, 0($t0)
	sw $t1, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label202:
	addi $t0, $fp, -1308
	sw $t0, -2544($fp)
	li $t0, 0
	sw $t0, -2548($fp)
	li $t0, 4
	lw $t1, -2548($fp)
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, 0($t0)
	sw $t1, -2560($fp)
	lw $t0, -2500($fp)
	sw $t0, -2564($fp)
	li $t0, 0
	lw $t1, -2564($fp)
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2560($fp)
	lw $t1, -2568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -2508($fp)
label201:
	addi $t0, $fp, -1296
	sw $t0, -2576($fp)
	lw $t0, -552($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -2584($fp)
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2588($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -2588($fp)
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	lw $t1, 0($t0)
	sw $t1, -2600($fp)
	li $t0, 58807
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	sw $t0, -2612($fp)
	li $t0, 0
	sw $t0, -2616($fp)
	li $t0, 0
	sw $t0, -2620($fp)
	lw $t0, -2608($fp)
	sw $t0, -2624($fp)
	li $t0, 59110
	sw $t0, -2628($fp)
	lw $t0, -2624($fp)
	lw $t1, -2628($fp)
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	li $t0, 30419
	sw $t0, -2636($fp)
	lw $t0, -2632($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	li $t0, 21850
	sw $t0, -2644($fp)
	li $t0, 0
	lw $t1, -2644($fp)
	sub $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t1, -2640($fp)
	lw $t2, -2648($fp)
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -2620($fp)
label206:
	li $t0, 0
	sw $t0, -2652($fp)
	li $t0, 0
	sw $t0, -2656($fp)
	addi $t0, $fp, -40
	sw $t0, -2660($fp)
	li $t0, 5
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
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label209:
	li $t0, 1
	sw $t0, -2656($fp)
label210:
	li $t0, 64464
	sw $t0, -2680($fp)
	lw $t1, -2656($fp)
	lw $t2, -2680($fp)
	ble $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -2652($fp)
label208:
	lw $t1, -2620($fp)
	lw $t2, -2652($fp)
	beq $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -2616($fp)
label204:
	lw $t0, -348($fp)
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	lw $t0, -768($fp)
	sw $t0, -2696($fp)
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label216:
	li $t0, 52452
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label215
label215:
	lw $t0, -552($fp)
	sw $t0, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -2692($fp)
label214:
	li $t0, 32041
	sw $t0, -2708($fp)
	li $t0, 60296
	sw $t0, -2712($fp)
	lw $t0, -2708($fp)
	lw $t1, -2712($fp)
	sub $t0, $t0, $t1
	sw $t0, -2716($fp)
	addi $t0, $fp, -1296
	sw $t0, -2720($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2740($fp)
	li $t0, 57767
	sw $t0, -2744($fp)
	li $t0, 18426
	sw $t0, -2748($fp)
	lw $t1, -2744($fp)
	lw $t2, -2748($fp)
	bne $t1, $t2, label219
	j label218
label219:
	lw $t0, -1604($fp)
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -2740($fp)
label218:
	addi $t0, $fp, -92
	sw $t0, -2756($fp)
	lw $t0, -780($fp)
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
	li $t0, 28254
	sw $t0, -2776($fp)
	lw $t0, -2772($fp)
	lw $t1, -2776($fp)
	sub $t0, $t0, $t1
	sw $t0, -2780($fp)
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2784($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2784($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2788($fp)
	addi $sp, $sp, 16
	li $t0, 21479
	sw $t0, -2792($fp)
	lw $t0, -2788($fp)
	lw $t1, -2792($fp)
	sub $t0, $t0, $t1
	sw $t0, -2796($fp)
	li $t0, 28156
	sw $t0, -2800($fp)
	li $t0, 41898
	sw $t0, -2804($fp)
	lw $t0, -2800($fp)
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2796($fp)
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -732($fp)
	sw $t0, -2816($fp)
	li $t0, 0
	sw $t0, -2820($fp)
	li $t0, 59902
	sw $t0, -2824($fp)
	lw $t1, -2824($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label220
label220:
	li $t0, 1
	sw $t0, -2820($fp)
label221:
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t1, -2812($fp)
	lw $t2, -2828($fp)
	bge $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -2688($fp)
label212:
	li $t0, 0
	sw $t0, -2832($fp)
	lw $t0, -780($fp)
	sw $t0, -2836($fp)
	lw $t0, -1496($fp)
	sw $t0, -2840($fp)
	lw $t1, -2836($fp)
	lw $t2, -2840($fp)
	beq $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -2832($fp)
label223:
	li $t0, 0
	sw $t0, -2844($fp)
	addi $t0, $fp, -1276
	sw $t0, -2848($fp)
	li $t0, 0
	sw $t0, -2852($fp)
	li $t0, 32347
	sw $t0, -2856($fp)
	li $t0, 0
	sw $t0, -2860($fp)
	li $t0, 53276
	sw $t0, -2864($fp)
	addi $sp, $sp, -4
	lw $t0, -2864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2868($fp)
	addi $sp, $sp, 8
	li $t0, 45291
	sw $t0, -2872($fp)
	lw $t1, -2868($fp)
	lw $t2, -2872($fp)
	bge $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -2860($fp)
label229:
	li $t0, 40045
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -2880($fp)
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2884($fp)
	addi $sp, $sp, 16
	lw $t1, -2884($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label226:
	li $t0, 1
	sw $t0, -2852($fp)
label227:
	addi $sp, $sp, -4
	lw $t0, -2852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2888($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -2888($fp)
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	lw $t1, 0($t0)
	sw $t1, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label224:
	li $t0, 1
	sw $t0, -2844($fp)
label225:
	lw $t0, -768($fp)
	sw $t0, -2904($fp)
	lw $t0, -2844($fp)
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	li $t0, 0
	sw $t0, -2912($fp)
	li $t0, 17072
	sw $t0, -2916($fp)
	li $t0, 0
	lw $t1, -2916($fp)
	sub $t0, $t0, $t1
	sw $t0, -2920($fp)
	li $t0, 33993
	sw $t0, -2924($fp)
	lw $t1, -2920($fp)
	lw $t2, -2924($fp)
	blt $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -2912($fp)
label234:
	li $t0, 25688
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	lw $t0, -1496($fp)
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label238
label238:
	li $t0, 8985
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label237
label237:
	lw $t0, -1772($fp)
	sw $t0, -2944($fp)
	lw $t1, -2944($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -2932($fp)
label236:
	addi $sp, $sp, -4
	lw $t0, -2912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2948($fp)
	addi $sp, $sp, 16
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
label239:
	li $t0, 413
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -2956($fp)
	lw $t0, -1772($fp)
	sw $t0, -2960($fp)
	li $t0, 10266
	sw $t0, -2964($fp)
	lw $t0, -2960($fp)
	lw $t1, -2964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2968($fp)
	lw $t0, -1328($fp)
	sw $t0, -2972($fp)
	lw $t0, -2968($fp)
	lw $t1, -2972($fp)
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	li $t0, 0
	sw $t0, -2980($fp)
	lw $t0, -1772($fp)
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -2980($fp)
label243:
	addi $sp, $sp, -4
	lw $t0, -2956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2988($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2992($fp)
	lw $t0, -564($fp)
	sw $t0, -2996($fp)
	lw $t0, -1580($fp)
	sw $t0, -3000($fp)
	lw $t1, -2996($fp)
	lw $t2, -3000($fp)
	bgt $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -2992($fp)
label245:
	li $t0, 0
	sw $t0, -3004($fp)
	lw $t0, -1316($fp)
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -3004($fp)
label247:
	li $t0, 0
	sw $t0, -3012($fp)
	lw $t0, -1616($fp)
	sw $t0, -3016($fp)
	lw $t0, -552($fp)
	sw $t0, -3020($fp)
	lw $t1, -3016($fp)
	lw $t2, -3020($fp)
	beq $t1, $t2, label250
	j label249
label250:
	li $t0, 48125
	sw $t0, -3024($fp)
	lw $t1, -3024($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -3012($fp)
label249:
	lw $t0, -744($fp)
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -3032($fp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3036($fp)
	addi $sp, $sp, 16
	li $t0, 21065
	sw $t0, -3040($fp)
	lw $t0, -3036($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -1616($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -3052($fp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3056($fp)
	addi $sp, $sp, 16
	lw $t0, -2988($fp)
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	li $t0, 59220
	sw $t0, -3064($fp)
	lw $t1, -3060($fp)
	lw $t2, -3064($fp)
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 0
	sw $t0, -3068($fp)
	li $t0, 0
	sw $t0, -3072($fp)
	lw $t0, -1604($fp)
	sw $t0, -3076($fp)
	lw $t0, -1496($fp)
	sw $t0, -3080($fp)
	lw $t1, -3076($fp)
	lw $t2, -3080($fp)
	bge $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -3072($fp)
label254:
	li $t0, 41700
	sw $t0, -3084($fp)
	lw $t1, -3072($fp)
	lw $t2, -3084($fp)
	beq $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -3068($fp)
label252:
	lw $t0, -1580($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -3092($fp)
	lw $t0, -1328($fp)
	sw $t0, -3096($fp)
	li $t0, 0
	lw $t1, -3096($fp)
	sub $t0, $t0, $t1
	sw $t0, -3100($fp)
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3104($fp)
	addi $sp, $sp, 16
	j label239
label241:
	j label232
label231:
	addi $t0, $fp, -1296
	sw $t0, -3108($fp)
	lw $t0, -744($fp)
	sw $t0, -3112($fp)
	li $t0, 4
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	lw $t1, 0($t0)
	sw $t1, -3124($fp)
	lw $t0, -780($fp)
	sw $t0, -3128($fp)
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3132($fp)
	li $t0, 0
	sw $t0, -3136($fp)
	lw $t0, -2296($fp)
	sw $t0, -3140($fp)
	li $t0, 61218
	sw $t0, -3144($fp)
	lw $t1, -3140($fp)
	lw $t2, -3144($fp)
	bge $t1, $t2, label257
	j label256
label257:
	li $t0, 14463
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -3136($fp)
label256:
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 51484
	sw $t0, -3156($fp)
	li $t0, 15535
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	sub $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label260:
	li $t0, 22538
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -3152($fp)
label259:
	addi $sp, $sp, -4
	lw $t0, -3132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3172($fp)
	addi $sp, $sp, 16
label232:
label261:
	li $t0, 0
	sw $t0, -3176($fp)
	li $t0, 0
	sw $t0, -3180($fp)
	lw $t0, -348($fp)
	sw $t0, -3184($fp)
	lw $t1, -3184($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
	li $t0, 1
	sw $t0, -3180($fp)
label267:
	li $t0, 0
	sw $t0, -3188($fp)
	li $t0, 50792
	sw $t0, -3192($fp)
	lw $t1, -3192($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -3188($fp)
label269:
	lw $t0, -3180($fp)
	lw $t1, -3188($fp)
	mul $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, 4($fp)
	sw $t0, -3200($fp)
	lw $t1, -3196($fp)
	lw $t2, -3200($fp)
	ble $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -3176($fp)
label265:
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 53449
	sw $t0, -3208($fp)
	lw $t0, -576($fp)
	sw $t0, -3212($fp)
	li $t0, 32889
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t1, -3208($fp)
	lw $t2, -3220($fp)
	bgt $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -3204($fp)
label271:
	lw $t1, -3176($fp)
	lw $t2, -3204($fp)
	beq $t1, $t2, label262
	j label263
label262:
	addi $t0, $fp, -40
	sw $t0, -3224($fp)
	li $t0, 0
	sw $t0, -3228($fp)
	li $t0, 38520
	sw $t0, -3232($fp)
	li $t0, 48719
	sw $t0, -3236($fp)
	lw $t1, -3232($fp)
	lw $t2, -3236($fp)
	bgt $t1, $t2, label277
	j label276
label277:
	li $t0, 64931
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -3228($fp)
label276:
	li $t0, 4
	lw $t1, -3228($fp)
	mul $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	lw $t1, -3224($fp)
	add $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, 0($t0)
	sw $t1, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label272:
	li $t0, 0
	sw $t0, -3256($fp)
	li $t0, 0
	sw $t0, -3260($fp)
	addi $t0, $fp, -56
	sw $t0, -3264($fp)
	lw $t0, -1772($fp)
	sw $t0, -3268($fp)
	li $t0, 33281
	sw $t0, -3272($fp)
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3276($fp)
	li $t0, 4
	lw $t1, -3276($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	lw $t1, 0($t0)
	sw $t1, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -3260($fp)
label281:
	li $t0, 0
	sw $t0, -3292($fp)
	lw $t0, -2488($fp)
	sw $t0, -3296($fp)
	li $t0, 0
	lw $t1, -3296($fp)
	sub $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -3292($fp)
label283:
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3304($fp)
	addi $sp, $sp, 8
	lw $t0, -2476($fp)
	sw $t0, -3308($fp)
	lw $t0, -3304($fp)
	lw $t1, -3308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3312($fp)
	addi $t0, $fp, -2276
	sw $t0, -3316($fp)
	lw $t0, -576($fp)
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
	lw $t0, -3312($fp)
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t1, -3260($fp)
	lw $t2, -3336($fp)
	bgt $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -3256($fp)
label279:
	j label274
label273:
	li $t0, 0
	sw $t0, -3340($fp)
	lw $t0, -1772($fp)
	sw $t0, -3344($fp)
	li $t0, 0
	lw $t1, -3344($fp)
	sub $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -2284($fp)
	sw $t0, -3352($fp)
	lw $t1, -3348($fp)
	lw $t2, -3352($fp)
	bge $t1, $t2, label286
	j label285
label286:
	li $t0, 35636
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -3340($fp)
label285:
	lw $t0, -3340($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -3360($fp)
label274:
	j label261
label263:
	j label195
label197:
label287:
	addi $t0, $fp, -1284
	sw $t0, -3364($fp)
	li $t0, 1
	sw $t0, -3368($fp)
	li $t0, 4
	lw $t1, -3368($fp)
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	lw $t0, -348($fp)
	sw $t0, -3384($fp)
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3388($fp)
	addi $sp, $sp, 8
	lw $t0, -3380($fp)
	lw $t1, -3388($fp)
	sub $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 11998
	sw $t0, -3448($fp)
	addi $t0, $fp, -3416
	sw $t0, -3452($fp)
	li $t0, 0
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
	li $t0, 15240
	sw $t0, -3472($fp)
	addi $t0, $fp, -3416
	sw $t0, -3476($fp)
	li $t0, 1
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
	li $t0, 35946
	sw $t0, -3496($fp)
	addi $t0, $fp, -3416
	sw $t0, -3500($fp)
	li $t0, 2
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
	li $t0, 65275
	sw $t0, -3520($fp)
	addi $t0, $fp, -3416
	sw $t0, -3524($fp)
	li $t0, 3
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
	li $t0, 60531
	sw $t0, -3544($fp)
	addi $t0, $fp, -3416
	sw $t0, -3548($fp)
	li $t0, 4
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
	li $t0, 2757
	sw $t0, -3568($fp)
	addi $t0, $fp, -3416
	sw $t0, -3572($fp)
	li $t0, 5
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
	li $t0, 8724
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -3600($fp)
	li $t0, 20683
	sw $t0, -3604($fp)
	addi $t0, $fp, -3444
	sw $t0, -3608($fp)
	li $t0, 0
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
	li $t0, 19829
	sw $t0, -3628($fp)
	addi $t0, $fp, -3444
	sw $t0, -3632($fp)
	li $t0, 1
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
	li $t0, 42717
	sw $t0, -3652($fp)
	addi $t0, $fp, -3444
	sw $t0, -3656($fp)
	li $t0, 2
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
	li $t0, 30950
	sw $t0, -3676($fp)
	addi $t0, $fp, -3444
	sw $t0, -3680($fp)
	li $t0, 3
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3680($fp)
	lw $t1, -3688($fp)
	add $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3676($fp)
	lw $t1, -3692($fp)
	sw $t0, 0($t1)
	lw $t0, -3692($fp)
	lw $t1, 0($t0)
	sw $t1, -3696($fp)
	li $t0, 20242
	sw $t0, -3700($fp)
	addi $t0, $fp, -3444
	sw $t0, -3704($fp)
	li $t0, 4
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3704($fp)
	lw $t1, -3712($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3700($fp)
	lw $t1, -3716($fp)
	sw $t0, 0($t1)
	lw $t0, -3716($fp)
	lw $t1, 0($t0)
	sw $t1, -3720($fp)
	li $t0, 25307
	sw $t0, -3724($fp)
	addi $t0, $fp, -3444
	sw $t0, -3728($fp)
	li $t0, 5
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
	li $t0, 52015
	sw $t0, -3748($fp)
	addi $t0, $fp, -3444
	sw $t0, -3752($fp)
	li $t0, 6
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3752($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3748($fp)
	lw $t1, -3764($fp)
	sw $t0, 0($t1)
	lw $t0, -3764($fp)
	lw $t1, 0($t0)
	sw $t1, -3768($fp)
	addi $t0, $fp, -3416
	sw $t0, -3772($fp)
	li $t0, 0
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
	addi $t0, $fp, -3416
	sw $t0, -3792($fp)
	li $t0, 1
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
	addi $t0, $fp, -3416
	sw $t0, -3812($fp)
	li $t0, 2
	sw $t0, -3816($fp)
	li $t0, 4
	lw $t1, -3816($fp)
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, -3812($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, 0($t0)
	sw $t1, -3828($fp)
	lw $t0, -3828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -3832($fp)
	li $t0, 3
	sw $t0, -3836($fp)
	li $t0, 4
	lw $t1, -3836($fp)
	mul $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	lw $t1, -3832($fp)
	add $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	lw $t1, 0($t0)
	sw $t1, -3848($fp)
	lw $t0, -3848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -3852($fp)
	li $t0, 4
	sw $t0, -3856($fp)
	li $t0, 4
	lw $t1, -3856($fp)
	mul $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, -3852($fp)
	add $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	lw $t1, 0($t0)
	sw $t1, -3868($fp)
	lw $t0, -3868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3416
	sw $t0, -3872($fp)
	li $t0, 5
	sw $t0, -3876($fp)
	li $t0, 4
	lw $t1, -3876($fp)
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, -3872($fp)
	add $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, 0($t0)
	sw $t1, -3888($fp)
	lw $t0, -3888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3596($fp)
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3444
	sw $t0, -3896($fp)
	li $t0, 0
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
	addi $t0, $fp, -3444
	sw $t0, -3916($fp)
	li $t0, 1
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
	addi $t0, $fp, -3444
	sw $t0, -3936($fp)
	li $t0, 2
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
	addi $t0, $fp, -3444
	sw $t0, -3956($fp)
	li $t0, 3
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
	addi $t0, $fp, -3444
	sw $t0, -3976($fp)
	li $t0, 4
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
	addi $t0, $fp, -3444
	sw $t0, -3996($fp)
	li $t0, 5
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
	addi $t0, $fp, -3444
	sw $t0, -4016($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -4036($fp)
	li $t0, 13927
	sw $t0, -4040($fp)
	lw $t0, -1772($fp)
	sw $t0, -4044($fp)
	lw $t0, -780($fp)
	sw $t0, -4048($fp)
	lw $t0, -4044($fp)
	lw $t1, -4048($fp)
	add $t0, $t0, $t1
	sw $t0, -4052($fp)
	li $t0, 1471
	sw $t0, -4056($fp)
	lw $t0, -4052($fp)
	lw $t1, -4056($fp)
	add $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t1, -4040($fp)
	lw $t2, -4060($fp)
	beq $t1, $t2, label290
	j label292
label292:
	lw $t0, -744($fp)
	sw $t0, -4064($fp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4068($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4068($fp)
	sub $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -4036($fp)
label291:
	lw $ra, -4($fp)
	lw $v0, -4036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4076($fp)
	lw $t0, -792($fp)
	sw $t0, -4080($fp)
	li $t0, 0
	lw $t1, -4080($fp)
	sub $t0, $t0, $t1
	sw $t0, -4084($fp)
	li $t0, 37963
	sw $t0, -4088($fp)
	li $t0, 29462
	sw $t0, -4092($fp)
	lw $t0, -4088($fp)
	lw $t1, -4092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4096($fp)
	li $t0, 24009
	sw $t0, -4100($fp)
	lw $t0, -4096($fp)
	lw $t1, -4100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4104($fp)
	li $t0, 0
	sw $t0, -4108($fp)
	lw $t0, -792($fp)
	sw $t0, -4112($fp)
	lw $t0, -1772($fp)
	sw $t0, -4116($fp)
	lw $t0, -4112($fp)
	lw $t1, -4116($fp)
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -1616($fp)
	sw $t0, -4124($fp)
	lw $t1, -4120($fp)
	lw $t2, -4124($fp)
	bge $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -4108($fp)
label296:
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4108($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4128($fp)
	addi $sp, $sp, 16
	lw $t0, -552($fp)
	sw $t0, -4132($fp)
	lw $t1, -4128($fp)
	lw $t2, -4132($fp)
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -4076($fp)
label294:
	addi $sp, $sp, -4
	lw $t0, -4076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4136($fp)
	addi $sp, $sp, 8
label297:
	li $t0, 33645
	sw $t0, -4140($fp)
	lw $t0, -1580($fp)
	sw $t0, -4144($fp)
	lw $t0, -1760($fp)
	sw $t0, -4148($fp)
	lw $t0, -4144($fp)
	lw $t1, -4148($fp)
	add $t0, $t0, $t1
	sw $t0, -4152($fp)
	li $t0, 9265
	sw $t0, -4156($fp)
	li $t0, 0
	lw $t1, -4156($fp)
	sub $t0, $t0, $t1
	sw $t0, -4160($fp)
	li $t0, 0
	lw $t1, -4160($fp)
	sub $t0, $t0, $t1
	sw $t0, -4164($fp)
	li $t0, 0
	sw $t0, -4168($fp)
	li $t0, 43925
	sw $t0, -4172($fp)
	lw $t0, -780($fp)
	sw $t0, -4176($fp)
	lw $t0, -4172($fp)
	lw $t1, -4176($fp)
	sub $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t1, -4180($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label302:
	lw $t0, -1604($fp)
	sw $t0, -4184($fp)
	lw $t1, -4184($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -4168($fp)
label301:
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4188($fp)
	addi $sp, $sp, 16
	lw $t0, -4140($fp)
	lw $t1, -4188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4192($fp)
	addi $t0, $fp, -40
	sw $t0, -4196($fp)
	lw $t0, -756($fp)
	sw $t0, -4200($fp)
	li $t0, 21559
	sw $t0, -4204($fp)
	lw $t0, -4200($fp)
	lw $t1, -4204($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
	li $t0, 4
	lw $t1, -4208($fp)
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	lw $t1, -4196($fp)
	add $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, 0($t0)
	sw $t1, -4220($fp)
	lw $t0, -4192($fp)
	lw $t1, -4220($fp)
	sub $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 11278
	sw $t0, -4228($fp)
	addi $t0, $fp, -1284
	sw $t0, -4232($fp)
	lw $t0, -348($fp)
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
	lw $t0, -4228($fp)
	lw $t1, -4248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4252($fp)
	li $t0, 47785
	sw $t0, -4256($fp)
	lw $t0, -4252($fp)
	lw $t1, -4256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4260($fp)
	j label297
label299:
	addi $t0, $fp, -1296
	sw $t0, -4264($fp)
	li $t0, 0
	sw $t0, -4268($fp)
	lw $t0, -1772($fp)
	sw $t0, -4272($fp)
	li $t0, 4742
	sw $t0, -4276($fp)
	lw $t0, -4272($fp)
	lw $t1, -4276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4280($fp)
	lw $t0, -3596($fp)
	sw $t0, -4284($fp)
	lw $t1, -4280($fp)
	lw $t2, -4284($fp)
	bgt $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -4268($fp)
label307:
	li $t0, 4
	lw $t1, -4268($fp)
	mul $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	lw $t1, 0($t0)
	sw $t1, -4296($fp)
	addi $t0, $fp, -1276
	sw $t0, -4300($fp)
	li $t0, 2
	sw $t0, -4304($fp)
	li $t0, 4
	lw $t1, -4304($fp)
	mul $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	lw $t1, -4300($fp)
	add $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	lw $t1, 0($t0)
	sw $t1, -4316($fp)
	lw $t0, -4296($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 40378
	sw $t0, -4324($fp)
	li $t0, 31548
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4332($fp)
	li $t0, 0
	lw $t1, -4332($fp)
	sub $t0, $t0, $t1
	sw $t0, -4336($fp)
	j label305
label304:
	lw $t0, -1616($fp)
	sw $t0, -4340($fp)
	li $t0, 11431
	sw $t0, -4344($fp)
	li $t0, 0
	lw $t1, -4344($fp)
	sub $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4340($fp)
	lw $t1, -4348($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
label305:
	lw $t0, -744($fp)
	sw $t0, -4356($fp)
	lw $t1, -4356($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 0
	sw $t0, -4360($fp)
	lw $t0, -1580($fp)
	sw $t0, -4364($fp)
	lw $t1, -4364($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label315:
	li $t0, 1
	sw $t0, -4360($fp)
label316:
	addi $t0, $fp, -3444
	sw $t0, -4368($fp)
	li $t0, 6
	sw $t0, -4372($fp)
	li $t0, 4
	lw $t1, -4372($fp)
	mul $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	lw $t1, -4368($fp)
	add $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	lw $t1, 0($t0)
	sw $t1, -4384($fp)
	lw $t1, -4360($fp)
	lw $t2, -4384($fp)
	ble $t1, $t2, label311
	j label314
label314:
	lw $t0, 12($fp)
	sw $t0, -4388($fp)
	li $t0, 0
	lw $t1, -4388($fp)
	sub $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t1, -4392($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 0
	sw $t0, -4396($fp)
	lw $t0, -1772($fp)
	sw $t0, -4400($fp)
	li $t0, 47377
	sw $t0, -4404($fp)
	lw $t0, -4400($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4412($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4412($fp)
	sub $t0, $t0, $t1
	sw $t0, -4416($fp)
	addi $t0, $fp, -3416
	sw $t0, -4420($fp)
	li $t0, 3
	sw $t0, -4424($fp)
	li $t0, 4
	lw $t1, -4424($fp)
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, -4420($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, 0($t0)
	sw $t1, -4436($fp)
	li $t0, 38021
	sw $t0, -4440($fp)
	lw $t0, -4436($fp)
	lw $t1, -4440($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	li $t0, 60840
	sw $t0, -4448($fp)
	lw $t0, -744($fp)
	sw $t0, -4452($fp)
	li $t0, 50134
	sw $t0, -4456($fp)
	lw $t0, -4452($fp)
	lw $t1, -4456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4460($fp)
	lw $t0, -576($fp)
	sw $t0, -4464($fp)
	lw $t0, -4460($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4468($fp)
	addi $sp, $sp, -4
	lw $t0, -4444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4468($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4472($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4472($fp)
	sub $t0, $t0, $t1
	sw $t0, -4476($fp)
	li $t0, 0
	sw $t0, -4480($fp)
	li $t0, 41784
	sw $t0, -4484($fp)
	lw $t1, -4484($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -4480($fp)
label320:
	li $t0, 52116
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -4492($fp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4496($fp)
	addi $sp, $sp, 16
	li $t0, 27881
	sw $t0, -4500($fp)
	lw $t0, -4496($fp)
	lw $t1, -4500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4504($fp)
	li $t0, 0
	lw $t1, -4504($fp)
	sub $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t1, -4416($fp)
	lw $t2, -4508($fp)
	bge $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -4396($fp)
label318:
label312:
label309:
	addi $t0, $fp, -3416
	sw $t0, -4512($fp)
	li $t0, 0
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
	addi $t0, $fp, -3416
	sw $t0, -4532($fp)
	li $t0, 1
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
	addi $t0, $fp, -3416
	sw $t0, -4552($fp)
	li $t0, 2
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
	addi $t0, $fp, -3416
	sw $t0, -4572($fp)
	li $t0, 3
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
	addi $t0, $fp, -3416
	sw $t0, -4592($fp)
	li $t0, 4
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
	addi $t0, $fp, -3416
	sw $t0, -4612($fp)
	li $t0, 5
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
	lw $t0, -3596($fp)
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3444
	sw $t0, -4636($fp)
	li $t0, 0
	sw $t0, -4640($fp)
	li $t0, 4
	lw $t1, -4640($fp)
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	lw $t1, -4636($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, 0($t0)
	sw $t1, -4652($fp)
	lw $t0, -4652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3444
	sw $t0, -4656($fp)
	li $t0, 1
	sw $t0, -4660($fp)
	li $t0, 4
	lw $t1, -4660($fp)
	mul $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	lw $t1, -4656($fp)
	add $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	lw $t1, 0($t0)
	sw $t1, -4672($fp)
	lw $t0, -4672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3444
	sw $t0, -4676($fp)
	li $t0, 2
	sw $t0, -4680($fp)
	li $t0, 4
	lw $t1, -4680($fp)
	mul $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	lw $t1, 0($t0)
	sw $t1, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3444
	sw $t0, -4696($fp)
	li $t0, 3
	sw $t0, -4700($fp)
	li $t0, 4
	lw $t1, -4700($fp)
	mul $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, 0($t0)
	sw $t1, -4712($fp)
	lw $t0, -4712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3444
	sw $t0, -4716($fp)
	li $t0, 4
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
	lw $t0, -4732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3444
	sw $t0, -4736($fp)
	li $t0, 5
	sw $t0, -4740($fp)
	li $t0, 4
	lw $t1, -4740($fp)
	mul $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	lw $t1, -4736($fp)
	add $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	lw $t1, 0($t0)
	sw $t1, -4752($fp)
	lw $t0, -4752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3444
	sw $t0, -4756($fp)
	li $t0, 6
	sw $t0, -4760($fp)
	li $t0, 4
	lw $t1, -4760($fp)
	mul $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	lw $t1, -4756($fp)
	add $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	lw $t1, 0($t0)
	sw $t1, -4772($fp)
	lw $t0, -4772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 24670
	sw $t0, -4776($fp)
	lw $ra, -4($fp)
	lw $v0, -4776($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label287
label289:
	addi $t0, $fp, -40
	sw $t0, -4780($fp)
	lw $t0, -348($fp)
	sw $t0, -4784($fp)
	lw $t0, -540($fp)
	sw $t0, -4788($fp)
	lw $t0, -4784($fp)
	lw $t1, -4788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4792($fp)
	li $t0, 4
	lw $t1, -4792($fp)
	mul $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	lw $t1, -4780($fp)
	add $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	lw $t1, 0($t0)
	sw $t1, -4804($fp)
	li $t0, 0
	lw $t1, -4804($fp)
	sub $t0, $t0, $t1
	sw $t0, -4808($fp)
	li $t0, 0
	lw $t1, -4808($fp)
	sub $t0, $t0, $t1
	sw $t0, -4812($fp)
label321:
	lw $t0, -348($fp)
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	addi $t0, $fp, -40
	sw $t0, -4820($fp)
	li $t0, 8
	sw $t0, -4824($fp)
	li $t0, 4
	lw $t1, -4824($fp)
	mul $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, 0($t0)
	sw $t1, -4836($fp)
	li $t0, 0
	lw $t1, -4836($fp)
	sub $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -4844($fp)
	j label321
label323:
	addi $t0, $fp, -40
	sw $t0, -4848($fp)
	li $t0, 0
	sw $t0, -4852($fp)
	li $t0, 4
	lw $t1, -4852($fp)
	mul $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	lw $t1, -4848($fp)
	add $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, 0($t0)
	sw $t1, -4864($fp)
	lw $t0, -4864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4868($fp)
	li $t0, 1
	sw $t0, -4872($fp)
	li $t0, 4
	lw $t1, -4872($fp)
	mul $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	lw $t1, -4868($fp)
	add $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	lw $t1, 0($t0)
	sw $t1, -4884($fp)
	lw $t0, -4884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4888($fp)
	li $t0, 2
	sw $t0, -4892($fp)
	li $t0, 4
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	lw $t1, -4888($fp)
	add $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	lw $t1, 0($t0)
	sw $t1, -4904($fp)
	lw $t0, -4904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4908($fp)
	li $t0, 3
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
	lw $t0, -4924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4928($fp)
	li $t0, 4
	sw $t0, -4932($fp)
	li $t0, 4
	lw $t1, -4932($fp)
	mul $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	lw $t1, -4928($fp)
	add $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	lw $t1, 0($t0)
	sw $t1, -4944($fp)
	lw $t0, -4944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4948($fp)
	li $t0, 5
	sw $t0, -4952($fp)
	li $t0, 4
	lw $t1, -4952($fp)
	mul $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, -4948($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	lw $t1, 0($t0)
	sw $t1, -4964($fp)
	lw $t0, -4964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4968($fp)
	li $t0, 6
	sw $t0, -4972($fp)
	li $t0, 4
	lw $t1, -4972($fp)
	mul $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	lw $t1, -4968($fp)
	add $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	lw $t1, 0($t0)
	sw $t1, -4984($fp)
	lw $t0, -4984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4988($fp)
	li $t0, 7
	sw $t0, -4992($fp)
	li $t0, 4
	lw $t1, -4992($fp)
	mul $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	lw $t1, 0($t0)
	sw $t1, -5004($fp)
	lw $t0, -5004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5008($fp)
	li $t0, 8
	sw $t0, -5012($fp)
	li $t0, 4
	lw $t1, -5012($fp)
	mul $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	lw $t1, -5008($fp)
	add $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	lw $t1, 0($t0)
	sw $t1, -5024($fp)
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5036($fp)
	li $t0, 0
	sw $t0, -5040($fp)
	li $t0, 4
	lw $t1, -5040($fp)
	mul $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	lw $t1, -5036($fp)
	add $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, 0($t0)
	sw $t1, -5052($fp)
	lw $t0, -5052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5056($fp)
	li $t0, 1
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
	lw $t0, -5072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5076($fp)
	li $t0, 2
	sw $t0, -5080($fp)
	li $t0, 4
	lw $t1, -5080($fp)
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	lw $t1, -5076($fp)
	add $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	lw $t1, 0($t0)
	sw $t1, -5092($fp)
	lw $t0, -5092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5096($fp)
	li $t0, 3
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
	addi $t0, $fp, -68
	sw $t0, -5116($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -5136($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -5156($fp)
	li $t0, 2
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
	lw $t0, -540($fp)
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5192($fp)
	li $t0, 0
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
	lw $t0, -5208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5212($fp)
	li $t0, 1
	sw $t0, -5216($fp)
	li $t0, 4
	lw $t1, -5216($fp)
	mul $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	lw $t1, -5212($fp)
	add $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, 0($t0)
	sw $t1, -5228($fp)
	lw $t0, -5228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5232($fp)
	li $t0, 2
	sw $t0, -5236($fp)
	li $t0, 4
	lw $t1, -5236($fp)
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, -5232($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	lw $t1, 0($t0)
	sw $t1, -5248($fp)
	lw $t0, -5248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5252($fp)
	li $t0, 3
	sw $t0, -5256($fp)
	li $t0, 4
	lw $t1, -5256($fp)
	mul $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	lw $t1, -5252($fp)
	add $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	lw $t1, 0($t0)
	sw $t1, -5268($fp)
	lw $t0, -5268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5272($fp)
	li $t0, 4
	sw $t0, -5276($fp)
	li $t0, 4
	lw $t1, -5276($fp)
	mul $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	lw $t1, -5272($fp)
	add $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	lw $t1, 0($t0)
	sw $t1, -5288($fp)
	lw $t0, -5288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5292($fp)
	li $t0, 5
	sw $t0, -5296($fp)
	li $t0, 4
	lw $t1, -5296($fp)
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	lw $t1, -5292($fp)
	add $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	lw $t1, 0($t0)
	sw $t1, -5308($fp)
	lw $t0, -5308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5340($fp)
	li $t0, 0
	sw $t0, -5344($fp)
	li $t0, 4
	lw $t1, -5344($fp)
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	lw $t1, -5340($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, 0($t0)
	sw $t1, -5356($fp)
	lw $t0, -5356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5360($fp)
	li $t0, 1
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
	lw $t0, -5376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5380($fp)
	li $t0, 2
	sw $t0, -5384($fp)
	li $t0, 4
	lw $t1, -5384($fp)
	mul $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, -5380($fp)
	add $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, 0($t0)
	sw $t1, -5396($fp)
	lw $t0, -5396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5400($fp)
	li $t0, 3
	sw $t0, -5404($fp)
	li $t0, 4
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	lw $t1, -5400($fp)
	add $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, 0($t0)
	sw $t1, -5416($fp)
	lw $t0, -5416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5420($fp)
	li $t0, 4
	sw $t0, -5424($fp)
	li $t0, 4
	lw $t1, -5424($fp)
	mul $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	lw $t1, -5420($fp)
	add $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, 0($t0)
	sw $t1, -5436($fp)
	lw $t0, -5436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5440($fp)
	li $t0, 5
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
	lw $t0, -5456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5460($fp)
	li $t0, 6
	sw $t0, -5464($fp)
	li $t0, 4
	lw $t1, -5464($fp)
	mul $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, -5460($fp)
	add $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	lw $t1, 0($t0)
	sw $t1, -5476($fp)
	lw $t0, -5476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5480($fp)
	li $t0, 7
	sw $t0, -5484($fp)
	li $t0, 4
	lw $t1, -5484($fp)
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	lw $t1, -5480($fp)
	add $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, 0($t0)
	sw $t1, -5496($fp)
	lw $t0, -5496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -5500($fp)
	li $t0, 0
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -5508($fp)
	lw $ra, -4($fp)
	lw $v0, -5508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -28
	li $t0, 38597
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -24($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 64799
	sw $t0, -32($fp)
	lw $ra, -4($fp)
	lw $v0, -32($fp)
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
	jal f8
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
